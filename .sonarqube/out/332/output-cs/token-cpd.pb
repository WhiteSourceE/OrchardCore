†
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\test\OrchardCore.Tests.Pages\OrchardCore.Modules.Pages\Module.Pages\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str 2
)		 
]		 £
–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\test\OrchardCore.Tests.Pages\OrchardCore.Modules.Pages\Module.Pages\Startup.cs
	namespace 	
Module
 
. 
Pages 
{ 
public 

class 
Startup 
: 
StartupBase &
{		 
public

 
override

 
void

 
ConfigureServices

 .
(

. /
IServiceCollection

/ A
services

B J
)

J K
{ 	
services 
. 
	Configure 
< 
RazorPagesOptions 0
>0 1
(1 2
options2 9
=>: <
{ 
options 
. 
Conventions #
.# $
AddAreaFolderRoute$ 6
(6 7
$str7 E
,E F
$strG J
,J K
$strL N
)N O
;O P
} 
) 
; 
} 	
} 
} 