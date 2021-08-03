
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
{		 
[

 
Feature

 
(

 
$str

 C
)

C D
]

D E
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
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
localization) 5
=>6 8
localization9 E
. 
Add 
( 
S 
[ 
$str %
]% &
,& '
settings( 0
=>1 3
settings4 <
. 
Add 
( 
S 
[ 
$str 7
]7 8
,8 9
S: ;
[; <
$str< T
]T U
.U V
PrefixPositionV d
(d e
)e f
,f g
registrationh t
=>u w
registration	x Ñ
. 
AddClass !
(! "
$str" 8
)8 9
.9 :
Id: <
(< =
$str= S
)S T
.   
Action   #
(  # $
$str  $ +
,  + ,
$str  - 4
,  4 5
new  6 9
{  : ;
area  < @
=  A B
$str  C Y
,  Y Z
groupId  [ b
=  c d/
"ContentCulturePickerSettingsDriver	  e á
.
  á à
GroupId
  à è
}
  ê ë
)
  ë í
.!! 

Permission!! '
(!!' (
Permissions!!( 3
.!!3 4&
ManageContentCulturePicker!!4 N
)!!N O
."" 
LocalNav"" %
(""% &
)""& '
)## 
)## 
)## 
;## 
return%% 
Task%% 
.%% 
CompletedTask%% %
;%%% &
}&& 	
}'' 
}(( ı
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\ContentRequestCultureProvider.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
{		 
public 

class )
ContentRequestCultureProvider .
:/ 0"
RequestCultureProvider1 G
{ 
public 
override 
async 
Task "
<" #!
ProviderCultureResult# 8
>8 9*
DetermineProviderCultureResult: X
(X Y
HttpContextY d
httpContexte p
)p q
{ 	
if 
( 
httpContext 
== 
null #
)# $
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
httpContext7 B
)B C
)C D
;D E
} 
var  
culturePickerService $
=% &
httpContext' 2
.2 3
RequestServices3 B
.B C

GetServiceC M
<M N(
IContentCulturePickerServiceN j
>j k
(k l
)l m
;m n
var 
localization 
= 
await $ 
culturePickerService% 9
.9 :)
GetLocalizationFromRouteAsync: W
(W X
httpContextX c
.c d
Requestd k
.k l
Pathl p
)p q
;q r
if 
( 
localization 
!= 
null  $
)$ %
{ 
return 
new !
ProviderCultureResult 0
(0 1
localization1 =
.= >
Culture> E
)E F
;F G
} 
return 
null 
; 
} 	
}   
}!! Ô9
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Controllers* 5
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly '
IContentLocalizationManager 4'
_contentLocalizationManager5 P
;P Q
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
AdminController 
( 
IContentManager 
contentManager *
,* +
	INotifier 
notifier 
, '
IContentLocalizationManager '
localizationManager( ;
,; <
IHtmlLocalizer 
< 
AdminController *
>* +
	localizer, 5
,5 6!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	
_contentManager 
= 
contentManager ,
;, -
	_notifier 
= 
notifier  
;  !!
_authorizationService !
=" # 
authorizationService$ 8
;8 9'
_contentLocalizationManager   '
=  ( )
localizationManager  * =
;  = >
H!! 
=!! 
	localizer!! 
;!! 
}"" 	
[$$ 	
HttpPost$$	 
]$$ 
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (
Localize%%) 1
(%%1 2
string%%2 8
contentItemId%%9 F
,%%F G
string%%H N
targetCulture%%O \
)%%\ ]
{&& 	
targetCulture(( 
=(( 
targetCulture(( )
??((* ,
$str((- /
;((/ 0
var** 
contentItem** 
=** 
await** #
_contentManager**$ 3
.**3 4
GetAsync**4 <
(**< =
contentItemId**= J
,**J K
VersionOptions**L Z
.**Z [
Latest**[ a
)**a b
;**b c
if,, 
(,, 
contentItem,, 
==,, 
null,, #
),,# $
{-- 
return.. 
NotFound.. 
(..  
)..  !
;..! "
}// 
if11 
(11 
!11 
await11 !
_authorizationService11 ,
.11, -
AuthorizeAsync11- ;
(11; <
User11< @
,11@ A
Permissions11B M
.11M N
LocalizeContent11N ]
,11] ^
contentItem11_ j
)11j k
)11k l
{22 
return33 
Forbid33 
(33 
)33 
;33  
}44 
var66 
checkContentItem66  
=66! "
await66# (
_contentManager66) 8
.668 9
NewAsync669 A
(66A B
contentItem66B M
.66M N
ContentType66N Y
)66Y Z
;66Z [
checkContentItem99 
.99 
Owner99 "
=99# $
User99% )
.99) *
FindFirstValue99* 8
(998 9

ClaimTypes999 C
.99C D
NameIdentifier99D R
)99R S
;99S T
if;; 
(;; 
!;; 
await;; !
_authorizationService;; ,
.;;, -
AuthorizeAsync;;- ;
(;;; <
User;;< @
,;;@ A
CommonPermissions;;B S
.;;S T
EditContent;;T _
,;;_ `
checkContentItem;;a q
);;q r
);;r s
{<< 
return== 
Forbid== 
(== 
)== 
;==  
}>> 
var@@ 
part@@ 
=@@ 
contentItem@@ "
.@@" #
As@@# %
<@@% &
LocalizationPart@@& 6
>@@6 7
(@@7 8
)@@8 9
;@@9 :
ifBB 
(BB 
partBB 
==BB 
nullBB 
)BB 
{CC 
returnDD 
NotFoundDD 
(DD  
)DD  !
;DD! "
}EE 
varGG #
alreadyLocalizedContentGG '
=GG( )
awaitGG* /'
_contentLocalizationManagerGG0 K
.GGK L
GetContentItemAsyncGGL _
(GG_ `
partGG` d
.GGd e
LocalizationSetGGe t
,GGt u
targetCulture	GGv É
)
GGÉ Ñ
;
GGÑ Ö
ifII 
(II #
alreadyLocalizedContentII '
!=II( *
nullII+ /
)II/ 0
{JJ 
	_notifierKK 
.KK 
WarningKK !
(KK! "
HKK" #
[KK# $
$strKK$ N
,KKN O
targetCultureKKP ]
]KK] ^
)KK^ _
;KK_ `
returnLL 
RedirectToActionLL '
(LL' (
$strLL( .
,LL. /
$strLL0 7
,LL7 8
newLL9 <
{LL= >
areaLL? C
=LLD E
$strLLF \
,LL\ ]
contentItemIdLL^ k
=LLl m
contentItemIdLLn {
}LL| }
)LL} ~
;LL~ 
}MM 
tryOO 
{PP 
varQQ 

newContentQQ 
=QQ  
awaitQQ! &'
_contentLocalizationManagerQQ' B
.QQB C
LocalizeAsyncQQC P
(QQP Q
contentItemQQQ \
,QQ\ ]
targetCultureQQ^ k
)QQk l
;QQl m
	_notifierRR 
.RR 
InformationRR %
(RR% &
HRR& '
[RR' (
$strRR( `
]RR` a
)RRa b
;RRb c
returnSS 
RedirectToActionSS '
(SS' (
$strSS( .
,SS. /
$strSS0 7
,SS7 8
newSS9 <
{SS= >
areaSS? C
=SSD E
$strSSF \
,SS\ ]
contentItemIdSS^ k
=SSl m

newContentSSn x
.SSx y
ContentItemId	SSy Ü
}
SSá à
)
SSà â
;
SSâ ä
}TT 
catchUU 
(UU %
InvalidOperationExceptionUU ,
)UU, -
{VV 
	_notifierWW 
.WW 
WarningWW !
(WW! "
HWW" #
[WW# $
$strWW$ ]
]WW] ^
)WW^ _
;WW_ `
returnXX 
RedirectToActionXX '
(XX' (
$strXX( .
,XX. /
$strXX0 7
,XX7 8
newXX9 <
{XX= >
areaXX? C
=XXD E
$strXXF \
,XX\ ]
contentItemIdXX^ k
=XXl m
contentItemXXn y
.XXy z
ContentItemId	XXz á
}
XXà â
)
XXâ ä
;
XXä ã
}YY 
}ZZ 	
}[[ 
}\\ Ë<
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Controllers\ContentCulturePickerController.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Controllers* 5
{ 
[ 
Feature 
( 
$str C
)C D
]D E
public 

class *
ContentCulturePickerController /
:0 1

Controller2 <
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly  
ILocalizationService -
_locationService. >
;> ?
private 
readonly (
IContentCulturePickerService 5!
_culturePickerService6 K
;K L
private 
readonly  
CulturePickerOptions -!
_culturePickerOptions. C
;C D
public *
ContentCulturePickerController -
(- .
ISiteService 
siteService $
,$ % 
ILocalizationService  
locationService! 0
,0 1(
IContentCulturePickerService ( 
culturePickerService) =
,= >
IOptions 
<  
CulturePickerOptions )
>) * 
culturePickerOptions+ ?
)? @
{   	
_siteService!! 
=!! 
siteService!! &
;!!& '
_locationService"" 
="" 
locationService"" .
;"". /!
_culturePickerService## !
=##" # 
culturePickerService##$ 8
;##8 9!
_culturePickerOptions$$ !
=$$" # 
culturePickerOptions$$$ 8
.$$8 9
Value$$9 >
;$$> ?
}%% 	
['' 	
HttpGet''	 
]'' 
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (&
RedirectToLocalizedContent(() C
(((C D
string((D J
targetCulture((K X
,((X Y

PathString((Z d
contentItemUrl((e s
,((s t
string((u {
queryStringValue	((| å
)
((å ç
{)) 	
targetCulture** 
??=** 
CultureInfo** )
.**) *
InvariantCulture*** :
.**: ;
Name**; ?
;**? @
if,, 
(,, 
!,, 
contentItemUrl,, 
.,,  
HasValue,,  (
),,( )
{-- 
contentItemUrl.. 
=..  
$str..! $
;..$ %
}// 
var11 
queryString11 
=11 
new11 !
QueryString11" -
(11- .
queryStringValue11. >
)11> ?
;11? @
var22 
url22 
=22 
HttpContext22 !
.22! "
Request22" )
.22) *
PathBase22* 2
+223 4
contentItemUrl225 C
+22D E
queryString22F Q
;22Q R
var44 
supportedCultures44 !
=44" #
await44$ )
_locationService44* :
.44: ;%
GetSupportedCulturesAsync44; T
(44T U
)44U V
;44V W
if66 
(66 
supportedCultures66 !
.66! "
Any66" %
(66% &
t66& '
=>66( *
t66+ ,
==66- /
targetCulture660 =
)66= >
)66> ?
{77 
var88 
settings88 
=88 
(88  
await88  %
_siteService88& 2
.882 3 
GetSiteSettingsAsync883 G
(88G H
)88H I
)88I J
.88J K
As88K M
<88M N(
ContentCulturePickerSettings88N j
>88j k
(88k l
)88l m
;88m n
if:: 
(:: 
settings:: 
.:: 
	SetCookie:: &
)::& '
{;; 
Response== 
.== 
Cookies== $
.==$ %
Delete==% +
(==+ ,(
CookieRequestCultureProvider==, H
.==H I
DefaultCookieName==I Z
)==Z [
;==[ \
Response>> 
.>> 
Cookies>> $
.>>$ %
Append>>% +
(>>+ ,(
CookieRequestCultureProvider?? 4
.??4 5
DefaultCookieName??5 F
,??F G(
CookieRequestCultureProvider@@ 4
.@@4 5
MakeCookieValue@@5 D
(@@D E
new@@E H
RequestCulture@@I W
(@@W X
targetCulture@@X e
)@@e f
)@@f g
,@@g h
newAA 
CookieOptionsAA )
{AA* +
ExpiresAA, 3
=AA4 5
DateTimeAA6 >
.AA> ?
UtcNowAA? E
.AAE F
AddDaysAAF M
(AAM N!
_culturePickerOptionsAAN c
.AAc d
CookieLifeTimeAAd r
)AAr s
}AAt u
)BB 
;BB 
}CC 
varFF 
localizationsFF !
=FF" #
awaitFF$ )!
_culturePickerServiceFF* ?
.FF? @*
GetLocalizationsFromRouteAsyncFF@ ^
(FF^ _
contentItemUrlFF_ m
)FFm n
;FFn o
ifGG 
(GG 
!GG %
TryGetLocalizedContentUrlGG .
(GG. /
localizationsGG/ <
)GG< =
&&GG> @
settingsGGA I
.GGI J
RedirectToHomepageGGJ \
)GG\ ]
{HH 
varJJ 
homeLocalizationsJJ )
=JJ* +
awaitJJ, 1!
_culturePickerServiceJJ2 G
.JJG H*
GetLocalizationsFromRouteAsyncJJH f
(JJf g
$strJJg j
)JJj k
;JJk l%
TryGetLocalizedContentUrlKK -
(KK- .
homeLocalizationsKK. ?
)KK? @
;KK@ A
}LL 
}MM 
boolOO %
TryGetLocalizedContentUrlOO *
(OO* +
IEnumerableOO+ 6
<OO6 7
LocalizationEntryOO7 H
>OOH I
localizationEntriesOOJ ]
)OO] ^
{PP 
ifQQ 
(QQ 
localizationEntriesQQ '
.QQ' (
AnyQQ( +
(QQ+ ,
)QQ, -
)QQ- .
{RR 
varSS 
localizationSS $
=SS% &
localizationEntriesSS' :
.SS: ;
SingleOrDefaultSS; J
(SSJ K
eSSK L
=>SSM O
StringSSP V
.SSV W
EqualsSSW ]
(SS] ^
eSS^ _
.SS_ `
CultureSS` g
,SSg h
targetCultureSSi v
,SSv w
StringComparison	SSx à
.
SSà â
OrdinalIgnoreCase
SSâ ö
)
SSö õ
)
SSõ ú
;
SSú ù
ifUU 
(UU 
localizationUU $
!=UU% '
nullUU( ,
)UU, -
{VV 
urlWW 
=WW 
UrlWW !
.WW! "
ActionWW" (
(WW( )
$strWW) 2
,WW2 3
$strWW4 :
,WW: ;
newWW< ?
{WW@ A
AreaWWB F
=WWG H
$strWWI _
,WW_ `
contentItemIdWWa n
=WWo p
localizationWWq }
.WW} ~
ContentItemId	WW~ ã
}
WWå ç
)
WWç é
+
WWè ê
queryString
WWë ú
;
WWú ù
returnYY 
trueYY #
;YY# $
}ZZ 
}[[ 
return]] 
false]] 
;]] 
}^^ 
return`` 
LocalRedirect``  
(``  !
url``! $
)``$ %
;``% &
}aa 	
}bb 
}cc »
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\CulturePickerOptions.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
{ 
public 

class  
CulturePickerOptions %
{ 
public 
int 
CookieLifeTime !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
$num2 4
;4 5
} 
} ªß
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\DefaultContentLocalizationManager.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
{ 
public 

class -
!DefaultContentLocalizationManager 2
:3 4'
IContentLocalizationManager5 P
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
	Microsoft "
." #

AspNetCore# -
.- .
Http. 2
.2 3 
IHttpContextAccessor3 G 
_httpContextAccessorH \
;\ ]
private 
readonly  
ILocalizationService - 
_localizationService. B
;B C
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
Entities !
.! "
IIdGenerator" .
_iidGenerator/ <
;< =
public 
IEnumerable 
< '
IContentLocalizationHandler 6
>6 7
Handlers8 @
{A B
getC F
;F G
privateH O
setP S
;S T
}U V
public 
IEnumerable 
< '
IContentLocalizationHandler 6
>6 7
ReversedHandlers8 H
{I J
getK N
;N O
privateP W
setX [
;[ \
}] ^
public -
!DefaultContentLocalizationManager 0
(0 1
IContentManager   
contentManager   *
,  * +
ISession!! 
session!! 
,!! 
	Microsoft"" 
."" 

AspNetCore""  
.""  !
Http""! %
.""% & 
IHttpContextAccessor""& :
httpContentAccessor""; N
,""N O 
ILocalizationService##  
localizationService##! 4
,##4 5
ILogger$$ 
<$$ -
!DefaultContentLocalizationManager$$ 5
>$$5 6
logger$$7 =
,$$= >
IEnumerable%% 
<%% '
IContentLocalizationHandler%% 3
>%%3 4
handlers%%5 =
,%%= >
Entities&& 
.&& 
IIdGenerator&& !
iidGenerator&&" .
)&&. /
{'' 	
_contentManager(( 
=(( 
contentManager(( ,
;((, -
_session)) 
=)) 
session)) 
;))  
_httpContextAccessor**  
=**! "
httpContentAccessor**# 6
;**6 7 
_localizationService++  
=++! "
localizationService++# 6
;++6 7
Handlers,, 
=,, 
handlers,, 
;,,  
_iidGenerator-- 
=-- 
iidGenerator-- (
;--( )
ReversedHandlers.. 
=.. 
handlers.. '
...' (
Reverse..( /
(../ 0
)..0 1
...1 2
ToArray..2 9
(..9 :
)..: ;
;..; <
_logger// 
=// 
logger// 
;// 
}00 	
public22 
Task22 
<22 
ContentItem22 
>22  
GetContentItemAsync22! 4
(224 5
string225 ;
localizationSet22< K
,22K L
string22M S
culture22T [
)22[ \
{33 	
var44 
invariantCulture44  
=44! "
culture44# *
.44* +
ToLowerInvariant44+ ;
(44; <
)44< =
;44= >
return55 
_session55 
.55 
Query55 !
<55! "
ContentItem55" -
,55- .%
LocalizedContentItemIndex55/ H
>55H I
(55I J
i55J K
=>55L N
(66 
i66 
.66 
	Published66 $
||66% '
i66( )
.66) *
Latest66* 0
)660 1
&&662 4
i77 
.77 
LocalizationSet77 )
==77* ,
localizationSet77- <
&&77= ?
i88 
.88 
Culture88 !
==88" $
invariantCulture88% 5
)885 6
.99 
FirstOrDefaultAsync99 (
(99( )
)99) *
;99* +
}:: 	
public;; 
async;; 
Task;; 
<;; 
IEnumerable;; %
<;;% &
ContentItem;;& 1
>;;1 2
>;;2 3
GetItemsForSetAsync;;4 G
(;;G H
string;;H N
localizationSet;;O ^
);;^ _
{<< 	
return== 
await== 
_session== !
.==! "
Query==" '
<==' (
ContentItem==( 3
,==3 4%
LocalizedContentItemIndex==5 N
>==N O
(==O P
i==P Q
=>==R T
(==U V
i==V W
.==W X
	Published==X a
||==b d
i==e f
.==f g
Latest==g m
)==m n
&&==o q
i==r s
.==s t
LocalizationSet	==t É
==
==Ñ Ü
localizationSet
==á ñ
)
==ñ ó
.
==ó ò
	ListAsync
==ò °
(
==° ¢
)
==¢ £
;
==£ §
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ 
IEnumerable@@ %
<@@% &
ContentItem@@& 1
>@@1 2
>@@2 3 
GetItemsForSetsAsync@@4 H
(@@H I
IEnumerable@@I T
<@@T U
string@@U [
>@@[ \
localizationSets@@] m
,@@m n
string@@o u
culture@@v }
)@@} ~
{AA 	
varBB 
invariantCultureBB  
=BB! "
cultureBB# *
.BB* +
ToLowerInvariantBB+ ;
(BB; <
)BB< =
;BB= >
returnCC 
awaitCC 
_sessionCC !
.CC! "
QueryCC" '
<CC' (
ContentItemCC( 3
,CC3 4%
LocalizedContentItemIndexCC5 N
>CCN O
(CCO P
iCCP Q
=>CCR T
(CCU V
iCCV W
.CCW X
	PublishedCCX a
||CCb d
iCCe f
.CCf g
LatestCCg m
)CCm n
&&CCo q
iCCr s
.CCs t
LocalizationSet	CCt É
.
CCÉ Ñ
IsIn
CCÑ à
(
CCà â
localizationSets
CCâ ô
)
CCô ö
&&
CCõ ù
i
CCû ü
.
CCü †
Culture
CC† ß
==
CC® ™
invariantCulture
CC´ ª
)
CCª º
.
CCº Ω
	ListAsync
CCΩ ∆
(
CC∆ «
)
CC« »
;
CC» …
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
ContentItemFF %
>FF% &
LocalizeAsyncFF' 4
(FF4 5
ContentItemFF5 @
contentFFA H
,FFH I
stringFFJ P
targetCultureFFQ ^
)FF^ _
{GG 	
varHH 
supportedCulturesHH !
=HH" #
awaitHH$ ) 
_localizationServiceHH* >
.HH> ?%
GetSupportedCulturesAsyncHH? X
(HHX Y
)HHY Z
;HHZ [
ifII 
(II 
!II 
supportedCulturesII "
.II" #
AnyII# &
(II& '
cII' (
=>II) +
StringII, 2
.II2 3
EqualsII3 9
(II9 :
cII: ;
,II; <
targetCultureII= J
,IIJ K
StringComparisonIIL \
.II\ ]
OrdinalIgnoreCaseII] n
)IIn o
)IIo p
)IIp q
{JJ 
throwKK 
newKK %
InvalidOperationExceptionKK 3
(KK3 4
$strKK4 \
)KK\ ]
;KK] ^
}LL 
varNN 
localizationPartNN  
=NN! "
contentNN# *
.NN* +
AsNN+ -
<NN- .
LocalizationPartNN. >
>NN> ?
(NN? @
)NN@ A
;NNA B
ifOO 
(OO 
StringOO 
.OO 
IsNullOrEmptyOO $
(OO$ %
localizationPartOO% 5
.OO5 6
LocalizationSetOO6 E
)OOE F
)OOF G
{PP 
localizationPartRR  
.RR  !
LocalizationSetRR! 0
=RR1 2
_iidGeneratorRR3 @
.RR@ A
GenerateUniqueIdRRA Q
(RRQ R
)RRR S
;RRS T
localizationPartSS  
.SS  !
CultureSS! (
=SS) *
awaitSS+ 0 
_localizationServiceSS1 E
.SSE F"
GetDefaultCultureAsyncSSF \
(SS\ ]
)SS] ^
;SS^ _
_sessionTT 
.TT 
SaveTT 
(TT 
contentTT %
)TT% &
;TT& '
}UU 
elseVV 
{WW 
varXX 
existingContentXX #
=XX$ %
awaitXX& +
GetContentItemAsyncXX, ?
(XX? @
localizationPartXX@ P
.XXP Q
LocalizationSetXXQ `
,XX` a
targetCultureXXb o
)XXo p
;XXp q
ifZZ 
(ZZ 
existingContentZZ #
!=ZZ$ &
nullZZ' +
)ZZ+ ,
{[[ 
return]] 
existingContent]] *
;]]* +
}^^ 
}__ 
varbb 
clonedbb 
=bb 
awaitbb 
_contentManagerbb .
.bb. /

CloneAsyncbb/ 9
(bb9 :
contentbb: A
)bbA B
;bbB C
varcc 

clonedPartcc 
=cc 
clonedcc #
.cc# $
Ascc$ &
<cc& '
LocalizationPartcc' 7
>cc7 8
(cc8 9
)cc9 :
;cc: ;

clonedPartdd 
.dd 
Culturedd 
=dd  
targetCulturedd! .
;dd. /

clonedPartee 
.ee 
LocalizationSetee &
=ee' (
localizationPartee) 9
.ee9 :
LocalizationSetee: I
;eeI J

clonedPartff 
.ff 
Applyff 
(ff 
)ff 
;ff 
varhh 
contexthh 
=hh 
newhh &
LocalizationContentContexthh 8
(hh8 9
clonedhh9 ?
,hh? @
contenthhA H
,hhH I
localizationParthhJ Z
.hhZ [
LocalizationSethh[ j
,hhj k
targetCulturehhl y
)hhy z
;hhz {
awaitjj 
Handlersjj 
.jj 
InvokeAsyncjj &
(jj& '
(jj' (
handlerjj( /
,jj/ 0
contextjj1 8
)jj8 9
=>jj: <
handlerjj= D
.jjD E
LocalizingAsyncjjE T
(jjT U
contextjjU \
)jj\ ]
,jj] ^
contextjj_ f
,jjf g
_loggerjjh o
)jjo p
;jjp q
awaitkk 
ReversedHandlerskk "
.kk" #
InvokeAsynckk# .
(kk. /
(kk/ 0
handlerkk0 7
,kk7 8
contextkk9 @
)kk@ A
=>kkB D
handlerkkE L
.kkL M
LocalizedAsynckkM [
(kk[ \
contextkk\ c
)kkc d
,kkd e
contextkkf m
,kkm n
_loggerkko v
)kkv w
;kkw x
returnmm 
clonedmm 
;mm 
}nn 	
publicpp 
asyncpp 
Taskpp 
<pp 
IDictionarypp %
<pp% &
stringpp& ,
,pp, -
ContentItempp. 9
>pp9 :
>pp: ;(
DeduplicateContentItemsAsyncpp< X
(ppX Y
IEnumerableppY d
<ppd e
ContentItemppe p
>ppp q
contentItemsppr ~
)pp~ 
{qq 	
varrr 
contentItemIdsrr 
=rr  
contentItemsrr! -
.rr- .
Selectrr. 4
(rr4 5
crr5 6
=>rr7 9
crr: ;
.rr; <
ContentItemIdrr< I
)rrI J
;rrJ K
varss 
indexValuesss 
=ss 
awaitss #
_sessionss$ ,
.ss, -

QueryIndexss- 7
<ss7 8%
LocalizedContentItemIndexss8 Q
>ssQ R
(ssR S
issS T
=>ssU W
(ssX Y
issY Z
.ssZ [
	Publishedss[ d
||sse g
issh i
.ssi j
Latestssj p
)ssp q
&&ssr t
issu v
.ssv w
ContentItemId	ssw Ñ
.
ssÑ Ö
IsIn
ssÖ â
(
ssâ ä
contentItemIds
ssä ò
)
ssò ô
)
ssô ö
.
ssö õ
	ListAsync
ssõ §
(
ss§ •
)
ss• ¶
;
ss¶ ß
varuu 
currentCultureuu 
=uu   
_httpContextAccessoruu! 5
.uu5 6
HttpContextuu6 A
.uuA B
FeaturesuuB J
.uuJ K
GetuuK N
<uuN O"
IRequestCultureFeatureuuO e
>uue f
(uuf g
)uug h
.uuh i
RequestCultureuui w
.uuw x
Cultureuux 
.	uu Ä
Name
uuÄ Ñ
.
uuÑ Ö
ToLowerInvariant
uuÖ ï
(
uuï ñ
)
uuñ ó
;
uuó ò
varvv 
defaultCulturevv 
=vv  
(vv! "
awaitvv" ' 
_localizationServicevv( <
.vv< ="
GetDefaultCultureAsyncvv= S
(vvS T
)vvT U
)vvU V
.vvV W
ToLowerInvariantvvW g
(vvg h
)vvh i
;vvi j
varww 
cleanedIndexValuesww "
=ww# $(
GetSingleContentItemIdPerSetww% A
(wwA B
indexValueswwB M
,wwM N
currentCulturewwO ]
,ww] ^
defaultCultureww_ m
)wwm n
;wwn o
varyy 

dictionaryyy 
=yy 
newyy  

Dictionaryyy! +
<yy+ ,
stringyy, 2
,yy2 3
ContentItemyy4 ?
>yy? @
(yy@ A
)yyA B
;yyB C
foreachzz 
(zz 
varzz 
valzz 
inzz 
cleanedIndexValueszz  2
)zz2 3
{{{ 

dictionary|| 
.|| 
Add|| 
(|| 
val|| "
.||" #
LocalizationSet||# 2
,||2 3
contentItems||4 @
.||@ A
SingleOrDefault||A P
(||P Q
ci||Q S
=>||T V
ci||W Y
.||Y Z
ContentItemId||Z g
==||h j
val||k n
.||n o
ContentItemId||o |
)||| }
)||} ~
;||~ 
}}} 
return~~ 

dictionary~~ 
;~~ 
} 	
public
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
IDictionary
ÅÅ %
<
ÅÅ% &
string
ÅÅ& ,
,
ÅÅ, -
string
ÅÅ. 4
>
ÅÅ4 5
>
ÅÅ5 6(
GetFirstItemIdForSetsAsync
ÅÅ7 Q
(
ÅÅQ R
IEnumerable
ÅÅR ]
<
ÅÅ] ^
string
ÅÅ^ d
>
ÅÅd e
localizationSets
ÅÅf v
)
ÅÅv w
{
ÇÇ 	
var
ÉÉ 
indexValues
ÉÉ 
=
ÉÉ 
await
ÉÉ #
_session
ÉÉ$ ,
.
ÉÉ, -

QueryIndex
ÉÉ- 7
<
ÉÉ7 8'
LocalizedContentItemIndex
ÉÉ8 Q
>
ÉÉQ R
(
ÉÉR S
i
ÉÉS T
=>
ÉÉU W
(
ÉÉX Y
i
ÉÉY Z
.
ÉÉZ [
	Published
ÉÉ[ d
||
ÉÉe g
i
ÉÉh i
.
ÉÉi j
Latest
ÉÉj p
)
ÉÉp q
&&
ÉÉr t
i
ÉÉu v
.
ÉÉv w
LocalizationSetÉÉw Ü
.ÉÉÜ á
IsInÉÉá ã
(ÉÉã å 
localizationSetsÉÉå ú
)ÉÉú ù
)ÉÉù û
.ÉÉû ü
	ListAsyncÉÉü ®
(ÉÉ® ©
)ÉÉ© ™
;ÉÉ™ ´
var
ÖÖ 
currentCulture
ÖÖ 
=
ÖÖ  "
_httpContextAccessor
ÖÖ! 5
.
ÖÖ5 6
HttpContext
ÖÖ6 A
.
ÖÖA B
Features
ÖÖB J
.
ÖÖJ K
Get
ÖÖK N
<
ÖÖN O$
IRequestCultureFeature
ÖÖO e
>
ÖÖe f
(
ÖÖf g
)
ÖÖg h
.
ÖÖh i
RequestCulture
ÖÖi w
.
ÖÖw x
Culture
ÖÖx 
.ÖÖ Ä
NameÖÖÄ Ñ
.ÖÖÑ Ö 
ToLowerInvariantÖÖÖ ï
(ÖÖï ñ
)ÖÖñ ó
;ÖÖó ò
var
ÜÜ 
defaultCulture
ÜÜ 
=
ÜÜ  
(
ÜÜ! "
await
ÜÜ" '"
_localizationService
ÜÜ( <
.
ÜÜ< =$
GetDefaultCultureAsync
ÜÜ= S
(
ÜÜS T
)
ÜÜT U
)
ÜÜU V
.
ÜÜV W
ToLowerInvariant
ÜÜW g
(
ÜÜg h
)
ÜÜh i
;
ÜÜi j
var
áá 

dictionary
áá 
=
áá 
new
áá  

Dictionary
áá! +
<
áá+ ,
string
áá, 2
,
áá2 3
string
áá4 :
>
áá: ;
(
áá; <
)
áá< =
;
áá= >
var
àà  
cleanedIndexValues
àà "
=
àà# $*
GetSingleContentItemIdPerSet
àà% A
(
ààA B
indexValues
ààB M
,
ààM N
currentCulture
ààO ]
,
àà] ^
defaultCulture
àà_ m
)
ààm n
;
ààn o
foreach
ää 
(
ää 
var
ää 
set
ää 
in
ää 
localizationSets
ää  0
)
ää0 1
{
ãã 
var
åå 
idxValue
åå 
=
åå  
cleanedIndexValues
åå 1
.
åå1 2
FirstOrDefault
åå2 @
(
åå@ A
x
ååA B
=>
ååC E
x
ååF G
.
ååG H
LocalizationSet
ååH W
==
ååX Z
set
åå[ ^
)
åå^ _
;
åå_ `
if
çç 
(
çç 
idxValue
çç 
==
çç 
null
çç  $
)
çç$ %
{
éé 
continue
èè 
;
èè 
}
êê 

dictionary
ëë 
.
ëë 
Add
ëë 
(
ëë 
idxValue
ëë '
.
ëë' (
LocalizationSet
ëë( 7
,
ëë7 8
idxValue
ëë9 A
.
ëëA B
ContentItemId
ëëB O
)
ëëO P
;
ëëP Q
}
íí 
return
ìì 

dictionary
ìì 
;
ìì 
}
îî 	
private
ûû 
static
ûû 
IEnumerable
ûû "
<
ûû" #'
LocalizedContentItemIndex
ûû# <
>
ûû< =*
GetSingleContentItemIdPerSet
ûû> Z
(
ûûZ [
IEnumerable
ûû[ f
<
ûûf g(
LocalizedContentItemIndexûûg Ä
>ûûÄ Å
indexValuesûûÇ ç
,ûûç é
stringûûè ï
currentCultureûûñ §
,ûû§ •
stringûû¶ ¨
defaultCultureûû≠ ª
)ûûª º
{
üü 	
return
†† 
indexValues
†† 
.
†† 
GroupBy
†† &
(
††& '
l
††' (
=>
††) +
l
††, -
.
††- .
LocalizationSet
††. =
)
††= >
.
††> ?
Select
††? E
(
††E F
set
††F I
=>
††J L
{
°° 
var
¢¢ '
currentcultureContentItem
¢¢ -
=
¢¢. /
set
¢¢0 3
.
¢¢3 4
FirstOrDefault
¢¢4 B
(
¢¢B C
f
¢¢C D
=>
¢¢E G
f
¢¢H I
.
¢¢I J
Culture
¢¢J Q
==
¢¢R T
currentCulture
¢¢U c
)
¢¢c d
;
¢¢d e
if
££ 
(
££ '
currentcultureContentItem
££ -
is
££. 0
object
££1 7
)
££7 8
{
§§ 
return
•• '
currentcultureContentItem
•• 4
;
••4 5
}
¶¶ 
var
®® '
defaultCultureContentItem
®® -
=
®®. /
set
®®0 3
.
®®3 4
FirstOrDefault
®®4 B
(
®®B C
f
®®C D
=>
®®E G
f
®®H I
.
®®I J
Culture
®®J Q
==
®®R T
defaultCulture
®®U c
)
®®c d
;
®®d e
if
©© 
(
©© '
defaultCultureContentItem
©© -
is
©©. 0
object
©©1 7
)
©©7 8
{
™™ 
return
´´ '
defaultCultureContentItem
´´ 4
;
´´4 5
}
¨¨ 
if
ÆÆ 
(
ÆÆ 
set
ÆÆ 
.
ÆÆ 
Any
ÆÆ 
(
ÆÆ 
)
ÆÆ 
)
ÆÆ 
{
ØØ 
return
∞∞ 
set
∞∞ 
.
∞∞ 
FirstOrDefault
∞∞ -
(
∞∞- .
)
∞∞. /
;
∞∞/ 0
}
±± 
return
≥≥ 
null
≥≥ 
;
≥≥ 
}
¥¥ 
)
¥¥ 
.
¥¥ 
OfType
¥¥ 
<
¥¥ '
LocalizedContentItemIndex
¥¥ /
>
¥¥/ 0
(
¥¥0 1
)
¥¥1 2
.
¥¥2 3
ToList
¥¥3 9
(
¥¥9 :
)
¥¥: ;
;
¥¥; <
}
µµ 	
}
∂∂ 
}∑∑ É$
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Drivers\ContentCulturePickerSettingsDriver.cs
	namespace

 	
OrchardCore


 
.

 
ContentLocalization

 )
.

) *
Drivers

* 1
{ 
public 

class .
"ContentCulturePickerSettingsDriver 3
:4 5 
SectionDisplayDriver6 J
<J K
ISiteK P
,P Q(
ContentCulturePickerSettingsR n
>n o
{ 
public 
const 
string 
GroupId #
=$ %
$str& <
;< =
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
public .
"ContentCulturePickerSettingsDriver 1
(1 2 
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
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =(
ContentCulturePickerSettings= Y
settingsZ b
,b c
BuildEditorContextd v
contextw ~
)~ 
{ 	
var 
user 
=  
_httpContextAccessor +
.+ ,
HttpContext, 7
?7 8
.8 9
User9 =
;= >
if 
( 
! 
await !
_authorizationService ,
., -
AuthorizeAsync- ;
(; <
user< @
,@ A
PermissionsB M
.M N&
ManageContentCulturePickerN h
)h i
)i j
{ 
return   
null   
;   
}!! 
return## 

Initialize## 
<## (
ContentCulturePickerSettings## :
>##: ;
(##; <
$str##< _
,##_ `
model##a f
=>##g i
{$$ 
model%% 
.%% 
	SetCookie%% 
=%%  !
settings%%" *
.%%* +
	SetCookie%%+ 4
;%%4 5
model&& 
.&& 
RedirectToHomepage&& (
=&&) *
settings&&+ 3
.&&3 4
RedirectToHomepage&&4 F
;&&F G
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
(**> ?(
ContentCulturePickerSettings**? [
section**\ c
,**c d
BuildEditorContext**e w
context**x 
)	** Ä
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
...M N&
ManageContentCulturePicker..N h
)..h i
)..i j
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
};; Í)
µD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Drivers\LocalizationContentsAdminListDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Drivers* 1
{ 
public 

class 6
*LocalizationContentsAdminListDisplayDriver ;
:< =
DisplayDriver> K
<K L#
ContentOptionsViewModelL c
>c d
{ 
private 
readonly  
ILocalizationService - 
_localizationService. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 6
*LocalizationContentsAdminListDisplayDriver 9
(9 : 
ILocalizationService  
localizationService! 4
,4 5
IStringLocalizer 
< 6
*LocalizationContentsAdminListDisplayDriver G
>G H
stringLocalizerI X
)X Y
{ 	 
_localizationService  
=! "
localizationService# 6
;6 7
S 
= 
stringLocalizer 
;  
} 	
	protected 
override 
void 
BuildPrefix  +
(+ ,#
ContentOptionsViewModel, C
modelD I
,I J
stringK Q
htmlFieldPrefixR a
)a b
{ 	
Prefix 
= 
$str #
;# $
} 	
public!! 
override!! 
IDisplayResult!! &
Edit!!' +
(!!+ ,#
ContentOptionsViewModel!!, C
model!!D I
,!!I J
IUpdateModel!!K W
updater!!X _
)!!_ `
{"" 	
return## 

Initialize## 
<## 4
(LocalizationContentsAdminFilterViewModel## F
>##F G
(##G H
$str##H s
,##s t
async##u z
m##{ |
=>##} 
{$$ 
var%% 
supportedCultures%% )
=%%* +
await%%, 1 
_localizationService%%2 F
.%%F G%
GetSupportedCulturesAsync%%G `
(%%` a
)%%a b
;%%b c
var&& 
cultures&&  
=&&! "
new&&# &
List&&' +
<&&+ ,
SelectListItem&&, :
>&&: ;
{'' 
new(( 
SelectListItem(( *
(((* +
)((+ ,
{((- .
Text((/ 3
=((4 5
S((6 7
[((7 8
$str((8 F
]((F G
,((G H
Value((I N
=((O P
$str((Q S
}((T U
})) 
;)) 
cultures** 
.** 
AddRange** %
(**% &
supportedCultures**& 7
.**7 8
Select**8 >
(**> ?
culture**? F
=>**G I
new**J M
SelectListItem**N \
(**\ ]
)**] ^
{**_ `
Text**a e
=**f g
culture**h o
,**o p
Value**q v
=**w x
culture	**y Ä
}
**Å Ç
)
**Ç É
)
**É Ñ
;
**Ñ Ö
m,, 
.,, 
Cultures,, 
=,,  
cultures,,! )
;,,) *
}-- 
)-- 
.-- 
Location-- 
(-- 
$str-- (
)--( )
;--) *
}.. 	
public00 
override00 
async00 
Task00 "
<00" #
IDisplayResult00# 1
>001 2
UpdateAsync003 >
(00> ?#
ContentOptionsViewModel00? V
model00W \
,00\ ]
IUpdateModel00^ j
updater00k r
)00r s
{11 	
var22 
	viewModel22 
=22 
new22 4
(LocalizationContentsAdminFilterViewModel22  H
(22H I
)22I J
;22J K
if33 
(33 
await33 
updater33 
.33 
TryUpdateModelAsync33 1
(331 2
	viewModel332 ;
,33; <
$str33= K
)33K L
)33L M
{44 
if55 
(55 
	viewModel55 
.55 %
ShowLocalizedContentTypes55 7
)557 8
{66 
model77 
.77 
RouteValues77 %
.77% &
TryAdd77& ,
(77, -
$str77- U
,77U V
	viewModel77W `
.77` a%
ShowLocalizedContentTypes77a z
)77z {
;77{ |
}88 
if:: 
(:: 
!:: 
string:: 
.:: 
IsNullOrEmpty:: )
(::) *
	viewModel::* 3
.::3 4
SelectedCulture::4 C
)::C D
)::D E
{;; 
model<< 
.<< 
RouteValues<< %
.<<% &
TryAdd<<& ,
(<<, -
$str<<- K
,<<K L
	viewModel<<M V
.<<V W
SelectedCulture<<W f
)<<f g
;<<g h
}== 
}>> 
return@@ 
Edit@@ 
(@@ 
model@@ 
,@@ 
updater@@ &
)@@& '
;@@' (
}AA 	
}BB 
}CC ˚O
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Drivers\LocalizationPartDriver.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Drivers* 1
{ 
public 

class )
LocalizationPartDisplayDriver .
:/ 0$
ContentPartDisplayDriver1 I
<I J
LocalizationPartJ Z
>Z [
{ 
private 
readonly '
IContentLocalizationManager 4'
_contentLocalizationManager5 P
;P Q
private 
readonly 
IIdGenerator %
_iidGenerator& 3
;3 4
private 
readonly  
ILocalizationService - 
_localizationService. B
;B C
public )
LocalizationPartDisplayDriver ,
(, -'
IContentLocalizationManager '&
contentLocalizationManager( B
,B C
IIdGenerator 
iidGenerator %
,% & 
ILocalizationService  
localizationService! 4
) 	
{ 	'
_contentLocalizationManager '
=( )&
contentLocalizationManager* D
;D E
_iidGenerator 
= 
iidGenerator (
;( ) 
_localizationService  
=! "
localizationService# 6
;6 7
}   	
public"" 
override"" 
IDisplayResult"" &
Display""' .
("". /
LocalizationPart""/ ?
part""@ D
,""D E#
BuildPartDisplayContext""F ]
context""^ e
)""e f
{## 	
return$$ 
Combine$$ 
($$ 

Initialize%% 
<%% %
LocalizationPartViewModel%% 4
>%%4 5
(%%5 6
$str%%6 U
,%%U V
model%%W \
=>%%] _
BuildViewModelAsync%%` s
(%%s t
model%%t y
,%%y z
part%%{ 
)	%% Ä
)
%%Ä Å
.
%%Å Ç
Location
%%Ç ä
(
%%ä ã
$str
%%ã ô
,
%%ô ö
$str
%%õ §
)
%%§ •
,
%%• ¶

Initialize&& 
<&& %
LocalizationPartViewModel&& 4
>&&4 5
(&&5 6
$str&&6 Z
,&&Z [
model&&\ a
=>&&b d
BuildViewModelAsync&&e x
(&&x y
model&&y ~
,&&~ 
part
&&Ä Ñ
)
&&Ñ Ö
)
&&Ö Ü
.
&&Ü á
Location
&&á è
(
&&è ê
$str
&&ê û
,
&&û ü
$str
&&† ´
)
&&´ ¨
)'' 
;'' 
}(( 	
public** 
override** 
IDisplayResult** &
Edit**' +
(**+ ,
LocalizationPart**, <
localizationPart**= M
)**M N
{++ 	
return,, 

Initialize,, 
<,, %
LocalizationPartViewModel,, 7
>,,7 8
(,,8 9
$str,,9 P
,,,P Q
m,,R S
=>,,T V
BuildViewModelAsync,,W j
(,,j k
m,,k l
,,,l m
localizationPart,,n ~
),,~ 
)	,, Ä
;
,,Ä Å
}-- 	
public// 
override// 
async// 
Task// "
<//" #
IDisplayResult//# 1
>//1 2
UpdateAsync//3 >
(//> ?
LocalizationPart//? O
model//P U
,//U V
IUpdateModel//W c
updater//d k
,//k l$
UpdatePartEditorContext	//m Ñ
context
//Ö å
)
//å ç
{00 	
var11 
	viewModel11 
=11 
new11 %
LocalizationPartViewModel11  9
(119 :
)11: ;
;11; <
await22 
updater22 
.22 
TryUpdateModelAsync22 -
(22- .
	viewModel22. 7
,227 8
Prefix229 ?
,22? @
t22A B
=>22C E
t22F G
.22G H
Culture22H O
)22O P
;22P Q
model55 
.55 
Culture55 
=55 
	viewModel55 %
.55% &
Culture55& -
??55. 0
$str551 3
;553 4
if88 
(88 
String88 
.88 
IsNullOrEmpty88 $
(88$ %
model88% *
.88* +
LocalizationSet88+ :
)88: ;
)88; <
{99 
model:: 
.:: 
LocalizationSet:: %
=::& '
_iidGenerator::( 5
.::5 6
GenerateUniqueId::6 F
(::F G
)::G H
;::H I
};; 
return<< 
Edit<< 
(<< 
model<< 
)<< 
;<< 
}== 	
public?? 
async?? 
	ValueTask?? 
BuildViewModelAsync?? 2
(??2 3%
LocalizationPartViewModel??3 L
model??M R
,??R S
LocalizationPart??T d
localizationPart??e u
)??u v
{@@ 	
varAA 
alreadyTranslatedAA !
=AA" #
awaitAA$ )'
_contentLocalizationManagerAA* E
.AAE F
GetItemsForSetAsyncAAF Y
(AAY Z
localizationPartAAZ j
.AAj k
LocalizationSetAAk z
)AAz {
;AA{ |
modelCC 
.CC 
CultureCC 
=CC 
localizationPartCC ,
.CC, -
CultureCC- 4
;CC4 5
modelDD 
.DD 
LocalizationSetDD !
=DD" #
localizationPartDD$ 4
.DD4 5
LocalizationSetDD5 D
;DDD E
modelEE 
.EE 
LocalizationPartEE "
=EE# $
localizationPartEE% 5
;EE5 6
ifHH 
(HH 
modelHH 
.HH 
CultureHH 
==HH  
nullHH! %
)HH% &
{II 
modelJJ 
.JJ 
CultureJJ 
=JJ 
awaitJJ  % 
_localizationServiceJJ& :
.JJ: ;"
GetDefaultCultureAsyncJJ; Q
(JJQ R
)JJR S
;JJS T
}KK 
varMM 
supportedCulturesMM !
=MM" #
awaitMM$ ) 
_localizationServiceMM* >
.MM> ?%
GetSupportedCulturesAsyncMM? X
(MMX Y
)MMY Z
;MMZ [
varNN 
currentCulturesNN 
=NN  !
supportedCulturesNN" 3
.NN3 4
WhereNN4 9
(NN9 :
cNN: ;
=>NN< >
cNN? @
!=NNA C
modelNND I
.NNI J
CultureNNJ Q
)NNQ R
.NNR S
SelectNNS Y
(NNY Z
cultureNNZ a
=>NNb d
{OO 
returnPP 
newPP &
LocalizationLinksViewModelPP 7
(PP7 8
)PP8 9
{QQ 
	IsDeletedRR 
=RR  !
falseRR" '
,RR' (
CultureSS 
=SS 
CultureInfoSS  +
.SS+ ,
GetCultureInfoSS, :
(SS: ;
cultureSS; B
)SSB C
,SSC D
ContentItemIdTT #
=TT$ %
alreadyTranslatedTT& 7
.TT7 8
FirstOrDefaultTT8 F
(TTF G
cTTG H
=>TTI K
cTTL M
.TTM N
AsTTN P
<TTP Q
LocalizationPartTTQ a
>TTa b
(TTb c
)TTc d
?TTd e
.TTe f
CultureTTf m
==TTn p
cultureTTq x
)TTx y
?TTy z
.TTz {
ContentItemId	TT{ à
,
TTà â
}UU 
;UU 
}VV 
)VV 
.VV 
ToListVV 
(VV 
)VV 
;VV 
varYY &
deletedCultureTranslationsYY *
=YY+ ,
alreadyTranslatedYY- >
.YY> ?
WhereYY? D
(YYD E
cYYE F
=>YYG I
cYYJ K
.YYK L
AsYYL N
<YYN O
LocalizationPartYYO _
>YY_ `
(YY` a
)YYa b
?YYb c
.YYc d
CultureYYd k
!=YYl n
modelYYo t
.YYt u
CultureYYu |
)YY| }
.YY} ~
Select	YY~ Ñ
(
YYÑ Ö
ci
YYÖ á
=>
YYà ä
{ZZ 
var[[ 
culture[[ 
=[[ 
ci[[  
.[[  !
As[[! #
<[[# $
LocalizationPart[[$ 4
>[[4 5
([[5 6
)[[6 7
?[[7 8
.[[8 9
Culture[[9 @
;[[@ A
if\\ 
(\\ 
currentCultures\\ #
.\\# $
Any\\$ '
(\\' (
c\\( )
=>\\* ,
c\\- .
.\\. /
ContentItemId\\/ <
==\\= ?
ci\\@ B
.\\B C
ContentItemId\\C P
)\\P Q
||\\R T
culture\\U \
==\\] _
null\\` d
)\\d e
{]] 
return^^ 
null^^ 
;^^  
}__ 
return`` 
new`` &
LocalizationLinksViewModel`` 5
(``5 6
)``6 7
{aa 
	IsDeletedbb 
=bb 
truebb  $
,bb$ %
Culturecc 
=cc 
CultureInfocc )
.cc) *
GetCultureInfocc* 8
(cc8 9
culturecc9 @
)cc@ A
,ccA B
ContentItemIddd !
=dd" #
cidd$ &
?dd& '
.dd' (
ContentItemIddd( 5
}ee 
;ee 
}ff 
)ff 
.ff 
OfTypeff 
<ff &
LocalizationLinksViewModelff 0
>ff0 1
(ff1 2
)ff2 3
.ff3 4
ToListff4 :
(ff: ;
)ff; <
;ff< =
modelhh 
.hh 
ContentItemCultureshh %
=hh& '
currentCultureshh( 7
.hh7 8
Concathh8 >
(hh> ?&
deletedCultureTranslationshh? Y
)hhY Z
.hhZ [
ToListhh[ a
(hha b
)hhb c
;hhc d
}ii 	
}jj 
}kk ö
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\GraphQL\LocalizationInputObjectType.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
GraphQL* 1
{ 
public 

class '
LocalizationInputObjectType ,
:- .%
WhereInputObjectGraphType/ H
<H I
LocalizationPartI Y
>Y Z
{		 
public

 '
LocalizationInputObjectType

 *
(

* +
IStringLocalizer

+ ;
<

; <'
LocalizationInputObjectType

< W
>

W X
S

Y Z
)

Z [
{ 	
Name 
= 
$str 0
;0 1
Description 
= 
S 
[ 
$str G
]G H
;H I!
AddScalarFilterFields !
<! "
StringGraphType" 1
>1 2
(2 3
$str3 <
,< =
S> ?
[? @
$str@ k
]k l
)l m
;m n
Field 
( 
x 
=> 
x 
. 
LocalizationSet (
,( )
nullable* 2
:2 3
true4 8
)8 9
.9 :
Description: E
(E F
SF G
[G H
$strH |
]| }
)} ~
;~ 
} 	
} 
} Í

≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\GraphQL\LocalizationPartIndexAliasProvider.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
GraphQL* 1
{ 
public 

class .
"LocalizationPartIndexAliasProvider 3
:4 5
IIndexAliasProvider6 I
{ 
private		 
static		 
readonly		 

IndexAlias		  *
[		* +
]		+ ,
_aliases		- 5
=		6 7
new		8 ;
[		; <
]		< =
{

 	
new 

IndexAlias 
{ 
Alias 
= 
$str *
,* +
Index 
= 
nameof 
( %
LocalizedContentItemIndex 8
)8 9
,9 :
	IndexType 
= 
typeof "
(" #%
LocalizedContentItemIndex# <
)< =
} 
} 	
;	 

public 
IEnumerable 
< 

IndexAlias %
>% &

GetAliases' 1
(1 2
)2 3
{ 	
return 
_aliases 
; 
} 	
} 
} ’
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\GraphQL\LocalizationQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
GraphQL* 1
{ 
public 

class '
LocalizationQueryObjectType ,
:- .
ObjectGraphType/ >
<> ?
LocalizationPart? O
>O P
{ 
public '
LocalizationQueryObjectType *
(* +
IStringLocalizer+ ;
<; <'
LocalizationQueryObjectType< W
>W X
SY Z
)Z [
{ 	
Name 
= 
$str %
;% &
Description 
= 
S 
[ 
$str J
]J K
;K L
Field 
( 
x 
=> 
x 
. 
Culture  
)  !
.! "
Description" -
(- .
S. /
[/ 0
$str0 T
]T U
)U V
;V W
Field 
( 
x 
=> 
x 
. 
LocalizationSet (
)( )
.) *
Description* 5
(5 6
S6 7
[7 8
$str8 e
]e f
)f g
;g h
Field 
< 
ListGraphType 
<   
ContentItemInterface  4
>4 5
,5 6
IEnumerable7 B
<B C
ContentItemC N
>N O
>O P
(P Q
)Q R
. 
Name 
( 
$str %
)% &
. 
Description 
( 
S 
[ 
$str G
]G H
)H I
. 
Argument 
< 
StringGraphType )
,) *
string+ 1
>1 2
(2 3
$str3 <
,< =
$str> _
)_ `
. 
ResolveLockedAsync #
(# $
async$ )
ctx* -
=>. 0
{ 
var 
culture 
=  
ctx! $
.$ %
GetArgument% 0
<0 1
string1 7
>7 8
(8 9
$str9 B
)B C
;C D
var &
contentLocalizationManager 1
=2 3
ctx4 7
.7 8"
ResolveServiceProvider8 N
(N O
)O P
.P Q

GetServiceQ [
<[ \'
IContentLocalizationManager\ w
>w x
(x y
)y z
;z {
if   
(   
culture   
!=   !
null  " &
)  & '
{!! 
var"" 
contentItem"" &
=""' (
await"") .&
contentLocalizationManager""/ I
.""I J
GetContentItemAsync""J ]
(""] ^
ctx""^ a
.""a b
Source""b h
.""h i
LocalizationSet""i x
,""x y
culture	""z Å
)
""Å Ç
;
""Ç É
return$$ 
contentItem$$ )
!=$$* ,
null$$- 1
?$$2 3
new$$4 7
[$$7 8
]$$8 9
{$$: ;
contentItem$$< G
}$$H I
:$$J K

Enumerable$$L V
.$$V W
Empty$$W \
<$$\ ]
ContentItem$$] h
>$$h i
($$i j
)$$j k
;$$k l
}%% 
return'' 
await'' &
contentLocalizationManager''  :
.'': ;
GetItemsForSetAsync''; N
(''N O
ctx''O R
.''R S
Source''S Y
.''Y Z
LocalizationSet''Z i
)''i j
;''j k
}(( 
)(( 
;(( 
})) 	
}** 
}++ Ì
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\GraphQL\Startup.cs
	namespace		 	
OrchardCore		
 
.		 
ContentLocalization		 )
.		) *
GraphQL		* 1
{

 
[ 
RequireFeatures 
( 
$str /
)/ 0
]0 1
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
. #
AddInputObjectGraphType ,
<, -
LocalizationPart- =
,= >'
LocalizationInputObjectType? Z
>Z [
([ \
)\ ]
;] ^
services 
. 
AddObjectGraphType '
<' (
LocalizationPart( 8
,8 9'
LocalizationQueryObjectType: U
>U V
(V W
)W X
;X Y
services 
. 
AddTransient !
<! "
IIndexAliasProvider" 5
,5 6.
"LocalizationPartIndexAliasProvider7 Y
>Y Z
(Z [
)[ \
;\ ]
services 
. .
"AddWhereInputIndexPropertyProvider 7
<7 8%
LocalizedContentItemIndex8 Q
>Q R
(R S
)S T
;T U
} 	
} 
} ¨4
µD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Handlers\ContentLocalizationPartHandlerCoordinator.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Handlers* 2
{		 
internal

 
class

 5
)ContentLocalizationPartHandlerCoordinator

 <
:

= >*
ContentLocalizationHandlerBase

? ]
{ 
private 
readonly !
ITypeActivatorFactory .
<. /
ContentPart/ :
>: ;
_contentPartFactory< O
;O P
private 
readonly 
IEnumerable $
<$ %+
IContentLocalizationPartHandler% D
>D E
_partHandlersF S
;S T
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
ILogger  
_logger! (
;( )
public 5
)ContentLocalizationPartHandlerCoordinator 8
(8 9!
ITypeActivatorFactory !
<! "
ContentPart" -
>- .
contentPartFactory/ A
,A B
IEnumerable 
< +
IContentLocalizationPartHandler 7
>7 8
partHandlers9 E
,E F%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
ILogger 
< 5
)ContentLocalizationPartHandlerCoordinator =
>= >
logger? E
) 	
{ 	
_contentPartFactory 
=  !
contentPartFactory" 4
;4 5
_partHandlers 
= 
partHandlers (
;( )%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_logger 
= 
logger 
; 
} 	
public 
override 
async 
Task "
LocalizingAsync# 2
(2 3&
LocalizationContentContext3 M
contextN U
)U V
{   	
var!! !
contentTypeDefinition!! %
=!!& '%
_contentDefinitionManager!!( A
.!!A B
GetTypeDefinition!!B S
(!!S T
context!!T [
.!![ \
ContentItem!!\ g
.!!g h
ContentType!!h s
)!!s t
;!!t u
if"" 
("" !
contentTypeDefinition"" %
==""& (
null"") -
)""- .
return## 
;## 
foreach%% 
(%% 
var%% 
typePartDefinition%% +
in%%, .!
contentTypeDefinition%%/ D
.%%D E
Parts%%E J
)%%J K
{&& 
var'' 
partName'' 
='' 
typePartDefinition'' 1
.''1 2
PartDefinition''2 @
.''@ A
Name''A E
;''E F
var(( 
	activator(( 
=(( 
_contentPartFactory((  3
.((3 4
GetTypeActivator((4 D
(((D E
partName((E M
)((M N
;((N O
var)) 
part)) 
=)) 
context)) "
.))" #
ContentItem))# .
.)). /
Get))/ 2
())2 3
	activator))3 <
.))< =
Type))= A
,))A B
typePartDefinition))C U
.))U V
Name))V Z
)))Z [
as))\ ^
ContentPart))_ j
;))j k
if++ 
(++ 
part++ 
!=++ 
null++  
)++  !
{,, 
await-- 
_partHandlers-- '
.--' (
InvokeAsync--( 3
(--3 4
(--4 5
handler--5 <
,--< =
context--> E
,--E F
part--G K
)--K L
=>--M O
handler--P W
.--W X
LocalizingAsync--X g
(--g h
context--h o
,--o p
part--q u
)--u v
,--v w
context--x 
,	-- Ä
part
--Å Ö
,
--Ö Ü
_logger
--á é
)
--é è
;
--è ê
}.. 
}// 
}00 	
public22 
override22 
async22 
Task22 "
LocalizedAsync22# 1
(221 2&
LocalizationContentContext222 L
context22M T
)22T U
{33 	
var44 !
contentTypeDefinition44 %
=44& '%
_contentDefinitionManager44( A
.44A B
GetTypeDefinition44B S
(44S T
context44T [
.44[ \
ContentItem44\ g
.44g h
ContentType44h s
)44s t
;44t u
if55 
(55 !
contentTypeDefinition55 %
==55& (
null55) -
)55- .
return66 
;66 
foreach88 
(88 
var88 
typePartDefinition88 +
in88, .!
contentTypeDefinition88/ D
.88D E
Parts88E J
)88J K
{99 
var:: 
partName:: 
=:: 
typePartDefinition:: 1
.::1 2
PartDefinition::2 @
.::@ A
Name::A E
;::E F
var;; 
	activator;; 
=;; 
_contentPartFactory;;  3
.;;3 4
GetTypeActivator;;4 D
(;;D E
partName;;E M
);;M N
;;;N O
var<< 
part<< 
=<< 
context<< "
.<<" #
ContentItem<<# .
.<<. /
Get<</ 2
(<<2 3
	activator<<3 <
.<<< =
Type<<= A
,<<A B
typePartDefinition<<C U
.<<U V
Name<<V Z
)<<Z [
as<<\ ^
ContentPart<<_ j
;<<j k
if>> 
(>> 
part>> 
!=>> 
null>>  
)>>  !
{?? 
await@@ 
_partHandlers@@ '
.@@' (
InvokeAsync@@( 3
(@@3 4
(@@4 5
handler@@5 <
,@@< =
context@@> E
,@@E F
part@@G K
)@@K L
=>@@M O
handler@@P W
.@@W X
LocalizedAsync@@X f
(@@f g
context@@g n
,@@n o
part@@p t
)@@t u
,@@u v
context@@w ~
,@@~ 
part
@@Ä Ñ
,
@@Ñ Ö
_logger
@@Ü ç
)
@@ç é
;
@@é è
}AA 
}BB 
}CC 	
}DD 
}EE ∞+
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Handlers\LocalizationPartHandler.cs
	namespace		 	
OrchardCore		
 
.		 
ContentLocalization		 )
.		) *
Handlers		* 2
{

 
public 

class #
LocalizationPartHandler (
:) *
ContentPartHandler+ =
<= >
LocalizationPart> N
>N O
{ 
private 
readonly  
ILocalizationEntries -
_entries. 6
;6 7
public #
LocalizationPartHandler &
(& ' 
ILocalizationEntries' ;
entries< C
)C D
{ 	
_entries 
= 
entries 
; 
} 	
public 
override 
Task %
GetContentItemAspectAsync 6
(6 7$
ContentItemAspectContext7 O
contextP W
,W X
LocalizationPartY i
partj n
)n o
{ 	
return 
context 
. 
ForAsync #
<# $
CultureAspect$ 1
>1 2
(2 3
cultureAspect3 @
=>A C
{ 
if 
( 
part 
. 
Culture  
!=! #
null$ (
)( )
{ 
cultureAspect !
.! "
Culture" )
=* +
CultureInfo, 7
.7 8
GetCultureInfo8 F
(F G
partG K
.K L
CultureL S
)S T
;T U
cultureAspect !
.! "

HasCulture" ,
=- .
true/ 3
;3 4
} 
return 
Task 
. 
CompletedTask )
;) *
} 
) 
; 
}   	
public"" 
override"" 
Task"" 
PublishedAsync"" +
(""+ ,!
PublishContentContext"", A
context""B I
,""I J
LocalizationPart""K [
part""\ `
)""` a
{## 	
if$$ 
($$ 
!$$ 
String$$ 
.$$ 
IsNullOrWhiteSpace$$ *
($$* +
part$$+ /
.$$/ 0
LocalizationSet$$0 ?
)$$? @
&&$$A C
part$$D H
.$$H I
Culture$$I P
!=$$Q S
null$$T X
)$$X Y
{%% 
return'' 
_entries'' 
.''  
UpdateEntriesAsync''  2
(''2 3
)''3 4
;''4 5
}(( 
return** 
Task** 
.** 
CompletedTask** %
;**% &
}++ 	
public-- 
override-- 
Task-- 
UnpublishedAsync-- -
(--- .!
PublishContentContext--. C
context--D K
,--K L
LocalizationPart--M ]
part--^ b
)--b c
{.. 	
if// 
(// 
!// 
String// 
.// 
IsNullOrWhiteSpace// *
(//* +
part//+ /
./// 0
LocalizationSet//0 ?
)//? @
&&//A C
part//D H
.//H I
Culture//I P
!=//Q S
null//T X
)//X Y
{00 
return22 
_entries22 
.22  
UpdateEntriesAsync22  2
(222 3
)223 4
;224 5
}33 
return55 
Task55 
.55 
CompletedTask55 %
;55% &
}66 	
public88 
override88 
Task88 
RemovedAsync88 )
(88) * 
RemoveContentContext88* >
context88? F
,88F G
LocalizationPart88H X
part88Y ]
)88] ^
{99 	
if:: 
(:: 
!:: 
String:: 
.:: 
IsNullOrWhiteSpace:: *
(::* +
part::+ /
.::/ 0
LocalizationSet::0 ?
)::? @
&&::A C
part::D H
.::H I
Culture::I P
!=::Q S
null::T X
&&::Y [
context::\ c
.::c d
NoActiveVersionLeft::d w
)::w x
{;; 
return== 
_entries== 
.==  
UpdateEntriesAsync==  2
(==2 3
)==3 4
;==4 5
}>> 
return@@ 
Task@@ 
.@@ 
CompletedTask@@ %
;@@% &
}AA 	
publicCC 
overrideCC 
TaskCC 
CloningAsyncCC )
(CC) *
CloneContentContextCC* =
contextCC> E
,CCE F
LocalizationPartCCG W
partCCX \
)CC\ ]
{DD 	
varEE 

clonedPartEE 
=EE 
contextEE $
.EE$ %
CloneContentItemEE% 5
.EE5 6
AsEE6 8
<EE8 9
LocalizationPartEE9 I
>EEI J
(EEJ K
)EEK L
;EEL M

clonedPartFF 
.FF 
LocalizationSetFF &
=FF' (
StringFF) /
.FF/ 0
EmptyFF0 5
;FF5 6

clonedPartGG 
.GG 
ApplyGG 
(GG 
)GG 
;GG 
returnHH 
TaskHH 
.HH 
CompletedTaskHH %
;HH% &
}II 	
}JJ 
}KK É
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Indexing\LocalizationPartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Indexing* 2
{ 
public 

class (
LocalizationPartIndexHandler -
:. /#
ContentPartIndexHandler0 G
<G H
LocalizationPartH X
>X Y
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
LocalizationPart		- =
part		> B
,		B C!
BuildPartIndexContext		D Y
context		Z a
)		a b
{

 	
var 
options 
=  
DocumentIndexOptions .
.. /
Store/ 4
;4 5
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
+. /
$str0 B
,B C
partD H
.H I
LocalizationSetI X
,X Y
optionsZ a
)a b
;b c
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
+. /
$str0 :
,: ;
part< @
.@ A
CultureA H
?H I
.I J
ToLowerInvariantJ Z
(Z [
)[ \
,\ ]
options^ e
)e f
;f g
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ˝
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Liquid\ContentLocalizationFilter.cs
	namespace		 	
OrchardCore		
 
.		 
ContentLocalization		 )
.		) *
Liquid		* 0
{

 
public 

class %
ContentLocalizationFilter *
:+ ,
ILiquidFilter- :
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, `
)` a
;a b
} 
var 
innoFieldsService !
=" #
($ %
(% &
IServiceProvider& 6
)6 7
services7 ?
)? @
.@ A
GetRequiredServiceA S
<S T'
IContentLocalizationManagerT o
>o p
(p q
)q r
;r s
var 
locale 
= 
	arguments "
." #
At# %
(% &
$num& '
)' (
.( )
ToStringValue) 6
(6 7
)7 8
;8 9
if 
( 
	arguments 
. 
At 
( 
$num 
) 
.  
IsNil  %
(% &
)& '
)' (
{ 
locale 
= 
ctx 
. 
CultureInfo (
.( )
Name) -
;- .
} 
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
Array* /
)/ 0
{ 
var!! 
localizationSets!! $
=!!% &
input!!' ,
.!!, -
	Enumerate!!- 6
(!!6 7
)!!7 8
.!!8 9
Select!!9 ?
(!!? @
x!!@ A
=>!!B D
x!!E F
.!!F G
ToStringValue!!G T
(!!T U
)!!U V
)!!V W
.!!W X
ToArray!!X _
(!!_ `
)!!` a
;!!a b
return## 

FluidValue## !
.##! "
Create##" (
(##( )
await##) .
innoFieldsService##/ @
.##@ A 
GetItemsForSetsAsync##A U
(##U V
localizationSets##V f
,##f g
locale##h n
)##n o
)##o p
;##p q
}$$ 
else%% 
{&& 
var'' 
localizationSet'' #
=''$ %
input''& +
.''+ ,
ToStringValue'', 9
(''9 :
)'': ;
;''; <
return)) 

FluidValue)) !
.))! "
Create))" (
())( )
await))) .
innoFieldsService))/ @
.))@ A
GetContentItemAsync))A T
())T U
localizationSet))U d
,))d e
locale))f l
)))l m
)))m n
;))n o
}** 
}++ 	
},, 
}-- ç
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Liquid\SwitchCultureUrlFilter.cs
	namespace		 	
OrchardCore		
 
.		 
ContentLocalization		 )
.		) *
Liquid		* 0
{

 
public 

class "
SwitchCultureUrlFilter '
:( )
ILiquidFilter* 7
{ 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ :
,: ;
out< ?
var@ C
urlHelperObjD P
)P Q
)Q R
{ 
throw 
new 
ArgumentException +
(+ ,
$str, c
)c d
;d e
} 
var 
request 
= 
( 
HttpRequest &
)& '
ctx' *
.* +
GetValue+ 3
(3 4
$str4 =
)= >
?> ?
.? @
ToObjectValue@ M
(M N
)N O
;O P
if 
( 
request 
== 
null 
)  
{ 
throw 
new 
ArgumentException +
(+ ,
$str, e
)e f
;f g
} 
var 
targetCulture 
= 
input  %
.% &
ToStringValue& 3
(3 4
)4 5
;5 6
var 
	urlHelper 
= 
( 

IUrlHelper '
)' (
urlHelperObj( 4
;4 5
var 
url 
= 
	urlHelper 
.  
RouteUrl  (
(( )
$str) E
,E F
new 
{ 
area 
= 
$str <
,< =
targetCulture   !
=  " #
targetCulture  $ 1
,  1 2
contentItemUrl!! "
=!!# $
request!!% ,
.!!, -
Path!!- 1
.!!1 2
Value!!2 7
,!!7 8
queryStringValue"" $
=""% &
request""' .
."". /
QueryString""/ :
."": ;
Value""; @
}## 
)## 
;## 
return$$ 
new$$ 
	ValueTask$$  
<$$  !

FluidValue$$! +
>$$+ ,
($$, -

FluidValue$$- 7
.$$7 8
Create$$8 >
($$> ?
url$$? B
)$$B C
)$$C D
;$$D E
}%% 	
}&& 
}'' ƒ
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str !
,! "
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
$str J
,J K
Category		 
=		 
$str		 %
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
= 
$str	 *
,* +
Name 
=	 

$str !
,! "
Description 
= 
$str J
,J K
Dependencies 
= 
new 
[ 
] 
{ 
$str 5
,5 6
$str7 Q
}R S
,S T
Category 
= 
$str %
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 ?
,? @
Name 
=	 

$str #
,# $
Description 
= 
$str E
,E F
Dependencies 
= 
new 
[ 
] 
{ 
$str <
,< =
$str> U
}V W
,W X
Category 
= 
$str %
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 3
,3 4
Name 
=	 

$str ,
,, -
Description 
= 
$str I
,I J
Dependencies   
=   
new   
[   
]   
{   
$str   <
,  < =
$str  > T
}  U V
,  V W
Category!! 
=!! 
$str!! %
)"" 
]"" ”
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Models\ContentCulturePickerSettings.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Models* 0
{ 
public 

class (
ContentCulturePickerSettings -
{ 
public 
bool 
RedirectToHomepage &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
false7 <
;< =
public 
bool 
	SetCookie 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
true. 2
;2 3
} 
} È 
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Permissions.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
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
 )
LocalizeContent

* 9
=

: ;
new

< ?

Permission

@ J
(

J K
$str

K \
,

\ ]
$str

^ {
)

{ |
;

| }
public 
static 
readonly 

Permission )
LocalizeOwnContent* <
== >
new? B

PermissionC M
(M N
$strN b
,b c
$strd z
,z {
new| 
[	 Ä
]
Ä Å
{
Ç É
LocalizeContent
Ñ ì
}
î ï
)
ï ñ
;
ñ ó
public 
static 
readonly 

Permission )&
ManageContentCulturePicker* D
=E F
newG J

PermissionK U
(U V
$strV r
,r s
$str	t ö
)
ö õ
;
õ ú
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
{ 
LocalizeContent 
,  
LocalizeOwnContent "
," #&
ManageContentCulturePicker *
} 
. 
AsEnumerable 
( 
) 
) 
; 
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions   
=    !
new  " %
[  % &
]  & '
{  ( )
LocalizeContent  * 9
,  9 :
LocalizeOwnContent  ; M
,  M N&
ManageContentCulturePicker  O i
}  j k
}!! 
,!! 
new""  
PermissionStereotype"" (
{## 
Name$$ 
=$$ 
$str$$ #
,$$# $
Permissions%% 
=%%  !
new%%" %
[%%% &
]%%& '
{%%( )
LocalizeContent%%* 9
,%%9 :
LocalizeOwnContent%%; M
,%%M N&
ManageContentCulturePicker%%O i
}%%j k
}&& 
,&& 
new''  
PermissionStereotype'' (
{(( 
Name)) 
=)) 
$str)) &
}** 
,** 
new++  
PermissionStereotype++ (
{,, 
Name-- 
=-- 
$str-- #
,--# $
Permissions.. 
=..  !
new.." %
[..% &
]..& '
{..( )
LocalizeOwnContent..* <
}..= >
}// 
,// 
new00  
PermissionStereotype00 (
{11 
Name22 
=22 
$str22 (
,22( )
Permissions33 
=33  !
new33" %
[33% &
]33& '
{33( )
LocalizeOwnContent33* <
}33= >
}44 
,44 
new55  
PermissionStereotype55 (
{66 
Name77 
=77 
$str77 *
}88 
,88 
new99  
PermissionStereotype99 (
{:: 
Name;; 
=;; 
$str;; &
}<< 
,<< 
}== 
;== 
}>> 	
}?? 
}@@ ø(
ØD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Security\LocalizeContentAuthorizationHandler.cs
	namespace

 	
OrchardCore


 
.

 
ContentLocalization

 )
.

) *
Security

* 2
{ 
public 

class /
#LocalizeContentAuthorizationHandler 4
:5 6 
AuthorizationHandler7 K
<K L!
PermissionRequirementL a
>a b
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public /
#LocalizeContentAuthorizationHandler 2
(2 3
IServiceProvider3 C
serviceProviderD S
)S T
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
	protected 
override 
async  
Task! %"
HandleRequirementAsync& <
(< ='
AuthorizationHandlerContext= X
contextY `
,` a!
PermissionRequirementb w
requirement	x É
)
É Ñ
{ 	
if 
( 
context 
. 
HasSucceeded $
)$ %
{ 
return 
; 
} 
if 
( 
context 
. 
Resource  
==! #
null$ (
)( )
{ 
return 
; 
}   
var"" 
contentItem"" 
="" 
context"" %
.""% &
Resource""& .
as""/ 1
ContentItem""2 =
;""= >

Permission$$ 

permission$$ !
=$$" #
null$$$ (
;$$( )
if&& 
(&& 
contentItem&& 
!=&& 
null&& #
)&&# $
{'' 
if(( 
(((  
OwnerVariationExists(( (
(((( )
requirement(() 4
.((4 5

Permission((5 ?
)((? @
&&((A C
HasOwnership((D P
(((P Q
context((Q X
.((X Y
User((Y ]
,((] ^
contentItem((_ j
)((j k
)((k l
{)) 

permission** 
=**  
GetOwnerVariation**! 2
(**2 3
requirement**3 >
.**> ?

Permission**? I
)**I J
;**J K
}++ 
},, 
if.. 
(.. 

permission.. 
==.. 
null.. "
).." #
{// 
return00 
;00 
}11 
var44  
authorizationService44 $
=44% &
_serviceProvider44' 7
.447 8

GetService448 B
<44B C!
IAuthorizationService44C X
>44X Y
(44Y Z
)44Z [
;44[ \
if66 
(66 
await66  
authorizationService66 *
.66* +
AuthorizeAsync66+ 9
(669 :
context66: A
.66A B
User66B F
,66F G

permission66H R
)66R S
)66S T
{77 
context88 
.88 
Succeed88 
(88  
requirement88  +
)88+ ,
;88, -
}99 
}:: 	
private<< 
static<< 

Permission<< !
GetOwnerVariation<<" 3
(<<3 4

Permission<<4 >

permission<<? I
)<<I J
{== 	
if>> 
(>> 

permission>> 
.>> 
Name>> 
==>>  "
Permissions>># .
.>>. /
LocalizeContent>>/ >
.>>> ?
Name>>? C
)>>C D
{?? 
return@@ 
Permissions@@ "
.@@" #
LocalizeOwnContent@@# 5
;@@5 6
}AA 
returnCC 
nullCC 
;CC 
}DD 	
privateFF 
staticFF 
boolFF 
HasOwnershipFF (
(FF( )
ClaimsPrincipalFF) 8
userFF9 =
,FF= >
ContentItemFF? J
contentFFK R
)FFR S
{GG 	
ifHH 
(HH 
userHH 
==HH 
nullHH 
||HH 
contentHH  '
==HH( *
nullHH+ /
)HH/ 0
{II 
returnJJ 
falseJJ 
;JJ 
}KK 
returnMM 
userMM 
.MM 
FindFirstValueMM &
(MM& '

ClaimTypesMM' 1
.MM1 2
NameIdentifierMM2 @
)MM@ A
==MMB D
contentMME L
.MML M
OwnerMMM R
;MMR S
}NN 	
privatePP 
staticPP 
boolPP  
OwnerVariationExistsPP 0
(PP0 1

PermissionPP1 ;

permissionPP< F
)PPF G
{QQ 	
returnRR 
GetOwnerVariationRR $
(RR$ %

permissionRR% /
)RR/ 0
!=RR1 3
nullRR4 8
;RR8 9
}SS 	
}TT 
}UU “
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection ("
AddContentLocalization) ?
(? @
this@ D
IServiceCollectionE W
servicesX `
)` a
{ 	
services 
. 
AddContentPart #
<# $
LocalizationPart$ 4
>4 5
(5 6
)6 7
. 
UseDisplayDriver !
<! ")
LocalizationPartDisplayDriver" ?
>? @
(@ A
)A B
. 

AddHandler 
< #
LocalizationPartHandler 3
>3 4
(4 5
)5 6
;6 7
services 
. 
TryAddScoped !
<! "'
IContentLocalizationManager" =
,= >-
!DefaultContentLocalizationManager? `
>` a
(a b
)b c
;c d
services 
. 
	AddScoped 
< -
!LocalizedContentItemIndexProvider @
>@ A
(A B
)B C
;C D
services 
. 
	AddScoped 
<  
IScopedIndexProvider 3
>3 4
(4 5
sp5 7
=>8 :
sp; =
.= >
GetRequiredService> P
<P Q-
!LocalizedContentItemIndexProviderQ r
>r s
(s t
)t u
)u v
;v w
services 
. 
	AddScoped 
< 
IContentHandler .
>. /
(/ 0
sp0 2
=>3 5
sp6 8
.8 9
GetRequiredService9 K
<K L-
!LocalizedContentItemIndexProviderL m
>m n
(n o
)o p
)p q
;q r
services 
. 
	AddScoped 
< 
IDataMigration -
,- .

Migrations/ 9
>9 :
(: ;
); <
;< =
services 
. 
	AddScoped 
< '
IContentLocalizationHandler :
,: ;5
)ContentLocalizationPartHandlerCoordinator< e
>e f
(f g
)g h
;h i
return   
services   
;   
}!! 	
}"" 
}## «0
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Services\CulturePickerService.cs
	namespace		 	
OrchardCore		
 
.		 
ContentLocalization		 )
.		) *
Services		* 2
{

 
public 

class '
ContentCulturePickerService ,
:- .(
IContentCulturePickerService/ K
{ 
private 
readonly 
IAutorouteEntries *
_autorouteEntries+ <
;< =
private 
readonly  
ILocalizationEntries - 
_localizationEntries. B
;B C
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public '
ContentCulturePickerService *
(* +
IAutorouteEntries 
autorouteEntries .
,. / 
ILocalizationEntries  
localizationEntries! 4
,4 5
ISiteService 
siteService $
)$ %
{ 	
_autorouteEntries 
= 
autorouteEntries  0
;0 1 
_localizationEntries  
=! "
localizationEntries# 6
;6 7
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
< 
string  
>  !*
GetContentItemIdFromRouteAsync" @
(@ A

PathStringA K
urlL O
)O P
{ 	
if 
( 
! 
url 
. 
HasValue 
) 
{ 
url 
= 
$str 
; 
}   
string"" 
contentItemId""  
=""! "
null""# '
;""' (
if$$ 
($$ 
url$$ 
==$$ 
$str$$ 
)$$ 
{%% 
var'' 
siteSettings''  
=''! "
await''# (
_siteService'') 5
.''5 6 
GetSiteSettingsAsync''6 J
(''J K
)''K L
;''L M
contentItemId(( 
=(( 
siteSettings((  ,
.((, -
	HomeRoute((- 6
[((6 7
$str((7 F
]((F G
?((G H
.((H I
ToString((I Q
(((Q R
)((R S
;((S T
})) 
else** 
{++ 
(.. 
var.. 
found.. 
,.. 
var.. 
entry..  %
)..% &
=..' (
await..) .
_autorouteEntries../ @
...@ A"
TryGetEntryByPathAsync..A W
(..W X
url..X [
...[ \
Value..\ a
)..a b
;..b c
if00 
(00 
found00 
)00 
{11 
contentItemId22 !
=22" #
entry22$ )
.22) *
ContentItemId22* 7
;227 8
}33 
;33 
}44 
if66 
(66 
string66 
.66 
IsNullOrEmpty66 $
(66$ %
contentItemId66% 2
)662 3
)663 4
{77 
return88 
null88 
;88 
}99 
return;; 
contentItemId;;  
;;;  !
}<< 	
public>> 
async>> 
Task>> 
<>> 
LocalizationEntry>> +
>>>+ ,)
GetLocalizationFromRouteAsync>>- J
(>>J K

PathString>>K U
url>>V Y
)>>Y Z
{?? 	
var@@ 
contentItemId@@ 
=@@ 
await@@  %*
GetContentItemIdFromRouteAsync@@& D
(@@D E
url@@E H
)@@H I
;@@I J
ifBB 
(BB 
!BB 
stringBB 
.BB 
IsNullOrEmptyBB %
(BB% &
contentItemIdBB& 3
)BB3 4
)BB4 5
{CC 
(DD 
varDD 
foundDD 
,DD 
varDD 
localizationDD  ,
)DD, -
=DD. /
awaitDD0 5 
_localizationEntriesDD6 J
.DDJ K#
TryGetLocalizationAsyncDDK b
(DDb c
contentItemIdDDc p
)DDp q
;DDq r
ifFF 
(FF 
foundFF 
)FF 
{GG 
returnHH 
localizationHH '
;HH' (
}II 
}JJ 
returnLL 
nullLL 
;LL 
}MM 	
publicOO 
asyncOO 
TaskOO 
<OO 
IEnumerableOO %
<OO% &
LocalizationEntryOO& 7
>OO7 8
>OO8 9*
GetLocalizationsFromRouteAsyncOO: X
(OOX Y

PathStringOOY c
urlOOd g
)OOg h
{PP 	
varQQ 
contentItemIdQQ 
=QQ 
awaitQQ  %*
GetContentItemIdFromRouteAsyncQQ& D
(QQD E
urlQQE H
)QQH I
;QQI J
ifSS 
(SS 
!SS 
stringSS 
.SS 
IsNullOrEmptySS %
(SS% &
contentItemIdSS& 3
)SS3 4
)SS4 5
{TT 
(UU 
varUU 
foundUU 
,UU 
varUU 
localizationUU  ,
)UU, -
=UU. /
awaitUU0 5 
_localizationEntriesUU6 J
.UUJ K#
TryGetLocalizationAsyncUUK b
(UUb c
contentItemIdUUc p
)UUp q
;UUq r
ifWW 
(WW 
foundWW 
)WW 
{XX 
returnYY 
awaitYY   
_localizationEntriesYY! 5
.YY5 6!
GetLocalizationsAsyncYY6 K
(YYK L
localizationYYL X
.YYX Y
LocalizationSetYYY h
)YYh i
;YYi j
}ZZ 
}[[ 
return]] 

Enumerable]] 
.]] 
Empty]] #
<]]# $
LocalizationEntry]]$ 5
>]]5 6
(]]6 7
)]]7 8
;]]8 9
}^^ 	
}__ 
}`` “
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Services\ICulturePickerService.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Services* 2
{ 
public 

	interface (
IContentCulturePickerService 1
{		 
Task 
< 
string 
> *
GetContentItemIdFromRouteAsync 3
(3 4

PathString4 >
url? B
)B C
;C D
Task 
< 
LocalizationEntry 
> )
GetLocalizationFromRouteAsync  =
(= >

PathString> H
urlI L
)L M
;M N
Task 
< 
IEnumerable 
< 
LocalizationEntry *
>* +
>+ ,*
GetLocalizationsFromRouteAsync- K
(K L

PathStringL V
urlW Z
)Z [
;[ \
} 
} †
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Services\ILocalizationEntries.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Services* 2
{ 
public 

	interface  
ILocalizationEntries )
{ 
Task		 
<		 
(		 
bool		 
,		 
LocalizationEntry		 %
)		% &
>		& '#
TryGetLocalizationAsync		( ?
(		? @
string		@ F
contentItemId		G T
)		T U
;		U V
Task

 
<

 
IEnumerable

 
<

 
LocalizationEntry

 *
>

* +
>

+ ,!
GetLocalizationsAsync

- B
(

B C
string

C I
localizationSet

J Y
)

Y Z
;

Z [
Task 
UpdateEntriesAsync 
(  
)  !
;! "
} 
} °ä
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Services\LocalizationEntries.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Services* 2
{ 
public 

class 
LocalizationEntries $
:% & 
ILocalizationEntries' ;
{ 
private 
ImmutableDictionary #
<# $
string$ *
,* +
LocalizationEntry, =
>= >
_localizations? M
=N O
ImmutableDictionaryP c
<c d
stringd j
,j k
LocalizationEntryl }
>} ~
.~ 
Empty	 Ñ
;
Ñ Ö
private 
ImmutableDictionary #
<# $
string$ *
,* +
ImmutableList, 9
<9 :
LocalizationEntry: K
>K L
>L M
_localizationSetsN _
=` a
ImmutableDictionary 
<  
string  &
,& '
ImmutableList( 5
<5 6
LocalizationEntry6 G
>G H
>H I
.I J
EmptyJ O
;O P
private 
readonly 
SemaphoreSlim &

_semaphore' 1
=2 3
new4 7
SemaphoreSlim8 E
(E F
$numF G
)G H
;H I
private 
int 
_lastIndexId  
;  !
private 
string 
_stateIdentifier '
;' (
private 
bool 
_initialized !
;! "
public 
LocalizationEntries "
(" #
)# $
{ 	
} 	
public   
async   
Task   
<   
(   
bool   
,    
LocalizationEntry  ! 2
)  2 3
>  3 4#
TryGetLocalizationAsync  5 L
(  L M
string  M S
contentItemId  T a
)  a b
{!! 	
await"" "
EnsureInitializedAsync"" (
(""( )
)"") *
;""* +
if$$ 
($$ 
_localizations$$ 
.$$ 
TryGetValue$$ *
($$* +
contentItemId$$+ 8
,$$8 9
out$$: =
var$$> A
localization$$B N
)$$N O
)$$O P
{%% 
return&& 
(&& 
true&& 
,&& 
localization&& *
)&&* +
;&&+ ,
}'' 
return)) 
()) 
false)) 
,)) 
localization)) '
)))' (
;))( )
}** 	
public,, 
async,, 
Task,, 
<,, 
IEnumerable,, %
<,,% &
LocalizationEntry,,& 7
>,,7 8
>,,8 9!
GetLocalizationsAsync,,: O
(,,O P
string,,P V
localizationSet,,W f
),,f g
{-- 	
await.. "
EnsureInitializedAsync.. (
(..( )
)..) *
;..* +
if00 
(00 
_localizationSets00 !
.00! "
TryGetValue00" -
(00- .
localizationSet00. =
,00= >
out00? B
var00C F
localizations00G T
)00T U
)00U V
{11 
return22 
localizations22 $
;22$ %
}33 
return55 

Enumerable55 
.55 
Empty55 #
<55# $
LocalizationEntry55$ 5
>555 6
(556 7
)557 8
;558 9
}66 	
public88 
async88 
Task88 
UpdateEntriesAsync88 ,
(88, -
)88- .
{99 	
await:: "
EnsureInitializedAsync:: (
(::( )
)::) *
;::* +
await== $
LocalizationStateManager== *
.==* +
UpdateAsync==+ 6
(==6 7
new==7 :%
LocalizationStateDocument==; T
(==T U
)==U V
,==V W
afterUpdateAsync==X h
:==h i
RefreshEntriesAsync==j }
)==} ~
;==~ 
}>> 	
private@@ 
async@@ 
Task@@ "
EnsureInitializedAsync@@ 1
(@@1 2
)@@2 3
{AA 	
ifBB 
(BB 
!BB 
_initializedBB 
)BB 
{CC 
awaitDD "
InitializeEntriesAsyncDD ,
(DD, -
)DD- .
;DD. /
}EE 
elseFF 
{GG 
varHH 
stateHH 
=HH 
awaitHH !$
LocalizationStateManagerHH" :
.HH: ;%
GetOrCreateImmutableAsyncHH; T
(HHT U
)HHU V
;HHV W
ifII 
(II 
_stateIdentifierII $
!=II% '
stateII( -
.II- .

IdentifierII. 8
)II8 9
{JJ 
awaitKK 
RefreshEntriesAsyncKK -
(KK- .
stateKK. 3
)KK3 4
;KK4 5
}LL 
}MM 
}NN 	
	protectedPP 
voidPP 

AddEntriesPP !
(PP! "
IEnumerablePP" -
<PP- .
LocalizationEntryPP. ?
>PP? @
entriesPPA H
)PPH I
{QQ 	
foreachRR 
(RR 
varRR 
entryRR 
inRR !
entriesRR" )
)RR) *
{SS 
ifTT 
(TT 
_localizationsTT "
.TT" #
ContainsKeyTT# .
(TT. /
entryTT/ 4
.TT4 5
ContentItemIdTT5 B
)TTB C
)TTC D
{UU 
continueVV 
;VV 
}WW 
_localizationsYY 
=YY  
_localizationsYY! /
.YY/ 0
SetItemYY0 7
(YY7 8
entryYY8 =
.YY= >
ContentItemIdYY> K
,YYK L
entryYYM R
)YYR S
;YYS T
if[[ 
([[ 
_localizationSets[[ %
.[[% &
TryGetValue[[& 1
([[1 2
entry[[2 7
.[[7 8
LocalizationSet[[8 G
,[[G H
out[[I L
var[[M P
localizations[[Q ^
)[[^ _
)[[_ `
{\\ 
localizations]] !
=]]" #
localizations]]$ 1
.]]1 2
Add]]2 5
(]]5 6
entry]]6 ;
)]]; <
;]]< =
}^^ 
else__ 
{`` 
localizationsaa !
=aa" #
ImmutableListaa$ 1
.aa1 2
Createaa2 8
(aa8 9
entryaa9 >
)aa> ?
;aa? @
}bb 
_localizationSetsdd !
=dd" #
_localizationSetsdd$ 5
.dd5 6
SetItemdd6 =
(dd= >
entrydd> C
.ddC D
LocalizationSetddD S
,ddS T
localizationsddU b
)ddb c
;ddc d
}ee 
}ff 	
	protectedhh 
voidhh 
RemoveEntrieshh $
(hh$ %
IEnumerablehh% 0
<hh0 1
LocalizationEntryhh1 B
>hhB C
entrieshhD K
)hhK L
{ii 	
foreachjj 
(jj 
varjj 
entryjj 
injj !
entriesjj" )
)jj) *
{kk 
ifll 
(ll 
!ll 
_localizationsll #
.ll# $
ContainsKeyll$ /
(ll/ 0
entryll0 5
.ll5 6
ContentItemIdll6 C
)llC D
)llD E
{mm 
continuenn 
;nn 
}oo 
_localizationsqq 
=qq  
_localizationsqq! /
.qq/ 0
Removeqq0 6
(qq6 7
entryqq7 <
.qq< =
ContentItemIdqq= J
)qqJ K
;qqK L
ifss 
(ss 
_localizationSetsss %
.ss% &
TryGetValuess& 1
(ss1 2
entryss2 7
.ss7 8
LocalizationSetss8 G
,ssG H
outssI L
varssM P
localizationsssQ ^
)ss^ _
)ss_ `
{tt 
localizationsuu !
=uu" #
localizationsuu$ 1
.uu1 2
	RemoveAlluu2 ;
(uu; <
luu< =
=>uu> @
luuA B
.uuB C
CultureuuC J
==uuK M
entryuuN S
.uuS T
CultureuuT [
)uu[ \
;uu\ ]
_localizationSetsvv %
=vv& '
_localizationSetsvv( 9
.vv9 :
SetItemvv: A
(vvA B
entryvvB G
.vvG H
LocalizationSetvvH W
,vvW X
localizationsvvY f
)vvf g
;vvg h
}ww 
}xx 
}yy 	
private{{ 
async{{ 
Task{{ 
RefreshEntriesAsync{{ .
({{. /%
LocalizationStateDocument{{/ H
state{{I N
){{N O
{|| 	
if}} 
(}} 
_stateIdentifier}}  
==}}! #
state}}$ )
.}}) *

Identifier}}* 4
)}}4 5
{~~ 
return 
; 
}
ÄÄ 
await
ÇÇ 

_semaphore
ÇÇ 
.
ÇÇ 
	WaitAsync
ÇÇ &
(
ÇÇ& '
)
ÇÇ' (
;
ÇÇ( )
try
ÉÉ 
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 
_stateIdentifier
ÖÖ $
!=
ÖÖ% '
state
ÖÖ( -
.
ÖÖ- .

Identifier
ÖÖ. 8
)
ÖÖ8 9
{
ÜÜ 
var
áá 
indexes
áá 
=
áá  !
await
áá" '
Session
áá( /
.
áá/ 0

QueryIndex
áá0 :
<
áá: ;'
LocalizedContentItemIndex
áá; T
>
ááT U
(
ááU V
i
ááV W
=>
ááX Z
i
áá[ \
.
áá\ ]
Id
áá] _
>
áá` a
_lastIndexId
ááb n
)
áán o
.
ááo p
	ListAsync
ááp y
(
ááy z
)
ááz {
;
áá{ |
var
çç 
entriesToRemove
çç '
=
çç( )
indexes
çç* 1
.
éé 
Where
éé 
(
éé 
i
éé  
=>
éé! #
!
éé$ %
i
éé% &
.
éé& '
	Published
éé' 0
||
éé1 3
i
éé4 5
.
éé5 6
Culture
éé6 =
==
éé> @
null
ééA E
)
ééE F
.
èè 

SelectMany
èè #
(
èè# $
i
èè$ %
=>
èè& (
_localizations
èè) 7
.
èè7 8
Values
èè8 >
.
èè> ?
Where
èè? D
(
èèD E
e
èèE F
=>
èèG I
(
ëë 
(
ëë 
!
ëë 
i
ëë  
.
ëë  !
	Published
ëë! *
&&
ëë+ -
!
ëë. /
i
ëë/ 0
.
ëë0 1
Latest
ëë1 7
)
ëë7 8
||
ëë9 ;
(
ìì 
i
ìì 
.
ìì 
Culture
ìì &
==
ìì' )
null
ìì* .
&&
ìì/ 1
i
ìì2 3
.
ìì3 4
	Published
ìì4 =
)
ìì= >
||
ìì? A
(
ïï 
!
ïï 
i
ïï 
.
ïï  
	Published
ïï  )
&&
ïï* ,
e
ïï- .
.
ïï. /

DocumentId
ïï/ 9
==
ïï: <
i
ïï= >
.
ïï> ?

DocumentId
ïï? I
)
ïïI J
)
ïïJ K
&&
ïïL N
(
ññ 
e
ññ 
.
ññ 
ContentItemId
ññ ,
==
ññ- /
i
ññ0 1
.
ññ1 2
ContentItemId
ññ2 ?
)
ññ? @
)
ññ@ A
)
ññA B
;
ññB C
var
òò 
entriesToAdd
òò $
=
òò% &
indexes
òò' .
.
òò. /
Where
ôô 
(
ôô 
i
ôô 
=>
ôô  "
i
ôô# $
.
ôô$ %
	Published
ôô% .
&&
ôô/ 1
i
ôô2 3
.
ôô3 4
Culture
ôô4 ;
!=
ôô< >
null
ôô? C
)
ôôC D
.
öö 
Select
öö 
(
öö  
i
öö  !
=>
öö" $
new
öö% (
LocalizationEntry
öö) :
{
õõ 

DocumentId
úú &
=
úú' (
i
úú) *
.
úú* +

DocumentId
úú+ 5
,
úú5 6
ContentItemId
ùù )
=
ùù* +
i
ùù, -
.
ùù- .
ContentItemId
ùù. ;
,
ùù; <
LocalizationSet
ûû +
=
ûû, -
i
ûû. /
.
ûû/ 0
LocalizationSet
ûû0 ?
,
ûû? @
Culture
üü #
=
üü$ %
i
üü& '
.
üü' (
Culture
üü( /
.
üü/ 0
ToLowerInvariant
üü0 @
(
üü@ A
)
üüA B
}
†† 
)
†† 
;
†† 
RemoveEntries
¢¢ !
(
¢¢! "
entriesToRemove
¢¢" 1
)
¢¢1 2
;
¢¢2 3

AddEntries
££ 
(
££ 
entriesToAdd
££ +
)
££+ ,
;
££, -
_lastIndexId
••  
=
••! "
indexes
••# *
.
••* +
LastOrDefault
••+ 8
(
••8 9
)
••9 :
?
••: ;
.
••; <
Id
••< >
??
••? A
$num
••B C
;
••C D
_stateIdentifier
¶¶ $
=
¶¶% &
state
¶¶' ,
.
¶¶, -

Identifier
¶¶- 7
;
¶¶7 8
}
ßß 
}
®® 
finally
©© 
{
™™ 

_semaphore
´´ 
.
´´ 
Release
´´ "
(
´´" #
)
´´# $
;
´´$ %
}
¨¨ 
}
≠≠ 	
	protected
ØØ 
virtual
ØØ 
async
ØØ 
Task
ØØ  $$
InitializeEntriesAsync
ØØ% ;
(
ØØ; <
)
ØØ< =
{
∞∞ 	
if
±± 
(
±± 
_initialized
±± 
)
±± 
{
≤≤ 
return
≥≥ 
;
≥≥ 
}
¥¥ 
await
∂∂ 

_semaphore
∂∂ 
.
∂∂ 
	WaitAsync
∂∂ &
(
∂∂& '
)
∂∂' (
;
∂∂( )
try
∑∑ 
{
∏∏ 
if
ππ 
(
ππ 
!
ππ 
_initialized
ππ !
)
ππ! "
{
∫∫ 
var
ªª 
state
ªª 
=
ªª 
await
ªª  %&
LocalizationStateManager
ªª& >
.
ªª> ?'
GetOrCreateImmutableAsync
ªª? X
(
ªªX Y
)
ªªY Z
;
ªªZ [
var
ΩΩ 
indexes
ΩΩ 
=
ΩΩ  !
await
ΩΩ" '
Session
ΩΩ( /
.
ΩΩ/ 0

QueryIndex
ΩΩ0 :
<
ΩΩ: ;'
LocalizedContentItemIndex
ΩΩ; T
>
ΩΩT U
(
ΩΩU V
i
ΩΩV W
=>
ΩΩX Z
i
ΩΩ[ \
.
ΩΩ\ ]
	Published
ΩΩ] f
&&
ΩΩg i
i
ΩΩj k
.
ΩΩk l
Culture
ΩΩl s
!=
ΩΩt v
null
ΩΩw {
)
ΩΩ{ |
.
ΩΩ| }
	ListAsyncΩΩ} Ü
(ΩΩÜ á
)ΩΩá à
;ΩΩà â
var
ææ 
entries
ææ 
=
ææ  !
indexes
ææ" )
.
ææ) *
Select
ææ* 0
(
ææ0 1
i
ææ1 2
=>
ææ3 5
new
ææ6 9
LocalizationEntry
ææ: K
{
øø 

DocumentId
¿¿ "
=
¿¿# $
i
¿¿% &
.
¿¿& '

DocumentId
¿¿' 1
,
¿¿1 2
ContentItemId
¡¡ %
=
¡¡& '
i
¡¡( )
.
¡¡) *
ContentItemId
¡¡* 7
,
¡¡7 8
LocalizationSet
¬¬ '
=
¬¬( )
i
¬¬* +
.
¬¬+ ,
LocalizationSet
¬¬, ;
,
¬¬; <
Culture
√√ 
=
√√  !
i
√√" #
.
√√# $
Culture
√√$ +
.
√√+ ,
ToLowerInvariant
√√, <
(
√√< =
)
√√= >
}
ƒƒ 
)
ƒƒ 
;
ƒƒ 

AddEntries
∆∆ 
(
∆∆ 
entries
∆∆ &
)
∆∆& '
;
∆∆' (
_lastIndexId
»»  
=
»»! "
indexes
»»# *
.
»»* +
LastOrDefault
»»+ 8
(
»»8 9
)
»»9 :
?
»»: ;
.
»»; <
Id
»»< >
??
»»? A
$num
»»B C
;
»»C D
_stateIdentifier
…… $
=
……% &
state
……' ,
.
……, -

Identifier
……- 7
;
……7 8
_initialized
ÀÀ  
=
ÀÀ! "
true
ÀÀ# '
;
ÀÀ' (
}
ÃÃ 
}
ÕÕ 
finally
ŒŒ 
{
œœ 

_semaphore
–– 
.
–– 
Release
–– "
(
––" #
)
––# $
;
––$ %
}
—— 
}
““ 	
private
‘‘ 
static
‘‘ 
ISession
‘‘ 
Session
‘‘  '
=>
‘‘( *

ShellScope
‘‘+ 5
.
‘‘5 6
Services
‘‘6 >
.
‘‘> ? 
GetRequiredService
‘‘? Q
<
‘‘Q R
ISession
‘‘R Z
>
‘‘Z [
(
‘‘[ \
)
‘‘\ ]
;
‘‘] ^
private
÷÷ 
static
÷÷ &
IVolatileDocumentManager
÷÷ /
<
÷÷/ 0'
LocalizationStateDocument
÷÷0 I
>
÷÷I J&
LocalizationStateManager
÷÷K c
=>
◊◊ 

ShellScope
◊◊ 
.
◊◊ 
Services
◊◊ "
.
◊◊" # 
GetRequiredService
◊◊# 5
<
◊◊5 6&
IVolatileDocumentManager
◊◊6 N
<
◊◊N O'
LocalizationStateDocument
◊◊O h
>
◊◊h i
>
◊◊i j
(
◊◊j k
)
◊◊k l
;
◊◊l m
}
ÿÿ 
}ŸŸ Ω
≥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Services\LocalizationPartContentsAdminListFilter.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Services* 2
{ 
public 

class 3
'LocalizationPartContentsAdminListFilter 8
:9 :$
IContentsAdminListFilter; S
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public 3
'LocalizationPartContentsAdminListFilter 6
(6 7%
IContentDefinitionManager7 P$
contentDefinitionManagerQ i
)i j
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
async 
Task 
FilterAsync %
(% &#
ContentOptionsViewModel& =
model> C
,C D
IQueryE K
<K L
ContentItemL W
>W X
queryY ^
,^ _
IUpdateModel` l
updaterm t
)t u
{ 	
var 
	viewModel 
= 
new 4
(LocalizationContentsAdminFilterViewModel  H
(H I
)I J
;J K
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
$str= K
)K L
)L M
{ 
if"" 
("" 
	viewModel"" 
."" %
ShowLocalizedContentTypes"" 7
)""7 8
{## 
var$$ 
localizedTypes$$ &
=$$' (%
_contentDefinitionManager$$) B
.%% 
ListTypeDefinitions%% ,
(%%, -
)%%- .
.&& 
Where&& 
(&& 
x&&  
=>&&! #
x'' 
.'' 
Parts'' #
.''# $
Any''$ '
(''' (
p''( )
=>''* ,
p((  !
.((! "
PartDefinition((" 0
.((0 1
Name((1 5
==((6 8
nameof((9 ?
(((? @
LocalizationPart((@ P
)((P Q
)((Q R
)((R S
.)) 
Select)) 
())  
x))  !
=>))" $
x))% &
.))& '
Name))' +
)))+ ,
;)), -
query++ 
.++ 
With++ 
<++ 
ContentItemIndex++ /
>++/ 0
(++0 1
x++1 2
=>++3 5
x++6 7
.++7 8
ContentType++8 C
.++C D
IsIn++D H
(++H I
localizedTypes++I W
)++W X
)++X Y
;++Y Z
},, 
else// 
if// 
(// 
!// 
String//  
.//  !
IsNullOrEmpty//! .
(//. /
	viewModel/// 8
.//8 9
SelectedCulture//9 H
)//H I
)//I J
{00 
query11 
.11 
With11 
<11 %
LocalizedContentItemIndex11 8
>118 9
(119 :
i11: ;
=>11< >
(11? @
i11@ A
.11A B
	Published11B K
||11L N
i11O P
.11P Q
Latest11Q W
)11W X
&&11Y [
i11\ ]
.11] ^
Culture11^ e
==11f h
	viewModel11i r
.11r s
SelectedCulture	11s Ç
)
11Ç É
;
11É Ñ
}22 
}33 
}44 	
}55 
}66 ÷
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Services\LocalizationStateDocument.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Services* 2
{ 
public 

class %
LocalizationStateDocument *
:+ ,
Document- 5
{ 
} 
} »U
ÆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Sitemaps\LocalizedContentItemsQueryProvider.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Sitemaps* 2
{ 
public 

class .
"LocalizedContentItemsQueryProvider 3
:4 5&
IContentItemsQueryProvider6 P
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly ,
 IRouteableContentTypeCoordinator 9,
 _routeableContentTypeCoordinator: Z
;Z [
private 
readonly  
ILocalizationService - 
_localizationService. B
;B C
public .
"LocalizedContentItemsQueryProvider 1
(1 2
ISession 
session 
, ,
 IRouteableContentTypeCoordinator ,+
routeableContentTypeCoordinator- L
,L M 
ILocalizationService  
localizationService! 4
) 
{ 	
_session 
= 
session 
; ,
 _routeableContentTypeCoordinator ,
=- .+
routeableContentTypeCoordinator/ N
;N O 
_localizationService  
=! "
localizationService# 6
;6 7
}   	
public"" 
async"" 
Task""  
GetContentItemsAsync"" .
("". /%
ContentTypesSitemapSource""/ H
source""I O
,""O P$
ContentItemsQueryContext""Q i
queryContext""j v
)""v w
{## 	
var$$ +
routeableContentTypeDefinitions$$ /
=$$0 1,
 _routeableContentTypeCoordinator$$2 R
.$$R S'
ListRoutableTypeDefinitions$$S n
($$n o
)$$o p
;$$p q
if&& 
(&& 
source&& 
.&& 
IndexAll&& 
)&&  
{'' 
var)) 
	rctdNames)) 
=)) +
routeableContentTypeDefinitions))  ?
.))? @
Select))@ F
())F G
rctd))G K
=>))L N
rctd))O S
.))S T
Name))T X
)))X Y
;))Y Z
var++ 
queryResults++  
=++! "
await++# (
_session++) 1
.++1 2
Query++2 7
<++7 8
ContentItem++8 C
>++C D
(++D E
)++E F
.,, 
With,, 
<,, 
ContentItemIndex,, *
>,,* +
(,,+ ,
x,,, -
=>,,. 0
x,,1 2
.,,2 3
	Published,,3 <
&&,,= ?
x,,@ A
.,,A B
ContentType,,B M
.,,M N
IsIn,,N R
(,,R S
	rctdNames,,S \
),,\ ]
),,] ^
.-- 
OrderBy-- 
(-- 
x-- 
=>-- !
x--" #
.--# $

CreatedUtc--$ .
)--. /
... 
	ListAsync.. 
(.. 
)..  
;..  !
queryContext00 
.00 
ContentItems00 )
=00* +
queryResults00, 8
;008 9
queryContext33 
.33 !
ReferenceContentItems33 2
=333 4
queryResults335 A
.44 
Where44 
(44 
ci44 
=>44  
ci44! #
.44# $
Has44$ '
<44' (
LocalizationPart44( 8
>448 9
(449 :
)44: ;
)44; <
;44< =
}55 
else66 
if66 
(66 
source66 
.66 

LimitItems66 &
)66& '
{77 
var99 
contentType99 
=99  !+
routeableContentTypeDefinitions99" A
.:: 
FirstOrDefault:: #
(::# $
ctd::$ '
=>::( *
String::+ 1
.::1 2
Equals::2 8
(::8 9
source::9 ?
.::? @
LimitedContentType::@ R
.::R S
ContentTypeName::S b
,::b c
ctd::d g
.::g h
Name::h l
)::l m
)::m n
;::n o
if<< 
(<< 
contentType<< 
==<<  "
null<<# '
)<<' (
{== 
return>> 
;>> 
}?? 
ifAA 
(AA 
contentTypeAA 
.AA  
PartsAA  %
.AA% &
AnyAA& )
(AA) *
ctdAA* -
=>AA. 0
StringAA1 7
.AA7 8
EqualsAA8 >
(AA> ?
ctdAA? B
.AAB C
NameAAC G
,AAG H
nameofAAI O
(AAO P
LocalizationPartAAP `
)AA` a
)AAa b
)AAb c
)AAc d
{BB 
varFF 
queryResultsFF $
=FF% &
awaitFF' ,
_sessionFF- 5
.FF5 6
QueryFF6 ;
<FF; <
ContentItemFF< G
>FFG H
(FFH I
)FFI J
.GG 
WithGG 
<GG 
ContentItemIndexGG /
>GG/ 0
(GG0 1
ciGG1 3
=>GG4 6
ciGG7 9
.GG9 :
ContentTypeGG: E
==GGF H
sourceGGI O
.GGO P
LimitedContentTypeGGP b
.GGb c
ContentTypeNameGGc r
&&GGs u
ciGGv x
.GGx y
	Published	GGy Ç
)
GGÇ É
.HH 
OrderByHH !
(HH! "
ciHH" $
=>HH% '
ciHH( *
.HH* +

CreatedUtcHH+ 5
)HH5 6
.II 
WithII 
<II %
LocalizedContentItemIndexII 8
>II8 9
(II9 :
)II: ;
.JJ 
	ListAsyncJJ #
(JJ# $
)JJ$ %
;JJ% &
varMM 
defaultCultureMM &
=MM' (
awaitMM) . 
_localizationServiceMM/ C
.MMC D"
GetDefaultCultureAsyncMMD Z
(MMZ [
)MM[ \
;MM\ ]
varPP 
itemsPP 
=PP 
queryResultsPP  ,
.QQ 
WhereQQ 
(QQ 
ciQQ !
=>QQ" $
StringQQ% +
.QQ+ ,
EqualsQQ, 2
(QQ2 3
ciQQ3 5
.QQ5 6
AsQQ6 8
<QQ8 9
LocalizationPartQQ9 I
>QQI J
(QQJ K
)QQK L
.QQL M
CultureQQM T
,QQT U
defaultCultureQQV d
)QQd e
)QQe f
.RR 
SkipRR 
(RR 
sourceRR $
.RR$ %
LimitedContentTypeRR% 7
.RR7 8
SkipRR8 <
)RR< =
.SS 
TakeSS 
(SS 
sourceSS $
.SS$ %
LimitedContentTypeSS% 7
.SS7 8
TakeSS8 <
)SS< =
;SS= >
queryContextUU  
.UU  !
ContentItemsUU! -
=UU. /
itemsUU0 5
;UU5 6
queryContextXX  
.XX  !!
ReferenceContentItemsXX! 6
=XX7 8
queryResultsXX9 E
.YY 
WhereYY 
(YY 
ciYY !
=>YY" $
ciYY% '
.YY' (
HasYY( +
<YY+ ,
LocalizationPartYY, <
>YY< =
(YY= >
)YY> ?
)YY? @
;YY@ A
}ZZ 
else[[ 
{\\ 
var^^ 
queryResults^^ $
=^^% &
await^^' ,
_session^^- 5
.^^5 6
Query^^6 ;
<^^; <
ContentItem^^< G
>^^G H
(^^H I
)^^I J
.__ 
With__ 
<__ 
ContentItemIndex__ .
>__. /
(__/ 0
x__0 1
=>__2 4
x__5 6
.__6 7
ContentType__7 B
==__C E
source__F L
.__L M
LimitedContentType__M _
.___ `
ContentTypeName__` o
&&__p r
x__s t
.__t u
	Published__u ~
)__~ 
.`` 
OrderBy``  
(``  !
x``! "
=>``# %
x``& '
.``' (

CreatedUtc``( 2
)``2 3
.aa 
Skipaa 
(aa 
sourceaa $
.aa$ %
LimitedContentTypeaa% 7
.aa7 8
Skipaa8 <
)aa< =
.bb 
Takebb 
(bb 
sourcebb $
.bb$ %
LimitedContentTypebb% 7
.bb7 8
Takebb8 <
)bb< =
.cc 
	ListAsynccc "
(cc" #
)cc# $
;cc$ %
queryContextee  
.ee  !
ContentItemsee! -
=ee. /
queryResultsee0 <
;ee< =
}ff 
}gg 
elsehh 
{ii 
varkk 
typesToIndexkk  
=kk! "+
routeableContentTypeDefinitionskk# B
.ll 
Wherell 
(ll 
ctdll 
=>ll !
sourcell" (
.ll( )
ContentTypesll) 5
.ll5 6
Anyll6 9
(ll9 :
sll: ;
=>ll< >
Stringll? E
.llE F
EqualsllF L
(llL M
ctdllM P
.llP Q
NamellQ U
,llU V
sllW X
.llX Y
ContentTypeNamellY h
)llh i
)lli j
)llj k
.mm 
Selectmm 
(mm 
xmm 
=>mm  
xmm! "
.mm" #
Namemm# '
)mm' (
;mm( )
varpp 
queryResultspp  
=pp! "
awaitpp# (
_sessionpp) 1
.pp1 2
Querypp2 7
<pp7 8
ContentItempp8 C
>ppC D
(ppD E
)ppE F
.qq 
Withqq 
<qq 
ContentItemIndexqq *
>qq* +
(qq+ ,
xqq, -
=>qq. 0
xqq1 2
.qq2 3
ContentTypeqq3 >
.qq> ?
IsInqq? C
(qqC D
typesToIndexqqD P
)qqP Q
&&qqR T
xqqU V
.qqV W
	PublishedqqW `
)qq` a
.rr 
OrderByrr 
(rr 
xrr 
=>rr !
xrr" #
.rr# $

CreatedUtcrr$ .
)rr. /
.ss 
	ListAsyncss 
(ss 
)ss  
;ss  !
queryContextuu 
.uu 
ContentItemsuu )
=uu* +
queryResultsuu, 8
;uu8 9
queryContextxx 
.xx !
ReferenceContentItemsxx 2
=xx3 4
queryResultsxx5 A
.yy 
Whereyy 
(yy 
ciyy 
=>yy  
ciyy! #
.yy# $
Hasyy$ '
<yy' (
LocalizationPartyy( 8
>yy8 9
(yy9 :
)yy: ;
)yy; <
;yy< =
}zz 
}{{ 	
}|| 
}}} ≤)
∂D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Sitemaps\SitemapUrlHrefLangExtendedMetadataProvider.cs
	namespace

 	
OrchardCore


 
.

 
ContentLocalization

 )
.

) *
Sitemaps

* 2
{ 
public 

class 6
*SitemapUrlHrefLangExtendedMetadataProvider ;
:< =7
+ISitemapContentItemExtendedMetadataProvider> i
{ 
private 
static 
readonly 

XNamespace  *
ExtendedNamespace+ <
== >
$str? ]
;] ^
private 
static 
readonly 

XAttribute  *
ExtendedAttribute+ <
== >
new? B

XAttributeC M
(M N

XNamespaceN X
.X Y
XmlnsY ^
+_ `
$stra h
,h i
ExtendedNamespacej {
){ |
;| }
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly ,
 IRouteableContentTypeCoordinator 9,
 _routeableContentTypeCoordinator: Z
;Z [
public 6
*SitemapUrlHrefLangExtendedMetadataProvider 9
(9 :
IContentManager 
contentManager *
,* +,
 IRouteableContentTypeCoordinator ,+
routeableContentTypeCoordinator- L
) 
{ 	
_contentManager 
= 
contentManager ,
;, -,
 _routeableContentTypeCoordinator ,
=- .+
routeableContentTypeCoordinator/ N
;N O
} 	
public 

XAttribute  
GetExtendedAttribute .
=>/ 1
ExtendedAttribute2 C
;C D
public 
async 
Task 
< 
bool 
> &
ApplyExtendedMetadataAsync  :
(: ;!
SitemapBuilderContext   !
context  " )
,  ) *$
ContentItemsQueryContext!! $
queryContext!!% 1
,!!1 2
ContentItem"" 
contentItem"" #
,""# $
XElement## 
url## 
)## 
{$$ 	
var%% 
part%% 
=%% 
contentItem%% "
.%%" #
As%%# %
<%%% &
LocalizationPart%%& 6
>%%6 7
(%%7 8
)%%8 9
;%%9 :
if&& 
(&& 
part&& 
==&& 
null&& 
)&& 
{'' 
return(( 
true(( 
;(( 
})) 
var++ !
localizedContentParts++ %
=++& '
queryContext++( 4
.++4 5!
ReferenceContentItems++5 J
.,, 
Select,, 
(,, 
ci,, 
=>,, 
ci,,  
.,,  !
As,,! #
<,,# $
LocalizationPart,,$ 4
>,,4 5
(,,5 6
),,6 7
),,7 8
.-- 
Where-- 
(-- 
cp-- 
=>-- 
cp-- 
.--  
LocalizationSet--  /
==--0 2
part--3 7
.--7 8
LocalizationSet--8 G
)--G H
;--H I
foreach// 
(// 
var// 
localizedPart// &
in//' )!
localizedContentParts//* ?
)//? @
{00 
var11 !
sitemapMetadataAspect11 )
=11* +
await11, 1
_contentManager112 A
.11A B
PopulateAspectAsync11B U
<11U V!
SitemapMetadataAspect11V k
>11k l
(11l m
localizedPart11m z
.11z {
ContentItem	11{ Ü
)
11Ü á
;
11á à
if22 
(22 !
sitemapMetadataAspect22 )
.22) *
Exclude22* 1
)221 2
{33 
continue44 
;44 
}55 
var77 
	hrefValue77 
=77 
await77  %,
 _routeableContentTypeCoordinator77& F
.77F G
GetRouteAsync77G T
(77T U
context77U \
,77\ ]
localizedPart77^ k
.77k l
ContentItem77l w
)77w x
;77x y
var99 
linkNode99 
=99 
new99 "
XElement99# +
(99+ ,
ExtendedNamespace99, =
+99> ?
$str99@ F
,99F G
new:: 

XAttribute:: "
(::" #
$str::# (
,::( )
$str::* 5
)::5 6
,::6 7
new;; 

XAttribute;; "
(;;" #
$str;;# -
,;;- .
localizedPart;;/ <
.;;< =
Culture;;= D
);;D E
,;;E F
new<< 

XAttribute<< "
(<<" #
$str<<# )
,<<) *
	hrefValue<<+ 4
)<<4 5
)<<5 6
;<<6 7
url>> 
.>> 
Add>> 
(>> 
linkNode>>  
)>>  !
;>>! "
}?? 
returnAA 
trueAA 
;AA 
}BB 	
}CC 
}DD åE
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\Startup.cs
	namespace   	
OrchardCore  
 
.   
ContentLocalization   )
{!! 
public"" 

class"" 
Startup"" 
:"" 
StartupBase"" &
{## 
private$$ 
readonly$$ 
AdminOptions$$ %
_adminOptions$$& 3
;$$3 4
private%% 
readonly%% 
IShellConfiguration%% ,
_shellConfiguration%%- @
;%%@ A
static'' 
Startup'' 
('' 
)'' 
{(( 	
TemplateContext)) 
.)) &
GlobalMemberAccessStrategy)) 6
.))6 7
Register))7 ?
<))? @%
LocalizationPartViewModel))@ Y
>))Y Z
())Z [
)))[ \
;))\ ]
TemplateContext** 
.** &
GlobalMemberAccessStrategy** 6
.**6 7
Register**7 ?
<**? @
CultureInfo**@ K
>**K L
(**L M
)**M N
;**N O
}++ 	
public-- 
Startup-- 
(-- 
IShellConfiguration-- *
shellConfiguration--+ =
,--= >
IOptions--? G
<--G H
AdminOptions--H T
>--T U
adminOptions--V b
)--b c
{.. 	
_shellConfiguration// 
=//  !
shellConfiguration//" 4
;//4 5
_adminOptions00 
=00 
adminOptions00 (
.00( )
Value00) .
;00. /
}11 	
public33 
override33 
void33 
ConfigureServices33 .
(33. /
IServiceCollection33/ A
services33B J
)33J K
{44 	
services55 
.55 
	Configure55 
<55  
CulturePickerOptions55 3
>553 4
(554 5
_shellConfiguration555 H
.55H I

GetSection55I S
(55S T
$str	55T ä
)
55ä ã
)
55ã å
;
55å ç
services77 
.77 
	AddScoped77 
<77 $
IContentPartIndexHandler77 7
,777 8(
LocalizationPartIndexHandler779 U
>77U V
(77V W
)77W X
;77X Y
services88 
.88 
AddSingleton88 !
<88! " 
ILocalizationEntries88" 6
,886 7
LocalizationEntries888 K
>88K L
(88L M
)88M N
;88N O
services99 
.99 "
AddContentLocalization99 +
(99+ ,
)99, -
;99- .
services;; 
.;; 
	AddScoped;; 
<;; 
IPermissionProvider;; 2
,;;2 3
Permissions;;4 ?
>;;? @
(;;@ A
);;A B
;;;B C
services<< 
.<< 
	AddScoped<< 
<<< !
IAuthorizationHandler<< 4
,<<4 5/
#LocalizeContentAuthorizationHandler<<6 Y
><<Y Z
(<<Z [
)<<[ \
;<<\ ]
services>> 
.>> 
	AddScoped>> 
<>> $
IContentsAdminListFilter>> 7
,>>7 83
'LocalizationPartContentsAdminListFilter>>9 `
>>>` a
(>>a b
)>>b c
;>>c d
services?? 
.?? 
	AddScoped?? 
<?? 
IDisplayDriver?? -
<??- .#
ContentOptionsViewModel??. E
>??E F
,??F G6
*LocalizationContentsAdminListDisplayDriver??H r
>??r s
(??s t
)??t u
;??u v
servicesAA 
.AA 
AddLiquidFilterAA $
<AA$ %%
ContentLocalizationFilterAA% >
>AA> ?
(AA? @
$strAA@ R
)AAR S
;AAS T
servicesBB 
.BB 
AddLiquidFilterBB $
<BB$ %"
SwitchCultureUrlFilterBB% ;
>BB; <
(BB< =
$strBB= Q
)BBQ R
;BBR S
}CC 	
publicEE 
overrideEE 
voidEE 
	ConfigureEE &
(EE& '
IApplicationBuilderEE' :
appEE; >
,EE> ?!
IEndpointRouteBuilderEE@ U
routesEEV \
,EE\ ]
IServiceProviderEE^ n
serviceProviderEEo ~
)EE~ 
{FF 	
routesGG 
.GG "
MapAreaControllerRouteGG )
(GG) *
nameHH 
:HH 
$strHH 4
,HH4 5
areaNameII 
:II 
$strII ;
,II; <
patternJJ 
:JJ 
_adminOptionsJJ &
.JJ& '
AdminUrlPrefixJJ' 5
+JJ6 7
$strJJ8 N
,JJN O
defaultsKK 
:KK 
newKK 
{KK 

controllerKK  *
=KK+ ,
typeofKK- 3
(KK3 4
AdminControllerKK4 C
)KKC D
.KKD E
ControllerNameKKE S
(KKS T
)KKT U
,KKU V
actionKKW ]
=KK^ _
nameofKK` f
(KKf g
AdminControllerKKg v
.KKv w
LocalizeKKw 
)	KK Ä
}
KKÅ Ç
)LL 
;LL 
}MM 	
}NN 
[PP 
FeaturePP 
(PP 
$strPP C
)PPC D
]PPD E
publicQQ 

classQQ  
ContentPickerStartupQQ %
:QQ& '
StartupBaseQQ( 3
{RR 
publicSS 
overrideSS 
voidSS 
ConfigureServicesSS .
(SS. /
IServiceCollectionSS/ A
servicesSSB J
)SSJ K
{TT 	
servicesUU 
.UU 
	AddScopedUU 
<UU 
INavigationProviderUU 2
,UU2 3
	AdminMenuUU4 =
>UU= >
(UU> ?
)UU? @
;UU@ A
servicesVV 
.VV 
	AddScopedVV 
<VV (
IContentCulturePickerServiceVV ;
,VV; <'
ContentCulturePickerServiceVV= X
>VVX Y
(VVY Z
)VVZ [
;VV[ \
servicesWW 
.WW 
	AddScopedWW 
<WW 
IDisplayDriverWW -
<WW- .
ISiteWW. 3
>WW3 4
,WW4 5.
"ContentCulturePickerSettingsDriverWW6 X
>WWX Y
(WWY Z
)WWZ [
;WW[ \
servicesXX 
.XX 
	ConfigureXX 
<XX &
RequestLocalizationOptionsXX 9
>XX9 :
(XX: ;
optionsXX; B
=>XXC E
{YY 
optionsZZ 
.ZZ ,
 AddInitialRequestCultureProviderZZ 8
(ZZ8 9
newZZ9 <)
ContentRequestCultureProviderZZ= Z
(ZZZ [
)ZZ[ \
)ZZ\ ]
;ZZ] ^
}[[ 
)[[ 
;[[ 
}\\ 	
public^^ 
override^^ 
void^^ 
	Configure^^ &
(^^& '
IApplicationBuilder^^' :
builder^^; B
,^^B C!
IEndpointRouteBuilder^^D Y
routes^^Z `
,^^` a
IServiceProvider^^b r
serviceProvider	^^s Ç
)
^^Ç É
{__ 	
routes`` 
.`` "
MapAreaControllerRoute`` )
(``) *
nameaa 
:aa 
$straa 1
,aa1 2
areaNamebb 
:bb 
$strbb :
,bb: ;
patterncc 
:cc 
$strcc 4
,cc4 5
defaultsdd 
:dd 
newdd 
{dd 

controllerdd )
=dd* +
$strdd, B
,ddB C
actionddD J
=ddK L
$strddM i
}ddj k
)ee 
;ee 
}ff 	
}gg 
[ii 
Featureii 
(ii 
$strii 7
)ii7 8
]ii8 9
publicjj 

classjj 
SitemapsStartupjj  
:jj! "
StartupBasejj# .
{kk 
publicll 
overridell 
voidll 
ConfigureServicesll .
(ll. /
IServiceCollectionll/ A
servicesllB J
)llJ K
{mm 	
servicesnn 
.nn 
	AddScopednn 
<nn 7
+ISitemapContentItemExtendedMetadataProvidernn J
,nnJ K6
*SitemapUrlHrefLangExtendedMetadataProvidernnL v
>nnv w
(nnw x
)nnx y
;nny z
servicesoo 
.oo 
Replaceoo 
(oo 
ServiceDescriptoroo .
.oo. /
Scopedoo/ 5
<oo5 6&
IContentItemsQueryProvideroo6 P
,ooP Q.
"LocalizedContentItemsQueryProviderooR t
>oot u
(oou v
)oov w
)oow x
;oox y
}pp 	
}qq 
}rr ™
∂D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\ViewModels\LocalizationContentsAdminFilterViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *

ViewModels* 4
{ 
public 

class 4
(LocalizationContentsAdminFilterViewModel 9
{ 
public		 
bool		 %
ShowLocalizedContentTypes		 -
{		. /
get		0 3
;		3 4
set		5 8
;		8 9
}		: ;
public

 
string

 
SelectedCulture

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
Cultures$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} π
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentLocalization\ViewModels\LocalizationPartViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *

ViewModels* 4
{ 
public		 

class		 %
LocalizationPartViewModel		 *
:		+ ,
ShapeViewModel		- ;
{

 
public 
string 
LocalizationSet %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Culture 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
	BindNever	 
] 
public 
CultureInfo 
CultureInfo &
{' (
get) ,
{- .
return/ 5
new6 9
CultureInfo: E
(E F
CultureF M
)M N
;N O
}P Q
}R S
[ 	
	BindNever	 
] 
public 
LocalizationPart 
LocalizationPart  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
[ 	
	BindNever	 
] 
public 
IEnumerable 
< &
LocalizationLinksViewModel 5
>5 6
ContentItemCultures7 J
{K L
getM P
;P Q
setR U
;U V
}W X
} 
public 

class &
LocalizationLinksViewModel +
{ 
public 
bool 
	IsDeleted 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
CultureInfo 
Culture "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} 