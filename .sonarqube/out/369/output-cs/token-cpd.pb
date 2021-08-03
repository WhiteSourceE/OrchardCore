˙
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\AllConditionDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Rules

 
.

 
Drivers

 #
{ 
public 

class %
AllConditionDisplayDriver *
:+ ,
DisplayDriver- :
<: ;
	Condition; D
,D E
AllConditionGroupF W
>W X
{ 
public 
override 
IDisplayResult &
Display' .
(. /
AllConditionGroup/ @
	conditionA J
)J K
{ 	
return 
Combine 
( 
View 
( 
$str 6
,6 7
	condition8 A
)A B
.B C
LocationC K
(K L
$strL U
,U V
$strW `
)` a
,a b
View 
( 
$str 8
,8 9
	condition: C
)C D
.D E
LocationE M
(M N
$strN Y
,Y Z
$str[ d
)d e
,e f

Initialize 
< #
ConditionGroupViewModel 6
>6 7
(7 8
$str8 W
,W X
mY Z
=>[ ]
{ 
m 
. 
Entries !
=" #
	condition$ -
.- .

Conditions. 8
.8 9
Select9 ?
(? @
x@ A
=>B D
newE H
ConditionEntryI W
{X Y
	ConditionZ c
=d e
xf g
}g h
)h i
.i j
ToArrayj q
(q r
)r s
;s t
m 
. 
	Condition #
=$ %
	condition& /
;/ 0
} 
) 
. 
Location 
(  
$str  )
,) *
$str+ 4
)4 5
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
AllConditionGroup, =
	condition> G
)G H
{ 	
return 

Initialize 
< !
AllConditionViewModel 3
>3 4
(4 5
$str5 O
,O P
mQ R
=>S U
{ 
m   
.   
DisplayText   
=   
	condition    )
.  ) *
DisplayText  * 5
;  5 6
m!! 
.!! 
	Condition!! 
=!! 
	condition!! '
;!!' (
}"" 
)"" 
."" 
Location"" 
("" 
$str"" !
)""! "
;""" #
}## 	
public%% 
override%% 
async%% 
Task%% "
<%%" #
IDisplayResult%%# 1
>%%1 2
UpdateAsync%%3 >
(%%> ?
AllConditionGroup%%? P
	condition%%Q Z
,%%Z [
IUpdateModel%%\ h
updater%%i p
)%%p q
{&& 	
await'' 
updater'' 
.'' 
TryUpdateModelAsync'' -
(''- .
	condition''. 7
,''7 8
Prefix''9 ?
,''? @
x''A B
=>''C E
x''F G
.''G H
DisplayText''H S
)''S T
;''T U
return)) 
Edit)) 
()) 
	condition)) !
)))! "
;))" #
}** 	
}++ 
},, ˙
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\AnyConditionDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Rules

 
.

 
Drivers

 #
{ 
public 

class %
AnyConditionDisplayDriver *
:+ ,
DisplayDriver- :
<: ;
	Condition; D
,D E
AnyConditionGroupF W
>W X
{ 
public 
override 
IDisplayResult &
Display' .
(. /
AnyConditionGroup/ @
	conditionA J
)J K
{ 	
return 
Combine 
( 
View 
( 
$str 6
,6 7
	condition8 A
)A B
.B C
LocationC K
(K L
$strL U
,U V
$strW `
)` a
,a b
View 
( 
$str 8
,8 9
	condition: C
)C D
.D E
LocationE M
(M N
$strN Y
,Y Z
$str[ d
)d e
,e f

Initialize 
< #
ConditionGroupViewModel 6
>6 7
(7 8
$str8 W
,W X
mY Z
=>[ ]
{ 
m 
. 
Entries !
=" #
	condition$ -
.- .

Conditions. 8
.8 9
Select9 ?
(? @
x@ A
=>B D
newE H
ConditionEntryI W
{X Y
	ConditionZ c
=d e
xf g
}g h
)h i
.i j
ToArrayj q
(q r
)r s
;s t
m 
. 
	Condition #
=$ %
	condition& /
;/ 0
} 
) 
. 
Location 
(  
$str  )
,) *
$str+ 4
)4 5
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
AnyConditionGroup, =
	condition> G
)G H
{ 	
return 

Initialize 
< !
AnyConditionViewModel 3
>3 4
(4 5
$str5 O
,O P
mQ R
=>S U
{ 
m   
.   
DisplayText   
=   
	condition    )
.  ) *
DisplayText  * 5
;  5 6
m!! 
.!! 
	Condition!! 
=!! 
	condition!! '
;!!' (
}"" 
)"" 
."" 
Location"" 
("" 
$str"" !
)""! "
;""" #
}## 	
public%% 
override%% 
async%% 
Task%% "
<%%" #
IDisplayResult%%# 1
>%%1 2
UpdateAsync%%3 >
(%%> ?
AnyConditionGroup%%? P
	condition%%Q Z
,%%Z [
IUpdateModel%%\ h
updater%%i p
)%%p q
{&& 	
await'' 
updater'' 
.'' 
TryUpdateModelAsync'' -
(''- .
	condition''. 7
,''7 8
Prefix''9 ?
,''? @
x''A B
=>''C E
x''F G
.''G H
DisplayText''H S
)''S T
;''T U
return)) 
Edit)) 
()) 
	condition)) !
)))! "
;))" #
}** 	
}++ 
},, ˘
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\BooleanConditionDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Rules

 
.

 
Drivers

 #
{ 
public 

class )
BooleanConditionDisplayDriver .
:/ 0
DisplayDriver1 >
<> ?
	Condition? H
,H I
BooleanConditionJ Z
>Z [
{ 
public 
override 
IDisplayResult &
Display' .
(. /
BooleanCondition/ ?
	condition@ I
)I J
{ 	
return 
Combine 
( 
View 
( 
$str :
,: ;
	condition< E
)E F
.F G
LocationG O
(O P
$strP Y
,Y Z
$str[ d
)d e
,e f
View 
( 
$str <
,< =
	condition> G
)G H
.H I
LocationI Q
(Q R
$strR ]
,] ^
$str_ h
)h i
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
BooleanCondition, <
	condition= F
)F G
{ 	
return 

Initialize 
< %
BooleanConditionViewModel 7
>7 8
(8 9
$str9 W
,W X
mY Z
=>[ ]
{ 
m 
. 
Value 
= 
	condition #
.# $
Value$ )
;) *
m 
. 
	Condition 
= 
	condition '
;' (
} 
) 
. 
Location 
( 
$str !
)! "
;" #
} 	
public   
override   
async   
Task   "
<  " #
IDisplayResult  # 1
>  1 2
UpdateAsync  3 >
(  > ?
BooleanCondition  ? O
	condition  P Y
,  Y Z
IUpdateModel  [ g
updater  h o
)  o p
{!! 	
await"" 
updater"" 
."" 
TryUpdateModelAsync"" -
(""- .
	condition"". 7
,""7 8
Prefix""9 ?
,""? @
x""A B
=>""C E
x""F G
.""G H
Value""H M
)""M N
;""N O
return$$ 
Edit$$ 
($$ 
	condition$$ !
)$$! "
;$$" #
}%% 	
}&& 
}'' ∑'
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\ContentTypeConditionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Drivers #
{ 
public 

class -
!ContentTypeConditionDisplayDriver 2
:3 4
DisplayDriver5 B
<B C
	ConditionC L
,L M 
ContentTypeConditionN b
>b c
{ 
private 
readonly $
ConditionOperatorOptions 1
_options2 :
;: ;
public -
!ContentTypeConditionDisplayDriver 0
(0 1
IOptions1 9
<9 :$
ConditionOperatorOptions: R
>R S
optionsT [
)[ \
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
override 
IDisplayResult &
Display' .
(. / 
ContentTypeCondition/ C
	conditionD M
)M N
{ 	
return 
Combine 
( 
View 
( 
$str >
,> ?
	condition@ I
)I J
.J K
LocationK S
(S T
$strT ]
,] ^
$str_ h
)h i
,i j
View 
( 
$str @
,@ A
	conditionB K
)K L
.L M
LocationM U
(U V
$strV a
,a b
$strc l
)l m
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ , 
ContentTypeCondition, @
	conditionA J
)J K
{   	
return!! 

Initialize!! 
<!! )
ContentTypeConditionViewModel!! ;
>!!; <
(!!< =
$str!!= _
,!!_ `
m!!a b
=>!!c e
{"" 
if## 
(## 
	condition## 
.## 
	Operation## '
!=##( *
null##+ /
&&##0 2
_options##3 ;
.##; <)
ConditionOperatorOptionByType##< Y
.##Y Z
TryGetValue##Z e
(##e f
	condition##f o
.##o p
	Operation##p y
.##y z
GetType	##z Å
(
##Å Ç
)
##Ç É
,
##É Ñ
out
##Ö à
var
##â å
option
##ç ì
)
##ì î
)
##î ï
{$$ 
m%% 
.%% 
SelectedOperation%% '
=%%( )
option%%* 0
.%%0 1
Factory%%1 8
.%%8 9
Name%%9 =
;%%= >
}&& 
m'' 
.'' 
Value'' 
='' 
	condition'' #
.''# $
Value''$ )
;'') *
m(( 
.(( 
	Condition(( 
=(( 
	condition(( '
;((' (
})) 
))) 
.)) 
Location)) 
()) 
$str)) !
)))! "
;))" #
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," #
IDisplayResult,,# 1
>,,1 2
UpdateAsync,,3 >
(,,> ? 
ContentTypeCondition,,? S
	condition,,T ]
,,,] ^
IUpdateModel,,_ k
updater,,l s
),,s t
{-- 	
var.. 
model.. 
=.. 
new.. )
ContentTypeConditionViewModel.. 9
(..9 :
)..: ;
;..; <
if// 
(// 
await// 
updater// 
.// 
TryUpdateModelAsync// 1
(//1 2
model//2 7
,//7 8
Prefix//9 ?
)//? @
)//@ A
{00 
	condition11 
.11 
Value11 
=11  !
model11" '
.11' (
Value11( -
;11- .
if22 
(22 
!22 
String22 
.22 
IsNullOrEmpty22 )
(22) *
model22* /
.22/ 0
SelectedOperation220 A
)22A B
&&22C E
_options22F N
.22N O
	Factories22O X
.22X Y
TryGetValue22Y d
(22d e
model22e j
.22j k
SelectedOperation22k |
,22| }
out	22~ Å
var
22Ç Ö
factory
22Ü ç
)
22ç é
)
22é è
{33 
	condition44 
.44 
	Operation44 '
=44( )
factory44* 1
.441 2
Create442 8
(448 9
)449 :
as44; =
StringOperator44> L
;44L M
}55 
}66 
return88 
Edit88 
(88 
	condition88 !
)88! "
;88" #
}99 	
}:: 
};; ä$
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\ContentTypeConditionEvaluatorDriver.cs
	namespace

 	
OrchardCore


 
.

 
Rules

 
.

 
Drivers

 #
{ 
public 

class /
#ContentTypeConditionEvaluatorDriver 4
:5 6 
ContentDisplayDriver7 K
,K L
IConditionEvaluatorM `
{ 
private 
static 
	ValueTask  
<  !
bool! %
>% &
True' +
=, -
new. 1
	ValueTask2 ;
<; <
bool< @
>@ A
(A B
trueB F
)F G
;G H
private 
static 
	ValueTask  
<  !
bool! %
>% &
False' ,
=- .
new/ 2
	ValueTask3 <
<< =
bool= A
>A B
(B C
falseC H
)H I
;I J
private 
readonly &
IConditionOperatorResolver 3
_operatorResolver4 E
;E F
private 
readonly 
HashSet  
<  !
string! '
>' (
_contentTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
public /
#ContentTypeConditionEvaluatorDriver 2
(2 3&
IConditionOperatorResolver3 M
operatorResolverN ^
)^ _
{ 	
_operatorResolver 
= 
operatorResolver  0
;0 1
} 	
public 
override 
Task 
< 
IDisplayResult +
>+ ,
DisplayAsync- 9
(9 :
ContentItem: E
contentItemF Q
,Q R
BuildDisplayContextS f
contextg n
)n o
{ 	
if!! 
(!! 
context!! 
.!! 
DisplayType!! #
==!!$ &
$str!!' /
&&!!0 2
("" 
context"" 
."" 
Shape"" 
."" 

Properties"" )
."") *
TryGetValue""* 5
(""5 6
nameof""6 <
(""< =
ContentTypeSettings""= P
.""P Q

Stereotype""Q [
)""[ \
,""\ ]
out""^ a
var""b e

stereotype""f p
)""p q
&&""r t

stereotype## 
==## 
null## "
)##" #
)### $
{$$ 
_contentTypes%% 
.%% 
Add%% !
(%%! "
contentItem%%" -
.%%- .
ContentType%%. 9
)%%9 :
;%%: ;
}&& 
return(( 
Task(( 
.(( 

FromResult(( "
<((" #
IDisplayResult((# 1
>((1 2
(((2 3
null((3 7
)((7 8
;((8 9
})) 	
public++ 
	ValueTask++ 
<++ 
bool++ 
>++ 
EvaluateAsync++ ,
(++, -
	Condition++- 6
	condition++7 @
)++@ A
=>,, 
EvaluateAsync,, 
(,, 
	condition,, &
as,,' ) 
ContentTypeCondition,,* >
),,> ?
;,,? @
private.. 
	ValueTask.. 
<.. 
bool.. 
>.. 
EvaluateAsync..  -
(..- . 
ContentTypeCondition... B
	condition..C L
)..L M
{// 	
var00 
operatorComparer00  
=00! "
_operatorResolver00# 4
.004 5
GetOperatorComparer005 H
(00H I
	condition00I R
.00R S
	Operation00S \
)00\ ]
;00] ^
foreach11 
(11 
var11 
contentType11 $
in11% '
_contentTypes11( 5
)115 6
{22 
if33 
(33 
operatorComparer33 $
.33$ %
Compare33% ,
(33, -
	condition33- 6
.336 7
	Operation337 @
,33@ A
contentType33B M
,33M N
	condition33O X
.33X Y
Value33Y ^
)33^ _
)33_ `
{44 
return55 
True55 
;55  
}66 
}77 
return99 
False99 
;99 
}:: 	
};; 
}<< ´(
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\CultureConditionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Drivers #
{ 
public 

class )
CultureConditionDisplayDriver .
:/ 0
DisplayDriver1 >
<> ?
	Condition? H
,H I
CultureConditionJ Z
>Z [
{ 
private 
readonly $
ConditionOperatorOptions 1
_options2 :
;: ;
public )
CultureConditionDisplayDriver ,
(, -
IOptions- 5
<5 6$
ConditionOperatorOptions6 N
>N O
optionsP W
)W X
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
override 
IDisplayResult &
Display' .
(. /
CultureCondition/ ?
	condition@ I
)I J
{ 	
return 
Combine 
( 
View 
( 
$str :
,: ;
	condition< E
)E F
.F G
LocationG O
(O P
$strP Y
,Y Z
$str[ d
)d e
,e f
View 
( 
$str <
,< =
	condition> G
)G H
.H I
LocationI Q
(Q R
$strR ]
,] ^
$str_ h
)h i
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
CultureCondition, <
	condition= F
)F G
{   	
return!! 

Initialize!! 
<!! %
CultureConditionViewModel!! 7
>!!7 8
(!!8 9
$str!!9 W
,!!W X
m!!Y Z
=>!![ ]
{"" 
if## 
(## 
	condition## 
.## 
	Operation## '
!=##( *
null##+ /
&&##0 2
_options##3 ;
.##; <)
ConditionOperatorOptionByType##< Y
.##Y Z
TryGetValue##Z e
(##e f
	condition##f o
.##o p
	Operation##p y
.##y z
GetType	##z Å
(
##Å Ç
)
##Ç É
,
##É Ñ
out
##Ö à
var
##â å
option
##ç ì
)
##ì î
)
##î ï
{$$ 
m%% 
.%% 
SelectedOperation%% '
=%%( )
option%%* 0
.%%0 1
Factory%%1 8
.%%8 9
Name%%9 =
;%%= >
}&& 
m'' 
.'' 
Value'' 
='' 
	condition'' #
.''# $
Value''$ )
;'') *
m(( 
.(( 
	Condition(( 
=(( 
	condition(( '
;((' (
})) 
))) 
.)) 
Location)) 
()) 
$str)) !
)))! "
;))" #
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," #
IDisplayResult,,# 1
>,,1 2
UpdateAsync,,3 >
(,,> ?
CultureCondition,,? O
	condition,,P Y
,,,Y Z
IUpdateModel,,[ g
updater,,h o
),,o p
{-- 	
var.. 
model.. 
=.. 
new.. %
CultureConditionViewModel.. 5
(..5 6
)..6 7
;..7 8
if// 
(// 
await// 
updater// 
.// 
TryUpdateModelAsync// 1
(//1 2
model//2 7
,//7 8
Prefix//9 ?
)//? @
)//@ A
{00 
	condition11 
.11 
Value11 
=11  !
model11" '
.11' (
Value11( -
;11- .
if22 
(22 
!22 
String22 
.22 
IsNullOrEmpty22 )
(22) *
model22* /
.22/ 0
SelectedOperation220 A
)22A B
&&22C E
_options22F N
.22N O
	Factories22O X
.22X Y
TryGetValue22Y d
(22d e
model22e j
.22j k
SelectedOperation22k |
,22| }
out	22~ Å
var
22Ç Ö
factory
22Ü ç
)
22ç é
)
22é è
{33 
	condition44 
.44 
	Operation44 '
=44( )
factory44* 1
.441 2
Create442 8
(448 9
)449 :
as44; =
StringOperator44> L
;44L M
	condition66 
.66 
	Operation66 '
.66' (
CaseSensitive66( 5
=666 7
false668 =
;66= >
}77 
}88 
return:: 
Edit:: 
(:: 
	condition:: !
)::! "
;::" #
};; 	
}<< 
}== Ä
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\HomepageConditionDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Rules

 
.

 
Drivers

 #
{ 
public 

class *
HomepageConditionDisplayDriver /
:0 1
DisplayDriver2 ?
<? @
	Condition@ I
,I J
HomepageConditionK \
>\ ]
{ 
public 
override 
IDisplayResult &
Display' .
(. /
HomepageCondition/ @
	conditionA J
)J K
{ 	
return 
Combine 
( 
View 
( 
$str ;
,; <
	condition= F
)F G
.G H
LocationH P
(P Q
$strQ Z
,Z [
$str\ e
)e f
,f g
View 
( 
$str =
,= >
	condition? H
)H I
.I J
LocationJ R
(R S
$strS ^
,^ _
$str` i
)i j
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
HomepageCondition, =
	condition> G
)G H
{ 	
return 

Initialize 
< &
HomepageConditionViewModel 8
>8 9
(9 :
$str: Y
,Y Z
m[ \
=>] _
{ 
m 
. 
Value 
= 
	condition #
.# $
Value$ )
;) *
m 
. 
	Condition 
= 
	condition '
;' (
} 
) 
. 
Location 
( 
$str !
)! "
;" #
} 	
public   
override   
async   
Task   "
<  " #
IDisplayResult  # 1
>  1 2
UpdateAsync  3 >
(  > ?
HomepageCondition  ? P
	condition  Q Z
,  Z [
IUpdateModel  \ h
updater  i p
)  p q
{!! 	
await"" 
updater"" 
."" 
TryUpdateModelAsync"" -
(""- .
	condition"". 7
,""7 8
Prefix""9 ?
,""? @
x""A B
=>""C E
x""F G
.""G H
Value""H M
)""M N
;""N O
return$$ 
Edit$$ 
($$ 
	condition$$ !
)$$! "
;$$" #
}%% 	
}&& 
}'' —
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\IsAnonymousConditionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Drivers #
{ 
public 

class -
!IsAnonymousConditionDisplayDriver 2
:3 4
DisplayDriver5 B
<B C
	ConditionC L
,L M 
IsAnonymousConditionN b
>b c
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. / 
IsAnonymousCondition		/ C
	condition		D M
)		M N
{

 	
return 
Combine 
( 
View 
( 
$str >
,> ?
	condition@ I
)I J
.J K
LocationK S
(S T
$strT ]
,] ^
$str_ h
)h i
,i j
View 
( 
$str @
,@ A
	conditionB K
)K L
.L M
LocationM U
(U V
$strV a
,a b
$strc l
)l m
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ , 
IsAnonymousCondition, @
	conditionA J
)J K
{ 	
return 
View 
( 
$str :
,: ;
	condition< E
)E F
.F G
LocationG O
(O P
$strP Y
)Y Z
;Z [
} 	
} 
} Â
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\IsAuthenticatedConditionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Drivers #
{ 
public 

class 1
%IsAuthenticatedConditionDisplayDriver 6
:7 8
DisplayDriver9 F
<F G
	ConditionG P
,P Q$
IsAuthenticatedConditionR j
>j k
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /$
IsAuthenticatedCondition		/ G
	condition		H Q
)		Q R
{

 	
return 
Combine 
( 
View 
( 
$str B
,B C
	conditionD M
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
$str D
,D E
	conditionF O
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
(+ ,$
IsAuthenticatedCondition, D
	conditionE N
)N O
{ 	
return 
View 
( 
$str >
,> ?
	condition@ I
)I J
.J K
LocationK S
(S T
$strT ]
)] ^
;^ _
} 	
} 
} ·
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\JavascriptConditionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Drivers #
{ 
public 

class ,
 JavascriptConditionDisplayDriver 1
:2 3
DisplayDriver4 A
<A B
	ConditionB K
,K L
JavascriptConditionM `
>` a
{ 
private 
readonly $
ConditionOperatorOptions 1
_options2 :
;: ;
public ,
 JavascriptConditionDisplayDriver /
(/ 0
IOptions0 8
<8 9$
ConditionOperatorOptions9 Q
>Q R
optionsS Z
)Z [
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
override 
IDisplayResult &
Display' .
(. /
JavascriptCondition/ B
	conditionC L
)L M
{ 	
return 
Combine 
( 
View 
( 
$str =
,= >
	condition? H
)H I
.I J
LocationJ R
(R S
$strS \
,\ ]
$str^ g
)g h
,h i
View 
( 
$str ?
,? @
	conditionA J
)J K
.K L
LocationL T
(T U
$strU `
,` a
$strb k
)k l
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
JavascriptCondition, ?
	condition@ I
)I J
{   	
return!! 

Initialize!! 
<!! (
JavascriptConditionViewModel!! :
>!!: ;
(!!; <
$str!!< ]
,!!] ^
m!!_ `
=>!!a c
{"" 
m## 
.## 
Script## 
=## 
	condition## $
.##$ %
Script##% +
;##+ ,
m$$ 
.$$ 
	Condition$$ 
=$$ 
	condition$$ '
;$$' (
}%% 
)%% 
.%% 
Location%% 
(%% 
$str%% !
)%%! "
;%%" #
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IDisplayResult((# 1
>((1 2
UpdateAsync((3 >
(((> ?
JavascriptCondition((? R
	condition((S \
,((\ ]
IUpdateModel((^ j
updater((k r
)((r s
{)) 	
var** 
model** 
=** 
new** (
JavascriptConditionViewModel** 8
(**8 9
)**9 :
;**: ;
if++ 
(++ 
await++ 
updater++ 
.++ 
TryUpdateModelAsync++ 1
(++1 2
model++2 7
,++7 8
Prefix++9 ?
)++? @
)++@ A
{,, 
	condition.. 
... 
Script..  
=..! "
model..# (
...( )
Script..) /
;../ 0
}// 
return11 
Edit11 
(11 
	condition11 !
)11! "
;11" #
}22 	
}33 
}44 ê(
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\RoleConditionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Drivers #
{ 
public 

class &
RoleConditionDisplayDriver +
:, -
DisplayDriver. ;
<; <
	Condition< E
,E F
RoleConditionG T
>T U
{ 
private 
readonly $
ConditionOperatorOptions 1
_options2 :
;: ;
public &
RoleConditionDisplayDriver )
() *
IOptions* 2
<2 3$
ConditionOperatorOptions3 K
>K L
optionsM T
)T U
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
override 
IDisplayResult &
Display' .
(. /
RoleCondition/ <
	condition= F
)F G
{ 	
return 
Combine 
( 
View 
( 
$str 7
,7 8
	condition9 B
)B C
.C D
LocationD L
(L M
$strM V
,V W
$strX a
)a b
,b c
View 
( 
$str 9
,9 :
	condition; D
)D E
.E F
LocationF N
(N O
$strO Z
,Z [
$str\ e
)e f
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
RoleCondition, 9
	condition: C
)C D
{   	
return!! 

Initialize!! 
<!! "
RoleConditionViewModel!! 4
>!!4 5
(!!5 6
$str!!6 Q
,!!Q R
m!!S T
=>!!U W
{"" 
if## 
(## 
	condition## 
.## 
	Operation## '
!=##( *
null##+ /
&&##0 2
_options##3 ;
.##; <)
ConditionOperatorOptionByType##< Y
.##Y Z
TryGetValue##Z e
(##e f
	condition##f o
.##o p
	Operation##p y
.##y z
GetType	##z Å
(
##Å Ç
)
##Ç É
,
##É Ñ
out
##Ö à
var
##â å
option
##ç ì
)
##ì î
)
##î ï
{$$ 
m%% 
.%% 
SelectedOperation%% '
=%%( )
option%%* 0
.%%0 1
Factory%%1 8
.%%8 9
Name%%9 =
;%%= >
}&& 
m'' 
.'' 
Value'' 
='' 
	condition'' #
.''# $
Value''$ )
;'') *
m(( 
.(( 
	Condition(( 
=(( 
	condition(( '
;((' (
})) 
))) 
.)) 
Location)) 
()) 
$str)) !
)))! "
;))" #
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," #
IDisplayResult,,# 1
>,,1 2
UpdateAsync,,3 >
(,,> ?
RoleCondition,,? L
	condition,,M V
,,,V W
IUpdateModel,,X d
updater,,e l
),,l m
{-- 	
var.. 
model.. 
=.. 
new.. "
RoleConditionViewModel.. 2
(..2 3
)..3 4
;..4 5
if// 
(// 
await// 
updater// 
.// 
TryUpdateModelAsync// 1
(//1 2
model//2 7
,//7 8
Prefix//9 ?
)//? @
)//@ A
{00 
	condition11 
.11 
Value11 
=11  !
model11" '
.11' (
Value11( -
;11- .
if22 
(22 
!22 
String22 
.22 
IsNullOrEmpty22 )
(22) *
model22* /
.22/ 0
SelectedOperation220 A
)22A B
&&22C E
_options22F N
.22N O
	Factories22O X
.22X Y
TryGetValue22Y d
(22d e
model22e j
.22j k
SelectedOperation22k |
,22| }
out	22~ Å
var
22Ç Ö
factory
22Ü ç
)
22ç é
)
22é è
{33 
	condition44 
.44 
	Operation44 '
=44( )
factory44* 1
.441 2
Create442 8
(448 9
)449 :
as44; =
StringOperator44> L
;44L M
	condition66 
.66 
	Operation66 '
.66' (
CaseSensitive66( 5
=666 7
false668 =
;66= >
}77 
}88 
return:: 
Edit:: 
(:: 
	condition:: !
)::! "
;::" #
};; 	
}<< 
}== ¥
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\RuleDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Drivers #
{ 
public 

class 
RuleDisplayDriver "
:# $
DisplayDriver% 2
<2 3
Rule3 7
>7 8
{		 
public

 
override

 
IDisplayResult

 &
Display

' .
(

. /
Rule

/ 3
rule

4 8
)

8 9
{ 	
return 
Combine 
( 
View 
( 
$str *
,* +
rule, 0
)0 1
.1 2
Location2 :
(: ;
$str; D
,D E
$strF O
)O P
,P Q

Initialize 
< #
ConditionGroupViewModel 2
>2 3
(3 4
$str4 S
,S T
mU V
=>W Y
{ 
m 
. 
Entries 
= 
rule  $
.$ %

Conditions% /
./ 0
Select0 6
(6 7
x7 8
=>9 ;
new< ?
ConditionEntry@ N
{O P
	ConditionQ Z
=[ \
x] ^
}^ _
)_ `
.` a
ToArraya h
(h i
)i j
;j k
m 
. 
	Condition 
=  !
rule" &
;& '
} 
) 
. 
Location 
( 
$str %
,% &
$str' 0
)0 1
) 
; 
} 	
} 
} á(
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Drivers\UrlConditionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Drivers #
{ 
public 

class %
UrlConditionDisplayDriver *
:+ ,
DisplayDriver- :
<: ;
	Condition; D
,D E
UrlConditionF R
>R S
{ 
private 
readonly $
ConditionOperatorOptions 1
_options2 :
;: ;
public %
UrlConditionDisplayDriver (
(( )
IOptions) 1
<1 2$
ConditionOperatorOptions2 J
>J K
optionsL S
)S T
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
override 
IDisplayResult &
Display' .
(. /
UrlCondition/ ;
	condition< E
)E F
{ 	
return 
Combine 
( 
View 
( 
$str 6
,6 7
	condition8 A
)A B
.B C
LocationC K
(K L
$strL U
,U V
$strW `
)` a
,a b
View 
( 
$str 8
,8 9
	condition: C
)C D
.D E
LocationE M
(M N
$strN Y
,Y Z
$str[ d
)d e
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
UrlCondition, 8
	condition9 B
)B C
{   	
return!! 

Initialize!! 
<!! !
UrlConditionViewModel!! 3
>!!3 4
(!!4 5
$str!!5 O
,!!O P
m!!Q R
=>!!S U
{"" 
if## 
(## 
	condition## 
.## 
	Operation## '
!=##( *
null##+ /
&&##0 2
_options##3 ;
.##; <)
ConditionOperatorOptionByType##< Y
.##Y Z
TryGetValue##Z e
(##e f
	condition##f o
.##o p
	Operation##p y
.##y z
GetType	##z Å
(
##Å Ç
)
##Ç É
,
##É Ñ
out
##Ö à
var
##â å
option
##ç ì
)
##ì î
)
##î ï
{$$ 
m%% 
.%% 
SelectedOperation%% '
=%%( )
option%%* 0
.%%0 1
Factory%%1 8
.%%8 9
Name%%9 =
;%%= >
}&& 
m'' 
.'' 
Value'' 
='' 
	condition'' #
.''# $
Value''$ )
;'') *
m(( 
.(( 
	Condition(( 
=(( 
	condition(( '
;((' (
})) 
))) 
.)) 
Location)) 
()) 
$str)) !
)))! "
;))" #
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," #
IDisplayResult,,# 1
>,,1 2
UpdateAsync,,3 >
(,,> ?
UrlCondition,,? K
	condition,,L U
,,,U V
IUpdateModel,,W c
updater,,d k
),,k l
{-- 	
var.. 
model.. 
=.. 
new.. !
UrlConditionViewModel.. 1
(..1 2
)..2 3
;..3 4
if// 
(// 
await// 
updater// 
.// 
TryUpdateModelAsync// 1
(//1 2
model//2 7
,//7 8
Prefix//9 ?
)//? @
)//@ A
{00 
	condition11 
.11 
Value11 
=11  !
model11" '
.11' (
Value11( -
;11- .
if22 
(22 
!22 
String22 
.22 
IsNullOrEmpty22 )
(22) *
model22* /
.22/ 0
SelectedOperation220 A
)22A B
&&22C E
_options22F N
.22N O
	Factories22O X
.22X Y
TryGetValue22Y d
(22d e
model22e j
.22j k
SelectedOperation22k |
,22| }
out	22~ Å
var
22Ç Ö
factory
22Ü ç
)
22ç é
)
22é è
{33 
	condition44 
.44 
	Operation44 '
=44( )
factory44* 1
.441 2
Create442 8
(448 9
)449 :
as44; =
StringOperator44> L
;44L M
	condition66 
.66 
	Operation66 '
.66' (
CaseSensitive66( 5
=666 7
false668 =
;66= >
}77 
}88 
return:: 
Edit:: 
(:: 
	condition:: !
)::! "
;::" #
};; 	
}<< 
}== ≠	
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
) 
] 
[

 
assembly

 	
:

	 

Feature

 
(

 
Id 
= 
$str	 
, 
Name 
=	 

$str 
, 
Description 
= 
$str E
,E F
Dependencies 
= 
new 
[ 
] 
{ 
$str 
} 
, 
Category 
= 
$str 
) 
] ∑
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\AllConditionGroup.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class 
AllConditionGroup "
:# $%
DisplayTextConditionGroup% >
{ 
} 
} ∑
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\AnyConditionGroup.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class 
AnyConditionGroup "
:# $%
DisplayTextConditionGroup% >
{ 
} 
} Ï
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\BooleanCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class 
BooleanCondition !
:" #
	Condition$ -
{ 
public 
bool 
Value 
{ 
get 
;  
set! $
;$ %
}& '
=( )
true* .
;. /
} 
} Î
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\ContentTypeCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class  
ContentTypeCondition %
:& '
	Condition( 1
{ 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
StringOperator 
	Operation '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} „
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\CultureCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class 
CultureCondition !
:" #
	Condition$ -
{ 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
StringOperator 
	Operation '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Ó
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\HomepageCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class 
HomepageCondition "
:# $
	Condition% .
{ 
public 
bool 
Value 
{ 
get 
;  
set! $
;$ %
}& '
=( )
true* .
;. /
} 
} ≠
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\IsAnonymousCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class  
IsAnonymousCondition %
:& '
	Condition( 1
{ 
} 
} µ
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\IsAuthenticatedCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class $
IsAuthenticatedCondition )
:* +
	Condition, 5
{ 
} 
} ≈
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\JavascriptCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class 
JavascriptCondition $
:% &
	Condition' 0
{ 
public 
string 
Script 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ›
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\RoleCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class 
RoleCondition 
:  
	Condition! *
{ 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
StringOperator 
	Operation '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ã
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\StringOperators.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

abstract 
class 
StringOperator (
:) *
ConditionOperator+ <
{ 
public 
bool 
CaseSensitive !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class  
StringEqualsOperator %
:& '
StringOperator( 6
{		 
}

 
public 

class #
StringNotEqualsOperator (
:) *
StringOperator+ 9
{ 
} 
public 

class $
StringStartsWithOperator )
:* +
StringOperator, :
{ 
} 
public 

class '
StringNotStartsWithOperator ,
:- .
StringOperator/ =
{ 
} 
public 

class "
StringEndsWithOperator '
:( )
StringOperator* 8
{ 
} 
public 

class %
StringNotEndsWithOperator *
:+ ,
StringOperator- ;
{ 
} 
public   

class   "
StringContainsOperator   '
:  ( )
StringOperator  * 8
{!! 
}"" 
public$$ 

class$$ %
StringNotContainsOperator$$ *
:$$+ ,
StringOperator$$- ;
{%% 
}&& 
}'' €
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Models\UrlCondition.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Models "
{ 
public 

class 
UrlCondition 
: 
	Condition  )
{ 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
StringOperator 
	Operation '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Ç
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\AllConditionEvalutor.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class !
AllConditionEvaluator &
:' (
ConditionEvaluator) ;
<; <
AllConditionGroup< M
>M N
{ 
private		 
readonly		 
IConditionResolver		 +
_conditionResolver		, >
;		> ?
public !
AllConditionEvaluator $
($ %
IConditionResolver% 7
conditionResolver8 I
)I J
{ 	
_conditionResolver 
=  
conditionResolver! 2
;2 3
} 	
public 
async 
override 
	ValueTask '
<' (
bool( ,
>, -
EvaluateAsync. ;
(; <
AllConditionGroup< M
	conditionN W
)W X
{ 	
foreach 
( 
var 
childCondition &
in' )
	condition* 3
.3 4

Conditions4 >
)> ?
{ 
var 
	evaluator 
= 
_conditionResolver  2
.2 3!
GetConditionEvaluator3 H
(H I
childConditionI W
)W X
;X Y
if 
( 
! 
await 
	evaluator $
.$ %
EvaluateAsync% 2
(2 3
childCondition3 A
)A B
)B C
{ 
return 
false  
;  !
} 
} 
if 
( 
	condition 
. 

Conditions $
.$ %
Any% (
(( )
)) *
)* +
{ 
return 
true 
; 
} 
return!! 
false!! 
;!! 
}"" 	
}## 
}$$ ˆ
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\AnyConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class !
AnyConditionEvaluator &
:' (
ConditionEvaluator) ;
<; <
AnyConditionGroup< M
>M N
{ 
private		 
readonly		 
IConditionResolver		 +
_conditionResolver		, >
;		> ?
public !
AnyConditionEvaluator $
($ %
IConditionResolver% 7
conditionResolver8 I
)I J
{ 	
_conditionResolver 
=  
conditionResolver! 2
;2 3
} 	
public 
async 
override 
	ValueTask '
<' (
bool( ,
>, -
EvaluateAsync. ;
(; <
AnyConditionGroup< M
	conditionN W
)W X
{ 	
foreach 
( 
var 
childCondition &
in' )
	condition* 3
.3 4

Conditions4 >
)> ?
{ 
var 
	evaluator 
= 
_conditionResolver  2
.2 3!
GetConditionEvaluator3 H
(H I
childConditionI W
)W X
;X Y
if 
( 
await 
	evaluator #
.# $
EvaluateAsync$ 1
(1 2
childCondition2 @
)@ A
)A B
{ 
return 
true 
;  
} 
} 
return 
false 
; 
} 	
} 
} ˙
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\BooleanConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class %
BooleanConditionEvaluator *
:+ ,
ConditionEvaluator- ?
<? @
BooleanCondition@ P
>P Q
{ 
public 
override 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6
BooleanCondition6 F
	conditionG P
)P Q
=>		 
	condition		 
.		 
Value		 
?		  
True		! %
:		& '
False		( -
;		- .
}

 
} ë	
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\ConditionIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class  
ConditionIdGenerator %
:& '!
IConditionIdGenerator( =
{ 
private 
readonly 
IIdGenerator %
_idGenerator& 2
;2 3
public		  
ConditionIdGenerator		 #
(		# $
IIdGenerator		$ 0
idGenerator		1 <
)		< =
{

 	
_idGenerator 
= 
idGenerator &
;& '
} 	
public 
void 
GenerateUniqueId $
($ %
	Condition% .
	condition/ 8
)8 9
{ 	
	condition 
. 
ConditionId !
=" #
_idGenerator$ 0
.0 1
GenerateUniqueId1 A
(A B
)B C
;C D
} 	
} 
} à6
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\ConditionOperatorConfigureOptions.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public		 

class		 -
!ConditionOperatorConfigureOptions		 2
:		3 4
IConfigureOptions		5 F
<		F G$
ConditionOperatorOptions		G _
>		_ `
{

 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public -
!ConditionOperatorConfigureOptions 0
(0 1
IStringLocalizer1 A
<A B$
ConditionOperatorOptionsB Z
>Z [
stringLocalizer\ k
)k l
{ 	
S 
= 
stringLocalizer 
;  
} 	
public 
void 
	Configure 
( $
ConditionOperatorOptions 6
options7 >
)> ?
{ 	
options 
. 
	Operators 
. 
AddRange &
(& '
new' *
List+ /
</ 0#
ConditionOperatorOption0 G
>G H
{ 
new #
ConditionOperatorOption +
{ 
DisplayText 
=  !
S" #
[# $
$str$ ,
], -
,- .
Operator 
= 
typeof %
(% & 
StringEqualsOperator& :
): ;
,; <
Comparer 
= 
new "(
StringEqualsOperatorComparer# ?
(? @
)@ A
,A B
Factory 
= 
new !$
ConditionOperatorFactory" :
<: ; 
StringEqualsOperator; O
>O P
(P Q
)Q R
} 
, 
new #
ConditionOperatorOption +
{ 
DisplayText 
=  !
S" #
[# $
$str$ 4
]4 5
,5 6
Operator   
=   
typeof   %
(  % &#
StringNotEqualsOperator  & =
)  = >
,  > ?
Comparer!! 
=!! 
new!! "+
StringNotEqualsOperatorComparer!!# B
(!!B C
)!!C D
,!!D E
Factory"" 
="" 
new"" !$
ConditionOperatorFactory""" :
<"": ;#
StringNotEqualsOperator""; R
>""R S
(""S T
)""T U
}## 
,## 
new$$ #
ConditionOperatorOption$$ +
{%% 
DisplayText&& 
=&&  !
S&&" #
[&&# $
$str&&$ 1
]&&1 2
,&&2 3
Operator'' 
='' 
typeof'' %
(''% &$
StringStartsWithOperator''& >
)''> ?
,''? @
Comparer(( 
=(( 
new(( ",
 StringStartsWithOperatorComparer((# C
(((C D
)((D E
,((E F
Factory)) 
=)) 
new)) !$
ConditionOperatorFactory))" :
<)): ;$
StringStartsWithOperator)); S
>))S T
())T U
)))U V
}** 
,** 
new++ #
ConditionOperatorOption++ +
{,, 
DisplayText-- 
=--  !
S--" #
[--# $
$str--$ 9
]--9 :
,--: ;
Operator.. 
=.. 
typeof.. %
(..% &'
StringNotStartsWithOperator..& A
)..A B
,..B C
Comparer// 
=// 
new// "/
#StringNotStartsWithOperatorComparer//# F
(//F G
)//G H
,//H I
Factory00 
=00 
new00 !$
ConditionOperatorFactory00" :
<00: ;'
StringNotStartsWithOperator00; V
>00V W
(00W X
)00X Y
}11 
,11 
new22 #
ConditionOperatorOption22 +
{33 
DisplayText44 
=44  !
S44" #
[44# $
$str44$ /
]44/ 0
,440 1
Operator55 
=55 
typeof55 %
(55% &"
StringEndsWithOperator55& <
)55< =
,55= >
Comparer66 
=66 
new66 "*
StringEndsWithOperatorComparer66# A
(66A B
)66B C
,66C D
Factory77 
=77 
new77 !$
ConditionOperatorFactory77" :
<77: ;"
StringEndsWithOperator77; Q
>77Q R
(77R S
)77S T
}88 
,88 
new99 #
ConditionOperatorOption99 +
{:: 
DisplayText;; 
=;;  !
S;;" #
[;;# $
$str;;$ 7
];;7 8
,;;8 9
Operator<< 
=<< 
typeof<< %
(<<% &%
StringNotEndsWithOperator<<& ?
)<<? @
,<<@ A
Comparer== 
=== 
new== "-
!StringNotEndsWithOperatorComparer==# D
(==D E
)==E F
,==F G
Factory>> 
=>> 
new>> !$
ConditionOperatorFactory>>" :
<>>: ;%
StringNotEndsWithOperator>>; T
>>>T U
(>>U V
)>>V W
}?? 
,?? 
new@@ #
ConditionOperatorOption@@ +
{AA 
DisplayTextBB 
=BB  !
SBB" #
[BB# $
$strBB$ .
]BB. /
,BB/ 0
OperatorCC 
=CC 
typeofCC %
(CC% &"
StringContainsOperatorCC& <
)CC< =
,CC= >
ComparerDD 
=DD 
newDD "*
StringContainsOperatorComparerDD# A
(DDA B
)DDB C
,DDC D
FactoryEE 
=EE 
newEE !$
ConditionOperatorFactoryEE" :
<EE: ;"
StringContainsOperatorEE; Q
>EEQ R
(EER S
)EES T
}FF 
,FF 
newGG #
ConditionOperatorOptionGG +
{HH 
DisplayTextII 
=II  !
SII" #
[II# $
$strII$ 6
]II6 7
,II7 8
OperatorJJ 
=JJ 
typeofJJ %
(JJ% &%
StringNotContainsOperatorJJ& ?
)JJ? @
,JJ@ A
ComparerKK 
=KK 
newKK "-
!StringNotContainsOperatorComparerKK# D
(KKD E
)KKE F
,KKF G
FactoryLL 
=LL 
newLL !$
ConditionOperatorFactoryLL" :
<LL: ;%
StringNotContainsOperatorLL; T
>LLT U
(LLU V
)LLV W
}MM 
}NN 
)NN 
;NN 
}OO 	
}PP 
}QQ ø
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\ConditionOperatorResolver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class %
ConditionOperatorResolver *
:+ ,&
IConditionOperatorResolver- G
{ 
private 
readonly $
ConditionOperatorOptions 1
_options2 :
;: ;
public

 %
ConditionOperatorResolver

 (
(

( )
IOptions

) 1
<

1 2$
ConditionOperatorOptions

2 J
>

J K
options

L S
)

S T
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
IOperatorComparer  
GetOperatorComparer! 4
(4 5
ConditionOperator5 F
conditionOperatorG X
)X Y
{ 	
if 
( 
_options 
. )
ConditionOperatorOptionByType 6
.6 7
TryGetValue7 B
(B C
conditionOperatorC T
.T U
GetTypeU \
(\ ]
)] ^
,^ _
out` c
vard g
optionh n
)n o
)o p
{ 
return 
option 
. 
Comparer &
;& '
} 
throw 
new %
InvalidOperationException /
(/ 0
$"0 2#
Operator comparer for '2 I
{I J
conditionOperatorJ [
.[ \
GetType\ c
(c d
)d e
.e f
Namef j
}j k
; not registeredk {
"{ |
)| }
;} ~
} 	
} 
} í
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\ConditionResolver.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class 
ConditionResolver "
:# $
IConditionResolver% 7
{ 
private		 
readonly		 
IServiceProvider		 )
_serviceProvider		* :
;		: ;
private

 
readonly

 
ConditionOptions

 )
_options

* 2
;

2 3
public 
ConditionResolver  
(  !
IServiceProvider! 1
serviceProvider2 A
,A B
IOptionsC K
<K L
ConditionOptionsL \
>\ ]
options^ e
)e f
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
IConditionEvaluator "!
GetConditionEvaluator# 8
(8 9
	Condition9 B
	conditionC L
)L M
{ 	
if 
( 
_options 
. 

Evaluators #
.# $
TryGetValue$ /
(/ 0
	condition0 9
.9 :
GetType: A
(A B
)B C
,C D
outE H
varI L"
conditionEvaluatorTypeM c
)c d
)d e
{ 
return 
_serviceProvider '
.' (
GetRequiredService( :
(: ;"
conditionEvaluatorType; Q
)Q R
asS U
IConditionEvaluatorV i
;i j
} 
throw 
new %
InvalidOperationException /
(/ 0
$"0 2%
Condition evaluator for '2 K
{K L
	conditionL U
.U V
GetTypeV ]
(] ^
)^ _
._ `
Name` d
}d e
; not registerede u
"u v
)v w
;w x
} 	
} 
} Ó
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\CultureConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public		 

class		 %
CultureConditionEvaluator		 *
:		+ ,
ConditionEvaluator		- ?
<		? @
CultureCondition		@ P
>		P Q
{

 
private 
readonly &
IConditionOperatorResolver 3
_operatorResolver4 E
;E F
public %
CultureConditionEvaluator (
(( )&
IConditionOperatorResolver) C
operatorResolverD T
)T U
{ 	
_operatorResolver 
= 
operatorResolver  0
;0 1
} 	
public 
override 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6
CultureCondition6 F
	conditionG P
)P Q
{ 	
var 
currentCulture 
=  
CultureInfo! ,
., -
CurrentCulture- ;
;; <
var 
operatorComparer  
=! "
_operatorResolver# 4
.4 5
GetOperatorComparer5 H
(H I
	conditionI R
.R S
	OperationS \
)\ ]
;] ^
var 
result 
= 
operatorComparer )
.) *
Compare* 1
(1 2
	condition2 ;
.; <
	Operation< E
,E F
currentCultureG U
.U V
NameV Z
,Z [
	condition\ e
.e f
Valuef k
)k l
||m o
operatorComparer  
.  !
Compare! (
(( )
	condition) 2
.2 3
	Operation3 <
,< =
currentCulture> L
.L M
ParentM S
.S T
NameT X
,X Y
	conditionZ c
.c d
Valued i
)i j
;j k
return 
result 
? 
True  
:! "
False# (
;( )
} 	
} 
} ü
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\HomepageConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class &
HomepageConditionEvaluator +
:, -
ConditionEvaluator. @
<@ A
HomepageConditionA R
>R S
{		 
private

 
readonly

  
IHttpContextAccessor

 - 
_httpContextAccessor

. B
;

B C
public &
HomepageConditionEvaluator )
() * 
IHttpContextAccessor* >
httpContextAccessor? R
)R S
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
override 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6
HomepageCondition6 G
	conditionH Q
)Q R
{ 	
var 
requestPath 
=  
_httpContextAccessor 2
.2 3
HttpContext3 >
.> ?
Request? F
.F G
PathG K
.K L
ValueL Q
;Q R
var 
result 
= 
String 
.  
Equals  &
(& '
$str' *
,* +
requestPath, 7
,7 8
StringComparison9 I
.I J
OrdinalJ Q
)Q R
||S U
StringV \
.\ ]
IsNullOrEmpty] j
(j k
requestPathk v
)v w
;w x
if 
( 
! 
	condition 
. 
Value  
)  !
{ 
result 
= 
! 
result  
;  !
} 
return 
result 
? 
True  
:! "
False# (
;( )
} 	
} 
} €
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\IsAnonymousConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class )
IsAnonymousConditionEvaluator .
:/ 0
ConditionEvaluator1 C
<C D 
IsAnonymousConditionD X
>X Y
{		 
private

 
readonly

  
IHttpContextAccessor

 - 
_httpContextAccessor

. B
;

B C
public )
IsAnonymousConditionEvaluator ,
(, - 
IHttpContextAccessor- A
httpContextAccessorB U
)U V
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
override 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6 
IsAnonymousCondition6 J
	conditionK T
)T U
=>  
_httpContextAccessor #
.# $
HttpContext$ /
./ 0
User0 4
?4 5
.5 6
Identity6 >
.> ?
IsAuthenticated? N
!=O Q
trueR V
?W X
TrueY ]
:^ _
False` e
;e f
} 
} Ô
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\IsAuthenticatedConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class -
!IsAuthenticatedConditionEvaluator 2
:3 4
ConditionEvaluator5 G
<G H$
IsAuthenticatedConditionH `
>` a
{		 
private

 
readonly

  
IHttpContextAccessor

 - 
_httpContextAccessor

. B
;

B C
public -
!IsAuthenticatedConditionEvaluator 0
(0 1 
IHttpContextAccessor1 E
httpContextAccessorF Y
)Y Z
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
override 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6$
IsAuthenticatedCondition6 N
	conditionO X
)X Y
=>  
_httpContextAccessor #
.# $
HttpContext$ /
./ 0
User0 4
?4 5
.5 6
Identity6 >
.> ?
IsAuthenticated? N
==O Q
trueR V
?W X
TrueY ]
:^ _
False` e
;e f
} 
} ì
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\JavascriptConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{		 
public

 

class

 (
JavascriptConditionEvaluator

 -
:

. /
ConditionEvaluator

0 B
<

B C
JavascriptCondition

C V
>

V W
{ 
private 
readonly 
IScriptingManager *
_scriptingManager+ <
;< =
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
IScriptingScope 
_scope  &
;& '
private 
IScriptingEngine  
_engine! (
;( )
public (
JavascriptConditionEvaluator +
(+ ,
IScriptingManager, =
scriptingManager> N
,N O
IServiceProviderP `
serviceProvidera p
)p q
{ 	
_scriptingManager 
= 
scriptingManager  0
;0 1
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6
JavascriptCondition6 I
	conditionJ S
)S T
{ 	
_engine 
??= 
_scriptingManager )
.) *
GetScriptingEngine* <
(< =
$str= A
)A B
;B C
_scope 
??= 
_engine 
. 
CreateScope *
(* +
_scriptingManager+ <
.< =!
GlobalMethodProviders= R
.R S

SelectManyS ]
(] ^
x^ _
=>` b
xc d
.d e

GetMethodse o
(o p
)p q
)q r
,r s
_serviceProvider	t Ñ
,
Ñ Ö
null
Ü ä
,
ä ã
null
å ê
)
ê ë
;
ë í
return 
Convert 
. 
	ToBoolean $
($ %
_engine% ,
., -
Evaluate- 5
(5 6
_scope6 <
,< =
	condition> G
.G H
ScriptH N
)N O
)O P
?Q R
TrueS W
:X Y
FalseZ _
;_ `
}   	
}!! 
}"" ó
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\RoleConditionEvaluator.cs
	namespace		 	
OrchardCore		
 
.		 
Rules		 
.		 
Services		 $
{

 
public 

class "
RoleConditionEvaluator '
:( )
ConditionEvaluator* <
<< =
RoleCondition= J
>J K
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IdentityOptions (
_options) 1
;1 2
private 
readonly &
IConditionOperatorResolver 3
_operatorResolver4 E
;E F
public "
RoleConditionEvaluator %
(% & 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
IOptions 
< 
IdentityOptions $
>$ %
options& -
,- .&
IConditionOperatorResolver &
operatorResolver' 7
)7 8
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_options 
= 
options 
. 
Value $
;$ %
_operatorResolver 
= 
operatorResolver  0
;0 1
} 	
public 
override 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6
RoleCondition6 C
	conditionD M
)M N
{ 	
var 
roleClaimType 
= 
_options  (
.( )
ClaimsIdentity) 7
.7 8
RoleClaimType8 E
;E F
var   
operatorComparer    
=  ! "
_operatorResolver  # 4
.  4 5
GetOperatorComparer  5 H
(  H I
	condition  I R
.  R S
	Operation  S \
)  \ ]
;  ] ^
return"" 
(""  
_httpContextAccessor"" (
.""( )
HttpContext"") 4
.""4 5
User""5 9
?""9 :
."": ;
Claims""; A
.""A B
Any""B E
(""E F
claim""F K
=>""L N
claim## 
.## 
Type## 
==## 
roleClaimType## +
&&##, .
operatorComparer$$  
.$$  !
Compare$$! (
($$( )
	condition$$) 2
.$$2 3
	Operation$$3 <
,$$< =
claim$$> C
.$$C D
Value$$D I
,$$I J
	condition$$K T
.$$T U
Value$$U Z
)$$Z [
)$$[ \
)%% 
.%% 
GetValueOrDefault%% 
(%%  
)%%  !
?%%" #
True%%$ (
:%%) *
False%%+ 0
;%%0 1
}&& 	
}'' 
}(( œ6
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\RuleMigrator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class 
RuleMigrator 
: 
IRuleMigrator  -
{ 
private		 
readonly		 !
IConditionIdGenerator		 .!
_conditionIdGenerator		/ D
;		D E
private

 
readonly

 
IEnumerable

 $
<

$ %
IConditionFactory

% 6
>

6 7

_factories

8 B
;

B C
public 
RuleMigrator 
( !
IConditionIdGenerator 1 
conditionIdGenerator2 F
,F G
IEnumerableH S
<S T
IConditionFactoryT e
>e f
	factoriesg p
)p q
{ 	!
_conditionIdGenerator !
=" # 
conditionIdGenerator$ 8
;8 9

_factories 
= 
	factories "
;" #
} 	
public 
void 
Migrate 
( 
string "
existingRule# /
,/ 0
Rule1 5
rule6 :
): ;
{ 	
var 
	factories 
= 

_factories &
.& '
ToDictionary' 3
(3 4
x4 5
=>6 8
x9 :
.: ;
Name; ?
)? @
;@ A
switch 
( 
existingRule  
)  !
{ 
case 
$str 
: 
if 
( 
	factories !
.! "
TryGetValue" -
(- .
typeof. 4
(4 5
BooleanCondition5 E
)E F
.F G
NameG K
,K L
outM P
varQ T
booleanFactoryU c
)c d
)d e
{ 
var 
	condition %
=& '
(( )
BooleanCondition) 9
)9 :
booleanFactory: H
.H I
CreateI O
(O P
)P Q
;Q R!
_conditionIdGenerator -
.- .
GenerateUniqueId. >
(> ?
	condition? H
)H I
;I J
	condition !
.! "
Value" '
=( )
true* .
;. /
rule   
.   

Conditions   '
.  ' (
Add  ( +
(  + ,
	condition  , 5
)  5 6
;  6 7
}!! 
break"" 
;"" 
case## 
$str## #
:### $
if$$ 
($$ 
	factories$$ !
.$$! "
TryGetValue$$" -
($$- .
typeof$$. 4
($$4 5
HomepageCondition$$5 F
)$$F G
.$$G H
Name$$H L
,$$L M
out$$N Q
var$$R U
homepageFactory$$V e
)$$e f
)$$f g
{%% 
var&& 
	condition&& %
=&&& '
(&&( )
HomepageCondition&&) :
)&&: ;
homepageFactory&&; J
.&&J K
Create&&K Q
(&&Q R
)&&R S
;&&S T!
_conditionIdGenerator'' -
.''- .
GenerateUniqueId''. >
(''> ?
	condition''? H
)''H I
;''I J
	condition(( !
.((! "
Value((" '
=((( )
true((* .
;((. /
rule)) 
.)) 

Conditions)) '
.))' (
Add))( +
())+ ,
	condition)), 5
)))5 6
;))6 7
}** 
break++ 
;++ 
case,, 
$str,, $
:,,$ %
if-- 
(-- 
	factories-- !
.--! "
TryGetValue--" -
(--- .
typeof--. 4
(--4 5 
IsAnonymousCondition--5 I
)--I J
.--J K
Name--K O
,--O P
out--Q T
var--U X
isAnonymousFactory--Y k
)--k l
)--l m
{.. 
var// 
	condition// %
=//& '
(//( ) 
IsAnonymousCondition//) =
)//= >
isAnonymousFactory//> P
.//P Q
Create//Q W
(//W X
)//X Y
;//Y Z!
_conditionIdGenerator00 -
.00- .
GenerateUniqueId00. >
(00> ?
	condition00? H
)00H I
;00I J
rule11 
.11 

Conditions11 '
.11' (
Add11( +
(11+ ,
	condition11, 5
)115 6
;116 7
}22 
break33 
;33 
case44 
$str44 (
:44( )
if55 
(55 
	factories55 !
.55! "
TryGetValue55" -
(55- .
typeof55. 4
(554 5$
IsAuthenticatedCondition555 M
)55M N
.55N O
Name55O S
,55S T
out55U X
var55Y \"
isAuthenticatedFactory55] s
)55s t
)55t u
{66 
var77 
	condition77 %
=77& '
(77( )$
IsAuthenticatedCondition77) A
)77A B"
isAuthenticatedFactory77B X
.77X Y
Create77Y _
(77_ `
)77` a
;77a b!
_conditionIdGenerator88 -
.88- .
GenerateUniqueId88. >
(88> ?
	condition88? H
)88H I
;88I J
rule99 
.99 

Conditions99 '
.99' (
Add99( +
(99+ ,
	condition99, 5
)995 6
;996 7
}:: 
break;; 
;;; 
default<< 
:<< 
if== 
(== 
	factories== !
.==! "
TryGetValue==" -
(==- .
typeof==. 4
(==4 5
JavascriptCondition==5 H
)==H I
.==I J
Name==J N
,==N O
out==P S
var==T W
javascriptFactory==X i
)==i j
)==j k
{>> 
var?? 
	condition?? %
=??& '
(??( )
JavascriptCondition??) <
)??< =
javascriptFactory??= N
.??N O
Create??O U
(??U V
)??V W
;??W X!
_conditionIdGenerator@@ -
.@@- .
GenerateUniqueId@@. >
(@@> ?
	condition@@? H
)@@H I
;@@I J
	conditionAA !
.AA! "
ScriptAA" (
=AA) *
existingRuleAA+ 7
;AA7 8
ruleBB 
.BB 

ConditionsBB '
.BB' (
AddBB( +
(BB+ ,
	conditionBB, 5
)BB5 6
;BB6 7
}CC 
breakDD 
;DD 
}EE 
}FF 	
}GG 
}HH 
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\RuleService.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class 
RuleService 
: 
IRuleService +
{ 
private 
readonly 
IConditionResolver +
_conditionResolver, >
;> ?
public

 
RuleService

 
(

 
IConditionResolver

 -
conditionResolver

. ?
)

? @
{ 	
_conditionResolver 
=  
conditionResolver! 2
;2 3
} 	
public 
async 
	ValueTask 
< 
bool #
># $
EvaluateAsync% 2
(2 3
Rule3 7
rule8 <
)< =
{ 	
foreach 
( 
var 
childCondition &
in' )
rule* .
.. /

Conditions/ 9
)9 :
{ 
var 
	evaluator 
= 
_conditionResolver  2
.2 3!
GetConditionEvaluator3 H
(H I
childConditionI W
)W X
;X Y
if 
( 
! 
await 
	evaluator $
.$ %
EvaluateAsync% 2
(2 3
childCondition3 A
)A B
)B C
{ 
return 
false  
;  !
} 
} 
if 
( 
rule 
. 

Conditions 
.  
Any  #
(# $
)$ %
)% &
{ 
return 
true 
; 
} 
return   
false   
;   
}!! 	
}"" 
}## ñ?
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\StringOperatorComparer.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class (
StringEqualsOperatorComparer -
:. /
OperatorComparer0 @
<@ A
StringOperatorA O
,O P
stringQ W
>W X
{ 
public 
override 
bool 
Compare $
($ %
StringOperator% 3
conditionOperator4 E
,E F
stringG M
aN O
,O P
stringQ W
bX Y
)Y Z
=>		 
conditionOperator		  
.		  !
CaseSensitive		! .
?		/ 0
String

 
.

 
Equals

 
(

 
a

 
,

  
b

! "
)

" #
:

$ %
String 
. 
Equals 
( 
a 
,  
b! "
," #
StringComparison$ 4
.4 5
OrdinalIgnoreCase5 F
)F G
;G H
} 
public 

class +
StringNotEqualsOperatorComparer 0
:1 2
OperatorComparer3 C
<C D
StringOperatorD R
,R S
stringT Z
>Z [
{ 
public 
override 
bool 
Compare $
($ %
StringOperator% 3
conditionOperator4 E
,E F
stringG M
aN O
,O P
stringQ W
bX Y
)Y Z
=> 
conditionOperator  
.  !
CaseSensitive! .
?/ 0
! 
String 
. 
Equals 
( 
a  
,  !
b" #
)# $
:% &
! 
String 
. 
Equals 
( 
a  
,  !
b" #
,# $
StringComparison% 5
.5 6
OrdinalIgnoreCase6 G
)G H
;H I
} 
public 

class ,
 StringStartsWithOperatorComparer 1
:2 3
OperatorComparer4 D
<D E
StringOperatorE S
,S T
stringU [
>[ \
{ 
public 
override 
bool 
Compare $
($ %
StringOperator% 3
conditionOperator4 E
,E F
stringG M
aN O
,O P
stringQ W
bX Y
)Y Z
=> 
conditionOperator  
.  !
CaseSensitive! .
?/ 0
a 
. 

StartsWith 
( 
b 
) 
:  !
a 
. 

StartsWith 
( 
b 
, 
StringComparison  0
.0 1
OrdinalIgnoreCase1 B
)B C
;C D
} 
public 

class /
#StringNotStartsWithOperatorComparer 4
:5 6
OperatorComparer7 G
<G H
StringOperatorH V
,V W
stringX ^
>^ _
{ 
public   
override   
bool   
Compare   $
(  $ %
StringOperator  % 3
conditionOperator  4 E
,  E F
string  G M
a  N O
,  O P
string  Q W
b  X Y
)  Y Z
=>!! 
conditionOperator!!  
.!!  !
CaseSensitive!!! .
?!!/ 0
!"" 
a"" 
."" 

StartsWith"" 
("" 
b"" 
)""  
:""! "
!## 
a## 
.## 

StartsWith## 
(## 
b## 
,##  
StringComparison##! 1
.##1 2
OrdinalIgnoreCase##2 C
)##C D
;##D E
}$$ 
public&& 

class&& *
StringEndsWithOperatorComparer&& /
:&&0 1
OperatorComparer&&2 B
<&&B C
StringOperator&&C Q
,&&Q R
string&&S Y
>&&Y Z
{'' 
public(( 
override(( 
bool(( 
Compare(( $
((($ %
StringOperator((% 3
conditionOperator((4 E
,((E F
string((G M
a((N O
,((O P
string((Q W
b((X Y
)((Y Z
=>)) 
conditionOperator))  
.))  !
CaseSensitive))! .
?))/ 0
a** 
.** 
EndsWith** 
(** 
b** 
)** 
:** 
a++ 
.++ 
EndsWith++ 
(++ 
b++ 
,++ 
StringComparison++ .
.++. /
OrdinalIgnoreCase++/ @
)++@ A
;++A B
},, 
public.. 

class.. -
!StringNotEndsWithOperatorComparer.. 2
:..3 4
OperatorComparer..5 E
<..E F
StringOperator..F T
,..T U
string..V \
>..\ ]
{// 
public00 
override00 
bool00 
Compare00 $
(00$ %
StringOperator00% 3
conditionOperator004 E
,00E F
string00G M
a00N O
,00O P
string00Q W
b00X Y
)00Y Z
=>11 
conditionOperator11  
.11  !
CaseSensitive11! .
?11/ 0
!22 
a22 
.22 
EndsWith22 
(22 
b22 
)22 
:22  
!33 
a33 
.33 
EndsWith33 
(33 
b33 
,33 
StringComparison33 /
.33/ 0
OrdinalIgnoreCase330 A
)33A B
;33B C
}44 
public66 

class66 *
StringContainsOperatorComparer66 /
:660 1
OperatorComparer662 B
<66B C
StringOperator66C Q
,66Q R
string66S Y
>66Y Z
{77 
public88 
override88 
bool88 
Compare88 $
(88$ %
StringOperator88% 3
conditionOperator884 E
,88E F
string88G M
a88N O
,88O P
string88Q W
b88X Y
)88Y Z
=>99 
conditionOperator99  
.99  !
CaseSensitive99! .
?99/ 0
a:: 
.:: 
Contains:: 
(:: 
b:: 
):: 
::: 
a;; 
.;; 
Contains;; 
(;; 
b;; 
,;; 
StringComparison;; .
.;;. /
OrdinalIgnoreCase;;/ @
);;@ A
;;;A B
}<< 
public>> 

class>> -
!StringNotContainsOperatorComparer>> 2
:>>3 4
OperatorComparer>>5 E
<>>E F
StringOperator>>F T
,>>T U
string>>V \
>>>\ ]
{?? 
public@@ 
override@@ 
bool@@ 
Compare@@ $
(@@$ %
StringOperator@@% 3
conditionOperator@@4 E
,@@E F
string@@G M
a@@N O
,@@O P
string@@Q W
b@@X Y
)@@Y Z
=>AA 
conditionOperatorAA  
.AA  !
CaseSensitiveAA! .
?AA/ 0
!BB 
aBB 
.BB 
ContainsBB 
(BB 
bBB 
)BB 
:BB  
!CC 
aCC 
.CC 
ContainsCC 
(CC 
bCC 
,CC 
StringComparisonCC /
.CC/ 0
OrdinalIgnoreCaseCC0 A
)CCA B
;CCB C
}DD 
}EE ≥
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Services\UrlConditionEvaluator.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 
Services $
{ 
public 

class !
UrlConditionEvaluator &
:' (
ConditionEvaluator) ;
<; <
UrlCondition< H
>H I
{		 
private

 
readonly

  
IHttpContextAccessor

 - 
_httpContextAccessor

. B
;

B C
private 
readonly &
IConditionOperatorResolver 3
_operatorResolver4 E
;E F
public !
UrlConditionEvaluator $
($ % 
IHttpContextAccessor% 9
httpContextAccessor: M
,M N&
IConditionOperatorResolverO i
operatorResolverj z
)z {
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_operatorResolver 
= 
operatorResolver  0
;0 1
} 	
public 
override 
	ValueTask !
<! "
bool" &
>& '
EvaluateAsync( 5
(5 6
UrlCondition6 B
	conditionC L
)L M
{ 	
if 
( 
	condition 
. 
Value 
.  

StartsWith  *
(* +
$str+ /
,/ 0
StringComparison1 A
.A B
OrdinalB I
)I J
)J K
{ 
	condition 
. 
Value 
=  !
	condition" +
.+ ,
Value, 1
.1 2
	Substring2 ;
(; <
$num< =
)= >
;> ?
} 
var 
requestPath 
=  
_httpContextAccessor 2
.2 3
HttpContext3 >
.> ?
Request? F
.F G
PathG K
.K L
ValueL Q
;Q R
if 
( 
string 
. 
IsNullOrEmpty $
($ %
requestPath% 0
)0 1
)1 2
{ 
requestPath   
=   
$str   !
;  ! "
}!! 
var## 
operatorComparer##  
=##! "
_operatorResolver### 4
.##4 5
GetOperatorComparer##5 H
(##H I
	condition##I R
.##R S
	Operation##S \
)##\ ]
;##] ^
return$$ 
operatorComparer$$ #
.$$# $
Compare$$$ +
($$+ ,
	condition$$, 5
.$$5 6
	Operation$$6 ?
,$$? @
requestPath$$A L
,$$L M
	condition$$N W
.$$W X
Value$$X ]
)$$] ^
?$$_ `
True$$a e
:$$f g
False$$h m
;$$m n
}%% 	
}&& 
}'' åI
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\Startup.cs
	namespace 	
OrchardCore
 
. 
Rules 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 

AddOptions 
<  
ConditionOptions  0
>0 1
(1 2
)2 3
;3 4
services 
. 
	AddScoped 
< 
IDisplayManager .
<. /
	Condition/ 8
>8 9
,9 :
DisplayManager; I
<I J
	ConditionJ S
>S T
>T U
(U V
)V W
. 
	AddScoped 
< 
IDisplayManager *
<* +
Rule+ /
>/ 0
,0 1
DisplayManager2 @
<@ A
RuleA E
>E F
>F G
(G H
)H I
. 
	AddScoped 
< 
IDisplayDriver )
<) *
Rule* .
>. /
,/ 0
RuleDisplayDriver1 B
>B C
(C D
)D E
. 
AddSingleton 
< !
IConditionIdGenerator 3
,3 4 
ConditionIdGenerator5 I
>I J
(J K
)K L
. 
AddTransient 
< 
IConfigureOptions /
</ 0$
ConditionOperatorOptions0 H
>H I
,I J-
!ConditionOperatorConfigureOptionsK l
>l m
(m n
)n o
. 
	AddScoped 
< 
IConditionResolver -
,- .
ConditionResolver/ @
>@ A
(A B
)B C
. 
	AddScoped 
< &
IConditionOperatorResolver 5
,5 6%
ConditionOperatorResolver7 P
>P Q
(Q R
)R S
. 
	AddScoped 
< 
IRuleService '
,' (
RuleService) 4
>4 5
(5 6
)6 7
. 
	AddScoped 
< 
IRuleMigrator (
,( )
RuleMigrator* 6
>6 7
(7 8
)8 9
;9 :
services 
.   
	AddScoped   
<   
IDisplayDriver   )
<  ) *
	Condition  * 3
>  3 4
,  4 5%
AllConditionDisplayDriver  6 O
>  O P
(  P Q
)  Q R
.!! 
AddCondition!! 
<!! 
AllConditionGroup!! /
,!!/ 0!
AllConditionEvaluator!!1 F
,!!F G
ConditionFactory!!H X
<!!X Y
AllConditionGroup!!Y j
>!!j k
>!!k l
(!!l m
)!!m n
;!!n o
services$$ 
.%% 
	AddScoped%% 
<%% 
IDisplayDriver%% )
<%%) *
	Condition%%* 3
>%%3 4
,%%4 5%
AnyConditionDisplayDriver%%6 O
>%%O P
(%%P Q
)%%Q R
.&& 
AddCondition&& 
<&& 
AnyConditionGroup&& /
,&&/ 0!
AnyConditionEvaluator&&1 F
,&&F G
ConditionFactory&&H X
<&&X Y
AnyConditionGroup&&Y j
>&&j k
>&&k l
(&&l m
)&&m n
;&&n o
services)) 
.** 
	AddScoped** 
<** 
IDisplayDriver** )
<**) *
	Condition*** 3
>**3 4
,**4 5)
BooleanConditionDisplayDriver**6 S
>**S T
(**T U
)**U V
.++ 
AddCondition++ 
<++ 
BooleanCondition++ .
,++. /%
BooleanConditionEvaluator++0 I
,++I J
ConditionFactory++K [
<++[ \
BooleanCondition++\ l
>++l m
>++m n
(++n o
)++o p
;++p q
services.. 
.// 
	AddScoped// 
<// 
IDisplayDriver// )
<//) *
	Condition//* 3
>//3 4
,//4 5*
HomepageConditionDisplayDriver//6 T
>//T U
(//U V
)//V W
.00 
AddCondition00 
<00 
HomepageCondition00 /
,00/ 0&
HomepageConditionEvaluator001 K
,00K L
ConditionFactory00M ]
<00] ^
HomepageCondition00^ o
>00o p
>00p q
(00q r
)00r s
;00s t
services33 
.44 
	AddScoped44 
<44 
IDisplayDriver44 )
<44) *
	Condition44* 3
>443 4
,444 5%
UrlConditionDisplayDriver446 O
>44O P
(44P Q
)44Q R
.55 
AddCondition55 
<55 
UrlCondition55 *
,55* +!
UrlConditionEvaluator55, A
,55A B
ConditionFactory55C S
<55S T
UrlCondition55T `
>55` a
>55a b
(55b c
)55c d
;55d e
services88 
.99 
	AddScoped99 
<99 
IDisplayDriver99 )
<99) *
	Condition99* 3
>993 4
,994 5)
CultureConditionDisplayDriver996 S
>99S T
(99T U
)99U V
.:: 
AddCondition:: 
<:: 
CultureCondition:: .
,::. /%
CultureConditionEvaluator::0 I
,::I J
ConditionFactory::K [
<::[ \
CultureCondition::\ l
>::l m
>::m n
(::n o
)::o p
;::p q
services== 
.>> 
	AddScoped>> 
<>> 
IDisplayDriver>> )
<>>) *
	Condition>>* 3
>>>3 4
,>>4 5&
RoleConditionDisplayDriver>>6 P
>>>P Q
(>>Q R
)>>R S
.?? 
AddCondition?? 
<?? 
RoleCondition?? +
,??+ ,"
RoleConditionEvaluator??- C
,??C D
ConditionFactory??E U
<??U V
RoleCondition??V c
>??c d
>??d e
(??e f
)??f g
;??g h
servicesBB 
.CC 
	AddScopedCC 
<CC 
IDisplayDriverCC )
<CC) *
	ConditionCC* 3
>CC3 4
,CC4 5,
 JavascriptConditionDisplayDriverCC6 V
>CCV W
(CCW X
)CCX Y
.DD 
AddConditionDD 
<DD 
JavascriptConditionDD 1
,DD1 2(
JavascriptConditionEvaluatorDD3 O
,DDO P
ConditionFactoryDDQ a
<DDa b
JavascriptConditionDDb u
>DDu v
>DDv w
(DDw x
)DDx y
;DDy z
servicesGG 
.HH 
	AddScopedHH 
<HH 
IDisplayDriverHH )
<HH) *
	ConditionHH* 3
>HH3 4
,HH4 51
%IsAuthenticatedConditionDisplayDriverHH6 [
>HH[ \
(HH\ ]
)HH] ^
.II 
AddConditionII 
<II $
IsAuthenticatedConditionII 6
,II6 7-
!IsAuthenticatedConditionEvaluatorII8 Y
,IIY Z
ConditionFactoryII[ k
<IIk l%
IsAuthenticatedCondition	IIl Ñ
>
IIÑ Ö
>
IIÖ Ü
(
IIÜ á
)
IIá à
;
IIà â
servicesLL 
.MM 
	AddScopedMM 
<MM 
IDisplayDriverMM )
<MM) *
	ConditionMM* 3
>MM3 4
,MM4 5-
!IsAnonymousConditionDisplayDriverMM6 W
>MMW X
(MMX Y
)MMY Z
.NN 
AddConditionNN 
<NN  
IsAnonymousConditionNN 2
,NN2 3)
IsAnonymousConditionEvaluatorNN4 Q
,NNQ R
ConditionFactoryNNS c
<NNc d 
IsAnonymousConditionNNd x
>NNx y
>NNy z
(NNz {
)NN{ |
;NN| }
servicesQQ 
.RR 
	AddScopedRR 
<RR 
IDisplayDriverRR )
<RR) *
	ConditionRR* 3
>RR3 4
,RR4 5-
!ContentTypeConditionDisplayDriverRR6 W
>RRW X
(RRX Y
)RRY Z
.SS 
AddConditionSS 
<SS  
ContentTypeConditionSS 2
,SS2 3/
#ContentTypeConditionEvaluatorDriverSS4 W
,SSW X
ConditionFactorySSY i
<SSi j 
ContentTypeConditionSSj ~
>SS~ 
>	SS Ä
(
SSÄ Å
)
SSÅ Ç
.TT 
	AddScopedTT 
<TT !
IContentDisplayDriverTT 0
>TT0 1
(TT1 2
spTT2 4
=>TT5 7
(TT8 9!
IContentDisplayDriverTT9 N
)TTN O
spTTO Q
.TTQ R
GetRequiredServiceTTR d
<TTd e0
#ContentTypeConditionEvaluatorDriver	TTe à
>
TTà â
(
TTâ ä
)
TTä ã
)
TTã å
;
TTå ç
}UU 	
}VV 
}WW ¸
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewComponents\SelectStringOperationViewComponent.cs
	namespace		 	
OrchardCore		
 
.		 
Rules		 
.		 
ViewComponents		 *
{

 
public 

class .
"SelectStringOperationViewComponent 3
:4 5
ViewComponent6 C
{ 
private 
readonly $
ConditionOperatorOptions 1
_options2 :
;: ;
public .
"SelectStringOperationViewComponent 1
(1 2
IOptions2 :
<: ;$
ConditionOperatorOptions; S
>S T
optionsU \
)\ ]
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public  
IViewComponentResult #
Invoke$ *
(* +
string+ 1
selectedOperation2 C
,C D
stringE K
htmlNameL T
)T U
{ 	
var 
stringOperators 
=  !
_options" *
.* +
	Operators+ 4
.4 5
Where5 :
(: ;
x; <
=>= ?
typeof@ F
(F G
StringOperatorG U
)U V
.V W
IsAssignableFromW g
(g h
xh i
.i j
Operatorj r
)r s
)s t
;t u
var 
items 
= 
stringOperators '
. 
Select 
( 
x 
=> 
new 
SelectListItem &
(& '
x 
. 
DisplayText %
,% &
x 
. 
Operator "
." #
Name# '
,' (
String 
. 
Equals %
(% &
x& '
.' (
Factory( /
./ 0
Name0 4
,4 5
selectedOperation6 G
,G H
StringComparisonI Y
.Y Z
OrdinalIgnoreCaseZ k
)k l
)l m
) 
. 
ToList 
( 
) 
; 
var   
model   
=   
new   *
SelectStringOperationViewModel   :
{!! 
HtmlName"" 
="" 
htmlName"" #
,""# $
Items## 
=## 
items## 
}$$ 
;$$ 
return&& 
View&& 
(&& 
model&& 
)&& 
;&& 
}'' 	
}(( 
})) ç
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\AllConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class !
AllConditionViewModel &
{ 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
[

 	
	BindNever

	 
]

 
public 
AllConditionGroup  
	Condition! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ç
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\AnyConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class !
AnyConditionViewModel &
{ 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
[

 	
	BindNever

	 
]

 
public 
AnyConditionGroup  
	Condition! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} å
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\BooleanConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class %
BooleanConditionViewModel *
{ 
public 
bool 
Value 
{ 
get 
;  
set! $
;$ %
}& '
[

 	
	BindNever

	 
]

 
public 
BooleanCondition 
	Condition  )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} Ê
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\ConditionGroupViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class #
ConditionGroupViewModel (
{ 
public		 
ConditionEntry		 
[		 
]		 
Entries		  '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
[ 	
	BindNever	 
] 
public 
ConditionGroup 
	Condition '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
public 

class 
ConditionEntry 
{ 
[ 	
	BindNever	 
] 
public 
	Condition 
	Condition "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ø
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\ContentTypeConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class )
ContentTypeConditionViewModel .
{ 
public 
string 
SelectedOperation '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
string		 
Value		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[ 	
	BindNever	 
] 
public  
ContentTypeCondition #
	Condition$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} ≥
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\CultureConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class %
CultureConditionViewModel *
{ 
public 
string 
SelectedOperation '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
string		 
Value		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[ 	
	BindNever	 
] 
public 
CultureCondition 
	Condition  )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} è
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\HomepageConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class &
HomepageConditionViewModel +
{ 
public 
bool 
Value 
{ 
get 
;  
set! $
;$ %
}& '
[

 	
	BindNever

	 
]

 
public 
HomepageCondition  
	Condition! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ò
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\JavascriptConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class (
JavascriptConditionViewModel -
{ 
public 
string 
Script 
{ 
get "
;" #
set$ '
;' (
}) *
[

 	
	BindNever

	 
]

 
public 
JavascriptCondition "
	Condition# ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} ™
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\RoleConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class "
RoleConditionViewModel '
{ 
public 
string 
SelectedOperation '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
string		 
Value		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[ 	
	BindNever	 
] 
public 
RoleCondition 
	Condition &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ê
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\SelectStringOperationViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class *
SelectStringOperationViewModel /
{ 
public 
string 
HtmlName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
List		 
<		 
SelectListItem		 "
>		" #
Items		$ )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
}

 
} ß
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Rules\ViewModels\UrlConditionViewModel.cs
	namespace 	
OrchardCore
 
. 
Rules 
. 

ViewModels &
{ 
public 

class !
UrlConditionViewModel &
{ 
public 
string 
SelectedOperation '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
string		 
Value		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[ 	
	BindNever	 
] 
public 
UrlCondition 
	Condition %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} 