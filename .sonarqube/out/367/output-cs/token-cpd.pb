ä
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminAreaControllerRouteMapper.cs
	namespace 	
OrchardCore
 
. 
Admin 
{		 
public

 

class

 *
AdminAreaControllerRouteMapper

 /
:

0 1&
IAreaControllerRouteMapper

2 L
{ 
private 
readonly 
string 
_defaultAreaPattern  3
;3 4
public 
int 
Order 
=> 
- 
$num !
;! "
public *
AdminAreaControllerRouteMapper -
(- .
IOptions. 6
<6 7
AdminOptions7 C
>C D
adminOptionsE Q
)Q R
{ 	
_defaultAreaPattern 
=  !
adminOptions" .
.. /
Value/ 4
.4 5
AdminUrlPrefix5 C
+D E
$strF k
;k l
} 	
public 
bool %
TryMapAreaControllerRoute -
(- .!
IEndpointRouteBuilder. C
routesD J
,J K&
ControllerActionDescriptorL f

descriptorg q
)q r
{ 	
if 
( 

descriptor 
. 
ControllerName )
==* ,
$str- 4
||5 7

descriptor 
. 
ControllerTypeInfo -
.- .
GetCustomAttribute. @
<@ A
AdminAttributeA O
>O P
(P Q
)Q R
!=S U
nullV Z
||[ ]

descriptor 
. 

MethodInfo %
.% &
GetCustomAttribute& 8
<8 9
AdminAttribute9 G
>G H
(H I
)I J
!=K M
nullN R
) 
{ 
routes 
. "
MapAreaControllerRoute -
(- .
name 
: 

descriptor $
.$ %
DisplayName% 0
,0 1
areaName 
: 

descriptor (
.( )
RouteValues) 4
[4 5
$str5 ;
]; <
,< =
pattern 
: 
_defaultAreaPattern 0
.0 1
Replace1 8
(8 9
$str9 C
,C D

descriptorE O
.O P

ActionNameP Z
)Z [
,[ \
defaults   
:   
new   !
{  " #

controller  $ .
=  / 0

descriptor  1 ;
.  ; <
ControllerName  < J
,  J K
action  L R
=  S T

descriptor  U _
.  _ `

ActionName  ` j
}  k l
)!! 
;!! 
return## 
true## 
;## 
}$$ 
return&& 
false&& 
;&& 
}'' 	
}(( 
})) ˛%
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminFilter.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class 
AdminFilter 
: !
ActionFilterAttribute 4
,4 5
IAsyncPageFilter6 F
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public 
AdminFilter 
( !
IAuthorizationService 0 
authorizationService1 E
)E F
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
async 
Task ""
OnActionExecutionAsync# 9
(9 :"
ActionExecutingContext: P
contextQ X
,X Y#
ActionExecutionDelegateZ q
nextr v
)v w
{ 	
if 
( 
context 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
context7 >
)> ?
)? @
;@ A
} 
if 
( 
! 
await 
AuthorizeAsync %
(% &
context& -
.- .
HttpContext. 9
)9 :
): ;
{ 
context 
. 
Result 
=  
context! (
.( )
HttpContext) 4
.4 5
User5 9
.9 :
Identity: B
.B C
IsAuthenticatedC R
?S T
(U V
IActionResultV c
)c d
newd g
ForbidResulth t
(t u
)u v
:w x
(y z
IActionResult	z á
)
á à
new
à ã
ChallengeResult
å õ
(
õ ú
)
ú ù
;
ù û
return   
;   
}!! 
await## 
base## 
.## "
OnActionExecutionAsync## -
(##- .
context##. 5
,##5 6
next##7 ;
)##; <
;##< =
}$$ 	
public&& 
async&& 
Task&& '
OnPageHandlerExecutionAsync&& 5
(&&5 6'
PageHandlerExecutingContext&&6 Q
context&&R Y
,&&Y Z(
PageHandlerExecutionDelegate&&[ w
next&&x |
)&&| }
{'' 	
if(( 
((( 
context(( 
==(( 
null(( 
)((  
{)) 
throw** 
new** !
ArgumentNullException** /
(**/ 0
nameof**0 6
(**6 7
context**7 >
)**> ?
)**? @
;**@ A
}++ 
if-- 
(-- 
!-- 
await-- 
AuthorizeAsync-- %
(--% &
context--& -
.--- .
HttpContext--. 9
)--9 :
)--: ;
{.. 
context// 
.// 
Result// 
=//  
new//! $
ChallengeResult//% 4
(//4 5
)//5 6
;//6 7
return00 
;00 
}11 
await44 
next44 
.44 
Invoke44 
(44 
)44 
;44  
}55 	
public77 
Task77 '
OnPageHandlerSelectionAsync77 /
(77/ 0&
PageHandlerSelectedContext770 J
context77K R
)77R S
{88 	
return99 
Task99 
.99 
CompletedTask99 %
;99% &
}:: 	
private<< 
Task<< 
<<< 
bool<< 
><< 
AuthorizeAsync<< )
(<<) *
	Microsoft<<* 3
.<<3 4

AspNetCore<<4 >
.<<> ?
Http<<? C
.<<C D
HttpContext<<D O
context<<P W
)<<W X
{== 	
if>> 
(>> 
AdminAttribute>> 
.>> 
	IsApplied>> (
(>>( )
context>>) 0
)>>0 1
)>>1 2
{?? 
return@@ !
_authorizationService@@ ,
.@@, -
AuthorizeAsync@@- ;
(@@; <
context@@< C
.@@C D
User@@D H
,@@H I
Permissions@@J U
.@@U V
AccessAdminPanel@@V f
)@@f g
;@@g h
}AA 
returnCC 
TaskCC 
.CC 

FromResultCC "
(CC" #
trueCC# '
)CC' (
;CC( )
}DD 	
}EE 
}FF ◊
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Admin 
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
$str &
]& '
,' (
design) /
=>0 2
design3 9
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
$str &
]& '
,' (
S) *
[* +
$str+ 2
]2 3
.3 4
PrefixPosition4 B
(B C
)C D
,D E
adminF K
=>L N
adminO T
. 
AddClass !
(! "
$str" )
)) *
.* +
Id+ -
(- .
$str. 5
)5 6
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
AdminSiteSettingsDisplayDriver	e É
.
É Ñ
GroupId
Ñ ã
}
å ç
)
ç é
. 

Permission '
(' ($
PermissionsAdminSettings( @
.@ A
ManageAdminSettingsA T
)T U
.   
LocalNav   %
(  % &
)  & '
)!! 
)"" 
)"" 
;"" 
return$$ 
Task$$ 
.$$ 
CompletedTask$$ %
;$$% &
}%% 	
}&& 
}'' ˆ#
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminMenuFilter.cs
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
Admin

 
{ 
public 

class 
AdminMenuFilter  
:! "
IAsyncResultFilter# 5
{ 
private 
readonly 
ILayoutAccessor (
_layoutAccessor) 8
;8 9
private 
readonly 
IShapeFactory &
_shapeFactory' 4
;4 5
public 
AdminMenuFilter 
( 
ILayoutAccessor .
layoutAccessor/ =
,= >
IShapeFactory 
shapeFactory &
)& '
{ 	
_layoutAccessor 
= 
layoutAccessor ,
;, -
_shapeFactory 
= 
shapeFactory (
;( )
} 	
public 
async 
Task "
OnResultExecutionAsync 0
(0 1"
ResultExecutingContext1 G
filterContextH U
,U V#
ResultExecutionDelegateW n
nexto s
)s t
{ 	
if 
( 
! 
( 
filterContext 
.  
Result  &
is' )

ViewResult* 4
)4 5
&&6 8
!9 :
(: ;
filterContext; H
.H I
ResultI O
isP R

PageResultS ]
)] ^
)^ _
{   
await!! 
next!! 
(!! 
)!! 
;!! 
return"" 
;"" 
}## 
if&& 
(&& 
!&& 
AdminAttribute&& 
.&&  
	IsApplied&&  )
(&&) *
filterContext&&* 7
.&&7 8
HttpContext&&8 C
)&&C D
)&&D E
{'' 
await(( 
next(( 
((( 
)(( 
;(( 
return)) 
;)) 
}** 
if-- 
(-- 
!-- 
filterContext-- 
.-- 
HttpContext-- *
.--* +
User--+ /
.--/ 0
Identity--0 8
.--8 9
IsAuthenticated--9 H
)--H I
{.. 
await// 
next// 
(// 
)// 
;// 
return00 
;00 
}11 
var44 

statusCode44 
=44 
filterContext44 *
.44* +
HttpContext44+ 6
.446 7
Response447 ?
.44? @

StatusCode44@ J
;44J K
if55 
(55 

statusCode55 
>=55 
$num55 !
&&55" $

statusCode55% /
<550 1
$num552 5
)555 6
{66 
await77 
next77 
(77 
)77 
;77 
return88 
;88 
}99 
var<< 
	menuShape<< 
=<< 
await<< !
_shapeFactory<<" /
.<</ 0
CreateAsync<<0 ;
(<<; <
$str<<< H
,<<H I
	Arguments== 
.== 
From== 
(== 
new== "
{>> 
MenuName?? 
=?? 
$str?? &
,??& '
	RouteData@@ 
=@@ 
filterContext@@  -
.@@- .
	RouteData@@. 7
,@@7 8
}AA 
)AA 
)AA 
;AA 
dynamicCC 
layoutCC 
=CC 
awaitCC "
_layoutAccessorCC# 2
.CC2 3
GetLayoutAsyncCC3 A
(CCA B
)CCB C
;CCC D
ifEE 
(EE 
layoutEE 
.EE 

NavigationEE !
isEE" $
ZoneOnDemandEE% 1
zoneOnDemandEE2 >
)EE> ?
{FF 
awaitGG 
zoneOnDemandGG "
.GG" #
AddAsyncGG# +
(GG+ ,
	menuShapeGG, 5
)GG5 6
;GG6 7
}HH 
elseII 
ifII 
(II 
layoutII 
.II 

NavigationII &
isII' )
ShapeII* /
shapeII0 5
)II5 6
{JJ 
shapeKK 
.KK 
AddKK 
(KK 
	menuShapeKK #
)KK# $
;KK$ %
}LL 
awaitNN 
nextNN 
(NN 
)NN 
;NN 
}OO 	
}PP 
}QQ …
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminPageRouteModelConvention.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class )
AdminPageRouteModelConvention .
:/ 0%
IPageRouteModelConvention1 J
{ 
private 
readonly 
string #
_adminUrlPrefixTemplate  7
;7 8
public

 )
AdminPageRouteModelConvention

 ,
(

, -
string

- 3
adminUrlPrefix

4 B
)

B C
{ 	#
_adminUrlPrefixTemplate #
=$ %
adminUrlPrefix& 4
;4 5
} 	
public 
void 
Apply 
( 
PageRouteModel (
model) .
). /
{ 	
var 
route 
= 
model 
. 
	Selectors '
.' (
FirstOrDefault( 6
(6 7
)7 8
?8 9
.9 :
AttributeRouteModel: M
;M N
if 
( 
route 
== 
null 
) 
{ 
return 
; 
} 
if 
( 
! 
route 
. 
Template 
.  

StartsWith  *
(* +
model+ 0
.0 1
AreaName1 9
)9 :
): ;
{ 
return 
; 
} 
if 
( 
route 
. 
Template 
. 
Contains '
(' (
$str( 1
)1 2
||3 5
model6 ;
.; <

Properties< F
.F G
ContainsKeyG R
(R S
$strS Z
)Z [
)[ \
{ 
route 
. 
Template 
=  
AttributeRouteModel! 4
.4 5
CombineTemplates5 E
(E F#
_adminUrlPrefixTemplateF ]
,] ^
route_ d
.d e
Templatee m
)m n
;n o
}   
}!! 	
}"" 
}## ˝@
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminPageRouteModelProvider.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
internal 
class '
AdminPageRouteModelProvider .
:/ 0#
IPageRouteModelProvider1 H
{ 
private 
static 
readonly 
string  &!
RazorPageDocumentKind' <
== >
$str? S
;S T
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly "
ApplicationPartManager /
_applicationManager0 C
;C D
public '
AdminPageRouteModelProvider *
(* +
IHostEnvironment+ ;
hostingEnvironment< N
,N O"
ApplicationPartManagerP f
applicationManagerg y
)y z
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
_applicationManager 
=  !
applicationManager" 4
;4 5
} 	
public 
int 
Order 
=> 
$num  
;  !
public 
void  
OnProvidersExecuting (
(( ))
PageRouteModelProviderContext) F
contextG N
)N O
{ 	
if 
( 
context 
== 
null 
)  
{   
throw!! 
new!! !
ArgumentNullException!! /
(!!/ 0
nameof!!0 6
(!!6 7
context!!7 >
)!!> ?
)!!? @
;!!@ A
}"" 
IEnumerable$$ 
<$$ "
CompiledViewDescriptor$$ .
>$$. /
descriptors$$0 ;
;$$; <
var&& 
refsFolderExists&&  
=&&! "
	Directory&&# ,
.&&, -
Exists&&- 3
(&&3 4
Path&&4 8
.&&8 9
Combine&&9 @
(&&@ A
	AppDomain&&A J
.&&J K
CurrentDomain&&K X
.&&X Y
BaseDirectory&&Y f
,&&f g
$str&&h n
)&&n o
)&&o p
;&&p q
if(( 
((( 
_hostingEnvironment(( #
.((# $
IsDevelopment(($ 1
(((1 2
)((2 3
&&((4 6
refsFolderExists((7 G
)((G H
{)) 
descriptors** 
=** 
GetPageDescriptors** 0
<**0 1#
DevelopmentViewsFeature**1 H
>**H I
(**I J
_applicationManager**J ]
)**] ^
;**^ _
}++ 
else,, 
{-- 
descriptors.. 
=.. 
GetPageDescriptors.. 0
<..0 1
ViewsFeature..1 =
>..= >
(..> ?
_applicationManager..? R
)..R S
;..S T
}// 
var11 

adminPaths11 
=11 
new11  
HashSet11! (
<11( )
string11) /
>11/ 0
(110 1
StringComparer111 ?
.11? @
OrdinalIgnoreCase11@ Q
)11Q R
;11R S
foreach33 
(33 
var33 

descriptor33 #
in33$ &
descriptors33' 2
)332 3
{44 
foreach55 
(55 
var55 
type55 !
in55" $

descriptor55% /
.55/ 0
Type550 4
.554 5
GetNestedTypes555 C
(55C D
)55D E
)55E F
{66 
var77 
	attribute77 !
=77" #
type77$ (
.77( )
GetCustomAttribute77) ;
<77; <
AdminAttribute77< J
>77J K
(77K L
)77L M
;77M N
if99 
(99 
	attribute99 !
!=99" $
null99% )
)99) *
{:: 

adminPaths;; "
.;;" #
Add;;# &
(;;& '

descriptor;;' 1
.;;1 2
RelativePath;;2 >
);;> ?
;;;? @
break<< 
;<< 
}== 
}>> 
}?? 
foreachAA 
(AA 
varAA 
modelAA 
inAA !
contextAA" )
.AA) *
RouteModelsAA* 5
.AA5 6
ToArrayAA6 =
(AA= >
)AA> ?
)AA? @
{BB 
ifCC 
(CC 

adminPathsCC 
.CC 
ContainsCC '
(CC' (
modelCC( -
.CC- .
RelativePathCC. :
)CC: ;
)CC; <
{DD 
modelEE 
.EE 

PropertiesEE $
[EE$ %
$strEE% ,
]EE, -
=EE. /
nullEE0 4
;EE4 5
}FF 
}GG 
}HH 	
publicJJ 
voidJJ 
OnProvidersExecutedJJ '
(JJ' ()
PageRouteModelProviderContextJJ( E
contextJJF M
)JJM N
{KK 	
}LL 	
privateNN 
IEnumerableNN 
<NN "
CompiledViewDescriptorNN 2
>NN2 3
GetPageDescriptorsNN4 F
<NNF G
TNNG H
>NNH I
(NNI J"
ApplicationPartManagerNNJ `
applicationManagerNNa s
)NNs t
whereNNu z
TNN{ |
:NN} ~
ViewsFeature	NN ã
,
NNã å
new
NNç ê
(
NNê ë
)
NNë í
{OO 	
ifPP 
(PP 
applicationManagerPP "
==PP# %
nullPP& *
)PP* +
{QQ 
throwRR 
newRR !
ArgumentNullExceptionRR /
(RR/ 0
nameofRR0 6
(RR6 7
applicationManagerRR7 I
)RRI J
)RRJ K
;RRK L
}SS 
varUU 
viewsFeatureUU 
=UU 
GetViewFeatureUU -
<UU- .
TUU. /
>UU/ 0
(UU0 1
applicationManagerUU1 C
)UUC D
;UUD E
varWW 
visitedWW 
=WW 
newWW 
HashSetWW %
<WW% &
stringWW& ,
>WW, -
(WW- .
StringComparerWW. <
.WW< =
OrdinalIgnoreCaseWW= N
)WWN O
;WWO P
foreachYY 
(YY 
varYY 
viewDescriptorYY '
inYY( *
viewsFeatureYY+ 7
.YY7 8
ViewDescriptorsYY8 G
)YYG H
{ZZ 
if[[ 
([[ 
![[ 
visited[[ 
.[[ 
Add[[  
([[  !
viewDescriptor[[! /
.[[/ 0
RelativePath[[0 <
)[[< =
)[[= >
{\\ 
continue]] 
;]] 
}^^ 
if`` 
(`` 
IsRazorPage`` 
(``  
viewDescriptor``  .
)``. /
)``/ 0
{aa 
yieldbb 
returnbb  
viewDescriptorbb! /
;bb/ 0
}cc 
}dd 
}ee 	
privategg 
staticgg 
boolgg 
IsRazorPagegg '
(gg' ("
CompiledViewDescriptorgg( >
viewDescriptorgg? M
)ggM N
=>ggO Q
viewDescriptorggR `
.gg` a
Itemgga e
?gge f
.ggf g
Kindggg k
==ggl n"
RazorPageDocumentKind	ggo Ñ
;
ggÑ Ö
privateii 
staticii 
Tii 
GetViewFeatureii '
<ii' (
Tii( )
>ii) *
(ii* +"
ApplicationPartManagerii+ A
applicationManageriiB T
)iiT U
whereiiV [
Tii\ ]
:ii^ _
ViewsFeatureii` l
,iil m
newiin q
(iiq r
)iir s
{jj 	
varkk 
viewsFeaturekk 
=kk 
newkk "
Tkk# $
(kk$ %
)kk% &
;kk& '
applicationManagerll 
.ll 
PopulateFeaturell .
(ll. /
viewsFeaturell/ ;
)ll; <
;ll< =
returnmm 
viewsFeaturemm 
;mm  
}nn 	
}oo 
}pp ˚
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminThemeSelector.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class 
AdminThemeSelector #
:$ %
IThemeSelector& 4
{ 
private 
readonly 
IAdminThemeService +
_adminThemeService, >
;> ?
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 
AdminThemeSelector !
(! "
IAdminThemeService 
adminThemeService 0
,0 1 
IHttpContextAccessor  
httpContextAccessor! 4
) 
{ 	
_adminThemeService 
=  
adminThemeService! 2
;2 3 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
async 
Task 
< 
ThemeSelectorResult -
>- .
GetThemeAsync/ <
(< =
)= >
{ 	
if 
( 
AdminAttribute 
. 
	IsApplied (
(( ) 
_httpContextAccessor) =
.= >
HttpContext> I
)I J
)J K
{ 
string 
adminThemeName %
=& '
await( -
_adminThemeService. @
.@ A"
GetAdminThemeNameAsyncA W
(W X
)X Y
;Y Z
if   
(   
String   
.   
IsNullOrEmpty   (
(  ( )
adminThemeName  ) 7
)  7 8
)  8 9
{!! 
return"" 
null"" 
;""  
}## 
return%% 
new%% 
ThemeSelectorResult%% .
{&& 
Priority'' 
='' 
$num'' "
,''" #
	ThemeName(( 
=(( 
adminThemeName((  .
})) 
;)) 
}** 
return,, 
null,, 
;,, 
}-- 	
}.. 
}// û
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminThemeService.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class 
AdminThemeService "
:# $
IAdminThemeService% 7
{		 
private

 
readonly

 
ISiteService

 %
_siteService

& 2
;

2 3
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
public 
AdminThemeService  
(  !
ISiteService 
siteService $
,$ %
IExtensionManager 
extensionManager .
). /
{ 	
_siteService 
= 
siteService &
;& '
_extensionManager 
= 
extensionManager  0
;0 1
} 	
public 
async 
Task 
< 
IExtensionInfo (
>( )
GetAdminThemeAsync* <
(< =
)= >
{ 	
string 
currentThemeName #
=$ %
await& +"
GetAdminThemeNameAsync, B
(B C
)C D
;D E
if 
( 
String 
. 
IsNullOrEmpty $
($ %
currentThemeName% 5
)5 6
)6 7
{ 
return 
null 
; 
} 
return 
_extensionManager $
.$ %
GetExtension% 1
(1 2
currentThemeName2 B
)B C
;C D
} 	
public   
async   
Task   
SetAdminThemeAsync   ,
(  , -
string  - 3
	themeName  4 =
)  = >
{!! 	
var"" 
site"" 
="" 
await"" 
_siteService"" )
."") *!
LoadSiteSettingsAsync""* ?
(""? @
)""@ A
;""A B
site## 
.## 

Properties## 
[## 
$str## 3
]##3 4
=##5 6
	themeName##7 @
;##@ A
await$$ 
_siteService$$ 
.$$ #
UpdateSiteSettingsAsync$$ 6
($$6 7
site$$7 ;
)$$; <
;$$< =
}%% 	
public'' 
async'' 
Task'' 
<'' 
string''  
>''  !"
GetAdminThemeNameAsync''" 8
(''8 9
)''9 :
{(( 	
var)) 
site)) 
=)) 
await)) 
_siteService)) )
.))) * 
GetSiteSettingsAsync))* >
())> ?
)))? @
;))@ A
return** 
(** 
string** 
)** 
site** 
.**  

Properties**  *
[*** +
$str**+ B
]**B C
;**C D
}++ 	
},, 
}-- ˚
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\AdminZoneFilter.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class 
AdminZoneFilter  
:! " 
IAsyncResourceFilter# 7
{ 
public 
Task $
OnResourceExecutionAsync ,
(, -$
ResourceExecutingContext- E
contextF M
,M N%
ResourceExecutionDelegateO h
nexti m
)m n
{ 	
if 
( 
context 
. 
ActionDescriptor (
is) +&
ControllerActionDescriptor, F
actionG M
)M N
{ 
if 
( 
action 
. 
ControllerName )
==* ,
$str- 4
)4 5
{ 
AdminAttribute "
." #
Apply# (
(( )
context) 0
.0 1
HttpContext1 <
)< =
;= >
} 
} 
else 
if 
( 
context 
. 
ActionDescriptor -
is. 0 
PageActionDescriptor1 E
pageF J
)J K
{ 
if 
( 
page 
. 
ViewEnginePath '
.' (
Contains( 0
(0 1
$str1 :
): ;
); <
{ 
AdminAttribute "
." #
Apply# (
(( )
context) 0
.0 1
HttpContext1 <
)< =
;= >
} 
} 
return 
next 
( 
) 
; 
}   	
}!! 
}"" ¥
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Admin 
. 
Controllers '
{ 
[ 
	Authorize 
] 
public 

class 
AdminController  
:! "

Controller# -
{ 
public		 
IActionResult		 
Index		 "
(		" #
)		# $
{

 	
return 
View 
( 
) 
; 
} 	
} 
} §,
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\Drivers\AdminSiteSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Admin 
. 
Drivers #
{ 
public 

class *
AdminSiteSettingsDisplayDriver /
:0 1 
SectionDisplayDriver2 F
<F G
ISiteG L
,L M
AdminSettingsN [
>[ \
{ 
public 
const 
string 
GroupId #
=$ %
$str& -
;- .
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public *
AdminSiteSettingsDisplayDriver -
(- . 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =
AdminSettings= J
settingsK S
,S T
BuildEditorContextU g
contexth o
)o p
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
,@ A$
PermissionsAdminSettingsB Z
.Z [
ManageAdminSettings[ n
)n o
)o p
{   
return!! 
null!! 
;!! 
}"" 
return$$ 

Initialize$$ 
<$$ "
AdminSettingsViewModel$$ 4
>$$4 5
($$5 6
$str$$6 J
,$$J K
model$$L Q
=>$$R T
{%% 
model&& 
.&& 
DisplayDarkMode&& %
=&&& '
settings&&( 0
.&&0 1
DisplayDarkMode&&1 @
;&&@ A
model'' 
.'' 
DisplayMenuFilter'' '
=''( )
settings''* 2
.''2 3
DisplayMenuFilter''3 D
;''D E
model(( 
.(( 
DisplayNewMenu(( $
=((% &
settings((' /
.((/ 0
DisplayNewMenu((0 >
;((> ?
model)) 
.)) !
DisplayTitlesInTopbar)) +
=)), -
settings)). 6
.))6 7!
DisplayTitlesInTopbar))7 L
;))L M
}** 
)** 
.** 
Location** 
(** 
$str** '
)**' (
.**( )
OnGroup**) 0
(**0 1
GroupId**1 8
)**8 9
;**9 :
}++ 	
public-- 
override-- 
async-- 
Task-- "
<--" #
IDisplayResult--# 1
>--1 2
UpdateAsync--3 >
(--> ?
AdminSettings--? L
settings--M U
,--U V
BuildEditorContext--W i
context--j q
)--q r
{.. 	
var// 
user// 
=//  
_httpContextAccessor// +
.//+ ,
HttpContext//, 7
?//7 8
.//8 9
User//9 =
;//= >
if11 
(11 
!11 
await11 !
_authorizationService11 ,
.11, -
AuthorizeAsync11- ;
(11; <
user11< @
,11@ A$
PermissionsAdminSettings11B Z
.11Z [
ManageAdminSettings11[ n
)11n o
)11o p
{22 
return33 
null33 
;33 
}44 
if66 
(66 
context66 
.66 
GroupId66 
==66  "
GroupId66# *
)66* +
{77 
var88 
model88 
=88 
new88 "
AdminSettingsViewModel88  6
(886 7
)887 8
;888 9
await:: 
context:: 
.:: 
Updater:: %
.::% &
TryUpdateModelAsync::& 9
(::9 :
model::: ?
,::? @
Prefix::A G
)::G H
;::H I
settings<< 
.<< 
DisplayDarkMode<< (
=<<) *
model<<+ 0
.<<0 1
DisplayDarkMode<<1 @
;<<@ A
settings== 
.== 
DisplayMenuFilter== *
===+ ,
model==- 2
.==2 3
DisplayMenuFilter==3 D
;==D E
settings>> 
.>> 
DisplayNewMenu>> '
=>>( )
model>>* /
.>>/ 0
DisplayNewMenu>>0 >
;>>> ?
settings?? 
.?? !
DisplayTitlesInTopbar?? .
=??/ 0
model??1 6
.??6 7!
DisplayTitlesInTopbar??7 L
;??L M
}@@ 
returnBB 
awaitBB 
	EditAsyncBB "
(BB" #
settingsBB# +
,BB+ ,
contextBB- 4
)BB4 5
;BB5 6
}CC 	
}DD 
}EE »
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\Manifest.cs
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
$str :
,: ;
Category		 
=		 
$str		 
,		  
Dependencies

 
=

 
new

 
[

 
]

 
{ 
$str 
} 
) 
] ∂
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\Permissions.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{ 
public		 
static		 
readonly		 

Permission		 )
AccessAdminPanel		* :
=		; <
new		= @

Permission		A K
(		K L
$str		L ^
,		^ _
$str		` t
)		t u
;		u v
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
GetPermissions# 1
(1 2
)2 3
)3 4
;4 5
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
GetPermissions" 0
(0 1
)1 2
} 
, 
new  
PermissionStereotype (
{) *
Name 
= 
$str #
,# $
Permissions 
=  !
GetPermissions" 0
(0 1
)1 2
} 
, 
new  
PermissionStereotype (
{) *
Name 
= 
$str &
,& '
Permissions 
=  !
GetPermissions" 0
(0 1
)1 2
}   
,   
new!!  
PermissionStereotype!! (
{!!) *
Name"" 
="" 
$str"" #
,""# $
Permissions## 
=##  !
GetPermissions##" 0
(##0 1
)##1 2
}$$ 
,$$ 
new%%  
PermissionStereotype%% (
{%%) *
Name&& 
=&& 
$str&& (
,&&( )
Permissions'' 
=''  !
GetPermissions''" 0
(''0 1
)''1 2
}(( 
})) 
;)) 
}** 	
private,, 
IEnumerable,, 
<,, 

Permission,, &
>,,& '
GetPermissions,,( 6
(,,6 7
),,7 8
{-- 	
return.. 
new.. 
[.. 
].. 
{// 
AccessAdminPanel00  
}11 
;11 
}22 	
}33 
}44 ®
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\PermissionsAdminSettings.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class $
PermissionsAdminSettings )
:* +
IPermissionProvider, ?
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
ManageAdminSettings
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
{) *
ManageAdminSettings+ >
}? @
.@ A
AsEnumerableA M
(M N
)N O
)O P
;P Q
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
ManageAdminSettings* =
}> ?
} 
} 
; 
} 	
} 
} ‹
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\Properties\AssemblyInfo.cs
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
]7 8ÃE
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\Startup.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
private 
readonly 
IShellConfiguration ,
_configuration- ;
;; <
public!! 
Startup!! 
(!! 
IOptions!! 
<!!  
AdminOptions!!  ,
>!!, -
adminOptions!!. :
,!!: ;
IShellConfiguration!!< O
configuration!!P ]
)!!] ^
{"" 	
_adminOptions## 
=## 
adminOptions## (
.##( )
Value##) .
;##. /
_configuration$$ 
=$$ 
configuration$$ *
;$$* +
}%% 	
public'' 
override'' 
void'' 
ConfigureServices'' .
(''. /
IServiceCollection''/ A
services''B J
)''J K
{(( 	
services)) 
.)) 
AddNavigation)) "
())" #
)))# $
;))$ %
services++ 
.++ 
	Configure++ 
<++ 

MvcOptions++ )
>++) *
(++* +
(+++ ,
options++, 3
)++3 4
=>++5 7
{,, 
options-- 
.-- 
Filters-- 
.--  
Add--  #
(--# $
typeof--$ *
(--* +
AdminFilter--+ 6
)--6 7
)--7 8
;--8 9
options.. 
... 
Filters.. 
...  
Add..  #
(..# $
typeof..$ *
(..* +
AdminMenuFilter..+ :
)..: ;
)..; <
;..< =
options11 
.11 
Filters11 
.11  
Add11  #
(11# $
typeof11$ *
(11* +
AdminZoneFilter11+ :
)11: ;
,11; <
-11= >
$num11> B
)11B C
;11C D
}22 
)22 
;22 
services44 
.44 
AddTransient44 !
<44! "&
IAreaControllerRouteMapper44" <
,44< =*
AdminAreaControllerRouteMapper44> \
>44\ ]
(44] ^
)44^ _
;44_ `
services55 
.55 
	AddScoped55 
<55 
IPermissionProvider55 2
,552 3
Permissions554 ?
>55? @
(55@ A
)55A B
;55B C
services66 
.66 
	AddScoped66 
<66 
IThemeSelector66 -
,66- .
AdminThemeSelector66/ A
>66A B
(66B C
)66C D
;66D E
services77 
.77 
	AddScoped77 
<77 
IAdminThemeService77 1
,771 2
AdminThemeService773 D
>77D E
(77E F
)77F G
;77G H
services88 
.88 
	AddScoped88 
<88 
IDisplayDriver88 -
<88- .
ISite88. 3
>883 4
,884 5*
AdminSiteSettingsDisplayDriver886 T
>88T U
(88U V
)88V W
;88W X
services99 
.99 
	AddScoped99 
<99 
IPermissionProvider99 2
,992 3$
PermissionsAdminSettings994 L
>99L M
(99M N
)99N O
;99O P
services:: 
.:: 
	AddScoped:: 
<:: 
INavigationProvider:: 2
,::2 3
	AdminMenu::4 =
>::= >
(::> ?
)::? @
;::@ A
services;; 
.;; 
AddSingleton;; !
<;;! "#
IPageRouteModelProvider;;" 9
,;;9 :'
AdminPageRouteModelProvider;;; V
>;;V W
(;;W X
);;X Y
;;;Y Z
services== 
.== 
	Configure== 
<== 
AdminOptions== +
>==+ ,
(==, -
_configuration==- ;
.==; <

GetSection==< F
(==F G
$str==G Z
)==Z [
)==[ \
;==\ ]
}>> 	
public@@ 
override@@ 
void@@ 
	Configure@@ &
(@@& '
IApplicationBuilder@@' :
builder@@; B
,@@B C!
IEndpointRouteBuilder@@D Y
routes@@Z `
,@@` a
IServiceProvider@@b r
serviceProvider	@@s Ç
)
@@Ç É
{AA 	
routesBB 
.BB "
MapAreaControllerRouteBB )
(BB) *
nameCC 
:CC 
$strCC 
,CC 
areaNameDD 
:DD 
$strDD -
,DD- .
patternEE 
:EE 
_adminOptionsEE &
.EE& '
AdminUrlPrefixEE' 5
,EE5 6
defaultsFF 
:FF 
newFF 
{FF 

controllerFF  *
=FF+ ,
typeofFF- 3
(FF3 4
AdminControllerFF4 C
)FFC D
.FFD E
ControllerNameFFE S
(FFS T
)FFT U
,FFU V
actionFFW ]
=FF^ _
nameofFF` f
(FFf g
AdminControllerFFg v
.FFv w
IndexFFw |
)FF| }
}FF~ 
)GG 
;GG 
}HH 	
}II 
publicKK 

classKK 
AdminPagesStartupKK "
:KK# $
StartupBaseKK% 0
{LL 
publicMM 
overrideMM 
intMM 
OrderMM !
=>MM" $
$numMM% )
;MM) *
publicOO 
overrideOO 
voidOO 
ConfigureServicesOO .
(OO. /
IServiceCollectionOO/ A
servicesOOB J
)OOJ K
{PP 	
servicesQQ 
.QQ 
	ConfigureQQ 
<QQ 
RazorPagesOptionsQQ 0
>QQ0 1
(QQ1 2
(QQ2 3
optionsQQ3 :
)QQ: ;
=>QQ< >
{RR 
varSS 
adminOptionsSS  
=SS! "

ShellScopeSS# -
.SS- .
ServicesSS. 6
.SS6 7
GetRequiredServiceSS7 I
<SSI J
IOptionsSSJ R
<SSR S
AdminOptionsSSS _
>SS_ `
>SS` a
(SSa b
)SSb c
.SSc d
ValueSSd i
;SSi j
optionsTT 
.TT 
ConventionsTT #
.TT# $
AddTT$ '
(TT' (
newTT( +)
AdminPageRouteModelConventionTT, I
(TTI J
adminOptionsTTJ V
.TTV W
AdminUrlPrefixTTW e
)TTe f
)TTf g
;TTg h
}UU 
)UU 
;UU 
}VV 	
}WW 
[YY 
RequireFeaturesYY 
(YY 
$strYY -
)YY- .
]YY. /
publicZZ 

classZZ 
DeploymentStartupZZ "
:ZZ# $
StartupBaseZZ% 0
{[[ 
public\\ 
override\\ 
void\\ 
ConfigureServices\\ .
(\\. /
IServiceCollection\\/ A
services\\B J
)\\J K
{]] 	
services^^ 
.^^ 
AddTransient^^ !
<^^! "
IDeploymentSource^^" 3
,^^3 40
$SiteSettingsPropertyDeploymentSource^^5 Y
<^^Y Z
AdminSettings^^Z g
>^^g h
>^^h i
(^^i j
)^^j k
;^^k l
services__ 
.__ 
	AddScoped__ 
<__ 
IDisplayDriver__ -
<__- .
DeploymentStep__. <
>__< =
>__= >
(__> ?
sp__? A
=>__B D
{`` 
varaa 
Saa 
=aa 
spaa 
.aa 

GetServiceaa %
<aa% &
IStringLocalizeraa& 6
<aa6 7
DeploymentStartupaa7 H
>aaH I
>aaI J
(aaJ K
)aaK L
;aaL M
returnbb 
newbb 4
(SiteSettingsPropertyDeploymentStepDriverbb C
<bbC D
AdminSettingsbbD Q
>bbQ R
(bbR S
SbbS T
[bbT U
$strbbU e
]bbe f
,bbf g
Sbbh i
[bbi j
$str	bbj á
]
bbá à
)
bbà â
;
bbâ ä
}cc 
)cc 
;cc 
servicesdd 
.dd 
AddSingletondd !
<dd! ""
IDeploymentStepFactorydd" 8
>dd8 9
(dd9 :
newdd: =5
)SiteSettingsPropertyDeploymentStepFactorydd> g
<ddg h
AdminSettingsddh u
>ddu v
(ddv w
)ddw x
)ddx y
;ddy z
}ee 	
}ff 
}gg û
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Admin\ViewModels\AdminSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Admin 
. 

ViewModels &
{ 
public 

class "
AdminSettingsViewModel '
{ 
public 
bool 
DisplayDarkMode #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
DisplayMenuFilter %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
bool		 
DisplayNewMenu		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public 
bool !
DisplayTitlesInTopbar )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} 