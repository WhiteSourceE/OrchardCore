≈

ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Events\IRecipeEventHandler.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Events $
{ 
public 

	interface 
IRecipeEventHandler (
{ 
Task  
RecipeExecutingAsync !
(! "
string" (
executionId) 4
,4 5
RecipeDescriptor6 F

descriptorG Q
)Q R
;R S
Task $
RecipeStepExecutingAsync %
(% &"
RecipeExecutionContext& <
context= D
)D E
;E F
Task #
RecipeStepExecutedAsync $
($ %"
RecipeExecutionContext% ;
context< C
)C D
;D E
Task 
RecipeExecutedAsync  
(  !
string! '
executionId( 3
,3 4
RecipeDescriptor5 E

descriptorF P
)P Q
;Q R
Task  
ExecutionFailedAsync !
(! "
string" (
executionId) 4
,4 5
RecipeDescriptor6 F

descriptorG Q
)Q R
;R S
} 
} «
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Models\ConfigurationContext.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Models $
{ 
public 

class  
ConfigurationContext %
{ 
	protected  
ConfigurationContext &
(& '
JObject' . 
configurationElement/ C
)C D
{ 	 
ConfigurationElement		  
=		! " 
configurationElement		# 7
;		7 8
}

 	
public 
JObject  
ConfigurationElement +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ¶
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Models\RecipeDescriptor.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Models $
{ 
public 

class 
RecipeDescriptor !
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
DisplayName		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
Author 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
WebSite 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
IsSetupRecipe !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
	ExportUtc "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
[ 
] 

Categories "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
[ 
] 
Tags 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
RequireNewScope #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
true4 8
;8 9
public 
string 
BasePath 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
	IFileInfo 
RecipeFileInfo '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
IFileProvider 
FileProvider )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ©
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Models\RecipeEnvironmentFeature.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Models $
{ 
public 

class $
RecipeEnvironmentFeature )
{ 
public 

Dictionary 
< 
string  
,  !
object" (
>( )

Properties* 4
{5 6
get7 :
;: ;
}< =
=> ?
new@ C

DictionaryD N
<N O
stringO U
,U V
objectW ]
>] ^
(^ _
)_ `
;` a
} 
}		 í
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Models\RecipeExecutionContext.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Models $
{ 
public 

class "
RecipeExecutionContext '
{ 
public 
string 
ExecutionId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
object		 
Environment		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
JObject 
Step 
{ 
get !
;! "
set# &
;& '
}( )
public 
RecipeDescriptor 
RecipeDescriptor  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
IEnumerable 
< 
RecipeDescriptor +
>+ ,
InnerRecipes- 9
{: ;
get< ?
;? @
setA D
;D E
}F G
} 
} Ñ
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Models\RecipeExecutionStepConfigurationContext.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Models $
{ 
public 

class 3
'RecipeExecutionStepConfigurationContext 8
:9 : 
ConfigurationContext; O
{ 
public 3
'RecipeExecutionStepConfigurationContext 6
(6 7
JObject7 > 
configurationElement? S
)S T
:U V
baseW [
([ \ 
configurationElement\ p
)p q
{ 	
}		 	
}

 
} ‡
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Models\RecipeResult.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Models $
{ 
public 

class 
RecipeResult 
{ 
public 
string 
ExecutionId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
List		 
<		 
RecipeStepResult		 $
>		$ %
Steps		& +
{		, -
get		. 1
;		1 2
set		3 6
;		6 7
}		8 9
=		: ;
new		< ?
List		@ D
<		D E
RecipeStepResult		E U
>		U V
(		V W
)		W X
;		X Y
public

 
bool

 
IsCompleted

 
=>

  "
Steps

# (
.

( )
All

) ,
(

, -
s

- .
=>

/ 1
s

2 3
.

3 4
IsCompleted

4 ?
)

? @
;

@ A
public 
bool 
IsSuccessful  
=>! #
Steps$ )
.) *
All* -
(- .
s. /
=>0 2
s3 4
.4 5
IsCompleted5 @
&&A C
sD E
.E F
IsSuccessfulF R
)R S
;S T
} 
} ˇ
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Models\RecipeStepResult.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Models $
{ 
public 

class 
RecipeStepResult !
{ 
public 
string 
StepName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
IsCompleted 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
IsSuccessful  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ErrorMessage "
{# $
get% (
;( )
set* -
;- .
}/ 0
}		 
}

 €
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Recipes 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection ("
AddRecipeExecutionStep) ?
<? @
TImplementation@ O
>O P
(P Q
this		 
IServiceCollection		 #
serviceCollection		$ 5
)		5 6
where

 
TImplementation

 !
:

" #
class

$ )
,

) *
IRecipeStepHandler

+ =
{ 	
serviceCollection 
. 
	AddScoped '
<' (
IRecipeStepHandler( :
,: ;
TImplementation< K
>K L
(L M
)M N
;N O
return 
serviceCollection $
;$ %
} 	
} 
} Ú
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Services\IRecipeEnvironmentProvider.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

	interface &
IRecipeEnvironmentProvider /
{ 
Task $
PopulateEnvironmentAsync %
(% &
IDictionary& 1
<1 2
string2 8
,8 9
object: @
>@ A
environmentB M
)M N
;N O
int		 
Order		 
{		 
get		 
;		 
}		 
}

 
} ®
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Services\IRecipeExecutionStep.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public

 

	interface

 
IRecipeStepHandler

 '
{ 
Task 
ExecuteAsync 
( "
RecipeExecutionContext 0
context1 8
)8 9
;9 :
} 
} ˝
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Services\IRecipeExecutor.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

	interface 
IRecipeExecutor $
{		 
Task

 
<

 
string

 
>

 
ExecuteAsync

 !
(

! "
string

" (
executionId

) 4
,

4 5
RecipeDescriptor

6 F
recipeDescriptor

G W
,

W X
IDictionary

Y d
<

d e
string

e k
,

k l
object

l r
>

r s
environment

t 
,	

 Ä
CancellationToken


Å í
cancellationToken


ì §
)


§ •
;


• ¶
} 
} „
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Services\IRecipeHarvester.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

	interface 
IRecipeHarvester %
{ 
Task 
< 
IEnumerable 
< 
RecipeDescriptor )
>) *
>* +
HarvestRecipesAsync, ?
(? @
)@ A
;A B
} 
} ã
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Services\IRecipeMigrator.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

	interface 
IRecipeMigrator $
{ 
Task 
< 
string 
> 
ExecuteAsync !
(! "
string" (
recipeFileName) 7
,7 8
IDataMigration9 G
	migrationH Q
)Q R
;R S
}		 
}

 ›
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Services\IRecipeReader.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

	interface 
IRecipeReader "
{ 
Task		 
<		 
RecipeDescriptor		 
>		 
GetRecipeDescriptor		 2
(		2 3
string		3 9
recipeBasePath		: H
,		H I
	IFileInfo		J S
recipeFileInfo		T b
,		b c
IFileProvider		d q
fileProvider		r ~
)		~ 
;			 Ä
}

 
} Ë
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Abstractions\Services\UpdateRecipeExecutionStepContext.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

class ,
 UpdateRecipeExecutionStepContext 1
{ 
public 
JObject 
RecipeDocument %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
JObject 
Step 
{ 
get !
;! "
set# &
;& '
}( )
}		 
}

 