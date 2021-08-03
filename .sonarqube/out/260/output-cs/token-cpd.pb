ı
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Abstractions\Events\ISetupEventHandler.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 
Events "
{ 
public

 

	interface

 
ISetupEventHandler

 '
{ 
Task 
Setup 
( 
IDictionary 
< 
string 
, 
object  &
>& '

properties( 2
,2 3
Action 
< 
string 
, 
string !
>! "
reportError# .
) 	
;	 

} 
} â
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Abstractions\ISetupService.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 
Services $
{ 
public

 

	interface

 
ISetupService

 "
{ 
Task 
< 
IEnumerable 
< 
RecipeDescriptor )
>) *
>* + 
GetSetupRecipesAsync, @
(@ A
)A B
;B C
Task 
< 
string 
> 

SetupAsync 
(  
SetupContext  ,
context- 4
)4 5
;5 6
} 
} Ï
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Abstractions\ISetupUserIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 
Services $
{ 
public 

	interface !
ISetupUserIdGenerator *
{ 
string 
GenerateUniqueId 
(  
)  !
;! "
} 
} ¬
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Abstractions\SetupContext.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 
Services $
{ 
public

 

class

 
SetupContext

 
{ 
public 
ShellSettings 
ShellSettings *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
IEnumerable 
< 
string !
>! "
EnabledFeatures# 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
RecipeDescriptor 
Recipe  &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
IDictionary 
< 
string !
,! "
string# )
>) *
Errors+ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public## 

Dictionary## 
<## 
string##  
,##  !
object##" (
>##( )

Properties##* 4
{##5 6
get##7 :
;##: ;
set##< ?
;##? @
}##A B
=##C D
new##E H

Dictionary##I S
<##S T
string##T Z
,##Z [
object##\ b
>##b c
(##c d
)##d e
;##e f
}$$ 
}%% 