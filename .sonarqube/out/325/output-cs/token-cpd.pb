£
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
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
readonly 3
'AdminMenuNavigationProvidersCoordinator @(
_adminMenuNavigationProviderA ]
;] ^
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 3
'AdminMenuNavigationProvidersCoordinator @'
adminMenuNavigationProviderA \
,\ ]
IStringLocalizer 
< 
	AdminMenu &
>& '
	localizer( 1
)1 2
{ 	(
_adminMenuNavigationProvider (
=) *'
adminMenuNavigationProvider+ F
;F G
S 
= 
	localizer 
; 
} 	
public 
async 
Task  
BuildNavigationAsync .
(. /
string/ 5
name6 :
,: ;
NavigationBuilder< M
builderN U
)U V
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
; 
} 
builder 
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
configuration, 9
=>: <
configuration= J
. 
Add 
( 
S 
[ 
$str (
]( )
,) *
S+ ,
[, -
$str- :
]: ;
.; <
PrefixPosition< J
(J K
)K L
,L M
admtN R
=>S U
admtV Z
. 

Permission #
(# $
Permissions$ /
./ 0
ManageAdminMenu0 ?
)? @
.   
Action   
(    
$str    &
,  & '
$str  ( .
,  . /
new  0 3
{  4 5
area  6 :
=  ; <
$str  = T
}  U V
)  V W
.!! 
LocalNav!! !
(!!! "
)!!" #
)"" 
)"" 
;"" 
await%% (
_adminMenuNavigationProvider%% .
.%%. / 
BuildNavigationAsync%%/ C
(%%C D
$str%%D O
,%%O P
builder%%Q X
)%%X Y
;%%Y Z
}&& 	
}'' 
}(( œ

ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\LinkAdminNode.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

AdminNodes  *
{ 
public 

class 
LinkAdminNode 
:  
	AdminNode! *
{ 
[		 	
Required			 
]		 
public

 
string

 
LinkText
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
Required	 
] 
public 
string 
LinkUrl 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	IconClass 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
[ 
] 
PermissionNames '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
Array8 =
.= >
Empty> C
<C D
stringD J
>J K
(K L
)L M
;M N
} 
} ¬:
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\LinkAdminNodeDriver.cs
	namespace

 	
OrchardCore


 
.

 
	AdminMenu

 
.

  

AdminNodes

  *
{ 
public 

class 
LinkAdminNodeDriver $
:% &
DisplayDriver' 4
<4 5
MenuItem5 =
,= >
LinkAdminNode? L
>L M
{ 
private 
readonly '
IAdminMenuPermissionService 4'
_adminMenuPermissionService5 P
;P Q
public 
LinkAdminNodeDriver "
(" #'
IAdminMenuPermissionService# >&
adminMenuPermissionService? Y
)Y Z
{ 	'
_adminMenuPermissionService '
=( )&
adminMenuPermissionService* D
;D E
} 	
public 
override 
IDisplayResult &
Display' .
(. /
LinkAdminNode/ <
treeNode= E
)E F
{ 	
return 
Combine 
( 
View 
( 
$str 7
,7 8
treeNode9 A
)A B
.B C
LocationC K
(K L
$strL Y
,Y Z
$str[ d
)d e
,e f
View 
( 
$str 9
,9 :
treeNode; C
)C D
.D E
LocationE M
(M N
$strN ]
,] ^
$str_ h
)h i
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
LinkAdminNode, 9
treeNode: B
)B C
{ 	
return 

Initialize 
< "
LinkAdminNodeViewModel 4
>4 5
(5 6
$str6 U
,U V
asyncW \
model] b
=>c e
{   
model!! 
.!! 
LinkText!! 
=!!  
treeNode!!! )
.!!) *
LinkText!!* 2
;!!2 3
model"" 
."" 
LinkUrl"" 
="" 
treeNode""  (
.""( )
LinkUrl"") 0
;""0 1
model## 
.## 
	IconClass## 
=##  !
treeNode##" *
.##* +
	IconClass##+ 4
;##4 5
var%% 
permissions%% 
=%%  !
await%%" ''
_adminMenuPermissionService%%( C
.%%C D
GetPermissionsAsync%%D W
(%%W X
)%%X Y
;%%Y Z
var'' 
selectedPermissions'' '
=''( )
permissions''* 5
.''5 6
Where''6 ;
(''; <
p''< =
=>''> @
treeNode''A I
.''I J
PermissionNames''J Y
.''Y Z
Contains''Z b
(''b c
p''c d
.''d e
Name''e i
)''i j
)''j k
;''k l
model)) 
.)) 
SelectedItems)) #
=))$ %
selectedPermissions))& 9
.** 
Select** 
(** 
p** 
=>**  
new**! $
PermissionViewModel**% 8
{++ 
Name,, 
=,, 
p,,  
.,,  !
Name,,! %
,,,% &
DisplayText-- #
=--$ %
p--& '
.--' (
Description--( 3
}.. 
).. 
... 
ToList.. 
(.. 
).. 
;..  
model// 
.// 
AllItems// 
=//  
permissions//! ,
.00 
Select00 
(00 
p00 
=>00  
new00! $
PermissionViewModel00% 8
{11 
Name22 
=22 
p22  
.22  !
Name22! %
,22% &
DisplayText33 #
=33$ %
p33& '
.33' (
Description33( 3
}44 
)44 
.44 
ToList44 
(44 
)44 
;44  
}55 
)55 
.55 
Location55 
(55 
$str55 !
)55! "
;55" #
}66 	
public88 
override88 
async88 
Task88 "
<88" #
IDisplayResult88# 1
>881 2
UpdateAsync883 >
(88> ?
LinkAdminNode88? L
treeNode88M U
,88U V
IUpdateModel88W c
updater88d k
)88k l
{99 	
var:: 
model:: 
=:: 
new:: "
LinkAdminNodeViewModel:: 2
(::2 3
)::3 4
;::4 5
if;; 
(;; 
await;; 
updater;; 
.;; 
TryUpdateModelAsync;; 1
(;;1 2
model;;2 7
,;;7 8
Prefix;;9 ?
,;;? @
x;;A B
=>;;C E
x;;F G
.;;G H
LinkUrl;;H O
,;;O P
x;;Q R
=>;;S U
x;;V W
.;;W X
LinkText;;X `
,;;` a
x;;b c
=>;;d f
x;;g h
.;;h i
	IconClass;;i r
,;;r s
x;;t u
=>;;v x
x;;y z
.;;z {$
SelectedPermissionNames	;;{ í
)
;;í ì
)
;;ì î
{<< 
treeNode== 
.== 
LinkText== !
===" #
model==$ )
.==) *
LinkText==* 2
;==2 3
treeNode>> 
.>> 
LinkUrl>>  
=>>! "
model>># (
.>>( )
LinkUrl>>) 0
;>>0 1
treeNode?? 
.?? 
	IconClass?? "
=??# $
model??% *
.??* +
	IconClass??+ 4
;??4 5
varAA 
selectedPermissionsAA '
=AA( )
(AA* +
modelAA+ 0
.AA0 1#
SelectedPermissionNamesAA1 H
==AAI K
nullAAL P
?AAQ R
newAAS V
stringAAW ]
[AA] ^
$numAA^ _
]AA_ `
:AAa b
modelAAc h
.AAh i$
SelectedPermissionNames	AAi Ä
.
AAÄ Å
Split
AAÅ Ü
(
AAÜ á
$char
AAá ä
,
AAä ã 
StringSplitOptions
AAå û
.
AAû ü 
RemoveEmptyEntries
AAü ±
)
AA± ≤
)
AA≤ ≥
;
AA≥ ¥
varCC 
permissionsCC 
=CC  !
awaitCC" ''
_adminMenuPermissionServiceCC( C
.CCC D
GetPermissionsAsyncCCD W
(CCW X
)CCX Y
;CCY Z
treeNodeDD 
.DD 
PermissionNamesDD (
=DD) *
permissionsDD+ 6
.EE 
WhereEE 
(EE 
pEE 
=>EE 
selectedPermissionsEE  3
.EE3 4
ContainsEE4 <
(EE< =
pEE= >
.EE> ?
NameEE? C
)EEC D
)EED E
.FF 
SelectFF 
(FF 
pFF 
=>FF  
pFF! "
.FF" #
NameFF# '
)FF' (
.FF( )
ToArrayFF) 0
(FF0 1
)FF1 2
;FF2 3
}GG 
;GG 
returnII 
EditII 
(II 
treeNodeII  
)II  !
;II! "
}JJ 	
}KK 
}LL ‘6
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\LinkAdminNodeNavigationBuilder.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

AdminNodes  *
{ 
public 

class *
LinkAdminNodeNavigationBuilder /
:0 1'
IAdminNodeNavigationBuilder2 M
{ 
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly '
IAdminMenuPermissionService 4'
_adminMenuPermissionService5 P
;P Q
public *
LinkAdminNodeNavigationBuilder -
(- .'
IAdminMenuPermissionService. I&
adminMenuPermissionServiceJ d
,d e
ILoggerf m
<m n+
LinkAdminNodeNavigationBuilder	n å
>
å ç
logger
é î
)
î ï
{ 	'
_adminMenuPermissionService '
=( )&
adminMenuPermissionService* D
;D E
_logger 
= 
logger 
; 
} 	
public 
string 
Name 
=> 
typeof $
($ %
LinkAdminNode% 2
)2 3
.3 4
Name4 8
;8 9
public 
Task  
BuildNavigationAsync (
(( )
MenuItem) 1
menuItem2 :
,: ;
NavigationBuilder< M
builderN U
,U V
IEnumerableW b
<b c'
IAdminNodeNavigationBuilderc ~
>~ 
treeNodeBuilders
Ä ê
)
ê ë
{ 	
var 
node 
= 
menuItem 
as  "
LinkAdminNode# 0
;0 1
if 
( 
node 
== 
null 
|| 
String  &
.& '
IsNullOrEmpty' 4
(4 5
node5 9
.9 :
LinkText: B
)B C
||D F
!G H
nodeH L
.L M
EnabledM T
)T U
{   
return!! 
Task!! 
.!! 
CompletedTask!! )
;!!) *
}"" 
return$$ 
builder$$ 
.$$ 
AddAsync$$ #
($$# $
new$$$ '
LocalizedString$$( 7
($$7 8
node$$8 <
.$$< =
LinkText$$= E
,$$E F
node$$G K
.$$K L
LinkText$$L T
)$$T U
,$$U V
async$$W \
itemBuilder$$] h
=>$$i k
{%% 
itemBuilder'' 
.'' 
Url'' 
(''  
node''  $
.''$ %
LinkUrl''% ,
)'', -
;''- .
itemBuilder(( 
.(( 
Priority(( $
((($ %
node((% )
.(() *
Priority((* 2
)((2 3
;((3 4
itemBuilder)) 
.)) 
Position)) $
())$ %
node))% )
.))) *
Position))* 2
)))2 3
;))3 4
if++ 
(++ 
node++ 
.++ 
PermissionNames++ (
.++( )
Any++) ,
(++, -
)++- .
)++. /
{,, 
var-- 
permissions-- #
=--$ %
await--& +'
_adminMenuPermissionService--, G
.--G H
GetPermissionsAsync--H [
(--[ \
)--\ ]
;--] ^
var// 
selectedPermissions// +
=//, -
permissions//. 9
.//9 :
Where//: ?
(//? @
p//@ A
=>//B D
node//E I
.//I J
PermissionNames//J Y
.//Y Z
Contains//Z b
(//b c
p//c d
.//d e
Name//e i
)//i j
)//j k
;//k l
itemBuilder00 
.00  
Permissions00  +
(00+ ,
selectedPermissions00, ?
)00? @
;00@ A
}11 
node55 
.55 
	IconClass55 
?55 
.55  
Split55  %
(55% &
$char55& )
)55) *
.55* +
ToList55+ 1
(551 2
)552 3
.553 4
ForEach554 ;
(55; <
c55< =
=>55> @
itemBuilder55A L
.55L M
AddClass55M U
(55U V
$str55V c
+55d e
c55f g
)55g h
)55h i
;55i j
foreach99 
(99 
var99 
childTreeNode99 *
in99+ -
menuItem99. 6
.996 7
Items997 <
)99< =
{:: 
try;; 
{<< 
var== 
treeBuilder== '
===( )
treeNodeBuilders==* :
.==: ;
Where==; @
(==@ A
x==A B
=>==C E
x==F G
.==G H
Name==H L
====M O
childTreeNode==P ]
.==] ^
GetType==^ e
(==e f
)==f g
.==g h
Name==h l
)==l m
.==m n
FirstOrDefault==n |
(==| }
)==} ~
;==~ 
await>> 
treeBuilder>> )
.>>) * 
BuildNavigationAsync>>* >
(>>> ?
childTreeNode>>? L
,>>L M
itemBuilder>>N Y
,>>Y Z
treeNodeBuilders>>[ k
)>>k l
;>>l m
}?? 
catch@@ 
(@@ 
	Exception@@ $
e@@% &
)@@& '
{AA 
_loggerBB 
.BB  
LogErrorBB  (
(BB( )
eBB) *
,BB* +
$strBB, t
,BBt u
childTreeNode	BBv É
.
BBÉ Ñ
GetType
BBÑ ã
(
BBã å
)
BBå ç
.
BBç é
Name
BBé í
)
BBí ì
;
BBì î
}CC 
}DD 
}EE 
)EE 
;EE 
}FF 	
privateJJ 
voidJJ $
AddIconPickerClassToLinkJJ -
(JJ- .
stringJJ. 4
	iconClassJJ5 >
,JJ> ?!
NavigationItemBuilderJJ@ U
itemBuilderJJV a
)JJa b
{KK 	
ifLL 
(LL 
StringLL 
.LL 
IsNullOrEmptyLL $
(LL$ %
	iconClassLL% .
)LL. /
)LL/ 0
{MM 
returnNN 
;NN 
}OO 
foreachQQ 
(QQ 
varQQ 
cQQ 
inQQ 
	iconClassQQ '
.QQ' (
SplitQQ( -
(QQ- .
$charQQ. 1
)QQ1 2
)QQ2 3
{RR 
itemBuilderSS 
.SS 
AddClassSS $
(SS$ %
$strSS% 2
+SS3 4
cSS5 6
)SS6 7
;SS7 8
}TT 
}UU 	
}VV 
}WW •
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\LinkAdminNodeViewModel.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

AdminNodes  *
{ 
public 

class "
LinkAdminNodeViewModel '
{ 
[		 	
Required			 
]		 
public

 
string

 
LinkText
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
Required	 
] 
public 
string 
LinkUrl 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	IconClass 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string #
SelectedPermissionNames -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	
	BindNever	 
] 
public 
IList 
< 
PermissionViewModel (
>( )
SelectedItems* 7
{8 9
get: =
;= >
set? B
;B C
}D E
[ 	
	BindNever	 
] 
public 
IList 
< 
PermissionViewModel (
>( )
AllItems* 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} Ã
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\PermissionViewModel.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

AdminNodes  *
{ 
public 

class 
PermissionViewModel $
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} é	
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\PlaceholderAdminNode.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

AdminNodes  *
{ 
public 

class  
PlaceholderAdminNode %
:& '
	AdminNode( 1
{ 
[		 	
Required			 
]		 
public

 
string

 
LinkText
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
+ ,
public 
string 
	IconClass 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
[ 
] 
PermissionNames '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
Array8 =
.= >
Empty> C
<C D
stringD J
>J K
(K L
)L M
;M N
} 
} Ç8
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\PlaceholderAdminNodeDriver.cs
	namespace

 	
OrchardCore


 
.

 
	AdminMenu

 
.

  

AdminNodes

  *
{ 
public 

class &
PlaceholderAdminNodeDriver +
:, -
DisplayDriver. ;
<; <
MenuItem< D
,D E 
PlaceholderAdminNodeF Z
>Z [
{ 
private 
readonly '
IAdminMenuPermissionService 4'
_adminMenuPermissionService5 P
;P Q
public &
PlaceholderAdminNodeDriver )
() *'
IAdminMenuPermissionService* E&
adminMenuPermissionServiceF `
)` a
{ 	'
_adminMenuPermissionService '
=( )&
adminMenuPermissionService* D
;D E
} 	
public 
override 
IDisplayResult &
Display' .
(. / 
PlaceholderAdminNode/ C
treeNodeD L
)L M
{ 	
return 
Combine 
( 
View 
( 
$str >
,> ?
treeNode@ H
)H I
.I J
LocationJ R
(R S
$strS `
,` a
$strb k
)k l
,l m
View 
( 
$str @
,@ A
treeNodeB J
)J K
.K L
LocationL T
(T U
$strU d
,d e
$strf o
)o p
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ , 
PlaceholderAdminNode, @
treeNodeA I
)I J
{ 	
return 

Initialize 
< )
PlaceholderAdminNodeViewModel ;
>; <
(< =
$str= c
,c d
asynce j
modelk p
=>q s
{   
model!! 
.!! 
LinkText!! 
=!!  
treeNode!!! )
.!!) *
LinkText!!* 2
;!!2 3
model"" 
."" 
	IconClass"" 
=""  !
treeNode""" *
.""* +
	IconClass""+ 4
;""4 5
var$$ 
permissions$$ 
=$$  !
await$$" ''
_adminMenuPermissionService$$( C
.$$C D
GetPermissionsAsync$$D W
($$W X
)$$X Y
;$$Y Z
var&& 
selectedPermissions&& '
=&&( )
permissions&&* 5
.&&5 6
Where&&6 ;
(&&; <
p&&< =
=>&&> @
treeNode&&A I
.&&I J
PermissionNames&&J Y
.&&Y Z
Contains&&Z b
(&&b c
p&&c d
.&&d e
Name&&e i
)&&i j
)&&j k
;&&k l
model(( 
.(( 
SelectedItems(( #
=(($ %
selectedPermissions((& 9
.)) 
Select)) 
()) 
p)) 
=>))  
new))! $
PermissionViewModel))% 8
{** 
Name++ 
=++ 
p++  
.++  !
Name++! %
,++% &
DisplayText,, #
=,,$ %
p,,& '
.,,' (
Description,,( 3
}-- 
)-- 
.-- 
ToList-- 
(-- 
)-- 
;--  
model.. 
... 
AllItems.. 
=..  
permissions..! ,
.// 
Select// 
(// 
p// 
=>//  
new//! $
PermissionViewModel//% 8
{00 
Name11 
=11 
p11  
.11  !
Name11! %
,11% &
DisplayText22 #
=22$ %
p22& '
.22' (
Description22( 3
}33 
)33 
.33 
ToList33 
(33 
)33 
;33  
}44 
)44 
.44 
Location44 
(44 
$str44 !
)44! "
;44" #
}55 	
public77 
override77 
async77 
Task77 "
<77" #
IDisplayResult77# 1
>771 2
UpdateAsync773 >
(77> ? 
PlaceholderAdminNode77? S
treeNode77T \
,77\ ]
IUpdateModel77^ j
updater77k r
)77r s
{88 	
var99 
model99 
=99 
new99 )
PlaceholderAdminNodeViewModel99 9
(999 :
)99: ;
;99; <
if:: 
(:: 
await:: 
updater:: 
.:: 
TryUpdateModelAsync:: 1
(::1 2
model::2 7
,::7 8
Prefix::9 ?
,::? @
x::A B
=>::C E
x::F G
.::G H
LinkText::H P
,::P Q
x::R S
=>::T V
x::W X
.::X Y
	IconClass::Y b
,::b c
x::d e
=>::f h
x::i j
.::j k$
SelectedPermissionNames	::k Ç
)
::Ç É
)
::É Ñ
{;; 
treeNode<< 
.<< 
LinkText<< !
=<<" #
model<<$ )
.<<) *
LinkText<<* 2
;<<2 3
treeNode== 
.== 
	IconClass== "
===# $
model==% *
.==* +
	IconClass==+ 4
;==4 5
var?? 
selectedPermissions?? '
=??( )
(??* +
model??+ 0
.??0 1#
SelectedPermissionNames??1 H
==??I K
null??L P
???Q R
new??S V
string??W ]
[??] ^
$num??^ _
]??_ `
:??a b
model??c h
.??h i$
SelectedPermissionNames	??i Ä
.
??Ä Å
Split
??Å Ü
(
??Ü á
$char
??á ä
,
??ä ã 
StringSplitOptions
??å û
.
??û ü 
RemoveEmptyEntries
??ü ±
)
??± ≤
)
??≤ ≥
;
??≥ ¥
var@@ 
permissions@@ 
=@@  !
await@@" ''
_adminMenuPermissionService@@( C
.@@C D
GetPermissionsAsync@@D W
(@@W X
)@@X Y
;@@Y Z
treeNodeAA 
.AA 
PermissionNamesAA (
=AA) *
permissionsAA+ 6
.BB 
WhereBB 
(BB 
pBB 
=>BB 
selectedPermissionsBB  3
.BB3 4
ContainsBB4 <
(BB< =
pBB= >
.BB> ?
NameBB? C
)BBC D
)BBD E
.CC 
SelectCC 
(CC 
pCC 
=>CC  
pCC! "
.CC" #
NameCC# '
)CC' (
.CC( )
ToArrayCC) 0
(CC0 1
)CC1 2
;CC2 3
}DD 
;DD 
returnFF 
EditFF 
(FF 
treeNodeFF  
)FF  !
;FF! "
}GG 	
}HH 
}II ˚.
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\PlaceholderAdminNodeNavigationBuilder.cs
	namespace

 	
OrchardCore


 
.

 
	AdminMenu

 
.

  

AdminNodes

  *
{ 
public 

class 1
%PlaceholderAdminNodeNavigationBuilder 6
:7 8'
IAdminNodeNavigationBuilder9 T
{ 
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly '
IAdminMenuPermissionService 4'
_adminMenuPermissionService5 P
;P Q
public 1
%PlaceholderAdminNodeNavigationBuilder 4
(4 5'
IAdminMenuPermissionService5 P&
adminMenuPermissionServiceQ k
,k l
ILoggerm t
<t u2
%PlaceholderAdminNodeNavigationBuilder	u ö
>
ö õ
logger
ú ¢
)
¢ £
{ 	'
_adminMenuPermissionService '
=( )&
adminMenuPermissionService* D
;D E
_logger 
= 
logger 
; 
} 	
public 
string 
Name 
=> 
typeof $
($ % 
PlaceholderAdminNode% 9
)9 :
.: ;
Name; ?
;? @
public 
Task  
BuildNavigationAsync (
(( )
MenuItem) 1
menuItem2 :
,: ;
NavigationBuilder< M
builderN U
,U V
IEnumerableW b
<b c'
IAdminNodeNavigationBuilderc ~
>~ 
treeNodeBuilders
Ä ê
)
ê ë
{ 	
var 
node 
= 
menuItem 
as  " 
PlaceholderAdminNode# 7
;7 8
if 
( 
node 
== 
null 
|| 
String  &
.& '
IsNullOrEmpty' 4
(4 5
node5 9
.9 :
LinkText: B
)B C
||D F
!G H
nodeH L
.L M
EnabledM T
)T U
{ 
return 
Task 
. 
CompletedTask )
;) *
}   
return"" 
builder"" 
."" 
AddAsync"" #
(""# $
new""$ '
LocalizedString""( 7
(""7 8
node""8 <
.""< =
LinkText""= E
,""E F
node""G K
.""K L
LinkText""L T
)""T U
,""U V
async""W \
itemBuilder""] h
=>""i k
{## 
itemBuilder$$ 
.$$ 
Priority$$ $
($$$ %
node$$% )
.$$) *
Priority$$* 2
)$$2 3
;$$3 4
itemBuilder%% 
.%% 
Position%% $
(%%$ %
node%%% )
.%%) *
Position%%* 2
)%%2 3
;%%3 4
if'' 
('' 
node'' 
.'' 
PermissionNames'' (
.''( )
Any'') ,
('', -
)''- .
)''. /
{(( 
var)) 
permissions)) #
=))$ %
await))& +'
_adminMenuPermissionService)), G
.))G H
GetPermissionsAsync))H [
())[ \
)))\ ]
;))] ^
var++ 
selectedPermissions++ +
=++, -
permissions++. 9
.++9 :
Where++: ?
(++? @
p++@ A
=>++B D
node++E I
.++I J
PermissionNames++J Y
.++Y Z
Contains++Z b
(++b c
p++c d
.++d e
Name++e i
)++i j
)++j k
;++k l
itemBuilder,, 
.,,  
Permissions,,  +
(,,+ ,
selectedPermissions,,, ?
),,? @
;,,@ A
}-- 
node11 
.11 
	IconClass11 
?11 
.11  
Split11  %
(11% &
$char11& )
)11) *
.11* +
ToList11+ 1
(111 2
)112 3
.113 4
ForEach114 ;
(11; <
c11< =
=>11> @
itemBuilder11A L
.11L M
AddClass11M U
(11U V
$str11V c
+11d e
c11f g
)11g h
)11h i
;11i j
foreach55 
(55 
var55 
childTreeNode55 *
in55+ -
menuItem55. 6
.556 7
Items557 <
)55< =
{66 
try77 
{88 
var99 
treeBuilder99 '
=99( )
treeNodeBuilders99* :
.99: ;
Where99; @
(99@ A
x99A B
=>99C E
x99F G
.99G H
Name99H L
==99M O
childTreeNode99P ]
.99] ^
GetType99^ e
(99e f
)99f g
.99g h
Name99h l
)99l m
.99m n
FirstOrDefault99n |
(99| }
)99} ~
;99~ 
await:: 
treeBuilder:: )
.::) * 
BuildNavigationAsync::* >
(::> ?
childTreeNode::? L
,::L M
itemBuilder::N Y
,::Y Z
treeNodeBuilders::[ k
)::k l
;::l m
};; 
catch<< 
(<< 
	Exception<< $
e<<% &
)<<& '
{== 
_logger>> 
.>>  
LogError>>  (
(>>( )
e>>) *
,>>* +
$str>>, t
,>>t u
childTreeNode	>>v É
.
>>É Ñ
GetType
>>Ñ ã
(
>>ã å
)
>>å ç
.
>>ç é
Name
>>é í
)
>>í ì
;
>>ì î
}?? 
}@@ 
}AA 
)AA 
;AA 
}BB 	
}CC 
}DD ‰
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\AdminNodes\PlaceholderAdminNodeViewModel.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

AdminNodes  *
{ 
public 

class )
PlaceholderAdminNodeViewModel .
{ 
[		 	
Required			 
]		 
public

 
string

 
LinkText
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
+ ,
public 
string 
	IconClass 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string #
SelectedPermissionNames -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	
	BindNever	 
] 
public 
IList 
< 
PermissionViewModel (
>( )
SelectedItems* 7
{8 9
get: =
;= >
set? B
;B C
}D E
[ 	
	BindNever	 
] 
public 
IList 
< 
PermissionViewModel (
>( )
AllItems* 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} £∆
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Controllers\MenuController.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
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
class 
MenuController 
:  !

Controller" ,
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IAdminMenuService *
_adminMenuService+ <
;< =
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
IHtmlLocalizer '
H( )
;) *
private   
readonly   
dynamic    
New  ! $
;  $ %
private!! 
readonly!! 
ILogger!!  
_logger!!! (
;!!( )
public## 
MenuController## 
(## !
IAuthorizationService$$ ! 
authorizationService$$" 6
,$$6 7
IAdminMenuService%% 
adminMenuService%% .
,%%. /
ISiteService&& 
siteService&& $
,&&$ %
IShapeFactory'' 
shapeFactory'' &
,''& '
	INotifier(( 
notifier(( 
,(( 
IStringLocalizer)) 
<)) 
MenuController)) +
>))+ ,
stringLocalizer))- <
,))< =
IHtmlLocalizer** 
<** 
MenuController** )
>**) *
htmlLocalizer**+ 8
,**8 9
ILogger++ 
<++ 
MenuController++ "
>++" #
logger++$ *
)++* +
{,, 	!
_authorizationService-- !
=--" # 
authorizationService--$ 8
;--8 9
_adminMenuService.. 
=.. 
adminMenuService..  0
;..0 1
_siteService// 
=// 
siteService// &
;//& '
New00 
=00 
shapeFactory00 
;00 
	_notifier11 
=11 
notifier11  
;11  !
S22 
=22 
stringLocalizer22 
;22  
H33 
=33 
htmlLocalizer33 
;33 
_logger44 
=44 
logger44 
;44 
}55 	
public77 
async77 
Task77 
<77 
IActionResult77 '
>77' (
List77) -
(77- .
ContentOptions77. <
options77= D
,77D E
PagerParameters77F U
pagerParameters77V e
)77e f
{88 	
if99 
(99 
!99 
await99 !
_authorizationService99 ,
.99, -
AuthorizeAsync99- ;
(99; <
User99< @
,99@ A
Permissions99B M
.99M N
ManageAdminMenu99N ]
)99] ^
)99^ _
{:: 
return;; 
Forbid;; 
(;; 
);; 
;;;  
}<< 
var>> 
siteSettings>> 
=>> 
await>> $
_siteService>>% 1
.>>1 2 
GetSiteSettingsAsync>>2 F
(>>F G
)>>G H
;>>H I
var?? 
pager?? 
=?? 
new?? 
Pager?? !
(??! "
pagerParameters??" 1
,??1 2
siteSettings??3 ?
.??? @
PageSize??@ H
)??H I
;??I J
varAA 
adminMenuListAA 
=AA 
(AA  !
awaitAA! &
_adminMenuServiceAA' 8
.AA8 9!
GetAdminMenuListAsyncAA9 N
(AAN O
)AAO P
)AAP Q
.AAQ R
	AdminMenuAAR [
;AA[ \
ifCC 
(CC 
!CC 
stringCC 
.CC 
IsNullOrWhiteSpaceCC *
(CC* +
optionsCC+ 2
.CC2 3
SearchCC3 9
)CC9 :
)CC: ;
{DD 
adminMenuListEE 
=EE 
adminMenuListEE  -
.EE- .
WhereEE. 3
(EE3 4
xEE4 5
=>EE6 8
xEE9 :
.EE: ;
NameEE; ?
.EE? @
ContainsEE@ H
(EEH I
optionsEEI P
.EEP Q
SearchEEQ W
,EEW X
StringComparisonEEY i
.EEi j
OrdinalIgnoreCaseEEj {
)EE{ |
)EE| }
.EE} ~
ToList	EE~ Ñ
(
EEÑ Ö
)
EEÖ Ü
;
EEÜ á
}FF 
varHH 
countHH 
=HH 
adminMenuListHH %
.HH% &
CountHH& +
(HH+ ,
)HH, -
;HH- .
varJJ 

startIndexJJ 
=JJ 
pagerJJ "
.JJ" #
GetStartIndexJJ# 0
(JJ0 1
)JJ1 2
;JJ2 3
varKK 
pageSizeKK 
=KK 
pagerKK  
.KK  !
PageSizeKK! )
;KK) *
IEnumerableLL 
<LL 
ModelsLL 
.LL 
	AdminMenuLL (
>LL( )
resultsLL* 1
=LL2 3
newLL4 7
ListLL8 <
<LL< =
ModelsLL= C
.LLC D
	AdminMenuLLD M
>LLM N
(LLN O
)LLO P
;LLP Q
tryPP 
{QQ 
resultsRR 
=RR 
adminMenuListRR '
.SS 
SkipSS 
(SS 

startIndexSS  
)SS  !
.TT 
TakeTT 
(TT 
pageSizeTT 
)TT 
.UU 
ToListUU 
(UU 
)UU 
;UU 
}VV 
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW  
{XX 
_loggerYY 
.YY 
LogErrorYY  
(YY  !
exYY! #
,YY# $
$strYY% U
)YYU V
;YYV W
	_notifierZZ 
.ZZ 
ErrorZZ 
(ZZ  
HZZ  !
[ZZ! "
$strZZ" R
]ZZR S
)ZZS T
;ZZT U
}[[ 
var^^ 
	routeData^^ 
=^^ 
new^^ 
	RouteData^^  )
(^^) *
)^^* +
;^^+ ,
	routeData__ 
.__ 
Values__ 
.__ 
Add__  
(__  !
$str__! 1
,__1 2
options__3 :
.__: ;
Search__; A
)__A B
;__B C
varaa 

pagerShapeaa 
=aa 
(aa 
awaitaa #
Newaa$ '
.aa' (
Pageraa( -
(aa- .
pageraa. 3
)aa3 4
)aa4 5
.aa5 6
TotalItemCountaa6 D
(aaD E
countaaE J
)aaJ K
.aaK L
	RouteDataaaL U
(aaU V
	routeDataaaV _
)aa_ `
;aa` a
varcc 
modelcc 
=cc 
newcc "
AdminMenuListViewModelcc 2
{dd 
	AdminMenuee 
=ee 
resultsee #
.ee# $
Selectee$ *
(ee* +
xee+ ,
=>ee- /
newee0 3
AdminMenuEntryee4 B
{eeC D
	AdminMenueeE N
=eeO P
xeeQ R
}eeS T
)eeT U
.eeU V
ToListeeV \
(ee\ ]
)ee] ^
,ee^ _
Optionsff 
=ff 
optionsff !
,ff! "
Pagergg 
=gg 

pagerShapegg "
}hh 
;hh 
modeljj 
.jj 
Optionsjj 
.jj 
ContentsBulkActionjj ,
=jj- .
newjj/ 2
Listjj3 7
<jj7 8
SelectListItemjj8 F
>jjF G
(jjG H
)jjH I
{jjJ K
newkk 
SelectListItemkk "
(kk" #
)kk# $
{kk% &
Textkk' +
=kk, -
Skk. /
[kk/ 0
$strkk0 8
]kk8 9
,kk9 :
Valuekk; @
=kkA B
nameofkkC I
(kkI J
ContentsBulkActionkkJ \
.kk\ ]
Removekk] c
)kkc d
}kke f
}ll 
;ll 
returnnn 
Viewnn 
(nn 
modelnn 
)nn 
;nn 
}oo 	
[qq 	
HttpPostqq	 
,qq 

ActionNameqq 
(qq 
$strqq $
)qq$ %
]qq% &
[rr 	
FormValueRequiredrr	 
(rr 
$strrr *
)rr* +
]rr+ ,
publicss 
ActionResultss 
IndexFilterPOSTss +
(ss+ ,"
AdminMenuListViewModelss, B
modelssC H
)ssH I
{tt 	
returnuu 
RedirectToActionuu #
(uu# $
$struu$ *
,uu* +
newuu, / 
RouteValueDictionaryuu0 D
{uuE F
{vv 
$strvv "
,vv" #
modelvv$ )
.vv) *
Optionsvv* 1
.vv1 2
Searchvv2 8
}vv9 :
}ww 
)ww 
;ww 
}xx 	
publiczz 
asynczz 
Taskzz 
<zz 
IActionResultzz '
>zz' (
Createzz) /
(zz/ 0
)zz0 1
{{{ 	
if|| 
(|| 
!|| 
await|| !
_authorizationService|| ,
.||, -
AuthorizeAsync||- ;
(||; <
User||< @
,||@ A
Permissions||B M
.||M N
ManageAdminMenu||N ]
)||] ^
)||^ _
{}} 
return~~ 
Forbid~~ 
(~~ 
)~~ 
;~~  
} 
var
ÅÅ 
model
ÅÅ 
=
ÅÅ 
new
ÅÅ &
AdminMenuCreateViewModel
ÅÅ 4
(
ÅÅ4 5
)
ÅÅ5 6
;
ÅÅ6 7
return
ÉÉ 
View
ÉÉ 
(
ÉÉ 
model
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
[
ÜÜ 	
HttpPost
ÜÜ	 
]
ÜÜ 
public
áá 
async
áá 
Task
áá 
<
áá 
IActionResult
áá '
>
áá' (
Create
áá) /
(
áá/ 0&
AdminMenuCreateViewModel
áá0 H
model
ááI N
)
ááN O
{
àà 	
if
ââ 
(
ââ 
!
ââ 
await
ââ #
_authorizationService
ââ ,
.
ââ, -
AuthorizeAsync
ââ- ;
(
ââ; <
User
ââ< @
,
ââ@ A
Permissions
ââB M
.
ââM N
ManageAdminMenu
ââN ]
)
ââ] ^
)
ââ^ _
{
ää 
return
ãã 
Forbid
ãã 
(
ãã 
)
ãã 
;
ãã  
}
åå 
if
éé 
(
éé 

ModelState
éé 
.
éé 
IsValid
éé "
)
éé" #
{
èè 
var
êê 
tree
êê 
=
êê 
new
êê 
Models
êê %
.
êê% &
	AdminMenu
êê& /
{
êê0 1
Name
êê2 6
=
êê7 8
model
êê9 >
.
êê> ?
Name
êê? C
}
êêD E
;
êêE F
await
íí 
_adminMenuService
íí '
.
íí' (
	SaveAsync
íí( 1
(
íí1 2
tree
íí2 6
)
íí6 7
;
íí7 8
return
îî 
RedirectToAction
îî '
(
îî' (
nameof
îî( .
(
îî. /
List
îî/ 3
)
îî3 4
)
îî4 5
;
îî5 6
}
ïï 
return
óó 
View
óó 
(
óó 
model
óó 
)
óó 
;
óó 
}
òò 	
public
öö 
async
öö 
Task
öö 
<
öö 
IActionResult
öö '
>
öö' (
Edit
öö) -
(
öö- .
string
öö. 4
id
öö5 7
)
öö7 8
{
õõ 	
if
úú 
(
úú 
!
úú 
await
úú #
_authorizationService
úú ,
.
úú, -
AuthorizeAsync
úú- ;
(
úú; <
User
úú< @
,
úú@ A
Permissions
úúB M
.
úúM N
ManageAdminMenu
úúN ]
)
úú] ^
)
úú^ _
{
ùù 
return
ûû 
Forbid
ûû 
(
ûû 
)
ûû 
;
ûû  
}
üü 
var
°° 
adminMenuList
°° 
=
°° 
await
°°  %
_adminMenuService
°°& 7
.
°°7 8#
GetAdminMenuListAsync
°°8 M
(
°°M N
)
°°N O
;
°°O P
var
¢¢ 
	adminMenu
¢¢ 
=
¢¢ 
_adminMenuService
¢¢ -
.
¢¢- .
GetAdminMenuById
¢¢. >
(
¢¢> ?
adminMenuList
¢¢? L
,
¢¢L M
id
¢¢N P
)
¢¢P Q
;
¢¢Q R
if
§§ 
(
§§ 
	adminMenu
§§ 
==
§§ 
null
§§ !
)
§§! "
{
•• 
return
¶¶ 
NotFound
¶¶ 
(
¶¶  
)
¶¶  !
;
¶¶! "
}
ßß 
var
©© 
model
©© 
=
©© 
new
©© $
AdminMenuEditViewModel
©© 2
{
™™ 
Id
´´ 
=
´´ 
	adminMenu
´´ 
.
´´ 
Id
´´ !
,
´´! "
Name
¨¨ 
=
¨¨ 
	adminMenu
¨¨  
.
¨¨  !
Name
¨¨! %
}
≠≠ 
;
≠≠ 
return
ØØ 
View
ØØ 
(
ØØ 
model
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 	
[
≤≤ 	
HttpPost
≤≤	 
]
≤≤ 
public
≥≥ 
async
≥≥ 
Task
≥≥ 
<
≥≥ 
IActionResult
≥≥ '
>
≥≥' (
Edit
≥≥) -
(
≥≥- .$
AdminMenuEditViewModel
≥≥. D
model
≥≥E J
)
≥≥J K
{
¥¥ 	
if
µµ 
(
µµ 
!
µµ 
await
µµ #
_authorizationService
µµ ,
.
µµ, -
AuthorizeAsync
µµ- ;
(
µµ; <
User
µµ< @
,
µµ@ A
Permissions
µµB M
.
µµM N
ManageAdminMenu
µµN ]
)
µµ] ^
)
µµ^ _
{
∂∂ 
return
∑∑ 
Forbid
∑∑ 
(
∑∑ 
)
∑∑ 
;
∑∑  
}
∏∏ 
var
∫∫ 
adminMenuList
∫∫ 
=
∫∫ 
await
∫∫  %
_adminMenuService
∫∫& 7
.
∫∫7 8$
LoadAdminMenuListAsync
∫∫8 N
(
∫∫N O
)
∫∫O P
;
∫∫P Q
var
ªª 
	adminMenu
ªª 
=
ªª 
_adminMenuService
ªª -
.
ªª- .
GetAdminMenuById
ªª. >
(
ªª> ?
adminMenuList
ªª? L
,
ªªL M
model
ªªN S
.
ªªS T
Id
ªªT V
)
ªªV W
;
ªªW X
if
ΩΩ 
(
ΩΩ 
	adminMenu
ΩΩ 
==
ΩΩ 
null
ΩΩ !
)
ΩΩ! "
{
ææ 
return
øø 
NotFound
øø 
(
øø  
)
øø  !
;
øø! "
}
¿¿ 
if
¬¬ 
(
¬¬ 

ModelState
¬¬ 
.
¬¬ 
IsValid
¬¬ "
)
¬¬" #
{
√√ 
	adminMenu
ƒƒ 
.
ƒƒ 
Name
ƒƒ 
=
ƒƒ  
model
ƒƒ! &
.
ƒƒ& '
Name
ƒƒ' +
;
ƒƒ+ ,
await
∆∆ 
_adminMenuService
∆∆ '
.
∆∆' (
	SaveAsync
∆∆( 1
(
∆∆1 2
	adminMenu
∆∆2 ;
)
∆∆; <
;
∆∆< =
	_notifier
»» 
.
»» 
Success
»» !
(
»»! "
H
»»" #
[
»»# $
$str
»»$ F
]
»»F G
)
»»G H
;
»»H I
return
   
RedirectToAction
   '
(
  ' (
nameof
  ( .
(
  . /
List
  / 3
)
  3 4
)
  4 5
;
  5 6
}
ÀÀ 
return
ÕÕ 
View
ÕÕ 
(
ÕÕ 
model
ÕÕ 
)
ÕÕ 
;
ÕÕ 
}
ŒŒ 	
[
–– 	
HttpPost
––	 
]
–– 
public
—— 
async
—— 
Task
—— 
<
—— 
IActionResult
—— '
>
——' (
Delete
——) /
(
——/ 0
string
——0 6
id
——7 9
)
——9 :
{
““ 	
if
”” 
(
”” 
!
”” 
await
”” #
_authorizationService
”” ,
.
””, -
AuthorizeAsync
””- ;
(
””; <
User
””< @
,
””@ A
Permissions
””B M
.
””M N
ManageAdminMenu
””N ]
)
””] ^
)
””^ _
{
‘‘ 
return
’’ 
Forbid
’’ 
(
’’ 
)
’’ 
;
’’  
}
÷÷ 
var
ÿÿ 
adminMenuList
ÿÿ 
=
ÿÿ 
await
ÿÿ  %
_adminMenuService
ÿÿ& 7
.
ÿÿ7 8$
LoadAdminMenuListAsync
ÿÿ8 N
(
ÿÿN O
)
ÿÿO P
;
ÿÿP Q
var
ŸŸ 
	adminMenu
ŸŸ 
=
ŸŸ 
_adminMenuService
ŸŸ -
.
ŸŸ- .
GetAdminMenuById
ŸŸ. >
(
ŸŸ> ?
adminMenuList
ŸŸ? L
,
ŸŸL M
id
ŸŸN P
)
ŸŸP Q
;
ŸŸQ R
if
€€ 
(
€€ 
	adminMenu
€€ 
==
€€ 
null
€€ !
)
€€! "
{
‹‹ 
	_notifier
›› 
.
›› 
Error
›› 
(
››  
H
››  !
[
››! "
$str
››" >
]
››> ?
)
››? @
;
››@ A
return
ﬁﬁ 
RedirectToAction
ﬁﬁ '
(
ﬁﬁ' (
nameof
ﬁﬁ( .
(
ﬁﬁ. /
List
ﬁﬁ/ 3
)
ﬁﬁ3 4
)
ﬁﬁ4 5
;
ﬁﬁ5 6
}
ﬂﬂ 
var
·· 
removed
·· 
=
·· 
await
·· 
_adminMenuService
··  1
.
··1 2
DeleteAsync
··2 =
(
··= >
	adminMenu
··> G
)
··G H
;
··H I
if
„„ 
(
„„ 
removed
„„ 
==
„„ 
$num
„„ 
)
„„ 
{
‰‰ 
	_notifier
ÂÂ 
.
ÂÂ 
Success
ÂÂ !
(
ÂÂ! "
H
ÂÂ" #
[
ÂÂ# $
$str
ÂÂ$ F
]
ÂÂF G
)
ÂÂG H
;
ÂÂH I
}
ÊÊ 
else
ÁÁ 
{
ËË 
	_notifier
ÈÈ 
.
ÈÈ 
Error
ÈÈ 
(
ÈÈ  
H
ÈÈ  !
[
ÈÈ! "
$str
ÈÈ" @
]
ÈÈ@ A
)
ÈÈA B
;
ÈÈB C
}
ÍÍ 
return
ÏÏ 
RedirectToAction
ÏÏ #
(
ÏÏ# $
nameof
ÏÏ$ *
(
ÏÏ* +
List
ÏÏ+ /
)
ÏÏ/ 0
)
ÏÏ0 1
;
ÏÏ1 2
}
ÌÌ 	
[
ÔÔ 	
HttpPost
ÔÔ	 
,
ÔÔ 

ActionName
ÔÔ 
(
ÔÔ 
$str
ÔÔ $
)
ÔÔ$ %
]
ÔÔ% &
[
 	
FormValueRequired
	 
(
 
$str
 .
)
. /
]
/ 0
public
ÒÒ 
async
ÒÒ 
Task
ÒÒ 
<
ÒÒ 
ActionResult
ÒÒ &
>
ÒÒ& '
	IndexPost
ÒÒ( 1
(
ÒÒ1 2

ViewModels
ÒÒ2 <
.
ÒÒ< =
ContentOptions
ÒÒ= K
options
ÒÒL S
,
ÒÒS T
IEnumerable
ÒÒU `
<
ÒÒ` a
string
ÒÒa g
>
ÒÒg h
itemIds
ÒÒi p
)
ÒÒp q
{
ÚÚ 	
if
ÛÛ 
(
ÛÛ 
!
ÛÛ 
await
ÛÛ #
_authorizationService
ÛÛ ,
.
ÛÛ, -
AuthorizeAsync
ÛÛ- ;
(
ÛÛ; <
User
ÛÛ< @
,
ÛÛ@ A
Permissions
ÛÛB M
.
ÛÛM N
ManageAdminMenu
ÛÛN ]
)
ÛÛ] ^
)
ÛÛ^ _
{
ÙÙ 
return
ıı 
Forbid
ıı 
(
ıı 
)
ıı 
;
ıı  
}
ˆˆ 
if
¯¯ 
(
¯¯ 
itemIds
¯¯ 
?
¯¯ 
.
¯¯ 
Count
¯¯ 
(
¯¯ 
)
¯¯  
>
¯¯! "
$num
¯¯# $
)
¯¯$ %
{
˘˘ 
var
˙˙ 
adminMenuList
˙˙ !
=
˙˙" #
(
˙˙$ %
await
˙˙% *
_adminMenuService
˙˙+ <
.
˙˙< =#
GetAdminMenuListAsync
˙˙= R
(
˙˙R S
)
˙˙S T
)
˙˙T U
.
˙˙U V
	AdminMenu
˙˙V _
;
˙˙_ `
var
˚˚ !
checkedContentItems
˚˚ '
=
˚˚( )
adminMenuList
˚˚* 7
.
˚˚7 8
Where
˚˚8 =
(
˚˚= >
x
˚˚> ?
=>
˚˚@ B
itemIds
˚˚C J
.
˚˚J K
Contains
˚˚K S
(
˚˚S T
x
˚˚T U
.
˚˚U V
Id
˚˚V X
)
˚˚X Y
)
˚˚Y Z
;
˚˚Z [
switch
¸¸ 
(
¸¸ 
options
¸¸ 
.
¸¸  

BulkAction
¸¸  *
)
¸¸* +
{
˝˝ 
case
˛˛  
ContentsBulkAction
˛˛ +
.
˛˛+ ,
None
˛˛, 0
:
˛˛0 1
break
ˇˇ 
;
ˇˇ 
case
ÄÄ  
ContentsBulkAction
ÄÄ +
.
ÄÄ+ ,
Remove
ÄÄ, 2
:
ÄÄ2 3
foreach
ÅÅ 
(
ÅÅ  !
var
ÅÅ! $
item
ÅÅ% )
in
ÅÅ* ,!
checkedContentItems
ÅÅ- @
)
ÅÅ@ A
{
ÇÇ 
var
ÉÉ 
	adminMenu
ÉÉ  )
=
ÉÉ* +
adminMenuList
ÉÉ, 9
.
ÉÉ9 :
FirstOrDefault
ÉÉ: H
(
ÉÉH I
x
ÉÉI J
=>
ÉÉK M
String
ÉÉN T
.
ÉÉT U
Equals
ÉÉU [
(
ÉÉ[ \
x
ÉÉ\ ]
.
ÉÉ] ^
Id
ÉÉ^ `
,
ÉÉ` a
item
ÉÉb f
.
ÉÉf g
Id
ÉÉg i
,
ÉÉi j
StringComparison
ÉÉk {
.
ÉÉ{ | 
OrdinalIgnoreCaseÉÉ| ç
)ÉÉç é
)ÉÉé è
;ÉÉè ê
await
ÑÑ !
_adminMenuService
ÑÑ" 3
.
ÑÑ3 4
DeleteAsync
ÑÑ4 ?
(
ÑÑ? @
	adminMenu
ÑÑ@ I
)
ÑÑI J
;
ÑÑJ K
}
ÖÖ 
	_notifier
ÜÜ !
.
ÜÜ! "
Success
ÜÜ" )
(
ÜÜ) *
H
ÜÜ* +
[
ÜÜ+ ,
$str
ÜÜ, O
]
ÜÜO P
)
ÜÜP Q
;
ÜÜQ R
break
áá 
;
áá 
default
àà 
:
àà 
throw
ââ 
new
ââ !)
ArgumentOutOfRangeException
ââ" =
(
ââ= >
)
ââ> ?
;
ââ? @
}
ää 
}
ãã 
return
çç 
RedirectToAction
çç #
(
çç# $
$str
çç$ *
)
çç* +
;
çç+ ,
}
éé 	
[
êê 	
HttpPost
êê	 
]
êê 
public
ëë 
async
ëë 
Task
ëë 
<
ëë 
IActionResult
ëë '
>
ëë' (
Toggle
ëë) /
(
ëë/ 0
string
ëë0 6
id
ëë7 9
)
ëë9 :
{
íí 	
if
ìì 
(
ìì 
!
ìì 
await
ìì #
_authorizationService
ìì ,
.
ìì, -
AuthorizeAsync
ìì- ;
(
ìì; <
User
ìì< @
,
ìì@ A
Permissions
ììB M
.
ììM N
ManageAdminMenu
ììN ]
)
ìì] ^
)
ìì^ _
{
îî 
return
ïï 
Forbid
ïï 
(
ïï 
)
ïï 
;
ïï  
}
ññ 
var
òò 
adminMenuList
òò 
=
òò 
await
òò  %
_adminMenuService
òò& 7
.
òò7 8$
LoadAdminMenuListAsync
òò8 N
(
òòN O
)
òòO P
;
òòP Q
var
ôô 
	adminMenu
ôô 
=
ôô 
_adminMenuService
ôô -
.
ôô- .
GetAdminMenuById
ôô. >
(
ôô> ?
adminMenuList
ôô? L
,
ôôL M
id
ôôN P
)
ôôP Q
;
ôôQ R
if
õõ 
(
õõ 
	adminMenu
õõ 
==
õõ 
null
õõ !
)
õõ! "
{
úú 
return
ùù 
NotFound
ùù 
(
ùù  
)
ùù  !
;
ùù! "
}
ûû 
	adminMenu
†† 
.
†† 
Enabled
†† 
=
†† 
!
††  !
	adminMenu
††! *
.
††* +
Enabled
††+ 2
;
††2 3
await
¢¢ 
_adminMenuService
¢¢ #
.
¢¢# $
	SaveAsync
¢¢$ -
(
¢¢- .
	adminMenu
¢¢. 7
)
¢¢7 8
;
¢¢8 9
	_notifier
§§ 
.
§§ 
Success
§§ 
(
§§ 
H
§§ 
[
§§  
$str
§§  B
]
§§B C
)
§§C D
;
§§D E
return
¶¶ 
RedirectToAction
¶¶ #
(
¶¶# $
nameof
¶¶$ *
(
¶¶* +
List
¶¶+ /
)
¶¶/ 0
)
¶¶0 1
;
¶¶1 2
}
ßß 	
}
®® 
}©© ñÓ
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Controllers\NodeController.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Controllers  +
{ 
[ 
Admin 

]
 
public 

class 
NodeController 
:  !

Controller" ,
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IDisplayManager (
<( )
MenuItem) 1
>1 2
_displayManager3 B
;B C
private 
readonly 
IEnumerable $
<$ %%
IAdminNodeProviderFactory% >
>> ?

_factories@ J
;J K
private 
readonly 
IAdminMenuService *
_adminMenuService+ <
;< =
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
NodeController 
( !
IAuthorizationService ! 
authorizationService" 6
,6 7
IEnumerable   
<   
IPermissionProvider   +
>  + ,
permissionProviders  - @
,  @ A
IDisplayManager!! 
<!! 
MenuItem!! $
>!!$ %
displayManager!!& 4
,!!4 5
IEnumerable"" 
<"" %
IAdminNodeProviderFactory"" 1
>""1 2
	factories""3 <
,""< =
IAdminMenuService## 
adminMenuService## .
,##. /
IHtmlLocalizer$$ 
<$$ 
NodeController$$ )
>$$) *
htmlLocalizer$$+ 8
,$$8 9
	INotifier%% 
notifier%% 
,%%  
IUpdateModelAccessor&&  
updateModelAccessor&&! 4
)&&4 5
{'' 	
_displayManager(( 
=(( 
displayManager(( ,
;((, -

_factories)) 
=)) 
	factories)) "
;))" #
_adminMenuService** 
=** 
adminMenuService**  0
;**0 1!
_authorizationService++ !
=++" # 
authorizationService++$ 8
;++8 9
	_notifier,, 
=,, 
notifier,,  
;,,  ! 
_updateModelAccessor--  
=--! "
updateModelAccessor--# 6
;--6 7
H.. 
=.. 
htmlLocalizer.. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
List11) -
(11- .
string11. 4
id115 7
)117 8
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
.33M N
ManageAdminMenu33N ]
)33] ^
)33^ _
{44 
return55 
Forbid55 
(55 
)55 
;55  
}66 
var88 
adminMenuList88 
=88 
await88  %
_adminMenuService88& 7
.887 8!
GetAdminMenuListAsync888 M
(88M N
)88N O
;88O P
var99 
	adminMenu99 
=99 
_adminMenuService99 -
.99- .
GetAdminMenuById99. >
(99> ?
adminMenuList99? L
,99L M
id99N P
)99P Q
;99Q R
if;; 
(;; 
	adminMenu;; 
==;; 
null;; !
);;! "
{<< 
return== 
NotFound== 
(==  
)==  !
;==! "
}>> 
return@@ 
View@@ 
(@@ 
await@@ !
BuildDisplayViewModel@@ 3
(@@3 4
	adminMenu@@4 =
)@@= >
)@@> ?
;@@? @
}AA 	
privateCC 
asyncCC 
TaskCC 
<CC "
AdminNodeListViewModelCC 1
>CC1 2!
BuildDisplayViewModelCC3 H
(CCH I
ModelsCCI O
.CCO P
	AdminMenuCCP Y
treeCCZ ^
)CC^ _
{DD 	
varEE 

thumbnailsEE 
=EE 
newEE  

DictionaryEE! +
<EE+ ,
stringEE, 2
,EE2 3
dynamicEE4 ;
>EE; <
(EE< =
)EE= >
;EE> ?
foreachFF 
(FF 
varFF 
factoryFF  
inFF! #

_factoriesFF$ .
)FF. /
{GG 
varHH 
treeNodeHH 
=HH 
factoryHH &
.HH& '
CreateHH' -
(HH- .
)HH. /
;HH/ 0
dynamicII 
	thumbnailII !
=II" #
awaitII$ )
_displayManagerII* 9
.II9 :
BuildDisplayAsyncII: K
(IIK L
treeNodeIIL T
,IIT U 
_updateModelAccessorIIV j
.IIj k
ModelUpdaterIIk w
,IIw x
$str	IIy à
)
IIà â
;
IIâ ä
	thumbnailJJ 
.JJ 
TreeNodeJJ "
=JJ# $
treeNodeJJ% -
;JJ- .

thumbnailsKK 
.KK 
AddKK 
(KK 
factoryKK &
.KK& '
NameKK' +
,KK+ ,
	thumbnailKK- 6
)KK6 7
;KK7 8
}LL 
varNN 
modelNN 
=NN 
newNN "
AdminNodeListViewModelNN 2
{OO 
	AdminMenuPP 
=PP 
treePP  
,PP  !

ThumbnailsQQ 
=QQ 

thumbnailsQQ '
,QQ' (
}RR 
;RR 
returnTT 
modelTT 
;TT 
}UU 	
publicWW 
asyncWW 
TaskWW 
<WW 
IActionResultWW '
>WW' (
CreateWW) /
(WW/ 0
stringWW0 6
idWW7 9
,WW9 :
stringWW; A
typeWWB F
)WWF G
{XX 	
ifYY 
(YY 
!YY 
awaitYY !
_authorizationServiceYY ,
.YY, -
AuthorizeAsyncYY- ;
(YY; <
UserYY< @
,YY@ A
PermissionsYYB M
.YYM N
ManageAdminMenuYYN ]
)YY] ^
)YY^ _
{ZZ 
return[[ 
Forbid[[ 
([[ 
)[[ 
;[[  
}\\ 
var]] 
adminMenuList]] 
=]] 
await]]  %
_adminMenuService]]& 7
.]]7 8!
GetAdminMenuListAsync]]8 M
(]]M N
)]]N O
;]]O P
var^^ 
	adminMenu^^ 
=^^ 
_adminMenuService^^ -
.^^- .
GetAdminMenuById^^. >
(^^> ?
adminMenuList^^? L
,^^L M
id^^N P
)^^P Q
;^^Q R
if`` 
(`` 
	adminMenu`` 
==`` 
null`` !
)``! "
{aa 
returnbb 
NotFoundbb 
(bb  
)bb  !
;bb! "
}cc 
varee 
treeNodeee 
=ee 

_factoriesee %
.ee% &
FirstOrDefaultee& 4
(ee4 5
xee5 6
=>ee7 9
xee: ;
.ee; <
Nameee< @
==eeA C
typeeeD H
)eeH I
?eeI J
.eeJ K
CreateeeK Q
(eeQ R
)eeR S
;eeS T
ifgg 
(gg 
treeNodegg 
==gg 
nullgg  
)gg  !
{hh 
returnii 
NotFoundii 
(ii  
)ii  !
;ii! "
}jj 
varll 
modelll 
=ll 
newll "
AdminNodeEditViewModelll 2
{mm 
AdminMenuIdnn 
=nn 
idnn  
,nn  !
	AdminNodeoo 
=oo 
treeNodeoo $
,oo$ %
AdminNodeIdpp 
=pp 
treeNodepp &
.pp& '
UniqueIdpp' /
,pp/ 0
AdminNodeTypeqq 
=qq 
typeqq  $
,qq$ %
Editorrr 
=rr 
awaitrr 
_displayManagerrr .
.rr. /
BuildEditorAsyncrr/ ?
(rr? @
treeNoderr@ H
,rrH I
updaterrrJ Q
:rrQ R 
_updateModelAccessorrrS g
.rrg h
ModelUpdaterrrh t
,rrt u
isNewrrv {
:rr{ |
true	rr} Å
)
rrÅ Ç
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
<yy 
IActionResultyy '
>yy' (
Createyy) /
(yy/ 0"
AdminNodeEditViewModelyy0 F
modelyyG L
)yyL M
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
.{{M N
ManageAdminMenu{{N ]
){{] ^
){{^ _
{|| 
return}} 
Forbid}} 
(}} 
)}} 
;}}  
}~~ 
var
ÄÄ 
adminMenuList
ÄÄ 
=
ÄÄ 
await
ÄÄ  %
_adminMenuService
ÄÄ& 7
.
ÄÄ7 8$
LoadAdminMenuListAsync
ÄÄ8 N
(
ÄÄN O
)
ÄÄO P
;
ÄÄP Q
var
ÅÅ 
	adminMenu
ÅÅ 
=
ÅÅ 
_adminMenuService
ÅÅ -
.
ÅÅ- .
GetAdminMenuById
ÅÅ. >
(
ÅÅ> ?
adminMenuList
ÅÅ? L
,
ÅÅL M
model
ÅÅN S
.
ÅÅS T
AdminMenuId
ÅÅT _
)
ÅÅ_ `
;
ÅÅ` a
if
ÉÉ 
(
ÉÉ 
	adminMenu
ÉÉ 
==
ÉÉ 
null
ÉÉ !
)
ÉÉ! "
{
ÑÑ 
return
ÖÖ 
NotFound
ÖÖ 
(
ÖÖ  
)
ÖÖ  !
;
ÖÖ! "
}
ÜÜ 
var
àà 
treeNode
àà 
=
àà 

_factories
àà %
.
àà% &
FirstOrDefault
àà& 4
(
àà4 5
x
àà5 6
=>
àà7 9
x
àà: ;
.
àà; <
Name
àà< @
==
ààA C
model
ààD I
.
ààI J
AdminNodeType
ààJ W
)
ààW X
?
ààX Y
.
ààY Z
Create
ààZ `
(
àà` a
)
ààa b
;
ààb c
if
ää 
(
ää 
treeNode
ää 
==
ää 
null
ää  
)
ää  !
{
ãã 
return
åå 
NotFound
åå 
(
åå  
)
åå  !
;
åå! "
}
çç 
dynamic
èè 
editor
èè 
=
èè 
await
èè "
_displayManager
èè# 2
.
èè2 3
UpdateEditorAsync
èè3 D
(
èèD E
treeNode
èèE M
,
èèM N
updater
èèO V
:
èèV W"
_updateModelAccessor
èèX l
.
èèl m
ModelUpdater
èèm y
,
èèy z
isNewèè{ Ä
:èèÄ Å
trueèèÇ Ü
)èèÜ á
;èèá à
editor
êê 
.
êê 
TreeNode
êê 
=
êê 
treeNode
êê &
;
êê& '
if
íí 
(
íí 

ModelState
íí 
.
íí 
IsValid
íí "
)
íí" #
{
ìì 
treeNode
îî 
.
îî 
UniqueId
îî !
=
îî" #
model
îî$ )
.
îî) *
AdminNodeId
îî* 5
;
îî5 6
	adminMenu
ïï 
.
ïï 
	MenuItems
ïï #
.
ïï# $
Add
ïï$ '
(
ïï' (
treeNode
ïï( 0
)
ïï0 1
;
ïï1 2
await
ññ 
_adminMenuService
ññ '
.
ññ' (
	SaveAsync
ññ( 1
(
ññ1 2
	adminMenu
ññ2 ;
)
ññ; <
;
ññ< =
	_notifier
òò 
.
òò 
Success
òò !
(
òò! "
H
òò" #
[
òò# $
$str
òò$ D
]
òòD E
)
òòE F
;
òòF G
return
ôô 
RedirectToAction
ôô '
(
ôô' (
$str
ôô( .
,
ôô. /
new
ôô0 3
{
ôô4 5
id
ôô6 8
=
ôô9 :
model
ôô; @
.
ôô@ A
AdminMenuId
ôôA L
}
ôôM N
)
ôôN O
;
ôôO P
}
öö 
model
úú 
.
úú 
Editor
úú 
=
úú 
editor
úú !
;
úú! "
return
üü 
View
üü 
(
üü 
model
üü 
)
üü 
;
üü 
}
†† 	
public
¢¢ 
async
¢¢ 
Task
¢¢ 
<
¢¢ 
IActionResult
¢¢ '
>
¢¢' (
Edit
¢¢) -
(
¢¢- .
string
¢¢. 4
id
¢¢5 7
,
¢¢7 8
string
¢¢9 ?

treeNodeId
¢¢@ J
)
¢¢J K
{
££ 	
if
§§ 
(
§§ 
!
§§ 
await
§§ #
_authorizationService
§§ ,
.
§§, -
AuthorizeAsync
§§- ;
(
§§; <
User
§§< @
,
§§@ A
Permissions
§§B M
.
§§M N
ManageAdminMenu
§§N ]
)
§§] ^
)
§§^ _
{
•• 
return
¶¶ 
Forbid
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶  
}
ßß 
var
©© 
adminMenuList
©© 
=
©© 
await
©©  %
_adminMenuService
©©& 7
.
©©7 8#
GetAdminMenuListAsync
©©8 M
(
©©M N
)
©©N O
;
©©O P
var
™™ 
	adminMenu
™™ 
=
™™ 
_adminMenuService
™™ -
.
™™- .
GetAdminMenuById
™™. >
(
™™> ?
adminMenuList
™™? L
,
™™L M
id
™™N P
)
™™P Q
;
™™Q R
if
¨¨ 
(
¨¨ 
	adminMenu
¨¨ 
==
¨¨ 
null
¨¨ !
)
¨¨! "
{
≠≠ 
return
ÆÆ 
NotFound
ÆÆ 
(
ÆÆ  
)
ÆÆ  !
;
ÆÆ! "
}
ØØ 
var
±± 
treeNode
±± 
=
±± 
	adminMenu
±± $
.
±±$ %
GetMenuItemById
±±% 4
(
±±4 5

treeNodeId
±±5 ?
)
±±? @
;
±±@ A
if
≥≥ 
(
≥≥ 
treeNode
≥≥ 
==
≥≥ 
null
≥≥  
)
≥≥  !
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
∂∂ 
var
∏∏ 
model
∏∏ 
=
∏∏ 
new
∏∏ $
AdminNodeEditViewModel
∏∏ 2
{
ππ 
AdminMenuId
∫∫ 
=
∫∫ 
id
∫∫  
,
∫∫  !
	AdminNode
ªª 
=
ªª 
treeNode
ªª $
,
ªª$ %
AdminNodeId
ºº 
=
ºº 
treeNode
ºº &
.
ºº& '
UniqueId
ºº' /
,
ºº/ 0
AdminNodeType
ΩΩ 
=
ΩΩ 
treeNode
ΩΩ  (
.
ΩΩ( )
GetType
ΩΩ) 0
(
ΩΩ0 1
)
ΩΩ1 2
.
ΩΩ2 3
Name
ΩΩ3 7
,
ΩΩ7 8
Priority
ææ 
=
ææ 
treeNode
ææ #
.
ææ# $
Priority
ææ$ ,
,
ææ, -
Position
øø 
=
øø 
treeNode
øø #
.
øø# $
Position
øø$ ,
,
øø, -
Editor
¿¿ 
=
¿¿ 
await
¿¿ 
_displayManager
¿¿ .
.
¿¿. /
BuildEditorAsync
¿¿/ ?
(
¿¿? @
treeNode
¿¿@ H
,
¿¿H I
updater
¿¿J Q
:
¿¿Q R"
_updateModelAccessor
¿¿S g
.
¿¿g h
ModelUpdater
¿¿h t
,
¿¿t u
isNew
¿¿v {
:
¿¿{ |
false¿¿} Ç
)¿¿Ç É
}
¡¡ 
;
¡¡ 
model
√√ 
.
√√ 
Editor
√√ 
.
√√ 
TreeNode
√√ !
=
√√" #
treeNode
√√$ ,
;
√√, -
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
∆∆ 	
[
»» 	
HttpPost
»»	 
]
»» 
public
…… 
async
…… 
Task
…… 
<
…… 
IActionResult
…… '
>
……' (
Edit
……) -
(
……- .$
AdminNodeEditViewModel
……. D
model
……E J
)
……J K
{
   	
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
await
ÀÀ #
_authorizationService
ÀÀ ,
.
ÀÀ, -
AuthorizeAsync
ÀÀ- ;
(
ÀÀ; <
User
ÀÀ< @
,
ÀÀ@ A
Permissions
ÀÀB M
.
ÀÀM N
ManageAdminMenu
ÀÀN ]
)
ÀÀ] ^
)
ÀÀ^ _
{
ÃÃ 
return
ÕÕ 
Forbid
ÕÕ 
(
ÕÕ 
)
ÕÕ 
;
ÕÕ  
}
ŒŒ 
var
–– 
adminMenuList
–– 
=
–– 
await
––  %
_adminMenuService
––& 7
.
––7 8$
LoadAdminMenuListAsync
––8 N
(
––N O
)
––O P
;
––P Q
var
—— 
	adminMenu
—— 
=
—— 
_adminMenuService
—— -
.
——- .
GetAdminMenuById
——. >
(
——> ?
adminMenuList
——? L
,
——L M
model
——N S
.
——S T
AdminMenuId
——T _
)
——_ `
;
——` a
if
”” 
(
”” 
	adminMenu
”” 
==
”” 
null
”” !
)
””! "
{
‘‘ 
return
’’ 
NotFound
’’ 
(
’’  
)
’’  !
;
’’! "
}
÷÷ 
var
ÿÿ 
treeNode
ÿÿ 
=
ÿÿ 
	adminMenu
ÿÿ $
.
ÿÿ$ %
GetMenuItemById
ÿÿ% 4
(
ÿÿ4 5
model
ÿÿ5 :
.
ÿÿ: ;
AdminNodeId
ÿÿ; F
)
ÿÿF G
;
ÿÿG H
if
⁄⁄ 
(
⁄⁄ 
treeNode
⁄⁄ 
==
⁄⁄ 
null
⁄⁄  
)
⁄⁄  !
{
€€ 
return
‹‹ 
NotFound
‹‹ 
(
‹‹  
)
‹‹  !
;
‹‹! "
}
›› 
var
ﬂﬂ 
editor
ﬂﬂ 
=
ﬂﬂ 
await
ﬂﬂ 
_displayManager
ﬂﬂ .
.
ﬂﬂ. /
UpdateEditorAsync
ﬂﬂ/ @
(
ﬂﬂ@ A
treeNode
ﬂﬂA I
,
ﬂﬂI J
updater
ﬂﬂK R
:
ﬂﬂR S"
_updateModelAccessor
ﬂﬂT h
.
ﬂﬂh i
ModelUpdater
ﬂﬂi u
,
ﬂﬂu v
isNew
ﬂﬂw |
:
ﬂﬂ| }
falseﬂﬂ~ É
)ﬂﬂÉ Ñ
;ﬂﬂÑ Ö
if
·· 
(
·· 

ModelState
·· 
.
·· 
IsValid
·· "
)
··" #
{
‚‚ 
treeNode
„„ 
.
„„ 
Priority
„„ !
=
„„" #
model
„„$ )
.
„„) *
Priority
„„* 2
;
„„2 3
treeNode
‰‰ 
.
‰‰ 
Position
‰‰ !
=
‰‰" #
model
‰‰$ )
.
‰‰) *
Position
‰‰* 2
;
‰‰2 3
await
ÊÊ 
_adminMenuService
ÊÊ '
.
ÊÊ' (
	SaveAsync
ÊÊ( 1
(
ÊÊ1 2
	adminMenu
ÊÊ2 ;
)
ÊÊ; <
;
ÊÊ< =
	_notifier
ËË 
.
ËË 
Success
ËË !
(
ËË! "
H
ËË" #
[
ËË# $
$str
ËË$ F
]
ËËF G
)
ËËG H
;
ËËH I
return
ÈÈ 
RedirectToAction
ÈÈ '
(
ÈÈ' (
nameof
ÈÈ( .
(
ÈÈ. /
List
ÈÈ/ 3
)
ÈÈ3 4
,
ÈÈ4 5
new
ÈÈ6 9
{
ÈÈ: ;
id
ÈÈ< >
=
ÈÈ? @
model
ÈÈA F
.
ÈÈF G
AdminMenuId
ÈÈG R
}
ÈÈS T
)
ÈÈT U
;
ÈÈU V
}
ÍÍ 
	_notifier
ÏÏ 
.
ÏÏ 
Error
ÏÏ 
(
ÏÏ 
H
ÏÏ 
[
ÏÏ 
$str
ÏÏ E
]
ÏÏE F
)
ÏÏF G
;
ÏÏG H
model
ÌÌ 
.
ÌÌ 
Editor
ÌÌ 
=
ÌÌ 
editor
ÌÌ !
;
ÌÌ! "
return
 
View
 
(
 
model
 
)
 
;
 
}
ÒÒ 	
[
ÛÛ 	
HttpPost
ÛÛ	 
]
ÛÛ 
public
ÙÙ 
async
ÙÙ 
Task
ÙÙ 
<
ÙÙ 
IActionResult
ÙÙ '
>
ÙÙ' (
Delete
ÙÙ) /
(
ÙÙ/ 0
string
ÙÙ0 6
id
ÙÙ7 9
,
ÙÙ9 :
string
ÙÙ; A

treeNodeId
ÙÙB L
)
ÙÙL M
{
ıı 	
if
ˆˆ 
(
ˆˆ 
!
ˆˆ 
await
ˆˆ #
_authorizationService
ˆˆ ,
.
ˆˆ, -
AuthorizeAsync
ˆˆ- ;
(
ˆˆ; <
User
ˆˆ< @
,
ˆˆ@ A
Permissions
ˆˆB M
.
ˆˆM N
ManageAdminMenu
ˆˆN ]
)
ˆˆ] ^
)
ˆˆ^ _
{
˜˜ 
return
¯¯ 
Forbid
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯  
}
˘˘ 
var
˚˚ 
adminMenuList
˚˚ 
=
˚˚ 
await
˚˚  %
_adminMenuService
˚˚& 7
.
˚˚7 8$
LoadAdminMenuListAsync
˚˚8 N
(
˚˚N O
)
˚˚O P
;
˚˚P Q
var
¸¸ 
	adminMenu
¸¸ 
=
¸¸ 
_adminMenuService
¸¸ -
.
¸¸- .
GetAdminMenuById
¸¸. >
(
¸¸> ?
adminMenuList
¸¸? L
,
¸¸L M
id
¸¸N P
)
¸¸P Q
;
¸¸Q R
if
˛˛ 
(
˛˛ 
	adminMenu
˛˛ 
==
˛˛ 
null
˛˛ !
)
˛˛! "
{
ˇˇ 
return
ÄÄ 
NotFound
ÄÄ 
(
ÄÄ  
)
ÄÄ  !
;
ÄÄ! "
}
ÅÅ 
var
ÉÉ 
treeNode
ÉÉ 
=
ÉÉ 
	adminMenu
ÉÉ $
.
ÉÉ$ %
GetMenuItemById
ÉÉ% 4
(
ÉÉ4 5

treeNodeId
ÉÉ5 ?
)
ÉÉ? @
;
ÉÉ@ A
if
ÖÖ 
(
ÖÖ 
treeNode
ÖÖ 
==
ÖÖ 
null
ÖÖ  
)
ÖÖ  !
{
ÜÜ 
return
áá 
NotFound
áá 
(
áá  
)
áá  !
;
áá! "
}
àà 
if
ää 
(
ää 
	adminMenu
ää 
.
ää 
RemoveMenuItem
ää (
(
ää( )
treeNode
ää) 1
)
ää1 2
==
ää3 5
false
ää6 ;
)
ää; <
{
ãã 
return
åå 
new
åå 
StatusCodeResult
åå +
(
åå+ ,
$num
åå, /
)
åå/ 0
;
åå0 1
}
çç 
await
èè 
_adminMenuService
èè #
.
èè# $
	SaveAsync
èè$ -
(
èè- .
	adminMenu
èè. 7
)
èè7 8
;
èè8 9
	_notifier
ëë 
.
ëë 
Success
ëë 
(
ëë 
H
ëë 
[
ëë  
$str
ëë  B
]
ëëB C
)
ëëC D
;
ëëD E
return
ìì 
RedirectToAction
ìì #
(
ìì# $
nameof
ìì$ *
(
ìì* +
List
ìì+ /
)
ìì/ 0
,
ìì0 1
new
ìì2 5
{
ìì6 7
id
ìì8 :
}
ìì; <
)
ìì< =
;
ìì= >
}
îî 	
[
ññ 	
HttpPost
ññ	 
]
ññ 
public
óó 
async
óó 
Task
óó 
<
óó 
IActionResult
óó '
>
óó' (
Toggle
óó) /
(
óó/ 0
string
óó0 6
id
óó7 9
,
óó9 :
string
óó; A

treeNodeId
óóB L
)
óóL M
{
òò 	
if
ôô 
(
ôô 
!
ôô 
await
ôô #
_authorizationService
ôô ,
.
ôô, -
AuthorizeAsync
ôô- ;
(
ôô; <
User
ôô< @
,
ôô@ A
Permissions
ôôB M
.
ôôM N
ManageAdminMenu
ôôN ]
)
ôô] ^
)
ôô^ _
{
öö 
return
õõ 
Forbid
õõ 
(
õõ 
)
õõ 
;
õõ  
}
úú 
var
ûû 
adminMenuList
ûû 
=
ûû 
await
ûû  %
_adminMenuService
ûû& 7
.
ûû7 8$
LoadAdminMenuListAsync
ûû8 N
(
ûûN O
)
ûûO P
;
ûûP Q
var
üü 
	adminMenu
üü 
=
üü 
_adminMenuService
üü -
.
üü- .
GetAdminMenuById
üü. >
(
üü> ?
adminMenuList
üü? L
,
üüL M
id
üüN P
)
üüP Q
;
üüQ R
if
°° 
(
°° 
	adminMenu
°° 
==
°° 
null
°° !
)
°°! "
{
¢¢ 
return
££ 
NotFound
££ 
(
££  
)
££  !
;
££! "
}
§§ 
var
¶¶ 
treeNode
¶¶ 
=
¶¶ 
	adminMenu
¶¶ $
.
¶¶$ %
GetMenuItemById
¶¶% 4
(
¶¶4 5

treeNodeId
¶¶5 ?
)
¶¶? @
;
¶¶@ A
if
®® 
(
®® 
treeNode
®® 
==
®® 
null
®®  
)
®®  !
{
©© 
return
™™ 
NotFound
™™ 
(
™™  
)
™™  !
;
™™! "
}
´´ 
treeNode
≠≠ 
.
≠≠ 
Enabled
≠≠ 
=
≠≠ 
!
≠≠  
treeNode
≠≠  (
.
≠≠( )
Enabled
≠≠) 0
;
≠≠0 1
await
ØØ 
_adminMenuService
ØØ #
.
ØØ# $
	SaveAsync
ØØ$ -
(
ØØ- .
	adminMenu
ØØ. 7
)
ØØ7 8
;
ØØ8 9
	_notifier
±± 
.
±± 
Success
±± 
(
±± 
H
±± 
[
±±  
$str
±±  B
]
±±B C
)
±±C D
;
±±D E
return
≥≥ 
RedirectToAction
≥≥ #
(
≥≥# $
nameof
≥≥$ *
(
≥≥* +
List
≥≥+ /
)
≥≥/ 0
,
≥≥0 1
new
≥≥2 5
{
≥≥6 7
id
≥≥8 :
=
≥≥; <
id
≥≥= ?
}
≥≥@ A
)
≥≥A B
;
≥≥B C
}
¥¥ 	
[
∂∂ 	
HttpPost
∂∂	 
]
∂∂ 
public
∑∑ 
async
∑∑ 
Task
∑∑ 
<
∑∑ 
IActionResult
∑∑ '
>
∑∑' (
MoveNode
∑∑) 1
(
∑∑1 2
string
∑∑2 8
treeId
∑∑9 ?
,
∑∑? @
string
∑∑A G
nodeToMoveId
∑∑H T
,
∑∑T U
string
∏∏ 
destinationNodeId
∏∏ $
,
∏∏$ %
int
∏∏& )
position
∏∏* 2
)
∏∏2 3
{
ππ 	
if
∫∫ 
(
∫∫ 
!
∫∫ 
await
∫∫ #
_authorizationService
∫∫ ,
.
∫∫, -
AuthorizeAsync
∫∫- ;
(
∫∫; <
User
∫∫< @
,
∫∫@ A
Permissions
∫∫B M
.
∫∫M N
ManageAdminMenu
∫∫N ]
)
∫∫] ^
)
∫∫^ _
{
ªª 
return
ºº 
Forbid
ºº 
(
ºº 
)
ºº 
;
ºº  
}
ΩΩ 
var
øø 
adminMenuList
øø 
=
øø 
await
øø  %
_adminMenuService
øø& 7
.
øø7 8$
LoadAdminMenuListAsync
øø8 N
(
øøN O
)
øøO P
;
øøP Q
var
¿¿ 
	adminMenu
¿¿ 
=
¿¿ 
_adminMenuService
¿¿ -
.
¿¿- .
GetAdminMenuById
¿¿. >
(
¿¿> ?
adminMenuList
¿¿? L
,
¿¿L M
treeId
¿¿N T
)
¿¿T U
;
¿¿U V
if
¬¬ 
(
¬¬ 
(
¬¬ 
	adminMenu
¬¬ 
==
¬¬ 
null
¬¬ "
)
¬¬" #
||
¬¬$ &
(
¬¬' (
	adminMenu
¬¬( 1
.
¬¬1 2
	MenuItems
¬¬2 ;
==
¬¬< >
null
¬¬? C
)
¬¬C D
)
¬¬D E
{
√√ 
return
ƒƒ 
NotFound
ƒƒ 
(
ƒƒ  
)
ƒƒ  !
;
ƒƒ! "
}
≈≈ 
var
«« 

nodeToMove
«« 
=
«« 
	adminMenu
«« &
.
««& '
GetMenuItemById
««' 6
(
««6 7
nodeToMoveId
««7 C
)
««C D
;
««D E
if
»» 
(
»» 

nodeToMove
»» 
==
»» 
null
»» "
)
»»" #
{
…… 
return
   
NotFound
   
(
    
)
    !
;
  ! "
}
ÀÀ 
var
ÕÕ 
destinationNode
ÕÕ 
=
ÕÕ  !
	adminMenu
ÕÕ" +
.
ÕÕ+ ,
GetMenuItemById
ÕÕ, ;
(
ÕÕ; <
destinationNodeId
ÕÕ< M
)
ÕÕM N
;
ÕÕN O
if
œœ 
(
œœ 
	adminMenu
œœ 
.
œœ 
RemoveMenuItem
œœ (
(
œœ( )

nodeToMove
œœ) 3
)
œœ3 4
==
œœ5 7
false
œœ8 =
)
œœ= >
{
–– 
return
—— 

StatusCode
—— !
(
——! "
$num
——" %
)
——% &
;
——& '
}
““ 
if
‘‘ 
(
‘‘ 
	adminMenu
‘‘ 
.
‘‘ 
InsertMenuItemAt
‘‘ *
(
‘‘* +

nodeToMove
‘‘+ 5
,
‘‘5 6
destinationNode
‘‘7 F
,
‘‘F G
position
‘‘H P
)
‘‘P Q
==
‘‘R T
false
‘‘U Z
)
‘‘Z [
{
’’ 
return
÷÷ 

StatusCode
÷÷ !
(
÷÷! "
$num
÷÷" %
)
÷÷% &
;
÷÷& '
}
◊◊ 
await
ŸŸ 
_adminMenuService
ŸŸ #
.
ŸŸ# $
	SaveAsync
ŸŸ$ -
(
ŸŸ- .
	adminMenu
ŸŸ. 7
)
ŸŸ7 8
;
ŸŸ8 9
return
€€ 
Ok
€€ 
(
€€ 
)
€€ 
;
€€ 
}
‹‹ 	
}
›› 
}ﬁﬁ ”
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Deployment\AdminMenuDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

Deployment  *
{ 
public		 

class		 %
AdminMenuDeploymentSource		 *
:		+ ,
IDeploymentSource		- >
{

 
private 
readonly 
IAdminMenuService *
_adminMenuService+ <
;< =
public %
AdminMenuDeploymentSource (
(( )
IAdminMenuService) :
adminMenuService; K
)K L
{ 	
_adminMenuService 
= 
adminMenuService  0
;0 1
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
adminMenuStep 
= 
step  $
as% '#
AdminMenuDeploymentStep( ?
;? @
if 
( 
adminMenuStep 
==  
null! %
)% &
{ 
return 
; 
} 
var 
data 
= 
new 
JArray !
(! "
)" #
;# $
result 
. 
Steps 
. 
Add 
( 
new  
JObject! (
(( )
new 
	JProperty 
( 
$str $
,$ %
$str& 1
)1 2
,2 3
new 
	JProperty 
( 
$str $
,$ %
data& *
)* +
) 
) 
; 
var"" 

serializer"" 
="" 
new""  
JsonSerializer""! /
(""/ 0
)""0 1
{""2 3
TypeNameHandling""4 D
=""E F
TypeNameHandling""G W
.""W X
Auto""X \
}""] ^
;""^ _
foreach$$ 
($$ 
var$$ 
	adminMenu$$ "
in$$# %
($$& '
await$$' ,
_adminMenuService$$- >
.$$> ?!
GetAdminMenuListAsync$$? T
($$T U
)$$U V
)$$V W
.$$W X
	AdminMenu$$X a
)$$a b
{%% 
var&& 

objectData&& 
=&&  
JObject&&! (
.&&( )

FromObject&&) 3
(&&3 4
	adminMenu&&4 =
,&&= >

serializer&&? I
)&&I J
;&&J K
data'' 
.'' 
Add'' 
('' 

objectData'' #
)''# $
;''$ %
}(( 
return** 
;** 
}++ 	
},, 
}-- ˇ
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Deployment\AdminMenuDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

Deployment  *
{ 
public 

class #
AdminMenuDeploymentStep (
:) *
DeploymentStep+ 9
{		 
public

 #
AdminMenuDeploymentStep

 &
(

& '
)

' (
{ 	
Name 
= 
$str 
; 
} 	
} 
} Ã
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Deployment\AdminMenuDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

Deployment  *
{ 
public 

class )
AdminMenuDeploymentStepDriver .
:/ 0
DisplayDriver1 >
<> ?
DeploymentStep? M
,M N#
AdminMenuDeploymentStepO f
>f g
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /#
AdminMenuDeploymentStep		/ F
step		G K
)		K L
{

 	
return 
Combine 
( 
View 
( 
$str A
,A B
stepC G
)G H
.H I
LocationI Q
(Q R
$strR [
,[ \
$str] f
)f g
,g h
View 
( 
$str C
,C D
stepE I
)I J
.J K
LocationK S
(S T
$strT _
,_ `
$stra j
)j k
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,#
AdminMenuDeploymentStep, C
stepD H
)H I
{ 	
return 
View 
( 
$str =
,= >
step? C
)C D
.D E
LocationE M
(M N
$strN W
)W X
;X Y
} 	
} 
} ∂
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str		 #
)

 
]

 ä
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Models\AdminMenuList.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Models  &
{ 
public		 

class		 
AdminMenuList		 
:		  
Document		! )
{

 
public 
List 
< 
	AdminMenu 
> 
	AdminMenu (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
new9 <
List= A
<A B
	AdminMenuB K
>K L
(L M
)M N
;N O
} 
} ‘$
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Permissions.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
{ 
public		 

class		 
Permissions		 
:		 
IPermissionProvider		 2
{

 
public 
static 
readonly 

Permission )
ManageAdminMenu* 9
=: ;
new< ?

Permission@ J
(J K
$strK \
,\ ]
$str^ u
)u v
;v w
public 
static 
readonly 

Permission )
ViewAdminMenuAll* :
=; <
new= @

PermissionA K
(K L
$strL ^
,^ _
$str` |
,| }
new	~ Å
[
Å Ç
]
Ç É
{
Ñ Ö
ManageAdminMenu
Ü ï
}
ñ ó
)
ó ò
;
ò ô
private 
static 
readonly 

Permission  *
ViewAdminMenu+ 8
=9 :
new; >

Permission? I
(I J
$strJ ]
,] ^
$str_ v
,v w
newx {
[{ |
]| }
{~ 
ManageAdminMenu
Ä è
,
è ê
ViewAdminMenuAll
ë °
}
¢ £
)
£ §
;
§ •
private 
readonly 
IAdminMenuService *
_adminMenuService+ <
;< =
public 
Permissions 
( 
IAdminMenuService ,
adminMenuService- =
)= >
{ 	
_adminMenuService 
= 
adminMenuService  0
;0 1
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
{, -
ManageAdminMenu. =
,= >
ViewAdminMenuAll? O
}P Q
;Q R
foreach 
( 
var 
	adminMenu "
in# %
(& '
await' ,
_adminMenuService- >
.> ?!
GetAdminMenuListAsync? T
(T U
)U V
)V W
.W X
	AdminMenuX a
)a b
{ 
list 
. 
Add 
( (
CreatePermissionForAdminMenu 5
(5 6
	adminMenu6 ?
.? @
Name@ D
)D E
)E F
;F G
} 
return!! 
list!! 
;!! 
}"" 	
public$$ 
IEnumerable$$ 
<$$  
PermissionStereotype$$ /
>$$/ 0!
GetDefaultStereotypes$$1 F
($$F G
)$$G H
{%% 	
return&& 
new&& 
[&& 
]&& 
{'' 
new((  
PermissionStereotype(( (
{)) 
Name** 
=** 
$str** *
,*** +
Permissions++ 
=++  !
new++" %
[++% &
]++& '
{++( )
ManageAdminMenu++* 9
}++: ;
},, 
,,, 
new--  
PermissionStereotype-- (
{--) *
Name.. 
=.. 
$str.. #
,..# $
Permissions// 
=//  !
new//" %
[//% &
]//& '
{//( )
ManageAdminMenu//* 9
}//: ;
}00 
}11 
;11 
}22 	
public44 
static44 

Permission44  (
CreatePermissionForAdminMenu44! =
(44= >
string44> D
name44E I
)44I J
{55 	
return66 
new66 

Permission66 !
(66! "
String77 
.77 
Format77 !
(77! "
ViewAdminMenu77" /
.77/ 0
Name770 4
,774 5
name776 :
)77: ;
,77; <
String88 
.88 
Format88 !
(88! "
ViewAdminMenu88" /
.88/ 0
Description880 ;
,88; <
name88= A
)88A B
,88B C
ViewAdminMenu99 !
.99! "
	ImpliedBy99" +
):: 
;:: 
};; 	
}<< 
}== Ô
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Recipes\AdminMenuStep.cs
	namespace		 	
OrchardCore		
 
.		 
	AdminMenu		 
.		  
Recipes		  '
{

 
public 

class 
AdminMenuStep 
:  
IRecipeStepHandler! 3
{ 
private 
readonly 
IAdminMenuService *
_adminMenuService+ <
;< =
public 
AdminMenuStep 
( 
IAdminMenuService .
adminMenuService/ ?
)? @
{ 	
_adminMenuService 
= 
adminMenuService  0
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
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .
AdminMenuStepModel. @
>@ A
(A B
)B C
;C D
var   

serializer   
=   
new    
JsonSerializer  ! /
(  / 0
)  0 1
{  2 3
TypeNameHandling  4 D
=  E F
TypeNameHandling  G W
.  W X
Auto  X \
}  ] ^
;  ^ _
foreach"" 
("" 
JObject"" 
token"" "
in""# %
model""& +
.""+ ,
Data"", 0
)""0 1
{## 
var$$ 
	adminMenu$$ 
=$$ 
token$$  %
.$$% &
ToObject$$& .
<$$. /
Models$$/ 5
.$$5 6
	AdminMenu$$6 ?
>$$? @
($$@ A

serializer$$A K
)$$K L
;$$L M
if'' 
('' 
String'' 
.'' 
IsNullOrEmpty'' (
(''( )
	adminMenu'') 2
.''2 3
Id''3 5
)''5 6
)''6 7
{(( 
	adminMenu)) 
.)) 
Id))  
=))! "
Guid))# '
.))' (
NewGuid))( /
())/ 0
)))0 1
.))1 2
ToString))2 :
()): ;
$str)); >
)))> ?
;))? @
}** 
await,, 
_adminMenuService,, '
.,,' (
	SaveAsync,,( 1
(,,1 2
	adminMenu,,2 ;
),,; <
;,,< =
}-- 
return// 
;// 
}00 	
}11 
public33 

class33 
AdminMenuStepModel33 #
{44 
public55 
JArray55 
Data55 
{55 
get55  
;55  !
set55" %
;55% &
}55' (
}66 
}77 ´-
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Services\AdminMenuNavigationProvidersCoordinator.cs
	namespace

 	
OrchardCore


 
.

 
	AdminMenu

 
.

  
Services

  (
{ 
public 

class 3
'AdminMenuNavigationProvidersCoordinator 8
:9 :
INavigationProvider; N
{ 
private 
readonly 
IAdminMenuService *
_adminMenuService+ <
;< =
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IEnumerable $
<$ %'
IAdminNodeNavigationBuilder% @
>@ A
_nodeBuildersB O
;O P
private 
readonly 
ILogger  
Logger! '
;' (
public 3
'AdminMenuNavigationProvidersCoordinator 6
(6 7
IAdminMenuService 
adminMenuService .
,. /!
IAuthorizationService ! 
authorizationService" 6
,6 7 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
IEnumerable 
< '
IAdminNodeNavigationBuilder 3
>3 4
nodeBuilders5 A
,A B
ILogger 
< 3
'AdminMenuNavigationProvidersCoordinator ;
>; <
logger= C
)C D
{ 	
_adminMenuService 
= 
adminMenuService  0
;0 1!
_authorizationService   !
=  " # 
authorizationService  $ 8
;  8 9 
_httpContextAccessor!!  
=!!! "
httpContextAccessor!!# 6
;!!6 7
_nodeBuilders"" 
="" 
nodeBuilders"" (
;""( )
Logger## 
=## 
logger## 
;## 
}$$ 	
public(( 
async(( 
Task((  
BuildNavigationAsync(( .
(((. /
string((/ 5
name((6 :
,((: ;
NavigationBuilder((< M
builder((N U
)((U V
{)) 	
if** 
(** 
!** 
String** 
.** 
Equals** 
(** 
name** #
,**# $
$str**% 0
,**0 1
StringComparison**2 B
.**B C
OrdinalIgnoreCase**C T
)**T U
)**U V
{++ 
return,, 
;,, 
}-- 
var// 
trees// 
=// 
(// 
(// 
await// 
_adminMenuService//  1
.//1 2!
GetAdminMenuListAsync//2 G
(//G H
)//H I
)//I J
.//J K
	AdminMenu//K T
)//T U
.00 
Where00 
(00 
m00 
=>00 
m00 
.00 
Enabled00 %
&&00& (
m00) *
.00* +
	MenuItems00+ 4
.004 5
Count005 :
>00; <
$num00= >
)00> ?
;00? @
foreach22 
(22 
var22 
tree22 
in22  
trees22! &
)22& '
{33 
if44 
(44 
await44 !
_authorizationService44 /
.44/ 0
AuthorizeAsync440 >
(44> ? 
_httpContextAccessor55 (
.55( )
HttpContext55) 4
?554 5
.555 6
User556 :
,55: ;
Permissions66 
.66  (
CreatePermissionForAdminMenu66  <
(66< =
tree66= A
.66A B
Name66B F
)66F G
)66G H
)66H I
{77 
await88 
BuildTreeAsync88 (
(88( )
tree88) -
,88- .
builder88/ 6
)886 7
;887 8
}99 
}:: 
};; 	
private== 
async== 
Task== 
BuildTreeAsync== )
(==) *
Models==* 0
.==0 1
	AdminMenu==1 :
tree==; ?
,==? @
NavigationBuilder==A R
builder==S Z
)==Z [
{>> 	
foreach?? 
(?? 
MenuItem?? 
node?? "
in??# %
tree??& *
.??* +
	MenuItems??+ 4
)??4 5
{@@ 
varAA 
nodeBuilderAA 
=AA  !
_nodeBuildersAA" /
.AA/ 0
WhereAA0 5
(AA5 6
xAA6 7
=>AA8 :
xAA; <
.AA< =
NameAA= A
==AAB D
nodeAAE I
.AAI J
GetTypeAAJ Q
(AAQ R
)AAR S
.AAS T
NameAAT X
)AAX Y
.AAY Z
FirstOrDefaultAAZ h
(AAh i
)AAi j
;AAj k
ifCC 
(CC 
nodeBuilderCC 
!=CC  "
nullCC# '
)CC' (
{DD 
awaitEE 
nodeBuilderEE %
.EE% & 
BuildNavigationAsyncEE& :
(EE: ;
nodeEE; ?
,EE? @
builderEEA H
,EEH I
_nodeBuildersEEJ W
)EEW X
;EEX Y
}FF 
elseGG 
{HH 
LoggerII 
.II 
LogErrorII #
(II# $
$strII$ c
,IIc d
nodeIIe i
.IIi j
GetTypeIIj q
(IIq r
)IIr s
.IIs t
NameIIt x
)IIx y
;IIy z
}JJ 
}KK 
}LL 	
}MM 
}NN ô
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Services\AdminMenuPermissionService.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Services  (
{ 
public 

class &
AdminMenuPermissionService +
:, -'
IAdminMenuPermissionService. I
{ 
private

 
readonly

 
IEnumerable

 $
<

$ %
IPermissionProvider

% 8
>

8 9 
_permissionProviders

: N
;

N O
private 
List 
< 

Permission 
>  
_permissions! -
;- .
public &
AdminMenuPermissionService )
() *
IEnumerable* 5
<5 6
IPermissionProvider6 I
>I J
permissionProvidersK ^
)^ _
{ 	 
_permissionProviders  
=! "
permissionProviders# 6
;6 7
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

Permission& 0
>0 1
>1 2
GetPermissionsAsync3 F
(F G
)G H
{ 	
if 
( 
_permissions 
!= 
null  $
)$ %
{ 
return 
_permissions #
;# $
} 
_permissions 
= 
new 
List #
<# $

Permission$ .
>. /
(/ 0
)0 1
;1 2
foreach 
( 
var 
permissionProvider +
in, . 
_permissionProviders/ C
)C D
{ 
var 
permissions 
=  !
await" '
permissionProvider( :
.: ;
GetPermissionsAsync; N
(N O
)O P
;P Q
_permissions!! 
.!! 
AddRange!! %
(!!% &
permissions!!& 1
)!!1 2
;!!2 3
}"" 
return$$ 
_permissions$$ 
;$$  
}%% 	
}&& 
}'' €(
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Services\AdminMenuService.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Services  (
{		 
public

 

class

 
AdminMenuService

 !
:

" #
IAdminMenuService

$ 5
{ 
private 
readonly 
IDocumentManager )
<) *
AdminMenuList* 7
>7 8
_documentManager9 I
;I J
public 
AdminMenuService 
(  
IDocumentManager  0
<0 1
AdminMenuList1 >
>> ?
documentManager@ O
)O P
=>Q S
_documentManagerT d
=e f
documentManagerg v
;v w
public 
Task 
< 
AdminMenuList !
>! ""
LoadAdminMenuListAsync# 9
(9 :
): ;
=>< >
_documentManager? O
.O P#
GetOrCreateMutableAsyncP g
(g h
)h i
;i j
public 
Task 
< 
AdminMenuList !
>! "!
GetAdminMenuListAsync# 8
(8 9
)9 :
=>; =
_documentManager> N
.N O%
GetOrCreateImmutableAsyncO h
(h i
)i j
;j k
public 
async 
Task 
	SaveAsync #
(# $
Models$ *
.* +
	AdminMenu+ 4
tree5 9
)9 :
{ 	
var 
adminMenuList 
= 
await  %"
LoadAdminMenuListAsync& <
(< =
)= >
;> ?
var 
preexisting 
= 
adminMenuList +
.+ ,
	AdminMenu, 5
.5 6
FirstOrDefault6 D
(D E
xE F
=>G I
StringJ P
.P Q
EqualsQ W
(W X
xX Y
.Y Z
IdZ \
,\ ]
tree^ b
.b c
Idc e
,e f
StringComparisong w
.w x
OrdinalIgnoreCase	x â
)
â ä
)
ä ã
;
ã å
if!! 
(!! 
preexisting!! 
==!! 
null!! #
)!!# $
{"" 
adminMenuList## 
.## 
	AdminMenu## '
.##' (
Add##( +
(##+ ,
tree##, 0
)##0 1
;##1 2
}$$ 
else%% 
{&& 
var'' 
index'' 
='' 
adminMenuList'' )
.'') *
	AdminMenu''* 3
.''3 4
IndexOf''4 ;
(''; <
preexisting''< G
)''G H
;''H I
adminMenuList(( 
.(( 
	AdminMenu(( '
[((' (
index((( -
]((- .
=((/ 0
tree((1 5
;((5 6
})) 
await++ 
_documentManager++ "
.++" #
UpdateAsync++# .
(++. /
adminMenuList++/ <
)++< =
;++= >
},, 	
public.. 
Models.. 
... 
	AdminMenu.. 
GetAdminMenuById..  0
(..0 1
AdminMenuList..1 >
adminMenuList..? L
,..L M
string..N T
id..U W
)..W X
{// 	
return00 
adminMenuList00  
.00  !
	AdminMenu00! *
.00* +
FirstOrDefault00+ 9
(009 :
x00: ;
=>00< >
String00? E
.00E F
Equals00F L
(00L M
x00M N
.00N O
Id00O Q
,00Q R
id00S U
,00U V
StringComparison00W g
.00g h
OrdinalIgnoreCase00h y
)00y z
)00z {
;00{ |
}11 	
public33 
async33 
Task33 
<33 
int33 
>33 
DeleteAsync33 *
(33* +
Models33+ 1
.331 2
	AdminMenu332 ;
tree33< @
)33@ A
{44 	
var55 
adminMenuList55 
=55 
await55  %"
LoadAdminMenuListAsync55& <
(55< =
)55= >
;55> ?
var77 
count77 
=77 
adminMenuList77 %
.77% &
	AdminMenu77& /
.77/ 0
	RemoveAll770 9
(779 :
x77: ;
=>77< >
String77? E
.77E F
Equals77F L
(77L M
x77M N
.77N O
Id77O Q
,77Q R
tree77S W
.77W X
Id77X Z
,77Z [
StringComparison77\ l
.77l m
OrdinalIgnoreCase77m ~
)77~ 
)	77 Ä
;
77Ä Å
await99 
_documentManager99 "
.99" #
UpdateAsync99# .
(99. /
adminMenuList99/ <
)99< =
;99= >
return;; 
count;; 
;;; 
}<< 	
}== 
}>> î
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Services\IAdminMenuService.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Services  (
{ 
public		 

	interface		 
IAdminMenuService		 &
{

 
Task 
< 
Models 
. 
AdminMenuList !
>! ""
LoadAdminMenuListAsync# 9
(9 :
): ;
;; <
Task 
< 
Models 
. 
AdminMenuList !
>! "!
GetAdminMenuListAsync# 8
(8 9
)9 :
;: ;
Task 
	SaveAsync 
( 
Models 
. 
	AdminMenu '
tree( ,
), -
;- .
Models 
. 
	AdminMenu 
GetAdminMenuById )
() *
Models* 0
.0 1
AdminMenuList1 >
adminMenuList? L
,L M
stringN T
idU W
)W X
;X Y
Task&& 
<&& 
int&& 
>&& 
DeleteAsync&& 
(&& 
Models&& $
.&&$ %
	AdminMenu&&% .
tree&&/ 3
)&&3 4
;&&4 5
}'' 
}(( Òl
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\Startup.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public   
override   
void   
ConfigureServices   .
(  . /
IServiceCollection  / A
services  B J
)  J K
{!! 	
services"" 
."" 
	AddScoped"" 
<"" 
IPermissionProvider"" 2
,""2 3
Permissions""4 ?
>""? @
(""@ A
)""A B
;""B C
services## 
.## 
	AddScoped## 
<## 
INavigationProvider## 2
,##2 3
	AdminMenu##4 =
>##= >
(##> ?
)##? @
;##@ A
services$$ 
.$$ 
	AddScoped$$ 
<$$ '
IAdminMenuPermissionService$$ :
,$$: ;&
AdminMenuPermissionService$$< V
>$$V W
($$W X
)$$X Y
;$$Y Z
services&& 
.&& 
	AddScoped&& 
<&& 
IAdminMenuService&& 0
,&&0 1
AdminMenuService&&2 B
>&&B C
(&&C D
)&&D E
;&&E F
services'' 
.'' 
	AddScoped'' 
<'' 3
'AdminMenuNavigationProvidersCoordinator'' F
,''F G3
'AdminMenuNavigationProvidersCoordinator''H o
>''o p
(''p q
)''q r
;''r s
services)) 
.)) 
	AddScoped)) 
<)) 
IDisplayManager)) .
<)). /
MenuItem))/ 7
>))7 8
,))8 9
DisplayManager)): H
<))H I
MenuItem))I Q
>))Q R
>))R S
())S T
)))T U
;))U V
services++ 
.++ "
AddRecipeExecutionStep++ +
<+++ ,
AdminMenuStep++, 9
>++9 :
(++: ;
)++; <
;++< =
services-- 
.-- 
AddTransient-- !
<--! "
IDeploymentSource--" 3
,--3 4%
AdminMenuDeploymentSource--5 N
>--N O
(--O P
)--P Q
;--Q R
services.. 
... 
AddSingleton.. !
<..! ""
IDeploymentStepFactory.." 8
>..8 9
(..9 :
new..: =!
DeploymentStepFactory..> S
<..S T#
AdminMenuDeploymentStep..T k
>..k l
(..l m
)..m n
)..n o
;..o p
services// 
.// 
	AddScoped// 
<// 
IDisplayDriver// -
<//- .
DeploymentStep//. <
>//< =
,//= >)
AdminMenuDeploymentStepDriver//? \
>//\ ]
(//] ^
)//^ _
;//_ `
services22 
.22 
AddSingleton22 !
<22! "%
IAdminNodeProviderFactory22" ;
>22; <
(22< =
new22= @$
AdminNodeProviderFactory22A Y
<22Y Z 
PlaceholderAdminNode22Z n
>22n o
(22o p
)22p q
)22q r
;22r s
services33 
.33 
	AddScoped33 
<33 '
IAdminNodeNavigationBuilder33 :
,33: ;1
%PlaceholderAdminNodeNavigationBuilder33< a
>33a b
(33b c
)33c d
;33d e
services44 
.44 
	AddScoped44 
<44 
IDisplayDriver44 -
<44- .
MenuItem44. 6
>446 7
,447 8&
PlaceholderAdminNodeDriver449 S
>44S T
(44T U
)44U V
;44V W
services77 
.77 
AddSingleton77 !
<77! "%
IAdminNodeProviderFactory77" ;
>77; <
(77< =
new77= @$
AdminNodeProviderFactory77A Y
<77Y Z
LinkAdminNode77Z g
>77g h
(77h i
)77i j
)77j k
;77k l
services88 
.88 
	AddScoped88 
<88 '
IAdminNodeNavigationBuilder88 :
,88: ;*
LinkAdminNodeNavigationBuilder88< Z
>88Z [
(88[ \
)88\ ]
;88] ^
services99 
.99 
	AddScoped99 
<99 
IDisplayDriver99 -
<99- .
MenuItem99. 6
>996 7
,997 8
LinkAdminNodeDriver999 L
>99L M
(99M N
)99N O
;99O P
}:: 	
public<< 
override<< 
void<< 
	Configure<< &
(<<& '
IApplicationBuilder<<' :
builder<<; B
,<<B C!
IEndpointRouteBuilder<<D Y
routes<<Z `
,<<` a
IServiceProvider<<b r
serviceProvider	<<s Ç
)
<<Ç É
{== 	
var?? 
menuControllerName?? "
=??# $
typeof??% +
(??+ ,
MenuController??, :
)??: ;
.??; <
ControllerName??< J
(??J K
)??K L
;??L M
routesAA 
.AA "
MapAreaControllerRouteAA )
(AA) *
nameBB 
:BB 
$strBB %
,BB% &
areaNameCC 
:CC 
$strCC 1
,CC1 2
patternDD 
:DD 
_adminOptionsDD &
.DD& '
AdminUrlPrefixDD' 5
+DD6 7
$strDD8 I
,DDI J
defaultsEE 
:EE 
newEE 
{EE 

controllerEE  *
=EE+ ,
menuControllerNameEE- ?
,EE? @
actionEEA G
=EEH I
nameofEEJ P
(EEP Q
MenuControllerEEQ _
.EE_ `
ListEE` d
)EEd e
}EEf g
)FF 
;FF 
routesGG 
.GG "
MapAreaControllerRouteGG )
(GG) *
nameHH 
:HH 
$strHH '
,HH' (
areaNameII 
:II 
$strII 1
,II1 2
patternJJ 
:JJ 
_adminOptionsJJ &
.JJ& '
AdminUrlPrefixJJ' 5
+JJ6 7
$strJJ8 K
,JJK L
defaultsKK 
:KK 
newKK 
{KK 

controllerKK  *
=KK+ ,
menuControllerNameKK- ?
,KK? @
actionKKA G
=KKH I
nameofKKJ P
(KKP Q
MenuControllerKKQ _
.KK_ `
CreateKK` f
)KKf g
}KKh i
)LL 
;LL 
routesMM 
.MM "
MapAreaControllerRouteMM )
(MM) *
nameNN 
:NN 
$strNN '
,NN' (
areaNameOO 
:OO 
$strOO 1
,OO1 2
patternPP 
:PP 
_adminOptionsPP &
.PP& '
AdminUrlPrefixPP' 5
+PP6 7
$strPP8 P
,PPP Q
defaultsQQ 
:QQ 
newQQ 
{QQ 

controllerQQ  *
=QQ+ ,
menuControllerNameQQ- ?
,QQ? @
actionQQA G
=QQH I
nameofQQJ P
(QQP Q
MenuControllerQQQ _
.QQ_ `
DeleteQQ` f
)QQf g
}QQh i
)RR 
;RR 
routesSS 
.SS "
MapAreaControllerRouteSS )
(SS) *
nameTT 
:TT 
$strTT %
,TT% &
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
$strVV8 N
,VVN O
defaultsWW 
:WW 
newWW 
{WW 

controllerWW  *
=WW+ ,
menuControllerNameWW- ?
,WW? @
actionWWA G
=WWH I
nameofWWJ P
(WWP Q
MenuControllerWWQ _
.WW_ `
EditWW` d
)WWd e
}WWf g
)XX 
;XX 
routesYY 
.YY "
MapAreaControllerRouteYY )
(YY) *
nameZZ 
:ZZ 
$strZZ '
,ZZ' (
areaName[[ 
:[[ 
$str[[ 1
,[[1 2
pattern\\ 
:\\ 
_adminOptions\\ &
.\\& '
AdminUrlPrefix\\' 5
+\\6 7
$str\\8 P
,\\P Q
defaults]] 
:]] 
new]] 
{]] 

controller]]  *
=]]+ ,
menuControllerName]]- ?
,]]? @
action]]A G
=]]H I
nameof]]J P
(]]P Q
MenuController]]Q _
.]]_ `
Toggle]]` f
)]]f g
}]]h i
)^^ 
;^^ 
varaa 
nodeControllerNameaa "
=aa# $
typeofaa% +
(aa+ ,
NodeControlleraa, :
)aa: ;
.aa; <
ControllerNameaa< J
(aaJ K
)aaK L
;aaL M
routescc 
.cc "
MapAreaControllerRoutecc )
(cc) *
namedd 
:dd 
$strdd )
,dd) *
areaNameee 
:ee 
$stree 1
,ee1 2
patternff 
:ff 
_adminOptionsff &
.ff& '
AdminUrlPrefixff' 5
+ff6 7
$strff8 N
,ffN O
defaultsgg 
:gg 
newgg 
{gg 

controllergg  *
=gg+ ,
nodeControllerNamegg- ?
,gg? @
actionggA G
=ggH I
nameofggJ P
(ggP Q
NodeControllerggQ _
.gg_ `
Listgg` d
)ggd e
}ggf g
)hh 
;hh 
routesii 
.ii "
MapAreaControllerRouteii )
(ii) *
namejj 
:jj 
$strjj +
,jj+ ,
areaNamekk 
:kk 
$strkk 1
,kk1 2
patternll 
:ll 
_adminOptionsll &
.ll& '
AdminUrlPrefixll' 5
+ll6 7
$strll8 P
,llP Q
defaultsmm 
:mm 
newmm 
{mm 

controllermm  *
=mm+ ,
nodeControllerNamemm- ?
,mm? @
actionmmA G
=mmH I
nameofmmJ P
(mmP Q
NodeControllermmQ _
.mm_ `
Createmm` f
)mmf g
}mmh i
)nn 
;nn 
routesoo 
.oo "
MapAreaControllerRouteoo )
(oo) *
namepp 
:pp 
$strpp +
,pp+ ,
areaNameqq 
:qq 
$strqq 1
,qq1 2
patternrr 
:rr 
_adminOptionsrr &
.rr& '
AdminUrlPrefixrr' 5
+rr6 7
$strrr8 P
,rrP Q
defaultsss 
:ss 
newss 
{ss 

controllerss  *
=ss+ ,
nodeControllerNamess- ?
,ss? @
actionssA G
=ssH I
nameofssJ P
(ssP Q
NodeControllerssQ _
.ss_ `
Deletess` f
)ssf g
}ssh i
)tt 
;tt 
routesuu 
.uu "
MapAreaControllerRouteuu )
(uu) *
namevv 
:vv 
$strvv )
,vv) *
areaNameww 
:ww 
$strww 1
,ww1 2
patternxx 
:xx 
_adminOptionsxx &
.xx& '
AdminUrlPrefixxx' 5
+xx6 7
$strxx8 N
,xxN O
defaultsyy 
:yy 
newyy 
{yy 

controlleryy  *
=yy+ ,
nodeControllerNameyy- ?
,yy? @
actionyyA G
=yyH I
nameofyyJ P
(yyP Q
NodeControlleryyQ _
.yy_ `
Edityy` d
)yyd e
}yyf g
)zz 
;zz 
routes{{ 
.{{ "
MapAreaControllerRoute{{ )
({{) *
name|| 
:|| 
$str|| +
,||+ ,
areaName}} 
:}} 
$str}} 1
,}}1 2
pattern~~ 
:~~ 
_adminOptions~~ &
.~~& '
AdminUrlPrefix~~' 5
+~~6 7
$str~~8 P
,~~P Q
defaults 
: 
new 
{ 

controller  *
=+ ,
nodeControllerName- ?
,? @
actionA G
=H I
nameofJ P
(P Q
NodeControllerQ _
._ `
Toggle` f
)f g
}h i
)
ÄÄ 
;
ÄÄ 
routes
ÅÅ 
.
ÅÅ $
MapAreaControllerRoute
ÅÅ )
(
ÅÅ) *
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ -
,
ÇÇ- .
areaName
ÉÉ 
:
ÉÉ 
$str
ÉÉ 1
,
ÉÉ1 2
pattern
ÑÑ 
:
ÑÑ 
_adminOptions
ÑÑ &
.
ÑÑ& '
AdminUrlPrefix
ÑÑ' 5
+
ÑÑ6 7
$str
ÑÑ8 R
,
ÑÑR S
defaults
ÖÖ 
:
ÖÖ 
new
ÖÖ 
{
ÖÖ 

controller
ÖÖ  *
=
ÖÖ+ , 
nodeControllerName
ÖÖ- ?
,
ÖÖ? @
action
ÖÖA G
=
ÖÖH I
nameof
ÖÖJ P
(
ÖÖP Q
NodeController
ÖÖQ _
.
ÖÖ_ `
MoveNode
ÖÖ` h
)
ÖÖh i
}
ÖÖj k
)
ÜÜ 
;
ÜÜ 
}
áá 	
}
àà 
}ââ Î
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\ViewModels\AdminMenuCreateViewModel.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

ViewModels  *
{ 
public 

class $
AdminMenuCreateViewModel )
{ 
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 ˝
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\ViewModels\AdminMenuEditViewModel.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

ViewModels  *
{ 
public 

class "
AdminMenuEditViewModel '
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
[		 	
Required			 
]		 
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
' (
} 
} ß
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\ViewModels\AdminMenuListViewModel.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

ViewModels  *
{ 
public 

class "
AdminMenuListViewModel '
{ 
public		 
IList		 
<		 
AdminMenuEntry		 #
>		# $
	AdminMenu		% .
{		/ 0
get		1 4
;		4 5
set		6 9
;		9 :
}		; <
public

 
ContentOptions

 
Options

 %
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
=

4 5
new

6 9
ContentOptions

: H
(

H I
)

I J
;

J K
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
class 
AdminMenuEntry 
{ 
public 
Models 
. 
	AdminMenu 
	AdminMenu  )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class 
ContentOptions 
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
public 
ContentsBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
ContentsBulkAction$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
public!! 

enum!! 
ContentsBulkAction!! "
{"" 
None## 
,## 
Remove$$ 
}%% 
}&& ü
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\ViewModels\AdminNodeEditViewModel.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

ViewModels  *
{ 
public 

class "
AdminNodeEditViewModel '
{ 
public 
string 
AdminMenuId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
AdminNodeId		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
AdminNodeType

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
dynamic 
Editor 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
	BindNever	 
] 
public 
	AdminNode 
	AdminNode "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ◊
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminMenu\ViewModels\AdminNodeListViewModel.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  

ViewModels  *
{ 
public 

class "
AdminNodeListViewModel '
{ 
public 
Models 
. 
	AdminMenu 
	AdminMenu  )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
IDictionary 
< 
string !
,! "
dynamic# *
>* +

Thumbnails, 6
{7 8
get9 <
;< =
set> A
;A B
}C D
}		 
}

 