ù/
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Twitter 
{ 
[		 
Feature		 
(		 
TwitterConstants		 
.		 
Features		 &
.		& '
Signin		' -
)		- .
]		. /
public

 

class

 
AdminMenuSignin

  
:

! "
INavigationProvider

# 6
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
AdminMenuSignin 
( 
IStringLocalizer /
</ 0
AdminMenuSignin0 ?
>? @
	localizerA J
)J K
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
$str 5
]5 6
,6 7
S8 9
[9 :
$str: P
]P Q
.Q R
PrefixPositionR `
(` a
)a b
,b c
settingsd l
=>m o
settingsp x
. 
AddClass !
(! "
$str" +
)+ ,
., -
Id- /
(/ 0
$str0 9
)9 :
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
=c d
TwitterConstantse u
.u v
Featuresv ~
.~ 
Signin	 Ö
}
Ü á
)
á à
. 

Permission '
(' (
Permissions( 3
.3 4
ManageTwitterSignin4 G
)G H
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
[$$ 
Feature$$ 
($$ 
TwitterConstants$$ 
.$$ 
Features$$ &
.$$& '
Twitter$$' .
)$$. /
]$$/ 0
public%% 

class%% 
	AdminMenu%% 
:%% 
INavigationProvider%% 0
{&& 
private'' 
readonly'' 
IStringLocalizer'' )
S''* +
;''+ ,
public)) 
	AdminMenu)) 
()) 
IStringLocalizer)) )
<))) *
	AdminMenu))* 3
>))3 4
	localizer))5 >
)))> ?
{** 	
S++ 
=++ 
	localizer++ 
;++ 
},, 	
public.. 
Task..  
BuildNavigationAsync.. (
(..( )
string..) /
name..0 4
,..4 5
NavigationBuilder..6 G
builder..H O
)..O P
{// 	
if00 
(00 
String00 
.00 
Equals00 
(00 
name00 "
,00" #
$str00$ +
,00+ ,
StringComparison00- =
.00= >
OrdinalIgnoreCase00> O
)00O P
)00P Q
{11 
builder22 
.22 
Add22 
(22 
S22 
[22 
$str22 -
]22- .
,22. /
configuration220 =
=>22> @
configuration22A N
.33 
Add33 
(33 
S33 
[33 
$str33 )
]33) *
,33* +
settings33, 4
=>335 7
settings338 @
.44 
Add44  
(44  !
S44! "
[44" #
$str44# ,
]44, -
,44- .
S44/ 0
[440 1
$str441 :
]44: ;
.44; <
PrefixPosition44< J
(44J K
)44K L
,44L M
settings44N V
=>44W Y
settings44Z b
.55 
AddClass55 %
(55% &
$str55& /
)55/ 0
.550 1
Id551 3
(553 4
$str554 =
)55= >
.66 
Action66 #
(66# $
$str66$ +
,66+ ,
$str66- 4
,664 5
new666 9
{66: ;
area66< @
=66A B
$str66C Y
,66Y Z
groupId66[ b
=66c d
TwitterConstants66e u
.66u v
Features66v ~
.66~ 
Twitter	66 Ü
}
66á à
)
66à â
.77 

Permission77 '
(77' (
Permissions77( 3
.773 4
ManageTwitter774 A
)77A B
.88 
LocalNav88 %
(88% &
)88& '
)88' (
)99 
)99 
;99 
}:: 
return;; 
Task;; 
.;; 
CompletedTask;; %
;;;% &
}<< 	
}== 
}>> ‡Q
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Drivers\TwitterSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Drivers %
{ 
public 

class (
TwitterSettingsDisplayDriver -
:. / 
SectionDisplayDriver0 D
<D E
ISiteE J
,J K
TwitterSettingsL [
>[ \
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
public (
TwitterSettingsDisplayDriver +
(+ ,!
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
<   (
TwitterSettingsDisplayDriver   0
>  0 1
logger  2 8
)  8 9
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
(**< =
TwitterSettings**= L
settings**M U
,**U V
BuildEditorContext**W i
context**j q
)**q r
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
.--] ^
ManageTwitterSignin--^ q
)--q r
)--r s
{.. 
return// 
null// 
;// 
}00 
return11 

Initialize11 !
<11! "$
TwitterSettingsViewModel11" :
>11: ;
(11; <
$str11< R
,11R S
model11T Y
=>11Z \
{22 
model33 
.33 
APIKey33  
=33! "
settings33# +
.33+ ,
ConsumerKey33, 7
;337 8
if44 
(44 
!44 
string44 
.44  
IsNullOrWhiteSpace44  2
(442 3
settings443 ;
.44; <
ConsumerSecret44< J
)44J K
)44K L
{55 
try66 
{77 
var88 
	protector88  )
=88* +#
_dataProtectionProvider88, C
.88C D
CreateProtector88D S
(88S T
TwitterConstants88T d
.88d e
Features88e m
.88m n
Twitter88n u
)88u v
;88v w
model99 !
.99! "
APISecretKey99" .
=99/ 0
	protector991 :
.99: ;
	Unprotect99; D
(99D E
settings99E M
.99M N
ConsumerSecret99N \
)99\ ]
;99] ^
}:: 
catch;; 
(;; "
CryptographicException;; 5
);;5 6
{<< 
_logger== #
.==# $
LogError==$ ,
(==, -
$str	==- ã
)
==ã å
;
==å ç
model>> !
.>>! "
APISecretKey>>" .
=>>/ 0
string>>1 7
.>>7 8
Empty>>8 =
;>>= >
model?? !
.??! "
HasDecryptionError??" 4
=??5 6
true??7 ;
;??; <
}@@ 
}AA 
elseBB 
{CC 
modelDD 
.DD 
APISecretKeyDD *
=DD+ ,
stringDD- 3
.DD3 4
EmptyDD4 9
;DD9 :
}EE 
modelFF 
.FF 
AccessTokenFF %
=FF& '
settingsFF( 0
.FF0 1
AccessTokenFF1 <
;FF< =
ifGG 
(GG 
!GG 
stringGG 
.GG  
IsNullOrWhiteSpaceGG  2
(GG2 3
settingsGG3 ;
.GG; <
AccessTokenSecretGG< M
)GGM N
)GGN O
{HH 
tryII 
{JJ 
varKK 
	protectorKK  )
=KK* +#
_dataProtectionProviderKK, C
.KKC D
CreateProtectorKKD S
(KKS T
TwitterConstantsKKT d
.KKd e
FeaturesKKe m
.KKm n
TwitterKKn u
)KKu v
;KKv w
modelLL !
.LL! "
AccessTokenSecretLL" 3
=LL4 5
	protectorLL6 ?
.LL? @
	UnprotectLL@ I
(LLI J
settingsLLJ R
.LLR S
AccessTokenSecretLLS d
)LLd e
;LLe f
}MM 
catchNN 
(NN "
CryptographicExceptionNN 5
)NN5 6
{OO 
_loggerPP #
.PP# $
LogErrorPP$ ,
(PP, -
$str	PP- ê
)
PPê ë
;
PPë í
modelQQ !
.QQ! "
AccessTokenSecretQQ" 3
=QQ4 5
stringQQ6 <
.QQ< =
EmptyQQ= B
;QQB C
modelRR !
.RR! "
HasDecryptionErrorRR" 4
=RR5 6
trueRR7 ;
;RR; <
}SS 
}TT 
elseUU 
{VV 
modelWW 
.WW 
AccessTokenSecretWW /
=WW0 1
stringWW2 8
.WW8 9
EmptyWW9 >
;WW> ?
}XX 
}YY 
)YY 
.YY 
LocationYY 
(YY 
$strYY '
)YY' (
.YY( )
OnGroupYY) 0
(YY0 1
TwitterConstantsYY1 A
.YYA B
FeaturesYYB J
.YYJ K
TwitterYYK R
)YYR S
;YYS T
}ZZ 	
public\\ 
override\\ 
async\\ 
Task\\ "
<\\" #
IDisplayResult\\# 1
>\\1 2
UpdateAsync\\3 >
(\\> ?
TwitterSettings\\? N
settings\\O W
,\\W X
BuildEditorContext\\Y k
context\\l s
)\\s t
{]] 	
if^^ 
(^^ 
context^^ 
.^^ 
GroupId^^ 
==^^  "
TwitterConstants^^# 3
.^^3 4
Features^^4 <
.^^< =
Twitter^^= D
)^^D E
{__ 
var`` 
user`` 
=``  
_httpContextAccessor`` /
.``/ 0
HttpContext``0 ;
?``; <
.``< =
User``= A
;``A B
ifaa 
(aa 
useraa 
==aa 
nullaa  
||aa! #
!aa$ %
awaitaa% *!
_authorizationServiceaa+ @
.aa@ A
AuthorizeAsyncaaA O
(aaO P
useraaP T
,aaT U
PermissionsaaV a
.aaa b
ManageTwitteraab o
)aao p
)aap q
{bb 
returncc 
nullcc 
;cc  
}dd 
varff 
modelff 
=ff 
newff $
TwitterSettingsViewModelff  8
(ff8 9
)ff9 :
;ff: ;
awaitgg 
contextgg 
.gg 
Updatergg %
.gg% &
TryUpdateModelAsyncgg& 9
(gg9 :
modelgg: ?
,gg? @
PrefixggA G
)ggG H
;ggH I
ifii 
(ii 
contextii 
.ii 
Updaterii #
.ii# $

ModelStateii$ .
.ii. /
IsValidii/ 6
)ii6 7
{jj 
varkk 
	protectorkk !
=kk" ##
_dataProtectionProviderkk$ ;
.kk; <
CreateProtectorkk< K
(kkK L
TwitterConstantskkL \
.kk\ ]
Featureskk] e
.kke f
Twitterkkf m
)kkm n
;kkn o
settingsmm 
.mm 
ConsumerKeymm (
=mm) *
modelmm+ 0
.mm0 1
APIKeymm1 7
;mm7 8
settingsnn 
.nn 
ConsumerSecretnn +
=nn, -
	protectornn. 7
.nn7 8
Protectnn8 ?
(nn? @
modelnn@ E
.nnE F
APISecretKeynnF R
)nnR S
;nnS T
settingsoo 
.oo 
AccessTokenoo (
=oo) *
modeloo+ 0
.oo0 1
AccessTokenoo1 <
;oo< =
settingspp 
.pp 
AccessTokenSecretpp .
=pp/ 0
	protectorpp1 :
.pp: ;
Protectpp; B
(ppB C
modelppC H
.ppH I
AccessTokenSecretppI Z
)ppZ [
;pp[ \
awaitqq 

_shellHostqq $
.qq$ %$
ReleaseShellContextAsyncqq% =
(qq= >
_shellSettingsqq> L
)qqL M
;qqM N
}rr 
}ss 
returntt 
awaittt 
	EditAsynctt "
(tt" #
settingstt# +
,tt+ ,
contexttt- 4
)tt4 5
;tt5 6
}uu 	
}vv 
}ww Á
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str		 
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
TwitterConstants	 
. 
Features "
." #
Twitter# *
,* +
Name 
=	 

$str  
,  !
Category 
= 
$str 
, 
Description 
= 
$str ^
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
TwitterConstants	 
. 
Features "
." #
Signin# )
,) *
Name 
=	 

$str !
,! "
Category 
= 
$str 
, 
Description 
= 
$str C
,C D
Dependencies 
= 
new 
[ 
] 
{ 
TwitterConstants +
.+ ,
Features, 4
.4 5
Twitter5 <
}= >
) 
] ±
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Permissions.cs
	namespace 	
OrchardCore
 
. 
Twitter 
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
 )
ManageTwitter

* 7
= 
new 

Permission 
( 
nameof #
(# $
ManageTwitter$ 1
)1 2
,2 3
$str4 M
)M N
;N O
public 
static 
readonly 

Permission )
ManageTwitterSignin* =
= 
new 

Permission 
( 
nameof #
(# $
ManageTwitterSignin$ 7
)7 8
,8 9
$str: `
)` a
;a b
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{ 
ManageTwitter 
, 
ManageTwitterSignin #
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
{ 	
yield 
return 
new  
PermissionStereotype 1
{ 
Name 
= 
$str &
,& '
Permissions 
= 
new !
[! "
]" #
{   
ManageTwitter!! !
,!!! "
ManageTwitterSignin"" '
}## 
}$$ 
;$$ 
}%% 	
}&& 
}'' ä
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Recipes\TwitterSettingsStep.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Recipes %
{		 
public 

class 
TwitterSettingsStep $
:% &
IRecipeStepHandler' 9
{ 
private 
readonly #
ITwitterSettingsService 0
_twitterService1 @
;@ A
public 
TwitterSettingsStep "
(" ##
ITwitterSettingsService# :
twitterService; I
)I J
{ 	
_twitterService 
= 
twitterService ,
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
TwitterSettings4 C
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
TwitterSettingsStepModel. F
>F G
(G H
)H I
;I J
var 
settings 
= 
await  
_twitterService! 0
.0 1
LoadSettingsAsync1 B
(B C
)C D
;D E
settings   
.   
ConsumerKey    
=  ! "
model  # (
.  ( )
ConsumerKey  ) 4
;  4 5
settings!! 
.!! 
ConsumerSecret!! #
=!!$ %
model!!& +
.!!+ ,
ConsumerSecret!!, :
;!!: ;
settings"" 
."" 
AccessToken""  
=""! "
model""# (
.""( )
AccessToken"") 4
;""4 5
settings## 
.## 
AccessTokenSecret## &
=##' (
model##) .
.##. /
AccessTokenSecret##/ @
;##@ A
await%% 
_twitterService%% !
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
TwitterSettingsStepModel)) )
{** 
public++ 
string++ 
ConsumerKey++ !
{++" #
get++$ '
;++' (
set++) ,
;++, -
}++. /
public,, 
string,, 
ConsumerSecret,, $
{,,% &
get,,' *
;,,* +
set,,, /
;,,/ 0
},,1 2
public-- 
string-- 
AccessToken-- !
{--" #
get--$ '
;--' (
set--) ,
;--, -
}--. /
public.. 
string.. 
AccessTokenSecret.. '
{..( )
get..* -
;..- .
set../ 2
;..2 3
}..4 5
}// 
}00 ∞
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Services\ITwitterSettingsService.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Services &
{ 
public 

	interface #
ITwitterSettingsService ,
{		 
Task

 
<

 
TwitterSettings
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
TwitterSettings 
> 
LoadSettingsAsync /
(/ 0
)0 1
;1 2
Task 
UpdateSettingsAsync  
(  !
TwitterSettings! 0
settings1 9
)9 :
;: ;
IEnumerable 
< 
ValidationResult $
>$ %
ValidateSettings& 6
(6 7
TwitterSettings7 F
settingsG O
)O P
;P Q
} 
} ˇ%
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Services\TwitterClient.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Services &
{		 
public

 

class

 
TwitterClient

 
{ 
private 
readonly 

HttpClient #
_client$ +
;+ ,
private 
readonly 
ILogger  
_logger! (
;( )
public 
TwitterClient 
( 

HttpClient '
client( .
,. /
ILogger0 7
<7 8
TwitterClient8 E
>E F
loggerG M
)M N
{ 	
_client 
= 
client 
; 
_client 
. 
BaseAddress 
=  !
new" %
Uri& )
() *
$str* C
)C D
;D E
_client 
. !
DefaultRequestHeaders )
.) *
Accept* 0
.0 1
Clear1 6
(6 7
)7 8
;8 9
_client 
. !
DefaultRequestHeaders )
.) *
Accept* 0
.0 1
Add1 4
(4 5
new5 8+
MediaTypeWithQualityHeaderValue9 X
(X Y
$strY k
)k l
)l m
;m n
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
HttpResponseMessage -
>- .
UpdateStatus/ ;
(; <
string< B
statusC I
,I J
paramsK Q
stringR X
[X Y
]Y Z
optionalParameters[ m
)m n
{ 	
try 
{ 
var 

parameters 
=  
new! $

Dictionary% /
</ 0
string0 6
,6 7
string8 >
>> ?
(? @
)@ A
;A B

parameters 
. 
Add 
( 
$str '
,' (
status) /
)/ 0
;0 1
if 
( 
optionalParameters &
is' )
object* 0
)0 1
{ 
for   
(   
int   
i   
=    
$num  ! "
;  " #
i  $ %
<  & '
optionalParameters  ( :
.  : ;
Length  ; A
;  A B
i  C D
++  D F
)  F G
{!! 
var"" 
optionalParameter"" -
="". /
optionalParameters""0 B
[""B C
i""C D
]""D E
;""E F
var## 
parts## !
=##" #
optionalParameter##$ 5
.##5 6
Split##6 ;
(##; <
$char##< ?
,##? @
$num##A B
)##B C
;##C D
if$$ 
($$ 
parts$$ !
.$$! "
Length$$" (
!=$$) +
$num$$, -
)$$- .
{%% 
_logger&& #
.&&# $

LogWarning&&$ .
(&&. /
$str&&/ `
,&&` a
optionalParameter&&b s
)&&s t
;&&t u
continue'' $
;''$ %
}(( 

parameters)) "
.))" #
Add))# &
())& '
parts))' ,
[)), -
$num))- .
])). /
,))/ 0
parts))1 6
[))6 7
$num))7 8
]))8 9
)))9 :
;)): ;
}** 
}++ 
var-- 
content-- 
=-- 
new-- !!
FormUrlEncodedContent--" 7
(--7 8

parameters--8 B
)--B C
;--C D
var.. 
uri.. 
=.. 
new.. 
Uri.. !
(..! "
$str.." =
,..= >
UriKind..? F
...F G
Relative..G O
)..O P
;..P Q
var// 
response// 
=// 
await// $
_client//% ,
.//, -
	PostAsync//- 6
(//6 7
uri//7 :
,//: ;
content//< C
)//C D
;//D E
return00 
response00 
;00  
}11 
catch22 
(22  
HttpRequestException22 '
ex22( *
)22* +
{33 
_logger44 
.44 
LogError44  
(44  !
ex44! #
,44# $
$str44% R
)44R S
;44S T
throw55 
;55 
}66 
}77 	
}88 
}99 Â
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Services\TwitterClientMessageHandler.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Services &
{ 
public 

class '
TwitterClientMessageHandler ,
:- .
DelegatingHandler/ @
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly 
IClock 
_clock  &
;& '
public '
TwitterClientMessageHandler *
(* +
IClock+ 1
clock2 7
,7 8
ISiteService9 E
siteServiceF Q
,Q R#
IDataProtectionProviderS j#
dataProtectionProvider	k Å
)
Å Ç
{ 	
_siteService 
= 
siteService &
;& '#
_dataProtectionProvider #
=$ %"
dataProtectionProvider& <
;< =
_clock 
= 
clock 
; 
} 	
	protected 
override 
async  
Task! %
<% &
HttpResponseMessage& 9
>9 :
	SendAsync; D
(D E
HttpRequestMessageE W
requestX _
,_ `
CancellationTokena r
cancellationToken	s Ñ
)
Ñ Ö
{   	
await!! 
ConfigureOAuthAsync!! %
(!!% &
request!!& -
)!!- .
;!!. /
return"" 
await"" 
base"" 
."" 
	SendAsync"" '
(""' (
request""( /
,""/ 0
cancellationToken""1 B
)""B C
;""C D
}## 	
public%% 
virtual%% 
string%% 
GetNonce%% &
(%%& '
)%%' (
{&& 	
return'' 
Convert'' 
.'' 
ToBase64String'' )
('') *
new''* -
ASCIIEncoding''. ;
(''; <
)''< =
.''= >
GetBytes''> F
(''F G
_clock''G M
.''M N
UtcNow''N T
.''T U
Ticks''U Z
.''Z [
ToString''[ c
(''c d
)''d e
)''e f
)''f g
;''g h
}(( 	
public** 
async** 
Task** 
ConfigureOAuthAsync** -
(**- .
HttpRequestMessage**. @
request**A H
)**H I
{++ 	
var,, 
	container,, 
=,, 
await,, !
_siteService,," .
.,,. / 
GetSiteSettingsAsync,,/ C
(,,C D
),,D E
;,,E F
var-- 
settings-- 
=-- 
	container-- $
.--$ %
As--% '
<--' (
TwitterSettings--( 7
>--7 8
(--8 9
)--9 :
;--: ;
var.. 

protrector.. 
=.. #
_dataProtectionProvider.. 4
...4 5
CreateProtector..5 D
(..D E
TwitterConstants..E U
...U V
Features..V ^
...^ _
Twitter.._ f
)..f g
;..g h
var// 
queryString// 
=// 
request// %
.//% &

RequestUri//& 0
.//0 1
Query//1 6
;//6 7
if11 
(11 
!11 
string11 
.11 
IsNullOrWhiteSpace11 *
(11* +
settings11+ 3
.113 4
ConsumerSecret114 B
)11B C
)11C D
settings22 
.22 
ConsumerSecret22 '
=22( )

protrector22* 4
.224 5
	Unprotect225 >
(22> ?
settings22? G
.22G H
ConsumerSecret22H V
)22V W
;22W X
if33 
(33 
!33 
string33 
.33 
IsNullOrWhiteSpace33 *
(33* +
settings33+ 3
.333 4
ConsumerSecret334 B
)33B C
)33C D
settings44 
.44 
AccessTokenSecret44 *
=44+ ,

protrector44- 7
.447 8
	Unprotect448 A
(44A B
settings44B J
.44J K
AccessTokenSecret44K \
)44\ ]
;44] ^
var66 
nonce66 
=66 
GetNonce66  
(66  !
)66! "
;66" #
var77 
	timeStamp77 
=77 
Convert77 #
.77# $
ToInt6477$ +
(77+ ,
(77, -
_clock77- 3
.773 4
UtcNow774 :
-77; <
new77= @
DateTime77A I
(77I J
$num77J N
,77N O
$num77P Q
,77Q R
$num77S T
,77T U
$num77V W
,77W X
$num77Y Z
,77Z [
$num77\ ]
,77] ^
$num77_ `
,77` a
DateTimeKind77b n
.77n o
Utc77o r
)77r s
)77s t
.77t u
TotalSeconds	77u Å
)
77Å Ç
.
77Ç É
ToString
77É ã
(
77ã å
)
77å ç
;
77ç é
var99 
sortedParameters99  
=99! "
new99# &
SortedDictionary99' 7
<997 8
string998 >
,99> ?
string99@ F
>99F G
(99G H
)99H I
;99I J
sortedParameters;; 
.;; 
Add;;  
(;;  !
Uri;;! $
.;;$ %
EscapeDataString;;% 5
(;;5 6
$str;;6 J
);;J K
,;;K L
Uri;;M P
.;;P Q
EscapeDataString;;Q a
(;;a b
settings;;b j
.;;j k
ConsumerKey;;k v
);;v w
);;w x
;;;x y
sortedParameters<< 
.<< 
Add<<  
(<<  !
Uri<<! $
.<<$ %
EscapeDataString<<% 5
(<<5 6
$str<<6 C
)<<C D
,<<D E
Uri<<F I
.<<I J
EscapeDataString<<J Z
(<<Z [
nonce<<[ `
)<<` a
)<<a b
;<<b c
sortedParameters== 
.== 
Add==  
(==  !
Uri==! $
.==$ %
EscapeDataString==% 5
(==5 6
$str==6 N
)==N O
,==O P
Uri==Q T
.==T U
EscapeDataString==U e
(==e f
$str==f q
)==q r
)==r s
;==s t
sortedParameters>> 
.>> 
Add>>  
(>>  !
Uri>>! $
.>>$ %
EscapeDataString>>% 5
(>>5 6
$str>>6 G
)>>G H
,>>H I
Uri>>J M
.>>M N
EscapeDataString>>N ^
(>>^ _
	timeStamp>>_ h
)>>h i
)>>i j
;>>j k
sortedParameters?? 
.?? 
Add??  
(??  !
Uri??! $
.??$ %
EscapeDataString??% 5
(??5 6
$str??6 C
)??C D
,??D E
Uri??F I
.??I J
EscapeDataString??J Z
(??Z [
settings??[ c
.??c d
AccessToken??d o
)??o p
)??p q
;??q r
sortedParameters@@ 
.@@ 
Add@@  
(@@  !
Uri@@! $
.@@$ %
EscapeDataString@@% 5
(@@5 6
$str@@6 E
)@@E F
,@@F G
Uri@@H K
.@@K L
EscapeDataString@@L \
(@@\ ]
$str@@] b
)@@b c
)@@c d
;@@d e
ifBB 
(BB 
!BB 
stringBB 
.BB 
IsNullOrEmptyBB %
(BB% &
requestBB& -
.BB- .

RequestUriBB. 8
.BB8 9
QueryBB9 >
)BB> ?
)BB? @
{CC 
foreachDD 
(DD 
varDD 
itemDD !
inDD" $
requestDD% ,
.DD, -

RequestUriDD- 7
.DD7 8
QueryDD8 =
.DD= >
SplitDD> C
(DDC D
$charDDD G
)DDG H
)DDH I
{EE 
varFF 
partsFF 
=FF 
itemFF  $
.FF$ %
SplitFF% *
(FF* +
$charFF+ .
)FF. /
;FF/ 0
varGG 
keyGG 
=GG 
UriGG !
.GG! "
EscapeDataStringGG" 2
(GG2 3
partsGG3 8
[GG8 9
$numGG9 :
]GG: ;
)GG; <
;GG< =
varHH 
valueHH 
=HH 
UriHH  #
.HH# $
EscapeDataStringHH$ 4
(HH4 5
partsHH5 :
[HH: ;
$numHH; <
]HH< =
)HH= >
;HH> ?
sortedParametersII $
.II$ %
AddII% (
(II( )
keyII) ,
,II, -
valueII. 3
)II3 4
;II4 5
}JJ 
}KK 
varMM 
contentStringMM 
=MM 
awaitMM  %
requestMM& -
.MM- .
ContentMM. 5
.MM5 6
ReadAsStringAsyncMM6 G
(MMG H
)MMH I
;MMI J
ifOO 
(OO 
!OO 
stringOO 
.OO 
IsNullOrEmptyOO %
(OO% &
contentStringOO& 3
)OO3 4
)OO4 5
{PP 
foreachQQ 
(QQ 
varQQ 
itemQQ !
inQQ" $
contentStringQQ% 2
.QQ2 3
SplitQQ3 8
(QQ8 9
$charQQ9 <
)QQ< =
)QQ= >
{RR 
varSS 
partsSS 
=SS 
itemSS  $
.SS$ %
SplitSS% *
(SS* +
$charSS+ .
)SS. /
;SS/ 0
varUU 
keyUU 
=UU 
UriUU !
.UU! "
EscapeDataStringUU" 2
(UU2 3

WebUtilityUU3 =
.UU= >
	UrlDecodeUU> G
(UUG H
partsUUH M
[UUM N
$numUUN O
]UUO P
)UUP Q
)UUQ R
;UUR S
varVV 
valueVV 
=VV 
UriVV  #
.VV# $
EscapeDataStringVV$ 4
(VV4 5

WebUtilityVV5 ?
.VV? @
	UrlDecodeVV@ I
(VVI J
partsVVJ O
[VVO P
$numVVP Q
]VVQ R
)VVR S
)VVS T
;VVT U
sortedParametersWW $
.WW$ %
AddWW% (
(WW( )
keyWW) ,
,WW, -
valueWW. 3
)WW3 4
;WW4 5
}XX 
}YY 
var[[ 

baseString[[ 
=[[ 
string[[ #
.[[# $
Concat[[$ *
([[* +
request[[+ 2
.[[2 3
Method[[3 9
.[[9 :
Method[[: @
.[[@ A
ToUpperInvariant[[A Q
([[Q R
)[[R S
,[[S T
$str[[U X
,[[X Y
Uri\\ 
.\\ 
EscapeDataString\\ $
(\\$ %
request\\% ,
.\\, -

RequestUri\\- 7
.\\7 8
AbsoluteUri\\8 C
.\\C D
ToString\\D L
(\\L M
)\\M N
)\\N O
,\\O P
$str\\Q T
,\\T U
Uri]] 
.]] 
EscapeDataString]] $
(]]$ %
string]]% +
.]]+ ,
Join]], 0
(]]0 1
$str]]1 4
,]]4 5
sortedParameters]]6 F
.]]F G
Select]]G M
(]]M N
c]]N O
=>]]P R
string]]S Y
.]]Y Z
Format]]Z `
(]]` a
$str]]a j
,]]j k
c]]l m
.]]m n
Key]]n q
,]]q r
c]]s t
.]]t u
Value]]u z
)]]z {
)]]{ |
)]]| }
)]]} ~
)]]~ 
;	]] Ä
var__ 
secret__ 
=__ 
string__ 
.__  
Concat__  &
(__& '
settings__' /
.__/ 0
ConsumerSecret__0 >
,__> ?
$str__@ C
,__C D
settings__E M
.__M N
AccessTokenSecret__N _
)___ `
;__` a
string`` 
	signature`` 
;`` 
usingaa 
(aa 
varaa 
hasheraa 
=aa 
newaa  #
HMACSHA1aa$ ,
(aa, -
ASCIIEncodingaa- :
.aa: ;
ASCIIaa; @
.aa@ A
GetBytesaaA I
(aaI J
secretaaJ P
)aaP Q
)aaQ R
)aaR S
{bb 
	signaturecc 
=cc 
Convertcc #
.cc# $
ToBase64Stringcc$ 2
(cc2 3
hashercc3 9
.cc9 :
ComputeHashcc: E
(ccE F
ASCIIEncodingccF S
.ccS T
ASCIIccT Y
.ccY Z
GetBytesccZ b
(ccb c

baseStringccc m
)ccm n
)ccn o
)cco p
;ccp q
}dd 
varff 
sbff 
=ff 
newff 
StringBuilderff &
(ff& '
)ff' (
;ff( )
sbgg 
.gg 
Appendgg 
(gg 
$strgg -
)gg- .
.gg. /
Appendgg/ 5
(gg5 6
Urigg6 9
.gg9 :
EscapeDataStringgg: J
(ggJ K
settingsggK S
.ggS T
ConsumerKeyggT _
)gg_ `
)gg` a
.gga b
Appendggb h
(ggh i
$strggi o
)ggo p
;ggp q
sbhh 
.hh 
Appendhh 
(hh 
$strhh &
)hh& '
.hh' (
Appendhh( .
(hh. /
Urihh/ 2
.hh2 3
EscapeDataStringhh3 C
(hhC D
noncehhD I
)hhI J
)hhJ K
.hhK L
AppendhhL R
(hhR S
$strhhS Y
)hhY Z
;hhZ [
sbii 
.ii 
Appendii 
(ii 
$strii *
)ii* +
.ii+ ,
Appendii, 2
(ii2 3
Uriii3 6
.ii6 7
EscapeDataStringii7 G
(iiG H
	signatureiiH Q
)iiQ R
)iiR S
.iiS T
AppendiiT Z
(iiZ [
$strii[ a
)iia b
;iib c
sbjj 
.jj 
Appendjj 
(jj 
$"jj 2
&oauth_signature_method=\"HMAC-SHA1\", jj >
"jj> ?
)jj? @
;jj@ A
sbkk 
.kk 
Appendkk 
(kk 
$strkk *
)kk* +
.kk+ ,
Appendkk, 2
(kk2 3
Urikk3 6
.kk6 7
EscapeDataStringkk7 G
(kkG H
	timeStampkkH Q
)kkQ R
)kkR S
.kkS T
AppendkkT Z
(kkZ [
$strkk[ a
)kka b
;kkb c
sbll 
.ll 
Appendll 
(ll 
$strll &
)ll& '
.ll' (
Appendll( .
(ll. /
Urill/ 2
.ll2 3
EscapeDataStringll3 C
(llC D
settingsllD L
.llL M
AccessTokenllM X
)llX Y
)llY Z
.llZ [
Appendll[ a
(lla b
$strllb h
)llh i
;lli j
sbmm 
.mm 
Appendmm 
(mm 
$strmm (
)mm( )
.mm) *
Appendmm* 0
(mm0 1
Urimm1 4
.mm4 5
EscapeDataStringmm5 E
(mmE F
$strmmF K
)mmK L
)mmL M
.mmM N
AppendmmN T
(mmT U
$charmmU X
)mmX Y
;mmY Z
requestoo 
.oo 
Headersoo 
.oo 
Authorizationoo )
=oo* +
newoo, /
Systemoo0 6
.oo6 7
Netoo7 :
.oo: ;
Httpoo; ?
.oo? @
Headersoo@ G
.ooG H%
AuthenticationHeaderValueooH a
(ooa b
$stroob i
,ooi j
sbook m
.oom n
ToStringoon v
(oov w
)oow x
)oox y
;ooy z
}pp 	
}qq 
}rr £9
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Services\TwitterSettingsService.cs
	namespace

 	
OrchardCore


 
.

 
Twitter

 
.

 
Services

 &
{ 
public 

class "
TwitterSettingsService '
:( )#
ITwitterSettingsService* A
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
public "
TwitterSettingsService %
(% &
ISiteService 
siteService $
,$ %
IStringLocalizer 
< "
TwitterSettingsService 3
>3 4
stringLocalizer5 D
)D E
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
TwitterSettings )
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
TwitterSettings  /
>/ 0
(0 1
)1 2
;2 3
} 	
public 
async 
Task 
< 
TwitterSettings )
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
TwitterSettings""  /
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
TwitterSettings%%. =
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
TwitterSettings-- +
>--+ ,
(--, -
nameof--- 3
(--3 4
TwitterSettings--4 C
)--C D
,--D E
aspect--F L
=>--M O
{.. 
aspect// 
.// 
ConsumerKey// "
=//# $
settings//% -
.//- .
ConsumerKey//. 9
;//9 :
aspect00 
.00 
ConsumerSecret00 %
=00& '
settings00( 0
.000 1
ConsumerSecret001 ?
;00? @
aspect11 
.11 
AccessToken11 "
=11# $
settings11% -
.11- .
AccessToken11. 9
;119 :
aspect22 
.22 
AccessTokenSecret22 (
=22) *
settings22+ 3
.223 4
AccessTokenSecret224 E
;22E F
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
TwitterSettings88> M
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
ConsumerKey??3 >
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
ConsumerKeyAAo z
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
.DD2 3
ConsumerSecretDD3 A
)DDA B
)DDB C
{EE 
yieldFF 
returnFF 
newFF  
ValidationResultFF! 1
(FF1 2
SFF2 3
[FF3 4
$strFF4 P
]FFP Q
,FFQ R
newFFS V
stringFFW ]
[FF] ^
]FF^ _
{FF` a
nameofFFb h
(FFh i
settingsFFi q
.FFq r
ConsumerSecret	FFr Ä
)
FFÄ Å
}
FFÇ É
)
FFÉ Ñ
;
FFÑ Ö
}GG 
ifII 
(II 
StringII 
.II 
IsNullOrWhiteSpaceII )
(II) *
settingsII* 2
.II2 3
AccessTokenII3 >
)II> ?
)II? @
{JJ 
yieldKK 
returnKK 
newKK  
ValidationResultKK! 1
(KK1 2
SKK2 3
[KK3 4
$strKK4 N
]KKN O
,KKO P
newKKQ T
stringKKU [
[KK[ \
]KK\ ]
{KK^ _
nameofKK` f
(KKf g
settingsKKg o
.KKo p
AccessTokenKKp {
)KK{ |
}KK} ~
)KK~ 
;	KK Ä
}LL 
ifNN 
(NN 
StringNN 
.NN 
IsNullOrWhiteSpaceNN )
(NN) *
settingsNN* 2
.NN2 3
AccessTokenSecretNN3 D
)NND E
)NNE F
{OO 
yieldPP 
returnPP 
newPP  
ValidationResultPP! 1
(PP1 2
SPP2 3
[PP3 4
$strPP4 U
]PPU V
,PPV W
newPPX [
stringPP\ b
[PPb c
]PPc d
{PPe f
nameofPPg m
(PPm n
settingsPPn v
.PPv w
AccessTokenSecret	PPw à
)
PPà â
}
PPä ã
)
PPã å
;
PPå ç
}QQ 
}RR 	
}SS 
}TT ä
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Settings\TwitterSettings.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Settings &
{ 
public 

class 
TwitterSettings  
{ 
public 
string 
ConsumerKey !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ConsumerSecret $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AccessToken !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
AccessTokenSecret '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
}		 
}

 †C
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Signin\Configuration\TwitterOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Signin $
.$ %
Configuration% 2
{ 
public 

class '
TwitterOptionsConfiguration ,
:- .
IConfigureOptions 
< !
AuthenticationOptions /
>/ 0
,0 1"
IConfigureNamedOptions 
< 
TwitterOptions -
>- .
{ 
private 
readonly #
ITwitterSettingsService 0
_twitterService1 @
;@ A
private 
readonly !
ITwitterSigninService .!
_twitterSigninService/ D
;D E
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
string 
_tenantPrefix  -
;- .
public '
TwitterOptionsConfiguration *
(* +#
ITwitterSettingsService   #
twitterService  $ 2
,  2 3!
ITwitterSigninService!! ! 
twitterSigninService!!" 6
,!!6 7#
IDataProtectionProvider"" #"
dataProtectionProvider""$ :
,"": ;
ShellSettings## 
shellSettings## '
,##' (
ILogger$$ 
<$$ '
TwitterOptionsConfiguration$$ /
>$$/ 0
logger$$1 7
)$$7 8
{%% 	
_twitterService&& 
=&& 
twitterService&& ,
;&&, -!
_twitterSigninService'' !
=''" # 
twitterSigninService''$ 8
;''8 9#
_dataProtectionProvider(( #
=(($ %"
dataProtectionProvider((& <
;((< =
_shellSettings)) 
=)) 
shellSettings)) *
;))* +
_tenantPrefix** 
=** 
$str** 
+**  !
shellSettings**" /
.**/ 0
RequestUrlPrefix**0 @
;**@ A
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
var00 
settings00 
=00 
GetSettingsAsync00 +
(00+ ,
)00, -
.00- .

GetAwaiter00. 8
(008 9
)009 :
.00: ;
	GetResult00; D
(00D E
)00E F
;00F G
if11 
(11 
settings11 
==11 
null11  
)11  !
{22 
return33 
;33 
}44 
options66 
.66 
	AddScheme66 
(66 
TwitterDefaults66 -
.66- . 
AuthenticationScheme66. B
,66B C
builder66D K
=>66L N
{77 
builder88 
.88 
DisplayName88 #
=88$ %
$str88& /
;88/ 0
builder99 
.99 
HandlerType99 #
=99$ %
typeof99& ,
(99, -
TwitterHandler99- ;
)99; <
;99< =
}:: 
):: 
;:: 
};; 	
public== 
void== 
	Configure== 
(== 
string== $
name==% )
,==) *
TwitterOptions==+ 9
options==: A
)==A B
{>> 	
if?? 
(?? 
!?? 
String?? 
.?? 
Equals?? 
(?? 
name?? #
,??# $
TwitterDefaults??% 4
.??4 5 
AuthenticationScheme??5 I
)??I J
)??J K
{@@ 
returnAA 
;AA 
}BB 
varDD 
settingsDD 
=DD 
GetSettingsAsyncDD +
(DD+ ,
)DD, -
.DD- .

GetAwaiterDD. 8
(DD8 9
)DD9 :
.DD: ;
	GetResultDD; D
(DDD E
)DDE F
;DDF G
ifEE 
(EE 
settingsEE 
==EE 
nullEE  
)EE  !
{FF 
returnGG 
;GG 
}HH 
optionsJJ 
.JJ 
ConsumerKeyJJ 
=JJ  !
settingsJJ" *
.JJ* +
Item1JJ+ 0
.JJ0 1
ConsumerKeyJJ1 <
;JJ< =
tryKK 
{LL 
optionsMM 
.MM 
ConsumerSecretMM &
=MM' (#
_dataProtectionProviderMM) @
.MM@ A
CreateProtectorMMA P
(MMP Q
TwitterConstantsMMQ a
.MMa b
FeaturesMMb j
.MMj k
TwitterMMk r
)MMr s
.MMs t
	UnprotectMMt }
(MM} ~
settings	MM~ Ü
.
MMÜ á
Item1
MMá å
.
MMå ç
ConsumerSecret
MMç õ
)
MMõ ú
;
MMú ù
}NN 
catchOO 
{PP 
_loggerQQ 
.QQ 
LogErrorQQ  
(QQ  !
$str	QQ! à
)
QQà â
;
QQâ ä
}RR 
ifTT 
(TT 
settingsTT 
.TT 
Item2TT 
.TT 
CallbackPathTT +
.TT+ ,
HasValueTT, 4
)TT4 5
{UU 
optionsVV 
.VV 
CallbackPathVV $
=VV% &
settingsVV' /
.VV/ 0
Item2VV0 5
.VV5 6
CallbackPathVV6 B
;VVB C
}WW 
optionsYY 
.YY 
RetrieveUserDetailsYY '
=YY( )
trueYY* .
;YY. /
optionsZZ 
.ZZ 
SignInSchemeZZ  
=ZZ! "
$strZZ# 6
;ZZ6 7
options[[ 
.[[ 
StateCookie[[ 
.[[  
Path[[  $
=[[% &
_tenantPrefix[[' 4
;[[4 5
options\\ 
.\\ 

SaveTokens\\ 
=\\  
settings\\! )
.\\) *
Item2\\* /
.\\/ 0

SaveTokens\\0 :
;\\: ;
}]] 	
public__ 
void__ 
	Configure__ 
(__ 
TwitterOptions__ ,
options__- 4
)__4 5
=>__6 8
Debug__9 >
.__> ?
Fail__? C
(__C D
$str__D u
)__u v
;__v w
privateaa 
asyncaa 
Taskaa 
<aa 
Tupleaa  
<aa  !
TwitterSettingsaa! 0
,aa0 1!
TwitterSigninSettingsaa2 G
>aaG H
>aaH I
GetSettingsAsyncaaJ Z
(aaZ [
)aa[ \
{bb 	
varcc 
settingscc 
=cc 
awaitcc  
_twitterServicecc! 0
.cc0 1
GetSettingsAsynccc1 A
(ccA B
)ccB C
;ccC D
ifdd 
(dd 
(dd 
_twitterServicedd  
.dd  !
ValidateSettingsdd! 1
(dd1 2
settingsdd2 :
)dd: ;
)dd; <
.dd< =
Anydd= @
(dd@ A
resultddA G
=>ddH J
resultddK Q
!=ddR T
ValidationResultddU e
.dde f
Successddf m
)ddm n
)ddn o
{ee 
ifff 
(ff 
_shellSettingsff "
.ff" #
Stateff# (
==ff) +
TenantStateff, 7
.ff7 8
Runningff8 ?
)ff? @
{gg 
_loggerhh 
.hh 

LogWarninghh &
(hh& '
$strhh' ^
)hh^ _
;hh_ `
}ii 
returnkk 
nullkk 
;kk 
}ll 
varnn 
signInSettingsnn 
=nn  
awaitnn! &!
_twitterSigninServicenn' <
.nn< =
GetSettingsAsyncnn= M
(nnM N
)nnN O
;nnO P
returnoo 
newoo 
Tupleoo 
<oo 
TwitterSettingsoo ,
,oo, -!
TwitterSigninSettingsoo. C
>ooC D
(ooD E
settingsooE M
,ooM N
signInSettingsooO ]
)oo] ^
;oo^ _
}pp 	
}qq 
}rr Â5
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Signin\Drivers\TwitterSigninSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Signin $
.$ %
Drivers% ,
{ 
public 

class .
"TwitterSigninSettingsDisplayDriver 3
:4 5 
SectionDisplayDriver6 J
<J K
ISiteK P
,P Q!
TwitterSigninSettingsR g
>g h
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
public .
"TwitterSigninSettingsDisplayDriver 1
(1 2!
IAuthorizationService ! 
authorizationService" 6
,6 7#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ; 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5

IShellHost 
	shellHost  
,  !
ShellSettings 
shellSettings '
)' (
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9#
_dataProtectionProvider #
=$ %"
dataProtectionProvider& <
;< = 
_httpContextAccessor    
=  ! "
httpContextAccessor  # 6
;  6 7

_shellHost!! 
=!! 
	shellHost!! "
;!!" #
_shellSettings"" 
="" 
shellSettings"" *
;""* +
}## 	
public%% 
override%% 
async%% 
Task%% "
<%%" #
IDisplayResult%%# 1
>%%1 2
	EditAsync%%3 <
(%%< =!
TwitterSigninSettings%%= R
settings%%S [
,%%[ \
BuildEditorContext%%] o
context%%p w
)%%w x
{&& 	
var'' 
user'' 
=''  
_httpContextAccessor'' +
.''+ ,
HttpContext'', 7
?''7 8
.''8 9
User''9 =
;''= >
if(( 
((( 
user(( 
==(( 
null(( 
||(( 
!((  !
await((! &!
_authorizationService((' <
.((< =
AuthorizeAsync((= K
(((K L
user((L P
,((P Q
Permissions((R ]
.((] ^
ManageTwitterSignin((^ q
)((q r
)((r s
{)) 
return** 
null** 
;** 
}++ 
return-- 

Initialize-- 
<-- *
TwitterSigninSettingsViewModel-- <
>--< =
(--= >
$str--> Z
,--Z [
model--\ a
=>--b d
{.. 
if// 
(// 
settings// 
.// 
CallbackPath// )
.//) *
HasValue//* 2
)//2 3
{00 
model11 
.11 
CallbackPath11 &
=11' (
settings11) 1
.111 2
CallbackPath112 >
;11> ?
}22 
model33 
.33 

SaveTokens33  
=33! "
settings33# +
.33+ ,

SaveTokens33, 6
;336 7
}44 
)44 
.44 
Location44 
(44 
$str44 #
)44# $
.44$ %
OnGroup44% ,
(44, -
TwitterConstants44- =
.44= >
Features44> F
.44F G
Signin44G M
)44M N
;44N O
}55 	
public77 
override77 
async77 
Task77 "
<77" #
IDisplayResult77# 1
>771 2
UpdateAsync773 >
(77> ?!
TwitterSigninSettings77? T
settings77U ]
,77] ^
BuildEditorContext77_ q
context77r y
)77y z
{88 	
if99 
(99 
context99 
.99 
GroupId99 
==99  "
TwitterConstants99# 3
.993 4
Features994 <
.99< =
Signin99= C
)99C D
{:: 
var;; 
user;; 
=;;  
_httpContextAccessor;; /
.;;/ 0
HttpContext;;0 ;
?;;; <
.;;< =
User;;= A
;;;A B
if<< 
(<< 
user<< 
==<< 
null<<  
||<<! #
!<<$ %
await<<% *!
_authorizationService<<+ @
.<<@ A
AuthorizeAsync<<A O
(<<O P
user<<P T
,<<T U
Permissions<<V a
.<<a b
ManageTwitterSignin<<b u
)<<u v
)<<v w
{== 
return>> 
null>> 
;>>  
}?? 
varAA 
modelAA 
=AA 
newAA *
TwitterSigninSettingsViewModelAA  >
(AA> ?
)AA? @
;AA@ A
awaitBB 
contextBB 
.BB 
UpdaterBB %
.BB% &
TryUpdateModelAsyncBB& 9
(BB9 :
modelBB: ?
,BB? @
PrefixBBA G
)BBG H
;BBH I
ifDD 
(DD 
contextDD 
.DD 
UpdaterDD #
.DD# $

ModelStateDD$ .
.DD. /
IsValidDD/ 6
)DD6 7
{EE 
varFF 
	protectorFF !
=FF" ##
_dataProtectionProviderFF$ ;
.FF; <
CreateProtectorFF< K
(FFK L
TwitterConstantsFFL \
.FF\ ]
FeaturesFF] e
.FFe f
SigninFFf l
)FFl m
;FFm n
settingsGG 
.GG 
CallbackPathGG )
=GG* +
modelGG, 1
.GG1 2
CallbackPathGG2 >
;GG> ?
settingsHH 
.HH 

SaveTokensHH '
=HH( )
modelHH* /
.HH/ 0

SaveTokensHH0 :
;HH: ;
awaitII 

_shellHostII $
.II$ %$
ReleaseShellContextAsyncII% =
(II= >
_shellSettingsII> L
)IIL M
;IIM N
}JJ 
}KK 
returnLL 
awaitLL 
	EditAsyncLL "
(LL" #
settingsLL# +
,LL+ ,
contextLL- 4
)LL4 5
;LL5 6
}MM 	
}NN 
}OO ï
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Signin\Services\ITwitterSigninService.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Signin $
.$ %
Services% -
{ 
public 

	interface !
ITwitterSigninService *
{ 
Task 
< !
TwitterSigninSettings "
>" #
GetSettingsAsync$ 4
(4 5
)5 6
;6 7
Task		 
<		 !
TwitterSigninSettings		 "
>		" #
LoadSettingsAsync		$ 5
(		5 6
)		6 7
;		7 8
Task

 
UpdateSettingsAsync

  
(

  !!
TwitterSigninSettings

! 6
settings

7 ?
)

? @
;

@ A
} 
} À
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Signin\Services\TwitterSigninService.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Signin $
.$ %
Services% -
{ 
public		 

class		  
TwitterSigninService		 %
:		& '!
ITwitterSigninService		( =
{

 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public  
TwitterSigninService #
(# $
ISiteService 
siteService $
)$ %
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
< !
TwitterSigninSettings /
>/ 0
GetSettingsAsync1 A
(A B
)B C
{ 	
var 
	container 
= 
await !
_siteService" .
.. / 
GetSiteSettingsAsync/ C
(C D
)D E
;E F
return 
	container 
. 
As 
<  !
TwitterSigninSettings  5
>5 6
(6 7
)7 8
;8 9
} 	
public 
async 
Task 
< !
TwitterSigninSettings /
>/ 0
LoadSettingsAsync1 B
(B C
)C D
{ 	
var 
	container 
= 
await !
_siteService" .
.. /!
LoadSiteSettingsAsync/ D
(D E
)E F
;F G
return 
	container 
. 
As 
<  !
TwitterSigninSettings  5
>5 6
(6 7
)7 8
;8 9
} 	
public 
async 
Task 
UpdateSettingsAsync -
(- .!
TwitterSigninSettings. C
settingsD L
)L M
{   	
if!! 
(!! 
settings!! 
==!! 
null!!  
)!!  !
{"" 
throw## 
new## !
ArgumentNullException## /
(##/ 0
nameof##0 6
(##6 7
settings##7 ?
)##? @
)##@ A
;##A B
}$$ 
var&& 
	container&& 
=&& 
await&& !
_siteService&&" .
.&&. /!
LoadSiteSettingsAsync&&/ D
(&&D E
)&&E F
;&&F G
	container'' 
.'' 
Alter'' 
<'' !
TwitterSigninSettings'' 1
>''1 2
(''2 3
nameof''3 9
(''9 :!
TwitterSigninSettings'': O
)''O P
,''P Q
aspect''R X
=>''Y [
{(( 
aspect)) 
.)) 
CallbackPath)) #
=))$ %
settings))& .
.)). /
CallbackPath))/ ;
;)); <
}** 
)** 
;** 
await,, 
_siteService,, 
.,, #
UpdateSiteSettingsAsync,, 6
(,,6 7
	container,,7 @
),,@ A
;,,A B
}-- 	
}.. 
}// ˚
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Signin\Settings\TwitterSigninSettings.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Signin $
.$ %
Settings% -
{ 
public 

class !
TwitterSigninSettings &
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
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Signin\ViewModels\TwitterSigninSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
Signin $
.$ %

ViewModels% /
{ 
public 

class *
TwitterSigninSettingsViewModel /
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
} à-
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Startup.cs
	namespace 	
OrchardCore
 
. 
Twitter 
{ 
public 

class 
ModuleStartup 
:  
StartupBase! ,
{ 
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
;B C
} 	
} 
[!! 
Feature!! 
(!! 
TwitterConstants!! 
.!! 
Features!! &
.!!& '
Twitter!!' .
)!!. /
]!!/ 0
public"" 

class"" 
TwitterStartup"" 
:""  !
StartupBase""" -
{## 
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
<&& 
IDisplayDriver&& -
<&&- .
ISite&&. 3
>&&3 4
,&&4 5(
TwitterSettingsDisplayDriver&&6 R
>&&R S
(&&S T
)&&T U
;&&U V
services'' 
.'' 
	AddScoped'' 
<'' 
INavigationProvider'' 2
,''2 3
	AdminMenu''4 =
>''= >
(''> ?
)''? @
;''@ A
services(( 
.(( 
AddSingleton(( !
<((! "#
ITwitterSettingsService((" 9
,((9 :"
TwitterSettingsService((; Q
>((Q R
(((R S
)((S T
;((T U
services** 
.** "
AddRecipeExecutionStep** +
<**+ ,
TwitterSettingsStep**, ?
>**? @
(**@ A
)**A B
;**B C
services,, 
.,, 
AddTransient,, !
<,,! "'
TwitterClientMessageHandler,," =
>,,= >
(,,> ?
),,? @
;,,@ A
services.. 
... 
AddHttpClient.. "
<.." #
TwitterClient..# 0
>..0 1
(..1 2
)..2 3
.// !
AddHttpMessageHandler// &
<//& ''
TwitterClientMessageHandler//' B
>//B C
(//C D
)//D E
.00 '
AddTransientHttpErrorPolicy00 ,
(00, -
policy00- 3
=>004 6
policy007 =
.00= >
WaitAndRetryAsync00> O
(00O P
$num00P Q
,00Q R
attempt00S Z
=>00[ ]
TimeSpan00^ f
.00f g
FromSeconds00g r
(00r s
$num00s v
*00w x
attempt	00y Ä
)
00Ä Å
)
00Å Ç
)
00Ç É
;
00É Ñ
}11 	
public33 
override33 
void33 
	Configure33 &
(33& '
IApplicationBuilder33' :
builder33; B
,33B C!
IEndpointRouteBuilder33D Y
routes33Z `
,33` a
IServiceProvider33b r
serviceProvider	33s Ç
)
33Ç É
{44 	
}55 	
}66 
[88 
Feature88 
(88 
TwitterConstants88 
.88 
Features88 &
.88& '
Signin88' -
)88- .
]88. /
public99 

class99  
TwitterSigninStartup99 %
:99& '
StartupBase99( 3
{:: 
public;; 
override;; 
void;; 
ConfigureServices;; .
(;;. /
IServiceCollection;;/ A
services;;B J
);;J K
{<< 	
services== 
.== 
	AddScoped== 
<== 
INavigationProvider== 2
,==2 3
AdminMenuSignin==4 C
>==C D
(==D E
)==E F
;==F G
services>> 
.>> 
AddSingleton>> !
<>>! "!
ITwitterSigninService>>" 7
,>>7 8 
TwitterSigninService>>9 M
>>>M N
(>>N O
)>>O P
;>>P Q
services?? 
.?? 
	AddScoped?? 
<?? 
IDisplayDriver?? -
<??- .
ISite??. 3
>??3 4
,??4 5.
"TwitterSigninSettingsDisplayDriver??6 X
>??X Y
(??Y Z
)??Z [
;??[ \
servicesAA 
.AA 
TryAddEnumerableAA %
(AA% &
newAA& )
[AA) *
]AA* +
{BB 
ServiceDescriptorDD !
.DD! "
	TransientDD" +
<DD+ ,
IConfigureOptionsDD, =
<DD= >!
AuthenticationOptionsDD> S
>DDS T
,DDT U'
TwitterOptionsConfigurationDDV q
>DDq r
(DDr s
)DDs t
,DDt u
ServiceDescriptorEE !
.EE! "
	TransientEE" +
<EE+ ,
IConfigureOptionsEE, =
<EE= >
TwitterOptionsEE> L
>EEL M
,EEM N'
TwitterOptionsConfigurationEEO j
>EEj k
(EEk l
)EEl m
,EEm n
ServiceDescriptorGG !
.GG! "
	TransientGG" +
<GG+ ,!
IPostConfigureOptionsGG, A
<GGA B
TwitterOptionsGGB P
>GGP Q
,GGQ R'
TwitterPostConfigureOptionsGGS n
>GGn o
(GGo p
)GGp q
}HH 
)HH 
;HH 
}II 	
}JJ 
}KK €
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\TwitterConstants.cs
	namespace 	
OrchardCore
 
. 
Twitter 
{ 
public 

static 
class 
TwitterConstants (
{ 
public 
static 
class 
Features $
{ 	
public 
const 
string 
Twitter  '
=( )
$str* ?
;? @
public 
const 
string 
Signin  &
=' (
$str) E
;E F
}		 	
}

 
} ±
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\ViewModels\TwitterSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 

ViewModels (
{ 
public 

class $
TwitterSettingsViewModel )
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
string 
APIKey 
{ 
get "
;" #
set$ '
;' (
}) *
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
APISecretKey "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
,+ ,
ErrorMessage- 9
=: ;
$str< V
)V W
]W X
public 
string 
AccessToken !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
,+ ,
ErrorMessage- 9
=: ;
$str< ]
)] ^
]^ _
public 
string 
AccessTokenSecret '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
HasDecryptionError &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ¥%
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Workflows\Activities\UpdateTwitterStatusTask.cs
	namespace

 	
OrchardCore


 
.

 
Twitter

 
.

 
	Workflows

 '
.

' (

Activities

( 2
{ 
public 

class #
UpdateTwitterStatusTask (
:) *
TaskActivity+ 7
{ 
private 
readonly 
TwitterClient &
_twitterClient' 5
;5 6
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public #
UpdateTwitterStatusTask &
(& '
TwitterClient 
twitterClient '
,' ((
IWorkflowExpressionEvaluator (
expressionEvaluator) <
,< =
IStringLocalizer 
< #
UpdateTwitterStatusTask 4
>4 5
	localizer6 ?
) 
{ 	
_twitterClient 
= 
twitterClient *
;* + 
_expressionEvaluator  
=! "
expressionEvaluator# 6
;6 7
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .#
UpdateTwitterStatusTask. E
)E F
;F G
public   
override   
LocalizedString   '
DisplayText  ( 3
=>  4 6
S  7 8
[  8 9
$str  9 U
]  U V
;  V W
public## 
override## 
LocalizedString## '
Category##( 0
=>##1 3
S##4 5
[##5 6
$str##6 >
]##> ?
;##? @
public&& 
WorkflowExpression&& !
<&&! "
string&&" (
>&&( )
StatusTemplate&&* 8
{'' 	
get(( 
=>(( 
GetProperty(( 
((( 
(((  
)((  !
=>((" $
new((% (
WorkflowExpression(() ;
<((; <
string((< B
>((B C
(((C D
)((D E
)((E F
;((F G
set)) 
=>)) 
SetProperty)) 
()) 
value)) $
)))$ %
;))% &
}** 	
public-- 
override-- 
IEnumerable-- #
<--# $
Outcome--$ +
>--+ ,
GetPossibleOutcomes--- @
(--@ A$
WorkflowExecutionContext--A Y
workflowContext--Z i
,--i j
ActivityContext--k z
activityContext	--{ ä
)
--ä ã
{.. 	
return// 
Outcomes// 
(// 
S// 
[// 
$str// $
]//$ %
,//% &
S//' (
[//( )
$str//) 1
]//1 2
)//2 3
;//3 4
}00 	
public33 
override33 
async33 
Task33 "
<33" ##
ActivityExecutionResult33# :
>33: ;
ExecuteAsync33< H
(33H I$
WorkflowExecutionContext33I a
workflowContext33b q
,33q r
ActivityContext	33s Ç
activityContext
33É í
)
33í ì
{44 	
var66 
status66 
=66 
await66  
_expressionEvaluator66 3
.663 4
EvaluateAsync664 A
(66A B
StatusTemplate66B P
,66P Q
workflowContext66R a
,66a b
null66c g
)66g h
;66h i
var88 
result88 
=88 
await88 
_twitterClient88 -
.88- .
UpdateStatus88. :
(88: ;
status88; A
)88A B
;88B C
workflowContext99 
.99 

Properties99 &
.99& '
Add99' *
(99* +
$str99+ <
,99< =
await99> C
result99D J
.99J K
Content99K R
.99R S
ReadAsStringAsync99S d
(99d e
)99e f
)99f g
;99g h
if;; 
(;; 
!;; 
result;; 
.;; 
IsSuccessStatusCode;; +
);;+ ,
{<< 
return== 
Outcomes== 
(==  
$str==  (
)==( )
;==) *
}>> 
return@@ 
Outcomes@@ 
(@@ 
$str@@ "
)@@" #
;@@# $
}AA 	
}BB 
}CC ∂
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Workflows\Drivers\UpdateTwitterStatusTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
	Workflows '
.' (
Drivers( /
{ 
public 

class 0
$UpdateTwitterStatusTaskDisplayDriver 5
:6 7!
ActivityDisplayDriver8 M
<M N#
UpdateTwitterStatusTaskN e
,e f-
 UpdateTwitterStatusTaskViewModel	g á
>
á à
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -#
UpdateTwitterStatusTask

- D
activity

E M
,

M N,
 UpdateTwitterStatusTaskViewModel

O o
model

p u
)

u v
{ 	
model 
. 
StatusTemplate  
=! "
activity# +
.+ ,
StatusTemplate, :
.: ;

Expression; E
;E F
} 	
	protected 
override 
void 
UpdateActivity  .
(. /,
 UpdateTwitterStatusTaskViewModel/ O
modelP U
,U V#
UpdateTwitterStatusTaskW n
activityo w
)w x
{ 	
activity 
. 
StatusTemplate #
=$ %
new& )
WorkflowExpression* <
<< =
string= C
>C D
(D E
modelE J
.J K
StatusTemplateK Y
)Y Z
;Z [
} 	
} 
} ∆
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Workflows\Startup.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
	Workflows '
{ 
[		 
RequireFeatures		 
(		 
$str		 ,
)		, -
]		- .
public

 

class

 
Startup

 
:

 
StartupBase

 &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddActivity  
<  !#
UpdateTwitterStatusTask! 8
,8 90
$UpdateTwitterStatusTaskDisplayDriver: ^
>^ _
(_ `
)` a
;a b
} 	
} 
} ±
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Twitter\Workflows\ViewModels\UpdateTwitterStatusTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Twitter 
. 
	Workflows '
.' (

ViewModels( 2
{ 
public 

class ,
 UpdateTwitterStatusTaskViewModel 1
{ 
[ 	
Required	 
] 
public 
string 
StatusTemplate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
}		 
}

 