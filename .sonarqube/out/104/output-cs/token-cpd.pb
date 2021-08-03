É
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\Condition.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

class 
	Condition 
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
string 
ConditionId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ç
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\ConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

	interface 
IConditionEvaluator (
{ 
	ValueTask 
< 
bool 
> 
EvaluateAsync %
(% &
	Condition& /
	condition0 9
)9 :
;: ;
} 
public

 

abstract

 
class

 
ConditionEvaluator

 ,
<

, -
T

- .
>

. /
:

0 1
IConditionEvaluator

2 E
where

F K
T

L M
:

N O
	Condition

P Y
{ 
	protected 
static 
readonly !
	ValueTask" +
<+ ,
bool, 0
>0 1
False2 7
=8 9
new: =
	ValueTask> G
<G H
boolH L
>L M
(M N
falseN S
)S T
;T U
	protected 
static 
readonly !
	ValueTask" +
<+ ,
bool, 0
>0 1
True2 6
=7 8
new9 <
	ValueTask= F
<F G
boolG K
>K L
(L M
trueM Q
)Q R
;R S
	ValueTask 
< 
bool 
> 
IConditionEvaluator +
.+ ,
EvaluateAsync, 9
(9 :
	Condition: C
	conditionD M
)M N
=> 
EvaluateAsync 
( 
	condition &
as' )
T* +
)+ ,
;, -
public 
abstract 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6
T6 7
	condition8 A
)A B
;B C
} 
} ó
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\ConditionGroup.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

class 
ConditionGroup 
:  !
	Condition" +
{ 
public		 
List		 
<		 
	Condition		 
>		 

Conditions		 )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
=		8 9
new		: =
List		> B
<		B C
	Condition		C L
>		L M
(		M N
)		N O
;		O P
}

 
public 

class %
DisplayTextConditionGroup *
:+ ,
ConditionGroup- ;
{ 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Ú
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\ConditionOperator.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

abstract 
class 
ConditionOperator +
{ 
} 
} ﬁ
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\ConditionOperatorOptions.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

class $
ConditionOperatorOptions )
{ 
private

 

Dictionary

 
<

 
string

 !
,

! "%
IConditionOperatorFactory

# <
>

< =

_factories

> H
;

H I
public 
IReadOnlyDictionary "
<" #
string# )
,) *%
IConditionOperatorFactory+ D
>D E
	FactoriesF O
=>P R

_factoriesS ]
??=^ a
	Operatorsb k
.k l
ToDictionaryl x
(x y
xy z
=>{ }
x~ 
.	 Ä
Factory
Ä á
.
á à
Name
à å
,
å ç
x
é è
=>
ê í
x
ì î
.
î ï
Factory
ï ú
)
ú ù
;
ù û
private 

Dictionary 
< 
Type 
,  #
ConditionOperatorOption! 8
>8 9*
_conditionOperatorOptionByType: X
;X Y
public 
IReadOnlyDictionary "
<" #
Type# '
,' (#
ConditionOperatorOption) @
>@ A)
ConditionOperatorOptionByTypeB _
=>` b+
_conditionOperatorOptionByType	c Å
??=
Ç Ö
	Operators
Ü è
.
è ê
ToDictionary
ê ú
(
ú ù
x
ù û
=>
ü °
x
¢ £
.
£ §
Operator
§ ¨
,
¨ ≠
x
Æ Ø
=>
∞ ≤
x
≥ ¥
)
¥ µ
;
µ ∂
public 
List 
< #
ConditionOperatorOption +
>+ ,
	Operators- 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
newG J
ListK O
<O P#
ConditionOperatorOptionP g
>g h
(h i
)i j
;j k
} 
public 

class #
ConditionOperatorOption (
{ 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
IOperatorComparer  
Comparer! )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
Type 
Operator 
{ 
get "
;" #
set$ '
;' (
}) *
public %
IConditionOperatorFactory (
Factory) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} 
} „
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\ConditionOptions.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

class 
ConditionOptions !
{ 
private 
readonly 

Dictionary #
<# $
Type$ (
,( )
Type* .
>. /
_evaluators0 ;
=< =
new> A

DictionaryB L
<L M
TypeM Q
,Q R
TypeS W
>W X
(X Y
)Y Z
;Z [
public		 
IReadOnlyDictionary		 "
<		" #
Type		# '
,		' (
Type		) -
>		- .

Evaluators		/ 9
=>		: <
_evaluators		= H
;		H I
internal 
void 
AddCondition "
(" #
Type# '
	condition( 1
,1 2
Type3 7
conditionEvaluator8 J
)J K
{ 	
if 
( 
! 
typeof 
( 
	Condition !
)! "
." #
IsAssignableFrom# 3
(3 4
	condition4 =
)= >
)> ?
{ 
throw 
new 
ArgumentException +
(+ ,
$str, F
+G H
nameofI O
(O P
	ConditionP Y
)Y Z
)Z [
;[ \
} 
if 
( 
! 
typeof 
( 
IConditionEvaluator +
)+ ,
., -
IsAssignableFrom- =
(= >
conditionEvaluator> P
)P Q
)Q R
{ 
throw 
new 
ArgumentException +
(+ ,
$str, F
+G H
nameofI O
(O P
conditionEvaluatorP b
)b c
)c d
;d e
} 
_evaluators 
[ 
	condition !
]! "
=# $
conditionEvaluator% 7
;7 8
} 	
} 
} à
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\IConditionFactory.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

	interface 
IConditionFactory &
{ 
string 
Name 
{ 
get 
; 
} 
	Condition 
Create 
( 
) 
; 
} 
public		 

class		 
ConditionFactory		 !
<		! "

TCondition		" ,
>		, -
:		. /
IConditionFactory		0 A
where		B G

TCondition		H R
:		S T
	Condition		U ^
,		^ _
new		` c
(		c d
)		d e
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
(8 9

TCondition9 C
)C D
.D E
NameE I
;I J
public 
string 
Name 
=> 
TypeName &
;& '
public 
	Condition 
Create 
(  
)  !
=> 
new 

TCondition 
( 
) 
{ 
Name 
= 
this 
. 
Name  
} 
; 
} 
} Û
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\IConditionIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

	interface !
IConditionIdGenerator *
{ 
void 
GenerateUniqueId 
( 
	Condition '
	condition( 1
)1 2
;2 3
} 
} ˜
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\IConditionOperatorFactory.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

	interface %
IConditionOperatorFactory .
{ 
string 
Name 
{ 
get 
; 
} 
ConditionOperator 
Create  
(  !
)! "
;" #
} 
public		 

class		 $
ConditionOperatorFactory		 )
<		) *
TConditionOperator		* <
>		< =
:		> ?%
IConditionOperatorFactory		@ Y
where		Z _
TConditionOperator		` r
:		s t
ConditionOperator			u Ü
,
		Ü á
new
		à ã
(
		ã å
)
		å ç
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
(8 9
TConditionOperator9 K
)K L
.L M
NameM Q
;Q R
public 
string 
Name 
=> 
TypeName &
;& '
public 
ConditionOperator  
Create! '
(' (
)( )
=> 
new 
TConditionOperator %
(% &
)& '
;' (
} 
} ù
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\IConditionOperatorResolver.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

	interface &
IConditionOperatorResolver /
{ 
IOperatorComparer 
GetOperatorComparer -
(- .
ConditionOperator. ?
conditionOperator@ Q
)Q R
;R S
} 
} ¶
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\IConditionResolver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public		 

	interface		 
IConditionResolver		 '
{

 
IConditionEvaluator !
GetConditionEvaluator 1
(1 2
	Condition2 ;
	condition< E
)E F
;F G
} 
} “
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\IOperatorComparer.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

	interface 
IOperatorComparer &
{ 
bool 
Compare 
( 
ConditionOperator &
ruleOperation' 4
,4 5
object6 <
a= >
,> ?
object@ F
bG H
)H I
;I J
} 
} ç
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\IRuleMigrator.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public		 

	interface		 
IRuleMigrator		 "
{

 
void 
Migrate 
( 
string 
existingRule (
,( )
Rule* .
rule/ 3
)3 4
;4 5
} 
} â
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\IRuleService.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

	interface 
IRuleService !
{ 
	ValueTask 
< 
bool 
> 
EvaluateAsync %
(% &
Rule& *
rule+ /
)/ 0
;0 1
} 
}		 
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\OperatorComparer.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

abstract 
class 
OperatorComparer *
<* +
TConditionOperator+ =
,= >
TCompare? G
>G H
:I J
IOperatorComparerK \
where] b
TConditionOperatorc u
:v w
ConditionOperator	x â
{ 
bool 
IOperatorComparer 
. 
Compare &
(& '
ConditionOperator' 8
conditionOperator9 J
,J K
objectL R
aS T
,T U
objectV \
b] ^
)^ _
=> 
Compare 
( 
( 
TConditionOperator *
)* +
conditionOperator+ <
,< =
(> ?
TCompare? G
)G H
aH I
,I J
(K L
TCompareL T
)T U
bU V
)V W
;W X
public 
abstract 
bool 
Compare $
($ %
TConditionOperator% 7
conditionOperator8 I
,I J
TCompareK S
aT U
,U V
TCompareW _
b` a
)a b
;b c
} 
}		 Ï
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\Rule.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

class 
Rule 
: 
ConditionGroup &
{ 
} 
} Í
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Rules.Abstractions\ServicesCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddCondition) 5
(5 6
this6 :
IServiceCollection; M
servicesN V
,V W
TypeX \
	condition] f
,f g
Typeh l
conditionEvaluatorm 
,	 Ä
Type
Å Ö
conditionFactory
Ü ñ
)
ñ ó
{		 	
services

 
.

 
	Configure

 
<

 
ConditionOptions

 /
>

/ 0
(

0 1
o

1 2
=>

3 5
{ 
o 
. 
AddCondition 
( 
	condition (
,( )
conditionEvaluator* <
)< =
;= >
} 
) 
; 
services 
. 
	AddScoped 
( 
conditionEvaluator 1
)1 2
;2 3
var 
factoryDescriptor !
=" #
new$ '
ServiceDescriptor( 9
(9 :
typeof: @
(@ A
IConditionFactoryA R
)R S
,S T
conditionFactoryU e
,e f
ServiceLifetimeg v
.v w
	Singleton	w Ä
)
Ä Å
;
Å Ç
services 
. 
Add 
( 
factoryDescriptor *
)* +
;+ ,
return 
services 
; 
} 	
public 
static 
IServiceCollection (
AddCondition) 5
<5 6

TCondition6 @
,@ A
TConditionEvaluatorB U
,U V
TConditionFactoryW h
>h i
(i j
thisj n
IServiceCollection	o Å
services
Ç ä
)
ä ã
where 

TCondition 
: 
	Condition (
where 
TConditionEvaluator %
:& '
IConditionEvaluator( ;
where 
TConditionFactory #
:$ %
IConditionFactory& 7
=> 
services 
. 
AddCondition $
($ %
typeof% +
(+ ,

TCondition, 6
)6 7
,7 8
typeof9 ?
(? @
TConditionEvaluator@ S
)S T
,T U
typeofV \
(\ ]
TConditionFactory] n
)n o
)o p
;p q
} 
} 