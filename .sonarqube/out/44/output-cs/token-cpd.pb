�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Mvc.HelloWorld\Controllers\HomeController.cs
	namespace 	

HelloWorld
 
. 
Controllers  
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public 

Index "
(" #
)# $
{ 	
return		 
View		 
(		 
)		 
;		 
}

 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Mvc.HelloWorld\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
) 
] �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Mvc.HelloWorld\Properties\AssemblyInfo.cs
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
$str		 +
)		+ ,
]		, -
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
]7 8�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Mvc.HelloWorld\Startup.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

HelloWorld $
{ 
public		 

class		 
Startup		 
:		 
StartupBase		 &
{

 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public
Startup
(
IConfiguration

)
{ 	
_configuration 
= 

;* +
} 	
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
builder; B
,B C!
IEndpointRouteBuilderD Y
routesZ `
,` a
IServiceProviderb r
serviceProvider	s �
)
� �
{ 	
if 
( 
string 
. 

($ %
_configuration% 3
[3 4
$str4 <
]< =
)= >
)> ?
{ 
throw 
new 
	Exception #
(# $
$str$ (
)( )
;) *
} 
routes 
. "
MapAreaControllerRoute )
( 
name 
: 
$str 
, 
areaName 
: 
$str 6
,6 7
pattern 
: 
$str 
, 
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
}F G
) 
;
}   	
}!! 
}"" 