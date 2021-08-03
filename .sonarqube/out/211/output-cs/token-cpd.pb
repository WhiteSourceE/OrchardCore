È
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Diagnostics\Controllers\DiagnosticsController.cs
	namespace 	
OrchardCore
 
. 
Diagnostics !
.! "
Controllers" -
{ 
public 

class !
DiagnosticsController &
:' (

Controller) 3
{ 
public		 
IActionResult		 
Error		 "
(		" #
int		# &
?		& '
status		( .
)		. /
{

 	
ViewData 
[ 
$str !
]! "
=# $
status% +
;+ ,
Enum 
. 
TryParse 
( 
( 
status !
??" $
$num% (
)( )
.) *
ToString* 2
(2 3
)3 4
,4 5
true6 :
,: ;
out< ?
HttpStatusCode@ N
httpStatusCodeO ]
)] ^
;^ _
switch 
( 
httpStatusCode "
)" #
{ 
case 
HttpStatusCode #
.# $
InternalServerError$ 7
:7 8
default 
: 
return 
View 
(  
$str  '
)' (
;( )
case 
HttpStatusCode #
.# $
	Forbidden$ -
:- .
return 
View 
(  
$str  +
)+ ,
;, -
case 
HttpStatusCode #
.# $
NotFound$ ,
:, -
return 
View 
(  
$str  *
)* +
;+ ,
case 
HttpStatusCode #
.# $

BadRequest$ .
:. /
return 
View 
(  
$str  ,
), -
;- .
case 
HttpStatusCode #
.# $
Unauthorized$ 0
:0 1
return 
View 
(  
$str  .
). /
;/ 0
} 
} 	
}   
}!! Ô
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Diagnostics\DiagnosticsStartupFilter.cs
	namespace 	
OrchardCore
 
. 
Diagnostics !
{		 
public

 

class

 $
DiagnosticsStartupFilter

 )
:

* +
IStartupFilter

, :
{ 
private 
readonly ,
 FileExtensionContentTypeProvider 9 
_contentTypeProvider: N
=O P
newQ T,
 FileExtensionContentTypeProviderU u
(u v
)v w
;w x
private 
readonly 
IHostEnvironment )
_hostEnvironment* :
;: ;
public $
DiagnosticsStartupFilter '
(' (
IHostEnvironment( 8
hostEnvironment9 H
)H I
{ 	
_hostEnvironment 
= 
hostEnvironment .
;. /
} 	
public 
Action 
< 
IApplicationBuilder )
>) *
	Configure+ 4
(4 5
Action5 ;
<; <
IApplicationBuilder< O
>O P
nextQ U
)U V
{ 	
return 
app 
=> 
{ 
if 
( 
! 
_hostEnvironment %
.% &
IsDevelopment& 3
(3 4
)4 5
)5 6
{ 
app 
. 
UseExceptionHandler +
(+ ,
$str, 4
)4 5
;5 6
} 
app 
. +
UseStatusCodePagesWithReExecute 3
(3 4
$str4 @
)@ A
;A B
app   
.   
Use   
(   
async   
(   
context   &
,  & '
next  ( ,
)  , -
=>  . 0
{!! 
await"" 
next"" 
("" 
)""  
;""  !
if$$ 
($$ 
context$$ 
.$$  
Response$$  (
.$$( )

StatusCode$$) 3
<$$4 5
$num$$6 9
||$$: <
context$$= D
.$$D E
Response$$E M
.$$M N

StatusCode$$N X
>=$$Y [
$num$$\ _
)$$_ `
{%% 
if&& 
(&&  
_contentTypeProvider&& 0
.&&0 1
TryGetContentType&&1 B
(&&B C
context&&C J
.&&J K
Request&&K R
.&&R S
Path&&S W
.&&W X
Value&&X ]
,&&] ^
out&&_ b
var&&c f
contentType&&g r
)&&r s
)&&s t
{'' 
var(( "
statusCodePagesFeature((  6
=((7 8
context((9 @
.((@ A
Features((A I
.((I J
Get((J M
<((M N#
IStatusCodePagesFeature((N e
>((e f
(((f g
)((g h
;((h i
if)) 
())  "
statusCodePagesFeature))  6
!=))7 9
null)): >
)))> ?
{** "
statusCodePagesFeature++  6
.++6 7
Enabled++7 >
=++? @
false++A F
;++F G
},, 
}-- 
}.. 
}// 
)// 
;// 
next11 
(11 
app11 
)11 
;11 
}22 
;22 
}33 	
}44 
}55 ∏
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Diagnostics\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str  
,  !
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
$str 7
,7 8
Category		 
=		 
$str		 
)

 
]

 ‚
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Diagnostics\Properties\AssemblyInfo.cs
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
$str		 4
)		4 5
]		5 6
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
]7 8ç
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Diagnostics\Startup.cs
	namespace 	
OrchardCore
 
. 
Diagnostics !
{		 
public

 

class

 
Startup

 
:

 
Modules

 "
.

" #
StartupBase

# .
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor& 7
.7 8
	Singleton8 A
<A B
IStartupFilterB P
,P Q$
DiagnosticsStartupFilterR j
>j k
(k l
)l m
)m n
;n o
} 	
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
routes 
. "
MapAreaControllerRoute )
() *
name 
: 
$str )
,) *
areaName 
: 
$str 3
,3 4
pattern 
: 
$str *
,* +
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- :
,: ;
action< B
=C D
$strE L
}M N
) 
; 
} 	
} 
} 