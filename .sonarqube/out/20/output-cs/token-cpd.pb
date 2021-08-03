ì

âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\DatabaseProvider.cs
	namespace 	
OrchardCore
 
. 
Data 
{ 
public 

class 
DatabaseProvider !
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
HasConnectionString '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
HasTablePrefix "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
bool		 
	IsDefault		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 "
SampleConnectionString

 ,
{

- .
get

/ 2
;

2 3
set

4 7
;

7 8
}

9 :
} 
} ‚
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\DataMigration.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Migration $
{ 
public 

abstract 
class 
DataMigration '
:( )
IDataMigration* 8
{ 
public 
ISchemaBuilder 
SchemaBuilder +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} º
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Documents\Document.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public 

class 
Document 
: 
	IDocument %
{ 
public 
string 

Identifier  
{! "
get# &
;& '
set( +
;+ ,
}- .
}		 
}

 °
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Documents\DocumentStoreCommitException.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public 

class (
DocumentStoreCommitException -
:. /
	Exception0 9
{		 
public (
DocumentStoreCommitException +
(+ ,
string, 2
message3 :
): ;
:< =
base> B
(B C
messageC J
)J K
{ 	
} 	
public (
DocumentStoreCommitException +
(+ ,
string, 2
message3 :
,: ;
	Exception< E
innerExceptionF T
)T U
:V W
baseX \
(\ ]
message] d
,d e
innerExceptionf t
)t u
{ 	
} 	
} 
} ˛
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Documents\DocumentStoreCommitFailureDelegate.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public		 

delegate		 
Task		 .
"DocumentStoreCommitFailureDelegate		 ;
(		; <
	Exception		< E
	exception		F O
)		O P
;		P Q
}

 –
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Documents\DocumentStoreCommitSuccessDelegate.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public 

delegate 
Task .
"DocumentStoreCommitSuccessDelegate ;
(; <
)< =
;= >
}		 â
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Documents\FileDocumentStoreAttribute.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
,* +
AllowMultiple, 9
=: ;
false< A
,A B
	InheritedC L
=M N
trueO S
)S T
]T U
public 

class &
FileDocumentStoreAttribute +
:, -
	Attribute. 7
{ 
public 
string 
FileName 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 à
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Documents\IDocument.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public 

	interface 
	IDocument 
{ 
string 

Identifier 
{ 
get 
;  
set! $
;$ %
}& '
}		 
}

 Ö
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Documents\IDocumentStore.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public

 

	interface

 
IDocumentStore

 #
{ 
Task 
< 
T 
> #
GetOrCreateMutableAsync '
<' (
T( )
>) *
(* +
Func+ /
</ 0
Task0 4
<4 5
T5 6
>6 7
>7 8
factoryAsync9 E
=F G
nullH L
)L M
whereN S
TT U
:V W
classX ]
,] ^
new_ b
(b c
)c d
;d e
Task 
< 
( 
bool 
, 
T 
) 
> %
GetOrCreateImmutableAsync 1
<1 2
T2 3
>3 4
(4 5
Func5 9
<9 :
Task: >
<> ?
T? @
>@ A
>A B
factoryAsyncC O
=P Q
nullR V
)V W
whereX ]
T^ _
:` a
classb g
,g h
newi l
(l m
)m n
;n o
Task 
UpdateAsync 
< 
T 
> 
( 
T 
document &
,& '
Func( ,
<, -
T- .
,. /
Task0 4
>4 5
updateCache6 A
,A B
boolC G
checkConcurrencyH X
=Y Z
false[ `
)` a
;a b
void!! 
Cancel!! 
(!! 
)!! 
;!! 
void&& 
AfterCommitSuccess&& 
<&&  
T&&  !
>&&! "
(&&" #.
"DocumentStoreCommitSuccessDelegate&&# E
afterCommit&&F Q
)&&Q R
;&&R S
void++ 
AfterCommitFailure++ 
<++  
T++  !
>++! "
(++" #.
"DocumentStoreCommitFailureDelegate++# E
afterCommit++F Q
)++Q R
;++R S
Task00 
CommitAsync00 
(00 
)00 
;00 
}11 
}22 ª
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Documents\IFileDocumentStore.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public 

	interface 
IFileDocumentStore '
:( )
IDocumentStore* 8
{ 
}		 
}

 ì
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\IDataMigration.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Migration $
{ 
public 

	interface 
IDataMigration #
{		 
ISchemaBuilder 
SchemaBuilder $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ¸
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\IDataMigrationManager.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Migration $
{ 
public		 

	interface		 !
IDataMigrationManager		 *
{

 
Task 
< 
IEnumerable 
< 
string 
>  
>  !*
GetFeaturesThatNeedUpdateAsync" @
(@ A
)A B
;B C
Task "
UpdateAllFeaturesAsync #
(# $
)$ %
;% &
Task 
UpdateAsync 
( 
string 
feature  '
)' (
;( )
Task 
UpdateAsync 
( 
IEnumerable $
<$ %
string% +
>+ ,
features- 5
)5 6
;6 7
Task%% 
	Uninstall%% 
(%% 
string%% 
feature%% %
)%%% &
;%%& '
}&& 
}'' À
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\IDbConnectionAccessor.cs
	namespace 	
OrchardCore
 
. 
Data 
{ 
public 

	interface !
IDbConnectionAccessor *
{		 
DbConnection 
CreateConnection %
(% &
)& '
;' (
} 
} è
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\IScopedIndexProvider.cs
	namespace 	
OrchardCore
 
. 
Data 
{ 
public		 

	interface		  
IScopedIndexProvider		 )
:		* +
IIndexProvider		, :
{

 
} 
} ‡
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\Properties\AssemblyInfo.cs
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
$str		 :
)		: ;
]		; <
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
]7 8„
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data.Abstractions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Data 
{ 
public		 

static		 
class		 '
ServiceCollectionExtensions		 3
{

 
public 
static 
IServiceCollection (
TryAddDataProvider) ;
(; <
this< @
IServiceCollectionA S
servicesT \
,\ ]
string^ d
namee i
,i j
stringk q
valuer w
,w x
booly } 
hasConnectionString	~ ë
,
ë í
bool
ì ó
hasTablePrefix
ò ¶
,
¶ ß
bool
® ¨
	isDefault
≠ ∂
,
∂ ∑
string
∏ æ$
sampleConnectionString
ø ’
=
÷ ◊
$str
ÿ ⁄
)
⁄ €
{ 	
for 
( 
var 
i 
= 
services !
.! "
Count" '
-( )
$num* +
;+ ,
i- .
>=/ 1
$num2 3
;3 4
i5 6
--6 8
)8 9
{ 
var 
entry 
= 
services $
[$ %
i% &
]& '
;' (
if 
( 
entry 
. "
ImplementationInstance 0
!=1 3
null4 8
)8 9
{ 
var 
databaseProvider (
=) *
entry+ 0
.0 1"
ImplementationInstance1 G
asH J
DatabaseProviderK [
;[ \
if 
( 
databaseProvider (
!=) +
null, 0
&&1 3
String4 :
.: ;
Equals; A
(A B
databaseProviderB R
.R S
NameS W
,W X
nameY ]
,] ^
StringComparison_ o
.o p
OrdinalIgnoreCase	p Å
)
Å Ç
)
Ç É
{ 
services    
.    !
RemoveAt  ! )
(  ) *
i  * +
)  + ,
;  , -
}!! 
}"" 
}## 
services%% 
.%% 
AddSingleton%% !
(%%! "
new%%" %
DatabaseProvider%%& 6
{%%7 8
Name%%9 =
=%%> ?
name%%@ D
,%%D E
Value%%F K
=%%L M
value%%N S
,%%S T
HasConnectionString%%U h
=%%i j
hasConnectionString%%k ~
,%%~ 
HasTablePrefix
%%Ä é
=
%%è ê
hasTablePrefix
%%ë ü
,
%%ü †
	IsDefault
%%° ™
=
%%´ ¨
	isDefault
%%≠ ∂
,
%%∂ ∑$
SampleConnectionString
%%∏ Œ
=
%%œ –$
sampleConnectionString
%%— Á
}
%%Ë È
)
%%È Í
;
%%Í Î
return'' 
services'' 
;'' 
}(( 	
})) 
}** 