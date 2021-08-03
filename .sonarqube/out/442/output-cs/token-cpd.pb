�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\CommonPermissions.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public 

class 
CommonPermissions "
{ 
public 
static 
readonly 

Permission )
ManageUsers* 5
=6 7
new8 ;

Permission< F
(F G
$strG T
,T U
$strV d
,d e
truef j
)j k
;k l
public 
static 
readonly 

Permission )
	ViewUsers* 3
=4 5
new6 9

Permission: D
(D E
$strE Q
,Q R
$strS _
,_ `
newa d
[d e
]e f
{g h
ManageUsersi t
}u v
)w x
;x y
private 
static 
readonly 

Permission  *
ManageUsersInRole+ <
== >
new? B

PermissionC M
(M N
$strN e
,e f
$str	g �
,
� �
new
� �
[
� �
]
� �
{
� �
ManageUsers
� �
}
� �
)
� �
;
� �
public 
static 

Permission  0
$CreatePermissionForManageUsersInRole! E
(E F
stringF L
nameM Q
)Q R
=> 
new 

Permission 
( 
String 
. 
Format !
(! "
ManageUsersInRole" 3
.3 4
Name4 8
,8 9
name: >
)> ?
,? @
String 
. 
Format !
(! "
ManageUsersInRole" 3
.3 4
Description4 ?
,? @
nameA E
)E F
,F G
ManageUsersInRole %
.% &
	ImpliedBy& /
) 
; 
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Indexes\UserByClaimIndex.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Indexes #
{ 
public 

class 
UserByClaimIndex !
:" #
MapIndex$ ,
{ 
public		 
string		 
	ClaimType		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
string 

ClaimValue  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
public 

class $
UserByClaimIndexProvider )
:* +
IndexProvider, 9
<9 :
User: >
>> ?
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
User6 :
>: ;
context< C
)C D
{ 	
context 
. 
For 
< 
UserByClaimIndex (
>( )
() *
)* +
. 
Map 
( 
user 
=> 
user !
.! "

UserClaims" ,
., -
Select- 3
(3 4
x4 5
=>6 8
new9 <
UserByClaimIndex= M
{ 
	ClaimType 
= 
x  !
.! "
	ClaimType" +
,+ ,

ClaimValue 
=  
x! "
." #

ClaimValue# -
,- .
} 
) 
) 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Indexes\UserByLoginInfoIndex.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Indexes #
{ 
public 

class  
UserByLoginInfoIndex %
:& '
MapIndex( 0
{ 
public		 
string		 
LoginProvider		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
string

 
ProviderKey

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
} 
public 

class (
UserByLoginInfoIndexProvider -
:. /
IndexProvider0 =
<= >
User> B
>B C
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
User6 :
>: ;
context< C
)C D
{ 	
context 
. 
For 
<  
UserByLoginInfoIndex ,
>, -
(- .
). /
. 
Map 
( 
user 
=> 
user !
.! "

LoginInfos" ,
., -
Select- 3
(3 4
x4 5
=>6 8
new9 < 
UserByLoginInfoIndex= Q
{ 
LoginProvider !
=" #
x$ %
.% &
LoginProvider& 3
,3 4
ProviderKey 
=  !
x" #
.# $
ProviderKey$ /
,/ 0
} 
) 
) 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Indexes\UserByRoleNameIndex.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Indexes #
{ 
public 

class 
UserByRoleNameIndex $
:% &
ReduceIndex' 2
{		 
public

 
string

 
RoleName
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
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
} 
public 

class '
UserByRoleNameIndexProvider ,
:- .
IndexProvider/ <
<< =
User= A
>A B
{ 
private 
readonly 
ILookupNormalizer *
_keyNormalizer+ 9
;9 :
public '
UserByRoleNameIndexProvider *
(* +
ILookupNormalizer+ <
keyNormalizer= J
)J K
{ 	
_keyNormalizer 
= 
keyNormalizer *
;* +
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
User6 :
>: ;
context< C
)C D
{ 	
context 
. 
For 
< 
UserByRoleNameIndex +
,+ ,
string- 3
>3 4
(4 5
)5 6
. 
Map 
( 
user 
=> 
user !
.! "
	RoleNames" +
.+ ,
Select, 2
(2 3
x3 4
=>5 7
new8 ;
UserByRoleNameIndex< O
{ 
RoleName 
= 
NormalizeKey +
(+ ,
x, -
)- .
,. /
Count 
= 
$num 
} 
) 
) 
. 
Group 
( 
user 
=> 
user #
.# $
RoleName$ ,
), -
.   
Reduce   
(   
group   
=>    
new  ! $
UserByRoleNameIndex  % 8
{!! 
RoleName"" 
="" 
group"" $
.""$ %
Key""% (
,""( )
Count## 
=## 
group## !
.##! "
Sum##" %
(##% &
x##& '
=>##( *
x##+ ,
.##, -
Count##- 2
)##2 3
}$$ 
)$$ 
.%% 
Delete%% 
(%% 
(%% 
index%% 
,%% 
map%%  #
)%%# $
=>%%% '
{&& 
index'' 
.'' 
Count'' 
-=''  "
map''# &
.''& '
Sum''' *
(''* +
x''+ ,
=>''- /
x''0 1
.''1 2
Count''2 7
)''7 8
;''8 9
return(( 
index((  
.((  !
Count((! &
>((' (
$num(() *
?((+ ,
index((- 2
:((3 4
null((5 9
;((9 :
})) 
))) 
;)) 
}** 	
private,, 
string,, 
NormalizeKey,, #
(,,# $
string,,$ *
key,,+ .
),,. /
{-- 	
return.. 
_keyNormalizer.. !
==.." $
null..% )
?..* +
key.., /
:..0 1
_keyNormalizer..2 @
...@ A
NormalizeName..A N
(..N O
key..O R
)..R S
;..S T
}// 	
}00 
}11 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Indexes\UserIndex.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Indexes #
{ 
public 

class 
	UserIndex 
: 
MapIndex %
{ 
public 
int 

DocumentId 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
UserId		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
NormalizedUserName

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
public 
string 
NormalizedEmail %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
	IsEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class 
UserIndexProvider "
:# $
IndexProvider% 2
<2 3
User3 7
>7 8
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
User6 :
>: ;
context< C
)C D
{ 	
context 
. 
For 
< 
	UserIndex !
>! "
(" #
)# $
. 
Map 
( 
user 
=> 
{ 
return 
new 
	UserIndex (
{ 
UserId 
=  
user! %
.% &
UserId& ,
,, -
NormalizedUserName *
=+ ,
user- 1
.1 2
NormalizedUserName2 D
,D E
NormalizedEmail '
=( )
user* .
.. /
NormalizedEmail/ >
,> ?
	IsEnabled !
=" #
user$ (
.( )
	IsEnabled) 2
} 
; 
} 
) 
; 
} 	
} 
}   �
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Models\User.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Models "
{ 
public 

class 
User 
: 
Entity 
, 
IUser  %
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
NormalizedUserName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
NormalizedEmail %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
PasswordHash "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
SecurityStamp #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
EmailConfirmed "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
	IsEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
true. 2
;2 3
public 
string 

ResetToken  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IList 
< 
string 
> 
	RoleNames &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
new7 :
List; ?
<? @
string@ F
>F G
(G H
)H I
;I J
public 
IList 
< 
	UserClaim 
> 

UserClaims  *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
	UserClaimD M
>M N
(N O
)O P
;P Q
public 
IList 
< 
UserLoginInfo "
>" #

LoginInfos$ .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
new? B
ListC G
<G H
UserLoginInfoH U
>U V
(V W
)W X
;X Y
public 
IList 
< 
	UserToken 
> 

UserTokens  *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
	UserTokenD M
>M N
(N O
)O P
;P Q
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 
UserName 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Models\UserClaim.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Models "
{ 
public 

class 
	UserClaim 
{		 
public 
string 
	ClaimType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

ClaimValue  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Claim 
ToClaim 
( 
) 
{ 	
return 
new 
Claim 
( 
	ClaimType &
,& '

ClaimValue( 2
)2 3
;3 4
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Models\UserToken.cs
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
class 
	UserToken 
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
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Razor\UserRazorHelperExtensions.cs
public

 
static

 
class

 %
UserRazorHelperExtensions

 -
{ 
public 

static 
Task 
< 
User 
> 
GetUserByIdAsync -
(- .
this. 2
IOrchardHelper3 A
orchardHelperB O
,O P
stringQ W
userIdX ^
)^ _
{ 
var 
session 
= 
orchardHelper #
.# $
HttpContext$ /
./ 0
RequestServices0 ?
.? @

GetService@ J
<J K
ISessionK S
>S T
(T U
)U V
;V W
return 
session 
. 
Query 
< 
User !
,! "
	UserIndex# ,
>, -
(- .
x. /
=>0 2
x3 4
.4 5
UserId5 ;
==< >
userId? E
)E F
.F G
FirstOrDefaultAsyncG Z
(Z [
)[ \
;\ ]
} 
public 

static 
Task 
< 
IEnumerable "
<" #
User# '
>' (
>( )
GetUsersByIdsAsync* <
(< =
this= A
IOrchardHelperB P
orchardHelperQ ^
,^ _
IEnumerable` k
<k l
stringl r
>r s
userIdst {
){ |
{ 
var   
session   
=   
orchardHelper   #
.  # $
HttpContext  $ /
.  / 0
RequestServices  0 ?
.  ? @

GetService  @ J
<  J K
ISession  K S
>  S T
(  T U
)  U V
;  V W
return!! 
session!! 
.!! 
Query!! 
<!! 
User!! !
,!!! "
	UserIndex!!# ,
>!!, -
(!!- .
x!!. /
=>!!0 2
x!!3 4
.!!4 5
UserId!!5 ;
.!!; <
IsIn!!< @
(!!@ A
userIds!!A H
)!!H I
)!!I J
.!!J K
	ListAsync!!K T
(!!T U
)!!U V
;!!V W
}"" 
}## �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Services\DefaultUserClaimsPrincipalFactory.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{		 
[ 
Obsolete 
( 
$str z
)z {
]{ |
public 

class -
!DefaultUserClaimsPrincipalFactory 2
:3 4&
UserClaimsPrincipalFactory5 O
<O P
IUserP U
,U V
IRoleW \
>\ ]
{ 
public -
!DefaultUserClaimsPrincipalFactory 0
(0 1
UserManager 
< 
IUser 
> 
userManager *
,* +
RoleManager 
< 
IRole 
> 
roleManager *
,* +
IOptions 
< 
IdentityOptions $
>$ %
identityOptions& 5
)5 6
:7 8
base9 =
(= >
userManager> I
,I J
roleManagerK V
,V W
identityOptionsX g
)g h
{ 	
} 	
	protected 
override 
async  
Task! %
<% &
ClaimsIdentity& 4
>4 5
GenerateClaimsAsync6 I
(I J
IUserJ O
userP T
)T U
{ 	
var 
claims 
= 
await 
base #
.# $
GenerateClaimsAsync$ 7
(7 8
user8 <
)< =
;= >
var 
email 
= 
await 
UserManager )
.) *
GetEmailAsync* 7
(7 8
user8 <
)< =
;= >
if   
(   
!   
String   
.   
IsNullOrEmpty   %
(  % &
email  & +
)  + ,
)  , -
{!! 
claims"" 
."" 
AddClaim"" 
(""  
new""  #
Claim""$ )
("") *
$str""* 1
,""1 2
email""3 8
)""8 9
)""9 :
;"": ;
var$$ 
	confirmed$$ 
=$$ 
await$$  %
UserManager$$& 1
.$$1 2!
IsEmailConfirmedAsync$$2 G
($$G H
user$$H L
)$$L M
;$$M N
claims%% 
.%% 
AddClaim%% 
(%%  
new%%  #
Claim%%$ )
(%%) *
$str%%* :
,%%: ;
	confirmed%%< E
?%%F G
bool%%H L
.%%L M

TrueString%%M W
:%%X Y
bool%%Z ^
.%%^ _
FalseString%%_ j
,%%j k
ClaimValueTypes%%l {
.%%{ |
Boolean	%%| �
)
%%� �
)
%%� �
;
%%� �
}&& 
return(( 
claims(( 
;(( 
})) 	
}** 
}++ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Services\DefaultUserClaimsPrincipalProviderFactory.cs
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
public 

class 5
)DefaultUserClaimsPrincipalProviderFactory :
:; <&
UserClaimsPrincipalFactory= W
<W X
IUserX ]
,] ^
IRole_ d
>d e
{ 
private 
readonly 
IEnumerable $
<$ %
IUserClaimsProvider% 8
>8 9
_claimsProviders: J
;J K
private 
readonly 
ILogger  
_logger! (
;( )
public 5
)DefaultUserClaimsPrincipalProviderFactory 8
(8 9
UserManager 
< 
IUser 
> 
userManager *
,* +
RoleManager 
< 
IRole 
> 
roleManager *
,* +
IOptions 
< 
IdentityOptions $
>$ %
identityOptions& 5
,5 6
IEnumerable 
< 
IUserClaimsProvider +
>+ ,
claimsProviders- <
,< =
ILogger 
< 5
)DefaultUserClaimsPrincipalProviderFactory =
>= >
logger? E
)E F
:G H
baseI M
(M N
userManagerN Y
,Y Z
roleManager[ f
,f g
identityOptionsh w
)w x
{ 	
_claimsProviders 
= 
claimsProviders .
;. /
_logger 
= 
logger 
; 
} 	
	protected 
override 
async  
Task! %
<% &
ClaimsIdentity& 4
>4 5
GenerateClaimsAsync6 I
(I J
IUserJ O
userP T
)T U
{   	
var!! 
claims!! 
=!! 
await!! 
base!! #
.!!# $
GenerateClaimsAsync!!$ 7
(!!7 8
user!!8 <
)!!< =
;!!= >
await## 
_claimsProviders## "
.##" #
InvokeAsync### .
(##. /
(##/ 0
claimsProvider##0 >
)##> ?
=>##@ B
claimsProvider##C Q
.##Q R
GenerateAsync##R _
(##_ `
user##` d
,##d e
claims##f l
)##l m
,##m n
_logger##o v
)##v w
;##w x
return%% 
claims%% 
;%% 
}&& 	
}'' 
}(( ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Services\UserService.cs
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
public 

class 
UserService 
: 
IUserService +
{ 
private 
readonly 
SignInManager &
<& '
IUser' ,
>, -
_signInManager. <
;< =
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly 
IOptions !
<! "
IdentityOptions" 1
>1 2
_identityOptions3 C
;C D
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
UserService 
( 
SignInManager 
< 
IUser 
>  
signInManager! .
,. /
UserManager 
< 
IUser 
> 
userManager *
,* +
IOptions 
< 
IdentityOptions $
>$ %
identityOptions& 5
,5 6
IStringLocalizer 
< 
UserService (
>( )
stringLocalizer* 9
)9 :
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_identityOptions 
= 
identityOptions .
;. /
S 
= 
stringLocalizer 
;  
}   	
public"" 
async"" 
Task"" 
<"" 
IUser"" 
>""  
AuthenticateAsync""! 2
(""2 3
string""3 9
userName"": B
,""B C
string""D J
password""K S
,""S T
Action""U [
<""[ \
string""\ b
,""b c
string""d j
>""j k
reportError""l w
)""w x
{## 	
if$$ 
($$ 
string$$ 
.$$ 
IsNullOrWhiteSpace$$ )
($$) *
userName$$* 2
)$$2 3
)$$3 4
{%% 
reportError&& 
(&& 
$str&& &
,&&& '
S&&( )
[&&) *
$str&&* D
]&&D E
)&&E F
;&&F G
return'' 
null'' 
;'' 
}(( 
if** 
(** 
string** 
.** 
IsNullOrWhiteSpace** )
(**) *
password*** 2
)**2 3
)**3 4
{++ 
reportError,, 
(,, 
$str,, &
,,,& '
S,,( )
[,,) *
$str,,* C
],,C D
),,D E
;,,E F
return-- 
null-- 
;-- 
}.. 
var00 
user00 
=00 
await00 
_userManager00 )
.00) *
FindByNameAsync00* 9
(009 :
userName00: B
)00B C
;00C D
if11 
(11 
user11 
==11 
null11 
)11 
{22 
reportError33 
(33 
string33 "
.33" #
Empty33# (
,33( )
S33* +
[33+ ,
$str33, `
]33` a
)33a b
;33b c
return44 
null44 
;44 
}55 
var77 
result77 
=77 
await77 
_signInManager77 -
.77- .$
CheckPasswordSignInAsync77. F
(77F G
user77G K
,77K L
password77M U
,77U V
lockoutOnFailure77W g
:77g h
true77i m
)77m n
;77n o
if88 
(88 
result88 
.88 
IsNotAllowed88 #
)88# $
{99 
reportError:: 
(:: 
string:: "
.::" #
Empty::# (
,::( )
S::* +
[::+ ,
$str::, [
]::[ \
)::\ ]
;::] ^
return;; 
null;; 
;;; 
}<< 
else== 
if== 
(== 
result== 
.== 
RequiresTwoFactor== -
)==- .
{>> 
reportError?? 
(?? 
string?? "
.??" #
Empty??# (
,??( )
S??* +
[??+ ,
$str??, y
]??y z
)??z {
;??{ |
return@@ 
null@@ 
;@@ 
}AA 
elseBB 
ifBB 
(BB 
!BB 
resultBB 
.BB 
	SucceededBB &
)BB& '
{CC 
reportErrorDD 
(DD 
stringDD "
.DD" #
EmptyDD# (
,DD( )
SDD* +
[DD+ ,
$strDD, `
]DD` a
)DDa b
;DDb c
returnEE 
nullEE 
;EE 
}FF 
ifHH 
(HH 
!HH 
(HH 
userHH 
asHH 
UserHH 
)HH 
.HH  
	IsEnabledHH  )
)HH) *
{II 
reportErrorJJ 
(JJ 
stringJJ "
.JJ" #
EmptyJJ# (
,JJ( )
SJJ* +
[JJ+ ,
$strJJ, [
]JJ[ \
)JJ\ ]
;JJ] ^
returnLL 
nullLL 
;LL 
}MM 
returnOO 
userOO 
;OO 
}PP 	
publicRR 
asyncRR 
TaskRR 
<RR 
IUserRR 
>RR  
CreateUserAsyncRR! 0
(RR0 1
IUserRR1 6
userRR7 ;
,RR; <
stringRR= C
passwordRRD L
,RRL M
ActionRRN T
<RRT U
stringRRU [
,RR[ \
stringRR] c
>RRc d
reportErrorRRe p
)RRp q
{SS 	
ifTT 
(TT 
!TT 
(TT 
userTT 
isTT 
UserTT 
newUserTT &
)TT& '
)TT' (
{UU 
throwVV 
newVV 
ArgumentExceptionVV +
(VV+ ,
$strVV, G
,VVG H
nameofVVI O
(VVO P
userVVP T
)VVT U
)VVU V
;VVV W
}WW 
varZZ 
identityResultZZ 
=ZZ  
StringZZ! '
.ZZ' (
IsNullOrWhiteSpaceZZ( :
(ZZ: ;
passwordZZ; C
)ZZC D
?[[ 
await[[ 
_userManager[[ $
.[[$ %
CreateAsync[[% 0
([[0 1
user[[1 5
)[[5 6
:\\ 
await\\ 
_userManager\\ $
.\\$ %
CreateAsync\\% 0
(\\0 1
user\\1 5
,\\5 6
password\\7 ?
)\\? @
;\\@ A
if]] 
(]] 
!]] 
identityResult]] 
.]]  
	Succeeded]]  )
)]]) *
{^^ #
ProcessValidationErrors__ '
(__' (
identityResult__( 6
.__6 7
Errors__7 =
,__= >
newUser__? F
,__F G
reportError__H S
)__S T
;__T U
return`` 
null`` 
;`` 
}aa 
returncc 
usercc 
;cc 
}dd 	
publicff 
asyncff 
Taskff 
<ff 
boolff 
>ff 
ChangeEmailAsyncff  0
(ff0 1
IUserff1 6
userff7 ;
,ff; <
stringff= C
newEmailffD L
,ffL M
ActionffN T
<ffT U
stringffU [
,ff[ \
stringff] c
>ffc d
reportErrorffe p
)ffp q
{gg 	
varhh 
tokenhh 
=hh 
awaithh 
_userManagerhh *
.hh* +)
GenerateChangeEmailTokenAsynchh+ H
(hhH I
userhhI M
,hhM N
newEmailhhO W
)hhW X
;hhX Y
varii 
identityResultii 
=ii  
awaitii! &
_userManagerii' 3
.ii3 4
ChangeEmailAsyncii4 D
(iiD E
useriiE I
,iiI J
newEmailiiK S
,iiS T
tokeniiU Z
)iiZ [
;ii[ \
ifkk 
(kk 
!kk 
identityResultkk 
.kk  
	Succeededkk  )
)kk) *
{ll #
ProcessValidationErrorsmm '
(mm' (
identityResultmm( 6
.mm6 7
Errorsmm7 =
,mm= >
(mm? @
Usermm@ D
)mmD E
usermmE I
,mmI J
reportErrormmK V
)mmV W
;mmW X
}nn 
returnpp 
identityResultpp !
.pp! "
	Succeededpp" +
;pp+ ,
}qq 	
publicss 
asyncss 
Taskss 
<ss 
boolss 
>ss 
ChangePasswordAsyncss  3
(ss3 4
IUserss4 9
userss: >
,ss> ?
stringss@ F
currentPasswordssG V
,ssV W
stringssX ^
newPasswordss_ j
,ssj k
Actionssl r
<ssr s
stringsss y
,ssy z
string	ss{ �
>
ss� �
reportError
ss� �
)
ss� �
{tt 	
varuu 
identityResultuu 
=uu  
awaituu! &
_userManageruu' 3
.uu3 4
ChangePasswordAsyncuu4 G
(uuG H
useruuH L
,uuL M
currentPassworduuN ]
,uu] ^
newPassworduu_ j
)uuj k
;uuk l
ifww 
(ww 
!ww 
identityResultww 
.ww  
	Succeededww  )
)ww) *
{xx #
ProcessValidationErrorsyy '
(yy' (
identityResultyy( 6
.yy6 7
Errorsyy7 =
,yy= >
(yy? @
Useryy@ D
)yyD E
useryyE I
,yyI J
reportErroryyK V
)yyV W
;yyW X
}zz 
return|| 
identityResult|| !
.||! "
	Succeeded||" +
;||+ ,
}}} 	
public 
Task 
< 
IUser 
> %
GetAuthenticatedUserAsync 4
(4 5
ClaimsPrincipal5 D
	principalE N
)N O
{
�� 	
if
�� 
(
�� 
	principal
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� &
<
��& '
IUser
��' ,
>
��, -
(
��- .
null
��. 2
)
��2 3
;
��3 4
}
�� 
return
�� 
_userManager
�� 
.
��  
GetUserAsync
��  ,
(
��, -
	principal
��- 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IUser
�� 
>
��  (
GetForgotPasswordUserAsync
��! ;
(
��; <
string
��< B
userIdentifier
��C Q
)
��Q R
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
userIdentifier
��* 8
)
��8 9
)
��9 :
{
�� 
return
�� 
await
�� 
Task
�� !
.
��! "

FromResult
��" ,
<
��, -
IUser
��- 2
>
��2 3
(
��3 4
null
��4 8
)
��8 9
;
��9 :
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
��) *
FindByEmailAsync
��* :
(
��: ;
userIdentifier
��; I
)
��I J
as
��K M
User
��N R
;
��R S
if
�� 
(
�� 
user
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
�� 
await
�� 
Task
�� !
.
��! "

FromResult
��" ,
<
��, -
IUser
��- 2
>
��2 3
(
��3 4
null
��4 8
)
��8 9
;
��9 :
}
�� 
user
�� 
.
�� 

ResetToken
�� 
=
�� 
await
�� #
_userManager
��$ 0
.
��0 1-
GeneratePasswordResetTokenAsync
��1 P
(
��P Q
user
��Q U
)
��U V
;
��V W
return
�� 
user
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
ResetPasswordAsync
��  2
(
��2 3
string
��3 9
userIdentifier
��: H
,
��H I
string
��J P

resetToken
��Q [
,
��[ \
string
��] c
newPassword
��d o
,
��o p
Action
��q w
<
��w x
string
��x ~
,
��~ 
string��� �
>��� �
reportError��� �
)��� �
{
�� 	
var
�� 
result
�� 
=
�� 
true
�� 
;
�� 
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
userIdentifier
��* 8
)
��8 9
)
��9 :
{
�� 
reportError
�� 
(
�� 
$str
�� &
,
��& '
S
��( )
[
��) *
$str
��* M
]
��M N
)
��N O
;
��O P
result
�� 
=
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
newPassword
��* 5
)
��5 6
)
��6 7
{
�� 
reportError
�� 
(
�� 
$str
�� &
,
��& '
S
��( )
[
��) *
$str
��* C
]
��C D
)
��D E
;
��E F
result
�� 
=
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *

resetToken
��* 4
)
��4 5
)
��5 6
{
�� 
reportError
�� 
(
�� 
$str
�� #
,
��# $
S
��% &
[
��& '
$str
��' =
]
��= >
)
��> ?
;
��? @
result
�� 
=
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
result
�� 
)
�� 
{
�� 
return
�� 
result
�� 
;
�� 
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
��) *
FindByEmailAsync
��* :
(
��: ;
userIdentifier
��; I
)
��I J
as
��K M
User
��N R
;
��R S
if
�� 
(
�� 
user
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
�� 
false
�� 
;
�� 
}
�� 
var
�� 
identityResult
�� 
=
��  
await
��! &
_userManager
��' 3
.
��3 4 
ResetPasswordAsync
��4 F
(
��F G
user
��G K
,
��K L

resetToken
��M W
,
��W X
newPassword
��Y d
)
��d e
;
��e f
if
�� 
(
�� 
!
�� 
identityResult
�� 
.
��  
	Succeeded
��  )
)
��) *
{
�� %
ProcessValidationErrors
�� '
(
��' (
identityResult
��( 6
.
��6 7
Errors
��7 =
,
��= >
user
��? C
,
��C D
reportError
��E P
)
��P Q
;
��Q R
}
�� 
return
�� 
identityResult
�� !
.
��! "
	Succeeded
��" +
;
��+ ,
}
�� 	
public
�� 
Task
�� 
<
�� 
ClaimsPrincipal
�� #
>
��# $"
CreatePrincipalAsync
��% 9
(
��9 :
IUser
��: ?
user
��@ D
)
��D E
{
�� 	
if
�� 
(
�� 
user
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
�� 
Task
�� 
.
�� 

FromResult
�� &
<
��& '
ClaimsPrincipal
��' 6
>
��6 7
(
��7 8
null
��8 <
)
��< =
;
��= >
}
�� 
return
�� 
_signInManager
�� !
.
��! "&
CreateUserPrincipalAsync
��" :
(
��: ;
user
��; ?
)
��? @
;
��@ A
}
�� 	
public
�� 
Task
�� 
<
�� 
IUser
�� 
>
�� 
GetUserAsync
�� '
(
��' (
string
��( .
userName
��/ 7
)
��7 8
=>
��9 ;
_userManager
��< H
.
��H I
FindByNameAsync
��I X
(
��X Y
userName
��Y a
)
��a b
;
��b c
public
�� 
Task
�� 
<
�� 
IUser
�� 
>
�� $
GetUserByUniqueIdAsync
�� 1
(
��1 2
string
��2 8
userIdentifier
��9 G
)
��G H
=>
��I K
_userManager
��L X
.
��X Y
FindByIdAsync
��Y f
(
��f g
userIdentifier
��g u
)
��u v
;
��v w
public
�� 
void
�� %
ProcessValidationErrors
�� +
(
��+ ,
IEnumerable
��, 7
<
��7 8
IdentityError
��8 E
>
��E F
errors
��G M
,
��M N
User
��O S
user
��T X
,
��X Y
Action
��Z `
<
��` a
string
��a g
,
��g h
string
��i o
>
��o p
reportError
��q |
)
��| }
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
errors
��" (
)
��( )
{
�� 
switch
�� 
(
�� 
error
�� 
.
�� 
Code
�� "
)
��" #
{
�� 
case
�� 
$str
�� 0
:
��0 1
reportError
�� #
(
��# $
$str
��$ .
,
��. /
S
��0 1
[
��1 2
$str
��2 o
]
��o p
)
��p q
;
��q r
break
�� 
;
�� 
case
�� 
$str
�� 0
:
��0 1
reportError
�� #
(
��# $
$str
��$ .
,
��. /
S
��0 1
[
��1 2
$str
��2 s
]
��s t
)
��t u
;
��u v
break
�� 
;
�� 
case
�� 
$str
�� 0
:
��0 1
reportError
�� #
(
��# $
$str
��$ .
,
��. /
S
��0 1
[
��1 2
$str
��2 s
]
��s t
)
��t u
;
��u v
break
�� 
;
�� 
case
�� 
$str
�� :
:
��: ;
reportError
�� #
(
��# $
$str
��$ .
,
��. /
S
��0 1
[
��1 2
$str
��2 s
]
��s t
)
��t u
;
��u v
break
�� 
;
�� 
case
�� 
$str
�� +
:
��+ ,
reportError
�� #
(
��# $
$str
��$ .
,
��. /
S
��0 1
[
��1 2
$str
��2 ^
,
��^ _
_identityOptions
��` p
.
��p q
Value
��q v
.
��v w
Password
��w 
.�� �
RequiredLength��� �
]��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
$str
�� 6
:
��6 7
reportError
�� #
(
��# $
$str
��$ .
,
��. /
S
��0 1
[
��1 2
$str
��2 j
,
��j k
_identityOptions
��l |
.
��| }
Value��} �
.��� �
Password��� �
.��� �#
RequiredUniqueChars��� �
]��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
$str
�� +
:
��+ ,
reportError
�� #
(
��# $
$str
��$ 5
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
)
��O P
;
��P Q
break
�� 
;
�� 
case
�� 
$str
�� *
:
��* +
reportError
�� #
(
��# $
$str
��$ .
,
��. /
S
��0 1
[
��1 2
$str
��2 s
,
��s t
user
��u y
.
��y z
UserName��z �
]��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
$str
�� ,
:
��, -
reportError
�� #
(
��# $
$str
��$ .
,
��. /
S
��0 1
[
��1 2
$str
��2 T
,
��T U
user
��V Z
.
��Z [
UserName
��[ c
]
��c d
)
��d e
;
��e f
break
�� 
;
�� 
case
�� 
$str
�� )
:
��) *
reportError
�� #
(
��# $
$str
��$ +
,
��+ ,
S
��- .
[
��. /
$str
��/ M
,
��M N
user
��O S
.
��S T
Email
��T Y
]
��Y Z
)
��Z [
;
��[ \
break
�� 
;
�� 
case
�� 
$str
�� '
:
��' (
reportError
�� #
(
��# $
$str
��$ +
,
��+ ,
S
��- .
[
��. /
$str
��/ H
,
��H I
user
��J N
.
��N O
Email
��O T
]
��T U
)
��U V
;
��V W
break
�� 
;
�� 
default
�� 
:
�� 
reportError
�� #
(
��# $
string
��$ *
.
��* +
Empty
��+ 0
,
��0 1
S
��2 3
[
��3 4
$str
��4 N
,
��N O
error
��P U
.
��U V
Code
��V Z
]
��Z [
)
��[ \
;
��\ ]
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Services\UserStore.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

class 
	UserStore 
: 
IUserClaimStore 
< 
IUser 
> 
, 
IUserRoleStore 
< 
IUser 
> 
, 
IUserPasswordStore 
< 
IUser  
>  !
,! "
IUserEmailStore 
< 
IUser 
> 
, #
IUserSecurityStampStore 
<  
IUser  %
>% &
,& '
IUserLoginStore 
< 
IUser 
> 
, )
IUserAuthenticationTokenStore %
<% &
IUser& +
>+ ,
{ 
private 
const 
string 
TokenProtector +
=, -
$str. K
;K L
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IRoleService %
_roleService& 2
;2 3
private   
readonly   
ILookupNormalizer   *
_keyNormalizer  + 9
;  9 :
private!! 
readonly!! 
IUserIdGenerator!! )
_userIdGenerator!!* :
;!!: ;
private"" 
readonly"" 
ILogger""  
_logger""! (
;""( )
private## 
readonly## #
IDataProtectionProvider## 0#
_dataProtectionProvider##1 H
;##H I
public%% 
	UserStore%% 
(%% 
ISession%% !
session%%" )
,%%) *
IRoleService&& 
roleService&& $
,&&$ %
ILookupNormalizer'' 
keyNormalizer'' +
,''+ ,
IUserIdGenerator(( 
userIdGenerator(( ,
,((, -
ILogger)) 
<)) 
	UserStore)) 
>)) 
logger)) %
,))% &
IEnumerable** 
<** 
IUserEventHandler** )
>**) *
handlers**+ 3
,**3 4#
IDataProtectionProvider++ #"
dataProtectionProvider++$ :
)++: ;
{,, 	
_session-- 
=-- 
session-- 
;-- 
_roleService.. 
=.. 
roleService.. &
;..& '
_keyNormalizer// 
=// 
keyNormalizer// *
;//* +
_userIdGenerator00 
=00 
userIdGenerator00 .
;00. /
_logger11 
=11 
logger11 
;11 #
_dataProtectionProvider22 #
=22$ %"
dataProtectionProvider22& <
;22< =
Handlers33 
=33 
handlers33 
;33  
}44 	
public55 
IEnumerable55 
<55 
IUserEventHandler55 ,
>55, -
Handlers55. 6
{557 8
get559 <
;55< =
private55> E
set55F I
;55I J
}55K L
public77 
void77 
Dispose77 
(77 
)77 
{88 	
}99 	
public;; 
string;; 
NormalizeKey;; "
(;;" #
string;;# )
key;;* -
);;- .
{<< 	
return== 
_keyNormalizer== !
====" $
null==% )
?==* +
key==, /
:==0 1
_keyNormalizer==2 @
.==@ A
NormalizeName==A N
(==N O
key==O R
)==R S
;==S T
}>> 	
publicBB 
asyncBB 
TaskBB 
<BB 
IdentityResultBB (
>BB( )
CreateAsyncBB* 5
(BB5 6
IUserBB6 ;
userBB< @
,BB@ A
CancellationTokenBBB S
cancellationTokenBBT e
=BBf g
defaultBBh o
(BBo p
CancellationToken	BBp �
)
BB� �
)
BB� �
{CC 	
ifDD 
(DD 
userDD 
==DD 
nullDD 
)DD 
{EE 
throwFF 
newFF !
ArgumentNullExceptionFF /
(FF/ 0
nameofFF0 6
(FF6 7
userFF7 ;
)FF; <
)FF< =
;FF= >
}GG 
ifII 
(II 
!II 
(II 
userII 
isII 
UserII 
newUserII &
)II& '
)II' (
{JJ 
throwKK 
newKK 
ArgumentExceptionKK +
(KK+ ,
$strKK, G
,KKG H
nameofKKI O
(KKO P
userKKP T
)KKT U
)KKU V
;KKV W
}LL 
varNN 
	newUserIdNN 
=NN 
newUserNN #
.NN# $
UserIdNN$ *
;NN* +
ifPP 
(PP 
StringPP 
.PP 
IsNullOrEmptyPP $
(PP$ %
	newUserIdPP% .
)PP. /
)PP/ 0
{QQ 
	newUserIdSS 
=SS 
_userIdGeneratorSS ,
.SS, -
GenerateUniqueIdSS- =
(SS= >
userSS> B
)SSB C
.SSC D
ToLowerInvariantSSD T
(SST U
)SSU V
;SSV W
}TT 
tryVV 
{WW 
varXX 
attemptsXX 
=XX 
$numXX !
;XX! "
whileZZ 
(ZZ 
awaitZZ 
_sessionZZ %
.ZZ% &

QueryIndexZZ& 0
<ZZ0 1
	UserIndexZZ1 :
>ZZ: ;
(ZZ; <
xZZ< =
=>ZZ> @
xZZA B
.ZZB C
UserIdZZC I
==ZZJ L
	newUserIdZZM V
)ZZV W
.ZZW X

CountAsyncZZX b
(ZZb c
)ZZc d
!=ZZe g
$numZZh i
)ZZi j
{[[ 
if\\ 
(\\ 
attempts\\  
--\\  "
==\\# %
$num\\& '
)\\' (
{]] 
throw^^ 
new^^ ! 
ApplicationException^^" 6
(^^6 7
$str^^7 o
)^^o p
;^^p q
}__ 
	newUserIdaa 
=aa 
_userIdGeneratoraa  0
.aa0 1
GenerateUniqueIdaa1 A
(aaA B
useraaB F
)aaF G
.aaG H
ToLowerInvariantaaH X
(aaX Y
)aaY Z
;aaZ [
}bb 
newUserdd 
.dd 
UserIddd 
=dd  
	newUserIddd! *
;dd* +
_sessionff 
.ff 
Saveff 
(ff 
userff "
)ff" #
;ff# $
awaithh 
_sessionhh 
.hh 
CommitAsynchh *
(hh* +
)hh+ ,
;hh, -
varjj 
contextjj 
=jj 
newjj !
UserContextjj" -
(jj- .
userjj. 2
)jj2 3
;jj3 4
awaitkk 
Handlerskk 
.kk 
InvokeAsynckk *
(kk* +
(kk+ ,
handlerkk, 3
,kk3 4
contextkk5 <
)kk< =
=>kk> @
handlerkkA H
.kkH I
CreatedAsynckkI U
(kkU V
contextkkV ]
)kk] ^
,kk^ _
contextkk` g
,kkg h
_loggerkki p
)kkp q
;kkq r
}ll 
catchmm 
(mm 
	Exceptionmm 
emm 
)mm 
{nn 
_loggeroo 
.oo 
LogErroroo  
(oo  !
eoo! "
,oo" #
$stroo$ Q
)ooQ R
;ooR S
returnqq 
IdentityResultqq %
.qq% &
Failedqq& ,
(qq, -
)qq- .
;qq. /
}rr 
returntt 
IdentityResulttt !
.tt! "
Successtt" )
;tt) *
}uu 	
publicww 
asyncww 
Taskww 
<ww 
IdentityResultww (
>ww( )
DeleteAsyncww* 5
(ww5 6
IUserww6 ;
userww< @
,ww@ A
CancellationTokenwwB S
cancellationTokenwwT e
=wwf g
defaultwwh o
(wwo p
CancellationToken	wwp �
)
ww� �
)
ww� �
{xx 	
ifyy 
(yy 
useryy 
==yy 
nullyy 
)yy 
{zz 
throw{{ 
new{{ !
ArgumentNullException{{ /
({{/ 0
nameof{{0 6
({{6 7
user{{7 ;
){{; <
){{< =
;{{= >
}|| 
_session~~ 
.~~ 
Delete~~ 
(~~ 
user~~  
)~~  !
;~~! "
try
�� 
{
�� 
await
�� 
_session
�� 
.
�� 
CommitAsync
�� *
(
��* +
)
��+ ,
;
��, -
var
�� 
context
�� 
=
�� 
new
�� !
UserContext
��" -
(
��- .
user
��. 2
)
��2 3
;
��3 4
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� *
(
��* +
(
��+ ,
handler
��, 3
,
��3 4
context
��5 <
)
��< =
=>
��> @
handler
��A H
.
��H I
DeletedAsync
��I U
(
��U V
context
��V ]
)
��] ^
,
��^ _
context
��` g
,
��g h
_logger
��i p
)
��p q
;
��q r
}
�� 
catch
�� 
{
�� 
return
�� 
IdentityResult
�� %
.
��% &
Failed
��& ,
(
��, -
)
��- .
;
��. /
}
�� 
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
�� 
async
�� 
Task
�� 
<
�� 
IUser
�� 
>
��  
FindByIdAsync
��! .
(
��. /
string
��/ 5
userId
��6 <
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
�� 	
return
�� 
await
�� 
_session
�� !
.
��! "
Query
��" '
<
��' (
User
��( ,
,
��, -
	UserIndex
��. 7
>
��7 8
(
��8 9
u
��9 :
=>
��; =
u
��> ?
.
��? @
UserId
��@ F
==
��G I
userId
��J P
)
��P Q
.
��Q R!
FirstOrDefaultAsync
��R e
(
��e f
)
��f g
;
��g h
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IUser
�� 
>
��  
FindByNameAsync
��! 0
(
��0 1
string
��1 7 
normalizedUserName
��8 J
,
��J K
CancellationToken
��L ]
cancellationToken
��^ o
=
��p q
default
��r y
(
��y z 
CancellationToken��z �
)��� �
)��� �
{
�� 	
return
�� 
await
�� 
_session
�� !
.
��! "
Query
��" '
<
��' (
User
��( ,
,
��, -
	UserIndex
��. 7
>
��7 8
(
��8 9
u
��9 :
=>
��; =
u
��> ?
.
��? @ 
NormalizedUserName
��@ R
==
��S U 
normalizedUserName
��V h
)
��h i
.
��i j!
FirstOrDefaultAsync
��j }
(
��} ~
)
��~ 
;�� �
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
GetNormalizedUserNameAsync
�� 6
(
��6 7
IUser
��7 <
user
��= A
,
��A B
CancellationToken
��C T
cancellationToken
��U f
=
��g h
default
��i p
(
��p q 
CancellationToken��q �
)��� �
)��� �
{
�� 	
if
�� 
(
�� 
user
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
user
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
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0 
NormalizedUserName
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
GetUserIdAsync
�� *
(
��* +
IUser
��+ 0
user
��1 5
,
��5 6
CancellationToken
��7 H
cancellationToken
��I Z
=
��[ \
default
��] d
(
��d e
CancellationToken
��e v
)
��v w
)
��w x
{
�� 	
if
�� 
(
�� 
user
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
user
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
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
UserId
��0 6
)
��6 7
;
��7 8
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
GetUserNameAsync
�� ,
(
��, -
IUser
��- 2
user
��3 7
,
��7 8
CancellationToken
��9 J
cancellationToken
��K \
=
��] ^
default
��_ f
(
��f g
CancellationToken
��g x
)
��x y
)
��y z
{
�� 	
if
�� 
(
�� 
user
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
user
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
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
UserName
��0 8
)
��8 9
;
��9 :
}
�� 	
public
�� 
Task
�� (
SetNormalizedUserNameAsync
�� .
(
��. /
IUser
��/ 4
user
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
=
��v w
default
��x 
(�� �!
CancellationToken��� �
)��� �
)��� �
{
�� 	
if
�� 
(
�� 
user
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
user
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
User
�� 
)
�� 
user
�� 
)
�� 
.
��  
NormalizedUserName
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
SetUserNameAsync
�� $
(
��$ %
IUser
��% *
user
��+ /
,
��/ 0
string
��1 7
userName
��8 @
,
��@ A
CancellationToken
��B S
cancellationToken
��T e
=
��f g
default
��h o
(
��o p 
CancellationToken��p �
)��� �
)��� �
{
�� 	
if
�� 
(
�� 
user
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
user
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
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 
UserName
�� !
=
��" #
userName
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
IUser
��6 ;
user
��< @
,
��@ A
CancellationToken
��B S
cancellationToken
��T e
=
��f g
default
��h o
(
��o p 
CancellationToken��p �
)��� �
)��� �
{
�� 	
if
�� 
(
�� 
user
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
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
_session
�� 
.
�� 
Save
�� 
(
�� 
user
�� 
)
�� 
;
��  
var
�� 
context
�� 
=
�� 
new
�� 
UserContext
�� )
(
��) *
user
��* .
)
��. /
;
��/ 0
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
UpdatedAsync
��E Q
(
��Q R
context
��R Y
)
��Y Z
,
��Z [
context
��\ c
,
��c d
_logger
��e l
)
��l m
;
��m n
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
�� 
<
�� 
string
�� 
>
�� "
GetPasswordHashAsync
�� 0
(
��0 1
IUser
��1 6
user
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
user
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
user
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
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
PasswordHash
��0 <
)
��< =
;
��= >
}
�� 	
public
�� 
Task
�� "
SetPasswordHashAsync
�� (
(
��( )
IUser
��) .
user
��/ 3
,
��3 4
string
��5 ;
passwordHash
��< H
,
��H I
CancellationToken
��J [
cancellationToken
��\ m
=
��n o
default
��p w
(
��w x 
CancellationToken��x �
)��� �
)��� �
{
�� 	
if
�� 
(
�� 
user
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
user
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
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 
PasswordHash
�� %
=
��& '
passwordHash
��( 4
;
��4 5
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
�� 
bool
�� 
>
�� 
HasPasswordAsync
�� *
(
��* +
IUser
��+ 0
user
��1 5
,
��5 6
CancellationToken
��7 H
cancellationToken
��I Z
=
��[ \
default
��] d
(
��d e
CancellationToken
��e v
)
��v w
)
��w x
{
�� 	
if
�� 
(
�� 
user
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
user
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
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
PasswordHash
��0 <
!=
��= ?
null
��@ D
)
��D E
;
��E F
}
�� 	
public
�� 
Task
�� #
SetSecurityStampAsync
�� )
(
��) *
IUser
��* /
user
��0 4
,
��4 5
string
��6 <
stamp
��= B
,
��B C
CancellationToken
��D U
cancellationToken
��V g
=
��h i
default
��j q
(
��q r 
CancellationToken��r �
)��� �
)��� �
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 
SecurityStamp
�� &
=
��' (
stamp
��) .
;
��. /
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� #
GetSecurityStampAsync
�� 1
(
��1 2
IUser
��2 7
user
��8 <
,
��< =
CancellationToken
��> O
cancellationToken
��P a
=
��b c
default
��d k
(
��k l
CancellationToken
��l }
)
��} ~
)
��~ 
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
(
��# $
(
��$ %
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
SecurityStamp
��0 =
)
��= >
;
��> ?
}
�� 	
public
�� 
Task
�� 
SetEmailAsync
�� !
(
��! "
IUser
��" '
user
��( ,
,
��, -
string
��. 4
email
��5 :
,
��: ;
CancellationToken
��< M
cancellationToken
��N _
)
��_ `
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 
Email
�� 
=
��  
email
��! &
;
��& '
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
GetEmailAsync
�� )
(
��) *
IUser
��* /
user
��0 4
,
��4 5
CancellationToken
��6 G
cancellationToken
��H Y
)
��Y Z
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
(
��# $
(
��$ %
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
Email
��0 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
Task
�� 
<
�� 
bool
�� 
>
�� $
GetEmailConfirmedAsync
�� 0
(
��0 1
IUser
��1 6
user
��7 ;
,
��; <
CancellationToken
��= N
cancellationToken
��O `
)
��` a
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
(
��# $
(
��$ %
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
EmailConfirmed
��0 >
)
��> ?
;
��? @
}
�� 	
public
�� 
Task
�� $
SetEmailConfirmedAsync
�� *
(
��* +
IUser
��+ 0
user
��1 5
,
��5 6
bool
��7 ;
	confirmed
��< E
,
��E F
CancellationToken
��G X
cancellationToken
��Y j
)
��j k
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 
EmailConfirmed
�� '
=
��( )
	confirmed
��* 3
;
��3 4
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IUser
�� 
>
��  
FindByEmailAsync
��! 1
(
��1 2
string
��2 8
normalizedEmail
��9 H
,
��H I
CancellationToken
��J [
cancellationToken
��\ m
)
��m n
{
�� 	
return
�� 
await
�� 
_session
�� !
.
��! "
Query
��" '
<
��' (
User
��( ,
,
��, -
	UserIndex
��. 7
>
��7 8
(
��8 9
u
��9 :
=>
��; =
u
��> ?
.
��? @
NormalizedEmail
��@ O
==
��P R
normalizedEmail
��S b
)
��b c
.
��c d!
FirstOrDefaultAsync
��d w
(
��w x
)
��x y
;
��y z
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� %
GetNormalizedEmailAsync
�� 3
(
��3 4
IUser
��4 9
user
��: >
,
��> ?
CancellationToken
��@ Q
cancellationToken
��R c
)
��c d
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
(
��# $
(
��$ %
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
NormalizedEmail
��0 ?
)
��? @
;
��@ A
}
�� 	
public
�� 
Task
�� %
SetNormalizedEmailAsync
�� +
(
��+ ,
IUser
��, 1
user
��2 6
,
��6 7
string
��8 >
normalizedEmail
��? N
,
��N O
CancellationToken
��P a
cancellationToken
��b s
)
��s t
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 
NormalizedEmail
�� (
=
��) *
normalizedEmail
��+ :
;
��: ;
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
async
�� 
Task
�� 
AddToRoleAsync
�� (
(
��( )
IUser
��) .
user
��/ 3
,
��3 4
string
��5 ; 
normalizedRoleName
��< N
,
��N O
CancellationToken
��P a
cancellationToken
��b s
)
��s t
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
var
�� 
	roleNames
�� 
=
�� 
await
�� !
_roleService
��" .
.
��. /
GetRoleNamesAsync
��/ @
(
��@ A
)
��A B
;
��B C
var
�� 
roleName
�� 
=
�� 
	roleNames
�� $
?
��$ %
.
��% &
FirstOrDefault
��& 4
(
��4 5
r
��5 6
=>
��7 9
NormalizeKey
��: F
(
��F G
r
��G H
)
��H I
==
��J L 
normalizedRoleName
��M _
)
��_ `
;
��` a
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
roleName
��* 2
)
��2 3
)
��3 4
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
��4 6
Role 
��6 ;
{
��; < 
normalizedRoleName
��< N
}
��N O
 does not exist.
��O _
"
��_ `
)
��` a
;
��a b
}
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 
	RoleNames
�� "
.
��" #
Add
��# &
(
��& '
roleName
��' /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
async
�� 
Task
�� !
RemoveFromRoleAsync
�� -
(
��- .
IUser
��. 3
user
��4 8
,
��8 9
string
��: @ 
normalizedRoleName
��A S
,
��S T
CancellationToken
��U f
cancellationToken
��g x
)
��x y
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
var
�� 
	roleNames
�� 
=
�� 
await
�� !
_roleService
��" .
.
��. /
GetRoleNamesAsync
��/ @
(
��@ A
)
��A B
;
��B C
var
�� 
roleName
�� 
=
�� 
	roleNames
�� $
?
��$ %
.
��% &
FirstOrDefault
��& 4
(
��4 5
r
��5 6
=>
��7 9
NormalizeKey
��: F
(
��F G
r
��G H
)
��H I
==
��J L 
normalizedRoleName
��M _
)
��_ `
;
��` a
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
roleName
��* 2
)
��2 3
)
��3 4
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
��4 6
Role 
��6 ;
{
��; < 
normalizedRoleName
��< N
}
��N O
 does not exist.
��O _
"
��_ `
)
��` a
;
��a b
}
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 
	RoleNames
�� "
.
��" #
Remove
��# )
(
��) *
roleName
��* 2
)
��2 3
;
��3 4
}
�� 	
public
�� 
Task
�� 
<
�� 
IList
�� 
<
�� 
string
��  
>
��  !
>
��! "
GetRolesAsync
��# 0
(
��0 1
IUser
��1 6
user
��7 ;
,
��; <
CancellationToken
��= N
cancellationToken
��O `
)
��` a
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
<
��" #
IList
��# (
<
��( )
string
��) /
>
��/ 0
>
��0 1
(
��1 2
(
��2 3
(
��3 4
User
��4 8
)
��8 9
user
��9 =
)
��= >
.
��> ?
	RoleNames
��? H
)
��H I
;
��I J
}
�� 	
public
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
IsInRoleAsync
�� '
(
��' (
IUser
��( -
user
��. 2
,
��2 3
string
��4 : 
normalizedRoleName
��; M
,
��M N
CancellationToken
��O `
cancellationToken
��a r
)
��r s
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) * 
normalizedRoleName
��* <
)
��< =
)
��= >
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, L
,
��L M
nameof
��N T
(
��T U 
normalizedRoleName
��U g
)
��g h
)
��h i
;
��i j
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
(
��# $
(
��$ %
User
��% )
)
��) *
user
��* .
)
��. /
.
��/ 0
	RoleNames
��0 9
.
��9 :
Contains
��: B
(
��B C 
normalizedRoleName
��C U
,
��U V
StringComparer
��W e
.
��e f
OrdinalIgnoreCase
��f w
)
��w x
)
��x y
;
��y z
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IList
�� 
<
��  
IUser
��  %
>
��% &
>
��& '!
GetUsersInRoleAsync
��( ;
(
��; <
string
��< B 
normalizedRoleName
��C U
,
��U V
CancellationToken
��W h
cancellationToken
��i z
)
��z {
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ % 
normalizedRoleName
��% 7
)
��7 8
)
��8 9
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7 
normalizedRoleName
��7 I
)
��I J
)
��J K
;
��K L
}
�� 
var
�� 
users
�� 
=
�� 
await
�� 
_session
�� &
.
��& '
Query
��' ,
<
��, -
User
��- 1
,
��1 2!
UserByRoleNameIndex
��3 F
>
��F G
(
��G H
u
��H I
=>
��J L
u
��M N
.
��N O
RoleName
��O W
==
��X Z 
normalizedRoleName
��[ m
)
��m n
.
��n o
	ListAsync
��o x
(
��x y
)
��y z
;
��z {
return
�� 
users
�� 
==
�� 
null
��  
?
��! "
new
��# &
List
��' +
<
��+ ,
IUser
��, 1
>
��1 2
(
��2 3
)
��3 4
:
��5 6
users
��7 <
.
��< =
ToList
��= C
<
��C D
IUser
��D I
>
��I J
(
��J K
)
��K L
;
��L M
}
�� 	
public
�� 
Task
�� 
AddLoginAsync
�� !
(
��! "
IUser
��" '
user
��( ,
,
��, -
UserLoginInfo
��. ;
login
��< A
,
��A B
CancellationToken
��C T
cancellationToken
��U f
)
��f g
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
login
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
login
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 

LoginInfos
�� '
.
��' (
Any
��( +
(
��+ ,
i
��, -
=>
��. 0
i
��1 2
.
��2 3
LoginProvider
��3 @
==
��A C
login
��D I
.
��I J
LoginProvider
��J W
)
��W X
)
��X Y
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
��4 6
	Provider 
��6 ?
{
��? @
login
��@ E
.
��E F
LoginProvider
��F S
}
��S T%
 is already linked for 
��T k
{
��k l
user
��l p
.
��p q
UserName
��q y
}
��y z
"
��z {
)
��{ |
;
��| }
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 

LoginInfos
�� #
.
��# $
Add
��$ '
(
��' (
login
��( -
)
��- .
;
��. /
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IUser
�� 
>
��  
FindByLoginAsync
��! 1
(
��1 2
string
��2 8
loginProvider
��9 F
,
��F G
string
��H N
providerKey
��O Z
,
��Z [
CancellationToken
��\ m
cancellationToken
��n 
)�� �
{
�� 	
return
�� 
await
�� 
_session
�� !
.
��! "
Query
��" '
<
��' (
User
��( ,
,
��, -"
UserByLoginInfoIndex
��. B
>
��B C
(
��C D
u
��D E
=>
��F H
u
��I J
.
��J K
LoginProvider
��K X
==
��Y [
loginProvider
��\ i
&&
��j l
u
��m n
.
��n o
ProviderKey
��o z
==
��{ }
providerKey��~ �
)��� �
.��� �#
FirstOrDefaultAsync��� �
(��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� 
IList
�� 
<
�� 
UserLoginInfo
�� '
>
��' (
>
��( )
GetLoginsAsync
��* 8
(
��8 9
IUser
��9 >
user
��? C
,
��C D
CancellationToken
��E V
cancellationToken
��W h
)
��h i
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
<
��" #
IList
��# (
<
��( )
UserLoginInfo
��) 6
>
��6 7
>
��7 8
(
��8 9
(
��9 :
(
��: ;
User
��; ?
)
��? @
user
��@ D
)
��D E
.
��E F

LoginInfos
��F P
)
��P Q
;
��Q R
}
�� 	
public
�� 
Task
�� 
RemoveLoginAsync
�� $
(
��$ %
IUser
��% *
user
��+ /
,
��/ 0
string
��1 7
loginProvider
��8 E
,
��E F
string
��G M
providerKey
��N Y
,
��Y Z
CancellationToken
��[ l
cancellationToken
��m ~
)
��~ 
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
var
�� 
externalLogins
�� 
=
��  
(
��! "
(
��" #
User
��# '
)
��' (
user
��( ,
)
��, -
.
��- .

LoginInfos
��. 8
;
��8 9
if
�� 
(
�� 
externalLogins
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
var
�� 
item
�� 
=
�� 
externalLogins
�� )
.
��) *
FirstOrDefault
��* 8
(
��8 9
c
��9 :
=>
��; =
c
��> ?
.
��? @
LoginProvider
��@ M
==
��N P
loginProvider
��Q ^
&&
��_ a
c
��b c
.
��c d
ProviderKey
��d o
==
��p r
providerKey
��s ~
)
��~ 
;�� �
if
�� 
(
�� 
item
�� 
!=
�� 
null
��  
)
��  !
{
�� 
externalLogins
�� "
.
��" #
Remove
��# )
(
��) *
item
��* .
)
��. /
;
��/ 0
}
�� 
}
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
Task
�� 
<
�� 
IList
�� 
<
�� 
Claim
�� 
>
��  
>
��  !
GetClaimsAsync
��" 0
(
��0 1
IUser
��1 6
user
��7 ;
,
��; <
CancellationToken
��= N
cancellationToken
��O `
)
��` a
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
<
��" #
IList
��# (
<
��( )
Claim
��) .
>
��. /
>
��/ 0
(
��0 1
(
��1 2
(
��2 3
User
��3 7
)
��7 8
user
��8 <
)
��< =
.
��= >

UserClaims
��> H
.
��H I
Select
��I O
(
��O P
x
��P Q
=>
��R T
x
��U V
.
��V W
ToClaim
��W ^
(
��^ _
)
��_ `
)
��` a
.
��a b
ToList
��b h
(
��h i
)
��i j
)
��j k
;
��k l
}
�� 	
public
�� 
Task
�� 
AddClaimsAsync
�� "
(
��" #
IUser
��# (
user
��) -
,
��- .
IEnumerable
��/ :
<
��: ;
Claim
��; @
>
��@ A
claims
��B H
,
��H I
CancellationToken
��J [
cancellationToken
��\ m
)
��m n
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
if
�� 
(
�� 
claims
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
claims
��7 =
)
��= >
)
��> ?
;
��? @
foreach
�� 
(
�� 
var
�� 
claim
�� 
in
�� !
claims
��" (
)
��( )
{
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 

UserClaims
�� '
.
��' (
Add
��( +
(
��+ ,
new
��, /
	UserClaim
��0 9
{
��: ;
	ClaimType
��< E
=
��F G
claim
��H M
.
��M N
Type
��N R
,
��R S

ClaimValue
��T ^
=
��_ `
claim
��a f
.
��f g
Value
��g l
}
��m n
)
��n o
;
��o p
}
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
Task
�� 
ReplaceClaimAsync
�� %
(
��% &
IUser
��& +
user
��, 0
,
��0 1
Claim
��2 7
claim
��8 =
,
��= >
Claim
��? D
newClaim
��E M
,
��M N
CancellationToken
��O `
cancellationToken
��a r
)
��r s
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
if
�� 
(
�� 
claim
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
claim
��7 <
)
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
newClaim
�� 
==
�� 
null
��  
)
��  !
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
newClaim
��7 ?
)
��? @
)
��@ A
;
��A B
foreach
�� 
(
�� 
var
�� 
	userClaim
�� "
in
��# %
(
��& '
(
��' (
User
��( ,
)
��, -
user
��- 1
)
��1 2
.
��2 3

UserClaims
��3 =
.
��= >
Where
��> C
(
��C D
uc
��D F
=>
��G I
uc
��J L
.
��L M

ClaimValue
��M W
==
��X Z
claim
��[ `
.
��` a
Value
��a f
&&
��g i
uc
��j l
.
��l m
	ClaimType
��m v
==
��w y
claim
��z 
.�� �
Type��� �
)��� �
)��� �
{
�� 
	userClaim
�� 
.
�� 

ClaimValue
�� $
=
��% &
newClaim
��' /
.
��/ 0
Value
��0 5
;
��5 6
	userClaim
�� 
.
�� 
	ClaimType
�� #
=
��$ %
newClaim
��& .
.
��. /
Type
��/ 3
;
��3 4
}
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
Task
�� 
RemoveClaimsAsync
�� %
(
��% &
IUser
��& +
user
��, 0
,
��0 1
IEnumerable
��2 =
<
��= >
Claim
��> C
>
��C D
claims
��E K
,
��K L
CancellationToken
��M ^
cancellationToken
��_ p
)
��p q
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
if
�� 
(
�� 
claims
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
claims
��7 =
)
��= >
)
��> ?
;
��? @
foreach
�� 
(
�� 
var
�� 
claim
�� 
in
�� !
claims
��" (
)
��( )
{
�� 
foreach
�� 
(
�� 
var
�� 
	userClaim
�� &
in
��' )
(
��* +
(
��+ ,
User
��, 0
)
��0 1
user
��1 5
)
��5 6
.
��6 7

UserClaims
��7 A
.
��A B
Where
��B G
(
��G H
uc
��H J
=>
��K M
uc
��N P
.
��P Q

ClaimValue
��Q [
==
��\ ^
claim
��_ d
.
��d e
Value
��e j
&&
��k m
uc
��n p
.
��p q
	ClaimType
��q z
==
��{ }
claim��~ �
.��� �
Type��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
)��� �
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
��  
.
��  !

UserClaims
��! +
.
��+ ,
Remove
��, 2
(
��2 3
	userClaim
��3 <
)
��< =
;
��= >
}
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IList
�� 
<
��  
IUser
��  %
>
��% &
>
��& '#
GetUsersForClaimAsync
��( =
(
��= >
Claim
��> C
claim
��D I
,
��I J
CancellationToken
��K \
cancellationToken
��] n
)
��n o
{
�� 	
if
�� 
(
�� 
claim
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
claim
��7 <
)
��< =
)
��= >
;
��> ?
var
�� 
users
�� 
=
�� 
await
�� 
_session
�� &
.
��& '
Query
��' ,
<
��, -
User
��- 1
,
��1 2
UserByClaimIndex
��3 C
>
��C D
(
��D E
uc
��E G
=>
��H J
uc
��K M
.
��M N
	ClaimType
��N W
==
��X Z
claim
��[ `
.
��` a
Type
��a e
&&
��f h
uc
��i k
.
��k l

ClaimValue
��l v
==
��w y
claim
��z 
.�� �
Value��� �
)��� �
.��� �
	ListAsync��� �
(��� �
)��� �
;��� �
return
�� 
users
�� 
.
�� 
Cast
�� 
<
�� 
IUser
�� #
>
��# $
(
��$ %
)
��% &
.
��& '
ToList
��' -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
GetTokenAsync
�� )
(
��) *
IUser
��* /
user
��0 4
,
��4 5
string
��6 <
loginProvider
��= J
,
��J K
string
��L R
name
��S W
,
��W X
CancellationToken
��Y j
cancellationToken
��k |
=
��} ~
default�� �
(��� �!
CancellationToken��� �
)��� �
)��� �
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
loginProvider
��% 2
)
��2 3
)
��3 4
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, Y
,
��Y Z
nameof
��[ a
(
��a b
loginProvider
��b o
)
��o p
)
��p q
;
��q r
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
name
��% )
)
��) *
)
��* +
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, O
,
��O P
nameof
��Q W
(
��W X
name
��X \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
string
�� 

tokenValue
�� 
=
�� 
null
��  $
;
��$ %
var
�� 
	userToken
�� 
=
�� 
GetUserToken
�� (
(
��( )
user
��) -
,
��- .
loginProvider
��/ <
,
��< =
name
��> B
)
��B C
;
��C D
if
�� 
(
�� 
	userToken
�� 
!=
�� 
null
�� !
)
��! "
{
�� 

tokenValue
�� 
=
�� %
_dataProtectionProvider
�� 4
.
��4 5
CreateProtector
��5 D
(
��D E
TokenProtector
��E S
)
��S T
.
��T U
	Unprotect
��U ^
(
��^ _
	userToken
��_ h
.
��h i
Value
��i n
)
��n o
;
��o p
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #

tokenValue
��# -
)
��- .
;
��. /
}
�� 	
public
�� 
Task
�� 
RemoveTokenAsync
�� $
(
��$ %
IUser
��% *
user
��+ /
,
��/ 0
string
��1 7
loginProvider
��8 E
,
��E F
string
��G M
name
��N R
,
��R S
CancellationToken
��T e
cancellationToken
��f w
=
��x y
default��z �
(��� �!
CancellationToken��� �
)��� �
)��� �
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
loginProvider
��% 2
)
��2 3
)
��3 4
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, Y
,
��Y Z
nameof
��[ a
(
��a b
loginProvider
��b o
)
��o p
)
��p q
;
��q r
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
name
��% )
)
��) *
)
��* +
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, O
,
��O P
nameof
��Q W
(
��W X
name
��X \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
var
�� 
	userToken
�� 
=
�� 
GetUserToken
�� (
(
��( )
user
��) -
,
��- .
loginProvider
��/ <
,
��< =
name
��> B
)
��B C
;
��C D
if
�� 
(
�� 
	userToken
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 

UserTokens
�� '
.
��' (
Remove
��( .
(
��. /
	userToken
��/ 8
)
��8 9
;
��9 :
}
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
Task
�� 
SetTokenAsync
�� !
(
��! "
IUser
��" '
user
��( ,
,
��, -
string
��. 4
loginProvider
��5 B
,
��B C
string
��D J
name
��K O
,
��O P
string
��Q W
value
��X ]
,
��] ^
CancellationToken
��_ p 
cancellationToken��q �
=��� �
default��� �
(��� �!
CancellationToken��� �
)��� �
)��� �
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
user
��7 ;
)
��; <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
loginProvider
��% 2
)
��2 3
)
��3 4
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, Y
,
��Y Z
nameof
��[ a
(
��a b
loginProvider
��b o
)
��o p
)
��p q
;
��q r
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
name
��% )
)
��) *
)
��* +
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, O
,
��O P
nameof
��Q W
(
��W X
name
��X \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
value
��% *
)
��* +
)
��+ ,
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, P
,
��P Q
nameof
��R X
(
��X Y
value
��Y ^
)
��^ _
)
��_ `
;
��` a
}
�� 
var
�� 
	userToken
�� 
=
�� 
GetUserToken
�� (
(
��( )
user
��) -
,
��- .
loginProvider
��/ <
,
��< =
name
��> B
)
��B C
;
��C D
if
�� 
(
�� 
	userToken
�� 
==
�� 
null
�� !
)
��! "
{
�� 
	userToken
�� 
=
�� 
new
�� 
	UserToken
��  )
{
�� 
LoginProvider
�� !
=
��" #
loginProvider
��$ 1
,
��1 2
Name
�� 
=
�� 
name
�� 
}
�� 
;
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
�� 

UserTokens
�� '
.
��' (
Add
��( +
(
��+ ,
	userToken
��, 5
)
��5 6
;
��6 7
}
�� 
	userToken
�� 
.
�� 
Value
�� 
=
�� %
_dataProtectionProvider
�� 5
.
��5 6
CreateProtector
��6 E
(
��E F
TokenProtector
��F T
)
��T U
.
��U V
Protect
��V ]
(
��] ^
value
��^ c
)
��c d
;
��d e
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
private
�� 
static
�� 
	UserToken
��  
GetUserToken
��! -
(
��- .
IUser
��. 3
user
��4 8
,
��8 9
string
��: @
loginProvider
��A N
,
��N O
string
��P V
name
��W [
)
��[ \
{
�� 	
return
�� 
(
�� 
(
�� 
User
�� 
)
�� 
user
�� 
)
�� 
.
��  

UserTokens
��  *
.
��* +
FirstOrDefault
��+ 9
(
��9 :
ut
��: <
=>
��= ?
ut
��@ B
.
��B C
LoginProvider
��C P
==
��Q S
loginProvider
��T a
&&
��b d
ut
��@ B
.
��B C
Name
��C G
==
��H J
name
��K O
)
��O P
;
��P Q
}
�� 	
}
�� 
}�� 