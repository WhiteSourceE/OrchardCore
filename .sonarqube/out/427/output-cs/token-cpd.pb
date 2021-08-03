¶

jD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Mvc.Web\Program.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Web 
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
=>5 7
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7

webBuilder8 B
.B C

UseStartupC M
<M N
StartupN U
>U V
(V W
)W X
)X Y
. 
Build 
( 
) 
; 
} 
} ˆ
jD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Mvc.Web\Startup.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Web 
{ 
public 

class 
Startup 
{ 
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddOrchardCore 
(  
)  !
. 
AddMvc 
( 
) 
; 
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IHostEnvironment7 G
envH K
)K L
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. %
UseDeveloperExceptionPage -
(- .
). /
;/ 0
} 
app 
. 
UseStaticFiles 
( 
)  
;  !
app 
. 
UseOrchardCore 
( 
)  
;  !
} 	
}   
}!! 