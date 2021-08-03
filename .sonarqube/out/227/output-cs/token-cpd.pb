˛
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\CommonPermissions.cs
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
$str	g É
,
É Ñ
new
Ö à
[
à â
]
â ä
{
ã å
ManageUsers
ç ò
}
ô ö
)
ö õ
;
õ ú
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
} Õ
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Indexes\UserByClaimIndex.cs
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
} 
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Indexes\UserByLoginInfoIndex.cs
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
} ›
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Indexes\UserByRoleNameIndex.cs
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
}11 ó
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Indexes\UserIndex.cs
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
}   ˇ
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
} ƒ
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Models\UserClaim.cs
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
} ¿
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Models\UserToken.cs
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
}		 ß
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Razor\UserRazorHelperExtensions.cs
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
}## §
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Services\DefaultUserClaimsPrincipalFactory.cs
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
Boolean	%%| É
)
%%É Ñ
)
%%Ñ Ö
;
%%Ö Ü
}&& 
return(( 
claims(( 
;(( 
})) 	
}** 
}++ †
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Services\DefaultUserClaimsPrincipalProviderFactory.cs
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
}(( Çµ
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Services\UserService.cs
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
string	ss{ Å
>
ssÅ Ç
reportError
ssÉ é
)
ssé è
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
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
	principal
ÅÅ 
==
ÅÅ 
null
ÅÅ !
)
ÅÅ! "
{
ÇÇ 
return
ÉÉ 
Task
ÉÉ 
.
ÉÉ 

FromResult
ÉÉ &
<
ÉÉ& '
IUser
ÉÉ' ,
>
ÉÉ, -
(
ÉÉ- .
null
ÉÉ. 2
)
ÉÉ2 3
;
ÉÉ3 4
}
ÑÑ 
return
ÜÜ 
_userManager
ÜÜ 
.
ÜÜ  
GetUserAsync
ÜÜ  ,
(
ÜÜ, -
	principal
ÜÜ- 6
)
ÜÜ6 7
;
ÜÜ7 8
}
áá 	
public
ââ 
async
ââ 
Task
ââ 
<
ââ 
IUser
ââ 
>
ââ  (
GetForgotPasswordUserAsync
ââ! ;
(
ââ; <
string
ââ< B
userIdentifier
ââC Q
)
ââQ R
{
ää 	
if
ãã 
(
ãã 
string
ãã 
.
ãã  
IsNullOrWhiteSpace
ãã )
(
ãã) *
userIdentifier
ãã* 8
)
ãã8 9
)
ãã9 :
{
åå 
return
çç 
await
çç 
Task
çç !
.
çç! "

FromResult
çç" ,
<
çç, -
IUser
çç- 2
>
çç2 3
(
çç3 4
null
çç4 8
)
çç8 9
;
çç9 :
}
éé 
var
êê 
user
êê 
=
êê 
await
êê 
_userManager
êê )
.
êê) *
FindByEmailAsync
êê* :
(
êê: ;
userIdentifier
êê; I
)
êêI J
as
êêK M
User
êêN R
;
êêR S
if
íí 
(
íí 
user
íí 
==
íí 
null
íí 
)
íí 
{
ìì 
return
îî 
await
îî 
Task
îî !
.
îî! "

FromResult
îî" ,
<
îî, -
IUser
îî- 2
>
îî2 3
(
îî3 4
null
îî4 8
)
îî8 9
;
îî9 :
}
ïï 
user
óó 
.
óó 

ResetToken
óó 
=
óó 
await
óó #
_userManager
óó$ 0
.
óó0 1-
GeneratePasswordResetTokenAsync
óó1 P
(
óóP Q
user
óóQ U
)
óóU V
;
óóV W
return
ôô 
user
ôô 
;
ôô 
}
öö 	
public
úú 
async
úú 
Task
úú 
<
úú 
bool
úú 
>
úú  
ResetPasswordAsync
úú  2
(
úú2 3
string
úú3 9
userIdentifier
úú: H
,
úúH I
string
úúJ P

resetToken
úúQ [
,
úú[ \
string
úú] c
newPassword
úúd o
,
úúo p
Action
úúq w
<
úúw x
string
úúx ~
,
úú~ 
stringúúÄ Ü
>úúÜ á
reportErrorúúà ì
)úúì î
{
ùù 	
var
ûû 
result
ûû 
=
ûû 
true
ûû 
;
ûû 
if
üü 
(
üü 
string
üü 
.
üü  
IsNullOrWhiteSpace
üü )
(
üü) *
userIdentifier
üü* 8
)
üü8 9
)
üü9 :
{
†† 
reportError
°° 
(
°° 
$str
°° &
,
°°& '
S
°°( )
[
°°) *
$str
°°* M
]
°°M N
)
°°N O
;
°°O P
result
¢¢ 
=
¢¢ 
false
¢¢ 
;
¢¢ 
}
££ 
if
•• 
(
•• 
string
•• 
.
••  
IsNullOrWhiteSpace
•• )
(
••) *
newPassword
••* 5
)
••5 6
)
••6 7
{
¶¶ 
reportError
ßß 
(
ßß 
$str
ßß &
,
ßß& '
S
ßß( )
[
ßß) *
$str
ßß* C
]
ßßC D
)
ßßD E
;
ßßE F
result
®® 
=
®® 
false
®® 
;
®® 
}
©© 
if
´´ 
(
´´ 
string
´´ 
.
´´  
IsNullOrWhiteSpace
´´ )
(
´´) *

resetToken
´´* 4
)
´´4 5
)
´´5 6
{
¨¨ 
reportError
≠≠ 
(
≠≠ 
$str
≠≠ #
,
≠≠# $
S
≠≠% &
[
≠≠& '
$str
≠≠' =
]
≠≠= >
)
≠≠> ?
;
≠≠? @
result
ÆÆ 
=
ÆÆ 
false
ÆÆ 
;
ÆÆ 
}
ØØ 
if
±± 
(
±± 
!
±± 
result
±± 
)
±± 
{
≤≤ 
return
≥≥ 
result
≥≥ 
;
≥≥ 
}
¥¥ 
var
∂∂ 
user
∂∂ 
=
∂∂ 
await
∂∂ 
_userManager
∂∂ )
.
∂∂) *
FindByEmailAsync
∂∂* :
(
∂∂: ;
userIdentifier
∂∂; I
)
∂∂I J
as
∂∂K M
User
∂∂N R
;
∂∂R S
if
∏∏ 
(
∏∏ 
user
∏∏ 
==
∏∏ 
null
∏∏ 
)
∏∏ 
{
ππ 
return
∫∫ 
false
∫∫ 
;
∫∫ 
}
ªª 
var
ΩΩ 
identityResult
ΩΩ 
=
ΩΩ  
await
ΩΩ! &
_userManager
ΩΩ' 3
.
ΩΩ3 4 
ResetPasswordAsync
ΩΩ4 F
(
ΩΩF G
user
ΩΩG K
,
ΩΩK L

resetToken
ΩΩM W
,
ΩΩW X
newPassword
ΩΩY d
)
ΩΩd e
;
ΩΩe f
if
øø 
(
øø 
!
øø 
identityResult
øø 
.
øø  
	Succeeded
øø  )
)
øø) *
{
¿¿ %
ProcessValidationErrors
¡¡ '
(
¡¡' (
identityResult
¡¡( 6
.
¡¡6 7
Errors
¡¡7 =
,
¡¡= >
user
¡¡? C
,
¡¡C D
reportError
¡¡E P
)
¡¡P Q
;
¡¡Q R
}
¬¬ 
return
ƒƒ 
identityResult
ƒƒ !
.
ƒƒ! "
	Succeeded
ƒƒ" +
;
ƒƒ+ ,
}
≈≈ 	
public
«« 
Task
«« 
<
«« 
ClaimsPrincipal
«« #
>
««# $"
CreatePrincipalAsync
««% 9
(
««9 :
IUser
««: ?
user
««@ D
)
««D E
{
»» 	
if
…… 
(
…… 
user
…… 
==
…… 
null
…… 
)
…… 
{
   
return
ÀÀ 
Task
ÀÀ 
.
ÀÀ 

FromResult
ÀÀ &
<
ÀÀ& '
ClaimsPrincipal
ÀÀ' 6
>
ÀÀ6 7
(
ÀÀ7 8
null
ÀÀ8 <
)
ÀÀ< =
;
ÀÀ= >
}
ÃÃ 
return
ŒŒ 
_signInManager
ŒŒ !
.
ŒŒ! "&
CreateUserPrincipalAsync
ŒŒ" :
(
ŒŒ: ;
user
ŒŒ; ?
)
ŒŒ? @
;
ŒŒ@ A
}
œœ 	
public
—— 
Task
—— 
<
—— 
IUser
—— 
>
—— 
GetUserAsync
—— '
(
——' (
string
——( .
userName
——/ 7
)
——7 8
=>
——9 ;
_userManager
——< H
.
——H I
FindByNameAsync
——I X
(
——X Y
userName
——Y a
)
——a b
;
——b c
public
”” 
Task
”” 
<
”” 
IUser
”” 
>
”” $
GetUserByUniqueIdAsync
”” 1
(
””1 2
string
””2 8
userIdentifier
””9 G
)
””G H
=>
””I K
_userManager
””L X
.
””X Y
FindByIdAsync
””Y f
(
””f g
userIdentifier
””g u
)
””u v
;
””v w
public
’’ 
void
’’ %
ProcessValidationErrors
’’ +
(
’’+ ,
IEnumerable
’’, 7
<
’’7 8
IdentityError
’’8 E
>
’’E F
errors
’’G M
,
’’M N
User
’’O S
user
’’T X
,
’’X Y
Action
’’Z `
<
’’` a
string
’’a g
,
’’g h
string
’’i o
>
’’o p
reportError
’’q |
)
’’| }
{
÷÷ 	
foreach
◊◊ 
(
◊◊ 
var
◊◊ 
error
◊◊ 
in
◊◊ !
errors
◊◊" (
)
◊◊( )
{
ÿÿ 
switch
ŸŸ 
(
ŸŸ 
error
ŸŸ 
.
ŸŸ 
Code
ŸŸ "
)
ŸŸ" #
{
⁄⁄ 
case
‹‹ 
$str
‹‹ 0
:
‹‹0 1
reportError
›› #
(
››# $
$str
››$ .
,
››. /
S
››0 1
[
››1 2
$str
››2 o
]
››o p
)
››p q
;
››q r
break
ﬁﬁ 
;
ﬁﬁ 
case
ﬂﬂ 
$str
ﬂﬂ 0
:
ﬂﬂ0 1
reportError
‡‡ #
(
‡‡# $
$str
‡‡$ .
,
‡‡. /
S
‡‡0 1
[
‡‡1 2
$str
‡‡2 s
]
‡‡s t
)
‡‡t u
;
‡‡u v
break
·· 
;
·· 
case
‚‚ 
$str
‚‚ 0
:
‚‚0 1
reportError
„„ #
(
„„# $
$str
„„$ .
,
„„. /
S
„„0 1
[
„„1 2
$str
„„2 s
]
„„s t
)
„„t u
;
„„u v
break
‰‰ 
;
‰‰ 
case
ÂÂ 
$str
ÂÂ :
:
ÂÂ: ;
reportError
ÊÊ #
(
ÊÊ# $
$str
ÊÊ$ .
,
ÊÊ. /
S
ÊÊ0 1
[
ÊÊ1 2
$str
ÊÊ2 s
]
ÊÊs t
)
ÊÊt u
;
ÊÊu v
break
ÁÁ 
;
ÁÁ 
case
ËË 
$str
ËË +
:
ËË+ ,
reportError
ÈÈ #
(
ÈÈ# $
$str
ÈÈ$ .
,
ÈÈ. /
S
ÈÈ0 1
[
ÈÈ1 2
$str
ÈÈ2 ^
,
ÈÈ^ _
_identityOptions
ÈÈ` p
.
ÈÈp q
Value
ÈÈq v
.
ÈÈv w
Password
ÈÈw 
.ÈÈ Ä
RequiredLengthÈÈÄ é
]ÈÈé è
)ÈÈè ê
;ÈÈê ë
break
ÍÍ 
;
ÍÍ 
case
ÎÎ 
$str
ÎÎ 6
:
ÎÎ6 7
reportError
ÏÏ #
(
ÏÏ# $
$str
ÏÏ$ .
,
ÏÏ. /
S
ÏÏ0 1
[
ÏÏ1 2
$str
ÏÏ2 j
,
ÏÏj k
_identityOptions
ÏÏl |
.
ÏÏ| }
ValueÏÏ} Ç
.ÏÏÇ É
PasswordÏÏÉ ã
.ÏÏã å#
RequiredUniqueCharsÏÏå ü
]ÏÏü †
)ÏÏ† °
;ÏÏ° ¢
break
ÌÌ 
;
ÌÌ 
case
 
$str
 +
:
+ ,
reportError
ÒÒ #
(
ÒÒ# $
$str
ÒÒ$ 5
,
ÒÒ5 6
S
ÒÒ7 8
[
ÒÒ8 9
$str
ÒÒ9 N
]
ÒÒN O
)
ÒÒO P
;
ÒÒP Q
break
ÚÚ 
;
ÚÚ 
case
ıı 
$str
ıı *
:
ıı* +
reportError
ˆˆ #
(
ˆˆ# $
$str
ˆˆ$ .
,
ˆˆ. /
S
ˆˆ0 1
[
ˆˆ1 2
$str
ˆˆ2 s
,
ˆˆs t
user
ˆˆu y
.
ˆˆy z
UserNameˆˆz Ç
]ˆˆÇ É
)ˆˆÉ Ñ
;ˆˆÑ Ö
break
˜˜ 
;
˜˜ 
case
¯¯ 
$str
¯¯ ,
:
¯¯, -
reportError
˘˘ #
(
˘˘# $
$str
˘˘$ .
,
˘˘. /
S
˘˘0 1
[
˘˘1 2
$str
˘˘2 T
,
˘˘T U
user
˘˘V Z
.
˘˘Z [
UserName
˘˘[ c
]
˘˘c d
)
˘˘d e
;
˘˘e f
break
˙˙ 
;
˙˙ 
case
˝˝ 
$str
˝˝ )
:
˝˝) *
reportError
˛˛ #
(
˛˛# $
$str
˛˛$ +
,
˛˛+ ,
S
˛˛- .
[
˛˛. /
$str
˛˛/ M
,
˛˛M N
user
˛˛O S
.
˛˛S T
Email
˛˛T Y
]
˛˛Y Z
)
˛˛Z [
;
˛˛[ \
break
ˇˇ 
;
ˇˇ 
case
ÄÄ 
$str
ÄÄ '
:
ÄÄ' (
reportError
ÅÅ #
(
ÅÅ# $
$str
ÅÅ$ +
,
ÅÅ+ ,
S
ÅÅ- .
[
ÅÅ. /
$str
ÅÅ/ H
,
ÅÅH I
user
ÅÅJ N
.
ÅÅN O
Email
ÅÅO T
]
ÅÅT U
)
ÅÅU V
;
ÅÅV W
break
ÇÇ 
;
ÇÇ 
default
ÑÑ 
:
ÑÑ 
reportError
ÖÖ #
(
ÖÖ# $
string
ÖÖ$ *
.
ÖÖ* +
Empty
ÖÖ+ 0
,
ÖÖ0 1
S
ÖÖ2 3
[
ÖÖ3 4
$str
ÖÖ4 N
,
ÖÖN O
error
ÖÖP U
.
ÖÖU V
Code
ÖÖV Z
]
ÖÖZ [
)
ÖÖ[ \
;
ÖÖ\ ]
break
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 
}
ââ 	
}
ää 
}ãã †Ñ
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Core\Services\UserStore.cs
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
CancellationToken	BBp Å
)
BBÅ Ç
)
BBÇ É
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
CancellationToken	wwp Å
)
wwÅ Ç
)
wwÇ É
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
ÄÄ 
{
ÅÅ 
await
ÇÇ 
_session
ÇÇ 
.
ÇÇ 
CommitAsync
ÇÇ *
(
ÇÇ* +
)
ÇÇ+ ,
;
ÇÇ, -
var
ÑÑ 
context
ÑÑ 
=
ÑÑ 
new
ÑÑ !
UserContext
ÑÑ" -
(
ÑÑ- .
user
ÑÑ. 2
)
ÑÑ2 3
;
ÑÑ3 4
await
ÖÖ 
Handlers
ÖÖ 
.
ÖÖ 
InvokeAsync
ÖÖ *
(
ÖÖ* +
(
ÖÖ+ ,
handler
ÖÖ, 3
,
ÖÖ3 4
context
ÖÖ5 <
)
ÖÖ< =
=>
ÖÖ> @
handler
ÖÖA H
.
ÖÖH I
DeletedAsync
ÖÖI U
(
ÖÖU V
context
ÖÖV ]
)
ÖÖ] ^
,
ÖÖ^ _
context
ÖÖ` g
,
ÖÖg h
_logger
ÖÖi p
)
ÖÖp q
;
ÖÖq r
}
ÜÜ 
catch
áá 
{
àà 
return
ââ 
IdentityResult
ââ %
.
ââ% &
Failed
ââ& ,
(
ââ, -
)
ââ- .
;
ââ. /
}
ää 
return
åå 
IdentityResult
åå !
.
åå! "
Success
åå" )
;
åå) *
}
çç 	
public
èè 
async
èè 
Task
èè 
<
èè 
IUser
èè 
>
èè  
FindByIdAsync
èè! .
(
èè. /
string
èè/ 5
userId
èè6 <
,
èè< =
CancellationToken
èè> O
cancellationToken
èèP a
=
èèb c
default
èèd k
(
èèk l
CancellationToken
èèl }
)
èè} ~
)
èè~ 
{
êê 	
return
ëë 
await
ëë 
_session
ëë !
.
ëë! "
Query
ëë" '
<
ëë' (
User
ëë( ,
,
ëë, -
	UserIndex
ëë. 7
>
ëë7 8
(
ëë8 9
u
ëë9 :
=>
ëë; =
u
ëë> ?
.
ëë? @
UserId
ëë@ F
==
ëëG I
userId
ëëJ P
)
ëëP Q
.
ëëQ R!
FirstOrDefaultAsync
ëëR e
(
ëëe f
)
ëëf g
;
ëëg h
}
íí 	
public
îî 
async
îî 
Task
îî 
<
îî 
IUser
îî 
>
îî  
FindByNameAsync
îî! 0
(
îî0 1
string
îî1 7 
normalizedUserName
îî8 J
,
îîJ K
CancellationToken
îîL ]
cancellationToken
îî^ o
=
îîp q
default
îîr y
(
îîy z 
CancellationTokenîîz ã
)îîã å
)îîå ç
{
ïï 	
return
ññ 
await
ññ 
_session
ññ !
.
ññ! "
Query
ññ" '
<
ññ' (
User
ññ( ,
,
ññ, -
	UserIndex
ññ. 7
>
ññ7 8
(
ññ8 9
u
ññ9 :
=>
ññ; =
u
ññ> ?
.
ññ? @ 
NormalizedUserName
ññ@ R
==
ññS U 
normalizedUserName
ññV h
)
ññh i
.
ññi j!
FirstOrDefaultAsync
ññj }
(
ññ} ~
)
ññ~ 
;ññ Ä
}
óó 	
public
ôô 
Task
ôô 
<
ôô 
string
ôô 
>
ôô (
GetNormalizedUserNameAsync
ôô 6
(
ôô6 7
IUser
ôô7 <
user
ôô= A
,
ôôA B
CancellationToken
ôôC T
cancellationToken
ôôU f
=
ôôg h
default
ôôi p
(
ôôp q 
CancellationTokenôôq Ç
)ôôÇ É
)ôôÉ Ñ
{
öö 	
if
õõ 
(
õõ 
user
õõ 
==
õõ 
null
õõ 
)
õõ 
{
úú 
throw
ùù 
new
ùù #
ArgumentNullException
ùù /
(
ùù/ 0
nameof
ùù0 6
(
ùù6 7
user
ùù7 ;
)
ùù; <
)
ùù< =
;
ùù= >
}
ûû 
return
†† 
Task
†† 
.
†† 

FromResult
†† "
(
††" #
(
††# $
(
††$ %
User
††% )
)
††) *
user
††* .
)
††. /
.
††/ 0 
NormalizedUserName
††0 B
)
††B C
;
††C D
}
°° 	
public
££ 
Task
££ 
<
££ 
string
££ 
>
££ 
GetUserIdAsync
££ *
(
££* +
IUser
££+ 0
user
££1 5
,
££5 6
CancellationToken
££7 H
cancellationToken
££I Z
=
££[ \
default
££] d
(
££d e
CancellationToken
££e v
)
££v w
)
££w x
{
§§ 	
if
•• 
(
•• 
user
•• 
==
•• 
null
•• 
)
•• 
{
¶¶ 
throw
ßß 
new
ßß #
ArgumentNullException
ßß /
(
ßß/ 0
nameof
ßß0 6
(
ßß6 7
user
ßß7 ;
)
ßß; <
)
ßß< =
;
ßß= >
}
®® 
return
™™ 
Task
™™ 
.
™™ 

FromResult
™™ "
(
™™" #
(
™™# $
(
™™$ %
User
™™% )
)
™™) *
user
™™* .
)
™™. /
.
™™/ 0
UserId
™™0 6
)
™™6 7
;
™™7 8
}
´´ 	
public
≠≠ 
Task
≠≠ 
<
≠≠ 
string
≠≠ 
>
≠≠ 
GetUserNameAsync
≠≠ ,
(
≠≠, -
IUser
≠≠- 2
user
≠≠3 7
,
≠≠7 8
CancellationToken
≠≠9 J
cancellationToken
≠≠K \
=
≠≠] ^
default
≠≠_ f
(
≠≠f g
CancellationToken
≠≠g x
)
≠≠x y
)
≠≠y z
{
ÆÆ 	
if
ØØ 
(
ØØ 
user
ØØ 
==
ØØ 
null
ØØ 
)
ØØ 
{
∞∞ 
throw
±± 
new
±± #
ArgumentNullException
±± /
(
±±/ 0
nameof
±±0 6
(
±±6 7
user
±±7 ;
)
±±; <
)
±±< =
;
±±= >
}
≤≤ 
return
¥¥ 
Task
¥¥ 
.
¥¥ 

FromResult
¥¥ "
(
¥¥" #
(
¥¥# $
(
¥¥$ %
User
¥¥% )
)
¥¥) *
user
¥¥* .
)
¥¥. /
.
¥¥/ 0
UserName
¥¥0 8
)
¥¥8 9
;
¥¥9 :
}
µµ 	
public
∑∑ 
Task
∑∑ (
SetNormalizedUserNameAsync
∑∑ .
(
∑∑. /
IUser
∑∑/ 4
user
∑∑5 9
,
∑∑9 :
string
∑∑; A
normalizedName
∑∑B P
,
∑∑P Q
CancellationToken
∑∑R c
cancellationToken
∑∑d u
=
∑∑v w
default
∑∑x 
(∑∑ Ä!
CancellationToken∑∑Ä ë
)∑∑ë í
)∑∑í ì
{
∏∏ 	
if
ππ 
(
ππ 
user
ππ 
==
ππ 
null
ππ 
)
ππ 
{
∫∫ 
throw
ªª 
new
ªª #
ArgumentNullException
ªª /
(
ªª/ 0
nameof
ªª0 6
(
ªª6 7
user
ªª7 ;
)
ªª; <
)
ªª< =
;
ªª= >
}
ºº 
(
ææ 
(
ææ 
User
ææ 
)
ææ 
user
ææ 
)
ææ 
.
ææ  
NormalizedUserName
ææ +
=
ææ, -
normalizedName
ææ. <
;
ææ< =
return
¿¿ 
Task
¿¿ 
.
¿¿ 
CompletedTask
¿¿ %
;
¿¿% &
}
¡¡ 	
public
√√ 
Task
√√ 
SetUserNameAsync
√√ $
(
√√$ %
IUser
√√% *
user
√√+ /
,
√√/ 0
string
√√1 7
userName
√√8 @
,
√√@ A
CancellationToken
√√B S
cancellationToken
√√T e
=
√√f g
default
√√h o
(
√√o p 
CancellationToken√√p Å
)√√Å Ç
)√√Ç É
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
user
≈≈ 
==
≈≈ 
null
≈≈ 
)
≈≈ 
{
∆∆ 
throw
«« 
new
«« #
ArgumentNullException
«« /
(
««/ 0
nameof
««0 6
(
««6 7
user
««7 ;
)
««; <
)
««< =
;
««= >
}
»» 
(
   
(
   
User
   
)
   
user
   
)
   
.
   
UserName
   !
=
  " #
userName
  $ ,
;
  , -
return
ÃÃ 
Task
ÃÃ 
.
ÃÃ 
CompletedTask
ÃÃ %
;
ÃÃ% &
}
ÕÕ 	
public
œœ 
async
œœ 
Task
œœ 
<
œœ 
IdentityResult
œœ (
>
œœ( )
UpdateAsync
œœ* 5
(
œœ5 6
IUser
œœ6 ;
user
œœ< @
,
œœ@ A
CancellationToken
œœB S
cancellationToken
œœT e
=
œœf g
default
œœh o
(
œœo p 
CancellationTokenœœp Å
)œœÅ Ç
)œœÇ É
{
–– 	
if
—— 
(
—— 
user
—— 
==
—— 
null
—— 
)
—— 
{
““ 
throw
”” 
new
”” #
ArgumentNullException
”” /
(
””/ 0
nameof
””0 6
(
””6 7
user
””7 ;
)
””; <
)
””< =
;
””= >
}
‘‘ 
_session
÷÷ 
.
÷÷ 
Save
÷÷ 
(
÷÷ 
user
÷÷ 
)
÷÷ 
;
÷÷  
var
ÿÿ 
context
ÿÿ 
=
ÿÿ 
new
ÿÿ 
UserContext
ÿÿ )
(
ÿÿ) *
user
ÿÿ* .
)
ÿÿ. /
;
ÿÿ/ 0
await
ŸŸ 
Handlers
ŸŸ 
.
ŸŸ 
InvokeAsync
ŸŸ &
(
ŸŸ& '
(
ŸŸ' (
handler
ŸŸ( /
,
ŸŸ/ 0
context
ŸŸ1 8
)
ŸŸ8 9
=>
ŸŸ: <
handler
ŸŸ= D
.
ŸŸD E
UpdatedAsync
ŸŸE Q
(
ŸŸQ R
context
ŸŸR Y
)
ŸŸY Z
,
ŸŸZ [
context
ŸŸ\ c
,
ŸŸc d
_logger
ŸŸe l
)
ŸŸl m
;
ŸŸm n
return
€€ 
IdentityResult
€€ !
.
€€! "
Success
€€" )
;
€€) *
}
‹‹ 	
public
‚‚ 
Task
‚‚ 
<
‚‚ 
string
‚‚ 
>
‚‚ "
GetPasswordHashAsync
‚‚ 0
(
‚‚0 1
IUser
‚‚1 6
user
‚‚7 ;
,
‚‚; <
CancellationToken
‚‚= N
cancellationToken
‚‚O `
=
‚‚a b
default
‚‚c j
(
‚‚j k
CancellationToken
‚‚k |
)
‚‚| }
)
‚‚} ~
{
„„ 	
if
‰‰ 
(
‰‰ 
user
‰‰ 
==
‰‰ 
null
‰‰ 
)
‰‰ 
{
ÂÂ 
throw
ÊÊ 
new
ÊÊ #
ArgumentNullException
ÊÊ /
(
ÊÊ/ 0
nameof
ÊÊ0 6
(
ÊÊ6 7
user
ÊÊ7 ;
)
ÊÊ; <
)
ÊÊ< =
;
ÊÊ= >
}
ÁÁ 
return
ÈÈ 
Task
ÈÈ 
.
ÈÈ 

FromResult
ÈÈ "
(
ÈÈ" #
(
ÈÈ# $
(
ÈÈ$ %
User
ÈÈ% )
)
ÈÈ) *
user
ÈÈ* .
)
ÈÈ. /
.
ÈÈ/ 0
PasswordHash
ÈÈ0 <
)
ÈÈ< =
;
ÈÈ= >
}
ÍÍ 	
public
ÏÏ 
Task
ÏÏ "
SetPasswordHashAsync
ÏÏ (
(
ÏÏ( )
IUser
ÏÏ) .
user
ÏÏ/ 3
,
ÏÏ3 4
string
ÏÏ5 ;
passwordHash
ÏÏ< H
,
ÏÏH I
CancellationToken
ÏÏJ [
cancellationToken
ÏÏ\ m
=
ÏÏn o
default
ÏÏp w
(
ÏÏw x 
CancellationTokenÏÏx â
)ÏÏâ ä
)ÏÏä ã
{
ÌÌ 	
if
ÓÓ 
(
ÓÓ 
user
ÓÓ 
==
ÓÓ 
null
ÓÓ 
)
ÓÓ 
{
ÔÔ 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
user
7 ;
)
; <
)
< =
;
= >
}
ÒÒ 
(
ÛÛ 
(
ÛÛ 
User
ÛÛ 
)
ÛÛ 
user
ÛÛ 
)
ÛÛ 
.
ÛÛ 
PasswordHash
ÛÛ %
=
ÛÛ& '
passwordHash
ÛÛ( 4
;
ÛÛ4 5
return
ıı 
Task
ıı 
.
ıı 
CompletedTask
ıı %
;
ıı% &
}
ˆˆ 	
public
¯¯ 
Task
¯¯ 
<
¯¯ 
bool
¯¯ 
>
¯¯ 
HasPasswordAsync
¯¯ *
(
¯¯* +
IUser
¯¯+ 0
user
¯¯1 5
,
¯¯5 6
CancellationToken
¯¯7 H
cancellationToken
¯¯I Z
=
¯¯[ \
default
¯¯] d
(
¯¯d e
CancellationToken
¯¯e v
)
¯¯v w
)
¯¯w x
{
˘˘ 	
if
˙˙ 
(
˙˙ 
user
˙˙ 
==
˙˙ 
null
˙˙ 
)
˙˙ 
{
˚˚ 
throw
¸¸ 
new
¸¸ #
ArgumentNullException
¸¸ /
(
¸¸/ 0
nameof
¸¸0 6
(
¸¸6 7
user
¸¸7 ;
)
¸¸; <
)
¸¸< =
;
¸¸= >
}
˝˝ 
return
ˇˇ 
Task
ˇˇ 
.
ˇˇ 

FromResult
ˇˇ "
(
ˇˇ" #
(
ˇˇ# $
(
ˇˇ$ %
User
ˇˇ% )
)
ˇˇ) *
user
ˇˇ* .
)
ˇˇ. /
.
ˇˇ/ 0
PasswordHash
ˇˇ0 <
!=
ˇˇ= ?
null
ˇˇ@ D
)
ˇˇD E
;
ˇˇE F
}
ÄÄ 	
public
ÜÜ 
Task
ÜÜ #
SetSecurityStampAsync
ÜÜ )
(
ÜÜ) *
IUser
ÜÜ* /
user
ÜÜ0 4
,
ÜÜ4 5
string
ÜÜ6 <
stamp
ÜÜ= B
,
ÜÜB C
CancellationToken
ÜÜD U
cancellationToken
ÜÜV g
=
ÜÜh i
default
ÜÜj q
(
ÜÜq r 
CancellationTokenÜÜr É
)ÜÜÉ Ñ
)ÜÜÑ Ö
{
áá 	
if
àà 
(
àà 
user
àà 
==
àà 
null
àà 
)
àà 
{
ââ 
throw
ää 
new
ää #
ArgumentNullException
ää /
(
ää/ 0
nameof
ää0 6
(
ää6 7
user
ää7 ;
)
ää; <
)
ää< =
;
ää= >
}
ãã 
(
çç 
(
çç 
User
çç 
)
çç 
user
çç 
)
çç 
.
çç 
SecurityStamp
çç &
=
çç' (
stamp
çç) .
;
çç. /
return
èè 
Task
èè 
.
èè 
CompletedTask
èè %
;
èè% &
}
êê 	
public
íí 
Task
íí 
<
íí 
string
íí 
>
íí #
GetSecurityStampAsync
íí 1
(
íí1 2
IUser
íí2 7
user
íí8 <
,
íí< =
CancellationToken
íí> O
cancellationToken
ííP a
=
ííb c
default
ííd k
(
íík l
CancellationToken
ííl }
)
íí} ~
)
íí~ 
{
ìì 	
if
îî 
(
îî 
user
îî 
==
îî 
null
îî 
)
îî 
{
ïï 
throw
ññ 
new
ññ #
ArgumentNullException
ññ /
(
ññ/ 0
nameof
ññ0 6
(
ññ6 7
user
ññ7 ;
)
ññ; <
)
ññ< =
;
ññ= >
}
óó 
return
ôô 
Task
ôô 
.
ôô 

FromResult
ôô "
(
ôô" #
(
ôô# $
(
ôô$ %
User
ôô% )
)
ôô) *
user
ôô* .
)
ôô. /
.
ôô/ 0
SecurityStamp
ôô0 =
)
ôô= >
;
ôô> ?
}
öö 	
public
†† 
Task
†† 
SetEmailAsync
†† !
(
††! "
IUser
††" '
user
††( ,
,
††, -
string
††. 4
email
††5 :
,
††: ;
CancellationToken
††< M
cancellationToken
††N _
)
††_ `
{
°° 	
if
¢¢ 
(
¢¢ 
user
¢¢ 
==
¢¢ 
null
¢¢ 
)
¢¢ 
{
££ 
throw
§§ 
new
§§ #
ArgumentNullException
§§ /
(
§§/ 0
nameof
§§0 6
(
§§6 7
user
§§7 ;
)
§§; <
)
§§< =
;
§§= >
}
•• 
(
ßß 
(
ßß 
User
ßß 
)
ßß 
user
ßß 
)
ßß 
.
ßß 
Email
ßß 
=
ßß  
email
ßß! &
;
ßß& '
return
©© 
Task
©© 
.
©© 
CompletedTask
©© %
;
©©% &
}
™™ 	
public
¨¨ 
Task
¨¨ 
<
¨¨ 
string
¨¨ 
>
¨¨ 
GetEmailAsync
¨¨ )
(
¨¨) *
IUser
¨¨* /
user
¨¨0 4
,
¨¨4 5
CancellationToken
¨¨6 G
cancellationToken
¨¨H Y
)
¨¨Y Z
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
user
ÆÆ 
==
ÆÆ 
null
ÆÆ 
)
ÆÆ 
{
ØØ 
throw
∞∞ 
new
∞∞ #
ArgumentNullException
∞∞ /
(
∞∞/ 0
nameof
∞∞0 6
(
∞∞6 7
user
∞∞7 ;
)
∞∞; <
)
∞∞< =
;
∞∞= >
}
±± 
return
≥≥ 
Task
≥≥ 
.
≥≥ 

FromResult
≥≥ "
(
≥≥" #
(
≥≥# $
(
≥≥$ %
User
≥≥% )
)
≥≥) *
user
≥≥* .
)
≥≥. /
.
≥≥/ 0
Email
≥≥0 5
)
≥≥5 6
;
≥≥6 7
}
¥¥ 	
public
∂∂ 
Task
∂∂ 
<
∂∂ 
bool
∂∂ 
>
∂∂ $
GetEmailConfirmedAsync
∂∂ 0
(
∂∂0 1
IUser
∂∂1 6
user
∂∂7 ;
,
∂∂; <
CancellationToken
∂∂= N
cancellationToken
∂∂O `
)
∂∂` a
{
∑∑ 	
if
∏∏ 
(
∏∏ 
user
∏∏ 
==
∏∏ 
null
∏∏ 
)
∏∏ 
{
ππ 
throw
∫∫ 
new
∫∫ #
ArgumentNullException
∫∫ /
(
∫∫/ 0
nameof
∫∫0 6
(
∫∫6 7
user
∫∫7 ;
)
∫∫; <
)
∫∫< =
;
∫∫= >
}
ªª 
return
ΩΩ 
Task
ΩΩ 
.
ΩΩ 

FromResult
ΩΩ "
(
ΩΩ" #
(
ΩΩ# $
(
ΩΩ$ %
User
ΩΩ% )
)
ΩΩ) *
user
ΩΩ* .
)
ΩΩ. /
.
ΩΩ/ 0
EmailConfirmed
ΩΩ0 >
)
ΩΩ> ?
;
ΩΩ? @
}
ææ 	
public
¿¿ 
Task
¿¿ $
SetEmailConfirmedAsync
¿¿ *
(
¿¿* +
IUser
¿¿+ 0
user
¿¿1 5
,
¿¿5 6
bool
¿¿7 ;
	confirmed
¿¿< E
,
¿¿E F
CancellationToken
¿¿G X
cancellationToken
¿¿Y j
)
¿¿j k
{
¡¡ 	
if
¬¬ 
(
¬¬ 
user
¬¬ 
==
¬¬ 
null
¬¬ 
)
¬¬ 
{
√√ 
throw
ƒƒ 
new
ƒƒ #
ArgumentNullException
ƒƒ /
(
ƒƒ/ 0
nameof
ƒƒ0 6
(
ƒƒ6 7
user
ƒƒ7 ;
)
ƒƒ; <
)
ƒƒ< =
;
ƒƒ= >
}
≈≈ 
(
«« 
(
«« 
User
«« 
)
«« 
user
«« 
)
«« 
.
«« 
EmailConfirmed
«« '
=
««( )
	confirmed
««* 3
;
««3 4
return
»» 
Task
»» 
.
»» 
CompletedTask
»» %
;
»»% &
}
…… 	
public
ÀÀ 
async
ÀÀ 
Task
ÀÀ 
<
ÀÀ 
IUser
ÀÀ 
>
ÀÀ  
FindByEmailAsync
ÀÀ! 1
(
ÀÀ1 2
string
ÀÀ2 8
normalizedEmail
ÀÀ9 H
,
ÀÀH I
CancellationToken
ÀÀJ [
cancellationToken
ÀÀ\ m
)
ÀÀm n
{
ÃÃ 	
return
ÕÕ 
await
ÕÕ 
_session
ÕÕ !
.
ÕÕ! "
Query
ÕÕ" '
<
ÕÕ' (
User
ÕÕ( ,
,
ÕÕ, -
	UserIndex
ÕÕ. 7
>
ÕÕ7 8
(
ÕÕ8 9
u
ÕÕ9 :
=>
ÕÕ; =
u
ÕÕ> ?
.
ÕÕ? @
NormalizedEmail
ÕÕ@ O
==
ÕÕP R
normalizedEmail
ÕÕS b
)
ÕÕb c
.
ÕÕc d!
FirstOrDefaultAsync
ÕÕd w
(
ÕÕw x
)
ÕÕx y
;
ÕÕy z
}
ŒŒ 	
public
–– 
Task
–– 
<
–– 
string
–– 
>
–– %
GetNormalizedEmailAsync
–– 3
(
––3 4
IUser
––4 9
user
––: >
,
––> ?
CancellationToken
––@ Q
cancellationToken
––R c
)
––c d
{
—— 	
if
““ 
(
““ 
user
““ 
==
““ 
null
““ 
)
““ 
{
”” 
throw
‘‘ 
new
‘‘ #
ArgumentNullException
‘‘ /
(
‘‘/ 0
nameof
‘‘0 6
(
‘‘6 7
user
‘‘7 ;
)
‘‘; <
)
‘‘< =
;
‘‘= >
}
’’ 
return
◊◊ 
Task
◊◊ 
.
◊◊ 

FromResult
◊◊ "
(
◊◊" #
(
◊◊# $
(
◊◊$ %
User
◊◊% )
)
◊◊) *
user
◊◊* .
)
◊◊. /
.
◊◊/ 0
NormalizedEmail
◊◊0 ?
)
◊◊? @
;
◊◊@ A
}
ÿÿ 	
public
⁄⁄ 
Task
⁄⁄ %
SetNormalizedEmailAsync
⁄⁄ +
(
⁄⁄+ ,
IUser
⁄⁄, 1
user
⁄⁄2 6
,
⁄⁄6 7
string
⁄⁄8 >
normalizedEmail
⁄⁄? N
,
⁄⁄N O
CancellationToken
⁄⁄P a
cancellationToken
⁄⁄b s
)
⁄⁄s t
{
€€ 	
if
‹‹ 
(
‹‹ 
user
‹‹ 
==
‹‹ 
null
‹‹ 
)
‹‹ 
{
›› 
throw
ﬁﬁ 
new
ﬁﬁ #
ArgumentNullException
ﬁﬁ /
(
ﬁﬁ/ 0
nameof
ﬁﬁ0 6
(
ﬁﬁ6 7
user
ﬁﬁ7 ;
)
ﬁﬁ; <
)
ﬁﬁ< =
;
ﬁﬁ= >
}
ﬂﬂ 
(
·· 
(
·· 
User
·· 
)
·· 
user
·· 
)
·· 
.
·· 
NormalizedEmail
·· (
=
··) *
normalizedEmail
··+ :
;
··: ;
return
„„ 
Task
„„ 
.
„„ 
CompletedTask
„„ %
;
„„% &
}
‰‰ 	
public
ÍÍ 
async
ÍÍ 
Task
ÍÍ 
AddToRoleAsync
ÍÍ (
(
ÍÍ( )
IUser
ÍÍ) .
user
ÍÍ/ 3
,
ÍÍ3 4
string
ÍÍ5 ; 
normalizedRoleName
ÍÍ< N
,
ÍÍN O
CancellationToken
ÍÍP a
cancellationToken
ÍÍb s
)
ÍÍs t
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ 
user
ÏÏ 
==
ÏÏ 
null
ÏÏ 
)
ÏÏ 
{
ÌÌ 
throw
ÓÓ 
new
ÓÓ #
ArgumentNullException
ÓÓ /
(
ÓÓ/ 0
nameof
ÓÓ0 6
(
ÓÓ6 7
user
ÓÓ7 ;
)
ÓÓ; <
)
ÓÓ< =
;
ÓÓ= >
}
ÔÔ 
var
ÒÒ 
	roleNames
ÒÒ 
=
ÒÒ 
await
ÒÒ !
_roleService
ÒÒ" .
.
ÒÒ. /
GetRoleNamesAsync
ÒÒ/ @
(
ÒÒ@ A
)
ÒÒA B
;
ÒÒB C
var
ÚÚ 
roleName
ÚÚ 
=
ÚÚ 
	roleNames
ÚÚ $
?
ÚÚ$ %
.
ÚÚ% &
FirstOrDefault
ÚÚ& 4
(
ÚÚ4 5
r
ÚÚ5 6
=>
ÚÚ7 9
NormalizeKey
ÚÚ: F
(
ÚÚF G
r
ÚÚG H
)
ÚÚH I
==
ÚÚJ L 
normalizedRoleName
ÚÚM _
)
ÚÚ_ `
;
ÚÚ` a
if
ÙÙ 
(
ÙÙ 
string
ÙÙ 
.
ÙÙ  
IsNullOrWhiteSpace
ÙÙ )
(
ÙÙ) *
roleName
ÙÙ* 2
)
ÙÙ2 3
)
ÙÙ3 4
{
ıı 
throw
ˆˆ 
new
ˆˆ '
InvalidOperationException
ˆˆ 3
(
ˆˆ3 4
$"
ˆˆ4 6
Role 
ˆˆ6 ;
{
ˆˆ; < 
normalizedRoleName
ˆˆ< N
}
ˆˆN O
 does not exist.
ˆˆO _
"
ˆˆ_ `
)
ˆˆ` a
;
ˆˆa b
}
˜˜ 
(
˘˘ 
(
˘˘ 
User
˘˘ 
)
˘˘ 
user
˘˘ 
)
˘˘ 
.
˘˘ 
	RoleNames
˘˘ "
.
˘˘" #
Add
˘˘# &
(
˘˘& '
roleName
˘˘' /
)
˘˘/ 0
;
˘˘0 1
}
˙˙ 	
public
¸¸ 
async
¸¸ 
Task
¸¸ !
RemoveFromRoleAsync
¸¸ -
(
¸¸- .
IUser
¸¸. 3
user
¸¸4 8
,
¸¸8 9
string
¸¸: @ 
normalizedRoleName
¸¸A S
,
¸¸S T
CancellationToken
¸¸U f
cancellationToken
¸¸g x
)
¸¸x y
{
˝˝ 	
if
˛˛ 
(
˛˛ 
user
˛˛ 
==
˛˛ 
null
˛˛ 
)
˛˛ 
{
ˇˇ 
throw
ÄÄ 
new
ÄÄ #
ArgumentNullException
ÄÄ /
(
ÄÄ/ 0
nameof
ÄÄ0 6
(
ÄÄ6 7
user
ÄÄ7 ;
)
ÄÄ; <
)
ÄÄ< =
;
ÄÄ= >
}
ÅÅ 
var
ÉÉ 
	roleNames
ÉÉ 
=
ÉÉ 
await
ÉÉ !
_roleService
ÉÉ" .
.
ÉÉ. /
GetRoleNamesAsync
ÉÉ/ @
(
ÉÉ@ A
)
ÉÉA B
;
ÉÉB C
var
ÑÑ 
roleName
ÑÑ 
=
ÑÑ 
	roleNames
ÑÑ $
?
ÑÑ$ %
.
ÑÑ% &
FirstOrDefault
ÑÑ& 4
(
ÑÑ4 5
r
ÑÑ5 6
=>
ÑÑ7 9
NormalizeKey
ÑÑ: F
(
ÑÑF G
r
ÑÑG H
)
ÑÑH I
==
ÑÑJ L 
normalizedRoleName
ÑÑM _
)
ÑÑ_ `
;
ÑÑ` a
if
ÜÜ 
(
ÜÜ 
string
ÜÜ 
.
ÜÜ  
IsNullOrWhiteSpace
ÜÜ )
(
ÜÜ) *
roleName
ÜÜ* 2
)
ÜÜ2 3
)
ÜÜ3 4
{
áá 
throw
àà 
new
àà '
InvalidOperationException
àà 3
(
àà3 4
$"
àà4 6
Role 
àà6 ;
{
àà; < 
normalizedRoleName
àà< N
}
ààN O
 does not exist.
ààO _
"
àà_ `
)
àà` a
;
ààa b
}
ââ 
(
ãã 
(
ãã 
User
ãã 
)
ãã 
user
ãã 
)
ãã 
.
ãã 
	RoleNames
ãã "
.
ãã" #
Remove
ãã# )
(
ãã) *
roleName
ãã* 2
)
ãã2 3
;
ãã3 4
}
åå 	
public
éé 
Task
éé 
<
éé 
IList
éé 
<
éé 
string
éé  
>
éé  !
>
éé! "
GetRolesAsync
éé# 0
(
éé0 1
IUser
éé1 6
user
éé7 ;
,
éé; <
CancellationToken
éé= N
cancellationToken
ééO `
)
éé` a
{
èè 	
if
êê 
(
êê 
user
êê 
==
êê 
null
êê 
)
êê 
{
ëë 
throw
íí 
new
íí #
ArgumentNullException
íí /
(
íí/ 0
nameof
íí0 6
(
íí6 7
user
íí7 ;
)
íí; <
)
íí< =
;
íí= >
}
ìì 
return
ïï 
Task
ïï 
.
ïï 

FromResult
ïï "
<
ïï" #
IList
ïï# (
<
ïï( )
string
ïï) /
>
ïï/ 0
>
ïï0 1
(
ïï1 2
(
ïï2 3
(
ïï3 4
User
ïï4 8
)
ïï8 9
user
ïï9 =
)
ïï= >
.
ïï> ?
	RoleNames
ïï? H
)
ïïH I
;
ïïI J
}
ññ 	
public
òò 
Task
òò 
<
òò 
bool
òò 
>
òò 
IsInRoleAsync
òò '
(
òò' (
IUser
òò( -
user
òò. 2
,
òò2 3
string
òò4 : 
normalizedRoleName
òò; M
,
òòM N
CancellationToken
òòO `
cancellationToken
òòa r
)
òòr s
{
ôô 	
if
öö 
(
öö 
user
öö 
==
öö 
null
öö 
)
öö 
{
õõ 
throw
úú 
new
úú #
ArgumentNullException
úú /
(
úú/ 0
nameof
úú0 6
(
úú6 7
user
úú7 ;
)
úú; <
)
úú< =
;
úú= >
}
ùù 
if
üü 
(
üü 
string
üü 
.
üü  
IsNullOrWhiteSpace
üü )
(
üü) * 
normalizedRoleName
üü* <
)
üü< =
)
üü= >
{
†† 
throw
°° 
new
°° 
ArgumentException
°° +
(
°°+ ,
$str
°°, L
,
°°L M
nameof
°°N T
(
°°T U 
normalizedRoleName
°°U g
)
°°g h
)
°°h i
;
°°i j
}
¢¢ 
return
§§ 
Task
§§ 
.
§§ 

FromResult
§§ "
(
§§" #
(
§§# $
(
§§$ %
User
§§% )
)
§§) *
user
§§* .
)
§§. /
.
§§/ 0
	RoleNames
§§0 9
.
§§9 :
Contains
§§: B
(
§§B C 
normalizedRoleName
§§C U
,
§§U V
StringComparer
§§W e
.
§§e f
OrdinalIgnoreCase
§§f w
)
§§w x
)
§§x y
;
§§y z
}
•• 	
public
ßß 
async
ßß 
Task
ßß 
<
ßß 
IList
ßß 
<
ßß  
IUser
ßß  %
>
ßß% &
>
ßß& '!
GetUsersInRoleAsync
ßß( ;
(
ßß; <
string
ßß< B 
normalizedRoleName
ßßC U
,
ßßU V
CancellationToken
ßßW h
cancellationToken
ßßi z
)
ßßz {
{
®® 	
if
©© 
(
©© 
string
©© 
.
©© 
IsNullOrEmpty
©© $
(
©©$ % 
normalizedRoleName
©©% 7
)
©©7 8
)
©©8 9
{
™™ 
throw
´´ 
new
´´ #
ArgumentNullException
´´ /
(
´´/ 0
nameof
´´0 6
(
´´6 7 
normalizedRoleName
´´7 I
)
´´I J
)
´´J K
;
´´K L
}
¨¨ 
var
ÆÆ 
users
ÆÆ 
=
ÆÆ 
await
ÆÆ 
_session
ÆÆ &
.
ÆÆ& '
Query
ÆÆ' ,
<
ÆÆ, -
User
ÆÆ- 1
,
ÆÆ1 2!
UserByRoleNameIndex
ÆÆ3 F
>
ÆÆF G
(
ÆÆG H
u
ÆÆH I
=>
ÆÆJ L
u
ÆÆM N
.
ÆÆN O
RoleName
ÆÆO W
==
ÆÆX Z 
normalizedRoleName
ÆÆ[ m
)
ÆÆm n
.
ÆÆn o
	ListAsync
ÆÆo x
(
ÆÆx y
)
ÆÆy z
;
ÆÆz {
return
ØØ 
users
ØØ 
==
ØØ 
null
ØØ  
?
ØØ! "
new
ØØ# &
List
ØØ' +
<
ØØ+ ,
IUser
ØØ, 1
>
ØØ1 2
(
ØØ2 3
)
ØØ3 4
:
ØØ5 6
users
ØØ7 <
.
ØØ< =
ToList
ØØ= C
<
ØØC D
IUser
ØØD I
>
ØØI J
(
ØØJ K
)
ØØK L
;
ØØL M
}
∞∞ 	
public
∂∂ 
Task
∂∂ 
AddLoginAsync
∂∂ !
(
∂∂! "
IUser
∂∂" '
user
∂∂( ,
,
∂∂, -
UserLoginInfo
∂∂. ;
login
∂∂< A
,
∂∂A B
CancellationToken
∂∂C T
cancellationToken
∂∂U f
)
∂∂f g
{
∑∑ 	
if
∏∏ 
(
∏∏ 
user
∏∏ 
==
∏∏ 
null
∏∏ 
)
∏∏ 
{
ππ 
throw
∫∫ 
new
∫∫ #
ArgumentNullException
∫∫ /
(
∫∫/ 0
nameof
∫∫0 6
(
∫∫6 7
user
∫∫7 ;
)
∫∫; <
)
∫∫< =
;
∫∫= >
}
ªª 
if
ΩΩ 
(
ΩΩ 
login
ΩΩ 
==
ΩΩ 
null
ΩΩ 
)
ΩΩ 
{
ææ 
throw
øø 
new
øø #
ArgumentNullException
øø /
(
øø/ 0
nameof
øø0 6
(
øø6 7
login
øø7 <
)
øø< =
)
øø= >
;
øø> ?
}
¿¿ 
if
¬¬ 
(
¬¬ 
(
¬¬ 
(
¬¬ 
User
¬¬ 
)
¬¬ 
user
¬¬ 
)
¬¬ 
.
¬¬ 

LoginInfos
¬¬ '
.
¬¬' (
Any
¬¬( +
(
¬¬+ ,
i
¬¬, -
=>
¬¬. 0
i
¬¬1 2
.
¬¬2 3
LoginProvider
¬¬3 @
==
¬¬A C
login
¬¬D I
.
¬¬I J
LoginProvider
¬¬J W
)
¬¬W X
)
¬¬X Y
throw
√√ 
new
√√ '
InvalidOperationException
√√ 3
(
√√3 4
$"
√√4 6
	Provider 
√√6 ?
{
√√? @
login
√√@ E
.
√√E F
LoginProvider
√√F S
}
√√S T%
 is already linked for 
√√T k
{
√√k l
user
√√l p
.
√√p q
UserName
√√q y
}
√√y z
"
√√z {
)
√√{ |
;
√√| }
(
≈≈ 
(
≈≈ 
User
≈≈ 
)
≈≈ 
user
≈≈ 
)
≈≈ 
.
≈≈ 

LoginInfos
≈≈ #
.
≈≈# $
Add
≈≈$ '
(
≈≈' (
login
≈≈( -
)
≈≈- .
;
≈≈. /
return
«« 
Task
«« 
.
«« 
CompletedTask
«« %
;
««% &
}
»» 	
public
   
async
   
Task
   
<
   
IUser
   
>
    
FindByLoginAsync
  ! 1
(
  1 2
string
  2 8
loginProvider
  9 F
,
  F G
string
  H N
providerKey
  O Z
,
  Z [
CancellationToken
  \ m
cancellationToken
  n 
)   Ä
{
ÀÀ 	
return
ÃÃ 
await
ÃÃ 
_session
ÃÃ !
.
ÃÃ! "
Query
ÃÃ" '
<
ÃÃ' (
User
ÃÃ( ,
,
ÃÃ, -"
UserByLoginInfoIndex
ÃÃ. B
>
ÃÃB C
(
ÃÃC D
u
ÃÃD E
=>
ÃÃF H
u
ÃÃI J
.
ÃÃJ K
LoginProvider
ÃÃK X
==
ÃÃY [
loginProvider
ÃÃ\ i
&&
ÃÃj l
u
ÃÃm n
.
ÃÃn o
ProviderKey
ÃÃo z
==
ÃÃ{ }
providerKeyÃÃ~ â
)ÃÃâ ä
.ÃÃä ã#
FirstOrDefaultAsyncÃÃã û
(ÃÃû ü
)ÃÃü †
;ÃÃ† °
}
ÕÕ 	
public
œœ 
Task
œœ 
<
œœ 
IList
œœ 
<
œœ 
UserLoginInfo
œœ '
>
œœ' (
>
œœ( )
GetLoginsAsync
œœ* 8
(
œœ8 9
IUser
œœ9 >
user
œœ? C
,
œœC D
CancellationToken
œœE V
cancellationToken
œœW h
)
œœh i
{
–– 	
if
—— 
(
—— 
user
—— 
==
—— 
null
—— 
)
—— 
{
““ 
throw
”” 
new
”” #
ArgumentNullException
”” /
(
””/ 0
nameof
””0 6
(
””6 7
user
””7 ;
)
””; <
)
””< =
;
””= >
}
‘‘ 
return
÷÷ 
Task
÷÷ 
.
÷÷ 

FromResult
÷÷ "
<
÷÷" #
IList
÷÷# (
<
÷÷( )
UserLoginInfo
÷÷) 6
>
÷÷6 7
>
÷÷7 8
(
÷÷8 9
(
÷÷9 :
(
÷÷: ;
User
÷÷; ?
)
÷÷? @
user
÷÷@ D
)
÷÷D E
.
÷÷E F

LoginInfos
÷÷F P
)
÷÷P Q
;
÷÷Q R
}
◊◊ 	
public
ŸŸ 
Task
ŸŸ 
RemoveLoginAsync
ŸŸ $
(
ŸŸ$ %
IUser
ŸŸ% *
user
ŸŸ+ /
,
ŸŸ/ 0
string
ŸŸ1 7
loginProvider
ŸŸ8 E
,
ŸŸE F
string
ŸŸG M
providerKey
ŸŸN Y
,
ŸŸY Z
CancellationToken
ŸŸ[ l
cancellationToken
ŸŸm ~
)
ŸŸ~ 
{
⁄⁄ 	
if
€€ 
(
€€ 
user
€€ 
==
€€ 
null
€€ 
)
€€ 
{
‹‹ 
throw
›› 
new
›› #
ArgumentNullException
›› /
(
››/ 0
nameof
››0 6
(
››6 7
user
››7 ;
)
››; <
)
››< =
;
››= >
}
ﬁﬁ 
var
‡‡ 
externalLogins
‡‡ 
=
‡‡  
(
‡‡! "
(
‡‡" #
User
‡‡# '
)
‡‡' (
user
‡‡( ,
)
‡‡, -
.
‡‡- .

LoginInfos
‡‡. 8
;
‡‡8 9
if
·· 
(
·· 
externalLogins
·· 
!=
·· !
null
··" &
)
··& '
{
‚‚ 
var
„„ 
item
„„ 
=
„„ 
externalLogins
„„ )
.
„„) *
FirstOrDefault
„„* 8
(
„„8 9
c
„„9 :
=>
„„; =
c
„„> ?
.
„„? @
LoginProvider
„„@ M
==
„„N P
loginProvider
„„Q ^
&&
„„_ a
c
„„b c
.
„„c d
ProviderKey
„„d o
==
„„p r
providerKey
„„s ~
)
„„~ 
;„„ Ä
if
‰‰ 
(
‰‰ 
item
‰‰ 
!=
‰‰ 
null
‰‰  
)
‰‰  !
{
ÂÂ 
externalLogins
ÊÊ "
.
ÊÊ" #
Remove
ÊÊ# )
(
ÊÊ) *
item
ÊÊ* .
)
ÊÊ. /
;
ÊÊ/ 0
}
ÁÁ 
}
ËË 
return
ÈÈ 
Task
ÈÈ 
.
ÈÈ 
CompletedTask
ÈÈ %
;
ÈÈ% &
}
ÍÍ 	
public
 
Task
 
<
 
IList
 
<
 
Claim
 
>
  
>
  !
GetClaimsAsync
" 0
(
0 1
IUser
1 6
user
7 ;
,
; <
CancellationToken
= N
cancellationToken
O `
)
` a
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
user
ÚÚ 
==
ÚÚ 
null
ÚÚ 
)
ÚÚ 
{
ÛÛ 
throw
ÙÙ 
new
ÙÙ #
ArgumentNullException
ÙÙ /
(
ÙÙ/ 0
nameof
ÙÙ0 6
(
ÙÙ6 7
user
ÙÙ7 ;
)
ÙÙ; <
)
ÙÙ< =
;
ÙÙ= >
}
ıı 
return
˜˜ 
Task
˜˜ 
.
˜˜ 

FromResult
˜˜ "
<
˜˜" #
IList
˜˜# (
<
˜˜( )
Claim
˜˜) .
>
˜˜. /
>
˜˜/ 0
(
˜˜0 1
(
˜˜1 2
(
˜˜2 3
User
˜˜3 7
)
˜˜7 8
user
˜˜8 <
)
˜˜< =
.
˜˜= >

UserClaims
˜˜> H
.
˜˜H I
Select
˜˜I O
(
˜˜O P
x
˜˜P Q
=>
˜˜R T
x
˜˜U V
.
˜˜V W
ToClaim
˜˜W ^
(
˜˜^ _
)
˜˜_ `
)
˜˜` a
.
˜˜a b
ToList
˜˜b h
(
˜˜h i
)
˜˜i j
)
˜˜j k
;
˜˜k l
}
¯¯ 	
public
˙˙ 
Task
˙˙ 
AddClaimsAsync
˙˙ "
(
˙˙" #
IUser
˙˙# (
user
˙˙) -
,
˙˙- .
IEnumerable
˙˙/ :
<
˙˙: ;
Claim
˙˙; @
>
˙˙@ A
claims
˙˙B H
,
˙˙H I
CancellationToken
˙˙J [
cancellationToken
˙˙\ m
)
˙˙m n
{
˚˚ 	
if
¸¸ 
(
¸¸ 
user
¸¸ 
==
¸¸ 
null
¸¸ 
)
¸¸ 
throw
˝˝ 
new
˝˝ #
ArgumentNullException
˝˝ /
(
˝˝/ 0
nameof
˝˝0 6
(
˝˝6 7
user
˝˝7 ;
)
˝˝; <
)
˝˝< =
;
˝˝= >
if
˛˛ 
(
˛˛ 
claims
˛˛ 
==
˛˛ 
null
˛˛ 
)
˛˛ 
throw
ˇˇ 
new
ˇˇ #
ArgumentNullException
ˇˇ /
(
ˇˇ/ 0
nameof
ˇˇ0 6
(
ˇˇ6 7
claims
ˇˇ7 =
)
ˇˇ= >
)
ˇˇ> ?
;
ˇˇ? @
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
claim
ÅÅ 
in
ÅÅ !
claims
ÅÅ" (
)
ÅÅ( )
{
ÇÇ 
(
ÉÉ 
(
ÉÉ 
User
ÉÉ 
)
ÉÉ 
user
ÉÉ 
)
ÉÉ 
.
ÉÉ 

UserClaims
ÉÉ '
.
ÉÉ' (
Add
ÉÉ( +
(
ÉÉ+ ,
new
ÉÉ, /
	UserClaim
ÉÉ0 9
{
ÉÉ: ;
	ClaimType
ÉÉ< E
=
ÉÉF G
claim
ÉÉH M
.
ÉÉM N
Type
ÉÉN R
,
ÉÉR S

ClaimValue
ÉÉT ^
=
ÉÉ_ `
claim
ÉÉa f
.
ÉÉf g
Value
ÉÉg l
}
ÉÉm n
)
ÉÉn o
;
ÉÉo p
}
ÑÑ 
return
ÜÜ 
Task
ÜÜ 
.
ÜÜ 
CompletedTask
ÜÜ %
;
ÜÜ% &
}
áá 	
public
ââ 
Task
ââ 
ReplaceClaimAsync
ââ %
(
ââ% &
IUser
ââ& +
user
ââ, 0
,
ââ0 1
Claim
ââ2 7
claim
ââ8 =
,
ââ= >
Claim
ââ? D
newClaim
ââE M
,
ââM N
CancellationToken
ââO `
cancellationToken
ââa r
)
ââr s
{
ää 	
if
ãã 
(
ãã 
user
ãã 
==
ãã 
null
ãã 
)
ãã 
throw
åå 
new
åå #
ArgumentNullException
åå /
(
åå/ 0
nameof
åå0 6
(
åå6 7
user
åå7 ;
)
åå; <
)
åå< =
;
åå= >
if
çç 
(
çç 
claim
çç 
==
çç 
null
çç 
)
çç 
throw
éé 
new
éé #
ArgumentNullException
éé /
(
éé/ 0
nameof
éé0 6
(
éé6 7
claim
éé7 <
)
éé< =
)
éé= >
;
éé> ?
if
èè 
(
èè 
newClaim
èè 
==
èè 
null
èè  
)
èè  !
throw
êê 
new
êê #
ArgumentNullException
êê /
(
êê/ 0
nameof
êê0 6
(
êê6 7
newClaim
êê7 ?
)
êê? @
)
êê@ A
;
êêA B
foreach
íí 
(
íí 
var
íí 
	userClaim
íí "
in
íí# %
(
íí& '
(
íí' (
User
íí( ,
)
íí, -
user
íí- 1
)
íí1 2
.
íí2 3

UserClaims
íí3 =
.
íí= >
Where
íí> C
(
ííC D
uc
ííD F
=>
ííG I
uc
ííJ L
.
ííL M

ClaimValue
ííM W
==
ííX Z
claim
íí[ `
.
íí` a
Value
íía f
&&
ííg i
uc
ííj l
.
ííl m
	ClaimType
íím v
==
ííw y
claim
ííz 
.íí Ä
TypeííÄ Ñ
)ííÑ Ö
)ííÖ Ü
{
ìì 
	userClaim
îî 
.
îî 

ClaimValue
îî $
=
îî% &
newClaim
îî' /
.
îî/ 0
Value
îî0 5
;
îî5 6
	userClaim
ïï 
.
ïï 
	ClaimType
ïï #
=
ïï$ %
newClaim
ïï& .
.
ïï. /
Type
ïï/ 3
;
ïï3 4
}
ññ 
return
òò 
Task
òò 
.
òò 
CompletedTask
òò %
;
òò% &
}
ôô 	
public
õõ 
Task
õõ 
RemoveClaimsAsync
õõ %
(
õõ% &
IUser
õõ& +
user
õõ, 0
,
õõ0 1
IEnumerable
õõ2 =
<
õõ= >
Claim
õõ> C
>
õõC D
claims
õõE K
,
õõK L
CancellationToken
õõM ^
cancellationToken
õõ_ p
)
õõp q
{
úú 	
if
ùù 
(
ùù 
user
ùù 
==
ùù 
null
ùù 
)
ùù 
throw
ûû 
new
ûû #
ArgumentNullException
ûû /
(
ûû/ 0
nameof
ûû0 6
(
ûû6 7
user
ûû7 ;
)
ûû; <
)
ûû< =
;
ûû= >
if
üü 
(
üü 
claims
üü 
==
üü 
null
üü 
)
üü 
throw
†† 
new
†† #
ArgumentNullException
†† /
(
††/ 0
nameof
††0 6
(
††6 7
claims
††7 =
)
††= >
)
††> ?
;
††? @
foreach
¢¢ 
(
¢¢ 
var
¢¢ 
claim
¢¢ 
in
¢¢ !
claims
¢¢" (
)
¢¢( )
{
££ 
foreach
§§ 
(
§§ 
var
§§ 
	userClaim
§§ &
in
§§' )
(
§§* +
(
§§+ ,
User
§§, 0
)
§§0 1
user
§§1 5
)
§§5 6
.
§§6 7

UserClaims
§§7 A
.
§§A B
Where
§§B G
(
§§G H
uc
§§H J
=>
§§K M
uc
§§N P
.
§§P Q

ClaimValue
§§Q [
==
§§\ ^
claim
§§_ d
.
§§d e
Value
§§e j
&&
§§k m
uc
§§n p
.
§§p q
	ClaimType
§§q z
==
§§{ }
claim§§~ É
.§§É Ñ
Type§§Ñ à
)§§à â
.§§â ä
ToList§§ä ê
(§§ê ë
)§§ë í
)§§í ì
(
•• 
(
•• 
User
•• 
)
•• 
user
•• 
)
••  
.
••  !

UserClaims
••! +
.
••+ ,
Remove
••, 2
(
••2 3
	userClaim
••3 <
)
••< =
;
••= >
}
¶¶ 
return
®® 
Task
®® 
.
®® 
CompletedTask
®® %
;
®®% &
}
©© 	
public
´´ 
async
´´ 
Task
´´ 
<
´´ 
IList
´´ 
<
´´  
IUser
´´  %
>
´´% &
>
´´& '#
GetUsersForClaimAsync
´´( =
(
´´= >
Claim
´´> C
claim
´´D I
,
´´I J
CancellationToken
´´K \
cancellationToken
´´] n
)
´´n o
{
¨¨ 	
if
≠≠ 
(
≠≠ 
claim
≠≠ 
==
≠≠ 
null
≠≠ 
)
≠≠ 
throw
ÆÆ 
new
ÆÆ #
ArgumentNullException
ÆÆ /
(
ÆÆ/ 0
nameof
ÆÆ0 6
(
ÆÆ6 7
claim
ÆÆ7 <
)
ÆÆ< =
)
ÆÆ= >
;
ÆÆ> ?
var
∞∞ 
users
∞∞ 
=
∞∞ 
await
∞∞ 
_session
∞∞ &
.
∞∞& '
Query
∞∞' ,
<
∞∞, -
User
∞∞- 1
,
∞∞1 2
UserByClaimIndex
∞∞3 C
>
∞∞C D
(
∞∞D E
uc
∞∞E G
=>
∞∞H J
uc
∞∞K M
.
∞∞M N
	ClaimType
∞∞N W
==
∞∞X Z
claim
∞∞[ `
.
∞∞` a
Type
∞∞a e
&&
∞∞f h
uc
∞∞i k
.
∞∞k l

ClaimValue
∞∞l v
==
∞∞w y
claim
∞∞z 
.∞∞ Ä
Value∞∞Ä Ö
)∞∞Ö Ü
.∞∞Ü á
	ListAsync∞∞á ê
(∞∞ê ë
)∞∞ë í
;∞∞í ì
return
≤≤ 
users
≤≤ 
.
≤≤ 
Cast
≤≤ 
<
≤≤ 
IUser
≤≤ #
>
≤≤# $
(
≤≤$ %
)
≤≤% &
.
≤≤& '
ToList
≤≤' -
(
≤≤- .
)
≤≤. /
;
≤≤/ 0
}
≥≥ 	
public
∏∏ 
Task
∏∏ 
<
∏∏ 
string
∏∏ 
>
∏∏ 
GetTokenAsync
∏∏ )
(
∏∏) *
IUser
∏∏* /
user
∏∏0 4
,
∏∏4 5
string
∏∏6 <
loginProvider
∏∏= J
,
∏∏J K
string
∏∏L R
name
∏∏S W
,
∏∏W X
CancellationToken
∏∏Y j
cancellationToken
∏∏k |
=
∏∏} ~
default∏∏ Ü
(∏∏Ü á!
CancellationToken∏∏á ò
)∏∏ò ô
)∏∏ô ö
{
ππ 	
if
∫∫ 
(
∫∫ 
user
∫∫ 
==
∫∫ 
null
∫∫ 
)
∫∫ 
{
ªª 
throw
ºº 
new
ºº #
ArgumentNullException
ºº /
(
ºº/ 0
nameof
ºº0 6
(
ºº6 7
user
ºº7 ;
)
ºº; <
)
ºº< =
;
ºº= >
}
ΩΩ 
if
øø 
(
øø 
string
øø 
.
øø 
IsNullOrEmpty
øø $
(
øø$ %
loginProvider
øø% 2
)
øø2 3
)
øø3 4
{
¿¿ 
throw
¡¡ 
new
¡¡ 
ArgumentException
¡¡ +
(
¡¡+ ,
$str
¡¡, Y
,
¡¡Y Z
nameof
¡¡[ a
(
¡¡a b
loginProvider
¡¡b o
)
¡¡o p
)
¡¡p q
;
¡¡q r
}
¬¬ 
if
ƒƒ 
(
ƒƒ 
string
ƒƒ 
.
ƒƒ 
IsNullOrEmpty
ƒƒ $
(
ƒƒ$ %
name
ƒƒ% )
)
ƒƒ) *
)
ƒƒ* +
{
≈≈ 
throw
∆∆ 
new
∆∆ 
ArgumentException
∆∆ +
(
∆∆+ ,
$str
∆∆, O
,
∆∆O P
nameof
∆∆Q W
(
∆∆W X
name
∆∆X \
)
∆∆\ ]
)
∆∆] ^
;
∆∆^ _
}
«« 
string
…… 

tokenValue
…… 
=
…… 
null
……  $
;
……$ %
var
   
	userToken
   
=
   
GetUserToken
   (
(
  ( )
user
  ) -
,
  - .
loginProvider
  / <
,
  < =
name
  > B
)
  B C
;
  C D
if
ÀÀ 
(
ÀÀ 
	userToken
ÀÀ 
!=
ÀÀ 
null
ÀÀ !
)
ÀÀ! "
{
ÃÃ 

tokenValue
ÕÕ 
=
ÕÕ %
_dataProtectionProvider
ÕÕ 4
.
ÕÕ4 5
CreateProtector
ÕÕ5 D
(
ÕÕD E
TokenProtector
ÕÕE S
)
ÕÕS T
.
ÕÕT U
	Unprotect
ÕÕU ^
(
ÕÕ^ _
	userToken
ÕÕ_ h
.
ÕÕh i
Value
ÕÕi n
)
ÕÕn o
;
ÕÕo p
}
ŒŒ 
return
–– 
Task
–– 
.
–– 

FromResult
–– "
(
––" #

tokenValue
––# -
)
––- .
;
––. /
}
—— 	
public
”” 
Task
”” 
RemoveTokenAsync
”” $
(
””$ %
IUser
””% *
user
””+ /
,
””/ 0
string
””1 7
loginProvider
””8 E
,
””E F
string
””G M
name
””N R
,
””R S
CancellationToken
””T e
cancellationToken
””f w
=
””x y
default””z Å
(””Å Ç!
CancellationToken””Ç ì
)””ì î
)””î ï
{
‘‘ 	
if
’’ 
(
’’ 
user
’’ 
==
’’ 
null
’’ 
)
’’ 
{
÷÷ 
throw
◊◊ 
new
◊◊ #
ArgumentNullException
◊◊ /
(
◊◊/ 0
nameof
◊◊0 6
(
◊◊6 7
user
◊◊7 ;
)
◊◊; <
)
◊◊< =
;
◊◊= >
}
ÿÿ 
if
⁄⁄ 
(
⁄⁄ 
string
⁄⁄ 
.
⁄⁄ 
IsNullOrEmpty
⁄⁄ $
(
⁄⁄$ %
loginProvider
⁄⁄% 2
)
⁄⁄2 3
)
⁄⁄3 4
{
€€ 
throw
‹‹ 
new
‹‹ 
ArgumentException
‹‹ +
(
‹‹+ ,
$str
‹‹, Y
,
‹‹Y Z
nameof
‹‹[ a
(
‹‹a b
loginProvider
‹‹b o
)
‹‹o p
)
‹‹p q
;
‹‹q r
}
›› 
if
ﬂﬂ 
(
ﬂﬂ 
string
ﬂﬂ 
.
ﬂﬂ 
IsNullOrEmpty
ﬂﬂ $
(
ﬂﬂ$ %
name
ﬂﬂ% )
)
ﬂﬂ) *
)
ﬂﬂ* +
{
‡‡ 
throw
·· 
new
·· 
ArgumentException
·· +
(
··+ ,
$str
··, O
,
··O P
nameof
··Q W
(
··W X
name
··X \
)
··\ ]
)
··] ^
;
··^ _
}
‚‚ 
var
‰‰ 
	userToken
‰‰ 
=
‰‰ 
GetUserToken
‰‰ (
(
‰‰( )
user
‰‰) -
,
‰‰- .
loginProvider
‰‰/ <
,
‰‰< =
name
‰‰> B
)
‰‰B C
;
‰‰C D
if
ÂÂ 
(
ÂÂ 
	userToken
ÂÂ 
!=
ÂÂ 
null
ÂÂ !
)
ÂÂ! "
{
ÊÊ 
(
ÁÁ 
(
ÁÁ 
User
ÁÁ 
)
ÁÁ 
user
ÁÁ 
)
ÁÁ 
.
ÁÁ 

UserTokens
ÁÁ '
.
ÁÁ' (
Remove
ÁÁ( .
(
ÁÁ. /
	userToken
ÁÁ/ 8
)
ÁÁ8 9
;
ÁÁ9 :
}
ËË 
return
ÍÍ 
Task
ÍÍ 
.
ÍÍ 
CompletedTask
ÍÍ %
;
ÍÍ% &
}
ÎÎ 	
public
ÌÌ 
Task
ÌÌ 
SetTokenAsync
ÌÌ !
(
ÌÌ! "
IUser
ÌÌ" '
user
ÌÌ( ,
,
ÌÌ, -
string
ÌÌ. 4
loginProvider
ÌÌ5 B
,
ÌÌB C
string
ÌÌD J
name
ÌÌK O
,
ÌÌO P
string
ÌÌQ W
value
ÌÌX ]
,
ÌÌ] ^
CancellationToken
ÌÌ_ p 
cancellationTokenÌÌq Ç
=ÌÌÉ Ñ
defaultÌÌÖ å
(ÌÌå ç!
CancellationTokenÌÌç û
)ÌÌû ü
)ÌÌü †
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
user
ÔÔ 
==
ÔÔ 
null
ÔÔ 
)
ÔÔ 
{
 
throw
ÒÒ 
new
ÒÒ #
ArgumentNullException
ÒÒ /
(
ÒÒ/ 0
nameof
ÒÒ0 6
(
ÒÒ6 7
user
ÒÒ7 ;
)
ÒÒ; <
)
ÒÒ< =
;
ÒÒ= >
}
ÚÚ 
if
ÙÙ 
(
ÙÙ 
string
ÙÙ 
.
ÙÙ 
IsNullOrEmpty
ÙÙ $
(
ÙÙ$ %
loginProvider
ÙÙ% 2
)
ÙÙ2 3
)
ÙÙ3 4
{
ıı 
throw
ˆˆ 
new
ˆˆ 
ArgumentException
ˆˆ +
(
ˆˆ+ ,
$str
ˆˆ, Y
,
ˆˆY Z
nameof
ˆˆ[ a
(
ˆˆa b
loginProvider
ˆˆb o
)
ˆˆo p
)
ˆˆp q
;
ˆˆq r
}
˜˜ 
if
˘˘ 
(
˘˘ 
string
˘˘ 
.
˘˘ 
IsNullOrEmpty
˘˘ $
(
˘˘$ %
name
˘˘% )
)
˘˘) *
)
˘˘* +
{
˙˙ 
throw
˚˚ 
new
˚˚ 
ArgumentException
˚˚ +
(
˚˚+ ,
$str
˚˚, O
,
˚˚O P
nameof
˚˚Q W
(
˚˚W X
name
˚˚X \
)
˚˚\ ]
)
˚˚] ^
;
˚˚^ _
}
¸¸ 
if
˛˛ 
(
˛˛ 
string
˛˛ 
.
˛˛ 
IsNullOrEmpty
˛˛ $
(
˛˛$ %
value
˛˛% *
)
˛˛* +
)
˛˛+ ,
{
ˇˇ 
throw
ÄÄ 
new
ÄÄ 
ArgumentException
ÄÄ +
(
ÄÄ+ ,
$str
ÄÄ, P
,
ÄÄP Q
nameof
ÄÄR X
(
ÄÄX Y
value
ÄÄY ^
)
ÄÄ^ _
)
ÄÄ_ `
;
ÄÄ` a
}
ÅÅ 
var
ÉÉ 
	userToken
ÉÉ 
=
ÉÉ 
GetUserToken
ÉÉ (
(
ÉÉ( )
user
ÉÉ) -
,
ÉÉ- .
loginProvider
ÉÉ/ <
,
ÉÉ< =
name
ÉÉ> B
)
ÉÉB C
;
ÉÉC D
if
ÖÖ 
(
ÖÖ 
	userToken
ÖÖ 
==
ÖÖ 
null
ÖÖ !
)
ÖÖ! "
{
ÜÜ 
	userToken
áá 
=
áá 
new
áá 
	UserToken
áá  )
{
àà 
LoginProvider
ââ !
=
ââ" #
loginProvider
ââ$ 1
,
ââ1 2
Name
ää 
=
ää 
name
ää 
}
ãã 
;
ãã 
(
åå 
(
åå 
User
åå 
)
åå 
user
åå 
)
åå 
.
åå 

UserTokens
åå '
.
åå' (
Add
åå( +
(
åå+ ,
	userToken
åå, 5
)
åå5 6
;
åå6 7
}
çç 
	userToken
êê 
.
êê 
Value
êê 
=
êê %
_dataProtectionProvider
êê 5
.
êê5 6
CreateProtector
êê6 E
(
êêE F
TokenProtector
êêF T
)
êêT U
.
êêU V
Protect
êêV ]
(
êê] ^
value
êê^ c
)
êêc d
;
êêd e
return
íí 
Task
íí 
.
íí 
CompletedTask
íí %
;
íí% &
}
ìì 	
private
ïï 
static
ïï 
	UserToken
ïï  
GetUserToken
ïï! -
(
ïï- .
IUser
ïï. 3
user
ïï4 8
,
ïï8 9
string
ïï: @
loginProvider
ïïA N
,
ïïN O
string
ïïP V
name
ïïW [
)
ïï[ \
{
ññ 	
return
óó 
(
óó 
(
óó 
User
óó 
)
óó 
user
óó 
)
óó 
.
óó  

UserTokens
óó  *
.
óó* +
FirstOrDefault
óó+ 9
(
óó9 :
ut
óó: <
=>
óó= ?
ut
óó@ B
.
óóB C
LoginProvider
óóC P
==
óóQ S
loginProvider
óóT a
&&
óób d
ut
òò@ B
.
òòB C
Name
òòC G
==
òòH J
name
òòK O
)
òòO P
;
òòP Q
}
ôô 	
}
õõ 
}úú 