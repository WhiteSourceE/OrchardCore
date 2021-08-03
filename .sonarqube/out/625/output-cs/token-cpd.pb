‰

çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\test\OrchardCore.Tests.Pages\OrchardCore.Application.Pages\Program.cs
	namespace 	
OrchardCore
 
. 
Application !
.! "
Pages" '
{ 
public 

class 
Program 
{ 
public		 
static		 
Task		 
Main		 
(		  
string		  &
[		& '
]		' (
args		) -
)		- .
=>

 
	BuildHost

 
(

 
args

 
)

 
.

 
RunAsync

 '
(

' (
)

( )
;

) *
public 
static 
IHost 
	BuildHost %
(% &
string& ,
[, -
]- .
args/ 3
)3 4
=> 
Host 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
)4 5
. 
Build 
( 
) 
; 
} 
} Ù

çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\test\OrchardCore.Tests.Pages\OrchardCore.Application.Pages\Startup.cs
	namespace 	
OrchardCore
 
. 
Application !
.! "
Pages" '
{ 
public 

class 
Startup 
{ 
public		 
void		 
ConfigureServices		 %
(		% &
IServiceCollection		& 8
services		9 A
)		A B
{

 	
services 
. 
AddOrchardCms "
(" #
)# $
;$ %
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IHostEnvironment7 G
envH K
)K L
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. %
UseDeveloperExceptionPage -
(- .
). /
;/ 0
} 
app 
. 
UseStaticFiles 
( 
)  
;  !
app 
. 
UseOrchardCore 
( 
)  
;  !
} 	
} 
} 