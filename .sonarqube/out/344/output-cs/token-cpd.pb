÷
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.MiniProfiler\CurrentDbProfiler.cs
	namespace 	
OrchardCore
 
. 
MiniProfiler "
{ 
internal 
class 
CurrentDbProfiler $
:% &
IDbProfiler' 2
{		 
private

 
Func

 
<

 
IDbProfiler

  
>

  !
GetProfiler

" -
{

. /
get

0 3
;

3 4
}

5 6
public 
CurrentDbProfiler  
(  !
Func! %
<% &
IDbProfiler& 1
>1 2
getProfiler3 >
)> ?
=>@ B
GetProfilerC N
=O P
getProfilerQ \
;\ ]
public 
bool 
IsActive 
=> 
(  !
(! "
IDbProfiler" -
)- .
StackExchange. ;
.; <
	Profiling< E
.E F
MiniProfilerF R
.R S
CurrentS Z
)Z [
?[ \
.\ ]
IsActive] e
??f h
falsei n
;n o
public 
void 
ExecuteFinish !
(! "

IDbCommand" ,
profiledDbCommand- >
,> ?
SqlExecuteType@ N
executeTypeO Z
,Z [
DbDataReader\ h
readeri o
)o p
=>q s
GetProfiler 
( 
) 
? 
. 
ExecuteFinish (
(( )
profiledDbCommand) :
,: ;
executeType< G
,G H
readerI O
)O P
;P Q
public 
void 
ExecuteStart  
(  !

IDbCommand! +
profiledDbCommand, =
,= >
SqlExecuteType? M
executeTypeN Y
)Y Z
=>[ ]
GetProfiler 
( 
) 
? 
. 
ExecuteStart '
(' (
profiledDbCommand( 9
,9 :
executeType; F
)F G
;G H
public 
void 
OnError 
( 

IDbCommand &
profiledDbCommand' 8
,8 9
SqlExecuteType: H
executeTypeI T
,T U
	ExceptionV _
	exception` i
)i j
=>k m
GetProfiler 
( 
) 
? 
. 
OnError "
(" #
profiledDbCommand# 4
,4 5
executeType6 A
,A B
	exceptionC L
)L M
;M N
public 
void 
ReaderFinish  
(  !
IDataReader! ,
reader- 3
)3 4
=>5 7
GetProfiler 
( 
) 
? 
. 
ReaderFinish '
(' (
reader( .
). /
;/ 0
} 
} π
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.MiniProfiler\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str ;
,; <
Category		 
=		 
$str		 
)

 
]

 Õ
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.MiniProfiler\MiniProfilerConnectionFactory.cs
	namespace 	
OrchardCore
 
. 
MiniProfiler "
{ 
internal 
class )
MiniProfilerConnectionFactory 0
:1 2
IConnectionFactory3 E
{		 
private

 
readonly

 
IConnectionFactory

 +
_factory

, 4
;

4 5
private 
readonly 
static 
string  &
ConnectionName' 5
=6 7
nameof8 >
(> ? 
ProfiledDbConnection? S
)S T
.T U
ToLowerU \
(\ ]
)] ^
;^ _
public 
Type 
DbConnectionType $
=>% '
typeof( .
(. / 
ProfiledDbConnection/ C
)C D
;D E
public )
MiniProfilerConnectionFactory ,
(, -
IConnectionFactory- ?
factory@ G
)G H
{ 	
_factory 
= 
factory 
; 
} 	
public 
DbConnection 
CreateConnection ,
(, -
)- .
{ 	
var 

connection 
= 
_factory %
.% &
CreateConnection& 6
(6 7
)7 8
;8 9
return 
new  
ProfiledDbConnection +
(+ ,

connection, 6
,6 7
new8 ;
CurrentDbProfiler< M
(M N
(N O
)O P
=>Q S
StackExchangeT a
.a b
	Profilingb k
.k l
MiniProfilerl x
.x y
Current	y Ä
)
Ä Å
)
Å Ç
;
Ç É
} 	
} 
} Æ
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.MiniProfiler\MiniProfilerFilter.cs
	namespace

 	
OrchardCore


 
.

 
MiniProfiler

 "
{ 
public 

class 
MiniProfilerFilter #
:$ %
IAsyncResultFilter& 8
{ 
private 
readonly 
ILayoutAccessor (
_layoutAccessor) 8
;8 9
private 
readonly 
IShapeFactory &
_shapeFactory' 4
;4 5
private 
readonly 
MiniProfilerOptions ,
_options- 5
;5 6
public 
MiniProfilerFilter !
(! "
ILayoutAccessor 
layoutAccessor *
,* +
IShapeFactory 
shapeFactory &
,& '
IOptions 
< 
MiniProfilerOptions (
>( )
options* 1
)1 2
{ 	
_layoutAccessor 
= 
layoutAccessor ,
;, -
_shapeFactory 
= 
shapeFactory (
;( )
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
async 
Task "
OnResultExecutionAsync 0
(0 1"
ResultExecutingContext1 G
contextH O
,O P#
ResultExecutionDelegateQ h
nexti m
)m n
{ 	
if 
( 
( 
context 
. 
Result 
is  "

ViewResult# -
||. 0
context1 8
.8 9
Result9 ?
is@ B

PageResultC M
)M N
&&O Q
(   
_options   
.   
AllowOnAdmin   &
||  ' )
!  * +
AdminAttribute  + 9
.  9 :
	IsApplied  : C
(  C D
context  D K
.  K L
HttpContext  L W
)  W X
)  X Y
)  Y Z
{!! 
dynamic"" 
layout"" 
=""  
await""! &
_layoutAccessor""' 6
.""6 7
GetLayoutAsync""7 E
(""E F
)""F G
;""G H
var## 

footerZone## 
=##  
layout##! '
.##' (
Zones##( -
[##- .
$str##. 6
]##6 7
;##7 8

footerZone$$ 
.$$ 
Add$$ 
($$ 
await$$ $
_shapeFactory$$% 2
.$$2 3
CreateAsync$$3 >
($$> ?
$str$$? M
)$$M N
)$$N O
;$$O P
}%% 
await'' 
next'' 
.'' 
Invoke'' 
('' 
)'' 
;''  
}(( 	
})) 
}** á
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.MiniProfiler\MiniProfilerOptions.cs
	namespace 	
OrchardCore
 
. 
MiniProfiler "
{ 
public 

class 
MiniProfilerOptions $
{ 
public		 
bool		 
AllowOnAdmin		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
}

 
} ç	
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.MiniProfiler\MiniProfilerOrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class 4
(MiniProfilerOrchardCoreBuilderExtensions @
{ 
public

 
static

 
OrchardCoreBuilder

 ($
AllowMiniProfilerOnAdmin

) A
(

A B
this

B F
OrchardCoreBuilder

G Y
builder

Z a
)

a b
{ 	
return 
builder 
. 
ConfigureServices ,
(, -
services- 5
=>6 8
services 
. 
	Configure "
<" #
MiniProfilerOptions# 6
>6 7
(7 8
settings8 @
=>A C
settingsD L
.L M
AllowOnAdminM Y
=Z [
true\ `
)` a
)a b
;b c
} 	
} 
} „
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.MiniProfiler\ShapeStep.cs
	namespace 	
OrchardCore
 
. 
MiniProfiler "
{ 
public		 

class		 
	ShapeStep		 
:		 
IShapeDisplayEvents		 0
{

 
private 

Dictionary 
< 
object !
,! "
IDisposable# .
>. /
_timings0 8
=9 :
new; >

Dictionary? I
<I J
objectJ P
,P Q
IDisposableR ]
>] ^
(^ _
)_ `
;` a
public 
Task 
DisplayedAsync "
(" #
ShapeDisplayContext# 6
context7 >
)> ?
{ 	
if 
( 
_timings 
. 
TryGetValue $
($ %
context% ,
,, -
out. 1
var2 5
timing6 <
)< =
)= >
{ 
_timings 
. 
Remove 
(  
context  '
)' (
;( )
timing 
. 
Dispose 
( 
)  
;  !
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
DisplayingAsync #
(# $
ShapeDisplayContext$ 7
context8 ?
)? @
{ 	
var 
timing 
= 
StackExchange &
.& '
	Profiling' 0
.0 1
MiniProfiler1 =
.= >
Current> E
.E F
StepF J
(J K
$"K M
Shape: M T
{T U
contextU \
.\ ]
Shape] b
.b c
Metadatac k
.k l
Typel p
}p q
"q r
)r s
;s t
_timings 
. 
Add 
( 
context  
,  !
timing" (
)( )
;) *
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task $
DisplayingFinalizedAsync ,
(, -
ShapeDisplayContext- @
contextA H
)H I
{   	
if!! 
(!! 
_timings!! 
.!! 
TryGetValue!! $
(!!$ %
context!!% ,
,!!, -
out!!. 1
var!!2 5
timing!!6 <
)!!< =
)!!= >
{"" 
_timings## 
.## 
Remove## 
(##  
context##  '
)##' (
;##( )
timing$$ 
.$$ 
Dispose$$ 
($$ 
)$$  
;$$  !
}%% 
return'' 
Task'' 
.'' 
CompletedTask'' %
;''% &
}(( 	
})) 
}** »
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.MiniProfiler\Startup.cs
	namespace

 	
OrchardCore


 
.

 
MiniProfiler

 "
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
int 
Order !
=>" $
-% &
$num& )
;) *
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	Configure 
< 

MvcOptions )
>) *
(* +
(+ ,
options, 3
)3 4
=>5 7
{ 
options 
. 
Filters 
.  
Add  #
(# $
typeof$ *
(* +
MiniProfilerFilter+ =
)= >
)> ?
;? @
} 
) 
; 
services 
. 
	AddScoped 
< 
IShapeDisplayEvents 2
,2 3
	ShapeStep4 =
>= >
(> ?
)? @
;@ A
services 
. 
AddMiniProfiler $
($ %
)% &
;& '
} 	
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
app 
. 
UseMiniProfiler 
(  
)  !
;! "
var!! 
store!! 
=!! 
serviceProvider!! '
.!!' (

GetService!!( 2
<!!2 3
IStore!!3 9
>!!9 :
(!!: ;
)!!; <
;!!< =
store$$ 
.$$ 
Configuration$$ 
.$$  
ConnectionFactory$$  1
=$$2 3
new$$4 7)
MiniProfilerConnectionFactory$$8 U
($$U V
store$$V [
.$$[ \
Configuration$$\ i
.$$i j
ConnectionFactory$$j {
)$${ |
;$$| }
}%% 	
}&& 
}'' 