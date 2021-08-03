“
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\CommitTransactionTask.cs
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

class !
CommitTransactionTask &
:' (
TaskActivity) 5
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public !
CommitTransactionTask $
($ %
IStringLocalizer% 5
<5 6!
CommitTransactionTask6 K
>K L
	localizerM V
)V W
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .!
CommitTransactionTask. C
)C D
;D E
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 R
]R S
;S T
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
override 
IEnumerable #
<# $
Outcome$ +
>+ ,
GetPossibleOutcomes- @
(@ A$
WorkflowExecutionContextA Y
workflowContextZ i
,i j
ActivityContextk z
activityContext	{ 
)
 ‹
{ 	
return 
Outcomes 
( 
S 
[ 
$str $
]$ %
)% &
;& '
} 	
public   
override   
async   
Task   "
<  " ##
ActivityExecutionResult  # :
>  : ;
ExecuteAsync  < H
(  H I$
WorkflowExecutionContext  I a
workflowContext  b q
,  q r
ActivityContext	  s ‚
activityContext
  ƒ ’
)
  ’ “
{!! 	
await"" 

ShellScope"" 
."" 
Services"" %
.""% &
GetRequiredService""& 8
<""8 9
ISession""9 A
>""A B
(""B C
)""C D
.""D E
CommitAsync""E P
(""P Q
)""Q R
;""R S
return## 
Outcomes## 
(## 
$str## "
)##" #
;### $
}$$ 	
}%% 
}&& σ
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\CorrelateTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{		 
public

 

class

 
CorrelateTask

 
:

  
TaskActivity

! -
{ 
private 
readonly $
IWorkflowScriptEvaluator 1
_scriptEvaluator2 B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
CorrelateTask 
( $
IWorkflowScriptEvaluator 5
scriptEvaluator6 E
,E F
IStringLocalizerG W
<W X
CorrelateTaskX e
>e f
	localizerg p
)p q
{ 	
_scriptEvaluator 
= 
scriptEvaluator .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
CorrelateTask. ;
); <
;< =
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 I
]I J
;J K
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
WorkflowExpression !
<! "
string" (
>( )
Value* /
{ 	
get 
=> 
GetProperty 
( 
(  
)  !
=>" $
new% (
WorkflowExpression) ;
<; <
string< B
>B C
(C D
)D E
)E F
;F G
set 
=> 
SetProperty 
( 
value $
)$ %
;% &
} 	
public!! 
override!! 
IEnumerable!! #
<!!# $
Outcome!!$ +
>!!+ ,
GetPossibleOutcomes!!- @
(!!@ A$
WorkflowExecutionContext!!A Y
workflowContext!!Z i
,!!i j
ActivityContext!!k z
activityContext	!!{ 
)
!! ‹
{"" 	
return## 
Outcomes## 
(## 
S## 
[## 
$str## $
]##$ %
)##% &
;##& '
}$$ 	
public&& 
override&& 
async&& 
Task&& "
<&&" ##
ActivityExecutionResult&&# :
>&&: ;
ExecuteAsync&&< H
(&&H I$
WorkflowExecutionContext&&I a
workflowContext&&b q
,&&q r
ActivityContext	&&s ‚
activityContext
&&ƒ ’
)
&&’ “
{'' 	
var(( 
value(( 
=(( 
((( 
await(( 
_scriptEvaluator(( /
.((/ 0
EvaluateAsync((0 =
(((= >
Value((> C
,((C D
workflowContext((E T
)((T U
)((U V
?((V W
.((W X
Trim((X \
(((\ ]
)((] ^
;((^ _
workflowContext)) 
.)) 
CorrelationId)) )
=))* +
value)), 1
;))1 2
return++ 
Outcomes++ 
(++ 
$str++ "
)++" #
;++# $
},, 	
}-- 
}.. π-
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\ForEachTask.cs
	namespace		 	
OrchardCore		
 
.		 
	Workflows		 
.		  

Activities		  *
{

 
public 

class 
ForEachTask 
: 
TaskActivity +
{ 
private 
readonly $
IWorkflowScriptEvaluator 1
_scriptEvaluator2 B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ForEachTask 
( $
IWorkflowScriptEvaluator 3
scriptEvaluator4 C
,C D
IStringLocalizerE U
<U V
ForEachTaskV a
>a b
	localizerc l
)l m
{ 	
_scriptEvaluator 
= 
scriptEvaluator .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
ForEachTask. 9
)9 :
;: ;
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 H
]H I
;I J
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 D
]D E
;E F
public 
WorkflowExpression !
<! "
IEnumerable" -
<- .
object. 4
>4 5
>5 6

Enumerable7 A
{ 	
get   
=>   
GetProperty   
(   
(    
)    !
=>  " $
new  % (
WorkflowExpression  ) ;
<  ; <
IEnumerable  < G
<  G H
object  H N
>  N O
>  O P
(  P Q
)  Q R
)  R S
;  S T
set!! 
=>!! 
SetProperty!! 
(!! 
value!! $
)!!$ %
;!!% &
}"" 	
public'' 
string'' 
LoopVariableName'' &
{(( 	
get)) 
=>)) 
GetProperty)) 
()) 
())  
)))  !
=>))" $
$str))% (
)))( )
;))) *
set** 
=>** 
SetProperty** 
(** 
value** $
)**$ %
;**% &
}++ 	
public00 
object00 
Current00 
{11 	
get22 
=>22 
GetProperty22 
<22 
object22 %
>22% &
(22& '
)22' (
;22( )
set33 
=>33 
SetProperty33 
(33 
value33 $
)33$ %
;33% &
}44 	
public99 
int99 
Index99 
{:: 	
get;; 
=>;; 
GetProperty;; 
(;; 
(;;  
);;  !
=>;;" $
$num;;% &
);;& '
;;;' (
set<< 
=><< 
SetProperty<< 
(<< 
value<< $
)<<$ %
;<<% &
}== 	
public?? 
override?? 
IEnumerable?? #
<??# $
Outcome??$ +
>??+ ,
GetPossibleOutcomes??- @
(??@ A$
WorkflowExecutionContext??A Y
workflowContext??Z i
,??i j
ActivityContext??k z
activityContext	??{ 
)
?? ‹
{@@ 	
returnAA 
OutcomesAA 
(AA 
SAA 
[AA 
$strAA '
]AA' (
,AA( )
SAA* +
[AA+ ,
$strAA, 2
]AA2 3
)AA3 4
;AA4 5
}BB 	
publicDD 
overrideDD 
asyncDD 
TaskDD "
<DD" ##
ActivityExecutionResultDD# :
>DD: ;
ExecuteAsyncDD< H
(DDH I$
WorkflowExecutionContextDDI a
workflowContextDDb q
,DDq r
ActivityContext	DDs ‚
activityContext
DDƒ ’
)
DD’ “
{EE 	
varFF 
itemsFF 
=FF 
(FF 
awaitFF 
_scriptEvaluatorFF /
.FF/ 0
EvaluateAsyncFF0 =
(FF= >

EnumerableFF> H
,FFH I
workflowContextFFJ Y
)FFY Z
)FFZ [
.FF[ \
ToListFF\ b
(FFb c
)FFc d
;FFd e
varGG 
countGG 
=GG 
itemsGG 
.GG 
CountGG #
;GG# $
ifII 
(II 
IndexII 
<II 
countII 
)II 
{JJ 
varKK 
currentKK 
=KK 
CurrentKK %
=KK& '
itemsKK( -
[KK- .
IndexKK. 3
]KK3 4
;KK4 5
workflowContextNN 
.NN  

PropertiesNN  *
[NN* +
LoopVariableNameNN+ ;
]NN; <
=NN= >
currentNN? F
;NNF G
workflowContextOO 
.OO  

LastResultOO  *
=OO+ ,
currentOO- 4
;OO4 5
IndexPP 
++PP 
;PP 
returnQQ 
OutcomesQQ 
(QQ  
$strQQ  )
)QQ) *
;QQ* +
}RR 
elseSS 
{TT 
IndexUU 
=UU 
$numUU 
;UU 
returnVV 
OutcomesVV 
(VV  
$strVV  &
)VV& '
;VV' (
}WW 
}XX 	
}YY 
}ZZ ή
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\ForkTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public		 

class		 
ForkTask		 
:		 
TaskActivity		 (
{

 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ForkTask 
( 
IStringLocalizer (
<( )
ForkTask) 1
>1 2
	localizer3 <
)< =
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
ForkTask. 6
)6 7
;7 8
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 D
]D E
;E F
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 D
]D E
;E F
public 
IList 
< 
string 
> 
Forks "
{ 	
get 
=> 
GetProperty 
( 
(  
)  !
=>" $
new% (
List) -
<- .
string. 4
>4 5
(5 6
)6 7
)7 8
;8 9
set 
=> 
SetProperty 
( 
value $
)$ %
;% &
} 	
public 
override 
IEnumerable #
<# $
Outcome$ +
>+ ,
GetPossibleOutcomes- @
(@ A$
WorkflowExecutionContextA Y
workflowContextZ i
,i j
ActivityContextk z
activityContext	{ 
)
 ‹
{ 	
return   
Forks   
.   
Select   
(    
x    !
=>  " $
Outcome  % ,
(  , -
S  - .
[  . /
x  / 0
]  0 1
)  1 2
)  2 3
;  3 4
}!! 	
public## 
override## #
ActivityExecutionResult## /
Execute##0 7
(##7 8$
WorkflowExecutionContext##8 P
workflowContext##Q `
,##` a
ActivityContext##b q
activityContext	##r 
)
## ‚
{$$ 	
return%% 
Outcomes%% 
(%% 
Forks%% !
)%%! "
;%%" #
}&& 	
}'' 
}(( •<
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\ForLoopTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{		 
public

 

class

 
ForLoopTask

 
:

 
TaskActivity

 +
{ 
private 
readonly $
IWorkflowScriptEvaluator 1
_scriptEvaluator2 B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ForLoopTask 
( $
IWorkflowScriptEvaluator 3
scriptEvaluator4 C
,C D
IStringLocalizerE U
<U V
ForLoopTaskV a
>a b
	localizerc l
)l m
{ 	
_scriptEvaluator 
= 
scriptEvaluator .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
ForLoopTask. 9
)9 :
;: ;
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 H
]H I
;I J
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 D
]D E
;E F
public 
WorkflowExpression !
<! "
double" (
>( )
From* .
{ 	
get   
=>   
GetProperty   
(   
(    
)    !
=>  " $
new  % (
WorkflowExpression  ) ;
<  ; <
double  < B
>  B C
(  C D
$str  D G
)  G H
)  H I
;  I J
set!! 
=>!! 
SetProperty!! 
(!! 
value!! $
)!!$ %
;!!% &
}"" 	
public'' 
WorkflowExpression'' !
<''! "
double''" (
>''( )
To''* ,
{(( 	
get)) 
=>)) 
GetProperty)) 
()) 
())  
)))  !
=>))" $
new))% (
WorkflowExpression))) ;
<)); <
double))< B
>))B C
())C D
$str))D H
)))H I
)))I J
;))J K
set** 
=>** 
SetProperty** 
(** 
value** $
)**$ %
;**% &
}++ 	
public00 
WorkflowExpression00 !
<00! "
double00" (
>00( )
Step00* .
{11 	
get22 
=>22 
GetProperty22 
(22 
(22  
)22  !
=>22" $
new22% (
WorkflowExpression22) ;
<22; <
double22< B
>22B C
(22C D
$str22D G
)22G H
)22H I
;22I J
set33 
=>33 
SetProperty33 
(33 
value33 $
)33$ %
;33% &
}44 	
public99 
string99 
LoopVariableName99 &
{:: 	
get;; 
=>;; 
GetProperty;; 
(;; 
(;;  
);;  !
=>;;" $
$str;;% (
);;( )
;;;) *
set<< 
=><< 
SetProperty<< 
(<< 
value<< $
)<<$ %
;<<% &
}== 	
publicBB 
doubleBB 
IndexBB 
{CC 	
getDD 
=>DD 
GetPropertyDD 
(DD 
(DD  
)DD  !
=>DD" $
$numDD% &
)DD& '
;DD' (
setEE 
=>EE 
SetPropertyEE 
(EE 
valueEE $
)EE$ %
;EE% &
}FF 	
publicHH 
overrideHH 
IEnumerableHH #
<HH# $
OutcomeHH$ +
>HH+ ,
GetPossibleOutcomesHH- @
(HH@ A$
WorkflowExecutionContextHHA Y
workflowContextHHZ i
,HHi j
ActivityContextHHk z
activityContext	HH{ 
)
HH ‹
{II 	
returnJJ 
OutcomesJJ 
(JJ 
SJJ 
[JJ 
$strJJ '
]JJ' (
,JJ( )
SJJ* +
[JJ+ ,
$strJJ, 2
]JJ2 3
)JJ3 4
;JJ4 5
}KK 	
publicMM 
overrideMM 
asyncMM 
TaskMM "
<MM" ##
ActivityExecutionResultMM# :
>MM: ;
ExecuteAsyncMM< H
(MMH I$
WorkflowExecutionContextMMI a
workflowContextMMb q
,MMq r
ActivityContext	MMs ‚
activityContext
MMƒ ’
)
MM’ “
{NN 	
ifOO 
(OO 
!OO 
doubleOO 
.OO 
TryParseOO  
(OO  !
FromOO! %
.OO% &

ExpressionOO& 0
,OO0 1
outOO2 5
varOO6 9
fromOO: >
)OO> ?
)OO? @
{PP 
fromQQ 
=QQ 
awaitQQ 
_scriptEvaluatorQQ -
.QQ- .
EvaluateAsyncQQ. ;
(QQ; <
FromQQ< @
,QQ@ A
workflowContextQQB Q
)QQQ R
;QQR S
}RR 
ifTT 
(TT 
!TT 
doubleTT 
.TT 
TryParseTT  
(TT  !
ToTT! #
.TT# $

ExpressionTT$ .
,TT. /
outTT0 3
varTT4 7
toTT8 :
)TT: ;
)TT; <
{UU 
toVV 
=VV 
awaitVV 
_scriptEvaluatorVV +
.VV+ ,
EvaluateAsyncVV, 9
(VV9 :
ToVV: <
,VV< =
workflowContextVV> M
)VVM N
;VVN O
}WW 
ifYY 
(YY 
!YY 
doubleYY 
.YY 
TryParseYY  
(YY  !
StepYY! %
.YY% &

ExpressionYY& 0
,YY0 1
outYY2 5
varYY6 9
stepYY: >
)YY> ?
)YY? @
{ZZ 
step[[ 
=[[ 
await[[ 
_scriptEvaluator[[ -
.[[- .
EvaluateAsync[[. ;
([[; <
Step[[< @
,[[@ A
workflowContext[[B Q
)[[Q R
;[[R S
}\\ 
if^^ 
(^^ 
Index^^ 
<^^ 
from^^ 
)^^ 
{__ 
Index`` 
=`` 
from`` 
;`` 
}aa 
ifcc 
(cc 
Indexcc 
<cc 
tocc 
)cc 
{dd 
workflowContextee 
.ee  

LastResultee  *
=ee+ ,
Indexee- 2
;ee2 3
workflowContextff 
.ff  

Propertiesff  *
[ff* +
LoopVariableNameff+ ;
]ff; <
=ff= >
Indexff? D
;ffD E
Indexgg 
+=gg 
stepgg 
;gg 
returnhh 
Outcomeshh 
(hh  
$strhh  )
)hh) *
;hh* +
}ii 
elsejj 
{kk 
Indexll 
=ll 
fromll 
;ll 
returnmm 
Outcomesmm 
(mm  
$strmm  &
)mm& '
;mm' (
}nn 
}oo 	
}pp 
}qq —
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\IfElseTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{		 
public

 

class

 

IfElseTask

 
:

 
TaskActivity

 *
{ 
private 
readonly $
IWorkflowScriptEvaluator 1
_scriptEvaluator2 B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 

IfElseTask 
( $
IWorkflowScriptEvaluator 2
scriptEvaluator3 B
,B C
IStringLocalizerD T
<T U

IfElseTaskU _
>_ `
	localizera j
)j k
{ 	
_scriptEvaluator 
= 
scriptEvaluator .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .

IfElseTask. 8
)8 9
;9 :
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 G
]G H
;H I
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 D
]D E
;E F
public 
WorkflowExpression !
<! "
bool" &
>& '
	Condition( 1
{ 	
get 
=> 
GetProperty 
( 
(  
)  !
=>" $
new% (
WorkflowExpression) ;
<; <
bool< @
>@ A
(A B
)B C
)C D
;D E
set   
=>   
SetProperty   
(   
value   $
)  $ %
;  % &
}!! 	
public## 
override## 
IEnumerable## #
<### $
Outcome##$ +
>##+ ,
GetPossibleOutcomes##- @
(##@ A$
WorkflowExecutionContext##A Y
workflowContext##Z i
,##i j
ActivityContext##k z
activityContext	##{ 
)
## ‹
{$$ 	
return%% 
Outcomes%% 
(%% 
S%% 
[%% 
$str%% $
]%%$ %
,%%% &
S%%' (
[%%( )
$str%%) 0
]%%0 1
)%%1 2
;%%2 3
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" ##
ActivityExecutionResult((# :
>((: ;
ExecuteAsync((< H
(((H I$
WorkflowExecutionContext((I a
workflowContext((b q
,((q r
ActivityContext	((s ‚
activityContext
((ƒ ’
)
((’ “
{)) 	
var** 
result** 
=** 
await** 
_scriptEvaluator** /
.**/ 0
EvaluateAsync**0 =
(**= >
	Condition**> G
,**G H
workflowContext**I X
)**X Y
;**Y Z
return++ 
Outcomes++ 
(++ 
result++ "
?++# $
$str++% +
:++, -
$str++. 5
)++5 6
;++6 7
},, 	
}-- 
}.. L
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\JoinTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{		 
public

 

class

 
JoinTask

 
:

 
TaskActivity

 (
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
enum 
JoinMode 
{ 	
WaitAll 
, 
WaitAny 
} 	
public 
JoinTask 
( 
IStringLocalizer (
<( )
JoinTask) 1
>1 2
	localizer3 <
)< =
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
JoinTask. 6
)6 7
;7 8
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 D
]D E
;E F
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 D
]D E
;E F
public 
JoinMode 
Mode 
{   	
get!! 
=>!! 
GetProperty!! 
(!! 
(!!  
)!!  !
=>!!" $
JoinMode!!% -
.!!- .
WaitAll!!. 5
)!!5 6
;!!6 7
set"" 
=>"" 
SetProperty"" 
("" 
value"" $
)""$ %
;""% &
}## 	
private%% 
IList%% 
<%% 
string%% 
>%% 
Branches%% &
{&& 	
get'' 
=>'' 
GetProperty'' 
('' 
(''  
)''  !
=>''" $
new''% (
List'') -
<''- .
string''. 4
>''4 5
(''5 6
)''6 7
)''7 8
;''8 9
set(( 
=>(( 
SetProperty(( 
((( 
value(( $
)(($ %
;((% &
})) 	
public++ 
override++ 
IEnumerable++ #
<++# $
Outcome++$ +
>+++ ,
GetPossibleOutcomes++- @
(++@ A$
WorkflowExecutionContext++A Y
workflowContext++Z i
,++i j
ActivityContext++k z
activityContext	++{ 
)
++ ‹
{,, 	
return-- 
Outcomes-- 
(-- 
S-- 
[-- 
$str-- &
]--& '
)--' (
;--( )
}.. 	
public00 
override00 #
ActivityExecutionResult00 /
Execute000 7
(007 8$
WorkflowExecutionContext008 P
workflowContext00Q `
,00` a
ActivityContext00b q
activityContext	00r 
)
00 ‚
{11 	
var22 
branches22 
=22 
Branches22 #
;22# $
var33 
inboundTransitions33 "
=33# $
workflowContext33% 4
.334 5!
GetInboundTransitions335 J
(33J K
activityContext33K Z
.33Z [
ActivityRecord33[ i
.33i j

ActivityId33j t
)33t u
;33u v
var44 
done44 
=44 
false44 
;44 
switch66 
(66 
Mode66 
)66 
{77 
case88 
JoinMode88 
.88 
WaitAll88 %
:88% &
done99 
=99 
inboundTransitions99 -
.99- .
All99. 1
(991 2
x992 3
=>994 6
branches997 ?
.99? @
Contains99@ H
(99H I
GetTransitionKey99I Y
(99Y Z
x99Z [
)99[ \
)99\ ]
)99] ^
;99^ _
break:: 
;:: 
case;; 
JoinMode;; 
.;; 
WaitAny;; %
:;;% &
done<< 
=<< 
inboundTransitions<< -
.<<- .
Any<<. 1
(<<1 2
x<<2 3
=><<4 6
branches<<7 ?
.<<? @
Contains<<@ H
(<<H I
GetTransitionKey<<I Y
(<<Y Z
x<<Z [
)<<[ \
)<<\ ]
)<<] ^
;<<^ _
if>> 
(>> 
done>> 
)>> 
{?? 
varAA 
ancestorActivityIdsAA /
=AA0 1
workflowContextAA2 A
.AAA B"
GetInboundActivityPathAAB X
(AAX Y
activityContextAAY h
.AAh i
ActivityRecordAAi w
.AAw x

ActivityId	AAx ‚
)
AA‚ ƒ
.
AAƒ „
ToList
AA„ 
(
AA ‹
)
AA‹ 
;
AA 
varBB 
blockingActivitiesBB .
=BB/ 0
workflowContextBB1 @
.BB@ A
WorkflowBBA I
.BBI J
BlockingActivitiesBBJ \
.BB\ ]
WhereBB] b
(BBb c
xBBc d
=>BBe g
ancestorActivityIdsBBh {
.BB{ |
Contains	BB| „
(
BB„ …
x
BB… †
.
BB† ‡

ActivityId
BB‡ ‘
)
BB‘ ’
)
BB’ “
.
BB“ ”
ToList
BB” 
(
BB ›
)
BB› 
;
BB 
foreachDD 
(DD  !
varDD! $
blockingActivityDD% 5
inDD6 8
blockingActivitiesDD9 K
)DDK L
{EE 
workflowContextFF +
.FF+ ,
WorkflowFF, 4
.FF4 5
BlockingActivitiesFF5 G
.FFG H
RemoveFFH N
(FFN O
blockingActivityFFO _
)FF_ `
;FF` a
}GG 
}HH 
breakII 
;II 
}JJ 
ifLL 
(LL 
doneLL 
)LL 
{MM 
returnNN 
OutcomesNN 
(NN  
$strNN  (
)NN( )
;NN) *
}OO 
returnQQ 
NoopQQ 
(QQ 
)QQ 
;QQ 
}RR 	
publicSS 
overrideSS 
TaskSS #
OnActivityExecutedAsyncSS 4
(SS4 5$
WorkflowExecutionContextSS5 M
workflowContextSSN ]
,SS] ^
ActivityContextSS_ n
activityContextSSo ~
)SS~ 
{TT 	
varVV 
outboundTransitionsVV #
=VV$ %
workflowContextVV& 5
.VV5 6"
GetOutboundTransitionsVV6 L
(VVL M
activityContextVVM \
.VV\ ]
ActivityRecordVV] k
.VVk l

ActivityIdVVl v
)VVv w
;VVw x
varYY #
inboundTransitionsQueryYY '
=YY( )
fromZZ 

transitionZZ 
inZZ  "
outboundTransitionsZZ# 6
let[[ 
destinationActivity[[ '
=[[( )
workflowContext[[* 9
.[[9 :
GetActivity[[: E
([[E F

transition[[F P
.[[P Q!
DestinationActivityId[[Q f
)[[f g
where\\ 
destinationActivity\\ )
.\\) *
Activity\\* 2
.\\2 3
Name\\3 7
==\\8 :
Name\\; ?
select]] 

transition]] !
;]]! "
var__ 
inboundTransitions__ "
=__# $#
inboundTransitionsQuery__% <
.__< =
ToList__= C
(__C D
)__D E
;__E F
foreachaa 
(aa 
varaa 
inboundTransitionaa *
inaa+ -
inboundTransitionsaa. @
)aa@ A
{bb 
varcc 
mergeActivitycc !
=cc" #
(cc$ %
JoinTaskcc% -
)cc- .
workflowContextcc. =
.cc= >
GetActivitycc> I
(ccI J
inboundTransitionccJ [
.cc[ \!
DestinationActivityIdcc\ q
)ccq r
.ccr s
Activityccs {
;cc{ |
vardd 
branchesdd 
=dd 
mergeActivitydd ,
.dd, -
Branchesdd- 5
;dd5 6
mergeActivityee 
.ee 
Branchesee &
=ee' (
branchesee) 1
.ee1 2
Unionee2 7
(ee7 8
newee8 ;
[ee; <
]ee< =
{ee> ?
GetTransitionKeyee@ P
(eeP Q
inboundTransitioneeQ b
)eeb c
}eed e
)eee f
.eef g
Distincteeg o
(eeo p
)eep q
.eeq r
ToListeer x
(eex y
)eey z
;eez {
}ff 
returnhh 
Taskhh 
.hh 
CompletedTaskhh %
;hh% &
}ii 	
privatekk 
stringkk 
GetTransitionKeykk '
(kk' (

Transitionkk( 2

transitionkk3 =
)kk= >
{ll 	
varmm 
sourceActivityIdmm  
=mm! "

transitionmm# -
.mm- .
SourceActivityIdmm. >
;mm> ?
varnn 
sourceOutcomeNamenn !
=nn" #

transitionnn$ .
.nn. /
SourceOutcomeNamenn/ @
;nn@ A
returnpp 
$"pp 
@pp 
{pp 
sourceActivityIdpp '
}pp' (
_pp( )
{pp) *
sourceOutcomeNamepp* ;
}pp; <
"pp< =
;pp= >
}qq 	
}rr 
}ss ν$
‹D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\LogTask.cs
	namespace		 	
OrchardCore		
 
.		 
	Workflows		 
.		  

Activities		  *
{

 
public 

class 
LogTask 
: 
TaskActivity '
{ 
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
LogTask 
( 
ILogger 
< 
LogTask &
>& '
logger( .
,. /(
IWorkflowExpressionEvaluator0 L
expressionEvaluatorM `
,` a
IStringLocalizerb r
<r s
LogTasks z
>z {
	localizer	| …
)
… †
{ 	
_logger 
= 
logger 
;  
_expressionEvaluator  
=! "
expressionEvaluator# 6
;6 7
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
LogTask. 5
)5 6
;6 7
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 C
]C D
;D E
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
LogLevel 
LogLevel  
{ 	
get 
=> 
GetProperty 
( 
(  
)  !
=>" $
LogLevel% -
.- .
Information. 9
)9 :
;: ;
set   
=>   
SetProperty   
(   
value   $
)  $ %
;  % &
}!! 	
public## 
WorkflowExpression## !
<##! "
string##" (
>##( )
Text##* .
{$$ 	
get%% 
=>%% 
GetProperty%% 
(%% 
(%%  
)%%  !
=>%%" $
new%%% (
WorkflowExpression%%) ;
<%%; <
string%%< B
>%%B C
(%%C D
)%%D E
)%%E F
;%%F G
set&& 
=>&& 
SetProperty&& 
(&& 
value&& $
)&&$ %
;&&% &
}'' 	
public)) 
override)) 
IEnumerable)) #
<))# $
Outcome))$ +
>))+ ,
GetPossibleOutcomes))- @
())@ A$
WorkflowExecutionContext))A Y
workflowContext))Z i
,))i j
ActivityContext))k z
activityContext	)){ 
)
)) ‹
{** 	
return++ 
Outcomes++ 
(++ 
S++ 
[++ 
$str++ $
]++$ %
)++% &
;++& '
},, 	
public.. 
override.. 
async.. 
Task.. "
<.." ##
ActivityExecutionResult..# :
>..: ;
ExecuteAsync..< H
(..H I$
WorkflowExecutionContext..I a
workflowContext..b q
,..q r
ActivityContext	..s ‚
activityContext
..ƒ ’
)
..’ “
{// 	
var00 
text00 
=00 
await00  
_expressionEvaluator00 1
.001 2
EvaluateAsync002 ?
(00? @
Text00@ D
,00D E
workflowContext00F U
,00U V
null00W [
)00[ \
;00\ ]
var11 
logLevel11 
=11 
LogLevel11 #
;11# $
_logger33 
.33 
Log33 
(33 
logLevel33  
,33  !
$num33" #
,33# $
text33% )
,33) *
null33+ /
,33/ 0
(331 2
state332 7
,337 8
error339 >
)33> ?
=>33@ B
state33C H
.33H I
ToString33I Q
(33Q R
)33R S
)33S T
;33T U
return44 
Outcomes44 
(44 
$str44 "
)44" #
;44# $
}55 	
}66 
}77 Ι
“D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\MissingActivity.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public 

class 
MissingActivity  
:! "
Activity# +
{ 
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
MissingActivity 
( 
IStringLocalizer /
</ 0
MissingActivity0 ?
>? @
	localizerA J
,J K
ILoggerL S
<S T
MissingActivityT c
>c d
loggere k
,k l
ActivityRecordm {"
missingActivityRecord	| ‘
)
‘ ’
{ 	
S 
= 
	localizer 
; 
_logger 
= 
logger 
; !
MissingActivityRecord !
=" #!
missingActivityRecord$ 9
;9 :
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
MissingActivity. =
)= >
;> ?
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 K
]K L
;L M
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
ActivityRecord !
MissingActivityRecord 3
{4 5
get6 9
;9 :
}; <
public   
override   
IEnumerable   #
<  # $
Outcome  $ +
>  + ,
GetPossibleOutcomes  - @
(  @ A$
WorkflowExecutionContext  A Y
workflowContext  Z i
,  i j
ActivityContext  k z
activityContext	  { 
)
   ‹
{!! 	
yield"" 
break"" 
;"" 
}## 	
public%% 
override%% #
ActivityExecutionResult%% /
Execute%%0 7
(%%7 8$
WorkflowExecutionContext%%8 P
workflowContext%%Q `
,%%` a
ActivityContext%%b q
activityContext	%%r 
)
%% ‚
{&& 	
_logger'' 
.'' 

LogWarning'' 
('' 
$str	'' ƒ
,
''ƒ „#
MissingActivityRecord
''… 
.
'' ›
Name
''› 
,
''  
workflowContext
''΅ °
.
''° ±
WorkflowType
''± ½
.
''½ Ύ
Id
''Ύ ΐ
)
''ΐ Α
;
''Α Β
return(( 
Noop(( 
((( 
)(( 
;(( 
})) 	
}** 
}++ …%
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\NotifyTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{ 
public 

class 

NotifyTask 
: 
TaskActivity *
{ 
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public 

NotifyTask 
( 
	INotifier 
notifier 
, (
IWorkflowExpressionEvaluator (
expressionvaluator) ;
,; <
IStringLocalizer 
< 

NotifyTask '
>' (
	localizer) 2
,2 3
HtmlEncoder 
htmlEncoder #
)# $
{ 	
	_notifier 
= 
notifier  
;  ! 
_expressionEvaluator  
=! "
expressionvaluator# 5
;5 6
S 
= 
	localizer 
; 
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
public   
override   
string   
Name   #
=>  $ &
nameof  ' -
(  - .

NotifyTask  . 8
)  8 9
;  9 :
public"" 
override"" 
LocalizedString"" '
DisplayText""( 3
=>""4 6
S""7 8
[""8 9
$str""9 F
]""F G
;""G H
public$$ 
override$$ 
LocalizedString$$ '
Category$$( 0
=>$$1 3
S$$4 5
[$$5 6
$str$$6 :
]$$: ;
;$$; <
public&& 

NotifyType&& 
NotificationType&& *
{'' 	
get(( 
=>(( 
GetProperty(( 
<(( 

NotifyType(( )
>(() *
(((* +
)((+ ,
;((, -
set)) 
=>)) 
SetProperty)) 
()) 
value)) $
)))$ %
;))% &
}** 	
public,, 
WorkflowExpression,, !
<,,! "
string,," (
>,,( )
Message,,* 1
{-- 	
get.. 
=>.. 
GetProperty.. 
(.. 
(..  
)..  !
=>.." $
new..% (
WorkflowExpression..) ;
<..; <
string..< B
>..B C
(..C D
)..D E
)..E F
;..F G
set// 
=>// 
SetProperty// 
(// 
value// $
)//$ %
;//% &
}00 	
public22 
override22 
IEnumerable22 #
<22# $
Outcome22$ +
>22+ ,
GetPossibleOutcomes22- @
(22@ A$
WorkflowExecutionContext22A Y
workflowContext22Z i
,22i j
ActivityContext22k z
activityContext	22{ 
)
22 ‹
{33 	
return44 
Outcomes44 
(44 
S44 
[44 
$str44 $
]44$ %
)44% &
;44& '
}55 	
public77 
override77 
async77 
Task77 "
<77" ##
ActivityExecutionResult77# :
>77: ;
ExecuteAsync77< H
(77H I$
WorkflowExecutionContext77I a
workflowContext77b q
,77q r
ActivityContext	77s ‚
activityContext
77ƒ ’
)
77’ “
{88 	
var99 
message99 
=99 
await99  
_expressionEvaluator99  4
.994 5
EvaluateAsync995 B
(99B C
Message99C J
,99J K
workflowContext99L [
,99[ \
_htmlEncoder99] i
)99i j
;99j k
	_notifier:: 
.:: 
Add:: 
(:: 
NotificationType:: *
,::* +
new::, /
LocalizedHtmlString::0 C
(::C D
nameof::D J
(::J K

NotifyTask::K U
)::U V
,::V W
message::X _
)::_ `
)::` a
;::a b
return<< 
Outcomes<< 
(<< 
$str<< "
)<<" #
;<<# $
}== 	
}>> 
}?? Ϊ#
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\ScriptTask.cs
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

class 

ScriptTask 
: 
TaskActivity *
{ 
private 
readonly $
IWorkflowScriptEvaluator 1
_scriptEvaluator2 B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 

ScriptTask 
( $
IWorkflowScriptEvaluator 2
scriptEvaluator3 B
,B C
IStringLocalizerD T
<T U

ScriptTaskU _
>_ `
	localizera j
)j k
{ 	
_scriptEvaluator 
= 
scriptEvaluator .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .

ScriptTask. 8
)8 9
;9 :
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 F
]F G
;G H
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 D
]D E
;E F
public 
IList 
< 
string 
> 
AvailableOutcomes .
{ 	
get 
=> 
GetProperty 
( 
(  
)  !
=>" $
new% (
List) -
<- .
string. 4
>4 5
{6 7
$str8 >
}? @
)@ A
;A B
set   
=>   
SetProperty   
(   
value   $
)  $ %
;  % &
}!! 	
public&& 
WorkflowExpression&& !
<&&! "
object&&" (
>&&( )
Script&&* 0
{'' 	
get(( 
=>(( 
GetProperty(( 
((( 
(((  
)((  !
=>((" $
new((% (
WorkflowExpression(() ;
<((; <
object((< B
>((B C
(((C D
$str((D Y
)((Y Z
)((Z [
;(([ \
set)) 
=>)) 
SetProperty)) 
()) 
value)) $
)))$ %
;))% &
}** 	
public,, 
override,, 
IEnumerable,, #
<,,# $
Outcome,,$ +
>,,+ ,
GetPossibleOutcomes,,- @
(,,@ A$
WorkflowExecutionContext,,A Y
workflowContext,,Z i
,,,i j
ActivityContext,,k z
activityContext	,,{ 
)
,, ‹
{-- 	
return.. 
Outcomes.. 
(.. 
AvailableOutcomes.. -
...- .
Select... 4
(..4 5
x..5 6
=>..7 9
S..: ;
[..; <
x..< =
]..= >
)..> ?
...? @
ToArray..@ G
(..G H
)..H I
)..I J
;..J K
}// 	
public11 
override11 
async11 
Task11 "
<11" ##
ActivityExecutionResult11# :
>11: ;
ExecuteAsync11< H
(11H I$
WorkflowExecutionContext11I a
workflowContext11b q
,11q r
ActivityContext	11s ‚
activityContext
11ƒ ’
)
11’ “
{22 	
var33 
outcomes33 
=33 
new33 
List33 #
<33# $
string33$ *
>33* +
(33+ ,
)33, -
;33- .
workflowContext44 
.44 

LastResult44 &
=44' (
await44) .
_scriptEvaluator44/ ?
.44? @
EvaluateAsync44@ M
(44M N
Script44N T
,44T U
workflowContext44V e
,44e f
new44g j"
OutcomeMethodProvider	44k €
(
44€ 
outcomes
44 ‰
)
44‰ 
)
44 ‹
;
44‹ 
return66 
Outcomes66 
(66 
outcomes66 $
)66$ %
;66% &
}77 	
}88 
}99 §
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\SetOutputTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{		 
public

 

class

 
SetOutputTask

 
:

  
TaskActivity

! -
{ 
private 
readonly $
IWorkflowScriptEvaluator 1
_scriptEvaluator2 B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
SetOutputTask 
( $
IWorkflowScriptEvaluator 5
scriptEvaluator6 E
,E F
IStringLocalizerG W
<W X
SetOutputTaskX e
>e f
	localizerg p
)p q
{ 	
_scriptEvaluator 
= 
scriptEvaluator .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
SetOutputTask. ;
); <
;< =
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 J
]J K
;K L
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
string 

OutputName  
{ 	
get 
=> 
GetProperty 
< 
string %
>% &
(& '
)' (
;( )
set 
=> 
SetProperty 
( 
value $
)$ %
;% &
} 	
public!! 
WorkflowExpression!! !
<!!! "
object!!" (
>!!( )
Value!!* /
{"" 	
get## 
=>## 
GetProperty## 
(## 
(##  
)##  !
=>##" $
new##% (
WorkflowExpression##) ;
<##; <
object##< B
>##B C
(##C D
)##D E
)##E F
;##F G
set$$ 
=>$$ 
SetProperty$$ 
($$ 
value$$ $
)$$$ %
;$$% &
}%% 	
public'' 
override'' 
IEnumerable'' #
<''# $
Outcome''$ +
>''+ ,
GetPossibleOutcomes''- @
(''@ A$
WorkflowExecutionContext''A Y
workflowContext''Z i
,''i j
ActivityContext''k z
activityContext	''{ 
)
'' ‹
{(( 	
return)) 
Outcomes)) 
()) 
S)) 
[)) 
$str)) $
]))$ %
)))% &
;))& '
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," ##
ActivityExecutionResult,,# :
>,,: ;
ExecuteAsync,,< H
(,,H I$
WorkflowExecutionContext,,I a
workflowContext,,b q
,,,q r
ActivityContext	,,s ‚
activityContext
,,ƒ ’
)
,,’ “
{-- 	
var.. 
value.. 
=.. 
await.. 
_scriptEvaluator.. .
.... /
EvaluateAsync../ <
(..< =
Value..= B
,..B C
workflowContext..D S
)..S T
;..T U
workflowContext// 
.// 
Output// "
[//" #

OutputName//# -
]//- .
=/// 0
value//1 6
;//6 7
return11 
Outcomes11 
(11 
$str11 "
)11" #
;11# $
}22 	
}33 
}44 Ή
“D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\SetPropertyTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{		 
public

 

class

 
SetPropertyTask

  
:

! "
TaskActivity

# /
{ 
private 
readonly $
IWorkflowScriptEvaluator 1
_scriptEvaluator2 B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
SetPropertyTask 
( $
IWorkflowScriptEvaluator 7
scriptEvaluator8 G
,G H
IStringLocalizerI Y
<Y Z
SetPropertyTaskZ i
>i j
	localizerk t
)t u
{ 	
_scriptEvaluator 
= 
scriptEvaluator .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
SetPropertyTask. =
)= >
;> ?
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 L
]L M
;M N
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
string 
PropertyName "
{ 	
get 
=> 
GetProperty 
< 
string %
>% &
(& '
)' (
;( )
set 
=> 
SetProperty 
( 
value $
)$ %
;% &
} 	
public!! 
WorkflowExpression!! !
<!!! "
object!!" (
>!!( )
Value!!* /
{"" 	
get## 
=>## 
GetProperty## 
(## 
(##  
)##  !
=>##" $
new##% (
WorkflowExpression##) ;
<##; <
object##< B
>##B C
(##C D
)##D E
)##E F
;##F G
set$$ 
=>$$ 
SetProperty$$ 
($$ 
value$$ $
)$$$ %
;$$% &
}%% 	
public'' 
override'' 
IEnumerable'' #
<''# $
Outcome''$ +
>''+ ,
GetPossibleOutcomes''- @
(''@ A$
WorkflowExecutionContext''A Y
workflowContext''Z i
,''i j
ActivityContext''k z
activityContext	''{ 
)
'' ‹
{(( 	
return)) 
Outcomes)) 
()) 
S)) 
[)) 
$str)) $
]))$ %
)))% &
;))& '
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," ##
ActivityExecutionResult,,# :
>,,: ;
ExecuteAsync,,< H
(,,H I$
WorkflowExecutionContext,,I a
workflowContext,,b q
,,,q r
ActivityContext	,,s ‚
activityContext
,,ƒ ’
)
,,’ “
{-- 	
var.. 
value.. 
=.. 
await.. 
_scriptEvaluator.. .
.... /
EvaluateAsync../ <
(..< =
Value..= B
,..B C
workflowContext..D S
)..S T
;..T U
workflowContext// 
.// 

Properties// &
[//& '
PropertyName//' 3
]//3 4
=//5 6
value//7 <
;//< =
return11 
Outcomes11 
(11 
$str11 "
)11" #
;11# $
}22 	
}33 
}44 Ά
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\WhileLoopTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Activities  *
{		 
public

 

class

 
WhileLoopTask

 
:

  
TaskActivity

! -
{ 
private 
readonly $
IWorkflowScriptEvaluator 1
_scriptEvaluator2 B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
WhileLoopTask 
( $
IWorkflowScriptEvaluator 5
scriptEvaluator6 E
,E F
IStringLocalizerG W
<W X
WhileLoopTaskX e
>e f
	localizerg p
)p q
{ 	
_scriptEvaluator 
= 
scriptEvaluator .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
WhileLoopTask. ;
); <
;< =
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 J
]J K
;K L
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 D
]D E
;E F
public 
WorkflowExpression !
<! "
bool" &
>& '
	Condition( 1
{ 	
get   
=>   
GetProperty   
(   
(    
)    !
=>  " $
new  % (
WorkflowExpression  ) ;
<  ; <
bool  < @
>  @ A
(  A B
)  B C
)  C D
;  D E
set!! 
=>!! 
SetProperty!! 
(!! 
value!! $
)!!$ %
;!!% &
}"" 	
public$$ 
override$$ 
IEnumerable$$ #
<$$# $
Outcome$$$ +
>$$+ ,
GetPossibleOutcomes$$- @
($$@ A$
WorkflowExecutionContext$$A Y
workflowContext$$Z i
,$$i j
ActivityContext$$k z
activityContext	$${ 
)
$$ ‹
{%% 	
return&& 
Outcomes&& 
(&& 
S&& 
[&& 
$str&& '
]&&' (
,&&( )
S&&* +
[&&+ ,
$str&&, 2
]&&2 3
)&&3 4
;&&4 5
}'' 	
public)) 
override)) 
async)) 
Task)) "
<))" ##
ActivityExecutionResult))# :
>)): ;
ExecuteAsync))< H
())H I$
WorkflowExecutionContext))I a
workflowContext))b q
,))q r
ActivityContext	))s ‚
activityContext
))ƒ ’
)
))’ “
{** 	
var++ 
loop++ 
=++ 
await++ 
_scriptEvaluator++ -
.++- .
EvaluateAsync++. ;
(++; <
	Condition++< E
,++E F
workflowContext++G V
)++V W
;++W X
return,, 
Outcomes,, 
(,, 
loop,,  
?,,! "
$str,,# ,
:,,- .
$str,,/ 5
),,5 6
;,,6 7
}-- 	
}.. 
}// 
‚D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
{ 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{		 
private

 
readonly

 
IStringLocalizer

 )
S

* +
;

+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
string 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str %
]% &
,& '
NavigationConstants( ;
.; <&
AdminMenuWorkflowsPosition< V
,V W
workflowX `
=>a c
workflowd l
. 
AddClass 
( 
$str %
)% &
.& '
Id' )
() *
$str* 5
)5 6
.6 7
Action7 =
(= >
$str> E
,E F
$strG U
,U V
newW Z
{[ \
area] a
=b c
$strd {
}| }
)} ~
. 

Permission 
(  
Permissions  +
.+ ,
ManageWorkflows, ;
); <
. 
LocalNav 
( 
) 
)  
;  !
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
}   φ†
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Controllers\ActivityController.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Controllers  +
{ 
[ 
Admin 

]
 
public 

class 
ActivityController #
:$ %

Controller& 0
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IActivityLibrary )
_activityLibrary* :
;: ;
private 
readonly 
IWorkflowManager )
_workflowManager* :
;: ;
private 
readonly  
IActivityIdGenerator - 
_activityIdGenerator. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly #
IActivityDisplayManager 0#
_activityDisplayManager1 H
;H I
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
ActivityController !
( 	
ISession 
session 
, 
IActivityLibrary   
activityLibrary   ,
,  , -
IWorkflowManager!! 
workflowManager!! ,
,!!, - 
IActivityIdGenerator""  
activityIdGenerator""! 4
,""4 5!
IAuthorizationService## ! 
authorizationService##" 6
,##6 7#
IActivityDisplayManager$$ #"
activityDisplayManager$$$ :
,$$: ;
	INotifier%% 
notifier%% 
,%% 
IHtmlLocalizer&& 
<&& 
ActivityController&& -
>&&- .
h&&/ 0
,&&0 1 
IUpdateModelAccessor''  
updateModelAccessor''! 4
)''4 5
{(( 	
_session)) 
=)) 
session)) 
;)) 
_activityLibrary** 
=** 
activityLibrary** .
;**. /
_workflowManager++ 
=++ 
workflowManager++ .
;++. / 
_activityIdGenerator,,  
=,,! "
activityIdGenerator,,# 6
;,,6 7!
_authorizationService-- !
=--" # 
authorizationService--$ 8
;--8 9#
_activityDisplayManager.. #
=..$ %"
activityDisplayManager..& <
;..< =
	_notifier// 
=// 
notifier//  
;//  ! 
_updateModelAccessor00  
=00! "
updateModelAccessor00# 6
;006 7
H11 
=11 
h11 
;11 
}22 	
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
Create44) /
(44/ 0
string440 6
activityName447 C
,44C D
int44E H
workflowTypeId44I W
,44W X
string44Y _
	returnUrl44` i
)44i j
{55 	
if66 
(66 
!66 
await66 !
_authorizationService66 ,
.66, -
AuthorizeAsync66- ;
(66; <
User66< @
,66@ A
Permissions66B M
.66M N
ManageWorkflows66N ]
)66] ^
)66^ _
{77 
return88 
Forbid88 
(88 
)88 
;88  
}99 
var;; 
activity;; 
=;; 
_activityLibrary;; +
.;;+ ,
InstantiateActivity;;, ?
(;;? @
activityName;;@ L
);;L M
;;;M N
var<< 

activityId<< 
=<<  
_activityIdGenerator<< 1
.<<1 2
GenerateUniqueId<<2 B
(<<B C
new<<C F
ActivityRecord<<G U
(<<U V
)<<V W
)<<W X
;<<X Y
var== 
activityEditor== 
===  
await==! &#
_activityDisplayManager==' >
.==> ?
BuildEditorAsync==? O
(==O P
activity==P X
,==X Y 
_updateModelAccessor==Z n
.==n o
ModelUpdater==o {
,=={ |
isNew	==} ‚
:
==‚ ƒ
true
==„ 
)
== ‰
;
==‰ 
activityEditor?? 
.?? 
Metadata?? #
.??# $
Type??$ (
=??) *
$str??+ :
;??: ;
varAA 
	viewModelAA 
=AA 
newAA !
ActivityEditViewModelAA  5
{BB 
ActivityCC 
=CC 
activityCC #
,CC# $

ActivityIdDD 
=DD 

activityIdDD '
,DD' (
ActivityEditorEE 
=EE  
activityEditorEE! /
,EE/ 0
WorkflowTypeIdFF 
=FF  
workflowTypeIdFF! /
,FF/ 0
	ReturnUrlGG 
=GG 
	returnUrlGG %
}HH 
;HH 
ifJJ 
(JJ 
!JJ 
activityJJ 
.JJ 
	HasEditorJJ #
)JJ# $
{KK 
returnMM 
awaitMM 
CreateMM #
(MM# $
activityNameMM$ 0
,MM0 1
	viewModelMM2 ;
)MM; <
;MM< =
}NN 
returnPP 
ViewPP 
(PP 
	viewModelPP !
)PP! "
;PP" #
}QQ 	
[SS 	
HttpPostSS	 
]SS 
publicTT 
asyncTT 
TaskTT 
<TT 
IActionResultTT '
>TT' (
CreateTT) /
(TT/ 0
stringTT0 6
activityNameTT7 C
,TTC D!
ActivityEditViewModelTTE Z
modelTT[ `
)TT` a
{UU 	
ifVV 
(VV 
!VV 
awaitVV !
_authorizationServiceVV ,
.VV, -
AuthorizeAsyncVV- ;
(VV; <
UserVV< @
,VV@ A
PermissionsVVB M
.VVM N
ManageWorkflowsVVN ]
)VV] ^
)VV^ _
{WW 
returnXX 
ForbidXX 
(XX 
)XX 
;XX  
}YY 
var[[ 
workflowType[[ 
=[[ 
await[[ $
_session[[% -
.[[- .
GetAsync[[. 6
<[[6 7
WorkflowType[[7 C
>[[C D
([[D E
model[[E J
.[[J K
WorkflowTypeId[[K Y
)[[Y Z
;[[Z [
var\\ 
activity\\ 
=\\ 
_activityLibrary\\ +
.\\+ ,
InstantiateActivity\\, ?
(\\? @
activityName\\@ L
)\\L M
;\\M N
var]] 
activityEditor]] 
=]]  
await]]! &#
_activityDisplayManager]]' >
.]]> ?
UpdateEditorAsync]]? P
(]]P Q
activity]]Q Y
,]]Y Z 
_updateModelAccessor]][ o
.]]o p
ModelUpdater]]p |
,]]| }
isNew	]]~ ƒ
:
]]ƒ „
true
]]… ‰
)
]]‰ 
;
]] ‹
if__ 
(__ 
!__ 

ModelState__ 
.__ 
IsValid__ #
)__# $
{`` 
activityEditoraa 
.aa 
Metadataaa '
.aa' (
Typeaa( ,
=aa- .
$straa/ >
;aa> ?
modelbb 
.bb 
Activitybb 
=bb  
activitybb! )
;bb) *
modelcc 
.cc 
ActivityEditorcc $
=cc% &
activityEditorcc' 5
;cc5 6
returndd 
Viewdd 
(dd 
modeldd !
)dd! "
;dd" #
}ee 
vargg 
activityRecordgg 
=gg  
newgg! $
ActivityRecordgg% 3
{hh 

ActivityIdii 
=ii 
modelii "
.ii" #

ActivityIdii# -
,ii- .
Namejj 
=jj 
activityjj 
.jj  
Namejj  $
,jj$ %

Propertieskk 
=kk 
activitykk %
.kk% &

Propertieskk& 0
,kk0 1
}ll 
;ll 
workflowTypemm 
.mm 

Activitiesmm #
.mm# $
Addmm$ '
(mm' (
activityRecordmm( 6
)mm6 7
;mm7 8
_sessionoo 
.oo 
Saveoo 
(oo 
workflowTypeoo &
)oo& '
;oo' (
	_notifierpp 
.pp 
Successpp 
(pp 
Hpp 
[pp  
$strpp  >
]pp> ?
)pp? @
;pp@ A
returnrr 
Urlrr 
.rr 

IsLocalUrlrr !
(rr! "
modelrr" '
.rr' (
	ReturnUrlrr( 1
)rr1 2
?rr3 4
(rr5 6
IActionResultrr6 C
)rrC D
RedirectrrD L
(rrL M
modelrrM R
.rrR S
	ReturnUrlrrS \
)rr\ ]
:rr^ _
RedirectToActionrr` p
(rrp q
$strrrq w
,rrw x
$str	rry ‡
,
rr‡ 
new
rr‰ 
{
rr 
id
rr ‘
=
rr’ “
model
rr” ™
.
rr™ 
WorkflowTypeId
rr ¨
}
rr© ª
)
rrª «
;
rr« ¬
}ss 	
publicuu 
asyncuu 
Taskuu 
<uu 
IActionResultuu '
>uu' (
Edituu) -
(uu- .
intuu. 1
workflowTypeIduu2 @
,uu@ A
stringuuB H

activityIduuI S
,uuS T
stringuuU [
	returnUrluu\ e
)uue f
{vv 	
ifww 
(ww 
!ww 
awaitww !
_authorizationServiceww ,
.ww, -
AuthorizeAsyncww- ;
(ww; <
Userww< @
,ww@ A
PermissionswwB M
.wwM N
ManageWorkflowswwN ]
)ww] ^
)ww^ _
{xx 
returnyy 
Forbidyy 
(yy 
)yy 
;yy  
}zz 
var|| 
workflowType|| 
=|| 
await|| $
_session||% -
.||- .
GetAsync||. 6
<||6 7
WorkflowType||7 C
>||C D
(||D E
workflowTypeId||E S
)||S T
;||T U
var}} 
activityRecord}} 
=}}  
workflowType}}! -
.}}- .

Activities}}. 8
.}}8 9
Single}}9 ?
(}}? @
x}}@ A
=>}}B D
x}}E F
.}}F G

ActivityId}}G Q
==}}R T

activityId}}U _
)}}_ `
;}}` a
var~~ 
activityContext~~ 
=~~  !
await~~" '
_workflowManager~~( 8
.~~8 9/
#CreateActivityExecutionContextAsync~~9 \
(~~\ ]
activityRecord~~] k
,~~k l
activityRecord~~m {
.~~{ |

Properties	~~| †
)
~~† ‡
;
~~‡ 
var 
activityEditor 
=  
await! &#
_activityDisplayManager' >
.> ?
BuildEditorAsync? O
(O P
activityContextP _
._ `
Activity` h
,h i 
_updateModelAccessorj ~
.~ 
ModelUpdater	 ‹
,
‹ 
isNew
 ’
:
’ “
false
” ™
)
™ 
;
 ›
activityEditor
 
.
 
Metadata
 #
.
# $
Type
$ (
=
) *
$str
+ :
;
: ;
var
ƒƒ 
	viewModel
ƒƒ 
=
ƒƒ 
new
ƒƒ #
ActivityEditViewModel
ƒƒ  5
{
„„ 
Activity
…… 
=
…… 
activityContext
…… *
.
……* +
Activity
……+ 3
,
……3 4

ActivityId
†† 
=
†† 

activityId
†† '
,
††' (
ActivityEditor
‡‡ 
=
‡‡  
activityEditor
‡‡! /
,
‡‡/ 0
WorkflowTypeId
 
=
  
workflowTypeId
! /
,
/ 0
	ReturnUrl
‰‰ 
=
‰‰ 
	returnUrl
‰‰ %
}
 
;
 
return
 
View
 
(
 
$str
 &
,
& '
	viewModel
( 1
)
1 2
;
2 3
}
 	
[
 	
HttpPost
	 
]
 
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
Edit
) -
(
- .#
ActivityEditViewModel
. C
model
D I
)
I J
{
‘‘ 	
if
’’ 
(
’’ 
!
’’ 
await
’’ #
_authorizationService
’’ ,
.
’’, -
AuthorizeAsync
’’- ;
(
’’; <
User
’’< @
,
’’@ A
Permissions
’’B M
.
’’M N
ManageWorkflows
’’N ]
)
’’] ^
)
’’^ _
{
““ 
return
”” 
Forbid
”” 
(
”” 
)
”” 
;
””  
}
•• 
var
—— 
workflowType
—— 
=
—— 
await
—— $
_session
——% -
.
——- .
GetAsync
——. 6
<
——6 7
WorkflowType
——7 C
>
——C D
(
——D E
model
——E J
.
——J K
WorkflowTypeId
——K Y
)
——Y Z
;
——Z [
var
 
activityRecord
 
=
  
workflowType
! -
.
- .

Activities
. 8
.
8 9
Single
9 ?
(
? @
x
@ A
=>
B D
x
E F
.
F G

ActivityId
G Q
==
R T
model
U Z
.
Z [

ActivityId
[ e
)
e f
;
f g
var
™™ 
activityContext
™™ 
=
™™  !
await
™™" '
_workflowManager
™™( 8
.
™™8 91
#CreateActivityExecutionContextAsync
™™9 \
(
™™\ ]
activityRecord
™™] k
,
™™k l
activityRecord
™™m {
.
™™{ |

Properties™™| †
)™™† ‡
;™™‡ 
var
 
activityEditor
 
=
  
await
! &%
_activityDisplayManager
' >
.
> ?
UpdateEditorAsync
? P
(
P Q
activityContext
Q `
.
` a
Activity
a i
,
i j"
_updateModelAccessor
k 
. €
ModelUpdater€ 
, 
isNew “
:“ ”
false• 
) ›
;› 
if
 
(
 
!
 

ModelState
 
.
 
IsValid
 #
)
# $
{
 
activityEditor
 
.
 
Metadata
 '
.
' (
Type
( ,
=
- .
$str
/ >
;
> ?
model
 
.
 
Activity
 
=
  
activityContext
! 0
.
0 1
Activity
1 9
;
9 :
model
   
.
   
ActivityEditor
   $
=
  % &
activityEditor
  ' 5
;
  5 6
return
ΆΆ 
View
ΆΆ 
(
ΆΆ 
$str
ΆΆ *
,
ΆΆ* +
model
ΆΆ, 1
)
ΆΆ1 2
;
ΆΆ2 3
}
££ 
activityRecord
¥¥ 
.
¥¥ 

Properties
¥¥ %
=
¥¥& '
activityContext
¥¥( 7
.
¥¥7 8
Activity
¥¥8 @
.
¥¥@ A

Properties
¥¥A K
;
¥¥K L
_session
§§ 
.
§§ 
Save
§§ 
(
§§ 
workflowType
§§ &
)
§§& '
;
§§' (
	_notifier
¨¨ 
.
¨¨ 
Success
¨¨ 
(
¨¨ 
H
¨¨ 
[
¨¨  
$str
¨¨  @
]
¨¨@ A
)
¨¨A B
;
¨¨B C
return
ªª 
Url
ªª 
.
ªª 

IsLocalUrl
ªª !
(
ªª! "
model
ªª" '
.
ªª' (
	ReturnUrl
ªª( 1
)
ªª1 2
?
«« 
(
«« 
IActionResult
««  
)
««  !
Redirect
««! )
(
««) *
model
««* /
.
««/ 0
	ReturnUrl
««0 9
)
««9 :
:
¬¬ 
RedirectToAction
¬¬ "
(
¬¬" #
$str
¬¬# )
,
¬¬) *
$str
¬¬+ 9
,
¬¬9 :
new
¬¬; >
{
¬¬? @
id
¬¬A C
=
¬¬D E
model
¬¬F K
.
¬¬K L
WorkflowTypeId
¬¬L Z
}
¬¬[ \
)
¬¬\ ]
;
¬¬] ^
}
­­ 	
}
®® 
}―― τώ
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Controllers\WorkflowController.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Controllers  +
{ 
[ 
Admin 

]
 
public 

class 
WorkflowController #
:$ %

Controller& 0
{   
private!! 
readonly!! 
ISiteService!! %
_siteService!!& 2
;!!2 3
private"" 
readonly"" 
ISession"" !
_session""" *
;""* +
private## 
readonly## 
IWorkflowManager## )
_workflowManager##* :
;##: ;
private$$ 
readonly$$ 
IWorkflowTypeStore$$ +
_workflowTypeStore$$, >
;$$> ?
private%% 
readonly%% 
IWorkflowStore%% '
_workflowStore%%( 6
;%%6 7
private&& 
readonly&& !
IAuthorizationService&& .!
_authorizationService&&/ D
;&&D E
private'' 
readonly'' #
IActivityDisplayManager'' 0#
_activityDisplayManager''1 H
;''H I
private(( 
readonly(( 
	INotifier(( "
	_notifier((# ,
;((, -
private)) 
readonly))  
IUpdateModelAccessor)) - 
_updateModelAccessor)). B
;))B C
private** 
readonly** 
IHtmlLocalizer** '
H**( )
;**) *
private++ 
readonly++ 
IStringLocalizer++ )
S++* +
;+++ ,
public-- 
WorkflowController-- !
(--! "
ISiteService.. 
siteService.. $
,..$ %
ISession// 
session// 
,// 
IWorkflowManager00 
workflowManager00 ,
,00, -
IWorkflowTypeStore11 
workflowTypeStore11 0
,110 1
IWorkflowStore22 
workflowStore22 (
,22( )!
IAuthorizationService33 ! 
authorizationService33" 6
,336 7#
IActivityDisplayManager44 #"
activityDisplayManager44$ :
,44: ;
IShapeFactory55 
shapeFactory55 &
,55& '
	INotifier66 
notifier66 
,66 
IHtmlLocalizer77 
<77 
WorkflowController77 -
>77- .
htmlLocalizer77/ <
,77< =
IStringLocalizer88 
<88 
WorkflowController88 /
>88/ 0
stringLocalizer881 @
,88@ A 
IUpdateModelAccessor99  
updateModelAccessor99! 4
)994 5
{:: 	
_siteService;; 
=;; 
siteService;; &
;;;& '
_session<< 
=<< 
session<< 
;<< 
_workflowManager== 
=== 
workflowManager== .
;==. /
_workflowTypeStore>> 
=>>  
workflowTypeStore>>! 2
;>>2 3
_workflowStore?? 
=?? 
workflowStore?? *
;??* +!
_authorizationService@@ !
=@@" # 
authorizationService@@$ 8
;@@8 9#
_activityDisplayManagerAA #
=AA$ %"
activityDisplayManagerAA& <
;AA< =
	_notifierBB 
=BB 
notifierBB  
;BB  ! 
_updateModelAccessorCC  
=CC! "
updateModelAccessorCC# 6
;CC6 7
NewDD 
=DD 
shapeFactoryDD 
;DD 
HEE 
=EE 
htmlLocalizerEE 
;EE 
SFF 
=FF 
stringLocalizerFF 
;FF  
}GG 	
privateII 
dynamicII 
NewII 
{II 
getII !
;II! "
}II# $
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
IndexKK) .
(KK. /
intKK/ 2
workflowTypeIdKK3 A
,KKA B"
WorkflowIndexViewModelKKC Y
modelKKZ _
,KK_ `
PagerParametersKKa p
pagerParameters	KKq €
,
KK€ 
string
KK‚ 
	returnUrl
KK‰ ’
=
KK“ ”
null
KK• ™
)
KK™ 
{LL 	
ifMM 
(MM 
!MM 
awaitMM !
_authorizationServiceMM ,
.MM, -
AuthorizeAsyncMM- ;
(MM; <
UserMM< @
,MM@ A
PermissionsMMB M
.MMM N
ManageWorkflowsMMN ]
)MM] ^
)MM^ _
{NN 
returnOO 
ForbidOO 
(OO 
)OO 
;OO  
}PP 
ifRR 
(RR 
!RR 
UrlRR 
.RR 

IsLocalUrlRR 
(RR  
	returnUrlRR  )
)RR) *
)RR* +
{SS 
	returnUrlTT 
=TT 
UrlTT 
.TT  
ActionTT  &
(TT& '
nameofTT' -
(TT- .
IndexTT. 3
)TT3 4
,TT4 5
$strTT6 D
)TTD E
;TTE F
}UU 
varWW 
workflowTypeWW 
=WW 
awaitWW $
_workflowTypeStoreWW% 7
.WW7 8
GetAsyncWW8 @
(WW@ A
workflowTypeIdWWA O
)WWO P
;WWP Q
varXX 
siteSettingsXX 
=XX 
awaitXX $
_siteServiceXX% 1
.XX1 2 
GetSiteSettingsAsyncXX2 F
(XXF G
)XXG H
;XXH I
varZZ 
queryZZ 
=ZZ 
_sessionZZ  
.ZZ  !
QueryZZ! &
<ZZ& '
WorkflowZZ' /
,ZZ/ 0
WorkflowIndexZZ1 >
>ZZ> ?
(ZZ? @
)ZZ@ A
;ZZA B
query[[ 
=[[ 
query[[ 
.[[ 
Where[[ 
([[  
x[[  !
=>[[" $
x[[% &
.[[& '
WorkflowTypeId[[' 5
==[[6 8
workflowType[[9 E
.[[E F
WorkflowTypeId[[F T
)[[T U
;[[U V
switch]] 
(]] 
model]] 
.]] 
Options]] !
.]]! "
Filter]]" (
)]]( )
{^^ 
case__ 
WorkflowFilter__ #
.__# $
Finished__$ ,
:__, -
query`` 
=`` 
query`` !
.``! "
Where``" '
(``' (
x``( )
=>``* ,
x``- .
.``. /
WorkflowStatus``/ =
==``> @
(``A B
int``B E
)``E F
WorkflowStatus``F T
.``T U
Finished``U ]
)``] ^
;``^ _
breakaa 
;aa 
casebb 
WorkflowFilterbb #
.bb# $
Faultedbb$ +
:bb+ ,
querycc 
=cc 
querycc !
.cc! "
Wherecc" '
(cc' (
xcc( )
=>cc* ,
xcc- .
.cc. /
WorkflowStatuscc/ =
==cc> @
(ccA B
intccB E
)ccE F
WorkflowStatusccF T
.ccT U
FaultedccU \
)cc\ ]
;cc] ^
breakdd 
;dd 
caseee 
WorkflowFilteree #
.ee# $
Allee$ '
:ee' (
defaultff 
:ff 
breakgg 
;gg 
}hh 
switchjj 
(jj 
modeljj 
.jj 
Optionsjj !
.jj! "
OrderByjj" )
)jj) *
{kk 
casell 
WorkflowOrderll "
.ll" #
CreatedDescll# .
:ll. /
querymm 
=mm 
querymm !
.mm! "
OrderByDescendingmm" 3
(mm3 4
xmm4 5
=>mm6 8
xmm9 :
.mm: ;

CreatedUtcmm; E
)mmE F
;mmF G
breaknn 
;nn 
caseoo 
WorkflowOrderoo "
.oo" #
Createdoo# *
:oo* +
querypp 
=pp 
querypp !
.pp! "
OrderBypp" )
(pp) *
xpp* +
=>pp, .
xpp/ 0
.pp0 1

CreatedUtcpp1 ;
)pp; <
;pp< =
breakqq 
;qq 
defaultrr 
:rr 
queryss 
=ss 
queryss !
.ss! "
OrderByDescendingss" 3
(ss3 4
xss4 5
=>ss6 8
xss9 :
.ss: ;

CreatedUtcss; E
)ssE F
;ssF G
breaktt 
;tt 
}uu 
varww 
pagerww 
=ww 
newww 
Pagerww !
(ww! "
pagerParametersww" 1
,ww1 2
siteSettingsww3 ?
.ww? @
PageSizeww@ H
)wwH I
;wwI J
varyy 
	routeDatayy 
=yy 
newyy 
	RouteDatayy  )
(yy) *
)yy* +
;yy+ ,
	routeDatazz 
.zz 
Valueszz 
.zz 
Addzz  
(zz  !
$strzz! )
,zz) *
modelzz+ 0
.zz0 1
Optionszz1 8
.zz8 9
Filterzz9 ?
)zz? @
;zz@ A
var|| 

pagerShape|| 
=|| 
(|| 
await|| #
New||$ '
.||' (
Pager||( -
(||- .
pager||. 3
)||3 4
)||4 5
.||5 6
TotalItemCount||6 D
(||D E
await||E J
query||K P
.||P Q

CountAsync||Q [
(||[ \
)||\ ]
)||] ^
.||^ _
	RouteData||_ h
(||h i
	routeData||i r
)||r s
;||s t
var}} 
pageOfItems}} 
=}} 
await}} #
query}}$ )
.}}) *
Skip}}* .
(}}. /
pager}}/ 4
.}}4 5
GetStartIndex}}5 B
(}}B C
)}}C D
)}}D E
.}}E F
Take}}F J
(}}J K
pager}}K P
.}}P Q
PageSize}}Q Y
)}}Y Z
.}}Z [
	ListAsync}}[ d
(}}d e
)}}e f
;}}f g
var 
	viewModel 
= 
new "
WorkflowIndexViewModel  6
{
€€ 
WorkflowType
 
=
 
workflowType
 +
,
+ ,
	Workflows
‚‚ 
=
‚‚ 
pageOfItems
‚‚ '
.
‚‚' (
Select
‚‚( .
(
‚‚. /
x
‚‚/ 0
=>
‚‚1 3
new
‚‚4 7
WorkflowEntry
‚‚8 E
{
ƒƒ 
Workflow
„„ 
=
„„ 
x
„„  
,
„„  !
Id
…… 
=
…… 
x
…… 
.
…… 
Id
…… 
}
†† 
)
†† 
.
†† 
ToList
†† 
(
†† 
)
†† 
,
†† 
Options
‡‡ 
=
‡‡ 
model
‡‡ 
.
‡‡  
Options
‡‡  '
,
‡‡' (
Pager
 
=
 

pagerShape
 "
,
" #
	ReturnUrl
‰‰ 
=
‰‰ 
	returnUrl
‰‰ %
}
 
;
 
model
 
.
 
Options
 
.
 
WorkflowsSorts
 (
=
) *
new
+ .
List
/ 3
<
3 4
SelectListItem
4 B
>
B C
(
C D
)
D E
{
F G
new
 
SelectListItem
 "
(
" #
)
# $
{
% &
Text
' +
=
, -
S
. /
[
/ 0
$str
0 B
]
B C
,
C D
Value
E J
=
K L
nameof
M S
(
S T
WorkflowOrder
T a
.
a b
CreatedDesc
b m
)
m n
}
o p
,
p q
new
 
SelectListItem
 "
(
" #
)
# $
{
% &
Text
' +
=
, -
S
. /
[
/ 0
$str
0 H
]
H I
,
I J
Value
K P
=
Q R
nameof
S Y
(
Y Z
WorkflowOrder
Z g
.
g h
Created
h o
)
o p
}
q r
}
 
;
 
model
‘‘ 
.
‘‘ 
Options
‘‘ 
.
‘‘ 
WorkflowsStatuses
‘‘ +
=
‘‘, -
new
‘‘. 1
List
‘‘2 6
<
‘‘6 7
SelectListItem
‘‘7 E
>
‘‘E F
(
‘‘F G
)
‘‘G H
{
‘‘I J
new
’’ 
SelectListItem
’’ "
(
’’" #
)
’’# $
{
’’% &
Text
’’' +
=
’’, -
S
’’. /
[
’’/ 0
$str
’’0 5
]
’’5 6
,
’’6 7
Value
’’8 =
=
’’> ?
nameof
’’@ F
(
’’F G
WorkflowFilter
’’G U
.
’’U V
All
’’V Y
)
’’Y Z
}
’’[ \
,
’’\ ]
new
““ 
SelectListItem
““ "
(
““" #
)
““# $
{
““% &
Text
““' +
=
““, -
S
““. /
[
““/ 0
$str
““0 9
]
““9 :
,
““: ;
Value
““< A
=
““B C
nameof
““D J
(
““J K
WorkflowFilter
““K Y
.
““Y Z
Faulted
““Z a
)
““a b
}
““c d
,
““d e
new
”” 
SelectListItem
”” "
(
””" #
)
””# $
{
””% &
Text
””' +
=
””, -
S
””. /
[
””/ 0
$str
””0 :
]
””: ;
,
””; <
Value
””= B
=
””C D
nameof
””E K
(
””K L
WorkflowFilter
””L Z
.
””Z [
Finished
””[ c
)
””c d
}
””e f
}
•• 
;
•• 
	viewModel
—— 
.
—— 
Options
—— 
.
—— !
WorkflowsBulkAction
—— 1
=
——2 3
new
——4 7
List
——8 <
<
——< =
SelectListItem
——= K
>
——K L
(
——L M
)
——M N
{
——O P
new
 
SelectListItem
 "
(
" #
)
# $
{
% &
Text
' +
=
, -
S
. /
[
/ 0
$str
0 8
]
8 9
,
9 :
Value
; @
=
A B
nameof
C I
(
I J 
WorkflowBulkAction
J \
.
\ ]
Delete
] c
)
c d
}
e f
}
™™ 
;
™™ 
return
›› 
View
›› 
(
›› 
	viewModel
›› !
)
››! "
;
››" #
}
 	
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 %
)
% &
]
& '
[
 	
FormValueRequired
	 
(
 
$str
 *
)
* +
]
+ ,
public
   
ActionResult
   
IndexFilterPOST
   +
(
  + ,$
WorkflowIndexViewModel
  , B
model
  C H
)
  H I
{
΅΅ 	
return
ΆΆ 
RedirectToAction
ΆΆ #
(
ΆΆ# $
$str
ΆΆ$ +
,
ΆΆ+ ,
new
ΆΆ- 0"
RouteValueDictionary
ΆΆ1 E
{
ΆΆF G
{
££ 
$str
££ "
,
££" #
model
££$ )
.
££) *
Options
££* 1
.
££1 2
Filter
££2 8
}
££9 :
,
££: ;
{
¤¤ 
$str
¤¤ #
,
¤¤# $
model
¤¤% *
.
¤¤* +
Options
¤¤+ 2
.
¤¤2 3
OrderBy
¤¤3 :
}
¤¤; <
}
¥¥ 
)
¥¥ 
;
¥¥ 
}
¦¦ 	
public
¨¨ 
async
¨¨ 
Task
¨¨ 
<
¨¨ 
IActionResult
¨¨ '
>
¨¨' (
Details
¨¨) 0
(
¨¨0 1
int
¨¨1 4
id
¨¨5 7
)
¨¨7 8
{
©© 	
if
ªª 
(
ªª 
!
ªª 
await
ªª #
_authorizationService
ªª ,
.
ªª, -
AuthorizeAsync
ªª- ;
(
ªª; <
User
ªª< @
,
ªª@ A
Permissions
ªªB M
.
ªªM N
ManageWorkflows
ªªN ]
)
ªª] ^
)
ªª^ _
{
«« 
return
¬¬ 
Forbid
¬¬ 
(
¬¬ 
)
¬¬ 
;
¬¬  
}
­­ 
var
―― 
workflow
―― 
=
―― 
await
――  
_workflowStore
――! /
.
――/ 0
GetAsync
――0 8
(
――8 9
id
――9 ;
)
――; <
;
――< =
if
±± 
(
±± 
workflow
±± 
==
±± 
null
±±  
)
±±  !
{
²² 
return
³³ 
NotFound
³³ 
(
³³  
)
³³  !
;
³³! "
}
΄΄ 
var
¶¶ 
workflowType
¶¶ 
=
¶¶ 
await
¶¶ $ 
_workflowTypeStore
¶¶% 7
.
¶¶7 8
GetAsync
¶¶8 @
(
¶¶@ A
workflow
¶¶A I
.
¶¶I J
WorkflowTypeId
¶¶J X
)
¶¶X Y
;
¶¶Y Z
var
··  
blockingActivities
·· "
=
··# $
workflow
··% -
.
··- . 
BlockingActivities
··. @
.
··@ A
ToDictionary
··A M
(
··M N
x
··N O
=>
··P R
x
··S T
.
··T U

ActivityId
··U _
)
··_ `
;
··` a
var
ΈΈ 
workflowContext
ΈΈ 
=
ΈΈ  !
await
ΈΈ" '
_workflowManager
ΈΈ( 8
.
ΈΈ8 91
#CreateWorkflowExecutionContextAsync
ΈΈ9 \
(
ΈΈ\ ]
workflowType
ΈΈ] i
,
ΈΈi j
workflow
ΈΈk s
)
ΈΈs t
;
ΈΈt u
var
ΉΉ 
activityContexts
ΉΉ  
=
ΉΉ! "
await
ΉΉ# (
Task
ΉΉ) -
.
ΉΉ- .
WhenAll
ΉΉ. 5
(
ΉΉ5 6
workflowType
ΉΉ6 B
.
ΉΉB C

Activities
ΉΉC M
.
ΉΉM N
Select
ΉΉN T
(
ΉΉT U
x
ΉΉU V
=>
ΉΉW Y
_workflowManager
ΉΉZ j
.
ΉΉj k2
#CreateActivityExecutionContextAsyncΉΉk 
(ΉΉ 
xΉΉ 
,ΉΉ ‘
xΉΉ’ “
.ΉΉ“ ”

PropertiesΉΉ” 
)ΉΉ 
)ΉΉ  
)ΉΉ  ΅
;ΉΉ΅ Ά
var
»» "
activityDesignShapes
»» $
=
»»% &
new
»»' *
List
»»+ /
<
»»/ 0
dynamic
»»0 7
>
»»7 8
(
»»8 9
)
»»9 :
;
»»: ;
foreach
½½ 
(
½½ 
var
½½ 
activityContext
½½ (
in
½½) +
activityContexts
½½, <
)
½½< =
{
ΎΎ "
activityDesignShapes
ΏΏ $
.
ΏΏ$ %
Add
ΏΏ% (
(
ΏΏ( )
await
ΏΏ) .'
BuildActivityDisplayAsync
ΏΏ/ H
(
ΏΏH I
activityContext
ΏΏI X
,
ΏΏX Y
workflowType
ΏΏZ f
.
ΏΏf g
Id
ΏΏg i
,
ΏΏi j 
blockingActivities
ΏΏk }
.
ΏΏ} ~
ContainsKeyΏΏ~ ‰
(ΏΏ‰ 
activityContextΏΏ ™
.ΏΏ™ 
ActivityRecordΏΏ ¨
.ΏΏ¨ ©

ActivityIdΏΏ© ³
)ΏΏ³ ΄
,ΏΏ΄ µ
$strΏΏ¶ Ύ
)ΏΏΎ Ώ
)ΏΏΏ ΐ
;ΏΏΐ Α
}
ΐΐ 
var
ΒΒ !
activitiesDataQuery
ΒΒ #
=
ΒΒ$ %
activityContexts
ΒΒ& 6
.
ΒΒ6 7
Select
ΒΒ7 =
(
ΒΒ= >
x
ΒΒ> ?
=>
ΒΒ@ B
new
ΒΒC F
{
ΓΓ 
Id
ΔΔ 
=
ΔΔ 
x
ΔΔ 
.
ΔΔ 
ActivityRecord
ΔΔ %
.
ΔΔ% &

ActivityId
ΔΔ& 0
,
ΔΔ0 1
X
ΕΕ 
=
ΕΕ 
x
ΕΕ 
.
ΕΕ 
ActivityRecord
ΕΕ $
.
ΕΕ$ %
X
ΕΕ% &
,
ΕΕ& '
Y
ΖΖ 
=
ΖΖ 
x
ΖΖ 
.
ΖΖ 
ActivityRecord
ΖΖ $
.
ΖΖ$ %
Y
ΖΖ% &
,
ΖΖ& '
Name
ΗΗ 
=
ΗΗ 
x
ΗΗ 
.
ΗΗ 
ActivityRecord
ΗΗ '
.
ΗΗ' (
Name
ΗΗ( ,
,
ΗΗ, -
IsStart
ΘΘ 
=
ΘΘ 
x
ΘΘ 
.
ΘΘ 
ActivityRecord
ΘΘ *
.
ΘΘ* +
IsStart
ΘΘ+ 2
,
ΘΘ2 3
IsEvent
ΙΙ 
=
ΙΙ 
x
ΙΙ 
.
ΙΙ 
Activity
ΙΙ $
.
ΙΙ$ %
IsEvent
ΙΙ% ,
(
ΙΙ, -
)
ΙΙ- .
,
ΙΙ. /

IsBlocking
ΚΚ 
=
ΚΚ 
workflow
ΚΚ %
.
ΚΚ% & 
BlockingActivities
ΚΚ& 8
.
ΚΚ8 9
Any
ΚΚ9 <
(
ΚΚ< =
a
ΚΚ= >
=>
ΚΚ? A
a
ΚΚB C
.
ΚΚC D

ActivityId
ΚΚD N
==
ΚΚO Q
x
ΚΚR S
.
ΚΚS T
ActivityRecord
ΚΚT b
.
ΚΚb c

ActivityId
ΚΚc m
)
ΚΚm n
,
ΚΚn o
Outcomes
ΛΛ 
=
ΛΛ 
x
ΛΛ 
.
ΛΛ 
Activity
ΛΛ %
.
ΛΛ% &!
GetPossibleOutcomes
ΛΛ& 9
(
ΛΛ9 :
workflowContext
ΛΛ: I
,
ΛΛI J
x
ΛΛK L
)
ΛΛL M
.
ΛΛM N
ToArray
ΛΛN U
(
ΛΛU V
)
ΛΛV W
}
ΜΜ 
)
ΜΜ 
;
ΜΜ 
var
ΝΝ 
workflowTypeData
ΝΝ  
=
ΝΝ! "
new
ΝΝ# &
{
ΞΞ 
Id
ΟΟ 
=
ΟΟ 
workflowType
ΟΟ !
.
ΟΟ! "
Id
ΟΟ" $
,
ΟΟ$ %
Name
ΠΠ 
=
ΠΠ 
workflowType
ΠΠ #
.
ΠΠ# $
Name
ΠΠ$ (
,
ΠΠ( )
	IsEnabled
ΡΡ 
=
ΡΡ 
workflowType
ΡΡ (
.
ΡΡ( )
	IsEnabled
ΡΡ) 2
,
ΡΡ2 3

Activities
ÒÒ 
=
ÒÒ !
activitiesDataQuery
ÒÒ 0
.
ÒÒ0 1
ToArray
ÒÒ1 8
(
ÒÒ8 9
)
ÒÒ9 :
,
ÒÒ: ;
Transitions
ΣΣ 
=
ΣΣ 
workflowType
ΣΣ *
.
ΣΣ* +
Transitions
ΣΣ+ 6
}
ΤΤ 
;
ΤΤ 
var
ΦΦ $
jsonSerializerSettings
ΦΦ &
=
ΦΦ' (
new
ΦΦ) ,$
JsonSerializerSettings
ΦΦ- C
{
ΦΦD E
ContractResolver
ΦΦF V
=
ΦΦW X
new
ΦΦY \5
&CamelCasePropertyNamesContractResolverΦΦ] ƒ
(ΦΦƒ „
)ΦΦ„ …
}ΦΦ† ‡
;ΦΦ‡ 
var
ΧΧ 
	viewModel
ΧΧ 
=
ΧΧ 
new
ΧΧ 
WorkflowViewModel
ΧΧ  1
{
ΨΨ 
Workflow
ΩΩ 
=
ΩΩ 
workflow
ΩΩ #
,
ΩΩ# $
WorkflowType
ΪΪ 
=
ΪΪ 
workflowType
ΪΪ +
,
ΪΪ+ ,
WorkflowTypeJson
ΫΫ  
=
ΫΫ! "
JsonConvert
ΫΫ# .
.
ΫΫ. /
SerializeObject
ΫΫ/ >
(
ΫΫ> ?
workflowTypeData
ΫΫ? O
,
ΫΫO P

Formatting
ΫΫQ [
.
ΫΫ[ \
None
ΫΫ\ `
,
ΫΫ` a$
jsonSerializerSettings
ΫΫb x
)
ΫΫx y
,
ΫΫy z
WorkflowJson
άά 
=
άά 
JsonConvert
άά *
.
άά* +
SerializeObject
άά+ :
(
άά: ;
workflow
άά; C
,
άάC D

Formatting
άάE O
.
άάO P
Indented
άάP X
,
άάX Y$
jsonSerializerSettings
άάZ p
)
άάp q
,
άάq r"
ActivityDesignShapes
έέ $
=
έέ% &"
activityDesignShapes
έέ' ;
}
ήή 
;
ήή 
return
ίί 
View
ίί 
(
ίί 
	viewModel
ίί !
)
ίί! "
;
ίί" #
}
ΰΰ 	
[
ββ 	
HttpPost
ββ	 
]
ββ 
public
γγ 
async
γγ 
Task
γγ 
<
γγ 
IActionResult
γγ '
>
γγ' (
Delete
γγ) /
(
γγ/ 0
int
γγ0 3
id
γγ4 6
)
γγ6 7
{
δδ 	
if
εε 
(
εε 
!
εε 
await
εε #
_authorizationService
εε ,
.
εε, -
AuthorizeAsync
εε- ;
(
εε; <
User
εε< @
,
εε@ A
Permissions
εεB M
.
εεM N
ManageWorkflows
εεN ]
)
εε] ^
)
εε^ _
{
ζζ 
return
ηη 
Forbid
ηη 
(
ηη 
)
ηη 
;
ηη  
}
θθ 
var
κκ 
workflow
κκ 
=
κκ 
await
κκ  
_workflowStore
κκ! /
.
κκ/ 0
GetAsync
κκ0 8
(
κκ8 9
id
κκ9 ;
)
κκ; <
;
κκ< =
if
μμ 
(
μμ 
workflow
μμ 
==
μμ 
null
μμ  
)
μμ  !
{
νν 
return
ξξ 
NotFound
ξξ 
(
ξξ  
)
ξξ  !
;
ξξ! "
}
οο 
var
ρρ 
workflowType
ρρ 
=
ρρ 
await
ρρ $ 
_workflowTypeStore
ρρ% 7
.
ρρ7 8
GetAsync
ρρ8 @
(
ρρ@ A
workflow
ρρA I
.
ρρI J
WorkflowTypeId
ρρJ X
)
ρρX Y
;
ρρY Z
await
ςς 
_workflowStore
ςς  
.
ςς  !
DeleteAsync
ςς! ,
(
ςς, -
workflow
ςς- 5
)
ςς5 6
;
ςς6 7
	_notifier
σσ 
.
σσ 
Success
σσ 
(
σσ 
H
σσ 
[
σσ  
$str
σσ  @
,
σσ@ A
id
σσB D
]
σσD E
)
σσE F
;
σσF G
return
ττ 
RedirectToAction
ττ #
(
ττ# $
$str
ττ$ +
,
ττ+ ,
new
ττ- 0
{
ττ1 2
workflowTypeId
ττ3 A
=
ττB C
workflowType
ττD P
.
ττP Q
Id
ττQ S
}
ττT U
)
ττU V
;
ττV W
}
υυ 	
[
χχ 	
HttpPost
χχ	 
]
χχ 
[
ψψ 	

ActionName
ψψ	 
(
ψψ 
nameof
ψψ 
(
ψψ 
Index
ψψ  
)
ψψ  !
)
ψψ! "
]
ψψ" #
[
ωω 	
FormValueRequired
ωω	 
(
ωω 
$str
ωω .
)
ωω. /
]
ωω/ 0
public
ϊϊ 
async
ϊϊ 
Task
ϊϊ 
<
ϊϊ 
IActionResult
ϊϊ '
>
ϊϊ' (
BulkEdit
ϊϊ) 1
(
ϊϊ1 2
int
ϊϊ2 5
workflowTypeId
ϊϊ6 D
,
ϊϊD E"
WorkflowIndexOptions
ϊϊF Z
options
ϊϊ[ b
,
ϊϊb c
PagerParameters
ϊϊd s
pagerParametersϊϊt ƒ
,ϊϊƒ „
IEnumerableϊϊ… 
<ϊϊ ‘
intϊϊ‘ ”
>ϊϊ” •
itemIdsϊϊ– 
)ϊϊ 
{
ϋϋ 	
if
όό 
(
όό 
!
όό 
await
όό #
_authorizationService
όό ,
.
όό, -
AuthorizeAsync
όό- ;
(
όό; <
User
όό< @
,
όό@ A
Permissions
όόB M
.
όόM N
ManageWorkflows
όόN ]
)
όό] ^
)
όό^ _
{
ύύ 
return
ώώ 
Forbid
ώώ 
(
ώώ 
)
ώώ 
;
ώώ  
}
ÿÿ 
if
 
(
 
itemIds
 
?
 
.
 
Count
 
(
 
)
  
>
! "
$num
# $
)
$ %
{
‚‚ 
var
ƒƒ 
checkedEntries
ƒƒ "
=
ƒƒ# $
await
ƒƒ% *
_session
ƒƒ+ 3
.
ƒƒ3 4
Query
ƒƒ4 9
<
ƒƒ9 :
Workflow
ƒƒ: B
,
ƒƒB C
WorkflowIndex
ƒƒD Q
>
ƒƒQ R
(
ƒƒR S
)
ƒƒS T
.
ƒƒT U
Where
ƒƒU Z
(
ƒƒZ [
x
ƒƒ[ \
=>
ƒƒ] _
x
ƒƒ` a
.
ƒƒa b

DocumentId
ƒƒb l
.
ƒƒl m
IsIn
ƒƒm q
(
ƒƒq r
itemIds
ƒƒr y
)
ƒƒy z
)
ƒƒz {
.
ƒƒ{ |
	ListAsyncƒƒ| …
(ƒƒ… †
)ƒƒ† ‡
;ƒƒ‡ 
switch
„„ 
(
„„ 
options
„„ 
.
„„  

BulkAction
„„  *
)
„„* +
{
…… 
case
††  
WorkflowBulkAction
†† +
.
††+ ,
None
††, 0
:
††0 1
break
‡‡ 
;
‡‡ 
case
  
WorkflowBulkAction
 +
.
+ ,
Delete
, 2
:
2 3
foreach
‰‰ 
(
‰‰  !
var
‰‰! $
entry
‰‰% *
in
‰‰+ -
checkedEntries
‰‰. <
)
‰‰< =
{
 
var
‹‹ 
workflow
‹‹  (
=
‹‹) *
await
‹‹+ 0
_workflowStore
‹‹1 ?
.
‹‹? @
GetAsync
‹‹@ H
(
‹‹H I
entry
‹‹I N
.
‹‹N O
Id
‹‹O Q
)
‹‹Q R
;
‹‹R S
if
 
(
  
workflow
  (
!=
) +
null
, 0
)
0 1
{
 
await
  %
_workflowStore
& 4
.
4 5
DeleteAsync
5 @
(
@ A
workflow
A I
)
I J
;
J K
	_notifier
  )
.
) *
Success
* 1
(
1 2
H
2 3
[
3 4
$str
4 T
,
T U
workflow
V ^
.
^ _
Id
_ a
]
a b
)
b c
;
c d
}
‘‘ 
}
’’ 
break
““ 
;
““ 
default
•• 
:
•• 
throw
–– 
new
–– !)
ArgumentOutOfRangeException
––" =
(
––= >
)
––> ?
;
––? @
}
—— 
}
 
return
™™ 
RedirectToAction
™™ #
(
™™# $
$str
™™$ +
,
™™+ ,
new
™™- 0
{
™™1 2
workflowTypeId
™™3 A
,
™™A B
page
™™C G
=
™™H I
pagerParameters
™™J Y
.
™™Y Z
Page
™™Z ^
,
™™^ _
pageSize
™™` h
=
™™i j
pagerParameters
™™k z
.
™™z {
PageSize™™{ ƒ
}™™„ …
)™™… †
;™™† ‡
}
 	
private
 
async
 
Task
 
<
 
dynamic
 "
>
" #'
BuildActivityDisplayAsync
$ =
(
= >
ActivityContext
> M
activityContext
N ]
,
] ^
int
_ b
workflowTypeId
c q
,
q r
bool
s w

isBlockingx ‚
,‚ ƒ
string„ 
displayType‹ –
)– —
{
 	
dynamic
 
activityShape
 !
=
" #
await
$ )%
_activityDisplayManager
* A
.
A B
BuildDisplayAsync
B S
(
S T
activityContext
T c
.
c d
Activity
d l
,
l m#
_updateModelAccessorn ‚
.‚ ƒ
ModelUpdaterƒ 
, 
displayType‘ 
) 
; 
activityShape
 
.
 
Metadata
 "
.
" #
Type
# '
=
( )
$"
* ,
	Activity_
, 5
{
5 6
displayType
6 A
}
A B
ReadOnly
B J
"
J K
;
K L
activityShape
   
.
   
Activity
   "
=
  # $
activityContext
  % 4
.
  4 5
Activity
  5 =
;
  = >
activityShape
΅΅ 
.
΅΅ 
ActivityRecord
΅΅ (
=
΅΅) *
activityContext
΅΅+ :
.
΅΅: ;
ActivityRecord
΅΅; I
;
΅΅I J
activityShape
ΆΆ 
.
ΆΆ 
WorkflowTypeId
ΆΆ (
=
ΆΆ) *
workflowTypeId
ΆΆ+ 9
;
ΆΆ9 :
activityShape
££ 
.
££ 

IsBlocking
££ $
=
££% &

isBlocking
££' 1
;
££1 2
return
¤¤ 
activityShape
¤¤  
;
¤¤  !
}
¥¥ 	
}
¦¦ 
}§§ °
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Controllers\WorkflowTypeController.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Controllers  +
{ 
[   
Admin   

]  
 
public!! 

class!! "
WorkflowTypeController!! '
:!!( )

Controller!!* 4
{"" 
private## 
readonly## 
ISiteService## %
_siteService##& 2
;##2 3
private$$ 
readonly$$ 
ISession$$ !
_session$$" *
;$$* +
private%% 
readonly%% 
IActivityLibrary%% )
_activityLibrary%%* :
;%%: ;
private&& 
readonly&& 
IWorkflowManager&& )
_workflowManager&&* :
;&&: ;
private'' 
readonly'' 
IWorkflowTypeStore'' +
_workflowTypeStore'', >
;''> ?
private(( 
readonly(( $
IWorkflowTypeIdGenerator(( 1$
_workflowTypeIdGenerator((2 J
;((J K
private)) 
readonly)) !
IAuthorizationService)) .!
_authorizationService))/ D
;))D E
private** 
readonly** #
IActivityDisplayManager** 0#
_activityDisplayManager**1 H
;**H I
private++ 
readonly++ 
	INotifier++ "
	_notifier++# ,
;++, -
private,, 
readonly,, !
ISecurityTokenService,, .!
_securityTokenService,,/ D
;,,D E
private-- 
readonly--  
IUpdateModelAccessor-- - 
_updateModelAccessor--. B
;--B C
private// 
readonly// 
dynamic//  
New//! $
;//$ %
private00 
readonly00 
IStringLocalizer00 )
S00* +
;00+ ,
private11 
readonly11 
IHtmlLocalizer11 '
H11( )
;11) *
public33 "
WorkflowTypeController33 %
(44 	
ISiteService55 
siteService55 $
,55$ %
ISession66 
session66 
,66 
IActivityLibrary77 
activityLibrary77 ,
,77, -
IWorkflowManager88 
workflowManager88 ,
,88, -
IWorkflowTypeStore99 
workflowTypeStore99 0
,990 1$
IWorkflowTypeIdGenerator:: $#
workflowTypeIdGenerator::% <
,::< =!
IAuthorizationService;; ! 
authorizationService;;" 6
,;;6 7#
IActivityDisplayManager<< #"
activityDisplayManager<<$ :
,<<: ;
IShapeFactory== 
shapeFactory== &
,==& '
	INotifier>> 
notifier>> 
,>> !
ISecurityTokenService?? ! 
securityTokenService??" 6
,??6 7
IStringLocalizer@@ 
<@@ "
WorkflowTypeController@@ 3
>@@3 4
s@@5 6
,@@6 7
IHtmlLocalizerAA 
<AA "
WorkflowTypeControllerAA 1
>AA1 2
hAA3 4
,AA4 5 
IUpdateModelAccessorBB  
updateModelAccessorBB! 4
)BB4 5
{CC 	
_siteServiceDD 
=DD 
siteServiceDD &
;DD& '
_sessionEE 
=EE 
sessionEE 
;EE 
_activityLibraryFF 
=FF 
activityLibraryFF .
;FF. /
_workflowManagerGG 
=GG 
workflowManagerGG .
;GG. /
_workflowTypeStoreHH 
=HH  
workflowTypeStoreHH! 2
;HH2 3$
_workflowTypeIdGeneratorII $
=II% &#
workflowTypeIdGeneratorII' >
;II> ?!
_authorizationServiceJJ !
=JJ" # 
authorizationServiceJJ$ 8
;JJ8 9#
_activityDisplayManagerKK #
=KK$ %"
activityDisplayManagerKK& <
;KK< =
	_notifierLL 
=LL 
notifierLL  
;LL  !!
_securityTokenServiceMM !
=MM" # 
securityTokenServiceMM$ 8
;MM8 9 
_updateModelAccessorNN  
=NN! "
updateModelAccessorNN# 6
;NN6 7
NewPP 
=PP 
shapeFactoryPP 
;PP 
SQQ 
=QQ 
sQQ 
;QQ 
HRR 
=RR 
hRR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (
IndexUU) .
(UU. /$
WorkflowTypeIndexOptionsUU/ G
optionsUUH O
,UUO P
PagerParametersUUQ `
pagerParametersUUa p
)UUp q
{VV 	
ifWW 
(WW 
!WW 
awaitWW !
_authorizationServiceWW ,
.WW, -
AuthorizeAsyncWW- ;
(WW; <
UserWW< @
,WW@ A
PermissionsWWB M
.WWM N
ManageWorkflowsWWN ]
)WW] ^
)WW^ _
{XX 
returnYY 
ForbidYY 
(YY 
)YY 
;YY  
}ZZ 
var\\ 
siteSettings\\ 
=\\ 
await\\ $
_siteService\\% 1
.\\1 2 
GetSiteSettingsAsync\\2 F
(\\F G
)\\G H
;\\H I
var]] 
pager]] 
=]] 
new]] 
Pager]] !
(]]! "
pagerParameters]]" 1
,]]1 2
siteSettings]]3 ?
.]]? @
PageSize]]@ H
)]]H I
;]]I J
if__ 
(__ 
options__ 
==__ 
null__ 
)__  
{`` 
optionsaa 
=aa 
newaa $
WorkflowTypeIndexOptionsaa 6
(aa6 7
)aa7 8
;aa8 9
}bb 
vardd 
querydd 
=dd 
_sessiondd  
.dd  !
Querydd! &
<dd& '
WorkflowTypedd' 3
,dd3 4
WorkflowTypeIndexdd5 F
>ddF G
(ddG H
)ddH I
;ddI J
switchff 
(ff 
optionsff 
.ff 
Filterff "
)ff" #
{gg 
casehh 
WorkflowTypeFilterhh '
.hh' (
Allhh( +
:hh+ ,
defaultii 
:ii 
breakjj 
;jj 
}kk 
ifmm 
(mm 
!mm 
stringmm 
.mm 
IsNullOrWhiteSpacemm *
(mm* +
optionsmm+ 2
.mm2 3
Searchmm3 9
)mm9 :
)mm: ;
{nn 
queryoo 
=oo 
queryoo 
.oo 
Whereoo #
(oo# $
xoo$ %
=>oo& (
xoo) *
.oo* +
Nameoo+ /
.oo/ 0
Containsoo0 8
(oo8 9
optionsoo9 @
.oo@ A
SearchooA G
)ooG H
)ooH I
;ooI J
}pp 
switchrr 
(rr 
optionsrr 
.rr 
Orderrr !
)rr! "
{ss 
casett 
WorkflowTypeOrdertt &
.tt& '
Namett' +
:tt+ ,
queryuu 
=uu 
queryuu !
.uu! "
OrderByuu" )
(uu) *
uuu* +
=>uu, .
uuu/ 0
.uu0 1
Nameuu1 5
)uu5 6
;uu6 7
breakvv 
;vv 
}ww 
varyy 
countyy 
=yy 
awaityy 
queryyy #
.yy# $

CountAsyncyy$ .
(yy. /
)yy/ 0
;yy0 1
var{{ 
workflowTypes{{ 
={{ 
await{{  %
query{{& +
.|| 
Skip|| 
(|| 
pager|| 
.|| 
GetStartIndex|| )
(||) *
)||* +
)||+ ,
.}} 
Take}} 
(}} 
pager}} 
.}} 
PageSize}} $
)}}$ %
.~~ 
	ListAsync~~ 
(~~ 
)~~ 
;~~ 
var
€€ 
workflowTypeIds
€€ 
=
€€  !
workflowTypes
€€" /
.
€€/ 0
Select
€€0 6
(
€€6 7
x
€€7 8
=>
€€9 ;
x
€€< =
.
€€= >
WorkflowTypeId
€€> L
)
€€L M
.
€€M N
ToList
€€N T
(
€€T U
)
€€U V
;
€€V W
var
 
workflowGroups
 
=
  
(
! "
await
" '
_session
( 0
.
0 1

QueryIndex
1 ;
<
; <
WorkflowIndex
< I
>
I J
(
J K
x
K L
=>
M O
x
P Q
.
Q R
WorkflowTypeId
R `
.
` a
IsIn
a e
(
e f
workflowTypeIds
f u
)
u v
)
v w
.
‚‚ 
	ListAsync
‚‚ 
(
‚‚ 
)
‚‚ 
)
‚‚ 
.
ƒƒ 
GroupBy
ƒƒ 
(
ƒƒ 
x
ƒƒ 
=>
ƒƒ 
x
ƒƒ 
.
ƒƒ  
WorkflowTypeId
ƒƒ  .
)
ƒƒ. /
.
„„ 
ToDictionary
„„ 
(
„„ 
x
„„ 
=>
„„  "
x
„„# $
.
„„$ %
Key
„„% (
)
„„( )
;
„„) *
var
‡‡ 
	routeData
‡‡ 
=
‡‡ 
new
‡‡ 
	RouteData
‡‡  )
(
‡‡) *
)
‡‡* +
;
‡‡+ ,
	routeData
 
.
 
Values
 
.
 
Add
  
(
  !
$str
! 1
,
1 2
options
3 :
.
: ;
Filter
; A
)
A B
;
B C
	routeData
‰‰ 
.
‰‰ 
Values
‰‰ 
.
‰‰ 
Add
‰‰  
(
‰‰  !
$str
‰‰! 1
,
‰‰1 2
options
‰‰3 :
.
‰‰: ;
Search
‰‰; A
)
‰‰A B
;
‰‰B C
	routeData
 
.
 
Values
 
.
 
Add
  
(
  !
$str
! 0
,
0 1
options
2 9
.
9 :
Order
: ?
)
? @
;
@ A
var
 

pagerShape
 
=
 
(
 
await
 #
New
$ '
.
' (
Pager
( -
(
- .
pager
. 3
)
3 4
)
4 5
.
5 6
TotalItemCount
6 D
(
D E
count
E J
)
J K
.
K L
	RouteData
L U
(
U V
	routeData
V _
)
_ `
;
` a
var
 
model
 
=
 
new
 (
WorkflowTypeIndexViewModel
 6
{
 
WorkflowTypes
 
=
 
workflowTypes
  -
.
 
Select
 
(
 
x
 
=>
  
new
! $
WorkflowTypeEntry
% 6
{
‘‘ 
WorkflowType
’’ $
=
’’% &
x
’’' (
,
’’( )
Id
““ 
=
““ 
x
““ 
.
““ 
Id
““ !
,
““! "
WorkflowCount
”” %
=
””& '
workflowGroups
””( 6
.
””6 7
ContainsKey
””7 B
(
””B C
x
””C D
.
””D E
WorkflowTypeId
””E S
)
””S T
?
””U V
workflowGroups
””W e
[
””e f
x
””f g
.
””g h
WorkflowTypeId
””h v
]
””v w
.
””w x
Count
””x }
(
””} ~
)
””~ 
:””€ 
$num””‚ ƒ
,””ƒ „
Name
•• 
=
•• 
x
••  
.
••  !
Name
••! %
}
–– 
)
–– 
.
—— 
ToList
—— 
(
—— 
)
—— 
,
—— 
Options
 
=
 
options
 !
,
! "
Pager
™™ 
=
™™ 

pagerShape
™™ "
}
 
;
 
model
 
.
 
Options
 
.
 %
WorkflowTypesBulkAction
 1
=
2 3
new
4 7
List
8 <
<
< =
SelectListItem
= K
>
K L
(
L M
)
M N
{
O P
new
 
SelectListItem
 "
(
" #
)
# $
{
% &
Text
' +
=
, -
S
. /
[
/ 0
$str
0 8
]
8 9
.
9 :
Value
: ?
,
? @
Value
A F
=
G H
nameof
I O
(
O P$
WorkflowTypeBulkAction
P f
.
f g
Delete
g m
)
m n
}
o p
}
 
;
 
return
   
View
   
(
   
model
   
)
   
;
   
}
΅΅ 	
[
££ 	
HttpPost
££	 
,
££ 

ActionName
££ 
(
££ 
$str
££ %
)
££% &
]
££& '
[
¤¤ 	
FormValueRequired
¤¤	 
(
¤¤ 
$str
¤¤ *
)
¤¤* +
]
¤¤+ ,
public
¥¥ 
ActionResult
¥¥ 
IndexFilterPOST
¥¥ +
(
¥¥+ ,(
WorkflowTypeIndexViewModel
¥¥, F
model
¥¥G L
)
¥¥L M
{
¦¦ 	
return
§§ 
RedirectToAction
§§ #
(
§§# $
$str
§§$ +
,
§§+ ,
new
§§- 0"
RouteValueDictionary
§§1 E
{
§§F G
{
¨¨ 
$str
¨¨ "
,
¨¨" #
model
¨¨$ )
.
¨¨) *
Options
¨¨* 1
.
¨¨1 2
Search
¨¨2 8
}
¨¨9 :
}
©© 
)
©© 
;
©© 
}
ªª 	
[
¬¬ 	
HttpPost
¬¬	 
]
¬¬ 
[
­­ 	

ActionName
­­	 
(
­­ 
nameof
­­ 
(
­­ 
Index
­­  
)
­­  !
)
­­! "
]
­­" #
[
®® 	
FormValueRequired
®®	 
(
®® 
$str
®® .
)
®®. /
]
®®/ 0
public
―― 
async
―― 
Task
―― 
<
―― 
IActionResult
―― '
>
――' (
BulkEdit
――) 1
(
――1 2&
WorkflowTypeIndexOptions
――2 J
options
――K R
,
――R S
IEnumerable
――T _
<
――_ `
int
――` c
>
――c d
itemIds
――e l
)
――l m
{
°° 	
if
±± 
(
±± 
!
±± 
await
±± #
_authorizationService
±± ,
.
±±, -
AuthorizeAsync
±±- ;
(
±±; <
User
±±< @
,
±±@ A
Permissions
±±B M
.
±±M N
ManageWorkflows
±±N ]
)
±±] ^
)
±±^ _
{
²² 
return
³³ 
Forbid
³³ 
(
³³ 
)
³³ 
;
³³  
}
΄΄ 
if
¶¶ 
(
¶¶ 
itemIds
¶¶ 
?
¶¶ 
.
¶¶ 
Count
¶¶ 
(
¶¶ 
)
¶¶  
>
¶¶! "
$num
¶¶# $
)
¶¶$ %
{
·· 
var
ΈΈ 
checkedEntries
ΈΈ "
=
ΈΈ# $
await
ΈΈ% *
_session
ΈΈ+ 3
.
ΈΈ3 4
Query
ΈΈ4 9
<
ΈΈ9 :
WorkflowType
ΈΈ: F
,
ΈΈF G
WorkflowTypeIndex
ΈΈH Y
>
ΈΈY Z
(
ΈΈZ [
)
ΈΈ[ \
.
ΈΈ\ ]
Where
ΈΈ] b
(
ΈΈb c
x
ΈΈc d
=>
ΈΈe g
x
ΈΈh i
.
ΈΈi j

DocumentId
ΈΈj t
.
ΈΈt u
IsIn
ΈΈu y
(
ΈΈy z
itemIdsΈΈz 
)ΈΈ ‚
)ΈΈ‚ ƒ
.ΈΈƒ „
	ListAsyncΈΈ„ 
(ΈΈ 
)ΈΈ 
;ΈΈ 
switch
ΉΉ 
(
ΉΉ 
options
ΉΉ 
.
ΉΉ  

BulkAction
ΉΉ  *
)
ΉΉ* +
{
ΊΊ 
case
»» $
WorkflowTypeBulkAction
»» /
.
»»/ 0
None
»»0 4
:
»»4 5
break
ΌΌ 
;
ΌΌ 
case
½½ $
WorkflowTypeBulkAction
½½ /
.
½½/ 0
Delete
½½0 6
:
½½6 7
foreach
ΎΎ 
(
ΎΎ  !
var
ΎΎ! $
entry
ΎΎ% *
in
ΎΎ+ -
checkedEntries
ΎΎ. <
)
ΎΎ< =
{
ΏΏ 
var
ΐΐ 
workflowType
ΐΐ  ,
=
ΐΐ- .
await
ΐΐ/ 4 
_workflowTypeStore
ΐΐ5 G
.
ΐΐG H
GetAsync
ΐΐH P
(
ΐΐP Q
entry
ΐΐQ V
.
ΐΐV W
Id
ΐΐW Y
)
ΐΐY Z
;
ΐΐZ [
if
ΒΒ 
(
ΒΒ  
workflowType
ΒΒ  ,
!=
ΒΒ- /
null
ΒΒ0 4
)
ΒΒ4 5
{
ΓΓ 
await
ΔΔ  % 
_workflowTypeStore
ΔΔ& 8
.
ΔΔ8 9
DeleteAsync
ΔΔ9 D
(
ΔΔD E
workflowType
ΔΔE Q
)
ΔΔQ R
;
ΔΔR S
	_notifier
ΕΕ  )
.
ΕΕ) *
Success
ΕΕ* 1
(
ΕΕ1 2
H
ΕΕ2 3
[
ΕΕ3 4
$str
ΕΕ4 T
,
ΕΕT U
workflowType
ΕΕV b
.
ΕΕb c
Name
ΕΕc g
]
ΕΕg h
)
ΕΕh i
;
ΕΕi j
}
ΖΖ 
}
ΗΗ 
break
ΘΘ 
;
ΘΘ 
default
ΚΚ 
:
ΚΚ 
throw
ΛΛ 
new
ΛΛ !)
ArgumentOutOfRangeException
ΛΛ" =
(
ΛΛ= >
)
ΛΛ> ?
;
ΛΛ? @
}
ΜΜ 
}
ΝΝ 
return
ΟΟ 
RedirectToAction
ΟΟ #
(
ΟΟ# $
$str
ΟΟ$ +
)
ΟΟ+ ,
;
ΟΟ, -
}
ΠΠ 	
public
ÒÒ 
async
ÒÒ 
Task
ÒÒ 
<
ÒÒ 
IActionResult
ÒÒ '
>
ÒÒ' (
EditProperties
ÒÒ) 7
(
ÒÒ7 8
int
ÒÒ8 ;
?
ÒÒ; <
id
ÒÒ= ?
,
ÒÒ? @
string
ÒÒA G
	returnUrl
ÒÒH Q
=
ÒÒR S
null
ÒÒT X
)
ÒÒX Y
{
ΣΣ 	
if
ΤΤ 
(
ΤΤ 
!
ΤΤ 
await
ΤΤ #
_authorizationService
ΤΤ ,
.
ΤΤ, -
AuthorizeAsync
ΤΤ- ;
(
ΤΤ; <
User
ΤΤ< @
,
ΤΤ@ A
Permissions
ΤΤB M
.
ΤΤM N
ManageWorkflows
ΤΤN ]
)
ΤΤ] ^
)
ΤΤ^ _
{
ΥΥ 
return
ΦΦ 
Forbid
ΦΦ 
(
ΦΦ 
)
ΦΦ 
;
ΦΦ  
}
ΧΧ 
if
ΩΩ 
(
ΩΩ 
id
ΩΩ 
==
ΩΩ 
null
ΩΩ 
)
ΩΩ 
{
ΪΪ 
return
ΫΫ 
View
ΫΫ 
(
ΫΫ 
new
ΫΫ -
WorkflowTypePropertiesViewModel
ΫΫ  ?
{
άά 
	IsEnabled
έέ 
=
έέ 
true
έέ  $
,
έέ$ %
	ReturnUrl
ήή 
=
ήή 
	returnUrl
ήή  )
}
ίί 
)
ίί 
;
ίί 
}
ΰΰ 
else
αα 
{
ββ 
var
γγ 
workflowType
γγ  
=
γγ! "
await
γγ# (
_session
γγ) 1
.
γγ1 2
GetAsync
γγ2 :
<
γγ: ;
WorkflowType
γγ; G
>
γγG H
(
γγH I
id
γγI K
.
γγK L
Value
γγL Q
)
γγQ R
;
γγR S
return
εε 
View
εε 
(
εε 
new
εε -
WorkflowTypePropertiesViewModel
εε  ?
{
ζζ 
Id
ηη 
=
ηη 
workflowType
ηη %
.
ηη% &
Id
ηη& (
,
ηη( )
Name
θθ 
=
θθ 
workflowType
θθ '
.
θθ' (
Name
θθ( ,
,
θθ, -
	IsEnabled
ιι 
=
ιι 
workflowType
ιι  ,
.
ιι, -
	IsEnabled
ιι- 6
,
ιι6 7
IsSingleton
κκ 
=
κκ  !
workflowType
κκ" .
.
κκ. /
IsSingleton
κκ/ :
,
κκ: ;%
DeleteFinishedWorkflows
λλ +
=
λλ, -
workflowType
λλ. :
.
λλ: ;%
DeleteFinishedWorkflows
λλ; R
,
λλR S
	ReturnUrl
μμ 
=
μμ 
	returnUrl
μμ  )
}
νν 
)
νν 
;
νν 
}
ξξ 
}
οο 	
[
ρρ 	
HttpPost
ρρ	 
]
ρρ 
public
ςς 
async
ςς 
Task
ςς 
<
ςς 
IActionResult
ςς '
>
ςς' (
EditProperties
ςς) 7
(
ςς7 8-
WorkflowTypePropertiesViewModel
ςς8 W
	viewModel
ςςX a
,
ςςa b
int
ςςc f
?
ςςf g
id
ςςh j
)
ςςj k
{
σσ 	
if
ττ 
(
ττ 
!
ττ 
await
ττ #
_authorizationService
ττ ,
.
ττ, -
AuthorizeAsync
ττ- ;
(
ττ; <
User
ττ< @
,
ττ@ A
Permissions
ττB M
.
ττM N
ManageWorkflows
ττN ]
)
ττ] ^
)
ττ^ _
{
υυ 
return
φφ 
Forbid
φφ 
(
φφ 
)
φφ 
;
φφ  
}
χχ 
if
ωω 
(
ωω 
!
ωω 

ModelState
ωω 
.
ωω 
IsValid
ωω #
)
ωω# $
{
ϊϊ 
return
ϋϋ 
View
ϋϋ 
(
ϋϋ 
	viewModel
ϋϋ %
)
ϋϋ% &
;
ϋϋ& '
}
όό 
var
ώώ 
isNew
ώώ 
=
ώώ 
id
ώώ 
==
ώώ 
null
ώώ "
;
ώώ" #
var
ÿÿ 
workflowType
ÿÿ 
=
ÿÿ 
default
ÿÿ &
(
ÿÿ& '
WorkflowType
ÿÿ' 3
)
ÿÿ3 4
;
ÿÿ4 5
if
 
(
 
isNew
 
)
 
{
‚‚ 
workflowType
ƒƒ 
=
ƒƒ 
new
ƒƒ "
WorkflowType
ƒƒ# /
(
ƒƒ/ 0
)
ƒƒ0 1
;
ƒƒ1 2
workflowType
„„ 
.
„„ 
WorkflowTypeId
„„ +
=
„„, -&
_workflowTypeIdGenerator
„„. F
.
„„F G
GenerateUniqueId
„„G W
(
„„W X
workflowType
„„X d
)
„„d e
;
„„e f
}
…… 
else
†† 
{
‡‡ 
workflowType
 
=
 
await
 $
_session
% -
.
- .
GetAsync
. 6
<
6 7
WorkflowType
7 C
>
C D
(
D E
id
E G
.
G H
Value
H M
)
M N
;
N O
if
 
(
 
workflowType
  
==
! #
null
$ (
)
( )
{
‹‹ 
return
 
NotFound
 #
(
# $
)
$ %
;
% &
}
 
}
 
workflowType
 
.
 
Name
 
=
 
	viewModel
  )
.
) *
Name
* .
?
. /
.
/ 0
Trim
0 4
(
4 5
)
5 6
;
6 7
workflowType
‘‘ 
.
‘‘ 
	IsEnabled
‘‘ "
=
‘‘# $
	viewModel
‘‘% .
.
‘‘. /
	IsEnabled
‘‘/ 8
;
‘‘8 9
workflowType
’’ 
.
’’ 
IsSingleton
’’ $
=
’’% &
	viewModel
’’' 0
.
’’0 1
IsSingleton
’’1 <
;
’’< =
workflowType
““ 
.
““ %
DeleteFinishedWorkflows
““ 0
=
““1 2
	viewModel
““3 <
.
““< =%
DeleteFinishedWorkflows
““= T
;
““T U
await
••  
_workflowTypeStore
•• $
.
••$ %
	SaveAsync
••% .
(
••. /
workflowType
••/ ;
)
••; <
;
••< =
return
—— 
isNew
—— 
?
 
RedirectToAction
 "
(
" #
$str
# )
,
) *
new
+ .
{
/ 0
workflowType
1 =
.
= >
Id
> @
}
A B
)
B C
:
™™ 
Url
™™ 
.
™™ 

IsLocalUrl
™™  
(
™™  !
	viewModel
™™! *
.
™™* +
	ReturnUrl
™™+ 4
)
™™4 5
?
 
(
 
IActionResult
 #
)
# $
Redirect
$ ,
(
, -
	viewModel
- 6
.
6 7
	ReturnUrl
7 @
)
@ A
:
›› 
RedirectToAction
›› %
(
››% &
$str
››& -
)
››- .
;
››. /
}
 	
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
	Duplicate
) 2
(
2 3
int
3 6
id
7 9
,
9 :
string
; A
	returnUrl
B K
=
L M
null
N R
)
R S
{
 	
if
   
(
   
!
   
await
   #
_authorizationService
   ,
.
  , -
AuthorizeAsync
  - ;
(
  ; <
User
  < @
,
  @ A
Permissions
  B M
.
  M N
ManageWorkflows
  N ]
)
  ] ^
)
  ^ _
{
΅΅ 
return
ΆΆ 
Forbid
ΆΆ 
(
ΆΆ 
)
ΆΆ 
;
ΆΆ  
}
££ 
var
¥¥ 
workflowType
¥¥ 
=
¥¥ 
await
¥¥ $
_session
¥¥% -
.
¥¥- .
GetAsync
¥¥. 6
<
¥¥6 7
WorkflowType
¥¥7 C
>
¥¥C D
(
¥¥D E
id
¥¥E G
)
¥¥G H
;
¥¥H I
if
§§ 
(
§§ 
workflowType
§§ 
==
§§ 
null
§§  $
)
§§$ %
{
¨¨ 
return
©© 
NotFound
©© 
(
©©  
)
©©  !
;
©©! "
}
ªª 
return
¬¬ 
View
¬¬ 
(
¬¬ 
new
¬¬ -
WorkflowTypePropertiesViewModel
¬¬ ;
{
­­ 
Id
®® 
=
®® 
id
®® 
,
®® 
IsSingleton
―― 
=
―― 
workflowType
―― *
.
――* +
IsSingleton
――+ 6
,
――6 7
Name
°° 
=
°° 
$str
°° 
+
°°  
workflowType
°°! -
.
°°- .
Name
°°. 2
,
°°2 3
	IsEnabled
±± 
=
±± 
workflowType
±± (
.
±±( )
	IsEnabled
±±) 2
,
±±2 3
	ReturnUrl
²² 
=
²² 
	returnUrl
²² %
}
³³ 
)
³³ 
;
³³ 
}
΄΄ 	
[
¶¶ 	
HttpPost
¶¶	 
]
¶¶ 
public
·· 
async
·· 
Task
·· 
<
·· 
IActionResult
·· '
>
··' (
	Duplicate
··) 2
(
··2 3-
WorkflowTypePropertiesViewModel
··3 R
	viewModel
··S \
,
··\ ]
int
··^ a
id
··b d
)
··d e
{
ΈΈ 	
if
ΉΉ 
(
ΉΉ 
!
ΉΉ 
await
ΉΉ #
_authorizationService
ΉΉ ,
.
ΉΉ, -
AuthorizeAsync
ΉΉ- ;
(
ΉΉ; <
User
ΉΉ< @
,
ΉΉ@ A
Permissions
ΉΉB M
.
ΉΉM N
ManageWorkflows
ΉΉN ]
)
ΉΉ] ^
)
ΉΉ^ _
{
ΊΊ 
return
»» 
Forbid
»» 
(
»» 
)
»» 
;
»»  
}
ΌΌ 
if
ΎΎ 
(
ΎΎ 
!
ΎΎ 

ModelState
ΎΎ 
.
ΎΎ 
IsValid
ΎΎ #
)
ΎΎ# $
{
ΏΏ 
return
ΐΐ 
View
ΐΐ 
(
ΐΐ 
	viewModel
ΐΐ %
)
ΐΐ% &
;
ΐΐ& '
}
ΑΑ 
var
ΓΓ "
existingWorkflowType
ΓΓ $
=
ΓΓ% &
await
ΓΓ' ,
_session
ΓΓ- 5
.
ΓΓ5 6
GetAsync
ΓΓ6 >
<
ΓΓ> ?
WorkflowType
ΓΓ? K
>
ΓΓK L
(
ΓΓL M
id
ΓΓM O
)
ΓΓO P
;
ΓΓP Q
var
ΔΔ 
workflowType
ΔΔ 
=
ΔΔ 
new
ΔΔ "
WorkflowType
ΔΔ# /
(
ΔΔ/ 0
)
ΔΔ0 1
;
ΔΔ1 2
workflowType
ΕΕ 
.
ΕΕ 
WorkflowTypeId
ΕΕ '
=
ΕΕ( )&
_workflowTypeIdGenerator
ΕΕ* B
.
ΕΕB C
GenerateUniqueId
ΕΕC S
(
ΕΕS T
workflowType
ΕΕT `
)
ΕΕ` a
;
ΕΕa b
workflowType
ΗΗ 
.
ΗΗ 
Name
ΗΗ 
=
ΗΗ 
	viewModel
ΗΗ  )
.
ΗΗ) *
Name
ΗΗ* .
?
ΗΗ. /
.
ΗΗ/ 0
Trim
ΗΗ0 4
(
ΗΗ4 5
)
ΗΗ5 6
;
ΗΗ6 7
workflowType
ΘΘ 
.
ΘΘ 
	IsEnabled
ΘΘ "
=
ΘΘ# $
	viewModel
ΘΘ% .
.
ΘΘ. /
	IsEnabled
ΘΘ/ 8
;
ΘΘ8 9
workflowType
ΙΙ 
.
ΙΙ 
IsSingleton
ΙΙ $
=
ΙΙ% &
	viewModel
ΙΙ' 0
.
ΙΙ0 1
IsSingleton
ΙΙ1 <
;
ΙΙ< =
workflowType
ΚΚ 
.
ΚΚ %
DeleteFinishedWorkflows
ΚΚ 0
=
ΚΚ1 2
	viewModel
ΚΚ3 <
.
ΚΚ< =%
DeleteFinishedWorkflows
ΚΚ= T
;
ΚΚT U
workflowType
ΛΛ 
.
ΛΛ 

Activities
ΛΛ #
=
ΛΛ$ %"
existingWorkflowType
ΛΛ& :
.
ΛΛ: ;

Activities
ΛΛ; E
;
ΛΛE F
workflowType
ΜΜ 
.
ΜΜ 
Transitions
ΜΜ $
=
ΜΜ% &"
existingWorkflowType
ΜΜ' ;
.
ΜΜ; <
Transitions
ΜΜ< G
;
ΜΜG H
await
ΞΞ  
_workflowTypeStore
ΞΞ $
.
ΞΞ$ %
	SaveAsync
ΞΞ% .
(
ΞΞ. /
workflowType
ΞΞ/ ;
)
ΞΞ; <
;
ΞΞ< =
return
ΠΠ 
RedirectToAction
ΠΠ #
(
ΠΠ# $
$str
ΠΠ$ *
,
ΠΠ* +
new
ΠΠ, /
{
ΠΠ0 1
workflowType
ΠΠ2 >
.
ΠΠ> ?
Id
ΠΠ? A
}
ΠΠB C
)
ΠΠC D
;
ΠΠD E
}
ΡΡ 	
public
ΣΣ 
async
ΣΣ 
Task
ΣΣ 
<
ΣΣ 
IActionResult
ΣΣ '
>
ΣΣ' (
Edit
ΣΣ) -
(
ΣΣ- .
int
ΣΣ. 1
id
ΣΣ2 4
,
ΣΣ4 5
string
ΣΣ6 <
localId
ΣΣ= D
)
ΣΣD E
{
ΤΤ 	
if
ΥΥ 
(
ΥΥ 
!
ΥΥ 
await
ΥΥ #
_authorizationService
ΥΥ ,
.
ΥΥ, -
AuthorizeAsync
ΥΥ- ;
(
ΥΥ; <
User
ΥΥ< @
,
ΥΥ@ A
Permissions
ΥΥB M
.
ΥΥM N
ManageWorkflows
ΥΥN ]
)
ΥΥ] ^
)
ΥΥ^ _
{
ΦΦ 
return
ΧΧ 
Forbid
ΧΧ 
(
ΧΧ 
)
ΧΧ 
;
ΧΧ  
}
ΨΨ 
var
ΪΪ 

newLocalId
ΪΪ 
=
ΪΪ 
string
ΪΪ #
.
ΪΪ# $ 
IsNullOrWhiteSpace
ΪΪ$ 6
(
ΪΪ6 7
localId
ΪΪ7 >
)
ΪΪ> ?
?
ΪΪ@ A
Guid
ΪΪB F
.
ΪΪF G
NewGuid
ΪΪG N
(
ΪΪN O
)
ΪΪO P
.
ΪΪP Q
ToString
ΪΪQ Y
(
ΪΪY Z
)
ΪΪZ [
:
ΪΪ\ ]
localId
ΪΪ^ e
;
ΪΪe f
var
ΫΫ !
availableActivities
ΫΫ #
=
ΫΫ$ %
_activityLibrary
ΫΫ& 6
.
ΫΫ6 7
ListActivities
ΫΫ7 E
(
ΫΫE F
)
ΫΫF G
;
ΫΫG H
var
άά 
workflowType
άά 
=
άά 
await
άά $
_session
άά% -
.
άά- .
GetAsync
άά. 6
<
άά6 7
WorkflowType
άά7 C
>
άάC D
(
άάD E
id
άάE G
)
άάG H
;
άάH I
if
ήή 
(
ήή 
workflowType
ήή 
==
ήή 
null
ήή  $
)
ήή$ %
{
ίί 
return
ΰΰ 
NotFound
ΰΰ 
(
ΰΰ  
)
ΰΰ  !
;
ΰΰ! "
}
αα 
var
γγ 
workflow
γγ 
=
γγ 
_workflowManager
γγ +
.
γγ+ ,
NewWorkflow
γγ, 7
(
γγ7 8
workflowType
γγ8 D
)
γγD E
;
γγE F
var
δδ 
workflowContext
δδ 
=
δδ  !
await
δδ" '
_workflowManager
δδ( 8
.
δδ8 91
#CreateWorkflowExecutionContextAsync
δδ9 \
(
δδ\ ]
workflowType
δδ] i
,
δδi j
workflow
δδk s
)
δδs t
;
δδt u
var
εε 
activityContexts
εε  
=
εε! "
await
εε# (
Task
εε) -
.
εε- .
WhenAll
εε. 5
(
εε5 6
workflowType
εε6 B
.
εεB C

Activities
εεC M
.
εεM N
Select
εεN T
(
εεT U
x
εεU V
=>
εεW Y
_workflowManager
εεZ j
.
εεj k2
#CreateActivityExecutionContextAsyncεεk 
(εε 
xεε 
,εε ‘
xεε’ “
.εε“ ”

Propertiesεε” 
)εε 
)εε  
)εε  ΅
;εε΅ Ά
var
ζζ 
workflowCount
ζζ 
=
ζζ 
await
ζζ  %
_session
ζζ& .
.
ζζ. /

QueryIndex
ζζ/ 9
<
ζζ9 :
WorkflowIndex
ζζ: G
>
ζζG H
(
ζζH I
x
ζζI J
=>
ζζK M
x
ζζN O
.
ζζO P
WorkflowTypeId
ζζP ^
==
ζζ_ a
workflowType
ζζb n
.
ζζn o
WorkflowTypeId
ζζo }
)
ζζ} ~
.
ζζ~ 

CountAsyncζζ ‰
(ζζ‰ 
)ζζ ‹
;ζζ‹ 
var
θθ %
activityThumbnailShapes
θθ '
=
θθ( )
new
θθ* -
List
θθ. 2
<
θθ2 3
dynamic
θθ3 :
>
θθ: ;
(
θθ; <
)
θθ< =
;
θθ= >
var
ιι 
index
ιι 
=
ιι 
$num
ιι 
;
ιι 
foreach
λλ 
(
λλ 
var
λλ 
activity
λλ !
in
λλ" $!
availableActivities
λλ% 8
)
λλ8 9
{
μμ %
activityThumbnailShapes
νν '
.
νν' (
Add
νν( +
(
νν+ ,
await
νν, 1"
BuildActivityDisplay
νν2 F
(
ννF G
activity
ννG O
,
ννO P
index
ννQ V
++
ννV X
,
ννX Y
id
ννZ \
,
νν\ ]

newLocalId
νν^ h
,
ννh i
$str
ννj u
)
ννu v
)
ννv w
;
ννw x
}
ξξ 
var
ππ "
activityDesignShapes
ππ $
=
ππ% &
new
ππ' *
List
ππ+ /
<
ππ/ 0
dynamic
ππ0 7
>
ππ7 8
(
ππ8 9
)
ππ9 :
;
ππ: ;
index
ρρ 
=
ρρ 
$num
ρρ 
;
ρρ 
foreach
σσ 
(
σσ 
var
σσ 
activityContext
σσ (
in
σσ) +
activityContexts
σσ, <
)
σσ< =
{
ττ "
activityDesignShapes
υυ $
.
υυ$ %
Add
υυ% (
(
υυ( )
await
υυ) ."
BuildActivityDisplay
υυ/ C
(
υυC D
activityContext
υυD S
,
υυS T
index
υυU Z
++
υυZ \
,
υυ\ ]
id
υυ^ `
,
υυ` a

newLocalId
υυb l
,
υυl m
$str
υυn v
)
υυv w
)
υυw x
;
υυx y
}
φφ 
var
ψψ !
activitiesDataQuery
ψψ #
=
ψψ$ %
activityContexts
ψψ& 6
.
ψψ6 7
Select
ψψ7 =
(
ψψ= >
x
ψψ> ?
=>
ψψ@ B
new
ψψC F
{
ωω 
Id
ϊϊ 
=
ϊϊ 
x
ϊϊ 
.
ϊϊ 
ActivityRecord
ϊϊ %
.
ϊϊ% &

ActivityId
ϊϊ& 0
,
ϊϊ0 1
X
ϋϋ 
=
ϋϋ 
x
ϋϋ 
.
ϋϋ 
ActivityRecord
ϋϋ $
.
ϋϋ$ %
X
ϋϋ% &
,
ϋϋ& '
Y
όό 
=
όό 
x
όό 
.
όό 
ActivityRecord
όό $
.
όό$ %
Y
όό% &
,
όό& '
Name
ύύ 
=
ύύ 
x
ύύ 
.
ύύ 
ActivityRecord
ύύ '
.
ύύ' (
Name
ύύ( ,
,
ύύ, -
IsStart
ώώ 
=
ώώ 
x
ώώ 
.
ώώ 
ActivityRecord
ώώ *
.
ώώ* +
IsStart
ώώ+ 2
,
ώώ2 3
IsEvent
ÿÿ 
=
ÿÿ 
x
ÿÿ 
.
ÿÿ 
Activity
ÿÿ $
.
ÿÿ$ %
IsEvent
ÿÿ% ,
(
ÿÿ, -
)
ÿÿ- .
,
ÿÿ. /
Outcomes
€€ 
=
€€ 
x
€€ 
.
€€ 
Activity
€€ %
.
€€% &!
GetPossibleOutcomes
€€& 9
(
€€9 :
workflowContext
€€: I
,
€€I J
x
€€K L
)
€€L M
.
€€M N
ToArray
€€N U
(
€€U V
)
€€V W
}
 
)
 
;
 
var
‚‚ 
workflowTypeData
‚‚  
=
‚‚! "
new
‚‚# &
{
ƒƒ 
Id
„„ 
=
„„ 
workflowType
„„ !
.
„„! "
Id
„„" $
,
„„$ %
Name
…… 
=
…… 
workflowType
…… #
.
……# $
Name
……$ (
,
……( )
	IsEnabled
†† 
=
†† 
workflowType
†† (
.
††( )
	IsEnabled
††) 2
,
††2 3

Activities
‡‡ 
=
‡‡ !
activitiesDataQuery
‡‡ 0
.
‡‡0 1
ToArray
‡‡1 8
(
‡‡8 9
)
‡‡9 :
,
‡‡: ;
Transitions
 
=
 
workflowType
 *
.
* +
Transitions
+ 6
}
‰‰ 
;
‰‰ 
var
 
	viewModel
 
=
 
new
 #
WorkflowTypeViewModel
  5
{
‹‹ 
WorkflowType
 
=
 
workflowType
 +
,
+ ,
WorkflowTypeJson
  
=
! "
JsonConvert
# .
.
. /
SerializeObject
/ >
(
> ?
workflowTypeData
? O
,
O P

Formatting
Q [
.
[ \
None
\ `
,
` a
new
b e$
JsonSerializerSettings
f |
{
} ~
ContractResolver 
= ‘
new’ •6
&CamelCasePropertyNamesContractResolver– Ό
(Ό ½
)½ Ύ
}Ώ ΐ
)ΐ Α
,Α Β%
ActivityThumbnailShapes
 '
=
( )%
activityThumbnailShapes
* A
,
A B"
ActivityDesignShapes
 $
=
% &"
activityDesignShapes
' ;
,
; < 
ActivityCategories
 "
=
# $
_activityLibrary
% 5
.
5 6
ListCategories
6 D
(
D E
)
E F
.
F G
ToList
G M
(
M N
)
N O
,
O P
LocalId
‘‘ 
=
‘‘ 

newLocalId
‘‘ $
,
‘‘$ %
LoadLocalState
’’ 
=
’’  
!
’’! "
string
’’" (
.
’’( ) 
IsNullOrWhiteSpace
’’) ;
(
’’; <
localId
’’< C
)
’’C D
,
’’D E
WorkflowCount
““ 
=
““ 
workflowCount
““  -
}
”” 
;
”” 
return
•• 
View
•• 
(
•• 
	viewModel
•• !
)
••! "
;
••" #
}
–– 	
[
 	
HttpPost
	 
]
 
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
IActionResult
™™ '
>
™™' (
Edit
™™) -
(
™™- .%
WorkflowTypeUpdateModel
™™. E
model
™™F K
)
™™K L
{
 	
if
›› 
(
›› 
!
›› 
await
›› #
_authorizationService
›› ,
.
››, -
AuthorizeAsync
››- ;
(
››; <
User
››< @
,
››@ A
Permissions
››B M
.
››M N
ManageWorkflows
››N ]
)
››] ^
)
››^ _
{
 
return
 
Forbid
 
(
 
)
 
;
  
}
 
var
   
workflowType
   
=
   
await
   $ 
_workflowTypeStore
  % 7
.
  7 8
GetAsync
  8 @
(
  @ A
model
  A F
.
  F G
Id
  G I
)
  I J
;
  J K
dynamic
΅΅ 
state
΅΅ 
=
΅΅ 
JObject
΅΅ #
.
΅΅# $
Parse
΅΅$ )
(
΅΅) *
model
΅΅* /
.
΅΅/ 0
State
΅΅0 5
)
΅΅5 6
;
΅΅6 7
var
ΆΆ 
currentActivities
ΆΆ !
=
ΆΆ" #
workflowType
ΆΆ$ 0
.
ΆΆ0 1

Activities
ΆΆ1 ;
.
ΆΆ; <
ToDictionary
ΆΆ< H
(
ΆΆH I
x
ΆΆI J
=>
ΆΆK M
x
ΆΆN O
.
ΆΆO P

ActivityId
ΆΆP Z
)
ΆΆZ [
;
ΆΆ[ \
var
££ 
postedActivities
££  
=
££! "
(
££# $
(
££$ %
IEnumerable
££% 0
<
££0 1
dynamic
££1 8
>
££8 9
)
££9 :
state
££: ?
.
££? @

activities
££@ J
)
££J K
.
££K L
ToDictionary
££L X
(
££X Y
x
££Y Z
=>
££[ ]
(
££^ _
string
££_ e
)
££e f
x
££f g
.
££g h
id
££h j
)
££j k
;
££k l
var
¤¤ %
removedActivityIdsQuery
¤¤ '
=
¤¤( )
from
¥¥ 

activityId
¥¥ 
in
¥¥  "
currentActivities
¥¥# 4
.
¥¥4 5
Keys
¥¥5 9
where
¦¦ 
!
¦¦ 
postedActivities
¦¦ '
.
¦¦' (
ContainsKey
¦¦( 3
(
¦¦3 4

activityId
¦¦4 >
)
¦¦> ?
select
§§ 

activityId
§§ !
;
§§! "
var
¨¨  
removedActivityIds
¨¨ "
=
¨¨# $%
removedActivityIdsQuery
¨¨% <
.
¨¨< =
ToList
¨¨= C
(
¨¨C D
)
¨¨D E
;
¨¨E F
foreach
«« 
(
«« 
var
«« 

activityId
«« #
in
««$ & 
removedActivityIds
««' 9
)
««9 :
{
¬¬ 
var
­­ 
activityToRemove
­­ $
=
­­% &
currentActivities
­­' 8
[
­­8 9

activityId
­­9 C
]
­­C D
;
­­D E
workflowType
®® 
.
®® 

Activities
®® '
.
®®' (
Remove
®®( .
(
®®. /
activityToRemove
®®/ ?
)
®®? @
;
®®@ A
currentActivities
―― !
.
――! "
Remove
――" (
(
――( )

activityId
――) 3
)
――3 4
;
――4 5
}
°° 
foreach
³³ 
(
³³ 
var
³³ 
activityState
³³ &
in
³³' )
state
³³* /
.
³³/ 0

activities
³³0 :
)
³³: ;
{
΄΄ 
var
µµ 
activity
µµ 
=
µµ 
currentActivities
µµ 0
[
µµ0 1
(
µµ1 2
string
µµ2 8
)
µµ8 9
activityState
µµ9 F
.
µµF G
id
µµG I
]
µµI J
;
µµJ K
activity
¶¶ 
.
¶¶ 
X
¶¶ 
=
¶¶ 
activityState
¶¶ *
.
¶¶* +
x
¶¶+ ,
;
¶¶, -
activity
·· 
.
·· 
Y
·· 
=
·· 
activityState
·· *
.
··* +
y
··+ ,
;
··, -
activity
ΈΈ 
.
ΈΈ 
IsStart
ΈΈ  
=
ΈΈ! "
activityState
ΈΈ# 0
.
ΈΈ0 1
isStart
ΈΈ1 8
;
ΈΈ8 9
}
ΉΉ 
workflowType
ΌΌ 
.
ΌΌ 
Transitions
ΌΌ $
.
ΌΌ$ %
Clear
ΌΌ% *
(
ΌΌ* +
)
ΌΌ+ ,
;
ΌΌ, -
foreach
½½ 
(
½½ 
var
½½ 
transitionState
½½ (
in
½½) +
state
½½, 1
.
½½1 2
transitions
½½2 =
)
½½= >
{
ΎΎ 
workflowType
ΏΏ 
.
ΏΏ 
Transitions
ΏΏ (
.
ΏΏ( )
Add
ΏΏ) ,
(
ΏΏ, -
new
ΏΏ- 0

Transition
ΏΏ1 ;
{
ΐΐ 
SourceActivityId
ΑΑ $
=
ΑΑ% &
transitionState
ΑΑ' 6
.
ΑΑ6 7
sourceActivityId
ΑΑ7 G
,
ΑΑG H#
DestinationActivityId
ΒΒ )
=
ΒΒ* +
transitionState
ΒΒ, ;
.
ΒΒ; <#
destinationActivityId
ΒΒ< Q
,
ΒΒQ R
SourceOutcomeName
ΓΓ %
=
ΓΓ& '
transitionState
ΓΓ( 7
.
ΓΓ7 8
sourceOutcomeName
ΓΓ8 I
}
ΔΔ 
)
ΔΔ 
;
ΔΔ 
}
ΕΕ 
await
ΗΗ  
_workflowTypeStore
ΗΗ $
.
ΗΗ$ %
	SaveAsync
ΗΗ% .
(
ΗΗ. /
workflowType
ΗΗ/ ;
)
ΗΗ; <
;
ΗΗ< =
await
ΘΘ 
_session
ΘΘ 
.
ΘΘ 
CommitAsync
ΘΘ &
(
ΘΘ& '
)
ΘΘ' (
;
ΘΘ( )
	_notifier
ΙΙ 
.
ΙΙ 
Success
ΙΙ 
(
ΙΙ 
H
ΙΙ 
[
ΙΙ  
$str
ΙΙ  :
]
ΙΙ: ;
)
ΙΙ; <
;
ΙΙ< =
return
ΚΚ 
RedirectToAction
ΚΚ #
(
ΚΚ# $
nameof
ΚΚ$ *
(
ΚΚ* +
Edit
ΚΚ+ /
)
ΚΚ/ 0
,
ΚΚ0 1
new
ΚΚ2 5
{
ΚΚ6 7
id
ΚΚ8 :
=
ΚΚ; <
model
ΚΚ= B
.
ΚΚB C
Id
ΚΚC E
}
ΚΚF G
)
ΚΚG H
;
ΚΚH I
}
ΛΛ 	
[
ΝΝ 	
HttpPost
ΝΝ	 
]
ΝΝ 
public
ΞΞ 
async
ΞΞ 
Task
ΞΞ 
<
ΞΞ 
IActionResult
ΞΞ '
>
ΞΞ' (
Delete
ΞΞ) /
(
ΞΞ/ 0
int
ΞΞ0 3
id
ΞΞ4 6
)
ΞΞ6 7
{
ΟΟ 	
if
ΠΠ 
(
ΠΠ 
!
ΠΠ 
await
ΠΠ #
_authorizationService
ΠΠ ,
.
ΠΠ, -
AuthorizeAsync
ΠΠ- ;
(
ΠΠ; <
User
ΠΠ< @
,
ΠΠ@ A
Permissions
ΠΠB M
.
ΠΠM N
ManageWorkflows
ΠΠN ]
)
ΠΠ] ^
)
ΠΠ^ _
{
ΡΡ 
return
ÒÒ 
Forbid
ÒÒ 
(
ÒÒ 
)
ÒÒ 
;
ÒÒ  
}
ΣΣ 
var
ΥΥ 
workflowType
ΥΥ 
=
ΥΥ 
await
ΥΥ $ 
_workflowTypeStore
ΥΥ% 7
.
ΥΥ7 8
GetAsync
ΥΥ8 @
(
ΥΥ@ A
id
ΥΥA C
)
ΥΥC D
;
ΥΥD E
if
ΧΧ 
(
ΧΧ 
workflowType
ΧΧ 
==
ΧΧ 
null
ΧΧ  $
)
ΧΧ$ %
{
ΨΨ 
return
ΩΩ 
NotFound
ΩΩ 
(
ΩΩ  
)
ΩΩ  !
;
ΩΩ! "
}
ΪΪ 
await
άά  
_workflowTypeStore
άά $
.
άά$ %
DeleteAsync
άά% 0
(
άά0 1
workflowType
άά1 =
)
άά= >
;
άά> ?
	_notifier
έέ 
.
έέ 
Success
έέ 
(
έέ 
H
έέ 
[
έέ  
$str
έέ  6
,
έέ6 7
workflowType
έέ8 D
.
έέD E
Name
έέE I
]
έέI J
)
έέJ K
;
έέK L
return
ίί 
RedirectToAction
ίί #
(
ίί# $
$str
ίί$ +
)
ίί+ ,
;
ίί, -
}
ΰΰ 	
private
ββ 
async
ββ 
Task
ββ 
<
ββ 
dynamic
ββ "
>
ββ" #"
BuildActivityDisplay
ββ$ 8
(
ββ8 9
	IActivity
ββ9 B
activity
ββC K
,
ββK L
int
ββM P
index
ββQ V
,
ββV W
int
ββX [
workflowTypeId
ββ\ j
,
ββj k
string
ββl r
localId
ββs z
,
ββz {
stringββ| ‚
displayTypeββƒ 
)ββ 
{
γγ 	
dynamic
δδ 
activityShape
δδ !
=
δδ" #
await
δδ$ )%
_activityDisplayManager
δδ* A
.
δδA B
BuildDisplayAsync
δδB S
(
δδS T
activity
δδT \
,
δδ\ ]"
_updateModelAccessor
δδ^ r
.
δδr s
ModelUpdater
δδs 
,δδ €
displayTypeδδ 
)δδ 
;δδ 
activityShape
εε 
.
εε 
Metadata
εε "
.
εε" #
Type
εε# '
=
εε( )
$"
εε* ,
	Activity_
εε, 5
{
εε5 6
displayType
εε6 A
}
εεA B
"
εεB C
;
εεC D
activityShape
ζζ 
.
ζζ 
Activity
ζζ "
=
ζζ# $
activity
ζζ% -
;
ζζ- .
activityShape
ηη 
.
ηη 
WorkflowTypeId
ηη (
=
ηη) *
workflowTypeId
ηη+ 9
;
ηη9 :
activityShape
θθ 
.
θθ 
Index
θθ 
=
θθ  !
index
θθ" '
;
θθ' (
activityShape
ιι 
.
ιι 
	ReturnUrl
ιι #
=
ιι$ %
Url
ιι& )
.
ιι) *
Action
ιι* 0
(
ιι0 1
nameof
ιι1 7
(
ιι7 8
Edit
ιι8 <
)
ιι< =
,
ιι= >
new
ιι? B
{
ιιC D
id
ιιE G
=
ιιH I
workflowTypeId
ιιJ X
,
ιιX Y
localId
ιιZ a
=
ιιb c
localId
ιιd k
}
ιιl m
)
ιιm n
;
ιιn o
return
κκ 
activityShape
κκ  
;
κκ  !
}
λλ 	
private
νν 
async
νν 
Task
νν 
<
νν 
dynamic
νν "
>
νν" #"
BuildActivityDisplay
νν$ 8
(
νν8 9
ActivityContext
νν9 H
activityContext
ννI X
,
ννX Y
int
ννZ ]
index
νν^ c
,
ννc d
int
ννe h
workflowTypeId
ννi w
,
ννw x
string
ννy 
localIdνν€ ‡
,νν‡ 
stringνν‰ 
displayTypeνν ›
)νν› 
{
ξξ 	
dynamic
οο 
activityShape
οο !
=
οο" #
await
οο$ )%
_activityDisplayManager
οο* A
.
οοA B
BuildDisplayAsync
οοB S
(
οοS T
activityContext
οοT c
.
οοc d
Activity
οοd l
,
οοl m#
_updateModelAccessorοοn ‚
.οο‚ ƒ
ModelUpdaterοοƒ 
,οο 
displayTypeοο‘ 
)οο 
;οο 
activityShape
ππ 
.
ππ 
Metadata
ππ "
.
ππ" #
Type
ππ# '
=
ππ( )
$"
ππ* ,
	Activity_
ππ, 5
{
ππ5 6
displayType
ππ6 A
}
ππA B
"
ππB C
;
ππC D
activityShape
ρρ 
.
ρρ 
Activity
ρρ "
=
ρρ# $
activityContext
ρρ% 4
.
ρρ4 5
Activity
ρρ5 =
;
ρρ= >
activityShape
ςς 
.
ςς 
ActivityRecord
ςς (
=
ςς) *
activityContext
ςς+ :
.
ςς: ;
ActivityRecord
ςς; I
;
ςςI J
activityShape
σσ 
.
σσ 
WorkflowTypeId
σσ (
=
σσ) *
workflowTypeId
σσ+ 9
;
σσ9 :
activityShape
ττ 
.
ττ 
Index
ττ 
=
ττ  !
index
ττ" '
;
ττ' (
activityShape
υυ 
.
υυ 
	ReturnUrl
υυ #
=
υυ$ %
Url
υυ& )
.
υυ) *
Action
υυ* 0
(
υυ0 1
nameof
υυ1 7
(
υυ7 8
Edit
υυ8 <
)
υυ< =
,
υυ= >
new
υυ? B
{
υυC D
id
υυE G
=
υυH I
workflowTypeId
υυJ X
,
υυX Y
localId
υυZ a
=
υυb c
localId
υυd k
}
υυl m
)
υυm n
;
υυn o
return
φφ 
activityShape
φφ  
;
φφ  !
}
χχ 	
}
ψψ 
}ωω ®
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Deployment\AllWorkflowTypeDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Deployment  *
{ 
public 

class +
AllWorkflowTypeDeploymentSource 0
:1 2
IDeploymentSource3 D
{		 
private

 
readonly

 
IWorkflowTypeStore

 +
_workflowTypeStore

, >
;

> ?
public +
AllWorkflowTypeDeploymentSource .
(. /
IWorkflowTypeStore/ A
workflowTypeStoreB S
)S T
{ 	
_workflowTypeStore 
=  
workflowTypeStore! 2
;2 3
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
allContentStep 
=  
step! %
as& ()
AllWorkflowTypeDeploymentStep) F
;F G
if 
( 
allContentStep 
== !
null" &
)& '
{ 
return 
; 
} 
var 
data 
= 
new 
JArray !
(! "
)" #
;# $
result 
. 
Steps 
. 
Add 
( 
new  
JObject! (
(( )
new 
	JProperty 
( 
$str $
,$ %
$str& 4
)4 5
,5 6
new 
	JProperty 
( 
$str $
,$ %
data& *
)* +
) 
) 
; 
foreach   
(   
var   
workflow   !
in  " $
await  % *
_workflowTypeStore  + =
.  = >
	ListAsync  > G
(  G H
)  H I
)  I J
{!! 
var"" 

objectData"" 
=""  
JObject""! (
.""( )

FromObject"") 3
(""3 4
workflow""4 <
)""< =
;""= >

objectData%% 
.%% 
Remove%% !
(%%! "
nameof%%" (
(%%( )
workflow%%) 1
.%%1 2
Id%%2 4
)%%4 5
)%%5 6
;%%6 7
data&& 
.&& 
Add&& 
(&& 

objectData&& #
)&&# $
;&&$ %
}'' 
return)) 
;)) 
}** 	
}++ 
},, ‘
΅D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Deployment\AllWorkflowTypeDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Deployment  *
{ 
public 

class )
AllWorkflowTypeDeploymentStep .
:/ 0
DeploymentStep1 ?
{ 
public )
AllWorkflowTypeDeploymentStep ,
(, -
)- .
{ 	
Name		 
=		 
$str		 $
;		$ %
}

 	
} 
} κ
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Deployment\AllWorkflowTypeDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Deployment  *
{ 
public 

class /
#AllWorkflowTypeDeploymentStepDriver 4
:5 6
DisplayDriver7 D
<D E
DeploymentStepE S
,S T)
AllWorkflowTypeDeploymentStepU r
>r s
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /)
AllWorkflowTypeDeploymentStep		/ L
step		M Q
)		Q R
{

 	
return 
Combine 
( 
View 
( 
$str G
,G H
stepI M
)M N
.N O
LocationO W
(W X
$strX a
,a b
$strc l
)l m
,m n
View 
( 
$str I
,I J
stepK O
)O P
.P Q
LocationQ Y
(Y Z
$strZ e
,e f
$strg p
)p q
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,)
AllWorkflowTypeDeploymentStep, I
stepJ N
)N O
{ 	
return 
View 
( 
$str C
,C D
stepE I
)I J
.J K
LocationK S
(S T
$strT ]
)] ^
;^ _
} 	
} 
} „
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ActivityMetadataDisplayDriver.cs
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
  
Drivers

  '
{ 
public 

class )
ActivityMetadataDisplayDriver .
:/ 0 
SectionDisplayDriver1 E
<E F
	IActivityF O
,O P
ActivityMetadataQ a
>a b
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,
ActivityMetadata, <
section= D
,D E
BuildEditorContextF X
contextY `
)` a
{ 	
return 

Initialize 
< )
ActivityMetadataEditViewModel ;
>; <
(< =
$str= T
,T U
	viewModelV _
=>` b
{ 
	viewModel 
. 
Title 
=  !
section" )
.) *
Title* /
;/ 0
} 
) 
. 
Location 
( 
$str (
)( )
;) *
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
ActivityMetadata? O
sectionP W
,W X
IUpdateModelY e
updaterf m
,m n
BuildEditorContext	o 
context
‚ ‰
)
‰ 
{ 	
var 
	viewModel 
= 
new )
ActivityMetadataEditViewModel  =
(= >
)> ?
;? @
if 
( 
await 
context 
. 
Updater %
.% &
TryUpdateModelAsync& 9
(9 :
	viewModel: C
,C D
PrefixE K
)K L
)L M
{ 
section 
. 
Title 
= 
	viewModel  )
.) *
Title* /
?/ 0
.0 1
Trim1 5
(5 6
)6 7
;7 8
} 
return 
await 
	EditAsync "
(" #
section# *
,* +
context, 3
)3 4
;4 5
}   	
}!! 
}"" 	
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\CommitTransactionTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class .
"CommitTransactionTaskDisplayDriver 3
:4 5!
ActivityDisplayDriver6 K
<K L!
CommitTransactionTaskL a
,a b+
CommitTransactionTaskViewModel	c 
>
 ‚
{ 
	protected		 
override		 
void		 
EditActivity		  ,
(		, -!
CommitTransactionTask		- B
activity		C K
,		K L*
CommitTransactionTaskViewModel		M k
model		l q
)		q r
{

 	
} 	
	protected 
override 
void 
UpdateActivity  .
(. /*
CommitTransactionTaskViewModel/ M
modelN S
,S T!
CommitTransactionTaskU j
activityk s
)s t
{ 	
} 	
} 
} “
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\CorrelateTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class &
CorrelateTaskDisplayDriver +
:, -!
ActivityDisplayDriver. C
<C D
CorrelateTaskD Q
,Q R"
CorrelateTaskViewModelS i
>i j
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
CorrelateTask

- :
activity

; C
,

C D"
CorrelateTaskViewModel

E [
model

\ a
)

a b
{ 	
model 
. 
Value 
= 
activity "
." #
Value# (
.( )

Expression) 3
;3 4
} 	
	protected 
override 
void 
UpdateActivity  .
(. /"
CorrelateTaskViewModel/ E
modelF K
,K L
CorrelateTaskM Z
activity[ c
)c d
{ 	
activity 
. 
Value 
= 
new  
WorkflowExpression! 3
<3 4
string4 :
>: ;
(; <
model< A
.A B
ValueB G
)G H
;H I
} 	
} 
} ¤
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ForEachTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public		 

class		 $
ForEachTaskDisplayDriver		 )
:		* +!
ActivityDisplayDriver		, A
<		A B
ForEachTask		B M
,		M N 
ForEachTaskViewModel		O c
>		c d
{

 
	protected 
override 
void 
EditActivity  ,
(, -
ForEachTask- 8
activity9 A
,A B 
ForEachTaskViewModelC W
modelX ]
)] ^
{ 	
model 
.  
EnumerableExpression &
=' (
activity) 1
.1 2

Enumerable2 <
.< =

Expression= G
;G H
model 
. 
LoopVariableName "
=# $
activity% -
.- .
LoopVariableName. >
;> ?
} 	
	protected 
override 
void 
UpdateActivity  .
(. / 
ForEachTaskViewModel/ C
modelD I
,I J
ForEachTaskK V
activityW _
)_ `
{ 	
activity 
. 
LoopVariableName %
=& '
model( -
.- .
LoopVariableName. >
;> ?
activity 
. 

Enumerable 
=  !
new" %
WorkflowExpression& 8
<8 9
IEnumerable9 D
<D E
objectE K
>K L
>L M
(M N
modelN S
.S T 
EnumerableExpressionT h
)h i
;i j
} 	
} 
} Χ
–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ForkTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public		 

class		 !
ForkTaskDisplayDriver		 &
:		' (!
ActivityDisplayDriver		) >
<		> ?
ForkTask		? G
,		G H
ForkTaskViewModel		I Z
>		Z [
{

 
	protected 
override 
void 
EditActivity  ,
(, -
ForkTask- 5
activity6 >
,> ?
ForkTaskViewModel@ Q
modelR W
)W X
{ 	
model 
. 
Forks 
= 
string  
.  !
Join! %
(% &
$str& *
,* +
activity, 4
.4 5
Forks5 :
): ;
;; <
} 	
	protected 
override 
void 
UpdateActivity  .
(. /
ForkTaskViewModel/ @
modelA F
,F G
ForkTaskH P
activityQ Y
)Y Z
{ 	
activity 
. 
Forks 
= 
model "
." #
Forks# (
.( )
Split) .
(. /
$char/ 2
,2 3
StringSplitOptions4 F
.F G
RemoveEmptyEntriesG Y
)Y Z
.Z [
Select[ a
(a b
xb c
=>d f
xg h
.h i
Trimi m
(m n
)n o
)o p
.p q
ToListq w
(w x
)x y
;y z
} 	
} 
} ι
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ForLoopTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class $
ForLoopTaskDisplayDriver )
:* +!
ActivityDisplayDriver, A
<A B
ForLoopTaskB M
,M N 
ForLoopTaskViewModelO c
>c d
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
ForLoopTask

- 8
activity

9 A
,

A B 
ForLoopTaskViewModel

C W
model

X ]
)

] ^
{ 	
model 
. 
FromExpression  
=! "
activity# +
.+ ,
From, 0
.0 1

Expression1 ;
;; <
model 
. 
ToExpression 
=  
activity! )
.) *
To* ,
., -

Expression- 7
;7 8
model 
. 
LoopVariableName "
=# $
activity% -
.- .
LoopVariableName. >
;> ?
model 
. 
StepExpression  
=! "
activity# +
.+ ,
Step, 0
.0 1

Expression1 ;
;; <
} 	
	protected 
override 
void 
UpdateActivity  .
(. / 
ForLoopTaskViewModel/ C
modelD I
,I J
ForLoopTaskK V
activityW _
)_ `
{ 	
activity 
. 
From 
= 
new 
WorkflowExpression  2
<2 3
double3 9
>9 :
(: ;
model; @
.@ A
FromExpressionA O
)O P
;P Q
activity 
. 
To 
= 
new 
WorkflowExpression 0
<0 1
double1 7
>7 8
(8 9
model9 >
.> ?
ToExpression? K
)K L
;L M
activity 
. 
Step 
= 
new 
WorkflowExpression  2
<2 3
double3 9
>9 :
(: ;
model; @
.@ A
StepExpressionA O
)O P
;P Q
activity 
. 
LoopVariableName %
=& '
model( -
.- .
LoopVariableName. >
;> ?
} 	
} 
} 
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\IfElseTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class #
IfElseTaskDisplayDriver (
:) *!
ActivityDisplayDriver+ @
<@ A

IfElseTaskA K
,K L
IfElseTaskViewModelM `
>` a
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -

IfElseTask

- 7
activity

8 @
,

@ A
IfElseTaskViewModel

B U
model

V [
)

[ \
{ 	
model 
. 
ConditionExpression %
=& '
activity( 0
.0 1
	Condition1 :
.: ;

Expression; E
;E F
} 	
	protected 
override 
void 
UpdateActivity  .
(. /
IfElseTaskViewModel/ B
modelC H
,H I

IfElseTaskJ T
activityU ]
)] ^
{ 	
activity 
. 
	Condition 
=  
new! $
WorkflowExpression% 7
<7 8
bool8 <
>< =
(= >
model> C
.C D
ConditionExpressionD W
)W X
;X Y
} 	
} 
} Ώ

–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\JoinTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class !
JoinTaskDisplayDriver &
:' (!
ActivityDisplayDriver) >
<> ?
JoinTask? G
,G H
JoinTaskViewModelI Z
>Z [
{ 
	protected		 
override		 
void		 
EditActivity		  ,
(		, -
JoinTask		- 5
activity		6 >
,		> ?
JoinTaskViewModel		@ Q
model		R W
)		W X
{

 	
model 
. 
Mode 
= 
activity !
.! "
Mode" &
;& '
} 	
	protected 
override 
void 
UpdateActivity  .
(. /
JoinTaskViewModel/ @
modelA F
,F G
JoinTaskH P
activityQ Y
)Y Z
{ 	
activity 
. 
Mode 
= 
model !
.! "
Mode" &
;& '
} 	
} 
} 
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\LogTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class  
LogTaskDisplayDriver %
:& '!
ActivityDisplayDriver( =
<= >
LogTask> E
,E F
LogTaskViewModelG W
>W X
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
LogTask

- 4
activity

5 =
,

= >
LogTaskViewModel

? O
model

P U
)

U V
{ 	
model 
. 
LogLevel 
= 
activity %
.% &
LogLevel& .
;. /
model 
. 
Text 
= 
activity !
.! "
Text" &
.& '

Expression' 1
;1 2
} 	
	protected 
override 
void 
UpdateActivity  .
(. /
LogTaskViewModel/ ?
model@ E
,E F
LogTaskG N
activityO W
)W X
{ 	
activity 
. 
LogLevel 
= 
model  %
.% &
LogLevel& .
;. /
activity 
. 
Text 
= 
new 
WorkflowExpression  2
<2 3
string3 9
>9 :
(: ;
model; @
.@ A
TextA E
)E F
;F G
} 	
} 
} 
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\MissingActivityDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class (
MissingActivityDisplayDriver -
:. /!
ActivityDisplayDriver0 E
<E F
MissingActivityF U
>U V
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /
MissingActivity		/ >
activity		? G
)		G H
{

 	
return 
View 
( 
$" )
MissingActivity_Fields_Design 7
"7 8
,8 9
activity: B
)B C
.C D
LocationD L
(L M
$strM U
,U V
$strW `
)` a
;a b
} 	
} 
} Ε
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\NotifyTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class #
NotifyTaskDisplayDriver (
:) *!
ActivityDisplayDriver+ @
<@ A

NotifyTaskA K
,K L
NotifyTaskViewModelM `
>` a
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -

NotifyTask

- 7
activity

8 @
,

@ A
NotifyTaskViewModel

B U
model

V [
)

[ \
{ 	
model 
. 
NotificationType "
=# $
activity% -
.- .
NotificationType. >
;> ?
model 
. 
Message 
= 
activity $
.$ %
Message% ,
., -

Expression- 7
;7 8
} 	
	protected 
override 
void 
UpdateActivity  .
(. /
NotifyTaskViewModel/ B
modelC H
,H I

NotifyTaskJ T
activityU ]
)] ^
{ 	
activity 
. 
NotificationType %
=& '
model( -
.- .
NotificationType. >
;> ?
activity 
. 
Message 
= 
new "
WorkflowExpression# 5
<5 6
string6 <
>< =
(= >
model> C
.C D
MessageD K
)K L
;L M
} 	
} 
} θ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ScriptTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{		 
public

 

class

 #
ScriptTaskDisplayDriver

 (
:

) *!
ActivityDisplayDriver

+ @
<

@ A

ScriptTask

A K
,

K L
ScriptTaskViewModel

M `
>

` a
{ 
	protected 
override 
void 
EditActivity  ,
(, -

ScriptTask- 7
source8 >
,> ?
ScriptTaskViewModel@ S
modelT Y
)Y Z
{ 	
model 
. 
AvailableOutcomes #
=$ %
string& ,
., -
Join- 1
(1 2
$str2 6
,6 7
source8 >
.> ?
AvailableOutcomes? P
)P Q
;Q R
model 
. 
Script 
= 
source !
.! "
Script" (
.( )

Expression) 3
;3 4
} 	
	protected 
override 
void 
UpdateActivity  .
(. /
ScriptTaskViewModel/ B
modelC H
,H I

ScriptTaskJ T
activityU ]
)] ^
{ 	
activity 
. 
AvailableOutcomes &
=' (
model) .
.. /
AvailableOutcomes/ @
.@ A
SplitA F
(F G
$charG J
,J K
StringSplitOptionsL ^
.^ _
RemoveEmptyEntries_ q
)q r
.r s
Selects y
(y z
xz {
=>| ~
x	 €
.
€ 
Trim
 …
(
… †
)
† ‡
)
‡ 
.
 ‰
ToList
‰ 
(
 
)
 ‘
;
‘ ’
activity 
. 
Script 
= 
new !
WorkflowExpression" 4
<4 5
object5 ;
>; <
(< =
model= B
.B C
ScriptC I
)I J
;J K
} 	
} 
} φ
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\SetOutputTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class &
SetOutputTaskDisplayDriver +
:, -!
ActivityDisplayDriver. C
<C D
SetOutputTaskD Q
,Q R"
SetOutputTaskViewModelS i
>i j
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
SetOutputTask

- :
source

; A
,

A B"
SetOutputTaskViewModel

C Y
model

Z _
)

_ `
{ 	
model 
. 

OutputName 
= 
source %
.% &

OutputName& 0
;0 1
model 
. 
Value 
= 
source  
.  !
Value! &
.& '

Expression' 1
;1 2
} 	
	protected 
override 
void 
UpdateActivity  .
(. /"
SetOutputTaskViewModel/ E
modelF K
,K L
SetOutputTaskM Z
activity[ c
)c d
{ 	
activity 
. 

OutputName 
=  !
model" '
.' (

OutputName( 2
.2 3
Trim3 7
(7 8
)8 9
;9 :
activity 
. 
Value 
= 
new  
WorkflowExpression! 3
<3 4
object4 :
>: ;
(; <
model< A
.A B
ValueB G
)G H
;H I
} 	
} 
} 
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\SetVariableTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class (
SetVariableTaskDisplayDriver -
:. /!
ActivityDisplayDriver0 E
<E F
SetPropertyTaskF U
,U V$
SetPropertyTaskViewModelW o
>o p
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
SetPropertyTask

- <
source

= C
,

C D$
SetPropertyTaskViewModel

E ]
model

^ c
)

c d
{ 	
model 
. 
PropertyName 
=  
source! '
.' (
PropertyName( 4
;4 5
model 
. 
Value 
= 
source  
.  !
Value! &
.& '

Expression' 1
;1 2
} 	
	protected 
override 
void 
UpdateActivity  .
(. /$
SetPropertyTaskViewModel/ G
modelH M
,M N
SetPropertyTaskO ^
activity_ g
)g h
{ 	
activity 
. 
PropertyName !
=" #
model$ )
.) *
PropertyName* 6
.6 7
Trim7 ;
(; <
)< =
;= >
activity 
. 
Value 
= 
new  
WorkflowExpression! 3
<3 4
object4 :
>: ;
(; <
model< A
.A B
ValueB G
)G H
;H I
} 	
} 
} π
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\WhileLoopTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Drivers  '
{ 
public 

class &
WhileLoopTaskDisplayDriver +
:, -!
ActivityDisplayDriver. C
<C D
WhileLoopTaskD Q
,Q R"
WhileLoopTaskViewModelS i
>i j
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
WhileLoopTask

- :
source

; A
,

A B"
WhileLoopTaskViewModel

C Y
model

Z _
)

_ `
{ 	
model 
. 
ConditionExpression %
=& '
source( .
.. /
	Condition/ 8
.8 9

Expression9 C
;C D
} 	
	protected 
override 
void 
UpdateActivity  .
(. /"
WhileLoopTaskViewModel/ E
modelF K
,K L
WhileLoopTaskM Z
activity[ c
)c d
{ 	
activity 
. 
	Condition 
=  
new! $
WorkflowExpression% 7
<7 8
bool8 <
>< =
(= >
model> C
.C D
ConditionExpressionD W
.W X
TrimX \
(\ ]
)] ^
)^ _
;_ `
} 	
} 
} ?
¦D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Expressions\LiquidWorkflowExpressionEvaluator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Expressions  +
{ 
public 

class -
!LiquidWorkflowExpressionEvaluator 2
:3 4(
IWorkflowExpressionEvaluator5 Q
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
IEnumerable $
<$ %,
 IWorkflowExecutionContextHandler% E
>E F$
_workflowContextHandlersG _
;_ `
private 
readonly 
ILogger  
_logger! (
;( )
public -
!LiquidWorkflowExpressionEvaluator 0
(0 1"
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9
IEnumerable 
< ,
 IWorkflowExecutionContextHandler 8
>8 9#
workflowContextHandlers: Q
,Q R
ILogger 
< -
!LiquidWorkflowExpressionEvaluator 5
>5 6
logger7 =
) 	
{ 	"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;$
_workflowContextHandlers $
=% &#
workflowContextHandlers' >
;> ?
_logger 
= 
logger 
; 
} 	
public   
async   
Task   
<   
T   
>   
EvaluateAsync   *
<  * +
T  + ,
>  , -
(  - .
WorkflowExpression  . @
<  @ A
T  A B
>  B C

expression  D N
,  N O$
WorkflowExecutionContext  P h
workflowContext  i x
,  x y
TextEncoder	  z …
encoder
  † 
)
   
{!! 	
var"" 
templateContext"" 
=""  !!
CreateTemplateContext""" 7
(""7 8
workflowContext""8 G
)""G H
;""H I
var## 
expressionContext## !
=##" #
new##$ '.
"WorkflowExecutionExpressionContext##( J
(##J K
templateContext##K Z
,##Z [
workflowContext##\ k
)##k l
;##l m
await%% $
_workflowContextHandlers%% *
.%%* +
InvokeAsync%%+ 6
(%%6 7
(%%7 8
h%%8 9
,%%9 :
expressionContext%%; L
)%%L M
=>%%N P
h%%Q R
.%%R S%
EvaluatingExpressionAsync%%S l
(%%l m
expressionContext%%m ~
)%%~ 
,	%% €
expressionContext
%% ’
,
%%’ “
_logger
%%” ›
)
%%› 
;
%% 
var(( 
result(( 
=(( 
await(( "
_liquidTemplateManager(( 5
.((5 6
RenderAsync((6 A
(((A B

expression)) 
.)) 

Expression)) %
,))% &
encoder** 
??** 
NullEncoder** &
.**& '
Default**' .
,**. /
scope++ 
=>++ 
scope++ 
.++ 
SetValue++ '
(++' (
$str++( 2
,++2 3
workflowContext++4 C
)++C D
),, 
;,, 
return.. 
string.. 
... 
IsNullOrWhiteSpace.. ,
(.., -
result..- 3
)..3 4
?..5 6
default..7 >
(..> ?
T..? @
)..@ A
:..B C
(..D E
T..E F
)..F G
Convert..G N
...N O

ChangeType..O Y
(..Y Z
result..Z `
,..` a
typeof..b h
(..h i
T..i j
)..j k
)..k l
;..l m
}// 	
private11 
TemplateContext11 !
CreateTemplateContext11  5
(115 6$
WorkflowExecutionContext116 N
workflowContext11O ^
)11^ _
{22 	
var33 
context33 
=33 "
_liquidTemplateManager33 0
.330 1
Context331 8
;338 9
context55 
.55  
MemberAccessStrategy55 (
.55( )
Register55) 1
<551 2"
LiquidPropertyAccessor552 H
,55H I

FluidValue55J T
>55T U
(55U V
(55V W
obj55W Z
,55Z [
name55\ `
)55` a
=>55b d
obj55e h
.55h i
GetValueAsync55i v
(55v w
name55w {
)55{ |
)55| }
;55} ~
context66 
.66  
MemberAccessStrategy66 (
.66( )
Register66) 1
<661 2$
WorkflowExecutionContext662 J
>66J K
(66K L
)66L M
;66M N
context77 
.77  
MemberAccessStrategy77 (
.77( )
Register77) 1
<771 2$
WorkflowExecutionContext772 J
,77J K"
LiquidPropertyAccessor77L b
>77b c
(77c d
$str77d k
,77k l
obj77m p
=>77q s
new77t w#
LiquidPropertyAccessor	77x 
(
77 
name
77 “
=>
77” –
ToFluidValue
77— £
(
77£ ¤
obj
77¤ §
.
77§ ¨
Input
77¨ ­
,
77­ ®
name
77― ³
)
77³ ΄
)
77΄ µ
)
77µ ¶
;
77¶ ·
context88 
.88  
MemberAccessStrategy88 (
.88( )
Register88) 1
<881 2$
WorkflowExecutionContext882 J
,88J K"
LiquidPropertyAccessor88L b
>88b c
(88c d
$str88d l
,88l m
obj88n q
=>88r t
new88u x#
LiquidPropertyAccessor	88y 
(
88 
name
88 ”
=>
88• —
ToFluidValue
88 ¤
(
88¤ ¥
obj
88¥ ¨
.
88¨ ©
Output
88© ―
,
88― °
name
88± µ
)
88µ ¶
)
88¶ ·
)
88· Έ
;
88Έ Ή
context99 
.99  
MemberAccessStrategy99 (
.99( )
Register99) 1
<991 2$
WorkflowExecutionContext992 J
,99J K"
LiquidPropertyAccessor99L b
>99b c
(99c d
$str99d p
,99p q
obj99r u
=>99v x
new99y |#
LiquidPropertyAccessor	99} “
(
99“ ”
name
99” 
=>
99™ ›
ToFluidValue
99 ¨
(
99¨ ©
obj
99© ¬
.
99¬ ­

Properties
99­ ·
,
99· Έ
name
99Ή ½
)
99½ Ύ
)
99Ύ Ώ
)
99Ώ ΐ
;
99ΐ Α
return;; 
context;; 
;;; 
}<< 	
private>> 
Task>> 
<>> 

FluidValue>> 
>>>  
ToFluidValue>>! -
(>>- .
IDictionary>>. 9
<>>9 :
string>>: @
,>>@ A
object>>B H
>>>H I

dictionary>>J T
,>>T U
string>>V \
key>>] `
)>>` a
{?? 	
if@@ 
(@@ 
!@@ 

dictionary@@ 
.@@ 
ContainsKey@@ '
(@@' (
key@@( +
)@@+ ,
)@@, -
returnAA 
TaskAA 
.AA 

FromResultAA &
(AA& '
defaultAA' .
(AA. /

FluidValueAA/ 9
)AA9 :
)AA: ;
;AA; <
returnCC 
TaskCC 
.CC 

FromResultCC "
(CC" #

FluidValueCC# -
.CC- .
CreateCC. 4
(CC4 5

dictionaryCC5 ?
[CC? @
keyCC@ C
]CCC D
)CCD E
)CCE F
;CCF G
}DD 	
}EE 
}FF λ
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Handlers\DefaultWorkflowExecutionContextHandler.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  $
WorkflowContextProviders  8
{ 
public 

class 2
&DefaultWorkflowExecutionContextHandler 7
:8 9/
#WorkflowExecutionContextHandlerBase: ]
{		 
public

 
override

 
Task

 !
EvaluatingScriptAsync

 2
(

2 3*
WorkflowExecutionScriptContext

3 Q
context

R Y
)

Y Z
{ 	
context 
. !
ScopedMethodProviders )
.) *
Add* -
(- .
new. 1#
WorkflowMethodsProvider2 I
(I J
contextJ Q
.Q R
WorkflowContextR a
)a b
)b c
;c d
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} η'
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpRedirectTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

Activities% /
{ 
public 

class 
HttpRedirectTask !
:" #
TaskActivity$ 0
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
HttpRedirectTask 
(  
IStringLocalizer 
< 
HttpRedirectTask -
>- .
	localizer/ 8
,8 9 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5(
IWorkflowExpressionEvaluator (
expressionEvaluator) <
,< =

UrlEncoder 

urlEncoder !
) 	
{ 	
S 
= 
	localizer 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7 
_expressionEvaluator  
=! "
expressionEvaluator# 6
;6 7
_urlEncoder 
= 

urlEncoder $
;$ %
} 	
public!! 
override!! 
string!! 
Name!! #
=>!!$ &
nameof!!' -
(!!- .
HttpRedirectTask!!. >
)!!> ?
;!!? @
public## 
override## 
LocalizedString## '
DisplayText##( 3
=>##4 6
S##7 8
[##8 9
$str##9 M
]##M N
;##N O
public%% 
override%% 
LocalizedString%% '
Category%%( 0
=>%%1 3
S%%4 5
[%%5 6
$str%%6 <
]%%< =
;%%= >
public'' 
WorkflowExpression'' !
<''! "
string''" (
>''( )
Location''* 2
{(( 	
get)) 
=>)) 
GetProperty)) 
()) 
())  
)))  !
=>))" $
new))% (
WorkflowExpression))) ;
<)); <
string))< B
>))B C
())C D
)))D E
)))E F
;))F G
set** 
=>** 
SetProperty** 
(** 
value** $
)**$ %
;**% &
}++ 	
public-- 
bool-- 
	Permanent-- 
{.. 	
get// 
=>// 
GetProperty// 
(// 
(//  
)//  !
=>//" $
false//% *
)//* +
;//+ ,
set00 
=>00 
SetProperty00 
(00 
value00 $
)00$ %
;00% &
}11 	
public33 
override33 
IEnumerable33 #
<33# $
Outcome33$ +
>33+ ,
GetPossibleOutcomes33- @
(33@ A$
WorkflowExecutionContext33A Y
workflowContext33Z i
,33i j
ActivityContext33k z
activityContext	33{ 
)
33 ‹
{44 	
return55 
Outcomes55 
(55 
S55 
[55 
$str55 $
]55$ %
)55% &
;55& '
}66 	
public88 
override88 
async88 
Task88 "
<88" ##
ActivityExecutionResult88# :
>88: ;
ExecuteAsync88< H
(88H I$
WorkflowExecutionContext88I a
workflowContext88b q
,88q r
ActivityContext	88s ‚
activityContext
88ƒ ’
)
88’ “
{99 	
var:: 
location:: 
=:: 
await::   
_expressionEvaluator::! 5
.::5 6
EvaluateAsync::6 C
(::C D
Location::D L
,::L M
workflowContext::N ]
,::] ^
_urlEncoder::_ j
)::j k
;::k l 
_httpContextAccessor<<  
.<<  !
HttpContext<<! ,
.<<, -
Response<<- 5
.<<5 6
Redirect<<6 >
(<<> ?
location<<? G
,<<G H
	Permanent<<I R
)<<R S
;<<S T 
_httpContextAccessor==  
.==  !
HttpContext==! ,
.==, -
Items==- 2
[==2 3
WorkflowHttpResult==3 E
.==E F
Instance==F N
]==N O
===P Q
WorkflowHttpResult==R d
.==d e
Instance==e m
;==m n
return?? 
Outcomes?? 
(?? 
$str?? "
)??" #
;??# $
}@@ 	
}AA 
}BB ‘)
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpRequestEvent.cs
	namespace		 	
OrchardCore		
 
.		 
	Workflows		 
.		  
Http		  $
.		$ %

Activities		% /
{

 
public 

class 
HttpRequestEvent !
:" #
EventActivity$ 1
{ 
public 
static 
string 
	EventName &
=>' )
nameof* 0
(0 1
HttpRequestEvent1 A
)A B
;B C
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
HttpRequestEvent 
(  
IStringLocalizer 
< 
HttpRequestEvent -
>- .
	localizer/ 8
,8 9 
IHttpContextAccessor  
httpContextAccessor! 4
) 	
{ 	
S 
= 
	localizer 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
override 
string 
Name #
=>$ &
	EventName' 0
;0 1
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 M
]M N
;N O
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 <
]< =
;= >
public 
string 

HttpMethod  
{   	
get!! 
=>!! 
GetProperty!! 
<!! 
string!! %
>!!% &
(!!& '
)!!' (
;!!( )
set"" 
=>"" 
SetProperty"" 
("" 
value"" $
)""$ %
;""% &
}## 	
public%% 
string%% 
Url%% 
{&& 	
get'' 
=>'' 
GetProperty'' 
<'' 
string'' %
>''% &
(''& '
)''' (
;''( )
set(( 
=>(( 
SetProperty(( 
((( 
value(( $
)(($ %
;((% &
})) 	
public++ 
bool++ $
ValidateAntiforgeryToken++ ,
{,, 	
get-- 
=>-- 
GetProperty-- 
(-- 
(--  
)--  !
=>--" $
true--% )
)--) *
;--* +
set.. 
=>.. 
SetProperty.. 
(.. 
value.. $
)..$ %
;..% &
}// 	
public11 
int11 
TokenLifeSpan11  
{22 	
get33 
=>33 
GetProperty33 
(33 
(33  
)33  !
=>33" $
$num33% &
)33& '
;33' (
set44 
=>44 
SetProperty44 
(44 
value44 $
)44$ %
;44% &
}55 	
public77 
override77 
bool77 

CanExecute77 '
(77' ($
WorkflowExecutionContext77( @
workflowContext77A P
,77P Q
ActivityContext77R a
activityContext77b q
)77q r
{88 	
var99 
httpContext99 
=99  
_httpContextAccessor99 2
.992 3
HttpContext993 >
;99> ?
var:: 
httpRequest:: 
=:: 
httpContext:: )
.::) *
Request::* 1
;::1 2
var;; 
isMatch;; 
=;; 
String;;  
.;;  !
Equals;;! '
(;;' (

HttpMethod;;( 2
,;;2 3
httpRequest;;4 ?
.;;? @
Method;;@ F
,;;F G
StringComparison;;H X
.;;X Y
OrdinalIgnoreCase;;Y j
);;j k
;;;k l
return== 
isMatch== 
;== 
}>> 	
public@@ 
override@@ 
IEnumerable@@ #
<@@# $
Outcome@@$ +
>@@+ ,
GetPossibleOutcomes@@- @
(@@@ A$
WorkflowExecutionContext@@A Y
workflowContext@@Z i
,@@i j
ActivityContext@@k z
activityContext	@@{ 
)
@@ ‹
{AA 	
returnBB 
OutcomesBB 
(BB 
SBB 
[BB 
$strBB $
]BB$ %
)BB% &
;BB& '
}CC 	
publicEE 
overrideEE #
ActivityExecutionResultEE /
ResumeEE0 6
(EE6 7$
WorkflowExecutionContextEE7 O
workflowContextEEP _
,EE_ `
ActivityContextEEa p
activityContext	EEq €
)
EE€ 
{FF 	
returnGG 
OutcomesGG 
(GG 
$strGG "
)GG" #
;GG# $
}HH 	
}II 
}JJ …B
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpRequestFilterEvent.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

Activities% /
{ 
public 

class "
HttpRequestFilterEvent '
:( )
EventActivity* 7
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
static 
string 
	EventName &
=>' )
nameof* 0
(0 1"
HttpRequestFilterEvent1 G
)G H
;H I
public "
HttpRequestFilterEvent %
(% &
IStringLocalizer& 6
<6 7"
HttpRequestFilterEvent7 M
>M N
	localizerO X
,X Y 
IHttpContextAccessorZ n 
httpContextAccessor	o ‚
)
‚ ƒ
{ 	
S 
= 
	localizer 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
override 
string 
Name #
=>$ &
	EventName' 0
;0 1
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 T
]T U
;U V
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 <
]< =
;= >
public 
string 

HttpMethod  
{   	
get!! 
=>!! 
GetProperty!! 
<!! 
string!! %
>!!% &
(!!& '
)!!' (
;!!( )
set"" 
=>"" 
SetProperty"" 
("" 
value"" $
)""$ %
;""% &
}## 	
public%% 
string%% 
ControllerName%% $
{&& 	
get'' 
=>'' 
('' 
string'' 
)'' 
RouteValues'' &
[''& '
$str''' 3
]''3 4
;''4 5
set(( 
=>(( 
SetRouteValue((  
(((  !
$str((! -
,((- .
value((/ 4
)((4 5
;((5 6
})) 	
public++ 
string++ 

ActionName++  
{,, 	
get-- 
=>-- 
(-- 
string-- 
)-- 
RouteValues-- &
[--& '
$str--' /
]--/ 0
;--0 1
set.. 
=>.. 
SetRouteValue..  
(..  !
$str..! )
,..) *
value..+ 0
)..0 1
;..1 2
}// 	
public11 
string11 
AreaName11 
{22 	
get33 
=>33 
(33 
string33 
)33 
RouteValues33 &
[33& '
$str33' -
]33- .
;33. /
set44 
=>44 
SetRouteValue44  
(44  !
$str44! '
,44' (
value44) .
)44. /
;44/ 0
}55 	
public77  
RouteValueDictionary77 #
RouteValues77$ /
{88 	
get99 
=>99 
GetProperty99 
(99 
(99  
)99  !
=>99" $
new99% ( 
RouteValueDictionary99) =
(99= >
)99> ?
)99? @
;99@ A
set:: 
=>:: 
SetProperty:: 
(:: 
value:: $
)::$ %
;::% &
};; 	
public== 
override== 
bool== 

CanExecute== '
(==' ($
WorkflowExecutionContext==( @
workflowContext==A P
,==P Q
ActivityContext==R a
activityContext==b q
)==q r
{>> 	
var?? 
httpContext?? 
=??  
_httpContextAccessor?? 2
.??2 3
HttpContext??3 >
;??> ?
var@@ 
httpRequest@@ 
=@@ 
httpContext@@ )
.@@) *
Request@@* 1
;@@1 2
varAA 
isHttpMethodMatchAA !
=AA" #
StringAA$ *
.AA* +
EqualsAA+ 1
(AA1 2

HttpMethodAA2 <
,AA< =
httpRequestAA> I
.AAI J
MethodAAJ P
,AAP Q
StringComparisonAAR b
.AAb c
OrdinalIgnoreCaseAAc t
)AAt u
;AAu v
ifCC 
(CC 
!CC 
isHttpMethodMatchCC "
)CC" #
{DD 
returnEE 
falseEE 
;EE 
}FF 
varHH 
routeValuesHH 
=HH 
RouteValuesHH )
;HH) *
varII 
currentRouteValuesII "
=II# $
httpContextII% 0
.II0 1
RequestII1 8
.II8 9
RouteValuesII9 D
;IID E
varJJ 
isRouteMatchJJ 
=JJ 
RouteMatchesJJ +
(JJ+ ,
routeValuesJJ, 7
,JJ7 8
currentRouteValuesJJ9 K
)JJK L
;JJL M
ifLL 
(LL 
!LL 
isRouteMatchLL 
)LL 
{MM 
returnNN 
falseNN 
;NN 
}OO 
returnQQ 
trueQQ 
;QQ 
}RR 	
publicTT 
overrideTT 
IEnumerableTT #
<TT# $
OutcomeTT$ +
>TT+ ,
GetPossibleOutcomesTT- @
(TT@ A$
WorkflowExecutionContextTTA Y
workflowContextTTZ i
,TTi j
ActivityContextTTk z
activityContext	TT{ 
)
TT ‹
{UU 	
returnVV 
OutcomesVV 
(VV 
SVV 
[VV 
$strVV '
]VV' (
)VV( )
;VV) *
}WW 	
publicYY 
overrideYY #
ActivityExecutionResultYY /
ResumeYY0 6
(YY6 7$
WorkflowExecutionContextYY7 O
workflowContextYYP _
,YY_ `
ActivityContextYYa p
activityContext	YYq €
)
YY€ 
{ZZ 	
return[[ 
Outcomes[[ 
([[ 
$str[[ %
)[[% &
;[[& '
}\\ 	
private^^ 
void^^ 
SetRouteValue^^ "
<^^" #
T^^# $
>^^$ %
(^^% &
string^^& ,
name^^- 1
,^^1 2
T^^3 4
value^^5 :
)^^: ;
{__ 	
var`` 
routeValues`` 
=`` 
RouteValues`` )
;``) *
routeValuesaa 
[aa 
nameaa 
]aa 
=aa 
valueaa  %
;aa% &
RouteValuesbb 
=bb 
routeValuesbb %
;bb% &
}cc 	
privateee 
boolee 
RouteMatchesee !
(ee! " 
RouteValueDictionaryee" 6
aee7 8
,ee8 9 
RouteValueDictionaryee: N
beeO P
)eeP Q
{ff 	
returngg 
agg 
.gg 
Allgg 
(gg 
xgg 
=>gg 
{hh 
varii 
valueAii 
=ii 
xii 
.ii 
Valueii $
?ii$ %
.ii% &
ToStringii& .
(ii. /
)ii/ 0
;ii0 1
returnjj 
bjj 
.jj 
ContainsKeyjj $
(jj$ %
xjj% &
.jj& '
Keyjj' *
)jj* +
&&jj, .
Stringjj/ 5
.jj5 6
Equalsjj6 <
(jj< =
valueAjj= C
,jjC D
bjjE F
[jjF G
xjjG H
.jjH I
KeyjjI L
]jjL M
?jjM N
.jjN O
ToStringjjO W
(jjW X
)jjX Y
,jjY Z
StringComparisonjj[ k
.jjk l
OrdinalIgnoreCasejjl }
)jj} ~
;jj~ 
}kk 
)kk 
;kk 
}ll 	
}mm 
}nn Ή¶
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpRequestTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

Activities% /
{ 
public 

class 
HttpRequestTask  
:! "
TaskActivity# /
{ 
private 
static 
readonly 

Dictionary  *
<* +
int+ .
,. /
string0 6
>6 7$
HttpStatusCodeDictionary8 P
=Q R
newS V

DictionaryW a
<a b
intb e
,e f
stringg m
>m n
{ 	
{ 
$num 
, 
$str 
} 
,  
{ 
$num 
, 
$str )
}* +
,+ ,
{ 
$num 
, 
$str  
}! "
," #
{ 
$num 
, 
$str 
} 
, 
{ 
$num 
, 
$str 
} 
,  
{ 
$num 
, 
$str 
}  
,  !
{ 
$num 
, 
$str 3
}4 5
,5 6
{ 
$num 
, 
$str  
}! "
," #
{ 
$num 
, 
$str #
}$ %
,% &
{ 
$num 
, 
$str %
}& '
,' (
{ 
$num 
, 
$str "
}# $
,$ %
{   
$num   
,   
$str   &
}  ' (
,  ( )
{!! 
$num!! 
,!! 
$str!! 
}!! 
,!!  
{"" 
$num"" 
,"" 
$str"" &
}""' (
,""( )
{## 
$num## 
,## 
$str## '
}##( )
,##) *
{$$ 
$num$$ 
,$$ 
$str$$ 
}$$ 
,$$ 
{%% 
$num%% 
,%% 
$str%% 
}%%  !
,%%! "
{&& 
$num&& 
,&& 
$str&& "
}&&# $
,&&$ %
{'' 
$num'' 
,'' 
$str'' 
}''  !
,''! "
{(( 
$num(( 
,(( 
$str(( (
}(() *
,((* +
{)) 
$num)) 
,)) 
$str)) (
}))) *
,))* +
{** 
$num** 
,** 
$str** !
}**" #
,**# $
{++ 
$num++ 
,++ 
$str++ "
}++# $
,++$ %
{,, 
$num,, 
,,, 
$str,, &
},,' (
,,,( )
{-- 
$num-- 
,-- 
$str-- 
}--  !
,--! "
{.. 
$num.. 
,.. 
$str.. 
}..  !
,..! "
{// 
$num// 
,// 
$str// (
}//) *
,//* +
{00 
$num00 
,00 
$str00 $
}00% &
,00& '
{11 
$num11 
,11 
$str11 3
}114 5
,115 6
{22 
$num22 
,22 
$str22 %
}22& '
,22' (
{33 
$num33 
,33 
$str33 
}33  
,33  !
{44 
$num44 
,44 
$str44 
}44 
,44 
{55 
$num55 
,55 
$str55 %
}55& '
,55' (
{66 
$num66 
,66 
$str66 )
}66* +
,66+ ,
{77 
$num77 
,77 
$str77 '
}77( )
,77) *
{88 
$num88 
,88 
$str88 *
}88+ ,
,88, -
{99 
$num99 
,99 
$str99 ,
}99- .
,99. /
{:: 
$num:: 
,:: 
$str:: 5
}::6 7
,::7 8
{;; 
$num;; 
,;; 
$str;; (
};;) *
,;;* +
{<< 
$num<< 
,<< 
$str<< "
}<<# $
,<<$ %
{== 
$num== 
,== 
$str== )
}==* +
,==+ ,
{>> 
$num>> 
,>> 
$str>> *
}>>+ ,
,>>, -
{?? 
$num?? 
,?? 
$str?? 
}?? 
,?? 
{@@ 
$num@@ 
,@@ 
$str@@ '
}@@( )
,@@) *
{AA 
$numAA 
,AA 
$strAA &
}AA' (
,AA( )
{BB 
$numBB 
,BB 
$strBB +
}BB, -
,BB- .
{CC 
$numCC 
,CC 
$strCC '
}CC( )
,CC) *
{DD 
$numDD 
,DD 
$strDD 5
}DD6 7
,DD7 8
{EE 
$numEE 
,EE 
$strEE 8
}EE9 :
,EE: ;
{FF 
$numFF 
,FF 
$strFF 3
}FF4 5
,FF5 6
{GG 
$numGG 
,GG 
$strGG +
}GG, -
,GG- .
{HH 
$numHH 
,HH 
$strHH +
}HH, -
,HH- .
{II 
$numII 
,II 
$strII %
}II& '
,II' (
{JJ 
$numJJ 
,JJ 
$strJJ !
}JJ" #
,JJ# $
{KK 
$numKK 
,KK 
$strKK )
}KK* +
,KK+ ,
{LL 
$numLL 
,LL 
$strLL %
}LL& '
,LL' (
{MM 
$numMM 
,MM 
$strMM 0
}MM1 2
,MM2 3
{NN 
$numNN 
,NN 
$strNN -
}NN. /
,NN/ 0
{OO 
$numOO 
,OO 
$strOO *
}OO+ ,
,OO, -
{PP 
$numPP 
,PP 
$strPP #
}PP$ %
,PP% &
{QQ 
$numQQ 
,QQ 
$strQQ "
}QQ# $
,QQ$ %
{RR 
$numRR 
,RR 
$strRR 5
}RR6 7
,RR7 8
{SS 
$numSS 
,SS 
$strSS 3
}SS4 5
}TT 	
;TT	 

privateVV 
staticVV 
readonlyVV 

HttpClientVV  *
_httpClientVV+ 6
=VV7 8
newVV9 <

HttpClientVV= G
(VVG H
)VVH I
;VVI J
privateWW 
readonlyWW (
IWorkflowExpressionEvaluatorWW 5 
_expressionEvaluatorWW6 J
;WWJ K
privateXX 
readonlyXX 
IStringLocalizerXX )
SXX* +
;XX+ ,
privateYY 
readonlyYY 

UrlEncoderYY #
_urlEncoderYY$ /
;YY/ 0
public[[ 
HttpRequestTask[[ 
([[ 
IStringLocalizer\\ 
<\\ 
HttpRequestTask\\ ,
>\\, -
	localizer\\. 7
,\\7 8(
IWorkflowExpressionEvaluator]] (
expressionEvaluator]]) <
,]]< =

UrlEncoder^^ 

urlEncoder^^ !
)__ 	
{`` 	
Saa 
=aa 
	localizeraa 
;aa  
_expressionEvaluatorbb  
=bb! "
expressionEvaluatorbb# 6
;bb6 7
_urlEncodercc 
=cc 

urlEncodercc $
;cc$ %
}dd 	
publicff 
overrideff 
stringff 
Nameff #
=>ff$ &
nameofff' -
(ff- .
HttpRequestTaskff. =
)ff= >
;ff> ?
publichh 
overridehh 
LocalizedStringhh '
DisplayTexthh( 3
=>hh4 6
Shh7 8
[hh8 9
$strhh9 L
]hhL M
;hhM N
publicjj 
overridejj 
LocalizedStringjj '
Categoryjj( 0
=>jj1 3
Sjj4 5
[jj5 6
$strjj6 <
]jj< =
;jj= >
publicll 
WorkflowExpressionll !
<ll! "
stringll" (
>ll( )
Urlll* -
{mm 	
getnn 
=>nn 
GetPropertynn 
(nn 
(nn  
)nn  !
=>nn" $
newnn% (
WorkflowExpressionnn) ;
<nn; <
stringnn< B
>nnB C
(nnC D
)nnD E
)nnE F
;nnF G
setoo 
=>oo 
SetPropertyoo 
(oo 
valueoo $
)oo$ %
;oo% &
}pp 	
publicrr 
stringrr 

HttpMethodrr  
{ss 	
gettt 
=>tt 
GetPropertytt 
(tt 
(tt  
)tt  !
=>tt" $
HttpMethodstt% 0
.tt0 1
Gettt1 4
)tt4 5
;tt5 6
setuu 
=>uu 
SetPropertyuu 
(uu 
valueuu $
)uu$ %
;uu% &
}vv 	
publicxx 
WorkflowExpressionxx !
<xx! "
stringxx" (
>xx( )
Headersxx* 1
{yy 	
getzz 
=>zz 
GetPropertyzz 
(zz 
(zz  
)zz  !
=>zz" $
newzz% (
WorkflowExpressionzz) ;
<zz; <
stringzz< B
>zzB C
(zzC D
)zzD E
)zzE F
;zzF G
set{{ 
=>{{ 
SetProperty{{ 
({{ 
value{{ $
){{$ %
;{{% &
}|| 	
public~~ 
WorkflowExpression~~ !
<~~! "
string~~" (
>~~( )
Body~~* .
{ 	
get
€€ 
=>
€€ 
GetProperty
€€ 
(
€€ 
(
€€  
)
€€  !
=>
€€" $
new
€€% ( 
WorkflowExpression
€€) ;
<
€€; <
string
€€< B
>
€€B C
(
€€C D
)
€€D E
)
€€E F
;
€€F G
set
 
=>
 
SetProperty
 
(
 
value
 $
)
$ %
;
% &
}
‚‚ 	
public
„„  
WorkflowExpression
„„ !
<
„„! "
string
„„" (
>
„„( )
ContentType
„„* 5
{
…… 	
get
†† 
=>
†† 
GetProperty
†† 
(
†† 
(
††  
)
††  !
=>
††" $
new
††% ( 
WorkflowExpression
††) ;
<
††; <
string
††< B
>
††B C
(
††C D
$str
††D V
)
††V W
)
††W X
;
††X Y
set
‡‡ 
=>
‡‡ 
SetProperty
‡‡ 
(
‡‡ 
value
‡‡ $
)
‡‡$ %
;
‡‡% &
}
 	
public
 
string
 
HttpResponseCodes
 '
{
‹‹ 	
get
 
=>
 
GetProperty
 
(
 
(
  
)
  !
=>
" $
$str
% *
)
* +
;
+ ,
set
 
=>
 
SetProperty
 
(
 
value
 $
)
$ %
;
% &
}
 	
public
 
override
 
IEnumerable
 #
<
# $
Outcome
$ +
>
+ ,!
GetPossibleOutcomes
- @
(
@ A&
WorkflowExecutionContext
A Y
workflowContext
Z i
,
i j
ActivityContext
k z
activityContext{ 
) ‹
{
‘‘ 	
var
’’ 
outcomes
’’ 
=
’’ 
!
’’ 
string
’’ "
.
’’" # 
IsNullOrWhiteSpace
’’# 5
(
’’5 6
HttpResponseCodes
’’6 G
)
’’G H
?
““ 
HttpResponseCodes
““ #
.
““# $
Split
““$ )
(
““) *
$char
““* -
,
““- . 
StringSplitOptions
““/ A
.
““A B 
RemoveEmptyEntries
““B T
)
““T U
.
““U V
Select
““V \
(
““\ ]
x
““] ^
=>
““_ a
{
”” 
var
•• 
status
•• 
=
••  
int
••! $
.
••$ %
Parse
••% *
(
••* +
x
••+ ,
.
••, -
Trim
••- 1
(
••1 2
)
••2 3
)
••3 4
;
••4 5
var
—— 
description
—— #
=
——$ %&
HttpStatusCodeDictionary
——& >
.
——> ?
TryGetValue
——? J
(
——J K
status
——K Q
,
——Q R
out
——S V
var
——W Z
text
——[ _
)
——_ `
?
 
$"
 
{
 
status
 #
}
# $
{
% &
text
& *
}
* +
"
+ ,
:
™™ 
status
™™  
.
™™  !
ToString
™™! )
(
™™) *
)
™™* +
;
 
return
 
new
 
Outcome
 &
(
& '
status
' -
.
- .
ToString
. 6
(
6 7
)
7 8
,
8 9
new
: =
LocalizedString
> M
(
M N
description
N Y
,
Y Z
description
[ f
)
f g
)
g h
;
h i
}
 
)
 
.
 
ToList
 
(
 
)
 
:
 
new
 
List
 
<
 
Outcome
 "
>
" #
(
# $
)
$ %
;
% &
outcomes
 
.
 
Add
 
(
 
new
 
Outcome
 $
(
$ %
$str
% :
,
: ;
S
< =
[
= >
$str
> U
]
U V
)
V W
)
W X
;
X Y
return
΅΅ 
outcomes
΅΅ 
;
΅΅ 
}
ΆΆ 	
public
¤¤ 
override
¤¤ 
async
¤¤ 
Task
¤¤ "
<
¤¤" #%
ActivityExecutionResult
¤¤# :
>
¤¤: ;
ExecuteAsync
¤¤< H
(
¤¤H I&
WorkflowExecutionContext
¤¤I a
workflowContext
¤¤b q
,
¤¤q r
ActivityContext¤¤s ‚
activityContext¤¤ƒ ’
)¤¤’ “
{
¥¥ 	
var
¦¦ 
headersText
¦¦ 
=
¦¦ 
await
¦¦ #"
_expressionEvaluator
¦¦$ 8
.
¦¦8 9
EvaluateAsync
¦¦9 F
(
¦¦F G
Headers
¦¦G N
,
¦¦N O
workflowContext
¦¦P _
,
¦¦_ `
_urlEncoder
¦¦a l
)
¦¦l m
;
¦¦m n
var
§§ 
headers
§§ 
=
§§ 
ParseHeaders
§§ &
(
§§& '
headersText
§§' 2
)
§§2 3
;
§§3 4
var
©© 

httpMethod
©© 
=
©© 

HttpMethod
©© '
;
©©' (
var
ªª 
url
ªª 
=
ªª 
await
ªª "
_expressionEvaluator
ªª 0
.
ªª0 1
EvaluateAsync
ªª1 >
(
ªª> ?
Url
ªª? B
,
ªªB C
workflowContext
ªªD S
,
ªªS T
_urlEncoder
ªªU `
)
ªª` a
;
ªªa b
var
«« 
request
«« 
=
«« 
new
««  
HttpRequestMessage
«« 0
(
««0 1
new
««1 4

HttpMethod
««5 ?
(
««? @

httpMethod
««@ J
)
««J K
,
««K L
url
««M P
)
««P Q
;
««Q R
foreach
¬¬ 
(
¬¬ 
var
¬¬ 
header
¬¬ 
in
¬¬  "
headers
¬¬# *
)
¬¬* +
{
­­ 
request
®® 
.
®® 
Headers
®® 
.
®®  %
TryAddWithoutValidation
®®  7
(
®®7 8
header
®®8 >
.
®®> ?
Key
®®? B
,
®®B C
header
®®D J
.
®®J K
Value
®®K P
)
®®P Q
;
®®Q R
}
―― 
if
±± 
(
±± 
HttpMethods
±± 
.
±± 
IsPatch
±± #
(
±±# $

httpMethod
±±$ .
)
±±. /
||
±±0 2
HttpMethods
±±3 >
.
±±> ?
IsPost
±±? E
(
±±E F

httpMethod
±±F P
)
±±P Q
||
±±R T
HttpMethods
±±U `
.
±±` a
IsPut
±±a f
(
±±f g

httpMethod
±±g q
)
±±q r
)
±±r s
{
²² 
var
³³ 
body
³³ 
=
³³ 
await
³³  "
_expressionEvaluator
³³! 5
.
³³5 6
EvaluateAsync
³³6 C
(
³³C D
Body
³³D H
,
³³H I
workflowContext
³³J Y
,
³³Y Z
null
³³[ _
)
³³_ `
;
³³` a
var
΄΄ 
contentType
΄΄ 
=
΄΄  !
await
΄΄" '"
_expressionEvaluator
΄΄( <
.
΄΄< =
EvaluateAsync
΄΄= J
(
΄΄J K
ContentType
΄΄K V
,
΄΄V W
workflowContext
΄΄X g
,
΄΄g h
_urlEncoder
΄΄i t
)
΄΄t u
;
΄΄u v
request
µµ 
.
µµ 
Content
µµ 
=
µµ  !
new
µµ" %
StringContent
µµ& 3
(
µµ3 4
body
µµ4 8
,
µµ8 9
Encoding
µµ: B
.
µµB C
UTF8
µµC G
,
µµG H
contentType
µµI T
)
µµT U
;
µµU V
}
¶¶ 
var
ΈΈ 
response
ΈΈ 
=
ΈΈ 
await
ΈΈ  
_httpClient
ΈΈ! ,
.
ΈΈ, -
	SendAsync
ΈΈ- 6
(
ΈΈ6 7
request
ΈΈ7 >
,
ΈΈ> ?"
HttpCompletionOption
ΈΈ@ T
.
ΈΈT U!
ResponseContentRead
ΈΈU h
)
ΈΈh i
;
ΈΈi j
var
ΉΉ 
responseCodes
ΉΉ 
=
ΉΉ  
ParseResponseCodes
ΉΉ  2
(
ΉΉ2 3
HttpResponseCodes
ΉΉ3 D
)
ΉΉD E
;
ΉΉE F
var
ΊΊ 
outcome
ΊΊ 
=
ΊΊ 
responseCodes
ΊΊ '
.
ΊΊ' (
FirstOrDefault
ΊΊ( 6
(
ΊΊ6 7
x
ΊΊ7 8
=>
ΊΊ9 ;
x
ΊΊ< =
==
ΊΊ> @
(
ΊΊA B
int
ΊΊB E
)
ΊΊE F
response
ΊΊF N
.
ΊΊN O

StatusCode
ΊΊO Y
)
ΊΊY Z
;
ΊΊZ [
workflowContext
ΌΌ 
.
ΌΌ 

LastResult
ΌΌ &
=
ΌΌ' (
new
ΌΌ) ,
{
½½ 
Body
ΎΎ 
=
ΎΎ 
await
ΎΎ 
response
ΎΎ %
.
ΎΎ% &
Content
ΎΎ& -
.
ΎΎ- .
ReadAsStringAsync
ΎΎ. ?
(
ΎΎ? @
)
ΎΎ@ A
,
ΎΎA B
Headers
ΏΏ 
=
ΏΏ 
response
ΏΏ "
.
ΏΏ" #
Headers
ΏΏ# *
.
ΏΏ* +
ToDictionary
ΏΏ+ 7
(
ΏΏ7 8
x
ΏΏ8 9
=>
ΏΏ: <
x
ΏΏ= >
.
ΏΏ> ?
Key
ΏΏ? B
)
ΏΏB C
,
ΏΏC D

StatusCode
ΐΐ 
=
ΐΐ 
response
ΐΐ %
.
ΐΐ% &

StatusCode
ΐΐ& 0
,
ΐΐ0 1
ReasonPhrase
ΑΑ 
=
ΑΑ 
response
ΑΑ '
.
ΑΑ' (
ReasonPhrase
ΑΑ( 4
,
ΑΑ4 5!
IsSuccessStatusCode
ΒΒ #
=
ΒΒ$ %
response
ΒΒ& .
.
ΒΒ. /!
IsSuccessStatusCode
ΒΒ/ B
}
ΓΓ 
;
ΓΓ 
return
ΕΕ 
Outcomes
ΕΕ 
(
ΕΕ 
outcome
ΕΕ #
!=
ΕΕ$ &
$num
ΕΕ' (
?
ΕΕ) *
outcome
ΕΕ+ 2
.
ΕΕ2 3
ToString
ΕΕ3 ;
(
ΕΕ; <
)
ΕΕ< =
:
ΕΕ> ?
$str
ΕΕ@ U
)
ΕΕU V
;
ΕΕV W
}
ΖΖ 	
private
ΘΘ 
IEnumerable
ΘΘ 
<
ΘΘ 
KeyValuePair
ΘΘ (
<
ΘΘ( )
string
ΘΘ) /
,
ΘΘ/ 0
string
ΘΘ1 7
>
ΘΘ7 8
>
ΘΘ8 9
ParseHeaders
ΘΘ: F
(
ΘΘF G
string
ΘΘG M
text
ΘΘN R
)
ΘΘR S
{
ΙΙ 	
if
ΚΚ 
(
ΚΚ 
string
ΚΚ 
.
ΚΚ  
IsNullOrWhiteSpace
ΚΚ )
(
ΚΚ) *
text
ΚΚ* .
)
ΚΚ. /
)
ΚΚ/ 0
return
ΛΛ 

Enumerable
ΛΛ !
.
ΛΛ! "
Empty
ΛΛ" '
<
ΛΛ' (
KeyValuePair
ΛΛ( 4
<
ΛΛ4 5
string
ΛΛ5 ;
,
ΛΛ; <
string
ΛΛ= C
>
ΛΛC D
>
ΛΛD E
(
ΛΛE F
)
ΛΛF G
;
ΛΛG H
return
ΝΝ 
from
ΞΞ 
header
ΞΞ 
in
ΞΞ 
text
ΞΞ #
.
ΞΞ# $
Split
ΞΞ$ )
(
ΞΞ) *
new
ΞΞ* -
[
ΞΞ- .
]
ΞΞ. /
{
ΞΞ0 1
$str
ΞΞ2 8
,
ΞΞ8 9
$str
ΞΞ: >
,
ΞΞ> ?
$str
ΞΞ@ D
}
ΞΞE F
,
ΞΞF G 
StringSplitOptions
ΞΞH Z
.
ΞΞZ [ 
RemoveEmptyEntries
ΞΞ[ m
)
ΞΞm n
.
ΞΞn o
Select
ΞΞo u
(
ΞΞu v
x
ΞΞv w
=>
ΞΞx z
x
ΞΞ{ |
.
ΞΞ| }
TrimΞΞ} 
(ΞΞ ‚
)ΞΞ‚ ƒ
)ΞΞƒ „
let
ΟΟ 
pair
ΟΟ 
=
ΟΟ 
header
ΟΟ !
.
ΟΟ! "
Split
ΟΟ" '
(
ΟΟ' (
$char
ΟΟ( +
,
ΟΟ+ ,
$num
ΟΟ- .
)
ΟΟ. /
where
ΠΠ 
pair
ΠΠ 
.
ΠΠ 
Length
ΠΠ !
==
ΠΠ" $
$num
ΠΠ% &
select
ΡΡ 
new
ΡΡ 
KeyValuePair
ΡΡ '
<
ΡΡ' (
string
ΡΡ( .
,
ΡΡ. /
string
ΡΡ0 6
>
ΡΡ6 7
(
ΡΡ7 8
pair
ΡΡ8 <
[
ΡΡ< =
$num
ΡΡ= >
]
ΡΡ> ?
,
ΡΡ? @
pair
ΡΡA E
[
ΡΡE F
$num
ΡΡF G
]
ΡΡG H
)
ΡΡH I
;
ΡΡI J
}
ÒÒ 	
private
ΤΤ 
IEnumerable
ΤΤ 
<
ΤΤ 
int
ΤΤ 
>
ΤΤ   
ParseResponseCodes
ΤΤ! 3
(
ΤΤ3 4
string
ΤΤ4 :
text
ΤΤ; ?
)
ΤΤ? @
{
ΥΥ 	
return
ΦΦ 
from
ΧΧ 
code
ΧΧ 
in
ΧΧ 
text
ΧΧ !
.
ΧΧ! "
Split
ΧΧ" '
(
ΧΧ' (
$char
ΧΧ( +
,
ΧΧ+ , 
StringSplitOptions
ΧΧ- ?
.
ΧΧ? @ 
RemoveEmptyEntries
ΧΧ@ R
)
ΧΧR S
select
ΨΨ 
int
ΨΨ 
.
ΨΨ 
Parse
ΨΨ  
(
ΨΨ  !
code
ΨΨ! %
)
ΨΨ% &
;
ΨΨ& '
}
ΩΩ 	
}
ΪΪ 
}ΫΫ λM
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpResponseTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

Activities% /
{ 
public 

class 
HttpResponseTask !
:" #
TaskActivity$ 0
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
public 
HttpResponseTask 
(  
IStringLocalizer 
< 
HttpResponseTask -
>- .
	localizer/ 8
,8 9 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5(
IWorkflowExpressionEvaluator (
expressionEvaluator) <
,< =

UrlEncoder 

urlEncoder !
) 	
{ 	
S 
= 
	localizer 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7 
_expressionEvaluator    
=  ! "
expressionEvaluator  # 6
;  6 7
_urlEncoder!! 
=!! 

urlEncoder!! $
;!!$ %
}"" 	
public$$ 
override$$ 
string$$ 
Name$$ #
=>$$$ &
nameof$$' -
($$- .
HttpResponseTask$$. >
)$$> ?
;$$? @
public&& 
override&& 
LocalizedString&& '
DisplayText&&( 3
=>&&4 6
S&&7 8
[&&8 9
$str&&9 M
]&&M N
;&&N O
public(( 
override(( 
LocalizedString(( '
Category((( 0
=>((1 3
S((4 5
[((5 6
$str((6 <
]((< =
;((= >
public** 
WorkflowExpression** !
<**! "
string**" (
>**( )
Content*** 1
{++ 	
get,, 
=>,, 
GetProperty,, 
(,, 
(,,  
),,  !
=>,," $
new,,% (
WorkflowExpression,,) ;
<,,; <
string,,< B
>,,B C
(,,C D
),,D E
),,E F
;,,F G
set-- 
=>-- 
SetProperty-- 
(-- 
value-- $
)--$ %
;--% &
}.. 	
public00 
int00 
HttpStatusCode00 !
{11 	
get22 
=>22 
GetProperty22 
(22 
(22  
)22  !
=>22" $
$num22% (
)22( )
;22) *
set33 
=>33 
SetProperty33 
(33 
value33 $
)33$ %
;33% &
}44 	
public66 
WorkflowExpression66 !
<66! "
string66" (
>66( )
Headers66* 1
{77 	
get88 
=>88 
GetProperty88 
(88 
(88  
)88  !
=>88" $
new88% (
WorkflowExpression88) ;
<88; <
string88< B
>88B C
(88C D
)88D E
)88E F
;88F G
set99 
=>99 
SetProperty99 
(99 
value99 $
)99$ %
;99% &
}:: 	
public<< 
WorkflowExpression<< !
<<<! "
string<<" (
><<( )
ContentType<<* 5
{== 	
get>> 
=>>> 
GetProperty>> 
(>> 
(>>  
)>>  !
=>>>" $
new>>% (
WorkflowExpression>>) ;
<>>; <
string>>< B
>>>B C
(>>C D
$str>>D V
)>>V W
)>>W X
;>>X Y
set?? 
=>?? 
SetProperty?? 
(?? 
value?? $
)??$ %
;??% &
}@@ 	
publicBB 
overrideBB 
IEnumerableBB #
<BB# $
OutcomeBB$ +
>BB+ ,
GetPossibleOutcomesBB- @
(BB@ A$
WorkflowExecutionContextBBA Y
workflowContextBBZ i
,BBi j
ActivityContextBBk z
activityContext	BB{ 
)
BB ‹
{CC 	
returnDD 
OutcomesDD 
(DD 
SDD 
[DD 
$strDD $
]DD$ %
)DD% &
;DD& '
}EE 	
publicGG 
overrideGG 
asyncGG 
TaskGG "
<GG" ##
ActivityExecutionResultGG# :
>GG: ;
ExecuteAsyncGG< H
(GGH I$
WorkflowExecutionContextGGI a
workflowContextGGb q
,GGq r
ActivityContext	GGs ‚
activityContext
GGƒ ’
)
GG’ “
{HH 	
varII 
headersStringII 
=II 
awaitII  % 
_expressionEvaluatorII& :
.II: ;
EvaluateAsyncII; H
(IIH I
HeadersIII P
,IIP Q
workflowContextIIR a
,IIa b
_urlEncoderIIc n
)IIn o
;IIo p
varJJ 
contentJJ 
=JJ 
awaitJJ  
_expressionEvaluatorJJ  4
.JJ4 5
EvaluateAsyncJJ5 B
(JJB C
ContentJJC J
,JJJ K
workflowContextJJL [
,JJ[ \
nullJJ] a
)JJa b
;JJb c
varKK 
contentTypeKK 
=KK 
awaitKK # 
_expressionEvaluatorKK$ 8
.KK8 9
EvaluateAsyncKK9 F
(KKF G
ContentTypeKKG R
,KKR S
workflowContextKKT c
,KKc d
_urlEncoderKKe p
)KKp q
;KKq r
varLL 
headersLL 
=LL 
ParseHeadersLL &
(LL& '
headersStringLL' 4
)LL4 5
;LL5 6
varMM 
responseMM 
=MM  
_httpContextAccessorMM /
.MM/ 0
HttpContextMM0 ;
.MM; <
ResponseMM< D
;MMD E
responseOO 
.OO 

StatusCodeOO 
=OO  !
HttpStatusCodeOO" 0
;OO0 1
foreachQQ 
(QQ 
varQQ 
headerQQ 
inQQ  "
headersQQ# *
)QQ* +
{RR 
responseSS 
.SS 
HeadersSS  
.SS  !
AddSS! $
(SS$ %
headerSS% +
)SS+ ,
;SS, -
}TT 
ifVV 
(VV 
!VV 
stringVV 
.VV 
IsNullOrWhiteSpaceVV *
(VV* +
contentTypeVV+ 6
)VV6 7
)VV7 8
{WW 
responseXX 
.XX 
ContentTypeXX $
=XX% &
contentTypeXX' 2
;XX2 3
}YY 
if[[ 
([[ 
![[ 
string[[ 
.[[ 
IsNullOrWhiteSpace[[ *
([[* +
content[[+ 2
)[[2 3
)[[3 4
{\\ 
await]] 
response]] 
.]] 

WriteAsync]] )
(]]) *
content]]* 1
)]]1 2
;]]2 3
}^^  
_httpContextAccessor``  
.``  !
HttpContext``! ,
.``, -
Items``- 2
[``2 3
WorkflowHttpResult``3 E
.``E F
Instance``F N
]``N O
=``P Q
WorkflowHttpResult``R d
.``d e
Instance``e m
;``m n
returnaa 
Outcomesaa 
(aa 
$straa "
)aa" #
;aa# $
}bb 	
privatedd 
IEnumerabledd 
<dd 
KeyValuePairdd (
<dd( )
stringdd) /
,dd/ 0
StringValuesdd1 =
>dd= >
>dd> ?
ParseHeadersdd@ L
(ddL M
stringddM S
textddT X
)ddX Y
{ee 	
ifff 
(ff 
stringff 
.ff 
IsNullOrWhiteSpaceff )
(ff) *
textff* .
)ff. /
)ff/ 0
returngg 

Enumerablegg !
.gg! "
Emptygg" '
<gg' (
KeyValuePairgg( 4
<gg4 5
stringgg5 ;
,gg; <
StringValuesgg= I
>ggI J
>ggJ K
(ggK L
)ggL M
;ggM N
returnii 
fromjj 
headerjj 
injj 
textjj #
.jj# $
Splitjj$ )
(jj) *
newjj* -
[jj- .
]jj. /
{jj0 1
$strjj2 8
,jj8 9
$strjj: >
,jj> ?
$strjj@ D
}jjE F
,jjF G
StringSplitOptionsjjH Z
.jjZ [
RemoveEmptyEntriesjj[ m
)jjm n
.jjn o
Selectjjo u
(jju v
xjjv w
=>jjx z
xjj{ |
.jj| }
Trim	jj} 
(
jj ‚
)
jj‚ ƒ
)
jjƒ „
letkk 
pairkk 
=kk 
headerkk !
.kk! "
Splitkk" '
(kk' (
$charkk( +
)kk+ ,
wherell 
pairll 
.ll 
Lengthll !
==ll" $
$numll% &
selectmm 
newmm 
KeyValuePairmm '
<mm' (
stringmm( .
,mm. /
StringValuesmm0 <
>mm< =
(mm= >
pairmm> B
[mmB C
$nummmC D
]mmD E
,mmE F
pairmmG K
[mmK L
$nummmL M
]mmM N
)mmN O
;mmO P
}nn 	
}oo 
}pp β"
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\SignalEvent.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

Activities% /
{ 
public 

class 
SignalEvent 
: 
EventActivity ,
{ 
public 
static 
string 
	EventName &
=>' )
nameof* 0
(0 1
SignalEvent1 <
)< =
;= >
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
SignalEvent 
( (
IWorkflowExpressionEvaluator 7
expressionEvaluator8 K
,K L
IStringLocalizerM ]
<] ^
SignalEvent^ i
>i j
	localizerk t
)t u
{ 	 
_expressionEvaluator  
=! "
expressionEvaluator# 6
;6 7
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
	EventName' 0
;0 1
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 G
]G H
;H I
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 <
]< =
;= >
public 
WorkflowExpression !
<! "
string" (
>( )

SignalName* 4
{ 	
get 
=> 
GetProperty 
( 
(  
)  !
=>" $
new% (
WorkflowExpression) ;
<; <
string< B
>B C
(C D
)D E
)E F
;F G
set   
=>   
SetProperty   
(   
value   $
)  $ %
;  % &
}!! 	
public## 
override## 
async## 
Task## "
<##" #
bool### '
>##' (
CanExecuteAsync##) 8
(##8 9$
WorkflowExecutionContext##9 Q
workflowContext##R a
,##a b
ActivityContext##c r
activityContext	##s ‚
)
##‚ ƒ
{$$ 	
var%% 

signalName%% 
=%% 
await%% " 
_expressionEvaluator%%# 7
.%%7 8
EvaluateAsync%%8 E
(%%E F

SignalName%%F P
,%%P Q
workflowContext%%R a
,%%a b
null%%c g
)%%g h
;%%h i
return&& 
string&& 
.&& 
Equals&&  
(&&  !
workflowContext&&! 0
.&&0 1
Input&&1 6
.&&6 7
GetValue&&7 ?
<&&? @
string&&@ F
>&&F G
(&&G H
$str&&H P
)&&P Q
,&&Q R

signalName&&S ]
,&&] ^
StringComparison&&_ o
.&&o p
OrdinalIgnoreCase	&&p 
)
&& ‚
;
&&‚ ƒ
}'' 	
public)) 
override)) 
IEnumerable)) #
<))# $
Outcome))$ +
>))+ ,
GetPossibleOutcomes))- @
())@ A$
WorkflowExecutionContext))A Y
workflowContext))Z i
,))i j
ActivityContext))k z
activityContext	)){ 
)
)) ‹
{** 	
return++ 
Outcomes++ 
(++ 
S++ 
[++ 
$str++ $
]++$ %
)++% &
;++& '
},, 	
public.. 
override.. #
ActivityExecutionResult.. /
Resume..0 6
(..6 7$
WorkflowExecutionContext..7 O
workflowContext..P _
,.._ `
ActivityContext..a p
activityContext	..q €
)
..€ 
{// 	
return00 
Outcomes00 
(00 
$str00 "
)00" #
;00# $
}11 	
}22 
}33 λ•
 D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Controllers\HttpWorkflowController.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Controllers% 0
{ 
public 

class "
HttpWorkflowController '
:( )

Controller* 4
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IWorkflowManager )
_workflowManager* :
;: ;
private 
readonly 
IWorkflowTypeStore +
_workflowTypeStore, >
;> ?
private 
readonly 
IWorkflowStore '
_workflowStore( 6
;6 7
private 
readonly 
IActivityLibrary )
_activityLibrary* :
;: ;
private 
readonly !
ISecurityTokenService .!
_securityTokenService/ D
;D E
private 
readonly 
IAntiforgery %
_antiforgery& 2
;2 3
private 
readonly 
ILogger  
_logger! (
;( )
public 
const 
int !
NoExpiryTokenLifespan .
=/ 0
$num1 6
;6 7
public "
HttpWorkflowController %
(% &!
IAuthorizationService ! 
authorizationService" 6
,6 7
IWorkflowManager 
workflowManager ,
,, -
IWorkflowTypeStore 
workflowTypeStore 0
,0 1
IWorkflowStore   
workflowStore   (
,  ( )
IActivityLibrary!! 
activityLibrary!! ,
,!!, -!
ISecurityTokenService"" ! 
securityTokenService""" 6
,""6 7
IAntiforgery## 
antiforgery## $
,##$ %
ILogger$$ 
<$$ "
HttpWorkflowController$$ *
>$$* +
logger$$, 2
)%% 	
{&& 	!
_authorizationService'' !
=''" # 
authorizationService''$ 8
;''8 9
_workflowManager(( 
=(( 
workflowManager(( .
;((. /
_workflowTypeStore)) 
=))  
workflowTypeStore))! 2
;))2 3
_workflowStore** 
=** 
workflowStore** *
;*** +
_activityLibrary++ 
=++ 
activityLibrary++ .
;++. /!
_securityTokenService,, !
=,," # 
securityTokenService,,$ 8
;,,8 9
_antiforgery-- 
=-- 
antiforgery-- &
;--& '
_logger.. 
=.. 
logger.. 
;.. 
}// 	
[11 	
HttpPost11	 
]11 
[22 	
Admin22	 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
GenerateUrl33) 4
(334 5
int335 8
workflowTypeId339 G
,33G H
string33I O

activityId33P Z
,33Z [
int33\ _
tokenLifeSpan33` m
)33m n
{44 	
if55 
(55 
!55 
await55 !
_authorizationService55 ,
.55, -
AuthorizeAsync55- ;
(55; <
User55< @
,55@ A
Permissions55B M
.55M N
ManageWorkflows55N ]
)55] ^
)55^ _
{66 
return77 
Forbid77 
(77 
)77 
;77  
}88 
var:: 
workflowType:: 
=:: 
await:: $
_workflowTypeStore::% 7
.::7 8
GetAsync::8 @
(::@ A
workflowTypeId::A O
)::O P
;::P Q
if<< 
(<< 
workflowType<< 
==<< 
null<<  $
)<<$ %
{== 
return>> 
NotFound>> 
(>>  
)>>  !
;>>! "
}?? 
varAA 
tokenAA 
=AA !
_securityTokenServiceAA -
.AA- .
CreateTokenAA. 9
(AA9 :
newAA: =
WorkflowPayloadAA> M
(AAM N
workflowTypeAAN Z
.AAZ [
WorkflowTypeIdAA[ i
,AAi j

activityIdAAk u
)AAu v
,AAv w
TimeSpan	AAx €
.
AA€ 
FromDays
AA ‰
(
AA‰ 
tokenLifeSpan
AA —
==
AA 
$num
AA› 
?
AA #
NoExpiryTokenLifespan
AA ΄
:
AAµ ¶
tokenLifeSpan
AA· Δ
)
AAΔ Ε
)
AAΕ Ζ
;
AAΖ Η
varBB 
urlBB 
=BB 
UrlBB 
.BB 
ActionBB  
(BB  !
$strBB! )
,BB) *
$strBB+ 9
,BB9 :
newBB; >
{BB? @
tokenBBA F
=BBG H
tokenBBI N
}BBO P
)BBP Q
;BBQ R
returnDD 
OkDD 
(DD 
urlDD 
)DD 
;DD 
}EE 	
[GG 	"
IgnoreAntiforgeryTokenGG	 
]GG  
[HH 	
HttpGetHH	 
,HH 
HttpPostHH 
,HH 
HttpPutHH #
,HH# $
	HttpPatchHH% .
]HH. /
publicII 
asyncII 
TaskII 
<II 
IActionResultII '
>II' (
InvokeII) /
(II/ 0
stringII0 6
tokenII7 <
)II< =
{JJ 	
ifKK 
(KK 
!KK !
_securityTokenServiceKK &
.KK& '
TryDecryptTokenKK' 6
<KK6 7
WorkflowPayloadKK7 F
>KKF G
(KKG H
tokenKKH M
,KKM N
outKKO R
varKKS V
payloadKKW ^
)KK^ _
)KK_ `
{LL 
_loggerMM 
.MM 

LogWarningMM "
(MM" #
$strMM# ?
)MM? @
;MM@ A
returnNN 
NotFoundNN 
(NN  
)NN  !
;NN! "
}OO 
varRR 
workflowTypeRR 
=RR 
awaitRR $
_workflowTypeStoreRR% 7
.RR7 8
GetAsyncRR8 @
(RR@ A
payloadRRA H
.RRH I

WorkflowIdRRI S
)RRS T
;RRT U
ifTT 
(TT 
workflowTypeTT 
==TT 
nullTT  $
)TT$ %
{UU 
ifVV 
(VV 
_loggerVV 
.VV 
	IsEnabledVV %
(VV% &
LogLevelVV& .
.VV. /
WarningVV/ 6
)VV6 7
)VV7 8
{WW 
_loggerXX 
.XX 

LogWarningXX &
(XX& '
$strXX' m
,XXm n
payloadXXo v
.XXv w

WorkflowId	XXw 
)
XX ‚
;
XX‚ ƒ
}YY 
return[[ 
NotFound[[ 
([[  
)[[  !
;[[! "
}\\ 
if^^ 
(^^ 
!^^ 
workflowType^^ 
.^^ 
	IsEnabled^^ '
)^^' (
{__ 
if`` 
(`` 
_logger`` 
.`` 
	IsEnabled`` %
(``% &
LogLevel``& .
.``. /
Warning``/ 6
)``6 7
)``7 8
{aa 
_loggerbb 
.bb 

LogWarningbb &
(bb& '
$strbb' i
,bbi j
payloadbbk r
.bbr s

WorkflowIdbbs }
)bb} ~
;bb~ 
}cc 
returnee 
NotFoundee 
(ee  
)ee  !
;ee! "
}ff 
varii 
startActivityii 
=ii 
workflowTypeii  ,
.ii, -

Activitiesii- 7
.ii7 8
FirstOrDefaultii8 F
(iiF G
xiiG H
=>iiI K
xiiL M
.iiM N

ActivityIdiiN X
==iiY [
payloadii\ c
.iic d

ActivityIdiid n
)iin o
;iio p
ifkk 
(kk 
startActivitykk 
==kk  
nullkk! %
)kk% &
{ll 
ifmm 
(mm 
_loggermm 
.mm 
	IsEnabledmm %
(mm% &
LogLevelmm& .
.mm. /
Warningmm/ 6
)mm6 7
)mm7 8
{nn 
_loggeroo 
.oo 

LogWarningoo &
(oo& '
$stroo' i
,ooi j
payloadook r
.oor s

ActivityIdoos }
)oo} ~
;oo~ 
}pp 
returnrr 
NotFoundrr 
(rr  
)rr  !
;rr! "
}ss 
varvv 
httpRequestActivityvv #
=vv$ %
_activityLibraryvv& 6
.vv6 7
InstantiateActivityvv7 J
<vvJ K
HttpRequestEventvvK [
>vv[ \
(vv\ ]
startActivityvv] j
)vvj k
;vvk l
ifxx 
(xx 
httpRequestActivityxx #
==xx$ &
nullxx' +
)xx+ ,
{yy 
ifzz 
(zz 
_loggerzz 
.zz 
	IsEnabledzz %
(zz% &
LogLevelzz& .
.zz. /
Warningzz/ 6
)zz6 7
)zz7 8
{{{ 
_logger|| 
.|| 

LogWarning|| &
(||& '
$str||' `
,||` a
startActivity||b o
.||o p
Name||p t
)||t u
;||u v
}}} 
return 
NotFound 
(  
)  !
;! "
}
€€ 
if
ƒƒ 
(
ƒƒ !
httpRequestActivity
ƒƒ #
.
ƒƒ# $&
ValidateAntiforgeryToken
ƒƒ$ <
&&
ƒƒ= ?
(
ƒƒ@ A
!
ƒƒA B
await
ƒƒB G
_antiforgery
ƒƒH T
.
ƒƒT U!
IsRequestValidAsync
ƒƒU h
(
ƒƒh i
HttpContext
ƒƒi t
)
ƒƒt u
)
ƒƒu v
)
ƒƒv w
{
„„ 
_logger
…… 
.
…… 

LogWarning
…… "
(
……" #
$str
……# I
)
……I J
;
……J K
return
†† 

BadRequest
†† !
(
††! "
)
††" #
;
††# $
}
‡‡ 
if
 
(
 
startActivity
 
.
 
IsStart
 %
)
% &
{
‹‹ 
if
 
(
 
!
 
workflowType
 !
.
! "
IsSingleton
" -
||
. 0
!
1 2
await
2 7
_workflowStore
8 F
.
F G$
HasHaltedInstanceAsync
G ]
(
] ^
workflowType
^ j
.
j k
WorkflowTypeId
k y
)
y z
)
z {
{
 
if
 
(
 
_logger
 
.
  
	IsEnabled
  )
(
) *
LogLevel
* 2
.
2 3
Debug
3 8
)
8 9
)
9 :
{
 
_logger
‘‘ 
.
‘‘  
LogDebug
‘‘  (
(
‘‘( )
$str
‘‘) ~
,
‘‘~ 
workflowType‘‘€ 
.‘‘ 
WorkflowTypeId‘‘ ›
,‘‘› 
startActivity‘‘ ª
.‘‘ª «

ActivityId‘‘« µ
)‘‘µ ¶
;‘‘¶ ·
}
’’ 
await
”” 
_workflowManager
”” *
.
””* + 
StartWorkflowAsync
””+ =
(
””= >
workflowType
””> J
,
””J K
startActivity
””L Y
)
””Y Z
;
””Z [
}
•• 
}
–– 
else
—— 
{
 
var
 
	workflows
 
=
 
await
  %
_workflowStore
& 4
.
4 5
	ListAsync
5 >
(
> ?
workflowType
? K
.
K L
WorkflowTypeId
L Z
,
Z [
new
\ _
[
_ `
]
` a
{
b c
startActivity
d q
.
q r

ActivityId
r |
}
} ~
)
~ 
; €
if
 
(
 
!
 
	workflows
 
.
 
Any
 "
(
" #
)
# $
)
$ %
{
 
if
 
(
 
_logger
 
.
  
	IsEnabled
  )
(
) *
LogLevel
* 2
.
2 3
Warning
3 :
)
: ;
)
; <
{
 
_logger
   
.
    

LogWarning
    *
(
  * +
$str
  + i
,
  i j
startActivity
  k x
.
  x y

ActivityId  y ƒ
)  ƒ „
;  „ …
}
΅΅ 
return
££ 
NotFound
££ #
(
££# $
)
££$ %
;
££% &
}
¤¤ 
foreach
¦¦ 
(
¦¦ 
var
¦¦ 
workflow
¦¦ %
in
¦¦& (
	workflows
¦¦) 2
)
¦¦2 3
{
§§ 
var
¨¨ 
blockingActivity
¨¨ (
=
¨¨) *
workflow
¨¨+ 3
.
¨¨3 4 
BlockingActivities
¨¨4 F
.
¨¨F G
FirstOrDefault
¨¨G U
(
¨¨U V
x
¨¨V W
=>
¨¨X Z
x
¨¨[ \
.
¨¨\ ]

ActivityId
¨¨] g
==
¨¨h j
startActivity
¨¨k x
.
¨¨x y

ActivityId¨¨y ƒ
)¨¨ƒ „
;¨¨„ …
if
ªª 
(
ªª 
blockingActivity
ªª (
!=
ªª) +
null
ªª, 0
)
ªª0 1
{
«« 
if
¬¬ 
(
¬¬ 
_logger
¬¬ #
.
¬¬# $
	IsEnabled
¬¬$ -
(
¬¬- .
LogLevel
¬¬. 6
.
¬¬6 7
Debug
¬¬7 <
)
¬¬< =
)
¬¬= >
{
­­ 
_logger
®® #
.
®®# $
LogDebug
®®$ ,
(
®®, -
$str
®®- r
,
®®r s
workflow
®®t |
.
®®| }

WorkflowId®®} ‡
,®®‡  
blockingActivity®®‰ ™
.®®™ 

ActivityId®® ¤
)®®¤ ¥
;®®¥ ¦
}
―― 
await
±± 
_workflowManager
±± .
.
±±. /!
ResumeWorkflowAsync
±±/ B
(
±±B C
workflow
±±C K
,
±±K L
blockingActivity
±±M ]
)
±±] ^
;
±±^ _
}
²² 
}
³³ 
}
΄΄ 
return
¶¶ %
GetWorkflowActionResult
¶¶ *
(
¶¶* +
)
¶¶+ ,
;
¶¶, -
}
·· 	
[
ΉΉ 	
HttpGet
ΉΉ	 
]
ΉΉ 
public
ΊΊ 
async
ΊΊ 
Task
ΊΊ 
<
ΊΊ 
IActionResult
ΊΊ '
>
ΊΊ' (
Trigger
ΊΊ) 0
(
ΊΊ0 1
string
ΊΊ1 7
token
ΊΊ8 =
)
ΊΊ= >
{
»» 	
if
ΌΌ 
(
ΌΌ 
!
ΌΌ #
_securityTokenService
ΌΌ &
.
ΌΌ& '
TryDecryptToken
ΌΌ' 6
<
ΌΌ6 7
SignalPayload
ΌΌ7 D
>
ΌΌD E
(
ΌΌE F
token
ΌΌF K
,
ΌΌK L
out
ΌΌM P
var
ΌΌQ T
payload
ΌΌU \
)
ΌΌ\ ]
)
ΌΌ] ^
{
½½ 
_logger
ΎΎ 
.
ΎΎ 

LogWarning
ΎΎ "
(
ΎΎ" #
$str
ΎΎ# ?
)
ΎΎ? @
;
ΎΎ@ A
return
ΏΏ 
NotFound
ΏΏ 
(
ΏΏ  
)
ΏΏ  !
;
ΏΏ! "
}
ΐΐ 
var
ΒΒ 
input
ΒΒ 
=
ΒΒ 
new
ΒΒ 

Dictionary
ΒΒ &
<
ΒΒ& '
string
ΒΒ' -
,
ΒΒ- .
object
ΒΒ/ 5
>
ΒΒ5 6
{
ΒΒ7 8
{
ΒΒ9 :
$str
ΒΒ; C
,
ΒΒC D
payload
ΒΒE L
.
ΒΒL M

SignalName
ΒΒM W
}
ΒΒX Y
}
ΒΒZ [
;
ΒΒ[ \
if
ΕΕ 
(
ΕΕ 
!
ΕΕ 
String
ΕΕ 
.
ΕΕ  
IsNullOrWhiteSpace
ΕΕ *
(
ΕΕ* +
payload
ΕΕ+ 2
.
ΕΕ2 3

WorkflowId
ΕΕ3 =
)
ΕΕ= >
)
ΕΕ> ?
{
ΖΖ 
var
ΗΗ 
workflow
ΗΗ 
=
ΗΗ 
await
ΗΗ $
_workflowStore
ΗΗ% 3
.
ΗΗ3 4
GetAsync
ΗΗ4 <
(
ΗΗ< =
payload
ΗΗ= D
.
ΗΗD E

WorkflowId
ΗΗE O
)
ΗΗO P
;
ΗΗP Q
var
ΘΘ 
signalActivities
ΘΘ $
=
ΘΘ% &
workflow
ΘΘ' /
?
ΘΘ/ 0
.
ΘΘ0 1 
BlockingActivities
ΘΘ1 C
.
ΘΘC D
Where
ΘΘD I
(
ΘΘI J
x
ΘΘJ K
=>
ΘΘL N
x
ΘΘO P
.
ΘΘP Q
Name
ΘΘQ U
==
ΘΘV X
SignalEvent
ΘΘY d
.
ΘΘd e
	EventName
ΘΘe n
)
ΘΘn o
.
ΘΘo p
ToList
ΘΘp v
(
ΘΘv w
)
ΘΘw x
;
ΘΘx y
if
ΚΚ 
(
ΚΚ 
signalActivities
ΚΚ $
==
ΚΚ% '
null
ΚΚ( ,
)
ΚΚ, -
{
ΛΛ 
return
ΜΜ 
NotFound
ΜΜ #
(
ΜΜ# $
)
ΜΜ$ %
;
ΜΜ% &
}
ΝΝ 
foreach
ΡΡ 
(
ΡΡ 
var
ΡΡ 
signalActivity
ΡΡ +
in
ΡΡ, .
signalActivities
ΡΡ/ ?
)
ΡΡ? @
{
ÒÒ 
await
ΣΣ 
_workflowManager
ΣΣ *
.
ΣΣ* +!
ResumeWorkflowAsync
ΣΣ+ >
(
ΣΣ> ?
workflow
ΣΣ? G
,
ΣΣG H
signalActivity
ΣΣI W
,
ΣΣW X
input
ΣΣY ^
)
ΣΣ^ _
;
ΣΣ_ `
}
ΤΤ 
}
ΥΥ 
else
ΦΦ 
{
ΧΧ 
await
ΩΩ 
_workflowManager
ΩΩ &
.
ΩΩ& '
TriggerEventAsync
ΩΩ' 8
(
ΩΩ8 9
SignalEvent
ΩΩ9 D
.
ΩΩD E
	EventName
ΩΩE N
,
ΩΩN O
input
ΩΩP U
,
ΩΩU V
payload
ΩΩW ^
.
ΩΩ^ _
CorrelationId
ΩΩ_ l
)
ΩΩl m
;
ΩΩm n
}
ΪΪ 
return
άά %
GetWorkflowActionResult
άά *
(
άά* +
)
άά+ ,
;
άά, -
}
έέ 	
private
ββ 
IActionResult
ββ %
GetWorkflowActionResult
ββ 5
(
ββ5 6
)
ββ6 7
{
γγ 	
if
δδ 
(
δδ 
HttpContext
δδ 
.
δδ 
Items
δδ !
.
δδ! "
ContainsKey
δδ" -
(
δδ- . 
WorkflowHttpResult
δδ. @
.
δδ@ A
Instance
δδA I
)
δδI J
)
δδJ K
{
εε 
return
ζζ 
new
ζζ 
EmptyResult
ζζ &
(
ζζ& '
)
ζζ' (
;
ζζ( )
}
ηη 
return
ιι 
Accepted
ιι 
(
ιι 
)
ιι 
;
ιι 
}
κκ 	
}
λλ 
}μμ Ρ
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpRedirectTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Drivers% ,
{ 
public 

class )
HttpRedirectTaskDisplayDriver .
:/ 0!
ActivityDisplayDriver1 F
<F G
HttpRedirectTaskG W
,W X%
HttpRedirectTaskViewModelY r
>r s
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
HttpRedirectTask

- =
activity

> F
,

F G%
HttpRedirectTaskViewModel

H a
model

b g
)

g h
{ 	
model 
. 
Location 
= 
activity %
.% &
Location& .
.. /

Expression/ 9
;9 :
model 
. 
	Permanent 
= 
activity &
.& '
	Permanent' 0
;0 1
} 	
	protected 
override 
void 
UpdateActivity  .
(. /%
HttpRedirectTaskViewModel/ H
modelI N
,N O
HttpRedirectTaskP `
activitya i
)i j
{ 	
activity 
. 
Location 
= 
new  #
WorkflowExpression$ 6
<6 7
string7 =
>= >
(> ?
model? D
.D E
LocationE M
?M N
.N O
TrimO S
(S T
)T U
)U V
;V W
activity 
. 
	Permanent 
=  
model! &
.& '
	Permanent' 0
;0 1
} 	
} 
} ÿ
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpRequestEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Drivers% ,
{ 
public 

class )
HttpRequestEventDisplayDriver .
:/ 0!
ActivityDisplayDriver1 F
<F G
HttpRequestEventG W
,W X%
HttpRequestEventViewModelY r
>r s
{ 
	protected		 
override		 
void		 
EditActivity		  ,
(		, -
HttpRequestEvent		- =
activity		> F
,		F G%
HttpRequestEventViewModel		H a
model		b g
)		g h
{

 	
model 
. 

HttpMethod 
= 
activity '
.' (

HttpMethod( 2
;2 3
model 
. 
Url 
= 
activity  
.  !
Url! $
;$ %
model 
. $
ValidateAntiforgeryToken *
=+ ,
activity- 5
.5 6$
ValidateAntiforgeryToken6 N
;N O
model 
. 
TokenLifeSpan 
=  !
activity" *
.* +
TokenLifeSpan+ 8
;8 9
} 	
	protected 
override 
void 
UpdateActivity  .
(. /%
HttpRequestEventViewModel/ H
modelI N
,N O
HttpRequestEventP `
activitya i
)i j
{ 	
activity 
. 

HttpMethod 
=  !
model" '
.' (

HttpMethod( 2
?2 3
.3 4
Trim4 8
(8 9
)9 :
;: ;
activity 
. 
Url 
= 
model  
.  !
Url! $
?$ %
.% &
Trim& *
(* +
)+ ,
;, -
activity 
. $
ValidateAntiforgeryToken -
=. /
model0 5
.5 6$
ValidateAntiforgeryToken6 N
;N O
activity 
. 
TokenLifeSpan "
=# $
model% *
.* +
TokenLifeSpan+ 8
;8 9
} 	
} 
} ›
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpRequestFilterEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Drivers% ,
{ 
public 

class /
#HttpRequestFilterEventDisplayDriver 4
:5 6!
ActivityDisplayDriver7 L
<L M"
HttpRequestFilterEventM c
,c d,
HttpRequestFilterEventViewModel	e „
>
„ …
{ 
	protected		 
override		 
void		 
EditActivity		  ,
(		, -"
HttpRequestFilterEvent		- C
activity		D L
,		L M+
HttpRequestFilterEventViewModel		N m
model		n s
)		s t
{

 	
model 
. 

HttpMethod 
= 
activity '
.' (

HttpMethod( 2
;2 3
model 
. 
ControllerName  
=! "
activity# +
.+ ,
ControllerName, :
;: ;
model 
. 

ActionName 
= 
activity '
.' (

ActionName( 2
;2 3
model 
. 
AreaName 
= 
activity %
.% &
AreaName& .
;. /
} 	
	protected 
override 
void 
UpdateActivity  .
(. /+
HttpRequestFilterEventViewModel/ N
modelO T
,T U"
HttpRequestFilterEventV l
activitym u
)u v
{ 	
activity 
. 

HttpMethod 
=  !
model" '
.' (

HttpMethod( 2
?2 3
.3 4
Trim4 8
(8 9
)9 :
;: ;
activity 
. 
ControllerName #
=$ %
NullIfEmpty& 1
(1 2
model2 7
.7 8
ControllerName8 F
)F G
;G H
activity 
. 

ActionName 
=  !
NullIfEmpty" -
(- .
model. 3
.3 4

ActionName4 >
)> ?
;? @
activity 
. 
AreaName 
= 
NullIfEmpty  +
(+ ,
model, 1
.1 2
AreaName2 :
): ;
;; <
} 	
private 
string 
NullIfEmpty "
(" #
string# )
s* +
)+ ,
{ 	
return 
string 
. 
IsNullOrWhiteSpace ,
(, -
s- .
). /
?0 1
null2 6
:7 8
s9 :
.: ;
Trim; ?
(? @
)@ A
;A B
} 	
} 
} ρ
ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpRequestTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Drivers% ,
{ 
public 

class (
HttpRequestTaskDisplayDriver -
:. /!
ActivityDisplayDriver0 E
<E F
HttpRequestTaskF U
,U V$
HttpRequestTaskViewModelW o
>o p
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
HttpRequestTask

- <
activity

= E
,

E F$
HttpRequestTaskViewModel

G _
model

` e
)

e f
{ 	
model 
. 
Url 
= 
activity  
.  !
Url! $
.$ %

Expression% /
;/ 0
model 
. 

HttpMethod 
= 
activity '
.' (

HttpMethod( 2
;2 3
model 
. 
Body 
= 
activity !
.! "
Body" &
.& '

Expression' 1
;1 2
model 
. 
ContentType 
= 
activity  (
.( )
ContentType) 4
.4 5

Expression5 ?
;? @
model 
. 
Headers 
= 
activity $
.$ %
Headers% ,
., -

Expression- 7
;7 8
model 
. 
HttpResponseCodes #
=$ %
activity& .
.. /
HttpResponseCodes/ @
;@ A
} 	
	protected 
override 
void 
UpdateActivity  .
(. /$
HttpRequestTaskViewModel/ G
modelH M
,M N
HttpRequestTaskO ^
activity_ g
)g h
{ 	
activity 
. 
Url 
= 
new 
WorkflowExpression 1
<1 2
string2 8
>8 9
(9 :
model: ?
.? @
Url@ C
?C D
.D E
TrimE I
(I J
)J K
)K L
;L M
activity 
. 

HttpMethod 
=  !
model" '
.' (

HttpMethod( 2
;2 3
activity 
. 
Body 
= 
new 
WorkflowExpression  2
<2 3
string3 9
>9 :
(: ;
model; @
.@ A
BodyA E
)E F
;F G
activity 
. 
ContentType  
=! "
new# &
WorkflowExpression' 9
<9 :
string: @
>@ A
(A B
modelB G
.G H
ContentTypeH S
?S T
.T U
TrimU Y
(Y Z
)Z [
)[ \
;\ ]
activity 
. 
Headers 
= 
new "
WorkflowExpression# 5
<5 6
string6 <
>< =
(= >
model> C
.C D
HeadersD K
?K L
.L M
TrimM Q
(Q R
)R S
)S T
;T U
activity 
. 
HttpResponseCodes &
=' (
model) .
.. /
HttpResponseCodes/ @
;@ A
} 	
} 
} Λ
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpResponseTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Drivers% ,
{ 
public 

class )
HttpResponseTaskDisplayDriver .
:/ 0!
ActivityDisplayDriver1 F
<F G
HttpResponseTaskG W
,W X%
HttpResponseTaskViewModelY r
>r s
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
HttpResponseTask

- =
activity

> F
,

F G%
HttpResponseTaskViewModel

H a
model

b g
)

g h
{ 	
model 
. 
HttpStatusCode  
=! "
activity# +
.+ ,
HttpStatusCode, :
;: ;
model 
. 
Content 
= 
activity $
.$ %
Content% ,
., -

Expression- 7
;7 8
model 
. 
ContentType 
= 
activity  (
.( )
ContentType) 4
.4 5

Expression5 ?
;? @
model 
. 
Headers 
= 
activity $
.$ %
Headers% ,
., -

Expression- 7
;7 8
} 	
	protected 
override 
void 
UpdateActivity  .
(. /%
HttpResponseTaskViewModel/ H
modelI N
,N O
HttpResponseTaskP `
activitya i
)i j
{ 	
activity 
. 
HttpStatusCode #
=$ %
model& +
.+ ,
HttpStatusCode, :
;: ;
activity 
. 
Content 
= 
new "
WorkflowExpression# 5
<5 6
string6 <
>< =
(= >
model> C
.C D
ContentD K
)K L
;L M
activity 
. 
ContentType  
=! "
new# &
WorkflowExpression' 9
<9 :
string: @
>@ A
(A B
modelB G
.G H
ContentTypeH S
?S T
.T U
TrimU Y
(Y Z
)Z [
)[ \
;\ ]
activity 
. 
Headers 
= 
new "
WorkflowExpression# 5
<5 6
string6 <
>< =
(= >
model> C
.C D
HeadersD K
?K L
.L M
TrimM Q
(Q R
)R S
)S T
;T U
} 	
} 
} Ρ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\SignalEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Drivers% ,
{ 
public 

class $
SignalEventDisplayDriver )
:* +!
ActivityDisplayDriver, A
<A B
SignalEventB M
,M N 
SignalEventViewModelO c
>c d
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
SignalEvent

- 8
activity

9 A
,

A B 
SignalEventViewModel

C W
model

X ]
)

] ^
{ 	
model 
.  
SignalNameExpression &
=' (
activity) 1
.1 2

SignalName2 <
.< =

Expression= G
;G H
} 	
	protected 
override 
void 
UpdateActivity  .
(. / 
SignalEventViewModel/ C
modelD I
,I J
SignalEventK V
activityW _
)_ `
{ 	
activity 
. 

SignalName 
=  !
new" %
WorkflowExpression& 8
<8 9
string9 ?
>? @
(@ A
modelA F
.F G 
SignalNameExpressionG [
)[ \
;\ ]
} 	
} 
} ΌD
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Filters\WorkflowActionFilter.cs
	namespace		 	
OrchardCore		
 
.		 
	Workflows		 
.		  
Http		  $
.		$ %
Filters		% ,
{

 
internal 
class  
WorkflowActionFilter '
:( )
IAsyncActionFilter* <
{ 
private 
readonly 
IWorkflowManager )
_workflowManager* :
;: ;
private 
readonly %
IWorkflowTypeRouteEntries 2%
_workflowTypeRouteEntries3 L
;L M
private 
readonly )
IWorkflowInstanceRouteEntries 6!
_workflowRouteEntries7 L
;L M
private 
readonly 
IWorkflowTypeStore +
_workflowTypeStore, >
;> ?
private 
readonly 
IWorkflowStore '
_workflowStore( 6
;6 7
public  
WorkflowActionFilter #
(# $
IWorkflowManager 
workflowManager ,
,, -%
IWorkflowTypeRouteEntries %$
workflowTypeRouteEntries& >
,> ?)
IWorkflowInstanceRouteEntries ) 
workflowRouteEntries* >
,> ?
IWorkflowTypeStore 
workflowTypeStore 0
,0 1
IWorkflowStore 
workflowStore (
) 	
{ 	
_workflowManager 
= 
workflowManager .
;. /%
_workflowTypeRouteEntries %
=& '$
workflowTypeRouteEntries( @
;@ A!
_workflowRouteEntries !
=" # 
workflowRouteEntries$ 8
;8 9
_workflowTypeStore 
=  
workflowTypeStore! 2
;2 3
_workflowStore 
= 
workflowStore *
;* +
}   	
public"" 
async"" 
Task"" "
OnActionExecutionAsync"" 0
(""0 1"
ActionExecutingContext""1 G
context""H O
,""O P#
ActionExecutionDelegate""Q h
next""i m
)""m n
{## 	
var$$ 

httpMethod$$ 
=$$ 
context$$ $
.$$$ %
HttpContext$$% 0
.$$0 1
Request$$1 8
.$$8 9
Method$$9 ?
;$$? @
var%% 
routeValues%% 
=%% 
context%% %
.%%% &
	RouteData%%& /
.%%/ 0
Values%%0 6
;%%6 7
var&& 
workflowTypeEntries&& #
=&&$ %
await&&& +%
_workflowTypeRouteEntries&&, E
.&&E F(
GetWorkflowRouteEntriesAsync&&F b
(&&b c

httpMethod&&c m
,&&m n
routeValues&&o z
)&&z {
;&&{ |
var'' 
workflowEntries'' 
=''  !
await''" '!
_workflowRouteEntries''( =
.''= >(
GetWorkflowRouteEntriesAsync''> Z
(''Z [

httpMethod''[ e
,''e f
routeValues''g r
)''r s
;''s t
if)) 
()) 
workflowTypeEntries)) #
.))# $
Any))$ '
())' (
)))( )
)))) *
{** 
var++ 
workflowTypeIds++ #
=++$ %
workflowTypeEntries++& 9
.++9 :
Select++: @
(++@ A
x++A B
=>++C E
Int32++F K
.++K L
Parse++L Q
(++Q R
x++R S
.++S T

WorkflowId++T ^
)++^ _
)++_ `
.++` a
ToList++a g
(++g h
)++h i
;++i j
var,, 
workflowTypes,, !
=,," #
(,,$ %
await,,% *
_workflowTypeStore,,+ =
.,,= >
GetAsync,,> F
(,,F G
workflowTypeIds,,G V
),,V W
),,W X
.,,X Y
ToDictionary,,Y e
(,,e f
x,,f g
=>,,h j
x,,k l
.,,l m
Id,,m o
),,o p
;,,p q
var-- 
correlationId-- !
=--" #
routeValues--$ /
.--/ 0
GetValue--0 8
<--8 9
string--9 ?
>--? @
(--@ A
$str--A P
)--P Q
;--Q R
foreach// 
(// 
var// 
entry// "
in//# %
workflowTypeEntries//& 9
)//9 :
{00 
if11 
(11 
workflowTypes11 %
.11% &
TryGetValue11& 1
(111 2
Int32112 7
.117 8
Parse118 =
(11= >
entry11> C
.11C D

WorkflowId11D N
)11N O
,11O P
out11Q T
var11U X
workflowType11Y e
)11e f
)11f g
{22 
var33 
activity33 $
=33% &
workflowType33' 3
.333 4

Activities334 >
.33> ?
Single33? E
(33E F
x33F G
=>33H J
x33K L
.33L M

ActivityId33M W
==33X Z
entry33[ `
.33` a

ActivityId33a k
)33k l
;33l m
if55 
(55 
activity55 $
.55$ %
IsStart55% ,
)55, -
{66 
if88 
(88  
!88  !
workflowType88! -
.88- .
IsSingleton88. 9
||88: <
!88= >
await88> C
_workflowStore88D R
.88R S"
HasHaltedInstanceAsync88S i
(88i j
workflowType88j v
.88v w
WorkflowTypeId	88w …
)
88… †
)
88† ‡
{99 
await::  %
_workflowManager::& 6
.::6 7
StartWorkflowAsync::7 I
(::I J
workflowType::J V
,::V W
activity::X `
,::` a
null::b f
,::f g
correlationId::h u
)::u v
;::v w
};; 
}<< 
}== 
}>> 
}?? 
ifAA 
(AA 
workflowEntriesAA 
.AA  
AnyAA  #
(AA# $
)AA$ %
)AA% &
{BB 
varCC 
workflowIdsCC 
=CC  !
workflowEntriesCC" 1
.CC1 2
SelectCC2 8
(CC8 9
xCC9 :
=>CC; =
xCC> ?
.CC? @

WorkflowIdCC@ J
)CCJ K
.CCK L
ToListCCL R
(CCR S
)CCS T
;CCT U
varDD 
	workflowsDD 
=DD 
(DD  !
awaitDD! &
_workflowStoreDD' 5
.DD5 6
GetAsyncDD6 >
(DD> ?
workflowIdsDD? J
)DDJ K
)DDK L
.DDL M
ToDictionaryDDM Y
(DDY Z
xDDZ [
=>DD\ ^
xDD_ `
.DD` a

WorkflowIdDDa k
)DDk l
;DDl m
varEE 
correlationIdEE !
=EE" #
routeValuesEE$ /
.EE/ 0
GetValueEE0 8
<EE8 9
stringEE9 ?
>EE? @
(EE@ A
$strEEA P
)EEP Q
;EEQ R
foreachGG 
(GG 
varGG 
entryGG "
inGG# %
workflowEntriesGG& 5
)GG5 6
{HH 
ifII 
(II 
	workflowsII !
.II! "
TryGetValueII" -
(II- .
entryII. 3
.II3 4

WorkflowIdII4 >
,II> ?
outII@ C
varIID G
workflowIIH P
)IIP Q
&&IIR T
(JJ 
StringJJ 
.JJ  
IsNullOrWhiteSpaceJJ  2
(JJ2 3
correlationIdJJ3 @
)JJ@ A
||JJB D
workflowKK  
.KK  !
CorrelationIdKK! .
==KK/ 1
correlationIdKK2 ?
)KK? @
)KK@ A
{LL 
varMM 
blockingActivityMM ,
=MM- .
workflowMM/ 7
.MM7 8
BlockingActivitiesMM8 J
.MMJ K
SingleMMK Q
(MMQ R
xMMR S
=>MMT V
xMMW X
.MMX Y

ActivityIdMMY c
==MMd f
entryMMg l
.MMl m

ActivityIdMMm w
)MMw x
;MMx y
awaitNN 
_workflowManagerNN .
.NN. /
ResumeWorkflowAsyncNN/ B
(NNB C
workflowNNC K
,NNK L
blockingActivityNNM ]
)NN] ^
;NN^ _
}OO 
}PP 
}QQ 
awaitSS 
nextSS 
(SS 
)SS 
;SS 
}TT 	
}UU 
}VV μ

ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Handlers\SignalLiquidTemplateHandler.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %$
WorkflowContextProviders% =
{ 
public 

class '
SignalLiquidTemplateHandler ,
:- .'
ILiquidTemplateEventHandler/ J
{		 
private

 
readonly

 !
ISecurityTokenService

 .
_signalService

/ =
;

= >
public '
SignalLiquidTemplateHandler *
(* +!
ISecurityTokenService+ @
signalServiceA N
)N O
{ 	
_signalService 
= 
signalService *
;* +
} 	
public 
Task 
RenderingAsync "
(" #
TemplateContext# 2
context3 :
): ;
{ 	
context 
. 
AmbientValues !
.! "
Add" %
(% &
$str& 5
,5 6
_signalService7 E
)E F
;F G
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} Ζ
¬D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Handlers\SignalWorkflowExecutionContextHandler.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %$
WorkflowContextProviders% =
{ 
public 

class 1
%SignalWorkflowExecutionContextHandler 6
:7 8/
#WorkflowExecutionContextHandlerBase9 \
{		 
private

 
readonly

 !
ISecurityTokenService

 .
_signalService

/ =
;

= >
public 1
%SignalWorkflowExecutionContextHandler 4
(4 5!
ISecurityTokenService5 J
signalServiceK X
)X Y
{ 	
_signalService 
= 
signalService *
;* +
} 	
public 
override 
Task !
EvaluatingScriptAsync 2
(2 3*
WorkflowExecutionScriptContext3 Q
contextR Y
)Y Z
{ 	
context 
. !
ScopedMethodProviders )
.) *
Add* -
(- .
new. 1 
SignalMethodProvider2 F
(F G
contextG N
.N O
WorkflowContextO ^
,^ _
_signalService` n
)n o
)o p
;p q
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ο
¤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Handlers\WorkflowInstanceRoutesHandler.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Handlers% -
{ 
internal 
class !
WorkflowRoutesHandler (
:) *
WorkflowHandlerBase+ >
{		 
private

 
readonly

 )
IWorkflowInstanceRouteEntries

 6!
_workflowRouteEntries

7 L
;

L M
private 
readonly 
IWorkflowTypeStore +
_workflowTypeStore, >
;> ?
private 
readonly 
IActivityLibrary )
_activityLibrary* :
;: ;
public !
WorkflowRoutesHandler $
($ %)
IWorkflowInstanceRouteEntries ) 
workflowRouteEntries* >
,> ?
IWorkflowTypeStore 
workflowTypeStore 0
,0 1
IActivityLibrary 
activityLibrary ,
) 	
{ 	!
_workflowRouteEntries !
=" # 
workflowRouteEntries$ 8
;8 9
_workflowTypeStore 
=  
workflowTypeStore! 2
;2 3
_activityLibrary 
= 
activityLibrary .
;. /
} 	
public 
override 
Task 
CreatedAsync )
() *"
WorkflowCreatedContext* @
contextA H
)H I
{ 	
return #
UpdateRouteEntriesAsync *
(* +
context+ 2
)2 3
;3 4
} 	
public 
override 
Task 
UpdatedAsync )
() *"
WorkflowUpdatedContext* @
contextA H
)H I
{ 	
return   #
UpdateRouteEntriesAsync   *
(  * +
context  + 2
)  2 3
;  3 4
}!! 	
public## 
override## 
Task## 
DeletedAsync## )
(##) *"
WorkflowDeletedContext##* @
context##A H
)##H I
{$$ 	
return%% !
_workflowRouteEntries%% (
.%%( )
RemoveEntriesAsync%%) ;
(%%; <
context%%< C
.%%C D
Workflow%%D L
.%%L M

WorkflowId%%M W
)%%W X
;%%X Y
}&& 	
private(( 
async(( 
Task(( #
UpdateRouteEntriesAsync(( 2
(((2 3
WorkflowContext((3 B
context((C J
)((J K
{)) 	
var** 
workflow** 
=** 
context** "
.**" #
Workflow**# +
;**+ ,
var++ 
workflowType++ 
=++ 
await++ $
_workflowTypeStore++% 7
.++7 8
GetAsync++8 @
(++@ A
workflow++A I
.++I J
WorkflowTypeId++J X
)++X Y
;++Y Z
var,, 
entries,, 
=,, (
WorkflowInstanceRouteEntries,, 6
.,,6 7$
GetWorkflowRoutesEntries,,7 O
(,,O P
workflowType,,P \
,,,\ ]
context,,^ e
.,,e f
Workflow,,f n
,,,n o
_activityLibrary	,,p €
)
,,€ 
;
,, ‚
await.. !
_workflowRouteEntries.. '
...' (
AddEntriesAsync..( 7
(..7 8
entries..8 ?
)..? @
;..@ A
}// 	
}00 
}11 ή
 D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Handlers\WorkflowTypeRoutesHandler.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Handlers% -
{ 
internal 
class %
WorkflowTypeRoutesHandler ,
:- .#
WorkflowTypeHandlerBase/ F
{		 
private

 
readonly

 %
IWorkflowTypeRouteEntries

 2!
_workflowRouteEntries

3 H
;

H I
private 
readonly 
IActivityLibrary )
_activityLibrary* :
;: ;
public %
WorkflowTypeRoutesHandler (
(( )%
IWorkflowTypeRouteEntries) B 
workflowRouteEntriesC W
,W X
IActivityLibraryY i
activityLibraryj y
)y z
{ 	!
_workflowRouteEntries !
=" # 
workflowRouteEntries$ 8
;8 9
_activityLibrary 
= 
activityLibrary .
;. /
} 	
public 
override 
Task 
CreatedAsync )
() *&
WorkflowTypeCreatedContext* D
contextE L
)L M
{ 	
return #
UpdateRouteEntriesAsync *
(* +
context+ 2
)2 3
;3 4
} 	
public 
override 
Task 
UpdatedAsync )
() *&
WorkflowTypeUpdatedContext* D
contextE L
)L M
{ 	
return #
UpdateRouteEntriesAsync *
(* +
context+ 2
)2 3
;3 4
} 	
public 
override 
Task 
DeletedAsync )
() *&
WorkflowTypeDeletedContext* D
contextE L
)L M
{ 	
return !
_workflowRouteEntries (
.( )
RemoveEntriesAsync) ;
(; <
context< C
.C D
WorkflowTypeD P
.P Q
IdQ S
.S T
ToStringT \
(\ ]
)] ^
)^ _
;_ `
}   	
private"" 
Task"" #
UpdateRouteEntriesAsync"" ,
("", -
WorkflowTypeContext""- @
context""A H
)""H I
{## 	
var$$ 
entries$$ 
=$$ $
WorkflowTypeRouteEntries$$ 2
.$$2 3(
GetWorkflowTypeRoutesEntries$$3 O
($$O P
context$$P W
.$$W X
WorkflowType$$X d
,$$d e
_activityLibrary$$f v
)$$v w
;$$w x
return%% !
_workflowRouteEntries%% (
.%%( )
AddEntriesAsync%%) 8
(%%8 9
entries%%9 @
)%%@ A
;%%A B
}&& 	
}'' 
}(( Ζ#
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Liquid\SignalUrlFilter.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Liquid% +
{ 
public 

class 
SignalUrlFilter  
:! "
ILiquidFilter# 0
{ 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
contexto v
)v w
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 >
,> ?
out@ C
varD G
urlHelperObjH T
)T U
)U V
{ 
throw 
new 
ArgumentException +
(+ ,
$str, [
)[ \
;\ ]
} 
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 B
,B C
outD G
varH K
signalServiceObjL \
)\ ]
)] ^
{ 
throw 
new 
ArgumentException +
(+ ,
$str, _
)_ `
;` a
} 
var  
workflowContextValue $
=% &
context' .
.. /
GetValue/ 7
(7 8
$str8 B
)B C
;C D
if 
(  
workflowContextValue $
.$ %
IsNil% *
(* +
)+ ,
), -
{ 
throw 
new 
ArgumentException +
(+ ,
$str, j
)j k
;k l
}   
var"" 
workflowContext"" 
=""  !
(""" #$
WorkflowExecutionContext""# ;
)""; < 
workflowContextValue""< P
.""P Q
ToObjectValue""Q ^
(""^ _
)""_ `
;""` a
var## 

signalName## 
=## 
input## "
.##" #
ToStringValue### 0
(##0 1
)##1 2
;##2 3
var$$ 
payload$$ 
=$$ 
String$$  
.$$  !
IsNullOrWhiteSpace$$! 3
($$3 4
workflowContext$$4 C
.$$C D
CorrelationId$$D Q
)$$Q R
?%% 
SignalPayload%% 
.%%  
ForWorkflow%%  +
(%%+ ,

signalName%%, 6
,%%6 7
workflowContext%%8 G
.%%G H

WorkflowId%%H R
)%%R S
:&& 
SignalPayload&& 
.&&  
ForCorrelation&&  .
(&&. /

signalName&&/ 9
,&&9 :
workflowContext&&; J
.&&J K
CorrelationId&&K X
)&&X Y
;&&Y Z
var(( 
	urlHelper(( 
=(( 
((( 

IUrlHelper(( '
)((' (
urlHelperObj((( 4
;((4 5
var)) 
signalService)) 
=)) 
())  !!
ISecurityTokenService))! 6
)))6 7
signalServiceObj))7 G
;))G H
var** 
token** 
=** 
signalService** %
.**% &
CreateToken**& 1
(**1 2
payload**2 9
,**9 :
TimeSpan**; C
.**C D
FromDays**D L
(**L M
$num**M N
)**N O
)**O P
;**P Q
var++ 
urlValue++ 
=++ 
new++ 
StringValue++ *
(++* +
	urlHelper+++ 4
.++4 5
Action++5 ;
(++; <
$str++< E
,++E F
$str++G U
,++U V
new++W Z
{++[ \
area++] a
=++b c
$str++d {
,++{ |
token	++} ‚
}
++ƒ „
)
++„ …
)
++… †
;
++† ‡
return,, 
new,, 
	ValueTask,,  
<,,  !

FluidValue,,! +
>,,+ ,
(,,, -
urlValue,,- 5
),,5 6
;,,6 7
}-- 	
}.. 
}// δ
’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\SignalPayload.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Models% +
{ 
public 

class 
SignalPayload 
{ 
public 
static 
SignalPayload #
ForWorkflow$ /
(/ 0
string0 6

signalName7 A
,A B
stringC I

workflowIdJ T
)T U
{ 	
return 
new 
SignalPayload $
($ %

signalName% /
,/ 0

workflowId1 ;
,; <
null= A
)A B
;B C
} 	
public

 
static

 
SignalPayload

 #
ForCorrelation

$ 2
(

2 3
string

3 9

signalName

: D
,

D E
string

F L
correlationId

M Z
)

Z [
{ 	
return 
new 
SignalPayload $
($ %

signalName% /
,/ 0
null1 5
,5 6
correlationId7 D
)D E
;E F
} 	
public 
SignalPayload 
( 
string #

signalName$ .
,. /
string0 6

workflowId7 A
,A B
stringC I
correlationIdJ W
)W X
{ 	

WorkflowId 
= 

workflowId #
;# $
CorrelationId 
= 
correlationId )
;) *

SignalName 
= 

signalName #
;# $
} 	
public 
string 

WorkflowId  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 
CorrelationId #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
string 

SignalName  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
} 
} 	
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\WorkflowPayload.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Models% +
{ 
public 

class 
WorkflowPayload  
{ 
public 
WorkflowPayload 
( 
string %

workflowId& 0
,0 1
string2 8

activityId9 C
)C D
{ 	

WorkflowId 
= 

workflowId #
;# $

ActivityId 
= 

activityId #
;# $
}		 	
public 
string 

WorkflowId  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 

ActivityId  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
} 
} ‘
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\WorkflowRouteDocument.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Models% +
{ 
public 

class !
WorkflowRouteDocument &
:' (
Document) 1
{ 
public 

Dictionary 
< 
string  
,  !
IList" '
<' (
WorkflowRoutesEntry( ;
>; <
>< =
Entries> E
{F G
getH K
;K L
setM P
;P Q
}R S
=T U
newV Y

DictionaryZ d
<d e
stringe k
,k l
IListm r
<r s 
WorkflowRoutesEntry	s †
>
† ‡
>
‡ 
(
 ‰
)
‰ 
;
 ‹
}		 
}

 ¨
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\WorkflowRoutesEntry.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Models% +
{ 
public 

class 
WorkflowRoutesEntry $
{ 
public 
string 

WorkflowId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 

ActivityId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 

HttpMethod

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public  
RouteValueDictionary #
RouteValues$ /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
new@ C 
RouteValueDictionaryD X
(X Y
)Y Z
;Z [
public 
string 
ControllerName $
=>% '
RouteValues( 3
.3 4
GetValue4 <
<< =
string= C
>C D
(D E
$strE Q
)Q R
;R S
public 
string 

ActionName  
=>! #
RouteValues$ /
./ 0
GetValue0 8
<8 9
string9 ?
>? @
(@ A
$strA I
)I J
;J K
public 
string 
AreaName 
=> !
RouteValues" -
.- .
GetValue. 6
<6 7
string7 =
>= >
(> ?
$str? E
)E F
;F G
} 
} ρ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\WorkflowTypeRouteDocument.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Models% +
{ 
public 

class %
WorkflowTypeRouteDocument *
:+ ,!
WorkflowRouteDocument- B
{ 
} 
} Οd
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Scripting\HttpMethodsProvider.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
	Scripting% .
{ 
public 

class 
HttpMethodsProvider $
:% &!
IGlobalMethodProvider' <
{ 
private 
readonly 
GlobalMethod %
_httpContextMethod& 8
;8 9
private 
readonly 
GlobalMethod %
_queryStringMethod& 8
;8 9
private 
readonly 
GlobalMethod % 
_responseWriteMethod& :
;: ;
private 
readonly 
GlobalMethod %
_absoluteUrlMethod& 8
;8 9
private 
readonly 
GlobalMethod %
_readBodyMethod& 5
;5 6
private 
readonly 
GlobalMethod %
_requestFormMethod& 8
;8 9
private 
readonly 
GlobalMethod %$
_queryStringAsJsonMethod& >
;> ?
private 
readonly 
GlobalMethod %$
_requestFormAsJsonMethod& >
;> ?
public 
HttpMethodsProvider "
(" # 
IHttpContextAccessor# 7
httpContextAccessor8 K
)K L
{ 	
_httpContextMethod 
=  
new! $
GlobalMethod% 1
{   
Name!! 
=!! 
$str!! $
,!!$ %
Method"" 
="" 
serviceProvider"" (
=>"") +
("", -
Func""- 1
<""1 2
HttpContext""2 =
>""= >
)""> ?
(""? @
(""@ A
)""A B
=>""C E
httpContextAccessor""F Y
.""Y Z
HttpContext""Z e
)""e f
}## 
;## 
_queryStringMethod%% 
=%%  
new%%! $
GlobalMethod%%% 1
{&& 
Name'' 
='' 
$str'' $
,''$ %
Method(( 
=(( 
serviceProvider(( (
=>(() +
(((, -
Func((- 1
<((1 2
string((2 8
,((8 9
object((: @
>((@ A
)((A B
(((B C
name((C G
=>((H J
{)) 
if** 
(** 
name** 
==** 
null**  $
)**$ %
{++ 
return,, 
httpContextAccessor,, 2
.,,2 3
HttpContext,,3 >
.,,> ?
Request,,? F
.,,F G
QueryString,,G R
.,,R S
ToString,,S [
(,,[ \
),,\ ]
;,,] ^
}-- 
object.. 
result.. !
;..! "
if// 
(// 
httpContextAccessor// +
.//+ ,
HttpContext//, 7
.//7 8
Request//8 ?
.//? @
Query//@ E
.//E F
TryGetValue//F Q
(//Q R
name//R V
,//V W
out//X [
var//\ _
values//` f
)//f g
)//g h
{00 
if11 
(11 
values11 "
.11" #
Count11# (
==11) +
$num11, -
)11- .
{22 
result33 "
=33# $
null33% )
;33) *
}44 
else55 
if55 
(55  !
values55! '
.55' (
Count55( -
==55. 0
$num551 2
)552 3
{66 
result77 "
=77# $
values77% +
[77+ ,
$num77, -
]77- .
;77. /
}88 
else99 
{:: 
result;; "
=;;# $
values;;% +
.;;+ ,
ToArray;;, 3
(;;3 4
);;4 5
;;;5 6
}<< 
}== 
else>> 
{?? 
result@@ 
=@@  
null@@! %
;@@% &
}AA 
returnBB 
resultBB !
;BB! "
}CC 
)CC 
}DD 
;DD  
_responseWriteMethodFF  
=FF! "
newFF# &
GlobalMethodFF' 3
{GG 
NameHH 
=HH 
$strHH &
,HH& '
MethodII 
=II 
serviceProviderII (
=>II) +
(II, -
ActionII- 3
<II3 4
stringII4 :
>II: ;
)II; <
(II< =
textII= A
=>IIB D
httpContextAccessorIIE X
.IIX Y
HttpContextIIY d
.IId e
ResponseIIe m
.IIm n

WriteAsyncIIn x
(IIx y
textIIy }
)II} ~
.II~ 

GetAwaiter	II ‰
(
II‰ 
)
II ‹
.
II‹ 
	GetResult
II •
(
II• –
)
II– —
)
II— 
}JJ 
;JJ 
_absoluteUrlMethodLL 
=LL  
newLL! $
GlobalMethodLL% 1
{MM 
NameNN 
=NN 
$strNN $
,NN$ %
MethodOO 
=OO 
serviceProviderOO (
=>OO) +
(OO, -
FuncOO- 1
<OO1 2
stringOO2 8
,OO8 9
stringOO: @
>OO@ A
)OOA B
(OOB C
relativePathOOC O
=>OOP R
{PP 
varQQ 
urlHelperFactoryQQ (
=QQ) *
serviceProviderQQ+ :
.QQ: ;
GetRequiredServiceQQ; M
<QQM N
IUrlHelperFactoryQQN _
>QQ_ `
(QQ` a
)QQa b
;QQb c
varRR 
	urlHelperRR !
=RR" #
urlHelperFactoryRR$ 4
.RR4 5
GetUrlHelperRR5 A
(RRA B
newRRB E
ActionContextRRF S
(RRS T
httpContextAccessorRRT g
.RRg h
HttpContextRRh s
,RRs t
newRRu x
	RouteData	RRy ‚
(
RR‚ ƒ
)
RRƒ „
,
RR„ …
new
RR† ‰
ActionDescriptor
RR 
(
RR ›
)
RR› 
)
RR 
)
RR 
;
RR 
returnSS 
	urlHelperSS $
.SS$ %
ToAbsoluteUrlSS% 2
(SS2 3
relativePathSS3 ?
)SS? @
;SS@ A
}TT 
)TT 
}UU 
;UU 
_readBodyMethodWW 
=WW 
newWW !
GlobalMethodWW" .
{XX 
NameYY 
=YY 
$strYY !
,YY! "
MethodZZ 
=ZZ 
serviceProviderZZ (
=>ZZ) +
(ZZ, -
FuncZZ- 1
<ZZ1 2
stringZZ2 8
>ZZ8 9
)ZZ9 :
(ZZ: ;
(ZZ; <
)ZZ< =
=>ZZ> @
{[[ 
using\\ 
(\\ 
var\\ 
sr\\ !
=\\" #
new\\$ '
StreamReader\\( 4
(\\4 5
httpContextAccessor\\5 H
.\\H I
HttpContext\\I T
.\\T U
Request\\U \
.\\\ ]
Body\\] a
)\\a b
)\\b c
{]] 
return__ 
sr__ !
.__! "
ReadToEndAsync__" 0
(__0 1
)__1 2
.__2 3

GetAwaiter__3 =
(__= >
)__> ?
.__? @
	GetResult__@ I
(__I J
)__J K
;__K L
}`` 
}aa 
)aa 
}bb 
;bb 
_requestFormMethoddd 
=dd  
newdd! $
GlobalMethoddd% 1
{ee 
Nameff 
=ff 
$strff $
,ff$ %
Methodgg 
=gg 
serviceProvidergg (
=>gg) +
(gg, -
Funcgg- 1
<gg1 2
stringgg2 8
,gg8 9
objectgg: @
>gg@ A
)ggA B
(ggB C
fieldggC H
=>ggI K
{hh 
objectii 
resultii !
;ii! "
ifjj 
(jj 
httpContextAccessorjj +
.jj+ ,
HttpContextjj, 7
.jj7 8
Requestjj8 ?
.jj? @
Formjj@ D
.jjD E
TryGetValuejjE P
(jjP Q
fieldjjQ V
,jjV W
outjjX [
varjj\ _
valuesjj` f
)jjf g
)jjg h
{kk 
ifll 
(ll 
valuesll "
.ll" #
Countll# (
==ll) +
$numll, -
)ll- .
{mm 
resultnn "
=nn# $
nullnn% )
;nn) *
}oo 
elsepp 
ifpp 
(pp  !
valuespp! '
.pp' (
Countpp( -
==pp. 0
$numpp1 2
)pp2 3
{qq 
resultrr "
=rr# $
valuesrr% +
[rr+ ,
$numrr, -
]rr- .
;rr. /
}ss 
elsett 
{uu 
resultvv "
=vv# $
valuesvv% +
.vv+ ,
ToArrayvv, 3
(vv3 4
)vv4 5
;vv5 6
}ww 
}xx 
elseyy 
{zz 
result{{ 
={{  
null{{! %
;{{% &
}|| 
return}} 
result}} !
;}}! "
}~~ 
)~~ 
} 
; &
_queryStringAsJsonMethod
 $
=
% &
new
' *
GlobalMethod
+ 7
{
‚‚ 
Name
ƒƒ 
=
ƒƒ 
$str
ƒƒ *
,
ƒƒ* +
Method
„„ 
=
„„ 
serviceProvider
„„ (
=>
„„) +
(
„„, -
Func
„„- 1
<
„„1 2
JObject
„„2 9
>
„„9 :
)
„„: ;
(
„„; <
(
„„< =
)
„„= >
=>
„„? A
new
…… 
JObject
…… 
(
……  
(
……  !
from
……! %
param
……& +
in
……, .!
httpContextAccessor
……/ B
.
……B C
HttpContext
……C N
.
……N O
Request
……O V
.
……V W
Query
……W \
select
††! '
new
††( +
	JProperty
††, 5
(
††5 6
param
††6 ;
.
††; <
Key
††< ?
,
††? @
JArray
††A G
.
††G H

FromObject
††H R
(
††R S
param
††S X
.
††X Y
Value
††Y ^
.
††^ _
ToArray
††_ f
(
††f g
)
††g h
)
††h i
)
††i j
)
††j k
.
††k l
ToArray
††l s
(
††s t
)
††t u
)
††u v
)
††v w
}
‡‡ 
;
‡‡ &
_requestFormAsJsonMethod
‰‰ $
=
‰‰% &
new
‰‰' *
GlobalMethod
‰‰+ 7
{
 
Name
‹‹ 
=
‹‹ 
$str
‹‹ *
,
‹‹* +
Method
 
=
 
serviceProvider
 (
=>
) +
(
, -
Func
- 1
<
1 2
JObject
2 9
>
9 :
)
: ;
(
; <
(
< =
)
= >
=>
? A
new
 
JObject
 
(
  
(
  !
from
! %
field
& +
in
, .!
httpContextAccessor
/ B
.
B C
HttpContext
C N
.
N O
Request
O V
.
V W
Form
W [
select
! '
new
( +
	JProperty
, 5
(
5 6
field
6 ;
.
; <
Key
< ?
,
? @
JArray
A G
.
G H

FromObject
H R
(
R S
field
S X
.
X Y
Value
Y ^
.
^ _
ToArray
_ f
(
f g
)
g h
)
h i
)
i j
)
j k
.
k l
ToArray
l s
(
s t
)
t u
)
u v
)
v w
}
 
;
 
}
 	
public
’’ 
IEnumerable
’’ 
<
’’ 
GlobalMethod
’’ '
>
’’' (

GetMethods
’’) 3
(
’’3 4
)
’’4 5
{
““ 	
return
”” 
new
”” 
[
”” 
]
”” 
{
””  
_httpContextMethod
”” -
,
””- . 
_queryStringMethod
””/ A
,
””A B"
_responseWriteMethod
””C W
,
””W X 
_absoluteUrlMethod
””Y k
,
””k l
_readBodyMethod
””m |
,
””| }!
_requestFormMethod””~ 
,”” ‘(
_queryStringAsJsonMethod””’ ª
,””ª «(
_requestFormAsJsonMethod””¬ Δ
}””Ε Ζ
;””Ζ Η
}
•• 	
}
–– 
}—— ε,
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Scripting\SignalMethodProvider.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
	Scripting% .
{ 
public 

class  
SignalMethodProvider %
:& '!
IGlobalMethodProvider( =
{ 
private 
readonly 
GlobalMethod %
_signalUrlMethod& 6
;6 7
public  
SignalMethodProvider #
(# $$
WorkflowExecutionContext$ <
workflowContext= L
,L M!
ISecurityTokenServiceN c 
securityTokenServiced x
)x y
{ 	
_signalUrlMethod 
= 
new "
GlobalMethod# /
{ 
Name 
= 
$str "
," #
Method 
= 
serviceProvider (
=>) +
(, -
Func- 1
<1 2
string2 8
,8 9
string: @
>@ A
)A B
(B C
(C D
signalD J
)J K
=>L N
{ 
var 
payload 
=  !
!" #
String# )
.) *
IsNullOrWhiteSpace* <
(< =
workflowContext= L
.L M
CorrelationIdM Z
)Z [
?\ ]
SignalPayload^ k
.k l
ForCorrelationl z
(z {
signal	{ 
,
 ‚
workflowContext
ƒ ’
.
’ “
CorrelationId
“  
)
  ΅
:
Ά £
SignalPayload
¤ ±
.
± ²
ForWorkflow
² ½
(
½ Ύ
signal
Ύ Δ
,
Δ Ε
workflowContext
Ζ Υ
.
Υ Φ

WorkflowId
Φ ΰ
)
ΰ α
;
α β
var 
token 
=  
securityTokenService  4
.4 5
CreateToken5 @
(@ A
payloadA H
,H I
TimeSpanJ R
.R S
FromDaysS [
([ \
$num\ ]
)] ^
)^ _
;_ `
var 
	urlHelper !
=" #
serviceProvider$ 3
.3 4
GetRequiredService4 F
<F G

IUrlHelperG Q
>Q R
(R S
)S T
;T U
return 
	urlHelper $
.$ %
Action% +
(+ ,
$str, 5
,5 6
$str7 E
,E F
newG J
{K L
areaM Q
=R S
$strT k
,k l
tokenm r
}s t
)t u
;u v
} 
) 
} 
; 
} 	
public   
IEnumerable   
<   
GlobalMethod   '
>  ' (

GetMethods  ) 3
(  3 4
)  4 5
{!! 	
return"" 
new"" 
["" 
]"" 
{"" 
_signalUrlMethod"" +
}"", -
;""- .
}## 	
}$$ 
public&& 

class&& 
TokenMethodProvider&& $
:&&% &!
IGlobalMethodProvider&&' <
{'' 
private(( 
readonly(( 
GlobalMethod(( % 
_createWorkflowToken((& :
;((: ;
public** 
TokenMethodProvider** "
(**" #
)**# $
{++ 	 
_createWorkflowToken,,  
=,,! "
new,,# &
GlobalMethod,,' 3
{-- 
Name.. 
=.. 
$str.. ,
,.., -
Method// 
=// 
serviceProvider// (
=>//) +
(//, -
Func//- 1
<//1 2
string//2 8
,//8 9
string//: @
,//@ A
int//B E
,//E F
string//G M
>//M N
)//N O
(//O P
(//P Q
workflowTypeId//Q _
,//_ `

activityId//a k
,//k l
days//m q
)//q r
=>//s u
{00 
var11  
securityTokenService11 ,
=11- .
serviceProvider11/ >
.11> ?
GetRequiredService11? Q
<11Q R!
ISecurityTokenService11R g
>11g h
(11h i
)11i j
;11j k
var33 
payload33 
=33  !
new33" %
WorkflowPayload33& 5
(335 6
workflowTypeId336 D
,33D E

activityId33F P
)33P Q
;33Q R
if55 
(55 
days55 
==55 
$num55  !
)55! "
{66 
days77 
=77 "
HttpWorkflowController77 5
.775 6!
NoExpiryTokenLifespan776 K
;77K L
}88 
return::  
securityTokenService:: /
.::/ 0
CreateToken::0 ;
(::; <
payload::< C
,::C D
TimeSpan::E M
.::M N
FromDays::N V
(::V W
days::W [
)::[ \
)::\ ]
;::] ^
};; 
);; 
}<< 
;<< 
}== 	
public?? 
IEnumerable?? 
<?? 
GlobalMethod?? '
>??' (

GetMethods??) 3
(??3 4
)??4 5
{@@ 	
returnAA 
newAA 
[AA 
]AA 
{AA  
_createWorkflowTokenAA /
}AA0 1
;AA1 2
}BB 	
}CC 
}DD ƒ
¤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\IWorkflowInstanceRouteEntries.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Services% -
{ 
internal 
	interface )
IWorkflowInstanceRouteEntries 4
:5 6!
IWorkflowRouteEntries7 L
{ 
} 
} ν
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\IWorkflowRouteEntries.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Services% -
{ 
internal 
	interface !
IWorkflowRouteEntries ,
{		 
Task

 
<

 
IEnumerable

 
<

 
WorkflowRoutesEntry

 ,
>

, -
>

- .(
GetWorkflowRouteEntriesAsync

/ K
(

K L
string

L R

httpMethod

S ]
,

] ^ 
RouteValueDictionary

_ s
routeValues

t 
)	

 €
;


€ 
Task 
AddEntriesAsync 
( 
IEnumerable (
<( )
WorkflowRoutesEntry) <
>< =
entries> E
)E F
;F G
Task 
RemoveEntriesAsync 
(  
string  &

workflowId' 1
)1 2
;2 3
} 
} ϋ
 D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\IWorkflowTypeRouteEntries.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Services% -
{ 
internal 
	interface %
IWorkflowTypeRouteEntries 0
:1 2!
IWorkflowRouteEntries3 H
{ 
} 
} Τ0
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\WorkflowInstanceRouteEntries.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Services% -
{ 
internal 
class (
WorkflowInstanceRouteEntries /
:0 1 
WorkflowRouteEntries2 F
<F G!
WorkflowRouteDocumentG \
>\ ]
,] ^)
IWorkflowInstanceRouteEntries_ |
{ 
	protected 
override 
async  
Task! %
<% &!
WorkflowRouteDocument& ;
>; <
CreateDocumentAsync= P
(P Q
)Q R
{ 	
var "
workflowTypeDictionary &
=' (
() *
await* /
Session0 7
.7 8
Query8 =
<= >
WorkflowType> J
,J K
WorkflowTypeIndexL ]
>] ^
(^ _
)_ `
.` a
	ListAsynca j
(j k
)k l
)l m
.m n
ToDictionaryn z
(z {
x{ |
=>} 
x
€ 
.
 ‚
WorkflowTypeId
‚ 
)
 ‘
;
‘ ’
var 
skip 
= 
$num 
; 
var 
pageSize 
= 
$num 
; 
var 
document 
= 
new !
WorkflowRouteDocument 4
(4 5
)5 6
;6 7
while 
( 
true 
) 
{ 
var 
pendingWorkflows $
=% &
await' ,
Session- 4
. 
Query 
< 
Workflow #
,# $+
WorkflowBlockingActivitiesIndex% D
>D E
(E F
indexF K
=>L N
index 
. 
ActivityName *
==+ -"
HttpRequestFilterEvent. D
.D E
	EventNameE N
)N O
. 
Skip 
( 
skip 
) 
. 
Take 
( 
pageSize "
)" #
. 
	ListAsync 
( 
)  
;  !
if   
(   
!   
pendingWorkflows   %
.  % &
Any  & )
(  ) *
)  * +
)  + ,
{!! 
break"" 
;"" 
}## 
var%%  
workflowRouteEntries%% (
=%%) *
from&& 
workflow&& !
in&&" $
pendingWorkflows&&% 5
from'' 
entry'' 
in'' !$
GetWorkflowRoutesEntries''" :
('': ;"
workflowTypeDictionary''; Q
[''Q R
workflow''R Z
.''Z [
WorkflowTypeId''[ i
]''i j
,''j k
workflow''l t
,''t u
ActivityLibrary	''v …
)
''… †
select(( 
entry((  
;((  !

AddEntries** 
(** 
document** #
,**# $ 
workflowRouteEntries**% 9
)**9 :
;**: ;
if,, 
(,, 
pendingWorkflows,, $
.,,$ %
Count,,% *
(,,* +
),,+ ,
<,,- .
pageSize,,/ 7
),,7 8
{-- 
break.. 
;.. 
}// 
skip11 
+=11 
pageSize11  
;11  !
}22 
return44 
document44 
;44 
}55 	
internal77 
static77 
IEnumerable77 #
<77# $
WorkflowRoutesEntry77$ 7
>777 8$
GetWorkflowRoutesEntries779 Q
(77Q R
WorkflowType77R ^
workflowType77_ k
,77k l
Workflow77m u
workflow77v ~
,77~ 
IActivityLibrary
77€ 
activityLibrary
77‘  
)
77  ΅
{88 	
var99 
awaitingActivityIds99 #
=99$ %
workflow99& .
.99. /
BlockingActivities99/ A
.99A B
Select99B H
(99H I
x99I J
=>99K M
x99N O
.99O P

ActivityId99P Z
)99Z [
.99[ \
ToDictionary99\ h
(99h i
x99i j
=>99k m
x99n o
)99o p
;99p q
return:: 
workflowType:: 
.::  

Activities::  *
.::* +
Where::+ 0
(::0 1
x::1 2
=>::3 5
x::6 7
.::7 8
Name::8 <
==::= ?"
HttpRequestFilterEvent::@ V
.::V W
	EventName::W `
&&::a c
awaitingActivityIds::d w
.::w x
ContainsKey	::x ƒ
(
::ƒ „
x
::„ …
.
::… †

ActivityId
::† 
)
:: ‘
)
::‘ ’
.
::’ “
Select
::“ ™
(
::™ 
x
:: ›
=>
:: 
{;; 
var<< 
activity<< 
=<< 
activityLibrary<< .
.<<. /
InstantiateActivity<</ B
<<<B C"
HttpRequestFilterEvent<<C Y
><<Y Z
(<<Z [
x<<[ \
)<<\ ]
;<<] ^
var== 
entry== 
=== 
new== 
WorkflowRoutesEntry==  3
{>> 

WorkflowId?? 
=??  
workflow??! )
.??) *

WorkflowId??* 4
,??4 5

ActivityId@@ 
=@@  
x@@! "
.@@" #

ActivityId@@# -
,@@- .

HttpMethodAA 
=AA  
activityAA! )
.AA) *

HttpMethodAA* 4
,AA4 5
RouteValuesBB 
=BB  !
activityBB" *
.BB* +
RouteValuesBB+ 6
,BB6 7
}CC 
;CC 
returnEE 
entryEE 
;EE 
}FF 
)FF 
;FF 
}GG 	
}HH 
}II ΩE
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\WorkflowRouteEntriesOfT.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Services% -
{ 
internal 
class  
WorkflowRouteEntries '
<' ("
TWorkflowRouteDocument( >
>> ?
:@ A!
IWorkflowRouteEntriesB W
whereX ]"
TWorkflowRouteDocument^ t
:u v"
WorkflowRouteDocument	w 
,
 
new
 ‘
(
‘ ’
)
’ “
{ 
public  
WorkflowRouteEntries #
(# $
)$ %
{ 	
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
WorkflowRoutesEntry& 9
>9 :
>: ;(
GetWorkflowRouteEntriesAsync< X
(X Y
stringY _

httpMethod` j
,j k!
RouteValueDictionary	l €
routeValues
 
)
 
{ 	
var 
document 
= 
await  
GetDocumentAsync! 1
(1 2
)2 3
;3 4
return $
GetWorkflowRoutesEntries +
(+ ,
document, 4
,4 5

httpMethod6 @
,@ A
routeValuesB M
)M N
;N O
} 	
public 
async 
Task 
AddEntriesAsync )
() *
IEnumerable* 5
<5 6
WorkflowRoutesEntry6 I
>I J
entriesK R
)R S
{ 	
var 
document 
= 
await  
LoadDocumentAsync! 2
(2 3
)3 4
;4 5

AddEntries 
( 
document 
,  
entries! (
)( )
;) *
await   
DocumentManager   !
.  ! "
UpdateAsync  " -
(  - .
document  . 6
)  6 7
;  7 8
}!! 	
public## 
async## 
Task## 
RemoveEntriesAsync## ,
(##, -
string##- 3

workflowId##4 >
)##> ?
{$$ 	
var%% 
document%% 
=%% 
await%%  
LoadDocumentAsync%%! 2
(%%2 3
)%%3 4
;%%4 5
RemoveEntries&& 
(&& 
document&& "
,&&" #

workflowId&&$ .
)&&. /
;&&/ 0
await'' 
DocumentManager'' !
.''! "
UpdateAsync''" -
(''- .
document''. 6
)''6 7
;''7 8
}(( 	
	protected** 
virtual** 
IEnumerable** %
<**% &
WorkflowRoutesEntry**& 9
>**9 :$
GetWorkflowRoutesEntries**; S
(**S T!
WorkflowRouteDocument**T i
document**j r
,**r s
string**t z

httpMethod	**{ …
,
**… †"
RouteValueDictionary
**‡ ›
routeValues
** §
)
**§ ¨
{++ 	
var,, 
controllerName,, 
=,,  
routeValues,,! ,
.,,, -
GetValue,,- 5
<,,5 6
string,,6 <
>,,< =
(,,= >
$str,,> J
),,J K
;,,K L
var-- 

actionName-- 
=-- 
routeValues-- (
.--( )
GetValue--) 1
<--1 2
string--2 8
>--8 9
(--9 :
$str--: B
)--B C
;--C D
var.. 
areaName.. 
=.. 
routeValues.. &
...& '
GetValue..' /
<../ 0
string..0 6
>..6 7
(..7 8
$str..8 >
)..> ?
;..? @
return00 
document00 
.00 
Entries00 #
.00# $
Values00$ *
.00* +

SelectMany00+ 5
(005 6
x006 7
=>008 :
x00; <
)00< =
.00= >
Where00> C
(00C D
x00D E
=>00F H
x11 
.11 

HttpMethod11 
==11 

httpMethod11  *
&&11+ -
(22 
x22 
.22 
ControllerName22 !
==22" $
controllerName22% 3
||224 6
String227 =
.22= >
IsNullOrWhiteSpace22> P
(22P Q
x22Q R
.22R S
ControllerName22S a
)22a b
)22b c
&&22d f
(33 
x33 
.33 

ActionName33 
==33  

actionName33! +
||33, .
String33/ 5
.335 6
IsNullOrWhiteSpace336 H
(33H I
x33I J
.33J K

ActionName33K U
)33U V
)33V W
&&33X Z
(44 
x44 
.44 
AreaName44 
==44 
areaName44 '
||44( *
String44+ 1
.441 2
IsNullOrWhiteSpace442 D
(44D E
x44E F
.44F G
AreaName44G O
)44O P
)44P Q
)44Q R
.55 
ToArray55 
(55 
)55 
;55 
}66 	
public88 
void88 

AddEntries88 
(88 "
TWorkflowRouteDocument88 5
document886 >
,88> ?
IEnumerable88@ K
<88K L
WorkflowRoutesEntry88L _
>88_ `
entries88a h
)88h i
{99 	
foreach:: 
(:: 
var:: 
group:: 
in:: !
entries::" )
.::) *
GroupBy::* 1
(::1 2
x::2 3
=>::4 6
x::7 8
.::8 9

WorkflowId::9 C
)::C D
)::D E
{;; 
document<< 
.<< 
Entries<<  
[<<  !
group<<! &
.<<& '
Key<<' *
]<<* +
=<<, -
group<<. 3
.<<3 4
ToList<<4 :
(<<: ;
)<<; <
;<<< =
}== 
}>> 	
public@@ 
void@@ 
RemoveEntries@@ !
(@@! ""
TWorkflowRouteDocument@@" 8
document@@9 A
,@@A B
string@@C I

workflowId@@J T
)@@T U
=>@@V X
document@@Y a
.@@a b
Entries@@b i
.@@i j
Remove@@j p
(@@p q

workflowId@@q {
)@@{ |
;@@| }
privateEE 
TaskEE 
<EE "
TWorkflowRouteDocumentEE +
>EE+ ,
LoadDocumentAsyncEE- >
(EE> ?
)EE? @
=>EEA C
DocumentManagerEED S
.EES T#
GetOrCreateMutableAsyncEET k
(EEk l
CreateDocumentAsyncEEl 
)	EE €
;
EE€ 
privateJJ 
TaskJJ 
<JJ "
TWorkflowRouteDocumentJJ +
>JJ+ ,
GetDocumentAsyncJJ- =
(JJ= >
)JJ> ?
=>JJ@ B
DocumentManagerJJC R
.JJR S%
GetOrCreateImmutableAsyncJJS l
(JJl m 
CreateDocumentAsync	JJm €
)
JJ€ 
;
JJ ‚
	protectedLL 
virtualLL 
TaskLL 
<LL "
TWorkflowRouteDocumentLL 5
>LL5 6
CreateDocumentAsyncLL7 J
(LLJ K
)LLK L
=>LLM O
TaskLLP T
.LLT U

FromResultLLU _
(LL_ `
newLL` c"
TWorkflowRouteDocumentLLd z
(LLz {
)LL{ |
)LL| }
;LL} ~
	protectedNN 
staticNN 
ISessionNN !
SessionNN" )
=>NN* ,

ShellScopeNN- 7
.NN7 8
ServicesNN8 @
.NN@ A
GetRequiredServiceNNA S
<NNS T
ISessionNNT \
>NN\ ]
(NN] ^
)NN^ _
;NN_ `
	protectedPP 
staticPP 
IActivityLibraryPP )
ActivityLibraryPP* 9
=>PP: <

ShellScopePP= G
.PPG H
ServicesPPH P
.PPP Q
GetRequiredServicePPQ c
<PPc d
IActivityLibraryPPd t
>PPt u
(PPu v
)PPv w
;PPw x
	protectedRR 
staticRR $
IVolatileDocumentManagerRR 1
<RR1 2"
TWorkflowRouteDocumentRR2 H
>RRH I
DocumentManagerRRJ Y
=>SS 

ShellScopeSS 
.SS 
ServicesSS "
.SS" #
GetRequiredServiceSS# 5
<SS5 6$
IVolatileDocumentManagerSS6 N
<SSN O"
TWorkflowRouteDocumentSSO e
>SSe f
>SSf g
(SSg h
)SSh i
;SSi j
}TT 
}UU ο
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\WorkflowTypeRouteEntries.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %
Services% -
{ 
internal 
class $
WorkflowTypeRouteEntries +
:, - 
WorkflowRouteEntries. B
<B C%
WorkflowTypeRouteDocumentC \
>\ ]
,] ^%
IWorkflowTypeRouteEntries_ x
{ 
	protected 
override 
async  
Task! %
<% &%
WorkflowTypeRouteDocument& ?
>? @
CreateDocumentAsyncA T
(T U
)U V
{ 	
var "
workflowTypeDictionary &
=' (
() *
await* /
Session0 7
.7 8
Query8 =
<= >
WorkflowType> J
,J K
WorkflowTypeIndexL ]
>] ^
(^ _
)_ `
.` a
	ListAsynca j
(j k
)k l
)l m
.m n
ToDictionaryn z
(z {
x{ |
=>} 
x
€ 
.
 ‚
WorkflowTypeId
‚ 
)
 ‘
;
‘ ’
var $
workflowTypeRouteEntries (
=) *
from 
workflowType !
in" $"
workflowTypeDictionary% ;
.; <
Values< B
from 
entry 
in (
GetWorkflowTypeRoutesEntries :
(: ;
workflowType; G
,G H
ActivityLibraryI X
)X Y
select 
entry 
; 
var 
document 
= 
new %
WorkflowTypeRouteDocument 8
(8 9
)9 :
;: ;

AddEntries 
( 
document 
,  $
workflowTypeRouteEntries! 9
)9 :
;: ;
return 
document 
; 
} 	
internal 
static 
IEnumerable #
<# $
WorkflowRoutesEntry$ 7
>7 8(
GetWorkflowTypeRoutesEntries9 U
(U V
WorkflowTypeV b
workflowTypec o
,o p
IActivityLibrary	q 
activityLibrary
‚ ‘
)
‘ ’
{ 	
return   
workflowType   
.    

Activities    *
.  * +
Where  + 0
(  0 1
x  1 2
=>  3 5
x  6 7
.  7 8
IsStart  8 ?
&&  @ B
x  C D
.  D E
Name  E I
==  J L"
HttpRequestFilterEvent  M c
.  c d
	EventName  d m
)  m n
.  n o
Select  o u
(  u v
x  v w
=>  x z
{!! 
var"" 
activity"" 
="" 
activityLibrary"" .
."". /
InstantiateActivity""/ B
<""B C"
HttpRequestFilterEvent""C Y
>""Y Z
(""Z [
x""[ \
)""\ ]
;""] ^
var## 
entry## 
=## 
new## 
WorkflowRoutesEntry##  3
{$$ 

WorkflowId%% 
=%%  
workflowType%%! -
.%%- .
Id%%. 0
.%%0 1
ToString%%1 9
(%%9 :
)%%: ;
,%%; <

ActivityId&& 
=&&  
x&&! "
.&&" #

ActivityId&&# -
,&&- .

HttpMethod'' 
=''  
activity''! )
.'') *

HttpMethod''* 4
,''4 5
RouteValues(( 
=((  !
activity((" *
.((* +
RouteValues((+ 6
})) 
;)) 
return++ 
entry++ 
;++ 
},, 
),, 
;,, 
}-- 	
}.. 
}// ι.
…D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Startup.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
{ 
[ 
Feature 
( 
$str )
)) *
]* +
[ 
RequireFeatures 
( 
$str ,
), -
]- .
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	Configure 
< 

MvcOptions )
>) *
(* +
(+ ,
options, 3
)3 4
=>5 7
{ 
options 
. 
Filters 
.  
Add  #
(# $
typeof$ *
(* + 
WorkflowActionFilter+ ?
)? @
)@ A
;A B
} 
) 
; 
services!! 
.!! 
	AddScoped!! 
<!! %
IWorkflowTypeEventHandler!! 8
,!!8 9%
WorkflowTypeRoutesHandler!!: S
>!!S T
(!!T U
)!!U V
;!!V W
services"" 
."" 
	AddScoped"" 
<"" 
IWorkflowHandler"" /
,""/ 0!
WorkflowRoutesHandler""1 F
>""F G
(""G H
)""H I
;""I J
services$$ 
.$$ 
AddSingleton$$ !
<$$! "%
IWorkflowTypeRouteEntries$$" ;
,$$; <$
WorkflowTypeRouteEntries$$= U
>$$U V
($$V W
)$$W X
;$$X Y
services%% 
.%% 
AddSingleton%% !
<%%! ")
IWorkflowInstanceRouteEntries%%" ?
,%%? @(
WorkflowInstanceRouteEntries%%A ]
>%%] ^
(%%^ _
)%%_ `
;%%` a
services&& 
.&& 
AddSingleton&& !
<&&! "!
IGlobalMethodProvider&&" 7
,&&7 8
HttpMethodsProvider&&9 L
>&&L M
(&&M N
)&&N O
;&&O P
services'' 
.'' 
	AddScoped'' 
<'' ,
 IWorkflowExecutionContextHandler'' ?
,''? @1
%SignalWorkflowExecutionContextHandler''A f
>''f g
(''g h
)''h i
;''i j
services)) 
.)) 
AddActivity))  
<))  !
HttpRequestEvent))! 1
,))1 2)
HttpRequestEventDisplayDriver))3 P
>))P Q
())Q R
)))R S
;))S T
services** 
.** 
AddActivity**  
<**  !"
HttpRequestFilterEvent**! 7
,**7 8/
#HttpRequestFilterEventDisplayDriver**9 \
>**\ ]
(**] ^
)**^ _
;**_ `
services++ 
.++ 
AddActivity++  
<++  !
HttpRedirectTask++! 1
,++1 2)
HttpRedirectTaskDisplayDriver++3 P
>++P Q
(++Q R
)++R S
;++S T
services,, 
.,, 
AddActivity,,  
<,,  !
HttpRequestTask,,! 0
,,,0 1(
HttpRequestTaskDisplayDriver,,2 N
>,,N O
(,,O P
),,P Q
;,,Q R
services-- 
.-- 
AddActivity--  
<--  !
HttpResponseTask--! 1
,--1 2)
HttpResponseTaskDisplayDriver--3 P
>--P Q
(--Q R
)--R S
;--S T
services.. 
... 
AddActivity..  
<..  !
SignalEvent..! ,
,.., -$
SignalEventDisplayDriver... F
>..F G
(..G H
)..H I
;..I J
services00 
.00 
AddSingleton00 !
<00! "!
IGlobalMethodProvider00" 7
,007 8
TokenMethodProvider009 L
>00L M
(00M N
)00N O
;00O P
services22 
.22 
	AddScoped22 
<22 '
ILiquidTemplateEventHandler22 :
,22: ;'
SignalLiquidTemplateHandler22< W
>22W X
(22X Y
)22Y Z
;22Z [
services33 
.33 
AddLiquidFilter33 $
<33$ %
SignalUrlFilter33% 4
>334 5
(335 6
$str336 B
)33B C
;33C D
}44 	
public66 
override66 
void66 
	Configure66 &
(66& '
IApplicationBuilder66' :
app66; >
,66> ?!
IEndpointRouteBuilder66@ U
routes66V \
,66\ ]
IServiceProvider66^ n
serviceProvider66o ~
)66~ 
{77 	
routes88 
.88 "
MapAreaControllerRoute88 )
(88) *
name99 
:99 
$str99 $
,99$ %
areaName:: 
::: 
$str:: 1
,::1 2
pattern;; 
:;; 
$str;; -
,;;- .
defaults<< 
:<< 
new<< 
{<< 

controller<<  *
=<<+ ,
$str<<- ;
}<<< =
)== 
;== 
routes?? 
.?? "
MapAreaControllerRoute?? )
(??) *
name@@ 
:@@ 
$str@@ &
,@@& '
areaNameAA 
:AA 
$strAA 1
,AA1 2
patternBB 
:BB 
$strBB 3
,BB3 4
defaultsCC 
:CC 
newCC 
{CC 

controllerCC  *
=CC+ ,
$strCC- ;
,CC; <
actionCC= C
=CCD E
$strCCF N
}CCO P
)DD 
;DD 
}EE 	
}FF 
}GG ²
ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpRedirectTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

ViewModels% /
{ 
public 

class %
HttpRedirectTaskViewModel *
{ 
[ 	
Required	 
] 
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
public

 
bool

 
	Permanent

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} 
} Ϋ
ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpRequestEventViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

ViewModels% /
{ 
public 

class %
HttpRequestEventViewModel *
{ 
public		 
string		 

HttpMethod		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
Url

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
bool $
ValidateAntiforgeryToken ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
int 
TokenLifeSpan  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IList 
< 
SelectListItem #
># $#
GetAvailableHttpMethods% <
(< =
)= >
{ 	
var  
availableHttpMethods $
=% &
new' *
[* +
]+ ,
{- .
$str/ 4
,4 5
$str6 <
,< =
$str> C
,C D
$strE M
,M N
$strO X
}Y Z
;Z [
return  
availableHttpMethods '
.' (
Select( .
(. /
x/ 0
=>1 3
new4 7
SelectListItem8 F
{G H
TextI M
=N O
xP Q
,Q R
ValueS X
=Y Z
x[ \
}] ^
)^ _
._ `
ToList` f
(f g
)g h
;h i
} 	
} 
} ÿ
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpRequestFilterEventViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

ViewModels% /
{ 
public 

class +
HttpRequestFilterEventViewModel 0
{ 
public		 
string		 

HttpMethod		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
ControllerName

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
string 

ActionName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
AreaName 
{  
get! $
;$ %
set& )
;) *
}+ ,
private 
IList 
< 
string 
> !
_availableHttpMethods 3
=4 5
new6 9
[9 :
]: ;
{< =
$str> C
,C D
$strE K
,K L
$strM R
,R S
$strT \
,\ ]
$str^ g
}h i
;i j
public 
IList 
< 
SelectListItem #
># $ 
AvailableHttpMethods% 9
=>: <!
_availableHttpMethods= R
.R S
SelectS Y
(Y Z
xZ [
=>\ ^
new_ b
SelectListItemc q
{r s
Textt x
=y z
x{ |
,| }
Value	~ ƒ
=
„ …
x
† ‡
}
 ‰
)
‰ 
.
 ‹
ToList
‹ ‘
(
‘ ’
)
’ “
;
“ ”
} 
} Ω
΅D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpRequestTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

ViewModels% /
{ 
public 

class $
HttpRequestTaskViewModel )
{ 
[ 	
Required	 
] 
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
[

 	
Required

	 
]

 
public 
string 

HttpMethod  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Headers 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Body 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
HttpResponseCodes '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} »
ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpResponseTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
.$ %

ViewModels% /
{ 
public 

class %
HttpResponseTaskViewModel *
{ 
public 
int 
HttpStatusCode !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Headers 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 θ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\WorkflowHttpResult.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Http  $
{ 
public 

class 
WorkflowHttpResult #
{ 
public 
static 
readonly 
WorkflowHttpResult 1
Instance2 :
=; <
new= @
WorkflowHttpResultA S
(S T
)T U
;U V
} 
} φ%
–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Indexes\WorkflowIndexProvider.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Indexes  '
{ 
public 

class 
WorkflowIndex 
:  
MapIndex! )
{		 
public

 
int

 

DocumentId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
WorkflowTypeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 

WorkflowId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
WorkflowStatus !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 

CreatedUtc "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
public 

class +
WorkflowBlockingActivitiesIndex 0
:1 2
MapIndex3 ;
{ 
public 
string 

ActivityId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ActivityName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
ActivityIsStart #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
WorkflowTypeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 

WorkflowId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string !
WorkflowCorrelationId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
public 

class !
WorkflowIndexProvider &
:' (
IndexProvider) 6
<6 7
Workflow7 ?
>? @
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
Workflow6 >
>> ?
context@ G
)G H
{ 	
context 
. 
For 
< 
WorkflowIndex %
>% &
(& '
)' (
.   
Map   
(   
workflow   
=>    
new!! 
WorkflowIndex!! %
{"" 
WorkflowTypeId## &
=##' (
workflow##) 1
.##1 2
WorkflowTypeId##2 @
,##@ A

WorkflowId$$ "
=$$# $
workflow$$% -
.$$- .

WorkflowId$$. 8
,$$8 9

CreatedUtc%% "
=%%# $
workflow%%% -
.%%- .

CreatedUtc%%. 8
,%%8 9
WorkflowStatus&& &
=&&' (
(&&) *
int&&* -
)&&- .
workflow&&. 6
.&&6 7
Status&&7 =
}'' 
)(( 
;(( 
context** 
.** 
For** 
<** +
WorkflowBlockingActivitiesIndex** 7
>**7 8
(**8 9
)**9 :
.++ 
Map++ 
(++ 
workflow++ 
=>++  
workflow,, 
.,, 
BlockingActivities,, /
.,,/ 0
Select,,0 6
(,,6 7
x,,7 8
=>,,9 ;
new-- +
WorkflowBlockingActivitiesIndex-- 7
{.. 

ActivityId// "
=//# $
x//% &
.//& '

ActivityId//' 1
,//1 2
ActivityName00 $
=00% &
x00' (
.00( )
Name00) -
,00- .
ActivityIsStart11 '
=11( )
x11* +
.11+ ,
IsStart11, 3
,113 4
WorkflowTypeId22 &
=22' (
workflow22) 1
.221 2
WorkflowTypeId222 @
,22@ A

WorkflowId33 "
=33# $
workflow33% -
.33- .

WorkflowId33. 8
,338 9!
WorkflowCorrelationId44 -
=44. /
workflow440 8
.448 9
CorrelationId449 F
??44G I
$str44J L
}55 
)55 
)66 
;66 
}77 	
}88 
}99 »%
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Indexes\WorkflowTypeIndexProvider.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Indexes  '
{ 
public 

class 
WorkflowTypeIndex "
:# $
MapIndex% -
{ 
public		 
int		 

DocumentId		 
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
 
WorkflowTypeId

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
	IsEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
HasStart 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class ,
 WorkflowTypeStartActivitiesIndex 1
:2 3
MapIndex4 <
{ 
public 
string 
WorkflowTypeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
	IsEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
StartActivityId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
StartActivityName '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
public 

class %
WorkflowTypeIndexProvider *
:+ ,
IndexProvider- :
<: ;
WorkflowType; G
>G H
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
WorkflowType6 B
>B C
contextD K
)K L
{ 	
context 
. 
For 
< 
WorkflowTypeIndex )
>) *
(* +
)+ ,
. 
Map 
( 
workflowType !
=>" $
new 
WorkflowTypeIndex -
{   
WorkflowTypeId!! *
=!!+ ,
workflowType!!- 9
.!!9 :
WorkflowTypeId!!: H
,!!H I
Name""  
=""! "
workflowType""# /
.""/ 0
Name""0 4
,""4 5
	IsEnabled## %
=##& '
workflowType##( 4
.##4 5
	IsEnabled##5 >
,##> ?
HasStart$$ $
=$$% &
workflowType$$' 3
.$$3 4

Activities$$4 >
.$$> ?
Any$$? B
($$B C
x$$C D
=>$$E G
x$$H I
.$$I J
IsStart$$J Q
)$$Q R
}%% 
)&& 
;&& 
context(( 
.(( 
For(( 
<(( ,
 WorkflowTypeStartActivitiesIndex(( 8
>((8 9
(((9 :
)((: ;
.)) 
Map)) 
()) 
workflowType)) !
=>))" $
workflowType**  
.**  !

Activities**! +
.**+ ,
Where**, 1
(**1 2
x**2 3
=>**4 6
x**7 8
.**8 9
IsStart**9 @
)**@ A
.**A B
Select**B H
(**H I
x**I J
=>**K M
new++ ,
 WorkflowTypeStartActivitiesIndex++ <
{,, 
WorkflowTypeId-- *
=--+ ,
workflowType--- 9
.--9 :
WorkflowTypeId--: H
,--H I
Name..  
=..! "
workflowType..# /
.../ 0
Name..0 4
,..4 5
	IsEnabled// %
=//& '
workflowType//( 4
.//4 5
	IsEnabled//5 >
,//> ?
StartActivityId00 +
=00, -
x00. /
.00/ 0

ActivityId000 :
,00: ;
StartActivityName11 -
=11. /
x110 1
.111 2
Name112 6
}22 
)22 
)33 
;33 
}44 	
}55 
}66 ψ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str [
,[ \
Category		 
=		 
$str		 
)

 
]

 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	  
,  !
Name 
=	 

$str 
, 
Description 
= 
$str [
,[ \
Dependencies 
= 
new 
[ 
] 
{ 
$str /
,/ 0
$str1 H
}I J
,J K
Category 
= 
$str 
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 %
,% &
Name 
=	 

$str &
,& '
Description 
= 
$str B
,B C
Dependencies 
= 
new 
[ 
] 
{ 
$str 2
}3 4
,4 5
Category 
= 
$str 
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 '
,' (
Name 
=	 

$str &
,& '
Description 
= 
$str A
,A B
Dependencies   
=   
new   
[   
]   
{   
$str   2
}  3 4
,  4 5
Category!! 
=!! 
$str!! 
)"" 
]"" γK
ƒD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Migrations.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
{ 
public 

class 

Migrations 
: 
DataMigration +
{		 
public

 
int

 
Create

 
(

 
)

 
{ 	
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
WorkflowTypeIndex. ?
>? @
(@ A
tableA F
=>G I
tableJ O
. 
Column 
< 
string 
> 
(  
$str  0
)0 1
. 
Column 
< 
string 
> 
(  
$str  &
)& '
. 
Column 
< 
bool 
> 
( 
$str )
)) *
. 
Column 
< 
bool 
> 
( 
$str (
)( )
) 
; 
SchemaBuilder 
. 
AlterIndexTable )
<) *
WorkflowTypeIndex* ;
>; <
(< =
table= B
=>C E
tableF K
. 
CreateIndex 
( 
$str ?
,? @
$str  
,  !
$str $
,$ %
$str 
, 
$str 
,  
$str 
) 
) 
; 
SchemaBuilder 
. 
CreateMapIndexTable -
<- .,
 WorkflowTypeStartActivitiesIndex. N
>N O
(O P
tableP U
=>V X
tableY ^
. 
Column 
< 
string 
> 
(  
$str  0
)0 1
. 
Column 
< 
string 
> 
(  
$str  &
)& '
. 
Column 
< 
bool 
> 
( 
$str )
)) *
.   
Column   
<   
string   
>   
(    
$str    1
)  1 2
.!! 
Column!! 
<!! 
string!! 
>!! 
(!!  
$str!!  3
)!!3 4
)"" 
;"" 
SchemaBuilder$$ 
.$$ 
AlterIndexTable$$ )
<$$) *,
 WorkflowTypeStartActivitiesIndex$$* J
>$$J K
($$K L
table$$L Q
=>$$R T
table$$U Z
.%% 
CreateIndex%% 
(%% 
$str%% N
,%%N O
$str&&  
,&&  !
$str'' $
,''$ %
$str(( %
,((% &
$str)) '
,))' (
$str** 
)**  
)++ 
;++ 
SchemaBuilder-- 
.-- 
CreateMapIndexTable-- -
<--- .
WorkflowIndex--. ;
>--; <
(--< =
table--= B
=>--C E
table--F K
... 
Column.. 
<.. 
string.. 
>.. 
(..  
$str..  0
)..0 1
.// 
Column// 
<// 
string// 
>// 
(//  
$str//  ,
)//, -
.00 
Column00 
<00 
string00 
>00 
(00  
$str00  0
)000 1
.11 
Column11 
<11 
DateTime11  
>11  !
(11! "
$str11" .
)11. /
)22 
;22 
SchemaBuilder44 
.44 
AlterIndexTable44 )
<44) *
WorkflowIndex44* 7
>447 8
(448 9
table449 >
=>44? A
table44B G
.55 
CreateIndex55 
(55 
$str55 ;
,55; <
$str66  
,66  !
$str77 $
,77$ %
$str88  
,88  !
$str99 $
,99$ %
$str::  
)::  !
);; 
;;; 
SchemaBuilder== 
.== 
CreateMapIndexTable== -
<==- .+
WorkflowBlockingActivitiesIndex==. M
>==M N
(==N O
table==O T
=>==U W
table==X ]
.>> 
Column>> 
<>> 
string>> 
>>> 
(>>  
$str>>  ,
)>>, -
.?? 
Column?? 
<?? 
string?? 
>?? 
(??  
$str??  .
)??. /
.@@ 
Column@@ 
<@@ 
bool@@ 
>@@ 
(@@ 
$str@@ /
)@@/ 0
.AA 
ColumnAA 
<AA 
stringAA 
>AA 
(AA  
$strAA  0
)AA0 1
.BB 
ColumnBB 
<BB 
stringBB 
>BB 
(BB  
$strBB  ,
)BB, -
.CC 
ColumnCC 
<CC 
stringCC 
>CC 
(CC  
$strCC  7
)CC7 8
)DD 
;DD 
SchemaBuilderFF 
.FF 
AlterIndexTableFF )
<FF) *+
WorkflowBlockingActivitiesIndexFF* I
>FFI J
(FFJ K
tableFFK P
=>FFQ S
tableFFT Y
.GG 
CreateIndexGG 
(GG 
$strGG M
,GGM N
$strHH  
,HH  !
$strII  
,II  !
$strJJ $
,JJ$ %
$strKK  
)KK  !
)LL 
;LL 
SchemaBuilderNN 
.NN 
AlterIndexTableNN )
<NN) *+
WorkflowBlockingActivitiesIndexNN* I
>NNI J
(NNJ K
tableNNK P
=>NNQ S
tableNNT Y
.OO 
CreateIndexOO 
(OO 
$strOO O
,OOO P
$strPP  
,PP  !
$strQQ "
,QQ" #
$strRR $
,RR$ %
$strSS +
)SS+ ,
)TT 
;TT 
returnWW 
$numWW 
;WW 
}XX 	
public[[ 
int[[ 
UpdateFrom1[[ 
([[ 
)[[  
{\\ 	
SchemaBuilder]] 
.]] 
AlterIndexTable]] )
<]]) *
WorkflowIndex]]* 7
>]]7 8
(]]8 9
table]]9 >
=>]]? A
{^^ 
table__ 
.__ 
	AddColumn__ 
<__  
string__  &
>__& '
(__' (
$str__( 8
)__8 9
;__9 :
}`` 
)`` 
;`` 
returnbb 
$numbb 
;bb 
}cc 	
publicff 
intff 
UpdateFrom2ff 
(ff 
)ff  
{gg 	
SchemaBuilderhh 
.hh 
AlterIndexTablehh )
<hh) *
WorkflowTypeIndexhh* ;
>hh; <
(hh< =
tablehh= B
=>hhC E
tablehhF K
.ii 
CreateIndexii 
(ii 
$strii ?
,ii? @
$strjj  
,jj  !
$strkk $
,kk$ %
$strll 
,ll 
$strmm 
,mm  
$strnn 
)nn 
)oo 
;oo 
SchemaBuilderqq 
.qq 
AlterIndexTableqq )
<qq) *,
 WorkflowTypeStartActivitiesIndexqq* J
>qqJ K
(qqK L
tableqqL Q
=>qqR T
tableqqU Z
.rr 
CreateIndexrr 
(rr 
$strrr N
,rrN O
$strss  
,ss  !
$strtt $
,tt$ %
$struu %
,uu% &
$strvv '
,vv' (
$strww 
)ww  
)xx 
;xx 
SchemaBuilderzz 
.zz 
AlterIndexTablezz )
<zz) *
WorkflowIndexzz* 7
>zz7 8
(zz8 9
tablezz9 >
=>zz? A
tablezzB G
.{{ 
CreateIndex{{ 
({{ 
$str{{ ;
,{{; <
$str||  
,||  !
$str}} $
,}}$ %
$str~~  
,~~  !
$str $
,$ %
$str
€€  
)
€€  !
)
 
;
 
SchemaBuilder
ƒƒ 
.
ƒƒ 
AlterIndexTable
ƒƒ )
<
ƒƒ) *-
WorkflowBlockingActivitiesIndex
ƒƒ* I
>
ƒƒI J
(
ƒƒJ K
table
ƒƒK P
=>
ƒƒQ S
table
ƒƒT Y
.
„„ 
CreateIndex
„„ 
(
„„ 
$str
„„ M
,
„„M N
$str
……  
,
……  !
$str
††  
,
††  !
$str
‡‡ $
,
‡‡$ %
$str
  
)
  !
)
‰‰ 
;
‰‰ 
SchemaBuilder
‹‹ 
.
‹‹ 
AlterIndexTable
‹‹ )
<
‹‹) *-
WorkflowBlockingActivitiesIndex
‹‹* I
>
‹‹I J
(
‹‹J K
table
‹‹K P
=>
‹‹Q S
table
‹‹T Y
.
 
CreateIndex
 
(
 
$str
 O
,
O P
$str
  
,
  !
$str
 "
,
" #
$str
 $
,
$ %
$str
 +
)
+ ,
)
‘‘ 
;
‘‘ 
return
““ 
$num
““ 
;
““ 
}
”” 	
}
•• 
}–– ƒ
„D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Permissions.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{		 
public

 
static

 
readonly

 

Permission

 )
ManageWorkflows

* 9
=

: ;
new

< ?

Permission

@ J
(

J K
$str

K \
,

\ ]
$str

^ p
,

p q
isSecurityCritical	

r „
:


„ …
true


† 
)


 ‹
;


‹ 
public 
static 
readonly 

Permission )
ExecuteWorkflows* :
=; <
new= @

PermissionA K
(K L
$strL ^
,^ _
$str` s
,s t
isSecurityCritical	u ‡
:
‡ 
true
‰ 
)
 
;
 
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{) *
ManageWorkflows+ :
,: ;
ExecuteWorkflows< L
}M N
.N O
AsEnumerableO [
([ \
)\ ]
)] ^
;^ _
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{) *
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageWorkflows* 9
,9 :
ExecuteWorkflows; K
}L M
} 
, 
new  
PermissionStereotype (
{) *
Name 
= 
$str #
,# $
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageWorkflows* 9
,9 :
ExecuteWorkflows; K
}L M
} 
} 
; 
} 	
} 
}   ά
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Recipes\WorkflowTypeStep.cs
	namespace		 	
OrchardCore		
 
.		 
	Workflows		 
.		  
Recipes		  '
{

 
public 

class 
WorkflowTypeStep !
:" #
IRecipeStepHandler$ 6
{ 
private 
readonly 
IWorkflowTypeStore +
_workflowTypeStore, >
;> ?
public 
WorkflowTypeStep 
(  
IWorkflowTypeStore  2
workflowTypeStore3 D
)D E
{ 	
_workflowTypeStore 
=  
workflowTypeStore! 2
;2 3
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- ;
,; <
StringComparison= M
.M N
OrdinalIgnoreCaseN _
)_ `
)` a
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .
WorkflowStepModel. ?
>? @
(@ A
)A B
;B C
foreach 
( 
JObject 
token "
in# %
model& +
.+ ,
Data, 0
)0 1
{ 
var 
workflow 
= 
token $
.$ %
ToObject% -
<- .
WorkflowType. :
>: ;
(; <
)< =
;= >
var!! 
existing!! 
=!! 
await!! $
_workflowTypeStore!!% 7
.!!7 8
GetAsync!!8 @
(!!@ A
workflow!!A I
.!!I J
WorkflowTypeId!!J X
)!!X Y
;!!Y Z
if## 
(## 
existing## 
==## 
null##  $
)##$ %
{$$ 
workflow%% 
.%% 
Id%% 
=%%  !
$num%%" #
;%%# $
}&& 
else'' 
{(( 
await)) 
_workflowTypeStore)) ,
.)), -
DeleteAsync))- 8
())8 9
existing))9 A
)))A B
;))B C
}** 
await,, 
_workflowTypeStore,, (
.,,( )
	SaveAsync,,) 2
(,,2 3
workflow,,3 ;
),,; <
;,,< =
}-- 
}.. 	
}// 
public11 

class11 
WorkflowStepModel11 "
{22 
public33 
JArray33 
Data33 
{33 
get33  
;33  !
set33" %
;33% &
}33' (
}44 
}55 ‘!
¤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Scripting\JavaScriptWorkflowScriptEvaluator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

Evaluators  *
{ 
public 

class -
!JavaScriptWorkflowScriptEvaluator 2
:3 4$
IWorkflowScriptEvaluator5 M
{ 
private 
readonly 
IScriptingManager *
_scriptingManager+ <
;< =
private 
readonly 
IEnumerable $
<$ %,
 IWorkflowExecutionContextHandler% E
>E F$
_workflowContextHandlersG _
;_ `
private 
readonly 
ILogger  
_logger! (
;( )
public -
!JavaScriptWorkflowScriptEvaluator 0
(0 1
IScriptingManager 
scriptingManager .
,. /
IEnumerable 
< ,
 IWorkflowExecutionContextHandler 8
>8 9#
workflowContextHandlers: Q
,Q R
ILogger 
< -
!JavaScriptWorkflowScriptEvaluator 5
>5 6
logger7 =
) 	
{ 	
_scriptingManager 
= 
scriptingManager  0
;0 1$
_workflowContextHandlers $
=% &#
workflowContextHandlers' >
;> ?
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
T 
> 
EvaluateAsync *
<* +
T+ ,
>, -
(- .
WorkflowExpression. @
<@ A
TA B
>B C

expressionD N
,N O$
WorkflowExecutionContextP h
workflowContexti x
,x y
params	z €#
IGlobalMethodProvider
 –
[
– —
]
— #
scopedMethodProviders
™ ®
)
® ―
{ 	
if   
(   
String   
.   
IsNullOrWhiteSpace   )
(  ) *

expression  * 4
.  4 5

Expression  5 ?
)  ? @
)  @ A
{!! 
return"" 
await"" 
Task"" !
.""! "

FromResult""" ,
<"", -
T""- .
>"". /
(""/ 0
default""0 7
(""7 8
T""8 9
)""9 :
)"": ;
;""; <
}## 
var%% 
workflowType%% 
=%% 
workflowContext%% .
.%%. /
WorkflowType%%/ ;
;%%; <
var&& 
	directive&& 
=&& 
$"&& 
js:&& !
{&&! "

expression&&" ,
}&&, -
"&&- .
;&&. /
var'' 
expressionContext'' !
=''" #
new''$ '*
WorkflowExecutionScriptContext''( F
(''F G
workflowContext''G V
)''V W
;''W X
await)) $
_workflowContextHandlers)) *
.))* +
InvokeAsync))+ 6
())6 7
())7 8
h))8 9
,))9 :
expressionContext)); L
)))L M
=>))N P
h))Q R
.))R S!
EvaluatingScriptAsync))S h
())h i
expressionContext))i z
)))z {
,)){ |
expressionContext	))} 
,
)) 
_logger
)) —
)
))— 
;
)) ™
var++ 
methodProviders++ 
=++  !!
scopedMethodProviders++" 7
.++7 8
Concat++8 >
(++> ?
expressionContext++? P
.++P Q!
ScopedMethodProviders++Q f
)++f g
;++g h
return,, 
(,, 
T,, 
),, 
_scriptingManager,, '
.,,' (
Evaluate,,( 0
(,,0 1
	directive,,1 :
,,,: ;
null,,< @
,,,@ A
null,,B F
,,,F G
methodProviders,,H W
),,W X
;,,X Y
}-- 	
}.. 
}// τ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Scripting\OutcomeMethodProvider.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
	Scripting  )
{ 
public 

class !
OutcomeMethodProvider &
:' (!
IGlobalMethodProvider) >
{ 
private		 
readonly		 
GlobalMethod		 %
_setOutcomeMethod		& 7
;		7 8
public !
OutcomeMethodProvider $
($ %
IList% *
<* +
string+ 1
>1 2
outcomes3 ;
); <
{ 	
_setOutcomeMethod 
= 
new  #
GlobalMethod$ 0
{ 
Name 
= 
$str #
,# $
Method 
= 
serviceProvider (
=>) +
(, -
Action- 3
<3 4
string4 :
>: ;
); <
(< =
name= A
=>B D
outcomesE M
.M N
AddN Q
(Q R
nameR V
)V W
)W X
} 
; 
} 	
public 
IEnumerable 
< 
GlobalMethod '
>' (

GetMethods) 3
(3 4
)4 5
{ 	
return 
new 
[ 
] 
{ 
_setOutcomeMethod ,
}- .
;. /
} 	
} 
} Λ9
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Scripting\WorkflowMethodsProvider.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
	Scripting  )
{ 
public 

class #
WorkflowMethodsProvider (
:) *!
IGlobalMethodProvider+ @
{		 
private

 
readonly

 
GlobalMethod

 %
_workflowMethod

& 5
;

5 6
private 
readonly 
GlobalMethod %
_workflowIdMethod& 7
;7 8
private 
readonly 
GlobalMethod %
_inputMethod& 2
;2 3
private 
readonly 
GlobalMethod %
_outputMethod& 3
;3 4
private 
readonly 
GlobalMethod %
_propertyMethod& 5
;5 6
private 
readonly 
GlobalMethod %
_setPropertyMethod& 8
;8 9
private 
readonly 
GlobalMethod %
_resultMethod& 3
;3 4
private 
readonly 
GlobalMethod % 
_correlationIdMethod& :
;: ;
public #
WorkflowMethodsProvider &
(& '$
WorkflowExecutionContext' ?
workflowContext@ O
)O P
{ 	
_workflowMethod 
= 
new !
GlobalMethod" .
{ 
Name 
= 
$str !
,! "
Method 
= 
serviceProvider (
=>) +
(, -
Func- 1
<1 2
object2 8
>8 9
)9 :
(: ;
(; <
)< =
=>> @
workflowContextA P
)P Q
} 
; 
_workflowIdMethod 
= 
new  #
GlobalMethod$ 0
{ 
Name 
= 
$str #
,# $
Method 
= 
serviceProvider (
=>) +
(, -
Func- 1
<1 2
string2 8
>8 9
)9 :
(: ;
(; <
)< =
=>> @
workflowContextA P
.P Q
WorkflowQ Y
.Y Z

WorkflowIdZ d
)d e
} 
; 
_inputMethod!! 
=!! 
new!! 
GlobalMethod!! +
{"" 
Name## 
=## 
$str## 
,## 
Method$$ 
=$$ 
serviceProvider$$ (
=>$$) +
($$, -
Func$$- 1
<$$1 2
string$$2 8
,$$8 9
object$$: @
>$$@ A
)$$A B
($$B C
($$C D
name$$D H
)$$H I
=>$$J L
workflowContext$$M \
.$$\ ]
Input$$] b
.$$b c
ContainsKey$$c n
($$n o
name$$o s
)$$s t
?$$u v
workflowContext	$$w †
.
$$† ‡
Input
$$‡ 
[
$$ 
name
$$ ‘
]
$$‘ ’
:
$$“ ”
null
$$• ™
)
$$™ 
}%% 
;%% 
_outputMethod'' 
='' 
new'' 
GlobalMethod''  ,
{(( 
Name)) 
=)) 
$str)) 
,))  
Method** 
=** 
serviceProvider** (
=>**) +
(**, -
Action**- 3
<**3 4
string**4 :
,**: ;
object**< B
>**B C
)**C D
(**D E
(**E F
name**F J
,**J K
value**L Q
)**Q R
=>**S U
workflowContext**V e
.**e f
Output**f l
[**l m
name**m q
]**q r
=**s t
value**u z
)**z {
}++ 
;++ 
_propertyMethod-- 
=-- 
new-- !
GlobalMethod--" .
{.. 
Name// 
=// 
$str// !
,//! "
Method00 
=00 
serviceProvider00 (
=>00) +
(00, -
Func00- 1
<001 2
string002 8
,008 9
object00: @
>00@ A
)00A B
(00B C
(00C D
name00D H
)00H I
=>00J L
workflowContext00M \
.00\ ]

Properties00] g
.00g h
ContainsKey00h s
(00s t
name00t x
)00x y
?00z {
workflowContext	00| ‹
.
00‹ 

Properties
00 –
[
00– —
name
00— ›
]
00› 
:
00 
null
00 £
)
00£ ¤
}11 
;11 
_setPropertyMethod33 
=33  
new33! $
GlobalMethod33% 1
{44 
Name55 
=55 
$str55 $
,55$ %
Method66 
=66 
serviceProvider66 (
=>66) +
(66, -
Action66- 3
<663 4
string664 :
,66: ;
object66< B
>66B C
)66C D
(66D E
(66E F
name66F J
,66J K
value66L Q
)66Q R
=>66S U
workflowContext66V e
.66e f

Properties66f p
[66p q
name66q u
]66u v
=66w x
value66y ~
)66~ 
}77 
;77 
_resultMethod99 
=99 
new99 
GlobalMethod99  ,
{:: 
Name;; 
=;; 
$str;; #
,;;# $
Method<< 
=<< 
serviceProvider<< (
=><<) +
(<<, -
Func<<- 1
<<<1 2
object<<2 8
><<8 9
)<<9 :
(<<: ;
(<<; <
)<<< =
=><<> @
workflowContext<<A P
.<<P Q

LastResult<<Q [
)<<[ \
}== 
;==  
_correlationIdMethod??  
=??! "
new??# &
GlobalMethod??' 3
{@@ 
NameAA 
=AA 
$strAA &
,AA& '
MethodBB 
=BB 
serviceProviderBB (
=>BB) +
(BB, -
FuncBB- 1
<BB1 2
stringBB2 8
>BB8 9
)BB9 :
(BB: ;
(BB; <
)BB< =
=>BB> @
workflowContextBBA P
.BBP Q
WorkflowBBQ Y
.BBY Z
CorrelationIdBBZ g
)BBg h
}CC 
;CC 
}DD 	
publicFF 
IEnumerableFF 
<FF 
GlobalMethodFF '
>FF' (

GetMethodsFF) 3
(FF3 4
)FF4 5
{GG 	
returnHH 
newHH 
[HH 
]HH 
{HH 
_workflowMethodHH *
,HH* +
_workflowIdMethodHH, =
,HH= >
_inputMethodHH? K
,HHK L
_outputMethodHHM Z
,HHZ [
_propertyMethodHH\ k
,HHk l
_resultMethodHHm z
,HHz {!
_correlationIdMethod	HH| 
,
HH ‘ 
_setPropertyMethod
HH’ ¤
}
HH¥ ¦
;
HH¦ §
}II 	
}JJ 
}KK Θ"
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\ActivityDisplayManager.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class "
ActivityDisplayManager '
:( )#
IActivityDisplayManager* A
{ 
private 
readonly 
DisplayManager '
<' (
	IActivity( 1
>1 2
_displayManager3 B
;B C
public "
ActivityDisplayManager %
(% &
IOptions 
< 
WorkflowOptions $
>$ %
workflowOptions& 5
,5 6
IServiceProvider 
serviceProvider ,
,, -
IShapeFactory 
shapeFactory &
,& '
IEnumerable 
< #
IShapePlacementProvider /
>/ 0
placementProviders1 C
,C D
ILogger 
< 
DisplayManager "
<" #
	IActivity# ,
>, -
>- . 
displayManagerLogger/ C
,C D
ILayoutAccessor 
layoutAccessor *
)* +
{ 	
var 
drivers 
= 
workflowOptions )
.) *
Value* /
./ 0&
ActivityDisplayDriverTypes0 J
.J K
SelectK Q
(Q R
xR S
=>T V
serviceProviderW f
.f g
CreateInstanceg u
<u v
IDisplayDriver	v „
<
„ …
	IActivity
… 
>
 
>
 
(
 ‘
x
‘ ’
)
’ “
)
“ ”
;
” •
_displayManager 
= 
new !
DisplayManager" 0
<0 1
	IActivity1 :
>: ;
(; <
drivers< C
,C D
shapeFactoryE Q
,Q R
placementProvidersS e
,e f 
displayManagerLoggerg {
,{ |
layoutAccessor	} ‹
)
‹ 
;
 
} 	
public!! 
Task!! 
<!! 
IShape!! 
>!! 
BuildDisplayAsync!! -
(!!- .
	IActivity!!. 7
model!!8 =
,!!= >
IUpdateModel!!? K
updater!!L S
,!!S T
string!!U [
displayType!!\ g
=!!h i
$str!!j l
,!!l m
string!!n t
groupId!!u |
=!!} ~
$str	!! 
)
!! ‚
{"" 	
return## 
_displayManager## "
.##" #
BuildDisplayAsync### 4
(##4 5
model##5 :
,##: ;
updater##< C
,##C D
displayType##E P
,##P Q
groupId##R Y
)##Y Z
;##Z [
}$$ 	
public&& 
Task&& 
<&& 
IShape&& 
>&& 
BuildEditorAsync&& ,
(&&, -
	IActivity&&- 6
model&&7 <
,&&< =
IUpdateModel&&> J
updater&&K R
,&&R S
bool&&T X
isNew&&Y ^
,&&^ _
string&&` f
groupId&&g n
=&&o p
$str&&q s
)&&s t
{'' 	
return(( 
_displayManager(( "
.((" #
BuildEditorAsync((# 3
(((3 4
model((4 9
,((9 :
updater((; B
,((B C
isNew((D I
,((I J
groupId((K R
)((R S
;((S T
})) 	
public++ 
Task++ 
<++ 
IShape++ 
>++ 
UpdateEditorAsync++ -
(++- .
	IActivity++. 7
model++8 =
,++= >
IUpdateModel++? K
updater++L S
,++S T
bool++U Y
isNew++Z _
,++_ `
string++a g
groupId++h o
=++p q
$str++r t
)++t u
{,, 	
return-- 
_displayManager-- "
.--" #
UpdateEditorAsync--# 4
(--4 5
model--5 :
,--: ;
updater--< C
,--C D
isNew--E J
,--J K
groupId--L S
)--S T
;--T U
}.. 	
}// 
}00 η
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\ActivityIdGenerator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class 
ActivityIdGenerator $
:% & 
IActivityIdGenerator' ;
{ 
private 
readonly 
IIdGenerator %
_idGenerator& 2
;2 3
public

 
ActivityIdGenerator

 "
(

" #
IIdGenerator

# /
idGenerator

0 ;
)

; <
{ 	
_idGenerator 
= 
idGenerator &
;& '
} 	
public 
string 
GenerateUniqueId &
(& '
ActivityRecord' 5
activityRecord6 D
)D E
{ 	
return 
_idGenerator 
.  
GenerateUniqueId  0
(0 1
)1 2
;2 3
} 	
} 
} …=
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\ActivityLibrary.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class 
ActivityLibrary  
:! "
IActivityLibrary# 3
{ 
private 
readonly 
Lazy 
< 
IDictionary )
<) *
string* 0
,0 1
	IActivity2 ;
>; <
>< =
_activityDictionary> Q
;Q R
private 
readonly 
Lazy 
< 
IList #
<# $
LocalizedString$ 3
>3 4
>4 5
_activityCategories6 I
;I J
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
ILogger  
_logger! (
;( )
public 
ActivityLibrary 
( 
IOptions '
<' (
WorkflowOptions( 7
>7 8
workflowOptions9 H
,H I
IServiceProviderJ Z
serviceProvider[ j
,j k
ILoggerl s
<s t
ActivityLibrary	t ƒ
>
ƒ „
logger
… ‹
)
‹ 
{ 	
_activityDictionary 
=  !
new" %
Lazy& *
<* +
IDictionary+ 6
<6 7
string7 =
,= >
	IActivity? H
>H I
>I J
(J K
(K L
)L M
=>N P
workflowOptionsQ `
.` a
Valuea f
.f g
ActivityTypesg t
.t u
Whereu z
(z {
x{ |
=>} 
!
€ 
x
 ‚
.
‚ ƒ

IsAbstract
ƒ 
)
 
.
 
Select
 •
(
• –
x
– —
=>
 
serviceProvider
› ª
.
ª «
CreateInstance
« Ή
<
Ή Ί
	IActivity
Ί Γ
>
Γ Δ
(
Δ Ε
x
Ε Ζ
)
Ζ Η
)
Η Θ
.
Θ Ι
OrderBy
Ι Π
(
Π Ρ
x
Ρ Ò
=>
Σ Υ
x
Φ Χ
.
Χ Ψ
Name
Ψ ά
)
ά έ
.
έ ή
ToDictionary
ή κ
(
κ λ
x
λ μ
=>
ν ο
x
π ρ
.
ρ ς
Name
ς φ
)
φ χ
)
χ ψ
;
ψ ω
_activityCategories 
=  !
new" %
Lazy& *
<* +
IList+ 0
<0 1
LocalizedString1 @
>@ A
>A B
(B C
(C D
)D E
=>F H
_activityDictionaryI \
.\ ]
Value] b
.b c
Valuesc i
.i j
OrderByj q
(q r
xr s
=>t v
xw x
.x y
Category	y 
.
 ‚
Value
‚ ‡
)
‡ 
.
 ‰
Select
‰ 
(
 
x
 ‘
=>
’ ”
x
• –
.
– —
Category
— 
)
  
.
  ΅
Distinct
΅ ©
(
© ª
new
ª ­%
LocalizedStringComparer
® Ε
(
Ε Ζ
)
Ζ Η
)
Η Θ
.
Θ Ι
ToList
Ι Ο
(
Ο Π
)
Π Ρ
)
Ρ Ò
;
Ò Σ
_serviceProvider 
= 
serviceProvider .
;. /
_logger 
= 
logger 
; 
} 	
private 
IDictionary 
< 
string "
," #
	IActivity$ -
>- .
ActivityDictionary/ A
=>B D
_activityDictionaryE X
.X Y
ValueY ^
;^ _
private 
IList 
< 
LocalizedString %
>% &
ActivityCategories' 9
=>: <
_activityCategories= P
.P Q
ValueQ V
;V W
public 
IEnumerable 
< 
	IActivity $
>$ %
ListActivities& 4
(4 5
)5 6
{   	
return!! 
ActivityDictionary!! %
.!!% &
Values!!& ,
;!!, -
}"" 	
public$$ 
IEnumerable$$ 
<$$ 
LocalizedString$$ *
>$$* +
ListCategories$$, :
($$: ;
)$$; <
{%% 	
return&& 
ActivityCategories&& %
;&&% &
}'' 	
public)) 
	IActivity)) 
GetActivityByName)) *
())* +
string))+ 1
name))2 6
)))6 7
{** 	
return++ 
ActivityDictionary++ %
.++% &
ContainsKey++& 1
(++1 2
name++2 6
)++6 7
?++8 9
ActivityDictionary++: L
[++L M
name++M Q
]++Q R
:++S T
null++U Y
;++Y Z
},, 	
public.. 
	IActivity.. 
InstantiateActivity.. ,
(.., -
string..- 3
name..4 8
)..8 9
{// 	
var00 
activityType00 
=00 
GetActivityByName00 0
(000 1
name001 5
)005 6
?006 7
.007 8
GetType008 ?
(00? @
)00@ A
;00A B
if22 
(22 
activityType22 
==22 
null22  $
)22$ %
{33 
_logger44 
.44 

LogWarning44 "
(44" #
$str	44#  
,
44  ΅
name
44Ά ¦
)
44¦ §
;
44§ ¨
return55 
null55 
;55 
}66 
return88 
InstantiateActivity88 &
(88& '
activityType88' 3
)883 4
;884 5
}99 	
public;; 
IEnumerable;; 
<;; 
	IActivity;; $
>;;$ %!
InstantiateActivities;;& ;
(;;; <
IEnumerable;;< G
<;;G H
string;;H N
>;;N O
activityNames;;P ]
);;] ^
{<< 	
var== 
activityNameList==  
===! "
activityNames==# 0
.==0 1
ToList==1 7
(==7 8
)==8 9
;==9 :
foreach>> 
(>> 
var>> 
activitySample>> '
in>>( *
ActivityDictionary>>+ =
.>>= >
Values>>> D
.>>D E
Where>>E J
(>>J K
x>>K L
=>>>M O
activityNameList>>P `
.>>` a
Contains>>a i
(>>i j
x>>j k
.>>k l
Name>>l p
)>>p q
)>>q r
)>>r s
{?? 
yield@@ 
return@@ 
InstantiateActivity@@ 0
(@@0 1
activitySample@@1 ?
.@@? @
GetType@@@ G
(@@G H
)@@H I
)@@I J
;@@J K
}AA 
}BB 	
privateDD 
	IActivityDD 
InstantiateActivityDD -
(DD- .
TypeDD. 2
activityTypeDD3 ?
)DD? @
{EE 	
returnFF 
_serviceProviderFF #
.FF# $
CreateInstanceFF$ 2
<FF2 3
	IActivityFF3 <
>FF< =
(FF= >
activityTypeFF> J
)FFJ K
;FFK L
}GG 	
}HH 
}II ζ	
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\LocalizedStringComparer.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class #
LocalizedStringComparer (
:) *
IEqualityComparer+ <
<< =
LocalizedString= L
>L M
{ 
public 
bool 
Equals 
( 
LocalizedString *
x+ ,
,, -
LocalizedString. =
y> ?
)? @
{		 	
return

 
x

 
.

 
Name

 
.

 
Equals

  
(

  !
y

! "
.

" #
Name

# '
)

' (
;

( )
} 	
public 
int 
GetHashCode 
( 
LocalizedString .
obj/ 2
)2 3
{ 	
return 
obj 
. 
Name 
. 
GetHashCode '
(' (
)( )
;) *
} 	
} 
} Ώ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\Resolver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public		 

class		 
Resolver		 
<		 
T		 
>		 
{

 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public 
Resolver 
( 
IServiceProvider (
serviceProvider) 8
)8 9
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
T 
Resolve 
( 
) 
{ 	
return 
_serviceProvider #
.# $

GetService$ .
<. /
T/ 0
>0 1
(1 2
)2 3
;3 4
} 	
} 
} Κ
–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\SecurityTokenService.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class  
SecurityTokenService %
:& '!
ISecurityTokenService( =
{		 
private

 
readonly

 %
ITimeLimitedDataProtector

 2
_dataProtector

3 A
;

A B
private 
readonly 
IClock 
_clock  &
;& '
public  
SecurityTokenService #
(# $#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ;
IClock 
clock 
) 
{ 	
_dataProtector 
= "
dataProtectionProvider 3
.3 4
CreateProtector4 C
(C D
$strD L
)L M
.M N&
ToTimeLimitedDataProtectorN h
(h i
)i j
;j k
_clock 
= 
clock 
; 
} 	
public 
string 
CreateToken !
<! "
T" #
># $
($ %
T% &
payload' .
,. /
TimeSpan0 8
lifetime9 A
)A B
{ 	
var 
json 
= 
JsonConvert "
." #
SerializeObject# 2
(2 3
payload3 :
): ;
;; <
return 
_dataProtector !
.! "
Protect" )
() *
json* .
,. /
_clock0 6
.6 7
UtcNow7 =
.= >
Add> A
(A B
lifetimeB J
)J K
)K L
;L M
} 	
public 
bool 
TryDecryptToken #
<# $
T$ %
>% &
(& '
string' -
token. 3
,3 4
out5 8
T9 :
payload; B
)B C
{ 	
payload 
= 
default 
; 
try   
{!! 
var"" 
json"" 
="" 
_dataProtector"" )
."") *
	Unprotect""* 3
(""3 4
token""4 9
,""9 :
out""; >
var""? B

expiration""C M
)""M N
;""N O
if$$ 
($$ 
_clock$$ 
.$$ 
UtcNow$$ !
<$$" #

expiration$$$ .
.$$. /
ToUniversalTime$$/ >
($$> ?
)$$? @
)$$@ A
{%% 
payload&& 
=&& 
JsonConvert&& )
.&&) *
DeserializeObject&&* ;
<&&; <
T&&< =
>&&= >
(&&> ?
json&&? C
)&&C D
;&&D E
return'' 
true'' 
;''  
}(( 
})) 
catch** 
{++ 
},, 
return.. 
false.. 
;.. 
}// 	
}00 
}11 Ϋ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowIdGenerator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class 
WorkflowIdGenerator $
:% & 
IWorkflowIdGenerator' ;
{ 
private 
readonly 
IIdGenerator %
_idGenerator& 2
;2 3
public

 
WorkflowIdGenerator

 "
(

" #
IIdGenerator

# /
idGenerator

0 ;
)

; <
{ 	
_idGenerator 
= 
idGenerator &
;& '
} 	
public 
string 
GenerateUniqueId &
(& '
Workflow' /
workflow0 8
)8 9
{ 	
return 
_idGenerator 
.  
GenerateUniqueId  0
(0 1
)1 2
;2 3
} 	
} 
} πξ
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowManager.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class 
WorkflowManager  
:! "
IWorkflowManager# 3
{ 
private 
readonly 
IActivityLibrary )
_activityLibrary* :
;: ;
private 
readonly 
IWorkflowTypeStore +
_workflowTypeStore, >
;> ?
private 
readonly 
IWorkflowStore '
_workflowStore( 6
;6 7
private 
readonly  
IWorkflowIdGenerator - 
_workflowIdGenerator. B
;B C
private 
readonly 
Resolver !
<! "
IEnumerable" -
<- .$
IWorkflowValueSerializer. F
>F G
>G H%
_workflowValueSerializersI b
;b c
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
ILogger  
<  !
MissingActivity! 0
>0 1"
_missingActivityLogger2 H
;H I
private 
readonly 
IStringLocalizer )
<) *
MissingActivity* 9
>9 :%
_missingActivityLocalizer; T
;T U
private 
readonly 
IClock 
_clock  &
;& '
public 
WorkflowManager 
( 	
IActivityLibrary 
activityLibrary ,
,, -
IWorkflowTypeStore "
workflowTypeRepository 5
,5 6
IWorkflowStore   
workflowRepository   -
,  - . 
IWorkflowIdGenerator!!  
workflowIdGenerator!!! 4
,!!4 5
Resolver"" 
<"" 
IEnumerable""  
<""  !$
IWorkflowValueSerializer""! 9
>""9 :
>"": ;$
workflowValueSerializers""< T
,""T U
ILogger## 
<## 
WorkflowManager## #
>### $
logger##% +
,##+ ,
ILogger$$ 
<$$ 
MissingActivity$$ #
>$$# $!
missingActivityLogger$$% :
,$$: ;
IStringLocalizer%% 
<%% 
MissingActivity%% ,
>%%, -$
missingActivityLocalizer%%. F
,%%F G
IClock&& 
clock&& 
)'' 	
{(( 	
_activityLibrary)) 
=)) 
activityLibrary)) .
;)). /
_workflowTypeStore** 
=**  "
workflowTypeRepository**! 7
;**7 8
_workflowStore++ 
=++ 
workflowRepository++ /
;++/ 0 
_workflowIdGenerator,,  
=,,! "
workflowIdGenerator,,# 6
;,,6 7%
_workflowValueSerializers-- %
=--& '$
workflowValueSerializers--( @
;--@ A
_logger.. 
=.. 
logger.. 
;.. "
_missingActivityLogger// "
=//# $!
missingActivityLogger//% :
;//: ;%
_missingActivityLocalizer00 %
=00& '$
missingActivityLocalizer00( @
;00@ A
_clock11 
=11 
clock11 
;11 
}22 	
public44 
Workflow44 
NewWorkflow44 #
(44# $
WorkflowType44$ 0
workflowType441 =
,44= >
string44? E
correlationId44F S
=44T U
null44V Z
)44Z [
{55 	
var66 
workflow66 
=66 
new66 
Workflow66 '
{77 
WorkflowTypeId88 
=88  
workflowType88! -
.88- .
WorkflowTypeId88. <
,88< =
Status99 
=99 
WorkflowStatus99 '
.99' (
Idle99( ,
,99, -
State:: 
=:: 
JObject:: 
.::  

FromObject::  *
(::* +
new::+ .
WorkflowState::/ <
{;; 
ActivityStates<< "
=<<# $
workflowType<<% 1
.<<1 2

Activities<<2 <
.<<< =
Select<<= C
(<<C D
x<<D E
=><<F H
x<<I J
)<<J K
.<<K L
ToDictionary<<L X
(<<X Y
x<<Y Z
=><<[ ]
x<<^ _
.<<_ `

ActivityId<<` j
,<<j k
x<<l m
=><<n p
x<<q r
.<<r s

Properties<<s }
)<<} ~
}== 
)== 
,== 
CorrelationId>> 
=>> 
correlationId>>  -
,>>- .

CreatedUtc?? 
=?? 
_clock?? #
.??# $
UtcNow??$ *
}@@ 
;@@ 
workflowBB 
.BB 

WorkflowIdBB 
=BB  ! 
_workflowIdGeneratorBB" 6
.BB6 7
GenerateUniqueIdBB7 G
(BBG H
workflowBBH P
)BBP Q
;BBQ R
returnCC 
workflowCC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF $
WorkflowExecutionContextFF 2
>FF2 3/
#CreateWorkflowExecutionContextAsyncFF4 W
(FFW X
WorkflowTypeFFX d
workflowTypeFFe q
,FFq r
WorkflowFFs {
workflow	FF| „
,
FF„ …
IDictionary
FF† ‘
<
FF‘ ’
string
FF’ 
,
FF ™
object
FF  
>
FF  ΅
input
FFΆ §
=
FF¨ ©
null
FFª ®
)
FF® ―
{GG 	
varHH 
stateHH 
=HH 
workflowHH  
.HH  !
StateHH! &
.HH& '
ToObjectHH' /
<HH/ 0
WorkflowStateHH0 =
>HH= >
(HH> ?
)HH? @
;HH@ A
varII 
activityQueryII 
=II 
awaitII  %
TaskII& *
.II* +
WhenAllII+ 2
(II2 3
workflowTypeII3 ?
.II? @

ActivitiesII@ J
.IIJ K
SelectIIK Q
(IIQ R
xIIR S
=>IIT V
{JJ 
varKK 
activityStateKK !
=KK" #
stateKK$ )
.KK) *
ActivityStatesKK* 8
.KK8 9
ContainsKeyKK9 D
(KKD E
xKKE F
.KKF G

ActivityIdKKG Q
)KKQ R
?KKS T
stateKKU Z
.KKZ [
ActivityStatesKK[ i
[KKi j
xKKj k
.KKk l

ActivityIdKKl v
]KKv w
:KKx y
newKKz }
JObject	KK~ …
(
KK… †
)
KK† ‡
;
KK‡ 
returnLL /
#CreateActivityExecutionContextAsyncLL :
(LL: ;
xLL; <
,LL< =
activityStateLL> K
)LLK L
;LLL M
}MM 
)MM 
)MM 
;MM 
varNN 
mergedInputNN 
=NN 
(NN 
awaitNN $
DeserializeAsyncNN% 5
(NN5 6
stateNN6 ;
.NN; <
InputNN< A
)NNA B
)NNB C
.NNC D
MergeNND I
(NNI J
inputNNJ O
??NNP R
newNNS V

DictionaryNNW a
<NNa b
stringNNb h
,NNh i
objectNNj p
>NNp q
(NNq r
)NNr s
)NNs t
;NNt u
varOO 

propertiesOO 
=OO 
awaitOO "
DeserializeAsyncOO# 3
(OO3 4
stateOO4 9
.OO9 :

PropertiesOO: D
)OOD E
;OOE F
varPP 
outputPP 
=PP 
awaitPP 
DeserializeAsyncPP /
(PP/ 0
statePP0 5
.PP5 6
OutputPP6 <
)PP< =
;PP= >
varQQ 

lastResultQQ 
=QQ 
awaitQQ "
DeserializeAsyncQQ# 3
(QQ3 4
stateQQ4 9
.QQ9 :

LastResultQQ: D
)QQD E
;QQE F
varRR 
executedActivitiesRR "
=RR# $
stateRR% *
.RR* +
ExecutedActivitiesRR+ =
;RR= >
returnSS 
newSS $
WorkflowExecutionContextSS /
(SS/ 0
workflowTypeSS0 <
,SS< =
workflowSS> F
,SSF G
mergedInputSSH S
,SSS T
outputSSU [
,SS[ \

propertiesSS] g
,SSg h
executedActivitiesSSi {
,SS{ |

lastResult	SS} ‡
,
SS‡ 
activityQuery
SS‰ –
)
SS– —
;
SS— 
}TT 	
publicVV 
TaskVV 
<VV 
ActivityContextVV #
>VV# $/
#CreateActivityExecutionContextAsyncVV% H
(VVH I
ActivityRecordVVI W
activityRecordVVX f
,VVf g
JObjectVVh o

propertiesVVp z
)VVz {
{WW 	
varXX 
activityXX 
=XX 
_activityLibraryXX +
.XX+ ,
InstantiateActivityXX, ?
<XX? @
	IActivityXX@ I
>XXI J
(XXJ K
activityRecordXXK Y
.XXY Z
NameXXZ ^
,XX^ _

propertiesXX` j
)XXj k
;XXk l
ifZZ 
(ZZ 
activityZZ 
==ZZ 
nullZZ  
)ZZ  !
{[[ 
_logger\\ 
.\\ 

LogWarning\\ "
(\\" #
$str	\\# Γ
,
\\Γ Δ
activityRecord
\\Ε Σ
.
\\Σ Τ
Name
\\Τ Ψ
)
\\Ψ Ω
;
\\Ω Ϊ
activity]] 
=]] 
new]] 
MissingActivity]] .
(]]. /%
_missingActivityLocalizer]]/ H
,]]H I"
_missingActivityLogger]]J `
,]]` a
activityRecord]]b p
)]]p q
;]]q r
}^^ 
var`` 
context`` 
=`` 
new`` 
ActivityContext`` -
{aa 
ActivityRecordbb 
=bb  
activityRecordbb! /
,bb/ 0
Activitycc 
=cc 
activitycc #
}dd 
;dd 
returnff 
Taskff 
.ff 

FromResultff "
(ff" #
contextff# *
)ff* +
;ff+ ,
}gg 	
publicii 
asyncii 
Taskii 
TriggerEventAsyncii +
(ii+ ,
stringii, 2
nameii3 7
,ii7 8
IDictionaryii9 D
<iiD E
stringiiE K
,iiK L
objectiiM S
>iiS T
inputiiU Z
=ii[ \
nullii] a
,iia b
stringiic i
correlationIdiij w
=iix y
nulliiz ~
,ii~ 
bool
ii€ „
isExclusive
ii… 
=
ii‘ ’
false
ii“ 
,
ii ™
bool
ii  
isAlwaysCorrelated
ii ±
=
ii² ³
false
ii΄ Ή
)
iiΉ Ί
{jj 	
varkk 
activitykk 
=kk 
_activityLibrarykk +
.kk+ ,
GetActivityByNamekk, =
(kk= >
namekk> B
)kkB C
;kkC D
ifmm 
(mm 
activitymm 
==mm 
nullmm  
)mm  !
{nn 
_loggeroo 
.oo 
LogErroroo  
(oo  !
$stroo! J
,ooJ K
nameooL P
)ooP Q
;ooQ R
returnpp 
;pp 
}qq 
vartt  
workflowTypesToStarttt $
=tt% &
awaittt' ,
_workflowTypeStorett- ?
.tt? @#
GetByStartActivityAsynctt@ W
(ttW X
namettX \
)tt\ ]
;tt] ^
varww 
haltedWorkflowsww 
=ww  !
awaitww" '
_workflowStoreww( 6
.ww6 7#
ListByActivityNameAsyncww7 N
(wwN O
namewwO S
,wwS T
correlationIdwwU b
,wwb c
isAlwaysCorrelatedwwd v
)wwv w
;www x
ifzz 
(zz 
!zz  
workflowTypesToStartzz %
.zz% &
Anyzz& )
(zz) *
)zz* +
&&zz, .
!zz/ 0
haltedWorkflowszz0 ?
.zz? @
Anyzz@ C
(zzC D
)zzD E
)zzE F
{{{ 
return|| 
;|| 
}}} 
foreach
€€ 
(
€€ 
var
€€ 
workflowType
€€ %
in
€€& ("
workflowTypesToStart
€€) =
)
€€= >
{
 
if
ƒƒ 
(
ƒƒ 
workflowType
ƒƒ  
.
ƒƒ  !
IsSingleton
ƒƒ! ,
&&
ƒƒ- /
await
ƒƒ0 5
_workflowStore
ƒƒ6 D
.
ƒƒD E$
HasHaltedInstanceAsync
ƒƒE [
(
ƒƒ[ \
workflowType
ƒƒ\ h
.
ƒƒh i
WorkflowTypeId
ƒƒi w
)
ƒƒw x
)
ƒƒx y
{
„„ 
continue
…… 
;
…… 
}
†† 
if
‰‰ 
(
‰‰ 
isExclusive
‰‰ 
&&
‰‰  "
haltedWorkflows
‰‰# 2
.
‰‰2 3
Any
‰‰3 6
(
‰‰6 7
x
‰‰7 8
=>
‰‰9 ;
x
‰‰< =
.
‰‰= >
WorkflowTypeId
‰‰> L
==
‰‰M O
workflowType
‰‰P \
.
‰‰\ ]
WorkflowTypeId
‰‰] k
)
‰‰k l
)
‰‰l m
{
 
continue
‹‹ 
;
‹‹ 
}
 
var
 
startActivity
 !
=
" #
workflowType
$ 0
.
0 1

Activities
1 ;
.
; <
FirstOrDefault
< J
(
J K
x
K L
=>
M O
x
P Q
.
Q R
IsStart
R Y
&&
Z \
String
] c
.
c d
Equals
d j
(
j k
x
k l
.
l m
Name
m q
,
q r
name
s w
,
w x
StringComparisony ‰
.‰ !
OrdinalIgnoreCase ›
)› 
) 
; 
if
 
(
 
startActivity
 !
!=
" $
null
% )
)
) *
{
‘‘ 
await
’’  
StartWorkflowAsync
’’ ,
(
’’, -
workflowType
’’- 9
,
’’9 :
startActivity
’’; H
,
’’H I
input
’’J O
,
’’O P
correlationId
’’Q ^
)
’’^ _
;
’’_ `
}
““ 
}
”” 
foreach
—— 
(
—— 
var
—— 
workflow
—— !
in
——" $
haltedWorkflows
——% 4
)
——4 5
{
 
var
™™  
blockingActivities
™™ &
=
™™' (
workflow
™™) 1
.
™™1 2 
BlockingActivities
™™2 D
.
™™D E
Where
™™E J
(
™™J K
x
™™K L
=>
™™M O
x
™™P Q
.
™™Q R
Name
™™R V
==
™™W Y
name
™™Z ^
)
™™^ _
.
™™_ `
ToList
™™` f
(
™™f g
)
™™g h
;
™™h i
foreach
›› 
(
›› 
var
›› 
blockingActivity
›› -
in
››. 0 
blockingActivities
››1 C
)
››C D
{
 
await
 !
ResumeWorkflowAsync
 -
(
- .
workflow
. 6
,
6 7
blockingActivity
8 H
,
H I
input
J O
)
O P
;
P Q
}
 
}
 
}
   	
public
ΆΆ 
async
ΆΆ 
Task
ΆΆ 
<
ΆΆ &
WorkflowExecutionContext
ΆΆ 2
>
ΆΆ2 3!
ResumeWorkflowAsync
ΆΆ4 G
(
ΆΆG H
Workflow
ΆΆH P
workflow
ΆΆQ Y
,
ΆΆY Z
BlockingActivity
ΆΆ[ k
awaitingActivity
ΆΆl |
,
ΆΆ| }
IDictionaryΆΆ~ ‰
<ΆΆ‰ 
stringΆΆ 
,ΆΆ ‘
objectΆΆ’ 
>ΆΆ ™
inputΆΆ 
=ΆΆ  ΅
nullΆΆΆ ¦
)ΆΆ¦ §
{
££ 	
var
¤¤ 
workflowType
¤¤ 
=
¤¤ 
await
¤¤ $ 
_workflowTypeStore
¤¤% 7
.
¤¤7 8
GetAsync
¤¤8 @
(
¤¤@ A
workflow
¤¤A I
.
¤¤I J
WorkflowTypeId
¤¤J X
)
¤¤X Y
;
¤¤Y Z
var
¥¥ 
activityRecord
¥¥ 
=
¥¥  
workflowType
¥¥! -
.
¥¥- .

Activities
¥¥. 8
.
¥¥8 9
SingleOrDefault
¥¥9 H
(
¥¥H I
x
¥¥I J
=>
¥¥K M
x
¥¥N O
.
¥¥O P

ActivityId
¥¥P Z
==
¥¥[ ]
awaitingActivity
¥¥^ n
.
¥¥n o

ActivityId
¥¥o y
)
¥¥y z
;
¥¥z {
var
¦¦ 
workflowContext
¦¦ 
=
¦¦  !
await
¦¦" '1
#CreateWorkflowExecutionContextAsync
¦¦( K
(
¦¦K L
workflowType
¦¦L X
,
¦¦X Y
workflow
¦¦Z b
,
¦¦b c
input
¦¦d i
)
¦¦i j
;
¦¦j k
workflowContext
¨¨ 
.
¨¨ 
Status
¨¨ "
=
¨¨# $
WorkflowStatus
¨¨% 3
.
¨¨3 4
Resuming
¨¨4 <
;
¨¨< =
var
«« 
cancellationToken
«« !
=
««" #
new
««$ '
CancellationToken
««( 9
(
««9 :
)
««: ;
;
««; <
await
­­ #
InvokeActivitiesAsync
­­ '
(
­­' (
workflowContext
­­( 7
,
­­7 8
x
­­9 :
=>
­­; =
x
­­> ?
.
­­? @
Activity
­­@ H
.
­­H I"
OnInputReceivedAsync
­­I ]
(
­­] ^
workflowContext
­­^ m
,
­­m n
input
­­o t
)
­­t u
)
­­u v
;
­­v w
await
®® #
InvokeActivitiesAsync
®® '
(
®®' (
workflowContext
®®( 7
,
®®7 8
x
®®9 :
=>
®®; =
x
®®> ?
.
®®? @
Activity
®®@ H
.
®®H I%
OnWorkflowResumingAsync
®®I `
(
®®` a
workflowContext
®®a p
,
®®p q 
cancellationToken®®r ƒ
)®®ƒ „
)®®„ …
;®®… †
if
°° 
(
°° 
cancellationToken
°° !
.
°°! "%
IsCancellationRequested
°°" 9
)
°°9 :
{
±± 
workflowContext
³³ 
.
³³  
Status
³³  &
=
³³' (
WorkflowStatus
³³) 7
.
³³7 8
Aborted
³³8 ?
;
³³? @
}
΄΄ 
else
µµ 
{
¶¶ 
var
ΈΈ 
activityContext
ΈΈ #
=
ΈΈ$ %
workflowContext
ΈΈ& 5
.
ΈΈ5 6
GetActivity
ΈΈ6 A
(
ΈΈA B
activityRecord
ΈΈB P
.
ΈΈP Q

ActivityId
ΈΈQ [
)
ΈΈ[ \
;
ΈΈ\ ]
if
ΉΉ 
(
ΉΉ 
await
ΉΉ 
activityContext
ΉΉ )
.
ΉΉ) *
Activity
ΉΉ* 2
.
ΉΉ2 3
CanExecuteAsync
ΉΉ3 B
(
ΉΉB C
workflowContext
ΉΉC R
,
ΉΉR S
activityContext
ΉΉT c
)
ΉΉc d
)
ΉΉd e
{
ΊΊ 
await
ΌΌ #
InvokeActivitiesAsync
ΌΌ /
(
ΌΌ/ 0
workflowContext
ΌΌ0 ?
,
ΌΌ? @
x
ΌΌA B
=>
ΌΌC E
x
ΌΌF G
.
ΌΌG H
Activity
ΌΌH P
.
ΌΌP Q$
OnWorkflowResumedAsync
ΌΌQ g
(
ΌΌg h
workflowContext
ΌΌh w
)
ΌΌw x
)
ΌΌx y
;
ΌΌy z
workflowContext
ΏΏ #
.
ΏΏ# $
Workflow
ΏΏ$ ,
.
ΏΏ, - 
BlockingActivities
ΏΏ- ?
.
ΏΏ? @
Remove
ΏΏ@ F
(
ΏΏF G
awaitingActivity
ΏΏG W
)
ΏΏW X
;
ΏΏX Y
await
ΒΒ "
ExecuteWorkflowAsync
ΒΒ .
(
ΒΒ. /
workflowContext
ΒΒ/ >
,
ΒΒ> ?
activityRecord
ΒΒ@ N
)
ΒΒN O
;
ΒΒO P
}
ΓΓ 
else
ΔΔ 
{
ΕΕ 
workflowContext
ΖΖ #
.
ΖΖ# $
Status
ΖΖ$ *
=
ΖΖ+ ,
WorkflowStatus
ΖΖ- ;
.
ΖΖ; <
Halted
ΖΖ< B
;
ΖΖB C
return
ΗΗ 
workflowContext
ΗΗ *
;
ΗΗ* +
}
ΘΘ 
}
ΙΙ 
if
ΛΛ 
(
ΛΛ 
workflowContext
ΛΛ 
.
ΛΛ  
Status
ΛΛ  &
==
ΛΛ' )
WorkflowStatus
ΛΛ* 8
.
ΛΛ8 9
Finished
ΛΛ9 A
&&
ΛΛB D
workflowType
ΛΛE Q
.
ΛΛQ R%
DeleteFinishedWorkflows
ΛΛR i
)
ΛΛi j
{
ΜΜ 
await
ΝΝ 
_workflowStore
ΝΝ $
.
ΝΝ$ %
DeleteAsync
ΝΝ% 0
(
ΝΝ0 1
workflowContext
ΝΝ1 @
.
ΝΝ@ A
Workflow
ΝΝA I
)
ΝΝI J
;
ΝΝJ K
}
ΞΞ 
else
ΟΟ 
{
ΠΠ 
await
ΡΡ 
PersistAsync
ΡΡ "
(
ΡΡ" #
workflowContext
ΡΡ# 2
)
ΡΡ2 3
;
ΡΡ3 4
}
ÒÒ 
return
ΤΤ 
workflowContext
ΤΤ "
;
ΤΤ" #
}
ΥΥ 	
public
ΧΧ 
async
ΧΧ 
Task
ΧΧ 
<
ΧΧ &
WorkflowExecutionContext
ΧΧ 2
>
ΧΧ2 3 
StartWorkflowAsync
ΧΧ4 F
(
ΧΧF G
WorkflowType
ΧΧG S
workflowType
ΧΧT `
,
ΧΧ` a
ActivityRecord
ΧΧb p
startActivity
ΧΧq ~
=ΧΧ €
nullΧΧ …
,ΧΧ… †
IDictionaryΧΧ‡ ’
<ΧΧ’ “
stringΧΧ“ ™
,ΧΧ™ 
objectΧΧ› ΅
>ΧΧ΅ Ά
inputΧΧ£ ¨
=ΧΧ© ª
nullΧΧ« ―
,ΧΧ― °
stringΧΧ± ·
correlationIdΧΧΈ Ε
=ΧΧΖ Η
nullΧΧΘ Μ
)ΧΧΜ Ν
{
ΨΨ 	
if
ΩΩ 
(
ΩΩ 
startActivity
ΩΩ 
==
ΩΩ  
null
ΩΩ! %
)
ΩΩ% &
{
ΪΪ 
startActivity
ΫΫ 
=
ΫΫ 
workflowType
ΫΫ  ,
.
ΫΫ, -

Activities
ΫΫ- 7
.
ΫΫ7 8
FirstOrDefault
ΫΫ8 F
(
ΫΫF G
x
ΫΫG H
=>
ΫΫI K
x
ΫΫL M
.
ΫΫM N
IsStart
ΫΫN U
)
ΫΫU V
;
ΫΫV W
if
έέ 
(
έέ 
startActivity
έέ !
==
έέ" $
null
έέ% )
)
έέ) *
{
ήή 
throw
ίί 
new
ίί '
InvalidOperationException
ίί 7
(
ίί7 8
$"
ίί8 :
Workflow with ID 
ίί: K
{
ίίK L
workflowType
ίίL X
.
ίίX Y
Id
ίίY [
}
ίί[ \.
  does not have a start activity.
ίί\ |
"
ίί| }
)
ίί} ~
;
ίί~ 
}
ΰΰ 
}
αα 
var
δδ 
workflow
δδ 
=
δδ 
NewWorkflow
δδ &
(
δδ& '
workflowType
δδ' 3
,
δδ3 4
correlationId
δδ5 B
)
δδB C
;
δδC D
var
ηη 
workflowContext
ηη 
=
ηη  !
await
ηη" '1
#CreateWorkflowExecutionContextAsync
ηη( K
(
ηηK L
workflowType
ηηL X
,
ηηX Y
workflow
ηηZ b
,
ηηb c
input
ηηd i
)
ηηi j
;
ηηj k
workflowContext
θθ 
.
θθ 
Status
θθ "
=
θθ# $
WorkflowStatus
θθ% 3
.
θθ3 4
Starting
θθ4 <
;
θθ< =
await
λλ #
InvokeActivitiesAsync
λλ '
(
λλ' (
workflowContext
λλ( 7
,
λλ7 8
x
λλ9 :
=>
λλ; =
x
λλ> ?
.
λλ? @
Activity
λλ@ H
.
λλH I"
OnInputReceivedAsync
λλI ]
(
λλ] ^
workflowContext
λλ^ m
,
λλm n
input
λλo t
)
λλt u
)
λλu v
;
λλv w
var
ξξ 
cancellationToken
ξξ !
=
ξξ" #
new
ξξ$ '
CancellationToken
ξξ( 9
(
ξξ9 :
)
ξξ: ;
;
ξξ; <
await
οο #
InvokeActivitiesAsync
οο '
(
οο' (
workflowContext
οο( 7
,
οο7 8
x
οο9 :
=>
οο; =
x
οο> ?
.
οο? @
Activity
οο@ H
.
οοH I%
OnWorkflowStartingAsync
οοI `
(
οο` a
workflowContext
οοa p
,
οοp q 
cancellationTokenοοr ƒ
)οοƒ „
)οο„ …
;οο… †
if
ρρ 
(
ρρ 
cancellationToken
ρρ !
.
ρρ! "%
IsCancellationRequested
ρρ" 9
)
ρρ9 :
{
ςς 
workflowContext
ττ 
.
ττ  
Status
ττ  &
=
ττ' (
WorkflowStatus
ττ) 7
.
ττ7 8
Aborted
ττ8 ?
;
ττ? @
return
υυ 
workflowContext
υυ &
;
υυ& '
}
φφ 
else
χχ 
{
ψψ 
var
ϊϊ 
activityContext
ϊϊ #
=
ϊϊ$ %
workflowContext
ϊϊ& 5
.
ϊϊ5 6
GetActivity
ϊϊ6 A
(
ϊϊA B
startActivity
ϊϊB O
.
ϊϊO P

ActivityId
ϊϊP Z
)
ϊϊZ [
;
ϊϊ[ \
if
ϋϋ 
(
ϋϋ 
await
ϋϋ 
activityContext
ϋϋ )
.
ϋϋ) *
Activity
ϋϋ* 2
.
ϋϋ2 3
CanExecuteAsync
ϋϋ3 B
(
ϋϋB C
workflowContext
ϋϋC R
,
ϋϋR S
activityContext
ϋϋT c
)
ϋϋc d
)
ϋϋd e
{
όό 
await
ώώ #
InvokeActivitiesAsync
ώώ /
(
ώώ/ 0
workflowContext
ώώ0 ?
,
ώώ? @
x
ώώA B
=>
ώώC E
x
ώώF G
.
ώώG H
Activity
ώώH P
.
ώώP Q$
OnWorkflowStartedAsync
ώώQ g
(
ώώg h
workflowContext
ώώh w
)
ώώw x
)
ώώx y
;
ώώy z
await
 "
ExecuteWorkflowAsync
 .
(
. /
workflowContext
/ >
,
> ?
startActivity
@ M
)
M N
;
N O
}
‚‚ 
else
ƒƒ 
{
„„ 
workflowContext
…… #
.
……# $
Status
……$ *
=
……+ ,
WorkflowStatus
……- ;
.
……; <
Idle
……< @
;
……@ A
return
†† 
workflowContext
†† *
;
††* +
}
‡‡ 
}
 
if
 
(
 
workflowContext
 
.
  
Status
  &
!=
' )
WorkflowStatus
* 8
.
8 9
Finished
9 A
||
B D
!
E F
workflowType
F R
.
R S%
DeleteFinishedWorkflows
S j
)
j k
{
‹‹ 
await
 
PersistAsync
 "
(
" #
workflowContext
# 2
)
2 3
;
3 4
}
 
return
 
workflowContext
 "
;
" #
}
‘‘ 	
public
““ 
async
““ 
Task
““ 
<
““ 
IEnumerable
““ %
<
““% &
ActivityRecord
““& 4
>
““4 5
>
““5 6"
ExecuteWorkflowAsync
““7 K
(
““K L&
WorkflowExecutionContext
““L d
workflowContext
““e t
,
““t u
ActivityRecord““v „
activity““… 
)““ 
{
”” 	
var
•• 
workflowType
•• 
=
•• 
workflowContext
•• .
.
••. /
WorkflowType
••/ ;
;
••; <
var
–– 
	scheduled
–– 
=
–– 
new
–– 
Stack
––  %
<
––% &
ActivityRecord
––& 4
>
––4 5
(
––5 6
)
––6 7
;
––7 8
var
—— 
blocking
—— 
=
—— 
new
—— 
List
—— #
<
——# $
ActivityRecord
——$ 2
>
——2 3
(
——3 4
)
——4 5
;
——5 6
var
 

isResuming
 
=
 
workflowContext
 ,
.
, -
Status
- 3
==
4 6
WorkflowStatus
7 E
.
E F
Resuming
F N
;
N O
var
™™ 
isFirstPass
™™ 
=
™™ 
true
™™ "
;
™™" #
workflowContext
›› 
.
›› 
Status
›› "
=
››# $
WorkflowStatus
››% 3
.
››3 4
	Executing
››4 =
;
››= >
	scheduled
 
.
 
Push
 
(
 
activity
 #
)
# $
;
$ %
while
 
(
 
	scheduled
 
.
 
Count
 "
>
# $
$num
% &
)
& '
{
 
activity
   
=
   
	scheduled
   $
.
  $ %
Pop
  % (
(
  ( )
)
  ) *
;
  * +
var
ΆΆ 
activityContext
ΆΆ #
=
ΆΆ$ %
workflowContext
ΆΆ& 5
.
ΆΆ5 6
GetActivity
ΆΆ6 A
(
ΆΆA B
activity
ΆΆB J
.
ΆΆJ K

ActivityId
ΆΆK U
)
ΆΆU V
;
ΆΆV W
var
¥¥ 
cancellationToken
¥¥ %
=
¥¥& '
new
¥¥( +
CancellationToken
¥¥, =
(
¥¥= >
)
¥¥> ?
;
¥¥? @
await
¦¦ #
InvokeActivitiesAsync
¦¦ +
(
¦¦+ ,
workflowContext
¦¦, ;
,
¦¦; <
x
¦¦= >
=>
¦¦? A
x
¦¦B C
.
¦¦C D
Activity
¦¦D L
.
¦¦L M&
OnActivityExecutingAsync
¦¦M e
(
¦¦e f
workflowContext
¦¦f u
,
¦¦u v
activityContext¦¦w †
,¦¦† ‡!
cancellationToken¦¦ ™
)¦¦™ 
)¦¦ ›
;¦¦› 
if
¨¨ 
(
¨¨ 
cancellationToken
¨¨ %
.
¨¨% &%
IsCancellationRequested
¨¨& =
)
¨¨= >
{
©© 
workflowContext
«« #
.
««# $
Status
««$ *
=
««+ ,
WorkflowStatus
««- ;
.
««; <
Aborted
««< C
;
««C D
break
¬¬ 
;
¬¬ 
}
­­ 
var
―― 
outcomes
―― 
=
―― 

Enumerable
―― )
.
――) *
Empty
――* /
<
――/ 0
string
――0 6
>
――6 7
(
――7 8
)
――8 9
;
――9 :
try
±± 
{
²² %
ActivityExecutionResult
³³ +
result
³³, 2
;
³³2 3
if
µµ 
(
µµ 
!
µµ 

isResuming
µµ #
)
µµ# $
{
¶¶ 
result
ΈΈ 
=
ΈΈ  
await
ΈΈ! &
activityContext
ΈΈ' 6
.
ΈΈ6 7
Activity
ΈΈ7 ?
.
ΈΈ? @
ExecuteAsync
ΈΈ@ L
(
ΈΈL M
workflowContext
ΈΈM \
,
ΈΈ\ ]
activityContext
ΈΈ^ m
)
ΈΈm n
;
ΈΈn o
}
ΉΉ 
else
ΊΊ 
{
»» 
result
½½ 
=
½½  
await
½½! &
activityContext
½½' 6
.
½½6 7
Activity
½½7 ?
.
½½? @
ResumeAsync
½½@ K
(
½½K L
workflowContext
½½L [
,
½½[ \
activityContext
½½] l
)
½½l m
;
½½m n

isResuming
ΎΎ "
=
ΎΎ# $
false
ΎΎ% *
;
ΎΎ* +
}
ΏΏ 
if
ΑΑ 
(
ΑΑ 
result
ΑΑ 
.
ΑΑ 
IsHalted
ΑΑ '
)
ΑΑ' (
{
ΒΒ 
if
ΓΓ 
(
ΓΓ 
isFirstPass
ΓΓ '
)
ΓΓ' (
{
ΔΔ 
result
ΖΖ "
=
ΖΖ# $
await
ΖΖ% *
activityContext
ΖΖ+ :
.
ΖΖ: ;
Activity
ΖΖ; C
.
ΖΖC D
ResumeAsync
ΖΖD O
(
ΖΖO P
workflowContext
ΖΖP _
,
ΖΖ_ `
activityContext
ΖΖa p
)
ΖΖp q
;
ΖΖq r
isFirstPass
ΗΗ '
=
ΗΗ( )
false
ΗΗ* /
;
ΗΗ/ 0
outcomes
ΘΘ $
=
ΘΘ% &
result
ΘΘ' -
.
ΘΘ- .
Outcomes
ΘΘ. 6
;
ΘΘ6 7
if
ΚΚ 
(
ΚΚ  
result
ΚΚ  &
.
ΚΚ& '
IsHalted
ΚΚ' /
)
ΚΚ/ 0
{
ΛΛ 
blocking
ΝΝ  (
.
ΝΝ( )
Add
ΝΝ) ,
(
ΝΝ, -
activity
ΝΝ- 5
)
ΝΝ5 6
;
ΝΝ6 7
}
ΞΞ 
}
ΟΟ 
else
ΠΠ 
{
ΡΡ 
blocking
ΣΣ $
.
ΣΣ$ %
Add
ΣΣ% (
(
ΣΣ( )
activity
ΣΣ) 1
)
ΣΣ1 2
;
ΣΣ2 3
continue
ΥΥ $
;
ΥΥ$ %
}
ΦΦ 
}
ΧΧ 
else
ΨΨ 
{
ΩΩ 
outcomes
ΪΪ  
=
ΪΪ! "
result
ΪΪ# )
.
ΪΪ) *
Outcomes
ΪΪ* 2
;
ΪΪ2 3
}
ΫΫ 
}
άά 
catch
έέ 
(
έέ 
	Exception
έέ  
ex
έέ! #
)
έέ# $
{
ήή 
_logger
ίί 
.
ίί 
LogError
ίί $
(
ίί$ %
ex
ίί% '
,
ίί' (
$strίί) Ϋ
,ίίΫ ά
workflowTypeίίέ ι
.ίίι κ
Idίίκ μ
,ίίμ ν
activityContextίίξ ύ
.ίίύ ώ
ActivityRecordίίώ 
.ίί 

ActivityIdίί —
,ίί— 
activityContextίί™ ¨
.ίί¨ ©
ActivityRecordίί© ·
.ίί· Έ
NameίίΈ Ό
)ίίΌ ½
;ίί½ Ύ
workflowContext
ΰΰ #
.
ΰΰ# $
Fault
ΰΰ$ )
(
ΰΰ) *
ex
ΰΰ* ,
,
ΰΰ, -
activityContext
ΰΰ. =
)
ΰΰ= >
;
ΰΰ> ?
return
αα 
blocking
αα #
.
αα# $
Distinct
αα$ ,
(
αα, -
)
αα- .
;
αα. /
}
ββ 
await
εε #
InvokeActivitiesAsync
εε +
(
εε+ ,
workflowContext
εε, ;
,
εε; <
x
εε= >
=>
εε? A
x
εεB C
.
εεC D
Activity
εεD L
.
εεL M%
OnActivityExecutedAsync
εεM d
(
εεd e
workflowContext
εεe t
,
εεt u
activityContextεεv …
)εε… †
)εε† ‡
;εε‡ 
foreach
ηη 
(
ηη 
var
ηη 
outcome
ηη $
in
ηη% '
outcomes
ηη( 0
)
ηη0 1
{
θθ 
var
κκ 

transition
κκ "
=
κκ# $
workflowType
κκ% 1
.
κκ1 2
Transitions
κκ2 =
.
κκ= >
FirstOrDefault
κκ> L
(
κκL M
x
κκM N
=>
κκO Q
x
κκR S
.
κκS T
SourceActivityId
κκT d
==
κκe g
activity
κκh p
.
κκp q

ActivityId
κκq {
&&
κκ| ~
xκκ €
.κκ€ !
SourceOutcomeNameκκ ’
==κκ“ •
outcomeκκ– 
)κκ 
;κκ 
if
μμ 
(
μμ 

transition
μμ "
!=
μμ# %
null
μμ& *
)
μμ* +
{
νν 
var
ξξ !
destinationActivity
ξξ /
=
ξξ0 1
workflowContext
ξξ2 A
.
ξξA B
WorkflowType
ξξB N
.
ξξN O

Activities
ξξO Y
.
ξξY Z
SingleOrDefault
ξξZ i
(
ξξi j
x
ξξj k
=>
ξξl n
x
ξξo p
.
ξξp q

ActivityId
ξξq {
==
ξξ| ~

transitionξξ ‰
.ξξ‰ %
DestinationActivityIdξξ 
)ξξ  
;ξξ  ΅
if
ρρ 
(
ρρ !
destinationActivity
ρρ /
!=
ρρ0 2
activity
ρρ3 ;
)
ρρ; <
{
ςς 
	scheduled
σσ %
.
σσ% &
Push
σσ& *
(
σσ* +!
destinationActivity
σσ+ >
)
σσ> ?
;
σσ? @
}
ττ 
}
υυ 
}
φφ 
isFirstPass
ψψ 
=
ψψ 
false
ψψ #
;
ψψ# $
}
ωω 
var
όό  
blockingActivities
όό "
=
όό# $
blocking
όό% -
.
όό- .
Distinct
όό. 6
(
όό6 7
)
όό7 8
.
όό8 9
ToList
όό9 ?
(
όό? @
)
όό@ A
;
όόA B
workflowContext
ώώ 
.
ώώ 
Status
ώώ "
=
ώώ# $ 
blockingActivities
ώώ% 7
.
ώώ7 8
Any
ώώ8 ;
(
ώώ; <
)
ώώ< =
||
ώώ> @
workflowContext
ώώA P
.
ώώP Q
Workflow
ώώQ Y
.
ώώY Z 
BlockingActivities
ώώZ l
.
ώώl m
Any
ώώm p
(
ώώp q
)
ώώq r
?
ώώs t
WorkflowStatusώώu ƒ
.ώώƒ „
Haltedώώ„ 
:ώώ‹ 
WorkflowStatusώώ ›
.ώώ› 
Finishedώώ ¤
;ώώ¤ ¥
foreach
€€ 
(
€€ 
var
€€ 
blockingActivity
€€ )
in
€€* , 
blockingActivities
€€- ?
)
€€? @
{
 
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
workflowContext
ƒƒ $
.
ƒƒ$ %
Workflow
ƒƒ% -
.
ƒƒ- . 
BlockingActivities
ƒƒ. @
.
ƒƒ@ A
Any
ƒƒA D
(
ƒƒD E
x
ƒƒE F
=>
ƒƒG I
x
ƒƒJ K
.
ƒƒK L

ActivityId
ƒƒL V
==
ƒƒW Y
blockingActivity
ƒƒZ j
.
ƒƒj k

ActivityId
ƒƒk u
)
ƒƒu v
)
ƒƒv w
{
„„ 
workflowContext
…… #
.
……# $
Workflow
……$ ,
.
……, - 
BlockingActivities
……- ?
.
……? @
Add
……@ C
(
……C D
BlockingActivity
……D T
.
……T U
FromActivity
……U a
(
……a b
blockingActivity
……b r
)
……r s
)
……s t
;
……t u
}
†† 
}
‡‡ 
return
‰‰  
blockingActivities
‰‰ %
;
‰‰% &
}
 	
private
 
async
 
Task
 
PersistAsync
 '
(
' (&
WorkflowExecutionContext
( @
workflowContext
A P
)
P Q
{
 	
var
 
state
 
=
 
workflowContext
 '
.
' (
Workflow
( 0
.
0 1
State
1 6
.
6 7
ToObject
7 ?
<
? @
WorkflowState
@ M
>
M N
(
N O
)
O P
;
P Q
state
 
.
 
Input
 
=
 
await
 
SerializeAsync
  .
(
. /
workflowContext
/ >
.
> ?
Input
? D
)
D E
;
E F
state
‘‘ 
.
‘‘ 
Output
‘‘ 
=
‘‘ 
await
‘‘  
SerializeAsync
‘‘! /
(
‘‘/ 0
workflowContext
‘‘0 ?
.
‘‘? @
Output
‘‘@ F
)
‘‘F G
;
‘‘G H
state
’’ 
.
’’ 

Properties
’’ 
=
’’ 
await
’’ $
SerializeAsync
’’% 3
(
’’3 4
workflowContext
’’4 C
.
’’C D

Properties
’’D N
)
’’N O
;
’’O P
state
““ 
.
““ 

LastResult
““ 
=
““ 
await
““ $
SerializeAsync
““% 3
(
““3 4
workflowContext
““4 C
.
““C D

LastResult
““D N
)
““N O
;
““O P
state
”” 
.
””  
ExecutedActivities
”” $
=
””% &
workflowContext
””' 6
.
””6 7 
ExecutedActivities
””7 I
.
””I J
ToList
””J P
(
””P Q
)
””Q R
;
””R S
state
•• 
.
•• 
ActivityStates
••  
=
••! "
workflowContext
••# 2
.
••2 3

Activities
••3 =
.
••= >
ToDictionary
••> J
(
••J K
x
••K L
=>
••M O
x
••P Q
.
••Q R
Key
••R U
,
••U V
x
••W X
=>
••Y [
x
••\ ]
.
••] ^
Value
••^ c
.
••c d
Activity
••d l
.
••l m

Properties
••m w
)
••w x
;
••x y
workflowContext
—— 
.
—— 
Workflow
—— $
.
——$ %
State
——% *
=
——+ ,
JObject
——- 4
.
——4 5

FromObject
——5 ?
(
——? @
state
——@ E
)
——E F
;
——F G
await
 
_workflowStore
  
.
  !
	SaveAsync
! *
(
* +
workflowContext
+ :
.
: ;
Workflow
; C
)
C D
;
D E
}
™™ 	
private
 
Task
 #
InvokeActivitiesAsync
 *
(
* +&
WorkflowExecutionContext
+ C
workflowContext
D S
,
S T
Func
U Y
<
Y Z
ActivityContext
Z i
,
i j
Task
k o
>
o p
action
q w
)
w x
{
 	
return
   
workflowContext
   "
.
  " #

Activities
  # -
.
  - .
Values
  . 4
.
  4 5
InvokeAsync
  5 @
(
  @ A
action
  A G
,
  G H
_logger
  I P
)
  P Q
;
  Q R
}
΅΅ 	
private
££ 
async
££ 
Task
££ 
<
££ 
IDictionary
££ &
<
££& '
string
££' -
,
££- .
object
££/ 5
>
££5 6
>
££6 7
SerializeAsync
££8 F
(
££F G
IDictionary
££G R
<
££R S
string
££S Y
,
££Y Z
object
££[ a
>
££a b

dictionary
££c m
)
££m n
{
¤¤ 	
var
¥¥ 
copy
¥¥ 
=
¥¥ 
new
¥¥ 

Dictionary
¥¥ %
<
¥¥% &
string
¥¥& ,
,
¥¥, -
object
¥¥. 4
>
¥¥4 5
(
¥¥5 6

dictionary
¥¥6 @
.
¥¥@ A
Count
¥¥A F
)
¥¥F G
;
¥¥G H
foreach
¦¦ 
(
¦¦ 
var
¦¦ 
item
¦¦ 
in
¦¦  

dictionary
¦¦! +
)
¦¦+ ,
{
§§ 
copy
¨¨ 
[
¨¨ 
item
¨¨ 
.
¨¨ 
Key
¨¨ 
]
¨¨ 
=
¨¨  
await
¨¨! &
SerializeAsync
¨¨' 5
(
¨¨5 6
item
¨¨6 :
.
¨¨: ;
Value
¨¨; @
)
¨¨@ A
;
¨¨A B
}
©© 
return
ªª 
copy
ªª 
;
ªª 
}
«« 	
private
­­ 
async
­­ 
Task
­­ 
<
­­ 
IDictionary
­­ &
<
­­& '
string
­­' -
,
­­- .
object
­­/ 5
>
­­5 6
>
­­6 7
DeserializeAsync
­­8 H
(
­­H I
IDictionary
­­I T
<
­­T U
string
­­U [
,
­­[ \
object
­­] c
>
­­c d

dictionary
­­e o
)
­­o p
{
®® 	
var
―― 
copy
―― 
=
―― 
new
―― 

Dictionary
―― %
<
――% &
string
――& ,
,
――, -
object
――. 4
>
――4 5
(
――5 6

dictionary
――6 @
.
――@ A
Count
――A F
)
――F G
;
――G H
foreach
°° 
(
°° 
var
°° 
item
°° 
in
°°  

dictionary
°°! +
)
°°+ ,
{
±± 
copy
²² 
[
²² 
item
²² 
.
²² 
Key
²² 
]
²² 
=
²²  
await
²²! &
DeserializeAsync
²²' 7
(
²²7 8
item
²²8 <
.
²²< =
Value
²²= B
)
²²B C
;
²²C D
}
³³ 
return
΄΄ 
copy
΄΄ 
;
΄΄ 
}
µµ 	
private
·· 
async
·· 
Task
·· 
<
·· 
object
·· !
>
··! "
SerializeAsync
··# 1
(
··1 2
object
··2 8
value
··9 >
)
··> ?
{
ΈΈ 	
var
ΉΉ 
context
ΉΉ 
=
ΉΉ 
new
ΉΉ +
SerializeWorkflowValueContext
ΉΉ ;
(
ΉΉ; <
value
ΉΉ< A
)
ΉΉA B
;
ΉΉB C
await
ΊΊ '
_workflowValueSerializers
ΊΊ +
.
ΊΊ+ ,
Resolve
ΊΊ, 3
(
ΊΊ3 4
)
ΊΊ4 5
.
ΊΊ5 6
InvokeAsync
ΊΊ6 A
(
ΊΊA B
(
ΊΊB C
s
ΊΊC D
,
ΊΊD E
context
ΊΊF M
)
ΊΊM N
=>
ΊΊO Q
s
ΊΊR S
.
ΊΊS T!
SerializeValueAsync
ΊΊT g
(
ΊΊg h
context
ΊΊh o
)
ΊΊo p
,
ΊΊp q
context
ΊΊr y
,
ΊΊy z
_loggerΊΊ{ ‚
)ΊΊ‚ ƒ
;ΊΊƒ „
return
»» 
context
»» 
.
»» 
Output
»» !
;
»»! "
}
ΌΌ 	
private
ΎΎ 
async
ΎΎ 
Task
ΎΎ 
<
ΎΎ 
object
ΎΎ !
>
ΎΎ! "
DeserializeAsync
ΎΎ# 3
(
ΎΎ3 4
object
ΎΎ4 :
value
ΎΎ; @
)
ΎΎ@ A
{
ΏΏ 	
var
ΐΐ 
context
ΐΐ 
=
ΐΐ 
new
ΐΐ +
SerializeWorkflowValueContext
ΐΐ ;
(
ΐΐ; <
value
ΐΐ< A
)
ΐΐA B
;
ΐΐB C
await
ΑΑ '
_workflowValueSerializers
ΑΑ +
.
ΑΑ+ ,
Resolve
ΑΑ, 3
(
ΑΑ3 4
)
ΑΑ4 5
.
ΑΑ5 6
InvokeAsync
ΑΑ6 A
(
ΑΑA B
(
ΑΑB C
s
ΑΑC D
,
ΑΑD E
context
ΑΑF M
)
ΑΑM N
=>
ΑΑO Q
s
ΑΑR S
.
ΑΑS T#
DeserializeValueAsync
ΑΑT i
(
ΑΑi j
context
ΑΑj q
)
ΑΑq r
,
ΑΑr s
context
ΑΑt {
,
ΑΑ{ |
_loggerΑΑ} „
)ΑΑ„ …
;ΑΑ… †
return
ΒΒ 
context
ΒΒ 
.
ΒΒ 
Output
ΒΒ !
;
ΒΒ! "
}
ΓΓ 	
}
ΔΔ 
}ΕΕ z
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowStore.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class 
WorkflowStore 
:  
IWorkflowStore! /
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IEnumerable $
<$ %
IWorkflowHandler% 5
>5 6
	_handlers7 @
;@ A
private 
readonly 
ILogger  
_logger! (
;( )
public 
WorkflowStore 
( 
ISession %
session& -
,- .
IEnumerable/ :
<: ;
IWorkflowHandler; K
>K L
handlersM U
,U V
ILoggerW ^
<^ _
WorkflowStore_ l
>l m
loggern t
)t u
{ 	
	_handlers 
= 
handlers  
;  !
_session 
= 
session 
; 
_logger 
= 
logger 
; 
} 	
public 
Task 
< 
int 
> 

CountAsync #
(# $
string$ *
workflowTypeId+ 9
=: ;
null< @
)@ A
{ 	
return "
FilterByWorkflowTypeId )
() *
_session* 2
.2 3
Query3 8
<8 9
Workflow9 A
,A B
WorkflowIndexC P
>P Q
(Q R
)R S
,S T
workflowTypeIdU c
)c d
.d e

CountAsynce o
(o p
)p q
;q r
} 	
public 
async 
Task 
< 
bool 
> "
HasHaltedInstanceAsync  6
(6 7
string7 =
workflowTypeId> L
)L M
{   	
return!! 
(!! 
await!! 
_session!! "
.!!" #
Query!!# (
<!!( )
Workflow!!) 1
,!!1 2+
WorkflowBlockingActivitiesIndex!!3 R
>!!R S
(!!S T
x!!T U
=>!!V X
x!!Y Z
.!!Z [
WorkflowTypeId!![ i
==!!j l
workflowTypeId!!m {
)!!{ |
.!!| } 
FirstOrDefaultAsync	!!} 
(
!! ‘
)
!!‘ ’
)
!!’ “
!=
!!” –
null
!!— ›
;
!!› 
}"" 	
public$$ 
Task$$ 
<$$ 
IEnumerable$$ 
<$$  
Workflow$$  (
>$$( )
>$$) *
	ListAsync$$+ 4
($$4 5
string$$5 ;
workflowTypeId$$< J
=$$K L
null$$M Q
,$$Q R
int$$S V
?$$V W
skip$$X \
=$$] ^
null$$_ c
,$$c d
int$$e h
?$$h i
take$$j n
=$$o p
null$$q u
)$$u v
{%% 	
var&& 
query&& 
=&& 
(&& 
IQuery&& 
<&&  
Workflow&&  (
>&&( )
)&&) *"
FilterByWorkflowTypeId&&* @
(&&@ A
_session&&A I
.&&I J
Query&&J O
<&&O P
Workflow&&P X
,&&X Y
WorkflowIndex&&Z g
>&&g h
(&&h i
)&&i j
,&&j k
workflowTypeId&&l z
)&&z {
.'' 
OrderByDescending'' "
(''" #
x''# $
=>''% '
x''( )
.'') *

CreatedUtc''* 4
)''4 5
;''5 6
if)) 
()) 
skip)) 
!=)) 
null)) 
))) 
{** 
query++ 
=++ 
query++ 
.++ 
Skip++ "
(++" #
skip++# '
.++' (
Value++( -
)++- .
;++. /
},, 
if.. 
(.. 
take.. 
!=.. 
null.. 
).. 
{// 
query00 
=00 
query00 
.00 
Take00 "
(00" #
take00# '
.00' (
Value00( -
)00- .
;00. /
}11 
return33 
query33 
.33 
	ListAsync33 "
(33" #
)33# $
;33$ %
}44 	
public66 
Task66 
<66 
IEnumerable66 
<66  
Workflow66  (
>66( )
>66) *
	ListAsync66+ 4
(664 5
IEnumerable665 @
<66@ A
string66A G
>66G H
workflowTypeIds66I X
)66X Y
{77 	
return88 
_session88 
.88 
Query88 !
<88! "
Workflow88" *
,88* +
WorkflowIndex88, 9
>889 :
(88: ;
x88; <
=>88= ?
x88@ A
.88A B
WorkflowTypeId88B P
.88P Q
IsIn88Q U
(88U V
workflowTypeIds88V e
)88e f
)88f g
.88g h
	ListAsync88h q
(88q r
)88r s
;88s t
}99 	
public;; 
Task;; 
<;; 
Workflow;; 
>;; 
GetAsync;; &
(;;& '
int;;' *
id;;+ -
);;- .
{<< 	
return== 
_session== 
.== 
GetAsync== $
<==$ %
Workflow==% -
>==- .
(==. /
id==/ 1
)==1 2
;==2 3
}>> 	
public@@ 
Task@@ 
<@@ 
Workflow@@ 
>@@ 
GetAsync@@ &
(@@& '
string@@' -

workflowId@@. 8
)@@8 9
{AA 	
returnBB 
_sessionBB 
.BB 
QueryBB !
<BB! "
WorkflowBB" *
,BB* ++
WorkflowBlockingActivitiesIndexBB, K
>BBK L
(BBL M
xBBM N
=>BBO Q
xBBR S
.BBS T

WorkflowIdBBT ^
==BB_ a

workflowIdBBb l
)BBl m
.BBm n 
FirstOrDefaultAsync	BBn 
(
BB ‚
)
BB‚ ƒ
;
BBƒ „
}CC 	
publicEE 
TaskEE 
<EE 
IEnumerableEE 
<EE  
WorkflowEE  (
>EE( )
>EE) *
GetAsyncEE+ 3
(EE3 4
IEnumerableEE4 ?
<EE? @
stringEE@ F
>EEF G
workflowIdsEEH S
)EES T
{FF 	
returnGG 
_sessionGG 
.GG 
QueryGG !
<GG! "
WorkflowGG" *
,GG* ++
WorkflowBlockingActivitiesIndexGG, K
>GGK L
(GGL M
xGGM N
=>GGO Q
xGGR S
.GGS T

WorkflowIdGGT ^
.GG^ _
IsInGG_ c
(GGc d
workflowIdsGGd o
)GGo p
)GGp q
.GGq r
	ListAsyncGGr {
(GG{ |
)GG| }
;GG} ~
}HH 	
publicJJ 
TaskJJ 
<JJ 
IEnumerableJJ 
<JJ  
WorkflowJJ  (
>JJ( )
>JJ) *
GetAsyncJJ+ 3
(JJ3 4
IEnumerableJJ4 ?
<JJ? @
intJJ@ C
>JJC D
idsJJE H
)JJH I
{KK 	
returnLL 
_sessionLL 
.LL 
GetAsyncLL $
<LL$ %
WorkflowLL% -
>LL- .
(LL. /
idsLL/ 2
.LL2 3
ToArrayLL3 :
(LL: ;
)LL; <
)LL< =
;LL= >
}MM 	
publicOO 
TaskOO 
<OO 
IEnumerableOO 
<OO  
WorkflowOO  (
>OO( )
>OO) *
	ListAsyncOO+ 4
(OO4 5
stringOO5 ;
workflowTypeIdOO< J
,OOJ K
IEnumerableOOL W
<OOW X
stringOOX ^
>OO^ _
blockingActivityIdsOO` s
)OOs t
{PP 	
returnQQ 
_sessionQQ 
.RR 
QueryRR 
<RR 
WorkflowRR 
,RR  +
WorkflowBlockingActivitiesIndexRR! @
>RR@ A
(RRA B
indexRRB G
=>RRH J
indexSS 
.SS 
WorkflowTypeIdSS (
==SS) +
workflowTypeIdSS, :
&&SS; =
indexTT 
.TT 

ActivityIdTT $
.TT$ %
IsInTT% )
(TT) *
blockingActivityIdsTT* =
)TT= >
)TT> ?
.UU 
	ListAsyncUU 
(UU 
)UU 
;UU 
}VV 	
publicXX 
TaskXX 
<XX 
IEnumerableXX 
<XX  
WorkflowXX  (
>XX( )
>XX) *
	ListAsyncXX+ 4
(XX4 5
stringXX5 ;
workflowTypeIdXX< J
,XXJ K
stringXXL R
activityNameXXS _
,XX_ `
stringXXa g
correlationIdXXh u
=XXv w
nullXXx |
)XX| }
{YY 	
returnZZ 
_sessionZZ 
.[[ 
Query[[ 
<[[ 
Workflow[[ 
,[[  +
WorkflowBlockingActivitiesIndex[[! @
>[[@ A
([[A B
index[[B G
=>[[H J
index\\ 
.\\ 
WorkflowTypeId\\ (
==\\) +
workflowTypeId\\, :
&&\\; =
index]] 
.]] 
ActivityName]] &
==]]' )
activityName]]* 6
&&]]7 9
index^^ 
.^^ !
WorkflowCorrelationId^^ /
==^^0 2
(^^3 4
correlationId^^4 A
??^^B D
$str^^E G
)^^G H
)^^H I
.__ 
	ListAsync__ 
(__ 
)__ 
;__ 
}`` 	
publicbb 
Taskbb 
<bb 
IEnumerablebb 
<bb  
Workflowbb  (
>bb( )
>bb) *#
ListByActivityNameAsyncbb+ B
(bbB C
stringbbC I
activityNamebbJ V
,bbV W
stringbbX ^
correlationIdbb_ l
=bbm n
nullbbo s
,bbs t
boolbbu y
isAlwaysCorrelated	bbz 
=
bb 
false
bb ”
)
bb” •
{cc 	
vardd 
querydd 
=dd 
_sessiondd  
.dd  !
Querydd! &
<dd& '
Workflowdd' /
,dd/ 0+
WorkflowBlockingActivitiesIndexdd1 P
>ddP Q
(ddQ R
)ddR S
;ddS T
ifff 
(ff 
isAlwaysCorrelatedff "
)ff" #
{gg 
queryhh 
=hh 
queryhh 
.hh 
Wherehh #
(hh# $
indexhh$ )
=>hh* ,
indexhh- 2
.hh2 3
ActivityNamehh3 ?
==hh@ B
activityNamehhC O
)hhO P
;hhP Q
}ii 
elsejj 
{kk 
queryll 
=ll 
queryll 
.ll 
Wherell #
(ll# $
indexll$ )
=>ll* ,
indexll- 2
.ll2 3
ActivityNamell3 ?
==ll@ B
activityNamellC O
&&llP R
indexllS X
.llX Y!
WorkflowCorrelationIdllY n
==llo q
(llr s
correlationId	lls €
??
ll ƒ
$str
ll„ †
)
ll† ‡
)
ll‡ 
;
ll ‰
}mm 
returnoo 
queryoo 
.oo 
	ListAsyncoo "
(oo" #
)oo# $
;oo$ %
}pp 	
publicrr 
Taskrr 
	SaveAsyncrr 
(rr 
Workflowrr &
workflowrr' /
)rr/ 0
{ss 	
vartt 
isNewtt 
=tt 
workflowtt  
.tt  !
Idtt! #
==tt$ &
$numtt' (
;tt( )
_sessionuu 
.uu 
Saveuu 
(uu 
workflowuu "
)uu" #
;uu# $
ifww 
(ww 
isNewww 
)ww 
{xx 
varyy 
contextyy 
=yy 
newyy !"
WorkflowCreatedContextyy" 8
(yy8 9
workflowyy9 A
)yyA B
;yyB C
returnzz 
	_handlerszz  
.zz  !
InvokeAsynczz! ,
(zz, -
(zz- .
handlerzz. 5
,zz5 6
contextzz7 >
)zz> ?
=>zz@ B
handlerzzC J
.zzJ K
CreatedAsynczzK W
(zzW X
contextzzX _
)zz_ `
,zz` a
contextzzb i
,zzi j
_loggerzzk r
)zzr s
;zzs t
}{{ 
else|| 
{}} 
var~~ 
context~~ 
=~~ 
new~~ !"
WorkflowUpdatedContext~~" 8
(~~8 9
workflow~~9 A
)~~A B
;~~B C
return 
	_handlers  
.  !
InvokeAsync! ,
(, -
(- .
handler. 5
,5 6
context7 >
)> ?
=>@ B
handlerC J
.J K
UpdatedAsyncK W
(W X
contextX _
)_ `
,` a
contextb i
,i j
_loggerk r
)r s
;s t
}
€€ 
}
 	
public
ƒƒ 
Task
ƒƒ 
DeleteAsync
ƒƒ 
(
ƒƒ  
Workflow
ƒƒ  (
workflow
ƒƒ) 1
)
ƒƒ1 2
{
„„ 	
_session
…… 
.
…… 
Delete
…… 
(
…… 
workflow
…… $
)
……$ %
;
……% &
var
‡‡ 
context
‡‡ 
=
‡‡ 
new
‡‡ $
WorkflowDeletedContext
‡‡ 4
(
‡‡4 5
workflow
‡‡5 =
)
‡‡= >
;
‡‡> ?
return
 
	_handlers
 
.
 
InvokeAsync
 (
(
( )
(
) *
handler
* 1
,
1 2
context
3 :
)
: ;
=>
< >
handler
? F
.
F G
DeletedAsync
G S
(
S T
context
T [
)
[ \
,
\ ]
context
^ e
,
e f
_logger
g n
)
n o
;
o p
}
‰‰ 	
private
‹‹ 
IQuery
‹‹ 
<
‹‹ 
Workflow
‹‹ 
,
‹‹  
WorkflowIndex
‹‹! .
>
‹‹. /$
FilterByWorkflowTypeId
‹‹0 F
(
‹‹F G
IQuery
‹‹G M
<
‹‹M N
Workflow
‹‹N V
,
‹‹V W
WorkflowIndex
‹‹X e
>
‹‹e f
query
‹‹g l
,
‹‹l m
string
‹‹n t
workflowTypeId‹‹u ƒ
)‹‹ƒ „
{
 	
if
 
(
 
workflowTypeId
 
!=
 !
null
" &
)
& '
{
 
query
 
=
 
query
 
.
 
Where
 #
(
# $
x
$ %
=>
& (
x
) *
.
* +
WorkflowTypeId
+ 9
==
: <
workflowTypeId
= K
)
K L
;
L M
}
 
return
’’ 
query
’’ 
;
’’ 
}
““ 	
}
”” 
}•• σ
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowTypeIdGenerator.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class #
WorkflowTypeIdGenerator (
:) *$
IWorkflowTypeIdGenerator+ C
{ 
private 
readonly 
IIdGenerator %
_idGenerator& 2
;2 3
public

 #
WorkflowTypeIdGenerator

 &
(

& '
IIdGenerator

' 3
idGenerator

4 ?
)

? @
{ 	
_idGenerator 
= 
idGenerator &
;& '
} 	
public 
string 
GenerateUniqueId &
(& '
WorkflowType' 3
workflowType4 @
)@ A
{ 	
return 
_idGenerator 
.  
GenerateUniqueId  0
(0 1
)1 2
;2 3
} 	
} 
} >
“D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowTypeStore.cs
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
  
Services

  (
{ 
public 

class 
WorkflowTypeStore "
:# $
IWorkflowTypeStore% 7
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IEnumerable $
<$ %%
IWorkflowTypeEventHandler% >
>> ?
	_handlers@ I
;I J
private 
readonly 
ILogger  
_logger! (
;( )
public 
WorkflowTypeStore  
(  !
ISession! )
session* 1
,1 2
IEnumerable3 >
<> ?%
IWorkflowTypeEventHandler? X
>X Y
handlersZ b
,b c
ILoggerd k
<k l
WorkflowTypeStorel }
>} ~
logger	 …
)
… †
{ 	
_session 
= 
session 
; 
	_handlers 
= 
handlers  
;  !
_logger 
= 
logger 
; 
} 	
public 
Task 
< 
WorkflowType  
>  !
GetAsync" *
(* +
int+ .
id/ 1
)1 2
{ 	
return 
_session 
. 
GetAsync $
<$ %
WorkflowType% 1
>1 2
(2 3
id3 5
)5 6
;6 7
} 	
public 
Task 
< 
IEnumerable 
<  
WorkflowType  ,
>, -
>- .
GetAsync/ 7
(7 8
IEnumerable8 C
<C D
intD G
>G H
idsI L
)L M
{ 	
return   
_session   
.   
GetAsync   $
<  $ %
WorkflowType  % 1
>  1 2
(  2 3
ids  3 6
.  6 7
ToArray  7 >
(  > ?
)  ? @
)  @ A
;  A B
}!! 	
public## 
Task## 
<## 
WorkflowType##  
>##  !
GetAsync##" *
(##* +
string##+ 1
workflowTypeId##2 @
)##@ A
{$$ 	
return%% 
_session%% 
.%% 
Query%% !
<%%! "
WorkflowType%%" .
,%%. /
WorkflowTypeIndex%%0 A
>%%A B
(%%B C
x%%C D
=>%%E G
x%%H I
.%%I J
WorkflowTypeId%%J X
==%%Y [
workflowTypeId%%\ j
)%%j k
.%%k l
FirstOrDefaultAsync%%l 
(	%% €
)
%%€ 
;
%% ‚
}&& 	
public(( 
Task(( 
<(( 
IEnumerable(( 
<((  
WorkflowType((  ,
>((, -
>((- .
	ListAsync((/ 8
(((8 9
)((9 :
{)) 	
return** 
_session** 
.** 
Query** !
<**! "
WorkflowType**" .
,**. /
WorkflowTypeIndex**0 A
>**A B
(**B C
)**C D
.**D E
	ListAsync**E N
(**N O
)**O P
;**P Q
}++ 	
public-- 
Task-- 
<-- 
IEnumerable-- 
<--  
WorkflowType--  ,
>--, -
>--- .#
GetByStartActivityAsync--/ F
(--F G
string--G M
activityName--N Z
)--Z [
{.. 	
return// 
_session// 
.00 
Query00 
<00 
WorkflowType00 #
,00# $,
 WorkflowTypeStartActivitiesIndex00% E
>00E F
(00F G
index00G L
=>00M O
index11 
.11 
StartActivityName11 +
==11, .
activityName11/ ;
&&11< >
index22 
.22 
	IsEnabled22 #
)22# $
.33 
	ListAsync33 
(33 
)33 
;33 
}44 	
public66 
Task66 
	SaveAsync66 
(66 
WorkflowType66 *
workflowType66+ 7
)667 8
{77 	
var88 
isNew88 
=88 
workflowType88 $
.88$ %
Id88% '
==88( *
$num88+ ,
;88, -
_session99 
.99 
Save99 
(99 
workflowType99 &
)99& '
;99' (
if;; 
(;; 
isNew;; 
);; 
{<< 
var== 
context== 
=== 
new== !&
WorkflowTypeCreatedContext==" <
(==< =
workflowType=== I
)==I J
;==J K
return>> 
	_handlers>>  
.>>  !
InvokeAsync>>! ,
(>>, -
(>>- .
handler>>. 5
,>>5 6
context>>7 >
)>>> ?
=>>>@ B
handler>>C J
.>>J K
CreatedAsync>>K W
(>>W X
context>>X _
)>>_ `
,>>` a
context>>b i
,>>i j
_logger>>k r
)>>r s
;>>s t
}?? 
else@@ 
{AA 
varBB 
contextBB 
=BB 
newBB !&
WorkflowTypeUpdatedContextBB" <
(BB< =
workflowTypeBB= I
)BBI J
;BBJ K
returnCC 
	_handlersCC  
.CC  !
InvokeAsyncCC! ,
(CC, -
(CC- .
handlerCC. 5
,CC5 6
contextCC7 >
)CC> ?
=>CC@ B
handlerCCC J
.CCJ K
UpdatedAsyncCCK W
(CCW X
contextCCX _
)CC_ `
,CC` a
contextCCb i
,CCi j
_loggerCCk r
)CCr s
;CCs t
}DD 
}EE 	
publicGG 
asyncGG 
TaskGG 
DeleteAsyncGG %
(GG% &
WorkflowTypeGG& 2
workflowTypeGG3 ?
)GG? @
{HH 	
varJJ 
	workflowsJJ 
=JJ 
awaitJJ !
_sessionJJ" *
.JJ* +
QueryJJ+ 0
<JJ0 1
WorkflowJJ1 9
,JJ9 :
WorkflowIndexJJ; H
>JJH I
(JJI J
xJJJ K
=>JJL N
xJJO P
.JJP Q
WorkflowTypeIdJJQ _
==JJ` b
workflowTypeJJc o
.JJo p
WorkflowTypeIdJJp ~
)JJ~ 
.	JJ €
	ListAsync
JJ€ ‰
(
JJ‰ 
)
JJ ‹
;
JJ‹ 
foreachLL 
(LL 
varLL 
workflowLL !
inLL" $
	workflowsLL% .
)LL. /
{MM 
_sessionNN 
.NN 
DeleteNN 
(NN  
workflowNN  (
)NN( )
;NN) *
}OO 
_sessionRR 
.RR 
DeleteRR 
(RR 
workflowTypeRR (
)RR( )
;RR) *
varSS 
contextSS 
=SS 
newSS &
WorkflowTypeDeletedContextSS 8
(SS8 9
workflowTypeSS9 E
)SSE F
;SSF G
awaitTT 
	_handlersTT 
.TT 
InvokeAsyncTT '
(TT' (
(TT( )
handlerTT) 0
,TT0 1
contextTT2 9
)TT9 :
=>TT; =
handlerTT> E
.TTE F
DeletedAsyncTTF R
(TTR S
contextTTS Z
)TTZ [
,TT[ \
contextTT] d
,TTd e
_loggerTTf m
)TTm n
;TTn o
}UU 	
}VV 
}WW χk
€D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Startup.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
{ 
public 

class 
Startup 
: 
StartupBase &
{   
private!! 
readonly!! 
AdminOptions!! %
_adminOptions!!& 3
;!!3 4
public## 
Startup## 
(## 
IOptions## 
<##  
AdminOptions##  ,
>##, -
adminOptions##. :
)##: ;
{$$ 	
_adminOptions%% 
=%% 
adminOptions%% (
.%%( )
Value%%) .
;%%. /
}&& 	
public(( 
override(( 
void(( 
ConfigureServices(( .
(((. /
IServiceCollection((/ A
services((B J
)((J K
{)) 	
services** 
.** 
AddIdGeneration** $
(**$ %
)**% &
;**& '
services++ 
.++ 
AddSingleton++ !
<++! "$
IWorkflowTypeIdGenerator++" :
,++: ;#
WorkflowTypeIdGenerator++< S
>++S T
(++T U
)++U V
;++V W
services,, 
.,, 
AddSingleton,, !
<,,! " 
IWorkflowIdGenerator,," 6
,,,6 7
WorkflowIdGenerator,,8 K
>,,K L
(,,L M
),,M N
;,,N O
services-- 
.-- 
AddSingleton-- !
<--! " 
IActivityIdGenerator--" 6
,--6 7
ActivityIdGenerator--8 K
>--K L
(--L M
)--M N
;--N O
services// 
.// 
	AddScoped// 
(// 
typeof// %
(//% &
Resolver//& .
<//. /
>/// 0
)//0 1
)//1 2
;//2 3
services00 
.00 
AddSingleton00 !
<00! "!
ISecurityTokenService00" 7
,007 8 
SecurityTokenService009 M
>00M N
(00N O
)00O P
;00P Q
services11 
.11 
	AddScoped11 
<11 
IActivityLibrary11 /
,11/ 0
ActivityLibrary111 @
>11@ A
(11A B
)11B C
;11C D
services22 
.22 
	AddScoped22 
<22 
IWorkflowTypeStore22 1
,221 2
WorkflowTypeStore223 D
>22D E
(22E F
)22F G
;22G H
services33 
.33 
	AddScoped33 
<33 
IWorkflowStore33 -
,33- .
WorkflowStore33/ <
>33< =
(33= >
)33> ?
;33? @
services44 
.44 
	AddScoped44 
<44 
IWorkflowManager44 /
,44/ 0
WorkflowManager441 @
>44@ A
(44A B
)44B C
;44C D
services55 
.55 
	AddScoped55 
<55 #
IActivityDisplayManager55 6
,556 7"
ActivityDisplayManager558 N
>55N O
(55O P
)55P Q
;55Q R
services66 
.66 
	AddScoped66 
<66 
IDataMigration66 -
,66- .

Migrations66/ 9
>669 :
(66: ;
)66; <
;66< =
services77 
.77 
	AddScoped77 
<77 
INavigationProvider77 2
,772 3
	AdminMenu774 =
>77= >
(77> ?
)77? @
;77@ A
services88 
.88 
	AddScoped88 
<88 
IPermissionProvider88 2
,882 3
Permissions884 ?
>88? @
(88@ A
)88A B
;88B C
services99 
.99 
	AddScoped99 
<99 
IDisplayDriver99 -
<99- .
	IActivity99. 7
>997 8
,998 9(
MissingActivityDisplayDriver99: V
>99V W
(99W X
)99X Y
;99Y Z
services:: 
.:: 
AddSingleton:: !
<::! "
IIndexProvider::" 0
,::0 1%
WorkflowTypeIndexProvider::2 K
>::K L
(::L M
)::M N
;::N O
services;; 
.;; 
AddSingleton;; !
<;;! "
IIndexProvider;;" 0
,;;0 1!
WorkflowIndexProvider;;2 G
>;;G H
(;;H I
);;I J
;;;J K
services<< 
.<< 
	AddScoped<< 
<<< ,
 IWorkflowExecutionContextHandler<< ?
,<<? @2
&DefaultWorkflowExecutionContextHandler<<A g
><<g h
(<<h i
)<<i j
;<<j k
services== 
.== 
	AddScoped== 
<== (
IWorkflowExpressionEvaluator== ;
,==; <-
!LiquidWorkflowExpressionEvaluator=== ^
>==^ _
(==_ `
)==` a
;==a b
services>> 
.>> 
	AddScoped>> 
<>> $
IWorkflowScriptEvaluator>> 7
,>>7 8-
!JavaScriptWorkflowScriptEvaluator>>9 Z
>>>Z [
(>>[ \
)>>\ ]
;>>] ^
services@@ 
.@@ 
AddActivity@@  
<@@  !
Activity@@! )
,@@) *)
ActivityMetadataDisplayDriver@@+ H
>@@H I
(@@I J
)@@J K
;@@K L
servicesAA 
.AA 
AddActivityAA  
<AA  !

NotifyTaskAA! +
,AA+ ,#
NotifyTaskDisplayDriverAA- D
>AAD E
(AAE F
)AAF G
;AAG H
servicesBB 
.BB 
AddActivityBB  
<BB  !
SetPropertyTaskBB! 0
,BB0 1(
SetVariableTaskDisplayDriverBB2 N
>BBN O
(BBO P
)BBP Q
;BBQ R
servicesCC 
.CC 
AddActivityCC  
<CC  !
SetOutputTaskCC! .
,CC. /&
SetOutputTaskDisplayDriverCC0 J
>CCJ K
(CCK L
)CCL M
;CCM N
servicesDD 
.DD 
AddActivityDD  
<DD  !
CorrelateTaskDD! .
,DD. /&
CorrelateTaskDisplayDriverDD0 J
>DDJ K
(DDK L
)DDL M
;DDM N
servicesEE 
.EE 
AddActivityEE  
<EE  !
ForkTaskEE! )
,EE) *!
ForkTaskDisplayDriverEE+ @
>EE@ A
(EEA B
)EEB C
;EEC D
servicesFF 
.FF 
AddActivityFF  
<FF  !
JoinTaskFF! )
,FF) *!
JoinTaskDisplayDriverFF+ @
>FF@ A
(FFA B
)FFB C
;FFC D
servicesGG 
.GG 
AddActivityGG  
<GG  !
ForLoopTaskGG! ,
,GG, -$
ForLoopTaskDisplayDriverGG. F
>GGF G
(GGG H
)GGH I
;GGI J
servicesHH 
.HH 
AddActivityHH  
<HH  !
ForEachTaskHH! ,
,HH, -$
ForEachTaskDisplayDriverHH. F
>HHF G
(HHG H
)HHH I
;HHI J
servicesII 
.II 
AddActivityII  
<II  !
WhileLoopTaskII! .
,II. /&
WhileLoopTaskDisplayDriverII0 J
>IIJ K
(IIK L
)IIL M
;IIM N
servicesJJ 
.JJ 
AddActivityJJ  
<JJ  !

IfElseTaskJJ! +
,JJ+ ,#
IfElseTaskDisplayDriverJJ- D
>JJD E
(JJE F
)JJF G
;JJG H
servicesKK 
.KK 
AddActivityKK  
<KK  !

ScriptTaskKK! +
,KK+ ,#
ScriptTaskDisplayDriverKK- D
>KKD E
(KKE F
)KKF G
;KKG H
servicesLL 
.LL 
AddActivityLL  
<LL  !
LogTaskLL! (
,LL( ) 
LogTaskDisplayDriverLL* >
>LL> ?
(LL? @
)LL@ A
;LLA B
servicesNN 
.NN 
AddActivityNN  
<NN  !!
CommitTransactionTaskNN! 6
,NN6 7.
"CommitTransactionTaskDisplayDriverNN8 Z
>NNZ [
(NN[ \
)NN\ ]
;NN] ^
servicesPP 
.PP "
AddRecipeExecutionStepPP +
<PP+ ,
WorkflowTypeStepPP, <
>PP< =
(PP= >
)PP> ?
;PP? @
}QQ 	
publicSS 
overrideSS 
voidSS 
	ConfigureSS &
(SS& '
IApplicationBuilderSS' :
appSS; >
,SS> ?!
IEndpointRouteBuilderSS@ U
routesSSV \
,SS\ ]
IServiceProviderSS^ n
serviceProviderSSo ~
)SS~ 
{TT 	
varUU "
activityControllerNameUU &
=UU' (
typeofUU) /
(UU/ 0
ActivityControllerUU0 B
)UUB C
.UUC D
ControllerNameUUD R
(UUR S
)UUS T
;UUT U
routesVV 
.VV "
MapAreaControllerRouteVV )
(VV) *
nameWW 
:WW 
$strWW #
,WW# $
areaNameXX 
:XX 
$strXX 1
,XX1 2
patternYY 
:YY 
_adminOptionsYY &
.YY& '
AdminUrlPrefixYY' 5
+YY6 7
$strYY8 w
,YYw x
defaultsZZ 
:ZZ 
newZZ 
{ZZ 

controllerZZ  *
=ZZ+ ,"
activityControllerNameZZ- C
,ZZC D
actionZZE K
=ZZL M
nameofZZN T
(ZZT U
ActivityControllerZZU g
.ZZg h
CreateZZh n
)ZZn o
}ZZp q
)[[ 
;[[ 
routes]] 
.]] "
MapAreaControllerRoute]] )
(]]) *
name^^ 
:^^ 
$str^^ $
,^^$ %
areaName__ 
:__ 
$str__ 1
,__1 2
pattern`` 
:`` 
_adminOptions`` &
.``& '
AdminUrlPrefix``' 5
+``6 7
$str``8 v
,``v w
defaultsaa 
:aa 
newaa 
{aa 

controlleraa  *
=aa+ ,"
activityControllerNameaa- C
,aaC D
actionaaE K
=aaL M
nameofaaN T
(aaT U
ActivityControlleraaU g
.aag h
Editaah l
)aal m
}aan o
)bb 
;bb 
vardd "
workflowControllerNamedd &
=dd' (
typeofdd) /
(dd/ 0
WorkflowControllerdd0 B
)ddB C
.ddC D
ControllerNameddD R
(ddR S
)ddS T
;ddT U
routesee 
.ee "
MapAreaControllerRouteee )
(ee) *
nameff 
:ff 
$strff !
,ff! "
areaNamegg 
:gg 
$strgg 1
,gg1 2
patternhh 
:hh 
_adminOptionshh &
.hh& '
AdminUrlPrefixhh' 5
+hh6 7
$strhh8 n
,hhn o
defaultsii 
:ii 
newii 
{ii 

controllerii  *
=ii+ ,"
workflowControllerNameii- C
,iiC D
actioniiE K
=iiL M
nameofiiN T
(iiT U
WorkflowControlleriiU g
.iig h
Indexiih m
)iim n
}iio p
)jj 
;jj 
varll &
workflowTypeControllerNamell *
=ll+ ,
typeofll- 3
(ll3 4"
WorkflowTypeControllerll4 J
)llJ K
.llK L
ControllerNamellL Z
(llZ [
)ll[ \
;ll\ ]
routesmm 
.mm "
MapAreaControllerRoutemm )
(mm) *
namenn 
:nn 
$strnn %
,nn% &
areaNameoo 
:oo 
$stroo 1
,oo1 2
patternpp 
:pp 
_adminOptionspp &
.pp& '
AdminUrlPrefixpp' 5
+pp6 7
$strpp8 Y
,ppY Z
defaultsqq 
:qq 
newqq 
{qq 

controllerqq  *
=qq+ ,&
workflowTypeControllerNameqq- G
,qqG H
actionqqI O
=qqP Q
nameofqqR X
(qqX Y"
WorkflowTypeControllerqqY o
.qqo p
Indexqqp u
)qqu v
}qqw x
)rr 
;rr 
}ss 	
}tt 
[vv 
RequireFeaturesvv 
(vv 
$strvv -
)vv- .
]vv. /
publicww 

classww 
DeploymentStartupww "
:ww# $
StartupBaseww% 0
{xx 
publicyy 
overrideyy 
voidyy 
ConfigureServicesyy .
(yy. /
IServiceCollectionyy/ A
servicesyyB J
)yyJ K
{zz 	
services{{ 
.{{ 
AddTransient{{ !
<{{! "
IDeploymentSource{{" 3
,{{3 4+
AllWorkflowTypeDeploymentSource{{5 T
>{{T U
({{U V
){{V W
;{{W X
services|| 
.|| 
AddSingleton|| !
<||! ""
IDeploymentStepFactory||" 8
>||8 9
(||9 :
new||: =!
DeploymentStepFactory||> S
<||S T)
AllWorkflowTypeDeploymentStep||T q
>||q r
(||r s
)||s t
)||t u
;||u v
services}} 
.}} 
	AddScoped}} 
<}} 
IDisplayDriver}} -
<}}- .
DeploymentStep}}. <
>}}< =
,}}= >/
#AllWorkflowTypeDeploymentStepDriver}}? b
>}}b c
(}}c d
)}}d e
;}}e f
}~~ 	
} 
}€€ ω
‡D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\Startup.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Timers  &
{ 
[ 
Feature 
( 
$str +
)+ ,
], -
public		 

class		 
Startup		 
:		 
StartupBase		 &
{

 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddActivity  
<  !

TimerEvent! +
,+ ,#
TimerEventDisplayDriver- D
>D E
(E F
)F G
;G H
services 
. 
AddSingleton !
<! "
IBackgroundTask" 1
,1 2
TimerBackgroundTask3 F
>F G
(G H
)H I
;I J
} 	
} 
} °
“D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\TimerBackgroundTask.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Timers  &
{		 
[

 
BackgroundTask

 
(

 
Schedule

 
=

 
$str

 *
,

* +
Description

, 7
=

8 9
$str

: Z
)

Z [
]

[ \
public 

class 
TimerBackgroundTask $
:% &
IBackgroundTask' 6
{ 
public 
Task 
DoWorkAsync 
(  
IServiceProvider  0
serviceProvider1 @
,@ A
CancellationTokenB S
cancellationTokenT e
)e f
{ 	
var 
workflowManager 
=  !
serviceProvider" 1
.1 2
GetRequiredService2 D
<D E
IWorkflowManagerE U
>U V
(V W
)W X
;X Y
return 
workflowManager "
." #
TriggerEventAsync# 4
(4 5

TimerEvent5 ?
.? @
	EventName@ I
,I J
nullK O
,O P
nullQ U
,U V
isExclusiveW b
:b c
trued h
,h i
isAlwaysCorrelatedj |
:| }
true	~ ‚
)
‚ ƒ
;
ƒ „
} 	
} 
} ¬+
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\TimerEvent.cs
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
  
Timers

  &
{ 
public 

class 

TimerEvent 
: 
EventActivity +
{ 
public 
static 
string 
	EventName &
=>' )
nameof* 0
(0 1

TimerEvent1 ;
); <
;< =
private 
readonly 
IClock 
_clock  &
;& '
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 

TimerEvent 
( 
IClock  
clock! &
,& '
IStringLocalizer( 8
<8 9

TimerEvent9 C
>C D
	localizerE N
)N O
{ 	
_clock 
= 
clock 
; 
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
	EventName' 0
;0 1
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 F
]F G
;G H
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
string 
CronExpression $
{ 	
get   
=>   
GetProperty   
(   
(    
)    !
=>  " $
$str  % 2
)  2 3
;  3 4
set!! 
=>!! 
SetProperty!! 
(!! 
value!! $
)!!$ %
;!!% &
}"" 	
public$$ 
DateTime$$ 
?$$ 

StartAtUtc$$ #
{%% 	
get&& 
=>&& 
GetProperty&& 
<&& 
DateTime&& '
?&&' (
>&&( )
(&&) *
)&&* +
;&&+ ,
set'' 
=>'' 
SetProperty'' 
('' 
value'' $
)''$ %
;''% &
}(( 	
private** 
DateTime** 
?** 

StartedUtc** $
{++ 	
get,, 
=>,, 
GetProperty,, 
<,, 
DateTime,, '
?,,' (
>,,( )
(,,) *
),,* +
;,,+ ,
set-- 
=>-- 
SetProperty-- 
(-- 
value-- $
)--$ %
;--% &
}.. 	
public00 
override00 
bool00 

CanExecute00 '
(00' ($
WorkflowExecutionContext00( @
workflowContext00A P
,00P Q
ActivityContext00R a
activityContext00b q
)00q r
{11 	
return22 

StartedUtc22 
==22  
null22! %
||22& (
	IsExpired22) 2
(222 3
)223 4
;224 5
}33 	
public55 
override55 
IEnumerable55 #
<55# $
Outcome55$ +
>55+ ,
GetPossibleOutcomes55- @
(55@ A$
WorkflowExecutionContext55A Y
workflowContext55Z i
,55i j
ActivityContext55k z
activityContext	55{ 
)
55 ‹
{66 	
return77 
Outcomes77 
(77 
S77 
[77 
$str77 $
]77$ %
)77% &
;77& '
}88 	
public:: 
override:: #
ActivityExecutionResult:: /
Resume::0 6
(::6 7$
WorkflowExecutionContext::7 O
workflowContext::P _
,::_ `
ActivityContext::a p
activityContext	::q €
)
::€ 
{;; 	
if<< 
(<< 
	IsExpired<< 
(<< 
)<< 
)<< 
{== 
workflowContext>> 
.>>  

LastResult>>  *
=>>+ ,
$str>>- 9
;>>9 :
return?? 
Outcomes?? 
(??  
$str??  &
)??& '
;??' (
}@@ 
returnBB 
HaltBB 
(BB 
)BB 
;BB 
}CC 	
privateEE 
boolEE 
	IsExpiredEE 
(EE 
)EE  
{FF 	
ifGG 
(GG 

StartedUtcGG 
==GG 
nullGG "
)GG" #
{HH 

StartedUtcII 
=II 

StartAtUtcII '
??II( *
_clockII+ 1
.II1 2
UtcNowII2 8
;II8 9
}JJ 
varLL 
scheduleLL 
=LL 
CrontabScheduleLL *
.LL* +
ParseLL+ 0
(LL0 1
CronExpressionLL1 ?
)LL? @
;LL@ A
varMM 
whenUtcMM 
=MM 
scheduleMM "
.MM" #
GetNextOccurrenceMM# 4
(MM4 5

StartedUtcMM5 ?
.MM? @
ValueMM@ E
)MME F
;MMF G
returnOO 
_clockOO 
.OO 
UtcNowOO  
>=OO! #
whenUtcOO$ +
;OO+ ,
}PP 	
}QQ 
}RR ¬
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\TimerEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Timers  &
{ 
public 

class #
TimerEventDisplayDriver (
:) *!
ActivityDisplayDriver+ @
<@ A

TimerEventA K
,K L
TimerEventViewModelM `
>` a
{ 
	protected 
override 
void 
EditActivity  ,
(, -

TimerEvent- 7
source8 >
,> ?
TimerEventViewModel@ S
modelT Y
)Y Z
{ 	
model		 
.		 
CronExpression		  
=		! "
source		# )
.		) *
CronExpression		* 8
;		8 9
}

 	
	protected 
override 
void 
UpdateActivity  .
(. /
TimerEventViewModel/ B
modelC H
,H I

TimerEventJ T
targetU [
)[ \
{ 	
target 
. 
CronExpression !
=" #
model$ )
.) *
CronExpression* 8
.8 9
Trim9 =
(= >
)> ?
;? @
} 	
} 
} γ
“D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\TimerEventViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Timers  &
{ 
public 

class 
TimerEventViewModel $
{ 
[ 	
Required	 
] 
public 
string 
CronExpression $
{% &
get' *
;* +
set, /
;/ 0
}1 2
}		 
}

 θ$
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\Activities\UserTaskEvent.cs
	namespace		 	
OrchardCore		
 
.		 
	Workflows		 
.		  
	UserTasks		  )
.		) *

Activities		* 4
{

 
public 

class 
UserTaskEvent 
:  
EventActivity! .
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
UserTaskEvent 
( 
IStringLocalizer -
<- .
UserTaskEvent. ;
>; <
	localizer= F
)F G
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
UserTaskEvent. ;
); <
;< =
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 J
]J K
;K L
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 ?
]? @
;@ A
public 
IList 
< 
string 
> 
Actions $
{ 	
get 
=> 
GetProperty 
( 
(  
)  !
=>" $
new% (
List) -
<- .
string. 4
>4 5
(5 6
)6 7
)7 8
;8 9
set 
=> 
SetProperty 
( 
value $
)$ %
;% &
} 	
public 
IList 
< 
string 
> 
Roles "
{ 	
get   
=>   
GetProperty   
(   
(    
)    !
=>  " $
new  % (
List  ) -
<  - .
string  . 4
>  4 5
(  5 6
)  6 7
)  7 8
;  8 9
set!! 
=>!! 
SetProperty!! 
(!! 
value!! $
)!!$ %
;!!% &
}"" 	
public$$ 
override$$ 
bool$$ 

CanExecute$$ '
($$' ($
WorkflowExecutionContext$$( @
workflowContext$$A P
,$$P Q
ActivityContext$$R a
activityContext$$b q
)$$q r
{%% 	
var&& 
action&& 
=&& 
GetProvidedAction&& *
(&&* +
workflowContext&&+ :
)&&: ;
;&&; <
return'' 
Actions'' 
.'' 
Contains'' #
(''# $
action''$ *
)''* +
;''+ ,
}(( 	
public** 
override** 
IEnumerable** #
<**# $
Outcome**$ +
>**+ ,
GetPossibleOutcomes**- @
(**@ A$
WorkflowExecutionContext**A Y
workflowContext**Z i
,**i j
ActivityContext**k z
activityContext	**{ 
)
** ‹
{++ 	
return,, 
Actions,, 
.,, 
Select,, !
(,,! "
x,," #
=>,,$ &
Outcome,,' .
(,,. /
S,,/ 0
[,,0 1
x,,1 2
],,2 3
),,3 4
),,4 5
;,,5 6
}-- 	
public// 
override// #
ActivityExecutionResult// /
Resume//0 6
(//6 7$
WorkflowExecutionContext//7 O
workflowContext//P _
,//_ `
ActivityContext//a p
activityContext	//q €
)
//€ 
{00 	
var11 
action11 
=11 
GetProvidedAction11 *
(11* +
workflowContext11+ :
)11: ;
;11; <
return22 
Outcomes22 
(22 
action22 "
)22" #
;22# $
}33 	
private55 
string55 
GetProvidedAction55 (
(55( )$
WorkflowExecutionContext55) A
workflowContext55B Q
)55Q R
{66 	
return77 
(77 
string77 
)77 
workflowContext77 *
.77* +
Input77+ 0
[770 1!
ContentEventConstants771 F
.77F G
UserActionInputKey77G Y
]77Y Z
;77Z [
}88 	
}99 
}:: ―[
¥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\Drivers\UserTaskEventContentDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
	UserTasks  )
.) *
Drivers* 1
{ 
public 

class &
UserTaskEventContentDriver +
:, - 
ContentDisplayDriver. B
{ 
private 
readonly 
IWorkflowStore '
_workflowStore( 6
;6 7
private 
readonly 
IActivityLibrary )
_activityLibrary* :
;: ;
private 
readonly 
IWorkflowManager )
_workflowManager* :
;: ;
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public &
UserTaskEventContentDriver )
() *
IWorkflowStore 
workflowStore (
,( )
IActivityLibrary   
activityLibrary   ,
,  , -
IWorkflowManager!! 
workflowManager!! ,
,!!, -
	INotifier"" 
notifier"" 
,"" 
IHtmlLocalizer## 
<## &
UserTaskEventContentDriver## 5
>##5 6
	localizer##7 @
,##@ A 
IHttpContextAccessor$$  
httpContextAccessor$$! 4
)$$4 5
{%% 	
_workflowStore&& 
=&& 
workflowStore&& *
;&&* +
_activityLibrary'' 
='' 
activityLibrary'' .
;''. /
_workflowManager(( 
=(( 
workflowManager(( .
;((. /
	_notifier)) 
=)) 
notifier))  
;))  ! 
_httpContextAccessor**  
=**! "
httpContextAccessor**# 6
;**6 7
H,, 
=,, 
	localizer,, 
;,, 
}-- 	
public// 
override// 
IDisplayResult// &
Edit//' +
(//+ ,
ContentItem//, 7
contentItem//8 C
)//C D
{00 	
var11 
results11 
=11 
new11 
List11 "
<11" #
IDisplayResult11# 1
>111 2
{22 

Initialize33 
<33 )
UserTaskEventContentViewModel33 8
>338 9
(339 :
$str33: R
,33R S
async33T Y
model33Z _
=>33` b
{33c d
var44 
actions44 
=44  !
await44" '#
GetUserTaskActionsAsync44( ?
(44? @
contentItem44@ K
.44K L
ContentItemId44L Y
)44Y Z
;44Z [
model55 
.55 
Actions55 !
=55" #
actions55$ +
;55+ ,
}66 
)66 
.66 
Location66 
(66 
$str66 (
)66( )
,66) *
}77 
;77 
return99 
Combine99 
(99 
results99 "
.99" #
ToArray99# *
(99* +
)99+ ,
)99, -
;99- .
}:: 	
public<< 
override<< 
async<< 
Task<< "
<<<" #
IDisplayResult<<# 1
><<1 2
UpdateAsync<<3 >
(<<> ?
ContentItem<<? J
model<<K P
,<<P Q
IUpdateModel<<R ^
updater<<_ f
)<<f g
{== 	
var>> 
httpContext>> 
=>>  
_httpContextAccessor>> 2
.>>2 3
HttpContext>>3 >
;>>> ?
var?? 
action?? 
=?? 
(?? 
string??  
)??  !
httpContext??! ,
.??, -
Request??- 4
.??4 5
Form??5 9
[??9 :
$str??: G
]??G H
????I K
httpContext??L W
.??W X
Request??X _
.??_ `
Form??` d
[??d e
$str??e u
]??u v
;??v w
if@@ 
(@@ 
action@@ 
?@@ 
.@@ 

StartsWith@@ "
(@@" #
$str@@# /
,@@/ 0
StringComparison@@1 A
.@@A B
Ordinal@@B I
)@@I J
==@@K M
true@@N R
)@@R S
{AA 
actionBB 
=BB 
actionBB 
.BB  
	SubstringBB  )
(BB) *
$strBB* 6
.BB6 7
LengthBB7 =
)BB= >
;BB> ?
varDD 
availableActionsDD $
=DD% &
awaitDD' ,#
GetUserTaskActionsAsyncDD- D
(DDD E
modelDDE J
.DDJ K
ContentItemIdDDK X
)DDX Y
;DDY Z
ifFF 
(FF 
!FF 
availableActionsFF %
.FF% &
ContainsFF& .
(FF. /
actionFF/ 5
)FF5 6
)FF6 7
{GG 
	_notifierHH 
.HH 
ErrorHH #
(HH# $
HHH$ %
[HH% &
$strHH& H
,HHH I
actionHHJ P
]HHP Q
)HHQ R
;HHR S
}II 
elseJJ 
{KK 
varLL 
contentEventLL $
=LL% &
newLL' *
ContentEventContextLL+ >
(LL> ?
)LL? @
{MM 
NameNN 
=NN 
nameofNN %
(NN% &
UserTaskEventNN& 3
)NN3 4
,NN4 5
ContentTypeOO #
=OO$ %
modelOO& +
.OO+ ,
ContentTypeOO, 7
,OO7 8
ContentItemIdPP %
=PP& '
modelPP( -
.PP- .
ContentItemIdPP. ;
}QQ 
;QQ 
varSS 
inputSS 
=SS 
newSS  #

DictionarySS$ .
<SS. /
stringSS/ 5
,SS5 6
objectSS7 =
>SS= >
{TT 
{UU !
ContentEventConstantsUU /
.UU/ 0
UserActionInputKeyUU0 B
,UUB C
actionUUD J
}UUK L
,UUL M
{VV !
ContentEventConstantsVV /
.VV/ 0
ContentItemInputKeyVV0 C
,VVC D
modelVVE J
}VVK L
,VVL M
{WW !
ContentEventConstantsWW /
.WW/ 0 
ContentEventInputKeyWW0 D
,WWD E
contentEventWWF R
}WWS T
}XX 
;XX 
awaitZZ 
_workflowManagerZZ *
.ZZ* +
TriggerEventAsyncZZ+ <
(ZZ< =
nameofZZ= C
(ZZC D
UserTaskEventZZD Q
)ZZQ R
,ZZR S
inputZZT Y
,ZZY Z
correlationIdZZ[ h
:ZZh i
modelZZj o
.ZZo p
ContentItemIdZZp }
)ZZ} ~
;ZZ~ 
}[[ 
}\\ 
return^^ 
Edit^^ 
(^^ 
model^^ 
)^^ 
;^^ 
}__ 	
privateaa 
asyncaa 
Taskaa 
<aa 
IListaa  
<aa  !
stringaa! '
>aa' (
>aa( )#
GetUserTaskActionsAsyncaa* A
(aaA B
stringaaB H
contentItemIdaaI V
)aaV W
{bb 	
varcc 
	workflowscc 
=cc 
awaitcc !
_workflowStorecc" 0
.cc0 1#
ListByActivityNameAsynccc1 H
(ccH I
nameofccI O
(ccO P
UserTaskEventccP ]
)cc] ^
,cc^ _
contentItemIdcc` m
)ccm n
;ccn o
vardd 
userdd 
=dd  
_httpContextAccessordd +
.dd+ ,
HttpContextdd, 7
.dd7 8
Userdd8 <
;dd< =
varee 
	userRolesee 
=ee 
useree  
.ee  !
Claimsee! '
.ee' (
Whereee( -
(ee- .
xee. /
=>ee0 2
xee3 4
.ee4 5
Typeee5 9
==ee: <

ClaimTypesee= G
.eeG H
RoleeeH L
)eeL M
.eeM N
SelecteeN T
(eeT U
xeeU V
=>eeW Y
xeeZ [
.ee[ \
Valueee\ a
)eea b
.eeb c
ToListeec i
(eei j
)eej k
;eek l
varff 
actionsQueryff 
=ff 
fromgg 
workflowgg 
ingg  
	workflowsgg! *
lethh 
workflowStatehh !
=hh" #
workflowhh$ ,
.hh, -
Statehh- 2
.hh2 3
ToObjecthh3 ;
<hh; <
WorkflowStatehh< I
>hhI J
(hhJ K
)hhK L
fromii 
blockingActivityii %
inii& (
workflowii) 1
.ii1 2
BlockingActivitiesii2 D
wherejj 
blockingActivityjj &
.jj& '
Namejj' +
==jj, .
nameofjj/ 5
(jj5 6
UserTaskEventjj6 C
)jjC D
fromkk 
actionkk 
inkk 
GetUserTaskActionskk 1
(kk1 2
workflowStatekk2 ?
,kk? @
blockingActivitykkA Q
.kkQ R

ActivityIdkkR \
,kk\ ]
	userRoleskk^ g
)kkg h
selectll 
actionll 
;ll 
returnnn 
actionsQuerynn 
.nn  
Distinctnn  (
(nn( )
)nn) *
.nn* +
ToListnn+ 1
(nn1 2
)nn2 3
;nn3 4
}oo 	
privateqq 
IEnumerableqq 
<qq 
stringqq "
>qq" #
GetUserTaskActionsqq$ 6
(qq6 7
WorkflowStateqq7 D
workflowStateqqE R
,qqR S
stringqqT Z

activityIdqq[ e
,qqe f
IEnumerableqqg r
<qqr s
stringqqs y
>qqy z
	userRoles	qq{ „
)
qq„ …
{rr 	
ifss 
(ss 
workflowStatess 
.ss 
ActivityStatesss ,
.ss, -
TryGetValuess- 8
(ss8 9

activityIdss9 C
,ssC D
outssE H
varssI L
activityStatessM Z
)ssZ [
)ss[ \
{tt 
varuu 
activityuu 
=uu 
_activityLibraryuu /
.uu/ 0
InstantiateActivityuu0 C
<uuC D
UserTaskEventuuD Q
>uuQ R
(uuR S
nameofuuS Y
(uuY Z
UserTaskEventuuZ g
)uug h
,uuh i
activityStateuuj w
)uuw x
;uux y
ifww 
(ww 
activityww 
.ww 
Rolesww "
.ww" #
Anyww# &
(ww& '
)ww' (
&&ww) +
!ww, -
	userRolesww- 6
.ww6 7
Anyww7 :
(ww: ;
xww; <
=>ww= ?
activityww@ H
.wwH I
RoleswwI N
.wwN O
ContainswwO W
(wwW X
xwwX Y
)wwY Z
)wwZ [
)ww[ \
yieldxx 
breakxx 
;xx  
foreachzz 
(zz 
varzz 
actionzz #
inzz$ &
activityzz' /
.zz/ 0
Actionszz0 7
)zz7 8
{{{ 
yield|| 
return||  
action||! '
;||' (
}}} 
}~~ 
} 	
}
€€ 
} Ν
¥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\Drivers\UserTaskEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
	UserTasks  )
.) *
Drivers* 1
{ 
public		 

class		 &
UserTaskEventDisplayDriver		 +
:		, -!
ActivityDisplayDriver		. C
<		C D
UserTaskEvent		D Q
,		Q R"
UserTaskEventViewModel		S i
>		i j
{

 
	protected 
override 
void 
EditActivity  ,
(, -
UserTaskEvent- :
activity; C
,C D"
UserTaskEventViewModelE [
model\ a
)a b
{ 	
model 
. 
Actions 
= 
string "
." #
Join# '
(' (
$str( ,
,, -
activity. 6
.6 7
Actions7 >
)> ?
;? @
model 
. 
Roles 
= 
activity "
." #
Roles# (
;( )
} 	
	protected 
override 
void 
UpdateActivity  .
(. /"
UserTaskEventViewModel/ E
modelF K
,K L
UserTaskEventM Z
activity[ c
)c d
{ 	
activity 
. 
Actions 
= 
model $
.$ %
Actions% ,
., -
Split- 2
(2 3
$char3 6
,6 7
StringSplitOptions8 J
.J K
RemoveEmptyEntriesK ]
)] ^
.^ _
Select_ e
(e f
xf g
=>h j
xk l
.l m
Trimm q
(q r
)r s
)s t
.t u
ToListu {
({ |
)| }
;} ~
activity 
. 
Roles 
= 
model "
." #
Roles# (
;( )
} 	
} 
} Ω	
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\Startup.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
	UserTasks  )
{		 
[

 
RequireFeatures

 
(

 
$str

 ,
,

, -
$str

. D
,

D E
$str

F Y
)

Y Z
]

Z [
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< !
IContentDisplayDriver 4
,4 5&
UserTaskEventContentDriver6 P
>P Q
(Q R
)R S
;S T
services 
. 
AddActivity  
<  !
UserTaskEvent! .
,. /&
UserTaskEventDisplayDriver0 J
>J K
(K L
)L M
;M N
} 	
} 
} ¥
«D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\ViewModels\UserTaskEventContentViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
	UserTasks  )
.) *

ViewModels* 4
{ 
public 

class )
UserTaskEventContentViewModel .
{ 
public 
IList 
< 
string 
> 
Actions $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
}		 Α
¤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\ViewModels\UserTaskEventViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
	UserTasks  )
.) *

ViewModels* 4
{ 
public 

class "
UserTaskEventViewModel '
{ 
public 
string 
Actions 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IList 
< 
string 
> 
Roles "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
List7 ;
<; <
string< B
>B C
(C D
)D E
;E F
}		 
}

 ώ
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewComponents\SelectWorkflowTypeViewComponent.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
ViewComponents  .
{ 
public 

class +
SelectWorkflowTypeViewComponent 0
:1 2
ViewComponent3 @
{		 
private

 
readonly

 
IWorkflowTypeStore

 +%
_contentDefinitionManager

, E
;

E F
public +
SelectWorkflowTypeViewComponent .
(. /
IWorkflowTypeStore/ A$
contentDefinitionManagerB Z
)Z [
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
async 
Task 
<  
IViewComponentResult .
>. /
InvokeAsync0 ;
(; <
string< B"
selectedWorkflowTypeIdC Y
,Y Z
string[ a
htmlNameb j
)j k
{ 	
var 

selections 
= 
await "!
WorkflowTypeSelection# 8
.8 9

BuildAsync9 C
(C D%
_contentDefinitionManagerD ]
,] ^"
selectedWorkflowTypeId_ u
)u v
;v w
var 
model 
= 
new '
SelectWorkflowTypeViewModel 7
{ 
HtmlName 
= 
htmlName #
,# $"
WorkflowTypeSelections &
=' (

selections) 3
} 
; 
return 
View 
( 
model 
) 
; 
} 	
} 
} µ	
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ActivityEditViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class !
ActivityEditViewModel &
{ 
public 
dynamic 
ActivityEditor %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
	IActivity 
Activity !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 

ActivityId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
int

 
WorkflowTypeId

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Έ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ActivityViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
ActivityViewModel "
{ 
public

 
string

 
ClientId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
IDictionary 
< 
string !
,! "
string# )
>) *
State+ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} 
} «
ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\CommitTransactionTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class *
CommitTransactionTaskViewModel /
{ 
} 
} 
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ConnectionViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
ConnectionViewModel $
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
SourceClientId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Outcome 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
DestinationClientId		 )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
}

 
} ΄
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\CorrelateTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class "
CorrelateTaskViewModel '
{ 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Β
΅D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\EditActivityMetadataViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class )
ActivityMetadataEditViewModel .
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Λ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ForEachTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class  
ForEachTaskViewModel %
{ 
[ 	
Required	 
] 
public 
string  
EnumerableExpression *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
[

 	
Required

	 
]

 
public 
string 
LoopVariableName &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ª
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ForkTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
ForkTaskViewModel "
{ 
public 
string 
Forks 
{ 
get !
;! "
set# &
;& '
}( )
} 
} 
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ForLoopTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class  
ForLoopTaskViewModel %
{ 
public 
string 
FromExpression $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
ToExpression "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
StepExpression $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
LoopVariableName &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
}		 
}

 Ό
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\IfElseTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
IfElseTaskViewModel $
{ 
public 
string 
ConditionExpression )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} Π
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\JoinTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
JoinTaskViewModel "
{ 
public 
JoinTask 
. 
JoinMode  
Mode! %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
}		 ω
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\LogTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
LogTaskViewModel !
{ 
public 
LogLevel 
LogLevel  
{! "
get# &
;& '
set( +
;+ ,
}- .
[

 	
Required

	 
]

 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
} 
} 
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\NotifyTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
NotifyTaskViewModel $
{ 
public 

NotifyType 
NotificationType *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
[

 	
Required

	 
]

 
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ό
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ScriptTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
ScriptTaskViewModel $
{ 
[ 	
Required	 
] 
public 
string 
AvailableOutcomes '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[

 	
Required

	 
]

 
public 
string 
Script 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Χ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\SelectWorkflowTypeViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public		 

class		 '
SelectWorkflowTypeViewModel		 ,
{

 
public 
string 
HtmlName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
IList 
< !
WorkflowTypeSelection *
>* +"
WorkflowTypeSelections, B
{C D
getE H
;H I
setJ M
;M N
}O P
} 
public 

class !
WorkflowTypeSelection &
{ 
public 
bool 

IsSelected 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
WorkflowType 
WorkflowType (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
static 
async 
Task  
<  !
IList! &
<& '!
WorkflowTypeSelection' <
>< =
>= >

BuildAsync? I
(I J
IWorkflowTypeStoreJ \
workflowTypeStore] n
,n o
stringp v#
selectedWorkflowTypeId	w 
)
 
{ 	
var 
workflowTypes 
= 
await  %
workflowTypeStore& 7
.7 8
	ListAsync8 A
(A B
)B C
;C D
var 

selections 
= 
workflowTypes *
. 
Select 
( 
x 
=> 
new  !
WorkflowTypeSelection! 6
{ 

IsSelected 
=  
x! "
." #
WorkflowTypeId# 1
==2 4"
selectedWorkflowTypeId5 K
,K L
WorkflowType  
=! "
x# $
} 
) 
. 
OrderBy 
( 
x 
=> 
x 
.  
WorkflowType  ,
., -
Name- 1
)1 2
. 
ToList 
( 
) 
; 
return   

selections   
;   
}!! 	
}"" 
}## †
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\SetOutputTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class "
SetOutputTaskViewModel '
{ 
[ 	
Required	 
] 
public 
string 

OutputName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public

 
string

 
Value

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} 
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\SetPropertyTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class $
SetPropertyTaskViewModel )
{ 
[ 	
Required	 
] 
public 
string 
PropertyName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public

 
string

 
Value

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} σ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\SignalEventViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class  
SignalEventViewModel %
{ 
[ 	
Required	 
] 
public 
string  
SignalNameExpression *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
}		 
}

 φ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WhileLoopTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class "
WhileLoopTaskViewModel '
{ 
[ 	
Required	 
] 
public 
string 
ConditionExpression )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
}		 
}

 σ 
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class "
WorkflowIndexViewModel '
{		 
public

 "
WorkflowIndexViewModel

 %
(

% &
)

& '
{ 	
Options 
= 
new  
WorkflowIndexOptions .
(. /
)/ 0
;0 1
} 	
public 
WorkflowType 
WorkflowType (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
IList 
< 
WorkflowEntry "
>" #
	Workflows$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public  
WorkflowIndexOptions #
Options$ +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class  
WorkflowIndexOptions %
{ 
public  
WorkflowIndexOptions #
(# $
)$ %
{ 	
Filter 
= 
WorkflowFilter #
.# $
All$ '
;' (
} 	
public 
WorkflowBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
WorkflowFilter 
Filter $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
WorkflowOrder   
OrderBy   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
["" 	
	BindNever""	 
]"" 
public## 
List## 
<## 
SelectListItem## "
>##" #
WorkflowsSorts##$ 2
{##3 4
get##5 8
;##8 9
set##: =
;##= >
}##? @
[%% 	
	BindNever%%	 
]%% 
public&& 
List&& 
<&& 
SelectListItem&& "
>&&" #
WorkflowsStatuses&&$ 5
{&&6 7
get&&8 ;
;&&; <
set&&= @
;&&@ A
}&&B C
[(( 	
	BindNever((	 
](( 
public)) 
List)) 
<)) 
SelectListItem)) "
>))" #
WorkflowsBulkAction))$ 7
{))8 9
get)): =
;))= >
set))? B
;))B C
}))D E
}** 
public,, 

class,, 
WorkflowEntry,, 
{-- 
public.. 
Workflow.. 
Workflow..  
{..! "
get..# &
;..& '
set..( +
;..+ ,
}..- .
public// 
int// 
Id// 
{// 
get// 
;// 
set//  
;//  !
}//" #
public00 
bool00 
	IsChecked00 
{00 
get00  #
;00# $
set00% (
;00( )
}00* +
}11 
public33 

enum33 
WorkflowFilter33 
{44 
All55 
,55 
Finished66 
,66 
Faulted77 
}88 
public:: 

enum:: 
WorkflowOrder:: 
{;; 
CreatedDesc<< 
,<< 
Created== 
}>> 
public@@ 

enum@@ 
WorkflowBulkAction@@ "
{AA 
NoneBB 
,BB 
DeleteCC 
}DD 
}EE φ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowTypeIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class &
WorkflowTypeIndexViewModel +
{		 
public

 
IList

 
<

 
WorkflowTypeEntry

 &
>

& '
WorkflowTypes

( 5
{

6 7
get

8 ;
;

; <
set

= @
;

@ A
}

B C
public $
WorkflowTypeIndexOptions '
Options( /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
WorkflowTypeEntry "
{ 
public 
WorkflowType 
WorkflowType (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
WorkflowCount  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
public 

class $
WorkflowTypeIndexOptions )
{ 
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
public "
WorkflowTypeBulkAction %

BulkAction& 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
WorkflowTypeOrder  
Order! &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
WorkflowTypeFilter !
Filter" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
	BindNever	 
] 
public   
List   
<   
SelectListItem   "
>  " ##
WorkflowTypesBulkAction  $ ;
{  < =
get  > A
;  A B
set  C F
;  F G
}  H I
}!! 
public## 

enum## 
WorkflowTypeOrder## !
{$$ 
Name%% 
,%% 
Creation&& 
}'' 
public)) 

enum)) 
WorkflowTypeFilter)) "
{** 
All++ 
},, 
public.. 

enum.. "
WorkflowTypeBulkAction.. &
{// 
None00 
,00 
Delete11 
}22 
}33 
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowTypePropertiesViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class +
WorkflowTypePropertiesViewModel 0
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
Required			 
]		 
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
bool 
	IsEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
IsSingleton 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool #
DeleteFinishedWorkflows +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Ι
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowTypeUpdateModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class #
WorkflowTypeUpdateModel (
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
} 
} μ
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowTypeViewModel.cs
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
class !
WorkflowTypeViewModel &
{ 
public		 
WorkflowType		 
WorkflowType		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
IList

 
<

 
dynamic

 
>

 #
ActivityThumbnailShapes

 5
{

6 7
get

8 ;
;

; <
set

= @
;

@ A
}

B C
public 
IList 
< 
dynamic 
>  
ActivityDesignShapes 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
IList 
< 
LocalizedString $
>$ %
ActivityCategories& 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
string 
WorkflowTypeJson &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
LocalId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
LoadLocalState "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
WorkflowCount  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} σ	
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowViewModel.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  

ViewModels  *
{ 
public 

class 
WorkflowViewModel "
{ 
public 
Workflow 
Workflow  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
WorkflowType		 
WorkflowType		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
IList

 
<

 
dynamic

 
>

  
ActivityDesignShapes

 2
{

3 4
get

5 8
;

8 9
set

: =
;

= >
}

? @
public 
string 
WorkflowTypeJson &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
WorkflowJson "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} 