É
jD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Cms.Web\Program.cs
	namespace 	
OrchardCore
 
. 
Cms 
. 
Web 
{ 
public		 

class		 
Program		 
{

 
public 
static 
Task 
Main 
(  
string  &
[& '
]' (
args) -
)- .
=> 
	BuildHost 
( 
args 
) 
. 
RunAsync '
(' (
)( )
;) *
public 
static 
IHost 
	BuildHost %
(% &
string& ,
[, -
]- .
args/ 3
)3 4
=>5 7
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. 
ConfigureLogging !
(! "
logging" )
=>* ,
logging- 4
.4 5
ClearProviders5 C
(C D
)D E
)E F
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7

webBuilder8 B
. 

UseStartup 
<  
Startup  '
>' (
(( )
)) *
. 

UseNLogWeb 
(  
)  !
)! "
. 
Build 
( 
) 
; 
} 
} Æ

jD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Cms.Web\Startup.cs
	namespace 	
OrchardCore
 
. 
Cms 
. 
Web 
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