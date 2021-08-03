å
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\Extensions\DataLoaderExtensions.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

static 
class  
DataLoaderExtensions ,
{		 
public

 
static

 
Task

 
<

 
T

 
[

 
]

 
>

 
	LoadAsync

  )
<

) *
TKey

* .
,

. /
T

0 1
>

1 2
(

2 3
this

3 7
IDataLoader

8 C
<

C D
TKey

D H
,

H I
T

J K
>

K L

dataLoader

M W
,

W X
IEnumerable

Y d
<

d e
TKey

e i
>

i j
keys

k o
)

o p
{ 	
var 
tasks 
= 
new 
List  
<  !
Task! %
<% &
T& '
>' (
>( )
() *
)* +
;+ ,
foreach 
( 
var 
key 
in 
keys  $
)$ %
{ 
tasks 
. 
Add 
( 

dataLoader $
.$ %
	LoadAsync% .
(. /
key/ 2
)2 3
)3 4
;4 5
} 
return 
Task 
. 
WhenAll 
(  
tasks  %
)% &
;& '
} 	
public 
static 
Task 
< 
T 
[ 
] 
> 
	LoadAsync  )
<) *
TKey* .
,. /
T0 1
>1 2
(2 3
this3 7
IDataLoader8 C
<C D
TKeyD H
,H I
TJ K
>K L

dataLoaderM W
,W X
paramsY _
TKey` d
[d e
]e f
keysg k
)k l
{ 	
return 

dataLoader 
. 
	LoadAsync '
(' (
keys( ,
., -
AsEnumerable- 9
(9 :
): ;
); <
;< =
} 	
} 
} ©
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\Extensions\FieldBuilderResolverExtensions.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public		 

static		 
class		 *
FieldBuilderResolverExtensions		 6
{

 
public 
static 
FieldBuilder "
<" #
TSourceType# .
,. /
TReturnType0 ;
>; <
ResolveLockedAsync= O
<O P
TSourceTypeP [
,[ \
TReturnType] h
>h i
(i j
thisj n
FieldBuildero {
<{ |
TSourceType	| á
,
á à
TReturnType
â î
>
î ï
builder
ñ ù
,
ù û
Func
ü £
<
£ §!
ResolveFieldContext
§ ∑
<
∑ ∏
TSourceType
∏ √
>
√ ƒ
,
ƒ ≈
Task
∆  
<
  À
TReturnType
À ÷
>
÷ ◊
>
◊ ÿ
resolve
Ÿ ‡
)
‡ ·
{ 	
return 
builder 
. 
Resolve "
(" #
new# &$
LockedAsyncFieldResolver' ?
<? @
TSourceType@ K
,K L
TReturnTypeM X
>X Y
(Y Z
resolveZ a
)a b
)b c
;c d
} 	
} 
} Î
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\Extensions\PermissionsExtensions.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public		 

static		 
class		 !
PermissionsExtensions		 -
{

 
private 
static 
readonly 
string  &
MetaDataKey' 2
=3 4
$str5 B
;B C
public 
static 
void 
RequirePermission ,
(, -
this- 1
IProvideMetadata2 B
typeC G
,G H

PermissionI S

permissionT ^
,^ _
object` f
resourceg o
=p q
nullr v
)v w
{ 	
var 
permissions 
= 
type "
." #
GetMetadata# .
<. /
List/ 3
<3 4$
GraphQLPermissionContext4 L
>L M
>M N
(N O
MetaDataKeyO Z
)Z [
;[ \
if 
( 
permissions 
== 
null #
)# $
{ 
type 
. 
Metadata 
[ 
MetaDataKey )
]) *
=+ ,
permissions- 8
=9 :
new; >
List? C
<C D$
GraphQLPermissionContextD \
>\ ]
(] ^
)^ _
;_ `
} 
permissions 
. 
Add 
( 
new $
GraphQLPermissionContext  8
(8 9

permission9 C
,C D
resourceE M
)M N
)N O
;O P
} 	
public 
static 
FieldBuilder "
<" #
TSourceType# .
,. /
TReturnType0 ;
>; <
RequirePermission= N
<N O
TSourceTypeO Z
,Z [
TReturnType\ g
>g h
(h i
thisi m
FieldBuildern z
<z {
TSourceType	{ Ü
,
Ü á
TReturnType
à ì
>
ì î
builder
ï ú
,
ú ù

Permission
û ®

permission
© ≥
,
≥ ¥
object
µ ª
resource
º ƒ
=
≈ ∆
null
« À
)
À Ã
{ 	
builder 
. 
	FieldType 
. 
RequirePermission /
(/ 0

permission0 :
,: ;
resource< D
)D E
;E F
return 
builder 
; 
} 	
public 
static 
IEnumerable !
<! "$
GraphQLPermissionContext" :
>: ;
GetPermissions< J
(J K
thisK O
IProvideMetadataP `
typea e
)e f
{   	
return!! 
type!! 
?!! 
.!! 
GetMetadata!! $
<!!$ %
List!!% )
<!!) *$
GraphQLPermissionContext!!* B
>!!B C
>!!C D
(!!D E
MetaDataKey!!E P
)!!P Q
??!!R T

Enumerable!!U _
.!!_ `
Empty!!` e
<!!e f$
GraphQLPermissionContext!!f ~
>!!~ 
(	!! Ä
)
!!Ä Å
;
!!Å Ç
}"" 	
public$$ 
static$$ 
bool$$ 
HasPermissions$$ )
($$) *
this$$* .
IProvideMetadata$$/ ?
type$$@ D
)$$D E
{%% 	
return&& 
type&& 
!=&& 
null&& 
&&&&  "
type&&# '
.&&' (
HasMetadata&&( 3
(&&3 4
MetaDataKey&&4 ?
)&&? @
;&&@ A
}'' 	
}(( 
})) ±1
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\Extensions\ResolveFieldContextExtensions.cs
	namespace		 	
OrchardCore		
 
.		 
Apis		 
.		 
GraphQL		 "
{

 
public 

static 
class )
ResolveFieldContextExtensions 5
{ 
public 
static 
bool  
HasPopulatedArgument /
</ 0
TSource0 7
>7 8
(8 9
this9 =
ResolveFieldContext> Q
<Q R
TSourceR Y
>Y Z
source[ a
,a b
stringc i
argumentNamej v
)v w
{ 	
if 
( 
source 
. 
	Arguments  
?  !
.! "
ContainsKey" -
(- .
argumentName. :
): ;
??< >
false? D
)D E
{ 
return 
! 
string 
. 
IsNullOrEmpty ,
(, -
source- 3
.3 4
	Arguments4 =
[= >
argumentName> J
]J K
?K L
.L M
ToStringM U
(U V
)V W
)W X
;X Y
} 
; 
return 
false 
; 
} 	
public 
static 
FieldBuilder "
<" #
TArgumentGraphType# 5
,5 6
TArgumentType7 D
>D E
PagingArgumentsF U
<U V
TArgumentGraphTypeV h
,h i
TArgumentTypej w
>w x
(x y
thisy }
FieldBuilder	~ ä
<
ä ã 
TArgumentGraphType
ã ù
,
ù û
TArgumentType
ü ¨
>
¨ ≠
field
Æ ≥
)
≥ ¥
{ 	
return 
field 
. 
Argument 
< 
IntGraphType &
,& '
int( +
>+ ,
(, -
$str- 4
,4 5
$str6 L
,L M
$numN O
)O P
. 
Argument 
< 
IntGraphType &
,& '
int( +
>+ ,
(, -
$str- 3
,3 4
$str5 J
,J K
$numL M
)M N
. 
Argument 
< 
IntGraphType &
,& '
int( +
>+ ,
(, -
$str- 3
,3 4
$str5 U
,U V
$numW X
)X Y
;Y Z
} 	
public 
static 
IEnumerable !
<! "
TSource" )
>) *
Page+ /
</ 0
T0 1
,1 2
TSource3 :
>: ;
(; <
this< @
ResolveFieldContextA T
<T U
TU V
>V W
contextX _
,_ `
IEnumerablea l
<l m
TSourcem t
>t u
sourcev |
)| }
{   	
var!! 
skip!! 
=!! 
context!! 
.!! 
GetArgument!! *
<!!* +
int!!+ .
>!!. /
(!!/ 0
$str!!0 6
)!!6 7
;!!7 8
var"" 
first"" 
="" 
context"" 
.""  
GetArgument""  +
<""+ ,
int"", /
>""/ 0
(""0 1
$str""1 8
)""8 9
;""9 :
var## 
last## 
=## 
context## 
.## 
GetArgument## *
<##* +
int##+ .
>##. /
(##/ 0
$str##0 6
)##6 7
;##7 8
if%% 
(%% 
last%% 
==%% 
$num%% 
&&%% 
first%% "
==%%# %
$num%%& '
)%%' (
{&& 
first'' 
='' 
context'' 
.''  "
ResolveServiceProvider''  6
(''6 7
)''7 8
.''8 9

GetService''9 C
<''C D
IOptions''D L
<''L M
GraphQLSettings''M \
>''\ ]
>''] ^
(''^ _
)''_ `
.''` a
Value''a f
.''f g"
DefaultNumberOfResults''g }
;''} ~
}(( 
if** 
(** 
last** 
>** 
$num** 
)** 
{++ 
source,, 
=,, 
source,, 
.,,  
Skip,,  $
(,,$ %
Math,,% )
.,,) *
Max,,* -
(,,- .
$num,,. /
,,,/ 0
source,,1 7
.,,7 8
Count,,8 =
(,,= >
),,> ?
-,,@ A
last,,B F
),,F G
),,G H
;,,H I
}-- 
else.. 
{// 
if00 
(00 
skip00 
>00 
$num00 
)00 
{11 
source22 
=22 
source22 #
.22# $
Skip22$ (
(22( )
skip22) -
)22- .
;22. /
}33 
if55 
(55 
first55 
>55 
$num55 
)55 
{66 
source77 
=77 
source77 #
.77# $
Take77$ (
(77( )
first77) .
)77. /
;77/ 0
}88 
}99 
return;; 
source;; 
;;; 
}<< 	
public>> 
static>> 
IServiceProvider>> &"
ResolveServiceProvider>>' =
<>>= >
T>>> ?
>>>? @
(>>@ A
this>>A E
ResolveFieldContext>>F Y
<>>Y Z
T>>Z [
>>>[ \
context>>] d
)>>d e
{?? 	
return@@ 
(@@ 
(@@ 
GraphQLContext@@ #
)@@# $
context@@$ +
.@@+ ,
UserContext@@, 7
)@@7 8
.@@8 9
ServiceProvider@@9 H
;@@H I
}AA 	
}BB 
}CC Í
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\GraphQLPermissionContext.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

class $
GraphQLPermissionContext )
{ 
public 

Permission 

Permission $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
object 
Resource 
{  
get! $
;$ %
set& )
;) *
}+ ,
public

 $
GraphQLPermissionContext

 '
(

' (

Permission

( 2

permission

3 =
,

= >
object

? E
resource

F N
=

O P
null

Q U
)

U V
{ 	

Permission 
= 

permission #
;# $
Resource 
= 
resource 
;  
} 	
} 
} à
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\GraphQLSettings.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

class 
GraphQLSettings  
{ 
public 

PathString 
Path 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$str/ =
;= >
public		 
Func		 
<		 
HttpContext		 
,		  
object		! '
>		' (
BuildUserContext		) 9
{		: ;
get		< ?
;		? @
set		A D
;		D E
}		F G
public 
bool 
ExposeExceptions $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
false5 :
;: ;
public 
int 
? 
MaxDepth 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
MaxComplexity !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
double 
? 
FieldImpact "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int "
DefaultNumberOfResults )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
MaxNumberOfResults %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public ,
 MaxNumberOfResultsValidationMode /,
 MaxNumberOfResultsValidationMode0 P
{Q R
getS V
;V W
setX [
;[ \
}] ^
} 
public 

enum ,
 MaxNumberOfResultsValidationMode 0
{ 
Default 
, 
Enabled 
, 
Disabled 
} 
} †	
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\GraphQLUserContext.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

class 
GraphQLContext 
{		 
public

 
HttpContext

 
HttpContext

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
ClaimsPrincipal 
User #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
SemaphoreSlim  
ExecutionContextLock 1
{2 3
get4 7
;7 8
}9 :
=; <
new= @
SemaphoreSlimA N
(N O
$numO P
,P Q
$numR S
)S T
;T U
} 
} Í	
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\IFieldNameProvider.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
,* +
AllowMultiple, 9
=: ;
true< @
)@ A
]A B
public 

class %
GraphQLFieldNameAttribute *
:+ ,
	Attribute- 6
{ 
public %
GraphQLFieldNameAttribute (
(( )
string) /
field0 5
,5 6
string7 =
mapped> D
)D E
{		 	
Field

 
=

 
field

 
;

 
Mapped 
= 
mapped 
; 
} 	
public 
string 
Field 
{ 
get !
;! "
}# $
public 
string 
Mapped 
{ 
get "
;" #
}$ %
} 
} ï
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\ISchemaBuilder.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public		 

	interface		 
ISchemaBuilder		 #
{

 
Task 

BuildAsync 
( 
ISchema 
schema  &
)& '
;' (
Task 
< 
string 
> 
GetIdentifierAsync '
(' (
)( )
;) *
} 
} í
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\ISchemaFactory.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public

 

	interface

 
ISchemaFactory

 #
{ 
Task 
< 
ISchema 
> 
GetSchemaAsync $
($ %
)% &
;& '
} 
} Í
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\Queries\INamedQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
." #
Queries# *
{ 
public 

	interface 
INamedQueryProvider (
{ 
IDictionary 
< 
string 
, 
string "
>" #
Resolve$ +
(+ ,
), -
;- .
} 
}		 †E
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\Queries\WhereInputObjectGraphType.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
." #
Queries# *
{ 
public 

class %
WhereInputObjectGraphType *
:+ ,%
WhereInputObjectGraphType- F
<F G
objectG M
>M N
{ 
}		 
public 

class %
WhereInputObjectGraphType *
<* +
TSourceType+ 6
>6 7
:8 9 
InputObjectGraphType: N
<N O
TSourceTypeO Z
>Z [
{ 
public 
static 

Dictionary  
<  !
string! '
,' (
string) /
>/ 0
EqualityOperators1 B
=C D
newE H

DictionaryI S
<S T
stringT Z
,Z [
string\ b
>b c
{ 	
{ 
$str 
, 
$str 
}  !
,! "
{ 
$str 
, 
$str '
}( )
} 	
;	 

public 
static 

Dictionary  
<  !
string! '
,' (
string) /
>/ 0)
MultiValueComparisonOperators1 N
=O P
newQ T

DictionaryU _
<_ `
string` f
,f g
stringh n
>n o
{ 	
{ 
$str 
, 
$str '
}( )
,) *
{ 
$str 
, 
$str /
}0 1
} 	
;	 

public 
static 

Dictionary  
<  !
string! '
,' (
string) /
>/ 0-
!NonStringValueComparisonOperators1 R
=S T
newU X

DictionaryY c
<c d
stringd j
,j k
stringl r
>r s
{ 	
{ 
$str 
, 
$str &
}' (
,( )
{ 
$str 
, 
$str 0
}1 2
,2 3
{   
$str   
,   
$str   #
}  $ %
,  % &
{!! 
$str!! 
,!! 
$str!! -
}!!. /
}"" 	
;""	 

public%% 
static%% 

Dictionary%%  
<%%  !
string%%! '
,%%' (
string%%) /
>%%/ 0%
StringComparisonOperators%%1 J
=%%K L
new%%M P

Dictionary%%Q [
<%%[ \
string%%\ b
,%%b c
string%%d j
>%%j k
{&& 	
{'' 
$str'' 
,'' 
$str'' /
}''/ 0
,''0 1
{(( 
$str(( 
,(( 
$str(( ;
}((; <
,((< =
{)) 
$str)) 
,)) 
$str)) 5
}))5 6
,))6 7
{** 
$str** 
,**  
$str**! A
}**A B
,**B C
{++ 
$str++ 
,++ 
$str++ 1
}++1 2
,++2 3
{,, 
$str,, 
,,, 
$str,, =
},,= >
}-- 	
;--	 

public// 
void// !
AddScalarFilterFields// )
<//) *

TGraphType//* 4
>//4 5
(//5 6
string//6 <
	fieldName//= F
,//F G
string//H N
description//O Z
)//Z [
{00 	!
AddScalarFilterFields11 !
(11! "
typeof11" (
(11( )

TGraphType11) 3
)113 4
,114 5
	fieldName116 ?
,11? @
description11A L
)11L M
;11M N
}22 	
public44 
void44 !
AddScalarFilterFields44 )
(44) *
Type44* .
	graphType44/ 8
,448 9
string44: @
	fieldName44A J
,44J K
string44L R
description44S ^
)44^ _
{55 	
AddEqualityFilters66 
(66 
	graphType66 (
,66( )
	fieldName66* 3
,663 4
description665 @
)66@ A
;66A B 
AddMultiValueFilters77  
(77  !
	graphType77! *
,77* +
	fieldName77, 5
,775 6
description777 B
)77B C
;77C D
if99 
(99 
	graphType99 
==99 
typeof99 #
(99# $
StringGraphType99$ 3
)993 4
)994 5
{:: 
AddStringFilters;;  
(;;  !
	graphType;;! *
,;;* +
	fieldName;;, 5
,;;5 6
description;;7 B
);;B C
;;;C D
}<< 
else== 
if== 
(== 
	graphType== 
==== !
typeof==" (
(==( )
DateTimeGraphType==) :
)==: ;
)==; <
{>> 
AddNonStringFilters?? #
(??# $
	graphType??$ -
,??- .
	fieldName??/ 8
,??8 9
description??: E
)??E F
;??F G
}@@ 
}AA 	
privateCC 
voidCC 
AddEqualityFiltersCC '
(CC' (
TypeCC( ,
	graphTypeCC- 6
,CC6 7
stringCC8 >
	fieldNameCC? H
,CCH I
stringCCJ P
descriptionCCQ \
)CC\ ]
{DD 	
AddFilterFieldsEE 
(EE 
	graphTypeEE %
,EE% &
EqualityOperatorsEE' 8
,EE8 9
	fieldNameEE: C
,EEC D
descriptionEEE P
)EEP Q
;EEQ R
}FF 	
privateHH 
voidHH 
AddStringFiltersHH %
(HH% &
TypeHH& *
	graphTypeHH+ 4
,HH4 5
stringHH6 <
	fieldNameHH= F
,HHF G
stringHHH N
descriptionHHO Z
)HHZ [
{II 	
AddFilterFieldsJJ 
(JJ 
	graphTypeJJ %
,JJ% &%
StringComparisonOperatorsJJ' @
,JJ@ A
	fieldNameJJB K
,JJK L
descriptionJJM X
)JJX Y
;JJY Z
}KK 	
privateMM 
voidMM 
AddNonStringFiltersMM (
(MM( )
TypeMM) -
	graphTypeMM. 7
,MM7 8
stringMM9 ?
	fieldNameMM@ I
,MMI J
stringMMK Q
descriptionMMR ]
)MM] ^
{NN 	
AddFilterFieldsOO 
(OO 
	graphTypeOO %
,OO% &-
!NonStringValueComparisonOperatorsOO' H
,OOH I
	fieldNameOOJ S
,OOS T
descriptionOOU `
)OO` a
;OOa b
}PP 	
privateRR 
voidRR  
AddMultiValueFiltersRR )
(RR) *
TypeRR* .
	graphTypeRR/ 8
,RR8 9
stringRR: @
	fieldNameRRA J
,RRJ K
stringRRL R
descriptionRRS ^
)RR^ _
{SS 	
varTT 
wrappedTypeTT 
=TT 
typeofTT $
(TT$ %
ListGraphTypeTT% 2
<TT2 3
>TT3 4
)TT4 5
.TT5 6
MakeGenericTypeTT6 E
(TTE F
	graphTypeTTF O
)TTO P
;TTP Q
AddFilterFieldsUU 
(UU 
wrappedTypeUU '
,UU' ()
MultiValueComparisonOperatorsUU) F
,UUF G
	fieldNameUUH Q
,UUQ R
descriptionUUS ^
)UU^ _
;UU_ `
}VV 	
privateXX 
voidXX 
AddFilterFieldsXX $
(XX$ %
TypeXX% )
	graphTypeXX* 3
,XX3 4
IDictionaryXX5 @
<XX@ A
stringXXA G
,XXG H
stringXXI O
>XXO P
filtersXXQ X
,XXX Y
stringXXZ `
	fieldNameXXa j
,XXj k
stringXXl r
descriptionXXs ~
)XX~ 
{YY 	
foreachZZ 
(ZZ 
varZZ 
filterZZ 
inZZ  "
filtersZZ# *
)ZZ* +
{[[ 
Field\\ 
(\\ 
	graphType\\ 
,\\  
	fieldName\\! *
+\\+ ,
filter\\- 3
.\\3 4
Key\\4 7
,\\7 8
$"\\9 ;
{\\; <
description\\< G
}\\G H
{\\I J
filter\\J P
.\\P Q
Value\\Q V
}\\V W
"\\W X
)\\X Y
;\\Y Z
}]] 
}^^ 	
}__ 
}`` ù&
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\Resolvers\LockedAsyncFieldResolver.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
." #
	Resolvers# ,
{ 
public 

class $
LockedAsyncFieldResolver )
<) *
TReturnType* 5
>5 6
:7 8
IFieldResolver9 G
<G H
TaskH L
<L M
TReturnTypeM X
>X Y
>Y Z
{		 
private

 
readonly

 
Func

 
<

 
ResolveFieldContext

 1
,

1 2
Task

3 7
<

7 8
TReturnType

8 C
>

C D
>

D E
	_resolver

F O
;

O P
public $
LockedAsyncFieldResolver '
(' (
Func( ,
<, -
ResolveFieldContext- @
,@ A
TaskB F
<F G
TReturnTypeG R
>R S
>S T
resolverU ]
)] ^
{ 	
	_resolver 
= 
resolver  
;  !
} 	
public 
async 
Task 
< 
TReturnType %
>% &
Resolve' .
(. /
ResolveFieldContext/ B
contextC J
)J K
{ 	
var 
graphContext 
= 
(  
GraphQLContext  .
). /
context/ 6
.6 7
UserContext7 B
;B C
await 
graphContext 
.  
ExecutionContextLock 3
.3 4
	WaitAsync4 =
(= >
)> ?
;? @
try 
{ 
return 
await 
	_resolver &
(& '
context' .
). /
;/ 0
} 
finally 
{ 
graphContext 
.  
ExecutionContextLock 1
.1 2
Release2 9
(9 :
): ;
;; <
} 
} 	
object!! 
IFieldResolver!! 
.!! 
Resolve!! %
(!!% &
ResolveFieldContext!!& 9
context!!: A
)!!A B
{"" 	
return## 
Resolve## 
(## 
context## "
)##" #
;### $
}$$ 	
}%% 
public'' 

class'' $
LockedAsyncFieldResolver'' )
<'') *
TSourceType''* 5
,''5 6
TReturnType''7 B
>''B C
:''D E
AsyncFieldResolver''F X
<''X Y
TSourceType''Y d
,''d e
TReturnType''f q
>''q r
,''r s
IFieldResolver	''t Ç
<
''Ç É
Task
''É á
<
''á à
TReturnType
''à ì
>
''ì î
>
''î ï
{(( 
public)) $
LockedAsyncFieldResolver)) '
())' (
Func))( ,
<)), -
ResolveFieldContext))- @
<))@ A
TSourceType))A L
>))L M
,))M N
Task))O S
<))S T
TReturnType))T _
>))_ `
>))` a
resolver))b j
)))j k
:))l m
base))n r
())r s
resolver))s {
))){ |
{** 	
}++ 	
public-- 
new-- 
async-- 
Task-- 
<-- 
TReturnType-- )
>--) *
Resolve--+ 2
(--2 3
ResolveFieldContext--3 F
context--G N
)--N O
{.. 	
var// 
graphContext// 
=// 
(//  
GraphQLContext//  .
)//. /
context/// 6
.//6 7
UserContext//7 B
;//B C
await00 
graphContext00 
.00  
ExecutionContextLock00 3
.003 4
	WaitAsync004 =
(00= >
)00> ?
;00? @
try22 
{33 
return44 
await44 
base44 !
.44! "
Resolve44" )
(44) *
context44* 1
)441 2
;442 3
}55 
finally66 
{77 
graphContext88 
.88  
ExecutionContextLock88 1
.881 2
Release882 9
(889 :
)88: ;
;88; <
}99 
}:: 	
object<< 
IFieldResolver<< 
.<< 
Resolve<< %
(<<% &
ResolveFieldContext<<& 9
context<<: A
)<<A B
{== 	
return>> 
Resolve>> 
(>> 
context>> "
)>>" #
;>># $
}?? 	
}@@ 
}AA ·
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Apis.GraphQL.Abstractions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Apis 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
void #
AddInputObjectGraphType 2
<2 3
TObject3 :
,: ;
TObjectType< G
>G H
(H I
thisI M
IServiceCollectionN `
servicesa i
)i j
where 
TObject 
: 
class !
where 
TObjectType 
:  
InputObjectGraphType  4
<4 5
TObject5 <
>< =
{ 	
services 
. 
AddSingleton !
<! "
TObjectType" -
>- .
(. /
)/ 0
;0 1
services 
. 
AddSingleton !
<! " 
InputObjectGraphType" 6
<6 7
TObject7 >
>> ?
,? @
TObjectTypeA L
>L M
(M N
sN O
=>P R
sS T
.T U
GetRequiredServiceU g
<g h
TObjectTypeh s
>s t
(t u
)u v
)v w
;w x
services 
. 
AddSingleton !
<! "!
IInputObjectGraphType" 7
,7 8
TObjectType9 D
>D E
(E F
sF G
=>H J
sK L
.L M
GetRequiredServiceM _
<_ `
TObjectType` k
>k l
(l m
)m n
)n o
;o p
} 	
public 
static 
void 
AddObjectGraphType -
<- .
TInput. 4
,4 5

TInputType6 @
>@ A
(A B
thisB F
IServiceCollectionG Y
servicesZ b
)b c
where   
TInput   
:   
class    
where!! 

TInputType!! 
:!! 
ObjectGraphType!! .
<!!. /
TInput!!/ 5
>!!5 6
{"" 	
services%% 
.%% 
AddSingleton%% !
<%%! "

TInputType%%" ,
>%%, -
(%%- .
)%%. /
;%%/ 0
services&& 
.&& 
AddSingleton&& !
<&&! "
ObjectGraphType&&" 1
<&&1 2
TInput&&2 8
>&&8 9
,&&9 :

TInputType&&; E
>&&E F
(&&F G
s&&G H
=>&&I K
s&&L M
.&&M N
GetRequiredService&&N `
<&&` a

TInputType&&a k
>&&k l
(&&l m
)&&m n
)&&n o
;&&o p
services'' 
.'' 
AddSingleton'' !
<''! "
IObjectGraphType''" 2
,''2 3

TInputType''4 >
>''> ?
(''? @
s''@ A
=>''B D
s''E F
.''F G
GetRequiredService''G Y
<''Y Z

TInputType''Z d
>''d e
(''e f
)''f g
)''g h
;''h i
}(( 	
})) 
}** 