˜
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\Ast\ArgumentsExpression.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Ast  
{ 
public 

class 
ArgumentsExpression $
:% &

Expression' 1
{		 
private

 
readonly

 
FilterArgument

 '
[

' (
]

( )

_arguments

* 4
;

4 5
public 
ArgumentsExpression "
(" #
FilterArgument# 1
[1 2
]2 3
	arguments4 =
)= >
{ 	

_arguments 
= 
	arguments "
;" #
} 	
public 
override 
async 
	ValueTask '
<' (

FluidValue( 2
>2 3
EvaluateAsync4 A
(A B
TemplateContextB Q
contextR Y
)Y Z
{ 	
var 
	arguments 
= 
new 
FilterArguments  /
(/ 0
)0 1
;1 2
foreach 
( 
var 
argument !
in" $

_arguments% /
)/ 0
{ 
	arguments 
. 
Add 
( 
argument &
.& '
Name' +
,+ ,
await- 2
argument3 ;
.; <

Expression< F
.F G
EvaluateAsyncG T
(T U
contextU \
)\ ]
)] ^
;^ _
} 
return 

FluidValue 
. 
Create $
($ %
	arguments% .
). /
;/ 0
} 	
} 
} ›
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\Ast\ExpressionArgumentsTag.cs
	namespace

 	
OrchardCore


 
.

 
Liquid

 
.

 
Ast

  
{ 
public 

abstract 
class "
ExpressionArgumentsTag 0
:1 2
ITag3 7
{ 
public 
BnfTerm 
	GetSyntax  
(  !
FluidGrammar! -
grammar. 5
)5 6
{ 	
return 
grammar 
. 

Expression %
+& '
grammar( /
./ 0
FilterArguments0 ?
;? @
} 	
public 
	Statement 
Parse 
( 
ParseTreeNode ,
node- 1
,1 2
ParserContext3 @
contextA H
)H I
{ 	
var 

expression 
= 
DefaultFluidParser /
./ 0
BuildExpression0 ?
(? @
node@ D
.D E

ChildNodesE O
[O P
$numP Q
]Q R
.R S

ChildNodesS ]
[] ^
$num^ _
]_ `
)` a
;a b
var 
	arguments 
= 
node  
.  !

ChildNodes! +
[+ ,
$num, -
]- .
.. /

ChildNodes/ 9
[9 :
$num: ;
]; <
.< =

ChildNodes= G
.G H
SelectH N
(N O
DefaultFluidParserO a
.a b
BuildFilterArgumentb u
)u v
.v w
ToArrayw ~
(~ 
)	 Ä
;
Ä Å
return 
new 
DelegateStatement (
(( )
() *
writer* 0
,0 1
encoder2 9
,9 :
ctx; >
)> ?
=>@ B
WriteToAsyncC O
(O P
writerP V
,V W
encoderX _
,_ `
ctxa d
,d e

expressionf p
,p q
	argumentsr {
){ |
)| }
;} ~
} 	
public 
abstract 
	ValueTask !
<! "

Completion" ,
>, -
WriteToAsync. :
(: ;

TextWriter; E
writerF L
,L M
TextEncoderN Y
encoderZ a
,a b
TemplateContextc r
contexts z
,z {

Expression	| Ü
term
á ã
,
ã å
FilterArgument
ç õ
[
õ ú
]
ú ù
	arguments
û ß
)
ß ®
;
® ©
} 
} ô
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\ILiquidFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

	interface 
ILiquidFilter "
{ 
	ValueTask		 
<		 

FluidValue		 
>		 
ProcessAsync		 *
(		* +

FluidValue		+ 5
input		6 ;
,		; <
FilterArguments		= L
	arguments		M V
,		V W
TemplateContext		X g
ctx		h k
)		k l
;		l m
}

 
} É
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\ILiquidTemplateEventHandler.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

	interface '
ILiquidTemplateEventHandler 0
{ 
Task 
RenderingAsync 
( 
TemplateContext +
context, 3
)3 4
;4 5
}		 
}

 ÿ.
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\ILiquidTemplateManager.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{		 
public 

	interface "
ILiquidTemplateManager +
{ !
LiquidTemplateContext 
Context %
{& '
get( +
;+ ,
}- .
Task 
< 
string 
> 
RenderAsync  
(  !
string! '
template( 0
,0 1
TextEncoder2 =
encoder> E
,E F
objectG M
modelN S
,S T
ActionU [
<[ \
Scope\ a
>a b
scopeActionc n
)n o
;o p
Task 
RenderAsync 
( 
string 
template  (
,( )

TextWriter* 4
writer5 ;
,; <
TextEncoder= H
encoderI P
,P Q
objectR X
modelY ^
,^ _
Action` f
<f g
Scopeg l
>l m
scopeActionn y
)y z
;z {
bool!! 
Validate!! 
(!! 
string!! 
template!! %
,!!% &
out!!' *
IEnumerable!!+ 6
<!!6 7
string!!7 =
>!!= >
errors!!? E
)!!E F
;!!F G
}"" 
public$$ 

static$$ 
class$$ +
LiquidTemplateManagerExtensions$$ 7
{%% 
public&& 
static&& 
Task&& 
<&& 
string&& !
>&&! "
RenderAsync&&# .
(&&. /
this&&/ 3"
ILiquidTemplateManager&&4 J
manager&&K R
,&&R S
string&&T Z
template&&[ c
,&&c d
TextEncoder&&e p
encoder&&q x
)&&x y
=>'' 
manager'' 
.'' 
RenderAsync'' "
(''" #
template''# +
,''+ ,
encoder''- 4
,''4 5
null''6 :
,'': ;
scopeAction''< G
:''G H
null''I M
)''M N
;''N O
public)) 
static)) 
Task)) 
RenderAsync)) &
())& '
this))' +"
ILiquidTemplateManager)), B
manager))C J
,))J K
string))L R
template))S [
,))[ \

TextWriter))] g
writer))h n
,))n o
TextEncoder))p {
encoder	))| É
)
))É Ñ
=>** 
manager** 
.** 
RenderAsync** "
(**" #
template**# +
,**+ ,
writer**- 3
,**3 4
encoder**5 <
,**< =
null**> B
,**B C
scopeAction**D O
:**O P
null**Q U
)**U V
;**V W
public,, 
static,, 
Task,, 
<,, 
string,, !
>,,! "
RenderAsync,,# .
(,,. /
this,,/ 3"
ILiquidTemplateManager,,4 J
manager,,K R
,,,R S
string,,T Z
template,,[ c
,,,c d
TextEncoder,,e p
encoder,,q x
,,,x y
object	,,z Ä
model
,,Å Ü
)
,,Ü á
=>-- 
manager-- 
.-- 
RenderAsync-- "
(--" #
template--# +
,--+ ,
encoder--- 4
,--4 5
model--6 ;
,--; <
scopeAction--= H
:--H I
null--J N
)--N O
;--O P
public// 
static// 
Task// 
RenderAsync// &
(//& '
this//' +"
ILiquidTemplateManager//, B
manager//C J
,//J K
string//L R
template//S [
,//[ \

TextWriter//] g
writer//h n
,//n o
TextEncoder//p {
encoder	//| É
,
//É Ñ
object
//Ö ã
model
//å ë
)
//ë í
=>00 
manager00 
.00 
RenderAsync00 "
(00" #
template00# +
,00+ ,
writer00- 3
,003 4
encoder005 <
,00< =
model00> C
,00C D
scopeAction00E P
:00P Q
null00R V
)00V W
;00W X
public22 
static22 
Task22 
<22 
string22 !
>22! "
RenderAsync22# .
(22. /
this22/ 3"
ILiquidTemplateManager224 J
manager22K R
,22R S
string22T Z
template22[ c
,22c d
TextEncoder22e p
encoder22q x
,22x y
Action	22z Ä
<
22Ä Å
Scope
22Å Ü
>
22Ü á
scopeAction
22à ì
)
22ì î
=>33 
manager33 
.33 
RenderAsync33 "
(33" #
template33# +
,33+ ,
encoder33- 4
,334 5
null336 :
,33: ;
scopeAction33< G
)33G H
;33H I
public55 
static55 
Task55 
RenderAsync55 &
(55& '
this55' +"
ILiquidTemplateManager55, B
manager55C J
,55J K
string55L R
template55S [
,55[ \

TextWriter55] g
writer55h n
,55n o
TextEncoder55p {
encoder	55| É
,
55É Ñ
Action
55Ö ã
<
55ã å
Scope
55å ë
>
55ë í
scopeAction
55ì û
)
55û ü
=>66 
manager66 
.66 
RenderAsync66 "
(66" #
template66# +
,66+ ,
writer66- 3
,663 4
encoder665 <
,66< =
null66> B
,66B C
scopeAction66D O
)66O P
;66P Q
}77 
}88 ‘
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\ISlugService.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

	interface 
ISlugService !
{ 
string

 
Slugify

 
(

 
string

 
text

 "
)

" #
;

# $
} 
} ß
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\LiquidContentAccessor.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class !
LiquidContentAccessor &
{ 
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public

 
override

 
string

 
ToString

 '
(

' (
)

( )
=>

* ,
Content

- 4
;

4 5
} 
} Ï
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\LiquidOptions.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class 
LiquidOptions 
{ 
public 

Dictionary 
< 
string  
,  !
Type" &
>& '
FilterRegistrations( ;
{< =
get> A
;A B
}C D
=E F
newG J

DictionaryK U
<U V
stringV \
,\ ]
Type^ b
>b c
(c d
)d e
;e f
}		 
}

 â

ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\LiquidPropertyAccessor.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class "
LiquidPropertyAccessor '
{ 
private 
readonly 
Func 
< 
string $
,$ %
Task& *
<* +

FluidValue+ 5
>5 6
>6 7
_getter8 ?
;? @
public "
LiquidPropertyAccessor %
(% &
Func& *
<* +
string+ 1
,1 2
Task3 7
<7 8

FluidValue8 B
>B C
>C D
getterE K
)K L
{ 	
_getter 
= 
getter 
; 
} 	
public 
Task 
< 

FluidValue 
> 
GetValueAsync  -
(- .
string. 4

identifier5 ?
)? @
{ 	
return 
_getter 
( 

identifier %
)% &
;& '
} 	
} 
} â
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\LiquidTemplateContext.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class !
LiquidTemplateContext &
:' (
TemplateContext) 8
{ 
public !
LiquidTemplateContext $
($ %
IServiceProvider% 5
services6 >
)> ?
{		 	
Services

 
=

 
services

 
;

  
} 	
public 
IServiceProvider 
Services  (
{) *
get+ .
;. /
}0 1
} 
} ë
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Liquid.Abstractions\ServiceExtensions.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddLiquidFilter) 8
<8 9
T9 :
>: ;
(; <
this< @
IServiceCollectionA S
servicesT \
,\ ]
string^ d
namee i
)i j
wherek p
Tq r
:s t
classu z
,z {
ILiquidFilter	| â
{ 	
services		 
.		 
	Configure		 
<		 
LiquidOptions		 ,
>		, -
(		- .
options		. 5
=>		6 8
options		9 @
.		@ A
FilterRegistrations		A T
[		T U
name		U Y
]		Y Z
=		[ \
typeof		] c
(		c d
T		d e
)		e f
)		f g
;		g h
services

 
.

 
	AddScoped

 
<

 
T

  
>

  !
(

! "
)

" #
;

# $
return 
services 
; 
} 	
} 
} 