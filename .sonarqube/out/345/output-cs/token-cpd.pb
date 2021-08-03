�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Indexing\CreateIndexingTaskContentHandler.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

class ,
 CreateIndexingTaskContentHandler 1
:2 3
ContentHandlerBase4 F
{ 
private 
readonly  
IIndexingTaskManager - 
_indexingTaskManager. B
;B C
public

 ,
 CreateIndexingTaskContentHandler

 /
(

/ 0 
IIndexingTaskManager

0 D
indexingTaskManager

E X
)

X Y
{ 	 
_indexingTaskManager  
=! "
indexingTaskManager# 6
;6 7
} 	
public 
override 
Task 
UpdatedAsync )
() * 
UpdateContentContext* >
context? F
)F G
{ 	
return  
_indexingTaskManager '
.' (
CreateTaskAsync( 7
(7 8
context8 ?
.? @
ContentItem@ K
,K L
IndexingTaskTypesM ^
.^ _
Update_ e
)e f
;f g
} 	
public 
override 
Task 
CreatedAsync )
() * 
CreateContentContext* >
context? F
)F G
{ 	
return  
_indexingTaskManager '
.' (
CreateTaskAsync( 7
(7 8
context8 ?
.? @
ContentItem@ K
,K L
IndexingTaskTypesM ^
.^ _
Update_ e
)e f
;f g
} 	
public 
override 
Task 
PublishedAsync +
(+ ,!
PublishContentContext, A
contextB I
)I J
{ 	
return  
_indexingTaskManager '
.' (
CreateTaskAsync( 7
(7 8
context8 ?
.? @
ContentItem@ K
,K L
IndexingTaskTypesM ^
.^ _
Update_ e
)e f
;f g
} 	
public 
override 
Task 
RemovedAsync )
() * 
RemoveContentContext* >
context? F
)F G
{ 	
if   
(   
context   
.   
NoActiveVersionLeft   +
)  + ,
{!! 
return""  
_indexingTaskManager"" +
.""+ ,
CreateTaskAsync"", ;
(""; <
context""< C
.""C D
ContentItem""D O
,""O P
IndexingTaskTypes""Q b
.""b c
Delete""c i
)""i j
;""j k
}## 
return%% 
Task%% 
.%% 
CompletedTask%% %
;%%% &
}&& 	
}'' 
}(( �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Indexing\IndexingTaskManager.cs
	namespace 	
OrchardCore
 
. 
Indexing 
. 
Services '
{ 
public 

class 
IndexingTaskManager $
:% & 
IIndexingTaskManager' ;
{ 
private 
readonly 
IClock 
_clock  &
;& '
private 
readonly 
IStore 
_store  &
;& '
private 
readonly !
IDbConnectionAccessor .!
_dbConnectionAccessor/ D
;D E
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
ILogger  
_logger! (
;( )
private!! 
readonly!! 
string!! 
_tablePrefix!!  ,
;!!, -
private"" 
readonly"" 
List"" 
<"" 
IndexingTask"" *
>""* +
_tasksQueue"", 7
=""8 9
new"": =
List""> B
<""B C
IndexingTask""C O
>""O P
(""P Q
)""Q R
;""R S
public$$ 
IndexingTaskManager$$ "
($$" #
IClock%% 
clock%% 
,%% 
ShellSettings&& 
shellSettings&& '
,&&' (
IStore'' 
store'' 
,'' !
IDbConnectionAccessor(( ! 
dbConnectionAccessor((" 6
,((6 7 
IHttpContextAccessor))  
httpContextAccessor))! 4
,))4 5
ILogger** 
<** 
IndexingTaskManager** '
>**' (
logger**) /
)**/ 0
{++ 	
_clock,, 
=,, 
clock,, 
;,, 
_store-- 
=-- 
store-- 
;-- !
_dbConnectionAccessor.. !
=.." # 
dbConnectionAccessor..$ 8
;..8 9 
_httpContextAccessor//  
=//! "
httpContextAccessor//# 6
;//6 7
_logger00 
=00 
logger00 
;00 
_tablePrefix22 
=22 
shellSettings22 (
[22( )
$str22) 6
]226 7
;227 8
if44 
(44 
!44 
String44 
.44 
IsNullOrEmpty44 %
(44% &
_tablePrefix44& 2
)442 3
)443 4
{55 
_tablePrefix66 
+=66 
$char66  #
;66# $
}77 
}88 	
public:: 
Task:: 
CreateTaskAsync:: #
(::# $
ContentItem::$ /
contentItem::0 ;
,::; <
IndexingTaskTypes::= N
type::O S
)::S T
{;; 	
if<< 
(<< 
contentItem<< 
==<< 
null<< #
)<<# $
{== 
throw>> 
new>> !
ArgumentNullException>> /
(>>/ 0
$str>>0 =
)>>= >
;>>> ?
}?? 
ifBB 
(BB  
_httpContextAccessorBB $
.BB$ %
HttpContextBB% 0
?BB0 1
.BB1 2
FeaturesBB2 :
.BB: ;
GetBB; >
<BB> ?!
ContentPreviewFeatureBB? T
>BBT U
(BBU V
)BBV W
?BBW X
.BBX Y

PreviewingBBY c
==BBd f
trueBBg k
)BBk l
{CC 
returnDD 
TaskDD 
.DD 
CompletedTaskDD )
;DD) *
}EE 
ifGG 
(GG 
contentItemGG 
.GG 
IdGG 
==GG !
$numGG" #
)GG# $
{HH 
returnJJ 
TaskJJ 
.JJ 
CompletedTaskJJ )
;JJ) *
}KK 
varMM 
indexingTaskMM 
=MM 
newMM "
IndexingTaskMM# /
{NN 

CreatedUtcOO 
=OO 
_clockOO #
.OO# $
UtcNowOO$ *
,OO* +
ContentItemIdPP 
=PP 
contentItemPP  +
.PP+ ,
ContentItemIdPP, 9
,PP9 :
TypeQQ 
=QQ 
typeQQ 
}RR 
;RR 
ifTT 
(TT 
_tasksQueueTT 
.TT 
CountTT !
==TT" $
$numTT% &
)TT& '
{UU 
varVV 

tasksQueueVV 
=VV  
_tasksQueueVV! ,
;VV, -

ShellScopeYY 
.YY 
AddDeferredTaskYY *
(YY* +
scopeYY+ 0
=>YY1 3

FlushAsyncYY4 >
(YY> ?
scopeYY? D
,YYD E

tasksQueueYYF P
)YYP Q
)YYQ R
;YYR S
}ZZ 
_tasksQueue\\ 
.\\ 
Add\\ 
(\\ 
indexingTask\\ (
)\\( )
;\\) *
return^^ 
Task^^ 
.^^ 
CompletedTask^^ %
;^^% &
}__ 	
privateaa 
staticaa 
asyncaa 
Taskaa !

FlushAsyncaa" ,
(aa, -

ShellScopeaa- 7
scopeaa8 =
,aa= >
IEnumerableaa? J
<aaJ K
IndexingTaskaaK W
>aaW X
tasksaaY ^
)aa^ _
{bb 	
varcc 

localQueuecc 
=cc 
newcc  
Listcc! %
<cc% &
IndexingTaskcc& 2
>cc2 3
(cc3 4
taskscc4 9
)cc9 :
;cc: ;
varee 
serviceProvideree 
=ee  !
scopeee" '
.ee' (
ServiceProvideree( 7
;ee7 8
vargg 
sessiongg 
=gg 
serviceProvidergg )
.gg) *

GetServicegg* 4
<gg4 5
YesSqlgg5 ;
.gg; <
ISessiongg< D
>ggD E
(ggE F
)ggF G
;ggG H
varhh  
dbConnectionAccessorhh $
=hh% &
serviceProviderhh' 6
.hh6 7

GetServicehh7 A
<hhA B!
IDbConnectionAccessorhhB W
>hhW X
(hhX Y
)hhY Z
;hhZ [
varii 
shellSettingsii 
=ii 
serviceProviderii  /
.ii/ 0

GetServiceii0 :
<ii: ;
ShellSettingsii; H
>iiH I
(iiI J
)iiJ K
;iiK L
varjj 
loggerjj 
=jj 
serviceProviderjj (
.jj( )

GetServicejj) 3
<jj3 4
ILoggerjj4 ;
<jj; <
IndexingTaskManagerjj< O
>jjO P
>jjP Q
(jjQ R
)jjR S
;jjS T
varkk 
tablePrefixkk 
=kk 
shellSettingskk +
[kk+ ,
$strkk, 9
]kk9 :
;kk: ;
ifmm 
(mm 
!mm 
Stringmm 
.mm 
IsNullOrEmptymm %
(mm% &
tablePrefixmm& 1
)mm1 2
)mm2 3
{nn 
tablePrefixoo 
+=oo 
$charoo "
;oo" #
}pp 
varrr 
contentItemIdsrr 
=rr  
newrr! $
HashSetrr% ,
<rr, -
stringrr- 3
>rr3 4
(rr4 5
)rr5 6
;rr6 7
foruu 
(uu 
varuu 
iuu 
=uu 

localQueueuu #
.uu# $
Countuu$ )
;uu) *
iuu+ ,
>uu- .
$numuu/ 0
;uu0 1
iuu2 3
--uu3 5
)uu5 6
{vv 
varww 
taskww 
=ww 

localQueueww %
[ww% &
iww& '
-ww( )
$numww* +
]ww+ ,
;ww, -
ifyy 
(yy 
contentItemIdsyy "
.yy" #
Containsyy# +
(yy+ ,
taskyy, 0
.yy0 1
ContentItemIdyy1 >
)yy> ?
)yy? @
{zz 

localQueue{{ 
.{{ 
RemoveAt{{ '
({{' (
i{{( )
-{{* +
$num{{, -
){{- .
;{{. /
}|| 
else}} 
{~~ 
contentItemIds "
." #
Add# &
(& '
task' +
.+ ,
ContentItemId, 9
)9 :
;: ;
}
�� 
}
�� 
var
�� 
ids
�� 
=
�� 

localQueue
��  
.
��  !
Select
��! '
(
��' (
x
��( )
=>
��* ,
x
��- .
.
��. /
ContentItemId
��/ <
)
��< =
.
��= >
ToArray
��> E
(
��E F
)
��F G
;
��G H
var
�� 
table
�� 
=
�� 
$"
�� 
{
�� 
tablePrefix
�� &
}
��& '
{
��' (
nameof
��( .
(
��. /
IndexingTask
��/ ;
)
��; <
}
��< =
"
��= >
;
��> ?
using
�� 
(
�� 
var
�� 

connection
�� !
=
��" #"
dbConnectionAccessor
��$ 8
.
��8 9
CreateConnection
��9 I
(
��I J
)
��J K
)
��K L
{
�� 
await
�� 

connection
��  
.
��  !
	OpenAsync
��! *
(
��* +
)
��+ ,
;
��, -
using
�� 
(
�� 
var
�� 
transaction
�� &
=
��' (

connection
��) 3
.
��3 4
BeginTransaction
��4 D
(
��D E
session
��E L
.
��L M
Store
��M R
.
��R S
Configuration
��S `
.
��` a
IsolationLevel
��a o
)
��o p
)
��p q
{
�� 
var
�� 
dialect
�� 
=
��  !
session
��" )
.
��) *
Store
��* /
.
��/ 0
Configuration
��0 =
.
��= >

SqlDialect
��> H
;
��H I
try
�� 
{
�� 
if
�� 
(
�� 
logger
�� "
.
��" #
	IsEnabled
��# ,
(
��, -
LogLevel
��- 5
.
��5 6
Debug
��6 ;
)
��; <
)
��< =
{
�� 
logger
�� "
.
��" #
LogDebug
��# +
(
��+ ,
$str
��, W
,
��W X
String
��Y _
.
��_ `
Join
��` d
(
��d e
$str
��e i
,
��i j
tasks
��k p
.
��p q
Select
��q w
(
��w x
x
��x y
=>
��z |
x
��} ~
.
��~ 
ContentItemId�� �
)��� �
)��� �
)��� �
;��� �
}
�� 
var
�� 
pageSize
�� $
=
��% &
$num
��' *
;
��* +
var
�� 
	deleteCmd
�� %
=
��& '
$"
��( *
delete from 
��* 6
{
��6 7
dialect
��7 >
.
��> ?
QuoteForTableName
��? P
(
��P Q
table
��Q V
)
��V W
}
��W X
 where 
��X _
{
��_ `
dialect
��` g
.
��g h 
QuoteForColumnName
��h z
(
��z {
$str��{ �
)��� �
}��� �
{��� �
dialect��� �
.��� �

InOperator��� �
(��� �
$str��� �
)��� �
}��� �
;��� �
"��� �
;��� �
do
�� 
{
�� 
var
�� 
	pageOfIds
��  )
=
��* +
ids
��, /
.
��/ 0
Take
��0 4
(
��4 5
pageSize
��5 =
)
��= >
.
��> ?
ToArray
��? F
(
��F G
)
��G H
;
��H I
if
�� 
(
��  
	pageOfIds
��  )
.
��) *
Any
��* -
(
��- .
)
��. /
)
��/ 0
{
�� 
await
��  %
transaction
��& 1
.
��1 2

Connection
��2 <
.
��< =
ExecuteAsync
��= I
(
��I J
	deleteCmd
��J S
,
��S T
new
��U X
{
��Y Z
Ids
��[ ^
=
��_ `
	pageOfIds
��a j
}
��k l
,
��l m
transaction
��n y
)
��y z
;
��z {
ids
��  #
=
��$ %
ids
��& )
.
��) *
Skip
��* .
(
��. /
pageSize
��/ 7
)
��7 8
.
��8 9
ToArray
��9 @
(
��@ A
)
��A B
;
��B C
}
�� 
}
�� 
while
�� 
(
��  !
ids
��! $
.
��$ %
Any
��% (
(
��( )
)
��) *
)
��* +
;
��+ ,
var
�� 
	insertCmd
�� %
=
��& '
$"
��( *
insert into 
��* 6
{
��6 7
dialect
��7 >
.
��> ?
QuoteForTableName
��? P
(
��P Q
table
��Q V
)
��V W
}
��W X
 (
��X Z
{
��Z [
dialect
��[ b
.
��b c 
QuoteForColumnName
��c u
(
��u v
$str��v �
)��� �
}��� �
, ��� �
{��� �
dialect��� �
.��� �"
QuoteForColumnName��� �
(��� �
$str��� �
)��� �
}��� �
, ��� �
{��� �
dialect��� �
.��� �"
QuoteForColumnName��� �
(��� �
$str��� �
)��� �
}��� �>
.) values (@CreatedUtc, @ContentItemId, @Type);��� �
"��� �
;��� �
await
�� 
transaction
�� )
.
��) *

Connection
��* 4
.
��4 5
ExecuteAsync
��5 A
(
��A B
	insertCmd
��B K
,
��K L

localQueue
��M W
,
��W X
transaction
��Y d
)
��d e
;
��e f
transaction
�� #
.
��# $
Commit
��$ *
(
��* +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
�� $
e
��% &
)
��& '
{
�� 
transaction
�� #
.
��# $
Rollback
��$ ,
(
��, -
)
��- .
;
��. /
logger
�� 
.
�� 
LogError
�� '
(
��' (
e
��( )
,
��) *
$str
��+ \
)
��\ ]
;
��] ^
throw
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� %
<
��% &
IndexingTask
��& 2
>
��2 3
>
��3 4#
GetIndexingTasksAsync
��5 J
(
��J K
int
��K N
afterTaskId
��O Z
,
��Z [
int
��\ _
count
��` e
)
��e f
{
�� 	
using
�� 
(
�� 
var
�� 

connection
�� !
=
��" ##
_dbConnectionAccessor
��$ 9
.
��9 :
CreateConnection
��: J
(
��J K
)
��K L
)
��L M
{
�� 
await
�� 

connection
��  
.
��  !
	OpenAsync
��! *
(
��* +
)
��+ ,
;
��, -
try
�� 
{
�� 
var
�� 
dialect
�� 
=
��  !
_store
��" (
.
��( )
Configuration
��) 6
.
��6 7

SqlDialect
��7 A
;
��A B
var
�� 

sqlBuilder
�� "
=
��# $
dialect
��% ,
.
��, -
CreateBuilder
��- :
(
��: ;
_tablePrefix
��; G
)
��G H
;
��H I

sqlBuilder
�� 
.
�� 
Select
�� %
(
��% &
)
��& '
;
��' (

sqlBuilder
�� 
.
�� 
Table
�� $
(
��$ %
nameof
��% +
(
��+ ,
IndexingTask
��, 8
)
��8 9
)
��9 :
;
��: ;

sqlBuilder
�� 
.
�� 
Selector
�� '
(
��' (
$str
��( +
)
��+ ,
;
��, -
if
�� 
(
�� 
count
�� 
>
�� 
$num
��  !
)
��! "
{
�� 

sqlBuilder
�� "
.
��" #
Take
��# '
(
��' (
count
��( -
.
��- .
ToString
��. 6
(
��6 7
)
��7 8
)
��8 9
;
��9 :
}
�� 

sqlBuilder
�� 
.
�� 
WhereAnd
�� '
(
��' (
$"
��( *
{
��* +
dialect
��+ 2
.
��2 3 
QuoteForColumnName
��3 E
(
��E F
$str
��F J
)
��J K
}
��K L
 > @Id
��L R
"
��R S
)
��S T
;
��T U
return
�� 
await
��  

connection
��! +
.
��+ ,

QueryAsync
��, 6
<
��6 7
IndexingTask
��7 C
>
��C D
(
��D E

sqlBuilder
��E O
.
��O P
ToSqlString
��P [
(
��[ \
)
��\ ]
,
��] ^
new
��_ b
{
��c d
Id
��e g
=
��h i
afterTaskId
��j u
}
��v w
)
��w x
;
��x y
}
�� 
catch
�� 
(
�� 
	Exception
��  
e
��! "
)
��" #
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
e
��% &
,
��& '
$str
��( X
)
��X Y
;
��Y Z
throw
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Indexing\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str @
,@ A
Category		 
=		 
$str		 
)

 
]

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Indexing\Migrations.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
public 
int 
Create 
( 
) 
{		 	
SchemaBuilder

 
.

 
CreateTable

 %
(

% &
nameof

& ,
(

, -
IndexingTask

- 9
)

9 :
,

: ;
table

< A
=>

B D
table

E J
. 
Column 
< 
int 
> 
( 
nameof #
(# $
IndexingTask$ 0
.0 1
Id1 3
)3 4
,4 5
col6 9
=>: <
col= @
.@ A

PrimaryKeyA K
(K L
)L M
.M N
IdentityN V
(V W
)W X
)X Y
. 
Column 
< 
string 
> 
(  
nameof  &
(& '
IndexingTask' 3
.3 4
ContentItemId4 A
)A B
,B C
cD E
=>F H
cI J
.J K

WithLengthK U
(U V
$numV X
)X Y
)Y Z
. 
Column 
< 
DateTime  
>  !
(! "
nameof" (
(( )
IndexingTask) 5
.5 6

CreatedUtc6 @
)@ A
,A B
colC F
=>G I
colJ M
.M N
NotNullN U
(U V
)V W
)W X
. 
Column 
< 
int 
> 
( 
nameof #
(# $
IndexingTask$ 0
.0 1
Type1 5
)5 6
)6 7
) 
; 
SchemaBuilder 
. 

AlterTable $
($ %
nameof% +
(+ ,
IndexingTask, 8
)8 9
,9 :
table; @
=>A C
tableD I
. 
CreateIndex 
( 
$str =
,= >
$str? N
)N O
) 
; 
return 
$num 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Indexing\Properties\AssemblyInfo.cs
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
$str		 1
)		1 2
]		2 3
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
]7 8�	
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Indexing\Startup.cs
	namespace 	
OrchardCore
 
. 
Indexing 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
<  
IIndexingTaskManager 3
,3 4
IndexingTaskManager5 H
>H I
(I J
)J K
;K L
services 
. 
	AddScoped 
< 
IContentHandler .
,. /,
 CreateIndexingTaskContentHandler0 P
>P Q
(Q R
)R S
;S T
services 
. 
	AddScoped 
< 
IDataMigration -
,- .

Migrations/ 9
>9 :
(: ;
); <
;< =
} 	
} 
} 