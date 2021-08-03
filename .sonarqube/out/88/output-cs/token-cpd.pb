�

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Logging.Serilog\ApplicationBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Logging 
{ 
public 

static 
class (
ApplicationBuilderExtensions 4
{ 
[ 	
Obsolete	 
] 
public		 
static		 
IApplicationBuilder		 )1
%UseSerilogTenantNameLoggingMiddleware		* O
(		O P
this		P T
IApplicationBuilder		U h
builder		i p
)		p q
{

 	
return 
builder 
. 

<( ).
"SerilogTenantNameLoggingMiddleware) K
>K L
(L M
)M N
;N O
} 	
public 
static 
IApplicationBuilder )'
UseSerilogTenantNameLogging* E
(E F
thisF J
IApplicationBuilderK ^
builder_ f
)f g
{ 	
return 
builder 
. 

<( ).
"SerilogTenantNameLoggingMiddleware) K
>K L
(L M
)M N
;N O
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Logging.Serilog\SerilogTenantNameLoggingMiddleware.cs
	namespace 	
OrchardCore
 
. 
Logging 
{ 
public 

class .
"SerilogTenantNameLoggingMiddleware 3
{		 
private

 
readonly

 
RequestDelegate

 (
_next

) .
;

. /
public .
"SerilogTenantNameLoggingMiddleware 1
(1 2
RequestDelegate2 A
nextB F
)F G
{
_next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
)4 5
{ 	
var 

tenantName 
= 

ShellScope '
.' (
Context( /
?/ 0
.0 1
Settings1 9
.9 :
Name: >
??? A
$strB H
;H I
using 
( 

LogContext 
. 
PushProperty *
(* +
$str+ 7
,7 8

tenantName9 C
)C D
)D E
{ 
await 
_next 
. 
Invoke "
(" #
context# *
)* +
;+ ,
} 
} 	
} 
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Logging.Serilog\WebHostBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Logging 
{ 
public 

static 
class $
WebHostBuilderExtensions 0
{ 
[		 	
Obsolete			 
]		 
public

 
static

 
IWebHostBuilder

 %


& 3
(

3 4
this

4 8
IWebHostBuilder

9 H
builder

I P
)

P Q
{ 	
return 
builder 
. 

UseSerilog %
(% &
(& '
hostingContext' 5
,5 6

)D E
=>F H
{

. 
ReadFrom &
.& '

(4 5
hostingContext5 C
.C D

)Q R
. 
Enrich 
. 
FromLogContext &
(& '
)' (
;( )
} 
)
; 
} 	
} 
} 