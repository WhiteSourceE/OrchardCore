±g
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Activities\Activity.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public 

abstract 
class 
Activity "
:# $
Entity% +
,+ ,
	IActivity- 6
{ 
public 
abstract 
string 
Name #
{$ %
get& )
;) *
}+ ,
public 
abstract 
LocalizedString '
DisplayText( 3
{4 5
get6 9
;9 :
}; <
public 
abstract 
LocalizedString '
Category( 0
{1 2
get3 6
;6 7
}8 9
public 
virtual 
bool 
	HasEditor %
=>& (
true) -
;- .
public 
abstract 
IEnumerable #
<# $
Outcome$ +
>+ ,
GetPossibleOutcomes- @
(@ A$
WorkflowExecutionContextA Y
workflowContextZ i
,i j
ActivityContextk z
activityContext	{ ä
)
ä ã
;
ã å
public 
virtual 
Task 
< 
bool  
>  !
CanExecuteAsync" 1
(1 2$
WorkflowExecutionContext2 J
workflowContextK Z
,Z [
ActivityContext\ k
activityContextl {
){ |
{ 	
return 
Task 
. 

FromResult "
(" #

CanExecute# -
(- .
workflowContext. =
,= >
activityContext? N
)N O
)O P
;P Q
} 	
public 
virtual 
bool 

CanExecute &
(& '$
WorkflowExecutionContext' ?
workflowContext@ O
,O P
ActivityContextQ `
activityContexta p
)p q
{ 	
return 
true 
; 
}   	
public"" 
virtual"" 
Task"" 
<"" #
ActivityExecutionResult"" 3
>""3 4
ExecuteAsync""5 A
(""A B$
WorkflowExecutionContext""B Z
workflowContext""[ j
,""j k
ActivityContext""l {
activityContext	""| ã
)
""ã å
{## 	
return$$ 
Task$$ 
.$$ 

FromResult$$ "
($$" #
Execute$$# *
($$* +
workflowContext$$+ :
,$$: ;
activityContext$$< K
)$$K L
)$$L M
;$$M N
}%% 	
public'' 
virtual'' #
ActivityExecutionResult'' .
Execute''/ 6
(''6 7$
WorkflowExecutionContext''7 O
workflowContext''P _
,''_ `
ActivityContext''a p
activityContext	''q Ä
)
''Ä Å
{(( 	
return)) 
Noop)) 
()) 
))) 
;)) 
}** 	
public,, 
virtual,, 
Task,, 
<,, #
ActivityExecutionResult,, 3
>,,3 4
ResumeAsync,,5 @
(,,@ A$
WorkflowExecutionContext,,A Y
workflowContext,,Z i
,,,i j
ActivityContext,,k z
activityContext	,,{ ä
)
,,ä ã
{-- 	
return.. 
Task.. 
... 

FromResult.. "
(.." #
Resume..# )
(..) *
workflowContext..* 9
,..9 :
activityContext..; J
)..J K
)..K L
;..L M
}// 	
public11 
virtual11 #
ActivityExecutionResult11 .
Resume11/ 5
(115 6$
WorkflowExecutionContext116 N
workflowContext11O ^
,11^ _
ActivityContext11` o
activityContext11p 
)	11 Ä
{22 	
return33 
Noop33 
(33 
)33 
;33 
}44 	
public66 
virtual66 
Task66  
OnInputReceivedAsync66 0
(660 1$
WorkflowExecutionContext661 I
workflowContext66J Y
,66Y Z
IDictionary66[ f
<66f g
string66g m
,66m n
object66o u
>66u v
input66w |
)66| }
{77 	
return88 
Task88 
.88 
CompletedTask88 %
;88% &
}99 	
public;; 
virtual;; 
Task;; #
OnWorkflowStartingAsync;; 3
(;;3 4$
WorkflowExecutionContext;;4 L
context;;M T
,;;T U
CancellationToken;;V g
cancellationToken;;h y
=;;z {
default	;;| É
(
;;É Ñ
CancellationToken
;;Ñ ï
)
;;ï ñ
)
;;ñ ó
{<< 	
return== 
Task== 
.== 
CompletedTask== %
;==% &
}>> 	
public@@ 
virtual@@ 
Task@@ "
OnWorkflowStartedAsync@@ 2
(@@2 3$
WorkflowExecutionContext@@3 K
context@@L S
)@@S T
{AA 	
returnBB 
TaskBB 
.BB 
CompletedTaskBB %
;BB% &
}CC 	
publicEE 
virtualEE 
TaskEE #
OnWorkflowResumingAsyncEE 3
(EE3 4$
WorkflowExecutionContextEE4 L
contextEEM T
,EET U
CancellationTokenEEV g
cancellationTokenEEh y
=EEz {
default	EE| É
(
EEÉ Ñ
CancellationToken
EEÑ ï
)
EEï ñ
)
EEñ ó
{FF 	
returnGG 
TaskGG 
.GG 
CompletedTaskGG %
;GG% &
}HH 	
publicJJ 
virtualJJ 
TaskJJ "
OnWorkflowResumedAsyncJJ 2
(JJ2 3$
WorkflowExecutionContextJJ3 K
contextJJL S
)JJS T
{KK 	
returnLL 
TaskLL 
.LL 
CompletedTaskLL %
;LL% &
}MM 	
publicOO 
virtualOO 
TaskOO $
OnActivityExecutingAsyncOO 4
(OO4 5$
WorkflowExecutionContextOO5 M
workflowContextOON ]
,OO] ^
ActivityContextOO_ n
activityContextOOo ~
,OO~ 
CancellationToken
OOÄ ë
cancellationToken
OOí £
=
OO§ •
default
OO¶ ≠
(
OO≠ Æ
CancellationToken
OOÆ ø
)
OOø ¿
)
OO¿ ¡
{PP 	
returnQQ 
TaskQQ 
.QQ 
CompletedTaskQQ %
;QQ% &
}RR 	
publicTT 
virtualTT 
TaskTT #
OnActivityExecutedAsyncTT 3
(TT3 4$
WorkflowExecutionContextTT4 L
workflowContextTTM \
,TT\ ]
ActivityContextTT^ m
activityContextTTn }
)TT} ~
{UU 	
returnVV 
TaskVV 
.VV 
CompletedTaskVV %
;VV% &
}WW 	
	protectedYY 
OutcomeYY 
OutcomeYY !
(YY! "
LocalizedStringYY" 1
nameYY2 6
)YY6 7
{ZZ 	
return[[ 
new[[ 
Outcome[[ 
([[ 
name[[ #
)[[# $
;[[$ %
}\\ 	
	protected^^ 
IEnumerable^^ 
<^^ 
Outcome^^ %
>^^% &
Outcomes^^' /
(^^/ 0
params^^0 6
LocalizedString^^7 F
[^^F G
]^^G H
names^^I N
)^^N O
{__ 	
return`` 
names`` 
.`` 
Select`` 
(``  
x``  !
=>``" $
new``% (
Outcome``) 0
(``0 1
x``1 2
)``2 3
)``3 4
;``4 5
}aa 	
	protectedcc 
IEnumerablecc 
<cc 
Outcomecc %
>cc% &
Outcomescc' /
(cc/ 0
IEnumerablecc0 ;
<cc; <
LocalizedStringcc< K
>ccK L
namesccM R
)ccR S
{dd 	
returnee 
namesee 
.ee 
Selectee 
(ee  
xee  !
=>ee" $
newee% (
Outcomeee) 0
(ee0 1
xee1 2
)ee2 3
)ee3 4
;ee4 5
}ff 	
	protectedhh #
ActivityExecutionResulthh )
Outcomeshh* 2
(hh2 3
stringhh3 9
namehh: >
)hh> ?
{ii 	
returnjj 
newjj #
ActivityExecutionResultjj .
(jj. /
newjj/ 2
stringjj3 9
[jj9 :
]jj: ;
{jj< =
namejj> B
}jjC D
)jjD E
;jjE F
}kk 	
	protectedmm #
ActivityExecutionResultmm )
Outcomesmm* 2
(mm2 3
paramsmm3 9
stringmm: @
[mm@ A
]mmA B
namesmmC H
)mmH I
{nn 	
returnoo 
newoo #
ActivityExecutionResultoo .
(oo. /
namesoo/ 4
)oo4 5
;oo5 6
}pp 	
	protectedrr #
ActivityExecutionResultrr )
Outcomesrr* 2
(rr2 3
IEnumerablerr3 >
<rr> ?
stringrr? E
>rrE F
namesrrG L
)rrL M
{ss 	
returntt 
newtt #
ActivityExecutionResulttt .
(tt. /
namestt/ 4
)tt4 5
;tt5 6
}uu 	
	protectedww #
ActivityExecutionResultww )
Haltww* .
(ww. /
)ww/ 0
{xx 	
returnyy #
ActivityExecutionResultyy *
.yy* +
Haltedyy+ 1
;yy1 2
}zz 	
	protected|| #
ActivityExecutionResult|| )
Noop||* .
(||. /
)||/ 0
{}} 	
return~~ #
ActivityExecutionResult~~ *
.~~* +
Empty~~+ 0
;~~0 1
} 	
	protected
ÅÅ 
virtual
ÅÅ 
T
ÅÅ 
GetProperty
ÅÅ '
<
ÅÅ' (
T
ÅÅ( )
>
ÅÅ) *
(
ÅÅ* +
Func
ÅÅ+ /
<
ÅÅ/ 0
T
ÅÅ0 1
>
ÅÅ1 2
defaultValue
ÅÅ3 ?
=
ÅÅ@ A
null
ÅÅB F
,
ÅÅF G
[
ÅÅH I
CallerMemberName
ÅÅI Y
]
ÅÅY Z
string
ÅÅ[ a
name
ÅÅb f
=
ÅÅg h
null
ÅÅi m
)
ÅÅm n
{
ÇÇ 	
var
ÉÉ 
item
ÉÉ 
=
ÉÉ 

Properties
ÉÉ !
[
ÉÉ! "
name
ÉÉ" &
]
ÉÉ& '
;
ÉÉ' (
return
ÑÑ 
item
ÑÑ 
!=
ÑÑ 
null
ÑÑ 
?
ÑÑ  !
item
ÑÑ" &
.
ÑÑ& '
ToObject
ÑÑ' /
<
ÑÑ/ 0
T
ÑÑ0 1
>
ÑÑ1 2
(
ÑÑ2 3
)
ÑÑ3 4
:
ÑÑ5 6
defaultValue
ÑÑ7 C
!=
ÑÑD F
null
ÑÑG K
?
ÑÑL M
defaultValue
ÑÑN Z
(
ÑÑZ [
)
ÑÑ[ \
:
ÑÑ] ^
default
ÑÑ_ f
;
ÑÑf g
}
ÖÖ 	
	protected
áá 
virtual
áá 
T
áá 
GetProperty
áá '
<
áá' (
T
áá( )
>
áá) *
(
áá* +
Type
áá+ /
type
áá0 4
,
áá4 5
Func
áá6 :
<
áá: ;
T
áá; <
>
áá< =
defaultValue
áá> J
=
ááK L
null
ááM Q
,
ááQ R
[
ááS T
CallerMemberName
ááT d
]
áád e
string
ááf l
name
áám q
=
áár s
null
áát x
)
ááx y
{
àà 	
var
ââ 
item
ââ 
=
ââ 

Properties
ââ !
[
ââ! "
name
ââ" &
]
ââ& '
;
ââ' (
return
ää 
item
ää 
!=
ää 
null
ää 
?
ää  !
(
ää" #
T
ää# $
)
ää$ %
item
ää% )
.
ää) *
ToObject
ää* 2
(
ää2 3
type
ää3 7
)
ää7 8
:
ää9 :
defaultValue
ää; G
!=
ääH J
null
ääK O
?
ääP Q
defaultValue
ääR ^
(
ää^ _
)
ää_ `
:
ääa b
default
ääc j
;
ääj k
}
ãã 	
	protected
çç 
virtual
çç 
void
çç 
SetProperty
çç *
(
çç* +
object
çç+ 1
value
çç2 7
,
çç7 8
[
çç9 :
CallerMemberName
çç: J
]
ççJ K
string
ççL R
name
ççS W
=
ççX Y
null
ççZ ^
)
çç^ _
{
éé 	

Properties
èè 
[
èè 
name
èè 
]
èè 
=
èè 
JToken
èè %
.
èè% &

FromObject
èè& 0
(
èè0 1
value
èè1 6
)
èè6 7
;
èè7 8
}
êê 	
}
ëë 
}íí ì
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Activities\ActivityExecutionResult.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public 

class #
ActivityExecutionResult (
{ 
public 
static 
readonly #
ActivityExecutionResult 6
Empty7 <
== >
new? B#
ActivityExecutionResultC Z
(Z [
Array[ `
.` a
Emptya f
<f g
stringg m
>m n
(n o
)o p
)p q
;q r
public

 
static

 
readonly

 #
ActivityExecutionResult

 6
Halted

7 =
=

> ?
new

@ C#
ActivityExecutionResult

D [
(

[ \
Array

\ a
.

a b
Empty

b g
<

g h
string

h n
>

n o
(

o p
)

p q
)

q r
{

s t
IsHalted

u }
=

~ 
true


Ä Ñ
}


Ö Ü
;


Ü á
public #
ActivityExecutionResult &
(& '
IEnumerable' 2
<2 3
string3 9
>9 :
outcomes; C
)C D
{ 	
Outcomes 
= 
outcomes 
;  
} 	
public #
ActivityExecutionResult &
(& '
string' -
[- .
]. /
outcomes0 8
,8 9
bool: >
halted? E
)E F
{ 	
Outcomes 
= 
outcomes 
;  
IsHalted 
= 
halted 
; 
} 	
public 
IEnumerable 
< 
string !
>! "
Outcomes# +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
public 
bool 
IsHalted 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
} 
} Ó
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Activities\EventActivity.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public 

abstract 
class 
EventActivity '
:( )
Activity* 2
,2 3
IEvent4 :
{ 
public 
override #
ActivityExecutionResult /
Execute0 7
(7 8$
WorkflowExecutionContext8 P
workflowContextQ `
,` a
ActivityContextb q
activityContext	r Å
)
Å Ç
{ 	
return

 
Halt

 
(

 
)

 
;

 
} 	
} 
} ø 
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Activities\IActivity.cs
	namespace

 	
OrchardCore


 
.

 
	Workflows

 
.

  

Activities

  *
{ 
public 

	interface 
	IActivity 
:  
IEntity! (
{ 
string 
Name 
{ 
get 
; 
} 
LocalizedString 
DisplayText #
{$ %
get& )
;) *
}+ ,
LocalizedString 
Category  
{! "
get# &
;& '
}( )
new 
JObject 

Properties 
{  
get! $
;$ %
set& )
;) *
}+ ,
bool 
	HasEditor 
{ 
get 
; 
} 
IEnumerable 
< 
Outcome 
> 
GetPossibleOutcomes 0
(0 1$
WorkflowExecutionContext1 I
workflowContextJ Y
,Y Z
ActivityContext[ j
activityContextk z
)z {
;{ |
Task 
< 
bool 
> 
CanExecuteAsync "
(" #$
WorkflowExecutionContext# ;
workflowContext< K
,K L
ActivityContextM \
activityContext] l
)l m
;m n
Task"" 
<"" #
ActivityExecutionResult"" $
>""$ %
ExecuteAsync""& 2
(""2 3$
WorkflowExecutionContext""3 K
workflowContext""L [
,""[ \
ActivityContext""] l
activityContext""m |
)""| }
;""} ~
Task'' 
<'' #
ActivityExecutionResult'' $
>''$ %
ResumeAsync''& 1
(''1 2$
WorkflowExecutionContext''2 J
workflowContext''K Z
,''Z [
ActivityContext''\ k
activityContext''l {
)''{ |
;''| }
Task,,  
OnInputReceivedAsync,, !
(,,! "$
WorkflowExecutionContext,," :
workflowContext,,; J
,,,J K
IDictionary,,L W
<,,W X
string,,X ^
,,,^ _
object,,` f
>,,f g
input,,h m
),,m n
;,,n o
Task11 #
OnWorkflowStartingAsync11 $
(11$ %$
WorkflowExecutionContext11% =
context11> E
,11E F
CancellationToken11G X
cancellationToken11Y j
=11k l
default11m t
(11t u
CancellationToken	11u Ü
)
11Ü á
)
11á à
;
11à â
Task66 "
OnWorkflowStartedAsync66 #
(66# $$
WorkflowExecutionContext66$ <
context66= D
)66D E
;66E F
Task;; #
OnWorkflowResumingAsync;; $
(;;$ %$
WorkflowExecutionContext;;% =
context;;> E
,;;E F
CancellationToken;;G X
cancellationToken;;Y j
=;;k l
default;;m t
(;;t u
CancellationToken	;;u Ü
)
;;Ü á
)
;;á à
;
;;à â
Task@@ "
OnWorkflowResumedAsync@@ #
(@@# $$
WorkflowExecutionContext@@$ <
context@@= D
)@@D E
;@@E F
TaskEE $
OnActivityExecutingAsyncEE %
(EE% &$
WorkflowExecutionContextEE& >
workflowContextEE? N
,EEN O
ActivityContextEEP _
activityContextEE` o
,EEo p
CancellationToken	EEq Ç
cancellationToken
EEÉ î
=
EEï ñ
default
EEó û
(
EEû ü
CancellationToken
EEü ∞
)
EE∞ ±
)
EE± ≤
;
EE≤ ≥
TaskJJ #
OnActivityExecutedAsyncJJ $
(JJ$ %$
WorkflowExecutionContextJJ% =
workflowContextJJ> M
,JJM N
ActivityContextJJO ^
activityContextJJ_ n
)JJn o
;JJo p
}KK 
}LL ™
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Activities\IEvent.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public 

	interface 
IEvent 
: 
	IActivity '
{ 
} 
} ®
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Activities\ITask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public 

	interface 
ITask 
: 
	IActivity &
{ 
} 
} È
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Activities\TaskActivity.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public 

abstract 
class 
TaskActivity &
:' (
Activity) 1
,1 2
ITask3 8
{ 
} 
} Ø
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Converters\LocalizedStringConverter.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Abstractions  ,
., -

Converters- 7
{ 
public 

class $
LocalizedStringConverter )
:* +
JsonConverter, 9
{ 
public 
override 
bool 

CanConvert '
(' (
Type( ,

objectType- 7
)7 8
{ 	
return 

objectType 
==  
typeof! '
(' (
LocalizedString( 7
)7 8
;8 9
} 	
public 
override 
bool 
CanRead $
=>% '
false( -
;- .
public 
override 
object 
ReadJson '
(' (

JsonReader( 2
reader3 9
,9 :
Type; ?

objectType@ J
,J K
objectL R
existingValueS `
,` a
JsonSerializerb p

serializerq {
){ |
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
override 
void 
	WriteJson &
(& '

JsonWriter' 1
writer2 8
,8 9
object: @
valueA F
,F G
JsonSerializerH V

serializerW a
)a b
{ 	
var 
localizedString 
=  !
(" #
LocalizedString# 2
)2 3
value3 8
;8 9
writer 
. 

WriteValue 
( 
localizedString -
.- .
Value. 3
)3 4
;4 5
} 	
} 
} ‘3
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Display\ActivityDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Display  '
{		 
public 

abstract 
class !
ActivityDisplayDriver /
</ 0
	TActivity0 9
>9 :
:; <
DisplayDriver= J
<J K
	IActivityK T
,T U
	TActivityV _
>_ `
wherea f
	TActivityg p
:q r
classs x
,x y
	IActivity	z É
{ 
private 
static 
string 
ThumbnailshapeType 0
=1 2
$"3 5
{5 6
typeof6 <
(< =
	TActivity= F
)F G
.G H
NameH L
}L M
_Fields_ThumbnailM ^
"^ _
;_ `
private 
static 
string 
DesignShapeType -
=. /
$"0 2
{2 3
typeof3 9
(9 :
	TActivity: C
)C D
.D E
NameE I
}I J
_Fields_DesignJ X
"X Y
;Y Z
public 
override 
IDisplayResult &
Display' .
(. /
	TActivity/ 8
model9 >
)> ?
{ 	
return 
Combine 
( 
Shape 
( 
ThumbnailshapeType (
,( )
new* -
ActivityViewModel. ?
<? @
	TActivity@ I
>I J
(J K
modelK P
)P Q
)Q R
.R S
LocationS [
([ \
$str\ g
,g h
$stri r
)r s
,s t
Shape 
( 
DesignShapeType %
,% &
new' *
ActivityViewModel+ <
<< =
	TActivity= F
>F G
(G H
modelH M
)M N
)N O
.O P
LocationP X
(X Y
$strY a
,a b
$strc l
)l m
) 
; 
} 	
} 
public 

abstract 
class !
ActivityDisplayDriver /
</ 0
	TActivity0 9
,9 :
TEditViewModel; I
>I J
:K L!
ActivityDisplayDriverM b
<b c
	TActivityc l
>l m
wheren s
	TActivityt }
:~ 
class
Ä Ö
,
Ö Ü
	IActivity
á ê
where
ë ñ
TEditViewModel
ó •
:
¶ ß
class
® ≠
,
≠ Æ
new
Ø ≤
(
≤ ≥
)
≥ ¥
{ 
private   
static   
string   
EditShapeType   +
=  , -
$"  . 0
{  0 1
typeof  1 7
(  7 8
	TActivity  8 A
)  A B
.  B C
Name  C G
}  G H
_Fields_Edit  H T
"  T U
;  U V
public"" 
override"" 
IDisplayResult"" &
Edit""' +
(""+ ,
	TActivity"", 5
model""6 ;
)""; <
{## 	
return$$ 

Initialize$$ 
($$ 
EditShapeType$$ +
,$$+ ,
($$- .
System$$. 4
.$$4 5
Func$$5 9
<$$9 :
TEditViewModel$$: H
,$$H I
	ValueTask$$J S
>$$S T
)$$T U
($$U V
	viewModel$$V _
=>$$` b
{%% 
return&& 
EditActivityAsync&& (
(&&( )
model&&) .
,&&. /
	viewModel&&0 9
)&&9 :
;&&: ;
}'' 
)'' 
)'' 
.'' 
Location'' 
('' 
$str'' "
)''" #
;''# $
}(( 	
public** 
async** 
override** 
Task** "
<**" #
IDisplayResult**# 1
>**1 2
UpdateAsync**3 >
(**> ?
	TActivity**? H
model**I N
,**N O
IUpdateModel**P \
updater**] d
)**d e
{++ 	
var,, 
	viewModel,, 
=,, 
new,, 
TEditViewModel,,  .
(,,. /
),,/ 0
;,,0 1
if-- 
(-- 
await-- 
updater-- 
.-- 
TryUpdateModelAsync-- 1
(--1 2
	viewModel--2 ;
,--; <
Prefix--= C
)--C D
)--D E
{.. 
await// 
UpdateActivityAsync// )
(//) *
	viewModel//* 3
,//3 4
model//5 :
)//: ;
;//; <
}00 
return22 
Edit22 
(22 
model22 
)22 
;22 
}33 	
	protected88 
virtual88 
	ValueTask88 #
EditActivityAsync88$ 5
(885 6
	TActivity886 ?
activity88@ H
,88H I
TEditViewModel88J X
model88Y ^
)88^ _
{99 	
EditActivity:: 
(:: 
activity:: !
,::! "
model::# (
)::( )
;::) *
return<< 
new<< 
	ValueTask<<  
(<<  !
)<<! "
;<<" #
}== 	
	protectedBB 
virtualBB 
voidBB 
EditActivityBB +
(BB+ ,
	TActivityBB, 5
activityBB6 >
,BB> ?
TEditViewModelBB@ N
modelBBO T
)BBT U
{CC 	
}DD 	
	protectedII 
virtualII 
TaskII 
UpdateActivityAsyncII 2
(II2 3
TEditViewModelII3 A
modelIIB G
,IIG H
	TActivityIII R
activityIIS [
)II[ \
{JJ 	
UpdateActivityKK 
(KK 
modelKK  
,KK  !
activityKK" *
)KK* +
;KK+ ,
returnMM 
TaskMM 
.MM 
CompletedTaskMM %
;MM% &
}NN 	
	protectedSS 
virtualSS 
voidSS 
UpdateActivitySS -
(SS- .
TEditViewModelSS. <
modelSS= B
,SSB C
	TActivitySSD M
activitySSN V
)SSV W
{TT 	
}UU 	
}VV 
}WW ˛
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Helpers\ActivityExtensions.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Helpers  '
{ 
public		 

static		 
class		 
ActivityExtensions		 *
{

 
private 
static 
IHtmlLocalizer %
H& '
;' (
public 
static 
bool 
IsEvent "
(" #
this# '
	IActivity( 1
activity2 :
): ;
{ 	
return 
activity 
is 
IEvent %
;% &
} 	
public 
static 
LocalizedHtmlString )
GetTitleOrDefault* ;
(; <
this< @
	IActivityA J
activityK S
,S T
FuncU Y
<Y Z
LocalizedHtmlStringZ m
>m n
defaultTitleo {
){ |
{ 	
var 
title 
= 
activity  
.  !
As! #
<# $
ActivityMetadata$ 4
>4 5
(5 6
)6 7
.7 8
Title8 =
;= >
return 
! 
string 
. 
IsNullOrEmpty (
(( )
title) .
). /
?0 1
new2 5
LocalizedHtmlString6 I
(I J
titleJ O
,O P
titleQ V
)V W
:X Y
defaultTitleZ f
(f g
)g h
;h i
} 	
public 
static 
LocalizedHtmlString )
GetLocalizedStatus* <
(< =
this= A
WorkflowStatusB P
statusQ W
,W X
IHtmlLocalizerY g
	localizerh q
)q r
{ 	
H 
= 
	localizer 
; 
return 
status 
switch  
{ 
WorkflowStatus 
. 
Aborted &
=>' )
H* +
[+ ,
$str, 5
]5 6
,6 7
WorkflowStatus   
.   
	Executing   (
=>  ) +
H  , -
[  - .
$str  . 9
]  9 :
,  : ;
WorkflowStatus!! 
.!! 
Faulted!! &
=>!!' )
H!!* +
[!!+ ,
$str!!, 5
]!!5 6
,!!6 7
WorkflowStatus"" 
."" 
Finished"" '
=>""( *
H""+ ,
["", -
$str""- 7
]""7 8
,""8 9
WorkflowStatus## 
.## 
Halted## %
=>##& (
H##) *
[##* +
$str##+ 3
]##3 4
,##4 5
WorkflowStatus$$ 
.$$ 
Idle$$ #
=>$$$ &
H$$' (
[$$( )
$str$$) /
]$$/ 0
,$$0 1
WorkflowStatus%% 
.%% 
Resuming%% '
=>%%( *
H%%+ ,
[%%, -
$str%%- 7
]%%7 8
,%%8 9
WorkflowStatus&& 
.&& 
Starting&& '
=>&&( *
H&&+ ,
[&&, -
$str&&- 7
]&&7 8
,&&8 9
_'' 
=>'' 
new'' 
LocalizedHtmlString'' ,
('', -
status''- 3
.''3 4
ToString''4 <
(''< =
)''= >
,''> ?
status''@ F
.''F G
ToString''G O
(''O P
)''P Q
)''Q R
,''R S
}(( 
;(( 
})) 	
}** 
}++ ê
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Helpers\DictionaryExtensions.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Helpers  '
{ 
public 

static 
class  
DictionaryExtensions ,
{ 
public

 
static

 
TValue

 
GetValue

 %
<

% &
TKey

& *
,

* +
TValue

, 2
>

2 3
(

3 4
this

4 8
IDictionary

9 D
<

D E
TKey

E I
,

I J
TValue

K Q
>

Q R

dictionary

S ]
,

] ^
TKey

_ c
key

d g
)

g h
{ 	
return 

dictionary 
. 
ContainsKey )
() *
key* -
)- .
?/ 0

dictionary1 ;
[; <
key< ?
]? @
:A B
defaultC J
;J K
} 	
public 
static 
TValue 
GetValue %
<% &
TValue& ,
>, -
(- .
this. 2
IDictionary3 >
<> ?
string? E
,E F
objectG M
>M N

dictionaryO Y
,Y Z
string[ a
keyb e
)e f
{ 	
var 
value 
= 

dictionary "
." #
GetValue# +
(+ ,
key, /
)/ 0
;0 1
if 
( 
value 
!= 
null 
) 
{ 
return 
( 
TValue 
) 
value $
;$ %
} 
return 
default 
; 
} 	
public"" 
static"" 
IDictionary"" !
<""! "
TKey""" &
,""& '
TValue""( .
>"". /
Merge""0 5
<""5 6
TKey""6 :
,"": ;
TValue""< B
>""B C
(""C D
this""D H
IDictionary""I T
<""T U
TKey""U Y
,""Y Z
TValue""[ a
>""a b

dictionary""c m
,""m n
IDictionary""o z
<""z {
TKey""{ 
,	"" Ä
TValue
""Å á
>
""á à
other
""â é
)
""é è
{## 	
var$$ 
copy$$ 
=$$ 
new$$ 

Dictionary$$ %
<$$% &
TKey$$& *
,$$* +
TValue$$, 2
>$$2 3
($$3 4

dictionary$$4 >
)$$> ?
;$$? @
foreach%% 
(%% 
var%% 
item%% 
in%%  
other%%! &
)%%& '
{&& 
copy'' 
['' 
item'' 
.'' 
Key'' 
]'' 
=''  
item''! %
.''% &
Value''& +
;''+ ,
}(( 
return)) 
copy)) 
;)) 
}** 	
}++ 
},, æ
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Helpers\ListExtensions.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Helpers  '
{ 
public 

static 
class 
ListExtensions &
{ 
public 
static 
void 
AddRange #
<# $
T$ %
>% &
(& '
this' +
IList, 1
<1 2
T2 3
>3 4
list5 9
,9 :
IEnumerable; F
<F G
TG H
>H I
itemsJ O
)O P
{ 	
foreach		 
(		 
var		 
item		 
in		  
items		! &
)		& '
{

 
list 
. 
Add 
( 
item 
) 
; 
} 
} 	
public 
static 
void 
RemoveRange &
<& '
T' (
>( )
() *
this* .
IList/ 4
<4 5
T5 6
>6 7
list8 <
,< =
IEnumerable> I
<I J
TJ K
>K L
itemsM R
)R S
{ 	
foreach 
( 
var 
item 
in  
items! &
)& '
{ 
list 
. 
Remove 
( 
item  
)  !
;! "
} 
} 	
} 
} ò
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Helpers\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Helpers  '
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{		 
public

 
static

 
void

 
AddActivity

 &
<

& '
	TActivity

' 0
,

0 1
TDriver

2 9
>

9 :
(

: ;
this

; ?
IServiceCollection

@ R
services

S [
)

[ \
where

] b
	TActivity

c l
:

m n
class

o t
,

t u
	IActivity

v 
where


Ä Ö
TDriver


Ü ç
:


é è
class


ê ï
,


ï ñ
IDisplayDriver


ó •
<


• ¶
	IActivity


¶ Ø
>


Ø ∞
{ 	
services 
. 
	Configure 
< 
WorkflowOptions .
>. /
(/ 0
options0 7
=>8 :
options; B
.B C
RegisterActivityC S
<S T
	TActivityT ]
,] ^
TDriver_ f
>f g
(g h
)h i
)i j
;j k
} 	
} 
} â
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Helpers\ServiceProviderExtensions.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Helpers  '
{ 
public 

static 
class %
ServiceProviderExtensions 1
{ 
public 
static 
TResult 
CreateInstance ,
<, -
TResult- 4
>4 5
(5 6
this6 :
IServiceProvider; K
providerL T
)T U
whereV [
TResult\ c
:d e
classf k
{ 	
return 
CreateInstance !
<! "
TResult" )
>) *
(* +
provider+ 3
,3 4
typeof5 ;
(; <
TResult< C
)C D
)D E
;E F
} 	
public 
static 
TResult 
CreateInstance ,
<, -
TResult- 4
>4 5
(5 6
this6 :
IServiceProvider; K
providerL T
,T U
TypeV Z
type[ _
)_ `
wherea f
TResultg n
:o p
classq v
{ 	
return 
( 
TResult 
) 
ActivatorUtilities .
.. /
CreateInstance/ =
(= >
provider> F
,F G
typeH L
)L M
;M N
} 	
} 
} ”
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\ActivityContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
ActivityContext  
{ 
public 
ActivityRecord 
ActivityRecord ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
	IActivity 
Activity !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 •
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\ActivityMetadata.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
ActivityMetadata !
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
} 
} û	
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\ActivityRecord.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
ActivityRecord 
:  !
Entity" (
{ 
public 
string 

ActivityId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
X 
{ 
get 
; 
set 
;  
}! "
public 
int 
Y 
{ 
get 
; 
set 
;  
}! "
public 
bool 
IsStart 
{ 
get !
;! "
set# &
;& '
}( )
} 
} —
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\BlockingActivity.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
BlockingActivity !
{ 
public 
static 
BlockingActivity &
FromActivity' 3
(3 4
ActivityRecord4 B
activityC K
)K L
{ 	
return 
new 
BlockingActivity '
{ 

ActivityId		 
=		 
activity		 %
.		% &

ActivityId		& 0
,		0 1
IsStart

 
=

 
activity

 "
.

" #
IsStart

# *
,

* +
Name 
= 
activity 
.  
Name  $
} 
; 
} 	
public 
string 

ActivityId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
IsStart 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ≈
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\ExecutedActivity.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
ExecutedActivity !
{ 
public 
string 

ActivityId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Outcome 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\Outcome.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Abstractions  ,
., -
Models- 3
{ 
public 

class 
Outcome 
{ 
public		 
Outcome		 
(		 
LocalizedString		 &
displayName		' 2
)		2 3
:		4 5
this		6 :
(		: ;
displayName		; F
.		F G
Name		G K
,		K L
displayName		M X
)		X Y
{

 	
} 	
public 
Outcome 
( 
string 
name "
," #
LocalizedString$ 3
displayName4 ?
)? @
{ 	
Name 
= 
name 
; 
DisplayName 
= 
displayName %
;% &
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
[ 	
JsonConverter	 
( 
typeof 
( $
LocalizedStringConverter 6
)6 7
)7 8
]8 9
public 
LocalizedString 
DisplayName *
{+ ,
get- 0
;0 1
}2 3
} 
} Ö
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\Transition.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 

Transition 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
SourceActivityId &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
SourceOutcomeName '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string !
DestinationActivityId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ™
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\Workflow.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public

 

class

 
Workflow

 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 

WorkflowId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
WorkflowTypeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
CorrelationId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
JObject 
State 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
new- 0
JObject1 8
(8 9
)9 :
;: ;
public 
WorkflowStatus 
Status $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
string   
FaultMessage   "
{  # $
get  % (
;  ( )
set  * -
;  - .
}  / 0
public&& 
IList&& 
<&& 
BlockingActivity&& %
>&&% &
BlockingActivities&&' 9
{&&: ;
get&&< ?
;&&? @
}&&A B
=&&C D
new&&E H
List&&I M
<&&M N
BlockingActivity&&N ^
>&&^ _
(&&_ `
)&&` a
;&&a b
public(( 
DateTime(( 

CreatedUtc(( "
{((# $
get((% (
;((( )
set((* -
;((- .
}((/ 0
})) 
}** Î
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
WorkflowContext  
{ 
public 
WorkflowContext 
( 
Workflow '
workflow( 0
)0 1
{ 	
Workflow 
= 
workflow 
;  
} 	
public

 
Workflow

 
Workflow

  
{

! "
get

# &
;

& '
}

( )
} 
} π
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowCreatedContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class "
WorkflowCreatedContext '
:( )
WorkflowContext* 9
{ 
public "
WorkflowCreatedContext %
(% &
Workflow& .
workflow/ 7
)7 8
:9 :
base; ?
(? @
workflow@ H
)H I
{ 	
} 	
} 
}		 π
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowDeletedContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class "
WorkflowDeletedContext '
:( )
WorkflowContext* 9
{ 
public "
WorkflowDeletedContext %
(% &
Workflow& .
workflow/ 7
)7 8
:9 :
base; ?
(? @
workflow@ H
)H I
{ 	
} 	
} 
}		 ﬂI
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowExecutionContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class $
WorkflowExecutionContext )
{ 
public		 $
WorkflowExecutionContext		 '
(

 	
WorkflowType 
workflowType %
,% &
Workflow 
workflow 
, 
IDictionary 
< 
string 
, 
object  &
>& '
input( -
,- .
IDictionary 
< 
string 
, 
object  &
>& '
output( .
,. /
IDictionary 
< 
string 
, 
object  &
>& '

properties( 2
,2 3
IList 
< 
ExecutedActivity "
>" #
executedActivities$ 6
,6 7
object 

lastResult 
, 
IEnumerable 
< 
ActivityContext '
>' (

activities) 3
) 	
{ 	
Input 
= 
input 
?? 
new  

Dictionary! +
<+ ,
string, 2
,2 3
object4 :
>: ;
(; <
)< =
;= >
Output 
= 
output 
?? 
new "

Dictionary# -
<- .
string. 4
,4 5
object6 <
>< =
(= >
)> ?
;? @

Properties 
= 

properties #
??$ &
new' *

Dictionary+ 5
<5 6
string6 <
,< =
object> D
>D E
(E F
)F G
;G H
ExecutedActivities 
=  
new! $
Stack% *
<* +
ExecutedActivity+ ;
>; <
(< =
executedActivities= O
??P R
newS V
ListW [
<[ \
ExecutedActivity\ l
>l m
(m n
)n o
)o p
;p q

LastResult 
= 

lastResult #
;# $
WorkflowType 
= 
workflowType '
;' (
Workflow 
= 
workflow 
;  

Activities 
= 

activities #
.# $
ToDictionary$ 0
(0 1
x1 2
=>3 5
x6 7
.7 8
ActivityRecord8 F
.F G

ActivityIdG Q
)Q R
;R S
} 	
public 
Workflow 
Workflow  
{! "
get# &
;& '
}( )
public   
WorkflowType   
WorkflowType   (
{  ) *
get  + .
;  . /
}  0 1
public!! 
IDictionary!! 
<!! 
string!! !
,!!! "
ActivityContext!!# 2
>!!2 3

Activities!!4 >
{!!? @
get!!A D
;!!D E
}!!F G
public## 
string## 

WorkflowId##  
{$$ 	
get%% 
=>%% 
Workflow%% 
.%% 

WorkflowId%% &
;%%& '
}&& 	
public(( 
string(( 
CorrelationId(( #
{)) 	
get** 
=>** 
Workflow** 
.** 
CorrelationId** )
;**) *
set++ 
=>++ 
Workflow++ 
.++ 
CorrelationId++ )
=++* +
value++, 1
;++1 2
},, 	
public11 
IDictionary11 
<11 
string11 !
,11! "
object11# )
>11) *
Input11+ 0
{111 2
get113 6
;116 7
}118 9
public66 
IDictionary66 
<66 
string66 !
,66! "
object66# )
>66) *
Output66+ 1
{662 3
get664 7
;667 8
}669 :
public;; 
IDictionary;; 
<;; 
string;; !
,;;! "
object;;# )
>;;) *

Properties;;+ 5
{;;6 7
get;;8 ;
;;;; <
};;= >
public@@ 
object@@ 

LastResult@@  
{@@! "
get@@# &
;@@& '
set@@( +
;@@+ ,
}@@- .
publicBB 
WorkflowStatusBB 
StatusBB $
{CC 	
getDD 
=>DD 
WorkflowDD 
.DD 
StatusDD "
;DD" #
setEE 
=>EE 
WorkflowEE 
.EE 
StatusEE "
=EE# $
valueEE% *
;EE* +
}FF 	
publicKK 
StackKK 
<KK 
ExecutedActivityKK %
>KK% &
ExecutedActivitiesKK' 9
{KK: ;
getKK< ?
;KK? @
setKKA D
;KKD E
}KKF G
publicMM 
ActivityContextMM 
GetActivityMM *
(MM* +
stringMM+ 1

activityIdMM2 <
)MM< =
{NN 	
returnOO 

ActivitiesOO 
[OO 

activityIdOO (
]OO( )
;OO) *
}PP 	
publicRR 
voidRR 
FaultRR 
(RR 
	ExceptionRR #
	exceptionRR$ -
,RR- .
ActivityContextRR/ >
activityContextRR? N
)RRN O
{SS 	
WorkflowTT 
.TT 
StatusTT 
=TT 
WorkflowStatusTT ,
.TT, -
FaultedTT- 4
;TT4 5
WorkflowUU 
.UU 
FaultMessageUU !
=UU" #
	exceptionUU$ -
.UU- .
MessageUU. 5
;UU5 6
}VV 	
publicXX 
IEnumerableXX 
<XX 

TransitionXX %
>XX% &!
GetInboundTransitionsXX' <
(XX< =
stringXX= C

activityIdXXD N
)XXN O
{YY 	
returnZZ 
WorkflowTypeZZ 
.ZZ  
TransitionsZZ  +
.ZZ+ ,
WhereZZ, 1
(ZZ1 2
xZZ2 3
=>ZZ4 6
xZZ7 8
.ZZ8 9!
DestinationActivityIdZZ9 N
==ZZO Q

activityIdZZR \
)ZZ\ ]
.ZZ] ^
ToListZZ^ d
(ZZd e
)ZZe f
;ZZf g
}[[ 	
public]] 
IEnumerable]] 
<]] 

Transition]] %
>]]% &"
GetOutboundTransitions]]' =
(]]= >
string]]> D

activityId]]E O
)]]O P
{^^ 	
return__ 
WorkflowType__ 
.__  
Transitions__  +
.__+ ,
Where__, 1
(__1 2
x__2 3
=>__4 6
x__7 8
.__8 9
SourceActivityId__9 I
==__J L

activityId__M W
)__W X
.__X Y
ToList__Y _
(___ `
)__` a
;__a b
}`` 	
publicee 
IEnumerableee 
<ee 
stringee !
>ee! ""
GetInboundActivityPathee# 9
(ee9 :
stringee: @

activityIdeeA K
)eeK L
{ff 	
returngg *
GetInboundActivityPathInternalgg 1
(gg1 2

activityIdgg2 <
,gg< =

activityIdgg> H
)ggH I
.ggI J
DistinctggJ R
(ggR S
)ggS T
.ggT U
ToListggU [
(gg[ \
)gg\ ]
;gg] ^
}hh 	
privatejj 
IEnumerablejj 
<jj 
stringjj "
>jj" #*
GetInboundActivityPathInternaljj$ B
(jjB C
stringjjC I

activityIdjjJ T
,jjT U
stringjjV \#
startingPointActivityIdjj] t
)jjt u
{kk 	
foreachll 
(ll 
varll 

transitionll #
inll$ &!
GetInboundTransitionsll' <
(ll< =

activityIdll= G
)llG H
)llH I
{mm 
ifoo 
(oo 

transitionoo 
.oo 
SourceActivityIdoo /
==oo0 2#
startingPointActivityIdoo3 J
)ooJ K
{pp 
yieldqq 
breakqq 
;qq  
}rr 
elsess 
{tt 
yielduu 
returnuu  

transitionuu! +
.uu+ ,
SourceActivityIduu, <
;uu< =
foreachww 
(ww 
varww  
parentActivityIdww! 1
inww2 4*
GetInboundActivityPathInternalww5 S
(wwS T

transitionwwT ^
.ww^ _
SourceActivityIdww_ o
,wwo p$
startingPointActivityId	wwq à
)
wwà â
.
wwâ ä
Distinct
wwä í
(
wwí ì
)
wwì î
)
wwî ï
{xx 
yieldyy 
returnyy $
parentActivityIdyy% 5
;yy5 6
}zz 
}{{ 
}|| 
}}} 	
}~~ 
} €
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowExecutionExpressionContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class .
"WorkflowExecutionExpressionContext 3
:4 5/
#WorkflowExecutionHandlerContextBase6 Y
{ 
public .
"WorkflowExecutionExpressionContext 1
(1 2
TemplateContext2 A
templateContextB Q
,Q R$
WorkflowExecutionContextS k%
workflowExecutionContext	l Ñ
)
Ñ Ö
:
Ü á
base
à å
(
å ç&
workflowExecutionContext
ç •
)
• ¶
{ 	
TemplateContext		 
=		 
templateContext		 -
;		- .
}

 	
public 
TemplateContext 
TemplateContext .
{/ 0
get1 4
;4 5
}6 7
} 
} Ê
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowExecutionHandlerContextBase.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class /
#WorkflowExecutionHandlerContextBase 4
{ 
	protected /
#WorkflowExecutionHandlerContextBase 5
(5 6$
WorkflowExecutionContext6 N
workflowContextO ^
)^ _
{ 	
WorkflowContext 
= 
workflowContext -
;- .
} 	
public

 $
WorkflowExecutionContext

 '
WorkflowContext

( 7
{

8 9
get

: =
;

= >
}

? @
} 
} Ï
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowExecutionScriptContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class *
WorkflowExecutionScriptContext /
:0 1/
#WorkflowExecutionHandlerContextBase2 U
{ 
public *
WorkflowExecutionScriptContext -
(- .$
WorkflowExecutionContext. F
workflowContextG V
)V W
:X Y
baseZ ^
(^ _
workflowContext_ n
)n o
{		 	
}

 	
public 
IList 
< !
IGlobalMethodProvider *
>* +!
ScopedMethodProviders, A
{B C
getD G
;G H
}I J
=K L
newM P
ListQ U
<U V!
IGlobalMethodProviderV k
>k l
(l m
)m n
;n o
} 
} Ä	
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowExpression.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
WorkflowExpression #
<# $
T$ %
>% &
{ 
public 
WorkflowExpression !
(! "
)" #
{ 	
} 	
public		 
WorkflowExpression		 !
(		! "
string		" (

expression		) 3
)		3 4
{

 	

Expression 
= 

expression #
;# $
} 	
public 
string 

Expression  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 

Expression 
; 
} 	
} 
} Â
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowState.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public		 

class		 
WorkflowState		 
{

 
public 
object 

LastResult  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IDictionary 
< 
string !
,! "
object# )
>) *
Input+ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
newA D

DictionaryE O
<O P
stringP V
,V W
objectX ^
>^ _
(_ `
)` a
;a b
public 
IDictionary 
< 
string !
,! "
object# )
>) *
Output+ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
=@ A
newB E

DictionaryF P
<P Q
stringQ W
,W X
objectY _
>_ `
(` a
)a b
;b c
public 
IDictionary 
< 
string !
,! "
object# )
>) *

Properties+ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
newF I

DictionaryJ T
<T U
stringU [
,[ \
object] c
>c d
(d e
)e f
;f g
public## 
IDictionary## 
<## 
string## !
,##! "
JObject### *
>##* +
ActivityStates##, :
{##; <
get##= @
;##@ A
set##B E
;##E F
}##G H
=##I J
new##K N

Dictionary##O Y
<##Y Z
string##Z `
,##` a
JObject##b i
>##i j
(##j k
)##k l
;##l m
public(( 
IList(( 
<(( 
ExecutedActivity(( %
>((% &
ExecutedActivities((' 9
{((: ;
get((< ?
;((? @
set((A D
;((D E
}((F G
=((H I
new((J M
List((N R
<((R S
ExecutedActivity((S c
>((c d
(((d e
)((e f
;((f g
})) 
}** ô
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowStatus.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

enum 
WorkflowStatus 
{ 
Idle 
, 
Starting 
, 
Resuming 
, 
	Executing 
, 
Halted		 
,		 
Finished

 
,

 
Faulted 
, 
Aborted 
} 
} ã
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowType.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
WorkflowType 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
WorkflowTypeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
	IsEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
IsSingleton 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool #
DeleteFinishedWorkflows +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public$$ 
IList$$ 
<$$ 
ActivityRecord$$ #
>$$# $

Activities$$% /
{$$0 1
get$$2 5
;$$5 6
set$$7 :
;$$: ;
}$$< =
=$$> ?
new$$@ C
List$$D H
<$$H I
ActivityRecord$$I W
>$$W X
($$X Y
)$$Y Z
;$$Z [
public)) 
IList)) 
<)) 

Transition)) 
>))  
Transitions))! ,
{))- .
get))/ 2
;))2 3
set))4 7
;))7 8
}))9 :
=)); <
new))= @
List))A E
<))E F

Transition))F P
>))P Q
())Q R
)))R S
;))S T
}** 
}++ è
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowTypeContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class 
WorkflowTypeContext $
{ 
public 
WorkflowTypeContext "
(" #
WorkflowType# /
workflowType0 <
)< =
{ 	
WorkflowType 
= 
workflowType '
;' (
} 	
public

 
WorkflowType

 
WorkflowType

 (
{

) *
get

+ .
;

. /
}

0 1
} 
} ’
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowTypeCreatedContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class &
WorkflowTypeCreatedContext +
:, -
WorkflowTypeContext. A
{ 
public &
WorkflowTypeCreatedContext )
() *
WorkflowType* 6
workflowType7 C
)C D
:E F
baseG K
(K L
workflowTypeL X
)X Y
{ 	
} 	
} 
}		 ’
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowTypeDeletedContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class &
WorkflowTypeDeletedContext +
:, -
WorkflowTypeContext. A
{ 
public &
WorkflowTypeDeletedContext )
() *
WorkflowType* 6
workflowType7 C
)C D
:E F
baseG K
(K L
workflowTypeL X
)X Y
{ 	
} 	
} 
}		 ’
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowTypeUpdatedContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class &
WorkflowTypeUpdatedContext +
:, -
WorkflowTypeContext. A
{ 
public &
WorkflowTypeUpdatedContext )
() *
WorkflowType* 6
workflowType7 C
)C D
:E F
baseG K
(K L
workflowTypeL X
)X Y
{ 	
} 	
} 
}		 π
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Models\WorkflowUpdatedContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class "
WorkflowUpdatedContext '
:( )
WorkflowContext* 9
{ 
public "
WorkflowUpdatedContext %
(% &
Workflow& .
workflow/ 7
)7 8
:9 :
base; ?
(? @
workflow@ H
)H I
{ 	
} 	
} 
}		 ç
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Options\ActivityRegistration.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Options  '
{ 
public 

class  
ActivityRegistration %
{ 
public  
ActivityRegistration #
(# $
Type$ (
activityType) 5
)5 6
{		 	
ActivityType

 
=

 
activityType

 '
;

' (
DriverTypes 
= 
new 
HashSet %
<% &
Type& *
>* +
(+ ,
), -
;- .
} 	
public  
ActivityRegistration #
(# $
Type$ (
activityType) 5
,5 6
Type7 ;

driverType< F
)F G
:H I
thisJ N
(N O
activityTypeO [
)[ \
{ 	
DriverTypes 
. 
Add 
( 

driverType &
)& '
;' (
} 	
public 
Type 
ActivityType  
{! "
get# &
;& '
}( )
public 
HashSet 
< 
Type 
> 
DriverTypes (
{) *
get+ .
;. /
}0 1
} 
} ô2
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Options\WorkflowOptions.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Options  '
{ 
public 

class 
WorkflowOptions  
{ 
public		 
WorkflowOptions		 
(		 
)		  
{

 	
ActivityDictionary 
=  
new! $

Dictionary% /
</ 0
Type0 4
,4 5 
ActivityRegistration6 J
>J K
(K L
)L M
;M N
} 	
private 
IDictionary 
< 
Type  
,  ! 
ActivityRegistration" 6
>6 7
ActivityDictionary8 J
{K L
getM P
;P Q
}R S
public 
IEnumerable 
< 
Type 
>  
ActivityTypes! .
=>/ 1
ActivityDictionary2 D
.D E
ValuesE K
.K L
SelectL R
(R S
xS T
=>U W
xX Y
.Y Z
ActivityTypeZ f
)f g
.g h
ToListh n
(n o
)o p
.p q

AsReadOnlyq {
({ |
)| }
;} ~
public 
IEnumerable 
< 
Type 
>  &
ActivityDisplayDriverTypes! ;
=>< >
ActivityDictionary? Q
.Q R
ValuesR X
.X Y

SelectManyY c
(c d
xd e
=>f h
xi j
.j k
DriverTypesk v
)v w
.w x
ToListx ~
(~ 
)	 Ä
.
Ä Å

AsReadOnly
Å ã
(
ã å
)
å ç
;
ç é
public 
WorkflowOptions 
RegisterActivity /
(/ 0
Type0 4
activityType5 A
,A B
TypeC G

driverTypeH R
=S T
nullU Y
)Y Z
{ 	
if 
( 
ActivityDictionary "
." #
ContainsKey# .
(. /
activityType/ ;
); <
)< =
{ 
if 
( 

driverType 
!= !
null" &
)& '
{ 
ActivityDictionary &
[& '
activityType' 3
]3 4
.4 5
DriverTypes5 @
.@ A
AddA D
(D E

driverTypeE O
)O P
;P Q
} 
} 
else   
{!! 
ActivityDictionary"" "
.""" #
Add""# &
(""& '
activityType""' 3
,""3 4
new""5 8 
ActivityRegistration""9 M
(""M N
activityType""N Z
,""Z [

driverType""\ f
)""f g
)""g h
;""h i
}## 
return%% 
this%% 
;%% 
}&& 	
public(( 
WorkflowOptions(( "
UnregisterActivityType(( 5
(((5 6
Type((6 :
activityType((; G
)((G H
{)) 	
if** 
(** 
!** 
ActivityDictionary** #
.**# $
ContainsKey**$ /
(**/ 0
activityType**0 <
)**< =
)**= >
throw++ 
new++ %
InvalidOperationException++ 3
(++3 4
$str++4 d
)++d e
;++e f
ActivityDictionary-- 
.-- 
Remove-- %
(--% &
activityType--& 2
)--2 3
;--3 4
return.. 
this.. 
;.. 
}// 	
public11 
bool11  
IsActivityRegistered11 (
(11( )
Type11) -
activityType11. :
)11: ;
{22 	
return33 
ActivityDictionary33 %
.33% &
ContainsKey33& 1
(331 2
activityType332 >
)33> ?
;33? @
}44 	
}55 
public77 

static77 
class77 %
WorkflowOptionsExtensions77 1
{88 
public99 
static99 
WorkflowOptions99 % 
RegisterActivityType99& :
<99: ;
T99; <
>99< =
(99= >
this99> B
WorkflowOptions99C R
options99S Z
)99Z [
{:: 	
return;; 
options;; 
.;; 
RegisterActivity;; +
(;;+ ,
typeof;;, 2
(;;2 3
T;;3 4
);;4 5
);;5 6
;;;6 7
}<< 	
public>> 
static>> 
WorkflowOptions>> %
RegisterActivity>>& 6
<>>6 7
T>>7 8
,>>8 9
TDriver>>: A
>>>A B
(>>B C
this>>C G
WorkflowOptions>>H W
options>>X _
)>>_ `
{?? 	
return@@ 
options@@ 
.@@ 
RegisterActivity@@ +
(@@+ ,
typeof@@, 2
(@@2 3
T@@3 4
)@@4 5
,@@5 6
typeof@@7 =
(@@= >
TDriver@@> E
)@@E F
)@@F G
;@@G H
}AA 	
publicCC 
staticCC 
WorkflowOptionsCC %"
UnregisterActivityTypeCC& <
<CC< =
TCC= >
>CC> ?
(CC? @
thisCC@ D
WorkflowOptionsCCE T
optionsCCU \
)CC\ ]
{DD 	
returnEE 
optionsEE 
.EE "
UnregisterActivityTypeEE 1
(EE1 2
typeofEE2 8
(EE8 9
TEE9 :
)EE: ;
)EE; <
;EE< =
}FF 	
publicHH 
staticHH 
boolHH  
IsActivityRegisteredHH /
<HH/ 0
THH0 1
>HH1 2
(HH2 3
thisHH3 7
WorkflowOptionsHH8 G
optionsHHH O
)HHO P
{II 	
returnJJ 
optionsJJ 
.JJ  
IsActivityRegisteredJJ /
(JJ/ 0
typeofJJ0 6
(JJ6 7
TJJ7 8
)JJ8 9
)JJ9 :
;JJ: ;
}KK 	
}LL 
}MM É
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IActivityDisplayManager.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface #
IActivityDisplayManager ,
:- .
IDisplayManager/ >
<> ?
	IActivity? H
>H I
{ 
} 
}		 ≥
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IActivityIdGenerator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface  
IActivityIdGenerator )
{ 
string 
GenerateUniqueId 
(  
ActivityRecord  .
activityRecord/ =
)= >
;> ?
} 
}		 æ
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IActivityLibrary.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public		 

	interface		 
IActivityLibrary		 %
{

 
IEnumerable 
< 
	IActivity 
> 
ListActivities -
(- .
). /
;/ 0
IEnumerable 
< 
LocalizedString #
># $
ListCategories% 3
(3 4
)4 5
;5 6
	IActivity 
GetActivityByName #
(# $
string$ *
name+ /
)/ 0
;0 1
	IActivity 
InstantiateActivity %
(% &
string& ,
name- 1
)1 2
;2 3
IEnumerable## 
<## 
	IActivity## 
>## !
InstantiateActivities## 4
(##4 5
IEnumerable##5 @
<##@ A
string##A G
>##G H
activityNames##I V
)##V W
;##W X
}$$ 
public&& 

static&& 
class&& %
ActivityLibraryExtensions&& 1
{'' 
public(( 
static(( 
T(( 
InstantiateActivity(( +
<((+ ,
T((, -
>((- .
(((. /
this((/ 3
IActivityLibrary((4 D
library((E L
,((L M
string((N T
name((U Y
)((Y Z
where(([ `
T((a b
:((c d
	IActivity((e n
{)) 	
return** 
(** 
T** 
)** 
library** 
.** 
InstantiateActivity** 1
(**1 2
name**2 6
)**6 7
;**7 8
}++ 	
public-- 
static-- 
T-- 
InstantiateActivity-- +
<--+ ,
T--, -
>--- .
(--. /
this--/ 3
IActivityLibrary--4 D
library--E L
,--L M
string--N T
name--U Y
,--Y Z
JObject--[ b

properties--c m
)--m n
where--o t
T--u v
:--w x
	IActivity	--y Ç
{.. 	
var// 
activity// 
=// 
InstantiateActivity// .
<//. /
T/// 0
>//0 1
(//1 2
library//2 9
,//9 :
name//; ?
)//? @
;//@ A
if11 
(11 
activity11 
!=11 
null11  
)11  !
{22 
activity33 
.33 

Properties33 #
=33$ %

properties33& 0
;330 1
}44 
return66 
activity66 
;66 
}77 	
public99 
static99 
T99 
InstantiateActivity99 +
<99+ ,
T99, -
>99- .
(99. /
this99/ 3
IActivityLibrary994 D
library99E L
,99L M
ActivityRecord99N \
record99] c
)99c d
where99e j
T99k l
:99m n
	IActivity99o x
{:: 	
return;; 
InstantiateActivity;; &
<;;& '
T;;' (
>;;( )
(;;) *
library;;* 1
,;;1 2
record;;3 9
.;;9 :
Name;;: >
,;;> ?
record;;@ F
.;;F G

Properties;;G Q
);;Q R
;;;R S
}<< 	
}== 
}>> ¯
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\ISecurityTokenService.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface !
ISecurityTokenService *
{ 
string

 
CreateToken

 
<

 
T

 
>

 
(

 
T

 
payload

  '
,

' (
TimeSpan

) 1
lifetime

2 :
)

: ;
;

; <
bool 
TryDecryptToken 
< 
T 
> 
(  
string  &
token' ,
,, -
out. 1
T2 3
payload4 ;
); <
;< =
} 
} ¬
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowExecutionContextHandler.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface ,
 IWorkflowExecutionContextHandler 5
{ 
Task %
EvaluatingExpressionAsync &
(& '.
"WorkflowExecutionExpressionContext' I
contextJ Q
)Q R
;R S
Task		 !
EvaluatingScriptAsync		 "
(		" #*
WorkflowExecutionScriptContext		# A
context		B I
)		I J
;		J K
Task

 
DehydrateValueAsync

  
(

  !)
SerializeWorkflowValueContext

! >
context

? F
)

F G
;

G H
Task 
RehydrateValueAsync  
(  !)
SerializeWorkflowValueContext! >
context? F
)F G
;G H
} 
} Ÿ
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowExpressionEvaluator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface (
IWorkflowExpressionEvaluator 1
{ 
Task		 
<		 
T		 
>		 
EvaluateAsync		 
<		 
T		 
>		  
(		  !
WorkflowExpression		! 3
<		3 4
T		4 5
>		5 6

expression		7 A
,		A B$
WorkflowExecutionContext		C [
workflowContext		\ k
,		k l
TextEncoder		m x
encoder			y Ä
)
		Ä Å
;
		Å Ç
}

 
}  
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowHandler.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface 
IWorkflowHandler %
{ 
Task 
CreatedAsync 
( "
WorkflowCreatedContext 0
context1 8
)8 9
;9 :
Task		 
UpdatedAsync		 
(		 "
WorkflowUpdatedContext		 0
context		1 8
)		8 9
;		9 :
Task

 
DeletedAsync

 
(

 "
WorkflowDeletedContext

 0
context

1 8
)

8 9
;

9 :
} 
} ß
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowIdGenerator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface  
IWorkflowIdGenerator )
{ 
string 
GenerateUniqueId 
(  
Workflow  (
workflow) 1
)1 2
;2 3
} 
}		 ∞"
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowManager.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public		 

	interface		 
IWorkflowManager		 %
{

 
Workflow 
NewWorkflow 
( 
WorkflowType )
workflowType* 6
,6 7
string8 >
correlationId? L
=M N
nullO S
)S T
;T U
Task 
< $
WorkflowExecutionContext %
>% &/
#CreateWorkflowExecutionContextAsync' J
(J K
WorkflowTypeK W
workflowTypeX d
,d e
Workflowf n
workflowo w
,w x
IDictionary	y Ñ
<
Ñ Ö
string
Ö ã
,
ã å
object
ç ì
>
ì î
input
ï ö
=
õ ú
null
ù °
)
° ¢
;
¢ £
Task 
< 
ActivityContext 
> /
#CreateActivityExecutionContextAsync A
(A B
ActivityRecordB P
activityRecordQ _
,_ `
JObjecta h

propertiesi s
)s t
;t u
Task(( 
TriggerEventAsync(( 
((( 
string(( %
name((& *
,((* +
IDictionary((, 7
<((7 8
string((8 >
,((> ?
object((@ F
>((F G
input((H M
=((N O
null((P T
,((T U
string((V \
correlationId((] j
=((k l
null((m q
,((q r
bool((s w
isExclusive	((x É
=
((Ñ Ö
false
((Ü ã
,
((ã å
bool
((ç ë 
isAlwaysCorrelated
((í §
=
((• ¶
false
((ß ¨
)
((¨ ≠
;
((≠ Æ
Task22 
<22 $
WorkflowExecutionContext22 %
>22% &
StartWorkflowAsync22' 9
(229 :
WorkflowType22: F
workflowType22G S
,22S T
ActivityRecord22U c
startActivity22d q
=22r s
null22t x
,22x y
IDictionary	22z Ö
<
22Ö Ü
string
22Ü å
,
22å ç
object
22é î
>
22î ï
input
22ñ õ
=
22ú ù
null
22û ¢
,
22¢ £
string
22§ ™
correlationId
22´ ∏
=
22π ∫
null
22ª ø
)
22ø ¿
;
22¿ ¡
Task77 
<77 $
WorkflowExecutionContext77 %
>77% &
ResumeWorkflowAsync77' :
(77: ;
Workflow77; C
workflow77D L
,77L M
BlockingActivity77N ^
awaitingActivity77_ o
,77o p
IDictionary77q |
<77| }
string	77} É
,
77É Ñ
object
77Ö ã
>
77ã å
input
77ç í
=
77ì î
null
77ï ô
)
77ô ö
;
77ö õ
Task<< 
<<< 
IEnumerable<< 
<<< 
ActivityRecord<< '
><<' (
><<( ) 
ExecuteWorkflowAsync<<* >
(<<> ?$
WorkflowExecutionContext<<? W$
workflowExecutionContext<<X p
,<<p q
ActivityRecord	<<r Ä
activity
<<Å â
)
<<â ä
;
<<ä ã
}== 
public?? 

static?? 
class?? %
WorkflowManagerExtensions?? 1
{@@ 
publicAA 
staticAA 
TaskAA 
TriggerEventAsyncAA ,
(AA, -
thisAA- 1
IWorkflowManagerAA2 B
workflowManagerAAC R
,AAR S
stringAAT Z
nameAA[ _
,AA_ `
objectAAa g
inputAAh m
=AAn o
nullAAp t
,AAt u
stringAAv |
correlationId	AA} ä
=
AAã å
null
AAç ë
)
AAë í
{BB 	
returnCC 
workflowManagerCC "
.CC" #
TriggerEventAsyncCC# 4
(CC4 5
nameCC5 9
,CC9 :
newCC; > 
RouteValueDictionaryCC? S
(CCS T
inputCCT Y
)CCY Z
,CCZ [
correlationIdCC\ i
)CCi j
;CCj k
}DD 	
}EE 
}FF °
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowScriptEvaluator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface $
IWorkflowScriptEvaluator -
{ 
Task		 
<		 
T		 
>		 
EvaluateAsync		 
<		 
T		 
>		  
(		  !
WorkflowExpression		! 3
<		3 4
T		4 5
>		5 6

expression		7 A
,		A B$
WorkflowExecutionContext		C [
workflowContext		\ k
,		k l
params		m s"
IGlobalMethodProvider			t â
[
		â ä
]
		ä ã#
scopedMethodProviders
		å °
)
		° ¢
;
		¢ £
}

 
} ˛
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowStore.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface 
IWorkflowStore #
{ 
Task		 
<		 
int		 
>		 

CountAsync		 
(		 
string		 #
workflowTypeId		$ 2
=		3 4
null		5 9
)		9 :
;		: ;
Task

 
<

 
bool

 
>

 "
HasHaltedInstanceAsync

 )
(

) *
string

* 0
workflowTypeId

1 ?
)

? @
;

@ A
Task 
< 
IEnumerable 
< 
Workflow !
>! "
>" #
	ListAsync$ -
(- .
string. 4
workflowTypeId5 C
=D E
nullF J
,J K
intL O
?O P
skipQ U
=V W
nullX \
,\ ]
int^ a
?a b
takec g
=h i
nullj n
)n o
;o p
Task 
< 
IEnumerable 
< 
Workflow !
>! "
>" #
	ListAsync$ -
(- .
IEnumerable. 9
<9 :
string: @
>@ A
workflowTypeIdsB Q
)Q R
;R S
Task 
< 
IEnumerable 
< 
Workflow !
>! "
>" #
	ListAsync$ -
(- .
string. 4
workflowTypeId5 C
,C D
IEnumerableE P
<P Q
stringQ W
>W X
blockingActivityIdsY l
)l m
;m n
Task 
< 
IEnumerable 
< 
Workflow !
>! "
>" ##
ListByActivityNameAsync$ ;
(; <
string< B
activityNameC O
,O P
stringQ W
correlationIdX e
=f g
nullh l
,l m
booln r
isAlwaysCorrelated	s Ö
=
Ü á
false
à ç
)
ç é
;
é è
Task 
< 
IEnumerable 
< 
Workflow !
>! "
>" #
	ListAsync$ -
(- .
string. 4
workflowTypeId5 C
,C D
stringE K
activityNameL X
,X Y
stringZ `
correlationIda n
=o p
nullq u
)u v
;v w
Task 
< 
Workflow 
> 
GetAsync 
(  
int  #
id$ &
)& '
;' (
Task 
< 
Workflow 
> 
GetAsync 
(  
string  &
uid' *
)* +
;+ ,
Task 
< 
IEnumerable 
< 
Workflow !
>! "
>" #
GetAsync$ ,
(, -
IEnumerable- 8
<8 9
int9 <
>< =
ids> A
)A B
;B C
Task 
< 
IEnumerable 
< 
Workflow !
>! "
>" #
GetAsync$ ,
(, -
IEnumerable- 8
<8 9
string9 ?
>? @
uidsA E
)E F
;F G
Task 
	SaveAsync 
( 
Workflow 
workflow  (
)( )
;) *
Task 
DeleteAsync 
( 
Workflow !
workflow" *
)* +
;+ ,
} 
} Ë
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowTypeEventHandler.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface %
IWorkflowTypeEventHandler .
{ 
Task 
CreatedAsync 
( &
WorkflowTypeCreatedContext 4
context5 <
)< =
;= >
Task		 
UpdatedAsync		 
(		 &
WorkflowTypeUpdatedContext		 4
context		5 <
)		< =
;		= >
Task

 
DeletedAsync

 
(

 &
WorkflowTypeDeletedContext

 4
context

5 <
)

< =
;

= >
} 
} ∑
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowTypeIdGenerator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface $
IWorkflowTypeIdGenerator -
{ 
string 
GenerateUniqueId 
(  
WorkflowType  ,
workflowType- 9
)9 :
;: ;
} 
}		 Ò
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowTypeStore.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface 
IWorkflowTypeStore '
{ 
Task		 
<		 
WorkflowType		 
>		 
GetAsync		 #
(		# $
int		$ '
id		( *
)		* +
;		+ ,
Task

 
<

 
WorkflowType

 
>

 
GetAsync

 #
(

# $
string

$ *
uid

+ .
)

. /
;

/ 0
Task 
< 
IEnumerable 
< 
WorkflowType %
>% &
>& '
GetAsync( 0
(0 1
IEnumerable1 <
<< =
int= @
>@ A
idsB E
)E F
;F G
Task 
< 
IEnumerable 
< 
WorkflowType %
>% &
>& '
	ListAsync( 1
(1 2
)2 3
;3 4
Task 
< 
IEnumerable 
< 
WorkflowType %
>% &
>& '#
GetByStartActivityAsync( ?
(? @
string@ F
activityNameG S
)S T
;T U
Task 
	SaveAsync 
( 
WorkflowType #
workflowType$ 0
)0 1
;1 2
Task 
DeleteAsync 
( 
WorkflowType %
workflowType& 2
)2 3
;3 4
} 
} Ê
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\IWorkflowValueSerializer.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

	interface $
IWorkflowValueSerializer -
{ 
Task 
SerializeValueAsync  
(  !)
SerializeWorkflowValueContext! >
context? F
)F G
;G H
Task !
DeserializeValueAsync "
(" #)
SerializeWorkflowValueContext# @
contextA H
)H I
;I J
} 
} à
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\WorkflowContextSerializeContext.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Models  &
{ 
public 

class )
SerializeWorkflowValueContext .
{ 
public )
SerializeWorkflowValueContext ,
(, -
object- 3
input4 9
)9 :
{ 	
Input 
= 
input 
; 
Output 
= 
input 
; 
}		 	
public 
object 
Input 
{ 
get !
;! "
set# &
;& '
}( )
public 
object 
Output 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} …
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\WorkflowExecutionContextHandlerBase.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

abstract 
class /
#WorkflowExecutionContextHandlerBase =
:> ?,
 IWorkflowExecutionContextHandler@ `
{ 
public 
virtual 
Task %
EvaluatingExpressionAsync 5
(5 6.
"WorkflowExecutionExpressionContext6 X
contextY `
)` a
{		 	
return

 
Task

 
.

 
CompletedTask

 %
;

% &
} 	
public 
virtual 
Task !
EvaluatingScriptAsync 1
(1 2*
WorkflowExecutionScriptContext2 P
contextQ X
)X Y
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
DehydrateValueAsync '
(' ()
SerializeWorkflowValueContext( E
contextF M
)M N
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
RehydrateValueAsync '
(' ()
SerializeWorkflowValueContext( E
contextF M
)M N
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ‘

öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\WorkflowHandlerBase.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

abstract 
class 
WorkflowHandlerBase -
:. /
IWorkflowHandler0 @
{ 
public 
virtual 
Task 
CreatedAsync (
(( )"
WorkflowCreatedContext) ?
context@ G
)G H
{		 	
return

 
Task

 
.

 
CompletedTask

 %
;

% &
} 	
public 
virtual 
Task 
UpdatedAsync (
(( )"
WorkflowUpdatedContext) ?
context@ G
)G H
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
DeletedAsync (
(( )"
WorkflowDeletedContext) ?
context@ G
)G H
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} Ò

ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\Services\WorkflowTypeHandlerBase.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

abstract 
class #
WorkflowTypeHandlerBase 1
:2 3%
IWorkflowTypeEventHandler4 M
{ 
public 
virtual 
Task 
CreatedAsync (
(( )&
WorkflowTypeCreatedContext) C
contextD K
)K L
{		 	
return

 
Task

 
.

 
CompletedTask

 %
;

% &
} 	
public 
virtual 
Task 
DeletedAsync (
(( )&
WorkflowTypeDeletedContext) C
contextD K
)K L
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
UpdatedAsync (
(( )&
WorkflowTypeUpdatedContext) C
contextD K
)K L
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} Ô
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Workflows.Abstractions\ViewModels\ActivityViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
ActivityViewModel "
<" #
	TActivity# ,
>, -
:. /
ShapeViewModel0 >
where? D
	TActivityE N
:O P
	IActivityQ Z
{ 
public		 
ActivityViewModel		  
(		  !
)		! "
{

 	
} 	
public 
ActivityViewModel  
(  !
	TActivity! *
activity+ 3
)3 4
{ 	
Activity 
= 
activity 
;  
} 	
[ 	
	BindNever	 
] 
public 
	TActivity 
Activity !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} 