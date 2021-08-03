�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\CommitTransactionTask.cs
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
activityContext	{ �
)
� �
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
ActivityContext	  s �
activityContext
  � �
)
  � �
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
}&& �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\CorrelateTask.cs
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
activityContext	!!{ �
)
!!� �
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
ActivityContext	&&s �
activityContext
&&� �
)
&&� �
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
}.. �-
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\ForEachTask.cs
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
activityContext	??{ �
)
??� �
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
ActivityContext	DDs �
activityContext
DD� �
)
DD� �
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
}ZZ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\ForkTask.cs
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
activityContext	{ �
)
� �
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
activityContext	##r �
)
##� �
{$$ 	
return%% 
Outcomes%% 
(%% 
Forks%% !
)%%! "
;%%" #
}&& 	
}'' 
}(( �<
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\ForLoopTask.cs
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
activityContext	HH{ �
)
HH� �
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
ActivityContext	MMs �
activityContext
MM� �
)
MM� �
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
}qq �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\IfElseTask.cs
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
activityContext	##{ �
)
##� �
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
ActivityContext	((s �
activityContext
((� �
)
((� �
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
}.. �L
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\JoinTask.cs
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
activityContext	++{ �
)
++� �
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
activityContext	00r �
)
00� �
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

ActivityId	AAx �
)
AA� �
.
AA� �
ToList
AA� �
(
AA� �
)
AA� �
;
AA� �
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
Contains	BB| �
(
BB� �
x
BB� �
.
BB� �

ActivityId
BB� �
)
BB� �
)
BB� �
.
BB� �
ToList
BB� �
(
BB� �
)
BB� �
;
BB� �
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
}ss �$
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\LogTask.cs
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
	localizer	| �
)
� �
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
activityContext	)){ �
)
))� �
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
ActivityContext	..s �
activityContext
..� �
)
..� �
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
}77 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\MissingActivity.cs
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
missingActivityRecord	| �
)
� �
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
activityContext	  { �
)
  � �
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
activityContext	%%r �
)
%%� �
{&& 	
_logger'' 
.'' 

LogWarning'' 
('' 
$str	'' �
,
''� �#
MissingActivityRecord
''� �
.
''� �
Name
''� �
,
''� �
workflowContext
''� �
.
''� �
WorkflowType
''� �
.
''� �
Id
''� �
)
''� �
;
''� �
return(( 
Noop(( 
((( 
)(( 
;(( 
})) 	
}** 
}++ �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\NotifyTask.cs
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
activityContext	22{ �
)
22� �
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
ActivityContext	77s �
activityContext
77� �
)
77� �
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
}?? �#
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\ScriptTask.cs
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
activityContext	,,{ �
)
,,� �
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
ActivityContext	11s �
activityContext
11� �
)
11� �
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
OutcomeMethodProvider	44k �
(
44� �
outcomes
44� �
)
44� �
)
44� �
;
44� �
return66 
Outcomes66 
(66 
outcomes66 $
)66$ %
;66% &
}77 	
}88 
}99 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\SetOutputTask.cs
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
activityContext	''{ �
)
''� �
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
ActivityContext	,,s �
activityContext
,,� �
)
,,� �
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
}44 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\SetPropertyTask.cs
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
activityContext	''{ �
)
''� �
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
ActivityContext	,,s �
activityContext
,,� �
)
,,� �
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
}44 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Activities\WhileLoopTask.cs
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
activityContext	$${ �
)
$$� �
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
ActivityContext	))s �
activityContext
))� �
)
))� �
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
}// �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\AdminMenu.cs
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
}   ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Controllers\ActivityController.cs
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
isNew	==} �
:
==� �
true
==� �
)
==� �
;
==� �
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
isNew	]]~ �
:
]]� �
true
]]� �
)
]]� �
;
]]� �
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
$str	rry �
,
rr� �
new
rr� �
{
rr� �
id
rr� �
=
rr� �
model
rr� �
.
rr� �
WorkflowTypeId
rr� �
}
rr� �
)
rr� �
;
rr� �
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

Properties	~~| �
)
~~� �
;
~~� �
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
ModelUpdater	 �
,
� �
isNew
� �
:
� �
false
� �
)
� �
;
� �
activityEditor
�� 
.
�� 
Metadata
�� #
.
��# $
Type
��$ (
=
��) *
$str
��+ :
;
��: ;
var
�� 
	viewModel
�� 
=
�� 
new
�� #
ActivityEditViewModel
��  5
{
�� 
Activity
�� 
=
�� 
activityContext
�� *
.
��* +
Activity
��+ 3
,
��3 4

ActivityId
�� 
=
�� 

activityId
�� '
,
��' (
ActivityEditor
�� 
=
��  
activityEditor
��! /
,
��/ 0
WorkflowTypeId
�� 
=
��  
workflowTypeId
��! /
,
��/ 0
	ReturnUrl
�� 
=
�� 
	returnUrl
�� %
}
�� 
;
�� 
return
�� 
View
�� 
(
�� 
$str
�� &
,
��& '
	viewModel
��( 1
)
��1 2
;
��2 3
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Edit
��) -
(
��- .#
ActivityEditViewModel
��. C
model
��D I
)
��I J
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
workflowType
�� 
=
�� 
await
�� $
_session
��% -
.
��- .
GetAsync
��. 6
<
��6 7
WorkflowType
��7 C
>
��C D
(
��D E
model
��E J
.
��J K
WorkflowTypeId
��K Y
)
��Y Z
;
��Z [
var
�� 
activityRecord
�� 
=
��  
workflowType
��! -
.
��- .

Activities
��. 8
.
��8 9
Single
��9 ?
(
��? @
x
��@ A
=>
��B D
x
��E F
.
��F G

ActivityId
��G Q
==
��R T
model
��U Z
.
��Z [

ActivityId
��[ e
)
��e f
;
��f g
var
�� 
activityContext
�� 
=
��  !
await
��" '
_workflowManager
��( 8
.
��8 91
#CreateActivityExecutionContextAsync
��9 \
(
��\ ]
activityRecord
��] k
,
��k l
activityRecord
��m {
.
��{ |

Properties��| �
)��� �
;��� �
var
�� 
activityEditor
�� 
=
��  
await
��! &%
_activityDisplayManager
��' >
.
��> ?
UpdateEditorAsync
��? P
(
��P Q
activityContext
��Q `
.
��` a
Activity
��a i
,
��i j"
_updateModelAccessor
��k 
.�� �
ModelUpdater��� �
,��� �
isNew��� �
:��� �
false��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
activityEditor
�� 
.
�� 
Metadata
�� '
.
��' (
Type
��( ,
=
��- .
$str
��/ >
;
��> ?
model
�� 
.
�� 
Activity
�� 
=
��  
activityContext
��! 0
.
��0 1
Activity
��1 9
;
��9 :
model
�� 
.
�� 
ActivityEditor
�� $
=
��% &
activityEditor
��' 5
;
��5 6
return
�� 
View
�� 
(
�� 
$str
�� *
,
��* +
model
��, 1
)
��1 2
;
��2 3
}
�� 
activityRecord
�� 
.
�� 

Properties
�� %
=
��& '
activityContext
��( 7
.
��7 8
Activity
��8 @
.
��@ A

Properties
��A K
;
��K L
_session
�� 
.
�� 
Save
�� 
(
�� 
workflowType
�� &
)
��& '
;
��' (
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  @
]
��@ A
)
��A B
;
��B C
return
�� 
Url
�� 
.
�� 

IsLocalUrl
�� !
(
��! "
model
��" '
.
��' (
	ReturnUrl
��( 1
)
��1 2
?
�� 
(
�� 
IActionResult
��  
)
��  !
Redirect
��! )
(
��) *
model
��* /
.
��/ 0
	ReturnUrl
��0 9
)
��9 :
:
�� 
RedirectToAction
�� "
(
��" #
$str
��# )
,
��) *
$str
��+ 9
,
��9 :
new
��; >
{
��? @
id
��A C
=
��D E
model
��F K
.
��K L
WorkflowTypeId
��L Z
}
��[ \
)
��\ ]
;
��] ^
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Controllers\WorkflowController.cs
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
pagerParameters	KKq �
,
KK� �
string
KK� �
	returnUrl
KK� �
=
KK� �
null
KK� �
)
KK� �
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
�� 
WorkflowType
�� 
=
�� 
workflowType
�� +
,
��+ ,
	Workflows
�� 
=
�� 
pageOfItems
�� '
.
��' (
Select
��( .
(
��. /
x
��/ 0
=>
��1 3
new
��4 7
WorkflowEntry
��8 E
{
�� 
Workflow
�� 
=
�� 
x
��  
,
��  !
Id
�� 
=
�� 
x
�� 
.
�� 
Id
�� 
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
,
�� 
Options
�� 
=
�� 
model
�� 
.
��  
Options
��  '
,
��' (
Pager
�� 
=
�� 

pagerShape
�� "
,
��" #
	ReturnUrl
�� 
=
�� 
	returnUrl
�� %
}
�� 
;
�� 
model
�� 
.
�� 
Options
�� 
.
�� 
WorkflowsSorts
�� (
=
��) *
new
��+ .
List
��/ 3
<
��3 4
SelectListItem
��4 B
>
��B C
(
��C D
)
��D E
{
��F G
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 B
]
��B C
,
��C D
Value
��E J
=
��K L
nameof
��M S
(
��S T
WorkflowOrder
��T a
.
��a b
CreatedDesc
��b m
)
��m n
}
��o p
,
��p q
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 H
]
��H I
,
��I J
Value
��K P
=
��Q R
nameof
��S Y
(
��Y Z
WorkflowOrder
��Z g
.
��g h
Created
��h o
)
��o p
}
��q r
}
�� 
;
�� 
model
�� 
.
�� 
Options
�� 
.
�� 
WorkflowsStatuses
�� +
=
��, -
new
��. 1
List
��2 6
<
��6 7
SelectListItem
��7 E
>
��E F
(
��F G
)
��G H
{
��I J
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 5
]
��5 6
,
��6 7
Value
��8 =
=
��> ?
nameof
��@ F
(
��F G
WorkflowFilter
��G U
.
��U V
All
��V Y
)
��Y Z
}
��[ \
,
��\ ]
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 9
]
��9 :
,
��: ;
Value
��< A
=
��B C
nameof
��D J
(
��J K
WorkflowFilter
��K Y
.
��Y Z
Faulted
��Z a
)
��a b
}
��c d
,
��d e
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 :
]
��: ;
,
��; <
Value
��= B
=
��C D
nameof
��E K
(
��K L
WorkflowFilter
��L Z
.
��Z [
Finished
��[ c
)
��c d
}
��e f
}
�� 
;
�� 
	viewModel
�� 
.
�� 
Options
�� 
.
�� !
WorkflowsBulkAction
�� 1
=
��2 3
new
��4 7
List
��8 <
<
��< =
SelectListItem
��= K
>
��K L
(
��L M
)
��M N
{
��O P
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 8
]
��8 9
,
��9 :
Value
��; @
=
��A B
nameof
��C I
(
��I J 
WorkflowBulkAction
��J \
.
��\ ]
Delete
��] c
)
��c d
}
��e f
}
�� 
;
�� 
return
�� 
View
�� 
(
�� 
	viewModel
�� !
)
��! "
;
��" #
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
FormValueRequired
��	 
(
�� 
$str
�� *
)
��* +
]
��+ ,
public
�� 
ActionResult
�� 
IndexFilterPOST
�� +
(
��+ ,$
WorkflowIndexViewModel
��, B
model
��C H
)
��H I
{
�� 	
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0"
RouteValueDictionary
��1 E
{
��F G
{
�� 
$str
�� "
,
��" #
model
��$ )
.
��) *
Options
��* 1
.
��1 2
Filter
��2 8
}
��9 :
,
��: ;
{
�� 
$str
�� #
,
��# $
model
��% *
.
��* +
Options
��+ 2
.
��2 3
OrderBy
��3 :
}
��; <
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Details
��) 0
(
��0 1
int
��1 4
id
��5 7
)
��7 8
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
workflow
�� 
=
�� 
await
��  
_workflowStore
��! /
.
��/ 0
GetAsync
��0 8
(
��8 9
id
��9 ;
)
��; <
;
��< =
if
�� 
(
�� 
workflow
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
var
�� 
workflowType
�� 
=
�� 
await
�� $ 
_workflowTypeStore
��% 7
.
��7 8
GetAsync
��8 @
(
��@ A
workflow
��A I
.
��I J
WorkflowTypeId
��J X
)
��X Y
;
��Y Z
var
��  
blockingActivities
�� "
=
��# $
workflow
��% -
.
��- . 
BlockingActivities
��. @
.
��@ A
ToDictionary
��A M
(
��M N
x
��N O
=>
��P R
x
��S T
.
��T U

ActivityId
��U _
)
��_ `
;
��` a
var
�� 
workflowContext
�� 
=
��  !
await
��" '
_workflowManager
��( 8
.
��8 91
#CreateWorkflowExecutionContextAsync
��9 \
(
��\ ]
workflowType
��] i
,
��i j
workflow
��k s
)
��s t
;
��t u
var
�� 
activityContexts
��  
=
��! "
await
��# (
Task
��) -
.
��- .
WhenAll
��. 5
(
��5 6
workflowType
��6 B
.
��B C

Activities
��C M
.
��M N
Select
��N T
(
��T U
x
��U V
=>
��W Y
_workflowManager
��Z j
.
��j k2
#CreateActivityExecutionContextAsync��k �
(��� �
x��� �
,��� �
x��� �
.��� �

Properties��� �
)��� �
)��� �
)��� �
;��� �
var
�� "
activityDesignShapes
�� $
=
��% &
new
��' *
List
��+ /
<
��/ 0
dynamic
��0 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
foreach
�� 
(
�� 
var
�� 
activityContext
�� (
in
��) +
activityContexts
��, <
)
��< =
{
�� "
activityDesignShapes
�� $
.
��$ %
Add
��% (
(
��( )
await
��) .'
BuildActivityDisplayAsync
��/ H
(
��H I
activityContext
��I X
,
��X Y
workflowType
��Z f
.
��f g
Id
��g i
,
��i j 
blockingActivities
��k }
.
��} ~
ContainsKey��~ �
(��� �
activityContext��� �
.��� �
ActivityRecord��� �
.��� �

ActivityId��� �
)��� �
,��� �
$str��� �
)��� �
)��� �
;��� �
}
�� 
var
�� !
activitiesDataQuery
�� #
=
��$ %
activityContexts
��& 6
.
��6 7
Select
��7 =
(
��= >
x
��> ?
=>
��@ B
new
��C F
{
�� 
Id
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� %
.
��% &

ActivityId
��& 0
,
��0 1
X
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� $
.
��$ %
X
��% &
,
��& '
Y
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� $
.
��$ %
Y
��% &
,
��& '
Name
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� '
.
��' (
Name
��( ,
,
��, -
IsStart
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� *
.
��* +
IsStart
��+ 2
,
��2 3
IsEvent
�� 
=
�� 
x
�� 
.
�� 
Activity
�� $
.
��$ %
IsEvent
��% ,
(
��, -
)
��- .
,
��. /

IsBlocking
�� 
=
�� 
workflow
�� %
.
��% & 
BlockingActivities
��& 8
.
��8 9
Any
��9 <
(
��< =
a
��= >
=>
��? A
a
��B C
.
��C D

ActivityId
��D N
==
��O Q
x
��R S
.
��S T
ActivityRecord
��T b
.
��b c

ActivityId
��c m
)
��m n
,
��n o
Outcomes
�� 
=
�� 
x
�� 
.
�� 
Activity
�� %
.
��% &!
GetPossibleOutcomes
��& 9
(
��9 :
workflowContext
��: I
,
��I J
x
��K L
)
��L M
.
��M N
ToArray
��N U
(
��U V
)
��V W
}
�� 
)
�� 
;
�� 
var
�� 
workflowTypeData
��  
=
��! "
new
��# &
{
�� 
Id
�� 
=
�� 
workflowType
�� !
.
��! "
Id
��" $
,
��$ %
Name
�� 
=
�� 
workflowType
�� #
.
��# $
Name
��$ (
,
��( )
	IsEnabled
�� 
=
�� 
workflowType
�� (
.
��( )
	IsEnabled
��) 2
,
��2 3

Activities
�� 
=
�� !
activitiesDataQuery
�� 0
.
��0 1
ToArray
��1 8
(
��8 9
)
��9 :
,
��: ;
Transitions
�� 
=
�� 
workflowType
�� *
.
��* +
Transitions
��+ 6
}
�� 
;
�� 
var
�� $
jsonSerializerSettings
�� &
=
��' (
new
��) ,$
JsonSerializerSettings
��- C
{
��D E
ContractResolver
��F V
=
��W X
new
��Y \5
&CamelCasePropertyNamesContractResolver��] �
(��� �
)��� �
}��� �
;��� �
var
�� 
	viewModel
�� 
=
�� 
new
�� 
WorkflowViewModel
��  1
{
�� 
Workflow
�� 
=
�� 
workflow
�� #
,
��# $
WorkflowType
�� 
=
�� 
workflowType
�� +
,
��+ ,
WorkflowTypeJson
��  
=
��! "
JsonConvert
��# .
.
��. /
SerializeObject
��/ >
(
��> ?
workflowTypeData
��? O
,
��O P

Formatting
��Q [
.
��[ \
None
��\ `
,
��` a$
jsonSerializerSettings
��b x
)
��x y
,
��y z
WorkflowJson
�� 
=
�� 
JsonConvert
�� *
.
��* +
SerializeObject
��+ :
(
��: ;
workflow
��; C
,
��C D

Formatting
��E O
.
��O P
Indented
��P X
,
��X Y$
jsonSerializerSettings
��Z p
)
��p q
,
��q r"
ActivityDesignShapes
�� $
=
��% &"
activityDesignShapes
��' ;
}
�� 
;
�� 
return
�� 
View
�� 
(
�� 
	viewModel
�� !
)
��! "
;
��" #
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Delete
��) /
(
��/ 0
int
��0 3
id
��4 6
)
��6 7
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
workflow
�� 
=
�� 
await
��  
_workflowStore
��! /
.
��/ 0
GetAsync
��0 8
(
��8 9
id
��9 ;
)
��; <
;
��< =
if
�� 
(
�� 
workflow
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
var
�� 
workflowType
�� 
=
�� 
await
�� $ 
_workflowTypeStore
��% 7
.
��7 8
GetAsync
��8 @
(
��@ A
workflow
��A I
.
��I J
WorkflowTypeId
��J X
)
��X Y
;
��Y Z
await
�� 
_workflowStore
��  
.
��  !
DeleteAsync
��! ,
(
��, -
workflow
��- 5
)
��5 6
;
��6 7
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  @
,
��@ A
id
��B D
]
��D E
)
��E F
;
��F G
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0
{
��1 2
workflowTypeId
��3 A
=
��B C
workflowType
��D P
.
��P Q
Id
��Q S
}
��T U
)
��U V
;
��V W
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	

ActionName
��	 
(
�� 
nameof
�� 
(
�� 
Index
��  
)
��  !
)
��! "
]
��" #
[
�� 	
FormValueRequired
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
BulkEdit
��) 1
(
��1 2
int
��2 5
workflowTypeId
��6 D
,
��D E"
WorkflowIndexOptions
��F Z
options
��[ b
,
��b c
PagerParameters
��d s
pagerParameters��t �
,��� �
IEnumerable��� �
<��� �
int��� �
>��� �
itemIds��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
itemIds
�� 
?
�� 
.
�� 
Count
�� 
(
�� 
)
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
var
�� 
checkedEntries
�� "
=
��# $
await
��% *
_session
��+ 3
.
��3 4
Query
��4 9
<
��9 :
Workflow
��: B
,
��B C
WorkflowIndex
��D Q
>
��Q R
(
��R S
)
��S T
.
��T U
Where
��U Z
(
��Z [
x
��[ \
=>
��] _
x
��` a
.
��a b

DocumentId
��b l
.
��l m
IsIn
��m q
(
��q r
itemIds
��r y
)
��y z
)
��z {
.
��{ |
	ListAsync��| �
(��� �
)��� �
;��� �
switch
�� 
(
�� 
options
�� 
.
��  

BulkAction
��  *
)
��* +
{
�� 
case
��  
WorkflowBulkAction
�� +
.
��+ ,
None
��, 0
:
��0 1
break
�� 
;
�� 
case
��  
WorkflowBulkAction
�� +
.
��+ ,
Delete
��, 2
:
��2 3
foreach
�� 
(
��  !
var
��! $
entry
��% *
in
��+ -
checkedEntries
��. <
)
��< =
{
�� 
var
�� 
workflow
��  (
=
��) *
await
��+ 0
_workflowStore
��1 ?
.
��? @
GetAsync
��@ H
(
��H I
entry
��I N
.
��N O
Id
��O Q
)
��Q R
;
��R S
if
�� 
(
��  
workflow
��  (
!=
��) +
null
��, 0
)
��0 1
{
�� 
await
��  %
_workflowStore
��& 4
.
��4 5
DeleteAsync
��5 @
(
��@ A
workflow
��A I
)
��I J
;
��J K
	_notifier
��  )
.
��) *
Success
��* 1
(
��1 2
H
��2 3
[
��3 4
$str
��4 T
,
��T U
workflow
��V ^
.
��^ _
Id
��_ a
]
��a b
)
��b c
;
��c d
}
�� 
}
�� 
break
�� 
;
�� 
default
�� 
:
�� 
throw
�� 
new
�� !)
ArgumentOutOfRangeException
��" =
(
��= >
)
��> ?
;
��? @
}
�� 
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0
{
��1 2
workflowTypeId
��3 A
,
��A B
page
��C G
=
��H I
pagerParameters
��J Y
.
��Y Z
Page
��Z ^
,
��^ _
pageSize
��` h
=
��i j
pagerParameters
��k z
.
��z {
PageSize��{ �
}��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
dynamic
�� "
>
��" #'
BuildActivityDisplayAsync
��$ =
(
��= >
ActivityContext
��> M
activityContext
��N ]
,
��] ^
int
��_ b
workflowTypeId
��c q
,
��q r
bool
��s w

isBlocking��x �
,��� �
string��� �
displayType��� �
)��� �
{
�� 	
dynamic
�� 
activityShape
�� !
=
��" #
await
��$ )%
_activityDisplayManager
��* A
.
��A B
BuildDisplayAsync
��B S
(
��S T
activityContext
��T c
.
��c d
Activity
��d l
,
��l m#
_updateModelAccessor��n �
.��� �
ModelUpdater��� �
,��� �
displayType��� �
)��� �
;��� �
activityShape
�� 
.
�� 
Metadata
�� "
.
��" #
Type
��# '
=
��( )
$"
��* ,
	Activity_
��, 5
{
��5 6
displayType
��6 A
}
��A B
ReadOnly
��B J
"
��J K
;
��K L
activityShape
�� 
.
�� 
Activity
�� "
=
��# $
activityContext
��% 4
.
��4 5
Activity
��5 =
;
��= >
activityShape
�� 
.
�� 
ActivityRecord
�� (
=
��) *
activityContext
��+ :
.
��: ;
ActivityRecord
��; I
;
��I J
activityShape
�� 
.
�� 
WorkflowTypeId
�� (
=
��) *
workflowTypeId
��+ 9
;
��9 :
activityShape
�� 
.
�� 

IsBlocking
�� $
=
��% &

isBlocking
��' 1
;
��1 2
return
�� 
activityShape
��  
;
��  !
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Controllers\WorkflowTypeController.cs
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
�� 
workflowTypeIds
�� 
=
��  !
workflowTypes
��" /
.
��/ 0
Select
��0 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
WorkflowTypeId
��> L
)
��L M
.
��M N
ToList
��N T
(
��T U
)
��U V
;
��V W
var
�� 
workflowGroups
�� 
=
��  
(
��! "
await
��" '
_session
��( 0
.
��0 1

QueryIndex
��1 ;
<
��; <
WorkflowIndex
��< I
>
��I J
(
��J K
x
��K L
=>
��M O
x
��P Q
.
��Q R
WorkflowTypeId
��R `
.
��` a
IsIn
��a e
(
��e f
workflowTypeIds
��f u
)
��u v
)
��v w
.
�� 
	ListAsync
�� 
(
�� 
)
�� 
)
�� 
.
�� 
GroupBy
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
��  
WorkflowTypeId
��  .
)
��. /
.
�� 
ToDictionary
�� 
(
�� 
x
�� 
=>
��  "
x
��# $
.
��$ %
Key
��% (
)
��( )
;
��) *
var
�� 
	routeData
�� 
=
�� 
new
�� 
	RouteData
��  )
(
��) *
)
��* +
;
��+ ,
	routeData
�� 
.
�� 
Values
�� 
.
�� 
Add
��  
(
��  !
$str
��! 1
,
��1 2
options
��3 :
.
��: ;
Filter
��; A
)
��A B
;
��B C
	routeData
�� 
.
�� 
Values
�� 
.
�� 
Add
��  
(
��  !
$str
��! 1
,
��1 2
options
��3 :
.
��: ;
Search
��; A
)
��A B
;
��B C
	routeData
�� 
.
�� 
Values
�� 
.
�� 
Add
��  
(
��  !
$str
��! 0
,
��0 1
options
��2 9
.
��9 :
Order
��: ?
)
��? @
;
��@ A
var
�� 

pagerShape
�� 
=
�� 
(
�� 
await
�� #
New
��$ '
.
��' (
Pager
��( -
(
��- .
pager
��. 3
)
��3 4
)
��4 5
.
��5 6
TotalItemCount
��6 D
(
��D E
count
��E J
)
��J K
.
��K L
	RouteData
��L U
(
��U V
	routeData
��V _
)
��_ `
;
��` a
var
�� 
model
�� 
=
�� 
new
�� (
WorkflowTypeIndexViewModel
�� 6
{
�� 
WorkflowTypes
�� 
=
�� 
workflowTypes
��  -
.
�� 
Select
�� 
(
�� 
x
�� 
=>
��  
new
��! $
WorkflowTypeEntry
��% 6
{
�� 
WorkflowType
�� $
=
��% &
x
��' (
,
��( )
Id
�� 
=
�� 
x
�� 
.
�� 
Id
�� !
,
��! "
WorkflowCount
�� %
=
��& '
workflowGroups
��( 6
.
��6 7
ContainsKey
��7 B
(
��B C
x
��C D
.
��D E
WorkflowTypeId
��E S
)
��S T
?
��U V
workflowGroups
��W e
[
��e f
x
��f g
.
��g h
WorkflowTypeId
��h v
]
��v w
.
��w x
Count
��x }
(
��} ~
)
��~ 
:��� �
$num��� �
,��� �
Name
�� 
=
�� 
x
��  
.
��  !
Name
��! %
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
,
�� 
Options
�� 
=
�� 
options
�� !
,
��! "
Pager
�� 
=
�� 

pagerShape
�� "
}
�� 
;
�� 
model
�� 
.
�� 
Options
�� 
.
�� %
WorkflowTypesBulkAction
�� 1
=
��2 3
new
��4 7
List
��8 <
<
��< =
SelectListItem
��= K
>
��K L
(
��L M
)
��M N
{
��O P
new
�� 
SelectListItem
�� "
(
��" #
)
��# $
{
��% &
Text
��' +
=
��, -
S
��. /
[
��/ 0
$str
��0 8
]
��8 9
.
��9 :
Value
��: ?
,
��? @
Value
��A F
=
��G H
nameof
��I O
(
��O P$
WorkflowTypeBulkAction
��P f
.
��f g
Delete
��g m
)
��m n
}
��o p
}
�� 
;
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
FormValueRequired
��	 
(
�� 
$str
�� *
)
��* +
]
��+ ,
public
�� 
ActionResult
�� 
IndexFilterPOST
�� +
(
��+ ,(
WorkflowTypeIndexViewModel
��, F
model
��G L
)
��L M
{
�� 	
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0"
RouteValueDictionary
��1 E
{
��F G
{
�� 
$str
�� "
,
��" #
model
��$ )
.
��) *
Options
��* 1
.
��1 2
Search
��2 8
}
��9 :
}
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	

ActionName
��	 
(
�� 
nameof
�� 
(
�� 
Index
��  
)
��  !
)
��! "
]
��" #
[
�� 	
FormValueRequired
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
BulkEdit
��) 1
(
��1 2&
WorkflowTypeIndexOptions
��2 J
options
��K R
,
��R S
IEnumerable
��T _
<
��_ `
int
��` c
>
��c d
itemIds
��e l
)
��l m
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
itemIds
�� 
?
�� 
.
�� 
Count
�� 
(
�� 
)
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
var
�� 
checkedEntries
�� "
=
��# $
await
��% *
_session
��+ 3
.
��3 4
Query
��4 9
<
��9 :
WorkflowType
��: F
,
��F G
WorkflowTypeIndex
��H Y
>
��Y Z
(
��Z [
)
��[ \
.
��\ ]
Where
��] b
(
��b c
x
��c d
=>
��e g
x
��h i
.
��i j

DocumentId
��j t
.
��t u
IsIn
��u y
(
��y z
itemIds��z �
)��� �
)��� �
.��� �
	ListAsync��� �
(��� �
)��� �
;��� �
switch
�� 
(
�� 
options
�� 
.
��  

BulkAction
��  *
)
��* +
{
�� 
case
�� $
WorkflowTypeBulkAction
�� /
.
��/ 0
None
��0 4
:
��4 5
break
�� 
;
�� 
case
�� $
WorkflowTypeBulkAction
�� /
.
��/ 0
Delete
��0 6
:
��6 7
foreach
�� 
(
��  !
var
��! $
entry
��% *
in
��+ -
checkedEntries
��. <
)
��< =
{
�� 
var
�� 
workflowType
��  ,
=
��- .
await
��/ 4 
_workflowTypeStore
��5 G
.
��G H
GetAsync
��H P
(
��P Q
entry
��Q V
.
��V W
Id
��W Y
)
��Y Z
;
��Z [
if
�� 
(
��  
workflowType
��  ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
await
��  % 
_workflowTypeStore
��& 8
.
��8 9
DeleteAsync
��9 D
(
��D E
workflowType
��E Q
)
��Q R
;
��R S
	_notifier
��  )
.
��) *
Success
��* 1
(
��1 2
H
��2 3
[
��3 4
$str
��4 T
,
��T U
workflowType
��V b
.
��b c
Name
��c g
]
��g h
)
��h i
;
��i j
}
�� 
}
�� 
break
�� 
;
�� 
default
�� 
:
�� 
throw
�� 
new
�� !)
ArgumentOutOfRangeException
��" =
(
��= >
)
��> ?
;
��? @
}
�� 
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
EditProperties
��) 7
(
��7 8
int
��8 ;
?
��; <
id
��= ?
,
��? @
string
��A G
	returnUrl
��H Q
=
��R S
null
��T X
)
��X Y
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
new
�� -
WorkflowTypePropertiesViewModel
��  ?
{
�� 
	IsEnabled
�� 
=
�� 
true
��  $
,
��$ %
	ReturnUrl
�� 
=
�� 
	returnUrl
��  )
}
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
var
�� 
workflowType
��  
=
��! "
await
��# (
_session
��) 1
.
��1 2
GetAsync
��2 :
<
��: ;
WorkflowType
��; G
>
��G H
(
��H I
id
��I K
.
��K L
Value
��L Q
)
��Q R
;
��R S
return
�� 
View
�� 
(
�� 
new
�� -
WorkflowTypePropertiesViewModel
��  ?
{
�� 
Id
�� 
=
�� 
workflowType
�� %
.
��% &
Id
��& (
,
��( )
Name
�� 
=
�� 
workflowType
�� '
.
��' (
Name
��( ,
,
��, -
	IsEnabled
�� 
=
�� 
workflowType
��  ,
.
��, -
	IsEnabled
��- 6
,
��6 7
IsSingleton
�� 
=
��  !
workflowType
��" .
.
��. /
IsSingleton
��/ :
,
��: ;%
DeleteFinishedWorkflows
�� +
=
��, -
workflowType
��. :
.
��: ;%
DeleteFinishedWorkflows
��; R
,
��R S
	ReturnUrl
�� 
=
�� 
	returnUrl
��  )
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
EditProperties
��) 7
(
��7 8-
WorkflowTypePropertiesViewModel
��8 W
	viewModel
��X a
,
��a b
int
��c f
?
��f g
id
��h j
)
��j k
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
	viewModel
�� %
)
��% &
;
��& '
}
�� 
var
�� 
isNew
�� 
=
�� 
id
�� 
==
�� 
null
�� "
;
��" #
var
�� 
workflowType
�� 
=
�� 
default
�� &
(
��& '
WorkflowType
��' 3
)
��3 4
;
��4 5
if
�� 
(
�� 
isNew
�� 
)
�� 
{
�� 
workflowType
�� 
=
�� 
new
�� "
WorkflowType
��# /
(
��/ 0
)
��0 1
;
��1 2
workflowType
�� 
.
�� 
WorkflowTypeId
�� +
=
��, -&
_workflowTypeIdGenerator
��. F
.
��F G
GenerateUniqueId
��G W
(
��W X
workflowType
��X d
)
��d e
;
��e f
}
�� 
else
�� 
{
�� 
workflowType
�� 
=
�� 
await
�� $
_session
��% -
.
��- .
GetAsync
��. 6
<
��6 7
WorkflowType
��7 C
>
��C D
(
��D E
id
��E G
.
��G H
Value
��H M
)
��M N
;
��N O
if
�� 
(
�� 
workflowType
��  
==
��! #
null
��$ (
)
��( )
{
�� 
return
�� 
NotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
}
�� 
workflowType
�� 
.
�� 
Name
�� 
=
�� 
	viewModel
��  )
.
��) *
Name
��* .
?
��. /
.
��/ 0
Trim
��0 4
(
��4 5
)
��5 6
;
��6 7
workflowType
�� 
.
�� 
	IsEnabled
�� "
=
��# $
	viewModel
��% .
.
��. /
	IsEnabled
��/ 8
;
��8 9
workflowType
�� 
.
�� 
IsSingleton
�� $
=
��% &
	viewModel
��' 0
.
��0 1
IsSingleton
��1 <
;
��< =
workflowType
�� 
.
�� %
DeleteFinishedWorkflows
�� 0
=
��1 2
	viewModel
��3 <
.
��< =%
DeleteFinishedWorkflows
��= T
;
��T U
await
��  
_workflowTypeStore
�� $
.
��$ %
	SaveAsync
��% .
(
��. /
workflowType
��/ ;
)
��; <
;
��< =
return
�� 
isNew
�� 
?
�� 
RedirectToAction
�� "
(
��" #
$str
��# )
,
��) *
new
��+ .
{
��/ 0
workflowType
��1 =
.
��= >
Id
��> @
}
��A B
)
��B C
:
�� 
Url
�� 
.
�� 

IsLocalUrl
��  
(
��  !
	viewModel
��! *
.
��* +
	ReturnUrl
��+ 4
)
��4 5
?
�� 
(
�� 
IActionResult
�� #
)
��# $
Redirect
��$ ,
(
��, -
	viewModel
��- 6
.
��6 7
	ReturnUrl
��7 @
)
��@ A
:
�� 
RedirectToAction
�� %
(
��% &
$str
��& -
)
��- .
;
��. /
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
	Duplicate
��) 2
(
��2 3
int
��3 6
id
��7 9
,
��9 :
string
��; A
	returnUrl
��B K
=
��L M
null
��N R
)
��R S
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
workflowType
�� 
=
�� 
await
�� $
_session
��% -
.
��- .
GetAsync
��. 6
<
��6 7
WorkflowType
��7 C
>
��C D
(
��D E
id
��E G
)
��G H
;
��H I
if
�� 
(
�� 
workflowType
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
return
�� 
View
�� 
(
�� 
new
�� -
WorkflowTypePropertiesViewModel
�� ;
{
�� 
Id
�� 
=
�� 
id
�� 
,
�� 
IsSingleton
�� 
=
�� 
workflowType
�� *
.
��* +
IsSingleton
��+ 6
,
��6 7
Name
�� 
=
�� 
$str
�� 
+
��  
workflowType
��! -
.
��- .
Name
��. 2
,
��2 3
	IsEnabled
�� 
=
�� 
workflowType
�� (
.
��( )
	IsEnabled
��) 2
,
��2 3
	ReturnUrl
�� 
=
�� 
	returnUrl
�� %
}
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
	Duplicate
��) 2
(
��2 3-
WorkflowTypePropertiesViewModel
��3 R
	viewModel
��S \
,
��\ ]
int
��^ a
id
��b d
)
��d e
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
	viewModel
�� %
)
��% &
;
��& '
}
�� 
var
�� "
existingWorkflowType
�� $
=
��% &
await
��' ,
_session
��- 5
.
��5 6
GetAsync
��6 >
<
��> ?
WorkflowType
��? K
>
��K L
(
��L M
id
��M O
)
��O P
;
��P Q
var
�� 
workflowType
�� 
=
�� 
new
�� "
WorkflowType
��# /
(
��/ 0
)
��0 1
;
��1 2
workflowType
�� 
.
�� 
WorkflowTypeId
�� '
=
��( )&
_workflowTypeIdGenerator
��* B
.
��B C
GenerateUniqueId
��C S
(
��S T
workflowType
��T `
)
��` a
;
��a b
workflowType
�� 
.
�� 
Name
�� 
=
�� 
	viewModel
��  )
.
��) *
Name
��* .
?
��. /
.
��/ 0
Trim
��0 4
(
��4 5
)
��5 6
;
��6 7
workflowType
�� 
.
�� 
	IsEnabled
�� "
=
��# $
	viewModel
��% .
.
��. /
	IsEnabled
��/ 8
;
��8 9
workflowType
�� 
.
�� 
IsSingleton
�� $
=
��% &
	viewModel
��' 0
.
��0 1
IsSingleton
��1 <
;
��< =
workflowType
�� 
.
�� %
DeleteFinishedWorkflows
�� 0
=
��1 2
	viewModel
��3 <
.
��< =%
DeleteFinishedWorkflows
��= T
;
��T U
workflowType
�� 
.
�� 

Activities
�� #
=
��$ %"
existingWorkflowType
��& :
.
��: ;

Activities
��; E
;
��E F
workflowType
�� 
.
�� 
Transitions
�� $
=
��% &"
existingWorkflowType
��' ;
.
��; <
Transitions
��< G
;
��G H
await
��  
_workflowTypeStore
�� $
.
��$ %
	SaveAsync
��% .
(
��. /
workflowType
��/ ;
)
��; <
;
��< =
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ *
,
��* +
new
��, /
{
��0 1
workflowType
��2 >
.
��> ?
Id
��? A
}
��B C
)
��C D
;
��D E
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Edit
��) -
(
��- .
int
��. 1
id
��2 4
,
��4 5
string
��6 <
localId
��= D
)
��D E
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 

newLocalId
�� 
=
�� 
string
�� #
.
��# $ 
IsNullOrWhiteSpace
��$ 6
(
��6 7
localId
��7 >
)
��> ?
?
��@ A
Guid
��B F
.
��F G
NewGuid
��G N
(
��N O
)
��O P
.
��P Q
ToString
��Q Y
(
��Y Z
)
��Z [
:
��\ ]
localId
��^ e
;
��e f
var
�� !
availableActivities
�� #
=
��$ %
_activityLibrary
��& 6
.
��6 7
ListActivities
��7 E
(
��E F
)
��F G
;
��G H
var
�� 
workflowType
�� 
=
�� 
await
�� $
_session
��% -
.
��- .
GetAsync
��. 6
<
��6 7
WorkflowType
��7 C
>
��C D
(
��D E
id
��E G
)
��G H
;
��H I
if
�� 
(
�� 
workflowType
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
var
�� 
workflow
�� 
=
�� 
_workflowManager
�� +
.
��+ ,
NewWorkflow
��, 7
(
��7 8
workflowType
��8 D
)
��D E
;
��E F
var
�� 
workflowContext
�� 
=
��  !
await
��" '
_workflowManager
��( 8
.
��8 91
#CreateWorkflowExecutionContextAsync
��9 \
(
��\ ]
workflowType
��] i
,
��i j
workflow
��k s
)
��s t
;
��t u
var
�� 
activityContexts
��  
=
��! "
await
��# (
Task
��) -
.
��- .
WhenAll
��. 5
(
��5 6
workflowType
��6 B
.
��B C

Activities
��C M
.
��M N
Select
��N T
(
��T U
x
��U V
=>
��W Y
_workflowManager
��Z j
.
��j k2
#CreateActivityExecutionContextAsync��k �
(��� �
x��� �
,��� �
x��� �
.��� �

Properties��� �
)��� �
)��� �
)��� �
;��� �
var
�� 
workflowCount
�� 
=
�� 
await
��  %
_session
��& .
.
��. /

QueryIndex
��/ 9
<
��9 :
WorkflowIndex
��: G
>
��G H
(
��H I
x
��I J
=>
��K M
x
��N O
.
��O P
WorkflowTypeId
��P ^
==
��_ a
workflowType
��b n
.
��n o
WorkflowTypeId
��o }
)
��} ~
.
��~ 

CountAsync�� �
(��� �
)��� �
;��� �
var
�� %
activityThumbnailShapes
�� '
=
��( )
new
��* -
List
��. 2
<
��2 3
dynamic
��3 :
>
��: ;
(
��; <
)
��< =
;
��= >
var
�� 
index
�� 
=
�� 
$num
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
activity
�� !
in
��" $!
availableActivities
��% 8
)
��8 9
{
�� %
activityThumbnailShapes
�� '
.
��' (
Add
��( +
(
��+ ,
await
��, 1"
BuildActivityDisplay
��2 F
(
��F G
activity
��G O
,
��O P
index
��Q V
++
��V X
,
��X Y
id
��Z \
,
��\ ]

newLocalId
��^ h
,
��h i
$str
��j u
)
��u v
)
��v w
;
��w x
}
�� 
var
�� "
activityDesignShapes
�� $
=
��% &
new
��' *
List
��+ /
<
��/ 0
dynamic
��0 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
index
�� 
=
�� 
$num
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
activityContext
�� (
in
��) +
activityContexts
��, <
)
��< =
{
�� "
activityDesignShapes
�� $
.
��$ %
Add
��% (
(
��( )
await
��) ."
BuildActivityDisplay
��/ C
(
��C D
activityContext
��D S
,
��S T
index
��U Z
++
��Z \
,
��\ ]
id
��^ `
,
��` a

newLocalId
��b l
,
��l m
$str
��n v
)
��v w
)
��w x
;
��x y
}
�� 
var
�� !
activitiesDataQuery
�� #
=
��$ %
activityContexts
��& 6
.
��6 7
Select
��7 =
(
��= >
x
��> ?
=>
��@ B
new
��C F
{
�� 
Id
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� %
.
��% &

ActivityId
��& 0
,
��0 1
X
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� $
.
��$ %
X
��% &
,
��& '
Y
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� $
.
��$ %
Y
��% &
,
��& '
Name
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� '
.
��' (
Name
��( ,
,
��, -
IsStart
�� 
=
�� 
x
�� 
.
�� 
ActivityRecord
�� *
.
��* +
IsStart
��+ 2
,
��2 3
IsEvent
�� 
=
�� 
x
�� 
.
�� 
Activity
�� $
.
��$ %
IsEvent
��% ,
(
��, -
)
��- .
,
��. /
Outcomes
�� 
=
�� 
x
�� 
.
�� 
Activity
�� %
.
��% &!
GetPossibleOutcomes
��& 9
(
��9 :
workflowContext
��: I
,
��I J
x
��K L
)
��L M
.
��M N
ToArray
��N U
(
��U V
)
��V W
}
�� 
)
�� 
;
�� 
var
�� 
workflowTypeData
��  
=
��! "
new
��# &
{
�� 
Id
�� 
=
�� 
workflowType
�� !
.
��! "
Id
��" $
,
��$ %
Name
�� 
=
�� 
workflowType
�� #
.
��# $
Name
��$ (
,
��( )
	IsEnabled
�� 
=
�� 
workflowType
�� (
.
��( )
	IsEnabled
��) 2
,
��2 3

Activities
�� 
=
�� !
activitiesDataQuery
�� 0
.
��0 1
ToArray
��1 8
(
��8 9
)
��9 :
,
��: ;
Transitions
�� 
=
�� 
workflowType
�� *
.
��* +
Transitions
��+ 6
}
�� 
;
�� 
var
�� 
	viewModel
�� 
=
�� 
new
�� #
WorkflowTypeViewModel
��  5
{
�� 
WorkflowType
�� 
=
�� 
workflowType
�� +
,
��+ ,
WorkflowTypeJson
��  
=
��! "
JsonConvert
��# .
.
��. /
SerializeObject
��/ >
(
��> ?
workflowTypeData
��? O
,
��O P

Formatting
��Q [
.
��[ \
None
��\ `
,
��` a
new
��b e$
JsonSerializerSettings
��f |
{
��} ~
ContractResolver�� �
=��� �
new��� �6
&CamelCasePropertyNamesContractResolver��� �
(��� �
)��� �
}��� �
)��� �
,��� �%
ActivityThumbnailShapes
�� '
=
��( )%
activityThumbnailShapes
��* A
,
��A B"
ActivityDesignShapes
�� $
=
��% &"
activityDesignShapes
��' ;
,
��; < 
ActivityCategories
�� "
=
��# $
_activityLibrary
��% 5
.
��5 6
ListCategories
��6 D
(
��D E
)
��E F
.
��F G
ToList
��G M
(
��M N
)
��N O
,
��O P
LocalId
�� 
=
�� 

newLocalId
�� $
,
��$ %
LoadLocalState
�� 
=
��  
!
��! "
string
��" (
.
��( ) 
IsNullOrWhiteSpace
��) ;
(
��; <
localId
��< C
)
��C D
,
��D E
WorkflowCount
�� 
=
�� 
workflowCount
��  -
}
�� 
;
�� 
return
�� 
View
�� 
(
�� 
	viewModel
�� !
)
��! "
;
��" #
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Edit
��) -
(
��- .%
WorkflowTypeUpdateModel
��. E
model
��F K
)
��K L
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
workflowType
�� 
=
�� 
await
�� $ 
_workflowTypeStore
��% 7
.
��7 8
GetAsync
��8 @
(
��@ A
model
��A F
.
��F G
Id
��G I
)
��I J
;
��J K
dynamic
�� 
state
�� 
=
�� 
JObject
�� #
.
��# $
Parse
��$ )
(
��) *
model
��* /
.
��/ 0
State
��0 5
)
��5 6
;
��6 7
var
�� 
currentActivities
�� !
=
��" #
workflowType
��$ 0
.
��0 1

Activities
��1 ;
.
��; <
ToDictionary
��< H
(
��H I
x
��I J
=>
��K M
x
��N O
.
��O P

ActivityId
��P Z
)
��Z [
;
��[ \
var
�� 
postedActivities
��  
=
��! "
(
��# $
(
��$ %
IEnumerable
��% 0
<
��0 1
dynamic
��1 8
>
��8 9
)
��9 :
state
��: ?
.
��? @

activities
��@ J
)
��J K
.
��K L
ToDictionary
��L X
(
��X Y
x
��Y Z
=>
��[ ]
(
��^ _
string
��_ e
)
��e f
x
��f g
.
��g h
id
��h j
)
��j k
;
��k l
var
�� %
removedActivityIdsQuery
�� '
=
��( )
from
�� 

activityId
�� 
in
��  "
currentActivities
��# 4
.
��4 5
Keys
��5 9
where
�� 
!
�� 
postedActivities
�� '
.
��' (
ContainsKey
��( 3
(
��3 4

activityId
��4 >
)
��> ?
select
�� 

activityId
�� !
;
��! "
var
��  
removedActivityIds
�� "
=
��# $%
removedActivityIdsQuery
��% <
.
��< =
ToList
��= C
(
��C D
)
��D E
;
��E F
foreach
�� 
(
�� 
var
�� 

activityId
�� #
in
��$ & 
removedActivityIds
��' 9
)
��9 :
{
�� 
var
�� 
activityToRemove
�� $
=
��% &
currentActivities
��' 8
[
��8 9

activityId
��9 C
]
��C D
;
��D E
workflowType
�� 
.
�� 

Activities
�� '
.
��' (
Remove
��( .
(
��. /
activityToRemove
��/ ?
)
��? @
;
��@ A
currentActivities
�� !
.
��! "
Remove
��" (
(
��( )

activityId
��) 3
)
��3 4
;
��4 5
}
�� 
foreach
�� 
(
�� 
var
�� 
activityState
�� &
in
��' )
state
��* /
.
��/ 0

activities
��0 :
)
��: ;
{
�� 
var
�� 
activity
�� 
=
�� 
currentActivities
�� 0
[
��0 1
(
��1 2
string
��2 8
)
��8 9
activityState
��9 F
.
��F G
id
��G I
]
��I J
;
��J K
activity
�� 
.
�� 
X
�� 
=
�� 
activityState
�� *
.
��* +
x
��+ ,
;
��, -
activity
�� 
.
�� 
Y
�� 
=
�� 
activityState
�� *
.
��* +
y
��+ ,
;
��, -
activity
�� 
.
�� 
IsStart
��  
=
��! "
activityState
��# 0
.
��0 1
isStart
��1 8
;
��8 9
}
�� 
workflowType
�� 
.
�� 
Transitions
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
foreach
�� 
(
�� 
var
�� 
transitionState
�� (
in
��) +
state
��, 1
.
��1 2
transitions
��2 =
)
��= >
{
�� 
workflowType
�� 
.
�� 
Transitions
�� (
.
��( )
Add
��) ,
(
��, -
new
��- 0

Transition
��1 ;
{
�� 
SourceActivityId
�� $
=
��% &
transitionState
��' 6
.
��6 7
sourceActivityId
��7 G
,
��G H#
DestinationActivityId
�� )
=
��* +
transitionState
��, ;
.
��; <#
destinationActivityId
��< Q
,
��Q R
SourceOutcomeName
�� %
=
��& '
transitionState
��( 7
.
��7 8
sourceOutcomeName
��8 I
}
�� 
)
�� 
;
�� 
}
�� 
await
��  
_workflowTypeStore
�� $
.
��$ %
	SaveAsync
��% .
(
��. /
workflowType
��/ ;
)
��; <
;
��< =
await
�� 
_session
�� 
.
�� 
CommitAsync
�� &
(
��& '
)
��' (
;
��( )
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  :
]
��: ;
)
��; <
;
��< =
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
Edit
��+ /
)
��/ 0
,
��0 1
new
��2 5
{
��6 7
id
��8 :
=
��; <
model
��= B
.
��B C
Id
��C E
}
��F G
)
��G H
;
��H I
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Delete
��) /
(
��/ 0
int
��0 3
id
��4 6
)
��6 7
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N
ManageWorkflows
��N ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 
workflowType
�� 
=
�� 
await
�� $ 
_workflowTypeStore
��% 7
.
��7 8
GetAsync
��8 @
(
��@ A
id
��A C
)
��C D
;
��D E
if
�� 
(
�� 
workflowType
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
await
��  
_workflowTypeStore
�� $
.
��$ %
DeleteAsync
��% 0
(
��0 1
workflowType
��1 =
)
��= >
;
��> ?
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  6
,
��6 7
workflowType
��8 D
.
��D E
Name
��E I
]
��I J
)
��J K
;
��K L
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
dynamic
�� "
>
��" #"
BuildActivityDisplay
��$ 8
(
��8 9
	IActivity
��9 B
activity
��C K
,
��K L
int
��M P
index
��Q V
,
��V W
int
��X [
workflowTypeId
��\ j
,
��j k
string
��l r
localId
��s z
,
��z {
string��| �
displayType��� �
)��� �
{
�� 	
dynamic
�� 
activityShape
�� !
=
��" #
await
��$ )%
_activityDisplayManager
��* A
.
��A B
BuildDisplayAsync
��B S
(
��S T
activity
��T \
,
��\ ]"
_updateModelAccessor
��^ r
.
��r s
ModelUpdater
��s 
,�� �
displayType��� �
)��� �
;��� �
activityShape
�� 
.
�� 
Metadata
�� "
.
��" #
Type
��# '
=
��( )
$"
��* ,
	Activity_
��, 5
{
��5 6
displayType
��6 A
}
��A B
"
��B C
;
��C D
activityShape
�� 
.
�� 
Activity
�� "
=
��# $
activity
��% -
;
��- .
activityShape
�� 
.
�� 
WorkflowTypeId
�� (
=
��) *
workflowTypeId
��+ 9
;
��9 :
activityShape
�� 
.
�� 
Index
�� 
=
��  !
index
��" '
;
��' (
activityShape
�� 
.
�� 
	ReturnUrl
�� #
=
��$ %
Url
��& )
.
��) *
Action
��* 0
(
��0 1
nameof
��1 7
(
��7 8
Edit
��8 <
)
��< =
,
��= >
new
��? B
{
��C D
id
��E G
=
��H I
workflowTypeId
��J X
,
��X Y
localId
��Z a
=
��b c
localId
��d k
}
��l m
)
��m n
;
��n o
return
�� 
activityShape
��  
;
��  !
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
dynamic
�� "
>
��" #"
BuildActivityDisplay
��$ 8
(
��8 9
ActivityContext
��9 H
activityContext
��I X
,
��X Y
int
��Z ]
index
��^ c
,
��c d
int
��e h
workflowTypeId
��i w
,
��w x
string
��y 
localId��� �
,��� �
string��� �
displayType��� �
)��� �
{
�� 	
dynamic
�� 
activityShape
�� !
=
��" #
await
��$ )%
_activityDisplayManager
��* A
.
��A B
BuildDisplayAsync
��B S
(
��S T
activityContext
��T c
.
��c d
Activity
��d l
,
��l m#
_updateModelAccessor��n �
.��� �
ModelUpdater��� �
,��� �
displayType��� �
)��� �
;��� �
activityShape
�� 
.
�� 
Metadata
�� "
.
��" #
Type
��# '
=
��( )
$"
��* ,
	Activity_
��, 5
{
��5 6
displayType
��6 A
}
��A B
"
��B C
;
��C D
activityShape
�� 
.
�� 
Activity
�� "
=
��# $
activityContext
��% 4
.
��4 5
Activity
��5 =
;
��= >
activityShape
�� 
.
�� 
ActivityRecord
�� (
=
��) *
activityContext
��+ :
.
��: ;
ActivityRecord
��; I
;
��I J
activityShape
�� 
.
�� 
WorkflowTypeId
�� (
=
��) *
workflowTypeId
��+ 9
;
��9 :
activityShape
�� 
.
�� 
Index
�� 
=
��  !
index
��" '
;
��' (
activityShape
�� 
.
�� 
	ReturnUrl
�� #
=
��$ %
Url
��& )
.
��) *
Action
��* 0
(
��0 1
nameof
��1 7
(
��7 8
Edit
��8 <
)
��< =
,
��= >
new
��? B
{
��C D
id
��E G
=
��H I
workflowTypeId
��J X
,
��X Y
localId
��Z a
=
��b c
localId
��d k
}
��l m
)
��m n
;
��n o
return
�� 
activityShape
��  
;
��  !
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Deployment\AllWorkflowTypeDeploymentSource.cs
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
},, �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Deployment\AllWorkflowTypeDeploymentStep.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Deployment\AllWorkflowTypeDeploymentStepDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ActivityMetadataDisplayDriver.cs
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
BuildEditorContext	o �
context
� �
)
� �
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
}"" �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\CommitTransactionTaskDisplayDriver.cs
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
CommitTransactionTaskViewModel	c �
>
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\CorrelateTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ForEachTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ForkTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ForLoopTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\IfElseTaskDisplayDriver.cs
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
} �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\JoinTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\LogTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\MissingActivityDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\NotifyTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\ScriptTaskDisplayDriver.cs
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
x	 �
.
� �
Trim
� �
(
� �
)
� �
)
� �
.
� �
ToList
� �
(
� �
)
� �
;
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\SetOutputTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\SetVariableTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Drivers\WhileLoopTaskDisplayDriver.cs
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
} �?
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Expressions\LiquidWorkflowExpressionEvaluator.cs
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
TextEncoder	  z �
encoder
  � �
)
  � �
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
,	%% �
expressionContext
%%� �
,
%%� �
_logger
%%� �
)
%%� �
;
%%� �
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
LiquidPropertyAccessor	77x �
(
77� �
name
77� �
=>
77� �
ToFluidValue
77� �
(
77� �
obj
77� �
.
77� �
Input
77� �
,
77� �
name
77� �
)
77� �
)
77� �
)
77� �
;
77� �
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
LiquidPropertyAccessor	88y �
(
88� �
name
88� �
=>
88� �
ToFluidValue
88� �
(
88� �
obj
88� �
.
88� �
Output
88� �
,
88� �
name
88� �
)
88� �
)
88� �
)
88� �
;
88� �
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
LiquidPropertyAccessor	99} �
(
99� �
name
99� �
=>
99� �
ToFluidValue
99� �
(
99� �
obj
99� �
.
99� �

Properties
99� �
,
99� �
name
99� �
)
99� �
)
99� �
)
99� �
;
99� �
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
}FF �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Handlers\DefaultWorkflowExecutionContextHandler.cs
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
} �'
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpRedirectTask.cs
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
activityContext	33{ �
)
33� �
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
ActivityContext	88s �
activityContext
88� �
)
88� �
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
}BB �)
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpRequestEvent.cs
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
activityContext	@@{ �
)
@@� �
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
activityContext	EEq �
)
EE� �
{FF 	
returnGG 
OutcomesGG 
(GG 
$strGG "
)GG" #
;GG# $
}HH 	
}II 
}JJ �B
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpRequestFilterEvent.cs
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
httpContextAccessor	o �
)
� �
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
activityContext	TT{ �
)
TT� �
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
activityContext	YYq �
)
YY� �
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
}nn ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpRequestTask.cs
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
�� 
=>
�� 
GetProperty
�� 
(
�� 
(
��  
)
��  !
=>
��" $
new
��% ( 
WorkflowExpression
��) ;
<
��; <
string
��< B
>
��B C
(
��C D
)
��D E
)
��E F
;
��F G
set
�� 
=>
�� 
SetProperty
�� 
(
�� 
value
�� $
)
��$ %
;
��% &
}
�� 	
public
��  
WorkflowExpression
�� !
<
��! "
string
��" (
>
��( )
ContentType
��* 5
{
�� 	
get
�� 
=>
�� 
GetProperty
�� 
(
�� 
(
��  
)
��  !
=>
��" $
new
��% ( 
WorkflowExpression
��) ;
<
��; <
string
��< B
>
��B C
(
��C D
$str
��D V
)
��V W
)
��W X
;
��X Y
set
�� 
=>
�� 
SetProperty
�� 
(
�� 
value
�� $
)
��$ %
;
��% &
}
�� 	
public
�� 
string
�� 
HttpResponseCodes
�� '
{
�� 	
get
�� 
=>
�� 
GetProperty
�� 
(
�� 
(
��  
)
��  !
=>
��" $
$str
��% *
)
��* +
;
��+ ,
set
�� 
=>
�� 
SetProperty
�� 
(
�� 
value
�� $
)
��$ %
;
��% &
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
Outcome
��$ +
>
��+ ,!
GetPossibleOutcomes
��- @
(
��@ A&
WorkflowExecutionContext
��A Y
workflowContext
��Z i
,
��i j
ActivityContext
��k z
activityContext��{ �
)��� �
{
�� 	
var
�� 
outcomes
�� 
=
�� 
!
�� 
string
�� "
.
��" # 
IsNullOrWhiteSpace
��# 5
(
��5 6
HttpResponseCodes
��6 G
)
��G H
?
�� 
HttpResponseCodes
�� #
.
��# $
Split
��$ )
(
��) *
$char
��* -
,
��- . 
StringSplitOptions
��/ A
.
��A B 
RemoveEmptyEntries
��B T
)
��T U
.
��U V
Select
��V \
(
��\ ]
x
��] ^
=>
��_ a
{
�� 
var
�� 
status
�� 
=
��  
int
��! $
.
��$ %
Parse
��% *
(
��* +
x
��+ ,
.
��, -
Trim
��- 1
(
��1 2
)
��2 3
)
��3 4
;
��4 5
var
�� 
description
�� #
=
��$ %&
HttpStatusCodeDictionary
��& >
.
��> ?
TryGetValue
��? J
(
��J K
status
��K Q
,
��Q R
out
��S V
var
��W Z
text
��[ _
)
��_ `
?
�� 
$"
�� 
{
�� 
status
�� #
}
��# $
{
��% &
text
��& *
}
��* +
"
��+ ,
:
�� 
status
��  
.
��  !
ToString
��! )
(
��) *
)
��* +
;
�� 
return
�� 
new
�� 
Outcome
�� &
(
��& '
status
��' -
.
��- .
ToString
��. 6
(
��6 7
)
��7 8
,
��8 9
new
��: =
LocalizedString
��> M
(
��M N
description
��N Y
,
��Y Z
description
��[ f
)
��f g
)
��g h
;
��h i
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
:
�� 
new
�� 
List
�� 
<
�� 
Outcome
�� "
>
��" #
(
��# $
)
��$ %
;
��% &
outcomes
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
Outcome
�� $
(
��$ %
$str
��% :
,
��: ;
S
��< =
[
��= >
$str
��> U
]
��U V
)
��V W
)
��W X
;
��X Y
return
�� 
outcomes
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
<
��" #%
ActivityExecutionResult
��# :
>
��: ;
ExecuteAsync
��< H
(
��H I&
WorkflowExecutionContext
��I a
workflowContext
��b q
,
��q r
ActivityContext��s �
activityContext��� �
)��� �
{
�� 	
var
�� 
headersText
�� 
=
�� 
await
�� #"
_expressionEvaluator
��$ 8
.
��8 9
EvaluateAsync
��9 F
(
��F G
Headers
��G N
,
��N O
workflowContext
��P _
,
��_ `
_urlEncoder
��a l
)
��l m
;
��m n
var
�� 
headers
�� 
=
�� 
ParseHeaders
�� &
(
��& '
headersText
��' 2
)
��2 3
;
��3 4
var
�� 

httpMethod
�� 
=
�� 

HttpMethod
�� '
;
��' (
var
�� 
url
�� 
=
�� 
await
�� "
_expressionEvaluator
�� 0
.
��0 1
EvaluateAsync
��1 >
(
��> ?
Url
��? B
,
��B C
workflowContext
��D S
,
��S T
_urlEncoder
��U `
)
��` a
;
��a b
var
�� 
request
�� 
=
�� 
new
��  
HttpRequestMessage
�� 0
(
��0 1
new
��1 4

HttpMethod
��5 ?
(
��? @

httpMethod
��@ J
)
��J K
,
��K L
url
��M P
)
��P Q
;
��Q R
foreach
�� 
(
�� 
var
�� 
header
�� 
in
��  "
headers
��# *
)
��* +
{
�� 
request
�� 
.
�� 
Headers
�� 
.
��  %
TryAddWithoutValidation
��  7
(
��7 8
header
��8 >
.
��> ?
Key
��? B
,
��B C
header
��D J
.
��J K
Value
��K P
)
��P Q
;
��Q R
}
�� 
if
�� 
(
�� 
HttpMethods
�� 
.
�� 
IsPatch
�� #
(
��# $

httpMethod
��$ .
)
��. /
||
��0 2
HttpMethods
��3 >
.
��> ?
IsPost
��? E
(
��E F

httpMethod
��F P
)
��P Q
||
��R T
HttpMethods
��U `
.
��` a
IsPut
��a f
(
��f g

httpMethod
��g q
)
��q r
)
��r s
{
�� 
var
�� 
body
�� 
=
�� 
await
��  "
_expressionEvaluator
��! 5
.
��5 6
EvaluateAsync
��6 C
(
��C D
Body
��D H
,
��H I
workflowContext
��J Y
,
��Y Z
null
��[ _
)
��_ `
;
��` a
var
�� 
contentType
�� 
=
��  !
await
��" '"
_expressionEvaluator
��( <
.
��< =
EvaluateAsync
��= J
(
��J K
ContentType
��K V
,
��V W
workflowContext
��X g
,
��g h
_urlEncoder
��i t
)
��t u
;
��u v
request
�� 
.
�� 
Content
�� 
=
��  !
new
��" %
StringContent
��& 3
(
��3 4
body
��4 8
,
��8 9
Encoding
��: B
.
��B C
UTF8
��C G
,
��G H
contentType
��I T
)
��T U
;
��U V
}
�� 
var
�� 
response
�� 
=
�� 
await
��  
_httpClient
��! ,
.
��, -
	SendAsync
��- 6
(
��6 7
request
��7 >
,
��> ?"
HttpCompletionOption
��@ T
.
��T U!
ResponseContentRead
��U h
)
��h i
;
��i j
var
�� 
responseCodes
�� 
=
��  
ParseResponseCodes
��  2
(
��2 3
HttpResponseCodes
��3 D
)
��D E
;
��E F
var
�� 
outcome
�� 
=
�� 
responseCodes
�� '
.
��' (
FirstOrDefault
��( 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
==
��> @
(
��A B
int
��B E
)
��E F
response
��F N
.
��N O

StatusCode
��O Y
)
��Y Z
;
��Z [
workflowContext
�� 
.
�� 

LastResult
�� &
=
��' (
new
��) ,
{
�� 
Body
�� 
=
�� 
await
�� 
response
�� %
.
��% &
Content
��& -
.
��- .
ReadAsStringAsync
��. ?
(
��? @
)
��@ A
,
��A B
Headers
�� 
=
�� 
response
�� "
.
��" #
Headers
��# *
.
��* +
ToDictionary
��+ 7
(
��7 8
x
��8 9
=>
��: <
x
��= >
.
��> ?
Key
��? B
)
��B C
,
��C D

StatusCode
�� 
=
�� 
response
�� %
.
��% &

StatusCode
��& 0
,
��0 1
ReasonPhrase
�� 
=
�� 
response
�� '
.
��' (
ReasonPhrase
��( 4
,
��4 5!
IsSuccessStatusCode
�� #
=
��$ %
response
��& .
.
��. /!
IsSuccessStatusCode
��/ B
}
�� 
;
�� 
return
�� 
Outcomes
�� 
(
�� 
outcome
�� #
!=
��$ &
$num
��' (
?
��) *
outcome
��+ 2
.
��2 3
ToString
��3 ;
(
��; <
)
��< =
:
��> ?
$str
��@ U
)
��U V
;
��V W
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
KeyValuePair
�� (
<
��( )
string
��) /
,
��/ 0
string
��1 7
>
��7 8
>
��8 9
ParseHeaders
��: F
(
��F G
string
��G M
text
��N R
)
��R S
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
text
��* .
)
��. /
)
��/ 0
return
�� 

Enumerable
�� !
.
��! "
Empty
��" '
<
��' (
KeyValuePair
��( 4
<
��4 5
string
��5 ;
,
��; <
string
��= C
>
��C D
>
��D E
(
��E F
)
��F G
;
��G H
return
�� 
from
�� 
header
�� 
in
�� 
text
�� #
.
��# $
Split
��$ )
(
��) *
new
��* -
[
��- .
]
��. /
{
��0 1
$str
��2 8
,
��8 9
$str
��: >
,
��> ?
$str
��@ D
}
��E F
,
��F G 
StringSplitOptions
��H Z
.
��Z [ 
RemoveEmptyEntries
��[ m
)
��m n
.
��n o
Select
��o u
(
��u v
x
��v w
=>
��x z
x
��{ |
.
��| }
Trim��} �
(��� �
)��� �
)��� �
let
�� 
pair
�� 
=
�� 
header
�� !
.
��! "
Split
��" '
(
��' (
$char
��( +
,
��+ ,
$num
��- .
)
��. /
where
�� 
pair
�� 
.
�� 
Length
�� !
==
��" $
$num
��% &
select
�� 
new
�� 
KeyValuePair
�� '
<
��' (
string
��( .
,
��. /
string
��0 6
>
��6 7
(
��7 8
pair
��8 <
[
��< =
$num
��= >
]
��> ?
,
��? @
pair
��A E
[
��E F
$num
��F G
]
��G H
)
��H I
;
��I J
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
int
�� 
>
��   
ParseResponseCodes
��! 3
(
��3 4
string
��4 :
text
��; ?
)
��? @
{
�� 	
return
�� 
from
�� 
code
�� 
in
�� 
text
�� !
.
��! "
Split
��" '
(
��' (
$char
��( +
,
��+ , 
StringSplitOptions
��- ?
.
��? @ 
RemoveEmptyEntries
��@ R
)
��R S
select
�� 
int
�� 
.
�� 
Parse
��  
(
��  !
code
��! %
)
��% &
;
��& '
}
�� 	
}
�� 
}�� �M
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\HttpResponseTask.cs
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
activityContext	BB{ �
)
BB� �
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
ActivityContext	GGs �
activityContext
GG� �
)
GG� �
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
Trim	jj} �
(
jj� �
)
jj� �
)
jj� �
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
}pp �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Activities\SignalEvent.cs
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
activityContext	##s �
)
##� �
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
OrdinalIgnoreCase	&&p �
)
&&� �
;
&&� �
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
activityContext	)){ �
)
))� �
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
activityContext	..q �
)
..� �
{// 	
return00 
Outcomes00 
(00 
$str00 "
)00" #
;00# $
}11 	
}22 
}33 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Controllers\HttpWorkflowController.cs
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
TimeSpan	AAx �
.
AA� �
FromDays
AA� �
(
AA� �
tokenLifeSpan
AA� �
==
AA� �
$num
AA� �
?
AA� �#
NoExpiryTokenLifespan
AA� �
:
AA� �
tokenLifeSpan
AA� �
)
AA� �
)
AA� �
;
AA� �
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

WorkflowId	XXw �
)
XX� �
;
XX� �
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
�� 
if
�� 
(
�� !
httpRequestActivity
�� #
.
��# $&
ValidateAntiforgeryToken
��$ <
&&
��= ?
(
��@ A
!
��A B
await
��B G
_antiforgery
��H T
.
��T U!
IsRequestValidAsync
��U h
(
��h i
HttpContext
��i t
)
��t u
)
��u v
)
��v w
{
�� 
_logger
�� 
.
�� 

LogWarning
�� "
(
��" #
$str
��# I
)
��I J
;
��J K
return
�� 

BadRequest
�� !
(
��! "
)
��" #
;
��# $
}
�� 
if
�� 
(
�� 
startActivity
�� 
.
�� 
IsStart
�� %
)
��% &
{
�� 
if
�� 
(
�� 
!
�� 
workflowType
�� !
.
��! "
IsSingleton
��" -
||
��. 0
!
��1 2
await
��2 7
_workflowStore
��8 F
.
��F G$
HasHaltedInstanceAsync
��G ]
(
��] ^
workflowType
��^ j
.
��j k
WorkflowTypeId
��k y
)
��y z
)
��z {
{
�� 
if
�� 
(
�� 
_logger
�� 
.
��  
	IsEnabled
��  )
(
��) *
LogLevel
��* 2
.
��2 3
Debug
��3 8
)
��8 9
)
��9 :
{
�� 
_logger
�� 
.
��  
LogDebug
��  (
(
��( )
$str
��) ~
,
��~ 
workflowType��� �
.��� �
WorkflowTypeId��� �
,��� �
startActivity��� �
.��� �

ActivityId��� �
)��� �
;��� �
}
�� 
await
�� 
_workflowManager
�� *
.
��* + 
StartWorkflowAsync
��+ =
(
��= >
workflowType
��> J
,
��J K
startActivity
��L Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
	workflows
�� 
=
�� 
await
��  %
_workflowStore
��& 4
.
��4 5
	ListAsync
��5 >
(
��> ?
workflowType
��? K
.
��K L
WorkflowTypeId
��L Z
,
��Z [
new
��\ _
[
��_ `
]
��` a
{
��b c
startActivity
��d q
.
��q r

ActivityId
��r |
}
��} ~
)
��~ 
;�� �
if
�� 
(
�� 
!
�� 
	workflows
�� 
.
�� 
Any
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
if
�� 
(
�� 
_logger
�� 
.
��  
	IsEnabled
��  )
(
��) *
LogLevel
��* 2
.
��2 3
Warning
��3 :
)
��: ;
)
��; <
{
�� 
_logger
�� 
.
��  

LogWarning
��  *
(
��* +
$str
��+ i
,
��i j
startActivity
��k x
.
��x y

ActivityId��y �
)��� �
;��� �
}
�� 
return
�� 
NotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
foreach
�� 
(
�� 
var
�� 
workflow
�� %
in
��& (
	workflows
��) 2
)
��2 3
{
�� 
var
�� 
blockingActivity
�� (
=
��) *
workflow
��+ 3
.
��3 4 
BlockingActivities
��4 F
.
��F G
FirstOrDefault
��G U
(
��U V
x
��V W
=>
��X Z
x
��[ \
.
��\ ]

ActivityId
��] g
==
��h j
startActivity
��k x
.
��x y

ActivityId��y �
)��� �
;��� �
if
�� 
(
�� 
blockingActivity
�� (
!=
��) +
null
��, 0
)
��0 1
{
�� 
if
�� 
(
�� 
_logger
�� #
.
��# $
	IsEnabled
��$ -
(
��- .
LogLevel
��. 6
.
��6 7
Debug
��7 <
)
��< =
)
��= >
{
�� 
_logger
�� #
.
��# $
LogDebug
��$ ,
(
��, -
$str
��- r
,
��r s
workflow
��t |
.
��| }

WorkflowId��} �
,��� � 
blockingActivity��� �
.��� �

ActivityId��� �
)��� �
;��� �
}
�� 
await
�� 
_workflowManager
�� .
.
��. /!
ResumeWorkflowAsync
��/ B
(
��B C
workflow
��C K
,
��K L
blockingActivity
��M ]
)
��] ^
;
��^ _
}
�� 
}
�� 
}
�� 
return
�� %
GetWorkflowActionResult
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Trigger
��) 0
(
��0 1
string
��1 7
token
��8 =
)
��= >
{
�� 	
if
�� 
(
�� 
!
�� #
_securityTokenService
�� &
.
��& '
TryDecryptToken
��' 6
<
��6 7
SignalPayload
��7 D
>
��D E
(
��E F
token
��F K
,
��K L
out
��M P
var
��Q T
payload
��U \
)
��\ ]
)
��] ^
{
�� 
_logger
�� 
.
�� 

LogWarning
�� "
(
��" #
$str
��# ?
)
��? @
;
��@ A
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
var
�� 
input
�� 
=
�� 
new
�� 

Dictionary
�� &
<
��& '
string
��' -
,
��- .
object
��/ 5
>
��5 6
{
��7 8
{
��9 :
$str
��; C
,
��C D
payload
��E L
.
��L M

SignalName
��M W
}
��X Y
}
��Z [
;
��[ \
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� *
(
��* +
payload
��+ 2
.
��2 3

WorkflowId
��3 =
)
��= >
)
��> ?
{
�� 
var
�� 
workflow
�� 
=
�� 
await
�� $
_workflowStore
��% 3
.
��3 4
GetAsync
��4 <
(
��< =
payload
��= D
.
��D E

WorkflowId
��E O
)
��O P
;
��P Q
var
�� 
signalActivities
�� $
=
��% &
workflow
��' /
?
��/ 0
.
��0 1 
BlockingActivities
��1 C
.
��C D
Where
��D I
(
��I J
x
��J K
=>
��L N
x
��O P
.
��P Q
Name
��Q U
==
��V X
SignalEvent
��Y d
.
��d e
	EventName
��e n
)
��n o
.
��o p
ToList
��p v
(
��v w
)
��w x
;
��x y
if
�� 
(
�� 
signalActivities
�� $
==
��% '
null
��( ,
)
��, -
{
�� 
return
�� 
NotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
foreach
�� 
(
�� 
var
�� 
signalActivity
�� +
in
��, .
signalActivities
��/ ?
)
��? @
{
�� 
await
�� 
_workflowManager
�� *
.
��* +!
ResumeWorkflowAsync
��+ >
(
��> ?
workflow
��? G
,
��G H
signalActivity
��I W
,
��W X
input
��Y ^
)
��^ _
;
��_ `
}
�� 
}
�� 
else
�� 
{
�� 
await
�� 
_workflowManager
�� &
.
��& '
TriggerEventAsync
��' 8
(
��8 9
SignalEvent
��9 D
.
��D E
	EventName
��E N
,
��N O
input
��P U
,
��U V
payload
��W ^
.
��^ _
CorrelationId
��_ l
)
��l m
;
��m n
}
�� 
return
�� %
GetWorkflowActionResult
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
private
�� 
IActionResult
�� %
GetWorkflowActionResult
�� 5
(
��5 6
)
��6 7
{
�� 	
if
�� 
(
�� 
HttpContext
�� 
.
�� 
Items
�� !
.
��! "
ContainsKey
��" -
(
��- . 
WorkflowHttpResult
��. @
.
��@ A
Instance
��A I
)
��I J
)
��J K
{
�� 
return
�� 
new
�� 
EmptyResult
�� &
(
��& '
)
��' (
;
��( )
}
�� 
return
�� 
Accepted
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpRedirectTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpRequestEventDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpRequestFilterEventDisplayDriver.cs
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
HttpRequestFilterEventViewModel	e �
>
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpRequestTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\HttpResponseTaskDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Drivers\SignalEventDisplayDriver.cs
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
} �D
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Filters\WorkflowActionFilter.cs
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
WorkflowTypeId	88w �
)
88� �
)
88� �
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
}VV �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Handlers\SignalLiquidTemplateHandler.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Handlers\SignalWorkflowExecutionContextHandler.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Handlers\WorkflowInstanceRoutesHandler.cs
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
_activityLibrary	,,p �
)
,,� �
;
,,� �
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
}11 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Handlers\WorkflowTypeRoutesHandler.cs
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
}(( �#
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Liquid\SignalUrlFilter.cs
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
token	++} �
}
++� �
)
++� �
)
++� �
;
++� �
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
}// �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\SignalPayload.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\WorkflowPayload.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\WorkflowRouteDocument.cs
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
WorkflowRoutesEntry	s �
>
� �
>
� �
(
� �
)
� �
;
� �
}		 
}

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\WorkflowRoutesEntry.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Models\WorkflowTypeRouteDocument.cs
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
} �d
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Scripting\HttpMethodsProvider.cs
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

GetAwaiter	II �
(
II� �
)
II� �
.
II� �
	GetResult
II� �
(
II� �
)
II� �
)
II� �
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
	RouteData	RRy �
(
RR� �
)
RR� �
,
RR� �
new
RR� �
ActionDescriptor
RR� �
(
RR� �
)
RR� �
)
RR� �
)
RR� �
;
RR� �
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
�� $
=
��% &
new
��' *
GlobalMethod
��+ 7
{
�� 
Name
�� 
=
�� 
$str
�� *
,
��* +
Method
�� 
=
�� 
serviceProvider
�� (
=>
��) +
(
��, -
Func
��- 1
<
��1 2
JObject
��2 9
>
��9 :
)
��: ;
(
��; <
(
��< =
)
��= >
=>
��? A
new
�� 
JObject
�� 
(
��  
(
��  !
from
��! %
param
��& +
in
��, .!
httpContextAccessor
��/ B
.
��B C
HttpContext
��C N
.
��N O
Request
��O V
.
��V W
Query
��W \
select
��! '
new
��( +
	JProperty
��, 5
(
��5 6
param
��6 ;
.
��; <
Key
��< ?
,
��? @
JArray
��A G
.
��G H

FromObject
��H R
(
��R S
param
��S X
.
��X Y
Value
��Y ^
.
��^ _
ToArray
��_ f
(
��f g
)
��g h
)
��h i
)
��i j
)
��j k
.
��k l
ToArray
��l s
(
��s t
)
��t u
)
��u v
)
��v w
}
�� 
;
�� &
_requestFormAsJsonMethod
�� $
=
��% &
new
��' *
GlobalMethod
��+ 7
{
�� 
Name
�� 
=
�� 
$str
�� *
,
��* +
Method
�� 
=
�� 
serviceProvider
�� (
=>
��) +
(
��, -
Func
��- 1
<
��1 2
JObject
��2 9
>
��9 :
)
��: ;
(
��; <
(
��< =
)
��= >
=>
��? A
new
�� 
JObject
�� 
(
��  
(
��  !
from
��! %
field
��& +
in
��, .!
httpContextAccessor
��/ B
.
��B C
HttpContext
��C N
.
��N O
Request
��O V
.
��V W
Form
��W [
select
��! '
new
��( +
	JProperty
��, 5
(
��5 6
field
��6 ;
.
��; <
Key
��< ?
,
��? @
JArray
��A G
.
��G H

FromObject
��H R
(
��R S
field
��S X
.
��X Y
Value
��Y ^
.
��^ _
ToArray
��_ f
(
��f g
)
��g h
)
��h i
)
��i j
)
��j k
.
��k l
ToArray
��l s
(
��s t
)
��t u
)
��u v
)
��v w
}
�� 
;
�� 
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
GlobalMethod
�� '
>
��' (

GetMethods
��) 3
(
��3 4
)
��4 5
{
�� 	
return
�� 
new
�� 
[
�� 
]
�� 
{
��  
_httpContextMethod
�� -
,
��- . 
_queryStringMethod
��/ A
,
��A B"
_responseWriteMethod
��C W
,
��W X 
_absoluteUrlMethod
��Y k
,
��k l
_readBodyMethod
��m |
,
��| }!
_requestFormMethod��~ �
,��� �(
_queryStringAsJsonMethod��� �
,��� �(
_requestFormAsJsonMethod��� �
}��� �
;��� �
}
�� 	
}
�� 
}�� �,
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Scripting\SignalMethodProvider.cs
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
signal	{ �
,
� �
workflowContext
� �
.
� �
CorrelationId
� �
)
� �
:
� �
SignalPayload
� �
.
� �
ForWorkflow
� �
(
� �
signal
� �
,
� �
workflowContext
� �
.
� �

WorkflowId
� �
)
� �
;
� �
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
}DD �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\IWorkflowInstanceRouteEntries.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\IWorkflowRouteEntries.cs
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
 �
;


� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\IWorkflowTypeRouteEntries.cs
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
} �0
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\WorkflowInstanceRouteEntries.cs
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
� �
.
� �
WorkflowTypeId
� �
)
� �
;
� �
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
ActivityLibrary	''v �
)
''� �
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
77� �
activityLibrary
77� �
)
77� �
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
ContainsKey	::x �
(
::� �
x
::� �
.
::� �

ActivityId
::� �
)
::� �
)
::� �
.
::� �
Select
::� �
(
::� �
x
::� �
=>
::� �
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
}II �E
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\WorkflowRouteEntriesOfT.cs
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
WorkflowRouteDocument	w �
,
� �
new
� �
(
� �
)
� �
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
RouteValueDictionary	l �
routeValues
� �
)
� �
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

httpMethod	**{ �
,
**� �"
RouteValueDictionary
**� �
routeValues
**� �
)
**� �
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
)	EE �
;
EE� �
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
CreateDocumentAsync	JJm �
)
JJ� �
;
JJ� �
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
}UU �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Services\WorkflowTypeRouteEntries.cs
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
� �
.
� �
WorkflowTypeId
� �
)
� �
;
� �
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
IActivityLibrary	q �
activityLibrary
� �
)
� �
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
}// �.
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\Startup.cs
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
}GG �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpRedirectTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpRequestEventViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpRequestFilterEventViewModel.cs
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
Value	~ �
=
� �
x
� �
}
� �
)
� �
.
� �
ToList
� �
(
� �
)
� �
;
� �
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpRequestTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\ViewModels\HttpResponseTaskViewModel.cs
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
 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Http\WorkflowHttpResult.cs
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
} �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Indexes\WorkflowIndexProvider.cs
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
}99 �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Indexes\WorkflowTypeIndexProvider.cs
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
}66 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Manifest.cs
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
]"" �K
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Migrations.cs
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
��  
)
��  !
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *-
WorkflowBlockingActivitiesIndex
��* I
>
��I J
(
��J K
table
��K P
=>
��Q S
table
��T Y
.
�� 
CreateIndex
�� 
(
�� 
$str
�� M
,
��M N
$str
��  
,
��  !
$str
��  
,
��  !
$str
�� $
,
��$ %
$str
��  
)
��  !
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *-
WorkflowBlockingActivitiesIndex
��* I
>
��I J
(
��J K
table
��K P
=>
��Q S
table
��T Y
.
�� 
CreateIndex
�� 
(
�� 
$str
�� O
,
��O P
$str
��  
,
��  !
$str
�� "
,
��" #
$str
�� $
,
��$ %
$str
�� +
)
��+ ,
)
�� 
;
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Permissions.cs
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
r �
:


� �
true


� �
)


� �
;


� �
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
isSecurityCritical	u �
:
� �
true
� �
)
� �
;
� �
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
}   �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Recipes\WorkflowTypeStep.cs
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
}55 �!
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Scripting\JavaScriptWorkflowScriptEvaluator.cs
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
params	z �#
IGlobalMethodProvider
� �
[
� �
]
� �#
scopedMethodProviders
� �
)
� �
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
expressionContext	))} �
,
))� �
_logger
))� �
)
))� �
;
))� �
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
}// �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Scripting\OutcomeMethodProvider.cs
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
} �9
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Scripting\WorkflowMethodsProvider.cs
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
workflowContext	$$w �
.
$$� �
Input
$$� �
[
$$� �
name
$$� �
]
$$� �
:
$$� �
null
$$� �
)
$$� �
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
workflowContext	00| �
.
00� �

Properties
00� �
[
00� �
name
00� �
]
00� �
:
00� �
null
00� �
)
00� �
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
_correlationIdMethod	HH| �
,
HH� � 
_setPropertyMethod
HH� �
}
HH� �
;
HH� �
}II 	
}JJ 
}KK �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\ActivityDisplayManager.cs
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
IDisplayDriver	v �
<
� �
	IActivity
� �
>
� �
>
� �
(
� �
x
� �
)
� �
)
� �
;
� �
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
layoutAccessor	} �
)
� �
;
� �
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
$str	!! �
)
!!� �
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
}00 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\ActivityIdGenerator.cs
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
} �=
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\ActivityLibrary.cs
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
ActivityLibrary	t �
>
� �
logger
� �
)
� �
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
� �
x
� �
.
� �

IsAbstract
� �
)
� �
.
� �
Select
� �
(
� �
x
� �
=>
� �
serviceProvider
� �
.
� �
CreateInstance
� �
<
� �
	IActivity
� �
>
� �
(
� �
x
� �
)
� �
)
� �
.
� �
OrderBy
� �
(
� �
x
� �
=>
� �
x
� �
.
� �
Name
� �
)
� �
.
� �
ToDictionary
� �
(
� �
x
� �
=>
� �
x
� �
.
� �
Name
� �
)
� �
)
� �
;
� �
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
Category	y �
.
� �
Value
� �
)
� �
.
� �
Select
� �
(
� �
x
� �
=>
� �
x
� �
.
� �
Category
� �
)
� �
.
� �
Distinct
� �
(
� �
new
� �%
LocalizedStringComparer
� �
(
� �
)
� �
)
� �
.
� �
ToList
� �
(
� �
)
� �
)
� �
;
� �
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
$str	44# �
,
44� �
name
44� �
)
44� �
;
44� �
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
}II �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\LocalizedStringComparer.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\Resolver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\SecurityTokenService.cs
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
}11 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowIdGenerator.cs
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
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowManager.cs
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
workflow	FF| �
,
FF� �
IDictionary
FF� �
<
FF� �
string
FF� �
,
FF� �
object
FF� �
>
FF� �
input
FF� �
=
FF� �
null
FF� �
)
FF� �
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
JObject	KK~ �
(
KK� �
)
KK� �
;
KK� �
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

lastResult	SS} �
,
SS� �
activityQuery
SS� �
)
SS� �
;
SS� �
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
$str	\\# �
,
\\� �
activityRecord
\\� �
.
\\� �
Name
\\� �
)
\\� �
;
\\� �
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
ii� �
isExclusive
ii� �
=
ii� �
false
ii� �
,
ii� �
bool
ii� � 
isAlwaysCorrelated
ii� �
=
ii� �
false
ii� �
)
ii� �
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
�� 
(
�� 
var
�� 
workflowType
�� %
in
��& ("
workflowTypesToStart
��) =
)
��= >
{
�� 
if
�� 
(
�� 
workflowType
��  
.
��  !
IsSingleton
��! ,
&&
��- /
await
��0 5
_workflowStore
��6 D
.
��D E$
HasHaltedInstanceAsync
��E [
(
��[ \
workflowType
��\ h
.
��h i
WorkflowTypeId
��i w
)
��w x
)
��x y
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
isExclusive
�� 
&&
��  "
haltedWorkflows
��# 2
.
��2 3
Any
��3 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
WorkflowTypeId
��> L
==
��M O
workflowType
��P \
.
��\ ]
WorkflowTypeId
��] k
)
��k l
)
��l m
{
�� 
continue
�� 
;
�� 
}
�� 
var
�� 
startActivity
�� !
=
��" #
workflowType
��$ 0
.
��0 1

Activities
��1 ;
.
��; <
FirstOrDefault
��< J
(
��J K
x
��K L
=>
��M O
x
��P Q
.
��Q R
IsStart
��R Y
&&
��Z \
String
��] c
.
��c d
Equals
��d j
(
��j k
x
��k l
.
��l m
Name
��m q
,
��q r
name
��s w
,
��w x
StringComparison��y �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
startActivity
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
await
��  
StartWorkflowAsync
�� ,
(
��, -
workflowType
��- 9
,
��9 :
startActivity
��; H
,
��H I
input
��J O
,
��O P
correlationId
��Q ^
)
��^ _
;
��_ `
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
workflow
�� !
in
��" $
haltedWorkflows
��% 4
)
��4 5
{
�� 
var
��  
blockingActivities
�� &
=
��' (
workflow
��) 1
.
��1 2 
BlockingActivities
��2 D
.
��D E
Where
��E J
(
��J K
x
��K L
=>
��M O
x
��P Q
.
��Q R
Name
��R V
==
��W Y
name
��Z ^
)
��^ _
.
��_ `
ToList
��` f
(
��f g
)
��g h
;
��h i
foreach
�� 
(
�� 
var
�� 
blockingActivity
�� -
in
��. 0 
blockingActivities
��1 C
)
��C D
{
�� 
await
�� !
ResumeWorkflowAsync
�� -
(
��- .
workflow
��. 6
,
��6 7
blockingActivity
��8 H
,
��H I
input
��J O
)
��O P
;
��P Q
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
�� &
WorkflowExecutionContext
�� 2
>
��2 3!
ResumeWorkflowAsync
��4 G
(
��G H
Workflow
��H P
workflow
��Q Y
,
��Y Z
BlockingActivity
��[ k
awaitingActivity
��l |
,
��| }
IDictionary��~ �
<��� �
string��� �
,��� �
object��� �
>��� �
input��� �
=��� �
null��� �
)��� �
{
�� 	
var
�� 
workflowType
�� 
=
�� 
await
�� $ 
_workflowTypeStore
��% 7
.
��7 8
GetAsync
��8 @
(
��@ A
workflow
��A I
.
��I J
WorkflowTypeId
��J X
)
��X Y
;
��Y Z
var
�� 
activityRecord
�� 
=
��  
workflowType
��! -
.
��- .

Activities
��. 8
.
��8 9
SingleOrDefault
��9 H
(
��H I
x
��I J
=>
��K M
x
��N O
.
��O P

ActivityId
��P Z
==
��[ ]
awaitingActivity
��^ n
.
��n o

ActivityId
��o y
)
��y z
;
��z {
var
�� 
workflowContext
�� 
=
��  !
await
��" '1
#CreateWorkflowExecutionContextAsync
��( K
(
��K L
workflowType
��L X
,
��X Y
workflow
��Z b
,
��b c
input
��d i
)
��i j
;
��j k
workflowContext
�� 
.
�� 
Status
�� "
=
��# $
WorkflowStatus
��% 3
.
��3 4
Resuming
��4 <
;
��< =
var
�� 
cancellationToken
�� !
=
��" #
new
��$ '
CancellationToken
��( 9
(
��9 :
)
��: ;
;
��; <
await
�� #
InvokeActivitiesAsync
�� '
(
��' (
workflowContext
��( 7
,
��7 8
x
��9 :
=>
��; =
x
��> ?
.
��? @
Activity
��@ H
.
��H I"
OnInputReceivedAsync
��I ]
(
��] ^
workflowContext
��^ m
,
��m n
input
��o t
)
��t u
)
��u v
;
��v w
await
�� #
InvokeActivitiesAsync
�� '
(
��' (
workflowContext
��( 7
,
��7 8
x
��9 :
=>
��; =
x
��> ?
.
��? @
Activity
��@ H
.
��H I%
OnWorkflowResumingAsync
��I `
(
��` a
workflowContext
��a p
,
��p q 
cancellationToken��r �
)��� �
)��� �
;��� �
if
�� 
(
�� 
cancellationToken
�� !
.
��! "%
IsCancellationRequested
��" 9
)
��9 :
{
�� 
workflowContext
�� 
.
��  
Status
��  &
=
��' (
WorkflowStatus
��) 7
.
��7 8
Aborted
��8 ?
;
��? @
}
�� 
else
�� 
{
�� 
var
�� 
activityContext
�� #
=
��$ %
workflowContext
��& 5
.
��5 6
GetActivity
��6 A
(
��A B
activityRecord
��B P
.
��P Q

ActivityId
��Q [
)
��[ \
;
��\ ]
if
�� 
(
�� 
await
�� 
activityContext
�� )
.
��) *
Activity
��* 2
.
��2 3
CanExecuteAsync
��3 B
(
��B C
workflowContext
��C R
,
��R S
activityContext
��T c
)
��c d
)
��d e
{
�� 
await
�� #
InvokeActivitiesAsync
�� /
(
��/ 0
workflowContext
��0 ?
,
��? @
x
��A B
=>
��C E
x
��F G
.
��G H
Activity
��H P
.
��P Q$
OnWorkflowResumedAsync
��Q g
(
��g h
workflowContext
��h w
)
��w x
)
��x y
;
��y z
workflowContext
�� #
.
��# $
Workflow
��$ ,
.
��, - 
BlockingActivities
��- ?
.
��? @
Remove
��@ F
(
��F G
awaitingActivity
��G W
)
��W X
;
��X Y
await
�� "
ExecuteWorkflowAsync
�� .
(
��. /
workflowContext
��/ >
,
��> ?
activityRecord
��@ N
)
��N O
;
��O P
}
�� 
else
�� 
{
�� 
workflowContext
�� #
.
��# $
Status
��$ *
=
��+ ,
WorkflowStatus
��- ;
.
��; <
Halted
��< B
;
��B C
return
�� 
workflowContext
�� *
;
��* +
}
�� 
}
�� 
if
�� 
(
�� 
workflowContext
�� 
.
��  
Status
��  &
==
��' )
WorkflowStatus
��* 8
.
��8 9
Finished
��9 A
&&
��B D
workflowType
��E Q
.
��Q R%
DeleteFinishedWorkflows
��R i
)
��i j
{
�� 
await
�� 
_workflowStore
�� $
.
��$ %
DeleteAsync
��% 0
(
��0 1
workflowContext
��1 @
.
��@ A
Workflow
��A I
)
��I J
;
��J K
}
�� 
else
�� 
{
�� 
await
�� 
PersistAsync
�� "
(
��" #
workflowContext
��# 2
)
��2 3
;
��3 4
}
�� 
return
�� 
workflowContext
�� "
;
��" #
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� &
WorkflowExecutionContext
�� 2
>
��2 3 
StartWorkflowAsync
��4 F
(
��F G
WorkflowType
��G S
workflowType
��T `
,
��` a
ActivityRecord
��b p
startActivity
��q ~
=�� �
null��� �
,��� �
IDictionary��� �
<��� �
string��� �
,��� �
object��� �
>��� �
input��� �
=��� �
null��� �
,��� �
string��� �
correlationId��� �
=��� �
null��� �
)��� �
{
�� 	
if
�� 
(
�� 
startActivity
�� 
==
��  
null
��! %
)
��% &
{
�� 
startActivity
�� 
=
�� 
workflowType
��  ,
.
��, -

Activities
��- 7
.
��7 8
FirstOrDefault
��8 F
(
��F G
x
��G H
=>
��I K
x
��L M
.
��M N
IsStart
��N U
)
��U V
;
��V W
if
�� 
(
�� 
startActivity
�� !
==
��" $
null
��% )
)
��) *
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
$"
��8 :
Workflow with ID 
��: K
{
��K L
workflowType
��L X
.
��X Y
Id
��Y [
}
��[ \.
  does not have a start activity.
��\ |
"
��| }
)
��} ~
;
��~ 
}
�� 
}
�� 
var
�� 
workflow
�� 
=
�� 
NewWorkflow
�� &
(
��& '
workflowType
��' 3
,
��3 4
correlationId
��5 B
)
��B C
;
��C D
var
�� 
workflowContext
�� 
=
��  !
await
��" '1
#CreateWorkflowExecutionContextAsync
��( K
(
��K L
workflowType
��L X
,
��X Y
workflow
��Z b
,
��b c
input
��d i
)
��i j
;
��j k
workflowContext
�� 
.
�� 
Status
�� "
=
��# $
WorkflowStatus
��% 3
.
��3 4
Starting
��4 <
;
��< =
await
�� #
InvokeActivitiesAsync
�� '
(
��' (
workflowContext
��( 7
,
��7 8
x
��9 :
=>
��; =
x
��> ?
.
��? @
Activity
��@ H
.
��H I"
OnInputReceivedAsync
��I ]
(
��] ^
workflowContext
��^ m
,
��m n
input
��o t
)
��t u
)
��u v
;
��v w
var
�� 
cancellationToken
�� !
=
��" #
new
��$ '
CancellationToken
��( 9
(
��9 :
)
��: ;
;
��; <
await
�� #
InvokeActivitiesAsync
�� '
(
��' (
workflowContext
��( 7
,
��7 8
x
��9 :
=>
��; =
x
��> ?
.
��? @
Activity
��@ H
.
��H I%
OnWorkflowStartingAsync
��I `
(
��` a
workflowContext
��a p
,
��p q 
cancellationToken��r �
)��� �
)��� �
;��� �
if
�� 
(
�� 
cancellationToken
�� !
.
��! "%
IsCancellationRequested
��" 9
)
��9 :
{
�� 
workflowContext
�� 
.
��  
Status
��  &
=
��' (
WorkflowStatus
��) 7
.
��7 8
Aborted
��8 ?
;
��? @
return
�� 
workflowContext
�� &
;
��& '
}
�� 
else
�� 
{
�� 
var
�� 
activityContext
�� #
=
��$ %
workflowContext
��& 5
.
��5 6
GetActivity
��6 A
(
��A B
startActivity
��B O
.
��O P

ActivityId
��P Z
)
��Z [
;
��[ \
if
�� 
(
�� 
await
�� 
activityContext
�� )
.
��) *
Activity
��* 2
.
��2 3
CanExecuteAsync
��3 B
(
��B C
workflowContext
��C R
,
��R S
activityContext
��T c
)
��c d
)
��d e
{
�� 
await
�� #
InvokeActivitiesAsync
�� /
(
��/ 0
workflowContext
��0 ?
,
��? @
x
��A B
=>
��C E
x
��F G
.
��G H
Activity
��H P
.
��P Q$
OnWorkflowStartedAsync
��Q g
(
��g h
workflowContext
��h w
)
��w x
)
��x y
;
��y z
await
�� "
ExecuteWorkflowAsync
�� .
(
��. /
workflowContext
��/ >
,
��> ?
startActivity
��@ M
)
��M N
;
��N O
}
�� 
else
�� 
{
�� 
workflowContext
�� #
.
��# $
Status
��$ *
=
��+ ,
WorkflowStatus
��- ;
.
��; <
Idle
��< @
;
��@ A
return
�� 
workflowContext
�� *
;
��* +
}
�� 
}
�� 
if
�� 
(
�� 
workflowContext
�� 
.
��  
Status
��  &
!=
��' )
WorkflowStatus
��* 8
.
��8 9
Finished
��9 A
||
��B D
!
��E F
workflowType
��F R
.
��R S%
DeleteFinishedWorkflows
��S j
)
��j k
{
�� 
await
�� 
PersistAsync
�� "
(
��" #
workflowContext
��# 2
)
��2 3
;
��3 4
}
�� 
return
�� 
workflowContext
�� "
;
��" #
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� %
<
��% &
ActivityRecord
��& 4
>
��4 5
>
��5 6"
ExecuteWorkflowAsync
��7 K
(
��K L&
WorkflowExecutionContext
��L d
workflowContext
��e t
,
��t u
ActivityRecord��v �
activity��� �
)��� �
{
�� 	
var
�� 
workflowType
�� 
=
�� 
workflowContext
�� .
.
��. /
WorkflowType
��/ ;
;
��; <
var
�� 
	scheduled
�� 
=
�� 
new
�� 
Stack
��  %
<
��% &
ActivityRecord
��& 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
var
�� 
blocking
�� 
=
�� 
new
�� 
List
�� #
<
��# $
ActivityRecord
��$ 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6
var
�� 

isResuming
�� 
=
�� 
workflowContext
�� ,
.
��, -
Status
��- 3
==
��4 6
WorkflowStatus
��7 E
.
��E F
Resuming
��F N
;
��N O
var
�� 
isFirstPass
�� 
=
�� 
true
�� "
;
��" #
workflowContext
�� 
.
�� 
Status
�� "
=
��# $
WorkflowStatus
��% 3
.
��3 4
	Executing
��4 =
;
��= >
	scheduled
�� 
.
�� 
Push
�� 
(
�� 
activity
�� #
)
��# $
;
��$ %
while
�� 
(
�� 
	scheduled
�� 
.
�� 
Count
�� "
>
��# $
$num
��% &
)
��& '
{
�� 
activity
�� 
=
�� 
	scheduled
�� $
.
��$ %
Pop
��% (
(
��( )
)
��) *
;
��* +
var
�� 
activityContext
�� #
=
��$ %
workflowContext
��& 5
.
��5 6
GetActivity
��6 A
(
��A B
activity
��B J
.
��J K

ActivityId
��K U
)
��U V
;
��V W
var
�� 
cancellationToken
�� %
=
��& '
new
��( +
CancellationToken
��, =
(
��= >
)
��> ?
;
��? @
await
�� #
InvokeActivitiesAsync
�� +
(
��+ ,
workflowContext
��, ;
,
��; <
x
��= >
=>
��? A
x
��B C
.
��C D
Activity
��D L
.
��L M&
OnActivityExecutingAsync
��M e
(
��e f
workflowContext
��f u
,
��u v
activityContext��w �
,��� �!
cancellationToken��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
cancellationToken
�� %
.
��% &%
IsCancellationRequested
��& =
)
��= >
{
�� 
workflowContext
�� #
.
��# $
Status
��$ *
=
��+ ,
WorkflowStatus
��- ;
.
��; <
Aborted
��< C
;
��C D
break
�� 
;
�� 
}
�� 
var
�� 
outcomes
�� 
=
�� 

Enumerable
�� )
.
��) *
Empty
��* /
<
��/ 0
string
��0 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
try
�� 
{
�� %
ActivityExecutionResult
�� +
result
��, 2
;
��2 3
if
�� 
(
�� 
!
�� 

isResuming
�� #
)
��# $
{
�� 
result
�� 
=
��  
await
��! &
activityContext
��' 6
.
��6 7
Activity
��7 ?
.
��? @
ExecuteAsync
��@ L
(
��L M
workflowContext
��M \
,
��\ ]
activityContext
��^ m
)
��m n
;
��n o
}
�� 
else
�� 
{
�� 
result
�� 
=
��  
await
��! &
activityContext
��' 6
.
��6 7
Activity
��7 ?
.
��? @
ResumeAsync
��@ K
(
��K L
workflowContext
��L [
,
��[ \
activityContext
��] l
)
��l m
;
��m n

isResuming
�� "
=
��# $
false
��% *
;
��* +
}
�� 
if
�� 
(
�� 
result
�� 
.
�� 
IsHalted
�� '
)
��' (
{
�� 
if
�� 
(
�� 
isFirstPass
�� '
)
��' (
{
�� 
result
�� "
=
��# $
await
��% *
activityContext
��+ :
.
��: ;
Activity
��; C
.
��C D
ResumeAsync
��D O
(
��O P
workflowContext
��P _
,
��_ `
activityContext
��a p
)
��p q
;
��q r
isFirstPass
�� '
=
��( )
false
��* /
;
��/ 0
outcomes
�� $
=
��% &
result
��' -
.
��- .
Outcomes
��. 6
;
��6 7
if
�� 
(
��  
result
��  &
.
��& '
IsHalted
��' /
)
��/ 0
{
�� 
blocking
��  (
.
��( )
Add
��) ,
(
��, -
activity
��- 5
)
��5 6
;
��6 7
}
�� 
}
�� 
else
�� 
{
�� 
blocking
�� $
.
��$ %
Add
��% (
(
��( )
activity
��) 1
)
��1 2
;
��2 3
continue
�� $
;
��$ %
}
�� 
}
�� 
else
�� 
{
�� 
outcomes
��  
=
��! "
result
��# )
.
��) *
Outcomes
��* 2
;
��2 3
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
ex
��% '
,
��' (
$str��) �
,��� �
workflowType��� �
.��� �
Id��� �
,��� �
activityContext��� �
.��� �
ActivityRecord��� �
.��� �

ActivityId��� �
,��� �
activityContext��� �
.��� �
ActivityRecord��� �
.��� �
Name��� �
)��� �
;��� �
workflowContext
�� #
.
��# $
Fault
��$ )
(
��) *
ex
��* ,
,
��, -
activityContext
��. =
)
��= >
;
��> ?
return
�� 
blocking
�� #
.
��# $
Distinct
��$ ,
(
��, -
)
��- .
;
��. /
}
�� 
await
�� #
InvokeActivitiesAsync
�� +
(
��+ ,
workflowContext
��, ;
,
��; <
x
��= >
=>
��? A
x
��B C
.
��C D
Activity
��D L
.
��L M%
OnActivityExecutedAsync
��M d
(
��d e
workflowContext
��e t
,
��t u
activityContext��v �
)��� �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� 
outcome
�� $
in
��% '
outcomes
��( 0
)
��0 1
{
�� 
var
�� 

transition
�� "
=
��# $
workflowType
��% 1
.
��1 2
Transitions
��2 =
.
��= >
FirstOrDefault
��> L
(
��L M
x
��M N
=>
��O Q
x
��R S
.
��S T
SourceActivityId
��T d
==
��e g
activity
��h p
.
��p q

ActivityId
��q {
&&
��| ~
x�� �
.��� �!
SourceOutcomeName��� �
==��� �
outcome��� �
)��� �
;��� �
if
�� 
(
�� 

transition
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
var
�� !
destinationActivity
�� /
=
��0 1
workflowContext
��2 A
.
��A B
WorkflowType
��B N
.
��N O

Activities
��O Y
.
��Y Z
SingleOrDefault
��Z i
(
��i j
x
��j k
=>
��l n
x
��o p
.
��p q

ActivityId
��q {
==
��| ~

transition�� �
.��� �%
DestinationActivityId��� �
)��� �
;��� �
if
�� 
(
�� !
destinationActivity
�� /
!=
��0 2
activity
��3 ;
)
��; <
{
�� 
	scheduled
�� %
.
��% &
Push
��& *
(
��* +!
destinationActivity
��+ >
)
��> ?
;
��? @
}
�� 
}
�� 
}
�� 
isFirstPass
�� 
=
�� 
false
�� #
;
��# $
}
�� 
var
��  
blockingActivities
�� "
=
��# $
blocking
��% -
.
��- .
Distinct
��. 6
(
��6 7
)
��7 8
.
��8 9
ToList
��9 ?
(
��? @
)
��@ A
;
��A B
workflowContext
�� 
.
�� 
Status
�� "
=
��# $ 
blockingActivities
��% 7
.
��7 8
Any
��8 ;
(
��; <
)
��< =
||
��> @
workflowContext
��A P
.
��P Q
Workflow
��Q Y
.
��Y Z 
BlockingActivities
��Z l
.
��l m
Any
��m p
(
��p q
)
��q r
?
��s t
WorkflowStatus��u �
.��� �
Halted��� �
:��� �
WorkflowStatus��� �
.��� �
Finished��� �
;��� �
foreach
�� 
(
�� 
var
�� 
blockingActivity
�� )
in
��* , 
blockingActivities
��- ?
)
��? @
{
�� 
if
�� 
(
�� 
!
�� 
workflowContext
�� $
.
��$ %
Workflow
��% -
.
��- . 
BlockingActivities
��. @
.
��@ A
Any
��A D
(
��D E
x
��E F
=>
��G I
x
��J K
.
��K L

ActivityId
��L V
==
��W Y
blockingActivity
��Z j
.
��j k

ActivityId
��k u
)
��u v
)
��v w
{
�� 
workflowContext
�� #
.
��# $
Workflow
��$ ,
.
��, - 
BlockingActivities
��- ?
.
��? @
Add
��@ C
(
��C D
BlockingActivity
��D T
.
��T U
FromActivity
��U a
(
��a b
blockingActivity
��b r
)
��r s
)
��s t
;
��t u
}
�� 
}
�� 
return
��  
blockingActivities
�� %
;
��% &
}
�� 	
private
�� 
async
�� 
Task
�� 
PersistAsync
�� '
(
��' (&
WorkflowExecutionContext
��( @
workflowContext
��A P
)
��P Q
{
�� 	
var
�� 
state
�� 
=
�� 
workflowContext
�� '
.
��' (
Workflow
��( 0
.
��0 1
State
��1 6
.
��6 7
ToObject
��7 ?
<
��? @
WorkflowState
��@ M
>
��M N
(
��N O
)
��O P
;
��P Q
state
�� 
.
�� 
Input
�� 
=
�� 
await
�� 
SerializeAsync
��  .
(
��. /
workflowContext
��/ >
.
��> ?
Input
��? D
)
��D E
;
��E F
state
�� 
.
�� 
Output
�� 
=
�� 
await
��  
SerializeAsync
��! /
(
��/ 0
workflowContext
��0 ?
.
��? @
Output
��@ F
)
��F G
;
��G H
state
�� 
.
�� 

Properties
�� 
=
�� 
await
�� $
SerializeAsync
��% 3
(
��3 4
workflowContext
��4 C
.
��C D

Properties
��D N
)
��N O
;
��O P
state
�� 
.
�� 

LastResult
�� 
=
�� 
await
�� $
SerializeAsync
��% 3
(
��3 4
workflowContext
��4 C
.
��C D

LastResult
��D N
)
��N O
;
��O P
state
�� 
.
��  
ExecutedActivities
�� $
=
��% &
workflowContext
��' 6
.
��6 7 
ExecutedActivities
��7 I
.
��I J
ToList
��J P
(
��P Q
)
��Q R
;
��R S
state
�� 
.
�� 
ActivityStates
��  
=
��! "
workflowContext
��# 2
.
��2 3

Activities
��3 =
.
��= >
ToDictionary
��> J
(
��J K
x
��K L
=>
��M O
x
��P Q
.
��Q R
Key
��R U
,
��U V
x
��W X
=>
��Y [
x
��\ ]
.
��] ^
Value
��^ c
.
��c d
Activity
��d l
.
��l m

Properties
��m w
)
��w x
;
��x y
workflowContext
�� 
.
�� 
Workflow
�� $
.
��$ %
State
��% *
=
��+ ,
JObject
��- 4
.
��4 5

FromObject
��5 ?
(
��? @
state
��@ E
)
��E F
;
��F G
await
�� 
_workflowStore
��  
.
��  !
	SaveAsync
��! *
(
��* +
workflowContext
��+ :
.
��: ;
Workflow
��; C
)
��C D
;
��D E
}
�� 	
private
�� 
Task
�� #
InvokeActivitiesAsync
�� *
(
��* +&
WorkflowExecutionContext
��+ C
workflowContext
��D S
,
��S T
Func
��U Y
<
��Y Z
ActivityContext
��Z i
,
��i j
Task
��k o
>
��o p
action
��q w
)
��w x
{
�� 	
return
�� 
workflowContext
�� "
.
��" #

Activities
��# -
.
��- .
Values
��. 4
.
��4 5
InvokeAsync
��5 @
(
��@ A
action
��A G
,
��G H
_logger
��I P
)
��P Q
;
��Q R
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
IDictionary
�� &
<
��& '
string
��' -
,
��- .
object
��/ 5
>
��5 6
>
��6 7
SerializeAsync
��8 F
(
��F G
IDictionary
��G R
<
��R S
string
��S Y
,
��Y Z
object
��[ a
>
��a b

dictionary
��c m
)
��m n
{
�� 	
var
�� 
copy
�� 
=
�� 
new
�� 

Dictionary
�� %
<
��% &
string
��& ,
,
��, -
object
��. 4
>
��4 5
(
��5 6

dictionary
��6 @
.
��@ A
Count
��A F
)
��F G
;
��G H
foreach
�� 
(
�� 
var
�� 
item
�� 
in
��  

dictionary
��! +
)
��+ ,
{
�� 
copy
�� 
[
�� 
item
�� 
.
�� 
Key
�� 
]
�� 
=
��  
await
��! &
SerializeAsync
��' 5
(
��5 6
item
��6 :
.
��: ;
Value
��; @
)
��@ A
;
��A B
}
�� 
return
�� 
copy
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
IDictionary
�� &
<
��& '
string
��' -
,
��- .
object
��/ 5
>
��5 6
>
��6 7
DeserializeAsync
��8 H
(
��H I
IDictionary
��I T
<
��T U
string
��U [
,
��[ \
object
��] c
>
��c d

dictionary
��e o
)
��o p
{
�� 	
var
�� 
copy
�� 
=
�� 
new
�� 

Dictionary
�� %
<
��% &
string
��& ,
,
��, -
object
��. 4
>
��4 5
(
��5 6

dictionary
��6 @
.
��@ A
Count
��A F
)
��F G
;
��G H
foreach
�� 
(
�� 
var
�� 
item
�� 
in
��  

dictionary
��! +
)
��+ ,
{
�� 
copy
�� 
[
�� 
item
�� 
.
�� 
Key
�� 
]
�� 
=
��  
await
��! &
DeserializeAsync
��' 7
(
��7 8
item
��8 <
.
��< =
Value
��= B
)
��B C
;
��C D
}
�� 
return
�� 
copy
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
object
�� !
>
��! "
SerializeAsync
��# 1
(
��1 2
object
��2 8
value
��9 >
)
��> ?
{
�� 	
var
�� 
context
�� 
=
�� 
new
�� +
SerializeWorkflowValueContext
�� ;
(
��; <
value
��< A
)
��A B
;
��B C
await
�� '
_workflowValueSerializers
�� +
.
��+ ,
Resolve
��, 3
(
��3 4
)
��4 5
.
��5 6
InvokeAsync
��6 A
(
��A B
(
��B C
s
��C D
,
��D E
context
��F M
)
��M N
=>
��O Q
s
��R S
.
��S T!
SerializeValueAsync
��T g
(
��g h
context
��h o
)
��o p
,
��p q
context
��r y
,
��y z
_logger��{ �
)��� �
;��� �
return
�� 
context
�� 
.
�� 
Output
�� !
;
��! "
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
object
�� !
>
��! "
DeserializeAsync
��# 3
(
��3 4
object
��4 :
value
��; @
)
��@ A
{
�� 	
var
�� 
context
�� 
=
�� 
new
�� +
SerializeWorkflowValueContext
�� ;
(
��; <
value
��< A
)
��A B
;
��B C
await
�� '
_workflowValueSerializers
�� +
.
��+ ,
Resolve
��, 3
(
��3 4
)
��4 5
.
��5 6
InvokeAsync
��6 A
(
��A B
(
��B C
s
��C D
,
��D E
context
��F M
)
��M N
=>
��O Q
s
��R S
.
��S T#
DeserializeValueAsync
��T i
(
��i j
context
��j q
)
��q r
,
��r s
context
��t {
,
��{ |
_logger��} �
)��� �
;��� �
return
�� 
context
�� 
.
�� 
Output
�� !
;
��! "
}
�� 	
}
�� 
}�� �z
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowStore.cs
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
FirstOrDefaultAsync	!!} �
(
!!� �
)
!!� �
)
!!� �
!=
!!� �
null
!!� �
;
!!� �
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
FirstOrDefaultAsync	BBn �
(
BB� �
)
BB� �
;
BB� �
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
isAlwaysCorrelated	bbz �
=
bb� �
false
bb� �
)
bb� �
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
correlationId	lls �
??
ll� �
$str
ll� �
)
ll� �
)
ll� �
;
ll� �
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
�� 
}
�� 	
public
�� 
Task
�� 
DeleteAsync
�� 
(
��  
Workflow
��  (
workflow
��) 1
)
��1 2
{
�� 	
_session
�� 
.
�� 
Delete
�� 
(
�� 
workflow
�� $
)
��$ %
;
��% &
var
�� 
context
�� 
=
�� 
new
�� $
WorkflowDeletedContext
�� 4
(
��4 5
workflow
��5 =
)
��= >
;
��> ?
return
�� 
	_handlers
�� 
.
�� 
InvokeAsync
�� (
(
��( )
(
��) *
handler
��* 1
,
��1 2
context
��3 :
)
��: ;
=>
��< >
handler
��? F
.
��F G
DeletedAsync
��G S
(
��S T
context
��T [
)
��[ \
,
��\ ]
context
��^ e
,
��e f
_logger
��g n
)
��n o
;
��o p
}
�� 	
private
�� 
IQuery
�� 
<
�� 
Workflow
�� 
,
��  
WorkflowIndex
��! .
>
��. /$
FilterByWorkflowTypeId
��0 F
(
��F G
IQuery
��G M
<
��M N
Workflow
��N V
,
��V W
WorkflowIndex
��X e
>
��e f
query
��g l
,
��l m
string
��n t
workflowTypeId��u �
)��� �
{
�� 	
if
�� 
(
�� 
workflowTypeId
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Where
�� #
(
��# $
x
��$ %
=>
��& (
x
��) *
.
��* +
WorkflowTypeId
��+ 9
==
��: <
workflowTypeId
��= K
)
��K L
;
��L M
}
�� 
return
�� 
query
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowTypeIdGenerator.cs
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
} �>
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Services\WorkflowTypeStore.cs
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
logger	 �
)
� �
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
(	%% �
)
%%� �
;
%%� �
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
.	JJ �
	ListAsync
JJ� �
(
JJ� �
)
JJ� �
;
JJ� �
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
}WW �k
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Startup.cs
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
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\Startup.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\TimerBackgroundTask.cs
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
true	~ �
)
� �
;
� �
} 	
} 
} �+
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\TimerEvent.cs
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
activityContext	55{ �
)
55� �
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
activityContext	::q �
)
::� �
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
}RR �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\TimerEventDisplayDriver.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\Timers\TimerEventViewModel.cs
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
 �$
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\Activities\UserTaskEvent.cs
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
activityContext	**{ �
)
**� �
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
activityContext	//q �
)
//� �
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
}:: �[
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\Drivers\UserTaskEventContentDriver.cs
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
	userRoles	qq{ �
)
qq� �
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
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\Drivers\UserTaskEventDisplayDriver.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\Startup.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\ViewModels\UserTaskEventContentViewModel.cs
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
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\UserTasks\ViewModels\UserTaskEventViewModel.cs
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
 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewComponents\SelectWorkflowTypeViewComponent.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ActivityEditViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ActivityViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\CommitTransactionTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ConnectionViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\CorrelateTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\EditActivityMetadataViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ForEachTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ForkTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ForLoopTaskViewModel.cs
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
 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\IfElseTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\JoinTaskViewModel.cs
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
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\LogTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\NotifyTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\ScriptTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\SelectWorkflowTypeViewModel.cs
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
selectedWorkflowTypeId	w �
)
� �
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
}## �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\SetOutputTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\SetPropertyTaskViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\SignalEventViewModel.cs
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
 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WhileLoopTaskViewModel.cs
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
 � 
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowIndexViewModel.cs
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
}EE �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowTypeIndexViewModel.cs
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
}33 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowTypePropertiesViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowTypeUpdateModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowTypeViewModel.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Workflows\ViewModels\WorkflowViewModel.cs
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