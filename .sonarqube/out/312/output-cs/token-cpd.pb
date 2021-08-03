—(
ŒD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Scripting.JavaScript\JavaScriptEngine.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
.  

JavaScript  *
{		 
public

 

class

 
JavaScriptEngine

 !
:

" #
IScriptingEngine

$ 4
{ 
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
public 
JavaScriptEngine 
(  
IMemoryCache  ,
memoryCache- 8
)8 9
{ 	
_memoryCache 
= 
memoryCache &
;& '
} 	
public 
string 
Prefix 
=> 
$str  $
;$ %
public 
IScriptingScope 
CreateScope *
(* +
IEnumerable+ 6
<6 7
GlobalMethod7 C
>C D
methodsE L
,L M
IServiceProviderN ^
serviceProvider_ n
,n o
IFileProviderp }
fileProvider	~ Š
,
Š ‹
string
Œ ’
basePath
“ ›
)
› œ
{ 	
var 
engine 
= 
new 
Engine #
(# $
)$ %
;% &
foreach 
( 
var 
method 
in  "
methods# *
)* +
{ 
engine 
. 
SetValue 
(  
method  &
.& '
Name' +
,+ ,
method- 3
.3 4
Method4 :
(: ;
serviceProvider; J
)J K
)K L
;L M
} 
return 
new 
JavaScriptScope &
(& '
engine' -
,- .
serviceProvider/ >
)> ?
;? @
} 	
public!! 
object!! 
Evaluate!! 
(!! 
IScriptingScope!! .
scope!!/ 4
,!!4 5
string!!6 <
script!!= C
)!!C D
{"" 	
if## 
(## 
scope## 
==## 
null## 
)## 
{$$ 
throw%% 
new%% !
ArgumentNullException%% /
(%%/ 0
nameof%%0 6
(%%6 7
scope%%7 <
)%%< =
)%%= >
;%%> ?
}&& 
var(( 
jsScope(( 
=(( 
scope(( 
as((  "
JavaScriptScope((# 2
;((2 3
if** 
(** 
jsScope** 
==** 
null** 
)**  
{++ 
throw,, 
new,, 
ArgumentException,, +
(,,+ ,
$",,, .%
Expected a scope of type ,,. G
{,,G H
nameof,,H N
(,,N O
JavaScriptScope,,O ^
),,^ _
},,_ `
",,` a
,,,a b
nameof,,c i
(,,i j
scope,,j o
),,o p
),,p q
;,,q r
}-- 
var// 
	parsedAst// 
=// 
_memoryCache// (
.//( )
GetOrCreate//) 4
(//4 5
script//5 ;
,//; <
entry//= B
=>//C E
{00 
var11 
parser11 
=11 
new11  
JavaScriptParser11! 1
(111 2
script112 8
)118 9
;119 :
return22 
parser22 
.22 
ParseScript22 )
(22) *
)22* +
;22+ ,
}33 
)33 
;33 
var55 
result55 
=55 
jsScope55  
.55  !
Engine55! '
.55' (
Execute55( /
(55/ 0
	parsedAst550 9
)559 :
.55: ;
GetCompletionValue55; M
(55M N
)55N O
?55O P
.55P Q
ToObject55Q Y
(55Y Z
)55Z [
;55[ \
return77 
result77 
;77 
}88 	
}99 
public;; 

class;; 
MethodProxy;; 
{<< 
public== 
IList== 
<== 
object== 
>== 
	Arguments== &
{==' (
get==) ,
;==, -
set==. 1
;==1 2
}==3 4
public>> 
Func>> 
<>> 
IServiceProvider>> $
,>>$ %
IList>>& +
<>>+ ,
object>>, 2
>>>2 3
,>>3 4
object>>5 ;
>>>; <
Callback>>= E
{>>F G
get>>H K
;>>K L
set>>M P
;>>P Q
}>>R S
public?? 
object?? 
Invoke?? 
(?? 
)?? 
{@@ 	
returnAA 
CallbackAA 
(AA 
nullAA  
,AA  !
	ArgumentsAA" +
)AA+ ,
;AA, -
}BB 	
}CC 
}DD µ
‹D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Scripting.JavaScript\JavaScriptScope.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
.  

JavaScript  *
{ 
public 

class 
JavaScriptScope  
:! "
IScriptingScope# 2
{ 
public 
JavaScriptScope 
( 
Engine %
engine& ,
,, -
IServiceProvider. >
serviceProvider? N
)N O
{		 	
Engine

 
=

 
engine

 
;

 
ServiceProvider 
= 
serviceProvider -
;- .
} 	
public 
Engine 
Engine 
{ 
get "
;" #
}$ %
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
}7 8
} 
} ¬
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Scripting.JavaScript\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
.  

JavaScript  *
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddJavaScriptEngine) <
(< =
this= A
IServiceCollectionB T
servicesU ]
)] ^
{ 	
services		 
.		 
AddSingleton		 !
<		! "
IScriptingEngine		" 2
,		2 3
JavaScriptEngine		4 D
>		D E
(		E F
)		F G
;		G H
return 
services 
; 
} 	
} 
} 