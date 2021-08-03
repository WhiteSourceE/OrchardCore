‡
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\ButtonPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{		 
public

 

class

 #
ButtonPartDisplayDriver

 (
:

) *$
ContentPartDisplayDriver

+ C
<

C D

ButtonPart

D N
>

N O
{ 
public 
override 
IDisplayResult &
Display' .
(. /

ButtonPart/ 9
part: >
)> ?
{ 	
return 
View 
( 
$str $
,$ %
part& *
)* +
.+ ,
Location, 4
(4 5
$str5 =
,= >
$str? H
)H I
;I J
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,

ButtonPart, 6
part7 ;
); <
{ 	
return 

Initialize 
< #
ButtonPartEditViewModel 5
>5 6
(6 7
$str7 O
,O P
mQ R
=>S U
{ 
m 
. 
Text 
= 
part 
. 
Text "
;" #
m 
. 
Type 
= 
part 
. 
Type "
;" #
} 
) 
; 
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?

ButtonPart? I
partJ N
,N O
IUpdateModelP \
updater] d
)d e
{ 	
var 
	viewModel 
= 
new #
ButtonPartEditViewModel  7
(7 8
)8 9
;9 :
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
)C D
)D E
{ 
part   
.   
Text   
=   
	viewModel   %
.  % &
Text  & *
?  * +
.  + ,
Trim  , 0
(  0 1
)  1 2
;  2 3
part!! 
.!! 
Type!! 
=!! 
	viewModel!! %
.!!% &
Type!!& *
?!!* +
.!!+ ,
Trim!!, 0
(!!0 1
)!!1 2
;!!2 3
}"" 
return$$ 
Edit$$ 
($$ 
part$$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' »
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\FormContentDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{		 
public

 

class

 $
FormContentDisplayDriver

 )
:

* + 
ContentDisplayDriver

, @
{ 
public 
override 
Task 
< 
IDisplayResult +
>+ ,
DisplayAsync- 9
(9 :
ContentItem: E
modelF K
,K L
BuildDisplayContextM `
contexta h
)h i
{ 	
var 
formItemShape 
= 
context  '
.' (
Shape( -
;- .
var 
formPart 
= 
model  
.  !
As! #
<# $
FormPart$ ,
>, -
(- .
). /
;/ 0
if 
( 
formPart 
!= 
null  
&&! #
context$ +
.+ ,
DisplayType, 7
==8 :
$str; C
)C D
{ 
formItemShape 
. 
Metadata &
.& '
Wrappers' /
./ 0
Add0 3
(3 4
$"4 6
Form_Wrapper__6 D
{D E
modelE J
.J K
ContentTypeK V
}V W
"W X
)X Y
;Y Z
} 
return 
Task 
. 

FromResult "
<" #
IDisplayResult# 1
>1 2
(2 3
null3 7
)7 8
;8 9
} 	
} 
} Ê
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\FormElementPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{		 
public

 

class

 (
FormElementPartDisplayDriver

 -
:

. /$
ContentPartDisplayDriver

0 H
<

H I
FormElementPart

I X
>

X Y
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,
FormElementPart, ;
part< @
)@ A
{ 	
return 

Initialize 
< (
FormElementPartEditViewModel :
>: ;
(; <
$str< Y
,Y Z
m[ \
=>] _
{ 
m 
. 
Id 
= 
part 
. 
Id 
; 
} 
) 
; 
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
FormElementPart? N
partO S
,S T
IUpdateModelU a
updaterb i
)i j
{ 	
var 
	viewModel 
= 
new (
FormElementPartEditViewModel  <
(< =
)= >
;> ?
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
)C D
)D E
{ 
part 
. 
Id 
= 
	viewModel #
.# $
Id$ &
?& '
.' (
Trim( ,
(, -
)- .
;. /
} 
return 
Edit 
( 
part 
) 
; 
} 	
} 
}   ƒ
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\FormInputElementPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{		 
public

 

class

 -
!FormInputElementPartDisplayDriver

 2
:

3 4$
ContentPartDisplayDriver

5 M
<

M N 
FormInputElementPart

N b
>

b c
{ 
public 
override 
IDisplayResult &
Edit' +
(+ , 
FormInputElementPart, @
partA E
)E F
{ 	
return 

Initialize 
< -
!FormInputElementPartEditViewModel ?
>? @
(@ A
$strA c
,c d
me f
=>g i
{ 
m 
. 
Name 
= 
part 
. 
Name "
;" #
} 
) 
; 
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ? 
FormInputElementPart? S
partT X
,X Y
IUpdateModelZ f
updaterg n
)n o
{ 	
var 
	viewModel 
= 
new -
!FormInputElementPartEditViewModel  A
(A B
)B C
;C D
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
)C D
)D E
{ 
part 
. 
Name 
= 
	viewModel %
.% &
Name& *
?* +
.+ ,
Trim, 0
(0 1
)1 2
;2 3
part 
. 
ContentItem  
.  !
DisplayText! ,
=- .
part/ 3
.3 4
Name4 8
;8 9
} 
return 
Edit 
( 
part 
) 
; 
} 	
}   
}!! Ò
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\FormPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{		 
public

 

class

 !
FormPartDisplayDriver

 &
:

' ($
ContentPartDisplayDriver

) A
<

A B
FormPart

B J
>

J K
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,
FormPart, 4
part5 9
)9 :
{ 	
return 

Initialize 
< !
FormPartEditViewModel 3
>3 4
(4 5
$str5 K
,K L
mM N
=>O Q
{ 
m 
. 
Action 
= 
part 
.  
Action  &
;& '
m 
. 
Method 
= 
part 
.  
Method  &
;& '
m 
. 
WorkflowTypeId  
=! "
part# '
.' (
WorkflowTypeId( 6
;6 7
m 
. 
EncType 
= 
part  
.  !
EncType! (
;( )
m 
. "
EnableAntiForgeryToken (
=) *
part+ /
./ 0"
EnableAntiForgeryToken0 F
;F G
} 
) 
; 
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
FormPart? G
partH L
,L M
IUpdateModelN Z
updater[ b
)b c
{ 	
var 
	viewModel 
= 
new !
FormPartEditViewModel  5
(5 6
)6 7
;7 8
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
)C D
)D E
{ 
part 
. 
Action 
= 
	viewModel '
.' (
Action( .
?. /
./ 0
Trim0 4
(4 5
)5 6
;6 7
part 
. 
Method 
= 
	viewModel '
.' (
Method( .
;. /
part   
.   
WorkflowTypeId   #
=  $ %
	viewModel  & /
.  / 0
WorkflowTypeId  0 >
;  > ?
part!! 
.!! 
EncType!! 
=!! 
	viewModel!! (
.!!( )
EncType!!) 0
;!!0 1
part"" 
."" "
EnableAntiForgeryToken"" +
="", -
	viewModel"". 7
.""7 8"
EnableAntiForgeryToken""8 N
;""N O
}## 
return%% 
Edit%% 
(%% 
part%% 
)%% 
;%% 
}&& 	
}'' 
}(( Ï
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\InputPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{		 
public

 

class

 "
InputPartDisplayDriver

 '
:

( )$
ContentPartDisplayDriver

* B
<

B C
	InputPart

C L
>

L M
{ 
public 
override 
IDisplayResult &
Display' .
(. /
	InputPart/ 8
part9 =
)= >
{ 	
return 
View 
( 
$str #
,# $
part% )
)) *
.* +
Location+ 3
(3 4
$str4 <
,< =
$str> G
)G H
;H I
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
	InputPart, 5
part6 :
): ;
{ 	
return 

Initialize 
< "
InputPartEditViewModel 4
>4 5
(5 6
$str6 M
,M N
mO P
=>Q S
{ 
m 
. 
Placeholder 
= 
part  $
.$ %
Placeholder% 0
;0 1
m 
. 
DefaultValue 
=  
part! %
.% &
DefaultValue& 2
;2 3
m 
. 
Type 
= 
part 
. 
Type "
;" #
} 
) 
; 
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
	InputPart? H
partI M
,M N
IUpdateModelO [
updater\ c
)c d
{ 	
var 
	viewModel 
= 
new "
InputPartEditViewModel  6
(6 7
)7 8
;8 9
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
)C D
)D E
{   
part!! 
.!! 
Placeholder!!  
=!!! "
	viewModel!!# ,
.!!, -
Placeholder!!- 8
?!!8 9
.!!9 :
Trim!!: >
(!!> ?
)!!? @
;!!@ A
part"" 
."" 
DefaultValue"" !
=""" #
	viewModel""$ -
.""- .
DefaultValue"". :
?"": ;
.""; <
Trim""< @
(""@ A
)""A B
;""B C
part## 
.## 
Type## 
=## 
	viewModel## %
.##% &
Type##& *
?##* +
.##+ ,
Trim##, 0
(##0 1
)##1 2
;##2 3
}$$ 
return&& 
Edit&& 
(&& 
part&& 
)&& 
;&& 
}'' 	
}(( 
})) ¥
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\LabelPartDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Forms		 
.		 
Drivers		 #
{

 
public 

class "
LabelPartDisplayDriver '
:( )$
ContentPartDisplayDriver* B
<B C
	LabelPartC L
>L M
{ 
public 
override 
IDisplayResult &
Display' .
(. /
	LabelPart/ 8
part9 =
)= >
{ 	
return 
View 
( 
$str #
,# $
part% )
)) *
.* +
Location+ 3
(3 4
$str4 <
,< =
$str> G
)G H
;H I
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
	LabelPart, 5
part6 :
,: ;"
BuildPartEditorContext< R
contextS Z
)Z [
{ 	
return 

Initialize 
< "
LabelPartEditViewModel 4
>4 5
(5 6
$str6 M
,M N
mO P
=>Q S
{ 
m 
. 
For 
= 
part 
. 
For  
;  !
} 
) 
; 
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
	LabelPart? H
partI M
,M N
IUpdateModelO [
updater\ c
,c d#
UpdatePartEditorContexte |
context	} Ñ
)
Ñ Ö
{ 	
var 
	viewModel 
= 
new "
LabelPartEditViewModel  6
(6 7
)7 8
;8 9
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
)C D
)D E
{ 
part   
.   
For   
=   
	viewModel   $
.  $ %
For  % (
?  ( )
.  ) *
Trim  * .
(  . /
)  / 0
;  0 1
}!! 
return## 
Edit## 
(## 
part## 
,## 
context## %
)##% &
;##& '
}$$ 	
}%% 
}&& ¿'
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\SelectPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{ 
public 

class #
SelectPartDisplayDriver (
:) *$
ContentPartDisplayDriver+ C
<C D

SelectPartD N
>N O
{ 
private 
static 
readonly "
JsonSerializerSettings  6
SerializerSettings7 I
=J K
newL O"
JsonSerializerSettingsP f
{ 	
ContractResolver 
= 
new "2
&CamelCasePropertyNamesContractResolver# I
(I J
)J K
,K L

Formatting 
= 

Formatting #
.# $
Indented$ ,
} 	
;	 

private 
readonly 
IStringLocalizer )
S* +
;+ ,
public #
SelectPartDisplayDriver &
(& '
IStringLocalizer' 7
<7 8#
SelectPartDisplayDriver8 O
>O P
stringLocalizerQ `
)` a
{ 	
S 
= 
stringLocalizer 
;  
} 	
public 
override 
IDisplayResult &
Display' .
(. /

SelectPart/ 9
part: >
)> ?
{ 	
return 
View 
( 
$str $
,$ %
part& *
)* +
.+ ,
Location, 4
(4 5
$str5 =
,= >
$str? H
)H I
;I J
}   	
public"" 
override"" 
IDisplayResult"" &
Edit""' +
(""+ ,

SelectPart"", 6
part""7 ;
)""; <
{## 	
return$$ 

Initialize$$ 
<$$ #
SelectPartEditViewModel$$ 5
>$$5 6
($$6 7
$str$$7 O
,$$O P
m$$Q R
=>$$S U
{%% 
m&& 
.&& 
Options&& 
=&& 
JsonConvert&& '
.&&' (
SerializeObject&&( 7
(&&7 8
part&&8 <
.&&< =
Options&&= D
??&&E G
Array&&H M
.&&M N
Empty&&N S
<&&S T
SelectOption&&T `
>&&` a
(&&a b
)&&b c
,&&c d
SerializerSettings&&e w
)&&w x
;&&x y
m'' 
.'' 
DefaultValue'' 
=''  
part''! %
.''% &
DefaultValue''& 2
;''2 3
}(( 
)(( 
;(( 
})) 	
public++ 
async++ 
override++ 
Task++ "
<++" #
IDisplayResult++# 1
>++1 2
UpdateAsync++3 >
(++> ?

SelectPart++? I
part++J N
,++N O
IUpdateModel++P \
updater++] d
)++d e
{,, 	
var-- 
	viewModel-- 
=-- 
new-- #
SelectPartEditViewModel--  7
(--7 8
)--8 9
;--9 :
if// 
(// 
await// 
updater// 
.// 
TryUpdateModelAsync// 1
(//1 2
	viewModel//2 ;
,//; <
Prefix//= C
)//C D
)//D E
{00 
part11 
.11 
DefaultValue11 !
=11" #
	viewModel11$ -
.11- .
DefaultValue11. :
;11: ;
try22 
{33 
part44 
.44 
Options44  
=44! "
String44# )
.44) *
IsNullOrWhiteSpace44* <
(44< =
	viewModel44= F
.44F G
Options44G N
)44N O
?55 
Array55 
.55  
Empty55  %
<55% &
SelectOption55& 2
>552 3
(553 4
)554 5
:66 
JsonConvert66 %
.66% &
DeserializeObject66& 7
<667 8
SelectOption668 D
[66D E
]66E F
>66F G
(66G H
	viewModel66H Q
.66Q R
Options66R Y
)66Y Z
;66Z [
}77 
catch88 
{99 
updater:: 
.:: 

ModelState:: &
.::& '
AddModelError::' 4
(::4 5
Prefix::5 ;
+::< =
$char::> A
+::B C
nameof::D J
(::J K#
SelectPartEditViewModel::K b
.::b c
Options::c j
)::j k
,::k l
S::m n
[::n o
$str	::o †
]
::† °
)
::° ¢
;
::¢ £
};; 
}<< 
return>> 
Edit>> 
(>> 
part>> 
)>> 
;>> 
}?? 	
}@@ 
}AA ©
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\TextAreaPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{		 
public

 

class

 %
TextAreaPartDisplayDriver

 *
:

+ ,$
ContentPartDisplayDriver

- E
<

E F
TextAreaPart

F R
>

R S
{ 
public 
override 
IDisplayResult &
Display' .
(. /
TextAreaPart/ ;
part< @
)@ A
{ 	
return 
View 
( 
$str &
,& '
part( ,
), -
.- .
Location. 6
(6 7
$str7 ?
,? @
$strA J
)J K
;K L
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
TextAreaPart, 8
part9 =
)= >
{ 	
return 

Initialize 
< %
TextAreaPartEditViewModel 7
>7 8
(8 9
$str9 S
,S T
mU V
=>W Y
{ 
m 
. 
Placeholder 
= 
part  $
.$ %
Placeholder% 0
;0 1
m 
. 
DefaultValue 
=  
part! %
.% &
DefaultValue& 2
;2 3
} 
) 
; 
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
TextAreaPart? K
partL P
,P Q
IUpdateModelR ^
updater_ f
)f g
{ 	
var 
	viewModel 
= 
new "
InputPartEditViewModel  6
(6 7
)7 8
;8 9
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
)C D
)D E
{ 
part   
.   
Placeholder    
=  ! "
	viewModel  # ,
.  , -
Placeholder  - 8
?  8 9
.  9 :
Trim  : >
(  > ?
)  ? @
;  @ A
part!! 
.!! 
DefaultValue!! !
=!!" #
	viewModel!!$ -
.!!- .
DefaultValue!!. :
?!!: ;
.!!; <
Trim!!< @
(!!@ A
)!!A B
;!!B C
}"" 
return$$ 
Edit$$ 
($$ 
part$$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' §
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\ValidationPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{		 
public

 

class

 '
ValidationPartDisplayDriver

 ,
:

- .$
ContentPartDisplayDriver

/ G
<

G H
ValidationPart

H V
>

V W
{ 
public 
override 
IDisplayResult &
Display' .
(. /
ValidationPart/ =
part> B
)B C
{ 	
return 
View 
( 
$str (
,( )
part* .
). /
./ 0
Location0 8
(8 9
$str9 A
,A B
$strC L
)L M
;M N
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
ValidationPart, :
part; ?
)? @
{ 	
return 

Initialize 
< '
ValidationPartEditViewModel 9
>9 :
(: ;
$str; W
,W X
mY Z
=>[ ]
{ 
m 
. 
For 
= 
part 
. 
For  
;  !
} 
) 
; 
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
ValidationPart? M
partN R
,R S
IUpdateModelT `
updatera h
)h i
{ 	
var 
	viewModel 
= 
new '
ValidationPartEditViewModel  ;
(; <
)< =
;= >
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
)C D
)D E
{ 
part 
. 
For 
= 
	viewModel $
.$ %
For% (
?( )
.) *
Trim* .
(. /
)/ 0
;0 1
}   
return"" 
Edit"" 
("" 
part"" 
)"" 
;"" 
}## 	
}$$ 
}%% ≤

üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Drivers\ValidationSummaryPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Drivers #
{ 
public 

class .
"ValidationSummaryPartDisplayDriver 3
:4 5$
ContentPartDisplayDriver6 N
<N O!
ValidationSummaryPartO d
>d e
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /!
ValidationSummaryPart		/ D
part		E I
)		I J
{

 	
return 
View 
( 
$str /
,/ 0
part1 5
)5 6
.6 7
Location7 ?
(? @
$str@ H
,H I
$strJ S
)S T
;T U
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,!
ValidationSummaryPart, A
partB F
)F G
{ 	
return 
View 
( 
$str ;
,; <
part= A
)A B
;B C
} 	
} 
} ¿
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Filters\ExportModelStateAttribute.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Filters #
{ 
public 

class %
ExportModelStateAttribute *
:+ ,'
ModelStateTransferAttribute- H
{		 
public

 
override

 
void

 
OnActionExecuted

 -
(

- .!
ActionExecutedContext

. C
context

D K
)

K L
{ 	
if 
( 
context 
. 

ModelState "
!=# %
null& *
&&+ -
!. /
context/ 6
.6 7

ModelState7 A
.A B
IsValidB I
&&J L

IsRedirectM W
(W X
contextX _
)_ `
)` a
{ 
var 

controller 
=  
context! (
.( )

Controller) 3
as4 6

Controller7 A
;A B
if 
( 

controller 
!= !
null" &
)& '
{ 

controller 
. 
TempData '
[' (
Key( +
]+ ,
=- .
ModelStateHelpers/ @
.@ A
SerializeModelStateA T
(T U
contextU \
.\ ]

ModelState] g
)g h
;h i
} 
} 
base 
. 
OnActionExecuted !
(! "
context" )
)) *
;* +
} 	
private 
bool 

IsRedirect 
(  !
ActionExecutedContext  5
context6 =
)= >
{ 	
var 
result 
= 
context  
.  !
Result! '
;' (
var 

statusCode 
= 
context $
.$ %
HttpContext% 0
.0 1
Response1 9
.9 :

StatusCode: D
;D E
return 
result 
is 
RedirectResult (
||) +
result   
is   !
RedirectToRouteResult   /
||  0 2
result!! 
is!! "
RedirectToActionResult!! 0
||!!1 3
result"" 
is"" 
LocalRedirectResult"" -
||"". 0

statusCode## 
==## 
(## 
int## "
)##" #
HttpStatusCode### 1
.##1 2
Redirect##2 :
||##; =

statusCode$$ 
==$$ 
($$ 
int$$ "
)$$" #
HttpStatusCode$$# 1
.$$1 2
TemporaryRedirect$$2 C
;$$C D
}%% 	
}&& 
}'' ™
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Filters\ImportModelStateAttribute.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Filters #
{ 
public 

class %
ImportModelStateAttribute *
:+ ,'
ModelStateTransferAttribute- H
{		 
public

 
override

 
void

 
OnActionExecuted

 -
(

- .!
ActionExecutedContext

. C
context

D K
)

K L
{ 	
var 

controller 
= 
context $
.$ %

Controller% /
as0 2

Controller3 =
;= >
var  
serializedModelState $
=% &

controller' 1
?1 2
.2 3
TempData3 ;
[; <
Key< ?
]? @
asA C
stringD J
;J K
if 
(  
serializedModelState $
!=% '
null( ,
), -
{ 
if 
( 
context 
. 
Result "
is# %

ViewResult& 0
||1 3
context4 ;
.; <
Result< B
isC E

PageResultF P
)P Q
{ 
var 

modelState "
=# $
ModelStateHelpers% 6
.6 7!
DeserializeModelState7 L
(L M 
serializedModelStateM a
)a b
;b c
context 
. 

ModelState &
.& '
Merge' ,
(, -

modelState- 7
)7 8
;8 9
} 
else 
{ 

controller 
. 
TempData '
.' (
Remove( .
(. /
Key/ 2
)2 3
;3 4
} 
} 
base 
. 
OnActionExecuted !
(! "
context" )
)) *
;* +
} 	
}   
}!! ñ
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Filters\ImportModelStatePageFilter.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Filters #
{ 
public 

class &
ImportModelStatePageFilter +
:, -
IPageFilter. 9
{		 
public

 
void

 !
OnPageHandlerExecuted

 )
(

) *&
PageHandlerExecutedContext

* D
context

E L
)

L M
{ 	
var 
	pageModel 
= 
context #
.# $
HandlerInstance$ 3
as4 6
	PageModel7 @
;@ A
var  
serializedModelState $
=% &
	pageModel' 0
?0 1
.1 2
TempData2 :
[: ;'
ModelStateTransferAttribute; V
.V W
KeyW Z
]Z [
as\ ^
string_ e
;e f
if 
(  
serializedModelState $
!=% '
null( ,
), -
{ 
if 
( 
context 
. 
Result "
is# %

PageResult& 0
)0 1
{ 
var 

modelState "
=# $
ModelStateHelpers% 6
.6 7!
DeserializeModelState7 L
(L M 
serializedModelStateM a
)a b
;b c
context 
. 

ModelState &
.& '
Merge' ,
(, -

modelState- 7
)7 8
;8 9
} 
else 
{ 
	pageModel 
. 
TempData &
.& '
Remove' -
(- .'
ModelStateTransferAttribute. I
.I J
KeyJ M
)M N
;N O
} 
} 
} 	
public   
void   "
OnPageHandlerExecuting   *
(  * +'
PageHandlerExecutingContext  + F
context  G N
)  N O
{!! 	
}"" 	
public$$ 
void$$ !
OnPageHandlerSelected$$ )
($$) *&
PageHandlerSelectedContext$$* D
context$$E L
)$$L M
{%% 	
}&& 	
}'' 
}(( ¶
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Filters\ModelStateTransferAttribute.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Filters #
{ 
public 

abstract 
class '
ModelStateTransferAttribute 5
:6 7!
ActionFilterAttribute8 M
{ 
internal 
const 
string 
Key !
=" #
nameof$ *
(* +'
ModelStateTransferAttribute+ F
)F G
;G H
} 
}		 ÿ
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\ButtonPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class %
ButtonPartQueryObjectType *
:+ ,
ObjectGraphType- <
<< =

ButtonPart= G
>G H
{ 
public %
ButtonPartQueryObjectType (
(( )
)) *
{		 	
Name

 
=

 
$str

 
;

  
Field 
( 
x 
=> 
x 
. 
Text 
, 
nullable '
:' (
true) -
)- .
;. /
Field 
( 
x 
=> 
x 
. 
Type 
, 
nullable '
:' (
true) -
)- .
;. /
} 	
} 
} ï
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\FormElementPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class *
FormElementPartQueryObjectType /
:0 1
ObjectGraphType2 A
<A B
FormElementPartB Q
>Q R
{ 
public *
FormElementPartQueryObjectType -
(- .
). /
{		 	
Name

 
=

 
$str

 $
;

$ %
Field 
( 
x 
=> 
x 
. 
Id 
, 
nullable %
:% &
true' +
)+ ,
;, -
} 	
} 
} ´
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\FormInputElementPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class /
#FormInputElementPartQueryObjectType 4
:5 6
ObjectGraphType7 F
<F G 
FormInputElementPartG [
>[ \
{ 
public /
#FormInputElementPartQueryObjectType 2
(2 3
)3 4
{		 	
Name

 
=

 
$str

 )
;

) *
Field 
( 
x 
=> 
x 
. 
Name 
, 
nullable '
:' (
true) -
)- .
;. /
} 	
} 
} ≥

îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\FormPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class #
FormPartQueryObjectType (
:) *
ObjectGraphType+ :
<: ;
FormPart; C
>C D
{ 
public #
FormPartQueryObjectType &
(& '
)' (
{		 	
Name

 
=

 
$str

 
;

 
Field 
( 
x 
=> 
x 
. 
WorkflowTypeId '
,' (
nullable) 1
:1 2
true3 7
)7 8
;8 9
Field 
( 
x 
=> 
x 
. 
Action 
,  
nullable! )
:) *
true+ /
)/ 0
;0 1
Field 
( 
x 
=> 
x 
. 
Method 
,  
nullable! )
:) *
true+ /
)/ 0
;0 1
} 	
} 
} ∏

ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\InputPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class $
InputPartQueryObjectType )
:* +
ObjectGraphType, ;
<; <
	InputPart< E
>E F
{ 
public $
InputPartQueryObjectType '
(' (
)( )
{		 	
Name

 
=

 
$str

 
;

 
Field 
( 
x 
=> 
x 
. 
Type 
, 
nullable '
:' (
true) -
)- .
;. /
Field 
( 
x 
=> 
x 
. 
Placeholder $
,$ %
nullable& .
:. /
true0 4
)4 5
;5 6
Field 
( 
x 
=> 
x 
. 
DefaultValue %
,% &
nullable' /
:/ 0
true1 5
)5 6
;6 7
} 	
} 
} ¨

ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\LabelPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class $
LabelPartQueryObjectType )
:* +
ObjectGraphType, ;
<; <
	LabelPart< E
>E F
{ 
public $
LabelPartQueryObjectType '
(' (
)( )
{		 	
Name

 
=

 
$str

 
;

 
Field 
( 
x 
=> 
x 
. 
For 
, 
nullable &
:& '
true( ,
), -
;- .
Field 
< 
StringGraphType !
>! "
(" #
$str# *
,* +
resolve, 3
:3 4
context5 <
=>= ?
{ 
return 
context 
. 
Source %
.% &
ContentItem& 1
.1 2
DisplayText2 =
;= >
} 
) 
; 
} 	
} 
} ·
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
[ 
RequireFeatures 
( 
$str /
)/ 0
]0 1
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
. 
AddObjectGraphType '
<' (
FormPart( 0
,0 1#
FormPartQueryObjectType2 I
>I J
(J K
)K L
;L M
services 
. 
AddObjectGraphType '
<' (
FormElementPart( 7
,7 8*
FormElementPartQueryObjectType9 W
>W X
(X Y
)Y Z
;Z [
services 
. 
AddObjectGraphType '
<' ( 
FormInputElementPart( <
,< =/
#FormInputElementPartQueryObjectType> a
>a b
(b c
)c d
;d e
services 
. 
AddObjectGraphType '
<' (
	LabelPart( 1
,1 2$
LabelPartQueryObjectType3 K
>K L
(L M
)M N
;N O
services 
. 
AddObjectGraphType '
<' (

ButtonPart( 2
,2 3%
ButtonPartQueryObjectType4 M
>M N
(N O
)O P
;P Q
services 
. 
AddObjectGraphType '
<' (
	InputPart( 1
,1 2$
InputPartQueryObjectType3 K
>K L
(L M
)M N
;N O
services 
. 
AddObjectGraphType '
<' (
TextAreaPart( 4
,4 5'
TextAreaPartQueryObjectType6 Q
>Q R
(R S
)S T
;T U
services 
. 
AddObjectGraphType '
<' (
ValidationPart( 6
,6 7)
ValidationPartQueryObjectType8 U
>U V
(V W
)W X
;X Y
} 	
} 
} Ô
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\TextAreaPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class '
TextAreaPartQueryObjectType ,
:- .
ObjectGraphType/ >
<> ?
TextAreaPart? K
>K L
{ 
public '
TextAreaPartQueryObjectType *
(* +
)+ ,
{		 	
Name

 
=

 
$str

 !
;

! "
Field 
( 
x 
=> 
x 
. 
DefaultValue %
,% &
nullable' /
:/ 0
true1 5
)5 6
;6 7
Field 
( 
x 
=> 
x 
. 
Placeholder $
,$ %
nullable& .
:. /
true0 4
)4 5
;5 6
} 	
} 
} í
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\ValidationPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class )
ValidationPartQueryObjectType .
:/ 0
ObjectGraphType1 @
<@ A
ValidationPartA O
>O P
{ 
public )
ValidationPartQueryObjectType ,
(, -
)- .
{		 	
Name

 
=

 
$str

 #
;

# $
Field 
( 
x 
=> 
x 
. 
For 
, 
nullable &
:& '
true( ,
), -
;- .
} 	
} 
} ⁄
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\GraphQL\ValidationSummaryPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
GraphQL #
{ 
public 

class 0
$ValidationSummaryPartQueryObjectType 5
:6 7
ObjectGraphType8 G
<G H!
ValidationSummaryPartH ]
>] ^
{ 
public 0
$ValidationSummaryPartQueryObjectType 3
(3 4
)4 5
{		 	
Name

 
=

 
$str

 *
;

* +
} 	
} 
} ¨%
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Helpers\ModelStateHelpers.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Helpers #
{ 
public		 

static		 
class		 
ModelStateHelpers		 )
{

 
public 
static 
string 
SerializeModelState 0
(0 1 
ModelStateDictionary1 E

modelStateF P
)P Q
{ 	
var 
	errorList 
= 

modelState &
.& '
Select' -
(- .
x. /
=>0 2
new3 6#
ModelStateTransferValue7 N
{ 
Key 
= 
x 
. 
Key 
, 
AttemptedValue 
=  
x! "
." #
Value# (
.( )
AttemptedValue) 7
,7 8
RawValue 
= 
x 
. 
Value "
." #
RawValue# +
,+ ,
ErrorMessages 
= 
x  !
.! "
Value" '
.' (
Errors( .
.. /
Select/ 5
(5 6
err6 9
=>: <
err= @
.@ A
ErrorMessageA M
)M N
.N O
ToListO U
(U V
)V W
,W X
} 
) 
; 
return 
JsonConvert 
. 
SerializeObject .
(. /
	errorList/ 8
)8 9
;9 :
} 	
public 
static  
ModelStateDictionary *!
DeserializeModelState+ @
(@ A
stringA G
serialisedErrorListH [
)[ \
{ 	
var 
	errorList 
= 
JsonConvert '
.' (
DeserializeObject( 9
<9 :
List: >
<> ?#
ModelStateTransferValue? V
>V W
>W X
(X Y
serialisedErrorListY l
)l m
;m n
var 

modelState 
= 
new   
ModelStateDictionary! 5
(5 6
)6 7
;7 8
foreach 
( 
var 
item 
in  
	errorList! *
)* +
{ 
item 
. 
RawValue 
= 
item  $
.$ %
RawValue% -
is. 0
JArray1 7
jarray8 >
?? @
jarrayA G
.G H
ToObjectH P
<P Q
objectQ W
[W X
]X Y
>Y Z
(Z [
)[ \
:] ^
item_ c
.c d
RawValued l
;l m

modelState   
.   
SetModelValue   (
(  ( )
item  ) -
.  - .
Key  . 1
,  1 2
item  3 7
.  7 8
RawValue  8 @
,  @ A
item  B F
.  F G
AttemptedValue  G U
)  U V
;  V W
foreach!! 
(!! 
var!! 
error!! "
in!!# %
item!!& *
.!!* +
ErrorMessages!!+ 8
)!!8 9
{"" 

modelState## 
.## 
AddModelError## ,
(##, -
item##- 1
.##1 2
Key##2 5
,##5 6
error##7 <
)##< =
;##= >
}$$ 
}%% 
return&& 

modelState&& 
;&& 
}'' 	
private)) 
class)) #
ModelStateTransferValue)) -
{** 	
public++ 
string++ 
Key++ 
{++ 
get++  #
;++# $
set++% (
;++( )
}++* +
public,, 
string,, 
AttemptedValue,, (
{,,) *
get,,+ .
;,,. /
set,,0 3
;,,3 4
},,5 6
public-- 
object-- 
RawValue-- "
{--# $
get--% (
;--( )
set--* -
;--- .
}--/ 0
public.. 
ICollection.. 
<.. 
string.. %
>..% &
ErrorMessages..' 4
{..5 6
get..7 :
;..: ;
set..< ?
;..? @
}..A B
=..C D
new..E H
List..I M
<..M N
string..N T
>..T U
(..U V
)..V W
;..W X
}// 	
}00 
}11 Œ	
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Manifest.cs
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
$str G
,G H
Dependencies 
= 
new 
[ 
] 
{ 
$str 0
,0 1
$str2 E
}F G
,G H
Category 
= 
$str 
) 
] é`
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Migrations.cs
	namespace 	
OrchardCore
 
. 
Forms 
{ 
public 

class 

Migrations 
: 
DataMigration +
{		 
private

 
readonly

 %
IContentDefinitionManager

 2%
_contentDefinitionManager

3 L
;

L M
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
$str: D
,D E
partF J
=>K M
partN R
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! G
)G H
)H I
;I J%
_contentDefinitionManager %
.% &
AlterTypeDefinition& 9
(9 :
$str: @
,@ A
typeB F
=>G I
typeJ N
. 
WithPart 
( 
$str %
,% &
part' +
=>, .
part/ 3
. 
WithSettings !
(! "
new" %
TitlePartSettings& 7
{8 9
RenderTitle: E
=F G
falseH M
}N O
)O P
. 
WithPosition !
(! "
$str" %
)% &
) 
. 
WithPart 
( 
$str +
,+ ,
part- 1
=>2 4
part 
. 
WithPosition $
($ %
$str% (
)( )
) 
.   
WithPart   
(   
$str   $
)  $ %
.!! 
WithPart!! 
(!! 
$str!! $
)!!$ %
."" 

Stereotype"" 
("" 
$str"" $
)""$ %
)""% &
;""& '%
_contentDefinitionManager%% %
.%%% &
AlterPartDefinition%%& 9
(%%9 :
$str%%: K
,%%K L
part%%M Q
=>%%R T
part%%U Y
.&& 
WithDescription&&  
(&&  !
$str&&! S
)&&S T
)&&T U
;&&U V%
_contentDefinitionManager)) %
.))% &
AlterPartDefinition))& 9
())9 :
$str)): P
,))P Q
part))R V
=>))W Y
part))Z ^
.** 
WithDescription**  
(**  !
$str**! Y
)**Y Z
)**Z [
;**[ \%
_contentDefinitionManager-- %
.--% &
AlterPartDefinition--& 9
(--9 :
$str--: E
,--E F
part--G K
=>--L N
part--O S
... 
WithDescription..  
(..  !
$str..! =
)..= >
)..> ?
;..? @%
_contentDefinitionManager00 %
.00% &
AlterTypeDefinition00& 9
(009 :
$str00: A
,00A B
type00C G
=>00H J
type00K O
.11 
WithPart11 
(11 
$str11 %
,11% &
part11' +
=>11, .
part11/ 3
.22 
WithSettings22 !
(22! "
new22" %
TitlePartSettings22& 7
{228 9
RenderTitle22: E
=22F G
false22H M
}22N O
)22O P
)33 
.44 
WithPart44 
(44 
$str44 +
)44+ ,
.55 
WithPart55 
(55 
$str55 %
)55% &
.66 

Stereotype66 
(66 
$str66 $
)66$ %
)66% &
;66& '%
_contentDefinitionManager99 %
.99% &
AlterPartDefinition99& 9
(999 :
$str99: E
,99E F
part99G K
=>99L N
part99O S
.:: 
WithDescription::  
(::  !
$str::! C
)::C D
)::D E
;::E F%
_contentDefinitionManager<< %
.<<% &
AlterTypeDefinition<<& 9
(<<9 :
$str<<: A
,<<A B
type<<C G
=><<H J
type<<K O
.== 
WithPart== 
(== 
$str== 0
)==0 1
.>> 
WithPart>> 
(>> 
$str>> +
)>>+ ,
.?? 
WithPart?? 
(?? 
$str?? %
)??% &
.@@ 

Stereotype@@ 
(@@ 
$str@@ $
)@@$ %
)@@% &
;@@& '%
_contentDefinitionManagerCC %
.CC% &
AlterPartDefinitionCC& 9
(CC9 :
$strCC: H
,CCH I
partCCJ N
=>CCO Q
partCCR V
.DD 
WithDescriptionDD  
(DD  !
$strDD! A
)DDA B
)DDB C
;DDC D%
_contentDefinitionManagerFF %
.FF% &
AlterTypeDefinitionFF& 9
(FF9 :
$strFF: D
,FFD E
typeFFF J
=>FFK M
typeFFN R
.GG 
WithPartGG 
(GG 
$strGG 0
)GG0 1
.HH 
WithPartHH 
(HH 
$strHH +
)HH+ ,
.II 
WithPartII 
(II 
$strII (
)II( )
.JJ 

StereotypeJJ 
(JJ 
$strJJ $
)JJ$ %
)JJ% &
;JJ& '%
_contentDefinitionManagerMM %
.MM% &
AlterPartDefinitionMM& 9
(MM9 :
$strMM: F
,MMF G
partMMH L
=>MMM O
partMMP T
.NN 
WithDescriptionNN  
(NN  !
$strNN! D
)NND E
)NNE F
;NNF G%
_contentDefinitionManagerPP %
.PP% &
AlterTypeDefinitionPP& 9
(PP9 :
$strPP: B
,PPB C
typePPD H
=>PPI K
typePPL P
.QQ 
WithPartQQ 
(QQ 
$strQQ 0
)QQ0 1
.RR 
WithPartRR 
(RR 
$strRR +
)RR+ ,
.SS 
WithPartSS 
(SS 
$strSS &
)SS& '
.TT 

StereotypeTT 
(TT 
$strTT $
)TT$ %
)TT% &
;TT& '%
_contentDefinitionManagerWW %
.WW% &
AlterPartDefinitionWW& 9
(WW9 :
$strWW: F
,WWF G
partWWH L
=>WWM O
partWWP T
.XX 
WithDescriptionXX  
(XX  !
$strXX! >
)XX> ?
)XX? @
;XX@ A%
_contentDefinitionManagerZZ %
.ZZ% &
AlterTypeDefinitionZZ& 9
(ZZ9 :
$strZZ: B
,ZZB C
typeZZD H
=>ZZI K
typeZZL P
.[[ 
WithPart[[ 
([[ 
$str[[ 0
)[[0 1
.\\ 
WithPart\\ 
(\\ 
$str\\ +
)\\+ ,
.]] 
WithPart]] 
(]] 
$str]] &
)]]& '
.^^ 

Stereotype^^ 
(^^ 
$str^^ $
)^^$ %
)^^% &
;^^& '%
_contentDefinitionManageraa %
.aa% &
AlterPartDefinitionaa& 9
(aa9 :
$straa: Q
,aaQ R
partaaS W
=>aaX Z
partaa[ _
.bb 
WithDescriptionbb  
(bb  !
$strbb! A
)bbA B
)bbB C
;bbC D%
_contentDefinitionManagerdd %
.dd% &
AlterTypeDefinitiondd& 9
(dd9 :
$strdd: M
,ddM N
typeddO S
=>ddT V
typeddW [
.ee 
WithPartee 
(ee 
$stree 1
)ee1 2
.ff 

Stereotypeff 
(ff 
$strff $
)ff$ %
)ff% &
;ff& '%
_contentDefinitionManagerii %
.ii% &
AlterPartDefinitionii& 9
(ii9 :
$strii: J
,iiJ K
partiiL P
=>iiQ S
partiiT X
.jj 
WithDescriptionjj  
(jj  !
$strjj! E
)jjE F
)jjF G
;jjG H%
_contentDefinitionManagerll %
.ll% &
AlterTypeDefinitionll& 9
(ll9 :
$strll: F
,llF G
typellH L
=>llM O
typellP T
.mm 
WithPartmm 
(mm 
$strmm *
)mm* +
.nn 

Stereotypenn 
(nn 
$strnn $
)nn$ %
)nn% &
;nn& '
returnqq 
$numqq 
;qq 
}rr 	
publicuu 
intuu 
UpdateFrom1uu 
(uu 
)uu  
{vv 	%
_contentDefinitionManagerww %
.ww% &
AlterTypeDefinitionww& 9
(ww9 :
$strww: @
,ww@ A
typewwB F
=>wwG I
typewwJ N
.xx 
WithPartxx 
(xx 
$strxx %
,xx% &
partxx' +
=>xx, .
partxx/ 3
.xx3 4
MergeSettingsxx4 A
<xxA B
TitlePartSettingsxxB S
>xxS T
(xxT U
settingxxU \
=>xx] _
settingxx` g
.xxg h
RenderTitlexxh s
=xxt u
falsexxv {
)xx{ |
)xx| }
)yy 
;yy %
_contentDefinitionManager{{ %
.{{% &
AlterTypeDefinition{{& 9
({{9 :
$str{{: A
,{{A B
type{{C G
=>{{H J
type{{K O
.|| 
WithPart|| 
(|| 
$str|| %
,||% &
part||' +
=>||, .
part||/ 3
.||3 4
MergeSettings||4 A
<||A B
TitlePartSettings||B S
>||S T
(||T U
setting||U \
=>||] _
setting||` g
.||g h
RenderTitle||h s
=||t u
false||v {
)||{ |
)||| }
)}} 
;}} 
return 
$num 
; 
}
ÄÄ 	
public
ÉÉ 
int
ÉÉ 
UpdateFrom2
ÉÉ 
(
ÉÉ 
)
ÉÉ  
{
ÑÑ 	'
_contentDefinitionManager
ÖÖ %
.
ÖÖ% &!
AlterTypeDefinition
ÖÖ& 9
(
ÖÖ9 :
$str
ÖÖ: @
,
ÖÖ@ A
type
ÖÖB F
=>
ÖÖG I
type
ÖÖJ N
.
ÜÜ 
WithPart
ÜÜ 
(
ÜÜ 
$str
ÜÜ %
,
ÜÜ% &
part
ÜÜ' +
=>
ÜÜ, .
part
ÜÜ/ 3
.
áá 
WithPosition
áá !
(
áá! "
$str
áá" %
)
áá% &
)
àà 
.
ââ 
WithPart
ââ 
(
ââ 
$str
ââ +
,
ââ+ ,
part
ââ- 1
=>
ââ2 4
part
ää 
.
ää 
WithPosition
ää $
(
ää$ %
$str
ää% (
)
ää( )
)
ãã 
)
åå 
;
åå 
return
éé 
$num
éé 
;
éé 
}
èè 	
internal
ëë 
class
ëë 
TitlePartSettings
ëë (
{
íí 	
public
ìì 
int
ìì 
Options
ìì 
{
ìì  
get
ìì! $
;
ìì$ %
set
ìì& )
;
ìì) *
}
ìì+ ,
public
ïï 
string
ïï 
Pattern
ïï !
{
ïï" #
get
ïï$ '
;
ïï' (
set
ïï) ,
;
ïï, -
}
ïï. /
[
óó 
DefaultValue
óó 
(
óó 
true
óó 
)
óó 
]
óó  
public
òò 
bool
òò 
RenderTitle
òò #
{
òò$ %
get
òò& )
;
òò) *
set
òò+ .
;
òò. /
}
òò0 1
}
ôô 	
}
öö 
}õõ À
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\ButtonPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class 

ButtonPart 
: 
ContentPart )
{ 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 ª
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\FormElementPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class 
FormElementPart  
:! "
ContentPart# .
{		 
public

 
string

 
Id

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
} 
} «
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\FormInputElementPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class  
FormInputElementPart %
:& '
ContentPart( 3
{		 
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
' (
} 
} ‡	
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\FormPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class 
FormPart 
: 
ContentPart '
{ 
public 
string 
Action 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Method 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
WorkflowTypeId		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public

 
string

 
EncType

 
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
public 
bool "
EnableAntiForgeryToken *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
true; ?
;? @
} 
} 
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\InputPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class 
	InputPart 
: 
ContentPart (
{ 
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
string		 
Placeholder		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
}

 
} ∞
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\LabelPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class 
	LabelPart 
: 
ContentPart (
{ 
public 
string 
For 
{ 
get 
;  
set! $
;$ %
}& '
} 
}		 ä	
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\SelectPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class 

SelectPart 
: 
ContentPart )
{ 
public 
SelectOption 
[ 
] 
Options %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
}		 
public 

class 
SelectOption 
{ 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ﬁ
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\TextAreaPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class 
TextAreaPart 
: 
ContentPart  +
{ 
public 
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Placeholder !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 ∫
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\ValidationPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class 
ValidationPart 
:  !
ContentPart" -
{ 
public 
string 
For 
{ 
get 
;  
set! $
;$ %
}& '
} 
}		 ±
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Models\ValidationSummaryPart.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
Models "
{ 
public 

class !
ValidationSummaryPart &
:' (
ContentPart) 4
{ 
} 
} ¢5
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Startup.cs
	namespace 	
OrchardCore
 
. 
Forms 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
static 
Startup 
( 
) 
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
FormPart@ H
>H I
(I J
)J K
;K L
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
FormElementPart@ O
>O P
(P Q
)Q R
;R S
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @ 
FormInputElementPart@ T
>T U
(U V
)V W
;W X
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
	LabelPart@ I
>I J
(J K
)K L
;L M
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
	InputPart@ I
>I J
(J K
)K L
;L M
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @

SelectPart@ J
>J K
(K L
)L M
;M N
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
TextAreaPart@ L
>L M
(M N
)N O
;O P
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @

ButtonPart@ J
>J K
(K L
)L M
;M N
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	Configure 
< 

MvcOptions )
>) *
(* +
options+ 2
=>3 5
{ 
options   
.   
Filters   
.    
Add    #
<  # $%
ExportModelStateAttribute  $ =
>  = >
(  > ?
)  ? @
;  @ A
options!! 
.!! 
Filters!! 
.!!  
Add!!  #
<!!# $%
ImportModelStateAttribute!!$ =
>!!= >
(!!> ?
)!!? @
;!!@ A
options"" 
."" 
Filters"" 
.""  
Add""  #
<""# $&
ImportModelStatePageFilter""$ >
>""> ?
(""? @
)""@ A
;""A B
}## 
)## 
;## 
services%% 
.%% 
	AddScoped%% 
<%% !
IContentDisplayDriver%% 4
,%%4 5$
FormContentDisplayDriver%%6 N
>%%N O
(%%O P
)%%P Q
;%%Q R
services'' 
.'' 
AddContentPart'' #
<''# $
FormPart''$ ,
>'', -
(''- .
)''. /
.(( 
UseDisplayDriver(( %
<((% &!
FormPartDisplayDriver((& ;
>((; <
(((< =
)((= >
;((> ?
services** 
.** 
AddContentPart** #
<**# $
FormElementPart**$ 3
>**3 4
(**4 5
)**5 6
.++ 
UseDisplayDriver++ %
<++% &(
FormElementPartDisplayDriver++& B
>++B C
(++C D
)++D E
;++E F
services-- 
.-- 
AddContentPart-- #
<--# $ 
FormInputElementPart--$ 8
>--8 9
(--9 :
)--: ;
... 
UseDisplayDriver.. %
<..% &-
!FormInputElementPartDisplayDriver..& G
>..G H
(..H I
)..I J
;..J K
services00 
.00 
AddContentPart00 #
<00# $
	LabelPart00$ -
>00- .
(00. /
)00/ 0
.11 
UseDisplayDriver11 %
<11% &"
LabelPartDisplayDriver11& <
>11< =
(11= >
)11> ?
;11? @
services33 
.33 
AddContentPart33 #
<33# $

ButtonPart33$ .
>33. /
(33/ 0
)330 1
.44 
UseDisplayDriver44 %
<44% &#
ButtonPartDisplayDriver44& =
>44= >
(44> ?
)44? @
;44@ A
services66 
.66 
AddContentPart66 #
<66# $
	InputPart66$ -
>66- .
(66. /
)66/ 0
.77 
UseDisplayDriver77 %
<77% &"
InputPartDisplayDriver77& <
>77< =
(77= >
)77> ?
;77? @
services99 
.99 
AddContentPart99 #
<99# $

SelectPart99$ .
>99. /
(99/ 0
)990 1
.:: 
UseDisplayDriver:: !
<::! "#
SelectPartDisplayDriver::" 9
>::9 :
(::: ;
)::; <
;::< =
services<< 
.<< 
AddContentPart<< #
<<<# $
TextAreaPart<<$ 0
><<0 1
(<<1 2
)<<2 3
.== 
UseDisplayDriver== %
<==% &%
TextAreaPartDisplayDriver==& ?
>==? @
(==@ A
)==A B
;==B C
services?? 
.?? 
AddContentPart?? #
<??# $!
ValidationSummaryPart??$ 9
>??9 :
(??: ;
)??; <
.@@ 
UseDisplayDriver@@ %
<@@% &.
"ValidationSummaryPartDisplayDriver@@& H
>@@H I
(@@I J
)@@J K
;@@K L
servicesBB 
.BB 
AddContentPartBB #
<BB# $
ValidationPartBB$ 2
>BB2 3
(BB3 4
)BB4 5
.CC 
UseDisplayDriverCC %
<CC% &'
ValidationPartDisplayDriverCC& A
>CCA B
(CCB C
)CCC D
;CCD E
servicesEE 
.EE 
	AddScopedEE 
<EE 
IDataMigrationEE -
,EE- .

MigrationsEE/ 9
>EE9 :
(EE: ;
)EE; <
;EE< =
}FF 	
}GG 
}HH ˘
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\ButtonPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class #
ButtonPartEditViewModel (
{ 
[ 	
Required	 
] 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
Type
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
' (
} 
} µ
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\FormElementPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class (
FormElementPartEditViewModel -
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
} 
} ¡
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\FormInputElementPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class -
!FormInputElementPartEditViewModel 2
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ⁄	
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\FormPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class !
FormPartEditViewModel &
{ 
public 
string 
Action 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Method 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
WorkflowTypeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
EncType 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
bool		 "
EnableAntiForgeryToken		 *
{		+ ,
get		- 0
;		0 1
set		2 5
;		5 6
}		7 8
=		9 :
true		; ?
;		? @
}

 
} Í
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\InputPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class "
InputPartEditViewModel '
{ 
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Placeholder !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 ™
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\LabelPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class "
LabelPartEditViewModel '
{ 
public 
string 
For 
{ 
get 
;  
set! $
;$ %
}& '
} 
} –
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\SelectPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class #
SelectPartEditViewModel (
{ 
public 
string 
Options 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ÿ
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\TextAreaPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class %
TextAreaPartEditViewModel *
{ 
public 
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Placeholder !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ‘
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\ViewModels\ValidationPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 

ViewModels &
{ 
public 

class '
ValidationPartEditViewModel ,
{ 
public 
string 
For 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
ErrorMessage "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ‡
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Activities\AddModelValidationErrorTask.cs
	namespace		 	
OrchardCore		
 
.		 
Forms		 
.		 
	Workflows		 %
.		% &

Activities		& 0
{

 
public 

class '
AddModelValidationErrorTask ,
:- .
TaskActivity/ ;
{ 
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public '
AddModelValidationErrorTask *
(* + 
IUpdateModelAccessor  
updateModelAccessor! 4
,4 5
IStringLocalizer 
< '
AddModelValidationErrorTask 8
>8 9
	localizer: C
) 	
{ 	 
_updateModelAccessor  
=! "
updateModelAccessor# 6
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
=>$ &
nameof' -
(- .'
AddModelValidationErrorTask. I
)I J
;J K
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 Z
]Z [
;[ \
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
string 
Key 
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
string%% 
ErrorMessage%% "
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
activityContext	++{ ä
)
++ä ã
{,, 	
return-- 
Outcomes-- 
(-- 
S-- 
[-- 
$str-- $
]--$ %
)--% &
;--& '
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
activityContext	00r Å
)
00Å Ç
{11 	
var22 
updater22 
=22  
_updateModelAccessor22 .
.22. /
ModelUpdater22/ ;
;22; <
if44 
(44 
updater44 
==44 
null44 
)44  
{55 
throw66 
new66 %
InvalidOperationException66 3
(663 4
$str664 y
)66y z
;66z {
}77 
updater99 
.99 

ModelState99 
.99 
AddModelError99 ,
(99, -
Key99- 0
,990 1
ErrorMessage992 >
)99> ?
;99? @
return:: 
Outcomes:: 
(:: 
$str:: "
)::" #
;::# $
};; 	
}<< 
}== ˘
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Activities\BindModelStateTask.cs
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
Forms

 
.

 
	Workflows

 %
.

% &

Activities

& 0
{ 
public 

class 
BindModelStateTask #
:$ %
TaskActivity& 2
{ 
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
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
BindModelStateTask !
(! " 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5 
IUpdateModelAccessor  
updateModelAccessor! 4
,4 5
IStringLocalizer 
< 
BindModelStateTask /
>/ 0
	localizer1 :
) 	
{ 	 
_updateModelAccessor  
=! "
updateModelAccessor# 6
;6 7 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
BindModelStateTask. @
)@ A
;A B
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 P
]P Q
;Q R
public!! 
override!! 
LocalizedString!! '
Category!!( 0
=>!!1 3
S!!4 5
[!!5 6
$str!!6 B
]!!B C
;!!C D
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
activityContext	##{ ä
)
##ä ã
{$$ 	
return%% 
Outcomes%% 
(%% 
S%% 
[%% 
$str%% $
]%%$ %
)%%% &
;%%& '
}&& 	
public(( 
override(( #
ActivityExecutionResult(( /
Execute((0 7
(((7 8$
WorkflowExecutionContext((8 P
workflowContext((Q `
,((` a
ActivityContext((b q
activityContext	((r Å
)
((Å Ç
{)) 	
var** 
updater** 
=**  
_updateModelAccessor** .
.**. /
ModelUpdater**/ ;
;**; <
if,, 
(,, 
updater,, 
==,, 
null,, 
),,  
{-- 
throw.. 
new.. %
InvalidOperationException.. 3
(..3 4
$str..4 y
)..y z
;..z {
}// 
var11 
httpContext11 
=11  
_httpContextAccessor11 2
.112 3
HttpContext113 >
;11> ?
foreach33 
(33 
var33 
item33 
in33  
httpContext33! ,
.33, -
Request33- 4
.334 5
Form335 9
)339 :
{44 
updater55 
.55 

ModelState55 "
.55" #
SetModelValue55# 0
(550 1
item551 5
.555 6
Key556 9
,559 :
item55; ?
.55? @
Value55@ E
,55E F
item55G K
.55K L
Value55L Q
)55Q R
;55R S
}66 
return88 
Outcomes88 
(88 
$str88 "
)88" #
;88# $
}99 	
}:: 
};; ˜
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Activities\ValidateAntiforgeryTokenTask.cs
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
Forms

 
.

 
	Workflows

 %
.

% &

Activities

& 0
{ 
public 

class (
ValidateAntiforgeryTokenTask -
:. /
TaskActivity0 <
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IAntiforgery %
_antiforgery& 2
;2 3
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public (
ValidateAntiforgeryTokenTask +
(+ , 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
IAntiforgery 
antiforgery $
,$ %
IStringLocalizer 
< (
ValidateAntiforgeryTokenTask 9
>9 :
	localizer; D
) 	
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_antiforgery 
= 
antiforgery &
;& '
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .(
ValidateAntiforgeryTokenTask. J
)J K
;K L
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 Z
]Z [
;[ \
public!! 
override!! 
LocalizedString!! '
Category!!( 0
=>!!1 3
S!!4 5
[!!5 6
$str!!6 B
]!!B C
;!!C D
public## 
override## 
bool## 
	HasEditor## &
=>##' )
false##* /
;##/ 0
public%% 
override%% 
IEnumerable%% #
<%%# $
Outcome%%$ +
>%%+ ,
GetPossibleOutcomes%%- @
(%%@ A$
WorkflowExecutionContext%%A Y
workflowContext%%Z i
,%%i j
ActivityContext%%k z
activityContext	%%{ ä
)
%%ä ã
{&& 	
return'' 
Outcomes'' 
('' 
S'' 
['' 
$str'' $
]''$ %
,''% &
S''' (
[''( )
$str'') 0
]''0 1
,''1 2
S''3 4
[''4 5
$str''5 >
]''> ?
)''? @
;''@ A
}(( 	
public** 
override** 
async** 
Task** "
<**" ##
ActivityExecutionResult**# :
>**: ;
ExecuteAsync**< H
(**H I$
WorkflowExecutionContext**I a
workflowContext**b q
,**q r
ActivityContext	**s Ç
activityContext
**É í
)
**í ì
{++ 	
if,, 
(,, 
await,, 
_antiforgery,, "
.,," #
IsRequestValidAsync,,# 6
(,,6 7 
_httpContextAccessor,,7 K
.,,K L
HttpContext,,L W
),,W X
),,X Y
{-- 
return.. 
Outcomes.. 
(..  
$str..  &
,..& '
$str..( /
)../ 0
;..0 1
}// 
else00 
{11 
return22 
Outcomes22 
(22  
$str22  &
,22& '
$str22( 1
)221 2
;222 3
}33 
}44 	
}55 
}66 Ì(
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Activities\ValidateFormFieldTask.cs
	namespace		 	
OrchardCore		
 
.		 
Forms		 
.		 
	Workflows		 %
.		% &

Activities		& 0
{

 
public 

class !
ValidateFormFieldTask &
:' (
TaskActivity) 5
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public !
ValidateFormFieldTask $
($ % 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5 
IUpdateModelAccessor  
updateModelAccessor! 4
,4 5
IStringLocalizer 
< !
ValidateFormFieldTask 2
>2 3
	localizer4 =
) 	
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7 
_updateModelAccessor  
=! "
updateModelAccessor# 6
;6 7
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .!
ValidateFormFieldTask. C
)C D
;D E
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 S
]S T
;T U
public!! 
override!! 
LocalizedString!! '
Category!!( 0
=>!!1 3
S!!4 5
[!!5 6
$str!!6 B
]!!B C
;!!C D
public## 
string## 
	FieldName## 
{$$ 	
get%% 
=>%% 
GetProperty%% 
<%% 
string%% %
>%%% &
(%%& '
)%%' (
;%%( )
set&& 
=>&& 
SetProperty&& 
(&& 
value&& $
)&&$ %
;&&% &
}'' 	
public)) 
string)) 
ErrorMessage)) "
{** 	
get++ 
=>++ 
GetProperty++ 
<++ 
string++ %
>++% &
(++& '
)++' (
;++( )
set,, 
=>,, 
SetProperty,, 
(,, 
value,, $
),,$ %
;,,% &
}-- 	
public// 
override// 
IEnumerable// #
<//# $
Outcome//$ +
>//+ ,
GetPossibleOutcomes//- @
(//@ A$
WorkflowExecutionContext//A Y
workflowContext//Z i
,//i j
ActivityContext//k z
activityContext	//{ ä
)
//ä ã
{00 	
return11 
Outcomes11 
(11 
S11 
[11 
$str11 $
]11$ %
,11% &
S11' (
[11( )
$str11) 0
]110 1
,111 2
S113 4
[114 5
$str115 >
]11> ?
)11? @
;11@ A
}22 	
public44 
override44 #
ActivityExecutionResult44 /
Execute440 7
(447 8$
WorkflowExecutionContext448 P
workflowContext44Q `
,44` a
ActivityContext44b q
activityContext	44r Å
)
44Å Ç
{55 	
var66 
form66 
=66  
_httpContextAccessor66 +
.66+ ,
HttpContext66, 7
.667 8
Request668 ?
.66? @
Form66@ D
;66D E
var77 

fieldValue77 
=77 
form77 !
[77! "
	FieldName77" +
]77+ ,
;77, -
var88 
isValid88 
=88 
!88 
string88 !
.88! "
IsNullOrWhiteSpace88" 4
(884 5

fieldValue885 ?
)88? @
;88@ A
var99 
outcome99 
=99 
isValid99 !
?99" #
$str99$ +
:99, -
$str99. 7
;997 8
if;; 
(;; 
!;; 
isValid;; 
);; 
{<< 
var== 
updater== 
===  
_updateModelAccessor== 2
.==2 3
ModelUpdater==3 ?
;==? @
if?? 
(?? 
updater?? 
!=?? 
null?? #
)??# $
{@@ 
updaterAA 
.AA 

ModelStateAA &
.AA& '
TryAddModelErrorAA' 7
(AA7 8
	FieldNameAA8 A
,AAA B
ErrorMessageAAC O
)AAO P
;AAP Q
}BB 
}CC 
returnEE 
OutcomesEE 
(EE 
$strEE "
,EE" #
outcomeEE$ +
)EE+ ,
;EE, -
}FF 	
}GG 
}HH π
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Activities\ValidateFormTask.cs
	namespace		 	
OrchardCore		
 
.		 
Forms		 
.		 
	Workflows		 %
.		% &

Activities		& 0
{

 
public 

class 
ValidateFormTask !
:" #
TaskActivity$ 0
{ 
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ValidateFormTask 
(   
IUpdateModelAccessor  
updateModelAccessor! 4
,4 5
IStringLocalizer 
< 
ValidateFormTask -
>- .
	localizer/ 8
) 	
{ 	 
_updateModelAccessor  
=! "
updateModelAccessor# 6
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
=>$ &
nameof' -
(- .
ValidateFormTask. >
)> ?
;? @
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 M
]M N
;N O
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 B
]B C
;C D
public 
override 
bool 
	HasEditor &
=>' )
false* /
;/ 0
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
activityContext	!!{ ä
)
!!ä ã
{"" 	
return## 
Outcomes## 
(## 
S## 
[## 
$str## %
]##% &
,##& '
S##( )
[##) *
$str##* 3
]##3 4
)##4 5
;##5 6
}$$ 	
public&& 
override&& #
ActivityExecutionResult&& /
Execute&&0 7
(&&7 8$
WorkflowExecutionContext&&8 P
workflowContext&&Q `
,&&` a
ActivityContext&&b q
activityContext	&&r Å
)
&&Å Ç
{'' 	
var(( 
updater(( 
=((  
_updateModelAccessor(( .
.((. /
ModelUpdater((/ ;
;((; <
if** 
(** 
updater** 
==** 
null** 
)**  
{++ 
throw,, 
new,, %
InvalidOperationException,, 3
(,,3 4
$str,,4 y
),,y z
;,,z {
}-- 
var// 
isValid// 
=// 
updater// !
.//! "

ModelState//" ,
.//, -

ErrorCount//- 7
==//8 :
$num//; <
;//< =
var00 
outcome00 
=00 
isValid00 !
?00" #
$str00$ +
:00, -
$str00. 7
;007 8
return11 
Outcomes11 
(11 
outcome11 #
)11# $
;11$ %
}22 	
}33 
}44 Õ
ØD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Drivers\AddModelValidationErrorTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class 4
(AddModelValidationErrorTaskDisplayDriver 9
:: ;!
ActivityDisplayDriver< Q
<Q R'
AddModelValidationErrorTaskR m
,m n1
$AddModelValidationErrorTaskViewModel	o ì
>
ì î
{ 
	protected		 
override		 
void		 
EditActivity		  ,
(		, -'
AddModelValidationErrorTask		- H
activity		I Q
,		Q R0
$AddModelValidationErrorTaskViewModel		S w
model		x }
)		} ~
{

 	
model 
. 
Key 
= 
activity  
.  !
Key! $
;$ %
model 
. 
ErrorMessage 
=  
activity! )
.) *
ErrorMessage* 6
;6 7
} 	
	protected 
override 
void 
UpdateActivity  .
(. /0
$AddModelValidationErrorTaskViewModel/ S
modelT Y
,Y Z'
AddModelValidationErrorTask[ v
activityw 
)	 Ä
{ 	
activity 
. 
Key 
= 
model  
.  !
Key! $
?$ %
.% &
Trim& *
(* +
)+ ,
;, -
activity 
. 
ErrorMessage !
=" #
model$ )
.) *
ErrorMessage* 6
?6 7
.7 8
Trim8 <
(< =
)= >
;> ?
} 	
} 
} ø
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Drivers\BindModelStateTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class +
BindModelStateTaskDisplayDriver 0
:1 2!
ActivityDisplayDriver3 H
<H I
BindModelStateTaskI [
>[ \
{ 
} 
}		 ›
∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Drivers\ValidateAntiforgeryTokenTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class 5
)ValidateAntiforgeryTokenTaskDisplayDriver :
:; <!
ActivityDisplayDriver= R
<R S(
ValidateAntiforgeryTokenTaskS o
>o p
{ 
} 
}		 ¥
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Drivers\ValidateFormFieldTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class .
"ValidateFormFieldTaskDisplayDriver 3
:4 5!
ActivityDisplayDriver6 K
<K L!
ValidateFormFieldTaskL a
,a b+
ValidateFormFieldTaskViewModel	c Å
>
Å Ç
{ 
	protected		 
override		 
void		 
EditActivity		  ,
(		, -!
ValidateFormFieldTask		- B
activity		C K
,		K L*
ValidateFormFieldTaskViewModel		M k
model		l q
)		q r
{

 	
model 
. 
	FieldName 
= 
activity &
.& '
	FieldName' 0
;0 1
model 
. 
ErrorMessage 
=  
activity! )
.) *
ErrorMessage* 6
;6 7
} 	
	protected 
override 
void 
UpdateActivity  .
(. /*
ValidateFormFieldTaskViewModel/ M
modelN S
,S T!
ValidateFormFieldTaskU j
activityk s
)s t
{ 	
activity 
. 
	FieldName 
=  
model! &
.& '
	FieldName' 0
?0 1
.1 2
Trim2 6
(6 7
)7 8
;8 9
activity 
. 
ErrorMessage !
=" #
model$ )
.) *
ErrorMessage* 6
?6 7
.7 8
Trim8 <
(< =
)= >
;> ?
} 	
} 
} π
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Drivers\ValidateFormTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
	Workflows %
.% &
Drivers& -
{ 
public 

class )
ValidateFormTaskDisplayDriver .
:/ 0!
ActivityDisplayDriver1 F
<F G
ValidateFormTaskG W
>W X
{ 
} 
}		 Ù
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\Startup.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
	Workflows %
{ 
[		 
RequireFeatures		 
(		 
$str		 ,
)		, -
]		- .
public

 

class

 
Startup

 
:

 
StartupBase

 &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddActivity  
<  !(
ValidateAntiforgeryTokenTask! =
,= >5
)ValidateAntiforgeryTokenTaskDisplayDriver? h
>h i
(i j
)j k
;k l
services 
. 
AddActivity  
<  !'
AddModelValidationErrorTask! <
,< =4
(AddModelValidationErrorTaskDisplayDriver> f
>f g
(g h
)h i
;i j
services 
. 
AddActivity  
<  !
ValidateFormTask! 1
,1 2)
ValidateFormTaskDisplayDriver3 P
>P Q
(Q R
)R S
;S T
services 
. 
AddActivity  
<  !!
ValidateFormFieldTask! 6
,6 7.
"ValidateFormFieldTaskDisplayDriver8 Z
>Z [
([ \
)\ ]
;] ^
services 
. 
AddActivity  
<  !
BindModelStateTask! 3
,3 4+
BindModelStateTaskDisplayDriver5 T
>T U
(U V
)V W
;W X
} 	
} 
} ñ
ÆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\ViewModels\AddModelValidationErrorTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class 0
$AddModelValidationErrorTaskViewModel 5
{ 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
ErrorMessage "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ¯
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Forms\Workflows\ViewModels\ValidateFormFieldTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Forms 
. 
	Workflows %
.% &

ViewModels& 0
{ 
public 

class *
ValidateFormFieldTaskViewModel /
{ 
[ 	
Required	 
] 
public 
string 
	FieldName 
{  !
get" %
;% &
set' *
;* +
}, -
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
string 
ErrorMessage "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} 