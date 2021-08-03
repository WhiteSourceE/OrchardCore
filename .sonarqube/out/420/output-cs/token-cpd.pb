�b
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
LoginSettingsDisplayDriver	''i �
.
''� �
GroupId
''� �
}
''� �
)
''� �
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
 ChangeEmailSettingsDisplayDriver	GGe �
.
GG� �
GroupId
GG� �
}
GG� �
)
GG� �
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
!RegistrationSettingsDisplayDriver	eee �
.
ee� �
GroupId
ee� �
}
ee� �
)
ee� �
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
�� 
Add
�� 
(
�� 
S
�� 
[
�� 
$str
�� %
]
��% &
,
��& '
settings
��( 0
=>
��1 3
settings
��4 <
.
�� 
Add
�� 
(
�� 
S
�� 
[
�� 
$str
�� 4
]
��4 5
,
��5 6
S
��7 8
[
��8 9
$str
��9 N
]
��N O
.
��O P
PrefixPosition
��P ^
(
��^ _
)
��_ `
,
��` a
password
��b j
=>
��k m
password
��n v
.
�� 

Permission
�� '
(
��' (
Permissions
��( 3
.
��3 4
ManageUsers
��4 ?
)
��? @
.
�� 
Action
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
,
��4 5
new
��6 9
{
��: ;
area
��< @
=
��A B
$str
��C Y
,
��Y Z
groupId
��[ b
=
��c d1
"ResetPasswordSettingsDisplayDriver��e �
.��� �
GroupId��� �
}��� �
)��� �
.
�� 
LocalNav
�� %
(
��% &
)
��& '
)
�� 
)
�� 
)
�� 
;
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Commands\UserCommands.cs
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
##� �
$str
##� �
)
##� �
]
##� �
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
EmailConfirmed	++u �
=
++� �
true
++� �
}
++� �
,
++� �
Password
++� �
,
++� �
(
++� �
key
++� �
,
++� �
message
++� �
)
++� �
=>
++� �
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
}77 ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\AccountController.cs
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
{	ee �-
AbsoluteExpirationRelativeToNow
ee� �
=
ee� �

expiration
ee� �
}
ee� �
)
ee� �
;
ee� �
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
�� 
token
�� "
;
��" #
if
�� 
(
�� 
Guid
��  
.
��  !
TryParse
��! )
(
��) *
dataProtector
��* 7
.
��7 8
	Unprotect
��8 A
(
��A B
protectedToken
��B P
)
��P Q
,
��Q R
out
��S V
token
��W \
)
��\ ]
)
��] ^
{
�� 
byte
��  
[
��  !
]
��! "

tokenBytes
��# -
=
��. /
await
��0 5
_distributedCache
��6 G
.
��G H
GetAsync
��H P
(
��P Q
token
��Q V
.
��V W
ToString
��W _
(
��_ `
)
��` a
)
��a b
;
��b c
var
�� 

cacheToken
��  *
=
��+ ,
new
��- 0
Guid
��1 5
(
��5 6

tokenBytes
��6 @
)
��@ A
;
��A B
if
�� 
(
��  
token
��  %
.
��% &
Equals
��& ,
(
��, -

cacheToken
��- 7
)
��7 8
)
��8 9
{
�� 
return
��  &
ExternalLogin
��' 4
(
��4 5
schemes
��5 <
.
��< =
First
��= B
(
��B C
)
��C D
.
��D E
Name
��E I
,
��I J
	returnUrl
��K T
)
��T U
;
��U V
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
_logger
�� 
.
��  
LogError
��  (
(
��( )
ex
��) +
,
��+ ,
$str
��- l
)
��l m
;
��m n
}
�� 
}
�� 
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
Login
��+ 0
)
��0 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  "
AddConfirmEmailError
��! 5
(
��5 6
IUser
��6 ;
user
��< @
)
��@ A
{
�� 	
var
�� "
registrationSettings
�� $
=
��% &
(
��' (
await
��( -
_siteService
��. :
.
��: ;"
GetSiteSettingsAsync
��; O
(
��O P
)
��P Q
)
��Q R
.
��R S
As
��S U
<
��U V"
RegistrationSettings
��V j
>
��j k
(
��k l
)
��l m
;
��m n
if
�� 
(
�� "
registrationSettings
�� $
.
��$ %$
UsersMustValidateEmail
��% ;
==
��< >
true
��? C
)
��C D
{
�� 
if
�� 
(
�� 
!
�� 
await
�� 
_userManager
�� '
.
��' (#
IsEmailConfirmedAsync
��( =
(
��= >
user
��> B
)
��B C
)
��C D
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
S
��; <
[
��< =
$str
��= [
]
��[ \
)
��\ ]
;
��] ^
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
bool
�� !
AddUserEnabledError
�� (
(
��( )
IUser
��) .
user
��/ 3
)
��3 4
{
�� 	
var
�� 
	localUser
�� 
=
�� 
user
��  
as
��! #
User
��$ (
;
��( )
if
�� 
(
�� 
	localUser
�� 
==
�� 
null
�� !
||
��" $
!
��% &
	localUser
��& /
.
��/ 0
	IsEnabled
��0 9
)
��9 :
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
String
��) /
.
��/ 0
Empty
��0 5
,
��5 6
S
��7 8
[
��8 9
$str
��9 h
]
��h i
)
��i j
;
��j k
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Login
��) .
(
��. /
LoginViewModel
��/ =
model
��> C
,
��C D
string
��E K
	returnUrl
��L U
=
��V W
null
��X \
)
��\ ]
{
�� 	
ViewData
�� 
[
�� 
$str
��  
]
��  !
=
��" #
	returnUrl
��$ -
;
��- .
if
�� 
(
�� 
model
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
model
��7 <
)
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
TryValidateModel
��  
(
��  !
model
��! &
)
��& '
&&
��( *

ModelState
��+ 5
.
��5 6
IsValid
��6 =
)
��= >
{
�� 
var
�� 
disableLocalLogin
�� %
=
��& '
(
��( )
await
��) .
_siteService
��/ ;
.
��; <"
GetSiteSettingsAsync
��< P
(
��P Q
)
��Q R
)
��R S
.
��S T
As
��T V
<
��V W
LoginSettings
��W d
>
��d e
(
��e f
)
��f g
.
��g h
DisableLocalLogin
��h y
;
��y z
if
�� 
(
�� 
disableLocalLogin
�� %
)
��% &
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
$str
��- /
,
��/ 0
S
��1 2
[
��2 3
$str
��3 M
]
��M N
)
��N O
;
��O P
}
�� 
else
�� 
{
�� 
await
�� 
_accountEvents
�� (
.
��( )
InvokeAsync
��) 4
(
��4 5
(
��5 6
e
��6 7
,
��7 8
model
��9 >
,
��> ?

modelState
��@ J
)
��J K
=>
��L N
e
��O P
.
��P Q
LoggingInAsync
��Q _
(
��_ `
model
��` e
.
��e f
UserName
��f n
,
��n o
(
��p q
key
��q t
,
��t u
message
��v }
)
��} ~
=>�� �

modelState��� �
.��� �
AddModelError��� �
(��� �
key��� �
,��� �
message��� �
)��� �
)��� �
,��� �
model��� �
,��� �

ModelState��� �
,��� �
_logger��� �
)��� �
;��� �
var
�� 
user
�� 
=
�� 
await
�� $
_userManager
��% 1
.
��1 2
FindByNameAsync
��2 A
(
��A B
model
��B G
.
��G H
UserName
��H P
)
��P Q
??
��R T
await
��U Z
_userManager
��[ g
.
��g h
FindByEmailAsync
��h x
(
��x y
model
��y ~
.
��~ 
UserName�� �
)��� �
;��� �
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
var
�� 
result
�� "
=
��# $
await
��% *
_signInManager
��+ 9
.
��9 :&
CheckPasswordSignInAsync
��: R
(
��R S
user
��S W
,
��W X
model
��Y ^
.
��^ _
Password
��_ g
,
��g h
lockoutOnFailure
��i y
:
��y z
false��{ �
)��� �
;��� �
if
�� 
(
�� 
result
�� "
.
��" #
	Succeeded
��# ,
)
��, -
{
�� 
if
�� 
(
��  
!
��  !
await
��! &"
AddConfirmEmailError
��' ;
(
��; <
user
��< @
)
��@ A
&&
��B D
!
��E F!
AddUserEnabledError
��F Y
(
��Y Z
user
��Z ^
)
��^ _
)
��_ `
{
�� 
result
��  &
=
��' (
await
��) .
_signInManager
��/ =
.
��= >!
PasswordSignInAsync
��> Q
(
��Q R
user
��R V
,
��V W
model
��X ]
.
��] ^
Password
��^ f
,
��f g
model
��h m
.
��m n

RememberMe
��n x
,
��x y
lockoutOnFailure��z �
:��� �
false��� �
)��� �
;��� �
if
��  "
(
��# $
result
��$ *
.
��* +
	Succeeded
��+ 4
)
��4 5
{
��  !
_logger
��$ +
.
��+ ,
LogInformation
��, :
(
��: ;
$num
��; <
,
��< =
$str
��> O
)
��O P
;
��P Q
await
��$ )
_accountEvents
��* 8
.
��8 9
InvokeAsync
��9 D
(
��D E
(
��E F
e
��F G
,
��G H
model
��I N
)
��N O
=>
��P R
e
��S T
.
��T U
LoggedInAsync
��U b
(
��b c
model
��c h
.
��h i
UserName
��i q
)
��q r
,
��r s
model
��t y
,
��y z
_logger��{ �
)��� �
;��� �
return
��$ *
await
��+ 0"
LoggedInActionResult
��1 E
(
��E F
user
��F J
,
��J K
	returnUrl
��L U
)
��U V
;
��V W
}
��  !
}
�� 
}
�� 
}
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
S
��; <
[
��< =
$str
��= U
]
��U V
)
��V W
;
��W X
await
�� 
_accountEvents
�� (
.
��( )
InvokeAsync
��) 4
(
��4 5
(
��5 6
e
��6 7
,
��7 8
model
��9 >
)
��> ?
=>
��@ B
e
��C D
.
��D E"
LoggingInFailedAsync
��E Y
(
��Y Z
model
��Z _
.
��_ `
UserName
��` h
)
��h i
,
��i j
model
��k p
,
��p q
_logger
��r y
)
��y z
;
��z {
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
LogOff
��) /
(
��/ 0
)
��0 1
{
�� 	
await
�� 
_signInManager
��  
.
��  !
SignOutAsync
��! -
(
��- .
)
��. /
;
��/ 0
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$num
��# $
,
��$ %
$str
��& 8
)
��8 9
;
��9 :
return
�� 
Redirect
�� 
(
�� 
$str
��  
)
��  !
;
��! "
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
IActionResult
�� 
ChangePassword
�� +
(
��+ ,
)
��, -
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
ChangePassword
��) 7
(
��7 8%
ChangePasswordViewModel
��8 O
model
��P U
)
��U V
{
�� 	
if
�� 
(
�� 
TryValidateModel
��  
(
��  !
model
��! &
)
��& '
&&
��( *

ModelState
��+ 5
.
��5 6
IsValid
��6 =
)
��= >
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
_userService
��! -
.
��- .'
GetAuthenticatedUserAsync
��. G
(
��G H
User
��H L
)
��L M
;
��M N
if
�� 
(
�� 
await
�� 
_userService
�� &
.
��& '!
ChangePasswordAsync
��' :
(
��: ;
user
��; ?
,
��? @
model
��A F
.
��F G
CurrentPassword
��G V
,
��V W
model
��X ]
.
��] ^
Password
��^ f
,
��f g
(
��h i
key
��i l
,
��l m
message
��n u
)
��u v
=>
��w y

ModelState��z �
.��� �
AddModelError��� �
(��� �
key��� �
,��� �
message��� �
)��� �
)��� �
)��� �
{
�� 
return
�� 
RedirectToLocal
�� *
(
��* +
Url
��+ .
.
��. /
Action
��/ 5
(
��5 6
$str
��6 R
)
��R S
)
��S T
;
��T U
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
IActionResult
�� (
ChangePasswordConfirmation
�� 7
(
��7 8
)
��8 9
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
AddIdentityErrors
�� &
(
��& '
IdentityResult
��' 5
result
��6 <
)
��< =
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
string
��) /
.
��/ 0
Empty
��0 5
,
��5 6
error
��7 <
.
��< =
Description
��= H
)
��H I
;
��I J
}
�� 
}
�� 	
private
�� 
IActionResult
�� 
RedirectToLocal
�� -
(
��- .
string
��. 4
	returnUrl
��5 >
)
��> ?
{
�� 	
if
�� 
(
�� 
Url
�� 
.
�� 

IsLocalUrl
�� 
(
�� 
	returnUrl
�� (
)
��( )
)
��) *
{
�� 
return
�� 
Redirect
�� 
(
��  
	returnUrl
��  )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
return
�� 
Redirect
�� 
(
��  
$str
��  $
)
��$ %
;
��% &
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� (
>
��( )"
LoggedInActionResult
��* >
(
��> ?
IUser
��? D
user
��E I
,
��I J
string
��K Q
	returnUrl
��R [
=
��\ ]
null
��^ b
,
��b c
ExternalLoginInfo
��d u
info
��v z
=
��{ |
null��} �
)��� �
{
�� 	
var
�� 
workflowManager
�� 
=
��  !
HttpContext
��" -
.
��- .
RequestServices
��. =
.
��= >

GetService
��> H
<
��H I
IWorkflowManager
��I Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
if
�� 
(
�� 
workflowManager
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
var
�� 
input
�� 
=
�� 
new
�� 

Dictionary
��  *
<
��* +
string
��+ 1
,
��1 2
object
��3 9
>
��9 :
(
��: ;
)
��; <
;
��< =
input
�� 
[
�� 
$str
��  
]
��  !
=
��" #
user
��$ (
.
��( )
UserName
��) 1
;
��1 2
input
�� 
[
�� 
$str
�� &
]
��& '
=
��( )
info
��* .
==
��/ 1
null
��2 6
?
��7 8

Enumerable
��9 C
.
��C D
Empty
��D I
<
��I J
SerializableClaim
��J [
>
��[ \
(
��\ ]
)
��] ^
:
��_ `
info
��a e
.
��e f
	Principal
��f o
.
��o p$
GetSerializableClaims��p �
(��� �
)��� �
;��� �
input
�� 
[
�� 
$str
�� 
]
�� 
=
��  
(
��! "
(
��" #
User
��# '
)
��' (
user
��( ,
)
��, -
.
��- .
	RoleNames
��. 7
;
��7 8
input
�� 
[
�� 
$str
��  
]
��  !
=
��" #
info
��$ (
?
��( )
.
��) *
LoginProvider
��* 7
;
��7 8
await
�� 
workflowManager
�� %
.
��% &
TriggerEventAsync
��& 7
(
��7 8
nameof
��8 >
(
��> ?
	Workflows
��? H
.
��H I

Activities
��I S
.
��S T
UserLoggedInEvent
��T e
)
��e f
,
��f g
input
�� 
:
�� 
input
��  
,
��  !
correlationId
��" /
:
��/ 0
(
��1 2
(
��2 3
User
��3 7
)
��7 8
user
��8 <
)
��< =
.
��= >
UserId
��> D
)
��D E
;
��E F
}
�� 
return
�� 
RedirectToLocal
�� "
(
��" #
	returnUrl
��# ,
)
��, -
;
��- .
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
IActionResult
�� 
ExternalLogin
�� *
(
��* +
string
��+ 1
provider
��2 :
,
��: ;
string
��< B
	returnUrl
��C L
=
��M N
null
��O S
)
��S T
{
�� 	
var
�� 
redirectUrl
�� 
=
�� 
Url
�� !
.
��! "
Action
��" (
(
��( )
nameof
��) /
(
��/ 0#
ExternalLoginCallback
��0 E
)
��E F
,
��F G
$str
��H Q
,
��Q R
new
��S V
{
��W X
	returnUrl
��Y b
}
��c d
)
��d e
;
��e f
var
�� 

properties
�� 
=
�� 
_signInManager
�� +
.
��+ ,7
)ConfigureExternalAuthenticationProperties
��, U
(
��U V
provider
��V ^
,
��^ _
redirectUrl
��` k
)
��k l
;
��l m
return
�� 
	Challenge
�� 
(
�� 

properties
�� '
,
��' (
provider
��) 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
SignInResult
�� '
>
��' (&
ExternalLoginSignInAsync
��) A
(
��A B
IUser
��B G
user
��H L
,
��L M
ExternalLoginInfo
��N _
info
��` d
)
��d e
{
�� 	
var
�� 
claims
�� 
=
�� 
info
�� 
.
�� 
	Principal
�� '
.
��' (#
GetSerializableClaims
��( =
(
��= >
)
��> ?
;
��? @
var
�� 
	userRoles
�� 
=
�� 
await
�� !
_userManager
��" .
.
��. /
GetRolesAsync
��/ <
(
��< =
user
��= A
)
��A B
;
��B C
var
�� 
context
�� 
=
�� 
new
��  
UpdateRolesContext
�� 0
(
��0 1
user
��1 5
,
��5 6
info
��7 ;
.
��; <
LoginProvider
��< I
,
��I J
claims
��K Q
,
��Q R
	userRoles
��S \
)
��\ ]
;
��] ^
string
�� 
[
�� 
]
�� 

rolesToAdd
�� 
=
��  !
new
��" %
string
��& ,
[
��, -
$num
��- .
]
��. /
;
��/ 0
string
�� 
[
�� 
]
�� 
rolesToRemove
�� "
=
��# $
new
��% (
string
��) /
[
��/ 0
$num
��0 1
]
��1 2
;
��2 3
var
�� 
loginSettings
�� 
=
�� 
(
��  !
await
��! &
_siteService
��' 3
.
��3 4"
GetSiteSettingsAsync
��4 H
(
��H I
)
��I J
)
��J K
.
��K L
As
��L N
<
��N O
LoginSettings
��O \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
loginSettings
�� 
.
�� "
UseScriptToSyncRoles
�� 2
)
��2 3
{
�� 
try
�� 
{
�� 
var
�� $
jsonSerializerSettings
�� .
=
��/ 0
new
��1 4$
JsonSerializerSettings
��5 K
(
��K L
)
��L M
{
�� 
ContractResolver
�� (
=
��) *
new
��+ .4
&CamelCasePropertyNamesContractResolver
��/ U
(
��U V
)
��V W
}
�� 
;
�� 
var
�� 
script
�� 
=
��  
$"
��! #2
$js: function syncRoles(context) {{\n
��# G
{
��G H
loginSettings
��H U
.
��U V
SyncRolesScript
��V e
}
��e f 
\n}}\nvar context=
��f x
{
��x y
JsonConvert��y �
.��� �
SerializeObject��� �
(��� �
context��� �
,��� �&
jsonSerializerSettings��� �
)��� �
}��� �7
';\nsyncRoles(context);\nreturn context;��� �
"��� �
;��� �
dynamic
�� 
evaluationResult
�� ,
=
��- .
_scriptingManager
��/ @
.
��@ A
Evaluate
��A I
(
��I J
script
��J P
,
��P Q
null
��R V
,
��V W
null
��X \
,
��\ ]
null
��^ b
)
��b c
;
��c d

rolesToAdd
�� 
=
��  
(
��! "
evaluationResult
��" 2
.
��2 3

rolesToAdd
��3 =
as
��> @
object
��A G
[
��G H
]
��H I
)
��I J
.
��J K
Select
��K Q
(
��Q R
i
��R S
=>
��T V
i
��W X
.
��X Y
ToString
��Y a
(
��a b
)
��b c
)
��c d
.
��d e
ToArray
��e l
(
��l m
)
��m n
;
��n o
rolesToRemove
�� !
=
��" #
(
��$ %
evaluationResult
��% 5
.
��5 6
rolesToRemove
��6 C
as
��D F
object
��G M
[
��M N
]
��N O
)
��O P
.
��P Q
Select
��Q W
(
��W X
i
��X Y
=>
��Z \
i
��] ^
.
��^ _
ToString
��_ g
(
��g h
)
��h i
)
��i j
.
��j k
ToArray
��k r
(
��r s
)
��s t
;
��t u
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
ex
��% '
,
��' (
$str
��) Y
,
��Y Z
info
��[ _
.
��_ `
LoginProvider
��` m
)
��m n
;
��n o
}
�� 
}
�� 
else
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $$
_externalLoginHandlers
��% ;
)
��; <
{
�� 
try
�� 
{
�� 
await
�� 
item
�� "
.
��" #
UpdateRoles
��# .
(
��. /
context
��/ 6
)
��6 7
;
��7 8
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
_logger
�� 
.
��  
LogError
��  (
(
��( )
ex
��) +
,
��+ ,
$str
��- |
,
��| }
item��~ �
.��� �
GetType��� �
(��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 

rolesToAdd
�� 
=
�� 
context
�� $
.
��$ %

RolesToAdd
��% /
;
��/ 0
rolesToRemove
�� 
=
�� 
context
��  '
.
��' (
RolesToRemove
��( 5
;
��5 6
}
�� 
await
�� 
_userManager
�� 
.
�� 
AddToRolesAsync
�� .
(
��. /
user
��/ 3
,
��3 4

rolesToAdd
��5 ?
.
��? @
Distinct
��@ H
(
��H I
)
��I J
)
��J K
;
��K L
await
�� 
_userManager
�� 
.
�� "
RemoveFromRolesAsync
�� 3
(
��3 4
user
��4 8
,
��8 9
rolesToRemove
��: G
.
��G H
Distinct
��H P
(
��P Q
)
��Q R
)
��R S
;
��S T
var
�� 
result
�� 
=
�� 
await
�� 
_signInManager
�� -
.
��- .&
ExternalLoginSignInAsync
��. F
(
��F G
info
��G K
.
��K L
LoginProvider
��L Y
,
��Y Z
info
��[ _
.
��_ `
ProviderKey
��` k
,
��k l
isPersistent
��m y
:
��y z
false��{ �
,��� �
bypassTwoFactor��� �
:��� �
true��� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
identityResult
�� "
=
��# $
await
��% *
_signInManager
��+ 9
.
��9 :5
'UpdateExternalAuthenticationTokensAsync
��: a
(
��a b
info
��b f
)
��f g
;
��g h
if
�� 
(
�� 
!
�� 
identityResult
�� #
.
��# $
	Succeeded
��$ -
)
��- .
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
$str
��% Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (#
ExternalLoginCallback
��) >
(
��> ?
string
��? E
	returnUrl
��F O
=
��P Q
null
��R V
,
��V W
string
��X ^
remoteError
��_ j
=
��k l
null
��m q
)
��q r
{
�� 	
if
�� 
(
�� 
remoteError
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$str
��! H
,
��H I
remoteError
��J U
)
��U V
;
��V W

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
S
��- .
[
��. /
$str
��/ X
]
��X Y
)
��Y Z
;
��Z [
return
�� 
RedirectToLogin
�� &
(
��& '
	returnUrl
��' 0
)
��0 1
;
��1 2
}
�� 
var
�� 
info
�� 
=
�� 
await
�� 
_signInManager
�� +
.
��+ ,'
GetExternalLoginInfoAsync
��, E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
info
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$str
��! E
)
��E F
;
��F G

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
S
��- .
[
��. /
$str
��/ X
]
��X Y
)
��Y Z
;
��Z [
return
�� 
RedirectToLogin
�� &
(
��& '
	returnUrl
��' 0
)
��0 1
;
��1 2
}
�� 
var
�� "
registrationSettings
�� $
=
��% &
(
��' (
await
��( -
_siteService
��. :
.
��: ;"
GetSiteSettingsAsync
��; O
(
��O P
)
��P Q
)
��Q R
.
��R S
As
��S U
<
��U V"
RegistrationSettings
��V j
>
��j k
(
��k l
)
��l m
;
��m n
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByLoginAsync
��* :
(
��: ;
info
��; ?
.
��? @
LoginProvider
��@ M
,
��M N
info
��O S
.
��S T
ProviderKey
��T _
)
��_ `
;
��` a
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
await
�� "
AddConfirmEmailError
�� /
(
��/ 0
user
��0 4
)
��4 5
&&
��6 8
!
��9 :!
AddUserEnabledError
��: M
(
��M N
user
��N R
)
��R S
)
��S T
{
�� 
await
�� 
_accountEvents
�� (
.
��( )
InvokeAsync
��) 4
(
��4 5
(
��5 6
e
��6 7
,
��7 8
user
��9 =
,
��= >

modelState
��? I
)
��I J
=>
��K M
e
��N O
.
��O P
LoggingInAsync
��P ^
(
��^ _
user
��_ c
.
��c d
UserName
��d l
,
��l m
(
��n o
key
��o r
,
��r s
message
��t {
)
��{ |
=>
��} 

modelState��� �
.��� �
AddModelError��� �
(��� �
key��� �
,��� �
message��� �
)��� �
)��� �
,��� �
user��� �
,��� �

ModelState��� �
,��� �
_logger��� �
)��� �
;��� �
var
�� 
signInResult
�� $
=
��% &
await
��' ,&
ExternalLoginSignInAsync
��- E
(
��E F
user
��F J
,
��J K
info
��L P
)
��P Q
;
��Q R
if
�� 
(
�� 
signInResult
�� $
.
��$ %
	Succeeded
��% .
)
��. /
{
�� 
return
�� 
await
�� $"
LoggedInActionResult
��% 9
(
��9 :
user
��: >
,
��> ?
	returnUrl
��@ I
,
��I J
info
��K O
)
��O P
;
��P Q
}
�� 
else
�� 
{
�� 

ModelState
�� "
.
��" #
AddModelError
��# 0
(
��0 1
string
��1 7
.
��7 8
Empty
��8 =
,
��= >
S
��? @
[
��@ A
$str
��A Y
]
��Y Z
)
��Z [
;
��[ \
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
email
�� 
=
�� 
info
��  
.
��  !
	Principal
��! *
.
��* +
FindFirstValue
��+ 9
(
��9 :

ClaimTypes
��: D
.
��D E
Email
��E J
)
��J K
??
��L N
info
��O S
.
��S T
	Principal
��T ]
.
��] ^
FindFirstValue
��^ l
(
��l m
$str
��m t
)
��t u
;
��u v
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� .
(
��. /
email
��/ 4
)
��4 5
)
��5 6
user
�� 
=
�� 
await
��  
_userManager
��! -
.
��- .
FindByEmailAsync
��. >
(
��> ?
email
��? D
)
��D E
;
��E F
ViewData
�� 
[
�� 
$str
�� $
]
��$ %
=
��& '
	returnUrl
��( 1
;
��1 2
ViewData
�� 
[
�� 
$str
�� (
]
��( )
=
��* +
info
��, 0
.
��0 1
LoginProvider
��1 >
;
��> ?
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
ViewData
�� 
[
�� 
$str
�� '
]
��' (
=
��) *
user
��+ /
.
��/ 0
UserName
��0 8
;
��8 9
ViewData
�� 
[
�� 
$str
�� $
]
��$ %
=
��& '
email
��( -
;
��- .
return
�� 
View
�� 
(
��  
nameof
��  &
(
��& '
LinkExternalLogin
��' 8
)
��8 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
if
�� 
(
�� "
registrationSettings
�� ,
.
��, -
UsersCanRegister
��- =
==
��> @"
UserRegistrationType
��A U
.
��U V
NoRegistration
��V d
)
��d e
{
�� 
string
�� 
message
�� &
=
��' (
S
��) *
[
��* +
$str
��+ S
]
��S T
;
��T U
_logger
�� 
.
��  

LogWarning
��  *
(
��* +
message
��+ 2
)
��2 3
;
��3 4

ModelState
�� "
.
��" #
AddModelError
��# 0
(
��0 1
$str
��1 3
,
��3 4
message
��5 <
)
��< =
;
��= >
}
�� 
else
�� 
{
�� 
var
�� $
externalLoginViewModel
�� 2
=
��3 4
new
��5 8,
RegisterExternalLoginViewModel
��9 W
(
��W X
)
��X Y
;
��Y Z$
externalLoginViewModel
�� .
.
��. /

NoPassword
��/ 9
=
��: ;"
registrationSettings
��< P
.
��P Q(
NoPasswordForExternalUsers
��Q k
;
��k l$
externalLoginViewModel
�� .
.
��. /
NoEmail
��/ 6
=
��7 8"
registrationSettings
��9 M
.
��M N%
NoEmailForExternalUsers
��N e
;
��e f$
externalLoginViewModel
�� .
.
��. /

NoUsername
��/ 9
=
��: ;"
registrationSettings
��< P
.
��P Q(
NoUsernameForExternalUsers
��Q k
;
��k l$
externalLoginViewModel
�� .
.
��. /
UserName
��/ 7
=
��8 9
await
��: ?
GenerateUsername
��@ P
(
��P Q
info
��Q U
)
��U V
;
��V W$
externalLoginViewModel
�� .
.
��. /
Email
��/ 4
=
��5 6
email
��7 <
;
��< =
var
�� #
noInformationRequired
�� 1
=
��2 3$
externalLoginViewModel
��4 J
.
��J K

NoPassword
��K U
&&
��8 :$
externalLoginViewModel
��; Q
.
��Q R
NoEmail
��R Y
&&
��8 :$
externalLoginViewModel
��; Q
.
��Q R

NoUsername
��R \
;
��\ ]
if
�� 
(
�� #
noInformationRequired
�� 1
)
��1 2
{
�� 
user
��  
=
��! "
await
��# (
this
��) -
.
��- .
RegisterUser
��. :
(
��: ;
new
��; >
RegisterViewModel
��? P
(
��P Q
)
��Q R
{
�� 
UserName
��  (
=
��) *$
externalLoginViewModel
��+ A
.
��A B
UserName
��B J
,
��J K
Email
��  %
=
��& '$
externalLoginViewModel
��( >
.
��> ?
Email
��? D
,
��D E
Password
��  (
=
��) *
null
��+ /
,
��/ 0
ConfirmPassword
��  /
=
��0 1
null
��2 6
}
�� 
,
�� 
S
��  
[
��  !
$str
��! 7
]
��7 8
,
��8 9
_logger
��: A
)
��A B
;
��B C
if
�� 
(
��  
user
��  $
!=
��% '
null
��( ,
)
��, -
{
�� 
var
��  #
identityResult
��$ 2
=
��3 4
await
��5 :
_signInManager
��; I
.
��I J
UserManager
��J U
.
��U V
AddLoginAsync
��V c
(
��c d
user
��d h
,
��h i
new
��j m
UserLoginInfo
��n {
(
��{ |
info��| �
.��� �
LoginProvider��� �
,��� �
info��� �
.��� �
ProviderKey��� �
,��� �
info��� �
.��� �#
ProviderDisplayName��� �
)��� �
)��� �
;��� �
if
��  "
(
��# $
identityResult
��$ 2
.
��2 3
	Succeeded
��3 <
)
��< =
{
��  !
_logger
��$ +
.
��+ ,
LogInformation
��, :
(
��: ;
$num
��; <
,
��< =
$str
��> p
,
��p q
info
��r v
.
��v w
LoginProvider��w �
)��� �
;��� �
var
��$ '
signInResult
��( 4
=
��5 6
await
��7 <&
ExternalLoginSignInAsync
��= U
(
��U V
user
��V Z
,
��Z [
info
��\ `
)
��` a
;
��a b
if
��$ &
(
��' (
signInResult
��( 4
.
��4 5
	Succeeded
��5 >
)
��> ?
{
��$ %
return
��( .
await
��/ 4"
LoggedInActionResult
��5 I
(
��I J
user
��J N
,
��N O
	returnUrl
��P Y
,
��Y Z
info
��[ _
)
��_ `
;
��` a
}
��$ %
else
��$ (
{
��$ %

ModelState
��( 2
.
��2 3
AddModelError
��3 @
(
��@ A
string
��A G
.
��G H
Empty
��H M
,
��M N
S
��O P
[
��P Q
$str
��Q i
]
��i j
)
��j k
;
��k l
return
��( .
RedirectToLogin
��/ >
(
��> ?
	returnUrl
��? H
)
��H I
;
��I J
}
��$ %
}
��  !
AddIdentityErrors
��  1
(
��1 2
identityResult
��2 @
)
��@ A
;
��A B
}
�� 
}
�� 
return
�� 
View
�� #
(
��# $
$str
��$ ;
,
��; <$
externalLoginViewModel
��= S
)
��S T
;
��T U
}
�� 
}
�� 
}
�� 
return
�� 
RedirectToLogin
�� "
(
��" #
	returnUrl
��# ,
)
��, -
;
��- .
}
�� 	
private
�� $
RedirectToActionResult
�� &
RedirectToLogin
��' 6
(
��6 7
string
��7 =
	returnUrl
��> G
)
��G H
{
�� 	
var
�� 
iix
�� 
=
�� 
$num
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
state
�� 
in
�� !

ModelState
��" ,
.
��, -
Where
��- 2
(
��2 3
x
��3 4
=>
��5 7
x
��8 9
.
��9 :
Key
��: =
==
��> @
string
��A G
.
��G H
Empty
��H M
)
��M N
)
��N O
{
�� 
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
state
��% *
.
��* +
Value
��+ 0
.
��0 1
Errors
��1 7
)
��7 8
{
�� 
TempData
�� 
[
�� 
$"
�� 
error_
�� %
{
��% &
iix
��& )
++
��) +
}
��+ ,
"
��, -
]
��- .
=
��/ 0
item
��1 5
.
��5 6
ErrorMessage
��6 B
;
��B C
}
�� 
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
Login
��+ 0
)
��0 1
,
��1 2
new
��3 6
{
��7 8
	returnUrl
��9 B
}
��C D
)
��D E
;
��E F
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (#
RegisterExternalLogin
��) >
(
��> ?,
RegisterExternalLoginViewModel
��? ]
model
��^ c
,
��c d
string
��e k
	returnUrl
��l u
=
��v w
null
��x |
)
��| }
{
�� 	
IUser
�� 
user
�� 
=
�� 
null
�� 
;
�� 
var
�� 
settings
�� 
=
�� 
(
�� 
await
�� !
_siteService
��" .
.
��. /"
GetSiteSettingsAsync
��/ C
(
��C D
)
��D E
)
��E F
.
��F G
As
��G I
<
��I J"
RegistrationSettings
��J ^
>
��^ _
(
��_ `
)
��` a
;
��a b
var
�� 
info
�� 
=
�� 
await
�� 
_signInManager
�� +
.
��+ ,'
GetExternalLoginInfoAsync
��, E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
info
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 

LogWarning
�� "
(
��" #
$str
��# G
)
��G H
;
��H I
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
UsersCanRegister
�� )
==
��* ,"
UserRegistrationType
��- A
.
��A B
NoRegistration
��B P
)
��P Q
{
�� 
_logger
�� 
.
�� 

LogWarning
�� "
(
��" #
$str
��# K
,
��K L
model
��M R
.
��R S
UserName
��S [
,
��[ \
model
��] b
.
��b c
Email
��c h
)
��h i
;
��i j
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
ViewData
�� 
[
�� 
$str
��  
]
��  !
=
��" #
	returnUrl
��$ -
;
��- .
ViewData
�� 
[
�� 
$str
�� $
]
��$ %
=
��& '
info
��( ,
.
��, -
LoginProvider
��- :
;
��: ;
model
�� 
.
�� 

NoPassword
�� 
=
�� 
settings
�� '
.
��' ((
NoPasswordForExternalUsers
��( B
;
��B C
model
�� 
.
�� 
NoEmail
�� 
=
�� 
settings
�� $
.
��$ %%
NoEmailForExternalUsers
��% <
;
��< =
model
�� 
.
�� 

NoUsername
�� 
=
�� 
settings
�� '
.
��' ((
NoUsernameForExternalUsers
��( B
;
��B C

ModelState
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
model
�� 
.
�� 
NoEmail
�� 
)
�� 
{
�� 
var
�� 
email
�� 
=
�� 
info
��  
.
��  !
	Principal
��! *
.
��* +
FindFirstValue
��+ 9
(
��9 :

ClaimTypes
��: D
.
��D E
Email
��E J
)
��J K
??
��L N
info
��O S
.
��S T
	Principal
��T ]
.
��] ^
FindFirstValue
��^ l
(
��l m
$str
��m t
)
��t u
;
��u v
model
�� 
.
�� 
Email
�� 
=
�� 
email
�� #
;
��# $
}
�� 
if
�� 
(
�� 
model
�� 
.
�� 

NoUsername
��  
)
��  !
{
�� 
model
�� 
.
�� 
UserName
�� 
=
��  
await
��! &
GenerateUsername
��' 7
(
��7 8
info
��8 <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
model
�� 
.
�� 

NoPassword
��  
)
��  !
{
�� 
model
�� 
.
�� 
Password
�� 
=
��  
null
��! %
;
��% &
model
�� 
.
�� 
ConfirmPassword
�� %
=
��& '
null
��( ,
;
��, -
}
�� 
if
�� 
(
�� 
TryValidateModel
��  
(
��  !
model
��! &
)
��& '
&&
��( *

ModelState
��+ 5
.
��5 6
IsValid
��6 =
)
��= >
{
�� 
user
�� 
=
�� 
await
�� 
this
�� !
.
��! "
RegisterUser
��" .
(
��. /
new
��/ 2
RegisterViewModel
��3 D
(
��D E
)
��E F
{
��G H
UserName
��I Q
=
��R S
model
��T Y
.
��Y Z
UserName
��Z b
,
��b c
Email
��d i
=
��j k
model
��l q
.
��q r
Email
��r w
,
��w x
Password��y �
=��� �
model��� �
.��� �
Password��� �
,��� �
ConfirmPassword��� �
=��� �
model��� �
.��� �
ConfirmPassword��� �
}��� �
,��� �
S��� �
[��� �
$str��� �
]��� �
,��� �
_logger��� �
)��� �
;��� �
if
�� 
(
�� 
user
�� 
is
�� 
null
��  
)
��  !
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
$str
��; Q
)
��Q R
;
��R S
}
�� 
else
�� 
{
�� 
var
�� 
identityResult
�� &
=
��' (
await
��) .
_signInManager
��/ =
.
��= >
UserManager
��> I
.
��I J
AddLoginAsync
��J W
(
��W X
user
��X \
,
��\ ]
new
��^ a
UserLoginInfo
��b o
(
��o p
info
��p t
.
��t u
LoginProvider��u �
,��� �
info��� �
.��� �
ProviderKey��� �
,��� �
info��� �
.��� �#
ProviderDisplayName��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
identityResult
�� &
.
��& '
	Succeeded
��' 0
)
��0 1
{
�� 
_logger
�� 
.
��  
LogInformation
��  .
(
��. /
$num
��/ 0
,
��0 1
$str
��2 _
,
��_ `
info
��a e
.
��e f
LoginProvider
��f s
)
��s t
;
��t u
var
�� 
signInResult
�� (
=
��) *
await
��+ 0&
ExternalLoginSignInAsync
��1 I
(
��I J
user
��J N
,
��N O
info
��P T
)
��T U
;
��U V
if
�� 
(
�� 
signInResult
�� (
.
��( )
	Succeeded
��) 2
)
��2 3
{
�� 
return
�� "
await
��# ("
LoggedInActionResult
��) =
(
��= >
user
��> B
,
��B C
	returnUrl
��D M
,
��M N
info
��O S
)
��S T
;
��T U
}
�� 
}
�� 
AddIdentityErrors
�� %
(
��% &
identityResult
��& 4
)
��4 5
;
��5 6
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
$str
�� /
,
��/ 0
model
��1 6
)
��6 7
;
��7 8
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
LinkExternalLogin
��) :
(
��: ;(
LinkExternalLoginViewModel
��; U
model
��V [
,
��[ \
string
��] c
	returnUrl
��d m
=
��n o
null
��p t
)
��t u
{
�� 	
var
�� 
settings
�� 
=
�� 
(
�� 
await
�� !
_siteService
��" .
.
��. /"
GetSiteSettingsAsync
��/ C
(
��C D
)
��D E
)
��E F
.
��F G
As
��G I
<
��I J"
RegistrationSettings
��J ^
>
��^ _
(
��_ `
)
��` a
;
��a b
var
�� 
info
�� 
=
�� 
await
�� 
_signInManager
�� +
.
��+ ,'
GetExternalLoginInfoAsync
��, E
(
��E F
)
��F G
;
��G H
var
�� 
email
�� 
=
�� 
info
�� 
.
�� 
	Principal
�� &
.
��& '
FindFirstValue
��' 5
(
��5 6

ClaimTypes
��6 @
.
��@ A
Email
��A F
)
��F G
??
��H J
info
��K O
.
��O P
	Principal
��P Y
.
��Y Z
FindFirstValue
��Z h
(
��h i
$str
��i p
)
��p q
;
��q r
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByEmailAsync
��* :
(
��: ;
email
��; @
)
��@ A
;
��A B
if
�� 
(
�� 
info
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 

LogWarning
�� "
(
��" #
$str
��# G
)
��G H
;
��H I
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 

LogWarning
�� "
(
��" #
$str��# �
,��� �
info
�� 
.
�� 
LoginProvider
�� &
,
��& '
info
��( ,
.
��, -
ProviderKey
��- 8
,
��8 9
info
��: >
.
��> ?
	Principal
��? H
?
��H I
.
��I J
Identity
��J R
?
��R S
.
��S T
Name
��T X
)
��X Y
;
��Y Z
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
Login
��/ 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
await
�� 
_accountEvents
��  
.
��  !
InvokeAsync
��! ,
(
��, -
(
��- .
e
��. /
,
��/ 0
model
��1 6
,
��6 7

modelState
��8 B
)
��B C
=>
��D F
e
��G H
.
��H I
LoggingInAsync
��I W
(
��W X
user
��X \
.
��\ ]
UserName
��] e
,
��e f
(
��g h
key
��h k
,
��k l
message
��m t
)
��t u
=>
��v x

modelState��y �
.��� �
AddModelError��� �
(��� �
key��� �
,��� �
message��� �
)��� �
)��� �
,��� �
model��� �
,��� �

ModelState��� �
,��� �
_logger��� �
)��� �
;��� �
var
�� 
signInResult
�� 
=
�� 
await
�� $
_signInManager
��% 3
.
��3 4&
CheckPasswordSignInAsync
��4 L
(
��L M
user
��M Q
,
��Q R
model
��S X
.
��X Y
Password
��Y a
,
��a b
false
��c h
)
��h i
;
��i j
if
�� 
(
�� 
!
�� 
signInResult
�� 
.
�� 
	Succeeded
�� '
)
��' (
{
�� 
user
�� 
=
�� 
null
�� 
;
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
string
��) /
.
��/ 0
Empty
��0 5
,
��5 6
S
��7 8
[
��8 9
$str
��9 Q
]
��Q R
)
��R S
;
��S T
}
�� 
else
�� 
{
�� 
var
�� 
identityResult
�� "
=
��# $
await
��% *
_signInManager
��+ 9
.
��9 :
UserManager
��: E
.
��E F
AddLoginAsync
��F S
(
��S T
user
��T X
,
��X Y
new
��Z ]
UserLoginInfo
��^ k
(
��k l
info
��l p
.
��p q
LoginProvider
��q ~
,
��~ 
info��� �
.��� �
ProviderKey��� �
,��� �
info��� �
.��� �#
ProviderDisplayName��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
identityResult
�� "
.
��" #
	Succeeded
��# ,
)
��, -
{
�� 
_logger
�� 
.
�� 
LogInformation
�� *
(
��* +
$num
��+ ,
,
��, -
$str
��. [
,
��[ \
info
��] a
.
��a b
LoginProvider
��b o
)
��o p
;
��p q
if
�� 
(
�� 
(
�� 
await
�� &
ExternalLoginSignInAsync
�� 7
(
��7 8
user
��8 <
,
��< =
info
��> B
)
��B C
)
��C D
.
��D E
	Succeeded
��E N
)
��N O
{
�� 
return
�� 
await
�� $"
LoggedInActionResult
��% 9
(
��9 :
user
��: >
,
��> ?
	returnUrl
��@ I
,
��I J
info
��K O
)
��O P
;
��P Q
}
�� 
}
�� 
AddIdentityErrors
�� !
(
��! "
identityResult
��" 0
)
��0 1
;
��1 2
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
Login
��+ 0
)
��0 1
)
��1 2
;
��2 3
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
ExternalLogins
��) 7
(
��7 8
)
��8 9
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
GetUserAsync
��* 6
(
��6 7
User
��7 ;
)
��; <
;
��< =
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
model
�� 
=
�� 
new
�� %
ExternalLoginsViewModel
�� 3
{
��4 5
CurrentLogins
��6 C
=
��D E
await
��F K
_userManager
��L X
.
��X Y
GetLoginsAsync
��Y g
(
��g h
user
��h l
)
��l m
}
��n o
;
��o p
model
�� 
.
�� 
OtherLogins
�� 
=
�� 
(
��  !
await
��! &
_signInManager
��' 5
.
��5 63
%GetExternalAuthenticationSchemesAsync
��6 [
(
��[ \
)
��\ ]
)
��] ^
.
�� 
Where
�� 
(
�� 
auth
�� 
=>
�� 
model
�� $
.
��$ %
CurrentLogins
��% 2
.
��2 3
All
��3 6
(
��6 7
ul
��7 9
=>
��: <
auth
��= A
.
��A B
Name
��B F
!=
��G I
ul
��J L
.
��L M
LoginProvider
��M Z
)
��Z [
)
��[ \
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
model
�� 
.
�� 
ShowRemoveButton
�� "
=
��# $
await
��% *
_userManager
��+ 7
.
��7 8
HasPasswordAsync
��8 H
(
��H I
user
��I M
)
��M N
||
��O Q
model
��R W
.
��W X
CurrentLogins
��X e
.
��e f
Count
��f k
>
��l m
$num
��n o
;
��o p
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
	LinkLogin
��) 2
(
��2 3
string
��3 9
provider
��: B
)
��B C
{
�� 	
await
�� 
HttpContext
�� 
.
�� 
SignOutAsync
�� *
(
��* +
IdentityConstants
��+ <
.
��< =
ExternalScheme
��= K
)
��K L
;
��L M
var
�� 
redirectUrl
�� 
=
�� 
Url
�� !
.
��! "
Action
��" (
(
��( )
nameof
��) /
(
��/ 0
LinkLoginCallback
��0 A
)
��A B
)
��B C
;
��C D
var
�� 

properties
�� 
=
�� 
_signInManager
�� +
.
��+ ,7
)ConfigureExternalAuthenticationProperties
��, U
(
��U V
provider
��V ^
,
��^ _
redirectUrl
��` k
,
��k l
_userManager
��m y
.
��y z
	GetUserId��z �
(��� �
User��� �
)��� �
)��� �
;��� �
return
�� 
new
�� 
ChallengeResult
�� &
(
��& '
provider
��' /
,
��/ 0

properties
��1 ;
)
��; <
;
��< =
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
LinkLoginCallback
��) :
(
��: ;
)
��; <
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
GetUserAsync
��* 6
(
��6 7
User
��7 ;
)
��; <
;
��< =
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$str
��! J
,
��J K
_userManager
��L X
.
��X Y
	GetUserId
��Y b
(
��b c
User
��c g
)
��g h
)
��h i
;
��i j
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
Login
��/ 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
var
�� 
info
�� 
=
�� 
await
�� 
_signInManager
�� +
.
��+ ,'
GetExternalLoginInfoAsync
��, E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
info
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$str
��! o
,
��o p
user
��q u
.
��u v
UserName
��v ~
)
��~ 
;�� �
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
Login
��/ 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
_userManager
�� +
.
��+ ,
AddLoginAsync
��, 9
(
��9 :
user
��: >
,
��> ?
new
��@ C
UserLoginInfo
��D Q
(
��Q R
info
��R V
.
��V W
LoginProvider
��W d
,
��d e
info
��f j
.
��j k
ProviderKey
��k v
,
��v w
info
��x |
.
��| }"
ProviderDisplayName��} �
)��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$str
��! n
,
��n o
user
��p t
.
��t u
UserName
��u }
)
��} ~
;
��~ 
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
Login
��/ 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
await
�� 
HttpContext
�� 
.
�� 
SignOutAsync
�� *
(
��* +
IdentityConstants
��+ <
.
��< =
ExternalScheme
��= K
)
��K L
;
��L M
await
�� &
ExternalLoginSignInAsync
�� *
(
��* +
user
��+ /
,
��/ 0
info
��1 5
)
��5 6
;
��6 7
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
ExternalLogins
��+ 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
RemoveLogin
��) 4
(
��4 5"
RemoveLoginViewModel
��5 I
model
��J O
)
��O P
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
GetUserAsync
��* 6
(
��6 7
User
��7 ;
)
��; <
;
��< =
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$str
��! J
,
��J K
_userManager
��L X
.
��X Y
	GetUserId
��Y b
(
��b c
User
��c g
)
��g h
)
��h i
;
��i j
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
Login
��/ 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
_userManager
�� +
.
��+ ,
RemoveLoginAsync
��, <
(
��< =
user
��= A
,
��A B
model
��C H
.
��H I
LoginProvider
��I V
,
��V W
model
��X ]
.
��] ^
ProviderKey
��^ i
)
��i j
;
��j k
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$str
��! p
,
��p q
user
��r v
.
��v w
UserName
��w 
)�� �
;��� �
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
Login
��/ 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
foreach
�� 
(
�� 
var
�� 
item
�� 
in
��  
(
��! "
(
��" #
User
��# '
)
��' (
user
��( ,
)
��, -
.
��- .

UserTokens
��. 8
.
��8 9
Where
��9 >
(
��> ?
c
��? @
=>
��A C
c
��D E
.
��E F
LoginProvider
��F S
==
��T V
model
��W \
.
��\ ]
LoginProvider
��] j
)
��j k
.
��k l
ToList
��l r
(
��r s
)
��s t
)
��t u
{
�� 
if
�� 
(
�� 
!
�� 
(
�� 
await
�� 
(
�� 
_userManager
�� )
.
��) *,
RemoveAuthenticationTokenAsync
��* H
(
��H I
user
��I M
,
��M N
model
��O T
.
��T U
LoginProvider
��U b
,
��b c
item
��d h
.
��h i
Name
��i m
)
��m n
)
��n o
)
��o p
.
��p q
	Succeeded
��q z
)
��z {
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
$str��% �
,��� �
item��� �
.��� �
Name��� �
,��� �
model��� �
.��� �
LoginProvider��� �
,��� �
user��� �
.��� �
UserName��� �
)��� �
;��� �
}
�� 
}
�� 
await
�� 
_signInManager
��  
.
��  !
SignInAsync
��! ,
(
��, -
user
��- 1
,
��1 2
isPersistent
��3 ?
:
��? @
false
��A F
)
��F G
;
��G H
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
ExternalLogins
��+ 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
string
�� !
>
��! "
GenerateUsername
��# 3
(
��3 4
ExternalLoginInfo
��4 E
info
��F J
)
��J K
{
�� 	
var
�� 
now
�� 
=
�� 
new
�� 
TimeSpan
�� "
(
��" #
_clock
��# )
.
��) *
UtcNow
��* 0
.
��0 1
Ticks
��1 6
)
��6 7
-
��8 9
new
��: =
TimeSpan
��> F
(
��F G
DateTime
��G O
.
��O P
	UnixEpoch
��P Y
.
��Y Z
Ticks
��Z _
)
��_ `
;
��` a
var
�� 
ret
�� 
=
�� 
string
�� 
.
�� 
Concat
�� #
(
��# $
$str
��$ '
+
��( )
Convert
��* 1
.
��1 2
ToInt32
��2 9
(
��9 :
now
��: =
.
��= >
TotalSeconds
��> J
)
��J K
.
��K L
ToString
��L T
(
��T U
)
��U V
)
��V W
;
��W X
var
�� "
registrationSettings
�� $
=
��% &
(
��' (
await
��( -
_siteService
��. :
.
��: ;"
GetSiteSettingsAsync
��; O
(
��O P
)
��P Q
)
��Q R
.
��R S
As
��S U
<
��U V"
RegistrationSettings
��V j
>
��j k
(
��k l
)
��l m
;
��m n
var
�� 
externalClaims
�� 
=
��  
info
��! %
==
��& (
null
��) -
?
��. /
null
��0 4
:
��5 6
info
��7 ;
.
��; <
	Principal
��< E
.
��E F#
GetSerializableClaims
��F [
(
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� "
registrationSettings
�� $
.
��$ %)
UseScriptToGenerateUsername
��% @
)
��@ A
{
�� 
var
�� 
context
�� 
=
�� 
new
�� !
{
��" #
userName
��$ ,
=
��- .
string
��/ 5
.
��5 6
Empty
��6 ;
,
��; <
loginProvider
��= J
=
��K L
info
��M Q
?
��Q R
.
��R S
LoginProvider
��S `
,
��` a
externalClaims
��b p
}
��q r
;
��r s
var
�� $
jsonSerializerSettings
�� *
=
��+ ,
new
��- 0$
JsonSerializerSettings
��1 G
(
��G H
)
��H I
{
�� 
ContractResolver
�� $
=
��% &
new
��' *4
&CamelCasePropertyNamesContractResolver
��+ Q
(
��Q R
)
��R S
}
�� 
;
�� 
var
�� 
script
�� 
=
�� 
$"
�� 9
+js: function generateUsername(context) {{\n
�� J
{
��J K"
registrationSettings
��K _
.
��_ `$
GenerateUsernameScript
��` v
}
��v w#
\n}}\nvar context = ��w �
{��� �
JsonConvert��� �
.��� �
SerializeObject��� �
(��� �
context��� �
,��� �&
jsonSerializerSettings��� �
)��� �
}��� �>
.;\ngenerateUsername(context);\nreturn context;��� �
"��� �
;��� �
try
�� 
{
�� 
dynamic
�� 
evaluationResult
�� ,
=
��- .
_scriptingManager
��/ @
.
��@ A
Evaluate
��A I
(
��I J
script
��J P
,
��P Q
null
��R V
,
��V W
null
��X \
,
��\ ]
null
��^ b
)
��b c
;
��c d
if
�� 
(
�� 
evaluationResult
�� (
?
��( )
.
��) *
userName
��* 2
==
��3 5
null
��6 :
)
��: ;
throw
�� 
new
�� !
	Exception
��" +
(
��+ ,
$str
��, ^
)
��^ _
;
��_ `
return
�� 
evaluationResult
�� +
.
��+ ,
userName
��, 4
;
��4 5
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
ex
��% '
,
��' (
$str
��) ]
,
��] ^
context
��_ f
)
��f g
;
��g h
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
	userNames
�� 
=
�� 
new
��  #

Dictionary
��$ .
<
��. /
Type
��/ 3
,
��3 4
string
��5 ;
>
��; <
(
��< =
)
��= >
;
��> ?
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $$
_externalLoginHandlers
��% ;
)
��; <
{
�� 
try
�� 
{
�� 
var
�� 
userName
�� $
=
��% &
await
��' ,
item
��- 1
.
��1 2
GenerateUserName
��2 B
(
��B C
info
��C G
.
��G H
LoginProvider
��H U
,
��U V
externalClaims
��W e
.
��e f
ToArray
��f m
(
��m n
)
��n o
)
��o p
;
��p q
if
�� 
(
�� 
!
�� 
string
�� #
.
��# $ 
IsNullOrWhiteSpace
��$ 6
(
��6 7
userName
��7 ?
)
��? @
)
��@ A
{
�� 
if
�� 
(
��  
	userNames
��  )
.
��) *
Count
��* /
==
��0 2
$num
��3 4
)
��4 5
{
�� 
ret
��  #
=
��$ %
userName
��& .
;
��. /
}
�� 
	userNames
�� %
.
��% &
Add
��& )
(
��) *
item
��* .
.
��. /
GetType
��/ 6
(
��6 7
)
��7 8
,
��8 9
userName
��: B
)
��B C
;
��C D
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
_logger
�� 
.
��  
LogError
��  (
(
��( )
ex
��) +
,
��+ ,
$str��- �
,��� �
item��� �
.��� �
GetType��� �
(��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
if
�� 
(
�� 
	userNames
�� 
.
�� 
Count
�� #
>
��$ %
$num
��& '
)
��' (
{
�� 
_logger
�� 
.
�� 

LogWarning
�� &
(
��& '
$str��' �
,��� �
	userNames��� �
.��� �
FirstOrDefault��� �
(��� �
)��� �
.��� �
Key��� �
)��� �
;��� �
}
�� 
}
�� 
return
�� 
ret
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\AdminController.cs
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
normalizedSearchEMail	oo �
)
oo� �
)
oo� �
;
oo� �
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
�� 
var
�� 
count
�� 
=
�� 
await
�� 
users
�� #
.
��# $

CountAsync
��$ .
(
��. /
)
��/ 0
;
��0 1
var
�� 
results
�� 
=
�� 
await
�� 
users
��  %
.
�� 
Skip
�� 
(
�� 
pager
�� 
.
�� 
GetStartIndex
�� )
(
��) *
)
��* +
)
��+ ,
.
�� 
Take
�� 
(
�� 
pager
�� 
.
�� 
PageSize
�� $
)
��$ %
.
�� 
	ListAsync
�� 
(
�� 
)
�� 
;
�� 
var
�� 
	routeData
�� 
=
�� 
new
�� 
	RouteData
��  )
(
��) *
)
��* +
;
��+ ,
	routeData
�� 
.
�� 
Values
�� 
.
�� 
Add
��  
(
��  !
$str
��! 1
,
��1 2
options
��3 :
.
��: ;
Filter
��; A
)
��A B
;
��B C
	routeData
�� 
.
�� 
Values
�� 
.
�� 
Add
��  
(
��  !
$str
��! 1
,
��1 2
options
��3 :
.
��: ;
Search
��; A
)
��A B
;
��B C
	routeData
�� 
.
�� 
Values
�� 
.
�� 
Add
��  
(
��  !
$str
��! 0
,
��0 1
options
��2 9
.
��9 :
Order
��: ?
)
��? @
;
��@ A
var
�� 

pagerShape
�� 
=
�� 
(
�� 
await
�� #
New
��$ '
.
��' (
Pager
��( -
(
��- .
pager
��. 3
)
��3 4
)
��4 5
.
��5 6
TotalItemCount
��6 D
(
��D E
count
��E J
)
��J K
.
��K L
	RouteData
��L U
(
��U V
	routeData
��V _
)
��_ `
;
��` a
var
�� 
userEntries
�� 
=
�� 
new
�� !
List
��" &
<
��& '
	UserEntry
��' 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
foreach
�� 
(
�� 
var
�� 
user
�� 
in
��  
results
��! (
)
��( )
{
�� 
userEntries
�� 
.
�� 
Add
�� 
(
��  
new
��  #
	UserEntry
��$ -
{
�� 
UserId
�� 
=
�� 
user
�� !
.
��! "
UserId
��" (
,
��( )
Shape
�� 
=
�� 
await
�� !!
_userDisplayManager
��" 5
.
��5 6
BuildDisplayAsync
��6 G
(
��G H
user
��H L
,
��L M
updater
��N U
:
��U V"
_updateModelAccessor
��W k
.
��k l
ModelUpdater
��l x
,
��x y
displayType��z �
:��� �
$str��� �
)��� �
}
�� 
)
�� 
;
�� 
}
�� 
var
�� 
model
�� 
=
�� 
new
�� !
UsersIndexViewModel
�� /
{
�� 
Users
�� 
=
�� 
userEntries
�� #
,
��# $
Options
�� 
=
�� 
options
�� !
,
��! "
Pager
�� 
=
�� 

pagerShape
�� "
}
�� 
;
�� 
model
�� 
.
�� 
Options
�� 
.
�� 
UserFilters
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
SelectListItem
��1 ?
>
��? @
(
��@ A
)
��A B
{
��C D
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 5
]
��5 6
,
��6 7
Value
��8 =
=
��> ?
nameof
��@ F
(
��F G
UsersFilter
��G R
.
��R S
All
��S V
)
��V W
}
��X Y
,
��Y Z
}
�� 
;
�� 
model
�� 
.
�� 
Options
�� 
.
�� 
	UserSorts
�� #
=
��$ %
new
��& )
List
��* .
<
��. /
SelectListItem
��/ =
>
��= >
(
��> ?
)
��? @
{
��A B
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 6
]
��6 7
,
��7 8
Value
��9 >
=
��? @
nameof
��A G
(
��G H

UsersOrder
��H R
.
��R S
Name
��S W
)
��W X
}
��Y Z
,
��Z [
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 7
]
��7 8
,
��8 9
Value
��: ?
=
��@ A
nameof
��B H
(
��H I

UsersOrder
��I S
.
��S T
Email
��T Y
)
��Y Z
}
��[ \
,
��\ ]
}
�� 
;
�� 
model
�� 
.
�� 
Options
�� 
.
�� 
UsersBulkAction
�� )
=
��* +
new
��, /
List
��0 4
<
��4 5
SelectListItem
��5 C
>
��C D
(
��D E
)
��E F
{
��G H
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 9
]
��9 :
,
��: ;
Value
��< A
=
��B C
nameof
��D J
(
��J K
UsersBulkAction
��K Z
.
��Z [
Approve
��[ b
)
��b c
}
��d e
,
��e f
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 8
]
��8 9
,
��9 :
Value
��; @
=
��A B
nameof
��C I
(
��I J
UsersBulkAction
��J Y
.
��Y Z
Enable
��Z `
)
��` a
}
��b c
,
��c d
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 9
]
��9 :
,
��: ;
Value
��< A
=
��B C
nameof
��D J
(
��J K
UsersBulkAction
��K Z
.
��Z [
Disable
��[ b
)
��b c
}
��d e
,
��e f
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 8
]
��8 9
,
��9 :
Value
��; @
=
��A B
nameof
��C I
(
��I J
UsersBulkAction
��J Y
.
��Y Z
Delete
��Z `
)
��` a
}
��b c
}
�� 
;
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
FormValueRequired
��	 
(
�� 
$str
�� *
)
��* +
]
��+ ,
public
�� 
ActionResult
�� 
IndexFilterPOST
�� +
(
��+ ,!
UsersIndexViewModel
��, ?
model
��@ E
)
��E F
{
�� 	
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0"
RouteValueDictionary
��1 E
{
��F G
{
�� 
$str
�� "
,
��" #
model
��$ )
.
��) *
Options
��* 1
.
��1 2
Filter
��2 8
}
��9 :
,
��: ;
{
�� 
$str
�� !
,
��! "
model
��# (
.
��( )
Options
��) 0
.
��0 1
Order
��1 6
}
��7 8
,
��8 9
{
�� 
$str
�� "
,
��" #
model
��$ )
.
��) *
Options
��* 1
.
��1 2
Search
��2 8
}
��9 :
}
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
FormValueRequired
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
	IndexPOST
��( 1
(
��1 2
UserIndexOptions
��2 B
options
��C J
,
��J K
IEnumerable
��L W
<
��W X
string
��X ^
>
��^ _
itemIds
��` g
)
��g h
{
�� 	
var
�� 
authUser
�� 
=
�� 
new
�� 
User
�� #
(
��# $
)
��$ %
;
��% &
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageUsers
��N Y
,
��Y Z
authUser
��[ c
)
��c d
)
��d e
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
itemIds
�� 
?
�� 
.
�� 
Count
�� 
(
�� 
)
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
var
�� 
checkedUsers
��  
=
��! "
await
��# (
_session
��) 1
.
��1 2
Query
��2 7
<
��7 8
User
��8 <
,
��< =
	UserIndex
��> G
>
��G H
(
��H I
)
��I J
.
��J K
Where
��K P
(
��P Q
x
��Q R
=>
��S U
x
��V W
.
��W X
UserId
��X ^
.
��^ _
IsIn
��_ c
(
��c d
itemIds
��d k
)
��k l
)
��l m
.
��m n
	ListAsync
��n w
(
��w x
)
��x y
;
��y z
foreach
�� 
(
�� 
var
�� 
user
�� !
in
��" $
checkedUsers
��% 1
)
��1 2
{
�� 
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� 4
.
��4 5
AuthorizeAsync
��5 C
(
��C D
User
��D H
,
��H I
Permissions
��J U
.
��U V
ManageUsers
��V a
,
��a b
user
��c g
)
��g h
)
��h i
{
�� 
return
�� 
Forbid
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 
switch
�� 
(
�� 
options
�� 
.
��  

BulkAction
��  *
)
��* +
{
�� 
case
�� 
UsersBulkAction
�� (
.
��( )
None
��) -
:
��- .
break
�� 
;
�� 
case
�� 
UsersBulkAction
�� (
.
��( )
Approve
��) 0
:
��0 1
foreach
�� 
(
��  !
var
��! $
user
��% )
in
��* ,
checkedUsers
��- 9
)
��9 :
{
�� 
if
�� 
(
��  
!
��  !
await
��! &
_userManager
��' 3
.
��3 4#
IsEmailConfirmedAsync
��4 I
(
��I J
user
��J N
)
��N O
)
��O P
{
�� 
var
��  #
token
��$ )
=
��* +
await
��, 1
_userManager
��2 >
.
��> ?1
#GenerateEmailConfirmationTokenAsync
��? b
(
��b c
user
��c g
)
��g h
;
��h i
await
��  %
_userManager
��& 2
.
��2 3
ConfirmEmailAsync
��3 D
(
��D E
user
��E I
,
��I J
token
��K P
)
��P Q
;
��Q R
	_notifier
��  )
.
��) *
Success
��* 1
(
��1 2
H
��2 3
[
��3 4
$str
��4 U
,
��U V
user
��W [
.
��[ \
UserName
��\ d
]
��d e
)
��e f
;
��f g
}
�� 
}
�� 
break
�� 
;
�� 
case
�� 
UsersBulkAction
�� (
.
��( )
Delete
��) /
:
��/ 0
foreach
�� 
(
��  !
var
��! $
user
��% )
in
��* ,
checkedUsers
��- 9
)
��9 :
{
�� 
if
�� 
(
��  
String
��  &
.
��& '
Equals
��' -
(
��- .
user
��. 2
.
��2 3
UserId
��3 9
,
��9 :
User
��; ?
.
��? @
FindFirstValue
��@ N
(
��N O

ClaimTypes
��O Y
.
��Y Z
NameIdentifier
��Z h
)
��h i
,
��i j
StringComparison
��k {
.
��{ | 
OrdinalIgnoreCase��| �
)��� �
)��� �
{
�� 
continue
��  (
;
��( )
}
�� 
await
�� !
_userManager
��" .
.
��. /
DeleteAsync
��/ :
(
��: ;
user
��; ?
)
��? @
;
��@ A
	_notifier
�� %
.
��% &
Success
��& -
(
��- .
H
��. /
[
��/ 0
$str
��0 P
,
��P Q
user
��R V
.
��V W
UserName
��W _
]
��_ `
)
��` a
;
��a b
}
�� 
break
�� 
;
�� 
case
�� 
UsersBulkAction
�� (
.
��( )
Disable
��) 0
:
��0 1
foreach
�� 
(
��  !
var
��! $
user
��% )
in
��* ,
checkedUsers
��- 9
)
��9 :
{
�� 
if
�� 
(
��  
String
��  &
.
��& '
Equals
��' -
(
��- .
user
��. 2
.
��2 3
UserId
��3 9
,
��9 :
User
��; ?
.
��? @
FindFirstValue
��@ N
(
��N O

ClaimTypes
��O Y
.
��Y Z
NameIdentifier
��Z h
)
��h i
,
��i j
StringComparison
��k {
.
��{ | 
OrdinalIgnoreCase��| �
)��� �
)��� �
{
�� 
continue
��  (
;
��( )
}
�� 
user
��  
.
��  !
	IsEnabled
��! *
=
��+ ,
false
��- 2
;
��2 3
await
�� !
_userManager
��" .
.
��. /
UpdateAsync
��/ :
(
��: ;
user
��; ?
)
��? @
;
��@ A
	_notifier
�� %
.
��% &
Success
��& -
(
��- .
H
��. /
[
��/ 0
$str
��0 Q
,
��Q R
user
��S W
.
��W X
UserName
��X `
]
��` a
)
��a b
;
��b c
}
�� 
break
�� 
;
�� 
case
�� 
UsersBulkAction
�� (
.
��( )
Enable
��) /
:
��/ 0
foreach
�� 
(
��  !
var
��! $
user
��% )
in
��* ,
checkedUsers
��- 9
)
��9 :
{
�� 
if
�� 
(
��  
String
��  &
.
��& '
Equals
��' -
(
��- .
user
��. 2
.
��2 3
UserId
��3 9
,
��9 :
User
��; ?
.
��? @
FindFirstValue
��@ N
(
��N O

ClaimTypes
��O Y
.
��Y Z
NameIdentifier
��Z h
)
��h i
,
��i j
StringComparison
��k {
.
��{ | 
OrdinalIgnoreCase��| �
)��� �
)��� �
{
�� 
continue
��  (
;
��( )
}
�� 
user
��  
.
��  !
	IsEnabled
��! *
=
��+ ,
true
��- 1
;
��1 2
await
�� !
_userManager
��" .
.
��. /
UpdateAsync
��/ :
(
��: ;
user
��; ?
)
��? @
;
��@ A
	_notifier
�� %
.
��% &
Success
��& -
(
��- .
H
��. /
[
��/ 0
$str
��0 P
,
��P Q
user
��R V
.
��V W
UserName
��W _
]
��_ `
)
��` a
;
��a b
}
�� 
break
�� 
;
�� 
default
�� 
:
�� 
throw
�� 
new
�� !)
ArgumentOutOfRangeException
��" =
(
��= >
)
��> ?
;
��? @
}
�� 
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Create
��) /
(
��/ 0
)
��0 1
{
�� 	
var
�� 
user
�� 
=
�� 
new
�� 
User
�� 
(
��  
)
��  !
;
��! "
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
	ViewUsers
��N W
,
��W X
user
��Y ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
shape
�� 
=
�� 
await
�� !
_userDisplayManager
�� 1
.
��1 2
BuildEditorAsync
��2 B
(
��B C
user
��C G
,
��G H
updater
��I P
:
��P Q"
_updateModelAccessor
��R f
.
��f g
ModelUpdater
��g s
,
��s t
isNew
��u z
:
��z {
true��| �
)��� �
;��� �
return
�� 
View
�� 
(
�� 
shape
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	

ActionName
��	 
(
�� 
nameof
�� 
(
�� 
Create
�� !
)
��! "
)
��" #
]
��# $
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (

CreatePost
��) 3
(
��3 4
)
��4 5
{
�� 	
var
�� 
user
�� 
=
�� 
new
�� 
User
�� 
(
��  
)
��  !
;
��! "
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
	ViewUsers
��N W
,
��W X
user
��Y ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
shape
�� 
=
�� 
await
�� !
_userDisplayManager
�� 1
.
��1 2
UpdateEditorAsync
��2 C
(
��C D
user
��D H
,
��H I
updater
��J Q
:
��Q R"
_updateModelAccessor
��S g
.
��g h
ModelUpdater
��h t
,
��t u
isNew
��v {
:
��{ |
true��} �
)��� �
;��� �
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
shape
�� !
)
��! "
;
��" #
}
�� 
await
�� 
_userService
�� 
.
�� 
CreateUserAsync
�� .
(
��. /
user
��/ 3
,
��3 4
null
��5 9
,
��9 :

ModelState
��; E
.
��E F
AddModelError
��F S
)
��S T
;
��T U
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
shape
�� !
)
��! "
;
��" #
}
�� 
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  <
]
��< =
)
��= >
;
��> ?
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
Index
��+ 0
)
��0 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Edit
��) -
(
��- .
string
��. 4
id
��5 7
,
��7 8
string
��9 ?
	returnUrl
��@ I
)
��I J
{
�� 	
var
�� 
editingOwnUser
�� 
=
��  
false
��! &
;
��& '
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
id
��% '
)
��' (
)
��( )
{
�� 
id
�� 
=
�� 
User
�� 
.
�� 
FindFirstValue
�� (
(
��( )

ClaimTypes
��) 3
.
��3 4
NameIdentifier
��4 B
)
��B C
;
��C D
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� 0
.
��0 1
AuthorizeAsync
��1 ?
(
��? @
User
��@ D
,
��D E
Permissions
��F Q
.
��Q R&
ManageOwnUserInformation
��R j
)
��j k
)
��k l
{
�� 
return
�� 
Forbid
�� !
(
��! "
)
��" #
;
��# $
}
�� 
editingOwnUser
�� 
=
��  
true
��! %
;
��% &
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByIdAsync
��* 7
(
��7 8
id
��8 :
)
��: ;
as
��< >
User
��? C
;
��C D
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 
!
�� 
editingOwnUser
�� 
&&
��  "
!
��# $
await
��$ )#
_authorizationService
��* ?
.
��? @
AuthorizeAsync
��@ N
(
��N O
User
��O S
,
��S T
Permissions
��U `
.
��` a
	ViewUsers
��a j
,
��j k
user
��l p
)
��p q
)
��q r
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
shape
�� 
=
�� 
await
�� !
_userDisplayManager
�� 1
.
��1 2
BuildEditorAsync
��2 B
(
��B C
user
��C G
,
��G H
updater
��I P
:
��P Q"
_updateModelAccessor
��R f
.
��f g
ModelUpdater
��g s
,
��s t
isNew
��u z
:
��z {
false��| �
)��� �
;��� �
ViewData
�� 
[
�� 
$str
��  
]
��  !
=
��" #
	returnUrl
��$ -
;
��- .
return
�� 
View
�� 
(
�� 
shape
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	

ActionName
��	 
(
�� 
nameof
�� 
(
�� 
Edit
�� 
)
��  
)
��  !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
EditPost
��) 1
(
��1 2
string
��2 8
id
��9 ;
,
��; <
string
��= C
	returnUrl
��D M
)
��M N
{
�� 	
var
�� 
editingOwnUser
�� 
=
��  
false
��! &
;
��& '
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
id
��% '
)
��' (
)
��( )
{
�� 
editingOwnUser
�� 
=
��  
true
��! %
;
��% &
id
�� 
=
�� 
User
�� 
.
�� 
FindFirstValue
�� (
(
��( )

ClaimTypes
��) 3
.
��3 4
NameIdentifier
��4 B
)
��B C
;
��C D
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� 0
.
��0 1
AuthorizeAsync
��1 ?
(
��? @
User
��@ D
,
��D E
Permissions
��F Q
.
��Q R&
ManageOwnUserInformation
��R j
)
��j k
)
��k l
{
�� 
return
�� 
Forbid
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByIdAsync
��* 7
(
��7 8
id
��8 :
)
��: ;
as
��< >
User
��? C
;
��C D
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 
!
�� 
editingOwnUser
�� 
&&
��  "
!
��# $
await
��$ )#
_authorizationService
��* ?
.
��? @
AuthorizeAsync
��@ N
(
��N O
User
��O S
,
��S T
Permissions
��U `
.
��` a
	ViewUsers
��a j
,
��j k
user
��l p
)
��p q
)
��q r
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
shape
�� 
=
�� 
await
�� !
_userDisplayManager
�� 1
.
��1 2
UpdateEditorAsync
��2 C
(
��C D
user
��D H
,
��H I
updater
��J Q
:
��Q R"
_updateModelAccessor
��S g
.
��g h
ModelUpdater
��h t
,
��t u
isNew
��v {
:
��{ |
false��} �
)��� �
;��� �
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
shape
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
_userManager
�� +
.
��+ ,
UpdateAsync
��, 7
(
��7 8
user
��8 <
)
��< =
;
��= >
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
string
��) /
.
��/ 0
Empty
��0 5
,
��5 6
error
��7 <
.
��< =
Description
��= H
)
��H I
;
��I J
}
�� 
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
shape
�� !
)
��! "
;
��" #
}
�� 
if
�� 
(
�� 
String
�� 
.
�� 
Equals
�� 
(
�� 
User
�� "
.
��" #
FindFirstValue
��# 1
(
��1 2

ClaimTypes
��2 <
.
��< =
NameIdentifier
��= K
)
��K L
,
��L M
user
��N R
.
��R S
UserId
��S Y
,
��Y Z
StringComparison
��[ k
.
��k l
OrdinalIgnoreCase
��l }
)
��} ~
)
��~ 
{
�� 
await
�� 
_signInManager
�� $
.
��$ % 
RefreshSignInAsync
��% 7
(
��7 8
user
��8 <
)
��< =
;
��= >
}
�� 
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  <
]
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
editingOwnUser
�� 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	returnUrl
��* 3
)
��3 4
)
��4 5
{
�� 
return
�� 
LocalRedirect
�� (
(
��( )
	returnUrl
��) 2
)
��2 3
;
��3 4
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
Edit
��/ 3
)
��3 4
)
��4 5
;
��5 6
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	returnUrl
��* 3
)
��3 4
)
��4 5
{
�� 
return
�� 
LocalRedirect
�� (
(
��( )
	returnUrl
��) 2
)
��2 3
;
��3 4
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
Index
��/ 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Delete
��) /
(
��/ 0
string
��0 6
id
��7 9
)
��9 :
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByIdAsync
��* 7
(
��7 8
id
��8 :
)
��: ;
as
��< >
User
��? C
;
��C D
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageUsers
��N Y
,
��Y Z
user
��[ _
)
��_ `
)
��` a
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
_userManager
�� +
.
��+ ,
DeleteAsync
��, 7
(
��7 8
user
��8 <
)
��< =
;
��= >
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
	_notifier
�� 
.
�� 
Success
�� !
(
��! "
H
��" #
[
��# $
$str
��$ @
]
��@ A
)
��A B
;
��B C
}
�� 
else
�� 
{
�� 
_session
�� 
.
�� 
Cancel
�� 
(
��  
)
��  !
;
��! "
	_notifier
�� 
.
�� 
Error
�� 
(
��  
H
��  !
[
��! "
$str
��" >
]
��> ?
)
��? @
;
��@ A
foreach
�� 
(
�� 
var
�� 
error
�� "
in
��# %
result
��& ,
.
��, -
Errors
��- 3
)
��3 4
{
�� 
	_notifier
�� 
.
�� 
Error
�� #
(
��# $
H
��$ %
[
��% &
error
��& +
.
��+ ,
Description
��, 7
]
��7 8
)
��8 9
;
��9 :
}
�� 
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
Index
��+ 0
)
��0 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
EditPassword
��) 5
(
��5 6
string
��6 <
id
��= ?
)
��? @
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByIdAsync
��* 7
(
��7 8
id
��8 :
)
��: ;
as
��< >
User
��? C
;
��C D
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageUsers
��N Y
,
��Y Z
user
��[ _
)
��_ `
)
��` a
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
model
�� 
=
�� 
new
�� $
ResetPasswordViewModel
�� 2
{
��3 4
Email
��5 :
=
��; <
user
��= A
.
��A B
Email
��B G
}
��H I
;
��I J
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
EditPassword
��) 5
(
��5 6$
ResetPasswordViewModel
��6 L
model
��M R
)
��R S
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByEmailAsync
��* :
(
��: ;
model
��; @
.
��@ A
Email
��A F
)
��F G
as
��H J
User
��K O
;
��O P
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageUsers
��N Y
,
��Y Z
user
��[ _
)
��_ `
)
��` a
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
token
�� 
=
�� 
await
�� !
_userManager
��" .
.
��. /-
GeneratePasswordResetTokenAsync
��/ N
(
��N O
user
��O S
)
��S T
;
��T U
if
�� 
(
�� 
await
�� 
_userService
�� &
.
��& ' 
ResetPasswordAsync
��' 9
(
��9 :
model
��: ?
.
��? @
Email
��@ E
,
��E F
token
��G L
,
��L M
model
��N S
.
��S T
NewPassword
��T _
,
��_ `

ModelState
��a k
.
��k l
AddModelError
��l y
)
��y z
)
��z {
{
�� 
	_notifier
�� 
.
�� 
Success
�� %
(
��% &
H
��& '
[
��' (
$str
��( E
]
��E F
)
��F G
;
��G H
return
�� 
RedirectToAction
�� +
(
��+ ,
nameof
��, 2
(
��2 3
Index
��3 8
)
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �;
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\ChangeEmailController.cs
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
}hh �[
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\ControllerExtensions.cs
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
confirmationEmailSubject	;;s �
,
;;� �
ILogger
;;� �
logger
;;� �
)
;;� �
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
IRegistrationFormEvents	==} �
>
==� �
>
==� �
(
==� �
)
==� �
;
==� �
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
GetSiteSettingsAsync	??~ �
(
??� �
)
??� �
)
??� �
.
??� �
As
??� �
<
??� �"
RegistrationSettings
??� �
>
??� �
(
??� �
)
??� �
;
??� �
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
>	@@ �
>
@@� �
(
@@� �
)
@@� �
;
@@� �
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

modelState	DDx �
.
DD� �
AddModelError
DD� �
(
DD� �
key
DD� �
,
DD� �
message
DD� �
)
DD� �
)
DD� �
,
DD� �

controller
DD� �
.
DD� �

ModelState
DD� �
,
DD� �
logger
DD� �
)
DD� �
;
DD� �
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
EmailConfirmed	HH| �
=
HH� �
!
HH� �
settings
HH� �
.
HH� �$
UsersMustValidateEmail
HH� �
}
HH� �
,
HH� �
model
HH� �
.
HH� �
Password
HH� �
,
HH� �
(
HH� �
key
HH� �
,
HH� �
message
HH� �
)
HH� �
=>
HH� �

controller
HH� �
.
HH� �

ModelState
HH� �
.
HH� �
AddModelError
HH� �
(
HH� �
key
HH� �
,
HH� �
message
HH� �
)
HH� �
)
HH� �
as
HH� �
User
HH� �
;
HH� �
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
subject	``y �
)
``� �
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
;	bb �
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
protocol	ddx �
:
dd� �

controller
dd� �
.
dd� �
HttpContext
dd� �
.
dd� �
Request
dd� �
.
dd� �
Scheme
dd� �
)
dd� �
;
dd� �
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
callbackUrl	ee �
}
ee� �
)
ee� �
;
ee� �
returngg 
callbackUrlgg 
;gg 
}hh 	
}ii 
}jj �c
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\RegistrationController.cs
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
�� 
result
�� 
=
�� 
await
�� 
_userManager
�� +
.
��+ ,
ConfirmEmailAsync
��, =
(
��= >
user
��> B
,
��B C
code
��D H
)
��H I
;
��I J
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
return
�� 
NotFound
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
	Authorize
��	 
]
�� 
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (#
SendVerificationEmail
��) >
(
��> ?
string
��? E
id
��F H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageUsers
��N Y
)
��Y Z
)
��Z [
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByIdAsync
��* 7
(
��7 8
id
��8 :
)
��: ;
as
��< >
User
��? C
;
��C D
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
this
�� 
.
�� -
SendEmailConfirmationTokenAsync
�� :
(
��: ;
user
��; ?
,
��? @
S
��A B
[
��B C
$str
��C Y
]
��Y Z
)
��Z [
;
��[ \
	_notifier
�� 
.
�� 
Success
�� !
(
��! "
H
��" #
[
��# $
$str
��$ >
]
��> ?
)
��? @
;
��@ A
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
AdminController
��+ :
.
��: ;
Index
��; @
)
��@ A
,
��A B
$str
��C J
)
��J K
;
��K L
}
�� 	
private
�� 
IActionResult
�� 
RedirectToLocal
�� -
(
��- .
string
��. 4
	returnUrl
��5 >
)
��> ?
{
�� 	
if
�� 
(
�� 
Url
�� 
.
�� 

IsLocalUrl
�� 
(
�� 
	returnUrl
�� (
)
��( )
)
��) *
{
�� 
return
�� 
Redirect
�� 
(
��  
	returnUrl
��  )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
return
�� 
Redirect
�� 
(
��  
$str
��  $
)
��$ %
;
��% &
}
�� 
}
�� 	
}
�� 
}�� �s
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Controllers\ResetPasswordController.cs
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

modelState	DDy �
.
DD� �
AddModelError
DD� �
(
DD� �
key
DD� �
,
DD� �
message
DD� �
)
DD� �
)
DD� �
,
DD� �

ModelState
DD� �
,
DD� �
_logger
DD� �
)
DD� �
;
DD� �
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
.	SS �
Request
SS� �
.
SS� �
Scheme
SS� �
)
SS� �
;
SS� �
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
LostPasswordUrl	UU{ �
=
UU� �
resetPasswordUrl
UU� �
}
UU� �
)
UU� �
;
UU� �
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
�� )
_passwordRecoveryFormEvents
�� -
.
��- .
InvokeAsync
��. 9
(
��9 :
(
��: ;
e
��; <
,
��< =

modelState
��> H
)
��H I
=>
��J L
e
��M N
.
��N O$
ResettingPasswordAsync
��O e
(
��e f
(
��f g
key
��g j
,
��j k
message
��l s
)
��s t
=>
��u w

modelState��x �
.��� �
AddModelError��� �
(��� �
key��� �
,��� �
message��� �
)��� �
)��� �
,��� �

ModelState��� �
,��� �
_logger��� �
)��� �
;��� �
if
�� 
(
�� 
TryValidateModel
��  
(
��  !
model
��! &
)
��& '
&&
��( *

ModelState
��+ 5
.
��5 6
IsValid
��6 =
)
��= >
{
�� 
if
�� 
(
�� 
await
�� 
_userService
�� &
.
��& ' 
ResetPasswordAsync
��' 9
(
��9 :
model
��: ?
.
��? @
Email
��@ E
,
��E F
Encoding
��G O
.
��O P
UTF8
��P T
.
��T U
	GetString
��U ^
(
��^ _
Convert
��_ f
.
��f g
FromBase64String
��g w
(
��w x
model
��x }
.
��} ~

ResetToken��~ �
)��� �
)��� �
,��� �
model��� �
.��� �
NewPassword��� �
,��� �
(��� �
key��� �
,��� �
message��� �
)��� �
=>��� �

ModelState��� �
.��� �
AddModelError��� �
(��� �
key��� �
,��� �
message��� �
)��� �
)��� �
)��� �
{
�� 
await
�� )
_passwordRecoveryFormEvents
�� 5
.
��5 6
InvokeAsync
��6 A
(
��A B
i
��B C
=>
��D F
i
��G H
.
��H I 
PasswordResetAsync
��I [
(
��[ \
)
��\ ]
,
��] ^
_logger
��_ f
)
��f g
;
��g h
return
�� 
RedirectToLocal
�� *
(
��* +
Url
��+ .
.
��. /
Action
��/ 5
(
��5 6
$str
��6 Q
,
��Q R
$str
��S b
)
��b c
)
��c d
;
��d e
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
IActionResult
�� '
ResetPasswordConfirmation
�� 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
IActionResult
�� 
RedirectToLocal
�� -
(
��- .
string
��. 4
	returnUrl
��5 >
)
��> ?
{
�� 	
if
�� 
(
�� 
Url
�� 
.
�� 

IsLocalUrl
�� 
(
�� 
	returnUrl
�� (
)
��( )
)
��) *
{
�� 
return
�� 
Redirect
�� 
(
��  
	returnUrl
��  )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
return
�� 
Redirect
�� 
(
��  
$str
��  $
)
��$ %
;
��% &
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\CustomUserSettingsPermissions.cs
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
$str	{ �
,
� �
new
� �
[
� �
]
� �
{
� �
Permissions
� �
.
� �
ManageUsers
� �
}
� �
)
� �
;
� �
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
}&& �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\ChangeEmailSettingsDisplayDriver.cs
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
};; �T
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\CustomUserSettingsDisplayDriver.cs
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
CreatePermissionForType	??t �
(
??� �#
contentTypeDefinition
??� �
)
??� �
)
??� �
)
??� �
)
??� �
;
??� �
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
CreatePermissionForType	JJi �
(
JJ� �#
contentTypeDefinition
JJ� �
)
JJ� �
)
JJ� �
)
JJ� �
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
)	]] �
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
}ss �'
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\LoginSettingsDisplayDriver.cs
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
}== �,
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\RegistrationSettingsDisplayDriver.cs
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
}BB �$
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\ResetPasswordSettingsDisplayDriver.cs
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
}== �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\UserButtonsDisplayDriver.cs
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
} �e
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\UserDisplayDriver.cs
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
$str	55y �
)
55� �
,
55� �

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
$str	66z �
)
66� �
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
Permissions	AA} �
.
AA� �
ManageUsers
AA� �
,
AA� �
user
AA� �
)
AA� �
||
AA� �
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
BB� �
.
BB� �
OrdinalIgnoreCase
BB� �
)
BB� �
;
BB� �
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
,	EE �
user
EE� �
)
EE� �
)
EE� �
;
EE� �
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
user	KK| �
)
KK� �
)
KK� �
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
Permissions	XXw �
.
XX� �
ManageUsers
XX� �
,
XX� �
user
XX� �
)
XX� �
||
XX� �
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
YY� �
.
YY� �
OrdinalIgnoreCase
YY� �
)
YY� �
;
YY� �
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
StringComparison	^^q �
.
^^� �
OrdinalIgnoreCase
^^� �
)
^^� �
)
^^� �
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
hh� �
)
hh� �
;
hh� �
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
_logger	qq{ �
)
qq� �
;
qq� �
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
}�� �6
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\UserInformationDisplayDriver.cs
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
StringComparison	CC| �
.
CC� �
OrdinalIgnoreCase
CC� �
)
CC� �
)
CC� �
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
ManageOwnUserInformation	EEu �
)
EE� �
;
EE� �
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
user	II~ �
)
II� �
;
II� �
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
StringComparison	OO| �
.
OO� �
OrdinalIgnoreCase
OO� �
)
OO� �
)
OO� �
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
ManageOwnUserInformation	QQu �
)
QQ� �
;
QQ� �
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
user	UU| �
)
UU� �
;
UU� �
}VV 	
}WW 
}XX ׈
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Drivers\UserRoleDisplayDriver.cs
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
88� �
.
88� �
OrdinalIgnoreCase
88� �
)
88� �
&&
88� �
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
StringComparison	__| �
.
__� �
OrdinalIgnoreCase
__� �
)
__� �
)
__� �
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
(	jj �
x
jj� �
=>
jj� �
x
jj� �
.
jj� �
Role
jj� �
)
jj� �
)
jj� �
;
jj� �
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
;	qq �
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
authorizedSelectedRoleNames	{{e �
.
{{� �
Contains
{{� �
(
{{� �
role
{{� �
,
{{� �
StringComparer
{{� �
.
{{� �
OrdinalIgnoreCase
{{� �
)
{{� �
)
{{� �
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
�� 
(
�� 
var
��  
role
��! %
in
��& (
rolesToRemove
��) 6
)
��6 7
{
�� 
if
�� 
(
�� 
String
�� "
.
��" #
Equals
��# )
(
��) *
role
��* .
,
��. /
AdministratorRole
��0 A
,
��A B
StringComparison
��C S
.
��S T
OrdinalIgnoreCase
��T e
)
��e f
)
��f g
{
�� 
var
�� 
usersOfAdminRole
��  0
=
��1 2
(
��3 4
await
��4 9
_userManager
��: F
.
��F G!
GetUsersInRoleAsync
��G Z
(
��Z [
AdministratorRole
��[ l
)
��l m
)
��m n
.
��n o
Cast
��o s
<
��s t
User
��t x
>
��x y
(
��y z
)
��z {
;
��{ |
if
�� 
(
��  
usersOfAdminRole
��  0
.
��0 1
Count
��1 6
(
��6 7
)
��7 8
==
��9 ;
$num
��< =
&&
��> @
String
��A G
.
��G H
Equals
��H N
(
��N O
user
��O S
.
��S T
UserId
��T Z
,
��Z [
usersOfAdminRole
��\ l
.
��l m
First
��m r
(
��r s
)
��s t
.
��t u
UserId
��u {
,
��{ |
StringComparison��} �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
{
�� 
	_notifier
��  )
.
��) *
Warning
��* 1
(
��1 2
H
��2 3
[
��3 4
$str
��4 s
]
��s t
)
��t u
;
��u v
continue
��  (
;
��( )
}
�� 
else
��  
{
�� 
await
��  %
_userRoleStore
��& 4
.
��4 5!
RemoveFromRoleAsync
��5 H
(
��H I
user
��I M
,
��M N
_userManager
��O [
.
��[ \
NormalizeName
��\ i
(
��i j
role
��j n
)
��n o
,
��o p
default
��q x
(
��x y 
CancellationToken��y �
)��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
await
�� !
_userRoleStore
��" 0
.
��0 1!
RemoveFromRoleAsync
��1 D
(
��D E
user
��E I
,
��I J
_userManager
��K W
.
��W X
NormalizeName
��X e
(
��e f
role
��f j
)
��j k
,
��k l
default
��m t
(
��t u 
CancellationToken��u �
)��� �
)��� �
;��� �
}
�� 
}
�� 
foreach
�� 
(
�� 
var
��  
role
��! %
in
��& ()
authorizedSelectedRoleNames
��) D
)
��D E
{
�� 
if
�� 
(
�� 
!
�� 
await
�� "
_userRoleStore
��# 1
.
��1 2
IsInRoleAsync
��2 ?
(
��? @
user
��@ D
,
��D E
_userManager
��F R
.
��R S
NormalizeName
��S `
(
��` a
role
��a e
)
��e f
,
��f g
default
��h o
(
��o p 
CancellationToken��p �
)��� �
)��� �
)��� �
{
�� 
await
�� !
_userRoleStore
��" 0
.
��0 1
AddToRoleAsync
��1 ?
(
��? @
user
��@ D
,
��D E
_userManager
��F R
.
��R S
NormalizeName
��S `
(
��` a
role
��a e
)
��e f
,
��f g
default
��h o
(
��o p 
CancellationToken��p �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
Edit
�� 
(
�� 
user
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� &
<
��& '
string
��' -
>
��- .
>
��. /
GetRoleNamesAsync
��0 A
(
��A B
)
��B C
{
�� 	
var
�� 
	roleNames
�� 
=
�� 
await
�� !
_roleService
��" .
.
��. /
GetRoleNamesAsync
��/ @
(
��@ A
)
��A B
;
��B C
return
�� 
	roleNames
�� 
.
�� 
Except
�� #
(
��# $
new
��$ '
[
��' (
]
��( )
{
��* +
$str
��, 7
,
��7 8
$str
��9 H
}
��I J
,
��J K
StringComparer
��L Z
.
��Z [
OrdinalIgnoreCase
��[ l
)
��l m
;
��m n
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� &
<
��& '
string
��' -
>
��- .
>
��. /)
GetAuthorizedRoleNamesAsync
��0 K
(
��K L
IEnumerable
��L W
<
��W X
string
��X ^
>
��^ _
	roleNames
��` i
)
��i j
{
�� 	
var
�� !
authorizedRoleNames
�� #
=
��$ %
new
��& )
List
��* .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
�� 
roleName
�� !
in
��" $
	roleNames
��% .
)
��. /
{
�� 
if
�� 
(
�� 
await
�� #
_authorizationService
�� /
.
��/ 0
AuthorizeAsync
��0 >
(
��> ?"
_httpContextAccessor
��? S
.
��S T
HttpContext
��T _
.
��_ `
User
��` d
,
��d e
OrchardCore
��f q
.
��q r
Roles
��r w
.
��w x 
CommonPermissions��x �
.��� �-
CreatePermissionForAssignRole��� �
(��� �
roleName��� �
)��� �
)��� �
)��� �
{
�� !
authorizedRoleNames
�� '
.
��' (
Add
��( +
(
��+ ,
roleName
��, 4
)
��4 5
;
��5 6
}
�� 
}
�� 
return
�� !
authorizedRoleNames
�� &
;
��& '
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\GetUsersFilter.cs
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
})) �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\HasClaimFilter.cs
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
} �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\HasPermissionFilter.cs
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
}77 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\IsInRoleFilter.cs
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
StringComparison	r �
.
� �
OrdinalIgnoreCase
� �
)
� �
)
� �
==
� �
true
� �
;
� �
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
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\UserEmailFilter.cs
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
}++ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\UserIdFilter.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Liquid\UserLiquidTemplateEventHandler.cs
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
}** �
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
]77 �d
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
�� 
int
�� 
UpdateFrom6
�� 
(
�� 
)
��  
{
�� 	
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
int
�� 
>
�� 
UpdateFrom7Async
�� /
(
��/ 0
)
��0 1
{
�� 	
var
�� 
users
�� 
=
�� 
await
�� 
_session
�� &
.
��& '
Query
��' ,
<
��, -
User
��- 1
,
��1 2
	UserIndex
��3 <
>
��< =
(
��= >
u
��> ?
=>
��@ B
u
��C D
.
��D E 
NormalizedUserName
��E W
.
��W X
Contains
��X `
(
��` a
$str
��a d
)
��d e
)
��e f
.
��f g
	ListAsync
��g p
(
��p q
)
��q r
;
��r s
foreach
�� 
(
�� 
var
�� 
user
�� 
in
��  
users
��! &
)
��& '
{
�� 
user
�� 
.
�� 
UserName
�� 
=
�� 
user
��  $
.
��$ %
UserName
��% -
.
��- .
Replace
��. 5
(
��5 6
$char
��6 9
,
��9 :
$char
��; >
)
��> ?
;
��? @
user
�� 
.
��  
NormalizedUserName
�� '
=
��( )
user
��* .
.
��. / 
NormalizedUserName
��/ A
.
��A B
Replace
��B I
(
��I J
$char
��J M
,
��M N
$char
��O R
)
��R S
;
��S T
_session
�� 
.
�� 
Save
�� 
(
�� 
user
�� "
)
��" #
;
��# $
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
UpdateFrom8
�� 
(
�� 
)
��  
{
�� 	
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
	UserIndex
��* 3
>
��3 4
(
��4 5
table
��5 :
=>
��; =
table
��> C
.
�� 
CreateIndex
�� 
(
�� 
$str
�� 7
,
��7 8
$str
��  
,
��  !
$str
�� 
,
�� 
$str
�� (
,
��( )
$str
�� %
,
��% &
$str
�� 
)
��  
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *"
UserByLoginInfoIndex
��* >
>
��> ?
(
��? @
table
��@ E
=>
��F H
table
��I N
.
�� 
CreateIndex
�� 
(
�� 
$str
�� B
,
��B C
$str
��  
,
��  !
$str
�� #
,
��# $
$str
�� !
)
��! "
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
UserByClaimIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� >
,
��> ?
$str
��  
,
��  !
nameof
�� 
(
�� 
UserByClaimIndex
�� +
.
��+ ,
	ClaimType
��, 5
)
��5 6
,
��6 7
nameof
�� 
(
�� 
UserByClaimIndex
�� +
.
��+ ,

ClaimValue
��, 6
)
��6 7
)
��7 8
)
�� 
;
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\ChangeEmailSettings.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\LoginSettings.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\RegistrationSettings.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\ResetPasswordSettings.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Models\UserRegistrationType.cs
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
}		 �&
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Permissions.cs
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
$str	p �
,
� �
new
� �

Permission
� �
[
� �
]
� �
{
� �
ManageUsers
� �
}
� �
)
� �
;
� �
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
}FF �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Properties\AssemblyInfo.cs
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
]7 8�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\DefaultUserIdGenerator.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\EmailClaimsProvider.cs
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
Boolean	''| �
)
''� �
)
''� �
;
''� �
}(( 
})) 	
}** 
}++ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\MembershipService.cs
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
}-- �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\RecipeEnvironmentSuperUserProvider.cs
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
}00 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\SetupEventHandler.cs
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
ToString	x �
(
� �
)
� �
:
� �
String
� �
.
� �
Empty
� �
,
� �
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
String	| �
.
� �
Empty
� �
,
� �
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
Empty	~ �
,
� �
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
}'' �6
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\UserAuthorizationHandler.cs
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
requirement	&&x �
)
&&� �
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
IEnumerable	WWw �
<
WW� �
string
WW� �
>
WW� �
	roleNames
WW� �
)
WW� �
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
roleName	[[| �
)
[[� �
)
[[� �
)
[[� �
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
ClaimsPrincipal	ddr �
user
dd� �
,
dd� �
IEnumerable
dd� �
<
dd� �
string
dd� �
>
dd� �
	roleNames
dd� �
)
dd� �
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
roleName	hh{ �
)
hh� �
)
hh� �
)
hh� �
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
}qq �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\UserRoleRemovedEventHandler.cs
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
} �$
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Services\UsersThemeSelector.cs
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
}KK ��
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
serviceProvider	99s �
)
99� �
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
�� 
.
�� 
AddSecurity
��  
(
��  !
)
��! "
;
��" #
services
�� 
.
�� 
TryAddSingleton
�� $
<
��$ %
ILookupNormalizer
��% 6
,
��6 7,
UpperInvariantLookupNormalizer
��8 V
>
��V W
(
��W X
)
��X Y
;
��Y Z
services
�� 
.
�� 
AddIdentity
��  
<
��  !
IUser
��! &
,
��& '
IRole
��( -
>
��- .
(
��. /
options
��/ 6
=>
��7 9
{
�� 
options
�� 
.
�� 
User
�� 
.
�� '
AllowedUserNameCharacters
�� 6
=
��7 8
$str
��9 }
;
��} ~
options
�� 
.
�� 
User
�� 
.
��  
RequireUniqueEmail
�� /
=
��0 1
true
��2 6
;
��6 7
}
�� 
)
�� 
.
�� &
AddDefaultTokenProviders
�� %
(
��% &
)
��& '
;
��' (
services
�� 
.
�� 
AddAuthentication
�� &
(
��& '
options
��' .
=>
��/ 1
options
��2 9
.
��9 :"
DefaultSignOutScheme
��: N
=
��O P
IdentityConstants
��Q b
.
��b c
ApplicationScheme
��c t
)
��t u
;
��u v
services
�� 
.
�� 
TryAddScoped
�� !
<
��! "
	UserStore
��" +
>
��+ ,
(
��, -
)
��- .
;
��. /
services
�� 
.
�� 
TryAddScoped
�� !
<
��! "

IUserStore
��" ,
<
��, -
IUser
��- 2
>
��2 3
>
��3 4
(
��4 5
sp
��5 7
=>
��8 :
sp
��; =
.
��= > 
GetRequiredService
��> P
<
��P Q
	UserStore
��Q Z
>
��Z [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _
services
�� 
.
�� 
TryAddScoped
�� !
<
��! "
IUserRoleStore
��" 0
<
��0 1
IUser
��1 6
>
��6 7
>
��7 8
(
��8 9
sp
��9 ;
=>
��< >
sp
��? A
.
��A B 
GetRequiredService
��B T
<
��T U
	UserStore
��U ^
>
��^ _
(
��_ `
)
��` a
)
��a b
;
��b c
services
�� 
.
�� 
TryAddScoped
�� !
<
��! " 
IUserPasswordStore
��" 4
<
��4 5
IUser
��5 :
>
��: ;
>
��; <
(
��< =
sp
��= ?
=>
��@ B
sp
��C E
.
��E F 
GetRequiredService
��F X
<
��X Y
	UserStore
��Y b
>
��b c
(
��c d
)
��d e
)
��e f
;
��f g
services
�� 
.
�� 
TryAddScoped
�� !
<
��! "
IUserEmailStore
��" 1
<
��1 2
IUser
��2 7
>
��7 8
>
��8 9
(
��9 :
sp
��: <
=>
��= ?
sp
��@ B
.
��B C 
GetRequiredService
��C U
<
��U V
	UserStore
��V _
>
��_ `
(
��` a
)
��a b
)
��b c
;
��c d
services
�� 
.
�� 
TryAddScoped
�� !
<
��! "%
IUserSecurityStampStore
��" 9
<
��9 :
IUser
��: ?
>
��? @
>
��@ A
(
��A B
sp
��B D
=>
��E G
sp
��H J
.
��J K 
GetRequiredService
��K ]
<
��] ^
	UserStore
��^ g
>
��g h
(
��h i
)
��i j
)
��j k
;
��k l
services
�� 
.
�� 
TryAddScoped
�� !
<
��! "
IUserLoginStore
��" 1
<
��1 2
IUser
��2 7
>
��7 8
>
��8 9
(
��9 :
sp
��: <
=>
��= ?
sp
��@ B
.
��B C 
GetRequiredService
��C U
<
��U V
	UserStore
��V _
>
��_ `
(
��` a
)
��a b
)
��b c
;
��c d
services
�� 
.
�� 
TryAddScoped
�� !
<
��! "
IUserClaimStore
��" 1
<
��1 2
IUser
��2 7
>
��7 8
>
��8 9
(
��9 :
sp
��: <
=>
��= ?
sp
��@ B
.
��B C 
GetRequiredService
��C U
<
��U V
	UserStore
��V _
>
��_ `
(
��` a
)
��a b
)
��b c
;
��c d
services
�� 
.
�� 
TryAddScoped
�� !
<
��! "+
IUserAuthenticationTokenStore
��" ?
<
��? @
IUser
��@ E
>
��E F
>
��F G
(
��G H
sp
��H J
=>
��K M
sp
��N P
.
��P Q 
GetRequiredService
��Q c
<
��c d
	UserStore
��d m
>
��m n
(
��n o
)
��o p
)
��p q
;
��q r
services
�� 
.
�� (
ConfigureApplicationCookie
�� /
(
��/ 0
options
��0 7
=>
��8 :
{
�� 
var
�� 
userOptions
�� 
=
��  !

ShellScope
��" ,
.
��, -
Services
��- 5
.
��5 6 
GetRequiredService
��6 H
<
��H I
IOptions
��I Q
<
��Q R
UserOptions
��R ]
>
��] ^
>
��^ _
(
��_ `
)
��` a
;
��a b
options
�� 
.
�� 
Cookie
�� 
.
�� 
Name
�� #
=
��$ %
$str
��& 1
+
��2 3
HttpUtility
��4 ?
.
��? @
	UrlEncode
��@ I
(
��I J
_tenantName
��J U
)
��U V
;
��V W
options
�� 
.
�� 
	LoginPath
�� !
=
��" #
$str
��$ '
+
��( )
userOptions
��* 5
.
��5 6
Value
��6 ;
.
��; <
	LoginPath
��< E
;
��E F
options
�� 
.
�� 

LogoutPath
�� "
=
��# $
$str
��% (
+
��) *
userOptions
��+ 6
.
��6 7
Value
��7 <
.
��< =

LogoffPath
��= G
;
��G H
options
�� 
.
�� 
AccessDeniedPath
�� (
=
��) *
$str
��+ 7
;
��7 8
}
�� 
)
�� 
;
�� 
services
�� 
.
�� 
AddSingleton
�� !
<
��! "
IIndexProvider
��" 0
,
��0 1
UserIndexProvider
��2 C
>
��C D
(
��D E
)
��E F
;
��F G
services
�� 
.
�� 
AddSingleton
�� !
<
��! "
IIndexProvider
��" 0
,
��0 1)
UserByRoleNameIndexProvider
��2 M
>
��M N
(
��N O
)
��O P
;
��P Q
services
�� 
.
�� 
AddSingleton
�� !
<
��! "
IIndexProvider
��" 0
,
��0 1*
UserByLoginInfoIndexProvider
��2 N
>
��N O
(
��O P
)
��P Q
;
��Q R
services
�� 
.
�� 
AddSingleton
�� !
<
��! "
IIndexProvider
��" 0
,
��0 1&
UserByClaimIndexProvider
��2 J
>
��J K
(
��K L
)
��L M
;
��M N
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDataMigration
�� -
,
��- .

Migrations
��/ 9
>
��9 :
(
��: ;
)
��; <
;
��< =
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IUserService
�� +
,
��+ ,
UserService
��- 8
>
��8 9
(
��9 :
)
��: ;
;
��; <
services
�� 
.
�� 
	AddScoped
�� 
<
�� )
IUserClaimsPrincipalFactory
�� :
<
��: ;
IUser
��; @
>
��@ A
,
��A B7
)DefaultUserClaimsPrincipalProviderFactory
��C l
>
��l m
(
��m n
)
��n o
;
��o p
services
�� 
.
�� 
	AddScoped
�� 
<
�� !
IUserClaimsProvider
�� 2
,
��2 3!
EmailClaimsProvider
��4 G
>
��G H
(
��H I
)
��I J
;
��J K
services
�� 
.
�� 
AddIdGeneration
�� $
(
��$ %
)
��% &
;
��& '
services
�� 
.
�� 
AddSingleton
�� !
<
��! "
IUserIdGenerator
��" 2
,
��2 3$
DefaultUserIdGenerator
��4 J
>
��J K
(
��K L
)
��L M
;
��M N
services
�� 
.
�� 
	AddScoped
�� 
<
�� #
IAuthorizationHandler
�� 4
,
��4 5&
UserAuthorizationHandler
��6 N
>
��N O
(
��O P
)
��P Q
;
��Q R
services
�� 
.
�� 
	AddScoped
�� 
<
��  
IMembershipService
�� 1
,
��1 2
MembershipService
��3 D
>
��D E
(
��E F
)
��F G
;
��G H
services
�� 
.
�� 
	AddScoped
�� 
<
��  
ISetupEventHandler
�� 1
,
��1 2
SetupEventHandler
��3 D
>
��D E
(
��E F
)
��F G
;
��G H
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
ICommandHandler
�� .
,
��. /
UserCommands
��0 <
>
��< =
(
��= >
)
��> ?
;
��? @
services
�� 
.
�� 
	AddScoped
�� 
<
�� &
IRoleRemovedEventHandler
�� 7
,
��7 8)
UserRoleRemovedEventHandler
��9 T
>
��T U
(
��U V
)
��V W
;
��W X
services
�� 
.
�� 
	AddScoped
�� 
<
�� !
IPermissionProvider
�� 2
,
��2 3
Permissions
��4 ?
>
��? @
(
��@ A
)
��A B
;
��B C
services
�� 
.
�� 
	AddScoped
�� 
<
�� !
INavigationProvider
�� 2
,
��2 3
	AdminMenu
��4 =
>
��= >
(
��> ?
)
��? @
;
��@ A
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
ISite
��. 3
>
��3 4
,
��4 5(
LoginSettingsDisplayDriver
��6 P
>
��P Q
(
��Q R
)
��R S
;
��S T
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayManager
�� .
<
��. /
User
��/ 3
>
��3 4
,
��4 5
DisplayManager
��6 D
<
��D E
User
��E I
>
��I J
>
��J K
(
��K L
)
��L M
;
��M N
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
User
��. 2
>
��2 3
,
��3 4
UserDisplayDriver
��5 F
>
��F G
(
��G H
)
��H I
;
��I J
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
User
��. 2
>
��2 3
,
��3 4#
UserRoleDisplayDriver
��5 J
>
��J K
(
��K L
)
��L M
;
��M N
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
User
��. 2
>
��2 3
,
��3 4*
UserInformationDisplayDriver
��5 Q
>
��Q R
(
��R S
)
��S T
;
��T U
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
User
��. 2
>
��2 3
,
��3 4&
UserButtonsDisplayDriver
��5 M
>
��M N
(
��N O
)
��O P
;
��P Q
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IThemeSelector
�� -
,
��- . 
UsersThemeSelector
��/ A
>
��A B
(
��B C
)
��C D
;
��D E
services
�� 
.
�� 
	AddScoped
�� 
<
�� (
IRecipeEnvironmentProvider
�� 9
,
��9 :0
"RecipeEnvironmentSuperUserProvider
��; ]
>
��] ^
(
��^ _
)
��_ `
;
��` a
}
�� 	
}
�� 
[
�� 
RequireFeatures
�� 
(
�� 
$str
�� )
)
��) *
]
��* +
public
�� 

class
�� 
LiquidStartup
�� 
:
��  
StartupBase
��! ,
{
�� 
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
	AddScoped
�� 
<
�� )
ILiquidTemplateEventHandler
�� :
,
��: ;,
UserLiquidTemplateEventHandler
��< Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
services
�� 
.
�� 
AddLiquidFilter
�� $
<
��$ %!
HasPermissionFilter
��% 8
>
��8 9
(
��9 :
$str
��: J
)
��J K
;
��K L
services
�� 
.
�� 
AddLiquidFilter
�� $
<
��$ %
HasClaimFilter
��% 3
>
��3 4
(
��4 5
$str
��5 @
)
��@ A
;
��A B
services
�� 
.
�� 
AddLiquidFilter
�� $
<
��$ %
IsInRoleFilter
��% 3
>
��3 4
(
��4 5
$str
��5 A
)
��A B
;
��B C
services
�� 
.
�� 
AddLiquidFilter
�� $
<
��$ %
UserEmailFilter
��% 4
>
��4 5
(
��5 6
$str
��6 B
)
��B C
;
��C D
services
�� 
.
�� 
AddLiquidFilter
�� $
<
��$ %
UserIdFilter
��% 1
>
��1 2
(
��2 3
$str
��3 <
)
��< =
;
��= >
services
�� 
.
�� 
AddLiquidFilter
�� $
<
��$ %
UsersByIdFilter
��% 4
>
��4 5
(
��5 6
$str
��6 C
)
��C D
;
��D E
}
�� 	
}
�� 
[
�� 
RequireFeatures
�� 
(
�� 
$str
�� -
)
��- .
]
��. /
public
�� 

class
�� $
LoginDeploymentStartup
�� '
:
��( )
StartupBase
��* 5
{
�� 
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
AddTransient
�� !
<
��! "
IDeploymentSource
��" 3
,
��3 42
$SiteSettingsPropertyDeploymentSource
��5 Y
<
��Y Z
LoginSettings
��Z g
>
��g h
>
��h i
(
��i j
)
��j k
;
��k l
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
DeploymentStep
��. <
>
��< =
>
��= >
(
��> ?
sp
��? A
=>
��B D
{
�� 
var
�� 
S
�� 
=
�� 
sp
�� 
.
�� 

GetService
�� %
<
��% &
IStringLocalizer
��& 6
<
��6 7$
LoginDeploymentStartup
��7 M
>
��M N
>
��N O
(
��O P
)
��P Q
;
��Q R
return
�� 
new
�� 6
(SiteSettingsPropertyDeploymentStepDriver
�� C
<
��C D
LoginSettings
��D Q
>
��Q R
(
��R S
S
��S T
[
��T U
$str
��U e
]
��e f
,
��f g
S
��h i
[
��i j
$str��j �
]��� �
)��� �
;��� �
}
�� 
)
�� 
;
�� 
services
�� 
.
�� 
AddSingleton
�� !
<
��! "$
IDeploymentStepFactory
��" 8
>
��8 9
(
��9 :
new
��: =7
)SiteSettingsPropertyDeploymentStepFactory
��> g
<
��g h
LoginSettings
��h u
>
��u v
(
��v w
)
��w x
)
��x y
;
��y z
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� ,
)
��, -
]
��- .
public
�� 

class
��  
ChangeEmailStartup
�� #
:
��$ %
StartupBase
��& 1
{
�� 
private
�� 
const
�� 
string
�� 
ChangeEmailPath
�� ,
=
��- .
$str
��/ <
;
��< =
private
�� 
const
�� 
string
�� )
ChangeEmailConfirmationPath
�� 8
=
��9 :
$str
��; T
;
��T U
static
��  
ChangeEmailStartup
�� !
(
��! "
)
��" #
{
�� 	
TemplateContext
�� 
.
�� (
GlobalMemberAccessStrategy
�� 6
.
��6 7
Register
��7 ?
<
��? @"
ChangeEmailViewModel
��@ T
>
��T U
(
��U V
)
��V W
;
��W X
}
�� 	
public
�� 
override
�� 
void
�� 
	Configure
�� &
(
��& '!
IApplicationBuilder
��' :
app
��; >
,
��> ?#
IEndpointRouteBuilder
��@ U
routes
��V \
,
��\ ]
IServiceProvider
��^ n
serviceProvider
��o ~
)
��~ 
{
�� 	
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� #
,
��# $
areaName
�� 
:
�� 
$str
�� -
,
��- .
pattern
�� 
:
�� 
ChangeEmailPath
�� (
,
��( )
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,
$str
��- :
,
��: ;
action
��< B
=
��C D
$str
��E L
}
��M N
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� /
,
��/ 0
areaName
�� 
:
�� 
$str
�� -
,
��- .
pattern
�� 
:
�� )
ChangeEmailConfirmationPath
�� 4
,
��4 5
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,
$str
��- :
,
��: ;
action
��< B
=
��C D
$str
��E ^
}
��_ `
)
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
	AddScoped
�� 
<
�� !
INavigationProvider
�� 2
,
��2 3"
ChangeEmailAdminMenu
��4 H
>
��H I
(
��I J
)
��J K
;
��K L
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
ISite
��. 3
>
��3 4
,
��4 5.
 ChangeEmailSettingsDisplayDriver
��6 V
>
��V W
(
��W X
)
��X Y
;
��Y Z
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� ,
)
��, -
]
��- .
[
�� 
RequireFeatures
�� 
(
�� 
$str
�� -
)
��- .
]
��. /
public
�� 

class
�� *
ChangeEmailDeploymentStartup
�� -
:
��. /
StartupBase
��0 ;
{
�� 
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
AddTransient
�� !
<
��! "
IDeploymentSource
��" 3
,
��3 42
$SiteSettingsPropertyDeploymentSource
��5 Y
<
��Y Z!
ChangeEmailSettings
��Z m
>
��m n
>
��n o
(
��o p
)
��p q
;
��q r
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
DeploymentStep
��. <
>
��< =
>
��= >
(
��> ?
sp
��? A
=>
��B D
{
�� 
var
�� 
S
�� 
=
�� 
sp
�� 
.
�� 

GetService
�� %
<
��% &
IStringLocalizer
��& 6
<
��6 7*
ChangeEmailDeploymentStartup
��7 S
>
��S T
>
��T U
(
��U V
)
��V W
;
��W X
return
�� 
new
�� 6
(SiteSettingsPropertyDeploymentStepDriver
�� C
<
��C D!
ChangeEmailSettings
��D W
>
��W X
(
��X Y
S
��Y Z
[
��Z [
$str
��[ r
]
��r s
,
��s t
S
��u v
[
��v w
$str��w �
]��� �
)��� �
;��� �
}
�� 
)
�� 
;
�� 
services
�� 
.
�� 
AddSingleton
�� !
<
��! "$
IDeploymentStepFactory
��" 8
>
��8 9
(
��9 :
new
��: =7
)SiteSettingsPropertyDeploymentStepFactory
��> g
<
��g h!
ChangeEmailSettings
��h {
>
��{ |
(
��| }
)
��} ~
)
��~ 
;�� �
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� -
)
��- .
]
��. /
public
�� 

class
�� !
RegistrationStartup
�� $
:
��% &
StartupBase
��' 2
{
�� 
private
�� 
const
�� 
string
�� 
RegisterPath
�� )
=
��* +
$str
��, 6
;
��6 7
static
�� !
RegistrationStartup
�� "
(
��" #
)
��# $
{
�� 	
TemplateContext
�� 
.
�� (
GlobalMemberAccessStrategy
�� 6
.
��6 7
Register
��7 ?
<
��? @#
ConfirmEmailViewModel
��@ U
>
��U V
(
��V W
)
��W X
;
��X Y
}
�� 	
public
�� 
override
�� 
void
�� 
	Configure
�� &
(
��& '!
IApplicationBuilder
��' :
app
��; >
,
��> ?#
IEndpointRouteBuilder
��@ U
routes
��V \
,
��\ ]
IServiceProvider
��^ n
serviceProvider
��o ~
)
��~ 
{
�� 	
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
��  
,
��  !
areaName
�� 
:
�� 
$str
�� -
,
��- .
pattern
�� 
:
�� 
RegisterPath
�� %
,
��% &
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,
$str
��- ;
,
��; <
action
��= C
=
��D E
$str
��F P
}
��Q R
)
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
	AddScoped
�� 
<
�� !
INavigationProvider
�� 2
,
��2 3#
RegistrationAdminMenu
��4 I
>
��I J
(
��J K
)
��K L
;
��L M
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
ISite
��. 3
>
��3 4
,
��4 5/
!RegistrationSettingsDisplayDriver
��6 W
>
��W X
(
��X Y
)
��Y Z
;
��Z [
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� -
)
��- .
]
��. /
[
�� 
RequireFeatures
�� 
(
�� 
$str
�� -
)
��- .
]
��. /
public
�� 

class
�� +
RegistrationDeploymentStartup
�� .
:
��/ 0
StartupBase
��1 <
{
�� 
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
AddTransient
�� !
<
��! "
IDeploymentSource
��" 3
,
��3 42
$SiteSettingsPropertyDeploymentSource
��5 Y
<
��Y Z"
RegistrationSettings
��Z n
>
��n o
>
��o p
(
��p q
)
��q r
;
��r s
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
DeploymentStep
��. <
>
��< =
>
��= >
(
��> ?
sp
��? A
=>
��B D
{
�� 
var
�� 
S
�� 
=
�� 
sp
�� 
.
�� 

GetService
�� %
<
��% &
IStringLocalizer
��& 6
<
��6 7+
RegistrationDeploymentStartup
��7 T
>
��T U
>
��U V
(
��V W
)
��W X
;
��X Y
return
�� 
new
�� 6
(SiteSettingsPropertyDeploymentStepDriver
�� C
<
��C D"
RegistrationSettings
��D X
>
��X Y
(
��Y Z
S
��Z [
[
��[ \
$str
��\ s
]
��s t
,
��t u
S
��v w
[
��w x
$str��x �
]��� �
)��� �
;��� �
}
�� 
)
�� 
;
�� 
services
�� 
.
�� 
AddSingleton
�� !
<
��! "$
IDeploymentStepFactory
��" 8
>
��8 9
(
��9 :
new
��: =7
)SiteSettingsPropertyDeploymentStepFactory
��> g
<
��g h"
RegistrationSettings
��h |
>
��| }
(
��} ~
)
��~ 
)�� �
;��� �
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 

class
�� "
ResetPasswordStartup
�� %
:
��& '
StartupBase
��( 3
{
�� 
private
�� 
const
�� 
string
��  
ForgotPasswordPath
�� /
=
��0 1
$str
��2 B
;
��B C
private
�� 
const
�� 
string
�� ,
ForgotPasswordConfirmationPath
�� ;
=
��< =
$str
��> Z
;
��Z [
private
�� 
const
�� 
string
�� 
ResetPasswordPath
�� .
=
��/ 0
$str
��1 @
;
��@ A
private
�� 
const
�� 
string
�� +
ResetPasswordConfirmationPath
�� :
=
��; <
$str
��= X
;
��X Y
static
�� "
ResetPasswordStartup
�� #
(
��# $
)
��$ %
{
�� 	
TemplateContext
�� 
.
�� (
GlobalMemberAccessStrategy
�� 6
.
��6 7
Register
��7 ?
<
��? @#
LostPasswordViewModel
��@ U
>
��U V
(
��V W
)
��W X
;
��X Y
}
�� 	
public
�� 
override
�� 
void
�� 
	Configure
�� &
(
��& '!
IApplicationBuilder
��' :
app
��; >
,
��> ?#
IEndpointRouteBuilder
��@ U
routes
��V \
,
��\ ]
IServiceProvider
��^ n
serviceProvider
��o ~
)
��~ 
{
�� 	
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� &
,
��& '
areaName
�� 
:
�� 
$str
�� -
,
��- .
pattern
�� 
:
��  
ForgotPasswordPath
�� +
,
��+ ,
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,
$str
��- <
,
��< =
action
��> D
=
��E F
$str
��G W
}
��X Y
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� 2
,
��2 3
areaName
�� 
:
�� 
$str
�� -
,
��- .
pattern
�� 
:
�� ,
ForgotPasswordConfirmationPath
�� 7
,
��7 8
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,
$str
��- <
,
��< =
action
��> D
=
��E F
$str
��G c
}
��d e
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� %
,
��% &
areaName
�� 
:
�� 
$str
�� -
,
��- .
pattern
�� 
:
�� 
ResetPasswordPath
�� *
,
��* +
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,
$str
��- <
,
��< =
action
��> D
=
��E F
$str
��G V
}
��W X
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� 1
,
��1 2
areaName
�� 
:
�� 
$str
�� -
,
��- .
pattern
�� 
:
�� +
ResetPasswordConfirmationPath
�� 6
,
��6 7
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,
$str
��- <
,
��< =
action
��> D
=
��E F
$str
��G b
}
��c d
)
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
	AddScoped
�� 
<
�� !
INavigationProvider
�� 2
,
��2 3$
ResetPasswordAdminMenu
��4 J
>
��J K
(
��K L
)
��L M
;
��M N
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
ISite
��. 3
>
��3 4
,
��4 50
"ResetPasswordSettingsDisplayDriver
��6 X
>
��X Y
(
��Y Z
)
��Z [
;
��[ \
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� .
)
��. /
]
��/ 0
[
�� 
RequireFeatures
�� 
(
�� 
$str
�� -
)
��- .
]
��. /
public
�� 

class
�� ,
ResetPasswordDeploymentStartup
�� /
:
��0 1
StartupBase
��2 =
{
�� 
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
AddTransient
�� !
<
��! "
IDeploymentSource
��" 3
,
��3 42
$SiteSettingsPropertyDeploymentSource
��5 Y
<
��Y Z#
ResetPasswordSettings
��Z o
>
��o p
>
��p q
(
��q r
)
��r s
;
��s t
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
DeploymentStep
��. <
>
��< =
>
��= >
(
��> ?
sp
��? A
=>
��B D
{
�� 
var
�� 
S
�� 
=
�� 
sp
�� 
.
�� 

GetService
�� %
<
��% &
IStringLocalizer
��& 6
<
��6 7,
ResetPasswordDeploymentStartup
��7 U
>
��U V
>
��V W
(
��W X
)
��X Y
;
��Y Z
return
�� 
new
�� 6
(SiteSettingsPropertyDeploymentStepDriver
�� C
<
��C D#
ResetPasswordSettings
��D Y
>
��Y Z
(
��Z [
S
��[ \
[
��\ ]
$str
��] v
]
��v w
,
��w x
S
��y z
[
��z {
$str��{ �
]��� �
)��� �
;��� �
}
�� 
)
�� 
;
�� 
services
�� 
.
�� 
AddSingleton
�� !
<
��! "$
IDeploymentStepFactory
��" 8
>
��8 9
(
��9 :
new
��: =7
)SiteSettingsPropertyDeploymentStepFactory
��> g
<
��g h#
ResetPasswordSettings
��h }
>
��} ~
(
��~ 
)�� �
)��� �
;��� �
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� 3
)
��3 4
]
��4 5
public
�� 

class
�� '
CustomUserSettingsStartup
�� *
:
��+ ,
StartupBase
��- 8
{
�� 
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
User
��. 2
>
��2 3
,
��3 4-
CustomUserSettingsDisplayDriver
��5 T
>
��T U
(
��U V
)
��V W
;
��W X
services
�� 
.
�� 
	AddScoped
�� 
<
�� !
IPermissionProvider
�� 2
,
��2 3+
CustomUserSettingsPermissions
��4 Q
>
��Q R
(
��R S
)
��S T
;
��T U
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Drivers\UserTimeZoneDisplayDriver.cs
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
BuildEditorContext	{ �
context
� �
)
� �
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
}-- �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Models\UserTimeZone.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Services\UserTimeZoneSelector.cs
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
} �1
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Services\UserTimeZoneService.cs
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
SlidingExpiration	NNo �
=
NN� �
SlidingExpiration
NN� �
}
NN� �
)
NN� �
;
NN� �
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
}WW �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\Startup.cs
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
serviceProvider	s �
)
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\TimeZone\ViewModel\UserTimeZoneViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ChangeEmailViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ChangePasswordViewModel.cs
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
(	"" �"
PasswordConfirmation
""� �
)
""� �
}
""� �
)
""� �
;
""� �
}## 
}$$ 	
}%% 
}&& �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ConfirmEmailViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\CustomUserSettingsEditViewModel.cs
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
 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\EditUserInformationViewModel.cs
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
}   �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\EditUserRoleViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\EditUserViewModel.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ExternalLoginsViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ForgotPasswordViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\LinkExternalLoginViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\LoginViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\LostPasswordViewModel.cs
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
} �0
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\RegisterExternalLoginViewModel.cs
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
new	== �
[
==� �
]
==� �
{
==� �
$str
==� �
}
==� �
)
==� �
;
==� �
}>> 
}?? 	
}@@ 
}AA �&
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\RegisterViewModel.cs
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
(	00 �
ConfirmPassword
00� �
)
00� �
}
00� �
)
00� �
;
00� �
}11 
}22 	
}33 
}44 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\RemoveLoginViewModel.cs
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
} �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\ResetPasswordViewModel.cs
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
(	++ �"
PasswordConfirmation
++� �
)
++� �
}
++� �
)
++� �
;
++� �
},, 
}-- 	
}.. 
}// �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\SummaryAdminUserViewModel.cs
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
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\ViewModels\UsersIndexViewModel.cs
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
}>> �/
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\AssignUserRoleTask.cs
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
expressionvaluator	y �
,
� �
IStringLocalizer
� �
<
� � 
AssignUserRoleTask
� �
>
� �
	localizer
� �
)
� �
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
activityContext	//{ �
)
//� �
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
ActivityContext	44s �
activityContext
44� �
)
44� �
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
}JJ �x
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\RegisterUserTask.cs
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
activityContext	QQ{ �
)
QQ� �
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
ActivityContext	WWs �
activityContext
WW� �
)
WW� �
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
key	kk~ �
,
kk� �
message
kk� �
)
kk� �
=>
kk� �
errors
kk� �
.
kk� �
Add
kk� �
(
kk� �
key
kk� �
,
kk� �
message
kk� �
)
kk� �
)
kk� �
;
kk� �
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
�� 
subject
�� 
=
��  !
await
��" '"
_expressionEvaluator
��( <
.
��< =
EvaluateAsync
��= J
(
��J K&
ConfirmationEmailSubject
��K c
,
��c d
workflowContext
��e t
,
��t u
null
��v z
)
��z {
;
��{ |
var
�� 
localizedSubject
�� (
=
��) *
new
��+ .
LocalizedString
��/ >
(
��> ?
nameof
��? E
(
��E F
RegisterUserTask
��F V
)
��V W
,
��W X
subject
��Y `
)
��` a
;
��a b
var
�� 
body
�� 
=
�� 
await
�� $"
_expressionEvaluator
��% 9
.
��9 :
EvaluateAsync
��: G
(
��G H'
ConfirmationEmailTemplate
��H a
,
��a b
workflowContext
��c r
,
��r s
_htmlEncoder��t �
)��� �
;��� �
var
�� 
localizedBody
�� %
=
��& '
new
��( +!
LocalizedHtmlString
��, ?
(
��? @
nameof
��@ F
(
��F G
RegisterUserTask
��G W
)
��W X
,
��X Y
body
��Z ^
)
��^ _
;
��_ `
var
�� 
message
�� 
=
��  !
new
��" %
MailMessage
��& 1
(
��1 2
)
��2 3
{
�� 
To
�� 
=
�� 
email
�� "
,
��" #
Subject
�� 
=
��  !
localizedSubject
��" 2
.
��2 3
ResourceNotFound
��3 C
?
��D E
subject
��F M
:
��N O
localizedSubject
��P `
.
��` a
Value
��a f
,
��f g
Body
�� 
=
�� 
localizedBody
�� ,
.
��, - 
IsResourceNotFound
��- ?
?
��@ A
body
��B F
:
��G H
localizedBody
��I V
.
��V W
Value
��W \
,
��\ ]

IsBodyHtml
�� "
=
��# $
true
��% )
}
�� 
;
�� 
var
�� 
smtpService
�� #
=
��$ %"
_httpContextAccessor
��& :
.
��: ;
HttpContext
��; F
.
��F G
RequestServices
��G V
.
��V W

GetService
��W a
<
��a b
ISmtpService
��b n
>
��n o
(
��o p
)
��p q
;
��q r
if
�� 
(
�� 
smtpService
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
var
�� 
updater
�� #
=
��$ %"
_updateModelAccessor
��& :
.
��: ;
ModelUpdater
��; G
;
��G H
if
�� 
(
�� 
updater
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
updater
�� #
.
��# $

ModelState
��$ .
.
��. /
TryAddModelError
��/ ?
(
��? @
$str
��@ B
,
��B C
S
��D E
[
��E F
$str
��F e
]
��e f
)
��f g
;
��g h
}
�� 
outcome
�� 
=
��  !
$str
��" +
;
��+ ,
}
�� 
else
�� 
{
�� 
var
�� 
result
�� "
=
��# $
await
��% *
smtpService
��+ 6
.
��6 7
	SendAsync
��7 @
(
��@ A
message
��A H
)
��H I
;
��I J
if
�� 
(
�� 
!
�� 
result
�� #
.
��# $
	Succeeded
��$ -
)
��- .
{
�� 
var
�� 
updater
��  '
=
��( )"
_updateModelAccessor
��* >
.
��> ?
ModelUpdater
��? K
;
��K L
if
�� 
(
��  
updater
��  '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
foreach
��  '
(
��( )
var
��) ,
item
��- 1
in
��2 4
result
��5 ;
.
��; <
Errors
��< B
)
��B C
{
��  !
updater
��$ +
.
��+ ,

ModelState
��, 6
.
��6 7
TryAddModelError
��7 G
(
��G H
item
��H L
.
��L M
Name
��M Q
,
��Q R
item
��S W
.
��W X
Value
��X ]
)
��] ^
;
��^ _
}
��  !
}
�� 
outcome
�� #
=
��$ %
$str
��& /
;
��/ 0
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
Outcomes
�� 
(
�� 
$str
�� "
,
��" #
outcome
��$ +
)
��+ ,
;
��, -
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserActivity.cs
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
activityContext	&&{ �
)
&&� �
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
activityContext	++r �
)
++� �
{,, 	
return-- 
Outcomes-- 
(-- 
$str-- "
)--" #
;--# $
}.. 	
}// 
}00 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserCreatedEvent.cs
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
UserCreatedEvent			u �
>
		� �
	localizer
		� �
)
		� �
:
		� �
base
		� �
(
		� �
userService
		� �
,
		� �
scriptEvaluator
		� �
,
		� �
	localizer
		� �
)
		� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserDeletedEvent.cs
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
UserDeletedEvent			u �
>
		� �
	localizer
		� �
)
		� �
:
		� �
base
		� �
(
		� �
userService
		� �
,
		� �
scriptEvaluator
		� �
,
		� �
	localizer
		� �
)
		� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserDisabledEvent.cs
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
UserDisabledEvent			v �
>
		� �
	localizer
		� �
)
		� �
:
		� �
base
		� �
(
		� �
userService
		� �
,
		� �
scriptEvaluator
		� �
,
		� �
	localizer
		� �
)
		� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserEnabledEvent.cs
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
UserEnabledEvent			u �
>
		� �
	localizer
		� �
)
		� �
:
		� �
base
		� �
(
		� �
userService
		� �
,
		� �
scriptEvaluator
		� �
,
		� �
	localizer
		� �
)
		� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserEvent.cs
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
(	 �
userService
� �
,
� �
scriptEvaluator
� �
,
� �
	localizer
� �
)
� �
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
activityContext	r �
)
� �
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
activityContext	q �
)
� �
{ 	
return 
Outcomes 
( 
$str "
)" #
;# $
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserLoggedInEvent.cs
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
UserLoggedInEvent			v �
>
		� �
	localizer
		� �
)
		� �
:
		� �
base
		� �
(
		� �
userService
		� �
,
		� �
scriptEvaluator
		� �
,
		� �
	localizer
		� �
)
		� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\UserUpdatedEvent.cs
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
UserUpdatedEvent			u �
>
		� �
	localizer
		� �
)
		� �
:
		� �
base
		� �
(
		� �
userService
		� �
,
		� �
scriptEvaluator
		� �
,
		� �
	localizer
		� �
)
		� �
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
} �1
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Activities\ValidateUserTask.cs
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
IStringLocalizer	u �
<
� �
ValidateUserTask
� �
>
� �
	localizer
� �
)
� �
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
activityContext	,,{ �
)
,,� �
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
activityContext	11r �
)
11� �
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
}TT �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\AssignUserRoleTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\RegisterUserTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserCreatedEventDisplayDriver.cs
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
$str	z �
)
� �
,
� �
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
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserDeletedEventDisplayDriver.cs
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
$str	z �
)
� �
,
� �
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
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserDisabledEventDisplayDriver.cs
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
$str	| �
)
� �
,
� �
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
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserEnabledEventDisplayDriver.cs
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
$str	z �
)
� �
,
� �
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
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserLoggedInEventDisplayDriver.cs
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
$str	| �
)
� �
,
� �
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
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\UserUpdatedEventDisplayDriver.cs
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
$str	z �
)
� �
,
� �
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
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Drivers\ValidateUserTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Handlers\ExternallUserHandler.cs
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
}!! �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Handlers\UserEventHandler.cs
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
}33 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\Startup.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\AssignUserRoleTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\RegisterUserTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserCreatedEventViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserDeletedEventViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserDisabledEventViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserEnabledEventViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserEventViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserLoggedInEventViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\UserUpdatedEventViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Users\Workflows\ViewModels\ValidateUserTaskViewModel.cs
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