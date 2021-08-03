≥
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
ReverseProxy "
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
( 
String 
. 
Equals 
( 
name "
," #
$str$ +
,+ ,
StringComparison- =
.= >
OrdinalIgnoreCase> O
)O P
)P Q
{ 
builder 
. 
Add 
( 
S 
[ 
$str *
]* +
,+ ,
configuration- :
=>; =
configuration> K
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
settings, 4
=>5 7
settings8 @
. 
Add  
(  !
S! "
[" #
$str# 2
]2 3
,3 4
S5 6
[6 7
$str7 F
]F G
.G H
PrefixPositionH V
(V W
)W X
,X Y
entryZ _
=>` b
entryc h
. 
AddClass %
(% &
$str& 4
)4 5
.5 6
Id6 8
(8 9
$str9 G
)G H
.  !
Action! '
(' (
$str( /
,/ 0
$str1 8
,8 9
new: =
{> ?
area@ D
=E F
$strG ]
,] ^
groupId_ f
=g h
$stri w
}x y
)y z
.  !

Permission! +
(+ ,
Permissions, 7
.7 8 
ReverseProxySettings8 L
)L M
.  !
LocalNav! )
() *
)* +
) 
) 
) 
; 
}   
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% ≈8
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\Drivers\ReverseProxySettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ReverseProxy "
." #
Drivers# *
{ 
public 

class -
!ReverseProxySettingsDisplayDriver 2
:3 4 
SectionDisplayDriver5 I
<I J
ISiteJ O
,O P 
ReverseProxySettingsQ e
>e f
{ 
private 
const 
string 
SettingsGroupId ,
=- .
$str/ =
;= >
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public -
!ReverseProxySettingsDisplayDriver 0
(0 1

IShellHost 
	shellHost  
,  !
ShellSettings 
shellSettings '
,' ( 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	

_shellHost 
= 
	shellHost "
;" #
_shellSettings 
= 
shellSettings *
;* + 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService   !
=  " # 
authorizationService  $ 8
;  8 9
}!! 	
public## 
override## 
async## 
Task## "
<##" #
IDisplayResult### 1
>##1 2
	EditAsync##3 <
(##< = 
ReverseProxySettings##= Q
settings##R Z
,##Z [
BuildEditorContext##\ n
context##o v
)##v w
{$$ 	
var%% 
user%% 
=%%  
_httpContextAccessor%% +
.%%+ ,
HttpContext%%, 7
?%%7 8
.%%8 9
User%%9 =
;%%= >
if'' 
('' 
!'' 
await'' !
_authorizationService'' ,
.'', -
AuthorizeAsync''- ;
(''; <
user''< @
,''@ A
Permissions''B M
.''M N 
ReverseProxySettings''N b
)''b c
)''c d
{(( 
return)) 
null)) 
;)) 
}** 
return,, 

Initialize,, 
<,, )
ReverseProxySettingsViewModel,, ;
>,,; <
(,,< =
$str,,= X
,,,X Y
model,,Z _
=>,,` b
{-- 
model.. 
... 
EnableXForwardedFor.. )
=..* +
settings.., 4
...4 5
ForwardedHeaders..5 E
...E F
HasFlag..F M
(..M N
ForwardedHeaders..N ^
...^ _
XForwardedFor.._ l
)..l m
;..m n
model// 
.//  
EnableXForwardedHost// *
=//+ ,
settings//- 5
.//5 6
ForwardedHeaders//6 F
.//F G
HasFlag//G N
(//N O
ForwardedHeaders//O _
.//_ `
XForwardedHost//` n
)//n o
;//o p
model00 
.00 !
EnableXForwardedProto00 +
=00, -
settings00. 6
.006 7
ForwardedHeaders007 G
.00G H
HasFlag00H O
(00O P
ForwardedHeaders00P `
.00` a
XForwardedProto00a p
)00p q
;00q r
}11 
)11 
.11 
Location11 
(11 
$str11 #
)11# $
.11$ %
OnGroup11% ,
(11, -
SettingsGroupId11- <
)11< =
;11= >
}22 	
public44 
override44 
async44 
Task44 "
<44" #
IDisplayResult44# 1
>441 2
UpdateAsync443 >
(44> ? 
ReverseProxySettings44? S
section44T [
,44[ \
BuildEditorContext44] o
context44p w
)44w x
{55 	
var66 
user66 
=66  
_httpContextAccessor66 +
.66+ ,
HttpContext66, 7
?667 8
.668 9
User669 =
;66= >
if88 
(88 
!88 
await88 !
_authorizationService88 ,
.88, -
AuthorizeAsync88- ;
(88; <
user88< @
,88@ A
Permissions88B M
.88M N 
ReverseProxySettings88N b
)88b c
)88c d
{99 
return:: 
null:: 
;:: 
};; 
if== 
(== 
context== 
.== 
GroupId== 
====  "
SettingsGroupId==# 2
)==2 3
{>> 
var?? 
model?? 
=?? 
new?? )
ReverseProxySettingsViewModel??  =
(??= >
)??> ?
;??? @
awaitAA 
contextAA 
.AA 
UpdaterAA %
.AA% &
TryUpdateModelAsyncAA& 9
(AA9 :
modelAA: ?
,AA? @
PrefixAAA G
)AAG H
;AAH I
sectionCC 
.CC 
ForwardedHeadersCC (
=CC) *
ForwardedHeadersCC+ ;
.CC; <
NoneCC< @
;CC@ A
ifEE 
(EE 
modelEE 
.EE 
EnableXForwardedForEE -
)EE- .
sectionFF 
.FF 
ForwardedHeadersFF ,
|=FF- /
ForwardedHeadersFF0 @
.FF@ A
XForwardedForFFA N
;FFN O
ifHH 
(HH 
modelHH 
.HH  
EnableXForwardedHostHH .
)HH. /
sectionII 
.II 
ForwardedHeadersII ,
|=II- /
ForwardedHeadersII0 @
.II@ A
XForwardedHostIIA O
;IIO P
ifKK 
(KK 
modelKK 
.KK !
EnableXForwardedProtoKK /
)KK/ 0
sectionLL 
.LL 
ForwardedHeadersLL ,
|=LL- /
ForwardedHeadersLL0 @
.LL@ A
XForwardedProtoLLA P
;LLP Q
ifOO 
(OO 
contextOO 
.OO 
UpdaterOO #
.OO# $

ModelStateOO$ .
.OO. /
IsValidOO/ 6
)OO6 7
{PP 
awaitQQ 

_shellHostQQ $
.QQ$ %$
ReleaseShellContextAsyncQQ% =
(QQ= >
_shellSettingsQQ> L
)QQL M
;QQM N
}RR 
}SS 
returnUU 
awaitUU 
	EditAsyncUU "
(UU" #
sectionUU# *
,UU* +
contextUU, 3
)UU3 4
;UU4 5
}VV 	
}WW 
}XX π
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str (
,( )
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
$str S
,S T
Category		 
=		 
$str		 
)

 
]

 ≥
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\Permissions.cs
	namespace 	
OrchardCore
 
. 
ReverseProxy "
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
 ) 
ReverseProxySettings
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
h á
)


á à
;


à â
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
ReverseProxySettings+ ?
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
ReverseProxySettings* >
}? @
} 
, 
} 
; 
} 	
} 
} ê
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\Services\ForwardedHeadersOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
ReverseProxy "
." #
Services# +
{ 
public 

class 0
$ForwardedHeadersOptionsConfiguration 5
:6 7
IConfigureOptions8 I
<I J#
ForwardedHeadersOptionsJ a
>a b
{ 
private 
readonly 
ReverseProxyService , 
_reverseProxyService- A
;A B
public

 0
$ForwardedHeadersOptionsConfiguration

 3
(

3 4
ReverseProxyService

4 G
reverseProxyService

H [
)

[ \
{ 	 
_reverseProxyService  
=! "
reverseProxyService# 6
;6 7
} 	
public 
void 
	Configure 
( #
ForwardedHeadersOptions 5
options6 =
)= >
{ 	
var  
reverseProxySettings $
=% & 
_reverseProxyService' ;
.; <
GetSettingsAsync< L
(L M
)M N
.N O

GetAwaiterO Y
(Y Z
)Z [
.[ \
	GetResult\ e
(e f
)f g
;g h
options 
. 
ForwardedHeaders $
=% & 
reverseProxySettings' ;
.; <
ForwardedHeaders< L
;L M
options 
. 
KnownNetworks !
.! "
Clear" '
(' (
)( )
;) *
options 
. 
KnownProxies  
.  !
Clear! &
(& '
)' (
;( )
} 	
} 
} Ã

òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\Services\ReverseProxyService.cs
	namespace 	
OrchardCore
 
. 
ReverseProxy "
." #
Services# +
{ 
public 

class 
ReverseProxyService $
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
2 3
public 
ReverseProxyService "
(" #
ISiteService# /
siteService0 ;
); <
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
<  
ReverseProxySettings .
>. /
GetSettingsAsync0 @
(@ A
)A B
{ 	
var 
siteSettings 
= 
await $
_siteService% 1
.1 2 
GetSiteSettingsAsync2 F
(F G
)G H
;H I
return 
siteSettings 
.  
As  "
<" # 
ReverseProxySettings# 7
>7 8
(8 9
)9 :
;: ;
} 	
} 
} «
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\Settings\ReverseProxySettings.cs
	namespace 	
OrchardCore
 
. 
ReverseProxy "
." #
Settings# +
{ 
public 

class  
ReverseProxySettings %
{ 
public 
ForwardedHeaders 
ForwardedHeaders  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} 
}		 ˙ 
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\Startup.cs
	namespace 	
OrchardCore
 
. 
ReverseProxy "
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
int 
Order !
=>" $
-% &
$num& '
;' (
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
app 
. 
UseForwardedHeaders #
(# $
)$ %
;% &
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services   
.   
	AddScoped   
<   
INavigationProvider   2
,  2 3
	AdminMenu  4 =
>  = >
(  > ?
)  ? @
;  @ A
services!! 
.!! 
	AddScoped!! 
<!! 
IDisplayDriver!! -
<!!- .
ISite!!. 3
>!!3 4
,!!4 5-
!ReverseProxySettingsDisplayDriver!!6 W
>!!W X
(!!X Y
)!!Y Z
;!!Z [
services"" 
."" 
AddSingleton"" !
<""! "
ReverseProxyService""" 5
>""5 6
(""6 7
)""7 8
;""8 9
services$$ 
.$$ 
TryAddEnumerable$$ %
($$% &
ServiceDescriptor$$& 7
.%% 
	Transient%% 
<%% 
IConfigureOptions%% ,
<%%, -#
ForwardedHeadersOptions%%- D
>%%D E
,%%E F0
$ForwardedHeadersOptionsConfiguration%%G k
>%%k l
(%%l m
)%%m n
)%%n o
;%%o p
}&& 	
}'' 
[)) 
RequireFeatures)) 
()) 
$str)) -
)))- .
])). /
public** 

class** 
DeploymentStartup** "
:**# $
StartupBase**% 0
{++ 
public,, 
override,, 
void,, 
ConfigureServices,, .
(,,. /
IServiceCollection,,/ A
services,,B J
),,J K
{-- 	
services.. 
... 
AddTransient.. !
<..! "
IDeploymentSource.." 3
,..3 40
$SiteSettingsPropertyDeploymentSource..5 Y
<..Y Z 
ReverseProxySettings..Z n
>..n o
>..o p
(..p q
)..q r
;..r s
services// 
.// 
	AddScoped// 
<// 
IDisplayDriver// -
<//- .
DeploymentStep//. <
>//< =
>//= >
(//> ?
sp//? A
=>//B D
{00 
var11 
S11 
=11 
sp11 
.11 

GetService11 %
<11% &
IStringLocalizer11& 6
<116 7
DeploymentStartup117 H
>11H I
>11I J
(11J K
)11K L
;11L M
return22 
new22 4
(SiteSettingsPropertyDeploymentStepDriver22 C
<22C D 
ReverseProxySettings22D X
>22X Y
(22Y Z
S22Z [
[22[ \
$str22\ t
]22t u
,22u v
S22w x
[22x y
$str	22y û
]
22û ü
)
22ü †
;
22† °
}33 
)33 
;33 
services44 
.44 
AddSingleton44 !
<44! ""
IDeploymentStepFactory44" 8
>448 9
(449 :
new44: =5
)SiteSettingsPropertyDeploymentStepFactory44> g
<44g h 
ReverseProxySettings44h |
>44| }
(44} ~
)44~ 
)	44 Ä
;
44Ä Å
}55 	
}66 
}77 °
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReverseProxy\ViewModels\ReverseProxySettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
ReverseProxy "
." #

ViewModels# -
{ 
public 

class )
ReverseProxySettingsViewModel .
{ 
public 
bool 
EnableXForwardedFor '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool !
EnableXForwardedProto )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public		 
bool		  
EnableXForwardedHost		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
}

 
} 