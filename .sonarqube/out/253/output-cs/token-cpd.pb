Ç	
ˆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Core\CommonPermissions.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public		 

class		 
CommonPermissions		 "
{

 
public 
static 
readonly 

Permission ) 
ManageDeploymentPlan* >
=? @
newA D

PermissionE O
(O P
$strP f
,f g
$str	h 
)
 ‚
;
‚ ƒ
public 
static 
readonly 

Permission )
Export* 0
=1 2
new3 6

Permission7 A
(A B
$strB J
,J K
$strL Y
)Y Z
;Z [
public 
static 
readonly 

Permission )
Import* 0
=1 2
new3 6

Permission7 A
(A B
$strB J
,J K
$strL Y
,Y Z
isSecurityCritical[ m
:m n
trueo s
)s t
;t u
} 
} «
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Core\Mvc\DeleteFileResultFilter.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Core! %
.% &
Mvc& )
{ 
public 

class "
DeleteFileResultFilter '
:( )!
ResultFilterAttribute* ?
{ 
public		 
override		 
void		 
OnResultExecuted		 -
(		- .!
ResultExecutedContext		. C
context		D K
)		K L
{

 	
var 
result 
= 
context  
.  !
Result! '
as( *
PhysicalFileResult+ =
;= >
if 
( 
result 
== 
null 
) 
{ 
return 
; 
} 
var 
fileInfo 
= 
new 
FileInfo '
(' (
result( .
.. /
FileName/ 7
)7 8
;8 9
if 
( 
fileInfo 
. 
Exists 
)  
{ 
fileInfo 
. 
Delete 
(  
)  !
;! "
} 
} 	
} 
} Þ
ŽD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Core\Properties\AssemblyInfo.cs
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
$str		 8
)		8 9
]		9 :
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
]7 8¤
’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Core\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Core! %
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public		 
static		 
IServiceCollection		 (!
AddDeploymentServices		) >
(		> ?
this		? C
IServiceCollection		D V
services		W _
)		_ `
{

 	
services 
. 
	AddScoped 
< 
IDeploymentManager 1
,1 2
DeploymentManager3 D
>D E
(E F
)F G
;G H
return 
services 
; 
} 	
} 
} ô!
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Core\Services\DeploymentManager.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Core! %
.% &
Services& .
{ 
public 

class 
DeploymentManager "
:# $
IDeploymentManager% 7
{		 
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
IDeploymentSource

% 6
>

6 7
_deploymentSources

8 J
;

J K
private 
readonly 
IEnumerable $
<$ %%
IDeploymentTargetProvider% >
>> ?&
_deploymentTargetProviders@ Z
;Z [
private 
readonly 
IEnumerable $
<$ %$
IDeploymentTargetHandler% =
>= >%
_deploymentTargetHandlers? X
;X Y
public 
DeploymentManager  
(  !
IEnumerable 
< 
IDeploymentSource )
>) *
deploymentSources+ <
,< =
IEnumerable 
< %
IDeploymentTargetProvider 1
>1 2%
deploymentTargetProviders3 L
,L M
IEnumerable 
< $
IDeploymentTargetHandler 0
>0 1$
deploymentTargetHandlers2 J
)J K
{ 	
_deploymentSources 
=  
deploymentSources! 2
;2 3&
_deploymentTargetProviders &
=' (%
deploymentTargetProviders) B
;B C%
_deploymentTargetHandlers %
=& '$
deploymentTargetHandlers( @
;@ A
} 	
public 
async 
Task &
ExecuteDeploymentPlanAsync 4
(4 5
DeploymentPlan5 C
deploymentPlanD R
,R S 
DeploymentPlanResultT h
resulti o
)o p
{ 	
foreach 
( 
var 
step 
in  
deploymentPlan! /
./ 0
DeploymentSteps0 ?
)? @
{ 
foreach 
( 
var 
source #
in$ &
_deploymentSources' 9
)9 :
{ 
await 
source  
.  !&
ProcessDeploymentStepAsync! ;
(; <
step< @
,@ A
resultB H
)H I
;I J
} 
}   
await"" 
result"" 
."" 
FinalizeAsync"" &
(""& '
)""' (
;""( )
}## 	
public%% 
async%% 
Task%% 
<%% 
IEnumerable%% %
<%%% &
DeploymentTarget%%& 6
>%%6 7
>%%7 8%
GetDeploymentTargetsAsync%%9 R
(%%R S
)%%S T
{&& 	
var'' 
tasks'' 
='' 
new'' 
List''  
<''  !
DeploymentTarget''! 1
>''1 2
(''2 3
)''3 4
;''4 5
foreach)) 
()) 
var)) 
provider)) !
in))" $&
_deploymentTargetProviders))% ?
)))? @
{** 
tasks++ 
.++ 
AddRange++ 
(++ 
await++ $
provider++% -
.++- .%
GetDeploymentTargetsAsync++. G
(++G H
)++H I
)++I J
;++J K
},, 
return.. 
tasks.. 
;.. 
}// 	
public11 
async11 
Task11 (
ImportDeploymentPackageAsync11 6
(116 7
IFileProvider117 D
deploymentPackage11E V
)11V W
{22 	
foreach33 
(33 
var33 #
deploymentTargetHandler33 0
in331 3%
_deploymentTargetHandlers334 M
)33M N
{44 
await66 #
deploymentTargetHandler66 -
.66- .
ImportFromFileAsync66. A
(66A B
deploymentPackage66B S
)66S T
;66T U
}77 
}88 	
}99 
}:: £
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Core\Services\TemporaryFileBuilder.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Core! %
.% &
Services& .
{ 
public 

class  
TemporaryFileBuilder %
:& '
IFileBuilder( 4
,4 5
IDisposable6 A
{ 
private		 
readonly		 
bool		 
_deleteOnDispose		 .
;		. /
public  
TemporaryFileBuilder #
(# $
bool$ (
deleteOnDispose) 8
=9 :
true; ?
)? @
{ 	
Folder 
= 
PathExtensions #
.# $
Combine$ +
(+ ,
Path, 0
.0 1
GetTempPath1 <
(< =
)= >
,> ?
Path@ D
.D E
GetRandomFileNameE V
(V W
)W X
)X Y
;Y Z
_deleteOnDispose 
= 
deleteOnDispose .
;. /
} 	
public 
string 
Folder 
{ 
get "
;" #
}$ %
public 
void 
Dispose 
( 
) 
{ 	
if 
( 
_deleteOnDispose  
)  !
{ 
if 
( 
	Directory 
. 
Exists $
($ %
Folder% +
)+ ,
), -
{ 
	Directory 
. 
Delete $
($ %
Folder% +
,+ ,
true- 1
)1 2
;2 3
} 
} 
} 	
public 
async 
Task 
SetFileAsync &
(& '
string' -
subpath. 5
,5 6
Stream7 =
stream> D
)D E
{ 	
if   
(   
subpath   
.   

StartsWith   "
(  " #
$char  # &
)  & '
)  ' (
{!! 
throw"" 
new"" %
InvalidOperationException"" 3
(""3 4
$str""4 P
)""P Q
;""Q R
}## 
var%% 
fullname%% 
=%% 
PathExtensions%% )
.%%) *
Combine%%* 1
(%%1 2
Folder%%2 8
,%%8 9
subpath%%: A
)%%A B
;%%B C
var'' 
	directory'' 
='' 
new'' 
FileInfo''  (
(''( )
fullname'') 1
)''1 2
.''2 3
	Directory''3 <
;''< =
if)) 
()) 
!)) 
	directory)) 
.)) 
Exists)) !
)))! "
{** 
	directory++ 
.++ 
Create++  
(++  !
)++! "
;++" #
},, 
using.. 
(.. 
var.. 
fs.. 
=.. 
File..  
...  !
Create..! '
(..' (
fullname..( 0
,..0 1
$num..2 3
*..4 5
$num..6 :
,..: ;
FileOptions..< G
...G H
None..H L
)..L M
)..M N
{// 
await00 
stream00 
.00 
CopyToAsync00 (
(00( )
fs00) +
)00+ ,
;00, -
}11 
}22 	
public44 
override44 
string44 
ToString44 '
(44' (
)44( )
{55 	
return66 
Folder66 
;66 
}77 	
}88 
}99 