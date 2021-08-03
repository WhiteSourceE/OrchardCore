˘
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\BuildFieldIndexContext.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

class "
BuildFieldIndexContext '
:( )!
BuildPartIndexContext* ?
{ 
public		 "
BuildFieldIndexContext		 %
(		% &
DocumentIndex

 
documentIndex

 '
,

' (
ContentItem 
contentItem #
,# $
IList 
< 
string 
> 
keys 
, 
ContentPart 
contentPart #
,# $%
ContentTypePartDefinition %
typePartDefinition& 8
,8 9&
ContentPartFieldDefinition &
partFieldDefinition' :
,: ; 
ContentIndexSettings  
settings! )
)) *
: 
base 
( 
documentIndex  
,  !
contentItem" -
,- .
keys/ 3
,3 4
typePartDefinition5 G
,G H
settingsI Q
)Q R
{ 	&
ContentPartFieldDefinition &
=' (
partFieldDefinition) <
;< =
ContentPart 
= 
contentPart %
;% &
} 	
public 
ContentPart 
ContentPart &
{' (
get) ,
;, -
}. /
public &
ContentPartFieldDefinition )&
ContentPartFieldDefinition* D
{E F
getG J
;J K
}L M
} 
} …

éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\BuildIndexContext.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

class 
BuildIndexContext "
{ 
public 
BuildIndexContext  
(  !
DocumentIndex		 
documentIndex		 '
,		' (
ContentItem

 
contentItem

 #
,

# $
IList 
< 
string 
> 
keys 
) 
{ 	
ContentItem 
= 
contentItem %
;% &
DocumentIndex 
= 
documentIndex )
;) *
Keys 
= 
keys 
; 
} 	
public 
IList 
< 
string 
> 
Keys !
{" #
get$ '
;' (
}) *
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
}. /
public 
DocumentIndex 
DocumentIndex *
{+ ,
get- 0
;0 1
}2 3
} 
} Å
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\BuildPartIndexContext.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

class !
BuildPartIndexContext &
:' (
BuildIndexContext) :
{ 
public		 !
BuildPartIndexContext		 $
(		$ %
DocumentIndex

 
documentIndex

 '
,

' (
ContentItem 
contentItem #
,# $
IList 
< 
string 
> 
keys 
, %
ContentTypePartDefinition %
typePartDefinition& 8
,8 9 
ContentIndexSettings  
settings! )
)) *
: 
base 
( 
documentIndex  
,  !
contentItem" -
,- .
keys/ 3
)3 4
{ 	%
ContentTypePartDefinition %
=& '
typePartDefinition( :
;: ;
Settings 
= 
settings 
;  
} 	
public %
ContentTypePartDefinition (%
ContentTypePartDefinition) B
{C D
getE H
;H I
}J K
public  
ContentIndexSettings #
Settings$ ,
{- .
get/ 2
;2 3
}4 5
} 
} ë%
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\ContentFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

abstract 
class $
ContentFieldIndexHandler 2
<2 3
TField3 9
>9 :
:; <%
IContentFieldIndexHandler= V
whereW \
TField] c
:d e
ContentFieldf r
{ 
Task %
IContentFieldIndexHandler &
.& '
BuildIndexAsync' 6
(6 7
ContentPart7 B
contentPartC N
,N O%
ContentTypePartDefinitionP i
typePartDefinitionj |
,| }'
ContentPartFieldDefinition	~ ò!
partFieldDefinition
ô ¨
,
¨ ≠
BuildIndexContext
Æ ø
context
¿ «
,
« »"
ContentIndexSettings
… ›
settings
ﬁ Ê
)
Ê Á
{ 	
if 
( 
! 
string 
. 
Equals 
( 
typeof %
(% &
TField& ,
), -
.- .
Name. 2
,2 3
partFieldDefinition4 G
.G H
FieldDefinitionH W
.W X
NameX \
)\ ]
&&^ `
! 
string 
. 
Equals 
( 
nameof $
($ %
ContentField% 1
)1 2
,2 3
partFieldDefinition4 G
.G H
FieldDefinitionH W
.W X
NameX \
)\ ]
)] ^
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
var 
field 
= 
contentPart #
.# $
Get$ '
<' (
TField( .
>. /
(/ 0
partFieldDefinition0 C
.C D
NameD H
)H I
;I J
if 
( 
field 
!= 
null 
) 
{ 
var 
keys 
= 
new 
List #
<# $
string$ *
>* +
(+ ,
), -
;- .
foreach 
( 
var 
key  
in! #
context$ +
.+ ,
Keys, 0
)0 1
{ 
keys 
. 
Add 
( 
$" 
{  
key  #
}# $
.$ %
{% &
partFieldDefinition& 9
.9 :
Name: >
}> ?
"? @
)@ A
;A B
} 
if 
( 
! 
keys 
. 
Contains "
(" #
$"# %
{% &
typePartDefinition& 8
.8 9
Name9 =
}= >
.> ?
{? @
partFieldDefinition@ S
.S T
NameT X
}X Y
"Y Z
)Z [
)[ \
{   
keys!! 
.!! 
Add!! 
(!! 
$"!! 
{!!  
typePartDefinition!!  2
.!!2 3
Name!!3 7
}!!7 8
.!!8 9
{!!9 :
partFieldDefinition!!: M
.!!M N
Name!!N R
}!!R S
"!!S T
)!!T U
;!!U V
}"" 
var$$ "
buildFieldIndexContext$$ *
=$$+ ,
new$$- 0"
BuildFieldIndexContext$$1 G
($$G H
context$$H O
.$$O P
DocumentIndex$$P ]
,$$] ^
context$$_ f
.$$f g
ContentItem$$g r
,$$r s
keys$$t x
,$$x y
contentPart	$$z Ö
,
$$Ö Ü 
typePartDefinition
$$á ô
,
$$ô ö!
partFieldDefinition
$$õ Æ
,
$$Æ Ø
settings
$$∞ ∏
)
$$∏ π
;
$$π ∫
return&& 
BuildIndexAsync&& &
(&&& '
field&&' ,
,&&, -"
buildFieldIndexContext&&. D
)&&D E
;&&E F
}'' 
return)) 
Task)) 
.)) 
CompletedTask)) %
;))% &
}** 	
public,, 
abstract,, 
Task,, 
BuildIndexAsync,, ,
(,,, -
TField,,- 3
field,,4 9
,,,9 :"
BuildFieldIndexContext,,; Q
context,,R Y
),,Y Z
;,,Z [
}-- 
}.. ∞
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\ContentIndexSettings.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

class  
ContentIndexSettings %
{ 
public 
bool 
Included 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
bool		 
Stored		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
bool

 
Analyzed

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public  
DocumentIndexOptions #
	ToOptions$ -
(- .
). /
{ 	
var 
options 
=  
DocumentIndexOptions .
.. /
None/ 3
;3 4
if 
( 
Stored 
) 
{ 
options 
|=  
DocumentIndexOptions /
./ 0
Store0 5
;5 6
} 
if 
( 
Analyzed 
) 
{ 
options 
|=  
DocumentIndexOptions /
./ 0
Analyze0 7
;7 8
} 
return 
options 
; 
} 	
} 
} ∫
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\ContentPartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

abstract 
class #
ContentPartIndexHandler 1
<1 2
TPart2 7
>7 8
:9 :$
IContentPartIndexHandler; S
whereT Y
TPartZ _
:` a
ContentPartb m
{ 
Task $
IContentPartIndexHandler %
.% &
BuildIndexAsync& 5
(5 6
ContentPart6 A
contentPartB M
,M N%
ContentTypePartDefinitionO h
typePartDefinitioni {
,{ |
BuildIndexContext	} é
context
è ñ
,
ñ ó"
ContentIndexSettings
ò ¨
settings
≠ µ
)
µ ∂
{ 	
var 
part 
= 
contentPart "
as# %
TPart& +
;+ ,
if 
( 
part 
== 
null 
) 
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
var 
keys 
= 
new 
List 
<  
string  &
>& '
(' (
)( )
;) *
keys 
. 
Add 
( 
typePartDefinition '
.' (
Name( ,
), -
;- .
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
keys 
. 
Add 
( 
$" 
{ 
key 
}  
.  !
{! "
typePartDefinition" 4
.4 5
Name5 9
}9 :
": ;
); <
;< =
} 
var !
buildPartIndexContext %
=& '
new( +!
BuildPartIndexContext, A
(A B
contextB I
.I J
DocumentIndexJ W
,W X
contextY `
.` a
ContentItema l
,l m
keysn r
,r s
typePartDefinition	t Ü
,
Ü á
settings
à ê
)
ê ë
;
ë í
return   
BuildIndexAsync   "
(  " #
part  # '
,  ' (!
buildPartIndexContext  ) >
)  > ?
;  ? @
}!! 	
public## 
abstract## 
Task## 
BuildIndexAsync## ,
(##, -
TPart##- 2
part##3 7
,##7 8!
BuildPartIndexContext##9 N
context##O V
)##V W
;##W X
}$$ 
}%% ô
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\DocumentIndexOptions.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
[ 
Flags 

]
 
public 

enum  
DocumentIndexOptions $
{ 
None 
= 
$num 
, 
Store		 
=		 
$num		 
,		 
Analyze

 
=

 
$num

 
,

 
Sanitize 
= 
$num 
} 
} Õ
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\IContentFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

	interface %
IContentFieldIndexHandler .
{ 
Task 
BuildIndexAsync 
( 
ContentPart (
contentPart) 4
,4 5%
ContentTypePartDefinition6 O
typePartDefinitionP b
,b c&
ContentPartFieldDefinitiond ~ 
partFieldDefinition	 í
,
í ì
BuildIndexContext
î •
context
¶ ≠
,
≠ Æ"
ContentIndexSettings
Ø √
settings
ƒ Ã
)
Ã Õ
;
Õ Œ
} 
} Ñ
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\IContentItemIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

	interface $
IContentItemIndexHandler -
{		 
Task

 
BuildIndexAsync

 
(

 
BuildIndexContext

 .
context

/ 6
)

6 7
;

7 8
} 
} È
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\IContentPartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

	interface $
IContentPartIndexHandler -
{ 
Task 
BuildIndexAsync 
( 
ContentPart (
contentPart) 4
,4 5%
ContentTypePartDefinition6 O
typePartDefinitionP b
,b c
BuildIndexContextd u
contextv }
,} ~!
ContentIndexSettings	 ì
settings
î ú
)
ú ù
;
ù û
} 
} Õ5
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\IDocumentIndex.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

class 
DocumentIndex 
{		 
public

 
DocumentIndex

 
(

 
string

 #
contentItemId

$ 1
)

1 2
{ 	
ContentItemId 
= 
contentItemId )
;) *
} 	
public 
List 
< 
DocumentIndexEntry &
>& '
Entries( /
{0 1
get2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
DocumentIndexEntryD V
>V W
(W X
)X Y
;Y Z
public 
void 
Set 
( 
string 
name #
,# $
string% +
value, 1
,1 2 
DocumentIndexOptions3 G
optionsH O
)O P
{ 	
Entries 
. 
Add 
( 
new 
DocumentIndexEntry .
(. /
name/ 3
,3 4
value5 :
,: ;
Types< A
.A B
TextB F
,F G
optionsH O
)O P
)P Q
;Q R
} 	
public 
void 
Set 
( 
string 
name #
,# $
IHtmlContent% 1
value2 7
,7 8 
DocumentIndexOptions9 M
optionsN U
)U V
{ 	
Entries 
. 
Add 
( 
new 
DocumentIndexEntry .
(. /
name/ 3
,3 4
value5 :
,: ;
Types< A
.A B
TextB F
,F G
optionsH O
)O P
)P Q
;Q R
} 	
public 
void 
Set 
( 
string 
name #
,# $
DateTimeOffset% 3
?3 4
value5 :
,: ; 
DocumentIndexOptions< P
optionsQ X
)X Y
{ 	
Entries 
. 
Add 
( 
new 
DocumentIndexEntry .
(. /
name/ 3
,3 4
value5 :
,: ;
Types< A
.A B
DateTimeB J
,J K
optionsL S
)S T
)T U
;U V
} 	
public   
void   
Set   
(   
string   
name   #
,  # $
int  % (
?  ( )
value  * /
,  / 0 
DocumentIndexOptions  1 E
options  F M
)  M N
{!! 	
Entries"" 
."" 
Add"" 
("" 
new"" 
DocumentIndexEntry"" .
("". /
name""/ 3
,""3 4
value""5 :
,"": ;
Types""< A
.""A B
Integer""B I
,""I J
options""K R
)""R S
)""S T
;""T U
}## 	
public%% 
void%% 
Set%% 
(%% 
string%% 
name%% #
,%%# $
bool%%% )
?%%) *
value%%+ 0
,%%0 1 
DocumentIndexOptions%%2 F
options%%G N
)%%N O
{&& 	
Entries'' 
.'' 
Add'' 
('' 
new'' 
DocumentIndexEntry'' .
(''. /
name''/ 3
,''3 4
value''5 :
,'': ;
Types''< A
.''A B
Boolean''B I
,''I J
options''K R
)''R S
)''S T
;''T U
}(( 	
public** 
void** 
Set** 
(** 
string** 
name** #
,**# $
double**% +
?**+ ,
value**- 2
,**2 3 
DocumentIndexOptions**4 H
options**I P
)**P Q
{++ 	
Entries,, 
.,, 
Add,, 
(,, 
new,, 
DocumentIndexEntry,, .
(,,. /
name,,/ 3
,,,3 4
value,,5 :
,,,: ;
Types,,< A
.,,A B
Number,,B H
,,,H I
options,,J Q
),,Q R
),,R S
;,,S T
}-- 	
public// 
void// 
Set// 
(// 
string// 
name// #
,//# $
decimal//% ,
?//, -
value//. 3
,//3 4 
DocumentIndexOptions//5 I
options//J Q
)//Q R
{00 	
Entries11 
.11 
Add11 
(11 
new11 
DocumentIndexEntry11 .
(11. /
name11/ 3
,113 4
value115 :
,11: ;
Types11< A
.11A B
Number11B H
,11H I
options11J Q
)11Q R
)11R S
;11S T
}22 	
public44 
string44 
ContentItemId44 #
{44$ %
get44& )
;44) *
}44+ ,
public66 
enum66 
Types66 
{77 	
Integer88 
,88 
Text99 
,99 
DateTime:: 
,:: 
Boolean;; 
,;; 
Number<< 
}== 	
public?? 
class?? 
DocumentIndexEntry?? '
{@@ 	
publicAA 
DocumentIndexEntryAA %
(AA% &
stringAA& ,
nameAA- 1
,AA1 2
objectAA3 9
valueAA: ?
,AA? @
TypesAAA F
typeAAG K
,AAK L 
DocumentIndexOptionsAAM a
optionsAAb i
)AAi j
{BB 
NameCC 
=CC 
nameCC 
;CC 
ValueDD 
=DD 
valueDD 
;DD 
TypeEE 
=EE 
typeEE 
;EE 
OptionsFF 
=FF 
optionsFF !
;FF! "
}GG 
publicII 
stringII 
NameII 
{II  
getII! $
;II$ %
}II& '
publicJJ 
objectJJ 
ValueJJ 
{JJ  !
getJJ" %
;JJ% &
}JJ' (
publicKK 
TypesKK 
TypeKK 
{KK 
getKK  #
;KK# $
}KK% &
publicLL  
DocumentIndexOptionsLL '
OptionsLL( /
{LL0 1
getLL2 5
;LL5 6
}LL7 8
}MM 	
}NN 
}OO Ë
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\IIndexingTaskManager.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

	interface  
IIndexingTaskManager )
{ 
Task 
< 
IEnumerable 
< 
IndexingTask %
>% &
>& '!
GetIndexingTasksAsync( =
(= >
int> A
afterTaskIdB M
,M N
intO R
countS X
)X Y
;Y Z
Task 
CreateTaskAsync 
( 
ContentItem (
contentItem) 4
,4 5
IndexingTaskTypes6 G
typeH L
)L M
;M N
} 
} ´	
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\IndexingTask.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

enum 
IndexingTaskTypes !
{ 
Update 
= 
$num 
, 
Delete 
= 
$num 
}		 
public 

class 
IndexingTask 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 

CreatedUtc "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
IndexingTaskTypes  
Type! %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
}   
}!! ‰
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Indexing.Abstractions\Properties\AssemblyInfo.cs
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
$str		 >
)		> ?
]		? @
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
]7 8