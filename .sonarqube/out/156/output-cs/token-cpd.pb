ﬂ
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\DeploymentPlan.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

class 
DeploymentPlan 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
List 
< 
DeploymentStep "
>" #
DeploymentSteps$ 3
{4 5
get6 9
;9 :
}; <
== >
new? B
ListC G
<G H
DeploymentStepH V
>V W
(W X
)X Y
;Y Z
} 
} ⁄ 
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\DeploymentPlanResult.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{		 
public 

class  
DeploymentPlanResult %
{ 
public  
DeploymentPlanResult #
(# $
IFileBuilder$ 0
fileBuilder1 <
,< =
RecipeDescriptor> N
recipeDescriptorO _
)_ `
{ 	
FileBuilder 
= 
fileBuilder %
;% &
Recipe 
= 
new 
JObject  
(  !
)! "
;" #
Recipe 
[ 
$str 
] 
= 
recipeDescriptor -
.- .
Name. 2
??3 5
$str6 8
;8 9
Recipe 
[ 
$str  
]  !
=" #
recipeDescriptor$ 4
.4 5
DisplayName5 @
??A C
$strD F
;F G
Recipe 
[ 
$str  
]  !
=" #
recipeDescriptor$ 4
.4 5
Description5 @
??A C
$strD F
;F G
Recipe 
[ 
$str 
] 
= 
recipeDescriptor /
./ 0
Author0 6
??7 9
$str: <
;< =
Recipe 
[ 
$str 
] 
= 
recipeDescriptor  0
.0 1
WebSite1 8
??9 ;
$str< >
;> ?
Recipe 
[ 
$str 
] 
= 
recipeDescriptor  0
.0 1
Version1 8
??9 ;
$str< >
;> ?
Recipe 
[ 
$str "
]" #
=$ %
recipeDescriptor& 6
.6 7
IsSetupRecipe7 D
;D E
Recipe 
[ 
$str 
]  
=! "
new# &
JArray' -
(- .
recipeDescriptor. >
.> ?

Categories? I
??J L
newM P
stringQ W
[W X
]X Y
{Z [
}\ ]
)] ^
;^ _
Recipe 
[ 
$str 
] 
= 
new  
JArray! '
(' (
recipeDescriptor( 8
.8 9
Tags9 =
??> @
newA D
stringE K
[K L
]L M
{N O
}P Q
)Q R
;R S
} 	
public 
JObject 
Recipe 
{ 
get  #
;# $
}% &
public   
IList   
<   
JObject   
>   
Steps   #
{  $ %
get  & )
;  ) *
}  + ,
=  - .
new  / 2
List  3 7
<  7 8
JObject  8 ?
>  ? @
(  @ A
)  A B
;  B C
public!! 
IFileBuilder!! 
FileBuilder!! '
{!!( )
get!!* -
;!!- .
}!!/ 0
public"" 
async"" 
Task"" 
FinalizeAsync"" '
(""' (
)""( )
{## 	
Recipe$$ 
[$$ 
$str$$ 
]$$ 
=$$ 
new$$ !
JArray$$" (
($$( )
Steps$$) .
)$$. /
;$$/ 0
await'' 
FileBuilder'' 
.'' 
SetFileAsync'' *
(''* +
$str''+ 8
,''8 9
Encoding'': B
.''B C
UTF8''C G
.''G H
GetBytes''H P
(''P Q
Recipe''Q W
.''W X
ToString''X `
(''` a

Formatting''a k
.''k l
Indented''l t
)''t u
)''u v
)''v w
;''w x
}(( 	
})) 
}** §
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\DeploymentStep.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

abstract 
class 
DeploymentStep (
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} 	
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\DeploymentTarget.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

class 
DeploymentTarget !
{ 
public 
DeploymentTarget 
(  
LocalizedString  /
name0 4
,4 5
LocalizedString6 E
descriptionF Q
,Q R 
RouteValueDictionaryS g
routeh m
)m n
{		 	
Name

 
=

 
name

 
;

 
Description 
= 
description %
;% &
Route 
= 
route 
; 
} 	
public 
LocalizedString 
Name #
{$ %
get& )
;) *
}+ ,
public 
LocalizedString 
Description *
{+ ,
get- 0
;0 1
}2 3
public  
RouteValueDictionary #
Route$ )
{* +
get, /
;/ 0
}1 2
} 
} Ú
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\IDeploymentPlanService.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

	interface "
IDeploymentPlanService +
{ 
Task 
< 
bool 
> (
DoesUserHavePermissionsAsync /
(/ 0
)0 1
;1 2
Task		 
<		 
bool		 
>		 -
!DoesUserHaveExportPermissionAsync		 4
(		4 5
)		5 6
;		6 7
Task

 
<

 
IEnumerable

 
<

 
string

 
>

  
>

  !*
GetAllDeploymentPlanNamesAsync

" @
(

@ A
)

A B
;

B C
Task 
< 
IEnumerable 
< 
DeploymentPlan '
>' (
>( )&
GetAllDeploymentPlansAsync* D
(D E
)E F
;F G
Task 
< 
IEnumerable 
< 
DeploymentPlan '
>' (
>( )#
GetDeploymentPlansAsync* A
(A B
paramsB H
stringI O
[O P
]P Q
deploymentPlanNamesR e
)e f
;f g
Task .
"CreateOrUpdateDeploymentPlansAsync /
(/ 0
IEnumerable0 ;
<; <
DeploymentPlan< J
>J K
deploymentPlansL [
)[ \
;\ ]
} 
} ƒ
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\IDeploymentSource.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

	interface 
IDeploymentSource &
{		 
Task

 &
ProcessDeploymentStepAsync

 '
(

' (
DeploymentStep

( 6
step

7 ;
,

; < 
DeploymentPlanResult

= Q
result

R X
)

X Y
;

Y Z
} 
} —
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\IDeploymentStepFactory.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

	interface "
IDeploymentStepFactory +
{ 
string 
Name 
{ 
get 
; 
} 
DeploymentStep 
Create 
( 
) 
;  
} 
public		 

class		 !
DeploymentStepFactory		 &
<		& '
TStep		' ,
>		, -
:		. /"
IDeploymentStepFactory		0 F
where		G L
TStep		M R
:		S T
DeploymentStep		U c
,		c d
new		e h
(		h i
)		i j
{

 
private 
static 
readonly 
string  &
TypeName' /
=0 1
typeof2 8
(8 9
TStep9 >
)> ?
.? @
Name@ D
;D E
public 
string 
Name 
=> 
TypeName &
;& '
public 
DeploymentStep 
Create $
($ %
)% &
{ 	
return 
new 
TStep 
( 
) 
; 
} 	
} 
} ç
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\IDeploymentTargetHandler.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

	interface $
IDeploymentTargetHandler -
{ 
Task 
ImportFromFileAsync  
(  !
IFileProvider! .
fileProvider/ ;
); <
;< =
}		 
}

 ”
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\IDeploymentTargetProvider.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

	interface %
IDeploymentTargetProvider .
{ 
Task 
< 
IEnumerable 
< 
DeploymentTarget )
>) *
>* +%
GetDeploymentTargetsAsync, E
(E F
)F G
;G H
}		 
}

 •
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\IFileBuilder.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

	interface 
IFileBuilder !
{ 
Task 
SetFileAsync 
( 
string  
subpath! (
,( )
Stream* 0
stream1 7
)7 8
;8 9
}		 
public 

static 
class "
IFileBuilderExtensions .
{ 
public 
static 
async 
Task  
SetFileAsync! -
(- .
this. 2
IFileBuilder3 ?
fileBuilder@ K
,K L
stringM S
subpathT [
,[ \
byte] a
[a b
]b c
contentd k
)k l
{ 	
using 
( 
var 
stream 
= 
new  #
MemoryStream$ 0
(0 1
content1 8
)8 9
)9 :
{ 
await 
fileBuilder !
.! "
SetFileAsync" .
(. /
subpath/ 6
,6 7
stream8 >
)> ?
;? @
} 
} 	
} 
} Ê
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\Properties\AssemblyInfo.cs
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
$str		 @
)		@ A
]		A B
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
]7 8Ò
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (&
AddDeploymentTargetHandler) C
<C D
TImplementationD S
>S T
(T U
this 
IServiceCollection #
serviceCollection$ 5
)5 6
where		 
TImplementation		 !
:		" #
class		$ )
,		) *$
IDeploymentTargetHandler		+ C
{

 	
serviceCollection 
. 
	AddScoped '
<' ($
IDeploymentTargetHandler( @
,@ A
TImplementationB Q
>Q R
(R S
)S T
;T U
return 
serviceCollection $
;$ %
} 	
} 
} ˙
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Deployment.Abstractions\Services\IDeploymentManager.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Services! )
{ 
public 

	interface 
IDeploymentManager '
{ 
Task		 &
ExecuteDeploymentPlanAsync		 '
(		' (
DeploymentPlan		( 6
deploymentPlan		7 E
,		E F 
DeploymentPlanResult		G [
result		\ b
)		b c
;		c d
Task

 
<

 
IEnumerable

 
<

 
DeploymentTarget

 )
>

) *
>

* +%
GetDeploymentTargetsAsync

, E
(

E F
)

F G
;

G H
Task (
ImportDeploymentPackageAsync )
() *
IFileProvider* 7
deploymentPackage8 I
)I J
;J K
} 
} 