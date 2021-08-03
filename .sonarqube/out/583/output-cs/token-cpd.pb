Ó/
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Drivers\LiquidPartDisplayDriver.cs
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
 
Drivers

 $
{ 
public 

class #
LiquidPartDisplayDriver (
:) *$
ContentPartDisplayDriver+ C
<C D

LiquidPartD N
>N O
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplatemanager0 F
;F G
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public #
LiquidPartDisplayDriver &
(& '"
ILiquidTemplateManager' =!
liquidTemplatemanager> S
,S T
IStringLocalizerU e
<e f#
LiquidPartDisplayDriverf }
>} ~
	localizer	 à
)
à â
{ 	"
_liquidTemplatemanager "
=# $!
liquidTemplatemanager% :
;: ;
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /

LiquidPart/ 9

liquidPart: D
)D E
{ 	
return 
Combine 
( 

Initialize 
< 
LiquidPartViewModel .
>. /
(/ 0
$str0 <
,< =
m> ?
=>@ B
BuildViewModelC Q
(Q R
mR S
,S T

liquidPartU _
)_ `
)` a
. 
Location 
( 
$str &
,& '
$str( 4
)4 5
,5 6

Initialize 
< 
LiquidPartViewModel .
>. /
(/ 0
$str0 D
,D E
mF G
=>H J
BuildViewModelK Y
(Y Z
mZ [
,[ \

liquidPart] g
)g h
)h i
. 
Location 
( 
$str '
,' (
$str) 5
)5 6
,6 7

Initialize 
< 
LiquidPartViewModel .
>. /
(/ 0
$str0 <
,< =
m> ?
=>@ B
BuildViewModelC Q
(Q R
mR S
,S T

liquidPartU _
)_ `
)` a
. 
Location 
( 
$str +
,+ ,
$str- 9
)9 :
)   
;   
}!! 	
public## 
override## 
IDisplayResult## &
Edit##' +
(##+ ,

LiquidPart##, 6

liquidPart##7 A
)##A B
{$$ 	
return%% 

Initialize%% 
<%% 
LiquidPartViewModel%% 1
>%%1 2
(%%2 3
$str%%3 D
,%%D E
m%%F G
=>%%H J
BuildViewModel%%K Y
(%%Y Z
m%%Z [
,%%[ \

liquidPart%%] g
)%%g h
)%%h i
;%%i j
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IDisplayResult((# 1
>((1 2
UpdateAsync((3 >
(((> ?

LiquidPart((? I
model((J O
,((O P
IUpdateModel((Q ]
updater((^ e
)((e f
{)) 	
var** 
	viewModel** 
=** 
new** 
LiquidPartViewModel**  3
(**3 4
)**4 5
;**5 6
if,, 
(,, 
await,, 
updater,, 
.,, 
TryUpdateModelAsync,, 1
(,,1 2
	viewModel,,2 ;
,,,; <
Prefix,,= C
,,,C D
t,,E F
=>,,G I
t,,J K
.,,K L
Liquid,,L R
),,R S
),,S T
{-- 
if.. 
(.. 
!.. 
string.. 
... 
IsNullOrEmpty.. )
(..) *
	viewModel..* 3
...3 4
Liquid..4 :
)..: ;
&&..< >
!..? @"
_liquidTemplatemanager..@ V
...V W
Validate..W _
(.._ `
	viewModel..` i
...i j
Liquid..j p
,..p q
out..r u
var..v y
errors	..z Ä
)
..Ä Å
)
..Å Ç
{// 
updater00 
.00 

ModelState00 &
.00& '
AddModelError00' 4
(004 5
Prefix005 ;
,00; <
nameof00= C
(00C D
	viewModel00D M
.00M N
Liquid00N T
)00T U
,00U V
S00W X
[00X Y
$str	00Y ¢
,
00¢ £
string
00§ ™
.
00™ ´
Join
00´ Ø
(
00Ø ∞
$str
00∞ ≥
,
00≥ ¥
errors
00µ ª
)
00ª º
]
00º Ω
)
00Ω æ
;
00æ ø
}11 
else22 
{33 
model44 
.44 
Liquid44  
=44! "
	viewModel44# ,
.44, -
Liquid44- 3
;443 4
}55 
}66 
return88 
Edit88 
(88 
model88 
)88 
;88 
}99 	
private;; 
void;; 
BuildViewModel;; #
(;;# $
LiquidPartViewModel;;$ 7
model;;8 =
,;;= >

LiquidPart;;? I

liquidPart;;J T
);;T U
{<< 	
model== 
.== 
Liquid== 
=== 

liquidPart== %
.==% &
Liquid==& ,
;==, -
model>> 
.>> 

LiquidPart>> 
=>> 

liquidPart>> )
;>>) *
model?? 
.?? 
ContentItem?? 
=?? 

liquidPart??  *
.??* +
ContentItem??+ 6
;??6 7
}@@ 	
}AA 
}BB ˘
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Filters\AbsoluteUrlFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Filters $
{		 
public

 

class

 
AbsoluteUrlFilter

 "
:

# $
ILiquidFilter

% 2
{ 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
contexto v
)v w
{ 	
var 
relativePath 
= 
input $
.$ %
ToStringValue% 2
(2 3
)3 4
;4 5
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
relativePath* 6
)6 7
)7 8
{ 
return 
new 
	ValueTask $
<$ %

FluidValue% /
>/ 0
(0 1
input1 6
)6 7
;7 8
} 
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 >
,> ?
out@ C
varD G
	urlHelperH Q
)Q R
)R S
{ 
throw 
new 
ArgumentException +
(+ ,
$str, \
)\ ]
;] ^
} 
var 
result 
= 
new 
StringValue (
(( )
() *
(* +

IUrlHelper+ 5
)5 6
	urlHelper6 ?
)? @
.@ A
ToAbsoluteUrlA N
(N O
relativePathO [
)[ \
)\ ]
;] ^
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
result- 3
)3 4
;4 5
} 	
} 
} ∂
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Filters\ContentUrlFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Filters $
{ 
public		 

class		 
ContentUrlFilter		 !
:		" #
ILiquidFilter		$ 1
{

 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ :
,: ;
out< ?
var@ C
	urlHelperD M
)M N
)N O
{ 
throw 
new 
ArgumentException +
(+ ,
$str, U
)U V
;V W
} 
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
new- 0
StringValue1 <
(< =
(= >
(> ?

IUrlHelper? I
)I J
	urlHelperJ S
)S T
.T U
ContentU \
(\ ]
input] b
.b c
ToStringValuec p
(p q
)q r
)r s
)s t
)t u
;u v
} 	
} 
} ∞+
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Filters\JsonFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Filters $
{		 
public

 

class

 

JsonFilter

 
:

 
ILiquidFilter

 +
{ 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
contexto v
)v w
{ 	
var 

formatting 
= 

Formatting '
.' (
None( ,
;, -
if 
( 
	arguments 
. 
At 
( 
$num 
) 
.  
ToBooleanValue  .
(. /
)/ 0
)0 1
{ 

formatting 
= 

Formatting '
.' (
Indented( 0
;0 1
} 
switch 
( 
input 
. 
Type 
) 
{ 
case 
FluidValues  
.  !
Array! &
:& '
return 
new 
	ValueTask (
<( )

FluidValue) 3
>3 4
(4 5
new5 8
StringValue9 D
(D E
JsonConvertE P
.P Q
SerializeObjectQ `
(` a
inputa f
.f g
	Enumerateg p
(p q
)q r
.r s
Selects y
(y z
oz {
=>| ~
o	 Ä
.
Ä Å
ToObjectValue
Å é
(
é è
)
è ê
)
ê ë
,
ë í

formatting
ì ù
)
ù û
)
û ü
)
ü †
;
† °
case 
FluidValues  
.  !
Boolean! (
:( )
return 
new 
	ValueTask (
<( )

FluidValue) 3
>3 4
(4 5
new5 8
StringValue9 D
(D E
JsonConvertE P
.P Q
SerializeObjectQ `
(` a
inputa f
.f g
ToBooleanValueg u
(u v
)v w
,w x

formatting	y É
)
É Ñ
)
Ñ Ö
)
Ö Ü
;
Ü á
case 
FluidValues  
.  !
Nil! $
:$ %
return 
new 
	ValueTask (
<( )

FluidValue) 3
>3 4
(4 5
StringValue5 @
.@ A
CreateA G
(G H
$strH N
)N O
)O P
;P Q
case   
FluidValues    
.    !
Number  ! '
:  ' (
return!! 
new!! 
	ValueTask!! (
<!!( )

FluidValue!!) 3
>!!3 4
(!!4 5
new!!5 8
StringValue!!9 D
(!!D E
JsonConvert!!E P
.!!P Q
SerializeObject!!Q `
(!!` a
input!!a f
.!!f g
ToNumberValue!!g t
(!!t u
)!!u v
,!!v w

formatting	!!x Ç
)
!!Ç É
)
!!É Ñ
)
!!Ñ Ö
;
!!Ö Ü
case## 
FluidValues##  
.##  !
DateTime##! )
:##) *
case$$ 
FluidValues$$  
.$$  !

Dictionary$$! +
:$$+ ,
case%% 
FluidValues%%  
.%%  !
Object%%! '
:%%' (
return&& 
new&& 
	ValueTask&& (
<&&( )

FluidValue&&) 3
>&&3 4
(&&4 5
new&&5 8
StringValue&&9 D
(&&D E
JsonConvert&&E P
.&&P Q
SerializeObject&&Q `
(&&` a
input&&a f
.&&f g
ToObjectValue&&g t
(&&t u
)&&u v
,&&v w

formatting	&&x Ç
)
&&Ç É
)
&&É Ñ
)
&&Ñ Ö
;
&&Ö Ü
case(( 
FluidValues((  
.((  !
String((! '
:((' (
var)) 
stringValue)) #
=))$ %
input))& +
.))+ ,
ToStringValue)), 9
())9 :
))): ;
;)); <
if++ 
(++ 
string++ 
.++ 
IsNullOrWhiteSpace++ 1
(++1 2
stringValue++2 =
)++= >
)++> ?
{,, 
return-- 
new-- "
	ValueTask--# ,
<--, -

FluidValue--- 7
>--7 8
(--8 9
input--9 >
)--> ?
;--? @
}.. 
return00 
new00 
	ValueTask00 (
<00( )

FluidValue00) 3
>003 4
(004 5
new005 8
StringValue009 D
(00D E
JsonConvert00E P
.00P Q
SerializeObject00Q `
(00` a
stringValue00a l
,00l m

formatting00n x
)00x y
)00y z
)00z {
;00{ |
}11 
throw33 
new33 !
NotSupportedException33 +
(33+ ,
$str33, E
)33E F
;33F G
}44 	
}55 
}66 È
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Filters\JsonParseFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Filters $
{ 
public 

class 
JsonParseFilter  
:! "
ILiquidFilter# 0
{		 
public

 
	ValueTask

 
<

 

FluidValue

 #
>

# $
ProcessAsync

% 1
(

1 2

FluidValue

2 <
input

= B
,

B C
FilterArguments

D S
	arguments

T ]
,

] ^
TemplateContext

_ n
context

o v
)

v w
{ 	
var 
parsedValue 
= 
JToken $
.$ %
Parse% *
(* +
input+ 0
.0 1
ToStringValue1 >
(> ?
)? @
)@ A
;A B
if 
( 
parsedValue 
. 
Type  
==! #

JTokenType$ .
.. /
Array/ 4
)4 5
{ 
return 
new 
	ValueTask $
<$ %

FluidValue% /
>/ 0
(0 1

FluidValue1 ;
.; <
Create< B
(B C
parsedValueC N
)N O
)O P
;P Q
} 
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
new- 0
ObjectValue1 <
(< =
parsedValue= H
)H I
)I J
;J K
} 	
} 
} ç
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Filters\LiquidFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Filters $
{ 
public 

class 
LiquidFilter 
: 
ILiquidFilter  -
{		 
private

 
readonly

 "
ILiquidTemplateManager

 /"
_liquidTemplateManager

0 F
;

F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public 
LiquidFilter 
( "
ILiquidTemplateManager 2!
liquidTemplateManager3 H
,H I
HtmlEncoderJ U
htmlEncoderV a
)a b
{ 	"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
var 
content 
= 
await "
_liquidTemplateManager  6
.6 7
RenderAsync7 B
(B C
inputC H
.H I
ToStringValueI V
(V W
)W X
,X Y
_htmlEncoderZ f
,f g
	argumentsh q
.q r
Atr t
(t u
$numu v
)v w
)w x
;x y
return 
new 
StringValue "
(" #
content# *
,* +
false, 1
)1 2
;2 3
} 	
} 
} ¡
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Filters\ShortCodeFilter.cs
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
 
Filters

 $
{ 
public 

class 
ShortcodeFilter  
:! "
ILiquidFilter# 0
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, Y
)Y Z
;Z [
} 
var 
shortcodeService  
=! "
(# $
($ %
IServiceProvider% 5
)5 6
services6 >
)> ?
.? @
GetRequiredService@ R
<R S
IShortcodeServiceS d
>d e
(e f
)f g
;g h
var 
context 
= 
new 
Context %
(% &
)& '
;' (
var 
model 
= 
ctx 
. 

LocalScope &
.& '
GetValue' /
(/ 0
$str0 7
)7 8
.8 9
ToObjectValue9 F
(F G
)G H
;H I
if 
( 
model 
is 
Shape 
shape $
&&% '
shape( -
.- .

Properties. 8
.8 9
TryGetValue9 D
(D E
$strE R
,R S
outT W
varX [
contentItem\ g
)g h
)h i
{ 
context 
[ 
$str %
]% &
=' (
contentItem) 4
;4 5
} 
else 
{   
context!! 
[!! 
$str!! %
]!!% &
=!!' (
null!!) -
;!!- .
}"" 
return$$ 
new$$ 
StringValue$$ "
($$" #
await$$# (
shortcodeService$$) 9
.$$9 :
ProcessAsync$$: F
($$F G
input$$G L
.$$L M
ToStringValue$$M Z
($$Z [
)$$[ \
,$$\ ]
context$$^ e
)$$e f
)$$f g
;$$g h
}%% 	
}&& 
}'' ◊
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Filters\SlugifyFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Filters $
{ 
public 

class 
SlugifyFilter 
:  
ILiquidFilter! .
{ 
private		 
readonly		 
ISlugService		 %
_slugService		& 2
;		2 3
public 
SlugifyFilter 
( 
ISlugService )
slugService* 5
)5 6
{ 	
_slugService 
= 
slugService &
;& '
} 	
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
var 
text 
= 
input 
. 
ToStringValue *
(* +
)+ ,
;, -
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
new- 0
StringValue1 <
(< =
_slugService= I
.I J
SlugifyJ Q
(Q R
textR V
)V W
)W X
)X Y
;Y Z
} 	
} 
} œ
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Filters\TimeZoneFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Filters $
{		 
public

 

class

 
TimeZoneFilter

 
:

  !
ILiquidFilter

" /
{ 
private 
readonly 
ILocalClock $
_localClock% 0
;0 1
public 
TimeZoneFilter 
( 
ILocalClock )

localClock* 4
)4 5
{ 	
_localClock 
= 

localClock $
;$ %
} 	
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
contextu |
)| }
{ 	
var 
value 
= 
DateTimeOffset &
.& '
MinValue' /
;/ 0
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
String* 0
)0 1
{ 
var 
stringValue 
=  !
input" '
.' (
ToStringValue( 5
(5 6
)6 7
;7 8
if 
( 
stringValue 
==  "
$str# (
||) +
stringValue, 7
==8 :
$str; B
)B C
{ 
value 
= 
await !
_localClock" -
.- .
LocalNowAsync. ;
;; <
} 
else 
{   
if!! 
(!! 
!!! 
DateTimeOffset!! '
.!!' (
TryParse!!( 0
(!!0 1
stringValue!!1 <
,!!< =
context!!> E
.!!E F
CultureInfo!!F Q
,!!Q R
DateTimeStyles!!S a
.!!a b
AssumeUniversal!!b q
,!!q r
out!!s v
value!!w |
)!!| }
)!!} ~
{"" 
return## 
NilValue## '
.##' (
Instance##( 0
;##0 1
}$$ 
}%% 
}&& 
else'' 
{(( 
switch)) 
()) 
input)) 
.)) 
ToObjectValue)) +
())+ ,
))), -
)))- .
{** 
case++ 
DateTime++ !
dateTime++" *
:++* +
value,, 
=,, 
dateTime,,  (
;,,( )
break-- 
;-- 
case// 
DateTimeOffset// '
dateTimeOffset//( 6
://6 7
value00 
=00 
dateTimeOffset00  .
;00. /
break11 
;11 
default33 
:33 
return44 
NilValue44 '
.44' (
Instance44( 0
;440 1
}55 
}66 
return88 
new88 
ObjectValue88 "
(88" #
await88# (
_localClock88) 4
.884 5
ConvertToLocalAsync885 H
(88H I
value88I N
)88N O
)88O P
;88P Q
}99 	
}:: 
};; ∆
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Handlers\LiquidPartHandler.cs
	namespace		 	
OrchardCore		
 
.		 
Liquid		 
.		 
Handlers		 %
{

 
public 

class 
LiquidPartHandler "
:# $
ContentPartHandler% 7
<7 8

LiquidPart8 B
>B C
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public 
LiquidPartHandler  
(  !"
ILiquidTemplateManager! 7!
liquidTemplateManager8 M
,M N
HtmlEncoderO Z
htmlEncoder[ f
)f g
{ 	"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
public 
override 
Task %
GetContentItemAspectAsync 6
(6 7$
ContentItemAspectContext7 O
contextP W
,W X

LiquidPartY c
partd h
)h i
{ 	
return 
context 
. 
ForAsync #
<# $

BodyAspect$ .
>. /
(/ 0
async0 5

bodyAspect6 @
=>A C
{ 
try 
{ 
var 
model 
= 
new  #
LiquidPartViewModel$ 7
(7 8
)8 9
{ 

LiquidPart "
=# $
part% )
,) *
ContentItem #
=$ %
part& *
.* +
ContentItem+ 6
}   
;   
var"" 
result"" 
=""  
await""! &"
_liquidTemplateManager""' =
.""= >
RenderAsync""> I
(""I J
part""J N
.""N O
Liquid""O U
,""U V
_htmlEncoder""W c
,""c d
model""e j
,""j k
scope## 
=>##  
scope##! &
.##& '
SetValue##' /
(##/ 0
$str##0 =
,##= >
model##? D
.##D E
ContentItem##E P
)##P Q
)##Q R
;##R S

bodyAspect%% 
.%% 
Body%% #
=%%$ %
new%%& )

HtmlString%%* 4
(%%4 5
result%%5 ;
)%%; <
;%%< =
}&& 
catch'' 
{(( 

bodyAspect)) 
.)) 
Body)) #
=))$ %

HtmlString))& 0
.))0 1
Empty))1 6
;))6 7
}** 
}++ 
)++ 
;++ 
},, 	
}-- 
}.. ã
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Indexing\LiquidPartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Indexing %
{ 
public 

class "
LiquidPartIndexHandler '
:( )#
ContentPartIndexHandler* A
<A B

LiquidPartB L
>L M
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -

LiquidPart		- 7
part		8 <
,		< =!
BuildPartIndexContext		> S
context		T [
)		[ \
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
|  
DocumentIndexOptions &
.& '
Sanitize' /
|  
DocumentIndexOptions &
.& '
Analyze' .
; 
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
part/ 3
.3 4
Liquid4 :
,: ;
options< C
)C D
;D E
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ≤
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str R
,R S
Category		 
=		 
$str		 #
)

 
]

 ±

ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Migrations.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private		 %
IContentDefinitionManager		 )%
_contentDefinitionManager		* C
;		C D
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
$str: F
,F G
builderH O
=>P R
builderS Z
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! Z
)Z [
)[ \
;\ ]
return 
$num 
; 
} 	
} 
} ∑
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Models\LiquidPart.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Models #
{ 
public 

class 

LiquidPart 
: 
ContentPart )
{ 
public 
string 
Liquid 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}		 ‰
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Razor\LiquidRazorHelperExtensions.cs
public 
static 
class '
LiquidRazorHelperExtensions /
{		 
public 

static 
Task 
< 
IHtmlContent #
># $
LiquidToHtmlAsync% 6
(6 7
this7 ;
IOrchardHelper< J
orchardHelperK X
,X Y
stringZ `
liquida g
)g h
{ 
return 
orchardHelper 
. 
LiquidToHtmlAsync .
(. /
liquid/ 5
,5 6
null7 ;
); <
;< =
} 
public 

static 
async 
Task 
< 
IHtmlContent )
>) *
LiquidToHtmlAsync+ <
(< =
this= A
IOrchardHelperB P
orchardHelperQ ^
,^ _
string` f
liquidg m
,m n
objecto u
modelv {
){ |
{ 
var 
serviceProvider 
= 
orchardHelper +
.+ ,
HttpContext, 7
.7 8
RequestServices8 G
;G H
var !
liquidTemplateManager !
=" #
serviceProvider$ 3
.3 4
GetRequiredService4 F
<F G"
ILiquidTemplateManagerG ]
>] ^
(^ _
)_ `
;` a
var 
htmlEncoder 
= 
serviceProvider )
.) *
GetRequiredService* <
<< =
HtmlEncoder= H
>H I
(I J
)J K
;K L
liquid!! 
=!! 
await!! !
liquidTemplateManager!! ,
.!!, -
RenderAsync!!- 8
(!!8 9
liquid!!9 ?
,!!? @
htmlEncoder!!A L
,!!L M
model!!N S
)!!S T
;!!T U
return"" 
new"" 

HtmlString"" 
("" 
liquid"" $
)""$ %
;""% &
}## 
}$$ Ó
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Services\LiquidShapes.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Services %
{		 
public

 

class

 
LiquidShapes

 
:

 
IShapeTableProvider

  3
{ 
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public 
LiquidShapes 
( 
HtmlEncoder '
htmlEncoder( 3
)3 4
{ 	
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
private 
async 
Task 
BuildViewModelAsync .
(. /
ShapeDisplayContext/ B
shapeDisplayContextC V
)V W
{ 	
var 
model 
= 
shapeDisplayContext +
.+ ,
Shape, 1
as2 4
LiquidPartViewModel5 H
;H I
var !
liquidTemplateManager %
=& '
shapeDisplayContext( ;
.; <
ServiceProvider< K
.K L
GetRequiredServiceL ^
<^ _"
ILiquidTemplateManager_ u
>u v
(v w
)w x
;x y
model 
. 
Html 
= 
await !
liquidTemplateManager 4
.4 5
RenderAsync5 @
(@ A
modelA F
.F G

LiquidPartG Q
.Q R
LiquidR X
,X Y
_htmlEncoderZ f
,f g
shapeDisplayContexth {
.{ |
DisplayContext	| ä
.
ä ã
Value
ã ê
,
ê ë
scope 
=> 
scope 
. 
SetValue '
(' (
$str( 5
,5 6
model7 <
.< =
ContentItem= H
)H I
)I J
;J K
} 	
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{ 	
builder 
. 
Describe 
( 
$str )
)) *
.* +
OnProcessing+ 7
(7 8
BuildViewModelAsync8 K
)K L
;L M
builder 
. 
Describe 
( 
$str 1
)1 2
.2 3
OnProcessing3 ?
(? @
BuildViewModelAsync@ S
)S T
;T U
}   	
}!! 
}"" ⁄-
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Services\LiquidTemplateManager.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Services %
{ 
public 

class !
LiquidTemplateManager &
:' ("
ILiquidTemplateManager) ?
{ 
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
private !
LiquidTemplateContext %
_context& .
;. /
public !
LiquidTemplateManager $
($ %
IMemoryCache% 1
memoryCache2 =
)= >
{ 	
_memoryCache 
= 
memoryCache &
;& '
} 	
public !
LiquidTemplateContext $
Context% ,
=>- /
_context0 8
??=9 <
LiquidViewTemplate= O
.O P
ContextP W
;W X
public 
Task 
< 
string 
> 
RenderAsync '
(' (
string( .
source/ 5
,5 6
TextEncoder7 B
encoderC J
,J K
objectL R
modelS X
,X Y
ActionZ `
<` a
Scopea f
>f g
scopeActionh s
)s t
{ 	
if 
( 
String 
. 
IsNullOrWhiteSpace )
() *
source* 0
)0 1
)1 2
{ 
return 
Task 
. 

FromResult &
(& '
(' (
string( .
). /
null/ 3
)3 4
;4 5
} 
var!! 
result!! 
=!! 
GetCachedTemplate!! *
(!!* +
source!!+ 1
)!!1 2
;!!2 3
return## 
result## 
.## 
RenderAsync## %
(##% &
encoder##& -
,##- .
Context##/ 6
,##6 7
model##8 =
,##= >
scopeAction##? J
)##J K
;##K L
}$$ 	
public&& 
Task&& 
RenderAsync&& 
(&&  
string&&  &
source&&' -
,&&- .

TextWriter&&/ 9
writer&&: @
,&&@ A
TextEncoder&&B M
encoder&&N U
,&&U V
object&&W ]
model&&^ c
,&&c d
Action&&e k
<&&k l
Scope&&l q
>&&q r
scopeAction&&s ~
)&&~ 
{'' 	
if(( 
((( 
String(( 
.(( 
IsNullOrWhiteSpace(( )
((() *
source((* 0
)((0 1
)((1 2
{)) 
return** 
Task** 
.** 
CompletedTask** )
;**) *
}++ 
var-- 
result-- 
=-- 
GetCachedTemplate-- *
(--* +
source--+ 1
)--1 2
;--2 3
return// 
result// 
.// 
RenderAsync// %
(//% &
writer//& ,
,//, -
encoder//. 5
,//5 6
Context//7 >
,//> ?
model//@ E
,//E F
scopeAction//G R
)//R S
;//S T
}00 	
private22 
LiquidViewTemplate22 "
GetCachedTemplate22# 4
(224 5
string225 ;
source22< B
)22B C
{33 	
var44 
errors44 
=44 

Enumerable44 #
.44# $
Empty44$ )
<44) *
string44* 0
>440 1
(441 2
)442 3
;443 4
var66 
result66 
=66 
_memoryCache66 %
.66% &
GetOrCreate66& 1
(661 2
source662 8
,668 9
(66: ;
ICacheEntry66; F
e66G H
)66H I
=>66J L
{77 
if88 
(88 
!88 
LiquidViewTemplate88 '
.88' (
TryParse88( 0
(880 1
source881 7
,887 8
out889 <
var88= @
parsed88A G
,88G H
out88I L
errors88M S
)88S T
)88T U
{99 
LiquidViewTemplate;; &
.;;& '
TryParse;;' /
(;;/ 0
String;;0 6
.;;6 7
Join;;7 ;
(;;; <
System;;< B
.;;B C
Environment;;C N
.;;N O
NewLine;;O V
,;;V W
errors;;X ^
);;^ _
,;;_ `
out;;a d
parsed;;e k
,;;k l
out;;m p
errors;;q w
);;w x
;;;x y
}<< 
eAA 
.AA  
SetSlidingExpirationAA &
(AA& '
TimeSpanAA' /
.AA/ 0
FromSecondsAA0 ;
(AA; <
$numAA< >
)AA> ?
)AA? @
;AA@ A
returnBB 
parsedBB 
;BB 
}CC 
)CC 
;CC 
returnEE 
resultEE 
;EE 
}FF 	
publicHH 
boolHH 
ValidateHH 
(HH 
stringHH #
templateHH$ ,
,HH, -
outHH. 1
IEnumerableHH2 =
<HH= >
stringHH> D
>HHD E
errorsHHF L
)HHL M
{II 	
returnJJ 
LiquidViewTemplateJJ %
.JJ% &
TryParseJJ& .
(JJ. /
templateJJ/ 7
,JJ7 8
outJJ9 <
_JJ= >
,JJ> ?
outJJ@ C
errorsJJD J
)JJJ K
;JJK L
}KK 	
}LL 
}MM ª(
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Services\SlugService.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 
Services %
{ 
public 

class 
SlugService 
: 
ISlugService +
{ 
public 
string 
Slugify 
( 
string $
text% )
)) *
{		 	
if

 
(

 
string

 
.

 
IsNullOrEmpty

 $
(

$ %
text

% )
)

) *
)

* +
{ 
return 
text 
; 
} 
var 
sb 
= 
new 
StringBuilder &
(& '
)' (
;( )
var 
stFormKD 
= 
text 
.  
Trim  $
($ %
)% &
.& '
ToLower' .
(. /
)/ 0
.0 1
	Normalize1 :
(: ;
NormalizationForm; L
.L M
FormKDM S
)S T
;T U
foreach 
( 
var 
t 
in 
stFormKD &
)& '
{ 
if 
( 
t 
== 
$char 
|| 
t  !
==" $
$char% (
||) +
t, -
==. 0
$char1 4
)4 5
{ 
sb 
. 
Append 
( 
t 
)  
;  !
continue 
; 
} 
var 
uc 
= 
CharUnicodeInfo (
.( )
GetUnicodeCategory) ;
(; <
t< =
)= >
;> ?
switch 
( 
uc 
) 
{ 
case 
UnicodeCategory (
.( )
LowercaseLetter) 8
:8 9
case 
UnicodeCategory (
.( )
OtherLetter) 4
:4 5
case   
UnicodeCategory   (
.  ( )
DecimalDigitNumber  ) ;
:  ; <
sb"" 
."" 
Append"" !
(""! "
t""" #
)""# $
;""$ %
break## 
;## 
case$$ 
UnicodeCategory$$ (
.$$( )
NonSpacingMark$$) 7
:$$7 8
break&& 
;&& 
default'' 
:'' 
sb)) 
.)) 
Append)) !
())! "
$char))" %
)))% &
;))& '
break** 
;** 
}++ 
},, 
var.. 
slug.. 
=.. 
sb.. 
... 
ToString.. "
(.." #
)..# $
...$ %
	Normalize..% .
(... /
NormalizationForm../ @
...@ A
FormC..A F
)..F G
;..G H
for11 
(11 
var11 
i11 
=11 
$num11 
;11 
i11 
<11 
slug11  $
.11$ %
Length11% +
-11, -
$num11. /
;11/ 0
i111 2
++112 4
)114 5
{22 
if33 
(33 
slug33 
[33 
i33 
]33 
==33 
$char33 "
)33" #
{44 
var55 
j55 
=55 
$num55 
;55 
while66 
(66 
i66 
+66 
j66  
+66! "
$num66# $
<66% &
slug66' +
.66+ ,
Length66, 2
&&663 5
slug666 :
[66: ;
i66; <
+66= >
j66? @
+66A B
$num66C D
]66D E
==66F H
$char66I L
)66L M
{77 
j88 
++88 
;88 
}99 
if:: 
(:: 
j:: 
>:: 
$num:: 
):: 
{;; 
slug<< 
=<< 
slug<< #
.<<# $
Remove<<$ *
(<<* +
i<<+ ,
+<<- .
$num<</ 0
,<<0 1
j<<2 3
)<<3 4
;<<4 5
}== 
}>> 
}?? 
ifAA 
(AA 
slugAA 
.AA 
LengthAA 
>AA 
$numAA "
)AA" #
{BB 
slugCC 
=CC 
slugCC 
.CC 
	SubstringCC %
(CC% &
$numCC& '
,CC' (
$numCC) -
)CC- .
;CC. /
}DD 
slugFF 
=FF 
slugFF 
.FF 
TrimFF 
(FF 
$charFF  
,FF  !
$charFF" %
,FF% &
$charFF' *
)FF* +
;FF+ ,
returnHH 
slugHH 
;HH 
}II 	
}JJ 
}KK ·.
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\Startup.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
static 
Startup 
( 
) 
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
JObject@ G
,G H
objectI O
>O P
(P Q
(Q R
objR U
,U V
nameW [
)[ \
=>] _
obj` c
[c d
named h
]h i
)i j
;j k

FluidValue 
. 
SetTypeMapping %
<% &
JObject& -
>- .
(. /
o/ 0
=>1 3
new4 7
ObjectValue8 C
(C D
oD E
)E F
)F G
;G H

FluidValue 
. 
SetTypeMapping %
<% &
JValue& ,
>, -
(- .
o. /
=>0 2

FluidValue3 =
.= >
Create> D
(D E
(E F
(F G
JValueG M
)M N
oN O
)O P
.P Q
ValueQ V
)V W
)W X
;X Y

FluidValue 
. 
SetTypeMapping %
<% &
System& ,
., -
DateTime- 5
>5 6
(6 7
o7 8
=>9 ;
new< ?
ObjectValue@ K
(K L
oL M
)M N
)N O
;O P
} 	
public!! 
override!! 
void!! 
ConfigureServices!! .
(!!. /
IServiceCollection!!/ A
services!!B J
)!!J K
{"" 	
services## 
.## 
	AddScoped## 
<## 
ISlugService## +
,##+ ,
SlugService##- 8
>##8 9
(##9 :
)##: ;
;##; <
services$$ 
.$$ 
	AddScoped$$ 
<$$ "
ILiquidTemplateManager$$ 5
,$$5 6!
LiquidTemplateManager$$7 L
>$$L M
($$M N
)$$N O
;$$O P
services&& 
.&& 
AddLiquidFilter&& $
<&&$ %
TimeZoneFilter&&% 3
>&&3 4
(&&4 5
$str&&5 <
)&&< =
;&&= >
services'' 
.'' 
AddLiquidFilter'' $
<''$ %
SlugifyFilter''% 2
>''2 3
(''3 4
$str''4 =
)''= >
;''> ?
services(( 
.(( 
AddLiquidFilter(( $
<(($ %
ContentUrlFilter((% 5
>((5 6
(((6 7
$str((7 =
)((= >
;((> ?
services)) 
.)) 
AddLiquidFilter)) $
<))$ %
AbsoluteUrlFilter))% 6
>))6 7
())7 8
$str))8 F
)))F G
;))G H
services** 
.** 
AddLiquidFilter** $
<**$ %
LiquidFilter**% 1
>**1 2
(**2 3
$str**3 ;
)**; <
;**< =
services++ 
.++ 
AddLiquidFilter++ $
<++$ %

JsonFilter++% /
>++/ 0
(++0 1
$str++1 7
)++7 8
;++8 9
services,, 
.,, 
AddLiquidFilter,, $
<,,$ %
JsonParseFilter,,% 4
>,,4 5
(,,5 6
$str,,6 A
),,A B
;,,B C
}-- 	
}.. 
[00 
RequireFeatures00 
(00 
$str00 +
)00+ ,
]00, -
public11 

class11 
LiquidPartStartup11 "
:11# $
StartupBase11% 0
{22 
public33 
override33 
void33 
ConfigureServices33 .
(33. /
IServiceCollection33/ A
services33B J
)33J K
{44 	
services66 
.66 
	AddScoped66 
<66 
IShapeTableProvider66 2
,662 3
LiquidShapes664 @
>66@ A
(66A B
)66B C
;66C D
services77 
.77 
AddContentPart77 #
<77# $

LiquidPart77$ .
>77. /
(77/ 0
)770 1
.88 
UseDisplayDriver88 !
<88! "#
LiquidPartDisplayDriver88" 9
>889 :
(88: ;
)88; <
.99 

AddHandler99 
<99 
LiquidPartHandler99 -
>99- .
(99. /
)99/ 0
;990 1
services;; 
.;; 
	AddScoped;; 
<;; 
IDataMigration;; -
,;;- .

Migrations;;/ 9
>;;9 :
(;;: ;
);;; <
;;;< =
services<< 
.<< 
	AddScoped<< 
<<< $
IContentPartIndexHandler<< 7
,<<7 8"
LiquidPartIndexHandler<<9 O
><<O P
(<<P Q
)<<Q R
;<<R S
}== 	
}>> 
[@@ 
RequireFeatures@@ 
(@@ 
$str@@ -
)@@- .
]@@. /
publicAA 

classAA 
ShortcodesStartupAA "
:AA# $
StartupBaseAA% 0
{BB 
publicCC 
overrideCC 
voidCC 
ConfigureServicesCC .
(CC. /
IServiceCollectionCC/ A
servicesCCB J
)CCJ K
{DD 	
servicesEE 
.EE 
AddLiquidFilterEE $
<EE$ %
ShortcodeFilterEE% 4
>EE4 5
(EE5 6
$strEE6 A
)EEA B
;EEB C
}FF 	
}GG 
}HH Ò
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Liquid\ViewModels\LiquidPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Liquid 
. 

ViewModels '
{ 
public 

class 
LiquidPartViewModel $
{ 
public		 
string		 
Liquid		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Html
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
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
	BindNever	 
] 
public 

LiquidPart 

LiquidPart $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} 