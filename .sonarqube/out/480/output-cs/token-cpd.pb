„
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
	Templates 
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
$str 
]  
,  !
design" (
=>) +
design, 2
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
$str) 4
,4 5
import6 <
=>= ?
import@ F
. 
Action 
(  
$str  '
,' (
$str) 3
,3 4
new5 8
{9 :
area; ?
=@ A
$strB Y
}Z [
)[ \
. 

Permission #
(# $
Permissions$ /
./ 0
ManageTemplates0 ?
)? @
. 
LocalNav !
(! "
)" #
) 
) 
; 
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ †
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\AdminTemplatesAdminMenu.cs
	namespace 	
OrchardCore
 
. 
	Templates 
{ 
public 

class #
AdminTemplatesAdminMenu (
:) *
INavigationProvider+ >
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
public #
AdminTemplatesAdminMenu &
(& '
IStringLocalizer' 7
<7 8
	AdminMenu8 A
>A B
	localizerC L
)L M
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
$str 
]  
,  !
design" (
=>) +
design, 2
. 
Add 
( 
S 
[ 
$str ,
], -
,- .
$str/ @
,@ A
importB H
=>I K
importL R
. 
Action 
(  
$str  '
,' (
$str) 3
,3 4
new5 8
{9 :
area; ?
=@ A
$strB Y
}Z [
)[ \
. 

Permission #
(# $%
AdminTemplatesPermissions$ =
.= > 
ManageAdminTemplates> R
)R S
. 
LocalNav !
(! "
)" #
) 
) 
; 
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ ∫
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\AdminTemplatesPermissions.cs
	namespace 	
OrchardCore
 
. 
	Templates 
{ 
public 

class %
AdminTemplatesPermissions *
:+ ,
IPermissionProvider- @
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
ManageAdminTemplates

* >
=

? @
new

A D

Permission

E O
(

O P
$str

P f
,

f g
$str	

h Ä
)


Ä Å
;


Å Ç
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
{) * 
ManageAdminTemplates+ ?
}@ A
.A B
AsEnumerableB N
(N O
)O P
)P Q
;Q R
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( ) 
ManageAdminTemplates* >
}? @
} 
} 
; 
} 	
} 
} ú@
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Controllers\PreviewController.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Controllers  +
{ 
public 

class 
PreviewController "
:# $

Controller% /
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly !
IContentHandleManager .!
_contentHandleManager/ D
;D E
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
string 
_homeUrl  (
;( )
public 
PreviewController  
(  !
IContentManager 
contentManager *
,* +!
IContentHandleManager ! 
contentHandleManager" 6
,6 7&
IContentItemDisplayManager &%
contentItemDisplayManager' @
,@ A!
IAuthorizationService ! 
authorizationService" 6
,6 7
ISiteService 
siteService $
,$ %
ShellSettings   
shellSettings   '
,  ' ( 
IUpdateModelAccessor!!  
updateModelAccessor!!! 4
)!!4 5
{"" 	
_contentManager## 
=## 
contentManager## ,
;##, -!
_contentHandleManager$$ !
=$$" # 
contentHandleManager$$$ 8
;$$8 9&
_contentItemDisplayManager%% &
=%%' (%
contentItemDisplayManager%%) B
;%%B C!
_authorizationService&& !
=&&" # 
authorizationService&&$ 8
;&&8 9
_siteService'' 
='' 
siteService'' &
;''& ' 
_updateModelAccessor((  
=((! "
updateModelAccessor((# 6
;((6 7
_homeUrl)) 
=)) 
()) 
$char)) 
+)) 
()) 
shellSettings)) ,
.)), -
RequestUrlPrefix))- =
??))> @
string))A G
.))G H
Empty))H M
)))M N
)))N O
.))O P
TrimEnd))P W
())W X
$char))X [
)))[ \
+))] ^
$char))_ b
;))b c
}** 	
public,, 
IActionResult,, 
Index,, "
(,," #
),,# $
{-- 	
return.. 
View.. 
(.. 
).. 
;.. 
}// 	
[11 	
HttpPost11	 
]11 
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Render22) /
(22/ 0
)220 1
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
.44M N
ManageTemplates44N ]
)44] ^
)44^ _
{55 
return66 
this66 
.66 
ChallengeOrForbid66 -
(66- .
)66. /
;66/ 0
}77 
HttpContext:: 
.:: 
Features::  
.::  !
Set::! $
(::$ %
new::% (!
ContentPreviewFeature::) >
(::> ?
)::? @
)::@ A
;::A B
var<< 
name<< 
=<< 
Request<< 
.<< 
Form<< #
[<<# $
$str<<$ *
]<<* +
;<<+ ,
var== 
content== 
=== 
Request== !
.==! "
Form==" &
[==& '
$str==' 0
]==0 1
;==1 2
if?? 
(?? 
!?? 
string?? 
.?? 
IsNullOrEmpty?? %
(??% &
name??& *
)??* +
&&??, .
!??/ 0
string??0 6
.??6 7
IsNullOrEmpty??7 D
(??D E
content??E L
)??L M
)??M N
{@@ 
HttpContextAA 
.AA 
ItemsAA !
[AA! "
$strAA" ?
]AA? @
=AAA B
newAAC F
TemplateViewModelAAG X
{AAY Z
NameAA[ _
=AA` a
nameAAb f
,AAf g
ContentAAh o
=AAp q
contentAAr y
}AAz {
;AA{ |
}BB 
varDD 
handleDD 
=DD 
RequestDD  
.DD  !
FormDD! %
[DD% &
$strDD& .
]DD. /
.DD/ 0
ToStringDD0 8
(DD8 9
)DD9 :
;DD: ;
stringFF 
contentItemIdFF  
;FF  !
ifHH 
(HH 
stringHH 
.HH 
IsNullOrEmptyHH $
(HH$ %
handleHH% +
)HH+ ,
||HH- /
handleHH0 6
==HH7 9
_homeUrlHH: B
)HHB C
{II 
varJJ 
	homeRouteJJ 
=JJ 
(JJ  !
awaitJJ! &
_siteServiceJJ' 3
.JJ3 4 
GetSiteSettingsAsyncJJ4 H
(JJH I
)JJI J
)JJJ K
.JJK L
	HomeRouteJJL U
;JJU V
contentItemIdKK 
=KK 
	homeRouteKK  )
[KK) *
$strKK* 9
]KK9 :
?KK: ;
.KK; <
ToStringKK< D
(KKD E
)KKE F
;KKF G
}LL 
elseMM 
{NN 
varOO 
indexOO 
=OO 
handleOO "
.OO" #
IndexOfOO# *
(OO* +
_homeUrlOO+ 3
,OO3 4
StringComparisonOO5 E
.OOE F
OrdinalOOF M
)OOM N
;OON O
handlePP 
=PP 
(PP 
indexPP 
<PP  !
$numPP" #
)PP# $
?PP% &
handlePP' -
:PP. /
handlePP0 6
.PP6 7
	SubstringPP7 @
(PP@ A
_homeUrlPPA I
.PPI J
LengthPPJ P
)PPP Q
;PPQ R
contentItemIdQQ 
=QQ 
awaitQQ  %!
_contentHandleManagerQQ& ;
.QQ; <!
GetContentItemIdAsyncQQ< Q
(QQQ R
$strQQR Y
+QQZ [
handleQQ\ b
)QQb c
;QQc d
}RR 
ifTT 
(TT 
stringTT 
.TT 
IsNullOrEmptyTT $
(TT$ %
contentItemIdTT% 2
)TT2 3
)TT3 4
{UU 
returnVV 
NotFoundVV 
(VV  
)VV  !
;VV! "
}WW 
varYY 
contentItemYY 
=YY 
awaitYY #
_contentManagerYY$ 3
.YY3 4
GetAsyncYY4 <
(YY< =
contentItemIdYY= J
,YYJ K
VersionOptionsYYL Z
.YYZ [
	PublishedYY[ d
)YYd e
;YYe f
if[[ 
([[ 
contentItem[[ 
==[[ 
null[[ #
)[[# $
{\\ 
return]] 
NotFound]] 
(]]  
)]]  !
;]]! "
}^^ 
var`` 
model`` 
=`` 
await`` &
_contentItemDisplayManager`` 8
.``8 9
BuildDisplayAsync``9 J
(``J K
contentItem``K V
,``V W 
_updateModelAccessor``X l
.``l m
ModelUpdater``m y
,``y z
$str	``{ É
)
``É Ñ
;
``Ñ Ö
returnbb 
Viewbb 
(bb 
modelbb 
)bb 
;bb 
}cc 	
}dd 
}ee „£
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Controllers\TemplateController.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Controllers  +
{ 
[ 
Admin 

]
 
public 

class 
TemplateController #
:$ %

Controller& 0
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
TemplatesManager )
_templatesManager* ;
;; <
private 
readonly !
AdminTemplatesManager ."
_adminTemplatesManager/ E
;E F
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
readonly!! 
dynamic!!  
New!!! $
;!!$ %
public## 
TemplateController## !
(##! "!
IAuthorizationService$$ ! 
authorizationService$$" 6
,$$6 7
TemplatesManager%% 
templatesManager%% -
,%%- .!
AdminTemplatesManager&& !!
adminTemplatesManager&&" 7
,&&7 8
IShapeFactory'' 
shapeFactory'' &
,''& '
ISiteService(( 
siteService(( $
,(($ %
IStringLocalizer)) 
<)) 
TemplateController)) /
>))/ 0
stringLocalizer))1 @
,))@ A
IHtmlLocalizer** 
<** 
TemplateController** -
>**- .
htmlLocalizer**/ <
,**< =
	INotifier++ 
notifier++ 
)++ 
{,, 	!
_authorizationService-- !
=--" # 
authorizationService--$ 8
;--8 9
_templatesManager.. 
=.. 
templatesManager..  0
;..0 1"
_adminTemplatesManager// "
=//# $!
adminTemplatesManager//% :
;//: ;
New00 
=00 
shapeFactory00 
;00 
_siteService11 
=11 
siteService11 &
;11& '
	_notifier22 
=22 
notifier22  
;22  !
S33 
=33 
stringLocalizer33 
;33  
H44 
=44 
htmlLocalizer44 
;44 
}55 	
public77 
Task77 
<77 
IActionResult77 !
>77! "
Admin77# (
(77( )
ContentOptions77) 7
options778 ?
,77? @
PagerParameters77A P
pagerParameters77Q `
)77` a
{88 	
options99 
.99 
AdminTemplates99 "
=99# $
true99% )
;99) *
return<< 
Index<< 
(<< 
options<<  
,<<  !
pagerParameters<<" 1
)<<1 2
;<<2 3
}== 	
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
Index??) .
(??. /
ContentOptions??/ =
options??> E
,??E F
PagerParameters??G V
pagerParameters??W f
)??f g
{@@ 	
ifAA 
(AA 
!AA 
optionsAA 
.AA 
AdminTemplatesAA '
&&AA( *
!AA+ ,
awaitAA, 1!
_authorizationServiceAA2 G
.AAG H
AuthorizeAsyncAAH V
(AAV W
UserAAW [
,AA[ \
PermissionsAA] h
.AAh i
ManageTemplatesAAi x
)AAx y
)AAy z
{BB 
returnCC 
ForbidCC 
(CC 
)CC 
;CC  
}DD 
ifFF 
(FF 
optionsFF 
.FF 
AdminTemplatesFF &
&&FF' )
!FF* +
awaitFF+ 0!
_authorizationServiceFF1 F
.FFF G
AuthorizeAsyncFFG U
(FFU V
UserFFV Z
,FFZ [%
AdminTemplatesPermissionsFF\ u
.FFu v!
ManageAdminTemplates	FFv ä
)
FFä ã
)
FFã å
{GG 
returnHH 
ForbidHH 
(HH 
)HH 
;HH  
}II 
varKK 
siteSettingsKK 
=KK 
awaitKK $
_siteServiceKK% 1
.KK1 2 
GetSiteSettingsAsyncKK2 F
(KKF G
)KKG H
;KKH I
varLL 
pagerLL 
=LL 
newLL 
PagerLL !
(LL! "
pagerParametersLL" 1
,LL1 2
siteSettingsLL3 ?
.LL? @
PageSizeLL@ H
)LLH I
;LLI J
varMM 
templatesDocumentMM !
=MM" #
optionsMM$ +
.MM+ ,
AdminTemplatesMM, :
?NN 
awaitNN "
_adminTemplatesManagerNN .
.NN. /%
GetTemplatesDocumentAsyncNN/ H
(NNH I
)NNI J
:OO 
awaitOO 
_templatesManagerOO )
.OO) *%
GetTemplatesDocumentAsyncOO* C
(OOC D
)OOD E
;PP 
varRR 
	templatesRR 
=RR 
templatesDocumentRR -
.RR- .
	TemplatesRR. 7
.RR7 8
ToListRR8 >
(RR> ?
)RR? @
;RR@ A
ifTT 
(TT 
!TT 
stringTT 
.TT 
IsNullOrWhiteSpaceTT *
(TT* +
optionsTT+ 2
.TT2 3
SearchTT3 9
)TT9 :
)TT: ;
{UU 
	templatesVV 
=VV 
	templatesVV %
.VV% &
WhereVV& +
(VV+ ,
xVV, -
=>VV. 0
xVV1 2
.VV2 3
KeyVV3 6
.VV6 7
ContainsVV7 ?
(VV? @
optionsVV@ G
.VVG H
SearchVVH N
,VVN O
StringComparisonVVP `
.VV` a
OrdinalIgnoreCaseVVa r
)VVr s
)VVs t
.VVt u
ToListVVu {
(VV{ |
)VV| }
;VV} ~
}WW 
varYY 
countYY 
=YY 
	templatesYY !
.YY! "
CountYY" '
;YY' (
	templates[[ 
=[[ 
	templates[[ !
.[[! "
OrderBy[[" )
([[) *
x[[* +
=>[[, .
x[[/ 0
.[[0 1
Key[[1 4
)[[4 5
.\\ 
Skip\\ 
(\\ 
pager\\ 
.\\ 
GetStartIndex\\ )
(\\) *
)\\* +
)\\+ ,
.]] 
Take]] 
(]] 
pager]] 
.]] 
PageSize]] $
)]]$ %
.]]% &
ToList]]& ,
(]], -
)]]- .
;]]. /
var__ 

pagerShape__ 
=__ 
(__ 
await__ #
New__$ '
.__' (
Pager__( -
(__- .
pager__. 3
)__3 4
)__4 5
.__5 6
TotalItemCount__6 D
(__D E
count__E J
)__J K
;__K L
varaa 
modelaa 
=aa 
newaa "
TemplateIndexViewModelaa 2
{bb 
	Templatescc 
=cc 
	templatescc %
.cc% &
Selectcc& ,
(cc, -
xcc- .
=>cc/ 1
newcc2 5
TemplateEntrycc6 C
{ccD E
NameccF J
=ccK L
xccM N
.ccN O
KeyccO R
,ccR S
TemplateccT \
=cc] ^
xcc_ `
.cc` a
Valuecca f
}ccg h
)cch i
.cci j
ToListccj p
(ccp q
)ccq r
,ccr s
Optionsdd 
=dd 
optionsdd !
,dd! "
Pageree 
=ee 

pagerShapeee "
}ff 
;ff 
modelhh 
.hh 
Optionshh 
.hh 
ContentsBulkActionhh ,
=hh- .
newhh/ 2
Listhh3 7
<hh7 8
SelectListItemhh8 F
>hhF G
(hhG H
)hhH I
{hhJ K
newii 
SelectListItemii "
(ii" #
)ii# $
{ii% &
Textii' +
=ii, -
Sii. /
[ii/ 0
$strii0 8
]ii8 9
,ii9 :
Valueii; @
=iiA B
nameofiiC I
(iiI J
ContentsBulkActioniiJ \
.ii\ ]
Removeii] c
)iic d
}iie f
}jj 
;jj 
returnll 
Viewll 
(ll 
$strll 
,ll  
modelll! &
)ll& '
;ll' (
}mm 	
[oo 	
HttpPostoo	 
,oo 

ActionNameoo 
(oo 
$stroo %
)oo% &
]oo& '
[pp 	
FormValueRequiredpp	 
(pp 
$strpp *
)pp* +
]pp+ ,
publicqq 
ActionResultqq 
IndexFilterPOSTqq +
(qq+ ,"
TemplateIndexViewModelqq, B
modelqqC H
)qqH I
{rr 	
returnss 
RedirectToActionss #
(ss# $
$strss$ +
,ss+ ,
newss- 0 
RouteValueDictionaryss1 E
{ssF G
{tt 
$strtt "
,tt" #
modeltt$ )
.tt) *
Optionstt* 1
.tt1 2
Searchtt2 8
}tt9 :
}uu 
)uu 
;uu 
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
IActionResultxx '
>xx' (
Createxx) /
(xx/ 0
TemplateViewModelxx0 A
modelxxB G
,xxG H
boolxxI M
adminTemplatesxxN \
=xx] ^
falsexx_ d
,xxd e
stringxxf l
	returnUrlxxm v
=xxw x
nullxxy }
)xx} ~
{yy 	
ifzz 
(zz 
!zz 
adminTemplateszz 
&&zz  "
!zz# $
awaitzz$ )!
_authorizationServicezz* ?
.zz? @
AuthorizeAsynczz@ N
(zzN O
UserzzO S
,zzS T
PermissionszzU `
.zz` a
ManageTemplateszza p
)zzp q
)zzq r
{{{ 
return|| 
Forbid|| 
(|| 
)|| 
;||  
}}} 
if 
( 
adminTemplates 
&& !
!" #
await# (!
_authorizationService) >
.> ?
AuthorizeAsync? M
(M N
UserN R
,R S%
AdminTemplatesPermissionsT m
.m n!
ManageAdminTemplates	n Ç
)
Ç É
)
É Ñ
{
ÄÄ 
return
ÅÅ 
Forbid
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ  
}
ÇÇ 
ViewData
ÑÑ 
[
ÑÑ 
$str
ÑÑ  
]
ÑÑ  !
=
ÑÑ" #
	returnUrl
ÑÑ$ -
;
ÑÑ- .
return
ÖÖ 
View
ÖÖ 
(
ÖÖ 
new
ÖÖ 
TemplateViewModel
ÖÖ -
(
ÖÖ- .
)
ÖÖ. /
{
ÖÖ0 1
AdminTemplates
ÖÖ2 @
=
ÖÖA B
adminTemplates
ÖÖC Q
}
ÖÖR S
)
ÖÖS T
;
ÖÖT U
}
ÜÜ 	
[
àà 	
HttpPost
àà	 
,
àà 

ActionName
àà 
(
àà 
$str
àà &
)
àà& '
]
àà' (
public
ââ 
async
ââ 
Task
ââ 
<
ââ 
IActionResult
ââ '
>
ââ' (

CreatePost
ââ) 3
(
ââ3 4
TemplateViewModel
ââ4 E
model
ââF K
,
ââK L
string
ââM S
submit
ââT Z
,
ââZ [
string
ââ\ b
	returnUrl
ââc l
=
ââm n
null
ââo s
)
ââs t
{
ää 	
if
ãã 
(
ãã 
!
ãã 
model
ãã 
.
ãã 
AdminTemplates
ãã %
&&
ãã& (
!
ãã) *
await
ãã* /#
_authorizationService
ãã0 E
.
ããE F
AuthorizeAsync
ããF T
(
ããT U
User
ããU Y
,
ããY Z
Permissions
ãã[ f
.
ããf g
ManageTemplates
ããg v
)
ããv w
)
ããw x
{
åå 
return
çç 
Forbid
çç 
(
çç 
)
çç 
;
çç  
}
éé 
if
êê 
(
êê 
model
êê 
.
êê 
AdminTemplates
êê $
&&
êê% '
!
êê( )
await
êê) .#
_authorizationService
êê/ D
.
êêD E
AuthorizeAsync
êêE S
(
êêS T
User
êêT X
,
êêX Y'
AdminTemplatesPermissions
êêZ s
.
êês t#
ManageAdminTemplatesêêt à
)êêà â
)êêâ ä
{
ëë 
return
íí 
Forbid
íí 
(
íí 
)
íí 
;
íí  
}
ìì 
ViewData
ïï 
[
ïï 
$str
ïï  
]
ïï  !
=
ïï" #
	returnUrl
ïï$ -
;
ïï- .
if
óó 
(
óó 

ModelState
óó 
.
óó 
IsValid
óó "
)
óó" #
{
òò 
if
ôô 
(
ôô 
String
ôô 
.
ôô  
IsNullOrWhiteSpace
ôô -
(
ôô- .
model
ôô. 3
.
ôô3 4
Name
ôô4 8
)
ôô8 9
)
ôô9 :
{
öö 

ModelState
õõ 
.
õõ 
AddModelError
õõ ,
(
õõ, -
nameof
õõ- 3
(
õõ3 4
TemplateViewModel
õõ4 E
.
õõE F
Name
õõF J
)
õõJ K
,
õõK L
S
õõM N
[
õõN O
$str
õõO g
]
õõg h
)
õõh i
;
õõi j
}
úú 
else
ùù 
if
ùù 
(
ùù 
String
ùù 
.
ùù   
IsNullOrWhiteSpace
ùù  2
(
ùù2 3
model
ùù3 8
.
ùù8 9
Content
ùù9 @
)
ùù@ A
)
ùùA B
{
ûû 

ModelState
üü 
.
üü 
AddModelError
üü ,
(
üü, -
nameof
üü- 3
(
üü3 4
TemplateViewModel
üü4 E
.
üüE F
Content
üüF M
)
üüM N
,
üüN O
S
üüP Q
[
üüQ R
$str
üüR m
]
üüm n
)
üün o
;
üüo p
}
†† 
else
°° 
{
¢¢ 
var
££ 
templatesDocument
££ )
=
££* +
model
££, 1
.
££1 2
AdminTemplates
££2 @
?
§§ 
await
§§ $
_adminTemplatesManager
§§  6
.
§§6 7'
GetTemplatesDocumentAsync
§§7 P
(
§§P Q
)
§§Q R
:
•• 
await
•• 
_templatesManager
••  1
.
••1 2'
GetTemplatesDocumentAsync
••2 K
(
••K L
)
••L M
;
¶¶ 
if
®® 
(
®® 
templatesDocument
®® )
.
®®) *
	Templates
®®* 3
.
®®3 4
ContainsKey
®®4 ?
(
®®? @
model
®®@ E
.
®®E F
Name
®®F J
)
®®J K
)
®®K L
{
©© 

ModelState
™™ "
.
™™" #
AddModelError
™™# 0
(
™™0 1
nameof
™™1 7
(
™™7 8
TemplateViewModel
™™8 I
.
™™I J
Name
™™J N
)
™™N O
,
™™O P
S
™™Q R
[
™™R S
$str™™S Ç
]™™Ç É
)™™É Ñ
;™™Ñ Ö
}
´´ 
}
¨¨ 
}
≠≠ 
if
ØØ 
(
ØØ 

ModelState
ØØ 
.
ØØ 
IsValid
ØØ "
)
ØØ" #
{
∞∞ 
var
±± 
template
±± 
=
±± 
new
±± "
Template
±±# +
{
±±, -
Content
±±. 5
=
±±6 7
model
±±8 =
.
±±= >
Content
±±> E
,
±±E F
Description
±±G R
=
±±S T
model
±±U Z
.
±±Z [
Description
±±[ f
}
±±g h
;
±±h i
await
≥≥ 
(
≥≥ 
model
≥≥ 
.
≥≥ 
AdminTemplates
≥≥ +
?
¥¥ $
_adminTemplatesManager
¥¥ ,
.
¥¥, -!
UpdateTemplateAsync
¥¥- @
(
¥¥@ A
model
¥¥A F
.
¥¥F G
Name
¥¥G K
,
¥¥K L
template
¥¥M U
)
¥¥U V
:
µµ 
_templatesManager
µµ '
.
µµ' (!
UpdateTemplateAsync
µµ( ;
(
µµ; <
model
µµ< A
.
µµA B
Name
µµB F
,
µµF G
template
µµH P
)
µµP Q
)
∂∂ 
;
∂∂ 
	_notifier
∏∏ 
.
∏∏ 
Success
∏∏ !
(
∏∏! "
H
∏∏" #
[
∏∏# $
$str
∏∏$ L
,
∏∏L M
model
∏∏N S
.
∏∏S T
Name
∏∏T X
]
∏∏X Y
)
∏∏Y Z
;
∏∏Z [
if
∫∫ 
(
∫∫ 
submit
∫∫ 
==
∫∫ 
$str
∫∫ /
)
∫∫/ 0
{
ªª 
return
ºº 
RedirectToAction
ºº +
(
ºº+ ,
nameof
ºº, 2
(
ºº2 3
Edit
ºº3 7
)
ºº7 8
,
ºº8 9
new
ºº: =
{
ºº> ?
name
ºº@ D
=
ººE F
model
ººG L
.
ººL M
Name
ººM Q
,
ººQ R
adminTemplates
ººS a
=
ººb c
model
ººd i
.
ººi j
AdminTemplates
ººj x
,
ººx y
	returnUrlººz É
}ººÑ Ö
)ººÖ Ü
;ººÜ á
}
ΩΩ 
else
ææ 
{
øø 
return
¿¿ (
RedirectToReturnUrlOrIndex
¿¿ 5
(
¿¿5 6
	returnUrl
¿¿6 ?
)
¿¿? @
;
¿¿@ A
}
¡¡ 
}
¬¬ 
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
∆∆ 	
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
»»' (
Edit
»») -
(
»»- .
string
»». 4
name
»»5 9
,
»»9 :
bool
»»; ?
adminTemplates
»»@ N
=
»»O P
false
»»Q V
,
»»V W
string
»»X ^
	returnUrl
»»_ h
=
»»i j
null
»»k o
)
»»o p
{
…… 	
if
   
(
   
!
   
adminTemplates
   
&&
    "
!
  # $
await
  $ )#
_authorizationService
  * ?
.
  ? @
AuthorizeAsync
  @ N
(
  N O
User
  O S
,
  S T
Permissions
  U `
.
  ` a
ManageTemplates
  a p
)
  p q
)
  q r
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
ÕÕ 
if
œœ 
(
œœ 
adminTemplates
œœ 
&&
œœ !
!
œœ" #
await
œœ# (#
_authorizationService
œœ) >
.
œœ> ?
AuthorizeAsync
œœ? M
(
œœM N
User
œœN R
,
œœR S'
AdminTemplatesPermissions
œœT m
.
œœm n#
ManageAdminTemplatesœœn Ç
)œœÇ É
)œœÉ Ñ
{
–– 
return
—— 
Forbid
—— 
(
—— 
)
—— 
;
——  
}
““ 
var
‘‘ 
templatesDocument
‘‘ !
=
‘‘" #
adminTemplates
‘‘$ 2
?
’’ 
await
’’ $
_adminTemplatesManager
’’ .
.
’’. /'
GetTemplatesDocumentAsync
’’/ H
(
’’H I
)
’’I J
:
÷÷ 
await
÷÷ 
_templatesManager
÷÷ )
.
÷÷) *'
GetTemplatesDocumentAsync
÷÷* C
(
÷÷C D
)
÷÷D E
;
◊◊ 
if
ŸŸ 
(
ŸŸ 
!
ŸŸ 
templatesDocument
ŸŸ "
.
ŸŸ" #
	Templates
ŸŸ# ,
.
ŸŸ, -
ContainsKey
ŸŸ- 8
(
ŸŸ8 9
name
ŸŸ9 =
)
ŸŸ= >
)
ŸŸ> ?
{
⁄⁄ 
return
€€ 
RedirectToAction
€€ '
(
€€' (
$str
€€( 0
,
€€0 1
new
€€2 5
{
€€6 7
name
€€8 <
,
€€< =
	returnUrl
€€> G
}
€€H I
)
€€I J
;
€€J K
}
‹‹ 
var
ﬁﬁ 
template
ﬁﬁ 
=
ﬁﬁ 
templatesDocument
ﬁﬁ ,
.
ﬁﬁ, -
	Templates
ﬁﬁ- 6
[
ﬁﬁ6 7
name
ﬁﬁ7 ;
]
ﬁﬁ; <
;
ﬁﬁ< =
var
‡‡ 
model
‡‡ 
=
‡‡ 
new
‡‡ 
TemplateViewModel
‡‡ -
{
·· 
AdminTemplates
‚‚ 
=
‚‚  
adminTemplates
‚‚! /
,
‚‚/ 0
Name
„„ 
=
„„ 
name
„„ 
,
„„ 
Content
‰‰ 
=
‰‰ 
template
‰‰ "
.
‰‰" #
Content
‰‰# *
,
‰‰* +
Description
ÂÂ 
=
ÂÂ 
template
ÂÂ &
.
ÂÂ& '
Description
ÂÂ' 2
}
ÊÊ 
;
ÊÊ 
ViewData
ËË 
[
ËË 
$str
ËË  
]
ËË  !
=
ËË" #
	returnUrl
ËË$ -
;
ËË- .
return
ÈÈ 
View
ÈÈ 
(
ÈÈ 
model
ÈÈ 
)
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
[
ÏÏ 	
HttpPost
ÏÏ	 
]
ÏÏ 
public
ÌÌ 
async
ÌÌ 
Task
ÌÌ 
<
ÌÌ 
IActionResult
ÌÌ '
>
ÌÌ' (
Edit
ÌÌ) -
(
ÌÌ- .
string
ÌÌ. 4

sourceName
ÌÌ5 ?
,
ÌÌ? @
TemplateViewModel
ÌÌA R
model
ÌÌS X
,
ÌÌX Y
string
ÌÌZ `
submit
ÌÌa g
,
ÌÌg h
string
ÌÌi o
	returnUrl
ÌÌp y
=
ÌÌz {
nullÌÌ| Ä
)ÌÌÄ Å
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 
model
ÔÔ 
.
ÔÔ 
AdminTemplates
ÔÔ %
&&
ÔÔ& (
!
ÔÔ) *
await
ÔÔ* /#
_authorizationService
ÔÔ0 E
.
ÔÔE F
AuthorizeAsync
ÔÔF T
(
ÔÔT U
User
ÔÔU Y
,
ÔÔY Z
Permissions
ÔÔ[ f
.
ÔÔf g
ManageTemplates
ÔÔg v
)
ÔÔv w
)
ÔÔw x
{
 
return
ÒÒ 
Forbid
ÒÒ 
(
ÒÒ 
)
ÒÒ 
;
ÒÒ  
}
ÚÚ 
if
ÙÙ 
(
ÙÙ 
model
ÙÙ 
.
ÙÙ 
AdminTemplates
ÙÙ $
&&
ÙÙ% '
!
ÙÙ( )
await
ÙÙ) .#
_authorizationService
ÙÙ/ D
.
ÙÙD E
AuthorizeAsync
ÙÙE S
(
ÙÙS T
User
ÙÙT X
,
ÙÙX Y'
AdminTemplatesPermissions
ÙÙZ s
.
ÙÙs t#
ManageAdminTemplatesÙÙt à
)ÙÙà â
)ÙÙâ ä
{
ıı 
return
ˆˆ 
Forbid
ˆˆ 
(
ˆˆ 
)
ˆˆ 
;
ˆˆ  
}
˜˜ 
var
˘˘ 
templatesDocument
˘˘ !
=
˘˘" #
model
˘˘$ )
.
˘˘) *
AdminTemplates
˘˘* 8
?
˙˙ 
await
˙˙ $
_adminTemplatesManager
˙˙ .
.
˙˙. /(
LoadTemplatesDocumentAsync
˙˙/ I
(
˙˙I J
)
˙˙J K
:
˚˚ 
await
˚˚ 
_templatesManager
˚˚ )
.
˚˚) *(
LoadTemplatesDocumentAsync
˚˚* D
(
˚˚D E
)
˚˚E F
;
¸¸ 
if
˛˛ 
(
˛˛ 

ModelState
˛˛ 
.
˛˛ 
IsValid
˛˛ "
)
˛˛" #
{
ˇˇ 
if
ÄÄ 
(
ÄÄ 
String
ÄÄ 
.
ÄÄ  
IsNullOrWhiteSpace
ÄÄ -
(
ÄÄ- .
model
ÄÄ. 3
.
ÄÄ3 4
Name
ÄÄ4 8
)
ÄÄ8 9
)
ÄÄ9 :
{
ÅÅ 

ModelState
ÇÇ 
.
ÇÇ 
AddModelError
ÇÇ ,
(
ÇÇ, -
nameof
ÇÇ- 3
(
ÇÇ3 4
TemplateViewModel
ÇÇ4 E
.
ÇÇE F
Name
ÇÇF J
)
ÇÇJ K
,
ÇÇK L
S
ÇÇM N
[
ÇÇN O
$str
ÇÇO g
]
ÇÇg h
)
ÇÇh i
;
ÇÇi j
}
ÉÉ 
else
ÑÑ 
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
model
ÑÑ 
.
ÑÑ  
Name
ÑÑ  $
.
ÑÑ$ %
Equals
ÑÑ% +
(
ÑÑ+ ,

sourceName
ÑÑ, 6
,
ÑÑ6 7
StringComparison
ÑÑ8 H
.
ÑÑH I
OrdinalIgnoreCase
ÑÑI Z
)
ÑÑZ [
&&
ÑÑ\ ^
templatesDocument
ÑÑ_ p
.
ÑÑp q
	Templates
ÑÑq z
.
ÑÑz {
ContainsKeyÑÑ{ Ü
(ÑÑÜ á
modelÑÑá å
.ÑÑå ç
NameÑÑç ë
)ÑÑë í
)ÑÑí ì
{
ÖÖ 

ModelState
ÜÜ 
.
ÜÜ 
AddModelError
ÜÜ ,
(
ÜÜ, -
nameof
ÜÜ- 3
(
ÜÜ3 4
TemplateViewModel
ÜÜ4 E
.
ÜÜE F
Name
ÜÜF J
)
ÜÜJ K
,
ÜÜK L
S
ÜÜM N
[
ÜÜN O
$str
ÜÜO ~
]
ÜÜ~ 
)ÜÜ Ä
;ÜÜÄ Å
}
áá 
else
àà 
if
àà 
(
àà 
String
àà 
.
àà   
IsNullOrWhiteSpace
àà  2
(
àà2 3
model
àà3 8
.
àà8 9
Content
àà9 @
)
àà@ A
)
ààA B
{
ââ 

ModelState
ää 
.
ää 
AddModelError
ää ,
(
ää, -
nameof
ää- 3
(
ää3 4
TemplateViewModel
ää4 E
.
ääE F
Content
ääF M
)
ääM N
,
ääN O
S
ääP Q
[
ääQ R
$str
ääR m
]
ääm n
)
ään o
;
ääo p
}
ãã 
}
åå 
if
éé 
(
éé 
!
éé 
templatesDocument
éé "
.
éé" #
	Templates
éé# ,
.
éé, -
ContainsKey
éé- 8
(
éé8 9

sourceName
éé9 C
)
ééC D
)
ééD E
{
èè 
return
êê 
NotFound
êê 
(
êê  
)
êê  !
;
êê! "
}
ëë 
if
ìì 
(
ìì 

ModelState
ìì 
.
ìì 
IsValid
ìì "
)
ìì" #
{
îî 
var
ïï 
template
ïï 
=
ïï 
new
ïï "
Template
ïï# +
{
ïï, -
Content
ïï. 5
=
ïï6 7
model
ïï8 =
.
ïï= >
Content
ïï> E
,
ïïE F
Description
ïïG R
=
ïïS T
model
ïïU Z
.
ïïZ [
Description
ïï[ f
}
ïïg h
;
ïïh i
await
óó 
(
óó 
model
óó 
.
óó 
AdminTemplates
óó +
?
òò $
_adminTemplatesManager
òò ,
.
òò, -!
RemoveTemplateAsync
òò- @
(
òò@ A

sourceName
òòA K
)
òòK L
:
ôô 
_templatesManager
ôô '
.
ôô' (!
RemoveTemplateAsync
ôô( ;
(
ôô; <

sourceName
ôô< F
)
ôôF G
)
öö 
;
öö 
await
úú 
(
úú 
model
úú 
.
úú 
AdminTemplates
úú +
?
ùù $
_adminTemplatesManager
ùù ,
.
ùù, -!
UpdateTemplateAsync
ùù- @
(
ùù@ A
model
ùùA F
.
ùùF G
Name
ùùG K
,
ùùK L
template
ùùM U
)
ùùU V
:
ûû 
_templatesManager
ûû '
.
ûû' (!
UpdateTemplateAsync
ûû( ;
(
ûû; <
model
ûû< A
.
ûûA B
Name
ûûB F
,
ûûF G
template
ûûH P
)
ûûP Q
)
üü 
;
üü 
if
°° 
(
°° 
submit
°° 
!=
°° 
$str
°° /
)
°°/ 0
{
¢¢ 
return
££ (
RedirectToReturnUrlOrIndex
££ 5
(
££5 6
	returnUrl
££6 ?
)
££? @
;
££@ A
}
§§ 
}
•• 
ViewData
®® 
[
®® 
$str
®®  
]
®®  !
=
®®" #
	returnUrl
®®$ -
;
®®- .
return
©© 
View
©© 
(
©© 
model
©© 
)
©© 
;
©© 
}
™™ 	
[
¨¨ 	
HttpPost
¨¨	 
]
¨¨ 
public
≠≠ 
async
≠≠ 
Task
≠≠ 
<
≠≠ 
IActionResult
≠≠ '
>
≠≠' (
Delete
≠≠) /
(
≠≠/ 0
string
≠≠0 6
name
≠≠7 ;
,
≠≠; <
string
≠≠= C
	returnUrl
≠≠D M
,
≠≠M N
bool
≠≠O S
adminTemplates
≠≠T b
=
≠≠c d
false
≠≠e j
)
≠≠j k
{
ÆÆ 	
if
ØØ 
(
ØØ 
!
ØØ 
adminTemplates
ØØ 
&&
ØØ  "
!
ØØ# $
await
ØØ$ )#
_authorizationService
ØØ* ?
.
ØØ? @
AuthorizeAsync
ØØ@ N
(
ØØN O
User
ØØO S
,
ØØS T
Permissions
ØØU `
.
ØØ` a
ManageTemplates
ØØa p
)
ØØp q
)
ØØq r
{
∞∞ 
return
±± 
Forbid
±± 
(
±± 
)
±± 
;
±±  
}
≤≤ 
if
¥¥ 
(
¥¥ 
adminTemplates
¥¥ 
&&
¥¥ !
!
¥¥" #
await
¥¥# (#
_authorizationService
¥¥) >
.
¥¥> ?
AuthorizeAsync
¥¥? M
(
¥¥M N
User
¥¥N R
,
¥¥R S'
AdminTemplatesPermissions
¥¥T m
.
¥¥m n#
ManageAdminTemplates¥¥n Ç
)¥¥Ç É
)¥¥É Ñ
{
µµ 
return
∂∂ 
Forbid
∂∂ 
(
∂∂ 
)
∂∂ 
;
∂∂  
}
∑∑ 
var
ππ 
templatesDocument
ππ !
=
ππ" #
adminTemplates
ππ$ 2
?
∫∫ 
await
∫∫ $
_adminTemplatesManager
∫∫ .
.
∫∫. /(
LoadTemplatesDocumentAsync
∫∫/ I
(
∫∫I J
)
∫∫J K
:
ªª 
await
ªª 
_templatesManager
ªª )
.
ªª) *(
LoadTemplatesDocumentAsync
ªª* D
(
ªªD E
)
ªªE F
;
ªªF G
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
templatesDocument
ΩΩ "
.
ΩΩ" #
	Templates
ΩΩ# ,
.
ΩΩ, -
ContainsKey
ΩΩ- 8
(
ΩΩ8 9
name
ΩΩ9 =
)
ΩΩ= >
)
ΩΩ> ?
{
ææ 
return
øø 
NotFound
øø 
(
øø  
)
øø  !
;
øø! "
}
¿¿ 
await
¬¬ 
(
¬¬ 
adminTemplates
¬¬ !
?
√√ $
_adminTemplatesManager
√√ ,
.
√√, -!
RemoveTemplateAsync
√√- @
(
√√@ A
name
√√A E
)
√√E F
:
ƒƒ 
_templatesManager
ƒƒ '
.
ƒƒ' (!
RemoveTemplateAsync
ƒƒ( ;
(
ƒƒ; <
name
ƒƒ< @
)
ƒƒ@ A
)
ƒƒA B
;
ƒƒB C
	_notifier
∆∆ 
.
∆∆ 
Success
∆∆ 
(
∆∆ 
H
∆∆ 
[
∆∆  
$str
∆∆  @
]
∆∆@ A
)
∆∆A B
;
∆∆B C
return
»» (
RedirectToReturnUrlOrIndex
»» -
(
»»- .
	returnUrl
»». 7
)
»»7 8
;
»»8 9
}
…… 	
[
ÀÀ 	
HttpPost
ÀÀ	 
,
ÀÀ 

ActionName
ÀÀ 
(
ÀÀ 
$str
ÀÀ %
)
ÀÀ% &
]
ÀÀ& '
[
ÃÃ 	
FormValueRequired
ÃÃ	 
(
ÃÃ 
$str
ÃÃ .
)
ÃÃ. /
]
ÃÃ/ 0
public
ÕÕ 
async
ÕÕ 
Task
ÕÕ 
<
ÕÕ 
ActionResult
ÕÕ &
>
ÕÕ& '
ListPost
ÕÕ( 0
(
ÕÕ0 1
ContentOptions
ÕÕ1 ?
options
ÕÕ@ G
,
ÕÕG H
IEnumerable
ÕÕI T
<
ÕÕT U
string
ÕÕU [
>
ÕÕ[ \
itemIds
ÕÕ] d
)
ÕÕd e
{
ŒŒ 	
if
œœ 
(
œœ 
!
œœ 
await
œœ #
_authorizationService
œœ ,
.
œœ, -
AuthorizeAsync
œœ- ;
(
œœ; <
User
œœ< @
,
œœ@ A
Permissions
œœB M
.
œœM N
ManageTemplates
œœN ]
)
œœ] ^
)
œœ^ _
{
–– 
return
—— 
Forbid
—— 
(
—— 
)
—— 
;
——  
}
““ 
if
‘‘ 
(
‘‘ 
itemIds
‘‘ 
?
‘‘ 
.
‘‘ 
Count
‘‘ 
(
‘‘ 
)
‘‘  
>
‘‘! "
$num
‘‘# $
)
‘‘$ %
{
’’ 
var
÷÷ 
templatesDocument
÷÷ %
=
÷÷& '
options
÷÷( /
.
÷÷/ 0
AdminTemplates
÷÷0 >
?
◊◊ 
await
◊◊ $
_adminTemplatesManager
◊◊  6
.
◊◊6 7(
LoadTemplatesDocumentAsync
◊◊7 Q
(
◊◊Q R
)
◊◊R S
:
ÿÿ 
await
ÿÿ 
_templatesManager
ÿÿ  1
.
ÿÿ1 2(
LoadTemplatesDocumentAsync
ÿÿ2 L
(
ÿÿL M
)
ÿÿM N
;
ÿÿN O
var
ŸŸ !
checkedContentItems
ŸŸ '
=
ŸŸ( )
templatesDocument
ŸŸ* ;
.
ŸŸ; <
	Templates
ŸŸ< E
.
ŸŸE F
Where
ŸŸF K
(
ŸŸK L
x
ŸŸL M
=>
ŸŸN P
itemIds
ŸŸQ X
.
ŸŸX Y
Contains
ŸŸY a
(
ŸŸa b
x
ŸŸb c
.
ŸŸc d
Key
ŸŸd g
)
ŸŸg h
)
ŸŸh i
;
ŸŸi j
switch
€€ 
(
€€ 
options
€€ 
.
€€  

BulkAction
€€  *
)
€€* +
{
‹‹ 
case
››  
ContentsBulkAction
›› +
.
››+ ,
None
››, 0
:
››0 1
break
ﬁﬁ 
;
ﬁﬁ 
case
ﬂﬂ  
ContentsBulkAction
ﬂﬂ +
.
ﬂﬂ+ ,
Remove
ﬂﬂ, 2
:
ﬂﬂ2 3
foreach
‡‡ 
(
‡‡  !
var
‡‡! $
item
‡‡% )
in
‡‡* ,!
checkedContentItems
‡‡- @
)
‡‡@ A
{
·· 
await
‚‚ !
(
‚‚" #
options
‚‚# *
.
‚‚* +
AdminTemplates
‚‚+ 9
?
„„$ %$
_adminTemplatesManager
„„& <
.
„„< =!
RemoveTemplateAsync
„„= P
(
„„P Q
item
„„Q U
.
„„U V
Key
„„V Y
)
„„Y Z
:
‰‰$ %
_templatesManager
‰‰& 7
.
‰‰7 8!
RemoveTemplateAsync
‰‰8 K
(
‰‰K L
item
‰‰L P
.
‰‰P Q
Key
‰‰Q T
)
‰‰T U
)
‰‰U V
;
‰‰V W
}
ÂÂ 
	_notifier
ÊÊ !
.
ÊÊ! "
Success
ÊÊ" )
(
ÊÊ) *
H
ÊÊ* +
[
ÊÊ+ ,
$str
ÊÊ, M
]
ÊÊM N
)
ÊÊN O
;
ÊÊO P
break
ÁÁ 
;
ÁÁ 
default
ËË 
:
ËË 
throw
ÈÈ 
new
ÈÈ !)
ArgumentOutOfRangeException
ÈÈ" =
(
ÈÈ= >
)
ÈÈ> ?
;
ÈÈ? @
}
ÍÍ 
}
ÎÎ 
if
ÌÌ 
(
ÌÌ 
options
ÌÌ 
.
ÌÌ 
AdminTemplates
ÌÌ &
)
ÌÌ& '
{
ÓÓ 
return
ÔÔ 
RedirectToAction
ÔÔ '
(
ÔÔ' (
$str
ÔÔ( /
)
ÔÔ/ 0
;
ÔÔ0 1
}
 
else
ÒÒ 
{
ÚÚ 
return
ÛÛ 
RedirectToAction
ÛÛ '
(
ÛÛ' (
$str
ÛÛ( /
)
ÛÛ/ 0
;
ÛÛ0 1
}
ÙÙ 
}
ıı 	
private
˜˜ 
IActionResult
˜˜ (
RedirectToReturnUrlOrIndex
˜˜ 8
(
˜˜8 9
string
˜˜9 ?
	returnUrl
˜˜@ I
)
˜˜I J
{
¯¯ 	
if
˘˘ 
(
˘˘ 
(
˘˘ 
String
˘˘ 
.
˘˘ 
IsNullOrEmpty
˘˘ %
(
˘˘% &
	returnUrl
˘˘& /
)
˘˘/ 0
==
˘˘1 3
false
˘˘4 9
)
˘˘9 :
&&
˘˘; =
(
˘˘> ?
Url
˘˘? B
.
˘˘B C

IsLocalUrl
˘˘C M
(
˘˘M N
	returnUrl
˘˘N W
)
˘˘W X
)
˘˘X Y
)
˘˘Y Z
{
˙˙ 
return
˚˚ 
Redirect
˚˚ 
(
˚˚  
	returnUrl
˚˚  )
)
˚˚) *
;
˚˚* +
}
¸¸ 
else
˝˝ 
{
˛˛ 
return
ˇˇ 
RedirectToAction
ˇˇ '
(
ˇˇ' (
nameof
ˇˇ( .
(
ˇˇ. /
Index
ˇˇ/ 4
)
ˇˇ4 5
)
ˇˇ5 6
;
ˇˇ6 7
}
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ Ê
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Deployment\AllAdminTemplatesDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

Deployment  *
{ 
public 

class -
!AllAdminTemplatesDeploymentSource 2
:3 4
IDeploymentSource5 F
{		 
private

 
readonly

 !
AdminTemplatesManager

 .
_templatesManager

/ @
;

@ A
public -
!AllAdminTemplatesDeploymentSource 0
(0 1!
AdminTemplatesManager1 F
templatesManagerG W
)W X
{ 	
_templatesManager 
= 
templatesManager  0
;0 1
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
allTemplatesStep  
=! "
step# '
as( *+
AllAdminTemplatesDeploymentStep+ J
;J K
if 
( 
allTemplatesStep  
==! #
null$ (
)( )
{ 
return 
; 
} 
var 
templateObjects 
=  !
new" %
JObject& -
(- .
). /
;/ 0
var 
	templates 
= 
await !
_templatesManager" 3
.3 4%
GetTemplatesDocumentAsync4 M
(M N
)N O
;O P
foreach 
( 
var 
template !
in" $
	templates% .
.. /
	Templates/ 8
)8 9
{ 
templateObjects 
[  
template  (
.( )
Key) ,
], -
=. /
JObject0 7
.7 8

FromObject8 B
(B C
templateC K
.K L
ValueL Q
)Q R
;R S
}   
result"" 
."" 
Steps"" 
."" 
Add"" 
("" 
new""  
JObject""! (
(""( )
new## 
	JProperty## 
(## 
$str## $
,##$ %
$str##& 6
)##6 7
,##7 8
new$$ 
	JProperty$$ 
($$ 
$str$$ .
,$$. /
templateObjects$$0 ?
)$$? @
)%% 
)%% 
;%% 
}&& 	
}'' 
}(( ó
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Deployment\AllAdminTemplatesDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

Deployment  *
{ 
public 

class +
AllAdminTemplatesDeploymentStep 0
:1 2
DeploymentStep3 A
{		 
public

 +
AllAdminTemplatesDeploymentStep

 .
(

. /
)

/ 0
{ 	
Name 
= 
$str &
;& '
} 	
} 
} Ù
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Deployment\AllAdminTemplatesDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

Deployment  *
{ 
public 

class 1
%AllAdminTemplatesDeploymentStepDriver 6
:7 8
DisplayDriver9 F
<F G
DeploymentStepG U
,U V+
AllAdminTemplatesDeploymentStepW v
>v w
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /+
AllAdminTemplatesDeploymentStep		/ N
step		O S
)		S T
{

 	
return 
Combine 
( 
View 
( 
$str B
,B C
stepD H
)H I
.I J
LocationJ R
(R S
$strS \
,\ ]
$str^ g
)g h
,h i
View 
( 
$str D
,D E
stepF J
)J K
.K L
LocationL T
(T U
$strU `
,` a
$strb k
)k l
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,+
AllAdminTemplatesDeploymentStep, K
stepL P
)P Q
{ 	
return 
View 
( 
$str >
,> ?
step@ D
)D E
.E F
LocationF N
(N O
$strO X
)X Y
;Y Z
} 	
} 
} »
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Deployment\AllTemplatesDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

Deployment  *
{ 
public 

class (
AllTemplatesDeploymentSource -
:. /
IDeploymentSource0 A
{		 
private

 
readonly

 
TemplatesManager

 )
_templatesManager

* ;
;

; <
public (
AllTemplatesDeploymentSource +
(+ ,
TemplatesManager, <
templatesManager= M
)M N
{ 	
_templatesManager 
= 
templatesManager  0
;0 1
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
allTemplatesStep  
=! "
step# '
as( *&
AllTemplatesDeploymentStep+ E
;E F
if 
( 
allTemplatesStep  
==! #
null$ (
)( )
{ 
return 
; 
} 
var 
templateObjects 
=  !
new" %
JObject& -
(- .
). /
;/ 0
var 
	templates 
= 
await !
_templatesManager" 3
.3 4%
GetTemplatesDocumentAsync4 M
(M N
)N O
;O P
foreach 
( 
var 
template !
in" $
	templates% .
.. /
	Templates/ 8
)8 9
{ 
templateObjects 
[  
template  (
.( )
Key) ,
], -
=. /
JObject0 7
.7 8

FromObject8 B
(B C
templateC K
.K L
ValueL Q
)Q R
;R S
}   
result"" 
."" 
Steps"" 
."" 
Add"" 
("" 
new""  
JObject""! (
(""( )
new## 
	JProperty## 
(## 
$str## $
,##$ %
$str##& 1
)##1 2
,##2 3
new$$ 
	JProperty$$ 
($$ 
$str$$ )
,$$) *
templateObjects$$+ :
)$$: ;
)%% 
)%% 
;%% 
}&& 	
}'' 
}(( à
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Deployment\AllTemplatesDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

Deployment  *
{ 
public 

class &
AllTemplatesDeploymentStep +
:, -
DeploymentStep. <
{		 
public

 &
AllTemplatesDeploymentStep
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
$str !
;! "
} 	
} 
} €
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Deployment\AllTemplatesDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

Deployment  *
{ 
public 

class ,
 AllTemplatesDeploymentStepDriver 1
:2 3
DisplayDriver4 A
<A B
DeploymentStepB P
,P Q&
AllTemplatesDeploymentStepR l
>l m
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /&
AllTemplatesDeploymentStep		/ I
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
AllTemplatesDeploymentStep, F
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
} Ω
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Manifest.cs
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
$str	  
,  !
Name 
=	 

$str 
, 
Description 
= 
$str g
,g h
Dependencies 
= 
new 
[ 
] 
{ 
$str /
}0 1
,1 2
Category 
= 
$str 
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 %
,% &
Name 
=	 

$str 
, 
Description 
= 
$str d
,d e
Dependencies 
= 
new 
[ 
] 
{ 
$str 2
}3 4
,4 5
Category 
= 
$str 
) 
] ¡
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Models\AdminTemplatesDocument.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Models  &
{ 
public 

class "
AdminTemplatesDocument '
:( )
TemplatesDocument* ;
{ 
} 
} ∆

ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Models\TemplatesDocument.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Models  &
{ 
public 

class 
TemplatesDocument "
:# $
Document% -
{ 
public		 

Dictionary		 
<		 
string		  
,		  !
Template		" *
>		* +
	Templates		, 5
{		6 7
get		8 ;
;		; <
set		= @
;		@ A
}		B C
=		D E
new		F I

Dictionary		J T
<		T U
string		U [
,		[ \
Template		] e
>		e f
(		f g
StringComparer		g u
.		u v
OrdinalIgnoreCase			v á
)
		á à
;
		à â
}

 
public 

class 
Template 
{ 
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} æ
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Permissions.cs
	namespace 	
OrchardCore
 
. 
	Templates 
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
ManageTemplates
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
^ p
)

p q
;

q r
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
{) *
ManageTemplates+ :
}; <
.< =
AsEnumerable= I
(I J
)J K
)K L
;L M
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageTemplates* 9
}: ;
} 
, 
new  
PermissionStereotype (
{ 
Name 
= 
$str #
,# $
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageTemplates* 9
}: ;
} 
} 
; 
}   	
}!! 
}"" ‚
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Recipes\AdminTemplateStep.cs
	namespace		 	
OrchardCore		
 
.		 
	Templates		 
.		  
Recipes		  '
{

 
public 

class 
AdminTemplateStep "
:# $
IRecipeStepHandler% 7
{ 
private 
readonly !
AdminTemplatesManager ."
_adminTemplatesManager/ E
;E F
public 
AdminTemplateStep  
(  !!
AdminTemplatesManager! 6
templatesManager7 G
)G H
{ 	"
_adminTemplatesManager "
=# $
templatesManager% 5
;5 6
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
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- =
,= >
StringComparison? O
.O P
OrdinalIgnoreCaseP a
)a b
)b c
{ 
return 
; 
} 
if 
( 
context 
. 
Step 
. 
Property %
(% &
$str& 6
)6 7
.7 8
Value8 =
is> @
JObjectA H
	templatesI R
)R S
{ 
foreach   
(   
var   
property   %
in  & (
	templates  ) 2
.  2 3

Properties  3 =
(  = >
)  > ?
)  ? @
{!! 
var"" 
name"" 
="" 
property"" '
.""' (
Name""( ,
;"", -
var## 
value## 
=## 
property##  (
.##( )
Value##) .
.##. /
ToObject##/ 7
<##7 8
Template##8 @
>##@ A
(##A B
)##B C
;##C D
await%% "
_adminTemplatesManager%% 0
.%%0 1
UpdateTemplateAsync%%1 D
(%%D E
name%%E I
,%%I J
value%%K P
)%%P Q
;%%Q R
}&& 
}'' 
}(( 	
})) 
}** ∫
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Recipes\TemplateStep.cs
	namespace		 	
OrchardCore		
 
.		 
	Templates		 
.		  
Recipes		  '
{

 
public 

class 
TemplateStep 
: 
IRecipeStepHandler  2
{ 
private 
readonly 
TemplatesManager )
_templatesManager* ;
;; <
public 
TemplateStep 
( 
TemplatesManager ,
templatesManager- =
)= >
{ 	
_templatesManager 
= 
templatesManager  0
;0 1
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
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- 8
,8 9
StringComparison: J
.J K
OrdinalIgnoreCaseK \
)\ ]
)] ^
{ 
return 
; 
} 
if 
( 
context 
. 
Step 
. 
Property %
(% &
$str& 1
)1 2
.2 3
Value3 8
is9 ;
JObject< C
	templatesD M
)M N
{ 
foreach   
(   
var   
property   %
in  & (
	templates  ) 2
.  2 3

Properties  3 =
(  = >
)  > ?
)  ? @
{!! 
var"" 
name"" 
="" 
property"" '
.""' (
Name""( ,
;"", -
var## 
value## 
=## 
property##  (
.##( )
Value##) .
.##. /
ToObject##/ 7
<##7 8
Template##8 @
>##@ A
(##A B
)##B C
;##C D
await%% 
_templatesManager%% +
.%%+ ,
UpdateTemplateAsync%%, ?
(%%? @
name%%@ D
,%%D E
value%%F K
)%%K L
;%%L M
}&& 
}'' 
}(( 	
})) 
}** ∞
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\ResourceManifest.cs
	namespace 	
OrchardCore
 
. 
	Templates 
{ 
public 

class 
ResourceManifest !
:" #%
IResourceManifestProvider$ =
{ 
public 
void 
BuildManifests "
(" #$
IResourceManifestBuilder# ;
builder< C
)C D
{ 	
var		 
manifest		 
=		 
builder		 "
.		" #
Add		# &
(		& '
)		' (
;		( )
manifest 
. 
DefineScript 
( 
$str 4
)4 5
. 
SetUrl 
( 
$str U
,U V
$str	W ê
)
ê ë
. 

SetVersion 
( 
$str #
)# $
;$ %
} 	
} 
} π
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Services\AdminPreviewTemplatesProvider.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Services  (
{ 
public 

class )
AdminPreviewTemplatesProvider .
{ 
private 
readonly 
Lazy 
< "
AdminTemplatesDocument 4
>4 5
_templatesDocument6 H
;H I
public )
AdminPreviewTemplatesProvider ,
(, - 
IHttpContextAccessor- A
httpContextAccessorB U
)U V
{ 	
_templatesDocument 
=  
new! $
Lazy% )
<) *"
AdminTemplatesDocument* @
>@ A
(A B
(B C
)C D
=>E G
{ 
var 
httpContext 
=  !
httpContextAccessor" 5
.5 6
HttpContext6 A
;A B
var 
templatesDocument %
=& '
new( +"
AdminTemplatesDocument, B
(B C
)C D
;D E
if 
( 
httpContext 
.  
Items  %
.% &
TryGetValue& 1
(1 2
$str2 O
,O P
outQ T
varU X
modelY ^
)^ _
)_ `
{ 
var 
	viewModel !
=" #
model$ )
as* ,
TemplateViewModel- >
;> ?
if 
( 
	viewModel !
==" $
null% )
||* ,
	viewModel- 6
.6 7
Name7 ;
==< >
null? C
)C D
{ 
return 
templatesDocument 0
;0 1
} 
var   
template    
=  ! "
new  # &
Template  ' /
{  0 1
Content  2 9
=  : ;
	viewModel  < E
.  E F
Content  F M
}  N O
;  O P
templatesDocument!! %
.!!% &
	Templates!!& /
.!!/ 0
Add!!0 3
(!!3 4
	viewModel!!4 =
.!!= >
Name!!> B
,!!B C
template!!D L
)!!L M
;!!M N
}"" 
return$$ 
templatesDocument$$ (
;$$( )
}%% 
)%% 
;%% 
}&& 	
public(( "
AdminTemplatesDocument(( %
GetTemplates((& 2
(((2 3
)((3 4
{)) 	
return** 
_templatesDocument** %
.**% &
Value**& +
;**+ ,
}++ 	
},, 
}-- Î
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Services\AdminTemplatesManager.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Services  (
{ 
public 

class !
AdminTemplatesManager &
{ 
private		 
readonly		 
IDocumentManager		 )
<		) *"
AdminTemplatesDocument		* @
>		@ A
_documentManager		B R
;		R S
public !
AdminTemplatesManager $
($ %
IDocumentManager% 5
<5 6"
AdminTemplatesDocument6 L
>L M
documentManagerN ]
)] ^
=>_ a
_documentManagerb r
=s t
documentManager	u Ñ
;
Ñ Ö
public 
Task 
< "
AdminTemplatesDocument *
>* +&
LoadTemplatesDocumentAsync, F
(F G
)G H
=>I K
_documentManagerL \
.\ ]#
GetOrCreateMutableAsync] t
(t u
)u v
;v w
public 
Task 
< "
AdminTemplatesDocument *
>* +%
GetTemplatesDocumentAsync, E
(E F
)F G
=>H J
_documentManagerK [
.[ \%
GetOrCreateImmutableAsync\ u
(u v
)v w
;w x
public 
async 
Task 
RemoveTemplateAsync -
(- .
string. 4
name5 9
)9 :
{ 	
var 
document 
= 
await  &
LoadTemplatesDocumentAsync! ;
(; <
)< =
;= >
document 
. 
	Templates 
. 
Remove %
(% &
name& *
)* +
;+ ,
await 
_documentManager "
." #
UpdateAsync# .
(. /
document/ 7
)7 8
;8 9
} 	
public 
async 
Task 
UpdateTemplateAsync -
(- .
string. 4
name5 9
,9 :
Template; C
templateD L
)L M
{ 	
var   
document   
=   
await    &
LoadTemplatesDocumentAsync  ! ;
(  ; <
)  < =
;  = >
document!! 
.!! 
	Templates!! 
[!! 
name!! #
]!!# $
=!!% &
template!!' /
;!!/ 0
await"" 
_documentManager"" "
.""" #
UpdateAsync""# .
("". /
document""/ 7
)""7 8
;""8 9
}## 	
}$$ 
}%% œ,
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Services\AdminTemplatesShapeBindingResolver.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Services  (
{ 
public 

class .
"AdminTemplatesShapeBindingResolver 3
:4 5!
IShapeBindingResolver6 K
{ 
private "
AdminTemplatesDocument &
_templatesDocument' 9
;9 :
private 
readonly !
AdminTemplatesManager .
_templatesManager/ @
;@ A
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly )
AdminPreviewTemplatesProvider 6%
_previewTemplatesProvider7 P
;P Q
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public .
"AdminTemplatesShapeBindingResolver 1
(1 2!
AdminTemplatesManager !
templatesManager" 2
,2 3"
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9)
AdminPreviewTemplatesProvider )$
previewTemplatesProvider* B
,B C 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
HtmlEncoder 
htmlEncoder #
)# $
{ 	
_templatesManager 
= 
templatesManager  0
;0 1"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;%
_previewTemplatesProvider %
=& '$
previewTemplatesProvider( @
;@ A 
_httpContextAccessor    
=  ! "
httpContextAccessor  # 6
;  6 7
_htmlEncoder!! 
=!! 
htmlEncoder!! &
;!!& '
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
ShapeBinding$$ &
>$$& ' 
GetShapeBindingAsync$$( <
($$< =
string$$= C
	shapeType$$D M
)$$M N
{%% 	
if&& 
(&& 
!&& 
AdminAttribute&& 
.&&  
	IsApplied&&  )
(&&) * 
_httpContextAccessor&&* >
.&&> ?
HttpContext&&? J
)&&J K
)&&K L
{'' 
return(( 
null(( 
;(( 
})) 
var++ 
localTemplates++ 
=++  %
_previewTemplatesProvider++! :
.++: ;
GetTemplates++; G
(++G H
)++H I
;++I J
if-- 
(-- 
localTemplates-- 
!=-- !
null--" &
)--& '
{.. 
if// 
(// 
localTemplates// "
.//" #
	Templates//# ,
.//, -
TryGetValue//- 8
(//8 9
	shapeType//9 B
,//B C
out//D G
var//H K
localTemplate//L Y
)//Y Z
)//Z [
{00 
return11 
BuildShapeBinding11 ,
(11, -
	shapeType11- 6
,116 7
localTemplate118 E
)11E F
;11F G
}22 
}33 
if55 
(55 
_templatesDocument55 "
==55# %
null55& *
)55* +
{66 
_templatesDocument77 "
=77# $
await77% *
_templatesManager77+ <
.77< =%
GetTemplatesDocumentAsync77= V
(77V W
)77W X
;77X Y
}88 
if:: 
(:: 
_templatesDocument:: "
.::" #
	Templates::# ,
.::, -
TryGetValue::- 8
(::8 9
	shapeType::9 B
,::B C
out::D G
var::H K
template::L T
)::T U
)::U V
{;; 
return<< 
BuildShapeBinding<< (
(<<( )
	shapeType<<) 2
,<<2 3
template<<4 <
)<<< =
;<<= >
}== 
else>> 
{?? 
return@@ 
null@@ 
;@@ 
}AA 
}BB 	
privateDD 
ShapeBindingDD 
BuildShapeBindingDD .
(DD. /
stringDD/ 5
	shapeTypeDD6 ?
,DD? @
TemplateDDA I
templateDDJ R
)DDR S
{EE 	
returnFF 
newFF 
ShapeBindingFF #
(FF# $
)FF$ %
{GG 
BindingNameHH 
=HH 
	shapeTypeHH '
,HH' (
BindingSourceII 
=II 
	shapeTypeII  )
,II) *
BindingAsyncJJ 
=JJ 
asyncJJ $
displayContextJJ% 3
=>JJ4 6
{KK 
varLL 
contentLL 
=LL  !
newLL" %'
ViewBufferTextWriterContentLL& A
(LLA B
)LLB C
;LLC D
awaitMM "
_liquidTemplateManagerMM 0
.MM0 1
RenderAsyncMM1 <
(MM< =
templateMM= E
.MME F
ContentMMF M
,MMM N
contentMMO V
,MMV W
_htmlEncoderMMX d
,MMd e
displayContextMMf t
.MMt u
ValueMMu z
)MMz {
;MM{ |
returnNN 
contentNN "
;NN" #
}OO 
}PP 
;PP 
}QQ 	
}RR 
}SS ñ
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Services\PreviewTemplatesProvider.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Services  (
{ 
public 

class $
PreviewTemplatesProvider )
{ 
private 
readonly 
Lazy 
< 
TemplatesDocument /
>/ 0
_templatesDocument1 C
;C D
public $
PreviewTemplatesProvider '
(' ( 
IHttpContextAccessor( <
httpContextAccessor= P
)P Q
{ 	
_templatesDocument 
=  
new! $
Lazy% )
<) *
TemplatesDocument* ;
>; <
(< =
(= >
)> ?
=>@ B
{ 
var 
httpContext 
=  !
httpContextAccessor" 5
.5 6
HttpContext6 A
;A B
var 
templatesDocument %
=& '
new( +
TemplatesDocument, =
(= >
)> ?
;? @
if 
( 
httpContext 
.  
Items  %
.% &
TryGetValue& 1
(1 2
$str2 O
,O P
outQ T
varU X
modelY ^
)^ _
)_ `
{ 
var 
	viewModel !
=" #
model$ )
as* ,
TemplateViewModel- >
;> ?
if 
( 
	viewModel !
==" $
null% )
||* ,
	viewModel- 6
.6 7
Name7 ;
==< >
null? C
)C D
{ 
return 
templatesDocument 0
;0 1
} 
var   
template    
=  ! "
new  # &
Template  ' /
{  0 1
Content  2 9
=  : ;
	viewModel  < E
.  E F
Content  F M
}  N O
;  O P
templatesDocument!! %
.!!% &
	Templates!!& /
.!!/ 0
Add!!0 3
(!!3 4
	viewModel!!4 =
.!!= >
Name!!> B
,!!B C
template!!D L
)!!L M
;!!M N
}"" 
return$$ 
templatesDocument$$ (
;$$( )
}%% 
)%% 
;%% 
}&& 	
public(( 
TemplatesDocument((  
GetTemplates((! -
(((- .
)((. /
{)) 	
return** 
_templatesDocument** %
.**% &
Value**& +
;**+ ,
}++ 	
},, 
}-- ≈
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Services\TemplatesManager.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Services  (
{ 
public 

class 
TemplatesManager !
{ 
private		 
readonly		 
IDocumentManager		 )
<		) *
TemplatesDocument		* ;
>		; <
_documentManager		= M
;		M N
public 
TemplatesManager 
(  
IDocumentManager  0
<0 1
TemplatesDocument1 B
>B C
documentManagerD S
)S T
=>U W
_documentManagerX h
=i j
documentManagerk z
;z {
public 
Task 
< 
TemplatesDocument %
>% &&
LoadTemplatesDocumentAsync' A
(A B
)B C
=>D F
_documentManagerG W
.W X#
GetOrCreateMutableAsyncX o
(o p
)p q
;q r
public 
Task 
< 
TemplatesDocument %
>% &%
GetTemplatesDocumentAsync' @
(@ A
)A B
=>C E
_documentManagerF V
.V W%
GetOrCreateImmutableAsyncW p
(p q
)q r
;r s
public 
async 
Task 
RemoveTemplateAsync -
(- .
string. 4
name5 9
)9 :
{ 	
var 
document 
= 
await  &
LoadTemplatesDocumentAsync! ;
(; <
)< =
;= >
document 
. 
	Templates 
. 
Remove %
(% &
name& *
)* +
;+ ,
await 
_documentManager "
." #
UpdateAsync# .
(. /
document/ 7
)7 8
;8 9
} 	
public 
async 
Task 
UpdateTemplateAsync -
(- .
string. 4
name5 9
,9 :
Template; C
templateD L
)L M
{ 	
var   
document   
=   
await    &
LoadTemplatesDocumentAsync  ! ;
(  ; <
)  < =
;  = >
document!! 
.!! 
	Templates!! 
[!! 
name!! #
]!!# $
=!!% &
template!!' /
;!!/ 0
await"" 
_documentManager"" "
.""" #
UpdateAsync""# .
("". /
document""/ 7
)""7 8
;""8 9
}## 	
}$$ 
}%% ò,
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Services\TemplatesShapeBindingResolver.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Services  (
{ 
public 

class )
TemplatesShapeBindingResolver .
:/ 0!
IShapeBindingResolver1 F
{ 
private 
TemplatesDocument !
_templatesDocument" 4
;4 5
private 
readonly 
TemplatesManager )
_templatesManager* ;
;; <
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly $
PreviewTemplatesProvider 1%
_previewTemplatesProvider2 K
;K L
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public )
TemplatesShapeBindingResolver ,
(, -
TemplatesManager 
templatesManager -
,- ."
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9$
PreviewTemplatesProvider $$
previewTemplatesProvider% =
,= > 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
HtmlEncoder 
htmlEncoder #
)# $
{ 	
_templatesManager 
= 
templatesManager  0
;0 1"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;%
_previewTemplatesProvider %
=& '$
previewTemplatesProvider( @
;@ A 
_httpContextAccessor    
=  ! "
httpContextAccessor  # 6
;  6 7
_htmlEncoder!! 
=!! 
htmlEncoder!! &
;!!& '
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
ShapeBinding$$ &
>$$& ' 
GetShapeBindingAsync$$( <
($$< =
string$$= C
	shapeType$$D M
)$$M N
{%% 	
if&& 
(&& 
AdminAttribute&& 
.&& 
	IsApplied&& (
(&&( ) 
_httpContextAccessor&&) =
.&&= >
HttpContext&&> I
)&&I J
)&&J K
{'' 
return(( 
null(( 
;(( 
})) 
var++ 
localTemplates++ 
=++  %
_previewTemplatesProvider++! :
.++: ;
GetTemplates++; G
(++G H
)++H I
;++I J
if-- 
(-- 
localTemplates-- 
!=-- !
null--" &
)--& '
{.. 
if// 
(// 
localTemplates// "
.//" #
	Templates//# ,
.//, -
TryGetValue//- 8
(//8 9
	shapeType//9 B
,//B C
out//D G
var//H K
localTemplate//L Y
)//Y Z
)//Z [
{00 
return11 
BuildShapeBinding11 ,
(11, -
	shapeType11- 6
,116 7
localTemplate118 E
)11E F
;11F G
}22 
}33 
if55 
(55 
_templatesDocument55 "
==55# %
null55& *
)55* +
{66 
_templatesDocument77 "
=77# $
await77% *
_templatesManager77+ <
.77< =%
GetTemplatesDocumentAsync77= V
(77V W
)77W X
;77X Y
}88 
if:: 
(:: 
_templatesDocument:: "
.::" #
	Templates::# ,
.::, -
TryGetValue::- 8
(::8 9
	shapeType::9 B
,::B C
out::D G
var::H K
template::L T
)::T U
)::U V
{;; 
return<< 
BuildShapeBinding<< (
(<<( )
	shapeType<<) 2
,<<2 3
template<<4 <
)<<< =
;<<= >
}== 
else>> 
{?? 
return@@ 
null@@ 
;@@ 
}AA 
}BB 	
privateDD 
ShapeBindingDD 
BuildShapeBindingDD .
(DD. /
stringDD/ 5
	shapeTypeDD6 ?
,DD? @
TemplateDDA I
templateDDJ R
)DDR S
{EE 	
returnFF 
newFF 
ShapeBindingFF #
(FF# $
)FF$ %
{GG 
BindingNameHH 
=HH 
	shapeTypeHH '
,HH' (
BindingSourceII 
=II 
	shapeTypeII  )
,II) *
BindingAsyncJJ 
=JJ 
asyncJJ $
displayContextJJ% 3
=>JJ4 6
{KK 
varLL 
contentLL 
=LL  !
newLL" %'
ViewBufferTextWriterContentLL& A
(LLA B
)LLB C
;LLC D
awaitMM "
_liquidTemplateManagerMM 0
.MM0 1
RenderAsyncMM1 <
(MM< =
templateMM= E
.MME F
ContentMMF M
,MMM N
contentMMO V
,MMV W
_htmlEncoderMMX d
,MMd e
displayContextMMf t
.MMt u
ValueMMu z
)MMz {
;MM{ |
returnNN 
contentNN "
;NN" #
}OO 
}PP 
;PP 
}QQ 	
}RR 
}SS ç
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Settings\TemplateContentPartDefinitionDriver.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Settings  (
{		 
public

 

class

 /
#TemplateContentPartDefinitionDriver

 4
:

5 6.
"ContentPartDefinitionDisplayDriver

7 Y
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public /
#TemplateContentPartDefinitionDriver 2
(2 3
IStringLocalizer3 C
<C D/
#TemplateContentPartDefinitionDriverD g
>g h
	localizeri r
)r s
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,!
ContentPartDefinition, A!
contentPartDefinitionB W
)W X
{ 	
return 

Initialize 
< $
ContentSettingsViewModel 6
>6 7
(7 8
$str8 J
,J K
modelL Q
=>R T
{ 
model 
. "
ContentSettingsEntries ,
., -
Add- 0
(0 1
new  
ContentSettingsEntry ,
{ 
Key 
= !
contentPartDefinition 3
.3 4
Name4 8
,8 9
Description #
=$ %
S& '
[' (
$str( Q
,Q R!
contentPartDefinitionS h
.h i
DisplayNamei t
(t u
)u v
]v w
} 
) 
; 
model 
. "
ContentSettingsEntries ,
., -
Add- 0
(0 1
new  
ContentSettingsEntry ,
{   
Key!! 
=!! 
$"!!  
{!!  !!
contentPartDefinition!!! 6
.!!6 7
Name!!7 ;
}!!; <
_Summary!!< D
"!!D E
,!!E F
Description"" #
=""$ %
S""& '
[""' (
$str""( R
,""R S!
contentPartDefinition""T i
.""i j
DisplayName""j u
(""u v
)""v w
]""w x
}## 
)## 
;## 
}$$ 
)$$ 
.$$ 
Location$$ 
($$ 
$str$$ #
)$$# $
;$$$ %
}%% 	
}&& 
}'' Ø
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Settings\TemplateContentTypeDefinitionDriver.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Settings  (
{		 
public

 

class

 /
#TemplateContentTypeDefinitionDriver

 4
:

5 6.
"ContentTypeDefinitionDisplayDriver

7 Y
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public /
#TemplateContentTypeDefinitionDriver 2
(2 3
IStringLocalizer3 C
<C D/
#TemplateContentTypeDefinitionDriverD g
>g h
	localizeri r
)r s
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,!
ContentTypeDefinition, A!
contentTypeDefinitionB W
)W X
{ 	
return 

Initialize 
< $
ContentSettingsViewModel 6
>6 7
(7 8
$str8 J
,J K
modelL Q
=>R T
{ 
var 

stereotype 
=  !
contentTypeDefinition! 6
.6 7
GetSettings7 B
<B C
ContentTypeSettingsC V
>V W
(W X
)X Y
.Y Z

StereotypeZ d
;d e
if 
( 
string 
. 
IsNullOrWhiteSpace -
(- .

stereotype. 8
)8 9
)9 :
{ 

stereotype 
=  
$str! *
;* +
} 
model 
. "
ContentSettingsEntries ,
., -
Add- 0
(0 1
new  
ContentSettingsEntry ,
{   
Key!! 
=!! 
$"!!  
{!!  !

stereotype!!! +
}!!+ ,
__!!, .
{!!. /!
contentTypeDefinition!!/ D
.!!D E
Name!!E I
}!!I J
"!!J K
,!!K L
Description"" #
=""$ %
S""& '
[""' (
$str""( Y
,""Y Z!
contentTypeDefinition""[ p
.""p q
DisplayName""q |
]""| }
}## 
)## 
;## 
model%% 
.%% "
ContentSettingsEntries%% ,
.%%, -
Add%%- 0
(%%0 1
new&&  
ContentSettingsEntry&& ,
{'' 
Key(( 
=(( 
$"((  
{((  !

stereotype((! +
}((+ ,

_Summary__((, 6
{((6 7!
contentTypeDefinition((7 L
.((L M
Name((M Q
}((Q R
"((R S
,((S T
Description)) #
=))$ %
S))& '
[))' (
$str))( Z
,))Z [!
contentTypeDefinition))\ q
.))q r
DisplayName))r }
]))} ~
}** 
)** 
;** 
}++ 
)++ 
.++ 
Location++ 
(++ 
$str++ #
)++# $
;++$ %
},, 	
}-- 
}.. È
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Settings\TemplateContentTypePartDefinitionDriver.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  
Settings  (
{ 
public		 

class		 3
'TemplateContentTypePartDefinitionDriver		 8
:		9 :2
&ContentTypePartDefinitionDisplayDriver		; a
{

 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 3
'TemplateContentTypePartDefinitionDriver 6
(6 7
IStringLocalizer7 G
<G H3
'TemplateContentTypePartDefinitionDriverH o
>o p
	localizerq z
)z {
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
)_ `
{ 	
return 

Initialize 
< $
ContentSettingsViewModel 6
>6 7
(7 8
$str8 J
,J K
modelL Q
=>R T
{ 
var 
contentType 
=  !%
contentTypePartDefinition" ;
.; <!
ContentTypeDefinition< Q
.Q R
NameR V
;V W
var 
partName 
= %
contentTypePartDefinition 8
.8 9
Name9 =
;= >
model 
. "
ContentSettingsEntries ,
., -
Add- 0
(0 1
new  
ContentSettingsEntry ,
{ 
Key 
= 
$"  
{  !
contentType! ,
}, -
__- /
{/ 0
partName0 8
}8 9
"9 :
,: ;
Description #
=$ %
S& '
[' (
$str( a
,a b
partNamec k
,k l&
contentTypePartDefinition	m Ü
.
Ü á#
ContentTypeDefinition
á ú
.
ú ù
DisplayName
ù ®
]
® ©
} 
) 
; 
model   
.   "
ContentSettingsEntries   ,
.  , -
Add  - 0
(  0 1
new!!  
ContentSettingsEntry!! ,
{"" 
Key## 
=## 
$"##  
{##  !
contentType##! ,
}##, -

_Summary__##- 7
{##7 8
partName##8 @
}##@ A
"##A B
,##B C
Description$$ #
=$$$ %
S$$& '
[$$' (
$str$$( b
,$$b c
partName$$d l
,$$l m&
contentTypePartDefinition	$$n á
.
$$á à#
ContentTypeDefinition
$$à ù
.
$$ù û
DisplayName
$$û ©
]
$$© ™
}%% 
)%% 
;%% 
}&& 
)&& 
.&& 
Location&& 
(&& 
$str&& #
)&&# $
;&&$ %
}'' 	
}(( 
})) „Z
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\Startup.cs
	namespace 	
OrchardCore
 
. 
	Templates 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
}   	
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
.$$ 
	AddScoped$$ 
<$$ %
IResourceManifestProvider$$ 8
,$$8 9
ResourceManifest$$: J
>$$J K
($$K L
)$$L M
;$$M N
services&& 
.&& 
	AddScoped&& 
<&& !
IShapeBindingResolver&& 4
,&&4 5)
TemplatesShapeBindingResolver&&6 S
>&&S T
(&&T U
)&&U V
;&&V W
services'' 
.'' 
	AddScoped'' 
<'' $
PreviewTemplatesProvider'' 7
>''7 8
(''8 9
)''9 :
;'': ;
services(( 
.(( 
	AddScoped(( 
<(( 
TemplatesManager(( /
>((/ 0
(((0 1
)((1 2
;((2 3
services)) 
.)) 
	AddScoped)) 
<)) 
IPermissionProvider)) 2
,))2 3
Permissions))4 ?
>))? @
())@ A
)))A B
;))B C
services** 
.** 
	AddScoped** 
<** 
INavigationProvider** 2
,**2 3
	AdminMenu**4 =
>**= >
(**> ?
)**? @
;**@ A
services++ 
.++ "
AddRecipeExecutionStep++ +
<+++ ,
TemplateStep++, 8
>++8 9
(++9 :
)++: ;
;++; <
services.. 
... 
	AddScoped.. 
<.. /
#IContentPartDefinitionDisplayDriver.. B
,..B C/
#TemplateContentPartDefinitionDriver..D g
>..g h
(..h i
)..i j
;..j k
services// 
.// 
	AddScoped// 
<// /
#IContentTypeDefinitionDisplayDriver// B
,//B C/
#TemplateContentTypeDefinitionDriver//D g
>//g h
(//h i
)//i j
;//j k
services00 
.00 
	AddScoped00 
<00 3
'IContentTypePartDefinitionDisplayDriver00 F
,00F G3
'TemplateContentTypePartDefinitionDriver00H o
>00o p
(00p q
)00q r
;00r s
services22 
.22 
AddTransient22 !
<22! "
IDeploymentSource22" 3
,223 4(
AllTemplatesDeploymentSource225 Q
>22Q R
(22R S
)22S T
;22T U
services33 
.33 
AddSingleton33 !
<33! ""
IDeploymentStepFactory33" 8
>338 9
(339 :
new33: =!
DeploymentStepFactory33> S
<33S T&
AllTemplatesDeploymentStep33T n
>33n o
(33o p
)33p q
)33q r
;33r s
services44 
.44 
	AddScoped44 
<44 
IDisplayDriver44 -
<44- .
DeploymentStep44. <
>44< =
,44= >,
 AllTemplatesDeploymentStepDriver44? _
>44_ `
(44` a
)44a b
;44b c
services66 
.66 
	AddScoped66 
<66 !
AdminTemplatesManager66 4
>664 5
(665 6
)666 7
;667 8
services77 
.77 
	AddScoped77 
<77 
IPermissionProvider77 2
,772 3%
AdminTemplatesPermissions774 M
>77M N
(77N O
)77O P
;77P Q
}88 	
public:: 
override:: 
void:: 
	Configure:: &
(::& '
IApplicationBuilder::' :
builder::; B
,::B C!
IEndpointRouteBuilder::D Y
routes::Z `
,::` a
IServiceProvider::b r
serviceProvider	::s Ç
)
::Ç É
{;; 	
var<< "
templateControllerName<< &
=<<' (
typeof<<) /
(<</ 0
TemplateController<<0 B
)<<B C
.<<C D
ControllerName<<D R
(<<R S
)<<S T
;<<T U
routes>> 
.>> "
MapAreaControllerRoute>> )
(>>) *
name?? 
:?? 
$str?? '
,??' (
areaName@@ 
:@@ 
$str@@ 1
,@@1 2
patternAA 
:AA 
_adminOptionsAA &
.AA& '
AdminUrlPrefixAA' 5
+AA6 7
$strAA8 D
,AAD E
defaultsBB 
:BB 
newBB 
{BB 

controllerBB  *
=BB+ ,"
templateControllerNameBB- C
,BBC D
actionBBE K
=BBL M
nameofBBN T
(BBT U
TemplateControllerBBU g
.BBg h
IndexBBh m
)BBm n
}BBo p
)CC 
;CC 
routesEE 
.EE "
MapAreaControllerRouteEE )
(EE) *
nameFF 
:FF 
$strFF '
,FF' (
areaNameGG 
:GG 
$strGG 1
,GG1 2
patternHH 
:HH 
_adminOptionsHH &
.HH& '
AdminUrlPrefixHH' 5
+HH6 7
$strHH8 J
,HHJ K
defaultsII 
:II 
newII 
{II 

controllerII  *
=II+ ,"
templateControllerNameII- C
,IIC D
actionIIE K
=IIL M
nameofIIN T
(IIT U
TemplateControllerIIU g
.IIg h
AdminIIh m
)IIm n
}IIo p
)JJ 
;JJ 
routesLL 
.LL "
MapAreaControllerRouteLL )
(LL) *
nameMM 
:MM 
$strMM (
,MM( )
areaNameNN 
:NN 
$strNN 1
,NN1 2
patternOO 
:OO 
_adminOptionsOO &
.OO& '
AdminUrlPrefixOO' 5
+OO6 7
$strOO8 K
,OOK L
defaultsPP 
:PP 
newPP 
{PP 

controllerPP  *
=PP+ ,"
templateControllerNamePP- C
,PPC D
actionPPE K
=PPL M
nameofPPN T
(PPT U
TemplateControllerPPU g
.PPg h
CreatePPh n
)PPn o
}PPp q
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
$strUU 1
,UU1 2
patternVV 
:VV 
_adminOptionsVV &
.VV& '
AdminUrlPrefixVV' 5
+VV6 7
$strVV8 P
,VVP Q
defaultsWW 
:WW 
newWW 
{WW 

controllerWW  *
=WW+ ,"
templateControllerNameWW- C
,WWC D
actionWWE K
=WWL M
nameofWWN T
(WWT U
TemplateControllerWWU g
.WWg h
EditWWh l
)WWl m
}WWn o
)XX 
;XX 
}YY 	
}ZZ 
[\\ 
Feature\\ 
(\\ 
$str\\ )
)\\) *
]\\* +
public]] 

class]] !
AdminTemplatesStartup]] &
:]]' (
StartupBase]]) 4
{^^ 
private__ 
readonly__ 
AdminOptions__ %
_adminOptions__& 3
;__3 4
publicaa !
AdminTemplatesStartupaa $
(aa$ %
IOptionsaa% -
<aa- .
AdminOptionsaa. :
>aa: ;
adminOptionsaa< H
)aaH I
{bb 	
_adminOptionscc 
=cc 
adminOptionscc (
.cc( )
Valuecc) .
;cc. /
}dd 	
publicff 
overrideff 
voidff 
ConfigureServicesff .
(ff. /
IServiceCollectionff/ A
servicesffB J
)ffJ K
{gg 	
serviceshh 
.hh 
	AddScopedhh 
<hh !
IShapeBindingResolverhh 4
,hh4 5.
"AdminTemplatesShapeBindingResolverhh6 X
>hhX Y
(hhY Z
)hhZ [
;hh[ \
servicesii 
.ii 
	AddScopedii 
<ii )
AdminPreviewTemplatesProviderii <
>ii< =
(ii= >
)ii> ?
;ii? @
servicesjj 
.jj 
	AddScopedjj 
<jj 
INavigationProviderjj 2
,jj2 3#
AdminTemplatesAdminMenujj4 K
>jjK L
(jjL M
)jjM N
;jjN O
serviceskk 
.kk "
AddRecipeExecutionStepkk +
<kk+ ,
AdminTemplateStepkk, =
>kk= >
(kk> ?
)kk? @
;kk@ A
servicesmm 
.mm 
AddTransientmm !
<mm! "
IDeploymentSourcemm" 3
,mm3 4-
!AllAdminTemplatesDeploymentSourcemm5 V
>mmV W
(mmW X
)mmX Y
;mmY Z
servicesnn 
.nn 
AddSingletonnn !
<nn! ""
IDeploymentStepFactorynn" 8
>nn8 9
(nn9 :
newnn: =!
DeploymentStepFactorynn> S
<nnS T+
AllAdminTemplatesDeploymentStepnnT s
>nns t
(nnt u
)nnu v
)nnv w
;nnw x
servicesoo 
.oo 
	AddScopedoo 
<oo 
IDisplayDriveroo -
<oo- .
DeploymentStepoo. <
>oo< =
,oo= >1
%AllAdminTemplatesDeploymentStepDriveroo? d
>ood e
(ooe f
)oof g
;oog h
}pp 	
publicrr 
overriderr 
voidrr 
	Configurerr &
(rr& '
IApplicationBuilderrr' :
builderrr; B
,rrB C!
IEndpointRouteBuilderrrD Y
routesrrZ `
,rr` a
IServiceProviderrrb r
serviceProvider	rrs Ç
)
rrÇ É
{ss 	
routestt 
.tt "
MapAreaControllerRoutett )
(tt) *
nameuu 
:uu 
$struu '
,uu' (
areaNamevv 
:vv 
$strvv 1
,vv1 2
patternww 
:ww 
_adminOptionsww &
.ww& '
AdminUrlPrefixww' 5
+ww6 7
$strww8 J
,wwJ K
defaultsxx 
:xx 
newxx 
{xx 

controllerxx  *
=xx+ ,
typeofxx- 3
(xx3 4
TemplateControllerxx4 F
)xxF G
.xxG H
ControllerNamexxH V
(xxV W
)xxW X
,xxX Y
actionxxZ `
=xxa b
nameofxxc i
(xxi j
TemplateControllerxxj |
.xx| }
Admin	xx} Ç
)
xxÇ É
}
xxÑ Ö
)yy 
;yy 
}zz 	
}{{ 
}|| Ã	
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\ViewModels\ContentSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

ViewModels  *
{ 
public 

class $
ContentSettingsViewModel )
{ 
public 
List 
<  
ContentSettingsEntry (
>( )"
ContentSettingsEntries* @
{A B
getC F
;F G
setH K
;K L
}M N
=O P
newQ T
ListU Y
<Y Z 
ContentSettingsEntryZ n
>n o
(o p
)p q
;q r
}		 
public 

class  
ContentSettingsEntry %
{ 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
LocalizedString 
Description *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ∏
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\ViewModels\TemplateIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

ViewModels  *
{ 
public 

class "
TemplateIndexViewModel '
{		 
public

 
IList

 
<

 
TemplateEntry

 "
>

" #
	Templates

$ -
{

. /
get

0 3
;

3 4
set

5 8
;

8 9
}

: ;
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
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
} 
public 

class 
TemplateEntry 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
Template 
Template  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class 
ContentOptions 
{ 
public 
bool 
AdminTemplates "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
public 
ContentsBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
ContentsBulkAction$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
}"" 
public$$ 

enum$$ 
ContentsBulkAction$$ "
{%% 
None&& 
,&& 
Remove'' 
}(( 
})) É
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Templates\ViewModels\TemplateViewModel.cs
	namespace 	
OrchardCore
 
. 
	Templates 
.  

ViewModels  *
{ 
public 

class 
TemplateViewModel "
{ 
public 
bool 
AdminTemplates "
{# $
get% (
;( )
set* -
;- .
}/ 0
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
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 