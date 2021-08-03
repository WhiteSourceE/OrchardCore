�
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Roles 
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
. 
Add 
( 
S 
[ 
$str $
]$ %
,% &
security' /
=>0 2
security3 ;
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
S) *
[* +
$str+ 2
]2 3
.3 4
PrefixPosition4 B
(B C
)C D
,D E
rolesF K
=>L N
rolesO T
. 
AddClass %
(% &
$str& -
)- .
.. /
Id/ 1
(1 2
$str2 9
)9 :
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
$str6 I
)I J
. 

Permission '
(' (
Permissions( 3
.3 4
ManageRoles4 ?
)? @
. 
LocalNav %
(% &
)& '
) 
) 
; 
return   
Task   
.   
CompletedTask   %
;  % &
}!! 	
}"" 
}## ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 
Controllers '
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
IDocumentStore '
_documentStore( 6
;6 7
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
RoleManager $
<$ %
IRole% *
>* +
_roleManager, 8
;8 9
private 
readonly 
IEnumerable $
<$ %
IPermissionProvider% 8
>8 9 
_permissionProviders: N
;N O
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
IRoleService %
_roleService& 2
;2 3
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public!! 
AdminController!! 
(!! !
IAuthorizationService"" ! 
authorizationService""" 6
,""6 7 
ITypeFeatureProvider##  
typeFeatureProvider##! 4
,##4 5
IDocumentStore$$ 
documentStore$$ (
,$$( )
IStringLocalizer%% 
<%% 
AdminController%% ,
>%%, -
stringLocalizer%%. =
,%%= >
IHtmlLocalizer&& 
<&& 
AdminController&& *
>&&* +
htmlLocalizer&&, 9
,&&9 :
RoleManager'' 
<'' 
IRole'' 
>'' 
roleManager'' *
,''* +
IRoleService(( 
roleService(( $
,(($ %
	INotifier)) 
notifier)) 
,)) 
IEnumerable** 
<** 
IPermissionProvider** +
>**+ ,
permissionProviders**- @
)++ 
{,, 	
H-- 
=-- 
htmlLocalizer-- 
;-- 
	_notifier.. 
=.. 
notifier..  
;..  !
_roleService// 
=// 
roleService// &
;//& ' 
_typeFeatureProvider00  
=00! "
typeFeatureProvider00# 6
;006 7 
_permissionProviders11  
=11! "
permissionProviders11# 6
;116 7
_roleManager22 
=22 
roleManager22 &
;22& '
S33 
=33 
stringLocalizer33 
;33  !
_authorizationService44 !
=44" # 
authorizationService44$ 8
;448 9
_documentStore55 
=55 
documentStore55 *
;55* +
}66 	
public88 
async88 
Task88 
<88 
ActionResult88 &
>88& '
Index88( -
(88- .
)88. /
{99 	
if:: 
(:: 
!:: 
await:: !
_authorizationService:: ,
.::, -
AuthorizeAsync::- ;
(::; <
User::< @
,::@ A
Permissions::B M
.::M N
ManageRoles::N Y
)::Y Z
)::Z [
{;; 
return<< 
Forbid<< 
(<< 
)<< 
;<<  
}== 
var?? 
roles?? 
=?? 
await?? 
_roleService?? *
.??* +
GetRolesAsync??+ 8
(??8 9
)??9 :
;??: ;
varAA 
modelAA 
=AA 
newAA 
RolesViewModelAA *
{BB 
RoleEntriesCC 
=CC 
rolesCC #
.CC# $
SelectCC$ *
(CC* +
BuildRoleEntryCC+ 9
)CC9 :
.CC: ;
ToListCC; A
(CCA B
)CCB C
}DD 
;DD 
returnFF 
ViewFF 
(FF 
modelFF 
)FF 
;FF 
}GG 	
publicII 
asyncII 
TaskII 
<II 
IActionResultII '
>II' (
CreateII) /
(II/ 0
)II0 1
{JJ 	
ifKK 
(KK 
!KK 
awaitKK !
_authorizationServiceKK ,
.KK, -
AuthorizeAsyncKK- ;
(KK; <
UserKK< @
,KK@ A
PermissionsKKB M
.KKM N
ManageRolesKKN Y
)KKY Z
)KKZ [
{LL 
returnMM 
ForbidMM 
(MM 
)MM 
;MM  
}NN 
varPP 
modelPP 
=PP 
newPP 
CreateRoleViewModelPP /
(PP/ 0
)PP0 1
;PP1 2
returnRR 
ViewRR 
(RR 
modelRR 
)RR 
;RR 
}SS 	
[UU 	
HttpPostUU	 
]UU 
publicVV 
asyncVV 
TaskVV 
<VV 
IActionResultVV '
>VV' (
CreateVV) /
(VV/ 0
CreateRoleViewModelVV0 C
modelVVD I
)VVI J
{WW 	
ifXX 
(XX 

ModelStateXX 
.XX 
IsValidXX "
)XX" #
{YY 
modelZZ 
.ZZ 
RoleNameZZ 
=ZZ  
modelZZ! &
.ZZ& '
RoleNameZZ' /
.ZZ/ 0
TrimZZ0 4
(ZZ4 5
)ZZ5 6
;ZZ6 7
if\\ 
(\\ 
model\\ 
.\\ 
RoleName\\ "
.\\" #
Contains\\# +
(\\+ ,
$char\\, /
)\\/ 0
)\\0 1
{]] 

ModelState^^ 
.^^ 
AddModelError^^ ,
(^^, -
string^^- 3
.^^3 4
Empty^^4 9
,^^9 :
S^^; <
[^^< =
$str^^= Q
]^^Q R
)^^R S
;^^S T
}__ 
ifaa 
(aa 
awaitaa 
_roleManageraa &
.aa& '
FindByNameAsyncaa' 6
(aa6 7
_roleManageraa7 C
.aaC D
NormalizeKeyaaD P
(aaP Q
modelaaQ V
.aaV W
RoleNameaaW _
)aa_ `
)aa` a
!=aab d
nullaae i
)aai j
{bb 

ModelStatecc 
.cc 
AddModelErrorcc ,
(cc, -
stringcc- 3
.cc3 4
Emptycc4 9
,cc9 :
Scc; <
[cc< =
$strcc= X
]ccX Y
)ccY Z
;ccZ [
}dd 
}ee 
ifgg 
(gg 

ModelStategg 
.gg 
IsValidgg "
)gg" #
{hh 
varii 
roleii 
=ii 
newii 
Roleii #
{ii$ %
RoleNameii& .
=ii/ 0
modelii1 6
.ii6 7
RoleNameii7 ?
,ii? @
RoleDescriptioniiA P
=iiQ R
modeliiS X
.iiX Y
RoleDescriptioniiY h
}iii j
;iij k
varjj 
resultjj 
=jj 
awaitjj "
_roleManagerjj# /
.jj/ 0
CreateAsyncjj0 ;
(jj; <
rolejj< @
)jj@ A
;jjA B
ifkk 
(kk 
resultkk 
.kk 
	Succeededkk $
)kk$ %
{ll 
	_notifiermm 
.mm 
Successmm %
(mm% &
Hmm& '
[mm' (
$strmm( D
]mmD E
)mmE F
;mmF G
returnnn 
RedirectToActionnn +
(nn+ ,
nameofnn, 2
(nn2 3
Indexnn3 8
)nn8 9
)nn9 :
;nn: ;
}oo 
_documentStoreqq 
.qq 
Cancelqq %
(qq% &
)qq& '
;qq' (
foreachss 
(ss 
varss 
errorss "
inss# %
resultss& ,
.ss, -
Errorsss- 3
)ss3 4
{tt 

ModelStateuu 
.uu 
AddModelErroruu ,
(uu, -
stringuu- 3
.uu3 4
Emptyuu4 9
,uu9 :
erroruu; @
.uu@ A
DescriptionuuA L
)uuL M
;uuM N
}vv 
}ww 
returnzz 
Viewzz 
(zz 
modelzz 
)zz 
;zz 
}{{ 	
[}} 	
HttpPost}}	 
]}} 
public~~ 
async~~ 
Task~~ 
<~~ 
IActionResult~~ '
>~~' (
Delete~~) /
(~~/ 0
string~~0 6
id~~7 9
)~~9 :
{ 	
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
ManageRoles
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
�� 
currentRole
�� 
=
�� 
await
�� #
_roleManager
��$ 0
.
��0 1
FindByIdAsync
��1 >
(
��> ?
id
��? A
)
��A B
;
��B C
if
�� 
(
�� 
currentRole
�� 
==
�� 
null
�� #
)
��# $
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
�� 
var
�� 
result
�� 
=
�� 
await
�� 
_roleManager
�� +
.
��+ ,
DeleteAsync
��, 7
(
��7 8
currentRole
��8 C
)
��C D
;
��D E
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
��$ @
]
��@ A
)
��A B
;
��B C
}
�� 
else
�� 
{
�� 
_documentStore
�� 
.
�� 
Cancel
�� %
(
��% &
)
��& '
;
��' (
	_notifier
�� 
.
�� 
Error
�� 
(
��  
H
��  !
[
��! "
$str
��" ?
]
��? @
)
��@ A
;
��A B
foreach
�� 
(
�� 
var
�� 
error
�� "
in
��# %
result
��& ,
.
��, -
Errors
��- 3
)
��3 4
{
�� 
	_notifier
�� 
.
�� 
Error
�� #
(
��# $
H
��$ %
[
��% &
error
��& +
.
��+ ,
Description
��, 7
]
��7 8
)
��8 9
;
��9 :
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
Index
��+ 0
)
��0 1
)
��1 2
;
��2 3
}
�� 	
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
��' (
Edit
��) -
(
��- .
string
��. 4
id
��5 7
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
��M N
ManageRoles
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
role
�� 
=
�� 
(
�� 
Role
�� 
)
�� 
await
�� "
_roleManager
��# /
.
��/ 0
FindByNameAsync
��0 ?
(
��? @
_roleManager
��@ L
.
��L M
NormalizeKey
��M Y
(
��Y Z
id
��Z \
)
��\ ]
)
��] ^
;
��^ _
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
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
�� 
var
�� "
installedPermissions
�� $
=
��% &
await
��' ,*
GetInstalledPermissionsAsync
��- I
(
��I J
)
��J K
;
��K L
var
�� 
allPermissions
�� 
=
��  "
installedPermissions
��! 5
.
��5 6

SelectMany
��6 @
(
��@ A
x
��A B
=>
��C E
x
��F G
.
��G H
Value
��H M
)
��M N
;
��N O
var
�� 
model
�� 
=
�� 
new
�� 
EditRoleViewModel
�� -
{
�� 
Role
�� 
=
�� 
role
�� 
,
�� 
Name
�� 
=
�� 
role
�� 
.
�� 
RoleName
�� $
,
��$ %
RoleDescription
�� 
=
��  !
role
��" &
.
��& '
RoleDescription
��' 6
,
��6 7"
EffectivePermissions
�� $
=
��% &
await
��' ,%
GetEffectivePermissions
��- D
(
��D E
role
��E I
,
��I J
allPermissions
��K Y
)
��Y Z
,
��Z [%
RoleCategoryPermissions
�� '
=
��( )"
installedPermissions
��* >
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
�� 
nameof
�� $
(
��$ %
Edit
��% )
)
��) *
)
��* +
]
��+ ,
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
��' (
EditPost
��) 1
(
��1 2
string
��2 8
id
��9 ;
,
��; <
string
��= C
roleDescription
��D S
)
��S T
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
ManageRoles
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
role
�� 
=
�� 
(
�� 
Role
�� 
)
�� 
await
�� "
_roleManager
��# /
.
��/ 0
FindByNameAsync
��0 ?
(
��? @
_roleManager
��@ L
.
��L M
NormalizeKey
��M Y
(
��Y Z
id
��Z \
)
��\ ]
)
��] ^
;
��^ _
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
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
�� 
role
�� 
.
�� 
RoleDescription
��  
=
��! "
roleDescription
��# 2
;
��2 3
var
�� 
rolePermissions
�� 
=
��  !
new
��" %
List
��& *
<
��* +
	RoleClaim
��+ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
foreach
�� 
(
�� 
string
�� 
key
�� 
in
��  "
Request
��# *
.
��* +
Form
��+ /
.
��/ 0
Keys
��0 4
)
��4 5
{
�� 
if
�� 
(
�� 
key
�� 
.
�� 

StartsWith
�� "
(
��" #
$str
��# .
,
��. /
StringComparison
��0 @
.
��@ A
Ordinal
��A H
)
��H I
&&
��J L
Request
��M T
.
��T U
Form
��U Y
[
��Y Z
key
��Z ]
]
��] ^
==
��_ a
$str
��b h
)
��h i
{
�� 
string
�� 
permissionName
�� )
=
��* +
key
��, /
.
��/ 0
	Substring
��0 9
(
��9 :
$str
��: E
.
��E F
Length
��F L
)
��L M
;
��M N
rolePermissions
�� #
.
��# $
Add
��$ '
(
��' (
new
��( +
	RoleClaim
��, 5
{
��6 7
	ClaimType
��8 A
=
��B C

Permission
��D N
.
��N O
	ClaimType
��O X
,
��X Y

ClaimValue
��Z d
=
��e f
permissionName
��g u
}
��v w
)
��w x
;
��x y
}
�� 
}
�� 
role
�� 
.
�� 

RoleClaims
�� 
.
�� 
	RemoveAll
�� %
(
��% &
c
��& '
=>
��( *
c
��+ ,
.
��, -
	ClaimType
��- 6
==
��7 9

Permission
��: D
.
��D E
	ClaimType
��E N
)
��N O
;
��O P
role
�� 
.
�� 

RoleClaims
�� 
.
�� 
AddRange
�� $
(
��$ %
rolePermissions
��% 4
)
��4 5
;
��5 6
await
�� 
_roleManager
�� 
.
�� 
UpdateAsync
�� *
(
��* +
role
��+ /
)
��/ 0
;
��0 1
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
��# $
nameof
��$ *
(
��* +
Index
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
�� 
	RoleEntry
�� 
BuildRoleEntry
�� (
(
��( )
IRole
��) .
role
��/ 3
)
��3 4
{
�� 	
return
�� 
new
�� 
	RoleEntry
��  
{
�� 
Name
�� 
=
�� 
role
�� 
.
�� 
RoleName
�� $
,
��$ %
Description
�� 
=
�� 
role
�� "
.
��" #
RoleDescription
��# 2
,
��2 3
Selected
�� 
=
�� 
false
��  
}
�� 
;
�� 
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
IDictionary
�� &
<
��& '
string
��' -
,
��- .
IEnumerable
��/ :
<
��: ;

Permission
��; E
>
��E F
>
��F G
>
��G H*
GetInstalledPermissionsAsync
��I e
(
��e f
)
��f g
{
�� 	
var
�� "
installedPermissions
�� $
=
��% &
new
��' *

Dictionary
��+ 5
<
��5 6
string
��6 <
,
��< =
IEnumerable
��> I
<
��I J

Permission
��J T
>
��T U
>
��U V
(
��V W
)
��W X
;
��X Y
foreach
�� 
(
�� 
var
��  
permissionProvider
�� +
in
��, ."
_permissionProviders
��/ C
)
��C D
{
�� 
var
�� 
feature
�� 
=
�� "
_typeFeatureProvider
�� 2
.
��2 3%
GetFeatureForDependency
��3 J
(
��J K 
permissionProvider
��K ]
.
��] ^
GetType
��^ e
(
��e f
)
��f g
)
��g h
;
��h i
var
�� 
featureName
�� 
=
��  !
feature
��" )
.
��) *
Id
��* ,
;
��, -
var
�� 
permissions
�� 
=
��  !
await
��" ' 
permissionProvider
��( :
.
��: ;!
GetPermissionsAsync
��; N
(
��N O
)
��O P
;
��P Q
foreach
�� 
(
�� 
var
�� 

permission
�� '
in
��( *
permissions
��+ 6
)
��6 7
{
�� 
var
�� 
category
��  
=
��! "

permission
��# -
.
��- .
Category
��. 6
;
��6 7
string
�� 
title
��  
=
��! "
String
��# )
.
��) * 
IsNullOrWhiteSpace
��* <
(
��< =
category
��= E
)
��E F
?
��G H
S
��I J
[
��J K
$str
��K X
,
��X Y
featureName
��Z e
]
��e f
:
��g h
category
��i q
;
��q r
if
�� 
(
�� "
installedPermissions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
title
��9 >
)
��> ?
)
��? @
{
�� "
installedPermissions
�� ,
[
��, -
title
��- 2
]
��2 3
=
��4 5"
installedPermissions
��6 J
[
��J K
title
��K P
]
��P Q
.
��Q R
Concat
��R X
(
��X Y
new
��Y \
[
��\ ]
]
��] ^
{
��_ `

permission
��a k
}
��l m
)
��m n
;
��n o
}
�� 
else
�� 
{
�� "
installedPermissions
�� ,
.
��, -
Add
��- 0
(
��0 1
title
��1 6
,
��6 7
new
��8 ;
[
��; <
]
��< =
{
��> ?

permission
��@ J
}
��K L
)
��L M
;
��M N
}
�� 
}
�� 
}
�� 
return
�� "
installedPermissions
�� '
;
��' (
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� &
<
��& '
string
��' -
>
��- .
>
��. /%
GetEffectivePermissions
��0 G
(
��G H
Role
��H L
role
��M Q
,
��Q R
IEnumerable
��S ^
<
��^ _

Permission
��_ i
>
��i j
allPermissions
��k y
)
��y z
{
�� 	
var
�� 
fakeUser
�� 
=
�� 
new
�� 
ClaimsPrincipal
�� .
(
��. /
new
�� 
ClaimsIdentity
�� "
(
��" #
new
��# &
[
��& '
]
��' (
{
��) *
new
��+ .
Claim
��/ 4
(
��4 5

ClaimTypes
��5 ?
.
��? @
Role
��@ D
,
��D E
role
��F J
.
��J K
RoleName
��K S
)
��S T
}
��U V
,
��V W
role
�� 
.
�� 
RoleName
�� 
!=
��  
$str
��! ,
?
��- .
$str
��/ G
:
��H I
null
��J N
)
��N O
)
�� 
;
�� 
var
�� 
result
�� 
=
�� 
new
�� 
List
�� !
<
��! "
string
��" (
>
��( )
(
��) *
)
��* +
;
��+ ,
foreach
�� 
(
�� 
var
�� 

permission
�� #
in
��$ &
allPermissions
��' 5
)
��5 6
{
�� 
if
�� 
(
�� 
await
�� #
_authorizationService
�� /
.
��/ 0
AuthorizeAsync
��0 >
(
��> ?
fakeUser
��? G
,
��G H

permission
��I S
)
��S T
)
��T U
{
�� 
result
�� 
.
�� 
Add
�� 
(
�� 

permission
�� )
.
��) *
Name
��* .
)
��. /
;
��/ 0
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
}
�� 
}�� �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Deployment\AllRolesDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 

Deployment &
{ 
public 

class $
AllRolesDeploymentSource )
:* +
IDeploymentSource, =
{ 
private 
readonly 
RoleManager $
<$ %
IRole% *
>* +
_roleManager, 8
;8 9
private 
readonly 
IRoleService %
_roleService& 2
;2 3
public $
AllRolesDeploymentSource '
(' (
RoleManager( 3
<3 4
IRole4 9
>9 :
roleManager; F
,F G
IRoleServiceH T
roleServiceU `
)` a
{ 	
_roleManager 
= 
roleManager &
;& '
_roleService 
= 
roleService &
;& '
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
allRolesStep 
= 
step #
as$ &"
AllRolesDeploymentStep' =
;= >
if 
( 
allRolesStep 
== 
null  $
)$ %
{ 
return 
; 
}   
var## 
allRoles## 
=## 
await##  
_roleService##! -
.##- .
GetRolesAsync##. ;
(##; <
)##< =
;##= >
var$$ 
permissions$$ 
=$$ 
new$$ !
JArray$$" (
($$( )
)$$) *
;$$* +
var%% 
tasks%% 
=%% 
new%% 
List%%  
<%%  !
Task%%! %
>%%% &
(%%& '
)%%' (
;%%( )
foreach'' 
('' 
var'' 
role'' 
in''  
allRoles''! )
)'') *
{(( 
var)) 
currentRole)) 
=))  !
())" #
Role))# '
)))' (
await))( -
_roleManager)). :
.)): ;
FindByNameAsync)); J
())J K
_roleManager))K W
.))W X
NormalizeKey))X d
())d e
role))e i
.))i j
RoleName))j r
)))r s
)))s t
;))t u
if++ 
(++ 
currentRole++ 
!=++  "
null++# '
)++' (
{,, 
permissions-- 
.--  
Add--  #
(--# $
JObject--$ +
.--+ ,

FromObject--, 6
(--6 7
new.. 
RolesStepRoleModel.. .
{// 
Name00  
=00! "
currentRole00# .
.00. /
RoleName00/ 7
,007 8
Description11 '
=11( )
currentRole11* 5
.115 6
RoleDescription116 E
,11E F
Permissions22 '
=22( )
currentRole22* 5
.225 6

RoleClaims226 @
.22@ A
Where22A F
(22F G
x22G H
=>22I K
x22L M
.22M N
	ClaimType22N W
==22X Z

Permission22[ e
.22e f
	ClaimType22f o
)22o p
.22p q
Select22q w
(22w x
x22x y
=>22z |
x22} ~
.22~ 

ClaimValue	22 �
)
22� �
.
22� �
ToArray
22� �
(
22� �
)
22� �
}33 
)33 
)33 
;33 
}44 
}55 
result77 
.77 
Steps77 
.77 
Add77 
(77 
new77  
JObject77! (
(77( )
new88 
	JProperty88 
(88 
$str88 $
,88$ %
$str88& -
)88- .
,88. /
new99 
	JProperty99 
(99 
$str99 %
,99% &
permissions99' 2
)992 3
):: 
):: 
;:: 
};; 	
}<< 
}== �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Deployment\AllRolesDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 

Deployment &
{ 
public 

class "
AllRolesDeploymentStep '
:( )
DeploymentStep* 8
{		 
public

 "
AllRolesDeploymentStep

 %
(

% &
)

& '
{ 	
Name 
= 
$str 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Deployment\AllRolesDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 

Deployment &
{ 
public 

class (
AllRolesDeploymentStepDriver -
:. /
DisplayDriver0 =
<= >
DeploymentStep> L
,L M"
AllRolesDeploymentStepN d
>d e
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /"
AllRolesDeploymentStep		/ E
step		F J
)		J K
{

 	
return 
Combine 
( 
View 
( 
$str 9
,9 :
step; ?
)? @
.@ A
LocationA I
(I J
$strJ S
,S T
$strU ^
)^ _
,_ `
View 
( 
$str ;
,; <
step= A
)A B
.B C
LocationC K
(K L
$strL W
,W X
$strY b
)b c
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,"
AllRolesDeploymentStep, B
stepC G
)G H
{ 	
return 
View 
( 
$str 5
,5 6
step7 ;
); <
.< =
Location= E
(E F
$strF O
)O P
;P Q
} 	
} 
} �
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Manifest.cs
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
= 
$str	 �
,
� �
Category		 
=		 
$str		 
)

 
]

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Models\RolesDocument.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 
Models "
{ 
public 

class 
RolesDocument 
:  
Document! )
{ 
public		 
List		 
<		 
Role		 
>		 
Roles		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
=		. /
new		0 3
List		4 8
<		8 9
Role		9 =
>		= >
(		> ?
)		? @
;		@ A
}

 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Permissions.cs
	namespace		 	
OrchardCore		
 
.		 
Roles		 
{

 
public 

class 
Permissions 
: 
IPermissionProvider 2
{ 
public 
static 
readonly 

Permission )
ManageRoles* 5
=6 7
CommonPermissions8 I
.I J
ManageRolesJ U
;U V
public 
static 
readonly 

Permission )
AssignRoles* 5
=6 7
CommonPermissions8 I
.I J
AssignRolesJ U
;U V
private 
readonly 
IRoleService %
_roleService& 2
;2 3
public 
Permissions 
( 
IRoleService '
roleService( 3
)3 4
{ 	
_roleService 
= 
roleService &
;& '
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

Permission& 0
>0 1
>1 2
GetPermissionsAsync3 F
(F G
)G H
{ 	
var 
list 
= 
new 
List 
<  

Permission  *
>* +
{ 
ManageRoles 
, 
AssignRoles 
, 
StandardPermissions #
.# $
	SiteOwner$ -
} 
; 
var   
roles   
=   
(   
await   
_roleService   +
.  + ,
GetRoleNamesAsync  , =
(  = >
)  > ?
)  ? @
.!! 
Except!! 
(!! 
new!! 
[!! 
]!! 
{!! 
$str!!  +
,!!+ ,
$str!!- <
}!!= >
,!!> ?
StringComparer!!@ N
.!!N O
OrdinalIgnoreCase!!O `
)!!` a
;!!a b
foreach## 
(## 
var## 
role## 
in##  
roles##! &
)##& '
{$$ 
list%% 
.%% 
Add%% 
(%% 
CommonPermissions%% *
.%%* +)
CreatePermissionForAssignRole%%+ H
(%%H I
role%%I M
)%%M N
)%%N O
;%%O P
}&& 
return(( 
list(( 
;(( 
})) 	
public++ 
IEnumerable++ 
<++  
PermissionStereotype++ /
>++/ 0!
GetDefaultStereotypes++1 F
(++F G
)++G H
{,, 	
return-- 
new-- 
[-- 
]-- 
{-- 
new..  
PermissionStereotype.. (
{..) *
Name// 
=// 
$str// *
,//* +
Permissions00 
=00  !
new00" %
[00% &
]00& '
{00( )
ManageRoles00* 5
,005 6
StandardPermissions007 J
.00J K
	SiteOwner00K T
}00U V
}11 
,11 
}22 
;22 
}33 	
}44 
}55 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Properties\AssemblyInfo.cs
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
]7 8�(
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Recipes\RolesStep.cs
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
Roles

 
.

 
Recipes

 #
{ 
public 

class 
	RolesStep 
: 
IRecipeStepHandler /
{ 
private 
readonly 
RoleManager $
<$ %
IRole% *
>* +
_roleManager, 8
;8 9
public 
	RolesStep 
( 
RoleManager $
<$ %
IRole% *
>* +
roleManager, 7
)7 8
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- 4
,4 5
StringComparison6 F
.F G
OrdinalIgnoreCaseG X
)X Y
)Y Z
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .
RolesStepModel. <
>< =
(= >
)> ?
;? @
foreach!! 
(!! 
var!! 
importedRole!! %
in!!& (
model!!) .
.!!. /
Roles!!/ 4
)!!4 5
{"" 
if## 
(## 
String## 
.## 
IsNullOrWhiteSpace## -
(##- .
importedRole##. :
.##: ;
Name##; ?
)##? @
)##@ A
continue$$ 
;$$ 
var&& 
role&& 
=&& 
(&& 
Role&&  
)&&  !
await&&! &
_roleManager&&' 3
.&&3 4
FindByNameAsync&&4 C
(&&C D
importedRole&&D P
.&&P Q
Name&&Q U
)&&U V
;&&V W
var'' 
	isNewRole'' 
='' 
role''  $
==''% '
null''( ,
;'', -
if)) 
()) 
	isNewRole)) 
))) 
{** 
role++ 
=++ 
new++ 
Role++ #
{++$ %
RoleName++& .
=++/ 0
importedRole++1 =
.++= >
Name++> B
}++C D
;++D E
},, 
role.. 
... 
RoleDescription.. $
=..% &
importedRole..' 3
...3 4
Description..4 ?
;..? @
role// 
.// 

RoleClaims// 
.//  
	RemoveAll//  )
(//) *
c//* +
=>//, .
c/// 0
.//0 1
	ClaimType//1 :
==//; =

Permission//> H
.//H I
	ClaimType//I R
)//R S
;//S T
role00 
.00 

RoleClaims00 
.00  
AddRange00  (
(00( )
importedRole00) 5
.005 6
Permissions006 A
.00A B
Select00B H
(00H I
p00I J
=>00K M
new00N Q
	RoleClaim00R [
{00\ ]
	ClaimType00^ g
=00h i

Permission00j t
.00t u
	ClaimType00u ~
,00~ 

ClaimValue
00� �
=
00� �
p
00� �
}
00� �
)
00� �
)
00� �
;
00� �
if22 
(22 
	isNewRole22 
)22 
{33 
await44 
_roleManager44 &
.44& '
CreateAsync44' 2
(442 3
role443 7
)447 8
;448 9
}55 
else66 
{77 
await88 
_roleManager88 &
.88& '
UpdateAsync88' 2
(882 3
role883 7
)887 8
;888 9
}99 
}:: 
};; 	
public== 
class== 
RolesStepModel== #
{>> 	
public?? 
RolesStepRoleModel?? %
[??% &
]??& '
Roles??( -
{??. /
get??0 3
;??3 4
set??5 8
;??8 9
}??: ;
}@@ 	
}AA 
publicCC 

classCC 
RolesStepRoleModelCC #
{DD 
publicEE 
stringEE 
NameEE 
{EE 
getEE  
;EE  !
setEE" %
;EE% &
}EE' (
publicFF 
stringFF 
DescriptionFF !
{FF" #
getFF$ '
;FF' (
setFF) ,
;FF, -
}FF. /
publicGG 
stringGG 
[GG 
]GG 
PermissionsGG #
{GG$ %
getGG& )
;GG) *
setGG+ .
;GG. /
}GG0 1
}HH 
}II �!
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Services\RoleService.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 
Services $
{ 
public 

class 
RoleService 
: 
IRoleService +
{ 
private 
readonly 
RoleManager $
<$ %
IRole% *
>* +
_roleManager, 8
;8 9
public 
RoleService 
( 
RoleManager &
<& '
IRole' ,
>, -
roleManager. 9
)9 :
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Claim& +
>+ ,
>, -
GetRoleClaimsAsync. @
(@ A
stringA G
roleH L
,L M
CancellationTokenN _
cancellationToken` q
=r s
defaultt {
){ |
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
role% )
)) *
)* +
{ 
throw 
new 
ArgumentException +
(+ ,
$str, T
,T U
nameofV \
(\ ]
role] a
)a b
)b c
;c d
} 
var 
entity 
= 
await 
_roleManager +
.+ ,
FindByNameAsync, ;
(; <
role< @
)@ A
;A B
if 
( 
entity 
== 
null 
) 
{ 
return   
Array   
.   
Empty   "
<  " #
Claim  # (
>  ( )
(  ) *
)  * +
;  + ,
}!! 
return## 
await## 
_roleManager## %
.##% &
GetClaimsAsync##& 4
(##4 5
entity##5 ;
)##; <
;##< =
}$$ 	
public&& 
Task&& 
<&& 
IEnumerable&& 
<&&  
IRole&&  %
>&&% &
>&&& '
GetRolesAsync&&( 5
(&&5 6
)&&6 7
{'' 	
return(( 
Task(( 
.(( 

FromResult(( "
<((" #
IEnumerable((# .
<((. /
IRole((/ 4
>((4 5
>((5 6
(((6 7
_roleManager((7 C
.((C D
Roles((D I
)((I J
;((J K
})) 	
public++ 
Task++ 
<++ 
IEnumerable++ 
<++  
string++  &
>++& '
>++' (
GetRoleNamesAsync++) :
(++: ;
)++; <
{,, 	
return-- 
Task-- 
.-- 

FromResult-- "
<--" #
IEnumerable--# .
<--. /
string--/ 5
>--5 6
>--6 7
(--7 8
_roleManager--8 D
.--D E
Roles--E J
.--J K
Select--K Q
(--Q R
a--R S
=>--T V
a--W X
.--X Y
RoleName--Y a
)--a b
)--b c
;--c d
}.. 	
public00 
Task00 
<00 
IEnumerable00 
<00  
string00  &
>00& '
>00' ('
GetNormalizedRoleNamesAsync00) D
(00D E
)00E F
{11 	
return22 
Task22 
.22 

FromResult22 "
<22" #
IEnumerable22# .
<22. /
string22/ 5
>225 6
>226 7
(227 8
_roleManager228 D
.22D E
Roles22E J
.22J K
Select22K Q
(22Q R
a22R S
=>22T V
_roleManager22W c
.22c d
NormalizeKey22d p
(22p q
a22q r
.22r s
RoleName22s {
)22{ |
)22| }
)22} ~
;22~ 
}33 	
}44 
}55 �0
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Services\RolesPermissionsHandler.cs
	namespace 	
OrchardCore
 
. 
Roles 
{ 
public 

class #
RolesPermissionsHandler (
:) * 
AuthorizationHandler+ ?
<? @!
PermissionRequirement@ U
>U V
{ 
private 
readonly 
RoleManager $
<$ %
IRole% *
>* +
_roleManager, 8
;8 9
public #
RolesPermissionsHandler &
(& '
RoleManager' 2
<2 3
IRole3 8
>8 9
roleManager: E
)E F
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
	protected 
override 
async  
Task! %"
HandleRequirementAsync& <
(< ='
AuthorizationHandlerContext= X
contextY `
,` a!
PermissionRequirementb w
requirement	x �
)
� �
{ 	
if 
( 
context 
. 
HasSucceeded $
)$ %
{ 
return 
; 
} 
var"" 
grantingNames"" 
="" 
new""  #
HashSet""$ +
<""+ ,
string"", 2
>""2 3
(""3 4
StringComparer""4 B
.""B C
OrdinalIgnoreCase""C T
)""T U
;""U V
PermissionNames$$ 
($$ 
requirement$$ '
.$$' (

Permission$$( 2
,$$2 3
grantingNames$$4 A
)$$A B
;$$B C
var'' 
rolesToExamine'' 
=''  
new''! $
List''% )
<'') *
string''* 0
>''0 1
{''2 3
$str''4 ?
}''@ A
;''A B
if)) 
()) 
context)) 
.)) 
User)) 
.)) 
Identity)) %
.))% &
IsAuthenticated))& 5
)))5 6
{** 
rolesToExamine++ 
.++ 
Add++ "
(++" #
$str++# 2
)++2 3
;++3 4
foreach-- 
(-- 
var-- 
claim-- "
in--# %
context--& -
.--- .
User--. 2
.--2 3
Claims--3 9
)--9 :
{.. 
if// 
(// 
claim// 
.// 
Type// "
==//# %

ClaimTypes//& 0
.//0 1
Role//1 5
)//5 6
{00 
rolesToExamine11 &
.11& '
Add11' *
(11* +
claim11+ 0
.110 1
Value111 6
)116 7
;117 8
}22 
}33 
}44 
foreach66 
(66 
var66 
roleName66 !
in66" $
rolesToExamine66% 3
)663 4
{77 
var88 
role88 
=88 
await88  
_roleManager88! -
.88- .
FindByNameAsync88. =
(88= >
roleName88> F
)88F G
;88G H
if:: 
(:: 
role:: 
!=:: 
null::  
)::  !
{;; 
foreach<< 
(<< 
var<<  
claim<<! &
in<<' )
(<<* +
(<<+ ,
Role<<, 0
)<<0 1
role<<1 5
)<<5 6
.<<6 7

RoleClaims<<7 A
)<<A B
{== 
if>> 
(>> 
!>> 
String>> #
.>># $
Equals>>$ *
(>>* +
claim>>+ 0
.>>0 1
	ClaimType>>1 :
,>>: ;

Permission>>< F
.>>F G
	ClaimType>>G P
,>>P Q
StringComparison>>R b
.>>b c
OrdinalIgnoreCase>>c t
)>>t u
)>>u v
{?? 
continue@@ $
;@@$ %
}AA 
stringCC 
permissionNameCC -
=CC. /
claimCC0 5
.CC5 6

ClaimValueCC6 @
;CC@ A
ifEE 
(EE 
grantingNamesEE )
.EE) *
ContainsEE* 2
(EE2 3
permissionNameEE3 A
)EEA B
)EEB C
{FF 
contextGG #
.GG# $
SucceedGG$ +
(GG+ ,
requirementGG, 7
)GG7 8
;GG8 9
returnHH "
;HH" #
}II 
}JJ 
}KK 
}LL 
}MM 	
privateOO 
staticOO 
voidOO 
PermissionNamesOO +
(OO+ ,

PermissionOO, 6

permissionOO7 A
,OOA B
HashSetOOC J
<OOJ K
stringOOK Q
>OOQ R
stackOOS X
)OOX Y
{PP 	
stackRR 
.RR 
AddRR 
(RR 

permissionRR  
.RR  !
NameRR! %
)RR% &
;RR& '
ifUU 
(UU 

permissionUU 
.UU 
	ImpliedByUU $
!=UU% '
nullUU( ,
&&UU- /

permissionUU0 :
.UU: ;
	ImpliedByUU; D
.UUD E
AnyUUE H
(UUH I
)UUI J
)UUJ K
{VV 
foreachWW 
(WW 
varWW 
	impliedByWW &
inWW' )

permissionWW* 4
.WW4 5
	ImpliedByWW5 >
)WW> ?
{XX 
ifZZ 
(ZZ 
stackZZ 
.ZZ 
ContainsZZ &
(ZZ& '
	impliedByZZ' 0
.ZZ0 1
NameZZ1 5
)ZZ5 6
)ZZ6 7
{[[ 
continue\\  
;\\  !
}]] 
PermissionNames`` #
(``# $
	impliedBy``$ -
,``- .
stack``/ 4
)``4 5
;``5 6
}aa 
}bb 
stackee 
.ee 
Addee 
(ee 
StandardPermissionsee )
.ee) *
	SiteOwneree* 3
.ee3 4
Nameee4 8
)ee8 9
;ee9 :
}ff 	
}gg 
}hh ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Services\RoleStore.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 
Services $
{ 
public 

class 
	RoleStore 
: 
IRoleClaimStore ,
<, -
IRole- 2
>2 3
,3 4
IQueryableRoleStore5 H
<H I
IRoleI N
>N O
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
IDocumentManager )
<) *
RolesDocument* 7
>7 8
_documentManager9 I
;I J
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
ILogger  
_logger! (
;( )
private 
bool 
	_updating 
; 
public 
	RoleStore 
( 
IServiceProvider 
serviceProvider ,
,, -
IDocumentManager 
< 
RolesDocument *
>* +
documentManager, ;
,; <
IStringLocalizer 
< 
	RoleStore &
>& '
stringLocalizer( 7
,7 8
ILogger 
< 
	RoleStore 
> 
logger %
)% &
{   	
_serviceProvider!! 
=!! 
serviceProvider!! .
;!!. /
_documentManager"" 
="" 
documentManager"" .
;"". /
S## 
=## 
stringLocalizer## 
;##  
_logger$$ 
=$$ 
logger$$ 
;$$ 
}%% 	
public'' 

IQueryable'' 
<'' 
IRole'' 
>''  
Roles''! &
=>''' )
GetRolesAsync''* 7
(''7 8
)''8 9
.''9 :

GetAwaiter'': D
(''D E
)''E F
.''F G
	GetResult''G P
(''P Q
)''Q R
.''R S
Roles''S X
.''X Y
AsQueryable''Y d
(''d e
)''e f
;''f g
private,, 
Task,, 
<,, 
RolesDocument,, "
>,," #
LoadRolesAsync,,$ 2
(,,2 3
),,3 4
=>,,5 7
_documentManager,,8 H
.,,H I#
GetOrCreateMutableAsync,,I `
(,,` a
),,a b
;,,b c
private11 
Task11 
<11 
RolesDocument11 "
>11" #
GetRolesAsync11$ 1
(111 2
)112 3
=>114 6
_documentManager117 G
.11G H%
GetOrCreateImmutableAsync11H a
(11a b
)11b c
;11c d
private66 
Task66 
UpdateRolesAsync66 %
(66% &
RolesDocument66& 3
roles664 9
)669 :
{77 	
	_updating88 
=88 
true88 
;88 
return:: 
_documentManager:: #
.::# $
UpdateAsync::$ /
(::/ 0
roles::0 5
)::5 6
;::6 7
};; 	
public?? 
async?? 
Task?? 
<?? 
IdentityResult?? (
>??( )
CreateAsync??* 5
(??5 6
IRole??6 ;
role??< @
,??@ A
CancellationToken??B S
cancellationToken??T e
)??e f
{@@ 	
ifAA 
(AA 
roleAA 
==AA 
nullAA 
)AA 
{BB 
throwCC 
newCC !
ArgumentNullExceptionCC /
(CC/ 0
nameofCC0 6
(CC6 7
roleCC7 ;
)CC; <
)CC< =
;CC= >
}DD 
varFF 
rolesFF 
=FF 
awaitFF 
LoadRolesAsyncFF ,
(FF, -
)FF- .
;FF. /
rolesGG 
.GG 
RolesGG 
.GG 
AddGG 
(GG 
(GG 
RoleGG !
)GG! "
roleGG" &
)GG& '
;GG' (
awaitHH 
UpdateRolesAsyncHH "
(HH" #
rolesHH# (
)HH( )
;HH) *
returnJJ 
IdentityResultJJ !
.JJ! "
SuccessJJ" )
;JJ) *
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IdentityResultMM (
>MM( )
DeleteAsyncMM* 5
(MM5 6
IRoleMM6 ;
roleMM< @
,MM@ A
CancellationTokenMMB S
cancellationTokenMMT e
)MMe f
{NN 	
ifOO 
(OO 
roleOO 
==OO 
nullOO 
)OO 
{PP 
throwQQ 
newQQ !
ArgumentNullExceptionQQ /
(QQ/ 0
nameofQQ0 6
(QQ6 7
roleQQ7 ;
)QQ; <
)QQ< =
;QQ= >
}RR 
varTT 
roleToRemoveTT 
=TT 
(TT  
RoleTT  $
)TT$ %
roleTT% )
;TT) *
ifVV 
(VV 
StringVV 
.VV 
EqualsVV 
(VV 
roleToRemoveVV *
.VV* +
NormalizedRoleNameVV+ =
,VV= >
$strVV? J
)VVJ K
||VVL N
StringWW 
.WW 
EqualsWW 
(WW 
roleToRemoveWW *
.WW* +
NormalizedRoleNameWW+ =
,WW= >
$strWW? N
)WWN O
)WWO P
{XX 
returnYY 
IdentityResultYY %
.YY% &
FailedYY& ,
(YY, -
newYY- 0
IdentityErrorYY1 >
{YY? @
DescriptionYYA L
=YYM N
SYYO P
[YYP Q
$strYYQ m
]YYm n
}YYo p
)YYp q
;YYq r
}ZZ 
var\\ $
roleRemovedEventHandlers\\ (
=\\) *
_serviceProvider\\+ ;
.\\; <
GetRequiredService\\< N
<\\N O
IEnumerable\\O Z
<\\Z [$
IRoleRemovedEventHandler\\[ s
>\\s t
>\\t u
(\\u v
)\\v w
;\\w x
await]] $
roleRemovedEventHandlers]] *
.]]* +
InvokeAsync]]+ 6
(]]6 7
(]]7 8
handler]]8 ?
,]]? @
roleToRemove]]A M
)]]M N
=>]]O Q
handler]]R Y
.]]Y Z
RoleRemovedAsync]]Z j
(]]j k
roleToRemove]]k w
.]]w x
RoleName	]]x �
)
]]� �
,
]]� �
roleToRemove
]]� �
,
]]� �
_logger
]]� �
)
]]� �
;
]]� �
var__ 
roles__ 
=__ 
await__ 
LoadRolesAsync__ ,
(__, -
)__- .
;__. /
roleToRemove`` 
=`` 
roles``  
.``  !
Roles``! &
.``& '
FirstOrDefault``' 5
(``5 6
r``6 7
=>``8 :
r``; <
.``< =
RoleName``= E
==``F H
roleToRemove``I U
.``U V
RoleName``V ^
)``^ _
;``_ `
rolesaa 
.aa 
Rolesaa 
.aa 
Removeaa 
(aa 
roleToRemoveaa +
)aa+ ,
;aa, -
awaitcc 
UpdateRolesAsynccc "
(cc" #
rolescc# (
)cc( )
;cc) *
returnee 
IdentityResultee !
.ee! "
Successee" )
;ee) *
}ff 	
publichh 
asynchh 
Taskhh 
<hh 
IRolehh 
>hh  
FindByIdAsynchh! .
(hh. /
stringhh/ 5
roleIdhh6 <
,hh< =
CancellationTokenhh> O
cancellationTokenhhP a
)hha b
{ii 	
varkk 
roleskk 
=kk 
	_updatingkk !
?kk" #
awaitkk$ )
LoadRolesAsynckk* 8
(kk8 9
)kk9 :
:kk; <
awaitkk= B
GetRolesAsynckkC P
(kkP Q
)kkQ R
;kkR S
varmm 
rolemm 
=mm 
rolesmm 
.mm 
Rolesmm "
.mm" #
FirstOrDefaultmm# 1
(mm1 2
xmm2 3
=>mm4 6
xmm7 8
.mm8 9
RoleNamemm9 A
==mmB D
roleIdmmE K
)mmK L
;mmL M
ifoo 
(oo 
roleoo 
==oo 
nulloo 
)oo 
{pp 
returnqq 
nullqq 
;qq 
}rr 
returntt 
	_updatingtt 
?tt 
rolett #
:tt$ %
rolett& *
.tt* +
Clonett+ 0
(tt0 1
)tt1 2
;tt2 3
}uu 	
publicww 
asyncww 
Taskww 
<ww 
IRoleww 
>ww  
FindByNameAsyncww! 0
(ww0 1
stringww1 7
normalizedRoleNameww8 J
,wwJ K
CancellationTokenwwL ]
cancellationTokenww^ o
)wwo p
{xx 	
varzz 
roleszz 
=zz 
	_updatingzz !
?zz" #
awaitzz$ )
LoadRolesAsynczz* 8
(zz8 9
)zz9 :
:zz; <
awaitzz= B
GetRolesAsynczzC P
(zzP Q
)zzQ R
;zzR S
var|| 
role|| 
=|| 
roles|| 
.|| 
Roles|| "
.||" #
FirstOrDefault||# 1
(||1 2
x||2 3
=>||4 6
x||7 8
.||8 9
NormalizedRoleName||9 K
==||L N
normalizedRoleName||O a
)||a b
;||b c
if~~ 
(~~ 
role~~ 
==~~ 
null~~ 
)~~ 
{ 
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
	_updating
�� 
?
�� 
role
�� #
:
��$ %
role
��& *
.
��* +
Clone
��+ 0
(
��0 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� (
GetNormalizedRoleNameAsync
�� 6
(
��6 7
IRole
��7 <
role
��= A
,
��A B
CancellationToken
��C T
cancellationToken
��U f
)
��f g
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
(
��# $
(
��$ %
Role
��% )
)
��) *
role
��* .
)
��. /
.
��/ 0 
NormalizedRoleName
��0 B
)
��B C
;
��C D
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
GetRoleIdAsync
�� *
(
��* +
IRole
��+ 0
role
��1 5
,
��5 6
CancellationToken
��7 H
cancellationToken
��I Z
)
��Z [
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
role
��# '
.
��' (
RoleName
��( 0
.
��0 1
ToUpperInvariant
��1 A
(
��A B
)
��B C
)
��C D
;
��D E
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
GetRoleNameAsync
�� ,
(
��, -
IRole
��- 2
role
��3 7
,
��7 8
CancellationToken
��9 J
cancellationToken
��K \
)
��\ ]
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
role
��# '
.
��' (
RoleName
��( 0
)
��0 1
;
��1 2
}
�� 	
public
�� 
Task
�� (
SetNormalizedRoleNameAsync
�� .
(
��. /
IRole
��/ 4
role
��5 9
,
��9 :
string
��; A
normalizedName
��B P
,
��P Q
CancellationToken
��R c
cancellationToken
��d u
)
��u v
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
(
�� 
(
�� 
Role
�� 
)
�� 
role
�� 
)
�� 
.
��  
NormalizedRoleName
�� +
=
��, -
normalizedName
��. <
;
��< =
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
�� 	
public
�� 
Task
�� 
SetRoleNameAsync
�� $
(
��$ %
IRole
��% *
role
��+ /
,
��/ 0
string
��1 7
roleName
��8 @
,
��@ A
CancellationToken
��B S
cancellationToken
��T e
)
��e f
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
(
�� 
(
�� 
Role
�� 
)
�� 
role
�� 
)
�� 
.
�� 
RoleName
�� !
=
��" #
roleName
��$ ,
;
��, -
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
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IdentityResult
�� (
>
��( )
UpdateAsync
��* 5
(
��5 6
IRole
��6 ;
role
��< @
,
��@ A
CancellationToken
��B S
cancellationToken
��T e
)
��e f
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
var
�� 
roles
�� 
=
�� 
await
�� 
LoadRolesAsync
�� ,
(
��, -
)
��- .
;
��. /
var
�� 
existingRole
�� 
=
�� 
roles
�� $
.
��$ %
Roles
��% *
.
��* +
FirstOrDefault
��+ 9
(
��9 :
x
��: ;
=>
��< >
x
��? @
.
��@ A
RoleName
��A I
==
��J L
role
��M Q
.
��Q R
RoleName
��R Z
)
��Z [
;
��[ \
roles
�� 
.
�� 
Roles
�� 
.
�� 
Remove
�� 
(
�� 
existingRole
�� +
)
��+ ,
;
��, -
roles
�� 
.
�� 
Roles
�� 
.
�� 
Add
�� 
(
�� 
(
�� 
Role
�� !
)
��! "
role
��" &
)
��& '
;
��' (
await
�� 
UpdateRolesAsync
�� "
(
��" #
roles
��# (
)
��( )
;
��) *
return
�� 
IdentityResult
�� !
.
��! "
Success
��" )
;
��) *
}
�� 	
public
�� 
Task
�� 
AddClaimAsync
�� !
(
��! "
IRole
��" '
role
��( ,
,
��, -
Claim
��. 3
claim
��4 9
,
��9 :
CancellationToken
��; L
cancellationToken
��M ^
=
��_ `
default
��a h
(
��h i
CancellationToken
��i z
)
��z {
)
��{ |
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
claim
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
claim
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
(
�� 
(
�� 
Role
�� 
)
�� 
role
�� 
)
�� 
.
�� 

RoleClaims
�� #
.
��# $
Add
��$ '
(
��' (
new
��( +
	RoleClaim
��, 5
{
��6 7
	ClaimType
��8 A
=
��B C
claim
��D I
.
��I J
Type
��J N
,
��N O

ClaimValue
��P Z
=
��[ \
claim
��] b
.
��b c
Value
��c h
}
��i j
)
��j k
;
��k l
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
�� 	
public
�� 
Task
�� 
<
�� 
IList
�� 
<
�� 
Claim
�� 
>
��  
>
��  !
GetClaimsAsync
��" 0
(
��0 1
IRole
��1 6
role
��7 ;
,
��; <
CancellationToken
��= N
cancellationToken
��O `
=
��a b
default
��c j
(
��j k
CancellationToken
��k |
)
��| }
)
��} ~
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
<
��" #
IList
��# (
<
��( )
Claim
��) .
>
��. /
>
��/ 0
(
��0 1
(
��1 2
(
��2 3
Role
��3 7
)
��7 8
role
��8 <
)
��< =
.
��= >

RoleClaims
��> H
.
��H I
Select
��I O
(
��O P
x
��P Q
=>
��R T
x
��U V
.
��V W
ToClaim
��W ^
(
��^ _
)
��_ `
)
��` a
.
��a b
ToList
��b h
(
��h i
)
��i j
)
��j k
;
��k l
}
�� 	
public
�� 
Task
�� 
RemoveClaimAsync
�� $
(
��$ %
IRole
��% *
role
��+ /
,
��/ 0
Claim
��1 6
claim
��7 <
,
��< =
CancellationToken
��> O
cancellationToken
��P a
=
��b c
default
��d k
(
��k l
CancellationToken
��l }
)
��} ~
)
��~ 
{
�� 	
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
��6 7
role
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
claim
�� 
==
�� 
null
�� 
)
�� 
{
�� 
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
claim
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
(
�� 
(
�� 
Role
�� 
)
�� 
role
�� 
)
�� 
.
�� 

RoleClaims
�� #
.
��# $
	RemoveAll
��$ -
(
��- .
x
��. /
=>
��0 2
x
��3 4
.
��4 5
	ClaimType
��5 >
==
��? A
claim
��B G
.
��G H
Type
��H L
&&
��M O
x
��P Q
.
��Q R

ClaimValue
��R \
==
��] _
claim
��` e
.
��e f
Value
��f k
)
��k l
;
��l m
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
�� 	
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
}
�� 	
}
�� 
}�� �O
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Services\RoleUpdater.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 
Services $
{ 
public 

class 
RoleUpdater 
:  
IFeatureEventHandler 3
{ 
private 
readonly 
RoleManager $
<$ %
IRole% *
>* +
_roleManager, 8
;8 9
private 
readonly 
IEnumerable $
<$ %
IPermissionProvider% 8
>8 9 
_permissionProviders: N
;N O
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
ILogger  
_logger! (
;( )
public 
RoleUpdater 
( 
RoleManager 
< 
IRole 
> 
roleManager *
,* +
IEnumerable 
< 
IPermissionProvider +
>+ ,
permissionProviders- @
,@ A 
ITypeFeatureProvider  
typeFeatureProvider! 4
,4 5
ILogger 
< 
RoleUpdater 
>  
logger! '
)' (
{ 	 
_typeFeatureProvider  
=! "
typeFeatureProvider# 6
;6 7
_roleManager 
= 
roleManager &
;& ' 
_permissionProviders  
=! "
permissionProviders# 6
;6 7
_logger 
= 
logger 
; 
}   	
Task""  
IFeatureEventHandler"" !
.""! "
InstallingAsync""" 1
(""1 2
IFeatureInfo""2 >
feature""? F
)""F G
=>""H J
Task""K O
.""O P
CompletedTask""P ]
;""] ^
Task$$  
IFeatureEventHandler$$ !
.$$! "
InstalledAsync$$" 0
($$0 1
IFeatureInfo$$1 =
feature$$> E
)$$E F
=>$$G I*
AddDefaultRolesForFeatureAsync$$J h
($$h i
feature$$i p
)$$p q
;$$q r
Task&&  
IFeatureEventHandler&& !
.&&! "
EnablingAsync&&" /
(&&/ 0
IFeatureInfo&&0 <
feature&&= D
)&&D E
=>&&F H
Task&&I M
.&&M N
CompletedTask&&N [
;&&[ \
Task((  
IFeatureEventHandler(( !
.((! "
EnabledAsync((" .
(((. /
IFeatureInfo((/ ;
feature((< C
)((C D
=>((E G
Task((H L
.((L M
CompletedTask((M Z
;((Z [
Task**  
IFeatureEventHandler** !
.**! "
DisablingAsync**" 0
(**0 1
IFeatureInfo**1 =
feature**> E
)**E F
=>**G I
Task**J N
.**N O
CompletedTask**O \
;**\ ]
Task,,  
IFeatureEventHandler,, !
.,,! "
DisabledAsync,," /
(,,/ 0
IFeatureInfo,,0 <
feature,,= D
),,D E
=>,,F H
Task,,I M
.,,M N
CompletedTask,,N [
;,,[ \
Task..  
IFeatureEventHandler.. !
...! "
UninstallingAsync.." 3
(..3 4
IFeatureInfo..4 @
feature..A H
)..H I
=>..J L
Task..M Q
...Q R
CompletedTask..R _
;.._ `
Task00  
IFeatureEventHandler00 !
.00! "
UninstalledAsync00" 2
(002 3
IFeatureInfo003 ?
feature00@ G
)00G H
=>00I K
Task00L P
.00P Q
CompletedTask00Q ^
;00^ _
public22 
async22 
Task22 *
AddDefaultRolesForFeatureAsync22 8
(228 9
IFeatureInfo229 E
feature22F M
)22M N
{33 	
var55 %
providersForEnabledModule55 )
=55* + 
_permissionProviders55, @
.66 
Where66 
(66 
x66 
=>66  
_typeFeatureProvider66 0
.660 1#
GetFeatureForDependency661 H
(66H I
x66I J
.66J K
GetType66K R
(66R S
)66S T
)66T U
.66U V
Id66V X
==66Y [
feature66\ c
.66c d
Id66d f
)66f g
;66g h
if88 
(88 
_logger88 
.88 
	IsEnabled88 !
(88! "
LogLevel88" *
.88* +
Debug88+ 0
)880 1
)881 2
{99 
if:: 
(:: %
providersForEnabledModule:: -
.::- .
Any::. 1
(::1 2
)::2 3
)::3 4
{;; 
_logger<< 
.<< 
LogDebug<< $
(<<$ %
$str<<% \
,<<\ ]
feature<<^ e
.<<e f
Id<<f h
)<<h i
;<<i j
}== 
else>> 
{?? 
_logger@@ 
.@@ 
LogDebug@@ $
(@@$ %
$str@@% S
,@@S T
feature@@U \
.@@\ ]
Id@@] _
)@@_ `
;@@` a
}AA 
}BB 
foreachDD 
(DD 
varDD 
permissionProviderDD +
inDD, .%
providersForEnabledModuleDD/ H
)DDH I
{EE 
varGG 
stereotypesGG 
=GG  !
permissionProviderGG" 4
.GG4 5!
GetDefaultStereotypesGG5 J
(GGJ K
)GGK L
;GGL M
foreachHH 
(HH 
varHH 

stereotypeHH '
inHH( *
stereotypesHH+ 6
)HH6 7
{II 
varKK 
roleKK 
=KK 
awaitKK $
_roleManagerKK% 1
.KK1 2
FindByNameAsyncKK2 A
(KKA B

stereotypeKKB L
.KKL M
NameKKM Q
)KKQ R
;KKR S
ifLL 
(LL 
roleLL 
==LL 
nullLL  $
)LL$ %
{MM 
ifNN 
(NN 
_loggerNN #
.NN# $
	IsEnabledNN$ -
(NN- .
LogLevelNN. 6
.NN6 7
InformationNN7 B
)NNB C
)NNC D
{OO 
_loggerPP #
.PP# $
LogInformationPP$ 2
(PP2 3
$strPP3 m
,PPm n

stereotypePPo y
.PPy z
NamePPz ~
)PP~ 
;	PP �
}QQ 
roleSS 
=SS 
newSS "
RoleSS# '
{SS( )
RoleNameSS* 2
=SS3 4

stereotypeSS5 ?
.SS? @
NameSS@ D
,SSD E
RoleDescriptionSSF U
=SSV W

stereotypeSSX b
.SSb c
NameSSc g
+SSh i
$strSSj q
}SSr s
;SSs t
awaitTT 
_roleManagerTT *
.TT* +
CreateAsyncTT+ 6
(TT6 7
roleTT7 ;
)TT; <
;TT< =
}UU 
varXX %
stereotypePermissionNamesXX 1
=XX2 3
(XX4 5

stereotypeXX5 ?
.XX? @
PermissionsXX@ K
??XXL N

EnumerableXXO Y
.XXY Z
EmptyXXZ _
<XX_ `

PermissionXX` j
>XXj k
(XXk l
)XXl m
)XXm n
.XXn o
SelectXXo u
(XXu v
xXXv w
=>XXx z
xXX{ |
.XX| }
Name	XX} �
)
XX� �
;
XX� �
varYY "
currentPermissionNamesYY .
=YY/ 0
(YY1 2
(YY2 3
RoleYY3 7
)YY7 8
roleYY8 <
)YY< =
.YY= >

RoleClaimsYY> H
.YYH I
WhereYYI N
(YYN O
xYYO P
=>YYQ S
xYYT U
.YYU V
	ClaimTypeYYV _
==YY` b

PermissionYYc m
.YYm n
	ClaimTypeYYn w
)YYw x
.YYx y
SelectYYy 
(	YY �
x
YY� �
=>
YY� �
x
YY� �
.
YY� �

ClaimValue
YY� �
)
YY� �
;
YY� �
var[[ #
distinctPermissionNames[[ /
=[[0 1"
currentPermissionNames[[2 H
.\\ 
Union\\ 
(\\ %
stereotypePermissionNames\\ 8
)\\8 9
.]] 
Distinct]] !
(]]! "
)]]" #
;]]# $
var`` %
additionalPermissionNames`` 1
=``2 3#
distinctPermissionNames``4 K
.``K L
Except``L R
(``R S"
currentPermissionNames``S i
)``i j
;``j k
ifbb 
(bb %
additionalPermissionNamesbb 1
.bb1 2
Anybb2 5
(bb5 6
)bb6 7
)bb7 8
{cc 
foreachdd 
(dd  !
vardd! $
permissionNamedd% 3
indd4 6%
additionalPermissionNamesdd7 P
)ddP Q
{ee 
ifff 
(ff  
_loggerff  '
.ff' (
	IsEnabledff( 1
(ff1 2
LogLevelff2 :
.ff: ;
Debugff; @
)ff@ A
)ffA B
{gg 
_loggerhh  '
.hh' (
LogDebughh( 0
(hh0 1
$strhh1 j
,hhj k

stereotypehhl v
.hhv w
Namehhw {
,hh{ |
permissionName	hh} �
)
hh� �
;
hh� �
}ii 
awaitkk !
_roleManagerkk" .
.kk. /
AddClaimAsynckk/ <
(kk< =
rolekk= A
,kkA B
newkkC F
ClaimkkG L
(kkL M

PermissionkkM W
.kkW X
	ClaimTypekkX a
,kka b
permissionNamekkc q
)kkq r
)kkr s
;kks t
}ll 
}mm 
}nn 
}oo 
}pp 	
}qq 
}rr �<
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\Startup.cs
	namespace 	
OrchardCore
 
. 
Roles 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{   	
_adminOptions!! 
=!! 
adminOptions!! (
.!!( )
Value!!) .
;!!. /
}"" 	
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
.&& 
TryAddScoped&& !
<&&! "
RoleManager&&" -
<&&- .
IRole&&. 3
>&&3 4
>&&4 5
(&&5 6
)&&6 7
;&&7 8
services'' 
.'' 
TryAddScoped'' !
<''! "

IRoleStore''" ,
<'', -
IRole''- 2
>''2 3
,''3 4
	RoleStore''5 >
>''> ?
(''? @
)''@ A
;''A B
services(( 
.(( 
TryAddScoped(( !
<((! "
IRoleService((" .
,((. /
RoleService((0 ;
>((; <
(((< =
)((= >
;((> ?
services)) 
.)) 
TryAddScoped)) !
<))! "
IRoleClaimStore))" 1
<))1 2
IRole))2 7
>))7 8
,))8 9
	RoleStore)): C
>))C D
())D E
)))E F
;))F G
services** 
.** "
AddRecipeExecutionStep** +
<**+ ,
	RolesStep**, 5
>**5 6
(**6 7
)**7 8
;**8 9
services,, 
.,, 
	AddScoped,, 
<,,  
IFeatureEventHandler,, 3
,,,3 4
RoleUpdater,,5 @
>,,@ A
(,,A B
),,B C
;,,C D
services-- 
.-- 
	AddScoped-- 
<-- !
IAuthorizationHandler-- 4
,--4 5#
RolesPermissionsHandler--6 M
>--M N
(--N O
)--O P
;--P Q
services.. 
... 
	AddScoped.. 
<.. 
INavigationProvider.. 2
,..2 3
	AdminMenu..4 =
>..= >
(..> ?
)..? @
;..@ A
services// 
.// 
	AddScoped// 
<// 
IPermissionProvider// 2
,//2 3
Permissions//4 ?
>//? @
(//@ A
)//A B
;//B C
}00 	
public22 
override22 
void22 
	Configure22 &
(22& '
IApplicationBuilder22' :
builder22; B
,22B C!
IEndpointRouteBuilder22D Y
routes22Z `
,22` a
IServiceProvider22b r
serviceProvider	22s �
)
22� �
{33 	
var44 
adminControllerName44 #
=44$ %
typeof44& ,
(44, -
AdminController44- <
)44< =
.44= >
ControllerName44> L
(44L M
)44M N
;44N O
routes66 
.66 "
MapAreaControllerRoute66 )
(66) *
name77 
:77 
$str77 "
,77" #
areaName88 
:88 
$str88 -
,88- .
pattern99 
:99 
_adminOptions99 &
.99& '
AdminUrlPrefix99' 5
+996 7
$str998 F
,99F G
defaults:: 
::: 
new:: 
{:: 

controller::  *
=::+ ,
adminControllerName::- @
,::@ A
action::B H
=::I J
nameof::K Q
(::Q R
AdminController::R a
.::a b
Index::b g
)::g h
}::i j
);; 
;;; 
routes<< 
.<< "
MapAreaControllerRoute<< )
(<<) *
name== 
:== 
$str== #
,==# $
areaName>> 
:>> 
$str>> -
,>>- .
pattern?? 
:?? 
_adminOptions?? &
.??& '
AdminUrlPrefix??' 5
+??6 7
$str??8 G
,??G H
defaults@@ 
:@@ 
new@@ 
{@@ 

controller@@  *
=@@+ ,
adminControllerName@@- @
,@@@ A
action@@B H
=@@I J
nameof@@K Q
(@@Q R
AdminController@@R a
.@@a b
Create@@b h
)@@h i
}@@j k
)AA 
;AA 
routesBB 
.BB "
MapAreaControllerRouteBB )
(BB) *
nameCC 
:CC 
$strCC #
,CC# $
areaNameDD 
:DD 
$strDD -
,DD- .
patternEE 
:EE 
_adminOptionsEE &
.EE& '
AdminUrlPrefixEE' 5
+EE6 7
$strEE8 L
,EEL M
defaultsFF 
:FF 
newFF 
{FF 

controllerFF  *
=FF+ ,
adminControllerNameFF- @
,FF@ A
actionFFB H
=FFI J
nameofFFK Q
(FFQ R
AdminControllerFFR a
.FFa b
DeleteFFb h
)FFh i
}FFj k
)GG 
;GG 
routesHH 
.HH "
MapAreaControllerRouteHH )
(HH) *
nameII 
:II 
$strII !
,II! "
areaNameJJ 
:JJ 
$strJJ -
,JJ- .
patternKK 
:KK 
_adminOptionsKK &
.KK& '
AdminUrlPrefixKK' 5
+KK6 7
$strKK8 J
,KKJ K
defaultsLL 
:LL 
newLL 
{LL 

controllerLL  *
=LL+ ,
adminControllerNameLL- @
,LL@ A
actionLLB H
=LLI J
nameofLLK Q
(LLQ R
AdminControllerLLR a
.LLa b
EditLLb f
)LLf g
}LLh i
)MM 
;MM 
}NN 	
}OO 
[QQ 
RequireFeaturesQQ 
(QQ 
$strQQ -
)QQ- .
]QQ. /
publicRR 

classRR 
DeploymentStartupRR "
:RR# $
StartupBaseRR% 0
{SS 
publicTT 
overrideTT 
voidTT 
ConfigureServicesTT .
(TT. /
IServiceCollectionTT/ A
servicesTTB J
)TTJ K
{UU 	
servicesVV 
.VV 
AddTransientVV !
<VV! "
IDeploymentSourceVV" 3
,VV3 4$
AllRolesDeploymentSourceVV5 M
>VVM N
(VVN O
)VVO P
;VVP Q
servicesWW 
.WW 
AddSingletonWW !
<WW! ""
IDeploymentStepFactoryWW" 8
>WW8 9
(WW9 :
newWW: =!
DeploymentStepFactoryWW> S
<WWS T"
AllRolesDeploymentStepWWT j
>WWj k
(WWk l
)WWl m
)WWm n
;WWn o
servicesXX 
.XX 
	AddScopedXX 
<XX 
IDisplayDriverXX -
<XX- .
DeploymentStepXX. <
>XX< =
,XX= >(
AllRolesDeploymentStepDriverXX? [
>XX[ \
(XX\ ]
)XX] ^
;XX^ _
}YY 	
}ZZ 
}[[ �&
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\ViewComponents\SelectRolesViewComponent.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 
ViewComponents *
{		 
public

 

class

 $
SelectRolesViewComponent

 )
:

* +
ViewComponent

, 9
{ 
private 
readonly 
IRoleService %
_roleService& 2
;2 3
public $
SelectRolesViewComponent '
(' (
IRoleService( 4
roleService5 @
)@ A
{ 	
_roleService 
= 
roleService &
;& '
} 	
public 
async 
Task 
<  
IViewComponentResult .
>. /
InvokeAsync0 ;
(; <
IEnumerable< G
<G H
stringH N
>N O
selectedRolesP ]
,] ^
string_ e
htmlNamef n
,n o
IEnumerablep {
<{ |
string	| �
>
� �
except
� �
=
� �
null
� �
)
� �
{ 	
if 
( 
selectedRoles 
==  
null! %
)% &
{ 
selectedRoles 
= 
new  #
string$ *
[* +
$num+ ,
], -
;- .
} 
var 
roleSelections 
=  
await! &$
BuildRoleSelectionsAsync' ?
(? @
selectedRoles@ M
,M N
exceptO U
)U V
;V W
var 
model 
= 
new  
SelectRolesViewModel 0
{ 
HtmlName 
= 
htmlName #
,# $
RoleSelections 
=  
roleSelections! /
}   
;   
return"" 
View"" 
("" 
model"" 
)"" 
;"" 
}## 	
private%% 
async%% 
Task%% 
<%% 
IList%%  
<%%  !
	Selection%%! *
<%%* +
string%%+ 1
>%%1 2
>%%2 3
>%%3 4$
BuildRoleSelectionsAsync%%5 M
(%%M N
IEnumerable%%N Y
<%%Y Z
string%%Z `
>%%` a
selectedRoles%%b o
,%%o p
IEnumerable%%q |
<%%| }
string	%%} �
>
%%� �
except
%%� �
)
%%� �
{&& 	
var'' 
	roleNames'' 
='' 
await'' !
_roleService''" .
.''. /
GetRoleNamesAsync''/ @
(''@ A
)''A B
;''B C
if)) 
()) 
except)) 
!=)) 
null)) 
))) 
{** 
	roleNames++ 
=++ 
	roleNames++ %
.++% &
Except++& ,
(++, -
except++- 3
,++3 4
StringComparer++5 C
.++C D
OrdinalIgnoreCase++D U
)++U V
;++V W
},, 
return.. 
	roleNames.. 
... 
Select.. #
(..# $
x..$ %
=>..& (
new..) ,
	Selection..- 6
<..6 7
string..7 =
>..= >
{// 

IsSelected00 
=00 
selectedRoles00 *
.00* +
Contains00+ 3
(003 4
x004 5
)005 6
,006 7
Item11 
=11 
x11 
}22 
)22 
.33 
OrderBy33 
(33 
x33 
=>33 
x33 
.33 
Item33  
)33  !
.44 
ToList44 
(44 
)44 
;44 
}55 	
}66 
public88 

class88  
SelectRolesViewModel88 %
{99 
public:: 
string:: 
HtmlName:: 
{::  
get::! $
;::$ %
set::& )
;::) *
}::+ ,
public;; 
IList;; 
<;; 
	Selection;; 
<;; 
string;; %
>;;% &
>;;& '
RoleSelections;;( 6
{;;7 8
get;;9 <
;;;< =
set;;> A
;;;A B
};;C D
}<< 
public>> 

class>> 
	Selection>> 
<>> 
T>> 
>>> 
{?? 
public@@ 
bool@@ 

IsSelected@@ 
{@@  
get@@! $
;@@$ %
set@@& )
;@@) *
}@@+ ,
publicAA 
TAA 
ItemAA 
{AA 
getAA 
;AA 
setAA  
;AA  !
}AA" #
}BB 
}CC �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\ViewModels\CreateRoleViewModel.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 

ViewModels &
{ 
public 

class 
CreateRoleViewModel $
{ 
[ 	
Required	 
] 
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public

 
string

 
RoleDescription
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
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\ViewModels\EditRoleViewModel.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 

ViewModels &
{ 
public 

class 
EditRoleViewModel "
{		 
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
RoleDescription %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
IDictionary 
< 
string !
,! "
IEnumerable# .
<. /

Permission/ 9
>9 :
>: ;#
RoleCategoryPermissions< S
{T U
getV Y
;Y Z
set[ ^
;^ _
}` a
public 
IEnumerable 
< 
string !
>! " 
EffectivePermissions# 7
{8 9
get: =
;= >
set? B
;B C
}D E
[ 	
	BindNever	 
] 
public 
Role 
Role 
{ 
get 
; 
set  #
;# $
}% &
} 
} �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Roles\ViewModels\RolesViewModel.cs
	namespace 	
OrchardCore
 
. 
Roles 
. 

ViewModels &
{ 
public 

class 
RolesViewModel 
{ 
public 
List 
< 
	RoleEntry 
> 
RoleEntries *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
	RoleEntryD M
>M N
(N O
)O P
;P Q
} 
public

 

class

 
	RoleEntry

 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Selected 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} 