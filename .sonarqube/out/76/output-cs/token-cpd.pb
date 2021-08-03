ÿ
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\ClaimsPrincipalExtensions.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public

 

static

 
class

 %
ClaimsPrincipalExtensions

 1
{ 
public 
static 
IEnumerable !
<! "
SerializableClaim" 3
>3 4!
GetSerializableClaims5 J
(J K
thisK O
ClaimsPrincipalP _
	principal` i
)i j
{ 	
return 
	principal 
. 
Claims #
.# $
Select$ *
(* +
c+ ,
=>- /
new0 3
SerializableClaim4 E
{ 
Subject 
= 
c 
. 
Subject #
.# $
Name$ (
,( )
Issuer 
= 
c 
. 
Issuer !
,! "
OriginalIssuer 
=  
c! "
." #
OriginalIssuer# 1
,1 2

Properties 
= 
c 
. 

Properties )
.) *
ToArray* 1
(1 2
)2 3
,3 4
Type 
= 
c 
. 
Type 
, 
Value 
= 
c 
. 
Value 
,  
	ValueType 
= 
c 
. 
	ValueType '
} 
) 
; 
} 	
} 
} ´
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Events\ILoginFormEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Events "
{ 
public		 

	interface		 
ILoginFormEvent		 $
{

 
Task 
LoggingInAsync 
( 
string "
userName# +
,+ ,
Action- 3
<3 4
string4 :
,: ;
string< B
>B C
reportErrorD O
)O P
;P Q
Task  
LoggingInFailedAsync !
(! "
string" (
userName) 1
)1 2
;2 3
Task 
LoggedInAsync 
( 
string !
userName" *
)* +
;+ ,
} 
} ´
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Events\IPasswordRecoveryFormEvents.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Events "
{ 
public		 

	interface		 '
IPasswordRecoveryFormEvents		 0
{

 
Task "
ResettingPasswordAsync #
(# $
Action$ *
<* +
string+ 1
,1 2
string3 9
>9 :
reportError; F
)F G
;G H
Task 
PasswordResetAsync 
(  
)  !
;! "
Task #
RecoveringPasswordAsync $
($ %
Action% +
<+ ,
string, 2
,2 3
string4 :
>: ;
reportError< G
)G H
;H I
Task "
PasswordRecoveredAsync #
(# $
)$ %
;% &
}   
}!! Å
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Events\IRegistrationFormEvents.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Events "
{ 
public		 

	interface		 #
IRegistrationFormEvents		 ,
{

 
Task '
RegistrationValidationAsync (
(( )
Action) /
</ 0
string0 6
,6 7
string8 >
>> ?
reportError@ K
)K L
;L M
Task 
RegisteredAsync 
( 
IUser "
user# '
)' (
;( )
} 
} ﬂ
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\IExternalLoginEventHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public		 

	interface		 &
IExternalLoginEventHandler		 /
{

 
Task 
< 
string 
> 
GenerateUserName %
(% &
string& ,
provider- 5
,5 6
IEnumerable7 B
<B C
SerializableClaimC T
>T U
claimsV \
)\ ]
;] ^
Task 
UpdateRoles 
( 
UpdateRolesContext +
context, 3
)3 4
;4 5
} 
} Æ
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\IUserEventHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

	interface 
IUserEventHandler &
{		 
Task 
CreatedAsync 
( 
UserContext %
context& -
)- .
=>/ 1
Task2 6
.6 7
CompletedTask7 D
;D E
Task 
DeletedAsync 
( 
UserContext %
context& -
)- .
=>/ 1
Task2 6
.6 7
CompletedTask7 D
;D E
Task 
DisabledAsync 
( 
UserContext &
context' .
). /
=>0 2
Task3 7
.7 8
CompletedTask8 E
;E F
Task   
EnabledAsync   
(   
UserContext   %
context  & -
)  - .
=>  / 1
Task  2 6
.  6 7
CompletedTask  7 D
;  D E
Task&& 
UpdatedAsync&& 
(&& 
UserContext&& %
context&&& -
)&&- .
=>&&/ 1
Task&&2 6
.&&6 7
CompletedTask&&7 D
;&&D E
}'' 
}(( ˆ
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UpdateRolesContext.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public		 

class		 
UpdateRolesContext		 #
:		$ %
UserContextBase		& 5
{

 
public 
UpdateRolesContext !
(! "
IUser" '
user( ,
,, -
string. 4
loginProvider5 B
,B C
IEnumerableD O
<O P
SerializableClaimP a
>a b
externalClaimsc q
,q r
IEnumerables ~
<~ 
string	 Ö
>
Ö Ü
	userRoles
á ê
)
ê ë
:
í ì
base
î ò
(
ò ô
user
ô ù
)
ù û
{ 	
ExternalClaims 
= 
externalClaims +
.+ ,
AsEnumerable, 8
(8 9
)9 :
;: ;
	UserRoles 
= 
	userRoles !
;! "
LoginProvider 
= 
loginProvider )
;) *
} 	
public 
string 
LoginProvider #
{$ %
get& )
;) *
}+ ,
public!! 
IEnumerable!! 
<!! 
SerializableClaim!! ,
>!!, -
ExternalClaims!!. <
{!!= >
get!!? B
;!!B C
}!!D E
public&& 
IEnumerable&& 
<&& 
string&& !
>&&! "
	UserRoles&&# ,
{&&- .
get&&/ 2
;&&2 3
}&&4 5
public++ 
string++ 
[++ 
]++ 

RolesToAdd++ "
{++# $
get++% (
;++( )
set++* -
;++- .
}++/ 0
=++1 2
new++3 6
string++7 =
[++= >
$num++> ?
]++? @
;++@ A
public00 
string00 
[00 
]00 
RolesToRemove00 %
{00& '
get00( +
;00+ ,
set00- 0
;000 1
}002 3
=004 5
new006 9
string00: @
[00@ A
$num00A B
]00B C
;00C D
}11 
}22 â
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UserContext.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

class 
UserContext 
: 
UserContextBase .
{ 
public		 
UserContext		 
(		 
IUser		  
user		! %
)		% &
:		' (
base		) -
(		- .
user		. 2
)		2 3
{

 	
} 	
} 
} â
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UserContextBase.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

class 
UserContextBase  
{ 
	protected 
UserContextBase !
(! "
IUser" '
user( ,
), -
{ 	
User 
= 
user 
; 
} 	
public 
IUser 
User 
{ 
get 
;  
private! (
set) ,
;, -
}. /
} 
} Ø
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\IUser.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public 

	interface 
IUser 
{ 
string 
UserName 
{ 
get 
; 
}  
} 
} ò
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\SerializableClaim.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public 

class 
SerializableClaim "
{		 
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Issuer 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
OriginalIssuer $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
KeyValuePair 
< 
string "
," #
string$ *
>* +
[+ ,
], -

Properties. 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public!! 
string!! 
Type!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
public&& 
string&& 
Value&& 
{&& 
get&& !
;&&! "
set&&# &
;&&& '
}&&( )
public++ 
string++ 
	ValueType++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
},, 
}-- Ã
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Services\IClaimsProvider.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

	interface 
IUserClaimsProvider (
{ 
Task 
GenerateAsync 
( 
IUser  
user! %
,% &
ClaimsIdentity' 5
claims6 <
)< =
;= >
}		 
}

 ¯
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Services\IMembershipService.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public		 

	interface		 
IMembershipService		 '
{

 
Task 
< 
IUser 
> 
GetUserAsync  
(  !
string! '
userName( 0
)0 1
;1 2
Task 
< 
bool 
> 
CheckPasswordAsync %
(% &
string& ,
userName- 5
,5 6
string7 =
password> F
)F G
;G H
Task 
< 
ClaimsPrincipal 
> !
CreateClaimsPrincipal 3
(3 4
IUser4 9
user: >
)> ?
;? @
}   
}!! ê
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Services\IUserIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

	interface 
IUserIdGenerator %
{ 
string 
GenerateUniqueId 
(  
IUser  %
user& *
)* +
;+ ,
} 
} ﬁ
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\Services\IUserService.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public

 

	interface

 
IUserService

 !
{ 
Task 
< 
IUser 
> 
AuthenticateAsync %
(% &
string& ,
userName- 5
,5 6
string7 =
password> F
,F G
ActionH N
<N O
stringO U
,U V
stringW ]
>] ^
reportError_ j
)j k
;k l
Task 
< 
IUser 
> 
CreateUserAsync #
(# $
IUser$ )
user* .
,. /
string0 6
password7 ?
,? @
ActionA G
<G H
stringH N
,N O
stringP V
>V W
reportErrorX c
)c d
;d e
Task%% 
<%% 
bool%% 
>%% 
ChangeEmailAsync%% #
(%%# $
IUser%%$ )
user%%* .
,%%. /
string%%0 6
newEmail%%7 ?
,%%? @
Action%%A G
<%%G H
string%%H N
,%%N O
string%%P V
>%%V W
reportError%%X c
)%%c d
;%%d e
Task// 
<// 
bool// 
>// 
ChangePasswordAsync// &
(//& '
IUser//' ,
user//- 1
,//1 2
string//3 9
currentPassword//: I
,//I J
string//K Q
newPassword//R ]
,//] ^
Action//_ e
<//e f
string//f l
,//l m
string//n t
>//t u
reportError	//v Å
)
//Å Ç
;
//Ç É
Task66 
<66 
IUser66 
>66 %
GetAuthenticatedUserAsync66 -
(66- .
ClaimsPrincipal66. =
	principal66> G
)66G H
;66H I
Task== 
<== 
IUser== 
>== 
GetUserAsync==  
(==  !
string==! '
userName==( 0
)==0 1
;==1 2
TaskDD 
<DD 
IUserDD 
>DD "
GetUserByUniqueIdAsyncDD *
(DD* +
stringDD+ 1
userIdentifierDD2 @
)DD@ A
;DDA B
TaskKK 
<KK 
IUserKK 
>KK &
GetForgotPasswordUserAsyncKK .
(KK. /
stringKK/ 5
userIdentifierKK6 D
)KKD E
;KKE F
TaskUU 
<UU 
boolUU 
>UU 
ResetPasswordAsyncUU %
(UU% &
stringUU& ,
userIdentifierUU- ;
,UU; <
stringUU= C

resetTokenUUD N
,UUN O
stringUUP V
newPasswordUUW b
,UUb c
ActionUUd j
<UUj k
stringUUk q
,UUq r
stringUUs y
>UUy z
reportError	UU{ Ü
)
UUÜ á
;
UUá à
Task\\ 
<\\ 
ClaimsPrincipal\\ 
>\\  
CreatePrincipalAsync\\ 2
(\\2 3
IUser\\3 8
user\\9 =
)\\= >
;\\> ?
}]] 
}^^ ‰
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Users.Abstractions\UserOptions.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public 

class 
UserOptions 
{ 
private 
string 

_loginPath !
=" #
$str$ +
;+ ,
private 
string 
_logoffPath "
=# $
$str% 3
;3 4
private 
string 
_changePasswordUrl )
=* +
$str, <
;< =
private 
string 
_externalLoginsUrl )
=* +
$str, <
;< =
public

 
string

 
	LoginPath

 
{ 	
get 
=> 

_loginPath 
; 
set 
=> 

_loginPath 
= 
value  %
.% &
Trim& *
(* +
$char+ .
,. /
$char0 3
)3 4
;4 5
} 	
public 
string 

LogoffPath  
{ 	
get 
=> 
_logoffPath 
; 
set 
=> 
_logoffPath 
=  
value! &
.& '
Trim' +
(+ ,
$char, /
,/ 0
$char1 4
)4 5
;5 6
} 	
public 
string 
ChangePasswordUrl '
{ 	
get 
=> 
_changePasswordUrl %
;% &
set 
=> 
_changePasswordUrl %
=& '
value( -
.- .
Trim. 2
(2 3
$char3 6
,6 7
$char8 ;
); <
;< =
} 	
public 
string 
ExternalLoginsUrl '
{ 	
get 
=> 
_externalLoginsUrl %
;% &
set 
=> 
_externalLoginsUrl %
=& '
value( -
.- .
Trim. 2
(2 3
$char3 6
,6 7
$char8 ;
); <
;< =
}   	
}!! 
}"" 