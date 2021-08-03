±
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Email 
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
)Q R
return 
Task 
. 
CompletedTask )
;) *
builder 
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
configuration) 6
=>7 9
configuration: G
. 
Add 
( 
S 
[ 
$str %
]% &
,& '
settings( 0
=>1 3
settings4 <
. 
Add 
( 
S 
[ 
$str %
]% &
,& '
S( )
[) *
$str* 1
]1 2
.2 3
PrefixPosition3 A
(A B
)B C
,C D
entryE J
=>K M
entryN S
. 
AddClass  
(  !
$str! (
)( )
.) *
Id* ,
(, -
$str- 4
)4 5
. 
Action !
(! "
$str" )
,) *
$str+ 2
,2 3
new4 7
{8 9
area: >
=? @
$strA W
,W X
groupIdY `
=a b%
SmtpSettingsDisplayDriverc |
.| }
GroupId	} Ñ
}
Ö Ü
)
Ü á
. 

Permission %
(% &
Permissions& 1
.1 2
ManageEmailSettings2 E
)E F
. 
LocalNav #
(# $
)$ %
) 
) 
) 
; 
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ Ç7
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Controllers\AdminController.cs
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
Email

 
.

 
Controllers

 '
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
ISmtpService %
_smtpService& 2
;2 3
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
AdminController 
( 
IHtmlLocalizer 
< 
AdminController *
>* +
h, -
,- .!
IAuthorizationService ! 
authorizationService" 6
,6 7
	INotifier 
notifier 
, 
ISmtpService 
smtpService $
)$ %
{ 	
H 
= 
h 
; !
_authorizationService !
=" # 
authorizationService$ 8
;8 9
	_notifier 
= 
notifier  
;  !
_smtpService 
= 
smtpService &
;& '
} 	
[ 	
HttpGet	 
] 
public   
async   
Task   
<   
IActionResult   '
>  ' (
Index  ) .
(  . /
)  / 0
{!! 	
if"" 
("" 
!"" 
await"" !
_authorizationService"" ,
."", -
AuthorizeAsync""- ;
(""; <
User""< @
,""@ A
Permissions""B M
.""M N
ManageEmailSettings""N a
)""a b
)""b c
{## 
return$$ 
Forbid$$ 
($$ 
)$$ 
;$$  
}%% 
return'' 
View'' 
('' 
)'' 
;'' 
}(( 	
[** 	
HttpPost**	 
,** 

ActionName** 
(** 
nameof** $
(**$ %
Index**% *
)*** +
)**+ ,
]**, -
public++ 
async++ 
Task++ 
<++ 
IActionResult++ '
>++' (
	IndexPost++) 2
(++2 3!
SmtpSettingsViewModel++3 H
model++I N
)++N O
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
ManageEmailSettings--N a
)--a b
)--b c
{.. 
return// 
Forbid// 
(// 
)// 
;//  
}00 
if22 
(22 

ModelState22 
.22 
IsValid22 "
)22" #
{33 
var44 
message44 
=44 &
CreateMessageFromViewModel44 8
(448 9
model449 >
)44> ?
;44? @
var66 
result66 
=66 
await66 "
_smtpService66# /
.66/ 0
	SendAsync660 9
(669 :
message66: A
)66A B
;66B C
if88 
(88 
!88 
result88 
.88 
	Succeeded88 %
)88% &
{99 
foreach:: 
(:: 
var::  
error::! &
in::' )
result::* 0
.::0 1
Errors::1 7
)::7 8
{;; 

ModelState<< "
.<<" #
AddModelError<<# 0
(<<0 1
$str<<1 4
,<<4 5
error<<6 ;
.<<; <
ToString<<< D
(<<D E
)<<E F
)<<F G
;<<G H
}== 
}>> 
else?? 
{@@ 
	_notifierAA 
.AA 
SuccessAA %
(AA% &
HAA& '
[AA' (
$strAA( D
]AAD E
)AAE F
;AAF G
returnCC 
RedirectCC #
(CC# $
UrlCC$ '
.CC' (
ActionCC( .
(CC. /
$strCC/ 6
,CC6 7
$strCC8 ?
,CC? @
newCCA D
{CCE F
areaCCG K
=CCL M
$strCCN d
,CCd e
groupIdCCf m
=CCn o&
SmtpSettingsDisplayDriver	CCp â
.
CCâ ä
GroupId
CCä ë
}
CCí ì
)
CCì î
)
CCî ï
;
CCï ñ
}DD 
}EE 
returnGG 
ViewGG 
(GG 
modelGG 
)GG 
;GG 
}HH 	
privateJJ 
MailMessageJJ &
CreateMessageFromViewModelJJ 6
(JJ6 7!
SmtpSettingsViewModelJJ7 L
testSettingsJJM Y
)JJY Z
{KK 	
varLL 
messageLL 
=LL 
newLL 
MailMessageLL )
{MM 
ToNN 
=NN 
testSettingsNN !
.NN! "
ToNN" $
,NN$ %
BccOO 
=OO 
testSettingsOO "
.OO" #
BccOO# &
,OO& '
CcPP 
=PP 
testSettingsPP !
.PP! "
CcPP" $
,PP$ %
ReplyToQQ 
=QQ 
testSettingsQQ &
.QQ& '
ReplyToQQ' .
}RR 
;RR 
ifTT 
(TT 
!TT 
StringTT 
.TT 
IsNullOrWhiteSpaceTT *
(TT* +
testSettingsTT+ 7
.TT7 8
SenderTT8 >
)TT> ?
)TT? @
{UU 
messageVV 
.VV 
SenderVV 
=VV  
testSettingsVV! -
.VV- .
SenderVV. 4
;VV4 5
}WW 
ifYY 
(YY 
!YY 
StringYY 
.YY 
IsNullOrWhiteSpaceYY *
(YY* +
testSettingsYY+ 7
.YY7 8
SubjectYY8 ?
)YY? @
)YY@ A
{ZZ 
message[[ 
.[[ 
Subject[[ 
=[[  !
testSettings[[" .
.[[. /
Subject[[/ 6
;[[6 7
}\\ 
if^^ 
(^^ 
!^^ 
String^^ 
.^^ 
IsNullOrWhiteSpace^^ *
(^^* +
testSettings^^+ 7
.^^7 8
Body^^8 <
)^^< =
)^^= >
{__ 
message`` 
.`` 
Body`` 
=`` 
testSettings`` +
.``+ ,
Body``, 0
;``0 1
}aa 
returncc 
messagecc 
;cc 
}dd 	
}ee 
}ff áD
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Drivers\SmtpSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Email 
. 
Drivers #
{ 
public 

class %
SmtpSettingsDisplayDriver *
:+ , 
SectionDisplayDriver- A
<A B
ISiteB G
,G H
SmtpSettingsI U
>U V
{ 
public 
const 
string 
GroupId #
=$ %
$str& -
;- .
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public %
SmtpSettingsDisplayDriver (
(( )#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ;

IShellHost 
	shellHost  
,  !
ShellSettings 
shellSettings '
,' ( 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	#
_dataProtectionProvider #
=$ %"
dataProtectionProvider& <
;< =

_shellHost   
=   
	shellHost   "
;  " #
_shellSettings!! 
=!! 
shellSettings!! *
;!!* + 
_httpContextAccessor""  
=""! "
httpContextAccessor""# 6
;""6 7!
_authorizationService## !
=##" # 
authorizationService##$ 8
;##8 9
}$$ 	
public&& 
override&& 
async&& 
Task&& "
<&&" #
IDisplayResult&&# 1
>&&1 2
	EditAsync&&3 <
(&&< =
SmtpSettings&&= I
settings&&J R
,&&R S
BuildEditorContext&&T f
context&&g n
)&&n o
{'' 	
var(( 
user(( 
=((  
_httpContextAccessor(( +
.((+ ,
HttpContext((, 7
?((7 8
.((8 9
User((9 =
;((= >
if** 
(** 
!** 
await** !
_authorizationService** ,
.**, -
AuthorizeAsync**- ;
(**; <
user**< @
,**@ A
Permissions**B M
.**M N
ManageEmailSettings**N a
)**a b
)**b c
{++ 
return,, 
null,, 
;,, 
}-- 
var// 
shapes// 
=// 
new// 
List// !
<//! "
IDisplayResult//" 0
>//0 1
{00 

Initialize11 
<11 
SmtpSettings11 '
>11' (
(11( )
$str11) <
,11< =
model11> C
=>11D F
{22 
model33 
.33 
DefaultSender33 '
=33( )
settings33* 2
.332 3
DefaultSender333 @
;33@ A
model44 
.44 
DeliveryMethod44 (
=44) *
settings44+ 3
.443 4
DeliveryMethod444 B
;44B C
model55 
.55 #
PickupDirectoryLocation55 1
=552 3
settings554 <
.55< =#
PickupDirectoryLocation55= T
;55T U
model66 
.66 
Host66 
=66  
settings66! )
.66) *
Host66* .
;66. /
model77 
.77 
Port77 
=77  
settings77! )
.77) *
Port77* .
;77. /
model88 
.88 
EncryptionMethod88 *
=88+ ,
settings88- 5
.885 6
EncryptionMethod886 F
;88F G
model99 
.99  
AutoSelectEncryption99 .
=99/ 0
settings991 9
.999 : 
AutoSelectEncryption99: N
;99N O
model:: 
.:: 
RequireCredentials:: ,
=::- .
settings::/ 7
.::7 8
RequireCredentials::8 J
;::J K
model;; 
.;; !
UseDefaultCredentials;; /
=;;0 1
settings;;2 :
.;;: ;!
UseDefaultCredentials;;; P
;;;P Q
model<< 
.<< 
UserName<< "
=<<# $
settings<<% -
.<<- .
UserName<<. 6
;<<6 7
model== 
.== 
Password== "
===# $
settings==% -
.==- .
Password==. 6
;==6 7
}>> 
)>> 
.>> 
Location>> 
(>> 
$str>> '
)>>' (
.>>( )
OnGroup>>) 0
(>>0 1
GroupId>>1 8
)>>8 9
}?? 
;?? 
ifAA 
(AA 
settingsAA 
?AA 
.AA 
DefaultSenderAA '
!=AA( *
nullAA+ /
)AA/ 0
{BB 
shapesCC 
.CC 
AddCC 
(CC 
DynamicCC "
(CC" #
$strCC# <
)CC< =
.CC= >
LocationCC> F
(CCF G
$strCCG P
)CCP Q
.CCQ R
OnGroupCCR Y
(CCY Z
GroupIdCCZ a
)CCa b
)CCb c
;CCc d
}DD 
returnFF 
CombineFF 
(FF 
shapesFF !
)FF! "
;FF" #
}GG 	
publicII 
overrideII 
asyncII 
TaskII "
<II" #
IDisplayResultII# 1
>II1 2
UpdateAsyncII3 >
(II> ?
SmtpSettingsII? K
sectionIIL S
,IIS T
BuildEditorContextIIU g
contextIIh o
)IIo p
{JJ 	
varKK 
userKK 
=KK  
_httpContextAccessorKK +
.KK+ ,
HttpContextKK, 7
?KK7 8
.KK8 9
UserKK9 =
;KK= >
ifMM 
(MM 
!MM 
awaitMM !
_authorizationServiceMM ,
.MM, -
AuthorizeAsyncMM- ;
(MM; <
userMM< @
,MM@ A
PermissionsMMB M
.MMM N
ManageEmailSettingsMMN a
)MMa b
)MMb c
{NN 
returnOO 
nullOO 
;OO 
}PP 
ifRR 
(RR 
contextRR 
.RR 
GroupIdRR 
==RR  "
GroupIdRR# *
)RR* +
{SS 
varTT 
previousPasswordTT $
=TT% &
sectionTT' .
.TT. /
PasswordTT/ 7
;TT7 8
awaitUU 
contextUU 
.UU 
UpdaterUU %
.UU% &
TryUpdateModelAsyncUU& 9
(UU9 :
sectionUU: A
,UUA B
PrefixUUC I
)UUI J
;UUJ K
ifXX 
(XX 
stringXX 
.XX 
IsNullOrWhiteSpaceXX -
(XX- .
sectionXX. 5
.XX5 6
PasswordXX6 >
)XX> ?
)XX? @
{YY 
sectionZZ 
.ZZ 
PasswordZZ $
=ZZ% &
previousPasswordZZ' 7
;ZZ7 8
}[[ 
else\\ 
{]] 
var__ 
	protector__ !
=__" ##
_dataProtectionProvider__$ ;
.__; <
CreateProtector__< K
(__K L
nameof__L R
(__R S%
SmtpSettingsConfiguration__S l
)__l m
)__m n
;__n o
section`` 
.`` 
Password`` $
=``% &
	protector``' 0
.``0 1
Protect``1 8
(``8 9
section``9 @
.``@ A
Password``A I
)``I J
;``J K
}aa 
awaitdd 

_shellHostdd  
.dd  !$
ReleaseShellContextAsyncdd! 9
(dd9 :
_shellSettingsdd: H
)ddH I
;ddI J
}ee 
returngg 
awaitgg 
	EditAsyncgg "
(gg" #
sectiongg# *
,gg* +
contextgg, 3
)gg3 4
;gg4 5
}hh 	
}ii 
}jj »
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Manifest.cs
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
$str d
,d e
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 2
}		3 4
,		4 5
Category

 
=

 
$str

 
) 
] ù
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Permissions.cs
	namespace 	
OrchardCore
 
. 
Email 
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
ManageEmailSettings

* =
=

> ?
new

@ C

Permission

D N
(

N O
$str

O d
,

d e
$str

f }
)

} ~
;

~ 
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
ManageEmailSettings #
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
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageEmailSettings* =
}> ?
} 
, 
} 
; 
} 	
}   
}!! ∞ô
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Services\SmtpService.cs
	namespace 	
OrchardCore
 
. 
Email 
. 
Services $
{ 
public 

class 
SmtpService 
: 
ISmtpService +
{ 
private 
const 
string 
EmailExtension +
=, -
$str. 4
;4 5
private 
static 
readonly 
char  $
[$ %
]% &
EmailsSeparator' 6
=7 8
new9 <
char= A
[A B
]B C
{D E
$charF I
,I J
$charK N
}O P
;P Q
private 
readonly 
SmtpSettings %
_options& .
;. /
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
SmtpService 
( 
IOptions 
< 
SmtpSettings !
>! "
options# *
,* +
ILogger 
< 
SmtpService 
>  
logger! '
,' (
IStringLocalizer 
< 
SmtpService (
>( )
stringLocalizer* 9
) 
{ 	
_options   
=   
options   
.   
Value   $
;  $ %
_logger!! 
=!! 
logger!! 
;!! 
S"" 
="" 
stringLocalizer"" 
;""  
}## 	
public%% 
async%% 
Task%% 
<%% 

SmtpResult%% $
>%%$ %
	SendAsync%%& /
(%%/ 0
MailMessage%%0 ;
message%%< C
)%%C D
{&& 	
if'' 
('' 
_options'' 
?'' 
.'' 
DefaultSender'' '
==''( *
null''+ /
)''/ 0
{(( 
return)) 

SmtpResult)) !
.))! "
Failed))" (
())( )
S))) *
[))* +
$str))+ j
]))j k
)))k l
;))l m
}** 
try,, 
{-- 
message// 
.// 
From// 
=// 
String// %
.//% &
IsNullOrWhiteSpace//& 8
(//8 9
message//9 @
.//@ A
From//A E
)//E F
?00 
_options00 
.00 
DefaultSender00 ,
:11 
message11 
.11 
From11 "
;11" #
var33 
mimeMessage33 
=33  !
FromMailMessage33" 1
(331 2
message332 9
)339 :
;33: ;
switch55 
(55 
_options55  
.55  !
DeliveryMethod55! /
)55/ 0
{66 
case77 
SmtpDeliveryMethod77 +
.77+ ,
Network77, 3
:773 4
await88 
SendOnlineMessage88 /
(88/ 0
mimeMessage880 ;
)88; <
;88< =
break99 
;99 
case:: 
SmtpDeliveryMethod:: +
.::+ ,$
SpecifiedPickupDirectory::, D
:::D E
await;; 
SendOfflineMessage;; 0
(;;0 1
mimeMessage;;1 <
,;;< =
_options;;> F
.;;F G#
PickupDirectoryLocation;;G ^
);;^ _
;;;_ `
break<< 
;<< 
default== 
:== 
throw>> 
new>> !!
NotSupportedException>>" 7
(>>7 8
$">>8 :
The '>>: ?
{>>? @
_options>>@ H
.>>H I
DeliveryMethod>>I W
}>>W X/
#' delivery method is not supported.>>X {
">>{ |
)>>| }
;>>} ~
}?? 
returnAA 

SmtpResultAA !
.AA! "
SuccessAA" )
;AA) *
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 
returnEE 

SmtpResultEE !
.EE! "
FailedEE" (
(EE( )
SEE) *
[EE* +
$strEE+ \
,EE\ ]
exEE^ `
.EE` a
MessageEEa h
]EEh i
)EEi j
;EEj k
}FF 
}GG 	
privateII 
MimeMessageII 
FromMailMessageII +
(II+ ,
MailMessageII, 7
messageII8 ?
)II? @
{JJ 	
varKK 
senderAddressKK 
=KK 
StringKK  &
.KK& '
IsNullOrWhiteSpaceKK' 9
(KK9 :
messageKK: A
.KKA B
SenderKKB H
)KKH I
?LL 
_optionsLL 
.LL 
DefaultSenderLL (
:MM 
messageMM 
.MM 
SenderMM  
;MM  !
varOO 
mimeMessageOO 
=OO 
newOO !
MimeMessageOO" -
{PP 
SenderQQ 
=QQ 
MailboxAddressQQ '
.QQ' (
ParseQQ( -
(QQ- .
senderAddressQQ. ;
)QQ; <
}RR 
;RR 
ifTT 
(TT 
!TT 
stringTT 
.TT 
IsNullOrWhiteSpaceTT *
(TT* +
messageTT+ 2
.TT2 3
FromTT3 7
)TT7 8
)TT8 9
{UU 
foreachVV 
(VV 
varVV 
addressVV $
inVV% '
messageVV( /
.VV/ 0
FromVV0 4
.VV4 5
SplitVV5 :
(VV: ;
EmailsSeparatorVV; J
,VVJ K
StringSplitOptionsVVL ^
.VV^ _
RemoveEmptyEntriesVV_ q
)VVq r
)VVr s
{WW 
mimeMessageXX 
.XX  
FromXX  $
.XX$ %
AddXX% (
(XX( )
MailboxAddressXX) 7
.XX7 8
ParseXX8 =
(XX= >
addressXX> E
)XXE F
)XXF G
;XXG H
}YY 
}ZZ 
if\\ 
(\\ 
!\\ 
string\\ 
.\\ 
IsNullOrWhiteSpace\\ *
(\\* +
message\\+ 2
.\\2 3
To\\3 5
)\\5 6
)\\6 7
{]] 
foreach^^ 
(^^ 
var^^ 
address^^ $
in^^% '
message^^( /
.^^/ 0
To^^0 2
.^^2 3
Split^^3 8
(^^8 9
EmailsSeparator^^9 H
,^^H I
StringSplitOptions^^J \
.^^\ ]
RemoveEmptyEntries^^] o
)^^o p
)^^p q
{__ 
mimeMessage`` 
.``  
To``  "
.``" #
Add``# &
(``& '
MailboxAddress``' 5
.``5 6
Parse``6 ;
(``; <
address``< C
)``C D
)``D E
;``E F
}aa 
}bb 
ifdd 
(dd 
!dd 
stringdd 
.dd 
IsNullOrWhiteSpacedd *
(dd* +
messagedd+ 2
.dd2 3
Ccdd3 5
)dd5 6
)dd6 7
{ee 
foreachff 
(ff 
varff 
addressff $
inff% '
messageff( /
.ff/ 0
Ccff0 2
.ff2 3
Splitff3 8
(ff8 9
EmailsSeparatorff9 H
,ffH I
StringSplitOptionsffJ \
.ff\ ]
RemoveEmptyEntriesff] o
)ffo p
)ffp q
{gg 
mimeMessagehh 
.hh  
Cchh  "
.hh" #
Addhh# &
(hh& '
MailboxAddresshh' 5
.hh5 6
Parsehh6 ;
(hh; <
addresshh< C
)hhC D
)hhD E
;hhE F
}ii 
}jj 
ifll 
(ll 
!ll 
stringll 
.ll 
IsNullOrWhiteSpacell *
(ll* +
messagell+ 2
.ll2 3
Bccll3 6
)ll6 7
)ll7 8
{mm 
foreachnn 
(nn 
varnn 
addressnn $
innn% '
messagenn( /
.nn/ 0
Bccnn0 3
.nn3 4
Splitnn4 9
(nn9 :
EmailsSeparatornn: I
,nnI J
StringSplitOptionsnnK ]
.nn] ^
RemoveEmptyEntriesnn^ p
)nnp q
)nnq r
{oo 
mimeMessagepp 
.pp  
Bccpp  #
.pp# $
Addpp$ '
(pp' (
MailboxAddresspp( 6
.pp6 7
Parsepp7 <
(pp< =
addresspp= D
)ppD E
)ppE F
;ppF G
}qq 
}rr 
iftt 
(tt 
stringtt 
.tt 
IsNullOrWhiteSpacett )
(tt) *
messagett* 1
.tt1 2
ReplyTott2 9
)tt9 :
)tt: ;
{uu 
foreachvv 
(vv 
varvv 
addressvv $
invv% '
mimeMessagevv( 3
.vv3 4
Fromvv4 8
)vv8 9
{ww 
mimeMessagexx 
.xx  
ReplyToxx  '
.xx' (
Addxx( +
(xx+ ,
addressxx, 3
)xx3 4
;xx4 5
}yy 
}zz 
else{{ 
{|| 
foreach}} 
(}} 
var}} 
address}} $
in}}% '
message}}( /
.}}/ 0
ReplyTo}}0 7
.}}7 8
Split}}8 =
(}}= >
EmailsSeparator}}> M
,}}M N
StringSplitOptions}}O a
.}}a b
RemoveEmptyEntries}}b t
)}}t u
)}}u v
{~~ 
mimeMessage 
.  
ReplyTo  '
.' (
Add( +
(+ ,
MailboxAddress, :
.: ;
Parse; @
(@ A
addressA H
)H I
)I J
;J K
}
ÄÄ 
}
ÅÅ 
mimeMessage
ÉÉ 
.
ÉÉ 
Subject
ÉÉ 
=
ÉÉ  !
message
ÉÉ" )
.
ÉÉ) *
Subject
ÉÉ* 1
;
ÉÉ1 2
var
ÖÖ 
body
ÖÖ 
=
ÖÖ 
new
ÖÖ 
BodyBuilder
ÖÖ &
(
ÖÖ& '
)
ÖÖ' (
;
ÖÖ( )
if
áá 
(
áá 
message
áá 
.
áá 

IsBodyHtml
áá "
)
áá" #
{
àà 
body
ââ 
.
ââ 
HtmlBody
ââ 
=
ââ 
message
ââ  '
.
ââ' (
Body
ââ( ,
;
ââ, -
}
ää 
else
ãã 
{
åå 
body
çç 
.
çç 
TextBody
çç 
=
çç 
message
çç  '
.
çç' (
Body
çç( ,
;
çç, -
}
éé 
foreach
êê 
(
êê 
var
êê 

attachment
êê #
in
êê$ &
message
êê' .
.
êê. /
Attachments
êê/ :
)
êê: ;
{
ëë 
if
ìì 
(
ìì 

attachment
ìì 
.
ìì 
Stream
ìì %
!=
ìì& (
null
ìì) -
)
ìì- .
{
îî 
body
ïï 
.
ïï 
Attachments
ïï $
.
ïï$ %
Add
ïï% (
(
ïï( )

attachment
ïï) 3
.
ïï3 4
Filename
ïï4 <
,
ïï< =

attachment
ïï> H
.
ïïH I
Stream
ïïI O
)
ïïO P
;
ïïP Q
}
ññ 
}
óó 
mimeMessage
ôô 
.
ôô 
Body
ôô 
=
ôô 
body
ôô #
.
ôô# $
ToMessageBody
ôô$ 1
(
ôô1 2
)
ôô2 3
;
ôô3 4
return
õõ 
mimeMessage
õõ 
;
õõ 
}
úú 	
private
ûû 
bool
ûû +
CertificateValidationCallback
ûû 2
(
ûû2 3
object
ûû3 9
sender
ûû: @
,
ûû@ A
X509Certificate
ûûB Q
certificate
ûûR ]
,
ûû] ^
	X509Chain
ûû_ h
chain
ûûi n
,
ûûn o
SslPolicyErrors
ûûp 
sslPolicyErrorsûûÄ è
)ûûè ê
{
üü 	
if
†† 
(
†† 
sslPolicyErrors
†† 
==
††  "
SslPolicyErrors
††# 2
.
††2 3
None
††3 7
)
††7 8
return
°° 
true
°° 
;
°° 
_logger
££ 
.
££ 
LogError
££ 
(
££ 
string
££ #
.
££# $
Concat
££$ *
(
££* +
$str
££+ z
,
££z {
$str
§§ j
,
§§j k
$str
•• L
)
••L M
,
••M N
certificate
¶¶ 
.
¶¶ 
Subject
¶¶ #
,
¶¶# $
certificate
¶¶% 0
.
¶¶0 1
Issuer
¶¶1 7
,
¶¶7 8
certificate
¶¶9 D
.
¶¶D E
GetCertHashString
¶¶E V
(
¶¶V W
)
¶¶W X
,
¶¶X Y
certificate
ßß 
.
ßß %
GetExpirationDateString
ßß 3
(
ßß3 4
)
ßß4 5
,
ßß5 6
sslPolicyErrors
ßß7 F
)
ßßF G
;
ßßG H
if
©© 
(
©© 
sslPolicyErrors
©© 
.
©©  
HasFlag
©©  '
(
©©' (
SslPolicyErrors
©©( 7
.
©©7 8*
RemoteCertificateChainErrors
©©8 T
)
©©T U
&&
©©V X
chain
©©Y ^
?
©©^ _
.
©©_ `
ChainStatus
©©` k
!=
©©l n
null
©©o s
)
©©s t
{
™™ 
foreach
´´ 
(
´´ 
var
´´ 
chainStatus
´´ (
in
´´) +
chain
´´, 1
.
´´1 2
ChainStatus
´´2 =
)
´´= >
{
¨¨ 
_logger
≠≠ 
.
≠≠ 
LogError
≠≠ $
(
≠≠$ %
$str
≠≠% M
,
≠≠M N
chainStatus
≠≠O Z
.
≠≠Z [
Status
≠≠[ a
,
≠≠a b
chainStatus
≠≠c n
.
≠≠n o 
StatusInformation≠≠o Ä
)≠≠Ä Å
;≠≠Å Ç
}
ÆÆ 
}
ØØ 
return
±± 
false
±± 
;
±± 
}
≤≤ 	
private
≥≥ 
async
≥≥ 
Task
≥≥ 
SendOnlineMessage
≥≥ ,
(
≥≥, -
MimeMessage
≥≥- 8
message
≥≥9 @
)
≥≥@ A
{
¥¥ 	
var
µµ !
secureSocketOptions
µµ #
=
µµ$ %!
SecureSocketOptions
µµ& 9
.
µµ9 :
Auto
µµ: >
;
µµ> ?
if
∑∑ 
(
∑∑ 
!
∑∑ 
_options
∑∑ 
.
∑∑ "
AutoSelectEncryption
∑∑ .
)
∑∑. /
{
∏∏ 
switch
ππ 
(
ππ 
_options
ππ  
.
ππ  !
EncryptionMethod
ππ! 1
)
ππ1 2
{
∫∫ 
case
ªª "
SmtpEncryptionMethod
ªª -
.
ªª- .
None
ªª. 2
:
ªª2 3!
secureSocketOptions
ºº +
=
ºº, -!
SecureSocketOptions
ºº. A
.
ººA B
None
ººB F
;
ººF G
break
ΩΩ 
;
ΩΩ 
case
ææ "
SmtpEncryptionMethod
ææ -
.
ææ- .
SSLTLS
ææ. 4
:
ææ4 5!
secureSocketOptions
øø +
=
øø, -!
SecureSocketOptions
øø. A
.
øøA B
SslOnConnect
øøB N
;
øøN O
break
¿¿ 
;
¿¿ 
case
¡¡ "
SmtpEncryptionMethod
¡¡ -
.
¡¡- .
STARTTLS
¡¡. 6
:
¡¡6 7!
secureSocketOptions
¬¬ +
=
¬¬, -!
SecureSocketOptions
¬¬. A
.
¬¬A B
StartTls
¬¬B J
;
¬¬J K
break
√√ 
;
√√ 
default
ƒƒ 
:
ƒƒ 
break
≈≈ 
;
≈≈ 
}
∆∆ 
}
«« 
using
…… 
(
…… 
var
…… 
client
…… 
=
…… 
new
……  #

SmtpClient
……$ .
(
……. /
)
……/ 0
)
……0 1
{
   
client
ÀÀ 
.
ÀÀ 1
#ServerCertificateValidationCallback
ÀÀ :
=
ÀÀ; <+
CertificateValidationCallback
ÀÀ= Z
;
ÀÀZ [
await
ÃÃ 
client
ÃÃ 
.
ÃÃ 
ConnectAsync
ÃÃ )
(
ÃÃ) *
_options
ÃÃ* 2
.
ÃÃ2 3
Host
ÃÃ3 7
,
ÃÃ7 8
_options
ÃÃ9 A
.
ÃÃA B
Port
ÃÃB F
,
ÃÃF G!
secureSocketOptions
ÃÃH [
)
ÃÃ[ \
;
ÃÃ\ ]
var
ÕÕ #
useDefaultCredentials
ÕÕ )
=
ÕÕ* +
_options
ÕÕ, 4
.
ÕÕ4 5 
RequireCredentials
ÕÕ5 G
&&
ÕÕH J
_options
ÕÕK S
.
ÕÕS T#
UseDefaultCredentials
ÕÕT i
;
ÕÕi j
if
ŒŒ 
(
ŒŒ 
_options
ŒŒ 
.
ŒŒ  
RequireCredentials
ŒŒ /
)
ŒŒ/ 0
{
œœ 
if
–– 
(
–– 
_options
––  
.
––  !#
UseDefaultCredentials
––! 6
)
––6 7
{
—— 
await
”” 
client
”” $
.
””$ %
AuthenticateAsync
””% 6
(
””6 7
String
””7 =
.
””= >
Empty
””> C
,
””C D
String
””E K
.
””K L
Empty
””L Q
)
””Q R
;
””R S
}
‘‘ 
else
’’ 
if
’’ 
(
’’ 
!
’’ 
String
’’ $
.
’’$ % 
IsNullOrWhiteSpace
’’% 7
(
’’7 8
_options
’’8 @
.
’’@ A
UserName
’’A I
)
’’I J
)
’’J K
{
÷÷ 
await
◊◊ 
client
◊◊ $
.
◊◊$ %
AuthenticateAsync
◊◊% 6
(
◊◊6 7
_options
◊◊7 ?
.
◊◊? @
UserName
◊◊@ H
,
◊◊H I
_options
◊◊J R
.
◊◊R S
Password
◊◊S [
)
◊◊[ \
;
◊◊\ ]
}
ÿÿ 
}
ŸŸ 
await
⁄⁄ 
client
⁄⁄ 
.
⁄⁄ 
	SendAsync
⁄⁄ &
(
⁄⁄& '
message
⁄⁄' .
)
⁄⁄. /
;
⁄⁄/ 0
await
€€ 
client
€€ 
.
€€ 
DisconnectAsync
€€ ,
(
€€, -
true
€€- 1
)
€€1 2
;
€€2 3
}
‹‹ 
}
›› 	
private
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ  
SendOfflineMessage
ﬂﬂ -
(
ﬂﬂ- .
MimeMessage
ﬂﬂ. 9
message
ﬂﬂ: A
,
ﬂﬂA B
string
ﬂﬂC I
pickupDirectory
ﬂﬂJ Y
)
ﬂﬂY Z
{
‡‡ 	
var
·· 
mailPath
·· 
=
·· 
Path
·· 
.
··  
Combine
··  '
(
··' (
pickupDirectory
··( 7
,
··7 8
Guid
··9 =
.
··= >
NewGuid
··> E
(
··E F
)
··F G
.
··G H
ToString
··H P
(
··P Q
)
··Q R
+
··S T
EmailExtension
··U c
)
··c d
;
··d e
await
‚‚ 
message
‚‚ 
.
‚‚ 
WriteToAsync
‚‚ &
(
‚‚& '
mailPath
‚‚' /
,
‚‚/ 0
CancellationToken
‚‚1 B
.
‚‚B C
None
‚‚C G
)
‚‚G H
;
‚‚H I
}
„„ 	
}
‰‰ 
}ÂÂ â$
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Services\SmtpSettingsConfiguration.cs
	namespace 	
OrchardCore
 
. 
Email 
. 
Services $
{		 
public

 

class

 %
SmtpSettingsConfiguration

 *
:

+ ,
IConfigureOptions

- >
<

> ?
SmtpSettings

? K
>

K L
{ 
private 
readonly 
ISiteService %
_site& +
;+ ,
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly 
ILogger  
_logger! (
;( )
public %
SmtpSettingsConfiguration (
(( )
ISiteService 
site 
, #
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ;
ILogger 
< %
SmtpSettingsConfiguration -
>- .
logger/ 5
)5 6
{ 	
_site 
= 
site 
; #
_dataProtectionProvider #
=$ %"
dataProtectionProvider& <
;< =
_logger 
= 
logger 
; 
} 	
public 
void 
	Configure 
( 
SmtpSettings *
options+ 2
)2 3
{ 	
var 
settings 
= 
_site  
.  ! 
GetSiteSettingsAsync! 5
(5 6
)6 7
. 

GetAwaiter 
( 
) 
. 
	GetResult '
(' (
)( )
. 
As 
< 
SmtpSettings  
>  !
(! "
)" #
;# $
options   
.   
DefaultSender   !
=  " #
settings  $ ,
.  , -
DefaultSender  - :
;  : ;
options!! 
.!! 
DeliveryMethod!! "
=!!# $
settings!!% -
.!!- .
DeliveryMethod!!. <
;!!< =
options"" 
."" #
PickupDirectoryLocation"" +
="", -
settings"". 6
.""6 7#
PickupDirectoryLocation""7 N
;""N O
options## 
.## 
Host## 
=## 
settings## #
.### $
Host##$ (
;##( )
options$$ 
.$$ 
Port$$ 
=$$ 
settings$$ #
.$$# $
Port$$$ (
;$$( )
options%% 
.%% 
EncryptionMethod%% $
=%%% &
settings%%' /
.%%/ 0
EncryptionMethod%%0 @
;%%@ A
options&& 
.&&  
AutoSelectEncryption&& (
=&&) *
settings&&+ 3
.&&3 4 
AutoSelectEncryption&&4 H
;&&H I
options'' 
.'' 
RequireCredentials'' &
=''' (
settings'') 1
.''1 2
RequireCredentials''2 D
;''D E
options(( 
.(( !
UseDefaultCredentials(( )
=((* +
settings((, 4
.((4 5!
UseDefaultCredentials((5 J
;((J K
options)) 
.)) 
UserName)) 
=)) 
settings)) '
.))' (
UserName))( 0
;))0 1
if,, 
(,, 
!,, 
String,, 
.,, 
IsNullOrWhiteSpace,, *
(,,* +
settings,,+ 3
.,,3 4
Password,,4 <
),,< =
),,= >
{-- 
try.. 
{// 
var00 
	protector00 !
=00" ##
_dataProtectionProvider00$ ;
.00; <
CreateProtector00< K
(00K L
nameof00L R
(00R S%
SmtpSettingsConfiguration00S l
)00l m
)00m n
;00n o
options11 
.11 
Password11 $
=11% &
	protector11' 0
.110 1
	Unprotect111 :
(11: ;
settings11; C
.11C D
Password11D L
)11L M
;11M N
}22 
catch33 
{44 
_logger55 
.55 
LogError55 $
(55$ %
$str	55% Ç
)
55Ç É
;
55É Ñ
}66 
}77 
}88 	
}99 
}:: î
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Startup.cs
	namespace 	
OrchardCore
 
. 
Email 
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
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
IPermissionProvider 2
,2 3
Permissions4 ?
>? @
(@ A
)A B
;B C
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
ISite. 3
>3 4
,4 5%
SmtpSettingsDisplayDriver6 O
>O P
(P Q
)Q R
;R S
services   
.   
	AddScoped   
<   
INavigationProvider   2
,  2 3
	AdminMenu  4 =
>  = >
(  > ?
)  ? @
;  @ A
services"" 
."" 
AddTransient"" !
<""! "
IConfigureOptions""" 3
<""3 4
SmtpSettings""4 @
>""@ A
,""A B%
SmtpSettingsConfiguration""C \
>""\ ]
(""] ^
)""^ _
;""_ `
services## 
.## 
	AddScoped## 
<## 
ISmtpService## +
,##+ ,
SmtpService##- 8
>##8 9
(##9 :
)##: ;
;##; <
}$$ 	
public&& 
override&& 
void&& 
	Configure&& &
(&&& '
IApplicationBuilder&&' :
builder&&; B
,&&B C!
IEndpointRouteBuilder&&D Y
routes&&Z `
,&&` a
IServiceProvider&&b r
serviceProvider	&&s Ç
)
&&Ç É
{'' 	
routes(( 
.(( "
MapAreaControllerRoute(( )
((() *
name)) 
:)) 
$str)) "
,))" #
areaName** 
:** 
$str** -
,**- .
pattern++ 
:++ 
_adminOptions++ &
.++& '
AdminUrlPrefix++' 5
+++6 7
$str++8 F
,++F G
defaults,, 
:,, 
new,, 
{,, 

controller,,  *
=,,+ ,
typeof,,- 3
(,,3 4
AdminController,,4 C
),,C D
.,,D E
ControllerName,,E S
(,,S T
),,T U
,,,U V
action,,W ]
=,,^ _
nameof,,` f
(,,f g
AdminController,,g v
.,,v w
Index,,w |
),,| }
},,~ 
)-- 
;-- 
}.. 	
}// 
}00 œ
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\ViewModels\SmtpSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Email 
. 

ViewModels &
{ 
public 

class !
SmtpSettingsViewModel &
{ 
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
)+ ,
], -
public 
string 
To 
{ 
get 
; 
set  #
;# $
}% &
public

 
string

 
Sender
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
public 
string 
Bcc 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Cc 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
ReplyTo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Body 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ÆT
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Workflows\Activities\EmailTask.cs
	namespace 	
OrchardCore
 
. 
Email 
. 
	Workflows %
.% &

Activities& 0
{ 
public 

class 
	EmailTask 
: 
TaskActivity )
{ 
private 
readonly 
ISmtpService %
_smtpService& 2
;2 3
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public 
	EmailTask 
( 
ISmtpService 
smtpService $
,$ %(
IWorkflowExpressionEvaluator (
expressionEvaluator) <
,< =
IStringLocalizer 
< 
	EmailTask &
>& '
	localizer( 1
,1 2
HtmlEncoder 
htmlEncoder #
) 	
{ 	
_smtpService 
= 
smtpService &
;& ' 
_expressionEvaluator  
=! "
expressionEvaluator# 6
;6 7
S 
= 
	localizer 
; 
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
public!! 
override!! 
string!! 
Name!! #
=>!!$ &
nameof!!' -
(!!- .
	EmailTask!!. 7
)!!7 8
;!!8 9
public"" 
override"" 
LocalizedString"" '
DisplayText""( 3
=>""4 6
S""7 8
[""8 9
$str""9 E
]""E F
;""F G
public## 
override## 
LocalizedString## '
Category##( 0
=>##1 3
S##4 5
[##5 6
$str##6 A
]##A B
;##B C
public%% 
WorkflowExpression%% !
<%%! "
string%%" (
>%%( )
Author%%* 0
{&& 	
get'' 
=>'' 
GetProperty'' 
('' 
(''  
)''  !
=>''" $
new''% (
WorkflowExpression'') ;
<''; <
string''< B
>''B C
(''C D
)''D E
)''E F
;''F G
set(( 
=>(( 
SetProperty(( 
((( 
value(( $
)(($ %
;((% &
})) 	
public++ 
WorkflowExpression++ !
<++! "
string++" (
>++( )
Sender++* 0
{,, 	
get-- 
=>-- 
GetProperty-- 
(-- 
(--  
)--  !
=>--" $
new--% (
WorkflowExpression--) ;
<--; <
string--< B
>--B C
(--C D
)--D E
)--E F
;--F G
set.. 
=>.. 
SetProperty.. 
(.. 
value.. $
)..$ %
;..% &
}// 	
public11 
WorkflowExpression11 !
<11! "
string11" (
>11( )
ReplyTo11* 1
{22 	
get33 
=>33 
GetProperty33 
(33 
(33  
)33  !
=>33" $
new33% (
WorkflowExpression33) ;
<33; <
string33< B
>33B C
(33C D
)33D E
)33E F
;33F G
set44 
=>44 
SetProperty44 
(44 
value44 $
)44$ %
;44% &
}55 	
public88 
WorkflowExpression88 !
<88! "
string88" (
>88( )

Recipients88* 4
{99 	
get:: 
=>:: 
GetProperty:: 
(:: 
(::  
)::  !
=>::" $
new::% (
WorkflowExpression::) ;
<::; <
string::< B
>::B C
(::C D
)::D E
)::E F
;::F G
set;; 
=>;; 
SetProperty;; 
(;; 
value;; $
);;$ %
;;;% &
}<< 	
public>> 
WorkflowExpression>> !
<>>! "
string>>" (
>>>( )
Subject>>* 1
{?? 	
get@@ 
=>@@ 
GetProperty@@ 
(@@ 
(@@  
)@@  !
=>@@" $
new@@% (
WorkflowExpression@@) ;
<@@; <
string@@< B
>@@B C
(@@C D
)@@D E
)@@E F
;@@F G
setAA 
=>AA 
SetPropertyAA 
(AA 
valueAA $
)AA$ %
;AA% &
}BB 	
publicDD 
WorkflowExpressionDD !
<DD! "
stringDD" (
>DD( )
BodyDD* .
{EE 	
getFF 
=>FF 
GetPropertyFF 
(FF 
(FF  
)FF  !
=>FF" $
newFF% (
WorkflowExpressionFF) ;
<FF; <
stringFF< B
>FFB C
(FFC D
)FFD E
)FFE F
;FFF G
setGG 
=>GG 
SetPropertyGG 
(GG 
valueGG $
)GG$ %
;GG% &
}HH 	
publicJJ 
boolJJ 

IsBodyHtmlJJ 
{KK 	
getLL 
=>LL 
GetPropertyLL 
(LL 
(LL  
)LL  !
=>LL" $
trueLL% )
)LL) *
;LL* +
setMM 
=>MM 
SetPropertyMM 
(MM 
valueMM $
)MM$ %
;MM% &
}NN 	
publicPP 
overridePP 
IEnumerablePP #
<PP# $
OutcomePP$ +
>PP+ ,
GetPossibleOutcomesPP- @
(PP@ A$
WorkflowExecutionContextPPA Y
workflowContextPPZ i
,PPi j
ActivityContextPPk z
activityContext	PP{ ä
)
PPä ã
{QQ 	
returnRR 
OutcomesRR 
(RR 
SRR 
[RR 
$strRR $
]RR$ %
,RR% &
SRR' (
[RR( )
$strRR) 1
]RR1 2
)RR2 3
;RR3 4
}SS 	
publicUU 
overrideUU 
asyncUU 
TaskUU "
<UU" ##
ActivityExecutionResultUU# :
>UU: ;
ExecuteAsyncUU< H
(UUH I$
WorkflowExecutionContextUUI a
workflowContextUUb q
,UUq r
ActivityContext	UUs Ç
activityContext
UUÉ í
)
UUí ì
{VV 	
varWW 
authorWW 
=WW 
awaitWW  
_expressionEvaluatorWW 3
.WW3 4
EvaluateAsyncWW4 A
(WWA B
AuthorWWB H
,WWH I
workflowContextWWJ Y
,WWY Z
nullWW[ _
)WW_ `
;WW` a
varXX 
senderXX 
=XX 
awaitXX  
_expressionEvaluatorXX 3
.XX3 4
EvaluateAsyncXX4 A
(XXA B
SenderXXB H
,XXH I
workflowContextXXJ Y
,XXY Z
nullXX[ _
)XX_ `
;XX` a
varYY 
replyToYY 
=YY 
awaitYY  
_expressionEvaluatorYY  4
.YY4 5
EvaluateAsyncYY5 B
(YYB C
ReplyToYYC J
,YYJ K
workflowContextYYL [
,YY[ \
nullYY] a
)YYa b
;YYb c
varZZ 

recipientsZZ 
=ZZ 
awaitZZ " 
_expressionEvaluatorZZ# 7
.ZZ7 8
EvaluateAsyncZZ8 E
(ZZE F

RecipientsZZF P
,ZZP Q
workflowContextZZR a
,ZZa b
nullZZc g
)ZZg h
;ZZh i
var[[ 
subject[[ 
=[[ 
await[[  
_expressionEvaluator[[  4
.[[4 5
EvaluateAsync[[5 B
([[B C
Subject[[C J
,[[J K
workflowContext[[L [
,[[[ \
null[[] a
)[[a b
;[[b c
var]] 
body]] 
=]] 
await]]  
_expressionEvaluator]] 1
.]]1 2
EvaluateAsync]]2 ?
(]]? @
Body]]@ D
,]]D E
workflowContext]]F U
,]]U V

IsBodyHtml]]W a
?]]b c
_htmlEncoder]]d p
:]]q r
null]]s w
)]]w x
;]]x y
var__ 
message__ 
=__ 
new__ 
MailMessage__ )
{`` 
Frombb 
=bb 
authorbb 
?bb 
.bb 
Trimbb #
(bb# $
)bb$ %
??bb& (
senderbb) /
?bb/ 0
.bb0 1
Trimbb1 5
(bb5 6
)bb6 7
,bb7 8
Tocc 
=cc 

recipientscc 
.cc  
Trimcc  $
(cc$ %
)cc% &
,cc& '
ReplyToee 
=ee 
replyToee !
?ee! "
.ee" #
Trimee# '
(ee' (
)ee( )
,ee) *
Subjectff 
=ff 
subjectff !
.ff! "
Trimff" &
(ff& '
)ff' (
,ff( )
Bodygg 
=gg 
bodygg 
?gg 
.gg 
Trimgg !
(gg! "
)gg" #
,gg# $

IsBodyHtmlhh 
=hh 

IsBodyHtmlhh '
}ii 
;ii 
ifkk 
(kk 
!kk 
Stringkk 
.kk 
IsNullOrWhiteSpacekk *
(kk* +
senderkk+ 1
)kk1 2
)kk2 3
{ll 
messagemm 
.mm 
Sendermm 
=mm  
sendermm! '
.mm' (
Trimmm( ,
(mm, -
)mm- .
;mm. /
}nn 
varpp 
resultpp 
=pp 
awaitpp 
_smtpServicepp +
.pp+ ,
	SendAsyncpp, 5
(pp5 6
messagepp6 =
)pp= >
;pp> ?
workflowContextqq 
.qq 

LastResultqq &
=qq' (
resultqq) /
;qq/ 0
ifss 
(ss 
!ss 
resultss 
.ss 
	Succeededss !
)ss! "
{tt 
returnuu 
Outcomesuu 
(uu  
$struu  (
)uu( )
;uu) *
}vv 
returnxx 
Outcomesxx 
(xx 
$strxx "
)xx" #
;xx# $
}yy 	
}zz 
}{{ á!
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Workflows\Drivers\EmailTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Email 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class "
EmailTaskDisplayDriver '
:( )!
ActivityDisplayDriver* ?
<? @
	EmailTask@ I
,I J
EmailTaskViewModelK ]
>] ^
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
, -
	EmailTask

- 6
activity

7 ?
,

? @
EmailTaskViewModel

A S
model

T Y
)

Y Z
{ 	
model 
. 
SenderExpression "
=# $
activity% -
.- .
Sender. 4
.4 5

Expression5 ?
;? @
model 
. 
AuthorExpression "
=# $
activity% -
.- .
Author. 4
.4 5

Expression5 ?
;? @
model 
.  
RecipientsExpression &
=' (
activity) 1
.1 2

Recipients2 <
.< =

Expression= G
;G H
model 
. 
ReplyToExpression #
=$ %
activity& .
.. /
ReplyTo/ 6
.6 7

Expression7 A
;A B
model 
. 
SubjectExpression #
=$ %
activity& .
.. /
Subject/ 6
.6 7

Expression7 A
;A B
model 
. 
Body 
= 
activity !
.! "
Body" &
.& '

Expression' 1
;1 2
model 
. 

IsBodyHtml 
= 
activity '
.' (

IsBodyHtml( 2
;2 3
} 	
	protected 
override 
void 
UpdateActivity  .
(. /
EmailTaskViewModel/ A
modelB G
,G H
	EmailTaskI R
activityS [
)[ \
{ 	
activity 
. 
Sender 
= 
new !
WorkflowExpression" 4
<4 5
string5 ;
>; <
(< =
model= B
.B C
SenderExpressionC S
)S T
;T U
activity 
. 
Author 
= 
new !
WorkflowExpression" 4
<4 5
string5 ;
>; <
(< =
model= B
.B C
AuthorExpressionC S
)S T
;T U
activity 
. 

Recipients 
=  !
new" %
WorkflowExpression& 8
<8 9
string9 ?
>? @
(@ A
modelA F
.F G 
RecipientsExpressionG [
)[ \
;\ ]
activity 
. 
ReplyTo 
= 
new "
WorkflowExpression# 5
<5 6
string6 <
>< =
(= >
model> C
.C D
ReplyToExpressionD U
)U V
;V W
activity 
. 
Subject 
= 
new "
WorkflowExpression# 5
<5 6
string6 <
>< =
(= >
model> C
.C D
SubjectExpressionD U
)U V
;V W
activity 
. 
Body 
= 
new 
WorkflowExpression  2
<2 3
string3 9
>9 :
(: ;
model; @
.@ A
BodyA E
)E F
;F G
activity 
. 

IsBodyHtml 
=  !
model" '
.' (

IsBodyHtml( 2
;2 3
} 	
} 
}   ¶
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Workflows\Startup.cs
	namespace 	
OrchardCore
 
. 
Email 
. 
	Workflows %
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
<  !
	EmailTask! *
,* +"
EmailTaskDisplayDriver, B
>B C
(C D
)D E
;E F
} 	
} 
} ›
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Email\Workflows\ViewModels\EmailTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Email 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class 
EmailTaskViewModel #
{ 
public 
string 
AuthorExpression &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
string		 
SenderExpression		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public 
string 
ReplyToExpression '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	
Required	 
] 
public 
string  
RecipientsExpression *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
SubjectExpression '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
Body 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 

IsBodyHtml 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} 