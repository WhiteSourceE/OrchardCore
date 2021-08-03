Бb
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\AdminMenu.cs
	namespace		 	
OrchardCore		
 
.		 
Users		 
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
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
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
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str $
]$ %
,% &
NavigationConstants' :
.: ;%
AdminMenuSecurityPosition; T
,T U
securityV ^
=>_ a
securityb j
. 
AddClass 
( 
$str (
)( )
.) *
Id* ,
(, -
$str- 7
)7 8
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
S) *
[* +
$str+ 2
]2 3
.3 4
PrefixPosition4 B
(B C
)C D
,D E
usersF K
=>L N
usersO T
. 
AddClass %
(% &
$str& -
)- .
.. /
Id/ 1
(1 2
$str2 9
)9 :
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
$str6 I
)I J
.   

Permission   '
(  ' (
Permissions  ( 3
.  3 4
	ViewUsers  4 =
)  = >
.!! 
Resource!! %
(!!% &
new!!& )
User!!* .
(!!. /
)!!/ 0
)!!0 1
."" 
LocalNav"" %
(""% &
)""& '
)## 
.$$ 
Add$$ 
($$ 
S$$ 
[$$ 
$str$$ )
]$$) *
,$$* +
settings$$, 4
=>$$5 7
settings$$8 @
.%% 
Add%%  
(%%  !
S%%! "
[%%" #
$str%%# /
]%%/ 0
,%%0 1
S%%2 3
[%%3 4
$str%%4 @
]%%@ A
.%%A B
PrefixPosition%%B P
(%%P Q
)%%Q R
,%%R S
login%%T Y
=>%%Z \
login%%] b
.&&  !

Permission&&! +
(&&+ ,
Permissions&&, 7
.&&7 8
ManageUsers&&8 C
)&&C D
.''  !
Action''! '
(''' (
$str''( /
,''/ 0
$str''1 8
,''8 9
new'': =
{''> ?
area''@ D
=''E F
$str''G ]
,''] ^
groupId''_ f
=''g h'
LoginSettingsDisplayDriver	''i Г
.
''Г Д
GroupId
''Д Л
}
''М Н
)
''Н О
.((  !
LocalNav((! )
((() *
)((* +
)))  !
)** 
)++ 
;++ 
return-- 
Task-- 
.-- 
CompletedTask-- %
;--% &
}.. 	
}// 
[11 
Feature11 
(11 
$str11 ,
)11, -
]11- .
public22 

class22  
ChangeEmailAdminMenu22 %
:22& '
INavigationProvider22( ;
{33 
private44 
readonly44 
IStringLocalizer44 )
S44* +
;44+ ,
public66  
ChangeEmailAdminMenu66 #
(66# $
IStringLocalizer66$ 4
<664 5 
ChangeEmailAdminMenu665 I
>66I J
	localizer66K T
)66T U
{77 	
S88 
=88 
	localizer88 
;88 
}99 	
public;; 
Task;;  
BuildNavigationAsync;; (
(;;( )
string;;) /
name;;0 4
,;;4 5
NavigationBuilder;;6 G
builder;;H O
);;O P
{<< 	
if== 
(== 
!== 
String== 
.== 
Equals== 
(== 
name== #
,==# $
$str==% ,
,==, -
StringComparison==. >
.==> ?
OrdinalIgnoreCase==? P
)==P Q
)==Q R
{>> 
return?? 
Task?? 
.?? 
CompletedTask?? )
;??) *
}@@ 
builderBB 
.CC 
AddCC 
(CC 
SCC 
[CC 
$strCC !
]CC! "
,CC" #
securityCC$ ,
=>CC- /
securityCC0 8
.DD 
AddDD 
(DD 
SDD 
[DD 
$strDD %
]DD% &
,DD& '
settingsDD( 0
=>DD1 3
settingsDD4 <
.EE 
AddEE 
(EE 
SEE 
[EE 
$strEE 2
]EE2 3
,EE3 4
SEE5 6
[EE6 7
$strEE7 J
]EEJ K
.EEK L
PrefixPositionEEL Z
(EEZ [
)EE[ \
,EE\ ]
registrationEE^ j
=>EEk m
registrationEEn z
.FF 

PermissionFF '
(FF' (
PermissionsFF( 3
.FF3 4
ManageUsersFF4 ?
)FF? @
.GG 
ActionGG #
(GG# $
$strGG$ +
,GG+ ,
$strGG- 4
,GG4 5
newGG6 9
{GG: ;
areaGG< @
=GGA B
$strGGC Y
,GGY Z
groupIdGG[ b
=GGc d-
 ChangeEmailSettingsDisplayDriver	GGe Е
.
GGЕ Ж
GroupId
GGЖ Н
}
GGО П
)
GGП Р
.HH 
LocalNavHH %
(HH% &
)HH& '
)II 
)II 
)II 
;II 
returnKK 
TaskKK 
.KK 
CompletedTaskKK %
;KK% &
}LL 	
}MM 
[OO 
FeatureOO 
(OO 
$strOO -
)OO- .
]OO. /
publicPP 

classPP !
RegistrationAdminMenuPP &
:PP' (
INavigationProviderPP) <
{QQ 
privateRR 
readonlyRR 
IStringLocalizerRR )
SRR* +
;RR+ ,
publicTT !
RegistrationAdminMenuTT $
(TT$ %
IStringLocalizerTT% 5
<TT5 6!
RegistrationAdminMenuTT6 K
>TTK L
	localizerTTM V
)TTV W
{UU 	
SVV 
=VV 
	localizerVV 
;VV 
}WW 	
publicYY 
TaskYY  
BuildNavigationAsyncYY (
(YY( )
stringYY) /
nameYY0 4
,YY4 5
NavigationBuilderYY6 G
builderYYH O
)YYO P
{ZZ 	
if[[ 
([[ 
![[ 
String[[ 
.[[ 
Equals[[ 
([[ 
name[[ #
,[[# $
$str[[% ,
,[[, -
StringComparison[[. >
.[[> ?
OrdinalIgnoreCase[[? P
)[[P Q
)[[Q R
{\\ 
return]] 
Task]] 
.]] 
CompletedTask]] )
;]]) *
}^^ 
builder`` 
.aa 
Addaa 
(aa 
Saa 
[aa 
$straa !
]aa! "
,aa" #
securityaa$ ,
=>aa- /
securityaa0 8
.bb 
Addbb 
(bb 
Sbb 
[bb 
$strbb %
]bb% &
,bb& '
settingsbb( 0
=>bb1 3
settingsbb4 <
.cc 
Addcc 
(cc 
Scc 
[cc 
$strcc 2
]cc2 3
,cc3 4
Scc5 6
[cc6 7
$strcc7 J
]ccJ K
.ccK L
PrefixPositionccL Z
(ccZ [
)cc[ \
,cc\ ]
registrationcc^ j
=>cck m
registrationccn z
.dd 

Permissiondd '
(dd' (
Permissionsdd( 3
.dd3 4
ManageUsersdd4 ?
)dd? @
.ee 
Actionee #
(ee# $
$stree$ +
,ee+ ,
$stree- 4
,ee4 5
newee6 9
{ee: ;
areaee< @
=eeA B
$streeC Y
,eeY Z
groupIdee[ b
=eec d.
!RegistrationSettingsDisplayDriver	eee Ж
.
eeЖ З
GroupId
eeЗ О
}
eeП Р
)
eeР С
.ff 
LocalNavff %
(ff% &
)ff& '
)gg 
)gg 
)gg 
;gg 
returnii 
Taskii 
.ii 
CompletedTaskii %
;ii% &
}jj 	
}kk 
[mm 
Featuremm 
(mm 
$strmm .
)mm. /
]mm/ 0
publicnn 

classnn "
ResetPasswordAdminMenunn '
:nn( )
INavigationProvidernn* =
{oo 
privatepp 
readonlypp 
IStringLocalizerpp )
Spp* +
;pp+ ,
publicrr "
ResetPasswordAdminMenurr %
(rr% &
IStringLocalizerrr& 6
<rr6 7"
ResetPasswordAdminMenurr7 M
>rrM N
	localizerrrO X
)rrX Y
{ss 	
Stt 
=tt 
	localizertt 
;tt 
}uu 	
publicww 
Taskww  
BuildNavigationAsyncww (
(ww( )
stringww) /
nameww0 4
,ww4 5
NavigationBuilderww6 G
builderwwH O
)wwO P
{xx 	
ifyy 
(yy 
!yy 
Stringyy 
.yy 
Equalsyy 
(yy 
nameyy #
,yy# $
$stryy% ,
,yy, -
StringComparisonyy. >
.yy> ?
OrdinalIgnoreCaseyy? P
)yyP Q
)yyQ R
{zz 
return{{ 
Task{{ 
.{{ 
CompletedTask{{ )
;{{) *
}|| 
builder~~ 
. 
Add 
( 
S 
[ 
$str !
]! "
," #
security$ ,
=>- /
security0 8
.
АА 
Add
АА 
(
АА 
S
АА 
[
АА 
$str
АА %
]
АА% &
,
АА& '
settings
АА( 0
=>
АА1 3
settings
АА4 <
.
ББ 
Add
ББ 
(
ББ 
S
ББ 
[
ББ 
$str
ББ 4
]
ББ4 5
,
ББ5 6
S
ББ7 8
[
ББ8 9
$str
ББ9 N
]
ББN O
.
ББO P
PrefixPosition
ББP ^
(
ББ^ _
)
ББ_ `
,
ББ` a
password
ББb j
=>
ББk m
password
ББn v
.
ВВ 

Permission
ВВ '
(
ВВ' (
Permissions
ВВ( 3
.
ВВ3 4
ManageUsers
ВВ4 ?
)
ВВ? @
.
ГГ 
Action
ГГ #
(
ГГ# $
$str
ГГ$ +
,
ГГ+ ,
$str
ГГ- 4
,
ГГ4 5
new
ГГ6 9
{
ГГ: ;
area
ГГ< @
=
ГГA B
$str
ГГC Y
,
ГГY Z
groupId
ГГ[ b
=
ГГc d1
"ResetPasswordSettingsDisplayDriverГГe З
.ГГЗ И
GroupIdГГИ П
}ГГР С
)ГГС Т
.
ДД 
LocalNav
ДД %
(
ДД% &
)
ДД& '
)
ЕЕ 
)
ЕЕ 
)
ЕЕ 
;
ЕЕ 
return
ЗЗ 
Task
ЗЗ 
.
ЗЗ 
CompletedTask
ЗЗ %
;
ЗЗ% &
}
ИИ 	
}
ЙЙ 
}КК ґ
КD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Commands\UserCommands.cs
	namespace		 	
OrchardCore		
 
.		 
Users		 
.		 
Commands		 $
{

 
public 

class 
UserCommands 
: !
DefaultCommandHandler  5
{ 
private 
readonly 
IUserService %
_userService& 2
;2 3
public 
UserCommands 
( 
IUserService 
userService $
,$ %
IStringLocalizer 
< 
UserCommands )
>) *
	localizer+ 4
)4 5
:6 7
base8 <
(< =
	localizer= F
)F G
{ 	
_userService 
= 
userService &
;& '
} 	
[ 	
OrchardSwitch	 
] 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
OrchardSwitch	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
OrchardSwitch	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
OrchardSwitch	 
] 
public   
string   
Roles   
{   
get   !
;  ! "
set  # &
;  & '
}  ( )
["" 	
CommandName""	 
("" 
$str"" !
)""! "
]""" #
[## 	
CommandHelp##	 
(## 
$str## 
+
##А Б
$str
##В Ц
)
##Ц Ч
]
##Ч Ш
[$$ 	
OrchardSwitches$$	 
($$ 
$str$$ 8
)$$8 9
]$$9 :
public%% 
async%% 
Task%% 
CreateUserAsync%% )
(%%) *
)%%* +
{&& 	
var'' 
	roleNames'' 
='' 
('' 
Roles'' "
??''# %
$str''& (
)''( )
.'') *
Split''* /
(''/ 0
$char''0 3
,''3 4
StringSplitOptions''5 G
.''G H
RemoveEmptyEntries''H Z
)''Z [
.''[ \
ToArray''\ c
(''c d
)''d e
;''e f
var)) 
valid)) 
=)) 
true)) 
;)) 
await++ 
_userService++ 
.++ 
CreateUserAsync++ .
(++. /
new++/ 2
User++3 7
{++8 9
UserName++: B
=++C D
UserName++E M
,++M N
Email++O T
=++U V
Email++W \
,++\ ]
	RoleNames++^ g
=++h i
	roleNames++j s
,++s t
EmailConfirmed	++u Г
=
++Д Е
true
++Ж К
}
++Л М
,
++М Н
Password
++О Ц
,
++Ц Ч
(
++Ш Щ
key
++Щ Ь
,
++Ь Э
message
++Ю •
)
++• ¶
=>
++І ©
{,, 
valid-- 
=-- 
false-- 
;-- 
Context.. 
... 
Output.. 
... 
	WriteLine.. (
(..( )
message..) 0
)..0 1
;..1 2
}// 
)// 
;// 
if11 
(11 
valid11 
)11 
{22 
Context33 
.33 
Output33 
.33 
	WriteLine33 (
(33( )
S33) *
[33* +
$str33+ F
]33F G
)33G H
;33H I
}44 
}55 	
}66 
}77 Ш≤
ТD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\AccountController.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Controllers '
{ 
[ 
	Authorize 
] 
public   

class   
AccountController   "
:  # $

Controller  % /
{!! 
private"" 
readonly"" 
IUserService"" %
_userService""& 2
;""2 3
private## 
readonly## 
SignInManager## &
<##& '
IUser##' ,
>##, -
_signInManager##. <
;##< =
private$$ 
readonly$$ 
UserManager$$ $
<$$$ %
IUser$$% *
>$$* +
_userManager$$, 8
;$$8 9
private%% 
readonly%% 
ILogger%%  
_logger%%! (
;%%( )
private&& 
readonly&& 
ISiteService&& %
_siteService&&& 2
;&&2 3
private'' 
readonly'' 
IEnumerable'' $
<''$ %
ILoginFormEvent''% 4
>''4 5
_accountEvents''6 D
;''D E
private(( 
readonly(( 
IScriptingManager(( *
_scriptingManager((+ <
;((< =
private)) 
readonly)) #
IDataProtectionProvider)) 0#
_dataProtectionProvider))1 H
;))H I
private** 
readonly** 
IClock** 
_clock**  &
;**& '
private++ 
readonly++ 
IDistributedCache++ *
_distributedCache+++ <
;++< =
private,, 
readonly,, 
IEnumerable,, $
<,,$ %&
IExternalLoginEventHandler,,% ?
>,,? @"
_externalLoginHandlers,,A W
;,,W X
private-- 
readonly-- 
IStringLocalizer-- )
S--* +
;--+ ,
public// 
AccountController//  
(//  !
IUserService00 
userService00 $
,00$ %
SignInManager11 
<11 
IUser11 
>11  
signInManager11! .
,11. /
UserManager22 
<22 
IUser22 
>22 
userManager22 *
,22* +
ILogger33 
<33 
AccountController33 %
>33% &
logger33' -
,33- .
ISiteService44 
siteService44 $
,44$ %
IStringLocalizer55 
<55 
AccountController55 .
>55. /
stringLocalizer550 ?
,55? @
IEnumerable66 
<66 
ILoginFormEvent66 '
>66' (
accountEvents66) 6
,666 7
IScriptingManager77 
scriptingManager77 .
,77. /
IClock88 
clock88 
,88 
IDistributedCache99 
distributedCache99 .
,99. /#
IDataProtectionProvider:: #"
dataProtectionProvider::$ :
,::: ;
IEnumerable;; 
<;; &
IExternalLoginEventHandler;; 2
>;;2 3!
externalLoginHandlers;;4 I
);;I J
{<< 	
_signInManager== 
=== 
signInManager== *
;==* +
_userManager>> 
=>> 
userManager>> &
;>>& '
_userService?? 
=?? 
userService?? &
;??& '
_logger@@ 
=@@ 
logger@@ 
;@@ 
_siteServiceAA 
=AA 
siteServiceAA &
;AA& '
_accountEventsBB 
=BB 
accountEventsBB *
;BB* +
_scriptingManagerCC 
=CC 
scriptingManagerCC  0
;CC0 1
_clockDD 
=DD 
clockDD 
;DD 
_distributedCacheEE 
=EE 
distributedCacheEE  0
;EE0 1#
_dataProtectionProviderFF #
=FF$ %"
dataProtectionProviderFF& <
;FF< ="
_externalLoginHandlersGG "
=GG# $!
externalLoginHandlersGG% :
;GG: ;
SHH 
=HH 
stringLocalizerHH 
;HH  
}II 	
[KK 	
HttpGetKK	 
]KK 
[LL 	
AllowAnonymousLL	 
]LL 
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
LoginMM) .
(MM. /
stringMM/ 5
	returnUrlMM6 ?
=MM@ A
nullMMB F
)MMF G
{NN 	
ifOO 
(OO 
HttpContextOO 
.OO 
UserOO  
!=OO! #
nullOO$ (
&&OO) +
HttpContextOO, 7
.OO7 8
UserOO8 <
.OO< =
IdentityOO= E
.OOE F
IsAuthenticatedOOF U
)OOU V
{PP 
	returnUrlQQ 
=QQ 
nullQQ  
;QQ  !
}RR 
awaitUU 
HttpContextUU 
.UU 
SignOutAsyncUU *
(UU* +
IdentityConstantsUU+ <
.UU< =
ExternalSchemeUU= K
)UUK L
;UUL M
varWW 
loginSettingsWW 
=WW 
(WW  !
awaitWW! &
_siteServiceWW' 3
.WW3 4 
GetSiteSettingsAsyncWW4 H
(WWH I
)WWI J
)WWJ K
.WWK L
AsWWL N
<WWN O
LoginSettingsWWO \
>WW\ ]
(WW] ^
)WW^ _
;WW_ `
ifXX 
(XX 
loginSettingsXX 
.XX /
#UseExternalProviderIfOnlyOneDefinedXX A
)XXA B
{YY 
varZZ 
schemesZZ 
=ZZ 
awaitZZ #
_signInManagerZZ$ 2
.ZZ2 31
%GetExternalAuthenticationSchemesAsyncZZ3 X
(ZZX Y
)ZZY Z
;ZZZ [
if[[ 
([[ 
schemes[[ 
.[[ 
Count[[ !
([[! "
)[[" #
==[[$ &
$num[[' (
)[[( )
{\\ 
var]] 
provider]]  
=]]! "
schemes]]# *
.]]* +
First]]+ 0
(]]0 1
)]]1 2
.]]2 3
Name]]3 7
;]]7 8
var__ 
dataProtector__ %
=__& '#
_dataProtectionProvider__( ?
.__? @
CreateProtector__@ O
(__O P
nameof__P V
(__V W 
DefaultExternalLogin__W k
)__k l
)__l m
.``, -&
ToTimeLimitedDataProtector``- G
(``G H
)``H I
;``I J
varbb 
tokenbb 
=bb 
Guidbb  $
.bb$ %
NewGuidbb% ,
(bb, -
)bb- .
;bb. /
varcc 

expirationcc "
=cc# $
newcc% (
TimeSpancc) 1
(cc1 2
$numcc2 3
,cc3 4
$numcc5 6
,cc6 7
$numcc8 9
)cc9 :
;cc: ;
vardd 
protectedTokendd &
=dd' (
dataProtectordd) 6
.dd6 7
Protectdd7 >
(dd> ?
tokendd? D
.ddD E
ToStringddE M
(ddM N
)ddN O
,ddO P
_clockddQ W
.ddW X
UtcNowddX ^
.dd^ _
Adddd_ b
(ddb c

expirationddc m
)ddm n
)ddn o
;ddo p
awaitee 
_distributedCacheee +
.ee+ ,
SetAsyncee, 4
(ee4 5
tokenee5 :
.ee: ;
ToStringee; C
(eeC D
)eeD E
,eeE F
tokeneeG L
.eeL M
ToByteArrayeeM X
(eeX Y
)eeY Z
,eeZ [
newee\ _(
DistributedCacheEntryOptionsee` |
(ee| }
)ee} ~
{	ee А-
AbsoluteExpirationRelativeToNow
eeБ †
=
ee° Ґ

expiration
ee£ ≠
}
eeЃ ѓ
)
eeѓ ∞
;
ee∞ ±
returnff 
RedirectToActionff +
(ff+ ,
nameofff, 2
(ff2 3 
DefaultExternalLoginff3 G
)ffG H
,ffH I
newffJ M
{ffN O
protectedTokenffP ^
,ff^ _
	returnUrlff` i
}ffj k
)ffk l
;ffl m
}gg 
}hh 
foreachjj 
(jj 
varjj 
errorMessagejj %
injj& (
TempDatajj) 1
.jj1 2
Wherejj2 7
(jj7 8
xjj8 9
=>jj: <
xjj= >
.jj> ?
Keyjj? B
.jjB C

StartsWithjjC M
(jjM N
$strjjN U
)jjU V
)jjV W
.jjW X
SelectjjX ^
(jj^ _
xjj_ `
=>jja c
xjjd e
.jje f
Valuejjf k
.jjk l
ToStringjjl t
(jjt u
)jju v
)jjv w
)jjw x
{kk 

ModelStatell 
.ll 
AddModelErrorll (
(ll( )
stringll) /
.ll/ 0
Emptyll0 5
,ll5 6
errorMessagell7 C
)llC D
;llD E
}mm 
ViewDatann 
[nn 
$strnn  
]nn  !
=nn" #
	returnUrlnn$ -
;nn- .
returnoo 
Viewoo 
(oo 
)oo 
;oo 
}pp 	
[rr 	
HttpGetrr	 
]rr 
[ss 	
AllowAnonymousss	 
]ss 
publictt 
asynctt 
Tasktt 
<tt 
IActionResulttt '
>tt' ( 
DefaultExternalLogintt) =
(tt= >
stringtt> D
protectedTokenttE S
,ttS T
stringttU [
	returnUrltt\ e
=ttf g
nulltth l
)ttl m
{uu 	
varvv 
loginSettingsvv 
=vv 
(vv  !
awaitvv! &
_siteServicevv' 3
.vv3 4 
GetSiteSettingsAsyncvv4 H
(vvH I
)vvI J
)vvJ K
.vvK L
AsvvL N
<vvN O
LoginSettingsvvO \
>vv\ ]
(vv] ^
)vv^ _
;vv_ `
ifww 
(ww 
loginSettingsww 
.ww /
#UseExternalProviderIfOnlyOneDefinedww A
)wwA B
{xx 
varyy 
schemesyy 
=yy 
awaityy #
_signInManageryy$ 2
.yy2 31
%GetExternalAuthenticationSchemesAsyncyy3 X
(yyX Y
)yyY Z
;yyZ [
ifzz 
(zz 
schemeszz 
.zz 
Countzz !
(zz! "
)zz" #
==zz$ &
$numzz' (
)zz( )
{{{ 
var|| 
dataProtector|| %
=||& '#
_dataProtectionProvider||( ?
.||? @
CreateProtector||@ O
(||O P
nameof||P V
(||V W 
DefaultExternalLogin||W k
)||k l
)||l m
.}}, -&
ToTimeLimitedDataProtector}}- G
(}}G H
)}}H I
;}}I J
try~~ 
{ 
Guid
АА 
token
АА "
;
АА" #
if
ББ 
(
ББ 
Guid
ББ  
.
ББ  !
TryParse
ББ! )
(
ББ) *
dataProtector
ББ* 7
.
ББ7 8
	Unprotect
ББ8 A
(
ББA B
protectedToken
ББB P
)
ББP Q
,
ББQ R
out
ББS V
token
ББW \
)
ББ\ ]
)
ББ] ^
{
ВВ 
byte
ГГ  
[
ГГ  !
]
ГГ! "

tokenBytes
ГГ# -
=
ГГ. /
await
ГГ0 5
_distributedCache
ГГ6 G
.
ГГG H
GetAsync
ГГH P
(
ГГP Q
token
ГГQ V
.
ГГV W
ToString
ГГW _
(
ГГ_ `
)
ГГ` a
)
ГГa b
;
ГГb c
var
ДД 

cacheToken
ДД  *
=
ДД+ ,
new
ДД- 0
Guid
ДД1 5
(
ДД5 6

tokenBytes
ДД6 @
)
ДД@ A
;
ДДA B
if
ЕЕ 
(
ЕЕ  
token
ЕЕ  %
.
ЕЕ% &
Equals
ЕЕ& ,
(
ЕЕ, -

cacheToken
ЕЕ- 7
)
ЕЕ7 8
)
ЕЕ8 9
{
ЖЖ 
return
ЗЗ  &
ExternalLogin
ЗЗ' 4
(
ЗЗ4 5
schemes
ЗЗ5 <
.
ЗЗ< =
First
ЗЗ= B
(
ЗЗB C
)
ЗЗC D
.
ЗЗD E
Name
ЗЗE I
,
ЗЗI J
	returnUrl
ЗЗK T
)
ЗЗT U
;
ЗЗU V
}
ИИ 
}
ЙЙ 
}
КК 
catch
ЛЛ 
(
ЛЛ 
	Exception
ЛЛ $
ex
ЛЛ% '
)
ЛЛ' (
{
ММ 
_logger
НН 
.
НН  
LogError
НН  (
(
НН( )
ex
НН) +
,
НН+ ,
$str
НН- l
)
ННl m
;
ННm n
}
ОО 
}
ПП 
}
РР 
return
СС 
RedirectToAction
СС #
(
СС# $
nameof
СС$ *
(
СС* +
Login
СС+ 0
)
СС0 1
)
СС1 2
;
СС2 3
}
ТТ 	
private
ФФ 
async
ФФ 
Task
ФФ 
<
ФФ 
bool
ФФ 
>
ФФ  "
AddConfirmEmailError
ФФ! 5
(
ФФ5 6
IUser
ФФ6 ;
user
ФФ< @
)
ФФ@ A
{
ХХ 	
var
ЦЦ "
registrationSettings
ЦЦ $
=
ЦЦ% &
(
ЦЦ' (
await
ЦЦ( -
_siteService
ЦЦ. :
.
ЦЦ: ;"
GetSiteSettingsAsync
ЦЦ; O
(
ЦЦO P
)
ЦЦP Q
)
ЦЦQ R
.
ЦЦR S
As
ЦЦS U
<
ЦЦU V"
RegistrationSettings
ЦЦV j
>
ЦЦj k
(
ЦЦk l
)
ЦЦl m
;
ЦЦm n
if
ЧЧ 
(
ЧЧ "
registrationSettings
ЧЧ $
.
ЧЧ$ %$
UsersMustValidateEmail
ЧЧ% ;
==
ЧЧ< >
true
ЧЧ? C
)
ЧЧC D
{
ШШ 
if
ЪЪ 
(
ЪЪ 
!
ЪЪ 
await
ЪЪ 
_userManager
ЪЪ '
.
ЪЪ' (#
IsEmailConfirmedAsync
ЪЪ( =
(
ЪЪ= >
user
ЪЪ> B
)
ЪЪB C
)
ЪЪC D
{
ЫЫ 

ModelState
ЬЬ 
.
ЬЬ 
AddModelError
ЬЬ ,
(
ЬЬ, -
string
ЬЬ- 3
.
ЬЬ3 4
Empty
ЬЬ4 9
,
ЬЬ9 :
S
ЬЬ; <
[
ЬЬ< =
$str
ЬЬ= [
]
ЬЬ[ \
)
ЬЬ\ ]
;
ЬЬ] ^
return
ЭЭ 
true
ЭЭ 
;
ЭЭ  
}
ЮЮ 
}
ЯЯ 
return
°° 
false
°° 
;
°° 
}
ҐҐ 	
private
§§ 
bool
§§ !
AddUserEnabledError
§§ (
(
§§( )
IUser
§§) .
user
§§/ 3
)
§§3 4
{
•• 	
var
¶¶ 
	localUser
¶¶ 
=
¶¶ 
user
¶¶  
as
¶¶! #
User
¶¶$ (
;
¶¶( )
if
®® 
(
®® 
	localUser
®® 
==
®® 
null
®® !
||
®®" $
!
®®% &
	localUser
®®& /
.
®®/ 0
	IsEnabled
®®0 9
)
®®9 :
{
©© 

ModelState
™™ 
.
™™ 
AddModelError
™™ (
(
™™( )
String
™™) /
.
™™/ 0
Empty
™™0 5
,
™™5 6
S
™™7 8
[
™™8 9
$str
™™9 h
]
™™h i
)
™™i j
;
™™j k
return
ЂЂ 
true
ЂЂ 
;
ЂЂ 
}
ђђ 
return
ЃЃ 
false
ЃЃ 
;
ЃЃ 
}
ѓѓ 	
[
±± 	
HttpPost
±±	 
]
±± 
[
≤≤ 	
AllowAnonymous
≤≤	 
]
≤≤ 
[
≥≥ 	&
ValidateAntiForgeryToken
≥≥	 !
]
≥≥! "
public
іі 
async
іі 
Task
іі 
<
іі 
IActionResult
іі '
>
іі' (
Login
іі) .
(
іі. /
LoginViewModel
іі/ =
model
іі> C
,
ііC D
string
ііE K
	returnUrl
ііL U
=
ііV W
null
ііX \
)
іі\ ]
{
µµ 	
ViewData
ґґ 
[
ґґ 
$str
ґґ  
]
ґґ  !
=
ґґ" #
	returnUrl
ґґ$ -
;
ґґ- .
if
ЄЄ 
(
ЄЄ 
model
ЄЄ 
==
ЄЄ 
null
ЄЄ 
)
ЄЄ 
throw
єє 
new
єє #
ArgumentNullException
єє /
(
єє/ 0
nameof
єє0 6
(
єє6 7
model
єє7 <
)
єє< =
)
єє= >
;
єє> ?
if
її 
(
її 
TryValidateModel
її  
(
її  !
model
її! &
)
її& '
&&
її( *

ModelState
її+ 5
.
її5 6
IsValid
її6 =
)
її= >
{
ЉЉ 
var
љљ 
disableLocalLogin
љљ %
=
љљ& '
(
љљ( )
await
љљ) .
_siteService
љљ/ ;
.
љљ; <"
GetSiteSettingsAsync
љљ< P
(
љљP Q
)
љљQ R
)
љљR S
.
љљS T
As
љљT V
<
љљV W
LoginSettings
љљW d
>
љљd e
(
љљe f
)
љљf g
.
љљg h
DisableLocalLogin
љљh y
;
љљy z
if
ЊЊ 
(
ЊЊ 
disableLocalLogin
ЊЊ %
)
ЊЊ% &
{
њњ 

ModelState
јј 
.
јј 
AddModelError
јј ,
(
јј, -
$str
јј- /
,
јј/ 0
S
јј1 2
[
јј2 3
$str
јј3 M
]
јјM N
)
јјN O
;
јјO P
}
ЅЅ 
else
¬¬ 
{
√√ 
await
ƒƒ 
_accountEvents
ƒƒ (
.
ƒƒ( )
InvokeAsync
ƒƒ) 4
(
ƒƒ4 5
(
ƒƒ5 6
e
ƒƒ6 7
,
ƒƒ7 8
model
ƒƒ9 >
,
ƒƒ> ?

modelState
ƒƒ@ J
)
ƒƒJ K
=>
ƒƒL N
e
ƒƒO P
.
ƒƒP Q
LoggingInAsync
ƒƒQ _
(
ƒƒ_ `
model
ƒƒ` e
.
ƒƒe f
UserName
ƒƒf n
,
ƒƒn o
(
ƒƒp q
key
ƒƒq t
,
ƒƒt u
message
ƒƒv }
)
ƒƒ} ~
=>ƒƒ Б

modelStateƒƒВ М
.ƒƒМ Н
AddModelErrorƒƒН Ъ
(ƒƒЪ Ы
keyƒƒЫ Ю
,ƒƒЮ Я
messageƒƒ† І
)ƒƒІ ®
)ƒƒ® ©
,ƒƒ© ™
modelƒƒЂ ∞
,ƒƒ∞ ±

ModelStateƒƒ≤ Љ
,ƒƒЉ љ
_loggerƒƒЊ ≈
)ƒƒ≈ ∆
;ƒƒ∆ «
var
≈≈ 
user
≈≈ 
=
≈≈ 
await
≈≈ $
_userManager
≈≈% 1
.
≈≈1 2
FindByNameAsync
≈≈2 A
(
≈≈A B
model
≈≈B G
.
≈≈G H
UserName
≈≈H P
)
≈≈P Q
??
≈≈R T
await
≈≈U Z
_userManager
≈≈[ g
.
≈≈g h
FindByEmailAsync
≈≈h x
(
≈≈x y
model
≈≈y ~
.
≈≈~ 
UserName≈≈ З
)≈≈З И
;≈≈И Й
if
»» 
(
»» 
user
»» 
!=
»» 
null
»»  $
)
»»$ %
{
…… 
var
   
result
   "
=
  # $
await
  % *
_signInManager
  + 9
.
  9 :&
CheckPasswordSignInAsync
  : R
(
  R S
user
  S W
,
  W X
model
  Y ^
.
  ^ _
Password
  _ g
,
  g h
lockoutOnFailure
  i y
:
  y z
false  { А
)  А Б
;  Б В
if
ЋЋ 
(
ЋЋ 
result
ЋЋ "
.
ЋЋ" #
	Succeeded
ЋЋ# ,
)
ЋЋ, -
{
ћћ 
if
ЌЌ 
(
ЌЌ  
!
ЌЌ  !
await
ЌЌ! &"
AddConfirmEmailError
ЌЌ' ;
(
ЌЌ; <
user
ЌЌ< @
)
ЌЌ@ A
&&
ЌЌB D
!
ЌЌE F!
AddUserEnabledError
ЌЌF Y
(
ЌЌY Z
user
ЌЌZ ^
)
ЌЌ^ _
)
ЌЌ_ `
{
ќќ 
result
ѕѕ  &
=
ѕѕ' (
await
ѕѕ) .
_signInManager
ѕѕ/ =
.
ѕѕ= >!
PasswordSignInAsync
ѕѕ> Q
(
ѕѕQ R
user
ѕѕR V
,
ѕѕV W
model
ѕѕX ]
.
ѕѕ] ^
Password
ѕѕ^ f
,
ѕѕf g
model
ѕѕh m
.
ѕѕm n

RememberMe
ѕѕn x
,
ѕѕx y
lockoutOnFailureѕѕz К
:ѕѕК Л
falseѕѕМ С
)ѕѕС Т
;ѕѕТ У
if
——  "
(
——# $
result
——$ *
.
——* +
	Succeeded
——+ 4
)
——4 5
{
““  !
_logger
””$ +
.
””+ ,
LogInformation
””, :
(
””: ;
$num
””; <
,
””< =
$str
””> O
)
””O P
;
””P Q
await
‘‘$ )
_accountEvents
‘‘* 8
.
‘‘8 9
InvokeAsync
‘‘9 D
(
‘‘D E
(
‘‘E F
e
‘‘F G
,
‘‘G H
model
‘‘I N
)
‘‘N O
=>
‘‘P R
e
‘‘S T
.
‘‘T U
LoggedInAsync
‘‘U b
(
‘‘b c
model
‘‘c h
.
‘‘h i
UserName
‘‘i q
)
‘‘q r
,
‘‘r s
model
‘‘t y
,
‘‘y z
_logger‘‘{ В
)‘‘В Г
;‘‘Г Д
return
’’$ *
await
’’+ 0"
LoggedInActionResult
’’1 E
(
’’E F
user
’’F J
,
’’J K
	returnUrl
’’L U
)
’’U V
;
’’V W
}
÷÷  !
}
„„ 
}
ЎЎ 
}
ўў 

ModelState
џџ 
.
џџ 
AddModelError
џџ ,
(
џџ, -
string
џџ- 3
.
џџ3 4
Empty
џџ4 9
,
џџ9 :
S
џџ; <
[
џџ< =
$str
џџ= U
]
џџU V
)
џџV W
;
џџW X
await
ЁЁ 
_accountEvents
ЁЁ (
.
ЁЁ( )
InvokeAsync
ЁЁ) 4
(
ЁЁ4 5
(
ЁЁ5 6
e
ЁЁ6 7
,
ЁЁ7 8
model
ЁЁ9 >
)
ЁЁ> ?
=>
ЁЁ@ B
e
ЁЁC D
.
ЁЁD E"
LoggingInFailedAsync
ЁЁE Y
(
ЁЁY Z
model
ЁЁZ _
.
ЁЁ_ `
UserName
ЁЁ` h
)
ЁЁh i
,
ЁЁi j
model
ЁЁk p
,
ЁЁp q
_logger
ЁЁr y
)
ЁЁy z
;
ЁЁz {
}
ёё 
}
яя 
return
бб 
View
бб 
(
бб 
model
бб 
)
бб 
;
бб 
}
вв 	
[
дд 	
HttpPost
дд	 
]
дд 
[
ее 	&
ValidateAntiForgeryToken
ее	 !
]
ее! "
public
жж 
async
жж 
Task
жж 
<
жж 
IActionResult
жж '
>
жж' (
LogOff
жж) /
(
жж/ 0
)
жж0 1
{
зз 	
await
ии 
_signInManager
ии  
.
ии  !
SignOutAsync
ии! -
(
ии- .
)
ии. /
;
ии/ 0
_logger
йй 
.
йй 
LogInformation
йй "
(
йй" #
$num
йй# $
,
йй$ %
$str
йй& 8
)
йй8 9
;
йй9 :
return
лл 
Redirect
лл 
(
лл 
$str
лл  
)
лл  !
;
лл! "
}
мм 	
[
оо 	
HttpGet
оо	 
]
оо 
public
пп 
IActionResult
пп 
ChangePassword
пп +
(
пп+ ,
)
пп, -
{
рр 	
return
сс 
View
сс 
(
сс 
)
сс 
;
сс 
}
тт 	
[
фф 	
HttpPost
фф	 
]
фф 
[
хх 	&
ValidateAntiForgeryToken
хх	 !
]
хх! "
public
цц 
async
цц 
Task
цц 
<
цц 
IActionResult
цц '
>
цц' (
ChangePassword
цц) 7
(
цц7 8%
ChangePasswordViewModel
цц8 O
model
ццP U
)
ццU V
{
чч 	
if
шш 
(
шш 
TryValidateModel
шш  
(
шш  !
model
шш! &
)
шш& '
&&
шш( *

ModelState
шш+ 5
.
шш5 6
IsValid
шш6 =
)
шш= >
{
щщ 
var
ъъ 
user
ъъ 
=
ъъ 
await
ъъ  
_userService
ъъ! -
.
ъъ- .'
GetAuthenticatedUserAsync
ъъ. G
(
ъъG H
User
ъъH L
)
ъъL M
;
ъъM N
if
ыы 
(
ыы 
await
ыы 
_userService
ыы &
.
ыы& '!
ChangePasswordAsync
ыы' :
(
ыы: ;
user
ыы; ?
,
ыы? @
model
ыыA F
.
ыыF G
CurrentPassword
ыыG V
,
ыыV W
model
ыыX ]
.
ыы] ^
Password
ыы^ f
,
ыыf g
(
ыыh i
key
ыыi l
,
ыыl m
message
ыыn u
)
ыыu v
=>
ыыw y

ModelStateыыz Д
.ыыД Е
AddModelErrorыыЕ Т
(ыыТ У
keyыыУ Ц
,ыыЦ Ч
messageыыШ Я
)ыыЯ †
)ыы† °
)ыы° Ґ
{
ьь 
return
ээ 
RedirectToLocal
ээ *
(
ээ* +
Url
ээ+ .
.
ээ. /
Action
ээ/ 5
(
ээ5 6
$str
ээ6 R
)
ээR S
)
ээS T
;
ээT U
}
юю 
}
€€ 
return
ББ 
View
ББ 
(
ББ 
model
ББ 
)
ББ 
;
ББ 
}
ВВ 	
[
ДД 	
HttpGet
ДД	 
]
ДД 
public
ЕЕ 
IActionResult
ЕЕ (
ChangePasswordConfirmation
ЕЕ 7
(
ЕЕ7 8
)
ЕЕ8 9
{
ЖЖ 	
return
ЗЗ 
View
ЗЗ 
(
ЗЗ 
)
ЗЗ 
;
ЗЗ 
}
ИИ 	
private
КК 
void
КК 
AddIdentityErrors
КК &
(
КК& '
IdentityResult
КК' 5
result
КК6 <
)
КК< =
{
ЛЛ 	
foreach
ММ 
(
ММ 
var
ММ 
error
ММ 
in
ММ !
result
ММ" (
.
ММ( )
Errors
ММ) /
)
ММ/ 0
{
НН 

ModelState
ОО 
.
ОО 
AddModelError
ОО (
(
ОО( )
string
ОО) /
.
ОО/ 0
Empty
ОО0 5
,
ОО5 6
error
ОО7 <
.
ОО< =
Description
ОО= H
)
ООH I
;
ООI J
}
ПП 
}
РР 	
private
ТТ 
IActionResult
ТТ 
RedirectToLocal
ТТ -
(
ТТ- .
string
ТТ. 4
	returnUrl
ТТ5 >
)
ТТ> ?
{
УУ 	
if
ФФ 
(
ФФ 
Url
ФФ 
.
ФФ 

IsLocalUrl
ФФ 
(
ФФ 
	returnUrl
ФФ (
)
ФФ( )
)
ФФ) *
{
ХХ 
return
ЦЦ 
Redirect
ЦЦ 
(
ЦЦ  
	returnUrl
ЦЦ  )
)
ЦЦ) *
;
ЦЦ* +
}
ЧЧ 
else
ШШ 
{
ЩЩ 
return
ЪЪ 
Redirect
ЪЪ 
(
ЪЪ  
$str
ЪЪ  $
)
ЪЪ$ %
;
ЪЪ% &
}
ЫЫ 
}
ЬЬ 	
private
ЮЮ 
async
ЮЮ 
Task
ЮЮ 
<
ЮЮ 
IActionResult
ЮЮ (
>
ЮЮ( )"
LoggedInActionResult
ЮЮ* >
(
ЮЮ> ?
IUser
ЮЮ? D
user
ЮЮE I
,
ЮЮI J
string
ЮЮK Q
	returnUrl
ЮЮR [
=
ЮЮ\ ]
null
ЮЮ^ b
,
ЮЮb c
ExternalLoginInfo
ЮЮd u
info
ЮЮv z
=
ЮЮ{ |
nullЮЮ} Б
)ЮЮБ В
{
ЯЯ 	
var
†† 
workflowManager
†† 
=
††  !
HttpContext
††" -
.
††- .
RequestServices
††. =
.
††= >

GetService
††> H
<
††H I
IWorkflowManager
††I Y
>
††Y Z
(
††Z [
)
††[ \
;
††\ ]
if
°° 
(
°° 
workflowManager
°° 
!=
°°  "
null
°°# '
)
°°' (
{
ҐҐ 
var
££ 
input
££ 
=
££ 
new
££ 

Dictionary
££  *
<
££* +
string
££+ 1
,
££1 2
object
££3 9
>
££9 :
(
££: ;
)
££; <
;
££< =
input
§§ 
[
§§ 
$str
§§  
]
§§  !
=
§§" #
user
§§$ (
.
§§( )
UserName
§§) 1
;
§§1 2
input
•• 
[
•• 
$str
•• &
]
••& '
=
••( )
info
••* .
==
••/ 1
null
••2 6
?
••7 8

Enumerable
••9 C
.
••C D
Empty
••D I
<
••I J
SerializableClaim
••J [
>
••[ \
(
••\ ]
)
••] ^
:
••_ `
info
••a e
.
••e f
	Principal
••f o
.
••o p$
GetSerializableClaims••p Е
(••Е Ж
)••Ж З
;••З И
input
¶¶ 
[
¶¶ 
$str
¶¶ 
]
¶¶ 
=
¶¶  
(
¶¶! "
(
¶¶" #
User
¶¶# '
)
¶¶' (
user
¶¶( ,
)
¶¶, -
.
¶¶- .
	RoleNames
¶¶. 7
;
¶¶7 8
input
ІІ 
[
ІІ 
$str
ІІ  
]
ІІ  !
=
ІІ" #
info
ІІ$ (
?
ІІ( )
.
ІІ) *
LoginProvider
ІІ* 7
;
ІІ7 8
await
®® 
workflowManager
®® %
.
®®% &
TriggerEventAsync
®®& 7
(
®®7 8
nameof
®®8 >
(
®®> ?
	Workflows
®®? H
.
®®H I

Activities
®®I S
.
®®S T
UserLoggedInEvent
®®T e
)
®®e f
,
®®f g
input
©© 
:
©© 
input
©©  
,
©©  !
correlationId
©©" /
:
©©/ 0
(
©©1 2
(
©©2 3
User
©©3 7
)
©©7 8
user
©©8 <
)
©©< =
.
©©= >
UserId
©©> D
)
©©D E
;
©©E F
}
™™ 
return
ђђ 
RedirectToLocal
ђђ "
(
ђђ" #
	returnUrl
ђђ# ,
)
ђђ, -
;
ђђ- .
}
≠≠ 	
[
ѓѓ 	
HttpPost
ѓѓ	 
]
ѓѓ 
[
∞∞ 	
AllowAnonymous
∞∞	 
]
∞∞ 
[
±± 	&
ValidateAntiForgeryToken
±±	 !
]
±±! "
public
≤≤ 
IActionResult
≤≤ 
ExternalLogin
≤≤ *
(
≤≤* +
string
≤≤+ 1
provider
≤≤2 :
,
≤≤: ;
string
≤≤< B
	returnUrl
≤≤C L
=
≤≤M N
null
≤≤O S
)
≤≤S T
{
≥≥ 	
var
µµ 
redirectUrl
µµ 
=
µµ 
Url
µµ !
.
µµ! "
Action
µµ" (
(
µµ( )
nameof
µµ) /
(
µµ/ 0#
ExternalLoginCallback
µµ0 E
)
µµE F
,
µµF G
$str
µµH Q
,
µµQ R
new
µµS V
{
µµW X
	returnUrl
µµY b
}
µµc d
)
µµd e
;
µµe f
var
ґґ 

properties
ґґ 
=
ґґ 
_signInManager
ґґ +
.
ґґ+ ,7
)ConfigureExternalAuthenticationProperties
ґґ, U
(
ґґU V
provider
ґґV ^
,
ґґ^ _
redirectUrl
ґґ` k
)
ґґk l
;
ґґl m
return
ЈЈ 
	Challenge
ЈЈ 
(
ЈЈ 

properties
ЈЈ '
,
ЈЈ' (
provider
ЈЈ) 1
)
ЈЈ1 2
;
ЈЈ2 3
}
ЄЄ 	
private
ЇЇ 
async
ЇЇ 
Task
ЇЇ 
<
ЇЇ 
SignInResult
ЇЇ '
>
ЇЇ' (&
ExternalLoginSignInAsync
ЇЇ) A
(
ЇЇA B
IUser
ЇЇB G
user
ЇЇH L
,
ЇЇL M
ExternalLoginInfo
ЇЇN _
info
ЇЇ` d
)
ЇЇd e
{
її 	
var
ЉЉ 
claims
ЉЉ 
=
ЉЉ 
info
ЉЉ 
.
ЉЉ 
	Principal
ЉЉ '
.
ЉЉ' (#
GetSerializableClaims
ЉЉ( =
(
ЉЉ= >
)
ЉЉ> ?
;
ЉЉ? @
var
љљ 
	userRoles
љљ 
=
љљ 
await
љљ !
_userManager
љљ" .
.
љљ. /
GetRolesAsync
љљ/ <
(
љљ< =
user
љљ= A
)
љљA B
;
љљB C
var
ЊЊ 
context
ЊЊ 
=
ЊЊ 
new
ЊЊ  
UpdateRolesContext
ЊЊ 0
(
ЊЊ0 1
user
ЊЊ1 5
,
ЊЊ5 6
info
ЊЊ7 ;
.
ЊЊ; <
LoginProvider
ЊЊ< I
,
ЊЊI J
claims
ЊЊK Q
,
ЊЊQ R
	userRoles
ЊЊS \
)
ЊЊ\ ]
;
ЊЊ] ^
string
јј 
[
јј 
]
јј 

rolesToAdd
јј 
=
јј  !
new
јј" %
string
јј& ,
[
јј, -
$num
јј- .
]
јј. /
;
јј/ 0
string
ЅЅ 
[
ЅЅ 
]
ЅЅ 
rolesToRemove
ЅЅ "
=
ЅЅ# $
new
ЅЅ% (
string
ЅЅ) /
[
ЅЅ/ 0
$num
ЅЅ0 1
]
ЅЅ1 2
;
ЅЅ2 3
var
√√ 
loginSettings
√√ 
=
√√ 
(
√√  !
await
√√! &
_siteService
√√' 3
.
√√3 4"
GetSiteSettingsAsync
√√4 H
(
√√H I
)
√√I J
)
√√J K
.
√√K L
As
√√L N
<
√√N O
LoginSettings
√√O \
>
√√\ ]
(
√√] ^
)
√√^ _
;
√√_ `
if
ƒƒ 
(
ƒƒ 
loginSettings
ƒƒ 
.
ƒƒ "
UseScriptToSyncRoles
ƒƒ 2
)
ƒƒ2 3
{
≈≈ 
try
∆∆ 
{
«« 
var
»» $
jsonSerializerSettings
»» .
=
»»/ 0
new
»»1 4$
JsonSerializerSettings
»»5 K
(
»»K L
)
»»L M
{
…… 
ContractResolver
   (
=
  ) *
new
  + .4
&CamelCasePropertyNamesContractResolver
  / U
(
  U V
)
  V W
}
ЋЋ 
;
ЋЋ 
var
ћћ 
script
ћћ 
=
ћћ  
$"
ћћ! #2
$js: function syncRoles(context) {{\n
ћћ# G
{
ћћG H
loginSettings
ћћH U
.
ћћU V
SyncRolesScript
ћћV e
}
ћћe f 
\n}}\nvar context=
ћћf x
{
ћћx y
JsonConvertћћy Д
.ћћД Е
SerializeObjectћћЕ Ф
(ћћФ Х
contextћћХ Ь
,ћћЬ Э&
jsonSerializerSettingsћћЮ і
)ћћі µ
}ћћµ ґ7
';\nsyncRoles(context);\nreturn context;ћћґ Ё
"ћћЁ ё
;ћћё я
dynamic
ЌЌ 
evaluationResult
ЌЌ ,
=
ЌЌ- .
_scriptingManager
ЌЌ/ @
.
ЌЌ@ A
Evaluate
ЌЌA I
(
ЌЌI J
script
ЌЌJ P
,
ЌЌP Q
null
ЌЌR V
,
ЌЌV W
null
ЌЌX \
,
ЌЌ\ ]
null
ЌЌ^ b
)
ЌЌb c
;
ЌЌc d

rolesToAdd
ќќ 
=
ќќ  
(
ќќ! "
evaluationResult
ќќ" 2
.
ќќ2 3

rolesToAdd
ќќ3 =
as
ќќ> @
object
ќќA G
[
ќќG H
]
ќќH I
)
ќќI J
.
ќќJ K
Select
ќќK Q
(
ќќQ R
i
ќќR S
=>
ќќT V
i
ќќW X
.
ќќX Y
ToString
ќќY a
(
ќќa b
)
ќќb c
)
ќќc d
.
ќќd e
ToArray
ќќe l
(
ќќl m
)
ќќm n
;
ќќn o
rolesToRemove
ѕѕ !
=
ѕѕ" #
(
ѕѕ$ %
evaluationResult
ѕѕ% 5
.
ѕѕ5 6
rolesToRemove
ѕѕ6 C
as
ѕѕD F
object
ѕѕG M
[
ѕѕM N
]
ѕѕN O
)
ѕѕO P
.
ѕѕP Q
Select
ѕѕQ W
(
ѕѕW X
i
ѕѕX Y
=>
ѕѕZ \
i
ѕѕ] ^
.
ѕѕ^ _
ToString
ѕѕ_ g
(
ѕѕg h
)
ѕѕh i
)
ѕѕi j
.
ѕѕj k
ToArray
ѕѕk r
(
ѕѕr s
)
ѕѕs t
;
ѕѕt u
}
–– 
catch
—— 
(
—— 
	Exception
——  
ex
——! #
)
——# $
{
““ 
_logger
”” 
.
”” 
LogError
”” $
(
””$ %
ex
””% '
,
””' (
$str
””) Y
,
””Y Z
info
””[ _
.
””_ `
LoginProvider
””` m
)
””m n
;
””n o
}
‘‘ 
}
’’ 
else
÷÷ 
{
„„ 
foreach
ЎЎ 
(
ЎЎ 
var
ЎЎ 
item
ЎЎ !
in
ЎЎ" $$
_externalLoginHandlers
ЎЎ% ;
)
ЎЎ; <
{
ўў 
try
ЏЏ 
{
џџ 
await
№№ 
item
№№ "
.
№№" #
UpdateRoles
№№# .
(
№№. /
context
№№/ 6
)
№№6 7
;
№№7 8
}
ЁЁ 
catch
ёё 
(
ёё 
	Exception
ёё $
ex
ёё% '
)
ёё' (
{
яя 
_logger
аа 
.
аа  
LogError
аа  (
(
аа( )
ex
аа) +
,
аа+ ,
$str
аа- |
,
аа| }
itemаа~ В
.ааВ Г
GetTypeааГ К
(ааК Л
)ааЛ М
)ааМ Н
;ааН О
}
бб 
}
вв 

rolesToAdd
гг 
=
гг 
context
гг $
.
гг$ %

RolesToAdd
гг% /
;
гг/ 0
rolesToRemove
дд 
=
дд 
context
дд  '
.
дд' (
RolesToRemove
дд( 5
;
дд5 6
}
ее 
await
зз 
_userManager
зз 
.
зз 
AddToRolesAsync
зз .
(
зз. /
user
зз/ 3
,
зз3 4

rolesToAdd
зз5 ?
.
зз? @
Distinct
зз@ H
(
ззH I
)
ззI J
)
ззJ K
;
ззK L
await
ии 
_userManager
ии 
.
ии "
RemoveFromRolesAsync
ии 3
(
ии3 4
user
ии4 8
,
ии8 9
rolesToRemove
ии: G
.
ииG H
Distinct
ииH P
(
ииP Q
)
ииQ R
)
ииR S
;
ииS T
var
кк 
result
кк 
=
кк 
await
кк 
_signInManager
кк -
.
кк- .&
ExternalLoginSignInAsync
кк. F
(
ккF G
info
ккG K
.
ккK L
LoginProvider
ккL Y
,
ккY Z
info
кк[ _
.
кк_ `
ProviderKey
кк` k
,
ккk l
isPersistent
ккm y
:
ккy z
falseкк{ А
,ккА Б
bypassTwoFactorккВ С
:ккС Т
trueккУ Ч
)ккЧ Ш
;ккШ Щ
if
мм 
(
мм 
result
мм 
.
мм 
	Succeeded
мм  
)
мм  !
{
нн 
var
оо 
identityResult
оо "
=
оо# $
await
оо% *
_signInManager
оо+ 9
.
оо9 :5
'UpdateExternalAuthenticationTokensAsync
оо: a
(
ооa b
info
ооb f
)
ооf g
;
ооg h
if
пп 
(
пп 
!
пп 
identityResult
пп #
.
пп# $
	Succeeded
пп$ -
)
пп- .
{
рр 
_logger
сс 
.
сс 
LogError
сс $
(
сс$ %
$str
сс% Y
)
ссY Z
;
ссZ [
}
тт 
}
уу 
return
хх 
result
хх 
;
хх 
}
цц 	
[
шш 	
HttpGet
шш	 
]
шш 
[
щщ 	
AllowAnonymous
щщ	 
]
щщ 
public
ъъ 
async
ъъ 
Task
ъъ 
<
ъъ 
IActionResult
ъъ '
>
ъъ' (#
ExternalLoginCallback
ъъ) >
(
ъъ> ?
string
ъъ? E
	returnUrl
ъъF O
=
ъъP Q
null
ъъR V
,
ъъV W
string
ъъX ^
remoteError
ъъ_ j
=
ъъk l
null
ъъm q
)
ъъq r
{
ыы 	
if
ьь 
(
ьь 
remoteError
ьь 
!=
ьь 
null
ьь #
)
ьь# $
{
ээ 
_logger
юю 
.
юю 
LogError
юю  
(
юю  !
$str
юю! H
,
ююH I
remoteError
ююJ U
)
ююU V
;
ююV W

ModelState
€€ 
.
€€ 
AddModelError
€€ (
(
€€( )
$str
€€) +
,
€€+ ,
S
€€- .
[
€€. /
$str
€€/ X
]
€€X Y
)
€€Y Z
;
€€Z [
return
АА 
RedirectToLogin
АА &
(
АА& '
	returnUrl
АА' 0
)
АА0 1
;
АА1 2
}
ББ 
var
ГГ 
info
ГГ 
=
ГГ 
await
ГГ 
_signInManager
ГГ +
.
ГГ+ ,'
GetExternalLoginInfoAsync
ГГ, E
(
ГГE F
)
ГГF G
;
ГГG H
if
ДД 
(
ДД 
info
ДД 
==
ДД 
null
ДД 
)
ДД 
{
ЕЕ 
_logger
ЖЖ 
.
ЖЖ 
LogError
ЖЖ  
(
ЖЖ  !
$str
ЖЖ! E
)
ЖЖE F
;
ЖЖF G

ModelState
ЗЗ 
.
ЗЗ 
AddModelError
ЗЗ (
(
ЗЗ( )
$str
ЗЗ) +
,
ЗЗ+ ,
S
ЗЗ- .
[
ЗЗ. /
$str
ЗЗ/ X
]
ЗЗX Y
)
ЗЗY Z
;
ЗЗZ [
return
ИИ 
RedirectToLogin
ИИ &
(
ИИ& '
	returnUrl
ИИ' 0
)
ИИ0 1
;
ИИ1 2
}
ЙЙ 
var
ЛЛ "
registrationSettings
ЛЛ $
=
ЛЛ% &
(
ЛЛ' (
await
ЛЛ( -
_siteService
ЛЛ. :
.
ЛЛ: ;"
GetSiteSettingsAsync
ЛЛ; O
(
ЛЛO P
)
ЛЛP Q
)
ЛЛQ R
.
ЛЛR S
As
ЛЛS U
<
ЛЛU V"
RegistrationSettings
ЛЛV j
>
ЛЛj k
(
ЛЛk l
)
ЛЛl m
;
ЛЛm n
var
ММ 
user
ММ 
=
ММ 
await
ММ 
_userManager
ММ )
.
ММ) *
FindByLoginAsync
ММ* :
(
ММ: ;
info
ММ; ?
.
ММ? @
LoginProvider
ММ@ M
,
ММM N
info
ММO S
.
ММS T
ProviderKey
ММT _
)
ММ_ `
;
ММ` a
if
ОО 
(
ОО 
user
ОО 
!=
ОО 
null
ОО 
)
ОО 
{
ПП 
if
РР 
(
РР 
!
РР 
await
РР "
AddConfirmEmailError
РР /
(
РР/ 0
user
РР0 4
)
РР4 5
&&
РР6 8
!
РР9 :!
AddUserEnabledError
РР: M
(
РРM N
user
РРN R
)
РРR S
)
РРS T
{
СС 
await
ТТ 
_accountEvents
ТТ (
.
ТТ( )
InvokeAsync
ТТ) 4
(
ТТ4 5
(
ТТ5 6
e
ТТ6 7
,
ТТ7 8
user
ТТ9 =
,
ТТ= >

modelState
ТТ? I
)
ТТI J
=>
ТТK M
e
ТТN O
.
ТТO P
LoggingInAsync
ТТP ^
(
ТТ^ _
user
ТТ_ c
.
ТТc d
UserName
ТТd l
,
ТТl m
(
ТТn o
key
ТТo r
,
ТТr s
message
ТТt {
)
ТТ{ |
=>
ТТ} 

modelStateТТА К
.ТТК Л
AddModelErrorТТЛ Ш
(ТТШ Щ
keyТТЩ Ь
,ТТЬ Э
messageТТЮ •
)ТТ• ¶
)ТТ¶ І
,ТТІ ®
userТТ© ≠
,ТТ≠ Ѓ

ModelStateТТѓ є
,ТТє Ї
_loggerТТї ¬
)ТТ¬ √
;ТТ√ ƒ
var
ФФ 
signInResult
ФФ $
=
ФФ% &
await
ФФ' ,&
ExternalLoginSignInAsync
ФФ- E
(
ФФE F
user
ФФF J
,
ФФJ K
info
ФФL P
)
ФФP Q
;
ФФQ R
if
ХХ 
(
ХХ 
signInResult
ХХ $
.
ХХ$ %
	Succeeded
ХХ% .
)
ХХ. /
{
ЦЦ 
return
ЧЧ 
await
ЧЧ $"
LoggedInActionResult
ЧЧ% 9
(
ЧЧ9 :
user
ЧЧ: >
,
ЧЧ> ?
	returnUrl
ЧЧ@ I
,
ЧЧI J
info
ЧЧK O
)
ЧЧO P
;
ЧЧP Q
}
ШШ 
else
ЩЩ 
{
ЪЪ 

ModelState
ЫЫ "
.
ЫЫ" #
AddModelError
ЫЫ# 0
(
ЫЫ0 1
string
ЫЫ1 7
.
ЫЫ7 8
Empty
ЫЫ8 =
,
ЫЫ= >
S
ЫЫ? @
[
ЫЫ@ A
$str
ЫЫA Y
]
ЫЫY Z
)
ЫЫZ [
;
ЫЫ[ \
}
ЬЬ 
}
ЭЭ 
}
ЮЮ 
else
ЯЯ 
{
†† 
var
°° 
email
°° 
=
°° 
info
°°  
.
°°  !
	Principal
°°! *
.
°°* +
FindFirstValue
°°+ 9
(
°°9 :

ClaimTypes
°°: D
.
°°D E
Email
°°E J
)
°°J K
??
°°L N
info
°°O S
.
°°S T
	Principal
°°T ]
.
°°] ^
FindFirstValue
°°^ l
(
°°l m
$str
°°m t
)
°°t u
;
°°u v
if
££ 
(
££ 
!
££ 
string
££ 
.
££  
IsNullOrWhiteSpace
££ .
(
££. /
email
££/ 4
)
££4 5
)
££5 6
user
§§ 
=
§§ 
await
§§  
_userManager
§§! -
.
§§- .
FindByEmailAsync
§§. >
(
§§> ?
email
§§? D
)
§§D E
;
§§E F
ViewData
¶¶ 
[
¶¶ 
$str
¶¶ $
]
¶¶$ %
=
¶¶& '
	returnUrl
¶¶( 1
;
¶¶1 2
ViewData
ІІ 
[
ІІ 
$str
ІІ (
]
ІІ( )
=
ІІ* +
info
ІІ, 0
.
ІІ0 1
LoginProvider
ІІ1 >
;
ІІ> ?
if
©© 
(
©© 
user
©© 
!=
©© 
null
©©  
)
©©  !
{
™™ 
ViewData
ђђ 
[
ђђ 
$str
ђђ '
]
ђђ' (
=
ђђ) *
user
ђђ+ /
.
ђђ/ 0
UserName
ђђ0 8
;
ђђ8 9
ViewData
≠≠ 
[
≠≠ 
$str
≠≠ $
]
≠≠$ %
=
≠≠& '
email
≠≠( -
;
≠≠- .
return
ѓѓ 
View
ѓѓ 
(
ѓѓ  
nameof
ѓѓ  &
(
ѓѓ& '
LinkExternalLogin
ѓѓ' 8
)
ѓѓ8 9
)
ѓѓ9 :
;
ѓѓ: ;
}
∞∞ 
else
±± 
{
≤≤ 
if
іі 
(
іі "
registrationSettings
іі ,
.
іі, -
UsersCanRegister
іі- =
==
іі> @"
UserRegistrationType
ііA U
.
ііU V
NoRegistration
ііV d
)
ііd e
{
µµ 
string
ґґ 
message
ґґ &
=
ґґ' (
S
ґґ) *
[
ґґ* +
$str
ґґ+ S
]
ґґS T
;
ґґT U
_logger
ЈЈ 
.
ЈЈ  

LogWarning
ЈЈ  *
(
ЈЈ* +
message
ЈЈ+ 2
)
ЈЈ2 3
;
ЈЈ3 4

ModelState
ЄЄ "
.
ЄЄ" #
AddModelError
ЄЄ# 0
(
ЄЄ0 1
$str
ЄЄ1 3
,
ЄЄ3 4
message
ЄЄ5 <
)
ЄЄ< =
;
ЄЄ= >
}
єє 
else
ЇЇ 
{
її 
var
ЉЉ $
externalLoginViewModel
ЉЉ 2
=
ЉЉ3 4
new
ЉЉ5 8,
RegisterExternalLoginViewModel
ЉЉ9 W
(
ЉЉW X
)
ЉЉX Y
;
ЉЉY Z$
externalLoginViewModel
ЊЊ .
.
ЊЊ. /

NoPassword
ЊЊ/ 9
=
ЊЊ: ;"
registrationSettings
ЊЊ< P
.
ЊЊP Q(
NoPasswordForExternalUsers
ЊЊQ k
;
ЊЊk l$
externalLoginViewModel
њњ .
.
њњ. /
NoEmail
њњ/ 6
=
њњ7 8"
registrationSettings
њњ9 M
.
њњM N%
NoEmailForExternalUsers
њњN e
;
њњe f$
externalLoginViewModel
јј .
.
јј. /

NoUsername
јј/ 9
=
јј: ;"
registrationSettings
јј< P
.
јјP Q(
NoUsernameForExternalUsers
јјQ k
;
јјk l$
externalLoginViewModel
√√ .
.
√√. /
UserName
√√/ 7
=
√√8 9
await
√√: ?
GenerateUsername
√√@ P
(
√√P Q
info
√√Q U
)
√√U V
;
√√V W$
externalLoginViewModel
ƒƒ .
.
ƒƒ. /
Email
ƒƒ/ 4
=
ƒƒ5 6
email
ƒƒ7 <
;
ƒƒ< =
var
»» #
noInformationRequired
»» 1
=
»»2 3$
externalLoginViewModel
»»4 J
.
»»J K

NoPassword
»»K U
&&
……8 :$
externalLoginViewModel
……; Q
.
……Q R
NoEmail
……R Y
&&
  8 :$
externalLoginViewModel
  ; Q
.
  Q R

NoUsername
  R \
;
  \ ]
if
ћћ 
(
ћћ #
noInformationRequired
ћћ 1
)
ћћ1 2
{
ЌЌ 
user
ќќ  
=
ќќ! "
await
ќќ# (
this
ќќ) -
.
ќќ- .
RegisterUser
ќќ. :
(
ќќ: ;
new
ќќ; >
RegisterViewModel
ќќ? P
(
ќќP Q
)
ќќQ R
{
ѕѕ 
UserName
––  (
=
––) *$
externalLoginViewModel
––+ A
.
––A B
UserName
––B J
,
––J K
Email
——  %
=
——& '$
externalLoginViewModel
——( >
.
——> ?
Email
——? D
,
——D E
Password
““  (
=
““) *
null
““+ /
,
““/ 0
ConfirmPassword
””  /
=
””0 1
null
””2 6
}
‘‘ 
,
‘‘ 
S
‘‘  
[
‘‘  !
$str
‘‘! 7
]
‘‘7 8
,
‘‘8 9
_logger
‘‘: A
)
‘‘A B
;
‘‘B C
if
„„ 
(
„„  
user
„„  $
!=
„„% '
null
„„( ,
)
„„, -
{
ЎЎ 
var
ўў  #
identityResult
ўў$ 2
=
ўў3 4
await
ўў5 :
_signInManager
ўў; I
.
ўўI J
UserManager
ўўJ U
.
ўўU V
AddLoginAsync
ўўV c
(
ўўc d
user
ўўd h
,
ўўh i
new
ўўj m
UserLoginInfo
ўўn {
(
ўў{ |
infoўў| А
.ўўА Б
LoginProviderўўБ О
,ўўО П
infoўўР Ф
.ўўФ Х
ProviderKeyўўХ †
,ўў† °
infoўўҐ ¶
.ўў¶ І#
ProviderDisplayNameўўІ Ї
)ўўЇ ї
)ўўї Љ
;ўўЉ љ
if
ЏЏ  "
(
ЏЏ# $
identityResult
ЏЏ$ 2
.
ЏЏ2 3
	Succeeded
ЏЏ3 <
)
ЏЏ< =
{
џџ  !
_logger
№№$ +
.
№№+ ,
LogInformation
№№, :
(
№№: ;
$num
№№; <
,
№№< =
$str
№№> p
,
№№p q
info
№№r v
.
№№v w
LoginProvider№№w Д
)№№Д Е
;№№Е Ж
var
аа$ '
signInResult
аа( 4
=
аа5 6
await
аа7 <&
ExternalLoginSignInAsync
аа= U
(
ааU V
user
ааV Z
,
ааZ [
info
аа\ `
)
аа` a
;
ааa b
if
бб$ &
(
бб' (
signInResult
бб( 4
.
бб4 5
	Succeeded
бб5 >
)
бб> ?
{
вв$ %
return
гг( .
await
гг/ 4"
LoggedInActionResult
гг5 I
(
ггI J
user
ггJ N
,
ггN O
	returnUrl
ггP Y
,
ггY Z
info
гг[ _
)
гг_ `
;
гг` a
}
дд$ %
else
ее$ (
{
жж$ %

ModelState
зз( 2
.
зз2 3
AddModelError
зз3 @
(
зз@ A
string
ззA G
.
ззG H
Empty
ззH M
,
ззM N
S
ззO P
[
ззP Q
$str
ззQ i
]
ззi j
)
ззj k
;
ззk l
return
ии( .
RedirectToLogin
ии/ >
(
ии> ?
	returnUrl
ии? H
)
ииH I
;
ииI J
}
йй$ %
}
кк  !
AddIdentityErrors
лл  1
(
лл1 2
identityResult
лл2 @
)
лл@ A
;
ллA B
}
мм 
}
нн 
return
оо 
View
оо #
(
оо# $
$str
оо$ ;
,
оо; <$
externalLoginViewModel
оо= S
)
ооS T
;
ооT U
}
пп 
}
рр 
}
сс 
return
тт 
RedirectToLogin
тт "
(
тт" #
	returnUrl
тт# ,
)
тт, -
;
тт- .
}
уу 	
private
хх $
RedirectToActionResult
хх &
RedirectToLogin
хх' 6
(
хх6 7
string
хх7 =
	returnUrl
хх> G
)
ххG H
{
цц 	
var
чч 
iix
чч 
=
чч 
$num
чч 
;
чч 
foreach
шш 
(
шш 
var
шш 
state
шш 
in
шш !

ModelState
шш" ,
.
шш, -
Where
шш- 2
(
шш2 3
x
шш3 4
=>
шш5 7
x
шш8 9
.
шш9 :
Key
шш: =
==
шш> @
string
шшA G
.
шшG H
Empty
шшH M
)
шшM N
)
шшN O
{
щщ 
foreach
ъъ 
(
ъъ 
var
ъъ 
item
ъъ !
in
ъъ" $
state
ъъ% *
.
ъъ* +
Value
ъъ+ 0
.
ъъ0 1
Errors
ъъ1 7
)
ъъ7 8
{
ыы 
TempData
ьь 
[
ьь 
$"
ьь 
error_
ьь %
{
ьь% &
iix
ьь& )
++
ьь) +
}
ьь+ ,
"
ьь, -
]
ьь- .
=
ьь/ 0
item
ьь1 5
.
ьь5 6
ErrorMessage
ьь6 B
;
ььB C
}
ээ 
}
юю 
return
€€ 
RedirectToAction
€€ #
(
€€# $
nameof
€€$ *
(
€€* +
Login
€€+ 0
)
€€0 1
,
€€1 2
new
€€3 6
{
€€7 8
	returnUrl
€€9 B
}
€€C D
)
€€D E
;
€€E F
}
АА 	
[
ВВ 	
HttpPost
ВВ	 
]
ВВ 
[
ГГ 	
AllowAnonymous
ГГ	 
]
ГГ 
[
ДД 	&
ValidateAntiForgeryToken
ДД	 !
]
ДД! "
public
ЕЕ 
async
ЕЕ 
Task
ЕЕ 
<
ЕЕ 
IActionResult
ЕЕ '
>
ЕЕ' (#
RegisterExternalLogin
ЕЕ) >
(
ЕЕ> ?,
RegisterExternalLoginViewModel
ЕЕ? ]
model
ЕЕ^ c
,
ЕЕc d
string
ЕЕe k
	returnUrl
ЕЕl u
=
ЕЕv w
null
ЕЕx |
)
ЕЕ| }
{
ЖЖ 	
IUser
ЗЗ 
user
ЗЗ 
=
ЗЗ 
null
ЗЗ 
;
ЗЗ 
var
ИИ 
settings
ИИ 
=
ИИ 
(
ИИ 
await
ИИ !
_siteService
ИИ" .
.
ИИ. /"
GetSiteSettingsAsync
ИИ/ C
(
ИИC D
)
ИИD E
)
ИИE F
.
ИИF G
As
ИИG I
<
ИИI J"
RegistrationSettings
ИИJ ^
>
ИИ^ _
(
ИИ_ `
)
ИИ` a
;
ИИa b
var
ЙЙ 
info
ЙЙ 
=
ЙЙ 
await
ЙЙ 
_signInManager
ЙЙ +
.
ЙЙ+ ,'
GetExternalLoginInfoAsync
ЙЙ, E
(
ЙЙE F
)
ЙЙF G
;
ЙЙG H
if
ЛЛ 
(
ЛЛ 
info
ЛЛ 
==
ЛЛ 
null
ЛЛ 
)
ЛЛ 
{
ММ 
_logger
НН 
.
НН 

LogWarning
НН "
(
НН" #
$str
НН# G
)
ННG H
;
ННH I
return
ОО 
NotFound
ОО 
(
ОО  
)
ОО  !
;
ОО! "
}
ПП 
if
СС 
(
СС 
settings
СС 
.
СС 
UsersCanRegister
СС )
==
СС* ,"
UserRegistrationType
СС- A
.
ССA B
NoRegistration
ССB P
)
ССP Q
{
ТТ 
_logger
УУ 
.
УУ 

LogWarning
УУ "
(
УУ" #
$str
УУ# K
,
УУK L
model
УУM R
.
УУR S
UserName
УУS [
,
УУ[ \
model
УУ] b
.
УУb c
Email
УУc h
)
УУh i
;
УУi j
return
ФФ 
NotFound
ФФ 
(
ФФ  
)
ФФ  !
;
ФФ! "
}
ХХ 
ViewData
ЧЧ 
[
ЧЧ 
$str
ЧЧ  
]
ЧЧ  !
=
ЧЧ" #
	returnUrl
ЧЧ$ -
;
ЧЧ- .
ViewData
ШШ 
[
ШШ 
$str
ШШ $
]
ШШ$ %
=
ШШ& '
info
ШШ( ,
.
ШШ, -
LoginProvider
ШШ- :
;
ШШ: ;
model
ЪЪ 
.
ЪЪ 

NoPassword
ЪЪ 
=
ЪЪ 
settings
ЪЪ '
.
ЪЪ' ((
NoPasswordForExternalUsers
ЪЪ( B
;
ЪЪB C
model
ЫЫ 
.
ЫЫ 
NoEmail
ЫЫ 
=
ЫЫ 
settings
ЫЫ $
.
ЫЫ$ %%
NoEmailForExternalUsers
ЫЫ% <
;
ЫЫ< =
model
ЬЬ 
.
ЬЬ 

NoUsername
ЬЬ 
=
ЬЬ 
settings
ЬЬ '
.
ЬЬ' ((
NoUsernameForExternalUsers
ЬЬ( B
;
ЬЬB C

ModelState
ЮЮ 
.
ЮЮ 
Clear
ЮЮ 
(
ЮЮ 
)
ЮЮ 
;
ЮЮ 
if
†† 
(
†† 
model
†† 
.
†† 
NoEmail
†† 
)
†† 
{
°° 
var
ҐҐ 
email
ҐҐ 
=
ҐҐ 
info
ҐҐ  
.
ҐҐ  !
	Principal
ҐҐ! *
.
ҐҐ* +
FindFirstValue
ҐҐ+ 9
(
ҐҐ9 :

ClaimTypes
ҐҐ: D
.
ҐҐD E
Email
ҐҐE J
)
ҐҐJ K
??
ҐҐL N
info
ҐҐO S
.
ҐҐS T
	Principal
ҐҐT ]
.
ҐҐ] ^
FindFirstValue
ҐҐ^ l
(
ҐҐl m
$str
ҐҐm t
)
ҐҐt u
;
ҐҐu v
model
££ 
.
££ 
Email
££ 
=
££ 
email
££ #
;
££# $
}
§§ 
if
¶¶ 
(
¶¶ 
model
¶¶ 
.
¶¶ 

NoUsername
¶¶  
)
¶¶  !
{
ІІ 
model
®® 
.
®® 
UserName
®® 
=
®®  
await
®®! &
GenerateUsername
®®' 7
(
®®7 8
info
®®8 <
)
®®< =
;
®®= >
}
©© 
if
ЂЂ 
(
ЂЂ 
model
ЂЂ 
.
ЂЂ 

NoPassword
ЂЂ  
)
ЂЂ  !
{
ђђ 
model
≠≠ 
.
≠≠ 
Password
≠≠ 
=
≠≠  
null
≠≠! %
;
≠≠% &
model
ЃЃ 
.
ЃЃ 
ConfirmPassword
ЃЃ %
=
ЃЃ& '
null
ЃЃ( ,
;
ЃЃ, -
}
ѓѓ 
if
±± 
(
±± 
TryValidateModel
±±  
(
±±  !
model
±±! &
)
±±& '
&&
±±( *

ModelState
±±+ 5
.
±±5 6
IsValid
±±6 =
)
±±= >
{
≤≤ 
user
≥≥ 
=
≥≥ 
await
≥≥ 
this
≥≥ !
.
≥≥! "
RegisterUser
≥≥" .
(
≥≥. /
new
≥≥/ 2
RegisterViewModel
≥≥3 D
(
≥≥D E
)
≥≥E F
{
≥≥G H
UserName
≥≥I Q
=
≥≥R S
model
≥≥T Y
.
≥≥Y Z
UserName
≥≥Z b
,
≥≥b c
Email
≥≥d i
=
≥≥j k
model
≥≥l q
.
≥≥q r
Email
≥≥r w
,
≥≥w x
Password≥≥y Б
=≥≥В Г
model≥≥Д Й
.≥≥Й К
Password≥≥К Т
,≥≥Т У
ConfirmPassword≥≥Ф £
=≥≥§ •
model≥≥¶ Ђ
.≥≥Ђ ђ
ConfirmPassword≥≥ђ ї
}≥≥Љ љ
,≥≥љ Њ
S≥≥њ ј
[≥≥ј Ѕ
$str≥≥Ѕ „
]≥≥„ Ў
,≥≥Ў ў
_logger≥≥Џ б
)≥≥б в
;≥≥в г
if
іі 
(
іі 
user
іі 
is
іі 
null
іі  
)
іі  !
{
µµ 

ModelState
ґґ 
.
ґґ 
AddModelError
ґґ ,
(
ґґ, -
string
ґґ- 3
.
ґґ3 4
Empty
ґґ4 9
,
ґґ9 :
$str
ґґ; Q
)
ґґQ R
;
ґґR S
}
ЈЈ 
else
ЄЄ 
{
єє 
var
ЇЇ 
identityResult
ЇЇ &
=
ЇЇ' (
await
ЇЇ) .
_signInManager
ЇЇ/ =
.
ЇЇ= >
UserManager
ЇЇ> I
.
ЇЇI J
AddLoginAsync
ЇЇJ W
(
ЇЇW X
user
ЇЇX \
,
ЇЇ\ ]
new
ЇЇ^ a
UserLoginInfo
ЇЇb o
(
ЇЇo p
info
ЇЇp t
.
ЇЇt u
LoginProviderЇЇu В
,ЇЇВ Г
infoЇЇД И
.ЇЇИ Й
ProviderKeyЇЇЙ Ф
,ЇЇФ Х
infoЇЇЦ Ъ
.ЇЇЪ Ы#
ProviderDisplayNameЇЇЫ Ѓ
)ЇЇЃ ѓ
)ЇЇѓ ∞
;ЇЇ∞ ±
if
її 
(
її 
identityResult
її &
.
її& '
	Succeeded
її' 0
)
її0 1
{
ЉЉ 
_logger
љљ 
.
љљ  
LogInformation
љљ  .
(
љљ. /
$num
љљ/ 0
,
љљ0 1
$str
љљ2 _
,
љљ_ `
info
љљa e
.
љљe f
LoginProvider
љљf s
)
љљs t
;
љљt u
var
ЅЅ 
signInResult
ЅЅ (
=
ЅЅ) *
await
ЅЅ+ 0&
ExternalLoginSignInAsync
ЅЅ1 I
(
ЅЅI J
user
ЅЅJ N
,
ЅЅN O
info
ЅЅP T
)
ЅЅT U
;
ЅЅU V
if
¬¬ 
(
¬¬ 
signInResult
¬¬ (
.
¬¬( )
	Succeeded
¬¬) 2
)
¬¬2 3
{
√√ 
return
ƒƒ "
await
ƒƒ# ("
LoggedInActionResult
ƒƒ) =
(
ƒƒ= >
user
ƒƒ> B
,
ƒƒB C
	returnUrl
ƒƒD M
,
ƒƒM N
info
ƒƒO S
)
ƒƒS T
;
ƒƒT U
}
≈≈ 
}
∆∆ 
AddIdentityErrors
«« %
(
««% &
identityResult
««& 4
)
««4 5
;
««5 6
}
»» 
}
…… 
return
   
View
   
(
   
$str
   /
,
  / 0
model
  1 6
)
  6 7
;
  7 8
}
ЋЋ 	
[
ЌЌ 	
HttpPost
ЌЌ	 
]
ЌЌ 
[
ќќ 	
AllowAnonymous
ќќ	 
]
ќќ 
[
ѕѕ 	&
ValidateAntiForgeryToken
ѕѕ	 !
]
ѕѕ! "
public
–– 
async
–– 
Task
–– 
<
–– 
IActionResult
–– '
>
––' (
LinkExternalLogin
––) :
(
––: ;(
LinkExternalLoginViewModel
––; U
model
––V [
,
––[ \
string
––] c
	returnUrl
––d m
=
––n o
null
––p t
)
––t u
{
—— 	
var
““ 
settings
““ 
=
““ 
(
““ 
await
““ !
_siteService
““" .
.
““. /"
GetSiteSettingsAsync
““/ C
(
““C D
)
““D E
)
““E F
.
““F G
As
““G I
<
““I J"
RegistrationSettings
““J ^
>
““^ _
(
““_ `
)
““` a
;
““a b
var
”” 
info
”” 
=
”” 
await
”” 
_signInManager
”” +
.
””+ ,'
GetExternalLoginInfoAsync
””, E
(
””E F
)
””F G
;
””G H
var
’’ 
email
’’ 
=
’’ 
info
’’ 
.
’’ 
	Principal
’’ &
.
’’& '
FindFirstValue
’’' 5
(
’’5 6

ClaimTypes
’’6 @
.
’’@ A
Email
’’A F
)
’’F G
??
’’H J
info
’’K O
.
’’O P
	Principal
’’P Y
.
’’Y Z
FindFirstValue
’’Z h
(
’’h i
$str
’’i p
)
’’p q
;
’’q r
var
„„ 
user
„„ 
=
„„ 
await
„„ 
_userManager
„„ )
.
„„) *
FindByEmailAsync
„„* :
(
„„: ;
email
„„; @
)
„„@ A
;
„„A B
if
ўў 
(
ўў 
info
ўў 
==
ўў 
null
ўў 
)
ўў 
{
ЏЏ 
_logger
џџ 
.
џџ 

LogWarning
џџ "
(
џџ" #
$str
џџ# G
)
џџG H
;
џџH I
return
№№ 
NotFound
№№ 
(
№№  
)
№№  !
;
№№! "
}
ЁЁ 
if
яя 
(
яя 
user
яя 
==
яя 
null
яя 
)
яя 
{
аа 
_logger
бб 
.
бб 

LogWarning
бб "
(
бб" #
$strбб# Й
,ббЙ К
info
вв 
.
вв 
LoginProvider
вв &
,
вв& '
info
вв( ,
.
вв, -
ProviderKey
вв- 8
,
вв8 9
info
вв: >
.
вв> ?
	Principal
вв? H
?
ввH I
.
ввI J
Identity
ввJ R
?
ввR S
.
ввS T
Name
ввT X
)
ввX Y
;
ввY Z
return
гг 
RedirectToAction
гг '
(
гг' (
nameof
гг( .
(
гг. /
Login
гг/ 4
)
гг4 5
)
гг5 6
;
гг6 7
}
дд 
await
жж 
_accountEvents
жж  
.
жж  !
InvokeAsync
жж! ,
(
жж, -
(
жж- .
e
жж. /
,
жж/ 0
model
жж1 6
,
жж6 7

modelState
жж8 B
)
жжB C
=>
жжD F
e
жжG H
.
жжH I
LoggingInAsync
жжI W
(
жжW X
user
жжX \
.
жж\ ]
UserName
жж] e
,
жжe f
(
жжg h
key
жжh k
,
жжk l
message
жжm t
)
жжt u
=>
жжv x

modelStateжжy Г
.жжГ Д
AddModelErrorжжД С
(жжС Т
keyжжТ Х
,жжХ Ц
messageжжЧ Ю
)жжЮ Я
)жжЯ †
,жж† °
modelжжҐ І
,жжІ ®

ModelStateжж© ≥
,жж≥ і
_loggerжжµ Љ
)жжЉ љ
;жжљ Њ
var
ии 
signInResult
ии 
=
ии 
await
ии $
_signInManager
ии% 3
.
ии3 4&
CheckPasswordSignInAsync
ии4 L
(
ииL M
user
ииM Q
,
ииQ R
model
ииS X
.
ииX Y
Password
ииY a
,
ииa b
false
ииc h
)
ииh i
;
ииi j
if
йй 
(
йй 
!
йй 
signInResult
йй 
.
йй 
	Succeeded
йй '
)
йй' (
{
кк 
user
лл 
=
лл 
null
лл 
;
лл 

ModelState
мм 
.
мм 
AddModelError
мм (
(
мм( )
string
мм) /
.
мм/ 0
Empty
мм0 5
,
мм5 6
S
мм7 8
[
мм8 9
$str
мм9 Q
]
ммQ R
)
ммR S
;
ммS T
}
нн 
else
оо 
{
пп 
var
рр 
identityResult
рр "
=
рр# $
await
рр% *
_signInManager
рр+ 9
.
рр9 :
UserManager
рр: E
.
ррE F
AddLoginAsync
ррF S
(
ррS T
user
ррT X
,
ррX Y
new
ррZ ]
UserLoginInfo
рр^ k
(
ррk l
info
ррl p
.
ррp q
LoginProvider
ррq ~
,
рр~ 
infoррА Д
.ррД Е
ProviderKeyррЕ Р
,ррР С
infoррТ Ц
.ррЦ Ч#
ProviderDisplayNameррЧ ™
)рр™ Ђ
)ррЂ ђ
;ррђ ≠
if
сс 
(
сс 
identityResult
сс "
.
сс" #
	Succeeded
сс# ,
)
сс, -
{
тт 
_logger
уу 
.
уу 
LogInformation
уу *
(
уу* +
$num
уу+ ,
,
уу, -
$str
уу. [
,
уу[ \
info
уу] a
.
ууa b
LoginProvider
ууb o
)
ууo p
;
ууp q
if
цц 
(
цц 
(
цц 
await
цц &
ExternalLoginSignInAsync
цц 7
(
цц7 8
user
цц8 <
,
цц< =
info
цц> B
)
ццB C
)
ццC D
.
ццD E
	Succeeded
ццE N
)
ццN O
{
чч 
return
шш 
await
шш $"
LoggedInActionResult
шш% 9
(
шш9 :
user
шш: >
,
шш> ?
	returnUrl
шш@ I
,
шшI J
info
шшK O
)
шшO P
;
шшP Q
}
щщ 
}
ъъ 
AddIdentityErrors
ыы !
(
ыы! "
identityResult
ыы" 0
)
ыы0 1
;
ыы1 2
}
ьь 
return
ээ 
RedirectToAction
ээ #
(
ээ# $
nameof
ээ$ *
(
ээ* +
Login
ээ+ 0
)
ээ0 1
)
ээ1 2
;
ээ2 3
}
юю 	
[
АА 	
HttpGet
АА	 
]
АА 
public
ББ 
async
ББ 
Task
ББ 
<
ББ 
IActionResult
ББ '
>
ББ' (
ExternalLogins
ББ) 7
(
ББ7 8
)
ББ8 9
{
ВВ 	
var
ГГ 
user
ГГ 
=
ГГ 
await
ГГ 
_userManager
ГГ )
.
ГГ) *
GetUserAsync
ГГ* 6
(
ГГ6 7
User
ГГ7 ;
)
ГГ; <
;
ГГ< =
if
ДД 
(
ДД 
user
ДД 
==
ДД 
null
ДД 
)
ДД 
{
ЕЕ 
return
ЖЖ 
Forbid
ЖЖ 
(
ЖЖ 
)
ЖЖ 
;
ЖЖ  
}
ЗЗ 
var
ЙЙ 
model
ЙЙ 
=
ЙЙ 
new
ЙЙ %
ExternalLoginsViewModel
ЙЙ 3
{
ЙЙ4 5
CurrentLogins
ЙЙ6 C
=
ЙЙD E
await
ЙЙF K
_userManager
ЙЙL X
.
ЙЙX Y
GetLoginsAsync
ЙЙY g
(
ЙЙg h
user
ЙЙh l
)
ЙЙl m
}
ЙЙn o
;
ЙЙo p
model
КК 
.
КК 
OtherLogins
КК 
=
КК 
(
КК  !
await
КК! &
_signInManager
КК' 5
.
КК5 63
%GetExternalAuthenticationSchemesAsync
КК6 [
(
КК[ \
)
КК\ ]
)
КК] ^
.
ЛЛ 
Where
ЛЛ 
(
ЛЛ 
auth
ЛЛ 
=>
ЛЛ 
model
ЛЛ $
.
ЛЛ$ %
CurrentLogins
ЛЛ% 2
.
ЛЛ2 3
All
ЛЛ3 6
(
ЛЛ6 7
ul
ЛЛ7 9
=>
ЛЛ: <
auth
ЛЛ= A
.
ЛЛA B
Name
ЛЛB F
!=
ЛЛG I
ul
ЛЛJ L
.
ЛЛL M
LoginProvider
ЛЛM Z
)
ЛЛZ [
)
ЛЛ[ \
.
ММ 
ToList
ММ 
(
ММ 
)
ММ 
;
ММ 
model
НН 
.
НН 
ShowRemoveButton
НН "
=
НН# $
await
НН% *
_userManager
НН+ 7
.
НН7 8
HasPasswordAsync
НН8 H
(
ННH I
user
ННI M
)
ННM N
||
ННO Q
model
ННR W
.
ННW X
CurrentLogins
ННX e
.
ННe f
Count
ННf k
>
ННl m
$num
ННn o
;
ННo p
return
РР 
View
РР 
(
РР 
model
РР 
)
РР 
;
РР 
}
СС 	
[
УУ 	
HttpPost
УУ	 
]
УУ 
[
ФФ 	&
ValidateAntiForgeryToken
ФФ	 !
]
ФФ! "
public
ХХ 
async
ХХ 
Task
ХХ 
<
ХХ 
IActionResult
ХХ '
>
ХХ' (
	LinkLogin
ХХ) 2
(
ХХ2 3
string
ХХ3 9
provider
ХХ: B
)
ХХB C
{
ЦЦ 	
await
ШШ 
HttpContext
ШШ 
.
ШШ 
SignOutAsync
ШШ *
(
ШШ* +
IdentityConstants
ШШ+ <
.
ШШ< =
ExternalScheme
ШШ= K
)
ШШK L
;
ШШL M
var
ЫЫ 
redirectUrl
ЫЫ 
=
ЫЫ 
Url
ЫЫ !
.
ЫЫ! "
Action
ЫЫ" (
(
ЫЫ( )
nameof
ЫЫ) /
(
ЫЫ/ 0
LinkLoginCallback
ЫЫ0 A
)
ЫЫA B
)
ЫЫB C
;
ЫЫC D
var
ЬЬ 

properties
ЬЬ 
=
ЬЬ 
_signInManager
ЬЬ +
.
ЬЬ+ ,7
)ConfigureExternalAuthenticationProperties
ЬЬ, U
(
ЬЬU V
provider
ЬЬV ^
,
ЬЬ^ _
redirectUrl
ЬЬ` k
,
ЬЬk l
_userManager
ЬЬm y
.
ЬЬy z
	GetUserIdЬЬz Г
(ЬЬГ Д
UserЬЬД И
)ЬЬИ Й
)ЬЬЙ К
;ЬЬК Л
return
ЭЭ 
new
ЭЭ 
ChallengeResult
ЭЭ &
(
ЭЭ& '
provider
ЭЭ' /
,
ЭЭ/ 0

properties
ЭЭ1 ;
)
ЭЭ; <
;
ЭЭ< =
}
ЮЮ 	
[
†† 	
HttpGet
††	 
]
†† 
public
°° 
async
°° 
Task
°° 
<
°° 
IActionResult
°° '
>
°°' (
LinkLoginCallback
°°) :
(
°°: ;
)
°°; <
{
ҐҐ 	
var
££ 
user
££ 
=
££ 
await
££ 
_userManager
££ )
.
££) *
GetUserAsync
££* 6
(
££6 7
User
££7 ;
)
££; <
;
££< =
if
§§ 
(
§§ 
user
§§ 
==
§§ 
null
§§ 
)
§§ 
{
•• 
_logger
¶¶ 
.
¶¶ 
LogError
¶¶  
(
¶¶  !
$str
¶¶! J
,
¶¶J K
_userManager
¶¶L X
.
¶¶X Y
	GetUserId
¶¶Y b
(
¶¶b c
User
¶¶c g
)
¶¶g h
)
¶¶h i
;
¶¶i j
return
ІІ 
RedirectToAction
ІІ '
(
ІІ' (
nameof
ІІ( .
(
ІІ. /
Login
ІІ/ 4
)
ІІ4 5
)
ІІ5 6
;
ІІ6 7
}
®® 
var
™™ 
info
™™ 
=
™™ 
await
™™ 
_signInManager
™™ +
.
™™+ ,'
GetExternalLoginInfoAsync
™™, E
(
™™E F
)
™™F G
;
™™G H
if
ЂЂ 
(
ЂЂ 
info
ЂЂ 
==
ЂЂ 
null
ЂЂ 
)
ЂЂ 
{
ђђ 
_logger
≠≠ 
.
≠≠ 
LogError
≠≠  
(
≠≠  !
$str
≠≠! o
,
≠≠o p
user
≠≠q u
.
≠≠u v
UserName
≠≠v ~
)
≠≠~ 
;≠≠ А
return
ЃЃ 
RedirectToAction
ЃЃ '
(
ЃЃ' (
nameof
ЃЃ( .
(
ЃЃ. /
Login
ЃЃ/ 4
)
ЃЃ4 5
)
ЃЃ5 6
;
ЃЃ6 7
}
ѓѓ 
var
±± 
result
±± 
=
±± 
await
±± 
_userManager
±± +
.
±±+ ,
AddLoginAsync
±±, 9
(
±±9 :
user
±±: >
,
±±> ?
new
±±@ C
UserLoginInfo
±±D Q
(
±±Q R
info
±±R V
.
±±V W
LoginProvider
±±W d
,
±±d e
info
±±f j
.
±±j k
ProviderKey
±±k v
,
±±v w
info
±±x |
.
±±| }"
ProviderDisplayName±±} Р
)±±Р С
)±±С Т
;±±Т У
if
≤≤ 
(
≤≤ 
!
≤≤ 
result
≤≤ 
.
≤≤ 
	Succeeded
≤≤ !
)
≤≤! "
{
≥≥ 
_logger
іі 
.
іі 
LogError
іі  
(
іі  !
$str
іі! n
,
ііn o
user
ііp t
.
ііt u
UserName
ііu }
)
іі} ~
;
іі~ 
return
µµ 
RedirectToAction
µµ '
(
µµ' (
nameof
µµ( .
(
µµ. /
Login
µµ/ 4
)
µµ4 5
)
µµ5 6
;
µµ6 7
}
ґґ 
await
єє 
HttpContext
єє 
.
єє 
SignOutAsync
єє *
(
єє* +
IdentityConstants
єє+ <
.
єє< =
ExternalScheme
єє= K
)
єєK L
;
єєL M
await
її &
ExternalLoginSignInAsync
її *
(
її* +
user
її+ /
,
її/ 0
info
її1 5
)
її5 6
;
її6 7
return
љљ 
RedirectToAction
љљ #
(
љљ# $
nameof
љљ$ *
(
љљ* +
ExternalLogins
љљ+ 9
)
љљ9 :
)
љљ: ;
;
љљ; <
}
ЊЊ 	
[
јј 	
HttpPost
јј	 
]
јј 
[
ЅЅ 	&
ValidateAntiForgeryToken
ЅЅ	 !
]
ЅЅ! "
public
¬¬ 
async
¬¬ 
Task
¬¬ 
<
¬¬ 
IActionResult
¬¬ '
>
¬¬' (
RemoveLogin
¬¬) 4
(
¬¬4 5"
RemoveLoginViewModel
¬¬5 I
model
¬¬J O
)
¬¬O P
{
√√ 	
var
ƒƒ 
user
ƒƒ 
=
ƒƒ 
await
ƒƒ 
_userManager
ƒƒ )
.
ƒƒ) *
GetUserAsync
ƒƒ* 6
(
ƒƒ6 7
User
ƒƒ7 ;
)
ƒƒ; <
;
ƒƒ< =
if
≈≈ 
(
≈≈ 
user
≈≈ 
==
≈≈ 
null
≈≈ 
)
≈≈ 
{
∆∆ 
_logger
«« 
.
«« 
LogError
««  
(
««  !
$str
««! J
,
««J K
_userManager
««L X
.
««X Y
	GetUserId
««Y b
(
««b c
User
««c g
)
««g h
)
««h i
;
««i j
return
»» 
RedirectToAction
»» '
(
»»' (
nameof
»»( .
(
»». /
Login
»»/ 4
)
»»4 5
)
»»5 6
;
»»6 7
}
…… 
var
ЋЋ 
result
ЋЋ 
=
ЋЋ 
await
ЋЋ 
_userManager
ЋЋ +
.
ЋЋ+ ,
RemoveLoginAsync
ЋЋ, <
(
ЋЋ< =
user
ЋЋ= A
,
ЋЋA B
model
ЋЋC H
.
ЋЋH I
LoginProvider
ЋЋI V
,
ЋЋV W
model
ЋЋX ]
.
ЋЋ] ^
ProviderKey
ЋЋ^ i
)
ЋЋi j
;
ЋЋj k
if
ћћ 
(
ћћ 
!
ћћ 
result
ћћ 
.
ћћ 
	Succeeded
ћћ !
)
ћћ! "
{
ЌЌ 
_logger
ќќ 
.
ќќ 
LogError
ќќ  
(
ќќ  !
$str
ќќ! p
,
ќќp q
user
ќќr v
.
ќќv w
UserName
ќќw 
)ќќ А
;ќќА Б
return
ѕѕ 
RedirectToAction
ѕѕ '
(
ѕѕ' (
nameof
ѕѕ( .
(
ѕѕ. /
Login
ѕѕ/ 4
)
ѕѕ4 5
)
ѕѕ5 6
;
ѕѕ6 7
}
–– 
foreach
”” 
(
”” 
var
”” 
item
”” 
in
””  
(
””! "
(
””" #
User
””# '
)
””' (
user
””( ,
)
””, -
.
””- .

UserTokens
””. 8
.
””8 9
Where
””9 >
(
””> ?
c
””? @
=>
””A C
c
””D E
.
””E F
LoginProvider
””F S
==
””T V
model
””W \
.
””\ ]
LoginProvider
””] j
)
””j k
.
””k l
ToList
””l r
(
””r s
)
””s t
)
””t u
{
‘‘ 
if
’’ 
(
’’ 
!
’’ 
(
’’ 
await
’’ 
(
’’ 
_userManager
’’ )
.
’’) *,
RemoveAuthenticationTokenAsync
’’* H
(
’’H I
user
’’I M
,
’’M N
model
’’O T
.
’’T U
LoginProvider
’’U b
,
’’b c
item
’’d h
.
’’h i
Name
’’i m
)
’’m n
)
’’n o
)
’’o p
.
’’p q
	Succeeded
’’q z
)
’’z {
{
÷÷ 
_logger
„„ 
.
„„ 
LogError
„„ $
(
„„$ %
$str„„% О
,„„О П
item„„Р Ф
.„„Ф Х
Name„„Х Щ
,„„Щ Ъ
model„„Ы †
.„„† °
LoginProvider„„° Ѓ
,„„Ѓ ѓ
user„„∞ і
.„„і µ
UserName„„µ љ
)„„љ Њ
;„„Њ њ
}
ЎЎ 
}
ўў 
await
џџ 
_signInManager
џџ  
.
џџ  !
SignInAsync
џџ! ,
(
џџ, -
user
џџ- 1
,
џџ1 2
isPersistent
џџ3 ?
:
џџ? @
false
џџA F
)
џџF G
;
џџG H
return
ЁЁ 
RedirectToAction
ЁЁ #
(
ЁЁ# $
nameof
ЁЁ$ *
(
ЁЁ* +
ExternalLogins
ЁЁ+ 9
)
ЁЁ9 :
)
ЁЁ: ;
;
ЁЁ; <
}
ёё 	
private
аа 
async
аа 
Task
аа 
<
аа 
string
аа !
>
аа! "
GenerateUsername
аа# 3
(
аа3 4
ExternalLoginInfo
аа4 E
info
ааF J
)
ааJ K
{
бб 	
var
вв 
now
вв 
=
вв 
new
вв 
TimeSpan
вв "
(
вв" #
_clock
вв# )
.
вв) *
UtcNow
вв* 0
.
вв0 1
Ticks
вв1 6
)
вв6 7
-
вв8 9
new
вв: =
TimeSpan
вв> F
(
ввF G
DateTime
ввG O
.
ввO P
	UnixEpoch
ввP Y
.
ввY Z
Ticks
ввZ _
)
вв_ `
;
вв` a
var
гг 
ret
гг 
=
гг 
string
гг 
.
гг 
Concat
гг #
(
гг# $
$str
гг$ '
+
гг( )
Convert
гг* 1
.
гг1 2
ToInt32
гг2 9
(
гг9 :
now
гг: =
.
гг= >
TotalSeconds
гг> J
)
ггJ K
.
ггK L
ToString
ггL T
(
ггT U
)
ггU V
)
ггV W
;
ггW X
var
ее "
registrationSettings
ее $
=
ее% &
(
ее' (
await
ее( -
_siteService
ее. :
.
ее: ;"
GetSiteSettingsAsync
ее; O
(
ееO P
)
ееP Q
)
ееQ R
.
ееR S
As
ееS U
<
ееU V"
RegistrationSettings
ееV j
>
ееj k
(
ееk l
)
ееl m
;
ееm n
var
зз 
externalClaims
зз 
=
зз  
info
зз! %
==
зз& (
null
зз) -
?
зз. /
null
зз0 4
:
зз5 6
info
зз7 ;
.
зз; <
	Principal
зз< E
.
ззE F#
GetSerializableClaims
ззF [
(
зз[ \
)
зз\ ]
;
зз] ^
if
йй 
(
йй "
registrationSettings
йй $
.
йй$ %)
UseScriptToGenerateUsername
йй% @
)
йй@ A
{
кк 
var
лл 
context
лл 
=
лл 
new
лл !
{
лл" #
userName
лл$ ,
=
лл- .
string
лл/ 5
.
лл5 6
Empty
лл6 ;
,
лл; <
loginProvider
лл= J
=
ллK L
info
ллM Q
?
ллQ R
.
ллR S
LoginProvider
ллS `
,
лл` a
externalClaims
ллb p
}
ллq r
;
ллr s
var
мм $
jsonSerializerSettings
мм *
=
мм+ ,
new
мм- 0$
JsonSerializerSettings
мм1 G
(
ммG H
)
ммH I
{
нн 
ContractResolver
оо $
=
оо% &
new
оо' *4
&CamelCasePropertyNamesContractResolver
оо+ Q
(
ооQ R
)
ооR S
}
пп 
;
пп 
var
рр 
script
рр 
=
рр 
$"
рр 9
+js: function generateUsername(context) {{\n
рр J
{
ррJ K"
registrationSettings
ррK _
.
рр_ `$
GenerateUsernameScript
рр` v
}
ррv w#
\n}}\nvar context = ррw Л
{ррЛ М
JsonConvertррМ Ч
.ррЧ Ш
SerializeObjectррШ І
(ррІ ®
contextрр® ѓ
,ррѓ ∞&
jsonSerializerSettingsрр± «
)рр« »
}рр» …>
.;\ngenerateUsername(context);\nreturn context;рр… ч
"ррч ш
;ррш щ
try
сс 
{
тт 
dynamic
уу 
evaluationResult
уу ,
=
уу- .
_scriptingManager
уу/ @
.
уу@ A
Evaluate
ууA I
(
ууI J
script
ууJ P
,
ууP Q
null
ууR V
,
ууV W
null
ууX \
,
уу\ ]
null
уу^ b
)
ууb c
;
ууc d
if
фф 
(
фф 
evaluationResult
фф (
?
фф( )
.
фф) *
userName
фф* 2
==
фф3 5
null
фф6 :
)
фф: ;
throw
хх 
new
хх !
	Exception
хх" +
(
хх+ ,
$str
хх, ^
)
хх^ _
;
хх_ `
return
цц 
evaluationResult
цц +
.
цц+ ,
userName
цц, 4
;
цц4 5
}
чч 
catch
шш 
(
шш 
	Exception
шш  
ex
шш! #
)
шш# $
{
щщ 
_logger
ъъ 
.
ъъ 
LogError
ъъ $
(
ъъ$ %
ex
ъъ% '
,
ъъ' (
$str
ъъ) ]
,
ъъ] ^
context
ъъ_ f
)
ъъf g
;
ъъg h
}
ыы 
}
ьь 
else
ээ 
{
юю 
var
€€ 
	userNames
€€ 
=
€€ 
new
€€  #

Dictionary
€€$ .
<
€€. /
Type
€€/ 3
,
€€3 4
string
€€5 ;
>
€€; <
(
€€< =
)
€€= >
;
€€> ?
foreach
АА 
(
АА 
var
АА 
item
АА !
in
АА" $$
_externalLoginHandlers
АА% ;
)
АА; <
{
ББ 
try
ВВ 
{
ГГ 
var
ДД 
userName
ДД $
=
ДД% &
await
ДД' ,
item
ДД- 1
.
ДД1 2
GenerateUserName
ДД2 B
(
ДДB C
info
ДДC G
.
ДДG H
LoginProvider
ДДH U
,
ДДU V
externalClaims
ДДW e
.
ДДe f
ToArray
ДДf m
(
ДДm n
)
ДДn o
)
ДДo p
;
ДДp q
if
ЕЕ 
(
ЕЕ 
!
ЕЕ 
string
ЕЕ #
.
ЕЕ# $ 
IsNullOrWhiteSpace
ЕЕ$ 6
(
ЕЕ6 7
userName
ЕЕ7 ?
)
ЕЕ? @
)
ЕЕ@ A
{
ЖЖ 
if
ЗЗ 
(
ЗЗ  
	userNames
ЗЗ  )
.
ЗЗ) *
Count
ЗЗ* /
==
ЗЗ0 2
$num
ЗЗ3 4
)
ЗЗ4 5
{
ИИ 
ret
ЙЙ  #
=
ЙЙ$ %
userName
ЙЙ& .
;
ЙЙ. /
}
КК 
	userNames
ЛЛ %
.
ЛЛ% &
Add
ЛЛ& )
(
ЛЛ) *
item
ЛЛ* .
.
ЛЛ. /
GetType
ЛЛ/ 6
(
ЛЛ6 7
)
ЛЛ7 8
,
ЛЛ8 9
userName
ЛЛ: B
)
ЛЛB C
;
ЛЛC D
}
ММ 
}
НН 
catch
ОО 
(
ОО 
	Exception
ОО $
ex
ОО% '
)
ОО' (
{
ПП 
_logger
РР 
.
РР  
LogError
РР  (
(
РР( )
ex
РР) +
,
РР+ ,
$strРР- Б
,РРБ В
itemРРГ З
.РРЗ И
GetTypeРРИ П
(РРП Р
)РРР С
)РРС Т
;РРТ У
}
СС 
}
ТТ 
if
УУ 
(
УУ 
	userNames
УУ 
.
УУ 
Count
УУ #
>
УУ$ %
$num
УУ& '
)
УУ' (
{
ФФ 
_logger
ХХ 
.
ХХ 

LogWarning
ХХ &
(
ХХ& '
$strХХ' Т
,ХХТ У
	userNamesХХФ Э
.ХХЭ Ю
FirstOrDefaultХХЮ ђ
(ХХђ ≠
)ХХ≠ Ѓ
.ХХЃ ѓ
KeyХХѓ ≤
)ХХ≤ ≥
;ХХ≥ і
}
ЦЦ 
}
ЧЧ 
return
ЩЩ 
ret
ЩЩ 
;
ЩЩ 
}
ЪЪ 	
}
ЫЫ 
}ЬЬ эт
РD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Controllers '
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private   
readonly   
UserManager   $
<  $ %
IUser  % *
>  * +
_userManager  , 8
;  8 9
private!! 
readonly!! 
SignInManager!! &
<!!& '
IUser!!' ,
>!!, -
_signInManager!!. <
;!!< =
private"" 
readonly"" 
ISession"" !
_session""" *
;""* +
private## 
readonly## !
IAuthorizationService## .!
_authorizationService##/ D
;##D E
private$$ 
readonly$$ 
ISiteService$$ %
_siteService$$& 2
;$$2 3
private%% 
readonly%% 
IDisplayManager%% (
<%%( )
User%%) -
>%%- .
_userDisplayManager%%/ B
;%%B C
private&& 
readonly&& 
	INotifier&& "
	_notifier&&# ,
;&&, -
private'' 
readonly'' 
IUserService'' %
_userService''& 2
;''2 3
private(( 
readonly(( 
IRoleService(( %
_roleService((& 2
;((2 3
private)) 
readonly))  
IUpdateModelAccessor)) - 
_updateModelAccessor)). B
;))B C
private++ 
readonly++ 
dynamic++  
New++! $
;++$ %
private,, 
readonly,, 
IHtmlLocalizer,, '
H,,( )
;,,) *
private-- 
readonly-- 
IStringLocalizer-- )
S--* +
;--+ ,
public// 
AdminController// 
(// 
IDisplayManager00 
<00 
User00  
>00  !
userDisplayManager00" 4
,004 5
SignInManager11 
<11 
IUser11 
>11  
signInManager11! .
,11. /!
IAuthorizationService22 ! 
authorizationService22" 6
,226 7
ISession33 
session33 
,33 
UserManager44 
<44 
IUser44 
>44 
userManager44 *
,44* +
IUserService55 
userService55 $
,55$ %
IRoleService66 
roleService66 $
,66$ %
	INotifier77 
notifier77 
,77 
ISiteService88 
siteService88 $
,88$ %
IShapeFactory99 
shapeFactory99 &
,99& '
IHtmlLocalizer:: 
<:: 
AdminController:: *
>::* +
htmlLocalizer::, 9
,::9 :
IStringLocalizer;; 
<;; 
AdminController;; ,
>;;, -
stringLocalizer;;. =
,;;= > 
IUpdateModelAccessor<<  
updateModelAccessor<<! 4
)<<4 5
{== 	
_userDisplayManager>> 
=>>  !
userDisplayManager>>" 4
;>>4 5
_signInManager?? 
=?? 
signInManager?? *
;??* +!
_authorizationService@@ !
=@@" # 
authorizationService@@$ 8
;@@8 9
_sessionAA 
=AA 
sessionAA 
;AA 
_userManagerBB 
=BB 
userManagerBB &
;BB& '
	_notifierCC 
=CC 
notifierCC  
;CC  !
_siteServiceDD 
=DD 
siteServiceDD &
;DD& '
_userServiceEE 
=EE 
userServiceEE &
;EE& '
_roleServiceFF 
=FF 
roleServiceFF &
;FF& ' 
_updateModelAccessorGG  
=GG! "
updateModelAccessorGG# 6
;GG6 7
NewII 
=II 
shapeFactoryII 
;II 
HJJ 
=JJ 
htmlLocalizerJJ 
;JJ 
SKK 
=KK 
stringLocalizerKK 
;KK  
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
ActionResultNN &
>NN& '
IndexNN( -
(NN- .
UserIndexOptionsNN. >
optionsNN? F
,NNF G
PagerParametersNNH W
pagerParametersNNX g
)NNg h
{OO 	
varQQ 
authUserQQ 
=QQ 
newQQ 
UserQQ #
(QQ# $
)QQ$ %
;QQ% &
ifSS 
(SS 
!SS 
awaitSS !
_authorizationServiceSS ,
.SS, -
AuthorizeAsyncSS- ;
(SS; <
UserSS< @
,SS@ A
PermissionsSSB M
.SSM N
	ViewUsersSSN W
,SSW X
authUserSSY a
)SSa b
)SSb c
{TT 
returnUU 
ForbidUU 
(UU 
)UU 
;UU  
}VV 
varXX 
siteSettingsXX 
=XX 
awaitXX $
_siteServiceXX% 1
.XX1 2 
GetSiteSettingsAsyncXX2 F
(XXF G
)XXG H
;XXH I
varYY 
pagerYY 
=YY 
newYY 
PagerYY !
(YY! "
pagerParametersYY" 1
,YY1 2
siteSettingsYY3 ?
.YY? @
PageSizeYY@ H
)YYH I
;YYI J
var[[ 
users[[ 
=[[ 
_session[[  
.[[  !
Query[[! &
<[[& '
User[[' +
,[[+ ,
	UserIndex[[- 6
>[[6 7
([[7 8
)[[8 9
;[[9 :
switch]] 
(]] 
options]] 
.]] 
Filter]] "
)]]" #
{^^ 
case__ 
UsersFilter__  
.__  !
Approved__! )
:__) *
breakaa 
;aa 
casebb 
UsersFilterbb  
.bb  !
Pendingbb! (
:bb( )
breakdd 
;dd 
caseee 
UsersFilteree  
.ee  !
EmailPendingee! -
:ee- .
breakgg 
;gg 
}hh 
ifjj 
(jj 
!jj 
stringjj 
.jj 
IsNullOrWhiteSpacejj *
(jj* +
optionsjj+ 2
.jj2 3
Searchjj3 9
)jj9 :
)jj: ;
{kk 
varll $
normalizedSearchUserNamell ,
=ll- .
_userManagerll/ ;
.ll; <
NormalizeNamell< I
(llI J
optionsllJ Q
.llQ R
SearchllR X
)llX Y
;llY Z
varmm !
normalizedSearchEMailmm )
=mm* +
_userManagermm, 8
.mm8 9
NormalizeEmailmm9 G
(mmG H
optionsmmH O
.mmO P
SearchmmP V
)mmV W
;mmW X
usersoo 
=oo 
usersoo 
.oo 
Whereoo #
(oo# $
uoo$ %
=>oo& (
uoo) *
.oo* +
NormalizedUserNameoo+ =
.oo= >
Containsoo> F
(ooF G$
normalizedSearchUserNameooG _
)oo_ `
||ooa c
uood e
.ooe f
NormalizedEmailoof u
.oou v
Containsoov ~
(oo~ "
normalizedSearchEMail	oo Ф
)
ooФ Х
)
ooХ Ц
;
ooЦ Ч
}pp 
switchrr 
(rr 
optionsrr 
.rr 
Orderrr !
)rr! "
{ss 
casett 

UsersOrdertt 
.tt  
Namett  $
:tt$ %
usersuu 
=uu 
usersuu !
.uu! "
OrderByuu" )
(uu) *
uuu* +
=>uu, .
uuu/ 0
.uu0 1
NormalizedUserNameuu1 C
)uuC D
;uuD E
breakvv 
;vv 
caseww 

UsersOrderww 
.ww  
Emailww  %
:ww% &
usersxx 
=xx 
usersxx !
.xx! "
OrderByxx" )
(xx) *
uxx* +
=>xx, .
uxx/ 0
.xx0 1
NormalizedEmailxx1 @
)xx@ A
;xxA B
breakyy 
;yy 
casezz 

UsersOrderzz 
.zz  

CreatedUtczz  *
:zz* +
break|| 
;|| 
case}} 

UsersOrder}} 
.}}  
LastLoginUtc}}  ,
:}}, -
break 
; 
}
АА 
var
ВВ 
count
ВВ 
=
ВВ 
await
ВВ 
users
ВВ #
.
ВВ# $

CountAsync
ВВ$ .
(
ВВ. /
)
ВВ/ 0
;
ВВ0 1
var
ДД 
results
ДД 
=
ДД 
await
ДД 
users
ДД  %
.
ЕЕ 
Skip
ЕЕ 
(
ЕЕ 
pager
ЕЕ 
.
ЕЕ 
GetStartIndex
ЕЕ )
(
ЕЕ) *
)
ЕЕ* +
)
ЕЕ+ ,
.
ЖЖ 
Take
ЖЖ 
(
ЖЖ 
pager
ЖЖ 
.
ЖЖ 
PageSize
ЖЖ $
)
ЖЖ$ %
.
ЗЗ 
	ListAsync
ЗЗ 
(
ЗЗ 
)
ЗЗ 
;
ЗЗ 
var
КК 
	routeData
КК 
=
КК 
new
КК 
	RouteData
КК  )
(
КК) *
)
КК* +
;
КК+ ,
	routeData
ЛЛ 
.
ЛЛ 
Values
ЛЛ 
.
ЛЛ 
Add
ЛЛ  
(
ЛЛ  !
$str
ЛЛ! 1
,
ЛЛ1 2
options
ЛЛ3 :
.
ЛЛ: ;
Filter
ЛЛ; A
)
ЛЛA B
;
ЛЛB C
	routeData
ММ 
.
ММ 
Values
ММ 
.
ММ 
Add
ММ  
(
ММ  !
$str
ММ! 1
,
ММ1 2
options
ММ3 :
.
ММ: ;
Search
ММ; A
)
ММA B
;
ММB C
	routeData
НН 
.
НН 
Values
НН 
.
НН 
Add
НН  
(
НН  !
$str
НН! 0
,
НН0 1
options
НН2 9
.
НН9 :
Order
НН: ?
)
НН? @
;
НН@ A
var
ПП 

pagerShape
ПП 
=
ПП 
(
ПП 
await
ПП #
New
ПП$ '
.
ПП' (
Pager
ПП( -
(
ПП- .
pager
ПП. 3
)
ПП3 4
)
ПП4 5
.
ПП5 6
TotalItemCount
ПП6 D
(
ППD E
count
ППE J
)
ППJ K
.
ППK L
	RouteData
ППL U
(
ППU V
	routeData
ППV _
)
ПП_ `
;
ПП` a
var
СС 
userEntries
СС 
=
СС 
new
СС !
List
СС" &
<
СС& '
	UserEntry
СС' 0
>
СС0 1
(
СС1 2
)
СС2 3
;
СС3 4
foreach
УУ 
(
УУ 
var
УУ 
user
УУ 
in
УУ  
results
УУ! (
)
УУ( )
{
ФФ 
userEntries
ХХ 
.
ХХ 
Add
ХХ 
(
ХХ  
new
ХХ  #
	UserEntry
ХХ$ -
{
ЦЦ 
UserId
ЧЧ 
=
ЧЧ 
user
ЧЧ !
.
ЧЧ! "
UserId
ЧЧ" (
,
ЧЧ( )
Shape
ШШ 
=
ШШ 
await
ШШ !!
_userDisplayManager
ШШ" 5
.
ШШ5 6
BuildDisplayAsync
ШШ6 G
(
ШШG H
user
ШШH L
,
ШШL M
updater
ШШN U
:
ШШU V"
_updateModelAccessor
ШШW k
.
ШШk l
ModelUpdater
ШШl x
,
ШШx y
displayTypeШШz Е
:ШШЕ Ж
$strШШЗ Х
)ШШХ Ц
}
ЩЩ 
)
ЪЪ 
;
ЪЪ 
}
ЫЫ 
var
ЭЭ 
model
ЭЭ 
=
ЭЭ 
new
ЭЭ !
UsersIndexViewModel
ЭЭ /
{
ЮЮ 
Users
ЯЯ 
=
ЯЯ 
userEntries
ЯЯ #
,
ЯЯ# $
Options
†† 
=
†† 
options
†† !
,
††! "
Pager
°° 
=
°° 

pagerShape
°° "
}
ҐҐ 
;
ҐҐ 
model
§§ 
.
§§ 
Options
§§ 
.
§§ 
UserFilters
§§ %
=
§§& '
new
§§( +
List
§§, 0
<
§§0 1
SelectListItem
§§1 ?
>
§§? @
(
§§@ A
)
§§A B
{
§§C D
new
•• 
SelectListItem
•• "
(
••" #
)
••# $
{
••% &
Text
••' +
=
••, -
S
••. /
[
••/ 0
$str
••0 5
]
••5 6
,
••6 7
Value
••8 =
=
••> ?
nameof
••@ F
(
••F G
UsersFilter
••G R
.
••R S
All
••S V
)
••V W
}
••X Y
,
••Y Z
}
©© 
;
©© 
model
ЂЂ 
.
ЂЂ 
Options
ЂЂ 
.
ЂЂ 
	UserSorts
ЂЂ #
=
ЂЂ$ %
new
ЂЂ& )
List
ЂЂ* .
<
ЂЂ. /
SelectListItem
ЂЂ/ =
>
ЂЂ= >
(
ЂЂ> ?
)
ЂЂ? @
{
ЂЂA B
new
ђђ 
SelectListItem
ђђ "
(
ђђ" #
)
ђђ# $
{
ђђ% &
Text
ђђ' +
=
ђђ, -
S
ђђ. /
[
ђђ/ 0
$str
ђђ0 6
]
ђђ6 7
,
ђђ7 8
Value
ђђ9 >
=
ђђ? @
nameof
ђђA G
(
ђђG H

UsersOrder
ђђH R
.
ђђR S
Name
ђђS W
)
ђђW X
}
ђђY Z
,
ђђZ [
new
≠≠ 
SelectListItem
≠≠ "
(
≠≠" #
)
≠≠# $
{
≠≠% &
Text
≠≠' +
=
≠≠, -
S
≠≠. /
[
≠≠/ 0
$str
≠≠0 7
]
≠≠7 8
,
≠≠8 9
Value
≠≠: ?
=
≠≠@ A
nameof
≠≠B H
(
≠≠H I

UsersOrder
≠≠I S
.
≠≠S T
Email
≠≠T Y
)
≠≠Y Z
}
≠≠[ \
,
≠≠\ ]
}
∞∞ 
;
∞∞ 
model
≤≤ 
.
≤≤ 
Options
≤≤ 
.
≤≤ 
UsersBulkAction
≤≤ )
=
≤≤* +
new
≤≤, /
List
≤≤0 4
<
≤≤4 5
SelectListItem
≤≤5 C
>
≤≤C D
(
≤≤D E
)
≤≤E F
{
≤≤G H
new
≥≥ 
SelectListItem
≥≥ "
(
≥≥" #
)
≥≥# $
{
≥≥% &
Text
≥≥' +
=
≥≥, -
S
≥≥. /
[
≥≥/ 0
$str
≥≥0 9
]
≥≥9 :
,
≥≥: ;
Value
≥≥< A
=
≥≥B C
nameof
≥≥D J
(
≥≥J K
UsersBulkAction
≥≥K Z
.
≥≥Z [
Approve
≥≥[ b
)
≥≥b c
}
≥≥d e
,
≥≥e f
new
іі 
SelectListItem
іі "
(
іі" #
)
іі# $
{
іі% &
Text
іі' +
=
іі, -
S
іі. /
[
іі/ 0
$str
іі0 8
]
іі8 9
,
іі9 :
Value
іі; @
=
ііA B
nameof
ііC I
(
ііI J
UsersBulkAction
ііJ Y
.
ііY Z
Enable
ііZ `
)
іі` a
}
ііb c
,
ііc d
new
µµ 
SelectListItem
µµ "
(
µµ" #
)
µµ# $
{
µµ% &
Text
µµ' +
=
µµ, -
S
µµ. /
[
µµ/ 0
$str
µµ0 9
]
µµ9 :
,
µµ: ;
Value
µµ< A
=
µµB C
nameof
µµD J
(
µµJ K
UsersBulkAction
µµK Z
.
µµZ [
Disable
µµ[ b
)
µµb c
}
µµd e
,
µµe f
new
ґґ 
SelectListItem
ґґ "
(
ґґ" #
)
ґґ# $
{
ґґ% &
Text
ґґ' +
=
ґґ, -
S
ґґ. /
[
ґґ/ 0
$str
ґґ0 8
]
ґґ8 9
,
ґґ9 :
Value
ґґ; @
=
ґґA B
nameof
ґґC I
(
ґґI J
UsersBulkAction
ґґJ Y
.
ґґY Z
Delete
ґґZ `
)
ґґ` a
}
ґґb c
}
ЈЈ 
;
ЈЈ 
return
єє 
View
єє 
(
єє 
model
єє 
)
єє 
;
єє 
}
ЇЇ 	
[
ЉЉ 	
HttpPost
ЉЉ	 
,
ЉЉ 

ActionName
ЉЉ 
(
ЉЉ 
$str
ЉЉ %
)
ЉЉ% &
]
ЉЉ& '
[
љљ 	
FormValueRequired
љљ	 
(
љљ 
$str
љљ *
)
љљ* +
]
љљ+ ,
public
ЊЊ 
ActionResult
ЊЊ 
IndexFilterPOST
ЊЊ +
(
ЊЊ+ ,!
UsersIndexViewModel
ЊЊ, ?
model
ЊЊ@ E
)
ЊЊE F
{
њњ 	
return
јј 
RedirectToAction
јј #
(
јј# $
$str
јј$ +
,
јј+ ,
new
јј- 0"
RouteValueDictionary
јј1 E
{
јјF G
{
ЅЅ 
$str
ЅЅ "
,
ЅЅ" #
model
ЅЅ$ )
.
ЅЅ) *
Options
ЅЅ* 1
.
ЅЅ1 2
Filter
ЅЅ2 8
}
ЅЅ9 :
,
ЅЅ: ;
{
¬¬ 
$str
¬¬ !
,
¬¬! "
model
¬¬# (
.
¬¬( )
Options
¬¬) 0
.
¬¬0 1
Order
¬¬1 6
}
¬¬7 8
,
¬¬8 9
{
√√ 
$str
√√ "
,
√√" #
model
√√$ )
.
√√) *
Options
√√* 1
.
√√1 2
Search
√√2 8
}
√√9 :
}
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
≈≈ 	
[
«« 	
HttpPost
««	 
,
«« 

ActionName
«« 
(
«« 
$str
«« %
)
««% &
]
««& '
[
»» 	
FormValueRequired
»»	 
(
»» 
$str
»» .
)
»». /
]
»»/ 0
public
…… 
async
…… 
Task
…… 
<
…… 
ActionResult
…… &
>
……& '
	IndexPOST
……( 1
(
……1 2
UserIndexOptions
……2 B
options
……C J
,
……J K
IEnumerable
……L W
<
……W X
string
……X ^
>
……^ _
itemIds
……` g
)
……g h
{
   	
var
ћћ 
authUser
ћћ 
=
ћћ 
new
ћћ 
User
ћћ #
(
ћћ# $
)
ћћ$ %
;
ћћ% &
if
ќќ 
(
ќќ 
!
ќќ 
await
ќќ #
_authorizationService
ќќ ,
.
ќќ, -
AuthorizeAsync
ќќ- ;
(
ќќ; <
User
ќќ< @
,
ќќ@ A
Permissions
ќќB M
.
ќќM N
ManageUsers
ќќN Y
,
ќќY Z
authUser
ќќ[ c
)
ќќc d
)
ќќd e
{
ѕѕ 
return
–– 
Forbid
–– 
(
–– 
)
–– 
;
––  
}
—— 
if
”” 
(
”” 
itemIds
”” 
?
”” 
.
”” 
Count
”” 
(
”” 
)
””  
>
””! "
$num
””# $
)
””$ %
{
‘‘ 
var
’’ 
checkedUsers
’’  
=
’’! "
await
’’# (
_session
’’) 1
.
’’1 2
Query
’’2 7
<
’’7 8
User
’’8 <
,
’’< =
	UserIndex
’’> G
>
’’G H
(
’’H I
)
’’I J
.
’’J K
Where
’’K P
(
’’P Q
x
’’Q R
=>
’’S U
x
’’V W
.
’’W X
UserId
’’X ^
.
’’^ _
IsIn
’’_ c
(
’’c d
itemIds
’’d k
)
’’k l
)
’’l m
.
’’m n
	ListAsync
’’n w
(
’’w x
)
’’x y
;
’’y z
foreach
ўў 
(
ўў 
var
ўў 
user
ўў !
in
ўў" $
checkedUsers
ўў% 1
)
ўў1 2
{
ЏЏ 
if
џџ 
(
џџ 
!
џџ 
await
џџ #
_authorizationService
џџ 4
.
џџ4 5
AuthorizeAsync
џџ5 C
(
џџC D
User
џџD H
,
џџH I
Permissions
џџJ U
.
џџU V
ManageUsers
џџV a
,
џџa b
user
џџc g
)
џџg h
)
џџh i
{
№№ 
return
ЁЁ 
Forbid
ЁЁ %
(
ЁЁ% &
)
ЁЁ& '
;
ЁЁ' (
}
ёё 
}
яя 
switch
бб 
(
бб 
options
бб 
.
бб  

BulkAction
бб  *
)
бб* +
{
вв 
case
гг 
UsersBulkAction
гг (
.
гг( )
None
гг) -
:
гг- .
break
дд 
;
дд 
case
ее 
UsersBulkAction
ее (
.
ее( )
Approve
ее) 0
:
ее0 1
foreach
жж 
(
жж  !
var
жж! $
user
жж% )
in
жж* ,
checkedUsers
жж- 9
)
жж9 :
{
зз 
if
ии 
(
ии  
!
ии  !
await
ии! &
_userManager
ии' 3
.
ии3 4#
IsEmailConfirmedAsync
ии4 I
(
ииI J
user
ииJ N
)
ииN O
)
ииO P
{
йй 
var
кк  #
token
кк$ )
=
кк* +
await
кк, 1
_userManager
кк2 >
.
кк> ?1
#GenerateEmailConfirmationTokenAsync
кк? b
(
ккb c
user
ккc g
)
ккg h
;
ккh i
await
лл  %
_userManager
лл& 2
.
лл2 3
ConfirmEmailAsync
лл3 D
(
ллD E
user
ллE I
,
ллI J
token
ллK P
)
ллP Q
;
ллQ R
	_notifier
мм  )
.
мм) *
Success
мм* 1
(
мм1 2
H
мм2 3
[
мм3 4
$str
мм4 U
,
ммU V
user
ммW [
.
мм[ \
UserName
мм\ d
]
ммd e
)
ммe f
;
ммf g
}
нн 
}
оо 
break
пп 
;
пп 
case
рр 
UsersBulkAction
рр (
.
рр( )
Delete
рр) /
:
рр/ 0
foreach
сс 
(
сс  !
var
сс! $
user
сс% )
in
сс* ,
checkedUsers
сс- 9
)
сс9 :
{
тт 
if
уу 
(
уу  
String
уу  &
.
уу& '
Equals
уу' -
(
уу- .
user
уу. 2
.
уу2 3
UserId
уу3 9
,
уу9 :
User
уу; ?
.
уу? @
FindFirstValue
уу@ N
(
ууN O

ClaimTypes
ууO Y
.
ууY Z
NameIdentifier
ууZ h
)
ууh i
,
ууi j
StringComparison
ууk {
.
уу{ | 
OrdinalIgnoreCaseуу| Н
)ууН О
)ууО П
{
фф 
continue
хх  (
;
хх( )
}
цц 
await
чч !
_userManager
чч" .
.
чч. /
DeleteAsync
чч/ :
(
чч: ;
user
чч; ?
)
чч? @
;
чч@ A
	_notifier
шш %
.
шш% &
Success
шш& -
(
шш- .
H
шш. /
[
шш/ 0
$str
шш0 P
,
шшP Q
user
шшR V
.
шшV W
UserName
шшW _
]
шш_ `
)
шш` a
;
шшa b
}
щщ 
break
ъъ 
;
ъъ 
case
ыы 
UsersBulkAction
ыы (
.
ыы( )
Disable
ыы) 0
:
ыы0 1
foreach
ьь 
(
ьь  !
var
ьь! $
user
ьь% )
in
ьь* ,
checkedUsers
ьь- 9
)
ьь9 :
{
ээ 
if
юю 
(
юю  
String
юю  &
.
юю& '
Equals
юю' -
(
юю- .
user
юю. 2
.
юю2 3
UserId
юю3 9
,
юю9 :
User
юю; ?
.
юю? @
FindFirstValue
юю@ N
(
ююN O

ClaimTypes
ююO Y
.
ююY Z
NameIdentifier
ююZ h
)
ююh i
,
ююi j
StringComparison
ююk {
.
юю{ | 
OrdinalIgnoreCaseюю| Н
)ююН О
)ююО П
{
€€ 
continue
АА  (
;
АА( )
}
ББ 
user
ВВ  
.
ВВ  !
	IsEnabled
ВВ! *
=
ВВ+ ,
false
ВВ- 2
;
ВВ2 3
await
ГГ !
_userManager
ГГ" .
.
ГГ. /
UpdateAsync
ГГ/ :
(
ГГ: ;
user
ГГ; ?
)
ГГ? @
;
ГГ@ A
	_notifier
ДД %
.
ДД% &
Success
ДД& -
(
ДД- .
H
ДД. /
[
ДД/ 0
$str
ДД0 Q
,
ДДQ R
user
ДДS W
.
ДДW X
UserName
ДДX `
]
ДД` a
)
ДДa b
;
ДДb c
}
ЕЕ 
break
ЖЖ 
;
ЖЖ 
case
ЗЗ 
UsersBulkAction
ЗЗ (
.
ЗЗ( )
Enable
ЗЗ) /
:
ЗЗ/ 0
foreach
ИИ 
(
ИИ  !
var
ИИ! $
user
ИИ% )
in
ИИ* ,
checkedUsers
ИИ- 9
)
ИИ9 :
{
ЙЙ 
if
КК 
(
КК  
String
КК  &
.
КК& '
Equals
КК' -
(
КК- .
user
КК. 2
.
КК2 3
UserId
КК3 9
,
КК9 :
User
КК; ?
.
КК? @
FindFirstValue
КК@ N
(
ККN O

ClaimTypes
ККO Y
.
ККY Z
NameIdentifier
ККZ h
)
ККh i
,
ККi j
StringComparison
ККk {
.
КК{ | 
OrdinalIgnoreCaseКК| Н
)ККН О
)ККО П
{
ЛЛ 
continue
ММ  (
;
ММ( )
}
НН 
user
ОО  
.
ОО  !
	IsEnabled
ОО! *
=
ОО+ ,
true
ОО- 1
;
ОО1 2
await
ПП !
_userManager
ПП" .
.
ПП. /
UpdateAsync
ПП/ :
(
ПП: ;
user
ПП; ?
)
ПП? @
;
ПП@ A
	_notifier
РР %
.
РР% &
Success
РР& -
(
РР- .
H
РР. /
[
РР/ 0
$str
РР0 P
,
РРP Q
user
РРR V
.
РРV W
UserName
РРW _
]
РР_ `
)
РР` a
;
РРa b
}
СС 
break
ТТ 
;
ТТ 
default
УУ 
:
УУ 
throw
ФФ 
new
ФФ !)
ArgumentOutOfRangeException
ФФ" =
(
ФФ= >
)
ФФ> ?
;
ФФ? @
}
ХХ 
}
ЦЦ 
return
ШШ 
RedirectToAction
ШШ #
(
ШШ# $
$str
ШШ$ +
)
ШШ+ ,
;
ШШ, -
}
ЩЩ 	
public
ЪЪ 
async
ЪЪ 
Task
ЪЪ 
<
ЪЪ 
IActionResult
ЪЪ '
>
ЪЪ' (
Create
ЪЪ) /
(
ЪЪ/ 0
)
ЪЪ0 1
{
ЫЫ 	
var
ЬЬ 
user
ЬЬ 
=
ЬЬ 
new
ЬЬ 
User
ЬЬ 
(
ЬЬ  
)
ЬЬ  !
;
ЬЬ! "
if
ЮЮ 
(
ЮЮ 
!
ЮЮ 
await
ЮЮ #
_authorizationService
ЮЮ ,
.
ЮЮ, -
AuthorizeAsync
ЮЮ- ;
(
ЮЮ; <
User
ЮЮ< @
,
ЮЮ@ A
Permissions
ЮЮB M
.
ЮЮM N
	ViewUsers
ЮЮN W
,
ЮЮW X
user
ЮЮY ]
)
ЮЮ] ^
)
ЮЮ^ _
{
ЯЯ 
return
†† 
Forbid
†† 
(
†† 
)
†† 
;
††  
}
°° 
var
££ 
shape
££ 
=
££ 
await
££ !
_userDisplayManager
££ 1
.
££1 2
BuildEditorAsync
££2 B
(
££B C
user
££C G
,
££G H
updater
££I P
:
££P Q"
_updateModelAccessor
££R f
.
££f g
ModelUpdater
££g s
,
££s t
isNew
££u z
:
££z {
true££| А
)££А Б
;££Б В
return
•• 
View
•• 
(
•• 
shape
•• 
)
•• 
;
•• 
}
¶¶ 	
[
®® 	
HttpPost
®®	 
]
®® 
[
©© 	

ActionName
©©	 
(
©© 
nameof
©© 
(
©© 
Create
©© !
)
©©! "
)
©©" #
]
©©# $
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
IActionResult
™™ '
>
™™' (

CreatePost
™™) 3
(
™™3 4
)
™™4 5
{
ЂЂ 	
var
ђђ 
user
ђђ 
=
ђђ 
new
ђђ 
User
ђђ 
(
ђђ  
)
ђђ  !
;
ђђ! "
if
ЃЃ 
(
ЃЃ 
!
ЃЃ 
await
ЃЃ #
_authorizationService
ЃЃ ,
.
ЃЃ, -
AuthorizeAsync
ЃЃ- ;
(
ЃЃ; <
User
ЃЃ< @
,
ЃЃ@ A
Permissions
ЃЃB M
.
ЃЃM N
	ViewUsers
ЃЃN W
,
ЃЃW X
user
ЃЃY ]
)
ЃЃ] ^
)
ЃЃ^ _
{
ѓѓ 
return
∞∞ 
Forbid
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞  
}
±± 
var
≥≥ 
shape
≥≥ 
=
≥≥ 
await
≥≥ !
_userDisplayManager
≥≥ 1
.
≥≥1 2
UpdateEditorAsync
≥≥2 C
(
≥≥C D
user
≥≥D H
,
≥≥H I
updater
≥≥J Q
:
≥≥Q R"
_updateModelAccessor
≥≥S g
.
≥≥g h
ModelUpdater
≥≥h t
,
≥≥t u
isNew
≥≥v {
:
≥≥{ |
true≥≥} Б
)≥≥Б В
;≥≥В Г
if
µµ 
(
µµ 
!
µµ 

ModelState
µµ 
.
µµ 
IsValid
µµ #
)
µµ# $
{
ґґ 
return
ЈЈ 
View
ЈЈ 
(
ЈЈ 
shape
ЈЈ !
)
ЈЈ! "
;
ЈЈ" #
}
ЄЄ 
await
ЇЇ 
_userService
ЇЇ 
.
ЇЇ 
CreateUserAsync
ЇЇ .
(
ЇЇ. /
user
ЇЇ/ 3
,
ЇЇ3 4
null
ЇЇ5 9
,
ЇЇ9 :

ModelState
ЇЇ; E
.
ЇЇE F
AddModelError
ЇЇF S
)
ЇЇS T
;
ЇЇT U
if
ЉЉ 
(
ЉЉ 
!
ЉЉ 

ModelState
ЉЉ 
.
ЉЉ 
IsValid
ЉЉ #
)
ЉЉ# $
{
љљ 
return
ЊЊ 
View
ЊЊ 
(
ЊЊ 
shape
ЊЊ !
)
ЊЊ! "
;
ЊЊ" #
}
њњ 
	_notifier
ЅЅ 
.
ЅЅ 
Success
ЅЅ 
(
ЅЅ 
H
ЅЅ 
[
ЅЅ  
$str
ЅЅ  <
]
ЅЅ< =
)
ЅЅ= >
;
ЅЅ> ?
return
√√ 
RedirectToAction
√√ #
(
√√# $
nameof
√√$ *
(
√√* +
Index
√√+ 0
)
√√0 1
)
√√1 2
;
√√2 3
}
ƒƒ 	
public
∆∆ 
async
∆∆ 
Task
∆∆ 
<
∆∆ 
IActionResult
∆∆ '
>
∆∆' (
Edit
∆∆) -
(
∆∆- .
string
∆∆. 4
id
∆∆5 7
,
∆∆7 8
string
∆∆9 ?
	returnUrl
∆∆@ I
)
∆∆I J
{
«« 	
var
…… 
editingOwnUser
…… 
=
……  
false
……! &
;
……& '
if
   
(
   
String
   
.
   
IsNullOrEmpty
   $
(
  $ %
id
  % '
)
  ' (
)
  ( )
{
ЋЋ 
id
ћћ 
=
ћћ 
User
ћћ 
.
ћћ 
FindFirstValue
ћћ (
(
ћћ( )

ClaimTypes
ћћ) 3
.
ћћ3 4
NameIdentifier
ћћ4 B
)
ћћB C
;
ћћC D
if
ЌЌ 
(
ЌЌ 
!
ЌЌ 
await
ЌЌ #
_authorizationService
ЌЌ 0
.
ЌЌ0 1
AuthorizeAsync
ЌЌ1 ?
(
ЌЌ? @
User
ЌЌ@ D
,
ЌЌD E
Permissions
ЌЌF Q
.
ЌЌQ R&
ManageOwnUserInformation
ЌЌR j
)
ЌЌj k
)
ЌЌk l
{
ќќ 
return
ѕѕ 
Forbid
ѕѕ !
(
ѕѕ! "
)
ѕѕ" #
;
ѕѕ# $
}
–– 
editingOwnUser
—— 
=
——  
true
——! %
;
——% &
}
““ 
var
‘‘ 
user
‘‘ 
=
‘‘ 
await
‘‘ 
_userManager
‘‘ )
.
‘‘) *
FindByIdAsync
‘‘* 7
(
‘‘7 8
id
‘‘8 :
)
‘‘: ;
as
‘‘< >
User
‘‘? C
;
‘‘C D
if
’’ 
(
’’ 
user
’’ 
==
’’ 
null
’’ 
)
’’ 
{
÷÷ 
return
„„ 
NotFound
„„ 
(
„„  
)
„„  !
;
„„! "
}
ЎЎ 
if
ЏЏ 
(
ЏЏ 
!
ЏЏ 
editingOwnUser
ЏЏ 
&&
ЏЏ  "
!
ЏЏ# $
await
ЏЏ$ )#
_authorizationService
ЏЏ* ?
.
ЏЏ? @
AuthorizeAsync
ЏЏ@ N
(
ЏЏN O
User
ЏЏO S
,
ЏЏS T
Permissions
ЏЏU `
.
ЏЏ` a
	ViewUsers
ЏЏa j
,
ЏЏj k
user
ЏЏl p
)
ЏЏp q
)
ЏЏq r
{
џџ 
return
№№ 
Forbid
№№ 
(
№№ 
)
№№ 
;
№№  
}
ЁЁ 
var
яя 
shape
яя 
=
яя 
await
яя !
_userDisplayManager
яя 1
.
яя1 2
BuildEditorAsync
яя2 B
(
яяB C
user
яяC G
,
яяG H
updater
яяI P
:
яяP Q"
_updateModelAccessor
яяR f
.
яяf g
ModelUpdater
яяg s
,
яяs t
isNew
яяu z
:
яяz {
falseяя| Б
)яяБ В
;яяВ Г
ViewData
бб 
[
бб 
$str
бб  
]
бб  !
=
бб" #
	returnUrl
бб$ -
;
бб- .
return
гг 
View
гг 
(
гг 
shape
гг 
)
гг 
;
гг 
}
дд 	
[
жж 	
HttpPost
жж	 
]
жж 
[
зз 	

ActionName
зз	 
(
зз 
nameof
зз 
(
зз 
Edit
зз 
)
зз  
)
зз  !
]
зз! "
public
ии 
async
ии 
Task
ии 
<
ии 
IActionResult
ии '
>
ии' (
EditPost
ии) 1
(
ии1 2
string
ии2 8
id
ии9 ;
,
ии; <
string
ии= C
	returnUrl
ииD M
)
ииM N
{
йй 	
var
лл 
editingOwnUser
лл 
=
лл  
false
лл! &
;
лл& '
if
мм 
(
мм 
String
мм 
.
мм 
IsNullOrEmpty
мм $
(
мм$ %
id
мм% '
)
мм' (
)
мм( )
{
нн 
editingOwnUser
оо 
=
оо  
true
оо! %
;
оо% &
id
пп 
=
пп 
User
пп 
.
пп 
FindFirstValue
пп (
(
пп( )

ClaimTypes
пп) 3
.
пп3 4
NameIdentifier
пп4 B
)
ппB C
;
ппC D
if
рр 
(
рр 
!
рр 
await
рр #
_authorizationService
рр 0
.
рр0 1
AuthorizeAsync
рр1 ?
(
рр? @
User
рр@ D
,
ррD E
Permissions
ррF Q
.
ррQ R&
ManageOwnUserInformation
ррR j
)
ррj k
)
ррk l
{
сс 
return
тт 
Forbid
тт !
(
тт! "
)
тт" #
;
тт# $
}
уу 
}
фф 
var
цц 
user
цц 
=
цц 
await
цц 
_userManager
цц )
.
цц) *
FindByIdAsync
цц* 7
(
цц7 8
id
цц8 :
)
цц: ;
as
цц< >
User
цц? C
;
ццC D
if
чч 
(
чч 
user
чч 
==
чч 
null
чч 
)
чч 
{
шш 
return
щщ 
NotFound
щщ 
(
щщ  
)
щщ  !
;
щщ! "
}
ъъ 
if
ьь 
(
ьь 
!
ьь 
editingOwnUser
ьь 
&&
ьь  "
!
ьь# $
await
ьь$ )#
_authorizationService
ьь* ?
.
ьь? @
AuthorizeAsync
ьь@ N
(
ььN O
User
ььO S
,
ььS T
Permissions
ььU `
.
ьь` a
	ViewUsers
ььa j
,
ььj k
user
ььl p
)
ььp q
)
ььq r
{
ээ 
return
юю 
Forbid
юю 
(
юю 
)
юю 
;
юю  
}
€€ 
var
ББ 
shape
ББ 
=
ББ 
await
ББ !
_userDisplayManager
ББ 1
.
ББ1 2
UpdateEditorAsync
ББ2 C
(
ББC D
user
ББD H
,
ББH I
updater
ББJ Q
:
ББQ R"
_updateModelAccessor
ББS g
.
ББg h
ModelUpdater
ББh t
,
ББt u
isNew
ББv {
:
ББ{ |
falseББ} В
)ББВ Г
;ББГ Д
if
ГГ 
(
ГГ 
!
ГГ 

ModelState
ГГ 
.
ГГ 
IsValid
ГГ #
)
ГГ# $
{
ДД 
return
ЕЕ 
View
ЕЕ 
(
ЕЕ 
shape
ЕЕ !
)
ЕЕ! "
;
ЕЕ" #
}
ЖЖ 
var
ИИ 
result
ИИ 
=
ИИ 
await
ИИ 
_userManager
ИИ +
.
ИИ+ ,
UpdateAsync
ИИ, 7
(
ИИ7 8
user
ИИ8 <
)
ИИ< =
;
ИИ= >
foreach
КК 
(
КК 
var
КК 
error
КК 
in
КК !
result
КК" (
.
КК( )
Errors
КК) /
)
КК/ 0
{
ЛЛ 

ModelState
ММ 
.
ММ 
AddModelError
ММ (
(
ММ( )
string
ММ) /
.
ММ/ 0
Empty
ММ0 5
,
ММ5 6
error
ММ7 <
.
ММ< =
Description
ММ= H
)
ММH I
;
ММI J
}
НН 
if
ПП 
(
ПП 
!
ПП 

ModelState
ПП 
.
ПП 
IsValid
ПП #
)
ПП# $
{
РР 
return
СС 
View
СС 
(
СС 
shape
СС !
)
СС! "
;
СС" #
}
ТТ 
if
ФФ 
(
ФФ 
String
ФФ 
.
ФФ 
Equals
ФФ 
(
ФФ 
User
ФФ "
.
ФФ" #
FindFirstValue
ФФ# 1
(
ФФ1 2

ClaimTypes
ФФ2 <
.
ФФ< =
NameIdentifier
ФФ= K
)
ФФK L
,
ФФL M
user
ФФN R
.
ФФR S
UserId
ФФS Y
,
ФФY Z
StringComparison
ФФ[ k
.
ФФk l
OrdinalIgnoreCase
ФФl }
)
ФФ} ~
)
ФФ~ 
{
ХХ 
await
ЦЦ 
_signInManager
ЦЦ $
.
ЦЦ$ % 
RefreshSignInAsync
ЦЦ% 7
(
ЦЦ7 8
user
ЦЦ8 <
)
ЦЦ< =
;
ЦЦ= >
}
ЧЧ 
	_notifier
ЩЩ 
.
ЩЩ 
Success
ЩЩ 
(
ЩЩ 
H
ЩЩ 
[
ЩЩ  
$str
ЩЩ  <
]
ЩЩ< =
)
ЩЩ= >
;
ЩЩ> ?
if
ЫЫ 
(
ЫЫ 
editingOwnUser
ЫЫ 
)
ЫЫ 
{
ЬЬ 
if
ЭЭ 
(
ЭЭ 
!
ЭЭ 
String
ЭЭ 
.
ЭЭ 
IsNullOrEmpty
ЭЭ )
(
ЭЭ) *
	returnUrl
ЭЭ* 3
)
ЭЭ3 4
)
ЭЭ4 5
{
ЮЮ 
return
ЯЯ 
LocalRedirect
ЯЯ (
(
ЯЯ( )
	returnUrl
ЯЯ) 2
)
ЯЯ2 3
;
ЯЯ3 4
}
†† 
return
ҐҐ 
RedirectToAction
ҐҐ '
(
ҐҐ' (
nameof
ҐҐ( .
(
ҐҐ. /
Edit
ҐҐ/ 3
)
ҐҐ3 4
)
ҐҐ4 5
;
ҐҐ5 6
}
££ 
else
§§ 
{
•• 
if
¶¶ 
(
¶¶ 
!
¶¶ 
String
¶¶ 
.
¶¶ 
IsNullOrEmpty
¶¶ )
(
¶¶) *
	returnUrl
¶¶* 3
)
¶¶3 4
)
¶¶4 5
{
ІІ 
return
®® 
LocalRedirect
®® (
(
®®( )
	returnUrl
®®) 2
)
®®2 3
;
®®3 4
}
©© 
return
ЂЂ 
RedirectToAction
ЂЂ '
(
ЂЂ' (
nameof
ЂЂ( .
(
ЂЂ. /
Index
ЂЂ/ 4
)
ЂЂ4 5
)
ЂЂ5 6
;
ЂЂ6 7
}
ђђ 
}
≠≠ 	
[
ѓѓ 	
HttpPost
ѓѓ	 
]
ѓѓ 
public
∞∞ 
async
∞∞ 
Task
∞∞ 
<
∞∞ 
IActionResult
∞∞ '
>
∞∞' (
Delete
∞∞) /
(
∞∞/ 0
string
∞∞0 6
id
∞∞7 9
)
∞∞9 :
{
±± 	
var
≤≤ 
user
≤≤ 
=
≤≤ 
await
≤≤ 
_userManager
≤≤ )
.
≤≤) *
FindByIdAsync
≤≤* 7
(
≤≤7 8
id
≤≤8 :
)
≤≤: ;
as
≤≤< >
User
≤≤? C
;
≤≤C D
if
іі 
(
іі 
user
іі 
==
іі 
null
іі 
)
іі 
{
µµ 
return
ґґ 
NotFound
ґґ 
(
ґґ  
)
ґґ  !
;
ґґ! "
}
ЈЈ 
if
єє 
(
єє 
!
єє 
await
єє #
_authorizationService
єє ,
.
єє, -
AuthorizeAsync
єє- ;
(
єє; <
User
єє< @
,
єє@ A
Permissions
єєB M
.
єєM N
ManageUsers
єєN Y
,
єєY Z
user
єє[ _
)
єє_ `
)
єє` a
{
ЇЇ 
return
її 
Forbid
її 
(
її 
)
її 
;
її  
}
ЉЉ 
var
ЊЊ 
result
ЊЊ 
=
ЊЊ 
await
ЊЊ 
_userManager
ЊЊ +
.
ЊЊ+ ,
DeleteAsync
ЊЊ, 7
(
ЊЊ7 8
user
ЊЊ8 <
)
ЊЊ< =
;
ЊЊ= >
if
јј 
(
јј 
result
јј 
.
јј 
	Succeeded
јј  
)
јј  !
{
ЅЅ 
	_notifier
¬¬ 
.
¬¬ 
Success
¬¬ !
(
¬¬! "
H
¬¬" #
[
¬¬# $
$str
¬¬$ @
]
¬¬@ A
)
¬¬A B
;
¬¬B C
}
√√ 
else
ƒƒ 
{
≈≈ 
_session
∆∆ 
.
∆∆ 
Cancel
∆∆ 
(
∆∆  
)
∆∆  !
;
∆∆! "
	_notifier
»» 
.
»» 
Error
»» 
(
»»  
H
»»  !
[
»»! "
$str
»»" >
]
»»> ?
)
»»? @
;
»»@ A
foreach
   
(
   
var
   
error
   "
in
  # %
result
  & ,
.
  , -
Errors
  - 3
)
  3 4
{
ЋЋ 
	_notifier
ћћ 
.
ћћ 
Error
ћћ #
(
ћћ# $
H
ћћ$ %
[
ћћ% &
error
ћћ& +
.
ћћ+ ,
Description
ћћ, 7
]
ћћ7 8
)
ћћ8 9
;
ћћ9 :
}
ЌЌ 
}
ќќ 
return
–– 
RedirectToAction
–– #
(
––# $
nameof
––$ *
(
––* +
Index
––+ 0
)
––0 1
)
––1 2
;
––2 3
}
—— 	
public
”” 
async
”” 
Task
”” 
<
”” 
IActionResult
”” '
>
””' (
EditPassword
””) 5
(
””5 6
string
””6 <
id
””= ?
)
””? @
{
‘‘ 	
var
’’ 
user
’’ 
=
’’ 
await
’’ 
_userManager
’’ )
.
’’) *
FindByIdAsync
’’* 7
(
’’7 8
id
’’8 :
)
’’: ;
as
’’< >
User
’’? C
;
’’C D
if
„„ 
(
„„ 
user
„„ 
==
„„ 
null
„„ 
)
„„ 
{
ЎЎ 
return
ўў 
NotFound
ўў 
(
ўў  
)
ўў  !
;
ўў! "
}
ЏЏ 
if
№№ 
(
№№ 
!
№№ 
await
№№ #
_authorizationService
№№ ,
.
№№, -
AuthorizeAsync
№№- ;
(
№№; <
User
№№< @
,
№№@ A
Permissions
№№B M
.
№№M N
ManageUsers
№№N Y
,
№№Y Z
user
№№[ _
)
№№_ `
)
№№` a
{
ЁЁ 
return
ёё 
Forbid
ёё 
(
ёё 
)
ёё 
;
ёё  
}
яя 
var
бб 
model
бб 
=
бб 
new
бб $
ResetPasswordViewModel
бб 2
{
бб3 4
Email
бб5 :
=
бб; <
user
бб= A
.
ббA B
Email
ббB G
}
ббH I
;
ббI J
return
гг 
View
гг 
(
гг 
model
гг 
)
гг 
;
гг 
}
дд 	
[
жж 	
HttpPost
жж	 
]
жж 
public
зз 
async
зз 
Task
зз 
<
зз 
IActionResult
зз '
>
зз' (
EditPassword
зз) 5
(
зз5 6$
ResetPasswordViewModel
зз6 L
model
ззM R
)
ззR S
{
ии 	
var
йй 
user
йй 
=
йй 
await
йй 
_userManager
йй )
.
йй) *
FindByEmailAsync
йй* :
(
йй: ;
model
йй; @
.
йй@ A
Email
ййA F
)
ййF G
as
ййH J
User
ййK O
;
ййO P
if
лл 
(
лл 
user
лл 
==
лл 
null
лл 
)
лл 
{
мм 
return
нн 
NotFound
нн 
(
нн  
)
нн  !
;
нн! "
}
оо 
if
рр 
(
рр 
!
рр 
await
рр #
_authorizationService
рр ,
.
рр, -
AuthorizeAsync
рр- ;
(
рр; <
User
рр< @
,
рр@ A
Permissions
ррB M
.
ррM N
ManageUsers
ррN Y
,
ррY Z
user
рр[ _
)
рр_ `
)
рр` a
{
сс 
return
тт 
Forbid
тт 
(
тт 
)
тт 
;
тт  
}
уу 
if
хх 
(
хх 

ModelState
хх 
.
хх 
IsValid
хх "
)
хх" #
{
цц 
var
чч 
token
чч 
=
чч 
await
чч !
_userManager
чч" .
.
чч. /-
GeneratePasswordResetTokenAsync
чч/ N
(
ччN O
user
ччO S
)
ччS T
;
ччT U
if
щщ 
(
щщ 
await
щщ 
_userService
щщ &
.
щщ& ' 
ResetPasswordAsync
щщ' 9
(
щщ9 :
model
щщ: ?
.
щщ? @
Email
щщ@ E
,
щщE F
token
щщG L
,
щщL M
model
щщN S
.
щщS T
NewPassword
щщT _
,
щщ_ `

ModelState
щщa k
.
щщk l
AddModelError
щщl y
)
щщy z
)
щщz {
{
ъъ 
	_notifier
ыы 
.
ыы 
Success
ыы %
(
ыы% &
H
ыы& '
[
ыы' (
$str
ыы( E
]
ыыE F
)
ыыF G
;
ыыG H
return
ээ 
RedirectToAction
ээ +
(
ээ+ ,
nameof
ээ, 2
(
ээ2 3
Index
ээ3 8
)
ээ8 9
)
ээ9 :
;
ээ: ;
}
юю 
}
€€ 
return
ББ 
View
ББ 
(
ББ 
model
ББ 
)
ББ 
;
ББ 
}
ВВ 	
}
ГГ 
}ДД Ѕ;
ЦD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\ChangeEmailController.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Controllers '
{ 
[ 
Feature 
( 
$str ,
), -
]- .
public 

class !
ChangeEmailController &
:' (

Controller) 3
{ 
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public !
ChangeEmailController $
($ %
IUserService 
userService $
,$ %
UserManager 
< 
IUser 
> 
userManager *
,* +
ISiteService 
siteService $
,$ %
IStringLocalizer 
< !
ChangeEmailController 2
>2 3
stringLocalizer4 C
)C D
{ 	
_userService 
= 
userService &
;& '
_userManager 
= 
userManager &
;& '
_siteService   
=   
siteService   &
;  & '
S"" 
="" 
stringLocalizer"" 
;""  
}## 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
	Authorize&&	 
]&& 
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' (
Index'') .
(''. /
)''/ 0
{(( 	
if)) 
()) 
!)) 
()) 
await)) 
_siteService)) $
.))$ % 
GetSiteSettingsAsync))% 9
())9 :
))): ;
))); <
.))< =
As))= ?
<))? @
ChangeEmailSettings))@ S
>))S T
())T U
)))U V
.))V W
AllowChangeEmail))W g
)))g h
{** 
return++ 
NotFound++ 
(++  
)++  !
;++! "
},, 
var.. 
user.. 
=.. 
await.. 
_userService.. )
...) *%
GetAuthenticatedUserAsync..* C
(..C D
User..D H
)..H I
;..I J
return00 
View00 
(00 
new00  
ChangeEmailViewModel00 0
(000 1
)001 2
{003 4
Email005 :
=00; <
(00= >
(00> ?
User00? C
)00C D
user00D H
)00H I
.00I J
Email00J O
}00P Q
)00Q R
;00R S
}11 	
[33 	
HttpPost33	 
]33 
[44 	$
ValidateAntiForgeryToken44	 !
]44! "
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
Index55) .
(55. / 
ChangeEmailViewModel55/ C
model55D I
)55I J
{66 	
if77 
(77 
!77 
(77 
await77 
_siteService77 $
.77$ % 
GetSiteSettingsAsync77% 9
(779 :
)77: ;
)77; <
.77< =
As77= ?
<77? @
ChangeEmailSettings77@ S
>77S T
(77T U
)77U V
.77V W
AllowChangeEmail77W g
)77g h
{88 
return99 
NotFound99 
(99  
)99  !
;99! "
}:: 
if<< 
(<< 

ModelState<< 
.<< 
IsValid<< "
)<<" #
{== 
var>> 
user>> 
=>> 
await>>  
_userService>>! -
.>>- .%
GetAuthenticatedUserAsync>>. G
(>>G H
User>>H L
)>>L M
;>>M N
var?? 
userWithEmail?? !
=??" #
await??$ )
_userManager??* 6
.??6 7
FindByEmailAsync??7 G
(??G H
model??H M
.??M N
Email??N S
)??S T
;??T U
ifAA 
(AA 
(AA 
(AA 
UserAA 
)AA 
userAA 
)AA  
.AA  !
EmailAA! &
.AA& '
EqualsAA' -
(AA- .
modelAA. 3
.AA3 4
EmailAA4 9
,AA9 :
StringComparisonAA; K
.AAK L
OrdinalIgnoreCaseAAL ]
)AA] ^
)AA^ _
{BB 

ModelStateCC 
.CC 
AddModelErrorCC ,
(CC, -
$strCC- 4
,CC4 5
SCC6 7
[CC7 8
$strCC8 a
]CCa b
)CCb c
;CCc d
}DD 
elseEE 
ifEE 
(EE 
userWithEmailEE &
!=EE' )
nullEE* .
&&EE/ 1
userEE2 6
.EE6 7
UserNameEE7 ?
!=EE@ B
userWithEmailEEC P
.EEP Q
UserNameEEQ Y
)EEY Z
{FF 

ModelStateGG 
.GG 
AddModelErrorGG ,
(GG, -
$strGG- 4
,GG4 5
SGG6 7
[GG7 8
$strGG8 d
]GGd e
)GGe f
;GGf g
}HH 
elseII 
{JJ 
ifKK 
(KK 
awaitKK 
_userServiceKK *
.KK* +
ChangeEmailAsyncKK+ ;
(KK; <
userKK< @
,KK@ A
modelKKB G
.KKG H
EmailKKH M
,KKM N
(LL 
keyLL 
,LL 
messageLL %
)LL% &
=>LL' )

ModelStateLL* 4
.LL4 5
AddModelErrorLL5 B
(LLB C
keyLLC F
,LLF G
messageLLH O
)LLO P
)LLP Q
)LLQ R
{MM 
returnNN 
RedirectToLocalNN .
(NN. /
UrlNN/ 2
.NN2 3
ActionNN3 9
(NN9 :
$strNN: S
,NNS T
$strNNU b
)NNb c
)NNc d
;NNd e
}OO 
}PP 
}QQ 
returnSS 
ViewSS 
(SS 
modelSS 
)SS 
;SS 
}TT 	
[VV 	
HttpGetVV	 
]VV 
publicWW 
IActionResultWW #
ChangeEmailConfirmationWW 4
(WW4 5
)WW5 6
{XX 	
returnYY 
ViewYY 
(YY 
)YY 
;YY 
}ZZ 	
private\\ 
IActionResult\\ 
RedirectToLocal\\ -
(\\- .
string\\. 4
	returnUrl\\5 >
)\\> ?
{]] 	
if^^ 
(^^ 
Url^^ 
.^^ 

IsLocalUrl^^ 
(^^ 
	returnUrl^^ (
)^^( )
)^^) *
{__ 
return`` 
Redirect`` 
(``  
	returnUrl``  )
)``) *
;``* +
}aa 
elsebb 
{cc 
returndd 
Redirectdd 
(dd  
$strdd  $
)dd$ %
;dd% &
}ee 
}ff 	
}gg 
}hh Ч[
ХD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\ControllerExtensions.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Controllers '
{ 
internal 
static 
class  
ControllerExtensions .
{ 
internal 
static 
async 
Task "
<" #
bool# '
>' (
SendEmailAsync) 7
(7 8
this8 <

Controller= G

controllerH R
,R S
stringT Z
email[ `
,` a
stringb h
subjecti p
,p q
IShaper x
modely ~
)~ 
{ 	
var 
smtpService 
= 

controller (
.( )
HttpContext) 4
.4 5
RequestServices5 D
.D E
GetRequiredServiceE W
<W X
ISmtpServiceX d
>d e
(e f
)f g
;g h
var 
displayHelper 
= 

controller  *
.* +
HttpContext+ 6
.6 7
RequestServices7 F
.F G
GetRequiredServiceG Y
<Y Z
IDisplayHelperZ h
>h i
(i j
)j k
;k l
var 
htmlEncoder 
= 

controller (
.( )
HttpContext) 4
.4 5
RequestServices5 D
.D E
GetRequiredServiceE W
<W X
HtmlEncoderX c
>c d
(d e
)e f
;f g
var 
body 
= 
string 
. 
Empty #
;# $
using 
( 
var 
sw 
= 
new 
StringWriter  ,
(, -
)- .
). /
{   
var!! 
htmlContent!! 
=!!  !
await!!" '
displayHelper!!( 5
.!!5 6
ShapeExecuteAsync!!6 G
(!!G H
model!!H M
)!!M N
;!!N O
htmlContent"" 
."" 
WriteTo"" #
(""# $
sw""$ &
,""& '
htmlEncoder""( 3
)""3 4
;""4 5
body## 
=## 
sw## 
.## 
ToString## "
(##" #
)### $
;##$ %
}$$ 
var&& 
message&& 
=&& 
new&& 
MailMessage&& )
(&&) *
)&&* +
{'' 
To(( 
=(( 
email(( 
,(( 
Subject)) 
=)) 
subject)) !
,))! "
Body** 
=** 
body** 
,** 

IsBodyHtml++ 
=++ 
true++ !
},, 
;,, 
var.. 
result.. 
=.. 
await.. 
smtpService.. *
...* +
	SendAsync..+ 4
(..4 5
message..5 <
)..< =
;..= >
return00 
result00 
.00 
	Succeeded00 #
;00# $
}11 	
internal;; 
static;; 
async;; 
Task;; "
<;;" #
IUser;;# (
>;;( )
RegisterUser;;* 6
(;;6 7
this;;7 ;

Controller;;< F

controller;;G Q
,;;Q R
RegisterViewModel;;S d
model;;e j
,;;j k
string;;l r%
confirmationEmailSubject	;;s Л
,
;;Л М
ILogger
;;Н Ф
logger
;;Х Ы
)
;;Ы Ь
{<< 	
var== 
registrationEvents== "
===# $

controller==% /
.==/ 0
ControllerContext==0 A
.==A B
HttpContext==B M
.==M N
RequestServices==N ]
.==] ^
GetRequiredService==^ p
<==p q
IEnumerable==q |
<==| }$
IRegistrationFormEvents	==} Ф
>
==Ф Х
>
==Х Ц
(
==Ц Ч
)
==Ч Ш
;
==Ш Щ
var>> 
userService>> 
=>> 

controller>> (
.>>( )
ControllerContext>>) :
.>>: ;
HttpContext>>; F
.>>F G
RequestServices>>G V
.>>V W
GetRequiredService>>W i
<>>i j
IUserService>>j v
>>>v w
(>>w x
)>>x y
;>>y z
var?? 
settings?? 
=?? 
(?? 
await?? !

controller??" ,
.??, -
ControllerContext??- >
.??> ?
HttpContext??? J
.??J K
RequestServices??K Z
.??Z [
GetRequiredService??[ m
<??m n
ISiteService??n z
>??z {
(??{ |
)??| }
.??} ~!
GetSiteSettingsAsync	??~ Т
(
??Т У
)
??У Ф
)
??Ф Х
.
??Х Ц
As
??Ц Ш
<
??Ш Щ"
RegistrationSettings
??Щ ≠
>
??≠ Ѓ
(
??Ѓ ѓ
)
??ѓ ∞
;
??∞ ±
var@@ 
signInManager@@ 
=@@ 

controller@@  *
.@@* +
ControllerContext@@+ <
.@@< =
HttpContext@@= H
.@@H I
RequestServices@@I X
.@@X Y
GetRequiredService@@Y k
<@@k l
SignInManager@@l y
<@@y z
IUser@@z 
>	@@ А
>
@@А Б
(
@@Б В
)
@@В Г
;
@@Г Д
ifBB 
(BB 
settingsBB 
.BB 
UsersCanRegisterBB )
!=BB* , 
UserRegistrationTypeBB- A
.BBA B
NoRegistrationBBB P
)BBP Q
{CC 
awaitDD 
registrationEventsDD (
.DD( )
InvokeAsyncDD) 4
(DD4 5
(DD5 6
eDD6 7
,DD7 8

modelStateDD9 C
)DDC D
=>DDE G
eDDH I
.DDI J'
RegistrationValidationAsyncDDJ e
(DDe f
(DDf g
keyDDg j
,DDj k
messageDDl s
)DDs t
=>DDu w

modelState	DDx В
.
DDВ Г
AddModelError
DDГ Р
(
DDР С
key
DDС Ф
,
DDФ Х
message
DDЦ Э
)
DDЭ Ю
)
DDЮ Я
,
DDЯ †

controller
DD° Ђ
.
DDЂ ђ

ModelState
DDђ ґ
,
DDґ Ј
logger
DDЄ Њ
)
DDЊ њ
;
DDњ ј
ifFF 
(FF 

controllerFF 
.FF 

ModelStateFF )
.FF) *
IsValidFF* 1
)FF1 2
{GG 
varHH 
userHH 
=HH 
awaitHH $
userServiceHH% 0
.HH0 1
CreateUserAsyncHH1 @
(HH@ A
newHHA D
UserHHE I
{HHJ K
UserNameHHL T
=HHU V
modelHHW \
.HH\ ]
UserNameHH] e
,HHe f
EmailHHg l
=HHm n
modelHHo t
.HHt u
EmailHHu z
,HHz {
EmailConfirmed	HH| К
=
HHЛ М
!
HHН О
settings
HHО Ц
.
HHЦ Ч$
UsersMustValidateEmail
HHЧ ≠
}
HHЃ ѓ
,
HHѓ ∞
model
HH± ґ
.
HHґ Ј
Password
HHЈ њ
,
HHњ ј
(
HHЅ ¬
key
HH¬ ≈
,
HH≈ ∆
message
HH« ќ
)
HHќ ѕ
=>
HH– “

controller
HH” Ё
.
HHЁ ё

ModelState
HHё и
.
HHи й
AddModelError
HHй ц
(
HHц ч
key
HHч ъ
,
HHъ ы
message
HHь Г
)
HHГ Д
)
HHД Е
as
HHЖ И
User
HHЙ Н
;
HHН О
ifJJ 
(JJ 
userJJ 
!=JJ 
nullJJ  $
&&JJ% '

controllerJJ( 2
.JJ2 3

ModelStateJJ3 =
.JJ= >
IsValidJJ> E
)JJE F
{KK 
ifLL 
(LL 
settingsLL $
.LL$ %"
UsersMustValidateEmailLL% ;
)LL; <
{MM 
awaitPP !

controllerPP" ,
.PP, -+
SendEmailConfirmationTokenAsyncPP- L
(PPL M
userPPM Q
,PPQ R$
confirmationEmailSubjectPPS k
)PPk l
;PPl m
}QQ 
elseRR 
{SS 
awaitTT !
signInManagerTT" /
.TT/ 0
SignInAsyncTT0 ;
(TT; <
userTT< @
,TT@ A
isPersistentTTB N
:TTN O
falseTTP U
)TTU V
;TTV W
}UU 
loggerVV 
.VV 
LogInformationVV -
(VV- .
$numVV. /
,VV/ 0
$strVV1 \
)VV\ ]
;VV] ^
awaitWW 
registrationEventsWW 0
.WW0 1
InvokeAsyncWW1 <
(WW< =
(WW= >
eWW> ?
,WW? @
userWWA E
)WWE F
=>WWG I
eWWJ K
.WWK L
RegisteredAsyncWWL [
(WW[ \
userWW\ `
)WW` a
,WWa b
userWWc g
,WWg h
loggerWWi o
)WWo p
;WWp q
returnYY 
userYY #
;YY# $
}ZZ 
}[[ 
}\\ 
return]] 
null]] 
;]] 
}^^ 	
internal`` 
static`` 
async`` 
Task`` "
<``" #
string``# )
>``) *+
SendEmailConfirmationTokenAsync``+ J
(``J K
this``K O

Controller``P Z

controller``[ e
,``e f
User``g k
user``l p
,``p q
string``r x
subject	``y А
)
``А Б
{aa 	
varbb 
userManagerbb 
=bb 

controllerbb (
.bb( )
ControllerContextbb) :
.bb: ;
HttpContextbb; F
.bbF G
RequestServicesbbG V
.bbV W
GetRequiredServicebbW i
<bbi j
UserManagerbbj u
<bbu v
IUserbbv {
>bb{ |
>bb| }
(bb} ~
)bb~ 
;	bb А
varcc 
codecc 
=cc 
awaitcc 
userManagercc (
.cc( )/
#GenerateEmailConfirmationTokenAsynccc) L
(ccL M
userccM Q
)ccQ R
;ccR S
vardd 
callbackUrldd 
=dd 

controllerdd (
.dd( )
Urldd) ,
.dd, -
Actiondd- 3
(dd3 4
$strdd4 B
,ddB C
$strddD R
,ddR S
newddT W
{ddX Y
userIdddZ `
=dda b
userddc g
.ddg h
UserIdddh n
,ddn o
codeddp t
}ddu v
,ddv w
protocol	ddx А
:
ddА Б

controller
ddВ М
.
ddМ Н
HttpContext
ddН Ш
.
ddШ Щ
Request
ddЩ †
.
dd† °
Scheme
dd° І
)
ddІ ®
;
dd® ©
awaitee 
SendEmailAsyncee  
(ee  !

controlleree! +
,ee+ ,
useree- 1
.ee1 2
Emailee2 7
,ee7 8
subjectee9 @
,ee@ A
neweeB E!
ConfirmEmailViewModeleeF [
(ee[ \
)ee\ ]
{ee^ _
Useree` d
=eee f
usereeg k
,eek l
ConfirmEmailUrleem |
=ee} ~
callbackUrl	ee К
}
eeЛ М
)
eeМ Н
;
eeН О
returngg 
callbackUrlgg 
;gg 
}hh 	
}ii 
}jj ґc
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\RegistrationController.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Controllers '
{ 
[ 
Feature 
( 
$str -
)- .
]. /
public 

class "
RegistrationController '
:( )

Controller* 4
{ 
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly "
IEmailAddressValidator /"
_emailAddressValidator0 F
;F G
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public "
RegistrationController %
(% &
UserManager   
<   
IUser   
>   
userManager   *
,  * +!
IAuthorizationService!! ! 
authorizationService!!" 6
,!!6 7
ISiteService"" 
siteService"" $
,""$ %
	INotifier## 
notifier## 
,## "
IEmailAddressValidator$$ "!
emailAddressValidator$$# 8
,$$8 9
ILogger%% 
<%% "
RegistrationController%% *
>%%* +
logger%%, 2
,%%2 3
IHtmlLocalizer&& 
<&& "
RegistrationController&& 1
>&&1 2
htmlLocalizer&&3 @
,&&@ A
IStringLocalizer'' 
<'' "
RegistrationController'' 3
>''3 4
stringLocalizer''5 D
)''D E
{(( 	
_userManager)) 
=)) 
userManager)) &
;))& '!
_authorizationService** !
=**" # 
authorizationService**$ 8
;**8 9
_siteService++ 
=++ 
siteService++ &
;++& '
	_notifier,, 
=,, 
notifier,,  
;,,  !"
_emailAddressValidator-- "
=--# $!
emailAddressValidator--% :
??--; =
throw--> C
new--D G!
ArgumentNullException--H ]
(--] ^
nameof--^ d
(--d e!
emailAddressValidator--e z
)--z {
)--{ |
;--| }
_logger.. 
=.. 
logger.. 
;.. 
H// 
=// 
htmlLocalizer// 
;// 
S00 
=00 
stringLocalizer00 
;00  
}11 	
[33 	
HttpGet33	 
]33 
[44 	
AllowAnonymous44	 
]44 
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
Register55) 1
(551 2
string552 8
	returnUrl559 B
=55C D
null55E I
)55I J
{66 	
var77 
settings77 
=77 
(77 
await77 !
_siteService77" .
.77. / 
GetSiteSettingsAsync77/ C
(77C D
)77D E
)77E F
.77F G
As77G I
<77I J 
RegistrationSettings77J ^
>77^ _
(77_ `
)77` a
;77a b
if88 
(88 
settings88 
.88 
UsersCanRegister88 )
!=88* , 
UserRegistrationType88- A
.88A B
AllowRegistration88B S
)88S T
{99 
return:: 
NotFound:: 
(::  
)::  !
;::! "
};; 
ViewData== 
[== 
$str==  
]==  !
===" #
	returnUrl==$ -
;==- .
return>> 
View>> 
(>> 
)>> 
;>> 
}?? 	
[AA 	
HttpPostAA	 
]AA 
[BB 	
AllowAnonymousBB	 
]BB 
[CC 	$
ValidateAntiForgeryTokenCC	 !
]CC! "
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (
RegisterDD) 1
(DD1 2
RegisterViewModelDD2 C
modelDDD I
,DDI J
stringDDK Q
	returnUrlDDR [
=DD\ ]
nullDD^ b
)DDb c
{EE 	
varFF 
settingsFF 
=FF 
(FF 
awaitFF !
_siteServiceFF" .
.FF. / 
GetSiteSettingsAsyncFF/ C
(FFC D
)FFD E
)FFE F
.FFF G
AsFFG I
<FFI J 
RegistrationSettingsFFJ ^
>FF^ _
(FF_ `
)FF` a
;FFa b
ifHH 
(HH 
settingsHH 
.HH 
UsersCanRegisterHH )
!=HH* , 
UserRegistrationTypeHH- A
.HHA B
AllowRegistrationHHB S
)HHS T
{II 
returnJJ 
NotFoundJJ 
(JJ  
)JJ  !
;JJ! "
}KK 
ifMM 
(MM 
stringMM 
.MM 
IsNullOrEmptyMM $
(MM$ %
modelMM% *
.MM* +
EmailMM+ 0
)MM0 1
)MM1 2
{NN 

ModelStateOO 
.OO 
AddModelErrorOO (
(OO( )
$strOO) 0
,OO0 1
SOO2 3
[OO3 4
$strOO4 H
]OOH I
)OOI J
;OOJ K
}PP 
ifRR 
(RR "
_emailAddressValidatorRR &
.RR& '
ValidateRR' /
(RR/ 0
modelRR0 5
.RR5 6
EmailRR6 ;
)RR; <
)RR< =
{SS 
varUU 
userWithEmailUU !
=UU" #
awaitUU$ )
_userManagerUU* 6
.UU6 7
FindByEmailAsyncUU7 G
(UUG H
modelUUH M
.UUM N
EmailUUN S
)UUS T
;UUT U
ifWW 
(WW 
userWithEmailWW !
!=WW" $
nullWW% )
)WW) *
{XX 

ModelStateYY 
.YY 
AddModelErrorYY ,
(YY, -
$strYY- 4
,YY4 5
SYY6 7
[YY7 8
$strYY8 d
]YYd e
)YYe f
;YYf g
}ZZ 
}[[ 
else\\ 
{]] 

ModelState^^ 
.^^ 
AddModelError^^ (
(^^( )
$str^^) 0
,^^0 1
S^^2 3
[^^3 4
$str^^4 D
]^^D E
)^^E F
;^^F G
}__ 
ViewDataaa 
[aa 
$straa  
]aa  !
=aa" #
	returnUrlaa$ -
;aa- .
ifcc 
(cc 
TryValidateModelcc  
(cc  !
modelcc! &
)cc& '
&&cc( *

ModelStatecc+ 5
.cc5 6
IsValidcc6 =
)cc= >
{dd 
ifff 
(ff 
awaitff 
thisff 
.ff 
RegisterUserff +
(ff+ ,
modelff, 1
,ff1 2
Sff3 4
[ff4 5
$strff5 K
]ffK L
,ffL M
_loggerffN U
)ffU V
!=ffW Y
nullffZ ^
)ff^ _
{gg 
returnhh 
RedirectToLocalhh *
(hh* +
	returnUrlhh+ 4
)hh4 5
;hh5 6
}ii 
}jj 
returnmm 
Viewmm 
(mm 
modelmm 
)mm 
;mm 
}nn 	
[pp 	
HttpGetpp	 
]pp 
[qq 	
AllowAnonymousqq	 
]qq 
publicrr 
asyncrr 
Taskrr 
<rr 
IActionResultrr '
>rr' (
ConfirmEmailrr) 5
(rr5 6
stringrr6 <
userIdrr= C
,rrC D
stringrrE K
coderrL P
)rrP Q
{ss 	
iftt 
(tt 
userIdtt 
==tt 
nulltt 
||tt !
codett" &
==tt' )
nulltt* .
)tt. /
{uu 
returnvv 
RedirectToActionvv '
(vv' (
nameofvv( .
(vv. /"
RegistrationControllervv/ E
.vvE F
RegistervvF N
)vvN O
,vvO P
$strvvQ _
)vv_ `
;vv` a
}ww 
varyy 
useryy 
=yy 
awaityy 
_userManageryy )
.yy) *
FindByIdAsyncyy* 7
(yy7 8
userIdyy8 >
)yy> ?
;yy? @
if{{ 
({{ 
user{{ 
=={{ 
null{{ 
){{ 
{|| 
return}} 
NotFound}} 
(}}  
)}}  !
;}}! "
}~~ 
var
АА 
result
АА 
=
АА 
await
АА 
_userManager
АА +
.
АА+ ,
ConfirmEmailAsync
АА, =
(
АА= >
user
АА> B
,
ААB C
code
ААD H
)
ААH I
;
ААI J
if
ВВ 
(
ВВ 
result
ВВ 
.
ВВ 
	Succeeded
ВВ  
)
ВВ  !
{
ГГ 
return
ДД 
View
ДД 
(
ДД 
)
ДД 
;
ДД 
}
ЕЕ 
return
ЗЗ 
NotFound
ЗЗ 
(
ЗЗ 
)
ЗЗ 
;
ЗЗ 
}
ИИ 	
[
КК 	
	Authorize
КК	 
]
КК 
[
ЛЛ 	
HttpPost
ЛЛ	 
]
ЛЛ 
[
ММ 	&
ValidateAntiForgeryToken
ММ	 !
]
ММ! "
public
НН 
async
НН 
Task
НН 
<
НН 
IActionResult
НН '
>
НН' (#
SendVerificationEmail
НН) >
(
НН> ?
string
НН? E
id
ННF H
)
ННH I
{
ОО 	
if
ПП 
(
ПП 
!
ПП 
await
ПП #
_authorizationService
ПП ,
.
ПП, -
AuthorizeAsync
ПП- ;
(
ПП; <
User
ПП< @
,
ПП@ A
Permissions
ППB M
.
ППM N
ManageUsers
ППN Y
)
ППY Z
)
ППZ [
{
РР 
return
СС 
Forbid
СС 
(
СС 
)
СС 
;
СС  
}
ТТ 
var
ФФ 
user
ФФ 
=
ФФ 
await
ФФ 
_userManager
ФФ )
.
ФФ) *
FindByIdAsync
ФФ* 7
(
ФФ7 8
id
ФФ8 :
)
ФФ: ;
as
ФФ< >
User
ФФ? C
;
ФФC D
if
ХХ 
(
ХХ 
user
ХХ 
!=
ХХ 
null
ХХ 
)
ХХ 
{
ЦЦ 
await
ЧЧ 
this
ЧЧ 
.
ЧЧ -
SendEmailConfirmationTokenAsync
ЧЧ :
(
ЧЧ: ;
user
ЧЧ; ?
,
ЧЧ? @
S
ЧЧA B
[
ЧЧB C
$str
ЧЧC Y
]
ЧЧY Z
)
ЧЧZ [
;
ЧЧ[ \
	_notifier
ЩЩ 
.
ЩЩ 
Success
ЩЩ !
(
ЩЩ! "
H
ЩЩ" #
[
ЩЩ# $
$str
ЩЩ$ >
]
ЩЩ> ?
)
ЩЩ? @
;
ЩЩ@ A
}
ЪЪ 
return
ЬЬ 
RedirectToAction
ЬЬ #
(
ЬЬ# $
nameof
ЬЬ$ *
(
ЬЬ* +
AdminController
ЬЬ+ :
.
ЬЬ: ;
Index
ЬЬ; @
)
ЬЬ@ A
,
ЬЬA B
$str
ЬЬC J
)
ЬЬJ K
;
ЬЬK L
}
ЭЭ 	
private
ЯЯ 
IActionResult
ЯЯ 
RedirectToLocal
ЯЯ -
(
ЯЯ- .
string
ЯЯ. 4
	returnUrl
ЯЯ5 >
)
ЯЯ> ?
{
†† 	
if
°° 
(
°° 
Url
°° 
.
°° 

IsLocalUrl
°° 
(
°° 
	returnUrl
°° (
)
°°( )
)
°°) *
{
ҐҐ 
return
££ 
Redirect
££ 
(
££  
	returnUrl
££  )
)
££) *
;
££* +
}
§§ 
else
•• 
{
¶¶ 
return
ІІ 
Redirect
ІІ 
(
ІІ  
$str
ІІ  $
)
ІІ$ %
;
ІІ% &
}
®® 
}
©© 	
}
™™ 
}ЂЂ иs
ШD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\ResetPasswordController.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Controllers '
{ 
[ 
Feature 
( 
$str .
). /
]/ 0
public 

class #
ResetPasswordController (
:) *

Controller+ 5
{ 
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IEnumerable $
<$ %'
IPasswordRecoveryFormEvents% @
>@ A'
_passwordRecoveryFormEventsB ]
;] ^
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public #
ResetPasswordController &
(& '
IUserService 
userService $
,$ %
UserManager   
<   
IUser   
>   
userManager   *
,  * +
ISiteService!! 
siteService!! $
,!!$ %
IStringLocalizer"" 
<"" #
ResetPasswordController"" 4
>""4 5
stringLocalizer""6 E
,""E F
ILogger## 
<## #
ResetPasswordController## +
>##+ ,
logger##- 3
,##3 4
IEnumerable$$ 
<$$ '
IPasswordRecoveryFormEvents$$ 3
>$$3 4&
passwordRecoveryFormEvents$$5 O
)$$O P
{%% 	
_userService&& 
=&& 
userService&& &
;&&& '
_userManager'' 
='' 
userManager'' &
;''& '
_siteService(( 
=(( 
siteService(( &
;((& '
S** 
=** 
stringLocalizer** 
;**  
_logger++ 
=++ 
logger++ 
;++ '
_passwordRecoveryFormEvents,, '
=,,( )&
passwordRecoveryFormEvents,,* D
;,,D E
}-- 	
[// 	
HttpGet//	 
]// 
[00 	
AllowAnonymous00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
ForgotPassword11) 7
(117 8
)118 9
{22 	
if33 
(33 
!33 
(33 
await33 
_siteService33 $
.33$ % 
GetSiteSettingsAsync33% 9
(339 :
)33: ;
)33; <
.33< =
As33= ?
<33? @!
ResetPasswordSettings33@ U
>33U V
(33V W
)33W X
.33X Y
AllowResetPassword33Y k
)33k l
{44 
return55 
NotFound55 
(55  
)55  !
;55! "
}66 
return88 
View88 
(88 
)88 
;88 
}99 	
[;; 	
HttpPost;;	 
];; 
[<< 	
AllowAnonymous<<	 
]<< 
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
ForgotPassword==) 7
(==7 8#
ForgotPasswordViewModel==8 O
model==P U
)==U V
{>> 	
if?? 
(?? 
!?? 
(?? 
await?? 
_siteService?? $
.??$ % 
GetSiteSettingsAsync??% 9
(??9 :
)??: ;
)??; <
.??< =
As??= ?
<??? @!
ResetPasswordSettings??@ U
>??U V
(??V W
)??W X
.??X Y
AllowResetPassword??Y k
)??k l
{@@ 
returnAA 
NotFoundAA 
(AA  
)AA  !
;AA! "
}BB 
awaitDD '
_passwordRecoveryFormEventsDD -
.DD- .
InvokeAsyncDD. 9
(DD9 :
(DD: ;
eDD; <
,DD< =

modelStateDD> H
)DDH I
=>DDJ L
eDDM N
.DDN O#
RecoveringPasswordAsyncDDO f
(DDf g
(DDg h
keyDDh k
,DDk l
messageDDm t
)DDt u
=>DDv x

modelState	DDy Г
.
DDГ Д
AddModelError
DDД С
(
DDС Т
key
DDТ Х
,
DDХ Ц
message
DDЧ Ю
)
DDЮ Я
)
DDЯ †
,
DD† °

ModelState
DDҐ ђ
,
DDђ ≠
_logger
DDЃ µ
)
DDµ ґ
;
DDґ Ј
ifFF 
(FF 
TryValidateModelFF  
(FF  !
modelFF! &
)FF& '
&&FF( *

ModelStateFF+ 5
.FF5 6
IsValidFF6 =
)FF= >
{GG 
varHH 
userHH 
=HH 
awaitHH  
_userServiceHH! -
.HH- .&
GetForgotPasswordUserAsyncHH. H
(HHH I
modelHHI N
.HHN O
EmailHHO T
)HHT U
asHHV X
UserHHY ]
;HH] ^
ifII 
(II 
userII 
==II 
nullII  
||II! #
(II$ %
(JJ 
awaitJJ 
_siteServiceJJ +
.JJ+ , 
GetSiteSettingsAsyncJJ, @
(JJ@ A
)JJA B
)JJB C
.JJC D
AsJJD F
<JJF G 
RegistrationSettingsJJG [
>JJ[ \
(JJ\ ]
)JJ] ^
.JJ^ _"
UsersMustValidateEmailJJ_ u
&&KK 
!KK 
awaitKK !
_userManagerKK" .
.KK. /!
IsEmailConfirmedAsyncKK/ D
(KKD E
userKKE I
)KKI J
)KKJ K
)LL 
{MM 
returnOO 
RedirectToLocalOO *
(OO* +
UrlOO+ .
.OO. /
ActionOO/ 5
(OO5 6
$strOO6 R
,OOR S
$strOOT c
)OOc d
)OOd e
;OOe f
}PP 
userRR 
.RR 

ResetTokenRR 
=RR  !
ConvertRR" )
.RR) *
ToBase64StringRR* 8
(RR8 9
EncodingRR9 A
.RRA B
UTF8RRB F
.RRF G
GetBytesRRG O
(RRO P
userRRP T
.RRT U

ResetTokenRRU _
)RR_ `
)RR` a
;RRa b
varSS 
resetPasswordUrlSS $
=SS% &
UrlSS' *
.SS* +
ActionSS+ 1
(SS1 2
$strSS2 A
,SSA B
$strSSC R
,SSR S
newSST W
{SSX Y
codeSSZ ^
=SS_ `
userSSa e
.SSe f

ResetTokenSSf p
}SSq r
,SSr s
HttpContextSSt 
.	SS А
Request
SSА З
.
SSЗ И
Scheme
SSИ О
)
SSО П
;
SSП Р
awaitUU 
thisUU 
.UU 
SendEmailAsyncUU )
(UU) *
userUU* .
.UU. /
EmailUU/ 4
,UU4 5
SUU6 7
[UU7 8
$strUU8 M
]UUM N
,UUN O
newUUP S!
LostPasswordViewModelUUT i
(UUi j
)UUj k
{UUl m
UserUUn r
=UUs t
userUUu y
,UUy z
LostPasswordUrl	UU{ К
=
UUЛ М
resetPasswordUrl
UUН Э
}
UUЮ Я
)
UUЯ †
;
UU† °
awaitWW '
_passwordRecoveryFormEventsWW 1
.WW1 2
InvokeAsyncWW2 =
(WW= >
iWW> ?
=>WW@ B
iWWC D
.WWD E"
PasswordRecoveredAsyncWWE [
(WW[ \
)WW\ ]
,WW] ^
_loggerWW_ f
)WWf g
;WWg h
returnYY 
RedirectToLocalYY &
(YY& '
UrlYY' *
.YY* +
ActionYY+ 1
(YY1 2
$strYY2 N
,YYN O
$strYYP _
)YY_ `
)YY` a
;YYa b
}ZZ 
return]] 
View]] 
(]] 
model]] 
)]] 
;]] 
}^^ 	
[`` 	
HttpGet``	 
]`` 
[aa 	
AllowAnonymousaa	 
]aa 
publicbb 
IActionResultbb &
ForgotPasswordConfirmationbb 7
(bb7 8
)bb8 9
{cc 	
returndd 
Viewdd 
(dd 
)dd 
;dd 
}ee 	
[gg 	
HttpGetgg	 
]gg 
[hh 	
AllowAnonymoushh	 
]hh 
publicii 
asyncii 
Taskii 
<ii 
IActionResultii '
>ii' (
ResetPasswordii) 6
(ii6 7
stringii7 =
codeii> B
=iiC D
nulliiE I
)iiI J
{jj 	
ifkk 
(kk 
!kk 
(kk 
awaitkk 
_siteServicekk $
.kk$ % 
GetSiteSettingsAsynckk% 9
(kk9 :
)kk: ;
)kk; <
.kk< =
Askk= ?
<kk? @!
ResetPasswordSettingskk@ U
>kkU V
(kkV W
)kkW X
.kkX Y
AllowResetPasswordkkY k
)kkk l
{ll 
returnmm 
NotFoundmm 
(mm  
)mm  !
;mm! "
}nn 
ifoo 
(oo 
codeoo 
==oo 
nulloo 
)oo 
{pp 
}rr 
returnss 
Viewss 
(ss 
newss "
ResetPasswordViewModelss 2
{ss3 4

ResetTokenss5 ?
=ss@ A
codessB F
}ssG H
)ssH I
;ssI J
}tt 	
[vv 	
HttpPostvv	 
]vv 
[ww 	
AllowAnonymousww	 
]ww 
[xx 	$
ValidateAntiForgeryTokenxx	 !
]xx! "
publicyy 
asyncyy 
Taskyy 
<yy 
IActionResultyy '
>yy' (
ResetPasswordyy) 6
(yy6 7"
ResetPasswordViewModelyy7 M
modelyyN S
)yyS T
{zz 	
if{{ 
({{ 
!{{ 
({{ 
await{{ 
_siteService{{ $
.{{$ % 
GetSiteSettingsAsync{{% 9
({{9 :
){{: ;
){{; <
.{{< =
As{{= ?
<{{? @!
ResetPasswordSettings{{@ U
>{{U V
({{V W
){{W X
.{{X Y
AllowResetPassword{{Y k
){{k l
{|| 
return}} 
NotFound}} 
(}}  
)}}  !
;}}! "
}~~ 
await
АА )
_passwordRecoveryFormEvents
АА -
.
АА- .
InvokeAsync
АА. 9
(
АА9 :
(
АА: ;
e
АА; <
,
АА< =

modelState
АА> H
)
ААH I
=>
ААJ L
e
ААM N
.
ААN O$
ResettingPasswordAsync
ААO e
(
ААe f
(
ААf g
key
ААg j
,
ААj k
message
ААl s
)
ААs t
=>
ААu w

modelStateААx В
.ААВ Г
AddModelErrorААГ Р
(ААР С
keyААС Ф
,ААФ Х
messageААЦ Э
)ААЭ Ю
)ААЮ Я
,ААЯ †

ModelStateАА° Ђ
,ААЂ ђ
_loggerАА≠ і
)ААі µ
;ААµ ґ
if
ВВ 
(
ВВ 
TryValidateModel
ВВ  
(
ВВ  !
model
ВВ! &
)
ВВ& '
&&
ВВ( *

ModelState
ВВ+ 5
.
ВВ5 6
IsValid
ВВ6 =
)
ВВ= >
{
ГГ 
if
ДД 
(
ДД 
await
ДД 
_userService
ДД &
.
ДД& ' 
ResetPasswordAsync
ДД' 9
(
ДД9 :
model
ДД: ?
.
ДД? @
Email
ДД@ E
,
ДДE F
Encoding
ДДG O
.
ДДO P
UTF8
ДДP T
.
ДДT U
	GetString
ДДU ^
(
ДД^ _
Convert
ДД_ f
.
ДДf g
FromBase64String
ДДg w
(
ДДw x
model
ДДx }
.
ДД} ~

ResetTokenДД~ И
)ДДИ Й
)ДДЙ К
,ДДК Л
modelДДМ С
.ДДС Т
NewPasswordДДТ Э
,ДДЭ Ю
(ДДЯ †
keyДД† £
,ДД£ §
messageДД• ђ
)ДДђ ≠
=>ДДЃ ∞

ModelStateДД± ї
.ДДї Љ
AddModelErrorДДЉ …
(ДД…  
keyДД  Ќ
,ДДЌ ќ
messageДДѕ ÷
)ДД÷ „
)ДД„ Ў
)ДДЎ ў
{
ЕЕ 
await
ЖЖ )
_passwordRecoveryFormEvents
ЖЖ 5
.
ЖЖ5 6
InvokeAsync
ЖЖ6 A
(
ЖЖA B
i
ЖЖB C
=>
ЖЖD F
i
ЖЖG H
.
ЖЖH I 
PasswordResetAsync
ЖЖI [
(
ЖЖ[ \
)
ЖЖ\ ]
,
ЖЖ] ^
_logger
ЖЖ_ f
)
ЖЖf g
;
ЖЖg h
return
ИИ 
RedirectToLocal
ИИ *
(
ИИ* +
Url
ИИ+ .
.
ИИ. /
Action
ИИ/ 5
(
ИИ5 6
$str
ИИ6 Q
,
ИИQ R
$str
ИИS b
)
ИИb c
)
ИИc d
;
ИИd e
}
ЙЙ 
}
КК 
return
ММ 
View
ММ 
(
ММ 
model
ММ 
)
ММ 
;
ММ 
}
НН 	
[
ПП 	
HttpGet
ПП	 
]
ПП 
[
РР 	
AllowAnonymous
РР	 
]
РР 
public
СС 
IActionResult
СС '
ResetPasswordConfirmation
СС 6
(
СС6 7
)
СС7 8
{
ТТ 	
return
УУ 
View
УУ 
(
УУ 
)
УУ 
;
УУ 
}
ФФ 	
private
ЦЦ 
IActionResult
ЦЦ 
RedirectToLocal
ЦЦ -
(
ЦЦ- .
string
ЦЦ. 4
	returnUrl
ЦЦ5 >
)
ЦЦ> ?
{
ЧЧ 	
if
ШШ 
(
ШШ 
Url
ШШ 
.
ШШ 

IsLocalUrl
ШШ 
(
ШШ 
	returnUrl
ШШ (
)
ШШ( )
)
ШШ) *
{
ЩЩ 
return
ЪЪ 
Redirect
ЪЪ 
(
ЪЪ  
	returnUrl
ЪЪ  )
)
ЪЪ) *
;
ЪЪ* +
}
ЫЫ 
else
ЬЬ 
{
ЭЭ 
return
ЮЮ 
Redirect
ЮЮ 
(
ЮЮ  
$str
ЮЮ  $
)
ЮЮ$ %
;
ЮЮ% &
}
ЯЯ 
}
†† 	
}
°° 
}ҐҐ Ч
ТD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\CustomUserSettingsPermissions.cs
	namespace

 	
OrchardCore


 
.

 
Users

 
{ 
public 

class )
CustomUserSettingsPermissions .
:/ 0
IPermissionProvider1 D
{ 
private 
static 
readonly 

Permission  *'
ManageOwnCustomUserSettings+ F
=G H
newI L

PermissionM W
(W X
$strX y
,y z
$str	{ Ґ
,
Ґ £
new
§ І
[
І ®
]
® ©
{
™ Ђ
Permissions
ђ Ј
.
Ј Є
ManageUsers
Є √
}
ƒ ≈
)
≈ ∆
;
∆ «
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public )
CustomUserSettingsPermissions ,
(, -%
IContentDefinitionManager- F$
contentDefinitionManagerG _
)_ `
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
=> 
Task 
. 

FromResult 
( %
_contentDefinitionManager 8
.8 9
ListTypeDefinitions9 L
(L M
)M N
. 
Where 
( 
x 
=> 
x 
. 
GetSettings )
<) *
ContentTypeSettings* =
>= >
(> ?
)? @
.@ A

StereotypeA K
==L N
$strO c
)c d
. 
Select 
( 
type 
=> #
CreatePermissionForType  7
(7 8
type8 <
)< =
)= >
)> ?
;? @
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
=>I K

EnumerableL V
.V W
EmptyW \
<\ ] 
PermissionStereotype] q
>q r
(r s
)s t
;t u
public 
static 

Permission  #
CreatePermissionForType! 8
(8 9!
ContentTypeDefinition9 N
typeO S
)S T
=>   
new   

Permission   
(   
String!! 
.!! 
Format!! !
(!!! "'
ManageOwnCustomUserSettings!!" =
.!!= >
Name!!> B
,!!B C
type!!D H
.!!H I
Name!!I M
)!!M N
,!!N O
String"" 
."" 
Format"" !
(""! "'
ManageOwnCustomUserSettings""" =
.""= >
Description""> I
,""I J
type""K O
.""O P
DisplayName""P [
)""[ \
,""\ ]'
ManageOwnCustomUserSettings## /
.##/ 0
	ImpliedBy##0 9
)$$ 
;$$ 
}%% 
}&& к"
ЭD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\ChangeEmailSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Drivers #
{ 
[ 
Feature 
( 
$str ,
), -
]- .
public 

class ,
 ChangeEmailSettingsDisplayDriver 1
:2 3 
SectionDisplayDriver4 H
<H I
ISiteI N
,N O
ChangeEmailSettingsP c
>c d
{ 
public 
const 
string 
GroupId #
=$ %
$str& 7
;7 8
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public ,
 ChangeEmailSettingsDisplayDriver /
(/ 0 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =
ChangeEmailSettings= P
settingsQ Y
,Y Z
BuildEditorContext[ m
contextn u
)u v
{ 	
var 
user 
=  
_httpContextAccessor +
.+ ,
HttpContext, 7
?7 8
.8 9
User9 =
;= >
if 
( 
! 
await !
_authorizationService ,
., -
AuthorizeAsync- ;
(; <
user< @
,@ A
PermissionsB M
.M N
ManageUsersN Y
)Y Z
)Z [
{   
return!! 
null!! 
;!! 
}"" 
return$$ 

Initialize$$ 
<$$ 
ChangeEmailSettings$$ 1
>$$1 2
($$2 3
$str$$3 M
,$$M N
model$$O T
=>$$U W
{%% 
model&& 
.&& 
AllowChangeEmail&& &
=&&' (
settings&&) 1
.&&1 2
AllowChangeEmail&&2 B
;&&B C
}'' 
)'' 
.'' 
Location'' 
('' 
$str'' #
)''# $
.''$ %
OnGroup''% ,
('', -
GroupId''- 4
)''4 5
;''5 6
}(( 	
public** 
override** 
async** 
Task** "
<**" #
IDisplayResult**# 1
>**1 2
UpdateAsync**3 >
(**> ?
ChangeEmailSettings**? R
section**S Z
,**Z [
BuildEditorContext**\ n
context**o v
)**v w
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
if.. 
(.. 
!.. 
await.. !
_authorizationService.. ,
..., -
AuthorizeAsync..- ;
(..; <
user..< @
,..@ A
Permissions..B M
...M N
ManageUsers..N Y
)..Y Z
)..Z [
{// 
return00 
null00 
;00 
}11 
if33 
(33 
context33 
.33 
GroupId33 
==33  "
GroupId33# *
)33* +
{44 
await55 
context55 
.55 
Updater55 %
.55% &
TryUpdateModelAsync55& 9
(559 :
section55: A
,55A B
Prefix55C I
)55I J
;55J K
}66 
return88 
await88 
	EditAsync88 "
(88" #
section88# *
,88* +
context88, 3
)883 4
;884 5
}99 	
}:: 
};; ТT
ЬD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\CustomUserSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Drivers #
{ 
public 

class +
CustomUserSettingsDisplayDriver 0
:1 2
DisplayDriver3 @
<@ A
UserA E
>E F
{ 
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public +
CustomUserSettingsDisplayDriver .
(. /&
IContentItemDisplayManager &%
contentItemDisplayManager' @
,@ A%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IContentManager 
contentManager *
,* +!
IAuthorizationService   ! 
authorizationService  " 6
,  6 7 
IHttpContextAccessor!!  
httpContextAccessor!!! 4
)!!4 5
{"" 	&
_contentItemDisplayManager## &
=##' (%
contentItemDisplayManager##) B
;##B C%
_contentDefinitionManager$$ %
=$$& '$
contentDefinitionManager$$( @
;$$@ A
_contentManager%% 
=%% 
contentManager%% ,
;%%, -!
_authorizationService&& !
=&&" # 
authorizationService&&$ 8
;&&8 9 
_httpContextAccessor''  
=''! "
httpContextAccessor''# 6
;''6 7
}(( 	
public** 
override** 
Task** 
<** 
IDisplayResult** +
>**+ ,
	EditAsync**- 6
(**6 7
User**7 ;
user**< @
,**@ A
BuildEditorContext**B T
context**U \
)**\ ]
{++ 	
var,, "
contentTypeDefinitions,, &
=,,' (%
GetContentTypeDefinitions,,) B
(,,B C
),,C D
;,,D E
if-- 
(-- 
!-- "
contentTypeDefinitions-- '
.--' (
Any--( +
(--+ ,
)--, -
)--- .
{.. 
return// 
Task// 
.// 

FromResult// &
<//& '
IDisplayResult//' 5
>//5 6
(//6 7
null//7 ;
)//; <
;//< =
}00 
var22 
results22 
=22 
new22 
List22 "
<22" #
IDisplayResult22# 1
>221 2
(222 3
)223 4
;224 5
var33 
	userClaim33 
=33  
_httpContextAccessor33 0
.330 1
HttpContext331 <
.33< =
User33= A
;33A B
foreach55 
(55 
var55 !
contentTypeDefinition55 .
in55/ 1"
contentTypeDefinitions552 H
)55H I
{66 
results77 
.77 
Add77 
(77 

Initialize77 &
<77& '+
CustomUserSettingsEditViewModel77' F
>77F G
(77G H
$str77H \
,77\ ]
async77^ c
model77d i
=>77j l
{88 
var99 
isNew99 !
=99" #
false99$ )
;99) *
var:: 
contentItem:: '
=::( )
await::* / 
GetUserSettingsAsync::0 D
(::D E
user::E I
,::I J!
contentTypeDefinition::K `
,::` a
(::b c
)::c d
=>::e g
isNew::h m
=::n o
true::p t
)::t u
;::u v
model;; 
.;; 
Editor;; $
=;;% &
await;;' ,&
_contentItemDisplayManager;;- G
.;;G H
BuildEditorAsync;;H X
(;;X Y
contentItem;;Y d
,;;d e
context;;f m
.;;m n
Updater;;n u
,;;u v
isNew;;w |
);;| }
;;;} ~
}<< 
)<< 
.== 
Location== 
(== 
$"==  
Content:10#==  +
{==+ ,!
contentTypeDefinition==, A
.==A B
DisplayName==B M
}==M N
"==N O
)==O P
.>> 
Differentiator>> #
(>># $
$">>$ &
CustomUserSettings->>& 9
{>>9 :!
contentTypeDefinition>>: O
.>>O P
Name>>P T
}>>T U
">>U V
)>>V W
.?? 

RenderWhen?? 
(??  
(??  !
)??! "
=>??# %!
_authorizationService??& ;
.??; <
AuthorizeAsync??< J
(??J K
	userClaim??K T
,??T U)
CustomUserSettingsPermissions??V s
.??s t$
CreatePermissionForType	??t Л
(
??Л М#
contentTypeDefinition
??М °
)
??° Ґ
)
??Ґ £
)
??£ §
)
??§ •
;
??• ¶
}@@ 
returnBB 
TaskBB 
.BB 

FromResultBB "
<BB" #
IDisplayResultBB# 1
>BB1 2
(BB2 3
CombineBB3 :
(BB: ;
resultsBB; B
.BBB C
ToArrayBBC J
(BBJ K
)BBK L
)BBL M
)BBM N
;BBN O
}CC 	
publicEE 
overrideEE 
asyncEE 
TaskEE "
<EE" #
IDisplayResultEE# 1
>EE1 2
UpdateAsyncEE3 >
(EE> ?
UserEE? C
userEED H
,EEH I
UpdateEditorContextEEJ ]
contextEE^ e
)EEe f
{FF 	
varGG 
	userClaimGG 
=GG  
_httpContextAccessorGG 0
.GG0 1
HttpContextGG1 <
.GG< =
UserGG= A
;GGA B
foreachHH 
(HH 
varHH !
contentTypeDefinitionHH .
inHH/ 1%
GetContentTypeDefinitionsHH2 K
(HHK L
)HHL M
)HHM N
{II 
ifJJ 
(JJ 
!JJ 
awaitJJ !
_authorizationServiceJJ 0
.JJ0 1
AuthorizeAsyncJJ1 ?
(JJ? @
	userClaimJJ@ I
,JJI J)
CustomUserSettingsPermissionsJJK h
.JJh i$
CreatePermissionForType	JJi А
(
JJА Б#
contentTypeDefinition
JJБ Ц
)
JJЦ Ч
)
JJЧ Ш
)
JJШ Щ
{KK 
continueLL 
;LL 
}MM 
varOO 
isNewOO 
=OO 
falseOO !
;OO! "
varPP 
contentItemPP 
=PP  !
awaitPP" ' 
GetUserSettingsAsyncPP( <
(PP< =
userPP= A
,PPA B!
contentTypeDefinitionPPC X
,PPX Y
(PPZ [
)PP[ \
=>PP] _
isNewPP` e
=PPf g
truePPh l
)PPl m
;PPm n
awaitQQ &
_contentItemDisplayManagerQQ 0
.QQ0 1
UpdateEditorAsyncQQ1 B
(QQB C
contentItemQQC N
,QQN O
contextQQP W
.QQW X
UpdaterQQX _
,QQ_ `
isNewQQa f
)QQf g
;QQg h
userRR 
.RR 

PropertiesRR 
[RR  !
contentTypeDefinitionRR  5
.RR5 6
NameRR6 :
]RR: ;
=RR< =
JObjectRR> E
.RRE F

FromObjectRRF P
(RRP Q
contentItemRRQ \
)RR\ ]
;RR] ^
}SS 
returnUU 
awaitUU 
	EditAsyncUU "
(UU" #
userUU# '
,UU' (
contextUU) 0
)UU0 1
;UU1 2
}VV 	
privateXX 
IEnumerableXX 
<XX !
ContentTypeDefinitionXX 1
>XX1 2%
GetContentTypeDefinitionsXX3 L
(XXL M
)XXM N
=>YY %
_contentDefinitionManagerYY (
.ZZ 
ListTypeDefinitionsZZ $
(ZZ$ %
)ZZ% &
.[[ 
Where[[ 
([[ 
x[[ 
=>[[ 
x[[ 
.[[ 
GetSettings[[ )
<[[) *
ContentTypeSettings[[* =
>[[= >
([[> ?
)[[? @
.[[@ A

Stereotype[[A K
==[[L N
$str[[O c
)[[c d
;[[d e
private]] 
async]] 
Task]] 
<]] 
ContentItem]] &
>]]& ' 
GetUserSettingsAsync]]( <
(]]< =
User]]= A
user]]B F
,]]F G!
ContentTypeDefinition]]H ]
settingsType]]^ j
,]]j k
Action]]l r
isNew]]s x
=]]y z
null]]{ 
)	]] А
{^^ 	
JToken__ 
property__ 
;__ 
ContentItem`` 
contentItem`` #
;``# $
ifbb 
(bb 
userbb 
.bb 

Propertiesbb 
.bb  
TryGetValuebb  +
(bb+ ,
settingsTypebb, 8
.bb8 9
Namebb9 =
,bb= >
outbb? B
propertybbC K
)bbK L
)bbL M
{cc 
vardd 
existingdd 
=dd 
propertydd '
.dd' (
ToObjectdd( 0
<dd0 1
ContentItemdd1 <
>dd< =
(dd= >
)dd> ?
;dd? @
contentItemgg 
=gg 
awaitgg #
_contentManagergg$ 3
.gg3 4
NewAsyncgg4 <
(gg< =
existinggg= E
.ggE F
ContentTypeggF Q
)ggQ R
;ggR S
contentItemhh 
.hh 
Mergehh !
(hh! "
existinghh" *
)hh* +
;hh+ ,
}ii 
elsejj 
{kk 
contentItemll 
=ll 
awaitll #
_contentManagerll$ 3
.ll3 4
NewAsyncll4 <
(ll< =
settingsTypell= I
.llI J
NamellJ N
)llN O
;llO P
isNewmm 
?mm 
.mm 
Invokemm 
(mm 
)mm 
;mm  
}nn 
returnpp 
contentItempp 
;pp 
}qq 	
}rr 
}ss З'
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\LoginSettingsDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Users

 
.

 
Drivers

 #
{ 
public 

class &
LoginSettingsDisplayDriver +
:, - 
SectionDisplayDriver. B
<B C
ISiteC H
,H I
LoginSettingsJ W
>W X
{ 
public 
const 
string 
GroupId #
=$ %
$str& 1
;1 2
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public &
LoginSettingsDisplayDriver )
() * 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =
LoginSettings= J
settingsK S
,S T
BuildEditorContextU g
contexth o
)o p
{ 	
var 
user 
=  
_httpContextAccessor +
.+ ,
HttpContext, 7
?7 8
.8 9
User9 =
;= >
if 
( 
! 
await !
_authorizationService ,
., -
AuthorizeAsync- ;
(; <
user< @
,@ A
PermissionsB M
.M N
ManageUsersN Y
)Y Z
)Z [
{ 
return 
null 
; 
}   
return"" 

Initialize"" 
<"" 
LoginSettings"" +
>""+ ,
("", -
$str""- A
,""A B
model""C H
=>""I K
{## 
model$$ 
.$$ 
UseSiteTheme$$ "
=$$# $
settings$$% -
.$$- .
UseSiteTheme$$. :
;$$: ;
model%% 
.%% /
#UseExternalProviderIfOnlyOneDefined%% 9
=%%: ;
settings%%< D
.%%D E/
#UseExternalProviderIfOnlyOneDefined%%E h
;%%h i
model&& 
.&& 
DisableLocalLogin&& '
=&&( )
settings&&* 2
.&&2 3
DisableLocalLogin&&3 D
;&&D E
model'' 
.''  
UseScriptToSyncRoles'' *
=''+ ,
settings''- 5
.''5 6 
UseScriptToSyncRoles''6 J
;''J K
model(( 
.(( 
SyncRolesScript(( %
=((& '
settings((( 0
.((0 1
SyncRolesScript((1 @
;((@ A
})) 
))) 
.)) 
Location)) 
()) 
$str)) #
)))# $
.))$ %
OnGroup))% ,
()), -
GroupId))- 4
)))4 5
;))5 6
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," #
IDisplayResult,,# 1
>,,1 2
UpdateAsync,,3 >
(,,> ?
LoginSettings,,? L
section,,M T
,,,T U
BuildEditorContext,,V h
context,,i p
),,p q
{-- 	
var.. 
user.. 
=..  
_httpContextAccessor.. +
...+ ,
HttpContext.., 7
?..7 8
...8 9
User..9 =
;..= >
if00 
(00 
!00 
await00 !
_authorizationService00 ,
.00, -
AuthorizeAsync00- ;
(00; <
user00< @
,00@ A
Permissions00B M
.00M N
ManageUsers00N Y
)00Y Z
)00Z [
{11 
return22 
null22 
;22 
}33 
if55 
(55 
context55 
.55 
GroupId55 
==55  "
GroupId55# *
)55* +
{66 
await77 
context77 
.77 
Updater77 %
.77% &
TryUpdateModelAsync77& 9
(779 :
section77: A
,77A B
Prefix77C I
)77I J
;77J K
}88 
return:: 
await:: 
	EditAsync:: "
(::" #
section::# *
,::* +
context::, 3
)::3 4
;::4 5
};; 	
}<< 
}== і,
ЮD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\RegistrationSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Drivers #
{ 
[ 
Feature 
( 
$str -
)- .
]. /
public 

class -
!RegistrationSettingsDisplayDriver 2
:3 4 
SectionDisplayDriver5 I
<I J
ISiteJ O
,O P 
RegistrationSettingsQ e
>e f
{ 
public 
const 
string 
GroupId #
=$ %
$str& 8
;8 9
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public -
!RegistrationSettingsDisplayDriver 0
(0 1 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< = 
RegistrationSettings= Q
settingsR Z
,Z [
BuildEditorContext\ n
contexto v
)v w
{ 	
var 
user 
=  
_httpContextAccessor +
.+ ,
HttpContext, 7
?7 8
.8 9
User9 =
;= >
if 
( 
! 
await !
_authorizationService ,
., -
AuthorizeAsync- ;
(; <
user< @
,@ A
PermissionsB M
.M N
ManageUsersN Y
)Y Z
)Z [
{   
return!! 
null!! 
;!! 
}"" 
return$$ 

Initialize$$ 
<$$  
RegistrationSettings$$ 2
>$$2 3
($$3 4
$str$$4 O
,$$O P
model$$Q V
=>$$W Y
{%% 
model&& 
.&& 
UsersCanRegister&& &
=&&' (
settings&&) 1
.&&1 2
UsersCanRegister&&2 B
;&&B C
model'' 
.'' "
UsersMustValidateEmail'' ,
=''- .
settings''/ 7
.''7 8"
UsersMustValidateEmail''8 N
;''N O
model(( 
.(( 
UseSiteTheme(( "
=((# $
settings((% -
.((- .
UseSiteTheme((. :
;((: ;
model)) 
.)) &
NoPasswordForExternalUsers)) 0
=))1 2
settings))3 ;
.)); <&
NoPasswordForExternalUsers))< V
;))V W
model** 
.** &
NoUsernameForExternalUsers** 0
=**1 2
settings**3 ;
.**; <&
NoUsernameForExternalUsers**< V
;**V W
model++ 
.++ #
NoEmailForExternalUsers++ -
=++. /
settings++0 8
.++8 9#
NoEmailForExternalUsers++9 P
;++P Q
model,, 
.,, '
UseScriptToGenerateUsername,, 1
=,,2 3
settings,,4 <
.,,< ='
UseScriptToGenerateUsername,,= X
;,,X Y
model-- 
.-- "
GenerateUsernameScript-- ,
=--- .
settings--/ 7
.--7 8"
GenerateUsernameScript--8 N
;--N O
}.. 
).. 
... 
Location.. 
(.. 
$str.. #
)..# $
...$ %
OnGroup..% ,
(.., -
GroupId..- 4
)..4 5
;..5 6
}// 	
public11 
override11 
async11 
Task11 "
<11" #
IDisplayResult11# 1
>111 2
UpdateAsync113 >
(11> ? 
RegistrationSettings11? S
section11T [
,11[ \
BuildEditorContext11] o
context11p w
)11w x
{22 	
var33 
user33 
=33  
_httpContextAccessor33 +
.33+ ,
HttpContext33, 7
?337 8
.338 9
User339 =
;33= >
if55 
(55 
!55 
await55 !
_authorizationService55 ,
.55, -
AuthorizeAsync55- ;
(55; <
user55< @
,55@ A
Permissions55B M
.55M N
ManageUsers55N Y
)55Y Z
)55Z [
{66 
return77 
null77 
;77 
}88 
if:: 
(:: 
context:: 
.:: 
GroupId:: 
==::  "
GroupId::# *
)::* +
{;; 
await<< 
context<< 
.<< 
Updater<< %
.<<% &
TryUpdateModelAsync<<& 9
(<<9 :
section<<: A
,<<A B
Prefix<<C I
)<<I J
;<<J K
}== 
return?? 
await?? 
	EditAsync?? "
(??" #
section??# *
,??* +
context??, 3
)??3 4
;??4 5
}@@ 	
}AA 
}BB Х$
ЯD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\ResetPasswordSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Drivers #
{ 
[ 
Feature 
( 
$str .
). /
]/ 0
public 

class .
"ResetPasswordSettingsDisplayDriver 3
:4 5 
SectionDisplayDriver6 J
<J K
ISiteK P
,P Q!
ResetPasswordSettingsR g
>g h
{ 
public 
const 
string 
GroupId #
=$ %
$str& 9
;9 :
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public .
"ResetPasswordSettingsDisplayDriver 1
(1 2 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =!
ResetPasswordSettings= R
settingsS [
,[ \
BuildEditorContext] o
contextp w
)w x
{ 	
var 
user 
=  
_httpContextAccessor +
.+ ,
HttpContext, 7
?7 8
.8 9
User9 =
;= >
if   
(   
!   
await   !
_authorizationService   ,
.  , -
AuthorizeAsync  - ;
(  ; <
user  < @
,  @ A
Permissions  B M
.  M N
ManageUsers  N Y
)  Y Z
)  Z [
{!! 
return"" 
null"" 
;"" 
}## 
return%% 

Initialize%% 
<%% !
ResetPasswordSettings%% 3
>%%3 4
(%%4 5
$str%%5 Q
,%%Q R
model%%S X
=>%%Y [
{&& 
model'' 
.'' 
AllowResetPassword'' (
='') *
settings''+ 3
.''3 4
AllowResetPassword''4 F
;''F G
model(( 
.(( 
UseSiteTheme(( "
=((# $
settings((% -
.((- .
UseSiteTheme((. :
;((: ;
})) 
))) 
.)) 
Location)) 
()) 
$str)) #
)))# $
.))$ %
OnGroup))% ,
()), -
GroupId))- 4
)))4 5
;))5 6
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," #
IDisplayResult,,# 1
>,,1 2
UpdateAsync,,3 >
(,,> ?!
ResetPasswordSettings,,? T
section,,U \
,,,\ ]
BuildEditorContext,,^ p
context,,q x
),,x y
{-- 	
var.. 
user.. 
=..  
_httpContextAccessor.. +
...+ ,
HttpContext.., 7
?..7 8
...8 9
User..9 =
;..= >
if00 
(00 
!00 
await00 !
_authorizationService00 ,
.00, -
AuthorizeAsync00- ;
(00; <
user00< @
,00@ A
Permissions00B M
.00M N
ManageUsers00N Y
)00Y Z
)00Z [
{11 
return22 
null22 
;22 
}33 
if55 
(55 
context55 
.55 
GroupId55 
==55  "
GroupId55# *
)55* +
{66 
await77 
context77 
.77 
Updater77 %
.77% &
TryUpdateModelAsync77& 9
(779 :
section77: A
,77A B
Prefix77C I
)77I J
;77J K
}88 
return:: 
await:: 
	EditAsync:: "
(::" #
section::# *
,::* +
context::, 3
)::3 4
;::4 5
};; 	
}<< 
}== –

ХD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\UserButtonsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Drivers #
{ 
public 

class $
UserButtonsDisplayDriver )
:* +
DisplayDriver, 9
<9 :
User: >
>> ?
{		 
public

 
override

 
IDisplayResult

 &
Edit

' +
(

+ ,
User

, 0
user

1 5
)

5 6
{ 	
return 
Dynamic 
( 
$str 1
)1 2
.2 3
Location3 ;
(; <
$str< E
)E F
;F G
} 	
public 
override 
Task 
< 
IDisplayResult +
>+ ,
UpdateAsync- 8
(8 9
User9 =
user> B
,B C
UpdateEditorContextD W
contextX _
)_ `
{ 	
return 
Task 
. 

FromResult "
(" #
Edit# '
(' (
user( ,
), -
)- .
;. /
} 	
} 
} √e
ОD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\UserDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Drivers #
{ 
public 

class 
UserDisplayDriver "
:# $
DisplayDriver% 2
<2 3
User3 7
>7 8
{ 
private 
const 
string 
AdministratorRole .
=/ 0
$str1 @
;@ A
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
IEnumerable 
< 
IUserEventHandler -
>- .
_userEventHandlers/ A
;A B
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public   
UserDisplayDriver    
(    !
UserManager!! 
<!! 
IUser!! 
>!! 
userManager!! *
,!!* + 
IHttpContextAccessor""  
httpContextAccessor""! 4
,""4 5
	INotifier## 
notifier## 
,## 
ILogger$$ 
<$$ 
UserDisplayDriver$$ %
>$$% &
logger$$' -
,$$- .
IEnumerable%% 
<%% 
IUserEventHandler%% )
>%%) *
userEventHandlers%%+ <
,%%< =!
IAuthorizationService&& ! 
authorizationService&&" 6
,&&6 7
IHtmlLocalizer'' 
<'' 
UserDisplayDriver'' ,
>'', -
htmlLocalizer''. ;
)''; <
{(( 	
_userManager)) 
=)) 
userManager)) &
;))& ' 
_httpContextAccessor**  
=**! "
httpContextAccessor**# 6
;**6 7
	_notifier++ 
=++ 
notifier++  
;++  !!
_authorizationService,, !
=,," # 
authorizationService,,$ 8
;,,8 9
_logger-- 
=-- 
logger-- 
;-- 
_userEventHandlers.. 
=..  
userEventHandlers..! 2
;..2 3
H// 
=// 
htmlLocalizer// 
;// 
}00 	
public22 
override22 
IDisplayResult22 &
Display22' .
(22. /
User22/ 3
user224 8
)228 9
{33 	
return44 
Combine44 
(44 

Initialize55 
<55 %
SummaryAdminUserViewModel55 4
>554 5
(555 6
$str556 B
,55B C
model55D I
=>55J L
model55M R
.55R S
User55S W
=55X Y
user55Z ^
)55^ _
.55_ `
Location55` h
(55h i
$str55i w
,55w x
$str	55y Г
)
55Г Д
,
55Д Е

Initialize66 
<66 %
SummaryAdminUserViewModel66 4
>664 5
(665 6
$str666 C
,66C D
model66E J
=>66K M
model66N S
.66S T
User66T X
=66Y Z
user66[ _
)66_ `
.66` a
Location66a i
(66i j
$str66j x
,66x y
$str	66z Е
)
66Е Ж
)77 
;77 
}88 	
public:: 
override:: 
IDisplayResult:: &
Edit::' +
(::+ ,
User::, 0
user::1 5
)::5 6
{;; 	
return<< 

Initialize<< 
<<< 
EditUserViewModel<< /
><</ 0
(<<0 1
$str<<1 B
,<<B C
async<<D I
model<<J O
=><<P R
{== 
model>> 
.>> 
EmailConfirmed>> $
=>>% &
user>>' +
.>>+ ,
EmailConfirmed>>, :
;>>: ;
model?? 
.?? 
	IsEnabled?? 
=??  !
user??" &
.??& '
	IsEnabled??' 0
;??0 1
modelAA 
.AA 
IsEditingDisabledAA '
=AA( )
!AA* +
awaitAA+ 0!
_authorizationServiceAA1 F
.AAF G
AuthorizeAsyncAAG U
(AAU V 
_httpContextAccessorAAV j
.AAj k
HttpContextAAk v
.AAv w
UserAAw {
,AA{ |
Permissions	AA} И
.
AAИ Й
ManageUsers
AAЙ Ф
,
AAФ Х
user
AAЦ Ъ
)
AAЪ Ы
||
AAЬ Ю
StringBB 
.BB 
EqualsBB !
(BB! " 
_httpContextAccessorBB" 6
.BB6 7
HttpContextBB7 B
.BBB C
UserBBC G
.BBG H
FindFirstValueBBH V
(BBV W

ClaimTypesBBW a
.BBa b
NameIdentifierBBb p
)BBp q
,BBq r
userBBs w
.BBw x
UserIdBBx ~
,BB~ 
StringComparison
BBА Р
.
BBР С
OrdinalIgnoreCase
BBС Ґ
)
BBҐ £
;
BB£ §
}CC 
)CC 
.DD 
LocationDD 
(DD 
$strDD #
)DD# $
.EE 

RenderWhenEE 
(EE 
(EE 
)EE 
=>EE !
_authorizationServiceEE 3
.EE3 4
AuthorizeAsyncEE4 B
(EEB C 
_httpContextAccessorEEC W
.EEW X
HttpContextEEX c
.EEc d
UserEEd h
,EEh i
PermissionsEEj u
.EEu v
	ViewUsersEEv 
,	EE А
user
EEБ Е
)
EEЕ Ж
)
EEЖ З
;
EEЗ И
}FF 	
publicHH 
overrideHH 
asyncHH 
TaskHH "
<HH" #
IDisplayResultHH# 1
>HH1 2
UpdateAsyncHH3 >
(HH> ?
UserHH? C
userHHD H
,HHH I
UpdateEditorContextHHJ ]
contextHH^ e
)HHe f
{II 	
ifKK 
(KK 
!KK 
awaitKK !
_authorizationServiceKK ,
.KK, -
AuthorizeAsyncKK- ;
(KK; < 
_httpContextAccessorKK< P
.KKP Q
HttpContextKKQ \
.KK\ ]
UserKK] a
,KKa b
PermissionsKKc n
.KKn o
ManageUsersKKo z
,KKz {
user	KK| А
)
KKА Б
)
KKБ В
{LL 
returnNN 
EditNN 
(NN 
userNN  
)NN  !
;NN! "
}OO 
varQQ 
modelQQ 
=QQ 
newQQ 
EditUserViewModelQQ -
(QQ- .
)QQ. /
;QQ/ 0
ifSS 
(SS 
!SS 
awaitSS 
contextSS 
.SS 
UpdaterSS &
.SS& '
TryUpdateModelAsyncSS' :
(SS: ;
modelSS; @
,SS@ A
PrefixSSB H
)SSH I
)SSI J
{TT 
returnUU 
awaitUU 
	EditAsyncUU &
(UU& '
userUU' +
,UU+ ,
contextUU- 4
)UU4 5
;UU5 6
}VV 
varXX 
isEditingDisabledXX !
=XX" #
!XX$ %
awaitXX% *!
_authorizationServiceXX+ @
.XX@ A
AuthorizeAsyncXXA O
(XXO P 
_httpContextAccessorXXP d
.XXd e
HttpContextXXe p
.XXp q
UserXXq u
,XXu v
Permissions	XXw В
.
XXВ Г
ManageUsers
XXГ О
,
XXО П
user
XXР Ф
)
XXФ Х
||
XXЦ Ш
StringYY 
.YY 
EqualsYY !
(YY! " 
_httpContextAccessorYY" 6
.YY6 7
HttpContextYY7 B
.YYB C
UserYYC G
.YYG H
FindFirstValueYYH V
(YYV W

ClaimTypesYYW a
.YYa b
NameIdentifierYYb p
)YYp q
,YYq r
userYYs w
.YYw x
UserIdYYx ~
,YY~ 
StringComparison
YYА Р
.
YYР С
OrdinalIgnoreCase
YYС Ґ
)
YYҐ £
;
YY£ §
if[[ 
([[ 
![[ 
isEditingDisabled[[ "
&&[[# %
![[% &
model[[& +
.[[+ ,
	IsEnabled[[, 5
&&[[6 8
user[[9 =
.[[= >
	IsEnabled[[> G
)[[G H
{\\ 
var]] 
usersOfAdminRole]] $
=]]% &
(]]' (
await]]( -
_userManager]]. :
.]]: ;
GetUsersInRoleAsync]]; N
(]]N O
AdministratorRole]]O `
)]]` a
)]]a b
.]]b c
Cast]]c g
<]]g h
User]]h l
>]]l m
(]]m n
)]]n o
;]]o p
;]]q r
if^^ 
(^^ 
usersOfAdminRole^^ $
.^^$ %
Count^^% *
(^^* +
)^^+ ,
==^^- /
$num^^0 1
&&^^2 4
String^^5 ;
.^^; <
Equals^^< B
(^^B C
user^^C G
.^^G H
UserId^^H N
,^^N O
usersOfAdminRole^^P `
.^^` a
First^^a f
(^^f g
)^^g h
.^^h i
UserId^^i o
,^^o p
StringComparison	^^q Б
.
^^Б В
OrdinalIgnoreCase
^^В У
)
^^У Ф
)
^^Ф Х
{__ 
	_notifier`` 
.`` 
Warning`` %
(``% &
H``& '
[``' (
$str``( P
]``P Q
)``Q R
;``R S
}aa 
elsebb 
{cc 
userdd 
.dd 
	IsEnableddd "
=dd# $
modeldd% *
.dd* +
	IsEnableddd+ 4
;dd4 5
varee 
userContextee #
=ee$ %
newee& )
UserContextee* 5
(ee5 6
useree6 :
)ee: ;
;ee; <
awaithh 
_userEventHandlershh ,
.hh, -
InvokeAsynchh- 8
(hh8 9
(hh9 :
handlerhh: A
,hhA B
contexthhC J
)hhJ K
=>hhL N
handlerhhO V
.hhV W
DisabledAsynchhW d
(hhd e
userContexthhe p
)hhp q
,hhq r
userContexthhs ~
,hh~ 
_logger
hhА З
)
hhЗ И
;
hhИ Й
}ii 
}jj 
elsekk 
ifkk 
(kk 
!kk 
isEditingDisabledkk '
&&kk( *
modelkk+ 0
.kk0 1
	IsEnabledkk1 :
&&kk; =
!kk> ?
userkk? C
.kkC D
	IsEnabledkkD M
)kkM N
{ll 
usermm 
.mm 
	IsEnabledmm 
=mm  
modelmm! &
.mm& '
	IsEnabledmm' 0
;mm0 1
varnn 
userContextnn 
=nn  !
newnn" %
UserContextnn& 1
(nn1 2
usernn2 6
)nn6 7
;nn7 8
awaitqq 
_userEventHandlersqq (
.qq( )
InvokeAsyncqq) 4
(qq4 5
(qq5 6
handlerqq6 =
,qq= >
contextqq? F
)qqF G
=>qqH J
handlerqqK R
.qqR S
EnabledAsyncqqS _
(qq_ `
userContextqq` k
)qqk l
,qql m
userContextqqn y
,qqy z
_logger	qq{ В
)
qqВ Г
;
qqГ Д
}rr 
iftt 
(tt 
contexttt 
.tt 
Updatertt 
.tt  

ModelStatett  *
.tt* +
IsValidtt+ 2
)tt2 3
{uu 
ifvv 
(vv 
modelvv 
.vv 
EmailConfirmedvv (
&&vv) +
!vv, -
awaitvv- 2
_userManagervv3 ?
.vv? @!
IsEmailConfirmedAsyncvv@ U
(vvU V
uservvV Z
)vvZ [
)vv[ \
{ww 
varxx 
tokenxx 
=xx 
awaitxx  %
_userManagerxx& 2
.xx2 3/
#GenerateEmailConfirmationTokenAsyncxx3 V
(xxV W
userxxW [
)xx[ \
;xx\ ]
awaityy 
_userManageryy &
.yy& '
ConfirmEmailAsyncyy' 8
(yy8 9
useryy9 =
,yy= >
tokenyy? D
)yyD E
;yyE F
}zz 
}{{ 
return}} 
Edit}} 
(}} 
user}} 
)}} 
;}} 
}~~ 	
} 
}АА з6
ЩD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\UserInformationDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Drivers #
{ 
public 

class (
UserInformationDisplayDriver -
:. /
DisplayDriver0 =
<= >
User> B
>B C
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public (
UserInformationDisplayDriver +
(+ , 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
User, 0
user1 5
)5 6
{ 	
return 

Initialize 
< (
EditUserInformationViewModel :
>: ;
(; <
$str< X
,X Y
asyncZ _
model` e
=>f h
{ 
model   
.   
UserName   
=    
user  ! %
.  % &
UserName  & .
;  . /
model!! 
.!! 
Email!! 
=!! 
user!! "
.!!" #
Email!!# (
;!!( )
model"" 
."" 
IsEditingDisabled"" '
=""( )
!""* +
await""+ 0 
AuthorizeUpdateAsync""1 E
(""E F
user""F J
)""J K
;""K L
}## 
)## 
.$$ 
Location$$ 
($$ 
$str$$ !
)$$! "
.%% 

RenderWhen%% 
(%% 
(%% 
)%% 
=>%% 
AuthorizeEditAsync%% 0
(%%0 1
user%%1 5
)%%5 6
)%%6 7
;%%7 8
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IDisplayResult((# 1
>((1 2
UpdateAsync((3 >
(((> ?
User((? C
user((D H
,((H I
UpdateEditorContext((J ]
context((^ e
)((e f
{)) 	
if** 
(** 
!** 
await**  
AuthorizeUpdateAsync** +
(**+ ,
user**, 0
)**0 1
)**1 2
{++ 
return,, 
Edit,, 
(,, 
user,,  
),,  !
;,,! "
}-- 
var// 
model// 
=// 
new// (
EditUserInformationViewModel// 8
(//8 9
)//9 :
;//: ;
if11 
(11 
await11 
context11 
.11 
Updater11 %
.11% &
TryUpdateModelAsync11& 9
(119 :
model11: ?
,11? @
Prefix11A G
)11G H
)11H I
{22 
user99 
.99 
UserName99 
=99 
model99  %
.99% &
UserName99& .
;99. /
user:: 
.:: 
Email:: 
=:: 
model:: "
.::" #
Email::# (
;::( )
};; 
return== 
Edit== 
(== 
user== 
)== 
;== 
}>> 	
private@@ 
async@@ 
Task@@ 
<@@ 
bool@@ 
>@@   
AuthorizeUpdateAsync@@! 5
(@@5 6
User@@6 :
user@@; ?
)@@? @
{AA 	
ifCC 
(CC 
StringCC 
.CC 
EqualsCC 
(CC 
userCC "
.CC" #
UserIdCC# )
,CC) * 
_httpContextAccessorCC+ ?
.CC? @
HttpContextCC@ K
.CCK L
UserCCL P
.CCP Q
FindFirstValueCCQ _
(CC_ `

ClaimTypesCC` j
.CCj k
NameIdentifierCCk y
)CCy z
,CCz {
StringComparison	CC| М
.
CCМ Н
OrdinalIgnoreCase
CCН Ю
)
CCЮ Я
)
CCЯ †
{DD 
returnEE 
awaitEE !
_authorizationServiceEE 2
.EE2 3
AuthorizeAsyncEE3 A
(EEA B 
_httpContextAccessorEEB V
.EEV W
HttpContextEEW b
.EEb c
UserEEc g
,EEg h
PermissionsEEi t
.EEt u%
ManageOwnUserInformation	EEu Н
)
EEН О
;
EEО П
}FF 
returnII 
awaitII !
_authorizationServiceII .
.II. /
AuthorizeAsyncII/ =
(II= > 
_httpContextAccessorII> R
.IIR S
HttpContextIIS ^
.II^ _
UserII_ c
,IIc d
PermissionsIIe p
.IIp q
ManageUsersIIq |
,II| }
user	II~ В
)
IIВ Г
;
IIГ Д
}JJ 	
privateLL 
asyncLL 
TaskLL 
<LL 
boolLL 
>LL  
AuthorizeEditAsyncLL! 3
(LL3 4
UserLL4 8
userLL9 =
)LL= >
{MM 	
ifOO 
(OO 
StringOO 
.OO 
EqualsOO 
(OO 
userOO "
.OO" #
UserIdOO# )
,OO) * 
_httpContextAccessorOO+ ?
.OO? @
HttpContextOO@ K
.OOK L
UserOOL P
.OOP Q
FindFirstValueOOQ _
(OO_ `

ClaimTypesOO` j
.OOj k
NameIdentifierOOk y
)OOy z
,OOz {
StringComparison	OO| М
.
OOМ Н
OrdinalIgnoreCase
OOН Ю
)
OOЮ Я
)
OOЯ †
{PP 
returnQQ 
awaitQQ !
_authorizationServiceQQ 2
.QQ2 3
AuthorizeAsyncQQ3 A
(QQA B 
_httpContextAccessorQQB V
.QQV W
HttpContextQQW b
.QQb c
UserQQc g
,QQg h
PermissionsQQi t
.QQt u%
ManageOwnUserInformation	QQu Н
)
QQН О
;
QQО П
}RR 
returnUU 
awaitUU !
_authorizationServiceUU .
.UU. /
AuthorizeAsyncUU/ =
(UU= > 
_httpContextAccessorUU> R
.UUR S
HttpContextUUS ^
.UU^ _
UserUU_ c
,UUc d
PermissionsUUe p
.UUp q
	ViewUsersUUq z
,UUz {
user	UU| А
)
UUА Б
;
UUБ В
}VV 	
}WW 
}XX „И
ТD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\UserRoleDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Drivers #
{ 
public 

class !
UserRoleDisplayDriver &
:' (
DisplayDriver) 6
<6 7
User7 ;
>; <
{ 
private 
const 
string 
AdministratorRole .
=/ 0
$str1 @
;@ A
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly 
IRoleService %
_roleService& 2
;2 3
private 
readonly 
IUserRoleStore '
<' (
IUser( -
>- .
_userRoleStore/ =
;= >
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public   !
UserRoleDisplayDriver   $
(  $ %
UserManager!! 
<!! 
IUser!! 
>!! 
userManager!! *
,!!* +
IRoleService"" 
roleService"" $
,""$ %
IUserRoleStore## 
<## 
IUser##  
>##  !
userRoleStore##" /
,##/ 0 
IHttpContextAccessor$$  
httpContextAccessor$$! 4
,$$4 5
	INotifier%% 
notifier%% 
,%% !
IAuthorizationService&& ! 
authorizationService&&" 6
,&&6 7
IHtmlLocalizer'' 
<'' !
UserRoleDisplayDriver'' 0
>''0 1
htmlLocalizer''2 ?
)''? @
{(( 	
_userManager)) 
=)) 
userManager)) &
;))& '
_roleService** 
=** 
roleService** &
;**& '
_userRoleStore++ 
=++ 
userRoleStore++ *
;++* + 
_httpContextAccessor,,  
=,,! "
httpContextAccessor,,# 6
;,,6 7
	_notifier-- 
=-- 
notifier--  
;--  !!
_authorizationService.. !
=.." # 
authorizationService..$ 8
;..8 9
H// 
=// 
htmlLocalizer// 
;// 
}00 	
public22 
override22 
IDisplayResult22 &
Edit22' +
(22+ ,
User22, 0
user221 5
)225 6
{33 	
return55 

Initialize55 
<55 !
EditUserRoleViewModel55 3
>553 4
(554 5
$str555 J
,55J K
async55L Q
model55R W
=>55X Z
{66 
if88 
(88 
String88 
.88 
Equals88 !
(88! " 
_httpContextAccessor88" 6
.886 7
HttpContext887 B
.88B C
User88C G
.88G H
FindFirstValue88H V
(88V W

ClaimTypes88W a
.88a b
NameIdentifier88b p
)88p q
,88q r
user88s w
.88w x
UserId88x ~
,88~ 
StringComparison
88А Р
.
88Р С
OrdinalIgnoreCase
88С Ґ
)
88Ґ £
&&
88§ ¶
!99 
await99 !
_authorizationService99 0
.990 1
AuthorizeAsync991 ?
(99? @ 
_httpContextAccessor99@ T
.99T U
HttpContext99U `
.99` a
User99a e
,99e f
Permissions99g r
.99r s
	ViewUsers99s |
)99| }
)99} ~
{:: 
return;; 
;;; 
}<< 
var>> 
	roleNames>> 
=>> 
await>>  %
GetRoleNamesAsync>>& 7
(>>7 8
)>>8 9
;>>9 :
varAA 
authorizedRoleNamesAA '
=AA( )
awaitAA* /'
GetAuthorizedRoleNamesAsyncAA0 K
(AAK L
	roleNamesAAL U
)AAU V
;AAV W
varBB 
userRoleNamesBB !
=BB" #
awaitBB$ )
_userRoleStoreBB* 8
.BB8 9
GetRolesAsyncBB9 F
(BBF G
userBBG K
,BBK L
defaultBBM T
(BBT U
CancellationTokenBBU f
)BBf g
)BBg h
;BBh i
varDD 
roleEntriesDD 
=DD  !
newDD" %
ListDD& *
<DD* +
	RoleEntryDD+ 4
>DD4 5
(DD5 6
)DD6 7
;DD7 8
foreachEE 
(EE 
varEE 
roleNameEE $
inEE% '
	roleNamesEE( 1
)EE1 2
{FF 
varGG 
	roleEntryGG !
=GG" #
newGG$ '
	RoleEntryGG( 1
{HH 
RoleII 
=II 
roleNameII '
,II' (

IsSelectedJJ "
=JJ# $
userRoleNamesJJ% 2
.JJ2 3
ContainsJJ3 ;
(JJ; <
roleNameJJ< D
,JJD E
StringComparerJJF T
.JJT U
OrdinalIgnoreCaseJJU f
)JJf g
}KK 
;KK 
ifMM 
(MM 
!MM 
authorizedRoleNamesMM ,
.MM, -
ContainsMM- 5
(MM5 6
roleNameMM6 >
,MM> ?
StringComparerMM@ N
.MMN O
OrdinalIgnoreCaseMMO `
)MM` a
)MMa b
{NN 
	roleEntryOO !
.OO! "
IsEditingDisabledOO" 3
=OO4 5
trueOO6 :
;OO: ;
}PP 
roleEntriesRR 
.RR  
AddRR  #
(RR# $
	roleEntryRR$ -
)RR- .
;RR. /
}SS 
modelUU 
.UU 
RolesUU 
=UU 
roleEntriesUU )
.UU) *
ToArrayUU* 1
(UU1 2
)UU2 3
;UU3 4
}VV 
)VV 
.WW 
LocationWW 
(WW 
$strWW $
)WW$ %
;WW% &
}XX 	
publicZZ 
overrideZZ 
asyncZZ 
TaskZZ "
<ZZ" #
IDisplayResultZZ# 1
>ZZ1 2
UpdateAsyncZZ3 >
(ZZ> ?
UserZZ? C
userZZD H
,ZZH I
UpdateEditorContextZZJ ]
contextZZ^ e
)ZZe f
{[[ 	
var\\ 
model\\ 
=\\ 
new\\ !
EditUserRoleViewModel\\ 1
(\\1 2
)\\2 3
;\\3 4
if__ 
(__ 
String__ 
.__ 
Equals__ 
(__  
_httpContextAccessor__ 2
.__2 3
HttpContext__3 >
.__> ?
User__? C
.__C D
FindFirstValue__D R
(__R S

ClaimTypes__S ]
.__] ^
NameIdentifier__^ l
)__l m
,__m n
user__o s
.__s t
UserId__t z
,__z {
StringComparison	__| М
.
__М Н
OrdinalIgnoreCase
__Н Ю
)
__Ю Я
)
__Я †
{`` 
returnaa 
Editaa 
(aa 
useraa  
)aa  !
;aa! "
}bb 
ifdd 
(dd 
awaitdd 
contextdd 
.dd 
Updaterdd %
.dd% &
TryUpdateModelAsyncdd& 9
(dd9 :
modeldd: ?
,dd? @
PrefixddA G
)ddG H
)ddH I
{ee 
vargg 
authorizedRoleNamesgg '
=gg( )
awaitgg* /'
GetAuthorizedRoleNamesAsyncgg0 K
(ggK L
modelggL Q
.ggQ R
RolesggR W
.ggW X
SelectggX ^
(gg^ _
xgg_ `
=>gga c
xggd e
.gge f
Roleggf j
)ggj k
)ggk l
;ggl m
varhh 
userRoleNameshh !
=hh" #
awaithh$ )
_userRoleStorehh* 8
.hh8 9
GetRolesAsynchh9 F
(hhF G
userhhG K
,hhK L
defaulthhM T
(hhT U
CancellationTokenhhU f
)hhf g
)hhg h
;hhh i
varjj '
authorizedSelectedRoleNamesjj /
=jj0 1
awaitjj2 7'
GetAuthorizedRoleNamesAsyncjj8 S
(jjS T
modeljjT Y
.jjY Z
RolesjjZ _
.jj_ `
Wherejj` e
(jje f
xjjf g
=>jjh j
xjjk l
.jjl m

IsSelectedjjm w
)jjw x
.jjx y
Selectjjy 
(	jj А
x
jjА Б
=>
jjВ Д
x
jjЕ Ж
.
jjЖ З
Role
jjЗ Л
)
jjЛ М
)
jjМ Н
;
jjН О
ifll 
(ll 
contextll 
.ll 
IsNewll !
)ll! "
{mm 
foreachoo 
(oo 
varoo  
roleoo! %
inoo& ('
authorizedSelectedRoleNamesoo) D
)ooD E
{pp 
awaitqq 
_userRoleStoreqq ,
.qq, -
AddToRoleAsyncqq- ;
(qq; <
userqq< @
,qq@ A
_userManagerqqB N
.qqN O
NormalizeNameqqO \
(qq\ ]
roleqq] a
)qqa b
,qqb c
defaultqqd k
(qqk l
CancellationTokenqql }
)qq} ~
)qq~ 
;	qq А
}rr 
}ss 
elsett 
{uu 
varww 
rolesToRemoveww %
=ww& '
newww( +
Listww, 0
<ww0 1
stringww1 7
>ww7 8
(ww8 9
)ww9 :
;ww: ;
foreachxx 
(xx 
varxx  
rolexx! %
inxx& (
userRoleNamesxx) 6
)xx6 7
{yy 
if{{ 
({{ 
authorizedRoleNames{{ /
.{{/ 0
Contains{{0 8
({{8 9
role{{9 =
,{{= >
StringComparer{{? M
.{{M N
OrdinalIgnoreCase{{N _
){{_ `
&&{{a c
!{{d e(
authorizedSelectedRoleNames	{{e А
.
{{А Б
Contains
{{Б Й
(
{{Й К
role
{{К О
,
{{О П
StringComparer
{{Р Ю
.
{{Ю Я
OrdinalIgnoreCase
{{Я ∞
)
{{∞ ±
)
{{± ≤
{|| 
rolesToRemove}} )
.}}) *
Add}}* -
(}}- .
role}}. 2
)}}2 3
;}}3 4
}~~ 
} 
foreach
АА 
(
АА 
var
АА  
role
АА! %
in
АА& (
rolesToRemove
АА) 6
)
АА6 7
{
ББ 
if
ВВ 
(
ВВ 
String
ВВ "
.
ВВ" #
Equals
ВВ# )
(
ВВ) *
role
ВВ* .
,
ВВ. /
AdministratorRole
ВВ0 A
,
ВВA B
StringComparison
ВВC S
.
ВВS T
OrdinalIgnoreCase
ВВT e
)
ВВe f
)
ВВf g
{
ГГ 
var
ДД 
usersOfAdminRole
ДД  0
=
ДД1 2
(
ДД3 4
await
ДД4 9
_userManager
ДД: F
.
ДДF G!
GetUsersInRoleAsync
ДДG Z
(
ДДZ [
AdministratorRole
ДД[ l
)
ДДl m
)
ДДm n
.
ДДn o
Cast
ДДo s
<
ДДs t
User
ДДt x
>
ДДx y
(
ДДy z
)
ДДz {
;
ДД{ |
if
ЖЖ 
(
ЖЖ  
usersOfAdminRole
ЖЖ  0
.
ЖЖ0 1
Count
ЖЖ1 6
(
ЖЖ6 7
)
ЖЖ7 8
==
ЖЖ9 ;
$num
ЖЖ< =
&&
ЖЖ> @
String
ЖЖA G
.
ЖЖG H
Equals
ЖЖH N
(
ЖЖN O
user
ЖЖO S
.
ЖЖS T
UserId
ЖЖT Z
,
ЖЖZ [
usersOfAdminRole
ЖЖ\ l
.
ЖЖl m
First
ЖЖm r
(
ЖЖr s
)
ЖЖs t
.
ЖЖt u
UserId
ЖЖu {
,
ЖЖ{ |
StringComparisonЖЖ} Н
.ЖЖН О!
OrdinalIgnoreCaseЖЖО Я
)ЖЖЯ †
)ЖЖ† °
{
ЗЗ 
	_notifier
ИИ  )
.
ИИ) *
Warning
ИИ* 1
(
ИИ1 2
H
ИИ2 3
[
ИИ3 4
$str
ИИ4 s
]
ИИs t
)
ИИt u
;
ИИu v
continue
ЙЙ  (
;
ЙЙ( )
}
КК 
else
ЛЛ  
{
ММ 
await
НН  %
_userRoleStore
НН& 4
.
НН4 5!
RemoveFromRoleAsync
НН5 H
(
ННH I
user
ННI M
,
ННM N
_userManager
ННO [
.
НН[ \
NormalizeName
НН\ i
(
ННi j
role
ННj n
)
ННn o
,
ННo p
default
ННq x
(
ННx y 
CancellationTokenННy К
)ННК Л
)ННЛ М
;ННМ Н
}
ОО 
}
ПП 
else
РР 
{
СС 
await
ТТ !
_userRoleStore
ТТ" 0
.
ТТ0 1!
RemoveFromRoleAsync
ТТ1 D
(
ТТD E
user
ТТE I
,
ТТI J
_userManager
ТТK W
.
ТТW X
NormalizeName
ТТX e
(
ТТe f
role
ТТf j
)
ТТj k
,
ТТk l
default
ТТm t
(
ТТt u 
CancellationTokenТТu Ж
)ТТЖ З
)ТТЗ И
;ТТИ Й
}
УУ 
}
ФФ 
foreach
ЧЧ 
(
ЧЧ 
var
ЧЧ  
role
ЧЧ! %
in
ЧЧ& ()
authorizedSelectedRoleNames
ЧЧ) D
)
ЧЧD E
{
ШШ 
if
ЩЩ 
(
ЩЩ 
!
ЩЩ 
await
ЩЩ "
_userRoleStore
ЩЩ# 1
.
ЩЩ1 2
IsInRoleAsync
ЩЩ2 ?
(
ЩЩ? @
user
ЩЩ@ D
,
ЩЩD E
_userManager
ЩЩF R
.
ЩЩR S
NormalizeName
ЩЩS `
(
ЩЩ` a
role
ЩЩa e
)
ЩЩe f
,
ЩЩf g
default
ЩЩh o
(
ЩЩo p 
CancellationTokenЩЩp Б
)ЩЩБ В
)ЩЩВ Г
)ЩЩГ Д
{
ЪЪ 
await
ЫЫ !
_userRoleStore
ЫЫ" 0
.
ЫЫ0 1
AddToRoleAsync
ЫЫ1 ?
(
ЫЫ? @
user
ЫЫ@ D
,
ЫЫD E
_userManager
ЫЫF R
.
ЫЫR S
NormalizeName
ЫЫS `
(
ЫЫ` a
role
ЫЫa e
)
ЫЫe f
,
ЫЫf g
default
ЫЫh o
(
ЫЫo p 
CancellationTokenЫЫp Б
)ЫЫБ В
)ЫЫВ Г
;ЫЫГ Д
}
ЬЬ 
}
ЭЭ 
}
ЮЮ 
}
ЯЯ 
return
°° 
Edit
°° 
(
°° 
user
°° 
)
°° 
;
°° 
}
ҐҐ 	
private
§§ 
async
§§ 
Task
§§ 
<
§§ 
IEnumerable
§§ &
<
§§& '
string
§§' -
>
§§- .
>
§§. /
GetRoleNamesAsync
§§0 A
(
§§A B
)
§§B C
{
•• 	
var
¶¶ 
	roleNames
¶¶ 
=
¶¶ 
await
¶¶ !
_roleService
¶¶" .
.
¶¶. /
GetRoleNamesAsync
¶¶/ @
(
¶¶@ A
)
¶¶A B
;
¶¶B C
return
ІІ 
	roleNames
ІІ 
.
ІІ 
Except
ІІ #
(
ІІ# $
new
ІІ$ '
[
ІІ' (
]
ІІ( )
{
ІІ* +
$str
ІІ, 7
,
ІІ7 8
$str
ІІ9 H
}
ІІI J
,
ІІJ K
StringComparer
ІІL Z
.
ІІZ [
OrdinalIgnoreCase
ІІ[ l
)
ІІl m
;
ІІm n
}
®® 	
private
™™ 
async
™™ 
Task
™™ 
<
™™ 
IEnumerable
™™ &
<
™™& '
string
™™' -
>
™™- .
>
™™. /)
GetAuthorizedRoleNamesAsync
™™0 K
(
™™K L
IEnumerable
™™L W
<
™™W X
string
™™X ^
>
™™^ _
	roleNames
™™` i
)
™™i j
{
ЂЂ 	
var
ђђ !
authorizedRoleNames
ђђ #
=
ђђ$ %
new
ђђ& )
List
ђђ* .
<
ђђ. /
string
ђђ/ 5
>
ђђ5 6
(
ђђ6 7
)
ђђ7 8
;
ђђ8 9
foreach
≠≠ 
(
≠≠ 
var
≠≠ 
roleName
≠≠ !
in
≠≠" $
	roleNames
≠≠% .
)
≠≠. /
{
ЃЃ 
if
ѓѓ 
(
ѓѓ 
await
ѓѓ #
_authorizationService
ѓѓ /
.
ѓѓ/ 0
AuthorizeAsync
ѓѓ0 >
(
ѓѓ> ?"
_httpContextAccessor
ѓѓ? S
.
ѓѓS T
HttpContext
ѓѓT _
.
ѓѓ_ `
User
ѓѓ` d
,
ѓѓd e
OrchardCore
ѓѓf q
.
ѓѓq r
Roles
ѓѓr w
.
ѓѓw x 
CommonPermissionsѓѓx Й
.ѓѓЙ К-
CreatePermissionForAssignRoleѓѓК І
(ѓѓІ ®
roleNameѓѓ® ∞
)ѓѓ∞ ±
)ѓѓ± ≤
)ѓѓ≤ ≥
{
∞∞ !
authorizedRoleNames
±± '
.
±±' (
Add
±±( +
(
±±+ ,
roleName
±±, 4
)
±±4 5
;
±±5 6
}
≤≤ 
}
≥≥ 
return
µµ !
authorizedRoleNames
µµ &
;
µµ& '
}
ґґ 	
}
ЈЈ 
}ЄЄ т
КD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\GetUsersFilter.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Liquid "
{ 
public 

class 
UsersByIdFilter  
:! "
ILiquidFilter# 0
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, T
)T U
;U V
} 
var 
session 
= 
( 
( 
IServiceProvider ,
), -
services- 5
)5 6
.6 7
GetRequiredService7 I
<I J
ISessionJ R
>R S
(S T
)T U
;U V
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
Array* /
)/ 0
{ 
var 
userIds 
= 
input #
.# $
	Enumerate$ -
(- .
). /
./ 0
Select0 6
(6 7
x7 8
=>9 ;
x< =
.= >
ToStringValue> K
(K L
)L M
)M N
.N O
ToArrayO V
(V W
)W X
;X Y
return 

FluidValue !
.! "
Create" (
(( )
await) .
(/ 0
session0 7
.7 8
Query8 =
<= >
User> B
,B C
	UserIndexD M
>M N
(N O
xO P
=>Q S
xT U
.U V
UserIdV \
.\ ]
IsIn] a
(a b
userIdsb i
)i j
)j k
.k l
	ListAsyncl u
(u v
)v w
)w x
)x y
;y z
}   
else!! 
{"" 
var## 
userId## 
=## 
input## "
.##" #
ToStringValue### 0
(##0 1
)##1 2
;##2 3
return%% 

FluidValue%% !
.%%! "
Create%%" (
(%%( )
await%%) .
session%%/ 6
.%%6 7
Query%%7 <
<%%< =
User%%= A
,%%A B
	UserIndex%%C L
>%%L M
(%%M N
x%%N O
=>%%P R
x%%S T
.%%T U
UserId%%U [
==%%\ ^
userId%%_ e
)%%e f
.%%f g
FirstOrDefaultAsync%%g z
(%%z {
)%%{ |
)%%| }
;%%} ~
}&& 
}'' 	
}(( 
})) ƒ
КD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\HasClaimFilter.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Liquid "
{ 
public		 

class		 
HasClaimFilter		 
:		  !
ILiquidFilter		" /
{

 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
contexto v
)v w
{ 	
var 
ret 
= 
false 
; 
var 
	claimType 
= 
	arguments %
[% &
$str& ,
], -
.- .
Or. 0
(0 1
	arguments1 :
.: ;
At; =
(= >
$num> ?
)? @
)@ A
.A B
ToStringValueB O
(O P
)P Q
;Q R
var 
	claimName 
= 
	arguments %
[% &
$str& ,
], -
.- .
Or. 0
(0 1
	arguments1 :
.: ;
At; =
(= >
$num> ?
)? @
)@ A
.A B
ToStringValueB O
(O P
)P Q
;Q R
if 
( 
input 
. 
ToObjectValue #
(# $
)$ %
is& (
ClaimsPrincipal) 8
	principal9 B
)B C
{ 
ret 
= 
	principal 
.  
HasClaim  (
(( )
	claimType) 2
,2 3
	claimName4 =
)= >
;> ?
} 
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
ret- 0
?1 2
BooleanValue3 ?
.? @
True@ D
:E F
BooleanValueG S
.S T
FalseT Y
)Y Z
;Z [
} 	
} 
} а"
ПD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\HasPermissionFilter.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Liquid "
{ 
public 

class 
HasPermissionFilter $
:% &
ILiquidFilter' 4
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
contextu |
)| }
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesObjG R
)R S
)S T
{ 
throw 
new 
ArgumentException +
(+ ,
$str, Y
)Y Z
;Z [
} 
var 
services 
= 
servicesObj &
as' )
IServiceProvider* :
;: ;
var 
auth 
= 
services 
.  
GetRequiredService  2
<2 3!
IAuthorizationService3 H
>H I
(I J
)J K
;K L
var 
permissionProviders #
=$ %
services& .
.. /
GetRequiredService/ A
<A B
IEnumerableB M
<M N
IPermissionProviderN a
>a b
>b c
(c d
)d e
;e f
var 
	clearance 
= 
false !
;! "
var 
permissionName 
=  
	arguments! *
[* +
$str+ 7
]7 8
.8 9
Or9 ;
(; <
	arguments< E
.E F
AtF H
(H I
$numI J
)J K
)K L
.L M
ToStringValueM Z
(Z [
)[ \
;\ ]
var 
resource 
= 
	arguments $
[$ %
$str% /
]/ 0
.0 1
Or1 3
(3 4
	arguments4 =
.= >
At> @
(@ A
$numA B
)B C
)C D
.D E
ToObjectValueE R
(R S
)S T
;T U

Permission!! 

permission!! !
=!!" #
null!!$ (
;!!( )
foreach## 
(## 
var## 
provider## !
in##" $
permissionProviders##% 8
)##8 9
{$$ 
var%% 
permissions%% 
=%%  !
await%%" '
provider%%( 0
.%%0 1
GetPermissionsAsync%%1 D
(%%D E
)%%E F
;%%F G

permission'' 
='' 
permissions'' (
.''( )
FirstOrDefault'') 7
(''7 8
p''8 9
=>'': <
p''= >
.''> ?
Name''? C
==''D F
permissionName''G U
)''U V
;''V W
if)) 
()) 

permission)) 
!=)) !
null))" &
)))& '
{** 
break++ 
;++ 
},, 
}-- 
if// 
(// 

permission// 
is// 

Permission// (
&&//) +
input//, 1
.//1 2
ToObjectValue//2 ?
(//? @
)//@ A
is//B D
ClaimsPrincipal//E T
	principal//U ^
)//^ _
{00 
	clearance11 
=11 
await11 !
auth11" &
.11& '
AuthorizeAsync11' 5
(115 6
	principal116 ?
,11? @

permission11A K
,11K L
resource11M U
)11U V
;11V W
}22 
return44 
	clearance44 
?44 
BooleanValue44 +
.44+ ,
True44, 0
:441 2
BooleanValue443 ?
.44? @
False44@ E
;44E F
}55 	
}66 
}77 л
КD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\IsInRoleFilter.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Liquid "
{ 
public 

class 
IsInRoleFilter 
:  !
ILiquidFilter" /
{ 
private 
readonly 
string 
_roleClaimType  .
;. /
public 
IsInRoleFilter 
( 
IOptions &
<& '
IdentityOptions' 6
>6 7
optionsAccessor8 G
)G H
{ 	
_roleClaimType 
= 
optionsAccessor ,
., -
Value- 2
.2 3
ClaimsIdentity3 A
.A B
RoleClaimTypeB O
;O P
} 	
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
contexto v
)v w
{ 	
var 
ret 
= 
false 
; 
var 
	claimName 
= 
	arguments %
[% &
$str& ,
], -
.- .
Or. 0
(0 1
	arguments1 :
.: ;
At; =
(= >
$num> ?
)? @
)@ A
.A B
ToStringValueB O
(O P
)P Q
;Q R
if 
( 
input 
. 
ToObjectValue #
(# $
)$ %
is& (
ClaimsPrincipal) 8
	principal9 B
)B C
{ 
ret 
= 
	principal 
.  
Claims  &
.& '
Any' *
(* +
claim+ 0
=>1 3
claim4 9
.9 :
Type: >
==? A
_roleClaimTypeB P
&&Q S
claimT Y
.Y Z
ValueZ _
._ `
Equals` f
(f g
	claimNameg p
,p q
StringComparison	r В
.
В Г
OrdinalIgnoreCase
Г Ф
)
Ф Х
)
Х Ц
==
Ч Щ
true
Ъ Ю
;
Ю Я
} 
return!! 
new!! 
	ValueTask!!  
<!!  !

FluidValue!!! +
>!!+ ,
(!!, -
ret!!- 0
?!!1 2
BooleanValue!!3 ?
.!!? @
True!!@ D
:!!E F
BooleanValue!!G S
.!!S T
False!!T Y
)!!Y Z
;!!Z [
}"" 	
}## 
}$$ а
ЛD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\UserEmailFilter.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Liquid "
{		 
public

 

class

 
UserEmailFilter

  
:

! "
ILiquidFilter

# 0
{ 
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
public 
UserEmailFilter 
( 
UserManager *
<* +
IUser+ 0
>0 1
userManager2 =
)= >
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
argsZ ^
,^ _
TemplateContext` o
contextp w
)w x
{ 	
if 
( 
input 
. 
ToObjectValue #
(# $
)$ %
is& (
ClaimsPrincipal) 8
claimsPrincipal9 H
)H I
{ 
var 
email 
= 
claimsPrincipal +
.+ ,
FindFirstValue, :
(: ;
$str; B
)B C
??D F
claimsPrincipalG V
.V W
FindFirstValueW e
(e f

ClaimTypesf p
.p q
Emailq v
)v w
;w x
if 
( 
email 
== 
null !
)! "
{ 
return 
NilValue #
.# $
Instance$ ,
;, -
} 
return   

FluidValue   !
.  ! "
Create  " (
(  ( )
email  ) .
)  . /
;  / 0
}!! 
if## 
(## 
input## 
.## 
ToObjectValue## #
(### $
)##$ %
is##& (
IUser##) .
user##/ 3
)##3 4
{$$ 
return%% 

FluidValue%% !
.%%! "
Create%%" (
(%%( )
await%%) .
_userManager%%/ ;
.%%; <
GetEmailAsync%%< I
(%%I J
user%%J N
)%%N O
)%%O P
;%%P Q
}&& 
return(( 
NilValue(( 
.(( 
Instance(( $
;(($ %
})) 	
}** 
}++ °
ИD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\UserIdFilter.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Liquid "
{ 
public		 

class		 
UserIdFilter		 
:		 
ILiquidFilter		  -
{

 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
argsT X
,X Y
TemplateContextZ i
contextj q
)q r
{ 	
if 
( 
input 
. 
ToObjectValue #
(# $
)$ %
is& (
ClaimsPrincipal) 8
claimsPrincipal9 H
)H I
{ 
var 
userId 
= 
claimsPrincipal ,
., -
FindFirstValue- ;
(; <

ClaimTypes< F
.F G
NameIdentifierG U
)U V
;V W
if 
( 
userId 
== 
null "
)" #
{ 
return 
new 
	ValueTask (
<( )

FluidValue) 3
>3 4
(4 5
NilValue5 =
.= >
Instance> F
)F G
;G H
} 
return 
new 
	ValueTask $
<$ %

FluidValue% /
>/ 0
(0 1

FluidValue1 ;
.; <
Create< B
(B C
userIdC I
)I J
)J K
;K L
} 
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
NilValue- 5
.5 6
Instance6 >
)> ?
;? @
} 	
} 
} т
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\UserLiquidTemplateEventHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Liquid "
{		 
public

 

class

 *
UserLiquidTemplateEventHandler

 /
:

0 1'
ILiquidTemplateEventHandler

2 M
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public *
UserLiquidTemplateEventHandler -
(- . 
IHttpContextAccessor. B
httpContextAccessorC V
)V W
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
Task 
RenderingAsync "
(" #
TemplateContext# 2
context3 :
): ;
{ 	
var 
user 
=  
_httpContextAccessor +
.+ ,
HttpContext, 7
.7 8
User8 <
;< =
context 
.  
MemberAccessStrategy (
.( )
Register) 1
<1 2
User2 6
>6 7
(7 8
nameof 
( 
User 
. 
UserId "
)" #
,# $
nameof 
( 
User 
. 
UserName $
)$ %
,% &
nameof 
( 
User 
. 
NormalizedUserName .
). /
,/ 0
nameof 
( 
User 
. 
Email !
)! "
," #
nameof 
( 
User 
. 
NormalizedEmail +
)+ ,
,, -
nameof 
( 
User 
. 
EmailConfirmed *
)* +
,+ ,
nameof 
( 
User 
. 
	IsEnabled %
)% &
,& '
nameof 
( 
User 
. 
	RoleNames %
)% &
,& '
nameof   
(   
User   
.   

Properties   &
)  & '
)!! 
;!! 
context## 
.##  
MemberAccessStrategy## (
.##( )
Register##) 1
<##1 2
ClaimsPrincipal##2 A
>##A B
(##B C
)##C D
;##D E
context$$ 
.$$  
MemberAccessStrategy$$ (
.$$( )
Register$$) 1
<$$1 2
ClaimsIdentity$$2 @
>$$@ A
($$A B
)$$B C
;$$C D
context%% 
.%% 
SetValue%% 
(%% 
$str%% #
,%%# $
user%%% )
)%%) *
;%%* +
return'' 
Task'' 
.'' 
CompletedTask'' %
;''% &
}(( 	
})) 
}** ∞
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Manifest.cs
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
) 
] 
[

 
assembly

 	
:

	 

Feature

 
(

 
Id 
= 
$str	 
, 
Name 
=	 

$str 
, 
Description 
= 
$str S
,S T
Category 
= 
$str 
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 (
,( )
Name 
=	 

$str 
,  
Description 
= 
$str X
,X Y
Dependencies 
= 
new 
[ 
] 
{ 
$str .
}/ 0
,0 1
Category 
= 
$str 
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 )
,) *
Name 
=	 

$str 
,  
Description 
= 
$str y
,y z
Dependencies 
= 
new 
[ 
] 
{ 
$str .
,. /
$str0 C
}D E
,E F
Category 
= 
$str 
) 
] 
[!! 
assembly!! 	
:!!	 

Feature!! 
(!! 
Id"" 
="" 
$str""	 *
,""* +
Name## 
=##	 

$str## !
,##! "
Description$$ 
=$$ 
$str$$ T
,$$T U
Dependencies%% 
=%% 
new%% 
[%% 
]%% 
{%% 
$str%% .
,%%. /
$str%%0 C
}%%D E
,%%E F
Category&& 
=&& 
$str&& 
)'' 
]'' 
[)) 
assembly)) 	
:))	 

Feature)) 
()) 
Id** 
=** 
$str**	 %
,**% &
Name++ 
=++	 

$str++ 
,++ 
Description,, 
=,, 
$str,, A
,,,A B
Dependencies-- 
=-- 
new-- 
[-- 
]-- 
{-- 
$str-- .
}--/ 0
,--0 1
Category.. 
=.. 
$str.. 
)// 
]// 
[11 
assembly11 	
:11	 

Feature11 
(11 
Id22 
=22 
$str22	 /
,22/ 0
Name33 
=33	 

$str33 !
,33! "
Description44 
=44 
$str44 i
,44i j
Dependencies55 
=55 
new55 
[55 
]55 
{55 
$str55 1
,551 2
$str553 F
}55G H
,55H I
Category66 
=66 
$str66 
)77 
]77 Гd
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Migrations.cs
	namespace 	
OrchardCore
 
. 
Users 
{		 
public

 

class

 

Migrations

 
:

 
DataMigration

 +
{ 
private 
readonly 
ISession !
_session" *
;* +
public 

Migrations 
( 
ISession "
session# *
)* +
{ 	
_session 
= 
session 
; 
} 	
public 
int 
Create 
( 
) 
{ 	
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
	UserIndex. 7
>7 8
(8 9
table9 >
=>? A
tableB G
. 
Column 
< 
string 
> 
(  
$str  4
)4 5
. 
Column 
< 
string 
> 
(  
$str  1
)1 2
. 
Column 
< 
bool 
> 
( 
$str )
,) *
c+ ,
=>- /
c0 1
.1 2
NotNull2 9
(9 :
): ;
.; <
WithDefault< G
(G H
trueH L
)L M
)M N
. 
Column 
< 
string 
> 
(  
$str  (
)( )
) 
; 
SchemaBuilder 
. 
AlterIndexTable )
<) *
	UserIndex* 3
>3 4
(4 5
table5 :
=>; =
table> C
. 
CreateIndex 
( 
$str 7
,7 8
$str  
,  !
$str   
,   
$str!! (
,!!( )
$str"" %
,""% &
$str## 
)##  
)$$ 
;$$ 
SchemaBuilder&& 
.&& "
CreateReduceIndexTable&& 0
<&&0 1
UserByRoleNameIndex&&1 D
>&&D E
(&&E F
table&&F K
=>&&L N
table&&O T
.'' 
Column'' 
<'' 
string'' 
>'' 
('' 
$str'' )
)'') *
.(( 
Column(( 
<(( 
int(( 
>(( 
((( 
$str(( #
)((# $
))) 
;)) 
SchemaBuilder++ 
.++ 
CreateMapIndexTable++ -
<++- . 
UserByLoginInfoIndex++. B
>++B C
(++C D
table++D I
=>++J L
table++M R
.,, 
Column,, 
<,, 
string,, 
>,, 
(,,  
$str,,  /
),,/ 0
.-- 
Column-- 
<-- 
string-- 
>-- 
(--  
$str--  -
)--- .
)--. /
;--/ 0
SchemaBuilder// 
.// 
AlterIndexTable// )
<//) * 
UserByLoginInfoIndex//* >
>//> ?
(//? @
table//@ E
=>//F H
table//I N
.00 
CreateIndex00 
(00 
$str00 B
,00B C
$str11  
,11  !
$str22 #
,22# $
$str33 !
)33! "
)44 
;44 
SchemaBuilder66 
.66 
CreateMapIndexTable66 -
<66- .
UserByClaimIndex66. >
>66> ?
(66? @
table66@ E
=>66F H
table66I N
.77 
Column77 
<77 
string77 
>77 
(77 
nameof77 %
(77% &
UserByClaimIndex77& 6
.776 7
	ClaimType777 @
)77@ A
)77A B
.88 
Column88 
<88 
string88 
>88 
(88 
nameof88 %
(88% &
UserByClaimIndex88& 6
.886 7

ClaimValue887 A
)88A B
)88B C
,88C D
null99 
)99 
;99 
SchemaBuilder;; 
.;; 
AlterIndexTable;; )
<;;) *
UserByClaimIndex;;* :
>;;: ;
(;;; <
table;;< A
=>;;B D
table;;E J
.<< 
CreateIndex<< 
(<< 
$str<< >
,<<> ?
$str==  
,==  !
nameof>> 
(>> 
UserByClaimIndex>> +
.>>+ ,
	ClaimType>>, 5
)>>5 6
,>>6 7
nameof?? 
(?? 
UserByClaimIndex?? +
.??+ ,

ClaimValue??, 6
)??6 7
)??7 8
)@@ 
;@@ 
returnCC 
$numCC 
;CC 
}DD 	
publicGG 
intGG 
UpdateFrom1GG 
(GG 
)GG  
{HH 	
SchemaBuilderII 
.II 
CreateMapIndexTableII -
<II- . 
UserByLoginInfoIndexII. B
>IIB C
(IIC D
tableIID I
=>IIJ L
tableIIM R
.JJ 
ColumnJJ 
<JJ 
stringJJ 
>JJ 
(JJ  
$strJJ  /
)JJ/ 0
.KK 
ColumnKK 
<KK 
stringKK 
>KK 
(KK  
$strKK  -
)KK- .
)KK. /
;KK/ 0
returnMM 
$numMM 
;MM 
}NN 	
publicQQ 
intQQ 
UpdateFrom2QQ 
(QQ 
)QQ  
{RR 	
SchemaBuilderSS 
.SS 
CreateMapIndexTableSS -
<SS- .
UserByClaimIndexSS. >
>SS> ?
(SS? @
tableSS@ E
=>SSF H
tableSSI N
.TT 
ColumnTT 
<TT 
stringTT 
>TT 
(TT 
nameofTT %
(TT% &
UserByClaimIndexTT& 6
.TT6 7
	ClaimTypeTT7 @
)TT@ A
)TTA B
.UU 
ColumnUU 
<UU 
stringUU 
>UU 
(UU 
nameofUU %
(UU% &
UserByClaimIndexUU& 6
.UU6 7

ClaimValueUU7 A
)UUA B
)UUB C
,UUC D
nullVV 
)VV 
;VV 
returnXX 
$numXX 
;XX 
}YY 	
public\\ 
int\\ 
UpdateFrom3\\ 
(\\ 
)\\  
{]] 	
SchemaBuilder^^ 
.^^ 
AlterIndexTable^^ )
<^^) *
	UserIndex^^* 3
>^^3 4
(^^4 5
table^^5 :
=>^^; =
table^^> C
.__ 
	AddColumn__ 
<__ 
bool__ 
>__  
(__  !
nameof__! '
(__' (
	UserIndex__( 1
.__1 2
	IsEnabled__2 ;
)__; <
,__< =
c__> ?
=>__@ B
c__C D
.__D E
NotNull__E L
(__L M
)__M N
.__N O
WithDefault__O Z
(__Z [
true__[ _
)___ `
)__` a
)__a b
;__b c
returnaa 
$numaa 
;aa 
}bb 	
publicff 
intff 
UpdateFrom4ff 
(ff 
)ff  
{gg 	
SchemaBuilderhh 
.hh 
AlterIndexTablehh )
<hh) *
	UserIndexhh* 3
>hh3 4
(hh4 5
tablehh5 :
=>hh; =
tablehh> C
.ii 
	AddColumnii 
<ii 
stringii !
>ii! "
(ii" #
$strii# +
)ii+ ,
)ii, -
;ii- .
returnkk 
$numkk 
;kk 
}ll 	
publicrr 
asyncrr 
Taskrr 
<rr 
intrr 
>rr 
UpdateFrom5Asyncrr /
(rr/ 0
)rr0 1
{ss 	
vartt 
userstt 
=tt 
awaittt 
_sessiontt &
.tt& '
Querytt' ,
<tt, -
Usertt- 1
>tt1 2
(tt2 3
)tt3 4
.tt4 5
	ListAsynctt5 >
(tt> ?
)tt? @
;tt@ A
foreachuu 
(uu 
varuu 
useruu 
inuu  
usersuu! &
)uu& '
{vv 
userww 
.ww 
UserIdww 
=ww 
userww "
.ww" #
UserNameww# +
;ww+ ,
_sessionxx 
.xx 
Savexx 
(xx 
userxx "
)xx" #
;xx# $
}yy 
return{{ 
$num{{ 
;{{ 
}|| 	
public
АА 
int
АА 
UpdateFrom6
АА 
(
АА 
)
АА  
{
ББ 	
return
ВВ 
$num
ВВ 
;
ВВ 
}
ГГ 	
public
ЗЗ 
async
ЗЗ 
Task
ЗЗ 
<
ЗЗ 
int
ЗЗ 
>
ЗЗ 
UpdateFrom7Async
ЗЗ /
(
ЗЗ/ 0
)
ЗЗ0 1
{
ИИ 	
var
ЙЙ 
users
ЙЙ 
=
ЙЙ 
await
ЙЙ 
_session
ЙЙ &
.
ЙЙ& '
Query
ЙЙ' ,
<
ЙЙ, -
User
ЙЙ- 1
,
ЙЙ1 2
	UserIndex
ЙЙ3 <
>
ЙЙ< =
(
ЙЙ= >
u
ЙЙ> ?
=>
ЙЙ@ B
u
ЙЙC D
.
ЙЙD E 
NormalizedUserName
ЙЙE W
.
ЙЙW X
Contains
ЙЙX `
(
ЙЙ` a
$str
ЙЙa d
)
ЙЙd e
)
ЙЙe f
.
ЙЙf g
	ListAsync
ЙЙg p
(
ЙЙp q
)
ЙЙq r
;
ЙЙr s
foreach
КК 
(
КК 
var
КК 
user
КК 
in
КК  
users
КК! &
)
КК& '
{
ЛЛ 
user
ММ 
.
ММ 
UserName
ММ 
=
ММ 
user
ММ  $
.
ММ$ %
UserName
ММ% -
.
ММ- .
Replace
ММ. 5
(
ММ5 6
$char
ММ6 9
,
ММ9 :
$char
ММ; >
)
ММ> ?
;
ММ? @
user
НН 
.
НН  
NormalizedUserName
НН '
=
НН( )
user
НН* .
.
НН. / 
NormalizedUserName
НН/ A
.
ННA B
Replace
ННB I
(
ННI J
$char
ННJ M
,
ННM N
$char
ННO R
)
ННR S
;
ННS T
_session
ОО 
.
ОО 
Save
ОО 
(
ОО 
user
ОО "
)
ОО" #
;
ОО# $
}
ПП 
return
СС 
$num
СС 
;
СС 
}
ТТ 	
public
ХХ 
int
ХХ 
UpdateFrom8
ХХ 
(
ХХ 
)
ХХ  
{
ЦЦ 	
SchemaBuilder
ЧЧ 
.
ЧЧ 
AlterIndexTable
ЧЧ )
<
ЧЧ) *
	UserIndex
ЧЧ* 3
>
ЧЧ3 4
(
ЧЧ4 5
table
ЧЧ5 :
=>
ЧЧ; =
table
ЧЧ> C
.
ШШ 
CreateIndex
ШШ 
(
ШШ 
$str
ШШ 7
,
ШШ7 8
$str
ЩЩ  
,
ЩЩ  !
$str
ЪЪ 
,
ЪЪ 
$str
ЫЫ (
,
ЫЫ( )
$str
ЬЬ %
,
ЬЬ% &
$str
ЭЭ 
)
ЭЭ  
)
ЮЮ 
;
ЮЮ 
SchemaBuilder
†† 
.
†† 
AlterIndexTable
†† )
<
††) *"
UserByLoginInfoIndex
††* >
>
††> ?
(
††? @
table
††@ E
=>
††F H
table
††I N
.
°° 
CreateIndex
°° 
(
°° 
$str
°° B
,
°°B C
$str
ҐҐ  
,
ҐҐ  !
$str
££ #
,
££# $
$str
§§ !
)
§§! "
)
•• 
;
•• 
SchemaBuilder
ІІ 
.
ІІ 
AlterIndexTable
ІІ )
<
ІІ) *
UserByClaimIndex
ІІ* :
>
ІІ: ;
(
ІІ; <
table
ІІ< A
=>
ІІB D
table
ІІE J
.
®® 
CreateIndex
®® 
(
®® 
$str
®® >
,
®®> ?
$str
©©  
,
©©  !
nameof
™™ 
(
™™ 
UserByClaimIndex
™™ +
.
™™+ ,
	ClaimType
™™, 5
)
™™5 6
,
™™6 7
nameof
ЂЂ 
(
ЂЂ 
UserByClaimIndex
ЂЂ +
.
ЂЂ+ ,

ClaimValue
ЂЂ, 6
)
ЂЂ6 7
)
ЂЂ7 8
)
ђђ 
;
ђђ 
return
ЃЃ 
$num
ЃЃ 
;
ЃЃ 
}
ѓѓ 	
}
∞∞ 
}±± І
ПD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\ChangeEmailSettings.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Models "
{ 
public 

class 
ChangeEmailSettings $
{ 
public 
bool 
AllowChangeEmail $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} Є	
ЙD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\LoginSettings.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Models "
{ 
public 

class 
LoginSettings 
{ 
public 
bool 
UseSiteTheme  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool /
#UseExternalProviderIfOnlyOneDefined 7
{8 9
get: =
;= >
set? B
;B C
}D E
public		 
bool		 
DisableLocalLogin		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public 
bool  
UseScriptToSyncRoles (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
SyncRolesScript %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} „
РD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\RegistrationSettings.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Models "
{ 
public 

class  
RegistrationSettings %
{ 
public  
UserRegistrationType #
UsersCanRegister$ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
bool "
UsersMustValidateEmail *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool 
UseSiteTheme  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool &
NoPasswordForExternalUsers .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public		 
bool		 &
NoUsernameForExternalUsers		 .
{		/ 0
get		1 4
;		4 5
set		6 9
;		9 :
}		; <
public

 
bool

 #
NoEmailForExternalUsers

 +
{

, -
get

. 1
;

1 2
set

3 6
;

6 7
}

8 9
public 
bool '
UseScriptToGenerateUsername /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
string "
GenerateUsernameScript ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} Ћ
СD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\ResetPasswordSettings.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Models "
{ 
public 

class !
ResetPasswordSettings &
{ 
public 
bool 
AllowResetPassword &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
UseSiteTheme  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ж
РD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\UserRegistrationType.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Models "
{ 
public 

enum  
UserRegistrationType $
{ 
NoRegistration 
= 
$num 
, 
AllowRegistration 
= 
$num 
, "
AllowOnlyExternalUsers 
=  
$num! "
} 
}		 ё&
АD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Permissions.cs
	namespace 	
OrchardCore
 
. 
Users 
{		 
public

 

class

 
Permissions

 
:

 
IPermissionProvider

 2
{ 
public 
static 
readonly 

Permission )
ManageUsers* 5
=6 7
CommonPermissions8 I
.I J
ManageUsersJ U
;U V
public 
static 
readonly 

Permission )
	ViewUsers* 3
=4 5
CommonPermissions6 G
.G H
	ViewUsersH Q
;Q R
public 
static 
readonly 

Permission )$
ManageOwnUserInformation* B
=C D
newE H

PermissionI S
(S T
$strT n
,n o
$str	p Н
,
Н О
new
П Т

Permission
У Э
[
Э Ю
]
Ю Я
{
† °
ManageUsers
Ґ ≠
}
Ѓ ѓ
)
ѓ ∞
;
∞ ±
private 
readonly 
IRoleService %
_roleService& 2
;2 3
public 
Permissions 
( 
IRoleService '
roleService( 3
)3 4
{ 	
_roleService 
= 
roleService &
;& '
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

Permission& 0
>0 1
>1 2
GetPermissionsAsync3 F
(F G
)G H
{ 	
var 
list 
= 
new 
List 
<  

Permission  *
>* +
{ 
ManageUsers 
, $
ManageOwnUserInformation (
,( )
	ViewUsers 
} 
; 
var!! 
roles!! 
=!! 
(!! 
await!! 
_roleService!! +
.!!+ ,
GetRoleNamesAsync!!, =
(!!= >
)!!> ?
)!!? @
."" 
Except"" 
("" 
new"" 
["" 
]"" 
{"" 
$str""  +
,""+ ,
$str""- <
}""= >
,""> ?
StringComparer""@ N
.""N O
OrdinalIgnoreCase""O `
)""` a
;""a b
foreach$$ 
($$ 
var$$ 
role$$ 
in$$  
roles$$! &
)$$& '
{%% 
list&& 
.&& 
Add&& 
(&& 
CommonPermissions&& *
.&&* +0
$CreatePermissionForManageUsersInRole&&+ O
(&&O P
role&&P T
)&&T U
)&&U V
;&&V W
}'' 
return)) 
list)) 
;)) 
}** 	
public,, 
IEnumerable,, 
<,,  
PermissionStereotype,, /
>,,/ 0!
GetDefaultStereotypes,,1 F
(,,F G
),,G H
{-- 	
return.. 
new.. 
[.. 
].. 
{.. 
new//  
PermissionStereotype// (
{//) *
Name00 
=00 
$str00 *
,00* +
Permissions11 
=11  !
new11" %
[11% &
]11& '
{11( )
ManageUsers11* 5
}116 7
}22 
,22 
new33  
PermissionStereotype33 (
{33) *
Name44 
=44 
$str44 #
,44# $
Permissions55 
=55  !
new55" %
[55% &
]55& '
{55( )$
ManageOwnUserInformation55* B
}55C D
}66 
,66 
new77  
PermissionStereotype77 (
{77) *
Name88 
=88 
$str88 &
,88& '
Permissions99 
=99  !
new99" %
[99% &
]99& '
{99( )$
ManageOwnUserInformation99* B
}99C D
}:: 
,:: 
new;;  
PermissionStereotype;; (
{;;) *
Name<< 
=<< 
$str<< (
,<<( )
Permissions== 
===  !
new==" %
[==% &
]==& '
{==( )$
ManageOwnUserInformation==* B
}==C D
}>> 
,>> 
new??  
PermissionStereotype?? (
{??) *
Name@@ 
=@@ 
$str@@ #
,@@# $
PermissionsAA 
=AA  !
newAA" %
[AA% &
]AA& '
{AA( )$
ManageOwnUserInformationAA* B
}AAC D
}BB 
}CC 
;CC 
}DD 	
}EE 
}FF №
МD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Properties\AssemblyInfo.cs
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
]7 8«
ФD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\DefaultUserIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

class "
DefaultUserIdGenerator '
:( )
IUserIdGenerator* :
{ 
private 
readonly 
IIdGenerator %

_generator& 0
;0 1
public		 "
DefaultUserIdGenerator		 %
(		% &
IIdGenerator		& 2
	generator		3 <
)		< =
{

 	

_generator 
= 
	generator "
;" #
} 	
public 
string 
GenerateUniqueId &
(& '
IUser' ,
user- 1
)1 2
{ 	
return 

_generator 
. 
GenerateUniqueId .
(. /
)/ 0
;0 1
} 	
} 
} р
СD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\EmailClaimsProvider.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

class 
EmailClaimsProvider $
:% &
IUserClaimsProvider' :
{		 
private

 
readonly

 
UserManager

 $
<

$ %
IUser

% *
>

* +
_userManager

, 8
;

8 9
public 
EmailClaimsProvider "
(" #
UserManager# .
<. /
IUser/ 4
>4 5
userManager6 A
)A B
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
async 
Task 
GenerateAsync '
(' (
IUser( -
user. 2
,2 3
ClaimsIdentity4 B
claimsC I
)I J
{ 	
if 
( 
user 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
user7 ;
); <
)< =
;= >
} 
if 
( 
claims 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
claims7 =
)= >
)> ?
;? @
} 
var!! 
email!! 
=!! 
await!! 
_userManager!! *
.!!* +
GetEmailAsync!!+ 8
(!!8 9
user!!9 =
)!!= >
;!!> ?
if"" 
("" 
!"" 
String"" 
."" 
IsNullOrEmpty"" %
(""% &
email""& +
)""+ ,
)"", -
{## 
claims$$ 
.$$ 
AddClaim$$ 
($$  
new$$  #
Claim$$$ )
($$) *
$str$$* 1
,$$1 2
email$$3 8
)$$8 9
)$$9 :
;$$: ;
var&& 
	confirmed&& 
=&& 
await&&  %
_userManager&&& 2
.&&2 3!
IsEmailConfirmedAsync&&3 H
(&&H I
user&&I M
)&&M N
;&&N O
claims'' 
.'' 
AddClaim'' 
(''  
new''  #
Claim''$ )
('') *
$str''* :
,'': ;
	confirmed''< E
?''F G
bool''H L
.''L M

TrueString''M W
:''X Y
bool''Z ^
.''^ _
FalseString''_ j
,''j k
ClaimValueTypes''l {
.''{ |
Boolean	''| Г
)
''Г Д
)
''Д Е
;
''Е Ж
}(( 
})) 	
}** 
}++ ґ
ПD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\MembershipService.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

class 
MembershipService "
:# $
IMembershipService% 7
{		 
private

 
readonly

 
UserManager

 $
<

$ %
IUser

% *
>

* +
_userManager

, 8
;

8 9
private 
readonly '
IUserClaimsPrincipalFactory 4
<4 5
IUser5 :
>: ;#
_claimsPrincipalFactory< S
;S T
public 
MembershipService  
(  !'
IUserClaimsPrincipalFactory '
<' (
IUser( -
>- ."
claimsPrincipalFactory/ E
,E F
UserManager 
< 
IUser 
> 
userManager *
)* +
{ 	#
_claimsPrincipalFactory #
=$ %"
claimsPrincipalFactory& <
;< =
_userManager 
= 
userManager &
;& '
} 	
public 
async 
Task 
< 
bool 
> 
CheckPasswordAsync  2
(2 3
string3 9
userName: B
,B C
stringD J
passwordK S
)S T
{ 	
var 
user 
= 
await 
_userManager )
.) *
FindByNameAsync* 9
(9 :
userName: B
)B C
;C D
if 
( 
user 
== 
null 
) 
{ 
return 
false 
; 
} 
return 
await 
_userManager %
.% &
CheckPasswordAsync& 8
(8 9
user9 =
,= >
password? G
)G H
;H I
} 	
public!! 
async!! 
Task!! 
<!! 
IUser!! 
>!!  
GetUserAsync!!! -
(!!- .
string!!. 4
userName!!5 =
)!!= >
{"" 	
var## 
user## 
=## 
await## 
_userManager## )
.##) *
FindByNameAsync##* 9
(##9 :
userName##: B
)##B C
;##C D
return%% 
user%% 
;%% 
}&& 	
public(( 
Task(( 
<(( 
ClaimsPrincipal(( #
>((# $!
CreateClaimsPrincipal((% :
(((: ;
IUser((; @
user((A E
)((E F
{)) 	
return** #
_claimsPrincipalFactory** *
.*** +
CreateAsync**+ 6
(**6 7
user**7 ;
as**< >
User**? C
)**C D
;**D E
}++ 	
},, 
}-- ‘
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\RecipeEnvironmentSuperUserProvider.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{		 
public

 

class

 .
"RecipeEnvironmentSuperUserProvider

 3
:

4 5&
IRecipeEnvironmentProvider

6 P
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly 
ILogger  
_logger! (
;( )
public .
"RecipeEnvironmentSuperUserProvider 1
(1 2
ISiteService 
siteService $
,$ %
IUserService 
userService $
,$ %
ILogger 
< .
"RecipeEnvironmentSuperUserProvider 6
>6 7
logger8 >
)> ?
{ 	
_siteService 
= 
siteService &
;& '
_userService 
= 
userService &
;& '
_logger 
= 
logger 
; 
} 	
public 
int 
Order 
=> 
$num 
; 
public 
async 
Task $
PopulateEnvironmentAsync 2
(2 3
IDictionary3 >
<> ?
string? E
,E F
objectG M
>M N
environmentO Z
)Z [
{ 	
var 
siteSettings 
= 
await $
_siteService% 1
.1 2 
GetSiteSettingsAsync2 F
(F G
)G H
;H I
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
siteSettings& 2
.2 3
	SuperUser3 <
)< =
)= >
{   
try!! 
{"" 
var## 
	superUser## !
=##" #
await##$ )
_userService##* 6
.##6 7"
GetUserByUniqueIdAsync##7 M
(##M N
siteSettings##N Z
.##Z [
	SuperUser##[ d
)##d e
;##e f
if$$ 
($$ 
	superUser$$ !
!=$$" $
null$$% )
)$$) *
{%% 
environment&& #
[&&# $
$str&&$ 1
]&&1 2
=&&3 4
siteSettings&&5 A
.&&A B
	SuperUser&&B K
;&&K L
}'' 
}(( 
catch)) 
{** 
_logger++ 
.++ 

LogWarning++ &
(++& '
$str++' k
)++k l
;++l m
},, 
}-- 
}.. 	
}// 
}00 Џ
ПD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\SetupEventHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{		 
public 

class 
SetupEventHandler "
:# $
ISetupEventHandler% 7
{ 
private 
readonly 
IUserService %
_userService& 2
;2 3
public 
SetupEventHandler  
(  !
IUserService! -
userService. 9
)9 :
{ 	
_userService 
= 
userService &
;& '
} 	
public 
Task 
Setup 
( 
IDictionary 
< 
string 
, 
object  &
>& '

properties( 2
,2 3
Action 
< 
string 
, 
string !
>! "
reportError# .
) 
{ 	
var 
user 
= 
new 
User 
{ 
UserName 
= 

properties %
.% &
TryGetValue& 1
(1 2
SetupConstants2 @
.@ A
AdminUsernameA N
,N O
outP S
varT W
adminUserNameX e
)e f
?g h
adminUserNamei v
?v w
.w x
ToString	x А
(
А Б
)
Б В
:
В Г
String
Д К
.
К Л
Empty
Л Р
,
Р С
UserId 
= 

properties #
.# $
TryGetValue$ /
(/ 0
SetupConstants0 >
.> ?
AdminUserId? J
,J K
outL O
varP S
adminUserIdT _
)_ `
?a b
adminUserIdc n
?n o
.o p
ToStringp x
(x y
)y z
:z {
String	| В
.
В Г
Empty
Г И
,
И Й
Email 
= 

properties !
.! "
TryGetValue" -
(- .
SetupConstants. <
.< =

AdminEmail= G
,G H
outI L
varM P

adminEmailQ [
)[ \
?] ^

adminEmail_ i
?i j
.j k
ToStringk s
(s t
)t u
:u v
Stringw }
.} ~
Empty	~ Г
,
Г Д
	RoleNames   
=   
new   
string    &
[  & '
]  ' (
{  ) *
$str  + :
}  ; <
,  < =
EmailConfirmed!! 
=!!  
true!!! %
}"" 
;"" 
return$$ 
_userService$$ 
.$$  
CreateUserAsync$$  /
($$/ 0
user$$0 4
,$$4 5

properties$$6 @
[$$@ A
SetupConstants$$A O
.$$O P
AdminPassword$$P ]
]$$] ^
?$$^ _
.$$_ `
ToString$$` h
($$h i
)$$i j
,$$j k
reportError$$l w
)$$w x
;$$x y
}%% 	
}&& 
}'' у6
ЦD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\UserAuthorizationHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

class $
UserAuthorizationHandler )
:* + 
AuthorizationHandler, @
<@ A!
PermissionRequirementA V
>V W
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly 
IRoleService %
_roleService& 2
;2 3
public $
UserAuthorizationHandler '
(' (
IServiceProvider 
serviceProvider ,
,, -
UserManager 
< 
IUser 
> 
userManager *
,* +
IRoleService 
roleService $
)$ %
{   	
_serviceProvider!! 
=!! 
serviceProvider!! .
;!!. /
_userManager"" 
="" 
userManager"" &
;""& '
_roleService## 
=## 
roleService## &
;##& '
}$$ 	
	protected&& 
override&& 
async&&  
Task&&! %"
HandleRequirementAsync&&& <
(&&< ='
AuthorizationHandlerContext&&= X
context&&Y `
,&&` a!
PermissionRequirement&&b w
requirement	&&x Г
)
&&Г Д
{'' 	
if(( 
((( 
context(( 
.(( 
HasSucceeded(( $
)(($ %
{)) 
return++ 
;++ 
},, 
if.. 
(.. 
context.. 
... 
Resource..  
==..! #
null..$ (
)..( )
{// 
return00 
;00 
}11 
if33 
(33 
!33 
String33 
.33 
Equals33 
(33 
requirement33 *
.33* +

Permission33+ 5
.335 6
Name336 :
,33: ;
Permissions33< G
.33G H
ManageUsers33H S
.33S T
Name33T X
,33X Y
StringComparison33Z j
.33j k
OrdinalIgnoreCase33k |
)33| }
)33} ~
{44 
return55 
;55 
}66 
var88 
user88 
=88 
context88 
.88 
Resource88 '
as88( *
IUser88+ 0
;880 1
if:: 
(:: 
user:: 
==:: 
null:: 
):: 
{;; 
return<< 
;<< 
}== 
var@@  
authorizationService@@ $
=@@% &
_serviceProvider@@' 7
.@@7 8

GetService@@8 B
<@@B C!
IAuthorizationService@@C X
>@@X Y
(@@Y Z
)@@Z [
;@@[ \
varBB 
userRoleNamesBB 
=BB 
awaitBB  %
_userManagerBB& 2
.BB2 3
GetRolesAsyncBB3 @
(BB@ A
userBBA E
)BBE F
;BBF G
ifDD 
(DD 
userRoleNamesDD 
.DD 
AnyDD !
(DD! "
)DD" #
)DD# $
{EE 
ifGG 
(GG 
awaitGG 
AuthorizeRolesAsyncGG -
(GG- . 
authorizationServiceGG. B
,GGB C
contextGGD K
.GGK L
UserGGL P
,GGP Q
userRoleNamesGGR _
)GG_ `
)GG` a
{HH 
contextII 
.II 
SucceedII #
(II# $
requirementII$ /
)II/ 0
;II0 1
}JJ 
}KK 
elseLL 
{MM 
varNN 
	roleNamesNN 
=NN 
awaitNN  %
_roleServiceNN& 2
.NN2 3
GetRoleNamesAsyncNN3 D
(NND E
)NNE F
;NNF G
ifPP 
(PP 
awaitPP 0
$HasAuthorizationToManageAnyRoleAsyncPP >
(PP> ? 
authorizationServicePP? S
,PPS T
contextPPU \
.PP\ ]
UserPP] a
,PPa b
	roleNamesPPc l
)PPl m
)PPm n
{QQ 
contextRR 
.RR 
SucceedRR #
(RR# $
requirementRR$ /
)RR/ 0
;RR0 1
}SS 
}TT 
}UU 	
privateWW 
asyncWW 
TaskWW 
<WW 
boolWW 
>WW  
AuthorizeRolesAsyncWW! 4
(WW4 5!
IAuthorizationServiceWW5 J 
authorizationServiceWWK _
,WW_ `
ClaimsPrincipalWWa p
userWWq u
,WWu v
IEnumerable	WWw В
<
WWВ Г
string
WWГ Й
>
WWЙ К
	roleNames
WWЛ Ф
)
WWФ Х
{XX 	
foreachYY 
(YY 
varYY 
roleNameYY !
inYY" $
	roleNamesYY% .
)YY. /
{ZZ 
if[[ 
([[ 
![[ 
await[[  
authorizationService[[ /
.[[/ 0
AuthorizeAsync[[0 >
([[> ?
user[[? C
,[[C D
CommonPermissions[[E V
.[[V W0
$CreatePermissionForManageUsersInRole[[W {
([[{ |
roleName	[[| Д
)
[[Д Е
)
[[Е Ж
)
[[Ж З
{\\ 
return]] 
false]]  
;]]  !
}^^ 
}__ 
returnaa 
trueaa 
;aa 
}bb 	
privatedd 
asyncdd 
Taskdd 
<dd 
booldd 
>dd  0
$HasAuthorizationToManageAnyRoleAsyncdd! E
(ddE F!
IAuthorizationServiceddF [ 
authorizationServicedd\ p
,ddp q
ClaimsPrincipal	ddr Б
user
ddВ Ж
,
ddЖ З
IEnumerable
ddИ У
<
ddУ Ф
string
ddФ Ъ
>
ddЪ Ы
	roleNames
ddЬ •
)
dd• ¶
{ee 	
foreachff 
(ff 
varff 
roleNameff !
inff" $
	roleNamesff% .
)ff. /
{gg 
ifhh 
(hh 
awaithh  
authorizationServicehh .
.hh. /
AuthorizeAsynchh/ =
(hh= >
userhh> B
,hhB C
CommonPermissionshhD U
.hhU V0
$CreatePermissionForManageUsersInRolehhV z
(hhz {
roleName	hh{ Г
)
hhГ Д
)
hhД Е
)
hhЕ Ж
{ii 
returnjj 
truejj 
;jj  
}kk 
}ll 
returnnn 
falsenn 
;nn 
}oo 	
}pp 
}qq Б
ЩD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\UserRoleRemovedEventHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

class '
UserRoleRemovedEventHandler ,
:- .$
IRoleRemovedEventHandler/ G
{ 
private		 
readonly		 
UserManager		 $
<		$ %
IUser		% *
>		* +
_userManager		, 8
;		8 9
public '
UserRoleRemovedEventHandler *
(* +
UserManager+ 6
<6 7
IUser7 <
>< =
userManager> I
)I J
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
async 
Task 
RoleRemovedAsync *
(* +
string+ 1
roleName2 :
): ;
{ 	
var 
users 
= 
await 
_userManager *
.* +
GetUsersInRoleAsync+ >
(> ?
roleName? G
)G H
;H I
foreach 
( 
var 
user 
in  
users! &
)& '
{ 
await 
_userManager "
." #
RemoveFromRoleAsync# 6
(6 7
user7 ;
,; <
roleName= E
)E F
;F G
} 
} 	
} 
} —$
РD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\UsersThemeSelector.cs
	namespace

 	
OrchardCore


 
.

 
Users

 
.

 
Services

 $
{ 
public 

class 
UsersThemeSelector #
:$ %
IThemeSelector& 4
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IAdminThemeService +
_adminThemeService, >
;> ?
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 
UsersThemeSelector !
(! "
ISiteService 
siteService $
,$ %
IAdminThemeService 
adminThemeService 0
,0 1 
IHttpContextAccessor  
httpContextAccessor! 4
)4 5
{ 	
_siteService 
= 
siteService &
;& '
_adminThemeService 
=  
adminThemeService! 2
;2 3 
_httpContextAccessor    
=  ! "
httpContextAccessor  # 6
;  6 7
}!! 	
public## 
async## 
Task## 
<## 
ThemeSelectorResult## -
>##- .
GetThemeAsync##/ <
(##< =
)##= >
{$$ 	
var%% 
routeValues%% 
=%%  
_httpContextAccessor%% 2
.%%2 3
HttpContext%%3 >
.%%> ?
Request%%? F
.%%F G
RouteValues%%G R
;%%R S
if'' 
('' 
routeValues'' 
['' 
$str'' "
]''" #
?''# $
.''$ %
ToString''% -
(''- .
)''. /
==''0 2
$str''3 F
)''F G
{(( 
bool)) 
useSiteTheme)) !
;))! "
switch++ 
(++ 
routeValues++ #
[++# $
$str++$ 0
]++0 1
?++1 2
.++2 3
ToString++3 ;
(++; <
)++< =
)++= >
{,, 
case-- 
$str-- "
:--" #
useSiteTheme.. $
=..% &
(..' (
await..( -
_siteService... :
...: ; 
GetSiteSettingsAsync..; O
(..O P
)..P Q
)..Q R
...R S
As..S U
<..U V
LoginSettings..V c
>..c d
(..d e
)..e f
...f g
UseSiteTheme..g s
;..s t
break// 
;// 
case00 
$str00 '
:00' (
useSiteTheme11 $
=11% &
(11' (
await11( -
_siteService11. :
.11: ; 
GetSiteSettingsAsync11; O
(11O P
)11P Q
)11Q R
.11R S
As11S U
<11U V 
RegistrationSettings11V j
>11j k
(11k l
)11l m
.11m n
UseSiteTheme11n z
;11z {
break22 
;22 
case33 
$str33 (
:33( )
useSiteTheme44 $
=44% &
(44' (
await44( -
_siteService44. :
.44: ; 
GetSiteSettingsAsync44; O
(44O P
)44P Q
)44Q R
.44R S
As44S U
<44U V!
ResetPasswordSettings44V k
>44k l
(44l m
)44m n
.44n o
UseSiteTheme44o {
;44{ |
break55 
;55 
default66 
:66 
return77 
null77 #
;77# $
}88 
var:: 
adminThemeName:: "
=::# $
await::% *
_adminThemeService::+ =
.::= >"
GetAdminThemeNameAsync::> T
(::T U
)::U V
;::V W
if<< 
(<< 
String<< 
.<< 
IsNullOrEmpty<< (
(<<( )
adminThemeName<<) 7
)<<7 8
)<<8 9
{== 
return>> 
null>> 
;>>  
}?? 
returnAA 
newAA 
ThemeSelectorResultAA .
{BB 
PriorityCC 
=CC 
useSiteThemeCC +
?CC, -
-CC. /
$numCC/ 2
:CC3 4
$numCC5 8
,CC8 9
	ThemeNameDD 
=DD 
adminThemeNameDD  .
}EE 
;EE 
}FF 
returnHH 
nullHH 
;HH 
}II 	
}JJ 
}KK √Ё
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Startup.cs
	namespace,, 	
OrchardCore,,
 
.,, 
Users,, 
{-- 
public.. 

class.. 
Startup.. 
:.. 
StartupBase.. &
{// 
private00 
readonly00 
AdminOptions00 %
_adminOptions00& 3
;003 4
private11 
readonly11 
string11 
_tenantName11  +
;11+ ,
public33 
Startup33 
(33 
IOptions33 
<33  
AdminOptions33  ,
>33, -
adminOptions33. :
,33: ;
ShellSettings33< I
shellSettings33J W
)33W X
{44 	
_adminOptions55 
=55 
adminOptions55 (
.55( )
Value55) .
;55. /
_tenantName66 
=66 
shellSettings66 '
.66' (
Name66( ,
;66, -
}77 	
public99 
override99 
void99 
	Configure99 &
(99& '
IApplicationBuilder99' :
builder99; B
,99B C!
IEndpointRouteBuilder99D Y
routes99Z `
,99` a
IServiceProvider99b r
serviceProvider	99s В
)
99В Г
{:: 	
var;; 
userOptions;; 
=;; 
serviceProvider;; -
.;;- .
GetRequiredService;;. @
<;;@ A
IOptions;;A I
<;;I J
UserOptions;;J U
>;;U V
>;;V W
(;;W X
);;X Y
.;;Y Z
Value;;Z _
;;;_ `
var== !
accountControllerName== %
===& '
typeof==( .
(==. /
AccountController==/ @
)==@ A
.==A B
ControllerName==B P
(==P Q
)==Q R
;==R S
routes?? 
.?? "
MapAreaControllerRoute?? )
(??) *
name@@ 
:@@ 
$str@@ 
,@@ 
areaNameAA 
:AA 
$strAA -
,AA- .
patternBB 
:BB 
userOptionsBB $
.BB$ %
	LoginPathBB% .
,BB. /
defaultsCC 
:CC 
newCC 
{CC 

controllerCC  *
=CC+ ,!
accountControllerNameCC- B
,CCB C
actionCCD J
=CCK L
nameofCCM S
(CCS T
AccountControllerCCT e
.CCe f
LoginCCf k
)CCk l
}CCm n
)DD 
;DD 
routesEE 
.EE "
MapAreaControllerRouteEE )
(EE) *
nameFF 
:FF 
$strFF &
,FF& '
areaNameGG 
:GG 
$strGG -
,GG- .
patternHH 
:HH 
userOptionsHH $
.HH$ %
ChangePasswordUrlHH% 6
,HH6 7
defaultsII 
:II 
newII 
{II 

controllerII  *
=II+ ,!
accountControllerNameII- B
,IIB C
actionIID J
=IIK L
nameofIIM S
(IIS T
AccountControllerIIT e
.IIe f
ChangePasswordIIf t
)IIt u
}IIv w
)JJ 
;JJ 
routesLL 
.LL "
MapAreaControllerRouteLL )
(LL) *
nameMM 
:MM 
$strMM #
,MM# $
areaNameNN 
:NN 
$strNN -
,NN- .
patternOO 
:OO 
userOptionsOO $
.OO$ %

LogoffPathOO% /
,OO/ 0
defaultsPP 
:PP 
newPP 
{PP 

controllerPP  *
=PP+ ,!
accountControllerNamePP- B
,PPB C
actionPPD J
=PPK L
nameofPPM S
(PPS T
AccountControllerPPT e
.PPe f
LogOffPPf l
)PPl m
}PPn o
)QQ 
;QQ 
routesSS 
.SS "
MapAreaControllerRouteSS )
(SS) *
nameTT 
:TT 
$strTT &
,TT& '
areaNameUU 
:UU 
$strUU -
,UU- .
patternVV 
:VV 
userOptionsVV $
.VV$ %
ExternalLoginsUrlVV% 6
,VV6 7
defaultsWW 
:WW 
newWW 
{WW 

controllerWW  *
=WW+ ,!
accountControllerNameWW- B
,WWB C
actionWWD J
=WWK L
nameofWWM S
(WWS T
AccountControllerWWT e
.WWe f
ExternalLoginsWWf t
)WWt u
}WWv w
)XX 
;XX 
varZZ 
adminControllerNameZZ #
=ZZ$ %
typeofZZ& ,
(ZZ, -
AdminControllerZZ- <
)ZZ< =
.ZZ= >
ControllerNameZZ> L
(ZZL M
)ZZM N
;ZZN O
routes\\ 
.\\ "
MapAreaControllerRoute\\ )
(\\) *
name]] 
:]] 
$str]] "
,]]" #
areaName^^ 
:^^ 
$str^^ -
,^^- .
pattern__ 
:__ 
_adminOptions__ &
.__& '
AdminUrlPrefix__' 5
+__6 7
$str__8 F
,__F G
defaults`` 
:`` 
new`` 
{`` 

controller``  *
=``+ ,
adminControllerName``- @
,``@ A
action``B H
=``I J
nameof``K Q
(``Q R
AdminController``R a
.``a b
Index``b g
)``g h
}``i j
)aa 
;aa 
routesbb 
.bb "
MapAreaControllerRoutebb )
(bb) *
namecc 
:cc 
$strcc #
,cc# $
areaNamedd 
:dd 
$strdd -
,dd- .
patternee 
:ee 
_adminOptionsee &
.ee& '
AdminUrlPrefixee' 5
+ee6 7
$stree8 G
,eeG H
defaultsff 
:ff 
newff 
{ff 

controllerff  *
=ff+ ,
adminControllerNameff- @
,ff@ A
actionffB H
=ffI J
nameofffK Q
(ffQ R
AdminControllerffR a
.ffa b
Createffb h
)ffh i
}ffj k
)gg 
;gg 
routeshh 
.hh "
MapAreaControllerRoutehh )
(hh) *
nameii 
:ii 
$strii #
,ii# $
areaNamejj 
:jj 
$strjj -
,jj- .
patternkk 
:kk 
_adminOptionskk &
.kk& '
AdminUrlPrefixkk' 5
+kk6 7
$strkk8 L
,kkL M
defaultsll 
:ll 
newll 
{ll 

controllerll  *
=ll+ ,
adminControllerNamell- @
,ll@ A
actionllB H
=llI J
nameofllK Q
(llQ R
AdminControllerllR a
.lla b
Deletellb h
)llh i
}llj k
)mm 
;mm 
routesnn 
.nn "
MapAreaControllerRoutenn )
(nn) *
nameoo 
:oo 
$stroo !
,oo! "
areaNamepp 
:pp 
$strpp -
,pp- .
patternqq 
:qq 
_adminOptionsqq &
.qq& '
AdminUrlPrefixqq' 5
+qq6 7
$strqq8 K
,qqK L
defaultsrr 
:rr 
newrr 
{rr 

controllerrr  *
=rr+ ,
adminControllerNamerr- @
,rr@ A
actionrrB H
=rrI J
nameofrrK Q
(rrQ R
AdminControllerrrR a
.rra b
Editrrb f
)rrf g
}rrh i
)ss 
;ss 
builderuu 
.uu 
UseAuthorizationuu $
(uu$ %
)uu% &
;uu& '
}vv 	
publicxx 
overridexx 
voidxx 
ConfigureServicesxx .
(xx. /
IServiceCollectionxx/ A
servicesxxB J
)xxJ K
{yy 	
serviceszz 
.zz 
	Configurezz 
<zz 
UserOptionszz *
>zz* +
(zz+ ,
userOptionszz, 7
=>zz8 :
{{{ 
var|| 
configuration|| !
=||" #

ShellScope||$ .
.||. /
Services||/ 7
.||7 8
GetRequiredService||8 J
<||J K
IShellConfiguration||K ^
>||^ _
(||_ `
)||` a
;||a b
configuration}} 
.}} 

GetSection}} (
(}}( )
$str}}) <
)}}< =
.}}= >
Bind}}> B
(}}B C
userOptions}}C N
)}}N O
;}}O P
}~~ 
)~~ 
;~~ 
services
АА 
.
АА 
AddSecurity
АА  
(
АА  !
)
АА! "
;
АА" #
services
ГГ 
.
ГГ 
TryAddSingleton
ГГ $
<
ГГ$ %
ILookupNormalizer
ГГ% 6
,
ГГ6 7,
UpperInvariantLookupNormalizer
ГГ8 V
>
ГГV W
(
ГГW X
)
ГГX Y
;
ГГY Z
services
ЗЗ 
.
ЗЗ 
AddIdentity
ЗЗ  
<
ЗЗ  !
IUser
ЗЗ! &
,
ЗЗ& '
IRole
ЗЗ( -
>
ЗЗ- .
(
ЗЗ. /
options
ЗЗ/ 6
=>
ЗЗ7 9
{
ИИ 
options
ММ 
.
ММ 
User
ММ 
.
ММ '
AllowedUserNameCharacters
ММ 6
=
ММ7 8
$str
ММ9 }
;
ММ} ~
options
НН 
.
НН 
User
НН 
.
НН  
RequireUniqueEmail
НН /
=
НН0 1
true
НН2 6
;
НН6 7
}
ОО 
)
ОО 
.
ПП &
AddDefaultTokenProviders
ПП %
(
ПП% &
)
ПП& '
;
ПП' (
services
УУ 
.
УУ 
AddAuthentication
УУ &
(
УУ& '
options
УУ' .
=>
УУ/ 1
options
УУ2 9
.
УУ9 :"
DefaultSignOutScheme
УУ: N
=
УУO P
IdentityConstants
УУQ b
.
УУb c
ApplicationScheme
УУc t
)
УУt u
;
УУu v
services
ХХ 
.
ХХ 
TryAddScoped
ХХ !
<
ХХ! "
	UserStore
ХХ" +
>
ХХ+ ,
(
ХХ, -
)
ХХ- .
;
ХХ. /
services
ЦЦ 
.
ЦЦ 
TryAddScoped
ЦЦ !
<
ЦЦ! "

IUserStore
ЦЦ" ,
<
ЦЦ, -
IUser
ЦЦ- 2
>
ЦЦ2 3
>
ЦЦ3 4
(
ЦЦ4 5
sp
ЦЦ5 7
=>
ЦЦ8 :
sp
ЦЦ; =
.
ЦЦ= > 
GetRequiredService
ЦЦ> P
<
ЦЦP Q
	UserStore
ЦЦQ Z
>
ЦЦZ [
(
ЦЦ[ \
)
ЦЦ\ ]
)
ЦЦ] ^
;
ЦЦ^ _
services
ЧЧ 
.
ЧЧ 
TryAddScoped
ЧЧ !
<
ЧЧ! "
IUserRoleStore
ЧЧ" 0
<
ЧЧ0 1
IUser
ЧЧ1 6
>
ЧЧ6 7
>
ЧЧ7 8
(
ЧЧ8 9
sp
ЧЧ9 ;
=>
ЧЧ< >
sp
ЧЧ? A
.
ЧЧA B 
GetRequiredService
ЧЧB T
<
ЧЧT U
	UserStore
ЧЧU ^
>
ЧЧ^ _
(
ЧЧ_ `
)
ЧЧ` a
)
ЧЧa b
;
ЧЧb c
services
ШШ 
.
ШШ 
TryAddScoped
ШШ !
<
ШШ! " 
IUserPasswordStore
ШШ" 4
<
ШШ4 5
IUser
ШШ5 :
>
ШШ: ;
>
ШШ; <
(
ШШ< =
sp
ШШ= ?
=>
ШШ@ B
sp
ШШC E
.
ШШE F 
GetRequiredService
ШШF X
<
ШШX Y
	UserStore
ШШY b
>
ШШb c
(
ШШc d
)
ШШd e
)
ШШe f
;
ШШf g
services
ЩЩ 
.
ЩЩ 
TryAddScoped
ЩЩ !
<
ЩЩ! "
IUserEmailStore
ЩЩ" 1
<
ЩЩ1 2
IUser
ЩЩ2 7
>
ЩЩ7 8
>
ЩЩ8 9
(
ЩЩ9 :
sp
ЩЩ: <
=>
ЩЩ= ?
sp
ЩЩ@ B
.
ЩЩB C 
GetRequiredService
ЩЩC U
<
ЩЩU V
	UserStore
ЩЩV _
>
ЩЩ_ `
(
ЩЩ` a
)
ЩЩa b
)
ЩЩb c
;
ЩЩc d
services
ЪЪ 
.
ЪЪ 
TryAddScoped
ЪЪ !
<
ЪЪ! "%
IUserSecurityStampStore
ЪЪ" 9
<
ЪЪ9 :
IUser
ЪЪ: ?
>
ЪЪ? @
>
ЪЪ@ A
(
ЪЪA B
sp
ЪЪB D
=>
ЪЪE G
sp
ЪЪH J
.
ЪЪJ K 
GetRequiredService
ЪЪK ]
<
ЪЪ] ^
	UserStore
ЪЪ^ g
>
ЪЪg h
(
ЪЪh i
)
ЪЪi j
)
ЪЪj k
;
ЪЪk l
services
ЫЫ 
.
ЫЫ 
TryAddScoped
ЫЫ !
<
ЫЫ! "
IUserLoginStore
ЫЫ" 1
<
ЫЫ1 2
IUser
ЫЫ2 7
>
ЫЫ7 8
>
ЫЫ8 9
(
ЫЫ9 :
sp
ЫЫ: <
=>
ЫЫ= ?
sp
ЫЫ@ B
.
ЫЫB C 
GetRequiredService
ЫЫC U
<
ЫЫU V
	UserStore
ЫЫV _
>
ЫЫ_ `
(
ЫЫ` a
)
ЫЫa b
)
ЫЫb c
;
ЫЫc d
services
ЬЬ 
.
ЬЬ 
TryAddScoped
ЬЬ !
<
ЬЬ! "
IUserClaimStore
ЬЬ" 1
<
ЬЬ1 2
IUser
ЬЬ2 7
>
ЬЬ7 8
>
ЬЬ8 9
(
ЬЬ9 :
sp
ЬЬ: <
=>
ЬЬ= ?
sp
ЬЬ@ B
.
ЬЬB C 
GetRequiredService
ЬЬC U
<
ЬЬU V
	UserStore
ЬЬV _
>
ЬЬ_ `
(
ЬЬ` a
)
ЬЬa b
)
ЬЬb c
;
ЬЬc d
services
ЭЭ 
.
ЭЭ 
TryAddScoped
ЭЭ !
<
ЭЭ! "+
IUserAuthenticationTokenStore
ЭЭ" ?
<
ЭЭ? @
IUser
ЭЭ@ E
>
ЭЭE F
>
ЭЭF G
(
ЭЭG H
sp
ЭЭH J
=>
ЭЭK M
sp
ЭЭN P
.
ЭЭP Q 
GetRequiredService
ЭЭQ c
<
ЭЭc d
	UserStore
ЭЭd m
>
ЭЭm n
(
ЭЭn o
)
ЭЭo p
)
ЭЭp q
;
ЭЭq r
services
ЯЯ 
.
ЯЯ (
ConfigureApplicationCookie
ЯЯ /
(
ЯЯ/ 0
options
ЯЯ0 7
=>
ЯЯ8 :
{
†† 
var
°° 
userOptions
°° 
=
°°  !

ShellScope
°°" ,
.
°°, -
Services
°°- 5
.
°°5 6 
GetRequiredService
°°6 H
<
°°H I
IOptions
°°I Q
<
°°Q R
UserOptions
°°R ]
>
°°] ^
>
°°^ _
(
°°_ `
)
°°` a
;
°°a b
options
££ 
.
££ 
Cookie
££ 
.
££ 
Name
££ #
=
££$ %
$str
££& 1
+
££2 3
HttpUtility
££4 ?
.
££? @
	UrlEncode
££@ I
(
££I J
_tenantName
££J U
)
££U V
;
££V W
options
©© 
.
©© 
	LoginPath
©© !
=
©©" #
$str
©©$ '
+
©©( )
userOptions
©©* 5
.
©©5 6
Value
©©6 ;
.
©©; <
	LoginPath
©©< E
;
©©E F
options
™™ 
.
™™ 

LogoutPath
™™ "
=
™™# $
$str
™™% (
+
™™) *
userOptions
™™+ 6
.
™™6 7
Value
™™7 <
.
™™< =

LogoffPath
™™= G
;
™™G H
options
ЂЂ 
.
ЂЂ 
AccessDeniedPath
ЂЂ (
=
ЂЂ) *
$str
ЂЂ+ 7
;
ЂЂ7 8
}
ђђ 
)
ђђ 
;
ђђ 
services
ЃЃ 
.
ЃЃ 
AddSingleton
ЃЃ !
<
ЃЃ! "
IIndexProvider
ЃЃ" 0
,
ЃЃ0 1
UserIndexProvider
ЃЃ2 C
>
ЃЃC D
(
ЃЃD E
)
ЃЃE F
;
ЃЃF G
services
ѓѓ 
.
ѓѓ 
AddSingleton
ѓѓ !
<
ѓѓ! "
IIndexProvider
ѓѓ" 0
,
ѓѓ0 1)
UserByRoleNameIndexProvider
ѓѓ2 M
>
ѓѓM N
(
ѓѓN O
)
ѓѓO P
;
ѓѓP Q
services
∞∞ 
.
∞∞ 
AddSingleton
∞∞ !
<
∞∞! "
IIndexProvider
∞∞" 0
,
∞∞0 1*
UserByLoginInfoIndexProvider
∞∞2 N
>
∞∞N O
(
∞∞O P
)
∞∞P Q
;
∞∞Q R
services
±± 
.
±± 
AddSingleton
±± !
<
±±! "
IIndexProvider
±±" 0
,
±±0 1&
UserByClaimIndexProvider
±±2 J
>
±±J K
(
±±K L
)
±±L M
;
±±M N
services
≤≤ 
.
≤≤ 
	AddScoped
≤≤ 
<
≤≤ 
IDataMigration
≤≤ -
,
≤≤- .

Migrations
≤≤/ 9
>
≤≤9 :
(
≤≤: ;
)
≤≤; <
;
≤≤< =
services
іі 
.
іі 
	AddScoped
іі 
<
іі 
IUserService
іі +
,
іі+ ,
UserService
іі- 8
>
іі8 9
(
іі9 :
)
іі: ;
;
іі; <
services
µµ 
.
µµ 
	AddScoped
µµ 
<
µµ )
IUserClaimsPrincipalFactory
µµ :
<
µµ: ;
IUser
µµ; @
>
µµ@ A
,
µµA B7
)DefaultUserClaimsPrincipalProviderFactory
µµC l
>
µµl m
(
µµm n
)
µµn o
;
µµo p
services
ґґ 
.
ґґ 
	AddScoped
ґґ 
<
ґґ !
IUserClaimsProvider
ґґ 2
,
ґґ2 3!
EmailClaimsProvider
ґґ4 G
>
ґґG H
(
ґґH I
)
ґґI J
;
ґґJ K
services
ЈЈ 
.
ЈЈ 
AddIdGeneration
ЈЈ $
(
ЈЈ$ %
)
ЈЈ% &
;
ЈЈ& '
services
ЄЄ 
.
ЄЄ 
AddSingleton
ЄЄ !
<
ЄЄ! "
IUserIdGenerator
ЄЄ" 2
,
ЄЄ2 3$
DefaultUserIdGenerator
ЄЄ4 J
>
ЄЄJ K
(
ЄЄK L
)
ЄЄL M
;
ЄЄM N
services
ЇЇ 
.
ЇЇ 
	AddScoped
ЇЇ 
<
ЇЇ #
IAuthorizationHandler
ЇЇ 4
,
ЇЇ4 5&
UserAuthorizationHandler
ЇЇ6 N
>
ЇЇN O
(
ЇЇO P
)
ЇЇP Q
;
ЇЇQ R
services
ЉЉ 
.
ЉЉ 
	AddScoped
ЉЉ 
<
ЉЉ  
IMembershipService
ЉЉ 1
,
ЉЉ1 2
MembershipService
ЉЉ3 D
>
ЉЉD E
(
ЉЉE F
)
ЉЉF G
;
ЉЉG H
services
љљ 
.
љљ 
	AddScoped
љљ 
<
љљ  
ISetupEventHandler
љљ 1
,
љљ1 2
SetupEventHandler
љљ3 D
>
љљD E
(
љљE F
)
љљF G
;
љљG H
services
ЊЊ 
.
ЊЊ 
	AddScoped
ЊЊ 
<
ЊЊ 
ICommandHandler
ЊЊ .
,
ЊЊ. /
UserCommands
ЊЊ0 <
>
ЊЊ< =
(
ЊЊ= >
)
ЊЊ> ?
;
ЊЊ? @
services
њњ 
.
њњ 
	AddScoped
њњ 
<
њњ &
IRoleRemovedEventHandler
њњ 7
,
њњ7 8)
UserRoleRemovedEventHandler
њњ9 T
>
њњT U
(
њњU V
)
њњV W
;
њњW X
services
ЅЅ 
.
ЅЅ 
	AddScoped
ЅЅ 
<
ЅЅ !
IPermissionProvider
ЅЅ 2
,
ЅЅ2 3
Permissions
ЅЅ4 ?
>
ЅЅ? @
(
ЅЅ@ A
)
ЅЅA B
;
ЅЅB C
services
¬¬ 
.
¬¬ 
	AddScoped
¬¬ 
<
¬¬ !
INavigationProvider
¬¬ 2
,
¬¬2 3
	AdminMenu
¬¬4 =
>
¬¬= >
(
¬¬> ?
)
¬¬? @
;
¬¬@ A
services
ƒƒ 
.
ƒƒ 
	AddScoped
ƒƒ 
<
ƒƒ 
IDisplayDriver
ƒƒ -
<
ƒƒ- .
ISite
ƒƒ. 3
>
ƒƒ3 4
,
ƒƒ4 5(
LoginSettingsDisplayDriver
ƒƒ6 P
>
ƒƒP Q
(
ƒƒQ R
)
ƒƒR S
;
ƒƒS T
services
∆∆ 
.
∆∆ 
	AddScoped
∆∆ 
<
∆∆ 
IDisplayManager
∆∆ .
<
∆∆. /
User
∆∆/ 3
>
∆∆3 4
,
∆∆4 5
DisplayManager
∆∆6 D
<
∆∆D E
User
∆∆E I
>
∆∆I J
>
∆∆J K
(
∆∆K L
)
∆∆L M
;
∆∆M N
services
«« 
.
«« 
	AddScoped
«« 
<
«« 
IDisplayDriver
«« -
<
««- .
User
««. 2
>
««2 3
,
««3 4
UserDisplayDriver
««5 F
>
««F G
(
««G H
)
««H I
;
««I J
services
»» 
.
»» 
	AddScoped
»» 
<
»» 
IDisplayDriver
»» -
<
»»- .
User
»». 2
>
»»2 3
,
»»3 4#
UserRoleDisplayDriver
»»5 J
>
»»J K
(
»»K L
)
»»L M
;
»»M N
services
…… 
.
…… 
	AddScoped
…… 
<
…… 
IDisplayDriver
…… -
<
……- .
User
……. 2
>
……2 3
,
……3 4*
UserInformationDisplayDriver
……5 Q
>
……Q R
(
……R S
)
……S T
;
……T U
services
   
.
   
	AddScoped
   
<
   
IDisplayDriver
   -
<
  - .
User
  . 2
>
  2 3
,
  3 4&
UserButtonsDisplayDriver
  5 M
>
  M N
(
  N O
)
  O P
;
  P Q
services
ћћ 
.
ћћ 
	AddScoped
ћћ 
<
ћћ 
IThemeSelector
ћћ -
,
ћћ- . 
UsersThemeSelector
ћћ/ A
>
ћћA B
(
ћћB C
)
ћћC D
;
ћћD E
services
ќќ 
.
ќќ 
	AddScoped
ќќ 
<
ќќ (
IRecipeEnvironmentProvider
ќќ 9
,
ќќ9 :0
"RecipeEnvironmentSuperUserProvider
ќќ; ]
>
ќќ] ^
(
ќќ^ _
)
ќќ_ `
;
ќќ` a
}
ѕѕ 	
}
–– 
[
““ 
RequireFeatures
““ 
(
““ 
$str
““ )
)
““) *
]
““* +
public
”” 

class
”” 
LiquidStartup
”” 
:
””  
StartupBase
””! ,
{
‘‘ 
public
’’ 
override
’’ 
void
’’ 
ConfigureServices
’’ .
(
’’. / 
IServiceCollection
’’/ A
services
’’B J
)
’’J K
{
÷÷ 	
services
„„ 
.
„„ 
	AddScoped
„„ 
<
„„ )
ILiquidTemplateEventHandler
„„ :
,
„„: ;,
UserLiquidTemplateEventHandler
„„< Z
>
„„Z [
(
„„[ \
)
„„\ ]
;
„„] ^
services
ЎЎ 
.
ЎЎ 
AddLiquidFilter
ЎЎ $
<
ЎЎ$ %!
HasPermissionFilter
ЎЎ% 8
>
ЎЎ8 9
(
ЎЎ9 :
$str
ЎЎ: J
)
ЎЎJ K
;
ЎЎK L
services
ўў 
.
ўў 
AddLiquidFilter
ўў $
<
ўў$ %
HasClaimFilter
ўў% 3
>
ўў3 4
(
ўў4 5
$str
ўў5 @
)
ўў@ A
;
ўўA B
services
ЏЏ 
.
ЏЏ 
AddLiquidFilter
ЏЏ $
<
ЏЏ$ %
IsInRoleFilter
ЏЏ% 3
>
ЏЏ3 4
(
ЏЏ4 5
$str
ЏЏ5 A
)
ЏЏA B
;
ЏЏB C
services
џџ 
.
џџ 
AddLiquidFilter
џџ $
<
џџ$ %
UserEmailFilter
џџ% 4
>
џџ4 5
(
џџ5 6
$str
џџ6 B
)
џџB C
;
џџC D
services
№№ 
.
№№ 
AddLiquidFilter
№№ $
<
№№$ %
UserIdFilter
№№% 1
>
№№1 2
(
№№2 3
$str
№№3 <
)
№№< =
;
№№= >
services
ЁЁ 
.
ЁЁ 
AddLiquidFilter
ЁЁ $
<
ЁЁ$ %
UsersByIdFilter
ЁЁ% 4
>
ЁЁ4 5
(
ЁЁ5 6
$str
ЁЁ6 C
)
ЁЁC D
;
ЁЁD E
}
ёё 	
}
яя 
[
бб 
RequireFeatures
бб 
(
бб 
$str
бб -
)
бб- .
]
бб. /
public
вв 

class
вв $
LoginDeploymentStartup
вв '
:
вв( )
StartupBase
вв* 5
{
гг 
public
дд 
override
дд 
void
дд 
ConfigureServices
дд .
(
дд. / 
IServiceCollection
дд/ A
services
ддB J
)
ддJ K
{
ее 	
services
жж 
.
жж 
AddTransient
жж !
<
жж! "
IDeploymentSource
жж" 3
,
жж3 42
$SiteSettingsPropertyDeploymentSource
жж5 Y
<
жжY Z
LoginSettings
жжZ g
>
жжg h
>
жжh i
(
жжi j
)
жжj k
;
жжk l
services
зз 
.
зз 
	AddScoped
зз 
<
зз 
IDisplayDriver
зз -
<
зз- .
DeploymentStep
зз. <
>
зз< =
>
зз= >
(
зз> ?
sp
зз? A
=>
ззB D
{
ии 
var
йй 
S
йй 
=
йй 
sp
йй 
.
йй 

GetService
йй %
<
йй% &
IStringLocalizer
йй& 6
<
йй6 7$
LoginDeploymentStartup
йй7 M
>
ййM N
>
ййN O
(
ййO P
)
ййP Q
;
ййQ R
return
кк 
new
кк 6
(SiteSettingsPropertyDeploymentStepDriver
кк C
<
ккC D
LoginSettings
ккD Q
>
ккQ R
(
ккR S
S
ккS T
[
ккT U
$str
ккU e
]
ккe f
,
ккf g
S
ккh i
[
ккi j
$strккj З
]ккЗ И
)ккИ Й
;ккЙ К
}
лл 
)
лл 
;
лл 
services
мм 
.
мм 
AddSingleton
мм !
<
мм! "$
IDeploymentStepFactory
мм" 8
>
мм8 9
(
мм9 :
new
мм: =7
)SiteSettingsPropertyDeploymentStepFactory
мм> g
<
ммg h
LoginSettings
ммh u
>
ммu v
(
ммv w
)
ммw x
)
ммx y
;
ммy z
}
нн 	
}
оо 
[
рр 
Feature
рр 
(
рр 
$str
рр ,
)
рр, -
]
рр- .
public
сс 

class
сс  
ChangeEmailStartup
сс #
:
сс$ %
StartupBase
сс& 1
{
тт 
private
уу 
const
уу 
string
уу 
ChangeEmailPath
уу ,
=
уу- .
$str
уу/ <
;
уу< =
private
фф 
const
фф 
string
фф )
ChangeEmailConfirmationPath
фф 8
=
фф9 :
$str
фф; T
;
ффT U
static
цц  
ChangeEmailStartup
цц !
(
цц! "
)
цц" #
{
чч 	
TemplateContext
шш 
.
шш (
GlobalMemberAccessStrategy
шш 6
.
шш6 7
Register
шш7 ?
<
шш? @"
ChangeEmailViewModel
шш@ T
>
шшT U
(
шшU V
)
шшV W
;
шшW X
}
щщ 	
public
ыы 
override
ыы 
void
ыы 
	Configure
ыы &
(
ыы& '!
IApplicationBuilder
ыы' :
app
ыы; >
,
ыы> ?#
IEndpointRouteBuilder
ыы@ U
routes
ыыV \
,
ыы\ ]
IServiceProvider
ыы^ n
serviceProvider
ыыo ~
)
ыы~ 
{
ьь 	
routes
ээ 
.
ээ $
MapAreaControllerRoute
ээ )
(
ээ) *
name
юю 
:
юю 
$str
юю #
,
юю# $
areaName
€€ 
:
€€ 
$str
€€ -
,
€€- .
pattern
АА 
:
АА 
ChangeEmailPath
АА (
,
АА( )
defaults
ББ 
:
ББ 
new
ББ 
{
ББ 

controller
ББ  *
=
ББ+ ,
$str
ББ- :
,
ББ: ;
action
ББ< B
=
ББC D
$str
ББE L
}
ББM N
)
ВВ 
;
ВВ 
routes
ДД 
.
ДД $
MapAreaControllerRoute
ДД )
(
ДД) *
name
ЕЕ 
:
ЕЕ 
$str
ЕЕ /
,
ЕЕ/ 0
areaName
ЖЖ 
:
ЖЖ 
$str
ЖЖ -
,
ЖЖ- .
pattern
ЗЗ 
:
ЗЗ )
ChangeEmailConfirmationPath
ЗЗ 4
,
ЗЗ4 5
defaults
ИИ 
:
ИИ 
new
ИИ 
{
ИИ 

controller
ИИ  *
=
ИИ+ ,
$str
ИИ- :
,
ИИ: ;
action
ИИ< B
=
ИИC D
$str
ИИE ^
}
ИИ_ `
)
ЙЙ 
;
ЙЙ 
}
КК 	
public
ММ 
override
ММ 
void
ММ 
ConfigureServices
ММ .
(
ММ. / 
IServiceCollection
ММ/ A
services
ММB J
)
ММJ K
{
НН 	
services
ОО 
.
ОО 
	AddScoped
ОО 
<
ОО !
INavigationProvider
ОО 2
,
ОО2 3"
ChangeEmailAdminMenu
ОО4 H
>
ООH I
(
ООI J
)
ООJ K
;
ООK L
services
ПП 
.
ПП 
	AddScoped
ПП 
<
ПП 
IDisplayDriver
ПП -
<
ПП- .
ISite
ПП. 3
>
ПП3 4
,
ПП4 5.
 ChangeEmailSettingsDisplayDriver
ПП6 V
>
ППV W
(
ППW X
)
ППX Y
;
ППY Z
}
РР 	
}
СС 
[
УУ 
Feature
УУ 
(
УУ 
$str
УУ ,
)
УУ, -
]
УУ- .
[
ФФ 
RequireFeatures
ФФ 
(
ФФ 
$str
ФФ -
)
ФФ- .
]
ФФ. /
public
ХХ 

class
ХХ *
ChangeEmailDeploymentStartup
ХХ -
:
ХХ. /
StartupBase
ХХ0 ;
{
ЦЦ 
public
ЧЧ 
override
ЧЧ 
void
ЧЧ 
ConfigureServices
ЧЧ .
(
ЧЧ. / 
IServiceCollection
ЧЧ/ A
services
ЧЧB J
)
ЧЧJ K
{
ШШ 	
services
ЩЩ 
.
ЩЩ 
AddTransient
ЩЩ !
<
ЩЩ! "
IDeploymentSource
ЩЩ" 3
,
ЩЩ3 42
$SiteSettingsPropertyDeploymentSource
ЩЩ5 Y
<
ЩЩY Z!
ChangeEmailSettings
ЩЩZ m
>
ЩЩm n
>
ЩЩn o
(
ЩЩo p
)
ЩЩp q
;
ЩЩq r
services
ЪЪ 
.
ЪЪ 
	AddScoped
ЪЪ 
<
ЪЪ 
IDisplayDriver
ЪЪ -
<
ЪЪ- .
DeploymentStep
ЪЪ. <
>
ЪЪ< =
>
ЪЪ= >
(
ЪЪ> ?
sp
ЪЪ? A
=>
ЪЪB D
{
ЫЫ 
var
ЬЬ 
S
ЬЬ 
=
ЬЬ 
sp
ЬЬ 
.
ЬЬ 

GetService
ЬЬ %
<
ЬЬ% &
IStringLocalizer
ЬЬ& 6
<
ЬЬ6 7*
ChangeEmailDeploymentStartup
ЬЬ7 S
>
ЬЬS T
>
ЬЬT U
(
ЬЬU V
)
ЬЬV W
;
ЬЬW X
return
ЭЭ 
new
ЭЭ 6
(SiteSettingsPropertyDeploymentStepDriver
ЭЭ C
<
ЭЭC D!
ChangeEmailSettings
ЭЭD W
>
ЭЭW X
(
ЭЭX Y
S
ЭЭY Z
[
ЭЭZ [
$str
ЭЭ[ r
]
ЭЭr s
,
ЭЭs t
S
ЭЭu v
[
ЭЭv w
$strЭЭw Ы
]ЭЭЫ Ь
)ЭЭЬ Э
;ЭЭЭ Ю
}
ЮЮ 
)
ЮЮ 
;
ЮЮ 
services
ЯЯ 
.
ЯЯ 
AddSingleton
ЯЯ !
<
ЯЯ! "$
IDeploymentStepFactory
ЯЯ" 8
>
ЯЯ8 9
(
ЯЯ9 :
new
ЯЯ: =7
)SiteSettingsPropertyDeploymentStepFactory
ЯЯ> g
<
ЯЯg h!
ChangeEmailSettings
ЯЯh {
>
ЯЯ{ |
(
ЯЯ| }
)
ЯЯ} ~
)
ЯЯ~ 
;ЯЯ А
}
†† 	
}
°° 
[
££ 
Feature
££ 
(
££ 
$str
££ -
)
££- .
]
££. /
public
§§ 

class
§§ !
RegistrationStartup
§§ $
:
§§% &
StartupBase
§§' 2
{
•• 
private
¶¶ 
const
¶¶ 
string
¶¶ 
RegisterPath
¶¶ )
=
¶¶* +
$str
¶¶, 6
;
¶¶6 7
static
®® !
RegistrationStartup
®® "
(
®®" #
)
®®# $
{
©© 	
TemplateContext
™™ 
.
™™ (
GlobalMemberAccessStrategy
™™ 6
.
™™6 7
Register
™™7 ?
<
™™? @#
ConfirmEmailViewModel
™™@ U
>
™™U V
(
™™V W
)
™™W X
;
™™X Y
}
ЂЂ 	
public
≠≠ 
override
≠≠ 
void
≠≠ 
	Configure
≠≠ &
(
≠≠& '!
IApplicationBuilder
≠≠' :
app
≠≠; >
,
≠≠> ?#
IEndpointRouteBuilder
≠≠@ U
routes
≠≠V \
,
≠≠\ ]
IServiceProvider
≠≠^ n
serviceProvider
≠≠o ~
)
≠≠~ 
{
ЃЃ 	
routes
ѓѓ 
.
ѓѓ $
MapAreaControllerRoute
ѓѓ )
(
ѓѓ) *
name
∞∞ 
:
∞∞ 
$str
∞∞  
,
∞∞  !
areaName
±± 
:
±± 
$str
±± -
,
±±- .
pattern
≤≤ 
:
≤≤ 
RegisterPath
≤≤ %
,
≤≤% &
defaults
≥≥ 
:
≥≥ 
new
≥≥ 
{
≥≥ 

controller
≥≥  *
=
≥≥+ ,
$str
≥≥- ;
,
≥≥; <
action
≥≥= C
=
≥≥D E
$str
≥≥F P
}
≥≥Q R
)
іі 
;
іі 
}
µµ 	
public
ЈЈ 
override
ЈЈ 
void
ЈЈ 
ConfigureServices
ЈЈ .
(
ЈЈ. / 
IServiceCollection
ЈЈ/ A
services
ЈЈB J
)
ЈЈJ K
{
ЄЄ 	
services
єє 
.
єє 
	AddScoped
єє 
<
єє !
INavigationProvider
єє 2
,
єє2 3#
RegistrationAdminMenu
єє4 I
>
єєI J
(
єєJ K
)
єєK L
;
єєL M
services
ЇЇ 
.
ЇЇ 
	AddScoped
ЇЇ 
<
ЇЇ 
IDisplayDriver
ЇЇ -
<
ЇЇ- .
ISite
ЇЇ. 3
>
ЇЇ3 4
,
ЇЇ4 5/
!RegistrationSettingsDisplayDriver
ЇЇ6 W
>
ЇЇW X
(
ЇЇX Y
)
ЇЇY Z
;
ЇЇZ [
}
її 	
}
ЉЉ 
[
ЊЊ 
Feature
ЊЊ 
(
ЊЊ 
$str
ЊЊ -
)
ЊЊ- .
]
ЊЊ. /
[
њњ 
RequireFeatures
њњ 
(
њњ 
$str
њњ -
)
њњ- .
]
њњ. /
public
јј 

class
јј +
RegistrationDeploymentStartup
јј .
:
јј/ 0
StartupBase
јј1 <
{
ЅЅ 
public
¬¬ 
override
¬¬ 
void
¬¬ 
ConfigureServices
¬¬ .
(
¬¬. / 
IServiceCollection
¬¬/ A
services
¬¬B J
)
¬¬J K
{
√√ 	
services
ƒƒ 
.
ƒƒ 
AddTransient
ƒƒ !
<
ƒƒ! "
IDeploymentSource
ƒƒ" 3
,
ƒƒ3 42
$SiteSettingsPropertyDeploymentSource
ƒƒ5 Y
<
ƒƒY Z"
RegistrationSettings
ƒƒZ n
>
ƒƒn o
>
ƒƒo p
(
ƒƒp q
)
ƒƒq r
;
ƒƒr s
services
≈≈ 
.
≈≈ 
	AddScoped
≈≈ 
<
≈≈ 
IDisplayDriver
≈≈ -
<
≈≈- .
DeploymentStep
≈≈. <
>
≈≈< =
>
≈≈= >
(
≈≈> ?
sp
≈≈? A
=>
≈≈B D
{
∆∆ 
var
«« 
S
«« 
=
«« 
sp
«« 
.
«« 

GetService
«« %
<
««% &
IStringLocalizer
««& 6
<
««6 7+
RegistrationDeploymentStartup
««7 T
>
««T U
>
««U V
(
««V W
)
««W X
;
««X Y
return
»» 
new
»» 6
(SiteSettingsPropertyDeploymentStepDriver
»» C
<
»»C D"
RegistrationSettings
»»D X
>
»»X Y
(
»»Y Z
S
»»Z [
[
»»[ \
$str
»»\ s
]
»»s t
,
»»t u
S
»»v w
[
»»w x
$str»»x Ь
]»»Ь Э
)»»Э Ю
;»»Ю Я
}
…… 
)
…… 
;
…… 
services
   
.
   
AddSingleton
   !
<
  ! "$
IDeploymentStepFactory
  " 8
>
  8 9
(
  9 :
new
  : =7
)SiteSettingsPropertyDeploymentStepFactory
  > g
<
  g h"
RegistrationSettings
  h |
>
  | }
(
  } ~
)
  ~ 
)   А
;  А Б
}
ЋЋ 	
}
ћћ 
[
ќќ 
Feature
ќќ 
(
ќќ 
$str
ќќ .
)
ќќ. /
]
ќќ/ 0
public
ѕѕ 

class
ѕѕ "
ResetPasswordStartup
ѕѕ %
:
ѕѕ& '
StartupBase
ѕѕ( 3
{
–– 
private
—— 
const
—— 
string
——  
ForgotPasswordPath
—— /
=
——0 1
$str
——2 B
;
——B C
private
““ 
const
““ 
string
““ ,
ForgotPasswordConfirmationPath
““ ;
=
““< =
$str
““> Z
;
““Z [
private
”” 
const
”” 
string
”” 
ResetPasswordPath
”” .
=
””/ 0
$str
””1 @
;
””@ A
private
‘‘ 
const
‘‘ 
string
‘‘ +
ResetPasswordConfirmationPath
‘‘ :
=
‘‘; <
$str
‘‘= X
;
‘‘X Y
static
÷÷ "
ResetPasswordStartup
÷÷ #
(
÷÷# $
)
÷÷$ %
{
„„ 	
TemplateContext
ЎЎ 
.
ЎЎ (
GlobalMemberAccessStrategy
ЎЎ 6
.
ЎЎ6 7
Register
ЎЎ7 ?
<
ЎЎ? @#
LostPasswordViewModel
ЎЎ@ U
>
ЎЎU V
(
ЎЎV W
)
ЎЎW X
;
ЎЎX Y
}
ўў 	
public
џџ 
override
џџ 
void
џџ 
	Configure
џџ &
(
џџ& '!
IApplicationBuilder
џџ' :
app
џџ; >
,
џџ> ?#
IEndpointRouteBuilder
џџ@ U
routes
џџV \
,
џџ\ ]
IServiceProvider
џџ^ n
serviceProvider
џџo ~
)
џџ~ 
{
№№ 	
routes
ЁЁ 
.
ЁЁ $
MapAreaControllerRoute
ЁЁ )
(
ЁЁ) *
name
ёё 
:
ёё 
$str
ёё &
,
ёё& '
areaName
яя 
:
яя 
$str
яя -
,
яя- .
pattern
аа 
:
аа  
ForgotPasswordPath
аа +
,
аа+ ,
defaults
бб 
:
бб 
new
бб 
{
бб 

controller
бб  *
=
бб+ ,
$str
бб- <
,
бб< =
action
бб> D
=
ббE F
$str
ббG W
}
ббX Y
)
вв 
;
вв 
routes
гг 
.
гг $
MapAreaControllerRoute
гг )
(
гг) *
name
дд 
:
дд 
$str
дд 2
,
дд2 3
areaName
ее 
:
ее 
$str
ее -
,
ее- .
pattern
жж 
:
жж ,
ForgotPasswordConfirmationPath
жж 7
,
жж7 8
defaults
зз 
:
зз 
new
зз 
{
зз 

controller
зз  *
=
зз+ ,
$str
зз- <
,
зз< =
action
зз> D
=
ззE F
$str
ззG c
}
ззd e
)
ии 
;
ии 
routes
йй 
.
йй $
MapAreaControllerRoute
йй )
(
йй) *
name
кк 
:
кк 
$str
кк %
,
кк% &
areaName
лл 
:
лл 
$str
лл -
,
лл- .
pattern
мм 
:
мм 
ResetPasswordPath
мм *
,
мм* +
defaults
нн 
:
нн 
new
нн 
{
нн 

controller
нн  *
=
нн+ ,
$str
нн- <
,
нн< =
action
нн> D
=
ннE F
$str
ннG V
}
ннW X
)
оо 
;
оо 
routes
пп 
.
пп $
MapAreaControllerRoute
пп )
(
пп) *
name
рр 
:
рр 
$str
рр 1
,
рр1 2
areaName
сс 
:
сс 
$str
сс -
,
сс- .
pattern
тт 
:
тт +
ResetPasswordConfirmationPath
тт 6
,
тт6 7
defaults
уу 
:
уу 
new
уу 
{
уу 

controller
уу  *
=
уу+ ,
$str
уу- <
,
уу< =
action
уу> D
=
ууE F
$str
ууG b
}
ууc d
)
фф 
;
фф 
}
хх 	
public
чч 
override
чч 
void
чч 
ConfigureServices
чч .
(
чч. / 
IServiceCollection
чч/ A
services
ччB J
)
ччJ K
{
шш 	
services
щщ 
.
щщ 
	AddScoped
щщ 
<
щщ !
INavigationProvider
щщ 2
,
щщ2 3$
ResetPasswordAdminMenu
щщ4 J
>
щщJ K
(
щщK L
)
щщL M
;
щщM N
services
ъъ 
.
ъъ 
	AddScoped
ъъ 
<
ъъ 
IDisplayDriver
ъъ -
<
ъъ- .
ISite
ъъ. 3
>
ъъ3 4
,
ъъ4 50
"ResetPasswordSettingsDisplayDriver
ъъ6 X
>
ъъX Y
(
ъъY Z
)
ъъZ [
;
ъъ[ \
}
ыы 	
}
ьь 
[
юю 
Feature
юю 
(
юю 
$str
юю .
)
юю. /
]
юю/ 0
[
€€ 
RequireFeatures
€€ 
(
€€ 
$str
€€ -
)
€€- .
]
€€. /
public
АА 

class
АА ,
ResetPasswordDeploymentStartup
АА /
:
АА0 1
StartupBase
АА2 =
{
ББ 
public
ВВ 
override
ВВ 
void
ВВ 
ConfigureServices
ВВ .
(
ВВ. / 
IServiceCollection
ВВ/ A
services
ВВB J
)
ВВJ K
{
ГГ 	
services
ДД 
.
ДД 
AddTransient
ДД !
<
ДД! "
IDeploymentSource
ДД" 3
,
ДД3 42
$SiteSettingsPropertyDeploymentSource
ДД5 Y
<
ДДY Z#
ResetPasswordSettings
ДДZ o
>
ДДo p
>
ДДp q
(
ДДq r
)
ДДr s
;
ДДs t
services
ЕЕ 
.
ЕЕ 
	AddScoped
ЕЕ 
<
ЕЕ 
IDisplayDriver
ЕЕ -
<
ЕЕ- .
DeploymentStep
ЕЕ. <
>
ЕЕ< =
>
ЕЕ= >
(
ЕЕ> ?
sp
ЕЕ? A
=>
ЕЕB D
{
ЖЖ 
var
ЗЗ 
S
ЗЗ 
=
ЗЗ 
sp
ЗЗ 
.
ЗЗ 

GetService
ЗЗ %
<
ЗЗ% &
IStringLocalizer
ЗЗ& 6
<
ЗЗ6 7,
ResetPasswordDeploymentStartup
ЗЗ7 U
>
ЗЗU V
>
ЗЗV W
(
ЗЗW X
)
ЗЗX Y
;
ЗЗY Z
return
ИИ 
new
ИИ 6
(SiteSettingsPropertyDeploymentStepDriver
ИИ C
<
ИИC D#
ResetPasswordSettings
ИИD Y
>
ИИY Z
(
ИИZ [
S
ИИ[ \
[
ИИ\ ]
$str
ИИ] v
]
ИИv w
,
ИИw x
S
ИИy z
[
ИИz {
$strИИ{ °
]ИИ° Ґ
)ИИҐ £
;ИИ£ §
}
ЙЙ 
)
ЙЙ 
;
ЙЙ 
services
КК 
.
КК 
AddSingleton
КК !
<
КК! "$
IDeploymentStepFactory
КК" 8
>
КК8 9
(
КК9 :
new
КК: =7
)SiteSettingsPropertyDeploymentStepFactory
КК> g
<
ККg h#
ResetPasswordSettings
ККh }
>
КК} ~
(
КК~ 
)КК А
)ККА Б
;ККБ В
}
ЛЛ 	
}
ММ 
[
ОО 
Feature
ОО 
(
ОО 
$str
ОО 3
)
ОО3 4
]
ОО4 5
public
ПП 

class
ПП '
CustomUserSettingsStartup
ПП *
:
ПП+ ,
StartupBase
ПП- 8
{
РР 
public
СС 
override
СС 
void
СС 
ConfigureServices
СС .
(
СС. / 
IServiceCollection
СС/ A
services
ССB J
)
ССJ K
{
ТТ 	
services
УУ 
.
УУ 
	AddScoped
УУ 
<
УУ 
IDisplayDriver
УУ -
<
УУ- .
User
УУ. 2
>
УУ2 3
,
УУ3 4-
CustomUserSettingsDisplayDriver
УУ5 T
>
УУT U
(
УУU V
)
УУV W
;
УУW X
services
ФФ 
.
ФФ 
	AddScoped
ФФ 
<
ФФ !
IPermissionProvider
ФФ 2
,
ФФ2 3+
CustomUserSettingsPermissions
ФФ4 Q
>
ФФQ R
(
ФФR S
)
ФФS T
;
ФФT U
}
ХХ 	
}
ЦЦ 
}ЧЧ Њ
ЯD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Drivers\UserTimeZoneDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
TimeZone $
.$ %
Drivers% ,
{ 
public 

class %
UserTimeZoneDisplayDriver *
:+ , 
SectionDisplayDriver- A
<A B
UserB F
,F G
UserTimeZoneH T
>T U
{ 
private 
readonly 
UserTimeZoneService , 
_userTimeZoneService- A
;A B
public %
UserTimeZoneDisplayDriver (
(( )
UserTimeZoneService) <
userTimeZoneService= P
)P Q
{ 	 
_userTimeZoneService  
=! "
userTimeZoneService# 6
;6 7
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
UserTimeZone, 8
userTimeZone9 E
,E F
BuildEditorContextG Y
contextZ a
)a b
{ 	
return 

Initialize 
< !
UserTimeZoneViewModel 3
>3 4
(4 5
$str5 H
,H I
modelJ O
=>P R
{ 
model 
. 

TimeZoneId  
=! "
userTimeZone# /
./ 0

TimeZoneId0 :
;: ;
} 
) 
. 
Location 
( 
$str #
)# $
;$ %
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
User? C
userD H
,H I
UserTimeZoneJ V
userTimeZoneW c
,c d
IUpdateModele q
updaterr y
,y z
BuildEditorContext	{ Н
context
О Х
)
Х Ц
{ 	
var   
model   
=   
new   !
UserTimeZoneViewModel   1
(  1 2
)  2 3
;  3 4
if"" 
("" 
await"" 
context"" 
."" 
Updater"" %
.""% &
TryUpdateModelAsync""& 9
(""9 :
model"": ?
,""? @
Prefix""A G
)""G H
)""H I
{## 
userTimeZone$$ 
.$$ 

TimeZoneId$$ '
=$$( )
model$$* /
.$$/ 0

TimeZoneId$$0 :
;$$: ;
await''  
_userTimeZoneService'' *
.''* +#
UpdateUserTimeZoneAsync''+ B
(''B C
user''C G
)''G H
;''H I
}(( 
return** 
await** 
	EditAsync** "
(**" #
userTimeZone**# /
,**/ 0
context**1 8
)**8 9
;**9 :
}++ 	
},, 
}-- √
СD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Models\UserTimeZone.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
TimeZone $
.$ %
Models% +
{ 
public 

class 
UserTimeZone 
{ 
public 
string 

TimeZoneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} О
ЫD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Services\UserTimeZoneSelector.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
TimeZone $
.$ %
Services% -
{ 
public		 

class		  
UserTimeZoneSelector		 %
:		& '
ITimeZoneSelector		( 9
{

 
private 
readonly 
UserTimeZoneService , 
_userTimeZoneService- A
;A B
public  
UserTimeZoneSelector #
(# $
UserTimeZoneService$ 7
userTimeZoneService8 K
)K L
{ 	 
_userTimeZoneService  
=! "
userTimeZoneService# 6
;6 7
} 	
public 
Task 
< "
TimeZoneSelectorResult *
>* +
GetTimeZoneAsync, <
(< =
)= >
{ 	
return 
Task 
. 

FromResult "
(" #
new# &"
TimeZoneSelectorResult' =
{ 
Priority 
= 
$num 
, 

TimeZoneId 
= 
async "
(# $
)$ %
=>& (
() *
await* / 
_userTimeZoneService0 D
.D E 
GetUserTimeZoneAsyncE Y
(Y Z
)Z [
)[ \
?\ ]
.] ^

TimeZoneId^ h
} 
) 
; 
} 	
} 
} ©1
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Services\UserTimeZoneService.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
TimeZone $
.$ %
Services% -
{ 
public 

class 
UserTimeZoneService $
{ 
private 
const 
string 
CacheKey %
=& '
$str( 7
;7 8
private 
readonly 
TimeSpan !
SlidingExpiration" 3
=4 5
TimeSpan6 >
.> ?
FromMinutes? J
(J K
$numK L
)L M
;M N
private 
readonly 
IClock 
_clock  &
;& '
private 
readonly 
IDistributedCache *
_distributedCache+ <
;< =
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
public 
UserTimeZoneService "
(" #
IClock 
clock 
, 
IDistributedCache 
distributedCache .
,. / 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
UserManager 
< 
IUser 
> 
userManager *
) 
{ 	
_clock 
= 
clock 
; 
_distributedCache 
= 
distributedCache  0
;0 1 
_httpContextAccessor    
=  ! "
httpContextAccessor  # 6
;  6 7
_userManager!! 
=!! 
userManager!! &
;!!& '
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
	ITimeZone$$ #
>$$# $ 
GetUserTimeZoneAsync$$% 9
($$9 :
)$$: ;
{%% 	
string&& 
currentTimeZoneId&& $
=&&% &
await&&' ,)
GetCurrentUserTimeZoneIdAsync&&- J
(&&J K
)&&K L
;&&L M
if'' 
('' 
String'' 
.'' 
IsNullOrEmpty'' $
(''$ %
currentTimeZoneId''% 6
)''6 7
)''7 8
{(( 
return)) 
null)) 
;)) 
}** 
return,, 
_clock,, 
.,, 
GetTimeZone,, %
(,,% &
currentTimeZoneId,,& 7
),,7 8
;,,8 9
}-- 	
public// 
Task// #
UpdateUserTimeZoneAsync// +
(//+ ,
User//, 0
user//1 5
)//5 6
{00 	
var11 
userName11 
=11 
user11 
?11  
.11  !
UserName11! )
;11) *
if33 
(33 
!33 
String33 
.33 
IsNullOrEmpty33 %
(33% &
userName33& .
)33. /
)33/ 0
{44 
return55 
_distributedCache55 (
.55( )
RemoveAsync55) 4
(554 5
GetCacheKey555 @
(55@ A
userName55A I
)55I J
)55J K
;55K L
}66 
return88 
Task88 
.88 
CompletedTask88 %
;88% &
}99 	
public;; 
async;; 
Task;; 
<;; 
string;;  
>;;  !)
GetCurrentUserTimeZoneIdAsync;;" ?
(;;? @
);;@ A
{<< 	
var== 
userName== 
===  
_httpContextAccessor== /
.==/ 0
HttpContext==0 ;
.==; <
User==< @
?==@ A
.==A B
Identity==B J
?==J K
.==K L
Name==L P
;==P Q
if?? 
(?? 
String?? 
.?? 
IsNullOrEmpty?? $
(??$ %
userName??% -
)??- .
)??. /
{@@ 
returnAA 
nullAA 
;AA 
}BB 
varDD 
keyDD 
=DD 
GetCacheKeyDD !
(DD! "
userNameDD" *
)DD* +
;DD+ ,
varEE 

timeZoneIdEE 
=EE 
awaitEE "
_distributedCacheEE# 4
.EE4 5
GetStringAsyncEE5 C
(EEC D
keyEED G
)EEG H
;EEH I
ifGG 
(GG 
StringGG 
.GG 
IsNullOrEmptyGG $
(GG$ %

timeZoneIdGG% /
)GG/ 0
)GG0 1
{HH 
varII 
userII 
=II 
awaitII  
_userManagerII! -
.II- .
FindByNameAsyncII. =
(II= >
userNameII> F
)IIF G
asIIH J
UserIIK O
;IIO P

timeZoneIdJJ 
=JJ 
userJJ !
.JJ! "
AsJJ" $
<JJ$ %
UserTimeZoneJJ% 1
>JJ1 2
(JJ2 3
)JJ3 4
?JJ4 5
.JJ5 6

TimeZoneIdJJ6 @
;JJ@ A
ifLL 
(LL 
!LL 
StringLL 
.LL 
IsNullOrEmptyLL )
(LL) *

timeZoneIdLL* 4
)LL4 5
)LL5 6
{MM 
awaitNN 
_distributedCacheNN +
.NN+ ,
SetStringAsyncNN, :
(NN: ;
keyNN; >
,NN> ?

timeZoneIdNN@ J
,NNJ K
newNNL O(
DistributedCacheEntryOptionsNNP l
{NNm n
SlidingExpiration	NNo А
=
NNБ В
SlidingExpiration
NNГ Ф
}
NNХ Ц
)
NNЦ Ч
;
NNЧ Ш
}OO 
}PP 
returnRR 

timeZoneIdRR 
;RR 
}SS 	
privateUU 
stringUU 
GetCacheKeyUU "
(UU" #
stringUU# )
userNameUU* 2
)UU2 3
=>UU4 6
CacheKeyUU7 ?
+UU@ A
userNameUUB J
;UUJ K
}VV 
}WW ©
ЕD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Startup.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
TimeZone $
{ 
[ 
Feature 
( 
$str )
)) *
]* +
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
builder; B
,B C!
IEndpointRouteBuilderD Y
routesZ `
,` a
IServiceProviderb r
serviceProvider	s В
)
В Г
{ 	
} 	
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
ITimeZoneSelector 0
,0 1 
UserTimeZoneSelector2 F
>F G
(G H
)H I
;I J
services 
. 
	AddScoped 
< 
UserTimeZoneService 2
>2 3
(3 4
)4 5
;5 6
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
User. 2
>2 3
,3 4%
UserTimeZoneDisplayDriver5 N
>N O
(O P
)P Q
;Q R
} 	
} 
} №
ЭD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\ViewModel\UserTimeZoneViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
TimeZone $
.$ %

ViewModels% /
{ 
public 

class !
UserTimeZoneViewModel &
{ 
public 
string 

TimeZoneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} “
ФD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ChangeEmailViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public		 

class		  
ChangeEmailViewModel		 %
:		& '
IValidatableObject		( :
{

 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var !
emailAddressValidator %
=& '
validationContext( 9
.9 :

GetService: D
<D E"
IEmailAddressValidatorE [
>[ \
(\ ]
)] ^
;^ _
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B 
ChangeEmailViewModelB V
>V W
>W X
(X Y
)Y Z
;Z [
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
Email* /
)/ 0
)0 1
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 H
]H I
,I J
newK N
[N O
]O P
{Q R
nameofS Y
(Y Z
EmailZ _
)_ `
}a b
)b c
;c d
} 
else 
if 
( 
! !
emailAddressValidator +
.+ ,
Validate, 4
(4 5
Email5 :
): ;
); <
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 D
]D E
,E F
newG J
[J K
]K L
{M N
nameofO U
(U V
EmailV [
)[ \
}] ^
)^ _
;_ `
} 
} 	
} 
} Ё
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ChangePasswordViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class #
ChangePasswordViewModel (
:) *
IValidatableObject+ =
{		 
[

 	
DataType

	 
(

 
DataType

 
.

 
Password

 #
)

# $
]

$ %
public 
string 
CurrentPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string  
PasswordConfirmation *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B#
ChangePasswordViewModelB Y
>Y Z
>Z [
([ \
)\ ]
;] ^
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
CurrentPassword* 9
)9 :
): ;
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 S
]S T
,T U
newV Y
[Y Z
]Z [
{\ ]
nameof^ d
(d e
CurrentPassworde t
)t u
}v w
)w x
;x y
} 
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
Password* 2
)2 3
)3 4
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 K
]K L
,L M
newN Q
[Q R
]R S
{T U
nameofV \
(\ ]
Password] e
)e f
}g h
)h i
;i j
} 
if   
(   
Password   
!=    
PasswordConfirmation   0
)  0 1
{!! 
yield"" 
return"" 
new""  
ValidationResult""! 1
(""1 2
S""2 3
[""3 4
$str""4 n
]""n o
,""o p
new""q t
[""t u
]""u v
{""w x
nameof""y 
(	"" А"
PasswordConfirmation
""А Ф
)
""Ф Х
}
""Ц Ч
)
""Ч Ш
;
""Ш Щ
}## 
}$$ 	
}%% 
}&& –
ХD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ConfirmEmailViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class !
ConfirmEmailViewModel &
:' (
ShapeViewModel) 7
{ 
public !
ConfirmEmailViewModel $
($ %
)% &
{ 	
Metadata		 
.		 
Type		 
=		 
$str		 6
;		6 7
}

 	
public 
IUser 
User 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
ConfirmEmailUrl %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ј
ЯD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\CustomUserSettingsEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class +
CustomUserSettingsEditViewModel 0
{ 
public 
dynamic 
Editor 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 м
ЬD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\EditUserInformationViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{		 
public

 

class

 (
EditUserInformationViewModel

 -
:

. /
IValidatableObject

0 B
{ 
[ 	
Required	 
] 
public 
string 
UserName 
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
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
	BindNever	 
] 
public 
bool 
IsEditingDisabled %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var !
emailAddressValidator %
=& '
validationContext( 9
.9 :

GetService: D
<D E"
IEmailAddressValidatorE [
>[ \
(\ ]
)] ^
;^ _
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B(
EditUserInformationViewModelB ^
>^ _
>_ `
(` a
)a b
;b c
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
Email& +
)+ ,
&&- /
!0 1!
emailAddressValidator1 F
.F G
ValidateG O
(O P
EmailP U
)U V
)V W
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 D
]D E
,E F
newG J
[J K
]K L
{M N
$strO V
}W X
)X Y
;Y Z
} 
} 	
} 
}   ў

ХD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\EditUserRoleViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class !
EditUserRoleViewModel &
{ 
public 
	RoleEntry 
[ 
] 
Roles  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
Array1 6
.6 7
Empty7 <
<< =
	RoleEntry= F
>F G
(G H
)H I
;I J
}		 
public 

class 
	RoleEntry 
{ 
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 

IsSelected 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
	BindNever	 
] 
public 
bool 
IsEditingDisabled %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Ь
СD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\EditUserViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class 
EditUserViewModel "
{ 
public 
bool 
EmailConfirmed "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
bool		 
	IsEnabled		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
[ 	
	BindNever	 
] 
public 
bool 
IsEditingDisabled %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} П	
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ExternalLoginsViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class #
ExternalLoginsViewModel (
{ 
public		 
IList		 
<		 
UserLoginInfo		 "
>		" #
CurrentLogins		$ 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public 
IList 
<  
AuthenticationScheme )
>) *
OtherLogins+ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
bool 
ShowRemoveButton $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} П
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ForgotPasswordViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{		 
public

 

class

 #
ForgotPasswordViewModel

 (
:

) *
IValidatableObject

+ =
{ 
[ 	
Required	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var !
emailAddressValidator %
=& '
validationContext( 9
.9 :

GetService: D
<D E"
IEmailAddressValidatorE [
>[ \
(\ ]
)] ^
;^ _
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B#
ForgotPasswordViewModelB Y
>Y Z
>Z [
([ \
)\ ]
;] ^
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
Email* /
)/ 0
)0 1
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 H
]H I
,I J
newK N
[N O
]O P
{Q R
nameofS Y
(Y Z
EmailZ _
)_ `
}a b
)b c
;c d
} 
else 
if 
( 
! !
emailAddressValidator +
.+ ,
Validate, 4
(4 5
Email5 :
): ;
); <
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 D
]D E
,E F
newG J
[J K
]K L
{M N
nameofO U
(U V
EmailV [
)[ \
}] ^
)^ _
;_ `
} 
} 	
} 
} є
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\LinkExternalLoginViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class &
LinkExternalLoginViewModel +
:, -
IValidatableObject. @
{		 
[

 	
DataType

	 
(

 
DataType

 
.

 
Password

 #
)

# $
]

$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B&
LinkExternalLoginViewModelB \
>\ ]
>] ^
(^ _
)_ `
;` a
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
Password* 2
)2 3
)3 4
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 J
]J K
,K L
newM P
[P Q
]Q R
{S T
nameofU [
([ \
Password\ d
)d e
}f g
)g h
;h i
} 
} 	
} 
} К
ОD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\LoginViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class 
LoginViewModel 
:  !
IValidatableObject" 4
{		 
public

 
string

 
UserName
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
+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B
LoginViewModelB P
>P Q
>Q R
(R S
)S T
;T U
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
UserName* 2
)2 3
)3 4
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 K
]K L
,L M
newN Q
[Q R
]R S
{T U
$strV `
}a b
)b c
;c d
} 
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
Password* 2
)2 3
)3 4
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 K
]K L
,L M
newN Q
[Q R
]R S
{T U
$strV `
}a b
)b c
;c d
} 
} 	
} 
} ѕ
ХD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\LostPasswordViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class !
LostPasswordViewModel &
:' (
ShapeViewModel) 7
{ 
public !
LostPasswordViewModel $
($ %
)% &
{		 	
Metadata

 
.

 
Type

 
=

 
$str

 6
;

6 7
} 	
public 
User 
User 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
LostPasswordUrl %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Я0
ЮD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\RegisterExternalLoginViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public		 

class		 *
RegisterExternalLoginViewModel		 /
:		0 1
IValidatableObject		2 D
{

 
public 
bool 

NoUsername 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
NoEmail 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 

NoPassword 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var !
emailAddressValidator %
=& '
validationContext( 9
.9 :

GetService: D
<D E"
IEmailAddressValidatorE [
>[ \
(\ ]
)] ^
;^ _
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B*
RegisterExternalLoginViewModelB `
>` a
>a b
(b c
)c d
;d e
if   
(   
string   
.   
IsNullOrWhiteSpace   )
(  ) *
Email  * /
)  / 0
)  0 1
{!! 
if"" 
("" 
!"" 
NoEmail"" 
)"" 
{## 
yield$$ 
return$$  
new$$! $
ValidationResult$$% 5
($$5 6
S$$6 7
[$$7 8
$str$$8 L
]$$L M
,$$M N
new$$O R
[$$R S
]$$S T
{$$U V
$str$$W ^
}$$_ `
)$$` a
;$$a b
}%% 
}&& 
else'' 
if'' 
('' 
!'' !
emailAddressValidator'' +
.''+ ,
Validate'', 4
(''4 5
Email''5 :
)'': ;
)''; <
{(( 
yield)) 
return)) 
new))  
ValidationResult))! 1
())1 2
S))2 3
[))3 4
$str))4 D
]))D E
,))E F
new))G J
[))J K
]))K L
{))M N
$str))O V
}))W X
)))X Y
;))Y Z
}** 
if,, 
(,, 
string,, 
.,, 
IsNullOrWhiteSpace,, )
(,,) *
UserName,,* 2
),,2 3
&&,,4 6
!,,7 8

NoUsername,,8 B
),,B C
{-- 
yield.. 
return.. 
new..  
ValidationResult..! 1
(..1 2
S..2 3
[..3 4
$str..4 K
]..K L
,..L M
new..N Q
[..Q R
]..R S
{..T U
$str..V `
}..a b
)..b c
;..c d
}// 
if11 
(11 
string11 
.11 
IsNullOrWhiteSpace11 )
(11) *
Password11* 2
)112 3
&&114 6
!117 8

NoPassword118 B
)11B C
{22 
yield33 
return33 
new33  
ValidationResult33! 1
(331 2
S332 3
[333 4
$str334 K
]33K L
,33L M
new33N Q
[33Q R
]33R S
{33T U
$str33V `
}33a b
)33b c
;33c d
}44 
if66 
(66 
Password66 
!=66 
ConfirmPassword66 +
)66+ ,
{77 
yield88 
return88 
new88  
ValidationResult88! 1
(881 2
S882 3
[883 4
$str884 S
]88S T
,88T U
new88V Y
[88Y Z
]88Z [
{88\ ]
$str88^ o
}88p q
)88q r
;88r s
}99 
if;; 
(;; 
Password;; 
!=;; 
null;;  
&&;;! #
(;;$ %
Password;;% -
.;;- .
Length;;. 4
<;;5 6
$num;;7 8
||;;9 ;
Password;;< D
.;;D E
Length;;E K
>;;L M
$num;;N Q
);;Q R
);;R S
{<< 
yield== 
return== 
new==  
ValidationResult==! 1
(==1 2
string==2 8
.==8 9
Format==9 ?
(==? @
S==@ A
[==A B
$str==B s
]==s t
,==t u
$num==v w
,==w x
$num==y |
)==| }
,==} ~
new	== В
[
==В Г
]
==Г Д
{
==Е Ж
$str
==З С
}
==Т У
)
==У Ф
;
==Ф Х
}>> 
}?? 	
}@@ 
}AA Ч&
СD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\RegisterViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{		 
public

 

class

 
RegisterViewModel

 "
:

# $
IValidatableObject

% 7
{ 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var !
emailAddressValidator %
=& '
validationContext( 9
.9 :

GetService: D
<D E"
IEmailAddressValidatorE [
>[ \
(\ ]
)] ^
;^ _
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B
RegisterViewModelB S
>S T
>T U
(U V
)V W
;W X
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
UserName* 2
)2 3
)3 4
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 K
]K L
,L M
newN Q
[Q R
]R S
{T U
nameofV \
(\ ]
UserName] e
)e f
}g h
)h i
;i j
} 
if   
(   
string   
.   
IsNullOrWhiteSpace   )
(  ) *
Email  * /
)  / 0
)  0 1
{!! 
yield"" 
return"" 
new""  
ValidationResult""! 1
(""1 2
S""2 3
[""3 4
$str""4 H
]""H I
,""I J
new""K N
[""N O
]""O P
{""Q R
nameof""S Y
(""Y Z
Email""Z _
)""_ `
}""a b
)""b c
;""c d
}## 
else$$ 
if$$ 
($$ 
!$$ !
emailAddressValidator$$ +
.$$+ ,
Validate$$, 4
($$4 5
Email$$5 :
)$$: ;
)$$; <
{%% 
yield&& 
return&& 
new&&  
ValidationResult&&! 1
(&&1 2
S&&2 3
[&&3 4
$str&&4 D
]&&D E
,&&E F
new&&G J
[&&J K
]&&K L
{&&M N
nameof&&O U
(&&U V
Email&&V [
)&&[ \
}&&] ^
)&&^ _
;&&_ `
}'' 
if)) 
()) 
string)) 
.)) 
IsNullOrWhiteSpace)) )
())) *
Password))* 2
)))2 3
)))3 4
{** 
yield++ 
return++ 
new++  
ValidationResult++! 1
(++1 2
S++2 3
[++3 4
$str++4 K
]++K L
,++L M
new++N Q
[++Q R
]++R S
{++T U
nameof++V \
(++\ ]
Password++] e
)++e f
}++g h
)++h i
;++i j
},, 
if.. 
(.. 
Password.. 
!=.. 
ConfirmPassword.. +
)..+ ,
{// 
yield00 
return00 
new00  
ValidationResult00! 1
(001 2
S002 3
[003 4
$str004 n
]00n o
,00o p
new00q t
[00t u
]00u v
{00w x
nameof00y 
(	00 А
ConfirmPassword
00А П
)
00П Р
}
00С Т
)
00Т У
;
00У Ф
}11 
}22 	
}33 
}44 ѕ
ФD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\RemoveLoginViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class  
RemoveLoginViewModel %
{ 
public 
string 
LoginProvider #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ProviderKey !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Ъ"
ЦD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ResetPasswordViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{		 
public

 

class

 "
ResetPasswordViewModel

 '
:

( )
IValidatableObject

* <
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string  
PasswordConfirmation *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 

ResetToken  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IEnumerable 
< 
ValidationResult +
>+ ,
Validate- 5
(5 6
ValidationContext6 G
validationContextH Y
)Y Z
{ 	
var !
emailAddressValidator %
=& '
validationContext( 9
.9 :

GetService: D
<D E"
IEmailAddressValidatorE [
>[ \
(\ ]
)] ^
;^ _
var 
S 
= 
validationContext %
.% &

GetService& 0
<0 1
IStringLocalizer1 A
<A B"
ResetPasswordViewModelB X
>X Y
>Y Z
(Z [
)[ \
;\ ]
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
Email* /
)/ 0
)0 1
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str4 H
]H I
,I J
newK N
[N O
]O P
{Q R
nameofS Y
(Y Z
EmailZ _
)_ `
}a b
)b c
;c d
} 
else 
if 
( 
! !
emailAddressValidator +
.+ ,
Validate, 4
(4 5
Email5 :
): ;
); <
{   
yield!! 
return!! 
new!!  
ValidationResult!!! 1
(!!1 2
S!!2 3
[!!3 4
$str!!4 D
]!!D E
,!!E F
new!!G J
[!!J K
]!!K L
{!!M N
nameof!!O U
(!!U V
Email!!V [
)!![ \
}!!] ^
)!!^ _
;!!_ `
}"" 
if$$ 
($$ 
string$$ 
.$$ 
IsNullOrWhiteSpace$$ )
($$) *
NewPassword$$* 5
)$$5 6
)$$6 7
{%% 
yield&& 
return&& 
new&&  
ValidationResult&&! 1
(&&1 2
S&&2 3
[&&3 4
$str&&4 O
]&&O P
,&&P Q
new&&R U
[&&U V
]&&V W
{&&X Y
nameof&&Z `
(&&` a
NewPassword&&a l
)&&l m
}&&n o
)&&o p
;&&p q
}'' 
if)) 
()) 
NewPassword)) 
!=))  
PasswordConfirmation)) 3
)))3 4
{** 
yield++ 
return++ 
new++  
ValidationResult++! 1
(++1 2
S++2 3
[++3 4
$str++4 n
]++n o
,++o p
new++q t
[++t u
]++u v
{++w x
nameof++y 
(	++ А"
PasswordConfirmation
++А Ф
)
++Ф Х
}
++Ц Ч
)
++Ч Ш
;
++Ш Щ
},, 
}-- 	
}.. 
}// ѓ
ЩD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\SummaryAdminUserViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class %
SummaryAdminUserViewModel *
{ 
public 
User 
User 
{ 
get 
; 
set  #
;# $
}% &
} 
}		 Ж
УD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\UsersIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 

ViewModels &
{ 
public 

class 
UsersIndexViewModel $
{ 
public		 
IList		 
<		 
	UserEntry		 
>		 
Users		  %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
UserIndexOptions

 
Options

  '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
=

6 7
new

8 ;
UserIndexOptions

< L
(

L M
)

M N
;

N O
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
	UserEntry 
{ 
public 
dynamic 
Shape 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
UserIndexOptions !
{ 
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
public 

UsersOrder 
Order 
{  !
get" %
;% &
set' *
;* +
}, -
public 
UsersFilter 
Filter !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
UsersBulkAction 

BulkAction )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
UserFilters$ /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
	UserSorts$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[!! 	
	BindNever!!	 
]!! 
public"" 
List"" 
<"" 
SelectListItem"" "
>""" #
UsersBulkAction""$ 3
{""4 5
get""6 9
;""9 :
set""; >
;""> ?
}""@ A
}## 
public%% 

enum%% 

UsersOrder%% 
{&& 
Name'' 
,'' 
Email(( 
,(( 

CreatedUtc)) 
,)) 
LastLoginUtc** 
}++ 
public-- 

enum-- 
UsersFilter-- 
{.. 
All// 
,// 
Approved00 
,00 
Pending11 
,11 
EmailPending22 
}33 
public55 

enum55 
UsersBulkAction55 
{66 
None77 
,77 
Delete88 
,88 
Enable99 
,99 
Disable:: 
,:: 
Approve;; 
,;; 
ChallengeEmail<< 
}== 
}>> я/
ЬD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\AssignUserRoleTask.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
AssignUserRoleTask #
:$ %
TaskActivity& 2
{ 
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
AssignUserRoleTask !
(! "
UserManager" -
<- .
IUser. 3
>3 4
userManager5 @
,@ A
IUserServiceB N
userServiceO Z
,Z [(
IWorkflowExpressionEvaluator\ x
expressionvaluator	y Л
,
Л М
IStringLocalizer
Н Э
<
Э Ю 
AssignUserRoleTask
Ю ∞
>
∞ ±
	localizer
≤ ї
)
ї Љ
{ 	
_userManager 
= 
userManager &
;& '
_userService 
= 
userService &
;& ' 
_expressionEvaluator  
=! "
expressionvaluator# 5
;5 6
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
(- .
AssignUserRoleTask. @
)@ A
;A B
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 P
]P Q
;Q R
public!! 
override!! 
LocalizedString!! '
Category!!( 0
=>!!1 3
S!!4 5
[!!5 6
$str!!6 <
]!!< =
;!!= >
public## 
WorkflowExpression## !
<##! "
string##" (
>##( )
UserName##* 2
{$$ 	
get%% 
=>%% 
GetProperty%% 
(%% 
(%%  
)%%  !
=>%%" $
new%%% (
WorkflowExpression%%) ;
<%%; <
string%%< B
>%%B C
(%%C D
)%%D E
)%%E F
;%%F G
set&& 
=>&& 
SetProperty&& 
(&& 
value&& $
)&&$ %
;&&% &
}'' 	
public)) 
WorkflowExpression)) !
<))! "
string))" (
>))( )
RoleName))* 2
{** 	
get++ 
=>++ 
GetProperty++ 
(++ 
(++  
)++  !
=>++" $
new++% (
WorkflowExpression++) ;
<++; <
string++< B
>++B C
(++C D
)++D E
)++E F
;++F G
set,, 
=>,, 
SetProperty,, 
(,, 
value,, $
),,$ %
;,,% &
}-- 	
public// 
override// 
IEnumerable// #
<//# $
Outcome//$ +
>//+ ,
GetPossibleOutcomes//- @
(//@ A$
WorkflowExecutionContext//A Y
workflowContext//Z i
,//i j
ActivityContext//k z
activityContext	//{ К
)
//К Л
{00 	
return11 
Outcomes11 
(11 
S11 
[11 
$str11 $
]11$ %
,11% &
S11' (
[11( )
$str11) 1
]111 2
)112 3
;113 4
}22 	
public44 
override44 
async44 
Task44 "
<44" ##
ActivityExecutionResult44# :
>44: ;
ExecuteAsync44< H
(44H I$
WorkflowExecutionContext44I a
workflowContext44b q
,44q r
ActivityContext	44s В
activityContext
44Г Т
)
44Т У
{55 	
var66 
userName66 
=66 
await66   
_expressionEvaluator66! 5
.665 6
EvaluateAsync666 C
(66C D
UserName66D L
,66L M
workflowContext66N ]
,66] ^
null66_ c
)66c d
;66d e
var77 
roleName77 
=77 
await77   
_expressionEvaluator77! 5
.775 6
EvaluateAsync776 C
(77C D
RoleName77D L
,77L M
workflowContext77N ]
,77] ^
null77_ c
)77c d
;77d e
User99 
user99 
=99 
(99 
User99 
)99 
await99 #
_userService99$ 0
.990 1
GetUserAsync991 =
(99= >
userName99> F
)99F G
;99G H
if;; 
(;; 
user;; 
!=;; 
null;; 
);; 
{<< 
if== 
(== 
!== 
user== 
.== 
	RoleNames== #
.==# $
Contains==$ ,
(==, -
roleName==- 5
)==5 6
)==6 7
{>> 
await?? 
_userManager?? &
.??& '
AddToRoleAsync??' 5
(??5 6
user??6 :
,??: ;
roleName??< D
)??D E
;??E F
}@@ 
returnBB 
OutcomesBB 
(BB  
$strBB  &
)BB& '
;BB' (
}CC 
elseDD 
{EE 
returnFF 
OutcomesFF 
(FF  
$strFF  (
)FF( )
;FF) *
}GG 
}HH 	
}II 
}JJ “x
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\RegisterUserTask.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
RegisterUserTask !
:" #
TaskActivity$ 0
{ 
private 
readonly 
IUserService %
_userService& 2
;2 3
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
LinkGenerator &
_linkGenerator' 5
;5 6
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public   
RegisterUserTask   
(    
IUserService!! 
userService!! $
,!!$ %
UserManager"" 
<"" 
IUser"" 
>"" 
userManager"" *
,""* +(
IWorkflowExpressionEvaluator## (
expressionEvaluator##) <
,##< =
LinkGenerator$$ 
linkGenerator$$ '
,$$' ( 
IHttpContextAccessor%%  
httpContextAccessor%%! 4
,%%4 5 
IUpdateModelAccessor&&  
updateModelAccessor&&! 4
,&&4 5
IStringLocalizer'' 
<'' 
RegisterUserTask'' -
>''- .
	localizer''/ 8
,''8 9
HtmlEncoder(( 
htmlEncoder(( #
)((# $
{)) 	
_userService** 
=** 
userService** &
;**& '
_userManager++ 
=++ 
userManager++ &
;++& ' 
_expressionEvaluator,,  
=,,! "
expressionEvaluator,,# 6
;,,6 7
_linkGenerator-- 
=-- 
linkGenerator-- *
;--* + 
_httpContextAccessor..  
=..! "
httpContextAccessor..# 6
;..6 7 
_updateModelAccessor//  
=//! "
updateModelAccessor//# 6
;//6 7
S00 
=00 
	localizer00 
;00 
_htmlEncoder11 
=11 
htmlEncoder11 &
;11& '
}22 	
public55 
override55 
string55 
Name55 #
=>55$ &
nameof55' -
(55- .
RegisterUserTask55. >
)55> ?
;55? @
public77 
override77 
LocalizedString77 '
DisplayText77( 3
=>774 6
S777 8
[778 9
$str779 M
]77M N
;77N O
public:: 
override:: 
LocalizedString:: '
Category::( 0
=>::1 3
S::4 5
[::5 6
$str::6 ?
]::? @
;::@ A
public== 
bool== !
SendConfirmationEmail== )
{>> 	
get?? 
=>?? 
GetProperty?? 
(?? 
(??  
)??  !
=>??" $
true??% )
)??) *
;??* +
set@@ 
=>@@ 
SetProperty@@ 
(@@ 
value@@ $
)@@$ %
;@@% &
}AA 	
publicCC 
WorkflowExpressionCC !
<CC! "
stringCC" (
>CC( )$
ConfirmationEmailSubjectCC* B
{DD 	
getEE 
=>EE 
GetPropertyEE 
(EE 
(EE  
)EE  !
=>EE" $
newEE% (
WorkflowExpressionEE) ;
<EE; <
stringEE< B
>EEB C
(EEC D
)EED E
)EEE F
;EEF G
setFF 
=>FF 
SetPropertyFF 
(FF 
valueFF $
)FF$ %
;FF% &
}GG 	
publicJJ 
WorkflowExpressionJJ !
<JJ! "
stringJJ" (
>JJ( )%
ConfirmationEmailTemplateJJ* C
{KK 	
getLL 
=>LL 
GetPropertyLL 
(LL 
(LL  
)LL  !
=>LL" $
newLL% (
WorkflowExpressionLL) ;
<LL; <
stringLL< B
>LLB C
(LLC D
)LLD E
)LLE F
;LLF G
setMM 
=>MM 
SetPropertyMM 
(MM 
valueMM $
)MM$ %
;MM% &
}NN 	
publicQQ 
overrideQQ 
IEnumerableQQ #
<QQ# $
OutcomeQQ$ +
>QQ+ ,
GetPossibleOutcomesQQ- @
(QQ@ A$
WorkflowExecutionContextQQA Y
workflowContextQQZ i
,QQi j
ActivityContextQQk z
activityContext	QQ{ К
)
QQК Л
{RR 	
returnSS 
OutcomesSS 
(SS 
SSS 
[SS 
$strSS $
]SS$ %
,SS% &
SSS' (
[SS( )
$strSS) 0
]SS0 1
,SS1 2
SSS3 4
[SS4 5
$strSS5 >
]SS> ?
)SS? @
;SS@ A
}TT 	
publicWW 
overrideWW 
asyncWW 
TaskWW "
<WW" ##
ActivityExecutionResultWW# :
>WW: ;
ExecuteAsyncWW< H
(WWH I$
WorkflowExecutionContextWWI a
workflowContextWWb q
,WWq r
ActivityContext	WWs В
activityContext
WWГ Т
)
WWТ У
{XX 	
boolYY 
isValidYY 
=YY 
falseYY  
;YY  !
IFormCollectionZZ 
formZZ  
=ZZ! "
nullZZ# '
;ZZ' (
string[[ 
email[[ 
=[[ 
null[[ 
;[[  
if\\ 
(\\  
_httpContextAccessor\\ $
.\\$ %
HttpContext\\% 0
!=\\1 3
null\\4 8
)\\8 9
{]] 
form^^ 
=^^  
_httpContextAccessor^^ +
.^^+ ,
HttpContext^^, 7
.^^7 8
Request^^8 ?
.^^? @
Form^^@ D
;^^D E
email__ 
=__ 
form__ 
[__ 
$str__ $
]__$ %
;__% &
isValid`` 
=`` 
!`` 
string`` !
.``! "
IsNullOrWhiteSpace``" 4
(``4 5
email``5 :
)``: ;
;``; <
}aa 
varbb 
outcomebb 
=bb 
isValidbb !
?bb" #
$strbb$ +
:bb, -
$strbb. 7
;bb7 8
ifdd 
(dd 
isValiddd 
)dd 
{ee 
varff 
userNameff 
=ff 
formff #
[ff# $
$strff$ .
]ff. /
;ff/ 0
ifgg 
(gg 
stringgg 
.gg 
IsNullOrWhiteSpacegg -
(gg- .
userNamegg. 6
)gg6 7
)gg7 8
userNamehh 
=hh 
emailhh $
;hh$ %
varjj 
errorsjj 
=jj 
newjj  

Dictionaryjj! +
<jj+ ,
stringjj, 2
,jj2 3
stringjj4 :
>jj: ;
(jj; <
)jj< =
;jj= >
varkk 
userkk 
=kk 
(kk 
Userkk  
)kk  !
awaitkk! &
_userServicekk' 3
.kk3 4
CreateUserAsynckk4 C
(kkC D
newkkD G
UserkkH L
(kkL M
)kkM N
{kkO P
UserNamekkQ Y
=kkZ [
userNamekk\ d
,kkd e
Emailkkf k
=kkl m
emailkkn s
}kkt u
,kku v
nullkkw {
,kk{ |
(kk} ~
key	kk~ Б
,
kkБ В
message
kkГ К
)
kkК Л
=>
kkМ О
errors
kkП Х
.
kkХ Ц
Add
kkЦ Щ
(
kkЩ Ъ
key
kkЪ Э
,
kkЭ Ю
message
kkЯ ¶
)
kk¶ І
)
kkІ ®
;
kk® ©
ifll 
(ll 
errorsll 
.ll 
Countll  
>ll! "
$numll# $
)ll$ %
{mm 
varnn 
updaternn 
=nn  ! 
_updateModelAccessornn" 6
.nn6 7
ModelUpdaternn7 C
;nnC D
ifoo 
(oo 
updateroo 
!=oo  "
nulloo# '
)oo' (
{pp 
foreachqq 
(qq  !
varqq! $
itemqq% )
inqq* ,
errorsqq- 3
)qq3 4
{rr 
updaterss #
.ss# $

ModelStatess$ .
.ss. /
TryAddModelErrorss/ ?
(ss? @
itemss@ D
.ssD E
KeyssE H
,ssH I
SssJ K
[ssK L
itemssL P
.ssP Q
ValuessQ V
]ssV W
)ssW X
;ssX Y
}tt 
}uu 
outcomevv 
=vv 
$strvv '
;vv' (
}ww 
elsexx 
ifxx 
(xx !
SendConfirmationEmailxx .
)xx. /
{yy 
varzz 
codezz 
=zz 
awaitzz $
_userManagerzz% 1
.zz1 2/
#GenerateEmailConfirmationTokenAsynczz2 U
(zzU V
userzzV Z
)zzZ [
;zz[ \
var|| 
uri|| 
=|| 
_linkGenerator|| ,
.||, -
GetUriByAction||- ;
(||; < 
_httpContextAccessor||< P
.||P Q
HttpContext||Q \
,||\ ]
$str||^ l
,||l m
$str}} &
,}}& '
new}}( +
{}}, -
area}}. 2
=}}3 4
$str}}5 H
,}}H I
userId}}J P
=}}Q R
user}}S W
.}}W X
UserId}}X ^
,}}^ _
code}}` d
}}}e f
)}}f g
;}}g h
workflowContext #
.# $

Properties$ .
[. /
$str/ E
]E F
=G H
uriI L
;L M
var
ББ 
subject
ББ 
=
ББ  !
await
ББ" '"
_expressionEvaluator
ББ( <
.
ББ< =
EvaluateAsync
ББ= J
(
ББJ K&
ConfirmationEmailSubject
ББK c
,
ББc d
workflowContext
ББe t
,
ББt u
null
ББv z
)
ББz {
;
ББ{ |
var
ВВ 
localizedSubject
ВВ (
=
ВВ) *
new
ВВ+ .
LocalizedString
ВВ/ >
(
ВВ> ?
nameof
ВВ? E
(
ВВE F
RegisterUserTask
ВВF V
)
ВВV W
,
ВВW X
subject
ВВY `
)
ВВ` a
;
ВВa b
var
ДД 
body
ДД 
=
ДД 
await
ДД $"
_expressionEvaluator
ДД% 9
.
ДД9 :
EvaluateAsync
ДД: G
(
ДДG H'
ConfirmationEmailTemplate
ДДH a
,
ДДa b
workflowContext
ДДc r
,
ДДr s
_htmlEncoderДДt А
)ДДА Б
;ДДБ В
var
ЕЕ 
localizedBody
ЕЕ %
=
ЕЕ& '
new
ЕЕ( +!
LocalizedHtmlString
ЕЕ, ?
(
ЕЕ? @
nameof
ЕЕ@ F
(
ЕЕF G
RegisterUserTask
ЕЕG W
)
ЕЕW X
,
ЕЕX Y
body
ЕЕZ ^
)
ЕЕ^ _
;
ЕЕ_ `
var
ЖЖ 
message
ЖЖ 
=
ЖЖ  !
new
ЖЖ" %
MailMessage
ЖЖ& 1
(
ЖЖ1 2
)
ЖЖ2 3
{
ЗЗ 
To
ИИ 
=
ИИ 
email
ИИ "
,
ИИ" #
Subject
ЙЙ 
=
ЙЙ  !
localizedSubject
ЙЙ" 2
.
ЙЙ2 3
ResourceNotFound
ЙЙ3 C
?
ЙЙD E
subject
ЙЙF M
:
ЙЙN O
localizedSubject
ЙЙP `
.
ЙЙ` a
Value
ЙЙa f
,
ЙЙf g
Body
КК 
=
КК 
localizedBody
КК ,
.
КК, - 
IsResourceNotFound
КК- ?
?
КК@ A
body
ККB F
:
ККG H
localizedBody
ККI V
.
ККV W
Value
ККW \
,
КК\ ]

IsBodyHtml
ЛЛ "
=
ЛЛ# $
true
ЛЛ% )
}
ММ 
;
ММ 
var
НН 
smtpService
НН #
=
НН$ %"
_httpContextAccessor
НН& :
.
НН: ;
HttpContext
НН; F
.
ННF G
RequestServices
ННG V
.
ННV W

GetService
ННW a
<
ННa b
ISmtpService
ННb n
>
ННn o
(
ННo p
)
ННp q
;
ННq r
if
ПП 
(
ПП 
smtpService
ПП #
==
ПП$ &
null
ПП' +
)
ПП+ ,
{
РР 
var
СС 
updater
СС #
=
СС$ %"
_updateModelAccessor
СС& :
.
СС: ;
ModelUpdater
СС; G
;
ССG H
if
ТТ 
(
ТТ 
updater
ТТ #
!=
ТТ$ &
null
ТТ' +
)
ТТ+ ,
{
УУ 
updater
ФФ #
.
ФФ# $

ModelState
ФФ$ .
.
ФФ. /
TryAddModelError
ФФ/ ?
(
ФФ? @
$str
ФФ@ B
,
ФФB C
S
ФФD E
[
ФФE F
$str
ФФF e
]
ФФe f
)
ФФf g
;
ФФg h
}
ХХ 
outcome
ЦЦ 
=
ЦЦ  !
$str
ЦЦ" +
;
ЦЦ+ ,
}
ЧЧ 
else
ШШ 
{
ЩЩ 
var
ЪЪ 
result
ЪЪ "
=
ЪЪ# $
await
ЪЪ% *
smtpService
ЪЪ+ 6
.
ЪЪ6 7
	SendAsync
ЪЪ7 @
(
ЪЪ@ A
message
ЪЪA H
)
ЪЪH I
;
ЪЪI J
if
ЫЫ 
(
ЫЫ 
!
ЫЫ 
result
ЫЫ #
.
ЫЫ# $
	Succeeded
ЫЫ$ -
)
ЫЫ- .
{
ЬЬ 
var
ЭЭ 
updater
ЭЭ  '
=
ЭЭ( )"
_updateModelAccessor
ЭЭ* >
.
ЭЭ> ?
ModelUpdater
ЭЭ? K
;
ЭЭK L
if
ЮЮ 
(
ЮЮ  
updater
ЮЮ  '
!=
ЮЮ( *
null
ЮЮ+ /
)
ЮЮ/ 0
{
ЯЯ 
foreach
††  '
(
††( )
var
††) ,
item
††- 1
in
††2 4
result
††5 ;
.
††; <
Errors
††< B
)
††B C
{
°°  !
updater
ҐҐ$ +
.
ҐҐ+ ,

ModelState
ҐҐ, 6
.
ҐҐ6 7
TryAddModelError
ҐҐ7 G
(
ҐҐG H
item
ҐҐH L
.
ҐҐL M
Name
ҐҐM Q
,
ҐҐQ R
item
ҐҐS W
.
ҐҐW X
Value
ҐҐX ]
)
ҐҐ] ^
;
ҐҐ^ _
}
££  !
}
§§ 
outcome
•• #
=
••$ %
$str
••& /
;
••/ 0
}
¶¶ 
}
ІІ 
}
®® 
}
©© 
return
ЂЂ 
Outcomes
ЂЂ 
(
ЂЂ 
$str
ЂЂ "
,
ЂЂ" #
outcome
ЂЂ$ +
)
ЂЂ+ ,
;
ЂЂ, -
}
ђђ 	
}
≠≠ 
}ЃЃ В
ЦD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserActivity.cs
	namespace

 	
OrchardCore


 
.

 
Users

 
.

 
	Workflows

 %
.

% &

Activities

& 0
{ 
public 

abstract 
class 
UserActivity &
:' (
Activity) 1
{ 
	protected 
readonly 
IStringLocalizer +
S, -
;- .
	protected 
UserActivity 
( 
IUserService +
userService, 7
,7 8$
IWorkflowScriptEvaluator9 Q
scriptEvaluatorR a
,a b
IStringLocalizerc s
	localizert }
)} ~
{ 	
UserService 
= 
userService %
;% &
ScriptEvaluator 
= 
scriptEvaluator -
;- .
S 
= 
	localizer 
; 
} 	
	protected 
IUserService 
UserService *
{+ ,
get- 0
;0 1
}2 3
	protected $
IWorkflowScriptEvaluator *
ScriptEvaluator+ :
{; <
get= @
;@ A
}B C
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 <
]< =
;= >
public   
WorkflowExpression   !
<  ! "
User  " &
>  & '
User  ( ,
{!! 	
get"" 
=>"" 
GetProperty"" 
("" 
(""  
)""  !
=>""" $
new""% (
WorkflowExpression"") ;
<""; <
User""< @
>""@ A
(""A B
)""B C
)""C D
;""D E
set## 
=>## 
SetProperty## 
(## 
value## $
)##$ %
;##% &
}$$ 	
public&& 
override&& 
IEnumerable&& #
<&&# $
Outcome&&$ +
>&&+ ,
GetPossibleOutcomes&&- @
(&&@ A$
WorkflowExecutionContext&&A Y
workflowContext&&Z i
,&&i j
ActivityContext&&k z
activityContext	&&{ К
)
&&К Л
{'' 	
return(( 
Outcomes(( 
((( 
S(( 
[(( 
$str(( $
](($ %
)((% &
;((& '
})) 	
public++ 
override++ #
ActivityExecutionResult++ /
Execute++0 7
(++7 8$
WorkflowExecutionContext++8 P
workflowContext++Q `
,++` a
ActivityContext++b q
activityContext	++r Б
)
++Б В
{,, 	
return-- 
Outcomes-- 
(-- 
$str-- "
)--" #
;--# $
}.. 	
}// 
}00 Р
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserCreatedEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
UserCreatedEvent !
:" #
	UserEvent$ -
{ 
public		 
UserCreatedEvent		 
(		  
IUserService		  ,
userService		- 8
,		8 9$
IWorkflowScriptEvaluator		: R
scriptEvaluator		S b
,		b c
IStringLocalizer		d t
<		t u
UserCreatedEvent			u Е
>
		Е Ж
	localizer
		З Р
)
		Р С
:
		Т У
base
		Ф Ш
(
		Ш Щ
userService
		Щ §
,
		§ •
scriptEvaluator
		¶ µ
,
		µ ґ
	localizer
		Ј ј
)
		ј Ѕ
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
UserCreatedEvent. >
)> ?
;? @
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 M
]M N
;N O
} 
} Р
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserDeletedEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
UserDeletedEvent !
:" #
	UserEvent$ -
{ 
public		 
UserDeletedEvent		 
(		  
IUserService		  ,
userService		- 8
,		8 9$
IWorkflowScriptEvaluator		: R
scriptEvaluator		S b
,		b c
IStringLocalizer		d t
<		t u
UserDeletedEvent			u Е
>
		Е Ж
	localizer
		З Р
)
		Р С
:
		Т У
base
		Ф Ш
(
		Ш Щ
userService
		Щ §
,
		§ •
scriptEvaluator
		¶ µ
,
		µ ґ
	localizer
		Ј ј
)
		ј Ѕ
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
UserDeletedEvent. >
)> ?
;? @
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 M
]M N
;N O
} 
} Х
ЫD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserDisabledEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
UserDisabledEvent "
:# $
	UserEvent% .
{ 
public		 
UserDisabledEvent		  
(		  !
IUserService		! -
userService		. 9
,		9 :$
IWorkflowScriptEvaluator		; S
scriptEvaluator		T c
,		c d
IStringLocalizer		e u
<		u v
UserDisabledEvent			v З
>
		З И
	localizer
		Й Т
)
		Т У
:
		Ф Х
base
		Ц Ъ
(
		Ъ Ы
userService
		Ы ¶
,
		¶ І
scriptEvaluator
		® Ј
,
		Ј Є
	localizer
		є ¬
)
		¬ √
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
UserDisabledEvent. ?
)? @
;@ A
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 N
]N O
;O P
} 
} Р
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserEnabledEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
UserEnabledEvent !
:" #
	UserEvent$ -
{ 
public		 
UserEnabledEvent		 
(		  
IUserService		  ,
userService		- 8
,		8 9$
IWorkflowScriptEvaluator		: R
scriptEvaluator		S b
,		b c
IStringLocalizer		d t
<		t u
UserEnabledEvent			u Е
>
		Е Ж
	localizer
		З Р
)
		Р С
:
		Т У
base
		Ф Ш
(
		Ш Щ
userService
		Щ §
,
		§ •
scriptEvaluator
		¶ µ
,
		µ ґ
	localizer
		Ј ј
)
		ј Ѕ
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
UserEnabledEvent. >
)> ?
;? @
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 M
]M N
;N O
} 
} Л
УD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public		 

abstract		 
class		 
	UserEvent		 #
:		$ %
UserActivity		& 2
,		2 3
IEvent		4 :
{

 
public 
	UserEvent 
( 
IUserService %
userService& 1
,1 2$
IWorkflowScriptEvaluator3 K
scriptEvaluatorL [
,[ \
IStringLocalizer] m
	localizern w
)w x
:y z
base{ 
(	 А
userService
А Л
,
Л М
scriptEvaluator
Н Ь
,
Ь Э
	localizer
Ю І
)
І ®
{ 	
} 	
public 
override #
ActivityExecutionResult /
Execute0 7
(7 8$
WorkflowExecutionContext8 P
workflowContextQ `
,` a
ActivityContextb q
activityContext	r Б
)
Б В
{ 	
return 
Halt 
( 
) 
; 
} 	
public 
override #
ActivityExecutionResult /
Resume0 6
(6 7$
WorkflowExecutionContext7 O
workflowContextP _
,_ `
ActivityContexta p
activityContext	q А
)
А Б
{ 	
return 
Outcomes 
( 
$str "
)" #
;# $
} 	
} 
} Х
ЫD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserLoggedInEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
UserLoggedInEvent "
:# $
	UserEvent% .
{ 
public		 
UserLoggedInEvent		  
(		  !
IUserService		! -
userService		. 9
,		9 :$
IWorkflowScriptEvaluator		; S
scriptEvaluator		T c
,		c d
IStringLocalizer		e u
<		u v
UserLoggedInEvent			v З
>
		З И
	localizer
		Й Т
)
		Т У
:
		Ф Х
base
		Ц Ъ
(
		Ъ Ы
userService
		Ы ¶
,
		¶ І
scriptEvaluator
		® Ј
,
		Ј Є
	localizer
		є ¬
)
		¬ √
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
UserLoggedInEvent. ?
)? @
;@ A
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 N
]N O
;O P
} 
} Р
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserUpdatedEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
UserUpdatedEvent !
:" #
	UserEvent$ -
{ 
public		 
UserUpdatedEvent		 
(		  
IUserService		  ,
userService		- 8
,		8 9$
IWorkflowScriptEvaluator		: R
scriptEvaluator		S b
,		b c
IStringLocalizer		d t
<		t u
UserUpdatedEvent			u Е
>
		Е Ж
	localizer
		З Р
)
		Р С
:
		Т У
base
		Ф Ш
(
		Ш Щ
userService
		Щ §
,
		§ •
scriptEvaluator
		¶ µ
,
		µ ґ
	localizer
		Ј ј
)
		ј Ѕ
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
UserUpdatedEvent. >
)> ?
;? @
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 M
]M N
;N O
} 
} ћ1
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\ValidateUserTask.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
ValidateUserTask !
:" #
TaskActivity$ 0
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
string 
_roleClaimType  .
;. /
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ValidateUserTask 
(   
IHttpContextAccessor  4
httpContextAccessor5 H
,H I
IOptionsJ R
<R S
IdentityOptionsS b
>b c
optionsAccessord s
,s t
IStringLocalizer	u Е
<
Е Ж
ValidateUserTask
Ж Ц
>
Ц Ч
	localizer
Ш °
)
° Ґ
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_roleClaimType 
= 
optionsAccessor ,
., -
Value- 2
.2 3
ClaimsIdentity3 A
.A B
RoleClaimTypeB O
;O P
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
ValidateUserTask. >
)> ?
;? @
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 <
]< =
;= >
public 
bool 
SetUserName 
{ 	
get   
=>   
GetProperty   
(   
(    
)    !
=>  " $
true  % )
)  ) *
;  * +
set!! 
=>!! 
SetProperty!! 
(!! 
value!! $
)!!$ %
;!!% &
}"" 	
public$$ 
IEnumerable$$ 
<$$ 
string$$ !
>$$! "
Roles$$# (
{%% 	
get&& 
=>&& 
GetProperty&& 
(&& 
(&&  
)&&  !
=>&&" $
new&&% (
List&&) -
<&&- .
string&&. 4
>&&4 5
(&&5 6
)&&6 7
)&&7 8
;&&8 9
set'' 
=>'' 
SetProperty'' 
('' 
value'' $
)''$ %
;''% &
}(( 	
public** 
override** 
LocalizedString** '
DisplayText**( 3
=>**4 6
S**7 8
[**8 9
$str**9 M
]**M N
;**N O
public,, 
override,, 
IEnumerable,, #
<,,# $
Outcome,,$ +
>,,+ ,
GetPossibleOutcomes,,- @
(,,@ A$
WorkflowExecutionContext,,A Y
workflowContext,,Z i
,,,i j
ActivityContext,,k z
activityContext	,,{ К
)
,,К Л
{-- 	
return.. 
Outcomes.. 
(.. 
S.. 
[.. 
$str.. )
]..) *
,..* +
S.., -
[..- .
$str... =
]..= >
,..> ?
S..@ A
[..A B
$str..B J
]..J K
)..K L
;..L M
}// 	
public11 
override11 #
ActivityExecutionResult11 /
Execute110 7
(117 8$
WorkflowExecutionContext118 P
workflowContext11Q `
,11` a
ActivityContext11b q
activityContext	11r Б
)
11Б В
{22 	
var33 
user33 
=33  
_httpContextAccessor33 +
.33+ ,
HttpContext33, 7
.337 8
User338 <
;33< =
var44 
isAuthenticated44 
=44  !
user44" &
?44& '
.44' (
Identity44( 0
?440 1
.441 2
IsAuthenticated442 A
;44A B
if66 
(66 
isAuthenticated66 
==66  "
true66# '
)66' (
{77 
if88 
(88 
SetUserName88 
)88  
{99 
workflowContext:: #
.::# $

Properties::$ .
[::. /
$str::/ 9
]::9 :
=::; <
user::= A
.::A B
Identity::B J
.::J K
Name::K O
;::O P
};; 
if== 
(== 
Roles== 
.== 
Any== 
(== 
)== 
)==  
{>> 
var?? 
userRoleNames?? %
=??& '
user??( ,
.@@ 
FindAll@@  
(@@  !
c@@! "
=>@@# %
c@@& '
.@@' (
Type@@( ,
==@@- /
_roleClaimType@@0 >
)@@> ?
.AA 
SelectAA 
(AA  
cAA  !
=>AA" $
cAA% &
.AA& '
ValueAA' ,
)AA, -
.BB 
ToListBB 
(BB  
)BB  !
;BB! "
foreachDD 
(DD 
varDD  
roleDD! %
inDD& (
RolesDD) .
)DD. /
{EE 
ifFF 
(FF 
userRoleNamesFF )
.FF) *
ContainsFF* 2
(FF2 3
roleFF3 7
)FF7 8
)FF8 9
{GG 
workflowContextHH +
.HH+ ,

LastResultHH, 6
=HH7 8
userRoleNamesHH9 F
;HHF G
returnII "
OutcomesII# +
(II+ ,
$strII, 4
)II4 5
;II5 6
}JJ 
}KK 
}LL 
returnNN 
OutcomesNN 
(NN  
$strNN  /
)NN/ 0
;NN0 1
}OO 
returnQQ 
OutcomesQQ 
(QQ 
$strQQ '
)QQ' (
;QQ( )
}RR 	
}SS 
}TT є
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\AssignUserRoleTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class +
AssignUserRoleTaskDisplayDriver 0
:1 2!
ActivityDisplayDriver3 H
<H I
AssignUserRoleTaskI [
,[ \'
AssignUserRoleTaskViewModel] x
>x y
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
, -
AssignUserRoleTask

- ?
activity

@ H
,

H I'
AssignUserRoleTaskViewModel

J e
model

f k
)

k l
{ 	
model 
. 
UserName 
= 
activity %
.% &
UserName& .
.. /

Expression/ 9
;9 :
model 
. 
RoleName 
= 
activity %
.% &
RoleName& .
.. /

Expression/ 9
;9 :
} 	
	protected 
override 
void 
UpdateActivity  .
(. /'
AssignUserRoleTaskViewModel/ J
modelK P
,P Q
AssignUserRoleTaskR d
activitye m
)m n
{ 	
activity 
. 
UserName 
= 
new  #
WorkflowExpression$ 6
<6 7
string7 =
>= >
(> ?
model? D
.D E
UserNameE M
)M N
;N O
activity 
. 
RoleName 
= 
new  #
WorkflowExpression$ 6
<6 7
string7 =
>= >
(> ?
model? D
.D E
RoleNameE M
)M N
;N O
} 	
} 
} Г
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\RegisterUserTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class )
RegisterUserTaskDisplayDriver .
:/ 0!
ActivityDisplayDriver1 F
<F G
RegisterUserTaskG W
,W X%
RegisterUserTaskViewModelY r
>r s
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
, -
RegisterUserTask

- =
activity

> F
,

F G%
RegisterUserTaskViewModel

H a
model

b g
)

g h
{ 	
model 
. !
SendConfirmationEmail '
=( )
activity* 2
.2 3!
SendConfirmationEmail3 H
;H I
model 
. $
ConfirmationEmailSubject *
=+ ,
activity- 5
.5 6$
ConfirmationEmailSubject6 N
.N O

ExpressionO Y
;Y Z
model 
. %
ConfirmationEmailTemplate +
=, -
activity. 6
.6 7%
ConfirmationEmailTemplate7 P
.P Q

ExpressionQ [
;[ \
} 	
	protected 
override 
void 
UpdateActivity  .
(. /%
RegisterUserTaskViewModel/ H
modelI N
,N O
RegisterUserTaskP `
activitya i
)i j
{ 	
activity 
. !
SendConfirmationEmail *
=+ ,
model- 2
.2 3!
SendConfirmationEmail3 H
;H I
activity 
. $
ConfirmationEmailSubject -
=. /
new0 3
WorkflowExpression4 F
<F G
stringG M
>M N
(N O
modelO T
.T U$
ConfirmationEmailSubjectU m
)m n
;n o
activity 
. %
ConfirmationEmailTemplate .
=/ 0
new1 4
WorkflowExpression5 G
<G H
stringH N
>N O
(O P
modelP U
.U V%
ConfirmationEmailTemplateV o
)o p
;p q
} 	
} 
} ≤
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserCreatedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public		 

class		 )
UserCreatedEventDisplayDriver		 .
:		/ 0!
ActivityDisplayDriver		1 F
<		F G
UserCreatedEvent		G W
,		W X%
UserCreatedEventViewModel		Y r
>		r s
{

 
public )
UserCreatedEventDisplayDriver ,
(, -
IUserService- 9
userService: E
)E F
{ 	
UserService 
= 
userService %
;% &
} 	
	protected 
IUserService 
UserService *
{+ ,
get- 0
;0 1
}2 3
	protected 
override 
void 
EditActivity  ,
(, -
UserCreatedEvent- =
source> D
,D E%
UserCreatedEventViewModelF _
target` f
)f g
{ 	
} 	
public 
override 
IDisplayResult &
Display' .
(. /
UserCreatedEvent/ ?
activity@ H
)H I
{ 	
return 
Combine 
( 
Shape 
( 
$str 9
,9 :
new; >%
UserCreatedEventViewModel? X
(X Y
activityY a
)a b
)b c
.c d
Locationd l
(l m
$strm x
,x y
$str	z Г
)
Г Д
,
Д Е
Factory 
( 
$str 8
,8 9
ctx: =
=>> @
{ 
var 
shape 
= 
new  #%
UserCreatedEventViewModel$ =
(= >
)> ?
;? @
shape 
. 
Activity "
=# $
activity% -
;- .
return 
shape  
;  !
}   
)   
.   
Location   
(   
$str   $
,  $ %
$str  & /
)  / 0
)!! 
;!! 
}"" 	
}## 
}$$ ≤
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserDeletedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public		 

class		 )
UserDeletedEventDisplayDriver		 .
:		/ 0!
ActivityDisplayDriver		1 F
<		F G
UserDeletedEvent		G W
,		W X%
UserDeletedEventViewModel		Y r
>		r s
{

 
public )
UserDeletedEventDisplayDriver ,
(, -
IUserService- 9
userService: E
)E F
{ 	
UserService 
= 
userService %
;% &
} 	
	protected 
IUserService 
UserService *
{+ ,
get- 0
;0 1
}2 3
	protected 
override 
void 
EditActivity  ,
(, -
UserDeletedEvent- =
source> D
,D E%
UserDeletedEventViewModelF _
target` f
)f g
{ 	
} 	
public 
override 
IDisplayResult &
Display' .
(. /
UserDeletedEvent/ ?
activity@ H
)H I
{ 	
return 
Combine 
( 
Shape 
( 
$str 9
,9 :
new; >%
UserDeletedEventViewModel? X
(X Y
activityY a
)a b
)b c
.c d
Locationd l
(l m
$strm x
,x y
$str	z Г
)
Г Д
,
Д Е
Factory 
( 
$str 8
,8 9
ctx: =
=>> @
{ 
var 
shape 
= 
new  #%
UserDeletedEventViewModel$ =
(= >
)> ?
;? @
shape 
. 
Activity "
=# $
activity% -
;- .
return 
shape  
;  !
}   
)   
.   
Location   
(   
$str   $
,  $ %
$str  & /
)  / 0
)!! 
;!! 
}"" 	
}## 
}$$ Љ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserDisabledEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public		 

class		 *
UserDisabledEventDisplayDriver		 /
:		0 1!
ActivityDisplayDriver		2 G
<		G H
UserDisabledEvent		H Y
,		Y Z&
UserDisabledEventViewModel		[ u
>		u v
{

 
public *
UserDisabledEventDisplayDriver -
(- .
IUserService. :
userService; F
)F G
{ 	
UserService 
= 
userService %
;% &
} 	
	protected 
IUserService 
UserService *
{+ ,
get- 0
;0 1
}2 3
	protected 
override 
void 
EditActivity  ,
(, -
UserDisabledEvent- >
source? E
,E F&
UserDisabledEventViewModelG a
targetb h
)h i
{ 	
} 	
public 
override 
IDisplayResult &
Display' .
(. /
UserDisabledEvent/ @
activityA I
)I J
{ 	
return 
Combine 
( 
Shape 
( 
$str :
,: ;
new< ?&
UserDisabledEventViewModel@ Z
(Z [
activity[ c
)c d
)d e
.e f
Locationf n
(n o
$stro z
,z {
$str	| Е
)
Е Ж
,
Ж З
Factory 
( 
$str 9
,9 :
ctx; >
=>? A
{ 
var 
shape 
= 
new  #&
UserDisabledEventViewModel$ >
(> ?
)? @
;@ A
shape 
. 
Activity "
=# $
activity% -
;- .
return 
shape  
;  !
}   
)   
.   
Location   
(   
$str   $
,  $ %
$str  & /
)  / 0
)!! 
;!! 
}"" 	
}## 
}$$ ≤
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserEnabledEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public		 

class		 )
UserEnabledEventDisplayDriver		 .
:		/ 0!
ActivityDisplayDriver		1 F
<		F G
UserEnabledEvent		G W
,		W X%
UserEnabledEventViewModel		Y r
>		r s
{

 
public )
UserEnabledEventDisplayDriver ,
(, -
IUserService- 9
userService: E
)E F
{ 	
UserService 
= 
userService %
;% &
} 	
	protected 
IUserService 
UserService *
{+ ,
get- 0
;0 1
}2 3
	protected 
override 
void 
EditActivity  ,
(, -
UserEnabledEvent- =
source> D
,D E%
UserEnabledEventViewModelF _
target` f
)f g
{ 	
} 	
public 
override 
IDisplayResult &
Display' .
(. /
UserEnabledEvent/ ?
activity@ H
)H I
{ 	
return 
Combine 
( 
Shape 
( 
$str 9
,9 :
new; >%
UserEnabledEventViewModel? X
(X Y
activityY a
)a b
)b c
.c d
Locationd l
(l m
$strm x
,x y
$str	z Г
)
Г Д
,
Д Е
Factory 
( 
$str 8
,8 9
ctx: =
=>> @
{ 
var 
shape 
= 
new  #%
UserEnabledEventViewModel$ =
(= >
)> ?
;? @
shape 
. 
Activity "
=# $
activity% -
;- .
return 
shape  
;  !
}   
)   
.   
Location   
(   
$str   $
,  $ %
$str  & /
)  / 0
)!! 
;!! 
}"" 	
}## 
}$$ Љ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserLoggedInEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public		 

class		 *
UserLoggedInEventDisplayDriver		 /
:		0 1!
ActivityDisplayDriver		2 G
<		G H
UserLoggedInEvent		H Y
,		Y Z&
UserLoggedInEventViewModel		[ u
>		u v
{

 
public *
UserLoggedInEventDisplayDriver -
(- .
IUserService. :
userService; F
)F G
{ 	
UserService 
= 
userService %
;% &
} 	
	protected 
IUserService 
UserService *
{+ ,
get- 0
;0 1
}2 3
	protected 
override 
void 
EditActivity  ,
(, -
UserLoggedInEvent- >
source? E
,E F&
UserLoggedInEventViewModelG a
targetb h
)h i
{ 	
} 	
public 
override 
IDisplayResult &
Display' .
(. /
UserLoggedInEvent/ @
activityA I
)I J
{ 	
return 
Combine 
( 
Shape 
( 
$str :
,: ;
new< ?&
UserLoggedInEventViewModel@ Z
(Z [
activity[ c
)c d
)d e
.e f
Locationf n
(n o
$stro z
,z {
$str	| Е
)
Е Ж
,
Ж З
Factory 
( 
$str 9
,9 :
ctx; >
=>? A
{ 
var 
shape 
= 
new  #&
UserLoggedInEventViewModel$ >
(> ?
)? @
;@ A
shape 
. 
Activity "
=# $
activity% -
;- .
return 
shape  
;  !
}   
)   
.   
Location   
(   
$str   $
,  $ %
$str  & /
)  / 0
)!! 
;!! 
}"" 	
}## 
}$$ ≤
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserUpdatedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public		 

class		 )
UserUpdatedEventDisplayDriver		 .
:		/ 0!
ActivityDisplayDriver		1 F
<		F G
UserUpdatedEvent		G W
,		W X%
UserUpdatedEventViewModel		Y r
>		r s
{

 
public )
UserUpdatedEventDisplayDriver ,
(, -
IUserService- 9
userService: E
)E F
{ 	
UserService 
= 
userService %
;% &
} 	
	protected 
IUserService 
UserService *
{+ ,
get- 0
;0 1
}2 3
	protected 
override 
void 
EditActivity  ,
(, -
UserUpdatedEvent- =
source> D
,D E%
UserUpdatedEventViewModelF _
target` f
)f g
{ 	
} 	
public 
override 
IDisplayResult &
Display' .
(. /
UserUpdatedEvent/ ?
activity@ H
)H I
{ 	
return 
Combine 
( 
Shape 
( 
$str 9
,9 :
new; >%
UserUpdatedEventViewModel? X
(X Y
activityY a
)a b
)b c
.c d
Locationd l
(l m
$strm x
,x y
$str	z Г
)
Г Д
,
Д Е
Factory 
( 
$str 8
,8 9
ctx: =
=>> @
{ 
var 
shape 
= 
new  #%
UserUpdatedEventViewModel$ =
(= >
)> ?
;? @
shape 
. 
Activity "
=# $
activity% -
;- .
return 
shape  
;  !
}   
)   
.   
Location   
(   
$str   $
,  $ %
$str  & /
)  / 0
)!! 
;!! 
}"" 	
}## 
}$$ ў
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\ValidateUserTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class )
ValidateUserTaskDisplayDriver .
:/ 0!
ActivityDisplayDriver1 F
<F G
ValidateUserTaskG W
,W X%
ValidateUserTaskViewModelY r
>r s
{ 
	protected		 
override		 
void		 
EditActivity		  ,
(		, -
ValidateUserTask		- =
activity		> F
,		F G%
ValidateUserTaskViewModel		H a
model		b g
)		g h
{

 	
model 
. 
Roles 
= 
activity "
." #
Roles# (
;( )
model 
. 
SetUserName 
= 
activity  (
.( )
SetUserName) 4
;4 5
} 	
	protected 
override 
void 
UpdateActivity  .
(. /%
ValidateUserTaskViewModel/ H
modelI N
,N O
ValidateUserTaskP `
activitya i
)i j
{ 	
activity 
. 
Roles 
= 
model "
." #
Roles# (
;( )
activity 
. 
SetUserName  
=! "
model# (
.( )
SetUserName) 4
;4 5
} 	
} 
} ÷
ЬD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Handlers\ExternallUserHandler.cs
	namespace		 	
OrchardCore		
 
.		 
Users		 
.		 
	Workflows		 %
.		% &
Handlers		& .
{

 
public 

class  
ExternallUserHandler %
:& '&
IExternalLoginEventHandler( B
{ 
private 
readonly 
IWorkflowManager )
_workflowManager* :
;: ;
public  
ExternallUserHandler #
(# $
IWorkflowManager$ 4
workflowManager5 D
)D E
{ 	
_workflowManager 
= 
workflowManager .
;. /
} 	
public 
Task 
< 
string 
> 
GenerateUserName ,
(, -
string- 3
provider4 <
,< =
IEnumerable> I
<I J
SerializableClaimJ [
>[ \
claims] c
)c d
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
Task 
UpdateRoles 
(  
UpdateRolesContext  2
context3 :
): ;
{ 	
return 
_workflowManager #
.# $
TriggerEventAsync$ 5
(5 6
nameof6 <
(< =
UserLoggedInEvent= N
)N O
,O P
input 
: 
new 
{ 
context $
.$ %
User% )
,) *
context+ 2
.2 3
ExternalClaims3 A
,A B
contextC J
.J K
	UserRolesK T
}U V
,V W
correlationId 
: 
(  
(  !
User! %
)% &
context& -
.- .
User. 2
)2 3
.3 4
UserId4 :
) 
; 
} 	
}   
}!! С
ШD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Handlers\UserEventHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &
Handlers& .
{ 
public		 

class		 
UserEventHandler		 !
:		" #
IUserEventHandler		$ 5
{

 
private 
readonly 
IWorkflowManager )
_workflowManager* :
;: ;
public 
UserEventHandler 
(  
IWorkflowManager  0
workflowManager1 @
)@ A
{ 	
_workflowManager 
= 
workflowManager .
;. /
} 	
public 
Task 
CreatedAsync  
(  !
UserContext! ,
context- 4
)4 5
{ 	
return %
TriggerWorkflowEventAsync ,
(, -
nameof- 3
(3 4
UserCreatedEvent4 D
)D E
,E F
(G H
UserH L
)L M
contextM T
.T U
UserU Y
)Y Z
;Z [
} 	
public 
Task 
DeletedAsync  
(  !
UserContext! ,
context- 4
)4 5
{ 	
return %
TriggerWorkflowEventAsync ,
(, -
nameof- 3
(3 4
UserDeletedEvent4 D
)D E
,E F
(G H
UserH L
)L M
contextM T
.T U
UserU Y
)Y Z
;Z [
} 	
public 
Task 
DisabledAsync !
(! "
UserContext" -
context. 5
)5 6
{ 	
return %
TriggerWorkflowEventAsync ,
(, -
nameof- 3
(3 4
UserDisabledEvent4 E
)E F
,F G
(H I
UserI M
)M N
contextN U
.U V
UserV Z
)Z [
;[ \
} 	
public!! 
Task!! 
EnabledAsync!!  
(!!  !
UserContext!!! ,
context!!- 4
)!!4 5
{"" 	
return## %
TriggerWorkflowEventAsync## ,
(##, -
nameof##- 3
(##3 4
UserEnabledEvent##4 D
)##D E
,##E F
(##G H
User##H L
)##L M
context##M T
.##T U
User##U Y
)##Y Z
;##Z [
}$$ 	
public&& 
Task&& 
UpdatedAsync&&  
(&&  !
UserContext&&! ,
context&&- 4
)&&4 5
{'' 	
return(( %
TriggerWorkflowEventAsync(( ,
(((, -
nameof((- 3
(((3 4
UserUpdatedEvent((4 D
)((D E
,((E F
(((G H
User((H L
)((L M
context((M T
.((T U
User((U Y
)((Y Z
;((Z [
})) 	
private++ 
Task++ %
TriggerWorkflowEventAsync++ .
(++. /
string++/ 5
name++6 :
,++: ;
User++< @
user++A E
)++E F
{,, 	
return-- 
_workflowManager-- #
.--# $
TriggerEventAsync--$ 5
(--5 6
name--6 :
,--: ;
input.. 
:.. 
new.. 
{.. 
User.. !
=.." #
user..$ (
}..) *
,..* +
correlationId// 
:// 
user// #
.//# $
UserId//$ *
)00 
;00 
}11 	
}22 
}33 Ч
ЖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Startup.cs
	namespace		 	
OrchardCore		
 
.		 
Users		 
.		 
	Workflows		 %
{

 
[ 
RequireFeatures 
( 
$str ,
), -
]- .
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddActivity  
<  !
RegisterUserTask! 1
,1 2)
RegisterUserTaskDisplayDriver3 P
>P Q
(Q R
)R S
;S T
services 
. 
AddActivity  
<  !
UserCreatedEvent! 1
,1 2)
UserCreatedEventDisplayDriver3 P
>P Q
(Q R
)R S
;S T
services 
. 
AddActivity  
<  !
UserDeletedEvent! 1
,1 2)
UserDeletedEventDisplayDriver3 P
>P Q
(Q R
)R S
;S T
services 
. 
AddActivity  
<  !
UserEnabledEvent! 1
,1 2)
UserEnabledEventDisplayDriver3 P
>P Q
(Q R
)R S
;S T
services 
. 
AddActivity  
<  !
UserDisabledEvent! 2
,2 3*
UserDisabledEventDisplayDriver4 R
>R S
(S T
)T U
;U V
services 
. 
AddActivity  
<  !
UserUpdatedEvent! 1
,1 2)
UserUpdatedEventDisplayDriver3 P
>P Q
(Q R
)R S
;S T
services 
. 
AddActivity  
<  !
UserLoggedInEvent! 2
,2 3*
UserLoggedInEventDisplayDriver4 R
>R S
(S T
)T U
;U V
services 
. 
	AddScoped 
< 
IUserEventHandler 0
,0 1
UserEventHandler2 B
>B C
(C D
)D E
;E F
services 
. 
AddActivity  
<  !
AssignUserRoleTask! 3
,3 4+
AssignUserRoleTaskDisplayDriver5 T
>T U
(U V
)V W
;W X
services 
. 
AddActivity  
<  !
ValidateUserTask! 1
,1 2)
ValidateUserTaskDisplayDriver3 P
>P Q
(Q R
)R S
;S T
} 	
} 
} н
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\AssignUserRoleTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class '
AssignUserRoleTaskViewModel ,
{ 
[ 	
Required	 
] 
public 
string 
UserName 
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
]

 
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ±
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\RegisterUserTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class %
RegisterUserTaskViewModel *
{ 
public 
bool !
SendConfirmationEmail )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[		 	
Required			 
]		 
public

 
string

 $
ConfirmationEmailSubject

 .
{

/ 0
get

1 4
;

4 5
set

6 9
;

9 :
}

; <
[ 	
Required	 
] 
public 
string %
ConfirmationEmailTemplate /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} †
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserCreatedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class %
UserCreatedEventViewModel *
:+ ,
UserEventViewModel- ?
<? @
UserCreatedEvent@ P
>P Q
{ 
public %
UserCreatedEventViewModel (
(( )
)) *
{ 	
}		 	
public %
UserCreatedEventViewModel (
(( )
UserCreatedEvent) 9
activity: B
)B C
{ 	
Activity 
= 
activity 
;  
} 	
} 
} †
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserDeletedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class %
UserDeletedEventViewModel *
:+ ,
UserEventViewModel- ?
<? @
UserDeletedEvent@ P
>P Q
{ 
public %
UserDeletedEventViewModel (
(( )
)) *
{ 	
}		 	
public %
UserDeletedEventViewModel (
(( )
UserDeletedEvent) 9
activity: B
)B C
{ 	
Activity 
= 
activity 
;  
} 	
} 
} ¶
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserDisabledEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class &
UserDisabledEventViewModel +
:, -
UserEventViewModel. @
<@ A
UserDisabledEventA R
>R S
{ 
public &
UserDisabledEventViewModel )
() *
)* +
{ 	
}		 	
public &
UserDisabledEventViewModel )
() *
UserDisabledEvent* ;
activity< D
)D E
{ 	
Activity 
= 
activity 
;  
} 	
} 
} †
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserEnabledEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class %
UserEnabledEventViewModel *
:+ ,
UserEventViewModel- ?
<? @
UserEnabledEvent@ P
>P Q
{ 
public %
UserEnabledEventViewModel (
(( )
)) *
{ 	
}		 	
public %
UserEnabledEventViewModel (
(( )
UserEnabledEvent) 9
activity: B
)B C
{ 	
Activity 
= 
activity 
;  
} 	
} 
} Џ
ЬD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class 
UserEventViewModel #
<# $
T$ %
>% &
:' (
ActivityViewModel) :
<: ;
T; <
>< =
where> C
TD E
:F G
	UserEventH Q
{ 
public 
UserEventViewModel !
(! "
)" #
{		 	
}

 	
public 
UserEventViewModel !
(! "
T" #
activity$ ,
), -
{ 	
Activity 
= 
activity 
;  
} 	
} 
} ¶
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserLoggedInEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class &
UserLoggedInEventViewModel +
:, -
UserEventViewModel. @
<@ A
UserLoggedInEventA R
>R S
{ 
public &
UserLoggedInEventViewModel )
() *
)* +
{ 	
}		 	
public &
UserLoggedInEventViewModel )
() *
UserLoggedInEvent* ;
activity< D
)D E
{ 	
Activity 
= 
activity 
;  
} 	
} 
} †
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserUpdatedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class %
UserUpdatedEventViewModel *
:+ ,
UserEventViewModel- ?
<? @
UserUpdatedEvent@ P
>P Q
{ 
public %
UserUpdatedEventViewModel (
(( )
)) *
{ 	
}		 	
public %
UserUpdatedEventViewModel (
(( )
UserUpdatedEvent) 9
activity: B
)B C
{ 	
Activity 
= 
activity 
;  
} 	
} 
} ґ
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\ValidateUserTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class %
ValidateUserTaskViewModel *
{ 
public 
bool 
SetUserName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
IEnumerable		 
<		 
string		 !
>		! "
Roles		# (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
}

 
} 