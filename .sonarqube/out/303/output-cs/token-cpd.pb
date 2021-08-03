�
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Themes 
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
,  !
NavigationConstants" 5
.5 6#
AdminMenuDesignPosition6 M
,M N
designO U
=>V X
designY _
. 
AddClass 
( 
$str &
)& '
.' (
Id( *
(* +
$str+ 3
)3 4
. 
Add 
( 
S 
[ 
$str #
]# $
,$ %
$str& .
,. /
	installed0 9
=>: <
	installed= F
. 
Action 
(  
$str  '
,' (
$str) 0
,0 1
new2 5
{6 7
area8 <
== >
$str? S
}T U
)U V
. 

Permission #
(# $
Permissions$ /
./ 0

ApplyTheme0 :
): ;
. 
LocalNav !
(! "
)" #
) 
)   
;   
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\CacheContextProviders\ThemeCacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
.' (!
CacheContextProviders( =
{ 
public 

class %
ThemeCacheContextProvider *
:+ ,!
ICacheContextProvider- B
{ 
private		 
readonly		 
IThemeManager		 &
_themeManager		' 4
;		4 5
public %
ThemeCacheContextProvider (
(( )
IThemeManager) 6
themeManager7 C
)C D
{ 	
_themeManager 
= 
themeManager (
;( )
} 	
public 
async 
Task '
PopulateContextEntriesAsync 5
(5 6
IEnumerable6 A
<A B
stringB H
>H I
contextsJ R
,R S
ListT X
<X Y
CacheContextEntryY j
>j k
entriesl s
)s t
{ 	
var 
theme 
= 
await 
_themeManager +
.+ ,
GetThemeAsync, 9
(9 :
): ;
;; <
entries 
. 
Add 
( 
new 
CacheContextEntry -
(- .
$str. 5
,5 6
theme7 <
.< =
Id= ?
)? @
)@ A
;A B
} 	
} 
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Controllers (
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
ISiteThemeService *
_siteThemeService+ <
;< =
private 
readonly 
IAdminThemeService +
_adminThemeService, >
;> ?
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly !
IShellFeaturesManager .!
_shellFeaturesManager/ D
;D E
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
AdminController 
( 
ISiteThemeService 
siteThemeService .
,. /
IAdminThemeService   
adminThemeService   0
,  0 1
IThemeService!! 
themeService!! &
,!!& '
ShellSettings"" 
shellSettings"" '
,""' (
IExtensionManager## 
extensionManager## .
,##. /
IHtmlLocalizer$$ 
<$$ 
AdminController$$ *
>$$* +
	localizer$$, 5
,$$5 6#
IShellDescriptorManager%% #"
shellDescriptorManager%%$ :
,%%: ;!
IShellFeaturesManager&& ! 
shellFeaturesManager&&" 6
,&&6 7!
IAuthorizationService'' ! 
authorizationService''" 6
,''6 7
	INotifier(( 
notifier(( 
)(( 
{)) 	
_siteThemeService** 
=** 
siteThemeService**  0
;**0 1
_adminThemeService++ 
=++  
adminThemeService++! 2
;++2 3
_extensionManager,, 
=,, 
extensionManager,,  0
;,,0 1!
_shellFeaturesManager-- !
=--" # 
shellFeaturesManager--$ 8
;--8 9!
_authorizationService.. !
=.." # 
authorizationService..$ 8
;..8 9
	_notifier// 
=// 
notifier//  
;//  !
H11 
=11 
	localizer11 
;11 
}22 	
public44 
async44 
Task44 
<44 
ActionResult44 &
>44& '
Index44( -
(44- .
)44. /
{55 	
var66 
installThemes66 
=66 
await66  %!
_authorizationService66& ;
.66; <
AuthorizeAsync66< J
(66J K
User66K O
,66O P
StandardPermissions66Q d
.66d e
	SiteOwner66e n
)66n o
;66o p
if88 
(88 
!88 
installThemes88 
)88 
{99 
return:: 
Forbid:: 
(:: 
):: 
;::  
};; 
varBB )
currentSiteThemeExtensionInfoBB -
=BB. /
awaitBB0 5
_siteThemeServiceBB6 G
.BBG H
GetSiteThemeAsyncBBH Y
(BBY Z
)BBZ [
;BB[ \
varCC *
currentAdminThemeExtensionInfoCC .
=CC/ 0
awaitCC1 6
_adminThemeServiceCC7 I
.CCI J
GetAdminThemeAsyncCCJ \
(CC\ ]
)CC] ^
;CC^ _
varDD 
currentAdminThemeDD !
=DD" #*
currentAdminThemeExtensionInfoDD$ B
!=DDC E
nullDDF J
?DDK L
newDDM P

ThemeEntryDDQ [
(DD[ \*
currentAdminThemeExtensionInfoDD\ z
)DDz {
:DD| }
default	DD~ �
(
DD� �

ThemeEntry
DD� �
)
DD� �
;
DD� �
varEE 
currentSiteThemeEE  
=EE! ")
currentSiteThemeExtensionInfoEE# @
!=EEA C
nullEED H
?EEI J
newEEK N

ThemeEntryEEO Y
(EEY Z)
currentSiteThemeExtensionInfoEEZ w
)EEw x
:EEy z
default	EE{ �
(
EE� �

ThemeEntry
EE� �
)
EE� �
;
EE� �
varFF 
enabledFeaturesFF 
=FF  !
awaitFF" '!
_shellFeaturesManagerFF( =
.FF= >#
GetEnabledFeaturesAsyncFF> U
(FFU V
)FFV W
;FFW X
varHH 
themesHH 
=HH 
_extensionManagerHH *
.HH* +
GetExtensionsHH+ 8
(HH8 9
)HH9 :
.HH: ;
OfTypeHH; A
<HHA B
IThemeExtensionInfoHHB U
>HHU V
(HHV W
)HHW X
.HHX Y
WhereHHY ^
(HH^ _
extensionDescriptorHH_ r
=>HHs u
{II 
varJJ 
tagsJJ 
=JJ 
extensionDescriptorJJ .
.JJ. /
ManifestJJ/ 7
.JJ7 8
TagsJJ8 <
.JJ< =
ToArrayJJ= D
(JJD E
)JJE F
;JJF G
varKK 
isHiddenKK 
=KK 
tagsKK #
.KK# $
AnyKK$ '
(KK' (
xKK( )
=>KK* ,
stringKK- 3
.KK3 4
EqualsKK4 :
(KK: ;
xKK; <
,KK< =
$strKK> F
,KKF G
StringComparisonKKH X
.KKX Y
OrdinalIgnoreCaseKKY j
)KKj k
)KKk l
;KKl m
returnPP 
!PP 
isHiddenPP  
;PP  !
}QQ 
)QQ 
.RR 
SelectRR 
(RR 
extensionDescriptorRR '
=>RR( *
{SS 
varTT 
isAdminTT 
=TT 
IsAdminThemeTT *
(TT* +
extensionDescriptorTT+ >
.TT> ?
ManifestTT? G
)TTG H
;TTH I
varUU 
themeIdUU 
=UU 
isAdminUU %
?UU& '
currentAdminThemeUU( 9
?UU9 :
.UU: ;
	ExtensionUU; D
.UUD E
IdUUE G
:UUH I
currentSiteThemeUUJ Z
?UUZ [
.UU[ \
	ExtensionUU\ e
.UUe f
IdUUf h
;UUh i
varVV 
	isCurrentVV 
=VV 
extensionDescriptorVV  3
.VV3 4
IdVV4 6
==VV7 9
themeIdVV: A
;VVA B
varWW 
	isEnabledWW 
=WW 
enabledFeaturesWW  /
.WW/ 0
AnyWW0 3
(WW3 4
xWW4 5
=>WW6 8
xWW9 :
.WW: ;
	ExtensionWW; D
.WWD E
IdWWE G
==WWH J
extensionDescriptorWWK ^
.WW^ _
IdWW_ a
)WWa b
;WWb c
varXX 

themeEntryXX 
=XX  
newXX! $

ThemeEntryXX% /
(XX/ 0
extensionDescriptorXX0 C
)XXC D
{YY 
Enabled\\ 
=\\ 
	isEnabled\\ '
,\\' (
CanUninstall]]  
=]]! "
installThemes]]# 0
,]]0 1
IsAdmin^^ 
=^^ 
isAdmin^^ %
,^^% &
	IsCurrent__ 
=__ 
	isCurrent__  )
}`` 
;`` 
returnjj 

themeEntryjj !
;jj! "
}kk 
)kk 
.ll 
OrderByDescendingll 
(ll 
xll  
=>ll! #
xll$ %
.ll% &
	IsCurrentll& /
)ll/ 0
;ll0 1
varnn 
modelnn 
=nn 
newnn !
SelectThemesViewModelnn 1
{oo 
CurrentSiteThemepp  
=pp! "
currentSiteThemepp# 3
,pp3 4
CurrentAdminThemeqq !
=qq" #
currentAdminThemeqq$ 5
,qq5 6
Themesrr 
=rr 
themesrr 
}ss 
;ss 
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
<yy 
ActionResultyy &
>yy& '
SetCurrentThemeyy( 7
(yy7 8
stringyy8 >
idyy? A
)yyA B
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
.{{M N

ApplyTheme{{N X
){{X Y
){{Y Z
{|| 
return}} 
Forbid}} 
(}} 
)}} 
;}}  
}~~ 
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
id
��% '
)
��' (
)
��( )
{
�� 
}
�� 
else
�� 
{
�� 
var
�� 
feature
�� 
=
�� 
_extensionManager
�� /
.
��/ 0
GetFeatures
��0 ;
(
��; <
)
��< =
.
��= >
FirstOrDefault
��> L
(
��L M
f
��M N
=>
��O Q
f
��R S
.
��S T
	Extension
��T ]
.
��] ^
IsTheme
��^ e
(
��e f
)
��f g
&&
��h j
f
��k l
.
��l m
Id
��m o
==
��p r
id
��s u
)
��u v
;
��v w
if
�� 
(
�� 
feature
�� 
==
�� 
null
�� #
)
��# $
{
�� 
return
�� 
NotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
else
�� 
{
�� 
var
�� 
isAdmin
�� 
=
��  !
IsAdminTheme
��" .
(
��. /
feature
��/ 6
.
��6 7
	Extension
��7 @
.
��@ A
Manifest
��A I
)
��I J
;
��J K
if
�� 
(
�� 
isAdmin
�� 
)
��  
{
�� 
await
��  
_adminThemeService
�� 0
.
��0 1 
SetAdminThemeAsync
��1 C
(
��C D
id
��D F
)
��F G
;
��G H
}
�� 
else
�� 
{
�� 
await
�� 
_siteThemeService
�� /
.
��/ 0
SetSiteThemeAsync
��0 A
(
��A B
id
��B D
)
��D E
;
��E F
}
�� 
var
�� 
enabledFeatures
�� '
=
��( )
await
��* /#
_shellFeaturesManager
��0 E
.
��E F%
GetEnabledFeaturesAsync
��F ]
(
��] ^
)
��^ _
;
��_ `
var
�� 
	isEnabled
�� !
=
��" #
enabledFeatures
��$ 3
.
��3 4
Any
��4 7
(
��7 8
x
��8 9
=>
��: <
x
��= >
.
��> ?
	Extension
��? H
.
��H I
Id
��I K
==
��L N
feature
��O V
.
��V W
Id
��W Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
!
�� 
	isEnabled
�� "
)
��" #
{
�� 
await
�� #
_shellFeaturesManager
�� 3
.
��3 4!
EnableFeaturesAsync
��4 G
(
��G H
new
��H K
[
��K L
]
��L M
{
��N O
feature
��P W
}
��X Y
,
��Y Z
force
��[ `
:
��` a
true
��b f
)
��f g
;
��g h
	_notifier
�� !
.
��! "
Success
��" )
(
��) *
H
��* +
[
��+ ,
$str
��, =
,
��= >
feature
��? F
.
��F G
Name
��G K
??
��L N
feature
��O V
.
��V W
Id
��W Y
]
��Y Z
)
��Z [
;
��[ \
}
�� 
	_notifier
�� 
.
�� 
Success
�� %
(
��% &
H
��& '
[
��' (
$str
��( N
,
��N O
feature
��P W
.
��W X
Name
��X \
??
��] _
feature
��` g
.
��g h
Id
��h j
,
��j k
isAdmin
��l s
?
��t u
$str
��v }
:
��~ 
$str��� �
]��� �
)��� �
;��� �
}
�� 
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
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
��& '
ResetSiteTheme
��( 6
(
��6 7
)
��7 8
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
��M N

ApplyTheme
��N X
)
��X Y
)
��Y Z
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
�� 
await
�� 
_siteThemeService
�� #
.
��# $
SetSiteThemeAsync
��$ 5
(
��5 6
$str
��6 8
)
��8 9
;
��9 :
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  ;
]
��; <
)
��< =
;
��= >
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
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
��& '
ResetAdminTheme
��( 7
(
��7 8
)
��8 9
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
��M N

ApplyTheme
��N X
)
��X Y
)
��Y Z
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
�� 
await
��  
_adminThemeService
�� $
.
��$ % 
SetAdminThemeAsync
��% 7
(
��7 8
$str
��8 :
)
��: ;
;
��; <
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  <
]
��< =
)
��= >
;
��> ?
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
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
��' (
Disable
��) 0
(
��0 1
string
��1 7
id
��8 :
)
��: ;
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
��M N

ApplyTheme
��N X
)
��X Y
)
��Y Z
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
�� 
feature
�� 
=
�� 
_extensionManager
�� +
.
��+ ,
GetFeatures
��, 7
(
��7 8
)
��8 9
.
��9 :
FirstOrDefault
��: H
(
��H I
f
��I J
=>
��K M
f
��N O
.
��O P
	Extension
��P Y
.
��Y Z
IsTheme
��Z a
(
��a b
)
��b c
&&
��d f
f
��g h
.
��h i
Id
��i k
==
��l n
id
��o q
)
��q r
;
��r s
if
�� 
(
�� 
feature
�� 
==
�� 
null
�� 
)
��  
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
await
�� #
_shellFeaturesManager
�� '
.
��' ("
DisableFeaturesAsync
��( <
(
��< =
new
��= @
[
��@ A
]
��A B
{
��C D
feature
��E L
}
��M N
,
��N O
force
��P U
:
��U V
true
��W [
)
��[ \
;
��\ ]
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  3
,
��3 4
feature
��5 <
.
��< =
Name
��= A
??
��B D
feature
��E L
.
��L M
Id
��M O
]
��O P
)
��P Q
;
��Q R
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
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
Enable
��) /
(
��/ 0
string
��0 6
id
��7 9
)
��9 :
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
��M N

ApplyTheme
��N X
)
��X Y
)
��Y Z
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
�� 
feature
�� 
=
�� 
_extensionManager
�� +
.
��+ ,
GetFeatures
��, 7
(
��7 8
)
��8 9
.
��9 :
FirstOrDefault
��: H
(
��H I
f
��I J
=>
��K M
f
��N O
.
��O P
	Extension
��P Y
.
��Y Z
IsTheme
��Z a
(
��a b
)
��b c
&&
��d f
f
��g h
.
��h i
Id
��i k
==
��l n
id
��o q
)
��q r
;
��r s
if
�� 
(
�� 
feature
�� 
==
�� 
null
�� 
)
��  
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
await
�� #
_shellFeaturesManager
�� '
.
��' (!
EnableFeaturesAsync
��( ;
(
��; <
new
��< ?
[
��? @
]
��@ A
{
��B C
feature
��D K
}
��L M
,
��M N
force
��O T
:
��T U
true
��V Z
)
��Z [
;
��[ \
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  2
,
��2 3
feature
��4 ;
.
��; <
Name
��< @
??
��A C
feature
��D K
.
��K L
Id
��L N
]
��N O
)
��O P
;
��P Q
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
private
�� 
bool
�� 
IsAdminTheme
�� !
(
��! "
IManifestInfo
��" /
manifest
��0 8
)
��8 9
{
�� 	
return
�� 
manifest
�� 
.
�� 
Tags
��  
.
��  !
Any
��! $
(
��$ %
x
��% &
=>
��' )
string
��* 0
.
��0 1
Equals
��1 7
(
��7 8
x
��8 9
,
��9 :
ManifestConstants
��; L
.
��L M
AdminTag
��M U
,
��U V
StringComparison
��W g
.
��g h
OrdinalIgnoreCase
��h y
)
��y z
)
��z {
;
��{ |
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Deployment\ThemesDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 

Deployment '
{		 
public

 

class

 "
ThemesDeploymentSource

 '
:

( )
IDeploymentSource

* ;
{ 
private 
readonly 
ISiteThemeService *
_siteThemeService+ <
;< =
private 
readonly 
IAdminThemeService +
_adminThemeService, >
;> ?
public "
ThemesDeploymentSource %
(% &
ISiteThemeService& 7
siteThemeService8 H
,H I
IAdminThemeServiceJ \
adminThemeService] n
)n o
{ 	
_siteThemeService 
= 
siteThemeService  0
;0 1
_adminThemeService 
=  
adminThemeService! 2
;2 3
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 

themesStep 
= 
step !
as" $ 
ThemesDeploymentStep% 9
;9 :
if 
( 

themesStep 
== 
null "
)" #
{ 
return 
; 
} 
result 
. 
Steps 
. 
Add 
( 
new  
JObject! (
(( )
new 
	JProperty 
( 
$str $
,$ %
$str& .
). /
,/ 0
new   
	JProperty   
(   
nameof   $
(  $ %
ThemeStepModel  % 3
.  3 4
Site  4 8
)  8 9
,  9 :
await  ; @
_siteThemeService  A R
.  R S$
GetCurrentThemeNameAsync  S k
(  k l
)  l m
)  m n
,  n o
new!! 
	JProperty!! 
(!! 
nameof!! $
(!!$ %
ThemeStepModel!!% 3
.!!3 4
Admin!!4 9
)!!9 :
,!!: ;
await!!< A
_adminThemeService!!B T
.!!T U"
GetAdminThemeNameAsync!!U k
(!!k l
)!!l m
)!!m n
)"" 
)"" 
;"" 
}## 	
}$$ 
}%% �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Deployment\ThemesDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 

Deployment '
{ 
public 

class  
ThemesDeploymentStep %
:& '
DeploymentStep( 6
{		 
public

  
ThemesDeploymentStep

 #
(

# $
)

$ %
{ 	
Name 
= 
$str 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Deployment\ThemesDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 

Deployment '
{ 
public 

class &
ThemesDeploymentStepDriver +
:, -
DisplayDriver. ;
<; <
DeploymentStep< J
,J K 
ThemesDeploymentStepL `
>` a
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. / 
ThemesDeploymentStep		/ C
step		D H
)		H I
{

 	
return 
Combine 
( 
View 
( 
$str 7
,7 8
step9 =
)= >
.> ?
Location? G
(G H
$strH Q
,Q R
$strS \
)\ ]
,] ^
View 
( 
$str 9
,9 :
step; ?
)? @
.@ A
LocationA I
(I J
$strJ U
,U V
$strW `
)` a
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ , 
ThemesDeploymentStep, @
stepA E
)E F
{ 	
return 
View 
( 
$str 3
,3 4
step5 9
)9 :
.: ;
Location; C
(C D
$strD M
)M N
;N O
} 	
} 
} �
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str [
,[ \
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 .
}		/ 0
,		0 1
Category

 
=

 
$str

 
) 
] �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Models\SelectThemesViewModel.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Models #
{ 
public 

class !
SelectThemesViewModel &
{ 
public 

ThemeEntry 
CurrentSiteTheme *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

ThemeEntry 
CurrentAdminTheme +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
IEnumerable		 
<		 

ThemeEntry		 %
>		% &
Themes		' -
{		. /
get		0 3
;		3 4
set		5 8
;		8 9
}		: ;
}

 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Models\ThemeEntry.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Models #
{ 
public		 

class		 

ThemeEntry		 
{

 
public 

ThemeEntry 
( 
) 
{ 	
Notifications 
= 
new 
List  $
<$ %
string% +
>+ ,
(, -
)- .
;. /
} 	
public 

ThemeEntry 
( 
IExtensionInfo (
extensionInfo) 6
)6 7
{ 	
	Extension 
= 
extensionInfo %
;% &
} 	
public 
IExtensionInfo 
	Extension '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public$$ 
bool$$ 
Enabled$$ 
{$$ 
get$$ !
;$$! "
set$$# &
;$$& '
}$$( )
public)) 
bool)) 
NeedsUpdate)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
public.. 
bool.. 
NeedsVersionUpdate.. &
{..' (
get..) ,
;.., -
set... 1
;..1 2
}..3 4
public33 
bool33 
IsRecentlyInstalled33 '
{33( )
get33* -
;33- .
set33/ 2
;332 3
}334 5
public88 
bool88 
CanUninstall88  
{88! "
get88# &
;88& '
set88( +
;88+ ,
}88- .
public== 
List== 
<== 
string== 
>== 
Notifications== )
{==* +
get==, /
;==/ 0
set==1 4
;==4 5
}==6 7
publicBB 
stringBB 
NameBB 
{BB 
getBB  
{BB! "
returnBB# )
	ExtensionBB* 3
.BB3 4
ManifestBB4 <
.BB< =
NameBB= A
;BBA B
}BBC D
}BBE F
publicGG 
boolGG 
IsAdminGG 
{GG 
getGG !
;GG! "
setGG# &
;GG& '
}GG( )
publicLL 
boolLL 
	IsCurrentLL 
{LL 
getLL  #
;LL# $
setLL% (
;LL( )
}LL* +
}MM 
}NN �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Permissions.cs
	namespace 	
OrchardCore
 
. 
Themes 
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
 )

ApplyTheme

* 4
=

5 6
new

7 :

Permission

; E
(

E F
$str

F R
)

R S
{

T U
Description

V a
=

b c
$str

d s
}

t u
;

u v
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
{ 

ApplyTheme 
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
{( )

ApplyTheme* 4
}5 6
} 
, 
} 
; 
} 	
}   
}!! �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Recipes\ThemesStep.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Recipes $
{		 
public 

class 

ThemesStep 
: 
IRecipeStepHandler 0
{ 
private 
readonly 
ISiteThemeService *
_siteThemeService+ <
;< =
private 
readonly 
IAdminThemeService +
_adminThemeService, >
;> ?
public 

ThemesStep 
( 
ISiteThemeService 
siteThemeService .
,. /
IAdminThemeService 
adminThemeService 0
)0 1
{ 	
_adminThemeService 
=  
adminThemeService! 2
;2 3
_siteThemeService 
= 
siteThemeService  0
;0 1
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- 5
,5 6
StringComparison7 G
.G H
OrdinalIgnoreCaseH Y
)Y Z
)Z [
{ 
return 
; 
} 
var!! 
model!! 
=!! 
context!! 
.!!  
Step!!  $
.!!$ %
ToObject!!% -
<!!- .
ThemeStepModel!!. <
>!!< =
(!!= >
)!!> ?
;!!? @
if## 
(## 
!## 
String## 
.## 
IsNullOrEmpty## %
(##% &
model##& +
.##+ ,
Site##, 0
)##0 1
)##1 2
{$$ 
await%% 
_siteThemeService%% '
.%%' (
SetSiteThemeAsync%%( 9
(%%9 :
model%%: ?
.%%? @
Site%%@ D
)%%D E
;%%E F
}&& 
if(( 
((( 
!(( 
String(( 
.(( 
IsNullOrEmpty(( %
(((% &
model((& +
.((+ ,
Admin((, 1
)((1 2
)((2 3
{)) 
await** 
_adminThemeService** (
.**( )
SetAdminThemeAsync**) ;
(**; <
model**< A
.**A B
Admin**B G
)**G H
;**H I
}++ 
},, 	
}-- 
public// 

class// 
ThemeStepModel// 
{00 
public11 
string11 
Site11 
{11 
get11  
;11  !
set11" %
;11% &
}11' (
public22 
string22 
Admin22 
{22 
get22 !
;22! "
set22# &
;22& '
}22( )
}33 
}44 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Services\DarkModeService.cs
	namespace		 	
OrchardCore		
 
.		 
Themes		 
.		 
Services		 %
{

 
public 

class 
DarkModeService  
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 
DarkModeService 
(  
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
ISiteService 
siteService $
)$ %
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_siteService 
= 
siteService &
;& '
} 	
public 
string 
CurrentTheme "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
$str3 <
;< =
public 
async 
Task 
< 
bool 
> 
IsDarkModeAsync  /
(/ 0
)0 1
{ 	
var 
result 
= 
false 
; 
var 
adminSettings 
= 
(  !
await! &
_siteService' 3
.3 4 
GetSiteSettingsAsync4 H
(H I
)I J
)J K
.K L
AsL N
<N O
AdminSettingsO \
>\ ]
(] ^
)^ _
;_ `
if 
( 
adminSettings 
. 
DisplayDarkMode -
)- .
{   
if!! 
(!! 
!!! 
String!! 
.!! 
IsNullOrWhiteSpace!! .
(!!. / 
_httpContextAccessor!!/ C
.!!C D
HttpContext!!D O
.!!O P
Request!!P W
.!!W X
Cookies!!X _
[!!_ `
$str!!` r
]!!r s
)!!s t
)!!t u
{"" 
var## 
adminPreferences## (
=##) *
JsonDocument##+ 7
.##7 8
Parse##8 =
(##= > 
_httpContextAccessor##> R
.##R S
HttpContext##S ^
.##^ _
Request##_ f
.##f g
Cookies##g n
[##n o
$str	##o �
]
##� �
)
##� �
;
##� �
if%% 
(%% 
adminPreferences%% (
.%%( )
RootElement%%) 4
.%%4 5
TryGetProperty%%5 C
(%%C D
$str%%D N
,%%N O
out%%P S
var%%T W
darkMode%%X `
)%%` a
)%%a b
{&& 
result'' 
=''  
darkMode''! )
.'') *

GetBoolean''* 4
(''4 5
)''5 6
;''6 7
}(( 
})) 
}** 
if,, 
(,, 
result,, 
),, 
{-- 
CurrentTheme.. 
=.. 
$str.. )
;..) *
}// 
return11 
result11 
;11 
}22 	
}33 
}44 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Services\ISiteThemeService.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Services %
{ 
public 

	interface 
ISiteThemeService &
{ 
Task 
< 
IExtensionInfo 
> 
GetSiteThemeAsync .
(. /
)/ 0
;0 1
Task		 
SetSiteThemeAsync		 
(		 
string		 %
	themeName		& /
)		/ 0
;		0 1
Task

 
<

 
string

 
>

 $
GetCurrentThemeNameAsync

 -
(

- .
)

. /
;

/ 0
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Services\IThemeService.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Services %
{ 
public 

	interface 
IThemeService "
{ 
Task %
DisableThemeFeaturesAsync &
(& '
string' -
	themeName. 7
)7 8
;8 9
Task $
EnableThemeFeaturesAsync %
(% &
string& ,
	themeName- 6
)6 7
;7 8
}		 
}

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Services\SiteThemeSelector.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Services %
{ 
public 

class 
SiteThemeSelector "
:# $
IThemeSelector% 3
{ 
private 
readonly 
ISiteThemeService *
_siteThemeService+ <
;< =
public 
SiteThemeSelector  
(  !
ISiteThemeService! 2
siteThemeService3 C
)C D
{ 	
_siteThemeService 
= 
siteThemeService  0
;0 1
} 	
public 
async 
Task 
< 
ThemeSelectorResult -
>- .
GetThemeAsync/ <
(< =
)= >
{ 	
string 
currentThemeName #
=$ %
await& +
_siteThemeService, =
.= >$
GetCurrentThemeNameAsync> V
(V W
)W X
;X Y
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
return 
new 
ThemeSelectorResult *
{ 
Priority 
= 
$num 
, 
	ThemeName   
=   
currentThemeName   ,
}!! 
;!! 
}"" 	
}## 
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Services\SiteThemeService.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Services %
{ 
public 

class 
SiteThemeService !
:" #
ISiteThemeService$ 5
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
SiteThemeService 
(  
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
GetSiteThemeAsync* ;
(; <
)< =
{ 	
string 
currentThemeName #
=$ %
await& +$
GetCurrentThemeNameAsync, D
(D E
)E F
;F G
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
SetSiteThemeAsync   +
(  + ,
string  , 2
	themeName  3 <
)  < =
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
$str## .
]##. /
=##0 1
	themeName##2 ;
;##; <
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
>''  !$
GetCurrentThemeNameAsync''" :
('': ;
)''; <
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
$str**+ =
]**= >
;**> ?
}++ 	
},, 
}-- �S
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Services\ThemeService.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
Services %
{ 
public 

class 
ThemeService 
: 
IThemeService  -
{ 
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly !
IShellFeaturesManager .!
_shellFeaturesManager/ D
;D E
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
ISiteThemeService *
_siteThemeService+ <
;< =
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
ThemeService 
( 
IExtensionManager 
extensionManager .
,. /!
IShellFeaturesManager ! 
shellFeaturesManager" 6
,6 7
ISiteThemeService 
siteThemeService .
,. /
IHtmlLocalizer 
< 
ThemeService '
>' (
htmlLocalizer) 6
,6 7
	INotifier 
notifier 
) 
{ 	
_extensionManager 
= 
extensionManager  0
;0 1!
_shellFeaturesManager !
=" # 
shellFeaturesManager$ 8
;8 9
_siteThemeService 
= 
siteThemeService  0
;0 1
	_notifier   
=   
notifier    
;    !
H!! 
=!! 
htmlLocalizer!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ %
DisableThemeFeaturesAsync$$ 3
($$3 4
string$$4 :
	themeName$$; D
)$$D E
{%% 	
var&& 
themes&& 
=&& 
new&& 
Queue&& "
<&&" #
string&&# )
>&&) *
(&&* +
)&&+ ,
;&&, -
while'' 
('' 
	themeName'' 
!='' 
null''  $
)''$ %
{(( 
if)) 
()) 
themes)) 
.)) 
Contains)) #
())# $
	themeName))$ -
)))- .
))). /
throw** 
new** %
InvalidOperationException** 7
(**7 8
H**8 9
[**9 :
$str	**: �
,
**� �
	themeName
**� �
]
**� �
.
**� �
ToString
**� �
(
**� �
)
**� �
)
**� �
;
**� �
var++ 
theme++ 
=++ 
_extensionManager++ -
.++- .
GetExtension++. :
(++: ;
	themeName++; D
)++D E
;++E F
if,, 
(,, 
theme,, 
==,, 
null,, !
),,! "
break-- 
;-- 
themes.. 
... 
Enqueue.. 
(.. 
	themeName.. (
)..( )
;..) *
	themeName00 
=00 
!00 
string00 #
.00# $
IsNullOrWhiteSpace00$ 6
(006 7
theme007 <
.00< =
Manifest00= E
.00E F
Name00F J
)00J K
?11 
theme11 
.11 
Manifest11 $
.11$ %
Name11% )
:22 
null22 
;22 
}33 
var55 
currentTheme55 
=55 
await55 $
_siteThemeService55% 6
.556 7$
GetCurrentThemeNameAsync557 O
(55O P
)55P Q
;55Q R
while77 
(77 
themes77 
.77 
Count77 
>77  !
$num77" #
)77# $
{88 
var99 
themeId99 
=99 
themes99 $
.99$ %
Dequeue99% ,
(99, -
)99- .
;99. /
if<< 
(<< 
themeId<< 
!=<< 
currentTheme<< +
)<<+ ,
{== 
await>>  
DisableFeaturesAsync>> .
(>>. /
new>>/ 2
[>>2 3
]>>3 4
{>>5 6
themeId>>7 >
}>>? @
,>>@ A
true>>B F
)>>F G
;>>G H
}?? 
}@@ 
}AA 	
publicCC 
asyncCC 
TaskCC $
EnableThemeFeaturesAsyncCC 2
(CC2 3
stringCC3 9
	themeNameCC: C
)CCC D
{DD 	
varEE 
themesEE 
=EE 
newEE 
StackEE "
<EE" #
stringEE# )
>EE) *
(EE* +
)EE+ ,
;EE, -
whileFF 
(FF 
	themeNameFF 
!=FF 
nullFF  $
)FF$ %
{GG 
ifHH 
(HH 
themesHH 
.HH 
ContainsHH #
(HH# $
	themeNameHH$ -
)HH- .
)HH. /
throwII 
newII %
InvalidOperationExceptionII 7
(II7 8
HII8 9
[II9 :
$str	II: �
,
II� �
	themeName
II� �
]
II� �
.
II� �
ToString
II� �
(
II� �
)
II� �
)
II� �
;
II� �
themesJJ 
.JJ 
PushJJ 
(JJ 
	themeNameJJ %
)JJ% &
;JJ& '
varLL 
extensionInfoLL !
=LL" #
_extensionManagerLL$ 5
.LL5 6
GetExtensionLL6 B
(LLB C
	themeNameLLC L
)LLL M
;LLM N
varMM 
themeMM 
=MM 
newMM 
ThemeExtensionInfoMM  2
(MM2 3
extensionInfoMM3 @
)MM@ A
;MMA B
	themeNameNN 
=NN 
!NN 
stringNN #
.NN# $
IsNullOrWhiteSpaceNN$ 6
(NN6 7
themeNN7 <
.NN< =
	BaseThemeNN= F
)NNF G
?OO 
themeOO 
.OO 
	BaseThemeOO %
:PP 
nullPP 
;PP 
}QQ 
whileSS 
(SS 
themesSS 
.SS 
CountSS 
>SS  !
$numSS" #
)SS# $
{TT 
varUU 
themeIdUU 
=UU 
themesUU $
.UU$ %
PopUU% (
(UU( )
)UU) *
;UU* +
awaitWW 
EnableFeaturesAsyncWW )
(WW) *
newWW* -
[WW- .
]WW. /
{WW0 1
themeIdWW2 9
}WW: ;
,WW; <
trueWW= A
)WWA B
;WWB C
}XX 
}YY 	
public__ 
Task__ 
EnableFeaturesAsync__ '
(__' (
IEnumerable__( 3
<__3 4
string__4 :
>__: ;

featureIds__< F
)__F G
{`` 	
returnaa 
EnableFeaturesAsyncaa &
(aa& '

featureIdsaa' 1
,aa1 2
falseaa3 8
)aa8 9
;aa9 :
}bb 	
publicii 
asyncii 
Taskii 
EnableFeaturesAsyncii -
(ii- .
IEnumerableii. 9
<ii9 :
stringii: @
>ii@ A

featureIdsiiB L
,iiL M
booliiN R
forceiiS X
)iiX Y
{jj 	
varkk 
featuresToEnablekk  
=kk! "
_extensionManagerkk# 4
.ll 
GetFeaturesll 
(ll 
)ll 
.mm 
Wheremm 
(mm 
xmm 
=>mm 

featureIdsmm &
.mm& '
Containsmm' /
(mm/ 0
xmm0 1
.mm1 2
Idmm2 4
)mm4 5
)mm5 6
;mm6 7
varoo 
enabledFeaturesoo 
=oo  !
awaitoo" '!
_shellFeaturesManageroo( =
.oo= >
EnableFeaturesAsyncoo> Q
(ooQ R
featuresToEnableooR b
,oob c
forceood i
)ooi j
;ooj k
foreachpp 
(pp 
varpp 
enabledFeaturepp '
inpp( *
enabledFeaturespp+ :
)pp: ;
{qq 
	_notifierrr 
.rr 
Successrr !
(rr! "
Hrr" #
[rr# $
$strrr$ 6
,rr6 7
enabledFeaturerr8 F
.rrF G
NamerrG K
]rrK L
)rrL M
;rrM N
}ss 
}tt 	
publiczz 
Taskzz  
DisableFeaturesAsynczz (
(zz( )
IEnumerablezz) 4
<zz4 5
stringzz5 ;
>zz; <

featureIdszz= G
)zzG H
{{{ 	
return||  
DisableFeaturesAsync|| '
(||' (

featureIds||( 2
,||2 3
false||4 9
)||9 :
;||: ;
}}} 	
public
�� 
async
�� 
Task
�� "
DisableFeaturesAsync
�� .
(
��. /
IEnumerable
��/ :
<
��: ;
string
��; A
>
��A B

featureIds
��C M
,
��M N
bool
��O S
force
��T Y
)
��Y Z
{
�� 	
var
�� 
featuresToDisable
�� !
=
��" #
_extensionManager
��$ 5
.
�� 
GetFeatures
�� 
(
�� 
)
�� 
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 

featureIds
�� &
.
��& '
Contains
��' /
(
��/ 0
x
��0 1
.
��1 2
Id
��2 4
)
��4 5
)
��5 6
;
��6 7
var
�� 
features
�� 
=
�� 
await
��  #
_shellFeaturesManager
��! 6
.
��6 7"
DisableFeaturesAsync
��7 K
(
��K L
featuresToDisable
��L ]
,
��] ^
force
��_ d
)
��d e
;
��e f
foreach
�� 
(
�� 
var
�� 
feature
��  
in
��! #
features
��$ ,
)
��, -
{
�� 
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
��$ 7
,
��7 8
feature
��9 @
.
��@ A
Name
��A E
]
��E F
)
��F G
;
��G H
}
�� 
}
�� 	
}
�� 
}�� �@
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\Startup.cs
	namespace 	
OrchardCore
 
. 
Themes 
{ 
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
.$$ "
AddRecipeExecutionStep$$ +
<$$+ ,

ThemesStep$$, 6
>$$6 7
($$7 8
)$$8 9
;$$9 :
services%% 
.%% 
	AddScoped%% 
<%% 
IPermissionProvider%% 2
,%%2 3
Permissions%%4 ?
>%%? @
(%%@ A
)%%A B
;%%B C
services&& 
.&& 
	AddScoped&& 
<&& 
IThemeSelector&& -
,&&- .
SiteThemeSelector&&/ @
>&&@ A
(&&A B
)&&B C
;&&C D
services'' 
.'' 
	AddScoped'' 
<'' 
ISiteThemeService'' 0
,''0 1
SiteThemeService''2 B
>''B C
(''C D
)''D E
;''E F
services(( 
.(( 
	AddScoped(( 
<(( 
INavigationProvider(( 2
,((2 3
	AdminMenu((4 =
>((= >
(((> ?
)((? @
;((@ A
services)) 
.)) 
	AddScoped)) 
<)) 
IThemeService)) ,
,)), -
ThemeService)). :
>)): ;
()); <
)))< =
;))= >
services** 
.** 
	AddScoped** 
<** 
DarkModeService** .
,**. /
DarkModeService**0 ?
>**? @
(**@ A
)**A B
;**B C
services,, 
.,, 
AddTransient,, !
<,,! "
IDeploymentSource,," 3
,,,3 4"
ThemesDeploymentSource,,5 K
>,,K L
(,,L M
),,M N
;,,N O
services-- 
.-- 
AddSingleton-- !
<--! ""
IDeploymentStepFactory--" 8
>--8 9
(--9 :
new--: =!
DeploymentStepFactory--> S
<--S T 
ThemesDeploymentStep--T h
>--h i
(--i j
)--j k
)--k l
;--l m
services.. 
... 
	AddScoped.. 
<.. 
IDisplayDriver.. -
<..- .
DeploymentStep... <
>..< =
,..= >&
ThemesDeploymentStepDriver..? Y
>..Y Z
(..Z [
)..[ \
;..\ ]
}// 	
public11 
override11 
void11 
	Configure11 &
(11& '
IApplicationBuilder11' :
builder11; B
,11B C!
IEndpointRouteBuilder11D Y
routes11Z `
,11` a
IServiceProvider11b r
serviceProvider	11s �
)
11� �
{22 	
var33 
themeControllerName33 #
=33$ %
typeof33& ,
(33, -
AdminController33- <
)33< =
.33= >
ControllerName33> L
(33L M
)33M N
;33N O
routes55 
.55 "
MapAreaControllerRoute55 )
(55) *
name66 
:66 
$str66 $
,66$ %
areaName77 
:77 
$str77 .
,77. /
pattern88 
:88 
_adminOptions88 &
.88& '
AdminUrlPrefix88' 5
+886 7
$str888 A
,88A B
defaults99 
:99 
new99 
{99 

controller99  *
=99+ ,
themeControllerName99- @
,99@ A
action99B H
=99I J
nameof99K Q
(99Q R
AdminController99R a
.99a b
Index99b g
)99g h
}99i j
):: 
;:: 
routes<< 
.<< "
MapAreaControllerRoute<< )
(<<) *
name== 
:== 
$str== .
,==. /
areaName>> 
:>> 
$str>> .
,>>. /
pattern?? 
:?? 
_adminOptions?? &
.??& '
AdminUrlPrefix??' 5
+??6 7
$str??8 V
,??V W
defaults@@ 
:@@ 
new@@ 
{@@ 

controller@@  *
=@@+ ,
themeControllerName@@- @
,@@@ A
action@@B H
=@@I J
nameof@@K Q
(@@Q R
AdminController@@R a
.@@a b
SetCurrentTheme@@b q
)@@q r
}@@s t
)AA 
;AA 
routesCC 
.CC "
MapAreaControllerRouteCC )
(CC) *
nameDD 
:DD 
$strDD -
,DD- .
areaNameEE 
:EE 
$strEE .
,EE. /
patternFF 
:FF 
_adminOptionsFF &
.FF& '
AdminUrlPrefixFF' 5
+FF6 7
$strFF8 P
,FFP Q
defaultsGG 
:GG 
newGG 
{GG 

controllerGG  *
=GG+ ,
themeControllerNameGG- @
,GG@ A
actionGGB H
=GGI J
nameofGGK Q
(GGQ R
AdminControllerGGR a
.GGa b
ResetSiteThemeGGb p
)GGp q
}GGr s
)HH 
;HH 
routesJJ 
.JJ "
MapAreaControllerRouteJJ )
(JJ) *
nameKK 
:KK 
$strKK .
,KK. /
areaNameLL 
:LL 
$strLL .
,LL. /
patternMM 
:MM 
_adminOptionsMM &
.MM& '
AdminUrlPrefixMM' 5
+MM6 7
$strMM8 Q
,MMQ R
defaultsNN 
:NN 
newNN 
{NN 

controllerNN  *
=NN+ ,
themeControllerNameNN- @
,NN@ A
actionNNB H
=NNI J
nameofNNK Q
(NNQ R
AdminControllerNNR a
.NNa b
ResetAdminThemeNNb q
)NNq r
}NNs t
)OO 
;OO 
routesQQ 
.QQ "
MapAreaControllerRouteQQ )
(QQ) *
nameRR 
:RR 
$strRR &
,RR& '
areaNameSS 
:SS 
$strSS .
,SS. /
patternTT 
:TT 
_adminOptionsTT &
.TT& '
AdminUrlPrefixTT' 5
+TT6 7
$strTT8 N
,TTN O
defaultsUU 
:UU 
newUU 
{UU 

controllerUU  *
=UU+ ,
themeControllerNameUU- @
,UU@ A
actionUUB H
=UUI J
nameofUUK Q
(UUQ R
AdminControllerUUR a
.UUa b
DisableUUb i
)UUi j
}UUk l
)VV 
;VV 
routesXX 
.XX "
MapAreaControllerRouteXX )
(XX) *
nameYY 
:YY 
$strYY %
,YY% &
areaNameZZ 
:ZZ 
$strZZ .
,ZZ. /
pattern[[ 
:[[ 
_adminOptions[[ &
.[[& '
AdminUrlPrefix[[' 5
+[[6 7
$str[[8 M
,[[M N
defaults\\ 
:\\ 
new\\ 
{\\ 

controller\\  *
=\\+ ,
themeControllerName\\- @
,\\@ A
action\\B H
=\\I J
nameof\\K Q
(\\Q R
AdminController\\R a
.\\a b
Enable\\b h
)\\h i
}\\j k
)]] 
;]] 
}^^ 	
}__ 
}`` �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Themes\ViewModels\SelectThemesViewModel.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 

ViewModels '
{ 
public 

class !
SelectThemesViewModel &
{ 
public 
string 
SiteThemeName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
string		 
AdminThemeName		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public

 
IEnumerable

 
<

 

ThemeEntry

 %
>

% &
Themes

' -
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
: ;
} 
} 