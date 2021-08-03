Ó
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\AdminMenu.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
{ 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{		 
private

 
readonly

 
IStringLocalizer

 )
S

* +
;

+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
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
$str *
]* +
,+ ,
import- 3
=>4 6
import7 =
. 
Add 
( 
S 
[ 
$str 1
]1 2
,2 3
S4 5
[5 6
$str6 H
]H I
.I J
PrefixPositionJ X
(X Y
)Y Z
,Z [
remote\ b
=>c e
remotef l
. 
Action #
(# $
$str$ +
,+ ,
$str- =
,= >
new? B
{C D
areaE I
=J K
$strL k
}l m
)m n
. 

Permission '
(' (
Permissions( 3
.3 4!
ManageRemoteInstances4 I
)I J
. 
LocalNav %
(% &
)& '
) 
.   
Add   
(   
S   
[   
$str   /
]  / 0
,  0 1
S  2 3
[  3 4
$str  4 D
]  D E
.  E F
PrefixPosition  F T
(  T U
)  U V
,  V W
remote  X ^
=>  _ a
remote  b h
.!! 
Action!! #
(!!# $
$str!!$ +
,!!+ ,
$str!!- ;
,!!; <
new!!= @
{!!A B
area!!C G
=!!H I
$str!!J i
}!!j k
)!!k l
."" 

Permission"" '
(""' (
Permissions""( 3
.""3 4
ManageRemoteClients""4 G
)""G H
.## 
LocalNav## %
(##% &
)##& '
)$$ 
)%% 
)&& 
;&& 
return(( 
Task(( 
.(( 
CompletedTask(( %
;((% &
})) 	
}** 
}++ ®P
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Controllers\ExportRemoteInstanceController.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Controllers( 3
{ 
[ 
Admin 

]
 
public 

class *
ExportRemoteInstanceController /
:0 1

Controller2 <
{ 
private 
static 
readonly 

HttpClient  *
_httpClient+ 6
=7 8
new9 <

HttpClient= G
(G H
)H I
;I J
private 
readonly 
IDeploymentManager +
_deploymentManager, >
;> ?
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISession !
_session" *
;* +
private 
readonly !
RemoteInstanceService .
_service/ 7
;7 8
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public   *
ExportRemoteInstanceController   -
(  - .!
IAuthorizationService!! ! 
authorizationService!!" 6
,!!6 7
ISession"" 
session"" 
,"" !
RemoteInstanceService## !
service##" )
,##) *
IDeploymentManager$$ 
deploymentManager$$ 0
,$$0 1
	INotifier%% 
notifier%% 
,%% 
IHtmlLocalizer&& 
<&& *
ExportRemoteInstanceController&& 9
>&&9 :
	localizer&&; D
)&&D E
{'' 	!
_authorizationService(( !
=((" # 
authorizationService(($ 8
;((8 9
_deploymentManager)) 
=))  
deploymentManager))! 2
;))2 3
_session** 
=** 
session** 
;** 
_service++ 
=++ 
service++ 
;++ 
	_notifier,, 
=,, 
notifier,,  
;,,  !
H-- 
=-- 
	localizer-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Execute11) 0
(110 1
int111 4
id115 7
,117 8
string119 ?
remoteInstanceId11@ P
,11P Q
string11R X
	returnUrl11Y b
)11b c
{22 	
if33 
(33 
!33 
await33 !
_authorizationService33 ,
.33, -
AuthorizeAsync33- ;
(33; <
User33< @
,33@ A
Permissions33B M
.33M N
Export33N T
)33T U
)33U V
{44 
return55 
Forbid55 
(55 
)55 
;55  
}66 
var88 
deploymentPlan88 
=88  
await88! &
_session88' /
.88/ 0
GetAsync880 8
<888 9
DeploymentPlan889 G
>88G H
(88H I
id88I K
)88K L
;88L M
if:: 
(:: 
deploymentPlan:: 
==:: !
null::" &
)::& '
{;; 
return<< 
NotFound<< 
(<<  
)<<  !
;<<! "
}== 
var?? 
remoteInstance?? 
=??  
await??! &
_service??' /
.??/ 0"
GetRemoteInstanceAsync??0 F
(??F G
remoteInstanceId??G W
)??W X
;??X Y
ifAA 
(AA 
remoteInstanceAA 
==AA !
nullAA" &
)AA& '
{BB 
returnCC 
NotFoundCC 
(CC  
)CC  !
;CC! "
}DD 
stringFF 
archiveFileNameFF "
;FF" #
varGG 
filenameGG 
=GG 
deploymentPlanGG )
.GG) *
NameGG* .
.GG. /

ToSafeNameGG/ 9
(GG9 :
)GG: ;
+GG< =
$strGG> D
;GGD E
usingII 
(II 
varII 
fileBuilderII "
=II# $
newII% ( 
TemporaryFileBuilderII) =
(II= >
)II> ?
)II? @
{JJ 
archiveFileNameKK 
=KK  !
PathExtensionsKK" 0
.KK0 1
CombineKK1 8
(KK8 9
PathKK9 =
.KK= >
GetTempPathKK> I
(KKI J
)KKJ K
,KKK L
filenameKKM U
)KKU V
;KKV W
varMM  
deploymentPlanResultMM (
=MM) *
newMM+ . 
DeploymentPlanResultMM/ C
(MMC D
fileBuilderMMD O
,MMO P
newMMQ T
RecipeDescriptorMMU e
(MMe f
)MMf g
)MMg h
;MMh i
awaitNN 
_deploymentManagerNN (
.NN( )&
ExecuteDeploymentPlanAsyncNN) C
(NNC D
deploymentPlanNND R
,NNR S 
deploymentPlanResultNNT h
)NNh i
;NNi j
ifPP 
(PP 
SystemPP 
.PP 
IOPP 
.PP 
FilePP "
.PP" #
ExistsPP# )
(PP) *
archiveFileNamePP* 9
)PP9 :
)PP: ;
{QQ 
SystemRR 
.RR 
IORR 
.RR 
FileRR "
.RR" #
DeleteRR# )
(RR) *
archiveFileNameRR* 9
)RR9 :
;RR: ;
}SS 
ZipFileUU 
.UU 
CreateFromDirectoryUU +
(UU+ ,
fileBuilderUU, 7
.UU7 8
FolderUU8 >
,UU> ?
archiveFileNameUU@ O
)UUO P
;UUP Q
}VV 
HttpResponseMessageXX 
responseXX  (
;XX( )
tryZZ 
{[[ 
using\\ 
(\\ 
var\\ 
requestContent\\ )
=\\* +
new\\, /$
MultipartFormDataContent\\0 H
(\\H I
)\\I J
)\\J K
{]] 
requestContent^^ "
.^^" #
Add^^# &
(^^& '
new^^' *
StreamContent^^+ 8
(^^8 9
new__ 

FileStream__ &
(__& '
archiveFileName__' 6
,__6 7
FileMode``  
.``  !
Open``! %
,``% &

FileAccess``' 1
.``1 2
Read``2 6
,``6 7
	FileShare``8 A
.``A B
	ReadWrite``B K
,``K L
$num``M N
,``N O
FileOptions``P [
.``[ \
Asynchronous``\ h
|``i j
FileOptions``k v
.``v w
SequentialScan	``w Ö
)
``Ö Ü
)aa 
,aa 
nameofbb 
(bb 
ImportViewModelbb .
.bb. /
Contentbb/ 6
)bb6 7
,bb7 8
Pathbb9 =
.bb= >
GetFileNamebb> I
(bbI J
archiveFileNamebbJ Y
)bbY Z
)bbZ [
;bb[ \
requestContentcc "
.cc" #
Addcc# &
(cc& '
newcc' *
StringContentcc+ 8
(cc8 9
remoteInstancecc9 G
.ccG H

ClientNameccH R
)ccR S
,ccS T
nameofccU [
(cc[ \
ImportViewModelcc\ k
.cck l

ClientNameccl v
)ccv w
)ccw x
;ccx y
requestContentdd "
.dd" #
Adddd# &
(dd& '
newdd' *
StringContentdd+ 8
(dd8 9
remoteInstancedd9 G
.ddG H
ApiKeyddH N
)ddN O
,ddO P
nameofddQ W
(ddW X
ImportViewModelddX g
.ddg h
ApiKeyddh n
)ddn o
)ddo p
;ddp q
responseff 
=ff 
awaitff $
_httpClientff% 0
.ff0 1
	PostAsyncff1 :
(ff: ;
remoteInstanceff; I
.ffI J
UrlffJ M
,ffM N
requestContentffO ]
)ff] ^
;ff^ _
}gg 
ifii 
(ii 
responseii 
.ii 

StatusCodeii '
==ii( *
Systemii+ 1
.ii1 2
Netii2 5
.ii5 6
HttpStatusCodeii6 D
.iiD E
OKiiE G
)iiG H
{jj 
	_notifierkk 
.kk 
Successkk %
(kk% &
Hkk& '
[kk' (
$strkk( K
]kkK L
)kkL M
;kkM N
}ll 
elsemm 
{nn 
	_notifieroo 
.oo 
Erroroo #
(oo# $
Hoo$ %
[oo% &
$stroo& |
,oo| }
response	oo~ Ü
.
ooÜ á
ReasonPhrase
ooá ì
,
ooì î
(
ooï ñ
int
ooñ ô
)
ooô ö
response
ooö ¢
.
oo¢ £

StatusCode
oo£ ≠
]
oo≠ Æ
)
ooÆ Ø
;
ooØ ∞
}pp 
}qq 
finallyrr 
{ss 
Systemtt 
.tt 
IOtt 
.tt 
Filett 
.tt 
Deletett %
(tt% &
archiveFileNamett& 5
)tt5 6
;tt6 7
}uu 
ifww 
(ww 
!ww 
stringww 
.ww 
IsNullOrEmptyww %
(ww% &
	returnUrlww& /
)ww/ 0
)ww0 1
{xx 
returnyy 
LocalRedirectyy $
(yy$ %
	returnUrlyy% .
)yy. /
;yy/ 0
}zz 
return|| 
RedirectToAction|| #
(||# $
$str||$ -
,||- .
$str||/ ?
,||? @
new||A D
{||E F
area||G K
=||L M
$str||N f
,||f g
id||h j
}||k l
)||l m
;||m n
}}} 	
}~~ 
} Ù0
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Controllers\ImportRemoteInstanceController.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Controllers( 3
{ 
public 

class *
ImportRemoteInstanceController /
:0 1

Controller2 <
{ 
private 
readonly 
RemoteClientService , 
_remoteClientService- A
;A B
private 
readonly 
IDeploymentManager +
_deploymentManager, >
;> ?
private 
readonly 
IDataProtector '
_dataProtector( 6
;6 7
public *
ImportRemoteInstanceController -
(- .#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ;
RemoteClientService 
remoteClientService  3
,3 4
IDeploymentManager 
deploymentManager 0
,0 1
IHtmlLocalizer 
< *
ExportRemoteInstanceController 9
>9 :
	localizer; D
)D E
{ 	
_deploymentManager 
=  
deploymentManager! 2
;2 3 
_remoteClientService  
=! "
remoteClientService# 6
;6 7
_dataProtector 
= "
dataProtectionProvider 3
.3 4
CreateProtector4 C
(C D
$strD \
)\ ]
.] ^&
ToTimeLimitedDataProtector^ x
(x y
)y z
;z {
}   	
[&& 	
HttpPost&&	 
]&& 
['' 	"
IgnoreAntiforgeryToken''	 
]''  
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
Import(() /
(((/ 0
ImportViewModel((0 ?
model((@ E
)((E F
{)) 	
var** 
remoteClientList**  
=**! "
await**# ( 
_remoteClientService**) =
.**= >$
GetRemoteClientListAsync**> V
(**V W
)**W X
;**X Y
var,, 
remoteClient,, 
=,, 
remoteClientList,, /
.,,/ 0
RemoteClients,,0 =
.,,= >
FirstOrDefault,,> L
(,,L M
x,,M N
=>,,O Q
x,,R S
.,,S T

ClientName,,T ^
==,,_ a
model,,b g
.,,g h

ClientName,,h r
),,r s
;,,s t
var.. 
apiKey.. 
=.. 
Encoding.. !
...! "
UTF8.." &
...& '
	GetString..' 0
(..0 1
_dataProtector..1 ?
...? @
	Unprotect..@ I
(..I J
remoteClient..J V
...V W
ProtectedApiKey..W f
)..f g
)..g h
;..h i
if00 
(00 
remoteClient00 
==00 
null00  $
||00% '
model00( -
.00- .
ApiKey00. 4
!=005 7
apiKey008 >
||00? A
model00B G
.00G H

ClientName00H R
!=00S U
remoteClient00V b
.00b c

ClientName00c m
)00m n
{11 
return22 

StatusCode22 !
(22! "
(22" #
int22# &
)22& '
HttpStatusCode22' 5
.225 6

BadRequest226 @
,22@ A
$str22B b
)22b c
;22c d
}33 
var66 
tempArchiveName66 
=66  !
Path66" &
.66& '
GetTempFileName66' 6
(666 7
)667 8
+669 :
$str66; A
;66A B
var99 
tempArchiveFolder99 !
=99" #
PathExtensions99$ 2
.992 3
Combine993 :
(99: ;
Path99; ?
.99? @
GetTempPath99@ K
(99K L
)99L M
,99M N
Path99O S
.99S T
GetRandomFileName99T e
(99e f
)99f g
)99g h
;99h i
try;; 
{<< 
using== 
(== 
var== 
fs== 
=== 
System==  &
.==& '
IO==' )
.==) *
File==* .
.==. /
Create==/ 5
(==5 6
tempArchiveName==6 E
)==E F
)==F G
{>> 
await?? 
model?? 
.??  
Content??  '
.??' (
CopyToAsync??( 3
(??3 4
fs??4 6
)??6 7
;??7 8
}@@ 
ZipFileBB 
.BB 
ExtractToDirectoryBB *
(BB* +
tempArchiveNameBB+ :
,BB: ;
tempArchiveFolderBB< M
)BBM N
;BBN O
awaitDD 
_deploymentManagerDD (
.DD( )(
ImportDeploymentPackageAsyncDD) E
(DDE F
newDDF I 
PhysicalFileProviderDDJ ^
(DD^ _
tempArchiveFolderDD_ p
)DDp q
)DDq r
;DDr s
}EE 
finallyFF 
{GG 
ifHH 
(HH 
SystemHH 
.HH 
IOHH 
.HH 
FileHH "
.HH" #
ExistsHH# )
(HH) *
tempArchiveNameHH* 9
)HH9 :
)HH: ;
{II 
SystemJJ 
.JJ 
IOJJ 
.JJ 
FileJJ "
.JJ" #
DeleteJJ# )
(JJ) *
tempArchiveNameJJ* 9
)JJ9 :
;JJ: ;
}KK 
ifMM 
(MM 
	DirectoryMM 
.MM 
ExistsMM $
(MM$ %
tempArchiveFolderMM% 6
)MM6 7
)MM7 8
{NN 
	DirectoryOO 
.OO 
DeleteOO $
(OO$ %
tempArchiveFolderOO% 6
,OO6 7
trueOO8 <
)OO< =
;OO= >
}PP 
}QQ 
returnSS 
OkSS 
(SS 
)SS 
;SS 
}TT 	
}UU 
}VV ﬂ∞
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Controllers\RemoteClientController.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Controllers( 3
{ 
[ 
Admin 

]
 
public 

class "
RemoteClientController '
:( )

Controller* 4
{ 
private 
readonly 
IDataProtector '
_dataProtector( 6
;6 7
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
RemoteClientService , 
_remoteClientService- A
;A B
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private   
readonly   
dynamic    
New  ! $
;  $ %
private!! 
readonly!! 
IStringLocalizer!! )
S!!* +
;!!+ ,
private"" 
readonly"" 
IHtmlLocalizer"" '
H""( )
;"") *
public$$ "
RemoteClientController$$ %
($$% &#
IDataProtectionProvider%% #"
dataProtectionProvider%%$ :
,%%: ;
RemoteClientService&& 
remoteClientService&&  3
,&&3 4!
IAuthorizationService'' ! 
authorizationService''" 6
,''6 7
ISiteService(( 
siteService(( $
,(($ %
IShapeFactory)) 
shapeFactory)) &
,))& '
IStringLocalizer** 
<** "
RemoteClientController** 3
>**3 4
stringLocalizer**5 D
,**D E
IHtmlLocalizer++ 
<++ "
RemoteClientController++ 1
>++1 2
htmlLocalizer++3 @
,++@ A
	INotifier,, 
notifier,, 
)-- 
{.. 	!
_authorizationService// !
=//" # 
authorizationService//$ 8
;//8 9
_siteService00 
=00 
siteService00 &
;00& '
New11 
=11 
shapeFactory11 
;11 
S22 
=22 
stringLocalizer22 
;22  
H33 
=33 
htmlLocalizer33 
;33 
	_notifier44 
=44 
notifier44  
;44  ! 
_remoteClientService55  
=55! "
remoteClientService55# 6
;556 7
_dataProtector66 
=66 "
dataProtectionProvider66 3
.663 4
CreateProtector664 C
(66C D
$str66D \
)66\ ]
.66] ^&
ToTimeLimitedDataProtector66^ x
(66x y
)66y z
;66z {
}77 	
public99 
async99 
Task99 
<99 
IActionResult99 '
>99' (
Index99) .
(99. /
ContentOptions99/ =
options99> E
,99E F
PagerParameters99G V
pagerParameters99W f
)99f g
{:: 	
if;; 
(;; 
!;; 
await;; !
_authorizationService;; ,
.;;, -
AuthorizeAsync;;- ;
(;;; <
User;;< @
,;;@ A
Permissions;;B M
.;;M N
ManageRemoteClients;;N a
);;a b
);;b c
{<< 
return== 
Forbid== 
(== 
)== 
;==  
}>> 
var@@ 
siteSettings@@ 
=@@ 
await@@ $
_siteService@@% 1
.@@1 2 
GetSiteSettingsAsync@@2 F
(@@F G
)@@G H
;@@H I
varAA 
pagerAA 
=AA 
newAA 
PagerAA !
(AA! "
pagerParametersAA" 1
,AA1 2
siteSettingsAA3 ?
.AA? @
PageSizeAA@ H
)AAH I
;AAI J
varCC 
remoteClientsCC 
=CC 
(CC  !
awaitCC! & 
_remoteClientServiceCC' ;
.CC; <$
GetRemoteClientListAsyncCC< T
(CCT U
)CCU V
)CCV W
.CCW X
RemoteClientsCCX e
;CCe f
ifEE 
(EE 
!EE 
stringEE 
.EE 
IsNullOrWhiteSpaceEE *
(EE* +
optionsEE+ 2
.EE2 3
SearchEE3 9
)EE9 :
)EE: ;
{FF 
remoteClientsGG 
=GG 
remoteClientsGG  -
.GG- .
WhereGG. 3
(GG3 4
xGG4 5
=>GG6 8
xGG9 :
.GG: ;

ClientNameGG; E
.GGE F
ContainsGGF N
(GGN O
optionsGGO V
.GGV W
SearchGGW ]
,GG] ^
StringComparisonGG_ o
.GGo p
OrdinalIgnoreCase	GGp Å
)
GGÅ Ç
)
GGÇ É
.
GGÉ Ñ
ToList
GGÑ ä
(
GGä ã
)
GGã å
;
GGå ç
}HH 
varJJ 
countJJ 
=JJ 
remoteClientsJJ %
.JJ% &
CountJJ& +
(JJ+ ,
)JJ, -
;JJ- .
varLL 

startIndexLL 
=LL 
pagerLL "
.LL" #
GetStartIndexLL# 0
(LL0 1
)LL1 2
;LL2 3
varMM 
pageSizeMM 
=MM 
pagerMM  
.MM  !
PageSizeMM! )
;MM) *
varPP 
	routeDataPP 
=PP 
newPP 
	RouteDataPP  )
(PP) *
)PP* +
;PP+ ,
	routeDataQQ 
.QQ 
ValuesQQ 
.QQ 
AddQQ  
(QQ  !
$strQQ! 1
,QQ1 2
optionsQQ3 :
.QQ: ;
SearchQQ; A
)QQA B
;QQB C
varSS 

pagerShapeSS 
=SS 
(SS 
awaitSS #
NewSS$ '
.SS' (
PagerSS( -
(SS- .
pagerSS. 3
)SS3 4
)SS4 5
.SS5 6
TotalItemCountSS6 D
(SSD E
countSSE J
)SSJ K
.SSK L
	RouteDataSSL U
(SSU V
	routeDataSSV _
)SS_ `
;SS` a
varUU 
modelUU 
=UU 
newUU &
RemoteClientIndexViewModelUU 6
{VV 
RemoteClientsWW 
=WW 
remoteClientsWW  -
,WW- .
PagerXX 
=XX 

pagerShapeXX "
,XX" #
OptionsYY 
=YY 
optionsYY !
}ZZ 
;ZZ 
model\\ 
.\\ 
Options\\ 
.\\ 
ContentsBulkAction\\ ,
=\\- .
new\\/ 2
List\\3 7
<\\7 8
SelectListItem\\8 F
>\\F G
(\\G H
)\\H I
{\\J K
new]] 
SelectListItem]] "
(]]" #
)]]# $
{]]% &
Text]]' +
=]], -
S]]. /
[]]/ 0
$str]]0 8
]]]8 9
,]]9 :
Value]]; @
=]]A B
nameof]]C I
(]]I J
ContentsBulkAction]]J \
.]]\ ]
Remove]]] c
)]]c d
}]]e f
}^^ 
;^^ 
return`` 
View`` 
(`` 
model`` 
)`` 
;`` 
}aa 	
[cc 	
HttpPostcc	 
,cc 

ActionNamecc 
(cc 
$strcc %
)cc% &
]cc& '
[dd 	
FormValueRequireddd	 
(dd 
$strdd *
)dd* +
]dd+ ,
publicee 
ActionResultee 
IndexFilterPOSTee +
(ee+ ,&
RemoteClientIndexViewModelee, F
modeleeG L
)eeL M
{ff 	
returngg 
RedirectToActiongg #
(gg# $
$strgg$ +
,gg+ ,
newgg- 0 
RouteValueDictionarygg1 E
{ggF G
{hh 
$strhh "
,hh" #
modelhh$ )
.hh) *
Optionshh* 1
.hh1 2
Searchhh2 8
}hh9 :
}ii 
)ii 
;ii 
}jj 	
publicll 
asyncll 
Taskll 
<ll 
IActionResultll '
>ll' (
Createll) /
(ll/ 0
)ll0 1
{mm 	
ifnn 
(nn 
!nn 
awaitnn !
_authorizationServicenn ,
.nn, -
AuthorizeAsyncnn- ;
(nn; <
Usernn< @
,nn@ A
PermissionsnnB M
.nnM N
ManageRemoteClientsnnN a
)nna b
)nnb c
{oo 
returnpp 
Forbidpp 
(pp 
)pp 
;pp  
}qq 
varss 
modelss 
=ss 
newss %
EditRemoteClientViewModelss 5
(ss5 6
)ss6 7
;ss7 8
returnuu 
Viewuu 
(uu 
modeluu 
)uu 
;uu 
}vv 	
[xx 	
HttpPostxx	 
]xx 
publicyy 
asyncyy 
Taskyy 
<yy 
IActionResultyy '
>yy' (
Createyy) /
(yy/ 0%
EditRemoteClientViewModelyy0 I
modelyyJ O
)yyO P
{zz 	
if{{ 
({{ 
!{{ 
await{{ !
_authorizationService{{ ,
.{{, -
AuthorizeAsync{{- ;
({{; <
User{{< @
,{{@ A
Permissions{{B M
.{{M N
ManageRemoteClients{{N a
){{a b
){{b c
{|| 
return}} 
Forbid}} 
(}} 
)}} 
;}}  
}~~ 
if
ÄÄ 
(
ÄÄ 

ModelState
ÄÄ 
.
ÄÄ 
IsValid
ÄÄ "
)
ÄÄ" #
{
ÅÅ 
ValidateViewModel
ÇÇ !
(
ÇÇ! "
model
ÇÇ" '
)
ÇÇ' (
;
ÇÇ( )
}
ÉÉ 
if
ÖÖ 
(
ÖÖ 

ModelState
ÖÖ 
.
ÖÖ 
IsValid
ÖÖ "
)
ÖÖ" #
{
ÜÜ 
await
áá "
_remoteClientService
áá *
.
áá* +%
CreateRemoteClientAsync
áá+ B
(
ááB C
model
ááC H
.
ááH I

ClientName
ááI S
,
ááS T
model
ááU Z
.
ááZ [
ApiKey
áá[ a
)
ááa b
;
ááb c
	_notifier
ââ 
.
ââ 
Success
ââ !
(
ââ! "
H
ââ" #
[
ââ# $
$str
ââ$ I
]
ââI J
)
ââJ K
;
ââK L
return
ää 
RedirectToAction
ää '
(
ää' (
nameof
ää( .
(
ää. /
Index
ää/ 4
)
ää4 5
)
ää5 6
;
ää6 7
}
ãã 
return
éé 
View
éé 
(
éé 
model
éé 
)
éé 
;
éé 
}
èè 	
public
ëë 
async
ëë 
Task
ëë 
<
ëë 
IActionResult
ëë '
>
ëë' (
Edit
ëë) -
(
ëë- .
string
ëë. 4
id
ëë5 7
)
ëë7 8
{
íí 	
if
ìì 
(
ìì 
!
ìì 
await
ìì #
_authorizationService
ìì ,
.
ìì, -
AuthorizeAsync
ìì- ;
(
ìì; <
User
ìì< @
,
ìì@ A
Permissions
ììB M
.
ììM N!
ManageRemoteClients
ììN a
)
ììa b
)
ììb c
{
îî 
return
ïï 
Forbid
ïï 
(
ïï 
)
ïï 
;
ïï  
}
ññ 
var
òò 
remoteClient
òò 
=
òò 
await
òò $"
_remoteClientService
òò% 9
.
òò9 :"
GetRemoteClientAsync
òò: N
(
òòN O
id
òòO Q
)
òòQ R
;
òòR S
if
öö 
(
öö 
remoteClient
öö 
==
öö 
null
öö  $
)
öö$ %
{
õõ 
return
úú 
NotFound
úú 
(
úú  
)
úú  !
;
úú! "
}
ùù 
var
üü 
model
üü 
=
üü 
new
üü '
EditRemoteClientViewModel
üü 5
{
†† 
Id
°° 
=
°° 
remoteClient
°° !
.
°°! "
Id
°°" $
,
°°$ %

ClientName
¢¢ 
=
¢¢ 
remoteClient
¢¢ )
.
¢¢) *

ClientName
¢¢* 4
,
¢¢4 5
ApiKey
££ 
=
££ 
Encoding
££ !
.
££! "
UTF8
££" &
.
££& '
	GetString
££' 0
(
££0 1
_dataProtector
££1 ?
.
££? @
	Unprotect
££@ I
(
££I J
remoteClient
££J V
.
££V W
ProtectedApiKey
££W f
)
££f g
)
££g h
,
££h i
}
§§ 
;
§§ 
return
¶¶ 
View
¶¶ 
(
¶¶ 
model
¶¶ 
)
¶¶ 
;
¶¶ 
}
ßß 	
[
©© 	
HttpPost
©©	 
]
©© 
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
IActionResult
™™ '
>
™™' (
Edit
™™) -
(
™™- .'
EditRemoteClientViewModel
™™. G
model
™™H M
)
™™M N
{
´´ 	
if
¨¨ 
(
¨¨ 
!
¨¨ 
await
¨¨ #
_authorizationService
¨¨ ,
.
¨¨, -
AuthorizeAsync
¨¨- ;
(
¨¨; <
User
¨¨< @
,
¨¨@ A
Permissions
¨¨B M
.
¨¨M N!
ManageRemoteClients
¨¨N a
)
¨¨a b
)
¨¨b c
{
≠≠ 
return
ÆÆ 
Forbid
ÆÆ 
(
ÆÆ 
)
ÆÆ 
;
ÆÆ  
}
ØØ 
var
±± 
remoteClient
±± 
=
±± 
await
±± $"
_remoteClientService
±±% 9
.
±±9 :"
GetRemoteClientAsync
±±: N
(
±±N O
model
±±O T
.
±±T U
Id
±±U W
)
±±W X
;
±±X Y
if
≥≥ 
(
≥≥ 
remoteClient
≥≥ 
==
≥≥ 
null
≥≥  $
)
≥≥$ %
{
¥¥ 
return
µµ 
NotFound
µµ 
(
µµ  
)
µµ  !
;
µµ! "
}
∂∂ 
if
∏∏ 
(
∏∏ 

ModelState
∏∏ 
.
∏∏ 
IsValid
∏∏ "
)
∏∏" #
{
ππ 
ValidateViewModel
∫∫ !
(
∫∫! "
model
∫∫" '
)
∫∫' (
;
∫∫( )
}
ªª 
if
ΩΩ 
(
ΩΩ 

ModelState
ΩΩ 
.
ΩΩ 
IsValid
ΩΩ "
)
ΩΩ" #
{
ææ 
await
øø "
_remoteClientService
øø *
.
øø* +#
TryUpdateRemoteClient
øø+ @
(
øø@ A
model
øøA F
.
øøF G
Id
øøG I
,
øøI J
model
øøK P
.
øøP Q

ClientName
øøQ [
,
øø[ \
model
øø] b
.
øøb c
ApiKey
øøc i
)
øøi j
;
øøj k
	_notifier
¡¡ 
.
¡¡ 
Success
¡¡ !
(
¡¡! "
H
¡¡" #
[
¡¡# $
$str
¡¡$ I
]
¡¡I J
)
¡¡J K
;
¡¡K L
return
√√ 
RedirectToAction
√√ '
(
√√' (
nameof
√√( .
(
√√. /
Index
√√/ 4
)
√√4 5
)
√√5 6
;
√√6 7
}
ƒƒ 
return
«« 
View
«« 
(
«« 
model
«« 
)
«« 
;
«« 
}
»» 	
[
   	
HttpPost
  	 
]
   
public
ÀÀ 
async
ÀÀ 
Task
ÀÀ 
<
ÀÀ 
IActionResult
ÀÀ '
>
ÀÀ' (
Delete
ÀÀ) /
(
ÀÀ/ 0
string
ÀÀ0 6
id
ÀÀ7 9
)
ÀÀ9 :
{
ÃÃ 	
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
await
ÕÕ #
_authorizationService
ÕÕ ,
.
ÕÕ, -
AuthorizeAsync
ÕÕ- ;
(
ÕÕ; <
User
ÕÕ< @
,
ÕÕ@ A
Permissions
ÕÕB M
.
ÕÕM N!
ManageRemoteClients
ÕÕN a
)
ÕÕa b
)
ÕÕb c
{
ŒŒ 
return
œœ 
Forbid
œœ 
(
œœ 
)
œœ 
;
œœ  
}
–– 
var
““ 
remoteClient
““ 
=
““ 
await
““ $"
_remoteClientService
““% 9
.
““9 :"
GetRemoteClientAsync
““: N
(
““N O
id
““O Q
)
““Q R
;
““R S
if
‘‘ 
(
‘‘ 
remoteClient
‘‘ 
==
‘‘ 
null
‘‘  $
)
‘‘$ %
{
’’ 
return
÷÷ 
NotFound
÷÷ 
(
÷÷  
)
÷÷  !
;
÷÷! "
}
◊◊ 
await
ŸŸ "
_remoteClientService
ŸŸ &
.
ŸŸ& '%
DeleteRemoteClientAsync
ŸŸ' >
(
ŸŸ> ?
id
ŸŸ? A
)
ŸŸA B
;
ŸŸB C
	_notifier
€€ 
.
€€ 
Success
€€ 
(
€€ 
H
€€ 
[
€€  
$str
€€  E
]
€€E F
)
€€F G
;
€€G H
return
›› 
RedirectToAction
›› #
(
››# $
nameof
››$ *
(
››* +
Index
››+ 0
)
››0 1
)
››1 2
;
››2 3
}
ﬁﬁ 	
[
‡‡ 	
HttpPost
‡‡	 
,
‡‡ 

ActionName
‡‡ 
(
‡‡ 
$str
‡‡ %
)
‡‡% &
]
‡‡& '
[
·· 	
FormValueRequired
··	 
(
·· 
$str
·· .
)
··. /
]
··/ 0
public
‚‚ 
async
‚‚ 
Task
‚‚ 
<
‚‚ 
ActionResult
‚‚ &
>
‚‚& '
	IndexPost
‚‚( 1
(
‚‚1 2

ViewModels
‚‚2 <
.
‚‚< =
ContentOptions
‚‚= K
options
‚‚L S
,
‚‚S T
IEnumerable
‚‚U `
<
‚‚` a
string
‚‚a g
>
‚‚g h
itemIds
‚‚i p
)
‚‚p q
{
„„ 	
if
‰‰ 
(
‰‰ 
!
‰‰ 
await
‰‰ #
_authorizationService
‰‰ ,
.
‰‰, -
AuthorizeAsync
‰‰- ;
(
‰‰; <
User
‰‰< @
,
‰‰@ A
Permissions
‰‰B M
.
‰‰M N#
ManageRemoteInstances
‰‰N c
)
‰‰c d
)
‰‰d e
{
ÂÂ 
return
ÊÊ 
Forbid
ÊÊ 
(
ÊÊ 
)
ÊÊ 
;
ÊÊ  
}
ÁÁ 
if
ÈÈ 
(
ÈÈ 
itemIds
ÈÈ 
?
ÈÈ 
.
ÈÈ 
Count
ÈÈ 
(
ÈÈ 
)
ÈÈ  
>
ÈÈ! "
$num
ÈÈ# $
)
ÈÈ$ %
{
ÍÍ 
var
ÎÎ 
remoteClients
ÎÎ !
=
ÎÎ" #
(
ÎÎ$ %
await
ÎÎ% *"
_remoteClientService
ÎÎ+ ?
.
ÎÎ? @&
GetRemoteClientListAsync
ÎÎ@ X
(
ÎÎX Y
)
ÎÎY Z
)
ÎÎZ [
.
ÎÎ[ \
RemoteClients
ÎÎ\ i
;
ÎÎi j
var
ÏÏ !
checkedContentItems
ÏÏ '
=
ÏÏ( )
remoteClients
ÏÏ* 7
.
ÏÏ7 8
Where
ÏÏ8 =
(
ÏÏ= >
x
ÏÏ> ?
=>
ÏÏ@ B
itemIds
ÏÏC J
.
ÏÏJ K
Contains
ÏÏK S
(
ÏÏS T
x
ÏÏT U
.
ÏÏU V
Id
ÏÏV X
)
ÏÏX Y
)
ÏÏY Z
.
ÏÏZ [
ToList
ÏÏ[ a
(
ÏÏa b
)
ÏÏb c
;
ÏÏc d
switch
ÓÓ 
(
ÓÓ 
options
ÓÓ 
.
ÓÓ  

BulkAction
ÓÓ  *
)
ÓÓ* +
{
ÔÔ 
case
  
ContentsBulkAction
 +
.
+ ,
None
, 0
:
0 1
break
ÒÒ 
;
ÒÒ 
case
ÚÚ  
ContentsBulkAction
ÚÚ +
.
ÚÚ+ ,
Remove
ÚÚ, 2
:
ÚÚ2 3
foreach
ÛÛ 
(
ÛÛ  !
var
ÛÛ! $
item
ÛÛ% )
in
ÛÛ* ,!
checkedContentItems
ÛÛ- @
)
ÛÛ@ A
{
ÙÙ 
await
ıı !"
_remoteClientService
ıı" 6
.
ıı6 7%
DeleteRemoteClientAsync
ıı7 N
(
ııN O
item
ııO S
.
ııS T
Id
ııT V
)
ııV W
;
ııW X
}
ˆˆ 
	_notifier
˜˜ !
.
˜˜! "
Success
˜˜" )
(
˜˜) *
H
˜˜* +
[
˜˜+ ,
$str
˜˜, R
]
˜˜R S
)
˜˜S T
;
˜˜T U
break
¯¯ 
;
¯¯ 
default
˘˘ 
:
˘˘ 
throw
˙˙ 
new
˙˙ !)
ArgumentOutOfRangeException
˙˙" =
(
˙˙= >
)
˙˙> ?
;
˙˙? @
}
˚˚ 
}
¸¸ 
return
˛˛ 
RedirectToAction
˛˛ #
(
˛˛# $
$str
˛˛$ +
)
˛˛+ ,
;
˛˛, -
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ 
ValidateViewModel
ÅÅ &
(
ÅÅ& ''
EditRemoteClientViewModel
ÅÅ' @
model
ÅÅA F
)
ÅÅF G
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 
String
ÉÉ 
.
ÉÉ  
IsNullOrWhiteSpace
ÉÉ )
(
ÉÉ) *
model
ÉÉ* /
.
ÉÉ/ 0

ClientName
ÉÉ0 :
)
ÉÉ: ;
)
ÉÉ; <
{
ÑÑ 

ModelState
ÖÖ 
.
ÖÖ 
AddModelError
ÖÖ (
(
ÖÖ( )
nameof
ÖÖ) /
(
ÖÖ/ 0'
EditRemoteClientViewModel
ÖÖ0 I
.
ÖÖI J

ClientName
ÖÖJ T
)
ÖÖT U
,
ÖÖU V
S
ÖÖW X
[
ÖÖX Y
$str
ÖÖY x
]
ÖÖx y
)
ÖÖy z
;
ÖÖz {
}
ÜÜ 
if
àà 
(
àà 
String
àà 
.
àà  
IsNullOrWhiteSpace
àà )
(
àà) *
model
àà* /
.
àà/ 0
ApiKey
àà0 6
)
àà6 7
)
àà7 8
{
ââ 

ModelState
ää 
.
ää 
AddModelError
ää (
(
ää( )
nameof
ää) /
(
ää/ 0'
EditRemoteClientViewModel
ää0 I
.
ääI J
ApiKey
ääJ P
)
ääP Q
,
ääQ R
S
ääS T
[
ääT U
$str
ääU p
]
ääp q
)
ääq r
;
äär s
}
ãã 
}
åå 	
}
çç 
}éé ±æ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Controllers\RemoteInstanceController.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Controllers( 3
{ 
[ 
Admin 

]
 
public 

class $
RemoteInstanceController )
:* +

Controller, 6
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly !
RemoteInstanceService .
_service/ 7
;7 8
private 
readonly 
dynamic  
New! $
;$ %
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public!! $
RemoteInstanceController!! '
(!!' (!
RemoteInstanceService"" !
service""" )
,"") *!
IAuthorizationService## ! 
authorizationService##" 6
,##6 7
ISiteService$$ 
siteService$$ $
,$$$ %
IShapeFactory%% 
shapeFactory%% &
,%%& '
IStringLocalizer&& 
<&& $
RemoteInstanceController&& 5
>&&5 6
stringLocalizer&&7 F
,&&F G
IHtmlLocalizer'' 
<'' $
RemoteInstanceController'' 3
>''3 4
htmlLocalizer''5 B
,''B C
	INotifier(( 
notifier(( 
))) 
{** 	!
_authorizationService++ !
=++" # 
authorizationService++$ 8
;++8 9
_siteService,, 
=,, 
siteService,, &
;,,& '
New-- 
=-- 
shapeFactory-- 
;-- 
S.. 
=.. 
stringLocalizer.. 
;..  
H// 
=// 
htmlLocalizer// 
;// 
	_notifier00 
=00 
notifier00  
;00  !
_service11 
=11 
service11 
;11 
}22 	
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
Index44) .
(44. /
ContentOptions44/ =
options44> E
,44E F
PagerParameters44G V
pagerParameters44W f
)44f g
{55 	
if66 
(66 
!66 
await66 !
_authorizationService66 ,
.66, -
AuthorizeAsync66- ;
(66; <
User66< @
,66@ A
Permissions66B M
.66M N!
ManageRemoteInstances66N c
)66c d
)66d e
{77 
return88 
Forbid88 
(88 
)88 
;88  
}99 
var;; 
siteSettings;; 
=;; 
await;; $
_siteService;;% 1
.;;1 2 
GetSiteSettingsAsync;;2 F
(;;F G
);;G H
;;;H I
var<< 
pager<< 
=<< 
new<< 
Pager<< !
(<<! "
pagerParameters<<" 1
,<<1 2
siteSettings<<3 ?
.<<? @
PageSize<<@ H
)<<H I
;<<I J
var>> 
remoteInstances>> 
=>>  !
(>>" #
await>># (
_service>>) 1
.>>1 2&
GetRemoteInstanceListAsync>>2 L
(>>L M
)>>M N
)>>N O
.>>O P
RemoteInstances>>P _
;>>_ `
if@@ 
(@@ 
!@@ 
string@@ 
.@@ 
IsNullOrWhiteSpace@@ *
(@@* +
options@@+ 2
.@@2 3
Search@@3 9
)@@9 :
)@@: ;
{AA 
remoteInstancesBB 
=BB  !
remoteInstancesBB" 1
.BB1 2
WhereBB2 7
(BB7 8
xBB8 9
=>BB: <
xBB= >
.BB> ?
NameBB? C
.BBC D
ContainsBBD L
(BBL M
optionsBBM T
.BBT U
SearchBBU [
,BB[ \
StringComparisonBB] m
.BBm n
OrdinalIgnoreCaseBBn 
)	BB Ä
)
BBÄ Å
.
BBÅ Ç
ToList
BBÇ à
(
BBà â
)
BBâ ä
;
BBä ã
}CC 
varEE 
countEE 
=EE 
remoteInstancesEE '
.EE' (
CountEE( -
(EE- .
)EE. /
;EE/ 0
varGG 

startIndexGG 
=GG 
pagerGG "
.GG" #
GetStartIndexGG# 0
(GG0 1
)GG1 2
;GG2 3
varHH 
pageSizeHH 
=HH 
pagerHH  
.HH  !
PageSizeHH! )
;HH) *
varKK 
	routeDataKK 
=KK 
newKK 
	RouteDataKK  )
(KK) *
)KK* +
;KK+ ,
	routeDataLL 
.LL 
ValuesLL 
.LL 
AddLL  
(LL  !
$strLL! 1
,LL1 2
optionsLL3 :
.LL: ;
SearchLL; A
)LLA B
;LLB C
varNN 

pagerShapeNN 
=NN 
(NN 
awaitNN #
NewNN$ '
.NN' (
PagerNN( -
(NN- .
pagerNN. 3
)NN3 4
)NN4 5
.NN5 6
TotalItemCountNN6 D
(NND E
countNNE J
)NNJ K
.NNK L
	RouteDataNNL U
(NNU V
	routeDataNNV _
)NN_ `
;NN` a
varPP 
modelPP 
=PP 
newPP (
RemoteInstanceIndexViewModelPP 8
{QQ 
RemoteInstancesRR 
=RR  !
remoteInstancesRR" 1
,RR1 2
PagerSS 
=SS 

pagerShapeSS "
,SS" #
OptionsTT 
=TT 
optionsTT !
}UU 
;UU 
modelWW 
.WW 
OptionsWW 
.WW 
ContentsBulkActionWW ,
=WW- .
newWW/ 2
ListWW3 7
<WW7 8
SelectListItemWW8 F
>WWF G
(WWG H
)WWH I
{WWJ K
newXX 
SelectListItemXX "
(XX" #
)XX# $
{XX% &
TextXX' +
=XX, -
SXX. /
[XX/ 0
$strXX0 8
]XX8 9
,XX9 :
ValueXX; @
=XXA B
nameofXXC I
(XXI J
ContentsBulkActionXXJ \
.XX\ ]
RemoveXX] c
)XXc d
}XXe f
}YY 
;YY 
return[[ 
View[[ 
([[ 
model[[ 
)[[ 
;[[ 
}\\ 	
[^^ 	
HttpPost^^	 
,^^ 

ActionName^^ 
(^^ 
$str^^ %
)^^% &
]^^& '
[__ 	
FormValueRequired__	 
(__ 
$str__ *
)__* +
]__+ ,
public`` 
ActionResult`` 
IndexFilterPOST`` +
(``+ ,(
RemoteInstanceIndexViewModel``, H
model``I N
)``N O
{aa 	
returnbb 
RedirectToActionbb #
(bb# $
$strbb$ +
,bb+ ,
newbb- 0 
RouteValueDictionarybb1 E
{bbF G
{cc 
$strcc "
,cc" #
modelcc$ )
.cc) *
Optionscc* 1
.cc1 2
Searchcc2 8
}cc9 :
}dd 
)dd 
;dd 
}ee 	
publicgg 
asyncgg 
Taskgg 
<gg 
IActionResultgg '
>gg' (
Creategg) /
(gg/ 0
)gg0 1
{hh 	
ifii 
(ii 
!ii 
awaitii !
_authorizationServiceii ,
.ii, -
AuthorizeAsyncii- ;
(ii; <
Userii< @
,ii@ A
PermissionsiiB M
.iiM N!
ManageRemoteInstancesiiN c
)iic d
)iid e
{jj 
returnkk 
Forbidkk 
(kk 
)kk 
;kk  
}ll 
varnn 
modelnn 
=nn 
newnn '
EditRemoteInstanceViewModelnn 7
(nn7 8
)nn8 9
;nn9 :
returnpp 
Viewpp 
(pp 
modelpp 
)pp 
;pp 
}qq 	
[ss 	
HttpPostss	 
]ss 
publictt 
asynctt 
Tasktt 
<tt 
IActionResulttt '
>tt' (
Creatett) /
(tt/ 0'
EditRemoteInstanceViewModeltt0 K
modelttL Q
)ttQ R
{uu 	
ifvv 
(vv 
!vv 
awaitvv !
_authorizationServicevv ,
.vv, -
AuthorizeAsyncvv- ;
(vv; <
Uservv< @
,vv@ A
PermissionsvvB M
.vvM N!
ManageRemoteInstancesvvN c
)vvc d
)vvd e
{ww 
returnxx 
Forbidxx 
(xx 
)xx 
;xx  
}yy 
if{{ 
({{ 

ModelState{{ 
.{{ 
IsValid{{ "
){{" #
{|| 
ValidateViewModel}} !
(}}! "
model}}" '
)}}' (
;}}( )
}~~ 
if
ÄÄ 
(
ÄÄ 

ModelState
ÄÄ 
.
ÄÄ 
IsValid
ÄÄ "
)
ÄÄ" #
{
ÅÅ 
await
ÇÇ 
_service
ÇÇ 
.
ÇÇ '
CreateRemoteInstanceAsync
ÇÇ 8
(
ÇÇ8 9
model
ÇÇ9 >
.
ÇÇ> ?
Name
ÇÇ? C
,
ÇÇC D
model
ÇÇE J
.
ÇÇJ K
Url
ÇÇK N
,
ÇÇN O
model
ÇÇP U
.
ÇÇU V

ClientName
ÇÇV `
,
ÇÇ` a
model
ÇÇb g
.
ÇÇg h
ApiKey
ÇÇh n
)
ÇÇn o
;
ÇÇo p
	_notifier
ÑÑ 
.
ÑÑ 
Success
ÑÑ !
(
ÑÑ! "
H
ÑÑ" #
[
ÑÑ# $
$str
ÑÑ$ K
]
ÑÑK L
)
ÑÑL M
;
ÑÑM N
return
ÖÖ 
RedirectToAction
ÖÖ '
(
ÖÖ' (
nameof
ÖÖ( .
(
ÖÖ. /
Index
ÖÖ/ 4
)
ÖÖ4 5
)
ÖÖ5 6
;
ÖÖ6 7
}
ÜÜ 
return
ââ 
View
ââ 
(
ââ 
model
ââ 
)
ââ 
;
ââ 
}
ää 	
public
åå 
async
åå 
Task
åå 
<
åå 
IActionResult
åå '
>
åå' (
Edit
åå) -
(
åå- .
string
åå. 4
id
åå5 7
)
åå7 8
{
çç 	
if
éé 
(
éé 
!
éé 
await
éé #
_authorizationService
éé ,
.
éé, -
AuthorizeAsync
éé- ;
(
éé; <
User
éé< @
,
éé@ A
Permissions
ééB M
.
ééM N#
ManageRemoteInstances
ééN c
)
ééc d
)
ééd e
{
èè 
return
êê 
Forbid
êê 
(
êê 
)
êê 
;
êê  
}
ëë 
var
ìì 
remoteInstance
ìì 
=
ìì  
await
ìì! &
_service
ìì' /
.
ìì/ 0$
GetRemoteInstanceAsync
ìì0 F
(
ììF G
id
ììG I
)
ììI J
;
ììJ K
if
ïï 
(
ïï 
remoteInstance
ïï 
==
ïï !
null
ïï" &
)
ïï& '
{
ññ 
return
óó 
NotFound
óó 
(
óó  
)
óó  !
;
óó! "
}
òò 
var
öö 
model
öö 
=
öö 
new
öö )
EditRemoteInstanceViewModel
öö 7
{
õõ 
Id
úú 
=
úú 
remoteInstance
úú #
.
úú# $
Id
úú$ &
,
úú& '
Name
ùù 
=
ùù 
remoteInstance
ùù %
.
ùù% &
Name
ùù& *
,
ùù* +

ClientName
ûû 
=
ûû 
remoteInstance
ûû +
.
ûû+ ,

ClientName
ûû, 6
,
ûû6 7
ApiKey
üü 
=
üü 
remoteInstance
üü '
.
üü' (
ApiKey
üü( .
,
üü. /
Url
†† 
=
†† 
remoteInstance
†† $
.
††$ %
Url
††% (
}
°° 
;
°° 
return
££ 
View
££ 
(
££ 
model
££ 
)
££ 
;
££ 
}
§§ 	
[
¶¶ 	
HttpPost
¶¶	 
]
¶¶ 
public
ßß 
async
ßß 
Task
ßß 
<
ßß 
IActionResult
ßß '
>
ßß' (
Edit
ßß) -
(
ßß- .)
EditRemoteInstanceViewModel
ßß. I
model
ßßJ O
)
ßßO P
{
®® 	
if
©© 
(
©© 
!
©© 
await
©© #
_authorizationService
©© ,
.
©©, -
AuthorizeAsync
©©- ;
(
©©; <
User
©©< @
,
©©@ A
Permissions
©©B M
.
©©M N#
ManageRemoteInstances
©©N c
)
©©c d
)
©©d e
{
™™ 
return
´´ 
Forbid
´´ 
(
´´ 
)
´´ 
;
´´  
}
¨¨ 
var
ÆÆ 
remoteInstance
ÆÆ 
=
ÆÆ  
await
ÆÆ! &
_service
ÆÆ' /
.
ÆÆ/ 0%
LoadRemoteInstanceAsync
ÆÆ0 G
(
ÆÆG H
model
ÆÆH M
.
ÆÆM N
Id
ÆÆN P
)
ÆÆP Q
;
ÆÆQ R
if
∞∞ 
(
∞∞ 
remoteInstance
∞∞ 
==
∞∞ !
null
∞∞" &
)
∞∞& '
{
±± 
return
≤≤ 
NotFound
≤≤ 
(
≤≤  
)
≤≤  !
;
≤≤! "
}
≥≥ 
if
µµ 
(
µµ 

ModelState
µµ 
.
µµ 
IsValid
µµ "
)
µµ" #
{
∂∂ 
ValidateViewModel
∑∑ !
(
∑∑! "
model
∑∑" '
)
∑∑' (
;
∑∑( )
}
∏∏ 
if
∫∫ 
(
∫∫ 

ModelState
∫∫ 
.
∫∫ 
IsValid
∫∫ "
)
∫∫" #
{
ªª 
await
ºº 
_service
ºº 
.
ºº "
UpdateRemoteInstance
ºº 3
(
ºº3 4
model
ºº4 9
.
ºº9 :
Id
ºº: <
,
ºº< =
model
ºº> C
.
ººC D
Name
ººD H
,
ººH I
model
ººJ O
.
ººO P
Url
ººP S
,
ººS T
model
ººU Z
.
ººZ [

ClientName
ºº[ e
,
ººe f
model
ººg l
.
ººl m
ApiKey
ººm s
)
ººs t
;
ººt u
	_notifier
ææ 
.
ææ 
Success
ææ !
(
ææ! "
H
ææ" #
[
ææ# $
$str
ææ$ K
]
ææK L
)
ææL M
;
ææM N
return
¿¿ 
RedirectToAction
¿¿ '
(
¿¿' (
nameof
¿¿( .
(
¿¿. /
Index
¿¿/ 4
)
¿¿4 5
)
¿¿5 6
;
¿¿6 7
}
¡¡ 
return
ƒƒ 
View
ƒƒ 
(
ƒƒ 
model
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
≈≈ 	
[
«« 	
HttpPost
««	 
]
«« 
public
»» 
async
»» 
Task
»» 
<
»» 
IActionResult
»» '
>
»»' (
Delete
»») /
(
»»/ 0
string
»»0 6
id
»»7 9
)
»»9 :
{
…… 	
if
   
(
   
!
   
await
   #
_authorizationService
   ,
.
  , -
AuthorizeAsync
  - ;
(
  ; <
User
  < @
,
  @ A
Permissions
  B M
.
  M N#
ManageRemoteInstances
  N c
)
  c d
)
  d e
{
ÀÀ 
return
ÃÃ 
Forbid
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ  
}
ÕÕ 
var
œœ 
remoteInstance
œœ 
=
œœ  
await
œœ! &
_service
œœ' /
.
œœ/ 0%
LoadRemoteInstanceAsync
œœ0 G
(
œœG H
id
œœH J
)
œœJ K
;
œœK L
if
—— 
(
—— 
remoteInstance
—— 
==
—— !
null
——" &
)
——& '
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
‘‘ 
await
÷÷ 
_service
÷÷ 
.
÷÷ '
DeleteRemoteInstanceAsync
÷÷ 4
(
÷÷4 5
id
÷÷5 7
)
÷÷7 8
;
÷÷8 9
	_notifier
ÿÿ 
.
ÿÿ 
Success
ÿÿ 
(
ÿÿ 
H
ÿÿ 
[
ÿÿ  
$str
ÿÿ  G
]
ÿÿG H
)
ÿÿH I
;
ÿÿI J
return
⁄⁄ 
RedirectToAction
⁄⁄ #
(
⁄⁄# $
nameof
⁄⁄$ *
(
⁄⁄* +
Index
⁄⁄+ 0
)
⁄⁄0 1
)
⁄⁄1 2
;
⁄⁄2 3
}
€€ 	
[
›› 	
HttpPost
››	 
,
›› 

ActionName
›› 
(
›› 
$str
›› %
)
››% &
]
››& '
[
ﬁﬁ 	
FormValueRequired
ﬁﬁ	 
(
ﬁﬁ 
$str
ﬁﬁ .
)
ﬁﬁ. /
]
ﬁﬁ/ 0
public
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ 
ActionResult
ﬂﬂ &
>
ﬂﬂ& '
	IndexPost
ﬂﬂ( 1
(
ﬂﬂ1 2

ViewModels
ﬂﬂ2 <
.
ﬂﬂ< =
ContentOptions
ﬂﬂ= K
options
ﬂﬂL S
,
ﬂﬂS T
IEnumerable
ﬂﬂU `
<
ﬂﬂ` a
string
ﬂﬂa g
>
ﬂﬂg h
itemIds
ﬂﬂi p
)
ﬂﬂp q
{
‡‡ 	
if
·· 
(
·· 
!
·· 
await
·· #
_authorizationService
·· ,
.
··, -
AuthorizeAsync
··- ;
(
··; <
User
··< @
,
··@ A
Permissions
··B M
.
··M N#
ManageRemoteInstances
··N c
)
··c d
)
··d e
{
‚‚ 
return
„„ 
Forbid
„„ 
(
„„ 
)
„„ 
;
„„  
}
‰‰ 
if
ÊÊ 
(
ÊÊ 
itemIds
ÊÊ 
?
ÊÊ 
.
ÊÊ 
Count
ÊÊ 
(
ÊÊ 
)
ÊÊ  
>
ÊÊ! "
$num
ÊÊ# $
)
ÊÊ$ %
{
ÁÁ 
var
ËË 
remoteInstances
ËË #
=
ËË$ %
(
ËË& '
await
ËË' ,
_service
ËË- 5
.
ËË5 6)
LoadRemoteInstanceListAsync
ËË6 Q
(
ËËQ R
)
ËËR S
)
ËËS T
.
ËËT U
RemoteInstances
ËËU d
;
ËËd e
var
ÈÈ !
checkedContentItems
ÈÈ '
=
ÈÈ( )
remoteInstances
ÈÈ* 9
.
ÈÈ9 :
Where
ÈÈ: ?
(
ÈÈ? @
x
ÈÈ@ A
=>
ÈÈB D
itemIds
ÈÈE L
.
ÈÈL M
Contains
ÈÈM U
(
ÈÈU V
x
ÈÈV W
.
ÈÈW X
Id
ÈÈX Z
)
ÈÈZ [
)
ÈÈ[ \
.
ÈÈ\ ]
ToList
ÈÈ] c
(
ÈÈc d
)
ÈÈd e
;
ÈÈe f
switch
ÎÎ 
(
ÎÎ 
options
ÎÎ 
.
ÎÎ  

BulkAction
ÎÎ  *
)
ÎÎ* +
{
ÏÏ 
case
ÌÌ  
ContentsBulkAction
ÌÌ +
.
ÌÌ+ ,
None
ÌÌ, 0
:
ÌÌ0 1
break
ÓÓ 
;
ÓÓ 
case
ÔÔ  
ContentsBulkAction
ÔÔ +
.
ÔÔ+ ,
Remove
ÔÔ, 2
:
ÔÔ2 3
foreach
 
(
  !
var
! $
item
% )
in
* ,!
checkedContentItems
- @
)
@ A
{
ÒÒ 
await
ÚÚ !
_service
ÚÚ" *
.
ÚÚ* +'
DeleteRemoteInstanceAsync
ÚÚ+ D
(
ÚÚD E
item
ÚÚE I
.
ÚÚI J
Id
ÚÚJ L
)
ÚÚL M
;
ÚÚM N
}
ÛÛ 
	_notifier
ÙÙ !
.
ÙÙ! "
Success
ÙÙ" )
(
ÙÙ) *
H
ÙÙ* +
[
ÙÙ+ ,
$str
ÙÙ, T
]
ÙÙT U
)
ÙÙU V
;
ÙÙV W
break
ıı 
;
ıı 
default
ˆˆ 
:
ˆˆ 
throw
˜˜ 
new
˜˜ !)
ArgumentOutOfRangeException
˜˜" =
(
˜˜= >
)
˜˜> ?
;
˜˜? @
}
¯¯ 
}
˘˘ 
return
˚˚ 
RedirectToAction
˚˚ #
(
˚˚# $
$str
˚˚$ +
)
˚˚+ ,
;
˚˚, -
}
¸¸ 	
private
˛˛ 
void
˛˛ 
ValidateViewModel
˛˛ &
(
˛˛& ')
EditRemoteInstanceViewModel
˛˛' B
model
˛˛C H
)
˛˛H I
{
ˇˇ 	
if
ÄÄ 
(
ÄÄ 
String
ÄÄ 
.
ÄÄ  
IsNullOrWhiteSpace
ÄÄ )
(
ÄÄ) *
model
ÄÄ* /
.
ÄÄ/ 0
Name
ÄÄ0 4
)
ÄÄ4 5
)
ÄÄ5 6
{
ÅÅ 

ModelState
ÇÇ 
.
ÇÇ 
AddModelError
ÇÇ (
(
ÇÇ( )
nameof
ÇÇ) /
(
ÇÇ/ 0)
EditRemoteInstanceViewModel
ÇÇ0 K
.
ÇÇK L
Name
ÇÇL P
)
ÇÇP Q
,
ÇÇQ R
S
ÇÇS T
[
ÇÇT U
$str
ÇÇU m
]
ÇÇm n
)
ÇÇn o
;
ÇÇo p
}
ÉÉ 
if
ÖÖ 
(
ÖÖ 
String
ÖÖ 
.
ÖÖ  
IsNullOrWhiteSpace
ÖÖ )
(
ÖÖ) *
model
ÖÖ* /
.
ÖÖ/ 0

ClientName
ÖÖ0 :
)
ÖÖ: ;
)
ÖÖ; <
{
ÜÜ 

ModelState
áá 
.
áá 
AddModelError
áá (
(
áá( )
nameof
áá) /
(
áá/ 0)
EditRemoteInstanceViewModel
áá0 K
.
ááK L

ClientName
ááL V
)
ááV W
,
ááW X
S
ááY Z
[
ááZ [
$str
áá[ z
]
ááz {
)
áá{ |
;
áá| }
}
àà 
if
ää 
(
ää 
String
ää 
.
ää  
IsNullOrWhiteSpace
ää )
(
ää) *
model
ää* /
.
ää/ 0
ApiKey
ää0 6
)
ää6 7
)
ää7 8
{
ãã 

ModelState
åå 
.
åå 
AddModelError
åå (
(
åå( )
nameof
åå) /
(
åå/ 0)
EditRemoteInstanceViewModel
åå0 K
.
ååK L
ApiKey
ååL R
)
ååR S
,
ååS T
S
ååU V
[
ååV W
$str
ååW r
]
åår s
)
åås t
;
ååt u
}
çç 
if
èè 
(
èè 
String
èè 
.
èè  
IsNullOrWhiteSpace
èè )
(
èè) *
model
èè* /
.
èè/ 0
Url
èè0 3
)
èè3 4
)
èè4 5
{
êê 

ModelState
ëë 
.
ëë 
AddModelError
ëë (
(
ëë( )
nameof
ëë) /
(
ëë/ 0)
EditRemoteInstanceViewModel
ëë0 K
.
ëëK L
Url
ëëL O
)
ëëO P
,
ëëP Q
S
ëëR S
[
ëëS T
$str
ëëT k
]
ëëk l
)
ëël m
;
ëëm n
}
íí 
else
ìì 
{
îî 
Uri
ïï 
uri
ïï 
;
ïï 
if
ññ 
(
ññ 
!
ññ 
Uri
ññ 
.
ññ 
	TryCreate
ññ "
(
ññ" #
model
ññ# (
.
ññ( )
Url
ññ) ,
,
ññ, -
UriKind
ññ. 5
.
ññ5 6
Absolute
ññ6 >
,
ññ> ?
out
ññ@ C
uri
ññD G
)
ññG H
)
ññH I
{
óó 

ModelState
òò 
.
òò 
AddModelError
òò ,
(
òò, -
nameof
òò- 3
(
òò3 4)
EditRemoteInstanceViewModel
òò4 O
.
òòO P
Url
òòP S
)
òòS T
,
òòT U
S
òòV W
[
òòW X
$str
òòX m
]
òòm n
)
òòn o
;
òòo p
}
ôô 
}
öö 
}
õõ 	
}
úú 
}ùù ’
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str Y
,Y Z
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 3
}		4 5
,		5 6
Category

 
=

 
$str

 
) 
] û
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Models\RemoteClient.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Models( .
{ 
public 

class 
RemoteClient 
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 

ClientName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
byte 
[ 
] 
ProtectedApiKey %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
}		 °
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Models\RemoteClientList.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Models( .
{ 
public 

class 
RemoteClientList !
{ 
public 
List 
< 
RemoteClient  
>  !
RemoteClients" /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
new@ C
ListD H
<H I
RemoteClientI U
>U V
(V W
)W X
;X Y
} 
}		 ¨	
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Models\RemoteInstance.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Models( .
{ 
public 

class 
RemoteInstance 
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

ClientName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
ApiKey		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
}

 
} –
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Models\RemoteInstanceList.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Models( .
{ 
public 

class 
RemoteInstanceList #
:$ %
Document& .
{ 
public 
List 
< 
RemoteInstance "
>" #
RemoteInstances$ 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
=B C
newD G
ListH L
<L M
RemoteInstanceM [
>[ \
(\ ]
)] ^
;^ _
}		 
}

 Ñ
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Permissions.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
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
 )!
ManageRemoteInstances

* ?
=

@ A
new

B E

Permission

F P
(

P Q
$str

Q h
,

h i
$str	

j É
)


É Ñ
;


Ñ Ö
public 
static 
readonly 

Permission )
ManageRemoteClients* =
=> ?
new@ C

PermissionD N
(N O
$strO d
,d e
$strf }
)} ~
;~ 
public 
static 
readonly 

Permission )
Export* 0
=1 2
new3 6

Permission7 A
(A B
$strB Y
,Y Z
$str[ w
)w x
;x y
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{) *!
ManageRemoteInstances+ @
,@ A
ManageRemoteClientsB U
,U V
ExportW ]
}^ _
._ `
AsEnumerable` l
(l m
)m n
)n o
;o p
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )!
ManageRemoteInstances* ?
,? @
ManageRemoteClientsA T
,T U
ExportV \
}] ^
} 
} 
; 
} 	
} 
} Ë
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Properties\AssemblyInfo.cs
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
$str		 :
)		: ;
]		; <
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
]7 8º:
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Services\RemoteClientService.cs
	namespace		 	
OrchardCore		
 
.		 

Deployment		  
.		  !
Remote		! '
.		' (
Services		( 0
{

 
public 

class 
RemoteClientService $
{ 
private 
readonly 
IDataProtector '
_dataProtector( 6
;6 7
private 
readonly 
ISession !
_session" *
;* +
private 
RemoteClientList  
_remoteClientList! 2
;2 3
public 
RemoteClientService "
(" #
ISession 
session 
, #
IDataProtectionProvider #"
dataProtectionProvider$ :
) 
{ 	
_dataProtector 
= "
dataProtectionProvider 3
.3 4
CreateProtector4 C
(C D
$strD \
)\ ]
.] ^&
ToTimeLimitedDataProtector^ x
(x y
)y z
;z {
_session 
= 
session 
; 
} 	
public 
async 
Task 
< 
RemoteClientList *
>* +$
GetRemoteClientListAsync, D
(D E
)E F
{ 	
if 
( 
_remoteClientList !
!=" $
null% )
)) *
{ 
return 
_remoteClientList (
;( )
}   
_remoteClientList"" 
="" 
await""  %
_session""& .
."". /
Query""/ 4
<""4 5
RemoteClientList""5 E
>""E F
(""F G
)""G H
.""H I
FirstOrDefaultAsync""I \
(""\ ]
)""] ^
;""^ _
if$$ 
($$ 
_remoteClientList$$ !
==$$" $
null$$% )
)$$) *
{%% 
_remoteClientList&& !
=&&" #
new&&$ '
RemoteClientList&&( 8
(&&8 9
)&&9 :
;&&: ;
_session'' 
.'' 
Save'' 
('' 
_remoteClientList'' /
)''/ 0
;''0 1
}(( 
return** 
_remoteClientList** $
;**$ %
}++ 	
public-- 
async-- 
Task-- 
<-- 
RemoteClient-- &
>--& ' 
GetRemoteClientAsync--( <
(--< =
string--= C
id--D F
)--F G
{.. 	
var// 
remoteClientList//  
=//! "
await//# ($
GetRemoteClientListAsync//) A
(//A B
)//B C
;//C D
return00 
remoteClientList00 #
.00# $
RemoteClients00$ 1
.001 2
FirstOrDefault002 @
(00@ A
x00A B
=>00C E
String00F L
.00L M
Equals00M S
(00S T
x00T U
.00U V
Id00V X
,00X Y
id00Z \
,00\ ]
StringComparison00^ n
.00n o
OrdinalIgnoreCase	00o Ä
)
00Ä Å
)
00Å Ç
;
00Ç É
}11 	
public33 
async33 
Task33 #
DeleteRemoteClientAsync33 1
(331 2
string332 8
id339 ;
)33; <
{44 	
var55 
remoteClientList55  
=55! "
await55# ($
GetRemoteClientListAsync55) A
(55A B
)55B C
;55C D
var66 
remoteClient66 
=66 
await66 $ 
GetRemoteClientAsync66% 9
(669 :
id66: <
)66< =
;66= >
if88 
(88 
remoteClient88 
!=88 
null88  $
)88$ %
{99 
remoteClientList::  
.::  !
RemoteClients::! .
.::. /
Remove::/ 5
(::5 6
remoteClient::6 B
)::B C
;::C D
_session;; 
.;; 
Save;; 
(;; 
remoteClientList;; .
);;. /
;;;/ 0
}<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
RemoteClient?? &
>??& '#
CreateRemoteClientAsync??( ?
(??? @
string??@ F

clientName??G Q
,??Q R
string??S Y
apiKey??Z `
)??` a
{@@ 	
varAA 
remoteClientListAA  
=AA! "
awaitAA# ($
GetRemoteClientListAsyncAA) A
(AAA B
)AAB C
;AAC D
varCC 
remoteClientCC 
=CC 
newCC "
RemoteClientCC# /
{DD 
IdEE 
=EE 
GuidEE 
.EE 
NewGuidEE !
(EE! "
)EE" #
.EE# $
ToStringEE$ ,
(EE, -
$strEE- 0
)EE0 1
,EE1 2

ClientNameFF 
=FF 

clientNameFF '
,FF' (
ProtectedApiKeyGG 
=GG  !
_dataProtectorGG" 0
.GG0 1
ProtectGG1 8
(GG8 9
EncodingGG9 A
.GGA B
UTF8GGB F
.GGF G
GetBytesGGG O
(GGO P
apiKeyGGP V
)GGV W
)GGW X
,GGX Y
}HH 
;HH 
remoteClientListJJ 
.JJ 
RemoteClientsJJ *
.JJ* +
AddJJ+ .
(JJ. /
remoteClientJJ/ ;
)JJ; <
;JJ< =
_sessionKK 
.KK 
SaveKK 
(KK 
remoteClientListKK *
)KK* +
;KK+ ,
returnMM 
remoteClientMM 
;MM  
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
boolPP 
>PP !
TryUpdateRemoteClientPP  5
(PP5 6
stringPP6 <
idPP= ?
,PP? @
stringPPA G

clientNamePPH R
,PPR S
stringPPT Z
apiKeyPP[ a
)PPa b
{QQ 	
varRR 
remoteClientListRR  
=RR! "
awaitRR# ($
GetRemoteClientListAsyncRR) A
(RRA B
)RRB C
;RRC D
varSS 
remoteClientSS 
=SS 
awaitSS $ 
GetRemoteClientAsyncSS% 9
(SS9 :
idSS: <
)SS< =
;SS= >
ifUU 
(UU 
remoteClientUU 
==UU 
nullUU  $
)UU$ %
{VV 
returnWW 
falseWW 
;WW 
}XX 
remoteClientZZ 
.ZZ 

ClientNameZZ #
=ZZ$ %

clientNameZZ& 0
;ZZ0 1
remoteClient[[ 
.[[ 
ProtectedApiKey[[ (
=[[) *
_dataProtector[[+ 9
.[[9 :
Protect[[: A
([[A B
Encoding[[B J
.[[J K
UTF8[[K O
.[[O P
GetBytes[[P X
([[X Y
apiKey[[Y _
)[[_ `
)[[` a
;[[a b
_session]] 
.]] 
Save]] 
(]] 
_remoteClientList]] +
)]]+ ,
;]], -
return__ 
true__ 
;__ 
}`` 	
}aa 
}bb ≠
∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Services\RemoteInstanceDeploymentTargetProvider.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{		 
public

 

class

 2
&RemoteInstanceDeploymentTargetProvider

 7
:

8 9%
IDeploymentTargetProvider

: S
{ 
private 
readonly !
RemoteInstanceService .
_service/ 7
;7 8
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 2
&RemoteInstanceDeploymentTargetProvider 5
(5 6
IStringLocalizer 
< 2
&RemoteInstanceDeploymentTargetProvider C
>C D
stringLocalizerE T
,T U!
RemoteInstanceService !
service" )
)) *
{ 	
_service 
= 
service 
; 
S 
= 
stringLocalizer 
;  
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
DeploymentTarget& 6
>6 7
>7 8%
GetDeploymentTargetsAsync9 R
(R S
)S T
{ 	
var 
remoteInstanceList "
=# $
await% *
_service+ 3
.3 4&
GetRemoteInstanceListAsync4 N
(N O
)O P
;P Q
;R S
return 
remoteInstanceList %
.% &
RemoteInstances& 5
.5 6
Select6 <
(< =
x= >
=>? A
new 
DeploymentTarget (
(( )
name 
: 
new !
LocalizedString" 1
(1 2
x2 3
.3 4
Name4 8
,8 9
x: ;
.; <
Name< @
,@ A
falseB G
)G H
,H I
description #
:# $
S% &
[& '
$str' X
]X Y
,Y Z
route 
: 
new " 
RouteValueDictionary# 7
(7 8
new8 ;
{   
area!!  
=!!! "
$str!!# B
,!!B C

controller"" &
=""' (
$str"") ?
,""? @
action## "
=### $
$str##% .
,##. /
remoteInstanceId$$ ,
=$$- .
x$$/ 0
.$$0 1
Id$$1 3
}%% 
)%% 
)&& 
)'' 
.'' 
ToArray'' 
('' 
)'' 
;'' 
}(( 	
})) 
}** ˚8
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Services\RemoteInstanceService.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (
Services( 0
{ 
public		 

class		 !
RemoteInstanceService		 &
{

 
private 
readonly 
IDocumentManager )
<) *
RemoteInstanceList* <
>< =
_documentManager> N
;N O
public !
RemoteInstanceService $
($ %
IDocumentManager% 5
<5 6
RemoteInstanceList6 H
>H I
documentManagerJ Y
)Y Z
=>[ ]
_documentManager^ n
=o p
documentManager	q Ä
;
Ä Å
public 
Task 
< 
RemoteInstanceList &
>& ''
LoadRemoteInstanceListAsync( C
(C D
)D E
=>F H
_documentManagerI Y
.Y Z#
GetOrCreateMutableAsyncZ q
(q r
)r s
;s t
public 
Task 
< 
RemoteInstanceList &
>& '&
GetRemoteInstanceListAsync( B
(B C
)C D
=>E G
_documentManagerH X
.X Y%
GetOrCreateImmutableAsyncY r
(r s
)s t
;t u
public 
async 
Task 
< 
RemoteInstance (
>( )#
LoadRemoteInstanceAsync* A
(A B
stringB H
idI K
)K L
{ 	
var 
remoteInstanceList "
=# $
await% *'
LoadRemoteInstanceListAsync+ F
(F G
)G H
;H I
return 
FindRemoteInstance %
(% &
remoteInstanceList& 8
,8 9
id: <
)< =
;= >
} 	
public 
async 
Task 
< 
RemoteInstance (
>( )"
GetRemoteInstanceAsync* @
(@ A
stringA G
idH J
)J K
{   	
var!! 
remoteInstanceList!! "
=!!# $
await!!% *&
GetRemoteInstanceListAsync!!+ E
(!!E F
)!!F G
;!!G H
return"" 
FindRemoteInstance"" %
(""% &
remoteInstanceList""& 8
,""8 9
id"": <
)""< =
;""= >
}## 	
public%% 
async%% 
Task%% %
DeleteRemoteInstanceAsync%% 3
(%%3 4
string%%4 :
id%%; =
)%%= >
{&& 	
var'' 
remoteInstanceList'' "
=''# $
await''% *'
LoadRemoteInstanceListAsync''+ F
(''F G
)''G H
;''H I
var(( 
remoteInstance(( 
=((  
FindRemoteInstance((! 3
(((3 4
remoteInstanceList((4 F
,((F G
id((H J
)((J K
;((K L
if** 
(** 
remoteInstance** 
!=** !
null**" &
)**& '
{++ 
remoteInstanceList,, "
.,," #
RemoteInstances,,# 2
.,,2 3
Remove,,3 9
(,,9 :
remoteInstance,,: H
),,H I
;,,I J
await-- 
_documentManager-- &
.--& '
UpdateAsync--' 2
(--2 3
remoteInstanceList--3 E
)--E F
;--F G
}.. 
}// 	
public11 
async11 
Task11 %
CreateRemoteInstanceAsync11 3
(113 4
string114 :
name11; ?
,11? @
string11A G
url11H K
,11K L
string11M S

clientName11T ^
,11^ _
string11` f
apiKey11g m
)11m n
{22 	
var33 
remoteInstanceList33 "
=33# $
await33% *'
LoadRemoteInstanceListAsync33+ F
(33F G
)33G H
;33H I
remoteInstanceList55 
.55 
RemoteInstances55 .
.55. /
Add55/ 2
(552 3
new553 6
RemoteInstance557 E
{66 
Id77 
=77 
Guid77 
.77 
NewGuid77 !
(77! "
)77" #
.77# $
ToString77$ ,
(77, -
$str77- 0
)770 1
,771 2
Name88 
=88 
name88 
,88 
Url99 
=99 
url99 
,99 

ClientName:: 
=:: 

clientName:: '
,::' (
ApiKey;; 
=;; 
apiKey;; 
,;;  
}<< 
)<< 
;<< 
await>> 
_documentManager>> "
.>>" #
UpdateAsync>># .
(>>. /
remoteInstanceList>>/ A
)>>A B
;>>B C
}?? 	
publicAA 
asyncAA 
TaskAA  
UpdateRemoteInstanceAA .
(AA. /
stringAA/ 5
idAA6 8
,AA8 9
stringAA: @
nameAAA E
,AAE F
stringAAG M
urlAAN Q
,AAQ R
stringAAS Y

clientNameAAZ d
,AAd e
stringAAf l
apiKeyAAm s
)AAs t
{BB 	
varCC 
remoteInstanceListCC "
=CC# $
awaitCC% *'
LoadRemoteInstanceListAsyncCC+ F
(CCF G
)CCG H
;CCH I
varDD 
remoteInstanceDD 
=DD  
FindRemoteInstanceDD! 3
(DD3 4
remoteInstanceListDD4 F
,DDF G
idDDH J
)DDJ K
;DDK L
remoteInstanceFF 
.FF 
NameFF 
=FF  !
nameFF" &
;FF& '
remoteInstanceGG 
.GG 
UrlGG 
=GG  
urlGG! $
;GG$ %
remoteInstanceHH 
.HH 

ClientNameHH %
=HH& '

clientNameHH( 2
;HH2 3
remoteInstanceII 
.II 
ApiKeyII !
=II" #
apiKeyII$ *
;II* +
awaitKK 
_documentManagerKK "
.KK" #
UpdateAsyncKK# .
(KK. /
remoteInstanceListKK/ A
)KKA B
;KKB C
}LL 	
privateNN 
staticNN 
RemoteInstanceNN %
FindRemoteInstanceNN& 8
(NN8 9
RemoteInstanceListNN9 K
remoteInstanceListNNL ^
,NN^ _
stringNN` f
idNNg i
)NNi j
=>NNk m
remoteInstanceListOO 
.OO 
RemoteInstancesOO .
.OO. /
FirstOrDefaultOO/ =
(OO= >
xOO> ?
=>OO@ B
StringOOC I
.OOI J
EqualsOOJ P
(OOP Q
xOOQ R
.OOR S
IdOOS U
,OOU V
idOOW Y
,OOY Z
StringComparisonOO[ k
.OOk l
OrdinalIgnoreCaseOOl }
)OO} ~
)OO~ 
;	OO Ä
}PP 
}QQ ÈI
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\Startup.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
INavigationProvider 2
,2 3
	AdminMenu4 =
>= >
(> ?
)? @
;@ A
services 
. 
	AddScoped 
< !
RemoteInstanceService 4
>4 5
(5 6
)6 7
;7 8
services 
. 
	AddScoped 
< 
RemoteClientService 2
>2 3
(3 4
)4 5
;5 6
services 
. 
	AddScoped 
< %
IDeploymentTargetProvider 8
,8 92
&RemoteInstanceDeploymentTargetProvider: `
>` a
(a b
)b c
;c d
} 	
public!! 
override!! 
void!! 
	Configure!! &
(!!& '
IApplicationBuilder!!' :
app!!; >
,!!> ?!
IEndpointRouteBuilder!!@ U
routes!!V \
,!!\ ]
IServiceProvider!!^ n
serviceProvider!!o ~
)!!~ 
{"" 	
var$$ &
remoteClientControllerName$$ *
=$$+ ,
typeof$$- 3
($$3 4"
RemoteClientController$$4 J
)$$J K
.$$K L
ControllerName$$L Z
($$Z [
)$$[ \
;$$\ ]
routes&& 
.&& "
MapAreaControllerRoute&& )
(&&) *
name'' 
:'' 
$str'' .
,''. /
areaName(( 
:(( 
$str(( 9
,((9 :
pattern)) 
:)) 
_adminOptions)) &
.))& '
AdminUrlPrefix))' 5
+))6 7
$str))8 X
,))X Y
defaults** 
:** 
new** 
{** 

controller**  *
=**+ ,&
remoteClientControllerName**- G
,**G H
action**I O
=**P Q
nameof**R X
(**X Y"
RemoteClientController**Y o
.**o p
Index**p u
)**u v
}**w x
)++ 
;++ 
routes,, 
.,, "
MapAreaControllerRoute,, )
(,,) *
name-- 
:-- 
$str-- 4
,--4 5
areaName.. 
:.. 
$str.. 9
,..9 :
pattern// 
:// 
_adminOptions// &
.//& '
AdminUrlPrefix//' 5
+//6 7
$str//8 Y
,//Y Z
defaults00 
:00 
new00 
{00 

controller00  *
=00+ ,&
remoteClientControllerName00- G
,00G H
action00I O
=00P Q
nameof00R X
(00X Y"
RemoteClientController00Y o
.00o p
Create00p v
)00v w
}00x y
)11 
;11 
routes22 
.22 "
MapAreaControllerRoute22 )
(22) *
name33 
:33 
$str33 4
,334 5
areaName44 
:44 
$str44 9
,449 :
pattern55 
:55 
_adminOptions55 &
.55& '
AdminUrlPrefix55' 5
+556 7
$str558 ^
,55^ _
defaults66 
:66 
new66 
{66 

controller66  *
=66+ ,&
remoteClientControllerName66- G
,66G H
action66I O
=66P Q
nameof66R X
(66X Y"
RemoteClientController66Y o
.66o p
Delete66p v
)66v w
}66x y
)77 
;77 
routes88 
.88 "
MapAreaControllerRoute88 )
(88) *
name99 
:99 
$str99 2
,992 3
areaName:: 
::: 
$str:: 9
,::9 :
pattern;; 
:;; 
_adminOptions;; &
.;;& '
AdminUrlPrefix;;' 5
+;;6 7
$str;;8 \
,;;\ ]
defaults<< 
:<< 
new<< 
{<< 

controller<<  *
=<<+ ,&
remoteClientControllerName<<- G
,<<G H
action<<I O
=<<P Q
nameof<<R X
(<<X Y"
RemoteClientController<<Y o
.<<o p
Edit<<p t
)<<t u
}<<v w
)== 
;== 
var@@ (
remoteInstanceControllerName@@ ,
=@@- .
typeof@@/ 5
(@@5 6$
RemoteInstanceController@@6 N
)@@N O
.@@O P
ControllerName@@P ^
(@@^ _
)@@_ `
;@@` a
routesBB 
.BB "
MapAreaControllerRouteBB )
(BB) *
nameCC 
:CC 
$strCC 1
,CC1 2
areaNameDD 
:DD 
$strDD 9
,DD9 :
patternEE 
:EE 
_adminOptionsEE &
.EE& '
AdminUrlPrefixEE' 5
+EE6 7
$strEE8 Z
,EEZ [
defaultsFF 
:FF 
newFF 
{FF 

controllerFF  *
=FF+ ,(
remoteInstanceControllerNameFF- I
,FFI J
actionFFK Q
=FFR S
nameofFFT Z
(FFZ [$
RemoteInstanceControllerFF[ s
.FFs t
IndexFFt y
)FFy z
}FF{ |
)GG 
;GG 
routesHH 
.HH "
MapAreaControllerRouteHH )
(HH) *
nameII 
:II 
$strII 7
,II7 8
areaNameJJ 
:JJ 
$strJJ 9
,JJ9 :
patternKK 
:KK 
_adminOptionsKK &
.KK& '
AdminUrlPrefixKK' 5
+KK6 7
$strKK8 [
,KK[ \
defaultsLL 
:LL 
newLL 
{LL 

controllerLL  *
=LL+ ,(
remoteInstanceControllerNameLL- I
,LLI J
actionLLK Q
=LLR S
nameofLLT Z
(LLZ [$
RemoteInstanceControllerLL[ s
.LLs t
CreateLLt z
)LLz {
}LL| }
)MM 
;MM 
routesNN 
.NN "
MapAreaControllerRouteNN )
(NN) *
nameOO 
:OO 
$strOO 7
,OO7 8
areaNamePP 
:PP 
$strPP 9
,PP9 :
patternQQ 
:QQ 
_adminOptionsQQ &
.QQ& '
AdminUrlPrefixQQ' 5
+QQ6 7
$strQQ8 `
,QQ` a
defaultsRR 
:RR 
newRR 
{RR 

controllerRR  *
=RR+ ,(
remoteInstanceControllerNameRR- I
,RRI J
actionRRK Q
=RRR S
nameofRRT Z
(RRZ ["
RemoteClientControllerRR[ q
.RRq r
DeleteRRr x
)RRx y
}RRz {
)SS 
;SS 
routesTT 
.TT "
MapAreaControllerRouteTT )
(TT) *
nameUU 
:UU 
$strUU 5
,UU5 6
areaNameVV 
:VV 
$strVV 9
,VV9 :
patternWW 
:WW 
_adminOptionsWW &
.WW& '
AdminUrlPrefixWW' 5
+WW6 7
$strWW8 ^
,WW^ _
defaultsXX 
:XX 
newXX 
{XX 

controllerXX  *
=XX+ ,(
remoteInstanceControllerNameXX- I
,XXI J
actionXXK Q
=XXR S
nameofXXT Z
(XXZ [$
RemoteInstanceControllerXX[ s
.XXs t
EditXXt x
)XXx y
}XXz {
)YY 
;YY 
routes\\ 
.\\ "
MapAreaControllerRoute\\ )
(\\) *
name]] 
:]] 
$str]] =
,]]= >
areaName^^ 
:^^ 
$str^^ 9
,^^9 :
pattern__ 
:__ 
_adminOptions__ &
.__& '
AdminUrlPrefix__' 5
+__6 7
$str__8 b
,__b c
defaults`` 
:`` 
new`` 
{`` 

controller``  *
=``+ ,
typeof``- 3
(``3 4*
ExportRemoteInstanceController``4 R
)``R S
.``S T
ControllerName``T b
(``b c
)``c d
,``d e
action``f l
=``m n
nameof``o u
(``u v+
ExportRemoteInstanceController	``v î
.
``î ï
Execute
``ï ú
)
``ú ù
}
``û ü
)aa 
;aa 
}bb 	
}cc 
}dd õ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\ViewModels\EditRemoteClientViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (

ViewModels( 2
{ 
public 

class %
EditRemoteClientViewModel *
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 

ClientName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ApiKey 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}		 Œ	
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\ViewModels\EditRemoteInstanceViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (

ViewModels( 2
{ 
public 

class '
EditRemoteInstanceViewModel ,
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

ClientName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ApiKey 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Url		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
}

 
} è
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\ViewModels\ImportViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (

ViewModels( 2
{ 
public 

class 
ImportViewModel  
{ 
public 
string 

ClientName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ApiKey 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
	IFormFile		 
Content		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
}

 
} “
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\ViewModels\RemoteClientIndexViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (

ViewModels( 2
{ 
public 

class &
RemoteClientIndexViewModel +
{		 
public

 
List

 
<

 
RemoteClient

  
>

  !
RemoteClients

" /
{

0 1
get

2 5
;

5 6
set

7 :
;

: ;
}

< =
public 
ContentOptions 
Options %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
new6 9
ContentOptions: H
(H I
)I J
;J K
[ 	
	BindNever	 
] 
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
ContentOptions 
{ 
public 
ContentsBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
ContentsBulkAction$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
public   

enum   
ContentsBulkAction   "
{!! 
None"" 
,"" 
Remove## 
}$$ 
}%% â	
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment.Remote\ViewModels\RemoteInstanceIndexViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Remote! '
.' (

ViewModels( 2
{ 
public 

class (
RemoteInstanceIndexViewModel -
{		 
public

 
List

 
<

 
RemoteInstance

 "
>

" #
RemoteInstances

$ 3
{

4 5
get

6 9
;

9 :
set

; >
;

> ?
}

@ A
public 
ContentOptions 
Options %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
new6 9
ContentOptions: H
(H I
)I J
;J K
[ 	
	BindNever	 
] 
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} 