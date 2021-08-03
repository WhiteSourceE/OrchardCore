 
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Cache\CacheBlock.cs
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
DynamicCache

 "
.

" #
Liquid

# )
{ 
public 

class 

CacheBlock 
: 
ArgumentsBlock ,
{ 
public 
override 
	ValueTask !
<! "

Completion" ,
>, -
WriteToAsync. :
(: ;

TextWriter; E
writerF L
,L M
TextEncoderN Y
encoderZ a
,a b
TemplateContextc r
contexts z
,z {
FilterArgument	| ä
[
ä ã
]
ã å
	arguments
ç ñ
,
ñ ó
List
ò ú
<
ú ù
	Statement
ù ¶
>
¶ ß

statements
® ≤
)
≤ ≥
{ 	
var 
exp 
= 
new 
ArgumentsExpression -
(- .
	arguments. 7
)7 8
;8 9
var 
sta 
= 
new 
CacheStatement (
(( )
exp) ,
,, -

statements. 8
)8 9
;9 :
return 
sta 
. 
WriteToAsync #
(# $
writer$ *
,* +
encoder, 3
,3 4
context5 <
)< =
;= >
} 	
} 
} Œ
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Cache\CacheDependencyTag.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
Liquid# )
{ 
public 

class 
CacheDependencyTag #
:$ %
ArgumentsTag& 2
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å
FilterArgument
Ç ê
[
ê ë
]
ë í
	arguments
ì ú
)
ú ù
{ 	
if 
( 
	arguments 
. 
Length  
<! "
$num# $
)$ %
{ 
return 

Completion !
.! "
Normal" (
;( )
} 
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesObjG R
)R S
)S T
{ 
throw 
new 
ArgumentException +
(+ ,
$str, d
)d e
;e f
} 
var 
services 
= 
servicesObj &
as' )
IServiceProvider* :
;: ;
var 
cacheScopeManager !
=" #
services$ ,
., -

GetService- 7
<7 8
ICacheScopeManager8 J
>J K
(K L
)L M
;M N
if   
(   
cacheScopeManager   !
==  " $
null  % )
)  ) *
{!! 
return"" 

Completion"" !
.""! "
Normal""" (
;""( )
}## 
var%% 

dependency%% 
=%% 
(%% 
await%% #
	arguments%%$ -
[%%- .
$num%%. /
]%%/ 0
.%%0 1

Expression%%1 ;
.%%; <
EvaluateAsync%%< I
(%%I J
context%%J Q
)%%Q R
)%%R S
.%%S T
ToStringValue%%T a
(%%a b
)%%b c
;%%c d
cacheScopeManager'' 
.'' 
AddDependencies'' -
(''- .

dependency''. 8
)''8 9
;''9 :
return)) 

Completion)) 
.)) 
Normal)) $
;))$ %
}** 	
}++ 
},, √ 
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Cache\CacheExpiresAfterTag.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
Liquid# )
{ 
public 

class  
CacheExpiresAfterTag %
:& '
ArgumentsTag( 4
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å
FilterArgument
Ç ê
[
ê ë
]
ë í
	arguments
ì ú
)
ú ù
{ 	
if 
( 
	arguments 
. 
Length  
<! "
$num# $
)$ %
{ 
return 

Completion !
.! "
Normal" (
;( )
} 
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesObjG R
)R S
)S T
{ 
throw 
new 
ArgumentException +
(+ ,
$str, g
)g h
;h i
} 
var 
services 
= 
servicesObj &
as' )
IServiceProvider* :
;: ;
var 
cacheScopeManager !
=" #
services$ ,
., -

GetService- 7
<7 8
ICacheScopeManager8 J
>J K
(K L
)L M
;M N
if!! 
(!! 
cacheScopeManager!! !
==!!" $
null!!% )
)!!) *
{"" 
return## 

Completion## !
.##! "
Normal##" (
;##( )
}$$ 
TimeSpan&& 
value&& 
;&& 
var'' 
input'' 
='' 
await'' 
	arguments'' '
[''' (
$num''( )
]'') *
.''* +

Expression''+ 5
.''5 6
EvaluateAsync''6 C
(''C D
context''D K
)''K L
;''L M
if)) 
()) 
input)) 
.)) 
Type)) 
==)) 
FluidValues)) )
.))) *
String))* 0
)))0 1
{** 
var++ 
stringValue++ 
=++  !
input++" '
.++' (
ToStringValue++( 5
(++5 6
)++6 7
;++7 8
if,, 
(,, 
TimeSpan,, 
.,, 
TryParse,, %
(,,% &
stringValue,,& 1
,,,1 2
out,,3 6
value,,7 <
),,< =
),,= >
{-- 
return.. 

Completion.. %
...% &
Normal..& ,
;.., -
}// 
}00 
else11 
{22 
var33 
objectValue33 
=33  !
input33" '
.33' (
ToObjectValue33( 5
(335 6
)336 7
as338 :
TimeSpan33; C
?33C D
;33D E
if55 
(55 
!55 
objectValue55  
.55  !
HasValue55! )
)55) *
{66 
return77 

Completion77 %
.77% &
Normal77& ,
;77, -
}88 
value:: 
=:: 
objectValue:: #
.::# $
Value::$ )
;::) *
};; 
cacheScopeManager== 
.== 
WithExpiryAfter== -
(==- .
value==. 3
)==3 4
;==4 5
return?? 

Completion?? 
.?? 
Normal?? $
;??$ %
}@@ 	
}AA 
}BB ›$
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Cache\CacheExpiresOnTag.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
Liquid# )
{ 
public 

class 
CacheExpiresOnTag "
:# $
ArgumentsTag% 1
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å
FilterArgument
Ç ê
[
ê ë
]
ë í
	arguments
ì ú
)
ú ù
{ 	
if 
( 
	arguments 
. 
Length  
<! "
$num# $
)$ %
{ 
return 

Completion !
.! "
Normal" (
;( )
} 
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesObjG R
)R S
)S T
{ 
throw 
new 
ArgumentException +
(+ ,
$str, d
)d e
;e f
} 
var 
services 
= 
servicesObj &
as' )
IServiceProvider* :
;: ;
var   
cacheScopeManager   !
=  " #
services  $ ,
.  , -

GetService  - 7
<  7 8
ICacheScopeManager  8 J
>  J K
(  K L
)  L M
;  M N
if"" 
("" 
cacheScopeManager"" !
==""" $
null""% )
)"") *
{## 
return$$ 

Completion$$ !
.$$! "
Normal$$" (
;$$( )
}%% 
var'' 
value'' 
='' 
DateTimeOffset'' &
.''& '
MinValue''' /
;''/ 0
var(( 
input(( 
=(( 
await(( 
	arguments(( '
[((' (
$num((( )
](() *
.((* +

Expression((+ 5
.((5 6
EvaluateAsync((6 C
(((C D
context((D K
)((K L
;((L M
if** 
(** 
input** 
.** 
Type** 
==** 
FluidValues** )
.**) *
String*** 0
)**0 1
{++ 
var,, 
stringValue,, 
=,,  !
input,," '
.,,' (
ToStringValue,,( 5
(,,5 6
),,6 7
;,,7 8
if-- 
(-- 
!-- 
DateTimeOffset-- #
.--# $
TryParse--$ ,
(--, -
stringValue--- 8
,--8 9
context--: A
.--A B
CultureInfo--B M
,--M N
DateTimeStyles--O ]
.--] ^
AssumeUniversal--^ m
,--m n
out--o r
value--s x
)--x y
)--y z
{.. 
return// 

Completion// %
.//% &
Normal//& ,
;//, -
}00 
}11 
else22 
{33 
switch44 
(44 
input44 
.44 
ToObjectValue44 +
(44+ ,
)44, -
)44- .
{55 
case66 
DateTime66 !
dateTime66" *
:66* +
value77 
=77 
dateTime77  (
;77( )
break88 
;88 
case:: 
DateTimeOffset:: '
dateTimeOffset::( 6
:::6 7
value;; 
=;; 
dateTimeOffset;;  .
;;;. /
break<< 
;<< 
default>> 
:>> 
return?? 

Completion?? )
.??) *
Normal??* 0
;??0 1
}@@ 
}AA 
ifCC 
(CC 
valueCC 
!=CC 
DateTimeOffsetCC '
.CC' (
MinValueCC( 0
)CC0 1
{DD 
cacheScopeManagerEE !
.EE! "
WithExpiryOnEE" .
(EE. /
valueEE/ 4
)EE4 5
;EE5 6
}FF 
returnHH 

CompletionHH 
.HH 
NormalHH $
;HH$ %
}II 	
}JJ 
}KK ÿ 
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Cache\CacheExpiresSlidingTag.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
Liquid# )
{ 
public 

class "
CacheExpiresSlidingTag '
:( )
ArgumentsTag* 6
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å
FilterArgument
Ç ê
[
ê ë
]
ë í
	arguments
ì ú
)
ú ù
{ 	
if 
( 
	arguments 
. 
Length  
<! "
$num# $
)$ %
{ 
return 

Completion !
.! "
Normal" (
;( )
} 
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesObjG R
)R S
)S T
{ 
throw 
new 
ArgumentException +
(+ ,
$str, i
)i j
;j k
} 
var 
services 
= 
servicesObj &
as' )
IServiceProvider* :
;: ;
var 
cacheScopeManager !
=" #
services$ ,
., -

GetService- 7
<7 8
ICacheScopeManager8 J
>J K
(K L
)L M
;M N
if!! 
(!! 
cacheScopeManager!! !
==!!" $
null!!% )
)!!) *
{"" 
return## 

Completion## !
.##! "
Normal##" (
;##( )
}$$ 
TimeSpan&& 
value&& 
;&& 
var'' 
input'' 
='' 
await'' 
	arguments'' '
[''' (
$num''( )
]'') *
.''* +

Expression''+ 5
.''5 6
EvaluateAsync''6 C
(''C D
context''D K
)''K L
;''L M
if)) 
()) 
input)) 
.)) 
Type)) 
==)) 
FluidValues)) )
.))) *
String))* 0
)))0 1
{** 
var++ 
stringValue++ 
=++  !
input++" '
.++' (
ToStringValue++( 5
(++5 6
)++6 7
;++7 8
if,, 
(,, 
!,, 
TimeSpan,, 
.,, 
TryParse,, &
(,,& '
stringValue,,' 2
,,,2 3
out,,4 7
value,,8 =
),,= >
),,> ?
{-- 
return.. 

Completion.. %
...% &
Normal..& ,
;.., -
}// 
}00 
else11 
{22 
var33 
objectValue33 
=33  !
input33" '
.33' (
ToObjectValue33( 5
(335 6
)336 7
as338 :
TimeSpan33; C
?33C D
;33D E
if55 
(55 
!55 
objectValue55  
.55  !
HasValue55! )
)55) *
{66 
return77 

Completion77 %
.77% &
Normal77& ,
;77, -
}88 
value:: 
=:: 
objectValue:: #
.::# $
Value::$ )
;::) *
};; 
cacheScopeManager== 
.== 
WithExpirySliding== /
(==/ 0
value==0 5
)==5 6
;==6 7
return?? 

Completion?? 
.?? 
Normal?? $
;??$ %
}@@ 	
}AA 
}BB åj
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Cache\CacheStatement.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
Liquid# )
{ 
public 

class 
CacheStatement 
:  !
TagStatement" .
{ 
private 
static 
readonly 
char  $
[$ %
]% &

SplitChars' 1
=2 3
new4 7
[7 8
]8 9
{: ;
$char< ?
,? @
$charA D
}E F
;F G
private 
readonly 
ArgumentsExpression ,

_arguments- 7
;7 8
public 
CacheStatement 
( 
ArgumentsExpression 1
	arguments2 ;
,; <
List= A
<A B
	StatementB K
>K L

statementsM W
=X Y
nullZ ^
)^ _
:` a
baseb f
(f g

statementsg q
)q r
{ 	

_arguments 
= 
	arguments "
;" #
} 	
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
)
Ä Å
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesObjG R
)R S
)S T
{ 
throw 
new 
ArgumentException +
(+ ,
$str, [
)[ \
;\ ]
}   
var"" 
services"" 
="" 
servicesObj"" &
as""' )
IServiceProvider""* :
;"": ;
var$$ 
dynamicCache$$ 
=$$ 
services$$ '
.$$' (

GetService$$( 2
<$$2 3 
IDynamicCacheService$$3 G
>$$G H
($$H I
)$$I J
;$$J K
var%% 
cacheScopeManager%% !
=%%" #
services%%$ ,
.%%, -

GetService%%- 7
<%%7 8
ICacheScopeManager%%8 J
>%%J K
(%%K L
)%%L M
;%%M N
var&& 
loggerFactory&& 
=&& 
services&&  (
.&&( )

GetService&&) 3
<&&3 4
ILoggerFactory&&4 B
>&&B C
(&&C D
)&&D E
;&&E F
var'' 
logger'' 
='' 
loggerFactory'' &
.''& '
CreateLogger''' 3
<''3 4
CacheStatement''4 B
>''B C
(''C D
)''D E
;''E F
var(( 
cacheOptions(( 
=(( 
services(( '
.((' (
GetRequiredService((( :
<((: ;
IOptions((; C
<((C D
CacheOptions((D P
>((P Q
>((Q R
(((R S
)((S T
.((T U
Value((U Z
;((Z [
if** 
(** 
dynamicCache** 
==** 
null**  $
||**% '
cacheScopeManager**( 9
==**: <
null**= A
)**A B
{++ 
logger,, 
.,, 
LogInformation,, %
(,,% &
$str	,.& Œ
)
..Œ œ
;
..œ –
await00 
writer00 
.00 

WriteAsync00 '
(00' (
await00( -#
EvaluateStatementsAsync00. E
(00E F
encoder00F M
,00M N
context00O V
)00V W
)00W X
;00X Y
return22 

Completion22 !
.22! "
Normal22" (
;22( )
}33 
var55 
	arguments55 
=55 
(55 
FilterArguments55 ,
)55, -
(55- .
await55. 3

_arguments554 >
.55> ?
EvaluateAsync55? L
(55L M
context55M T
)55T U
)55U V
.55V W
ToObjectValue55W d
(55d e
)55e f
;55f g
var66 
cacheKey66 
=66 
	arguments66 $
.66$ %
At66% '
(66' (
$num66( )
)66) *
.66* +
ToStringValue66+ 8
(668 9
)669 :
;66: ;
var77 
contexts77 
=77 
	arguments77 $
[77$ %
$str77% .
]77. /
.77/ 0
ToStringValue770 =
(77= >
)77> ?
;77? @
var88 
tags88 
=88 
	arguments88  
[88  !
$str88! /
]88/ 0
.880 1
ToStringValue881 >
(88> ?
)88? @
;88@ A
var99 
durationString99 
=99  
	arguments99! *
[99* +
$str99+ :
]99: ;
.99; <
ToStringValue99< I
(99I J
)99J K
;99K L
var:: !
slidingDurationString:: %
=::& '
	arguments::( 1
[::1 2
$str::2 C
]::C D
.::D E
ToStringValue::E R
(::R S
)::S T
;::T U
var<< 
cacheContext<< 
=<< 
new<< "
CacheContext<<# /
(<</ 0
cacheKey<<0 8
)<<8 9
.== 

AddContext== 
(== 
contexts== $
.==$ %
Split==% *
(==* +

SplitChars==+ 5
,==5 6
StringSplitOptions==7 I
.==I J
RemoveEmptyEntries==J \
)==\ ]
)==] ^
.>> 
AddTag>> 
(>> 
tags>> 
.>> 
Split>> "
(>>" #

SplitChars>># -
,>>- .
StringSplitOptions>>/ A
.>>A B
RemoveEmptyEntries>>B T
)>>T U
)>>U V
;>>V W
if@@ 
(@@ 
TimeSpan@@ 
.@@ 
TryParse@@ !
(@@! "
durationString@@" 0
,@@0 1
out@@2 5
var@@6 9
duration@@: B
)@@B C
)@@C D
{AA 
cacheContextBB 
.BB 
WithExpiryAfterBB ,
(BB, -
durationBB- 5
)BB5 6
;BB6 7
}CC 
ifEE 
(EE 
TimeSpanEE 
.EE 
TryParseEE !
(EE! "!
slidingDurationStringEE" 7
,EE7 8
outEE9 <
varEE= @
slidingDurationEEA P
)EEP Q
)EEQ R
{FF 
cacheContextGG 
.GG 
WithExpirySlidingGG .
(GG. /
slidingDurationGG/ >
)GG> ?
;GG? @
}HH 
varJJ 
cacheResultJJ 
=JJ 
awaitJJ #
dynamicCacheJJ$ 0
.JJ0 1
GetCachedValueAsyncJJ1 D
(JJD E
cacheContextJJE Q
)JJQ R
;JJR S
ifKK 
(KK 
cacheResultKK 
!=KK 
nullKK #
)KK# $
{LL 
awaitMM 
writerMM 
.MM 

WriteAsyncMM '
(MM' (
cacheResultMM( 3
)MM3 4
;MM4 5
returnOO 

CompletionOO !
.OO! "
NormalOO" (
;OO( )
}PP 
cacheScopeManagerRR 
.RR 

EnterScopeRR (
(RR( )
cacheContextRR) 5
)RR5 6
;RR6 7
StringSS 
contentSS 
;SS 
tryUU 
{VV 
contentWW 
=WW 
awaitWW #
EvaluateStatementsAsyncWW  7
(WW7 8
encoderWW8 ?
,WW? @
contextWWA H
)WWH I
;WWI J
}XX 
finallyYY 
{ZZ 
cacheScopeManager[[ !
.[[! "
	ExitScope[[" +
([[+ ,
)[[, -
;[[- .
}\\ 
if^^ 
(^^ 
cacheOptions^^ 
.^^ 
	DebugMode^^ &
)^^& '
{__ 
varaa 
debugContentaa  
=aa! "
newaa# &
StringWriteraa' 3
(aa3 4
)aa4 5
;aa5 6
debugContentbb 
.bb 
	WriteLinebb &
(bb& '
)bb' (
;bb( )
debugContentcc 
.cc 
	WriteLinecc &
(cc& '
$"cc' )
<!-- CACHE BLOCK: cc) ;
{cc; <
cacheContextcc< H
.ccH I
CacheIdccI P
}ccP Q
 (ccQ S
{ccS T
GuidccT X
.ccX Y
NewGuidccY `
(cc` a
)cca b
}ccb c
)ccc d
"ccd e
)cce f
;ccf g
debugContentdd 
.dd 
	WriteLinedd &
(dd& '
$"dd' )
         VARY BY: dd) ;
{dd; <
Stringdd< B
.ddB C
JoinddC G
(ddG H
$strddH L
,ddL M
cacheContextddN Z
.ddZ [
Contextsdd[ c
)ddc d
}ddd e
"dde f
)ddf g
;ddg h
debugContentee 
.ee 
	WriteLineee &
(ee& '
$"ee' )
    DEPENDENCIES: ee) ;
{ee; <
Stringee< B
.eeB C
JoineeC G
(eeG H
$streeH L
,eeL M
cacheContexteeN Z
.eeZ [
Tagsee[ _
)ee_ `
}ee` a
"eea b
)eeb c
;eec d
debugContentff 
.ff 
	WriteLineff &
(ff& '
$"ff' )
      EXPIRES ON: ff) ;
{ff; <
cacheContextff< H
.ffH I
	ExpiresOnffI R
}ffR S
"ffS T
)ffT U
;ffU V
debugContentgg 
.gg 
	WriteLinegg &
(gg& '
$"gg' )
   EXPIRES AFTER: gg) ;
{gg; <
cacheContextgg< H
.ggH I
ExpiresAfterggI U
}ggU V
"ggV W
)ggW X
;ggX Y
debugContenthh 
.hh 
	WriteLinehh &
(hh& '
$"hh' )
 EXPIRES SLIDING: hh) ;
{hh; <
cacheContexthh< H
.hhH I
ExpiresSlidinghhI W
}hhW X
"hhX Y
)hhY Z
;hhZ [
debugContentii 
.ii 
	WriteLineii &
(ii& '
$strii' ,
)ii, -
;ii- .
debugContentkk 
.kk 
	WriteLinekk &
(kk& '
contentkk' .
)kk. /
;kk/ 0
debugContentmm 
.mm 
	WriteLinemm &
(mm& '
)mm' (
;mm( )
debugContentnn 
.nn 
	WriteLinenn &
(nn& '
$"nn' )"
<!-- END CACHE BLOCK: nn) ?
{nn? @
cacheContextnn@ L
.nnL M
CacheIdnnM T
}nnT U
 -->nnU Y
"nnY Z
)nnZ [
;nn[ \
contentpp 
=pp 
debugContentpp &
.pp& '
ToStringpp' /
(pp/ 0
)pp0 1
;pp1 2
}qq 
awaitss 
dynamicCachess 
.ss 
SetCachedValueAsyncss 2
(ss2 3
cacheContextss3 ?
,ss? @
contentssA H
)ssH I
;ssI J
awaituu 
writeruu 
.uu 

WriteAsyncuu #
(uu# $
contentuu$ +
)uu+ ,
;uu, -
returnww 

Completionww 
.ww 
Normalww $
;ww$ %
}xx 	
privatezz 
asynczz 
Taskzz 
<zz 
stringzz !
>zz! "#
EvaluateStatementsAsynczz# :
(zz: ;
TextEncoderzz; F
encoderzzG N
,zzN O
TemplateContextzzP _
contextzz` g
)zzg h
{{{ 	
using|| 
(|| 
var|| 
sb|| 
=|| 
StringBuilderPool|| -
.||- .
GetInstance||. 9
(||9 :
)||: ;
)||; <
{}} 
using~~ 
(~~ 
var~~ 
content~~ "
=~~# $
new~~% (
StringWriter~~) 5
(~~5 6
sb~~6 8
.~~8 9
Builder~~9 @
)~~@ A
)~~A B
{ 
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ  
	statement
ÄÄ! *
in
ÄÄ+ -

Statements
ÄÄ. 8
)
ÄÄ8 9
{
ÅÅ 
await
ÇÇ 
	statement
ÇÇ '
.
ÇÇ' (
WriteToAsync
ÇÇ( 4
(
ÇÇ4 5
content
ÇÇ5 <
,
ÇÇ< =
encoder
ÇÇ> E
,
ÇÇE F
context
ÇÇG N
)
ÇÇN O
;
ÇÇO P
}
ÉÉ 
await
ÖÖ 
content
ÖÖ !
.
ÖÖ! "

FlushAsync
ÖÖ" ,
(
ÖÖ, -
)
ÖÖ- .
;
ÖÖ. /
}
ÜÜ 
return
àà 
sb
àà 
.
àà 
Builder
àà !
.
àà! "
ToString
àà" *
(
àà* +
)
àà+ ,
;
àà, -
}
ââ 
}
ää 	
}
ãã 
}åå ‹
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\CultureLiquidTemplateEventHandler.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{		 
public 

class -
!CultureLiquidTemplateEventHandler 2
:3 4'
ILiquidTemplateEventHandler5 P
{ 
static -
!CultureLiquidTemplateEventHandler 0
(0 1
)1 2
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
CultureInfo@ K
,K L

FluidValueM W
>W X
(X Y
(Y Z
cultureZ a
,a b
namec g
)g h
=>i k
{ 
switch 
( 
name 
) 
{ 
case 
$str 
:  
return! '
new( +
StringValue, 7
(7 8
culture8 ?
.? @
Name@ D
)D E
;E F
case 
$str 
: 
return  &
new' *
StringValue+ 6
(6 7
culture7 >
.> ? 
GetLanguageDirection? S
(S T
)T U
)U V
;V W
default 
: 
return #
null$ (
;( )
} 
} 
) 
; 
} 	
public 
Task 
RenderingAsync "
(" #
TemplateContext# 2
context3 :
): ;
{ 	
context 
. 
SetValue 
( 
$str &
,& '
CultureInfo( 3
.3 4
CurrentUICulture4 D
)D E
;E F
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ ≥
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Filters\AppendVersionFilter.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Filters/ 6
{		 
public

 

class

 
AppendVersionFilter

 $
:

% &
ILiquidFilter

' 4
{ 
private 
readonly  
IFileVersionProvider - 
_fileVersionProvider. B
;B C
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 
AppendVersionFilter "
(" # 
IFileVersionProvider  
fileVersionProvider! 4
,4 5 
IHttpContextAccessor  
httpContextAccessor! 4
)4 5
{ 	 
_fileVersionProvider  
=! "
fileVersionProvider# 6
;6 7 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
var 
url 
= 
input 
. 
ToStringValue )
() *
)* +
;+ ,
var 
imageUrl 
=  
_fileVersionProvider /
./ 0 
AddFileVersionToPath0 D
(D E 
_httpContextAccessorE Y
.Y Z
HttpContextZ e
.e f
Requestf m
.m n
PathBasen v
,v w
urlx {
){ |
;| }
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
new- 0
StringValue1 <
(< =
imageUrl= E
??F H
urlI L
)L M
)M N
;N O
} 	
} 
}   ◊â
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Filters\LiquidViewFilters.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Filters/ 6
{ 
public 

static 
class 
LiquidViewFilters )
{ 
private 
static 
readonly 
AsyncFilterDelegate  3
_localizeDelegate4 E
=F G
LocalizeH P
;P Q
private 
static 
readonly 
AsyncFilterDelegate  3
_htmlClassDelegate4 F
=G H
	HtmlClassI R
;R S
private 
static 
readonly 
AsyncFilterDelegate  3
_newShapeDelegate4 E
=F G
NewShapeH P
;P Q
private 
static 
readonly 
AsyncFilterDelegate  3 
_shapeRenderDelegate4 H
=I J
ShapeRenderK V
;V W
private 
static 
readonly 
AsyncFilterDelegate  3#
_shapeStringifyDelegate4 K
=L M
ShapeStringifyN \
;\ ]
private 
static 
readonly 
FilterDelegate  .$
_shapePropertiesDelegate/ G
=H I
ShapePropertiesJ Y
;Y Z
public 
static 
FilterCollection &!
WithLiquidViewFilters' <
(< =
this= A
FilterCollectionB R
filtersS Z
)Z [
{ 	
filters 
. 
AddAsyncFilter "
(" #
$str# &
,& '
_localizeDelegate( 9
)9 :
;: ;
filters 
. 
AddAsyncFilter "
(" #
$str# /
,/ 0
_htmlClassDelegate1 C
)C D
;D E
filters 
. 
AddAsyncFilter "
(" #
$str# .
,. /
_newShapeDelegate0 A
)A B
;B C
filters 
. 
AddAsyncFilter "
(" #
$str# 1
,1 2 
_shapeRenderDelegate3 G
)G H
;H I
filters 
. 
AddAsyncFilter "
(" #
$str# 4
,4 5#
_shapeStringifyDelegate6 M
)M N
;N O
filters 
. 
	AddFilter 
( 
$str 0
,0 1$
_shapePropertiesDelegate2 J
)J K
;K L
return!! 
filters!! 
;!! 
}"" 	
public$$ 
static$$ 
	ValueTask$$ 
<$$  

FluidValue$$  *
>$$* +
Localize$$, 4
($$4 5

FluidValue$$5 ?
input$$@ E
,$$E F
FilterArguments$$G V
	arguments$$W `
,$$` a
TemplateContext$$b q
context$$r y
)$$y z
{%% 	
var&& 
	localizer&& 
=&& 
context&& #
.&&# $
GetValue&&$ ,
(&&, -
$str&&- <
)&&< =
?&&= >
.&&> ?
ToObjectValue&&? L
(&&L M
)&&M N
as&&O Q
IViewLocalizer&&R `
;&&` a
if(( 
((( 
	localizer(( 
==(( 
null(( !
)((! "
{)) 
return** "
ThrowArgumentException** -
<**- .
	ValueTask**. 7
<**7 8

FluidValue**8 B
>**B C
>**C D
(**D E
$str**E o
)**o p
;**p q
}++ 
var-- 

parameters-- 
=-- 
new--  
object--! '
[--' (
	arguments--( 1
.--1 2
Count--2 7
]--7 8
;--8 9
for.. 
(.. 
var.. 
i.. 
=.. 
$num.. 
;.. 
i.. 
<.. 
	arguments..  )
...) *
Count..* /
;../ 0
i..1 2
++..2 4
)..4 5
{// 

parameters00 
[00 
i00 
]00 
=00 
	arguments00  )
.00) *
At00* ,
(00, -
i00- .
)00. /
.00/ 0
ToStringValue000 =
(00= >
)00> ?
;00? @
}11 
return33 
new33 
	ValueTask33  
<33  !

FluidValue33! +
>33+ ,
(33, -
new33- 0
StringValue331 <
(33< =
	localizer33= F
.33F G
	GetString33G P
(33P Q
input33Q V
.33V W
ToStringValue33W d
(33d e
)33e f
,33f g

parameters33h r
)33r s
)33s t
)33t u
;33u v
}44 	
public66 
static66 
	ValueTask66 
<66  

FluidValue66  *
>66* +
	HtmlClass66, 5
(665 6

FluidValue666 @
input66A F
,66F G
FilterArguments66H W
	arguments66X a
,66a b
TemplateContext66c r
context66s z
)66z {
{77 	
return88 
new88 
	ValueTask88  
<88  !

FluidValue88! +
>88+ ,
(88, -
new88- 0
StringValue881 <
(88< =
input88= B
.88B C
ToStringValue88C P
(88P Q
)88Q R
.88R S
HtmlClassify88S _
(88_ `
)88` a
)88a b
)88b c
;88c d
}99 	
public;; 
static;; 
	ValueTask;; 
<;;  

FluidValue;;  *
>;;* +
NewShape;;, 4
(;;4 5

FluidValue;;5 ?
input;;@ E
,;;E F
FilterArguments;;G V
	arguments;;W `
,;;` a
TemplateContext;;b q
context;;r y
);;y z
{<< 	
static== 
async== 
	ValueTask== "
<==" #

FluidValue==# -
>==- .
Awaited==/ 6
(==6 7
	ValueTask==7 @
<==@ A
IShape==A G
>==G H
task==I M
)==M N
{>> 
return?? 

FluidValue?? !
.??! "
Create??" (
(??( )
await??) .
task??/ 3
)??3 4
;??4 5
}@@ 
ifBB 
(BB 
!BB 
contextBB 
.BB 
AmbientValuesBB &
.BB& '
TryGetValueBB' 2
(BB2 3
$strBB3 A
,BBA B
outBBC F
varBBG J
itemBBK O
)BBO P
||BBQ S
!BBT U
(BBU V
itemBBV Z
isBB[ ]
IShapeFactoryBB^ k
shapeFactoryBBl x
)BBx y
)BBy z
{CC 
returnDD "
ThrowArgumentExceptionDD -
<DD- .
	ValueTaskDD. 7
<DD7 8

FluidValueDD8 B
>DDB C
>DDC D
(DDD E
$strDDE v
)DDv w
;DDw x
}EE 
varGG 
typeGG 
=GG 
inputGG 
.GG 
ToStringValueGG *
(GG* +
)GG+ ,
;GG, -
varHH 

propertiesHH 
=HH 
newHH  

DictionaryHH! +
<HH+ ,
stringHH, 2
,HH2 3
objectHH4 :
>HH: ;
(HH; <
	argumentsHH< E
.HHE F
CountHHF K
)HHK L
;HHL M
foreachJJ 
(JJ 
varJJ 
nameJJ 
inJJ  
	argumentsJJ! *
.JJ* +
NamesJJ+ 0
)JJ0 1
{KK 

propertiesLL 
.LL 
AddLL 
(LL 
nameLL #
.LL# $"
ToPascalCaseUnderscoreLL$ :
(LL: ;
)LL; <
,LL< =
	argumentsLL> G
[LLG H
nameLLH L
]LLL M
.LLM N
ToObjectValueLLN [
(LL[ \
)LL\ ]
)LL] ^
;LL^ _
}MM 
varOO 
taskOO 
=OO 
shapeFactoryOO #
.OO# $
CreateAsyncOO$ /
(OO/ 0
typeOO0 4
,OO4 5
	ArgumentsOO6 ?
.OO? @
FromOO@ D
(OOD E

propertiesOOE O
)OOO P
)OOP Q
;OOQ R
ifPP 
(PP 
!PP 
taskPP 
.PP #
IsCompletedSuccessfullyPP -
)PP- .
{QQ 
returnRR 
AwaitedRR 
(RR 
taskRR #
)RR# $
;RR$ %
}SS 
returnTT 
newTT 
	ValueTaskTT  
<TT  !

FluidValueTT! +
>TT+ ,
(TT, -

FluidValueTT- 7
.TT7 8
CreateTT8 >
(TT> ?
taskTT? C
.TTC D
ResultTTD J
)TTJ K
)TTK L
;TTL M
}UU 	
publicWW 
staticWW 
	ValueTaskWW 
<WW  

FluidValueWW  *
>WW* +
ShapeStringifyWW, :
(WW: ;

FluidValueWW; E
inputWWF K
,WWK L
FilterArgumentsWWM \
	argumentsWW] f
,WWf g
TemplateContextWWh w
contextWWx 
)	WW Ä
{XX 	
staticYY 
asyncYY 
	ValueTaskYY "
<YY" #

FluidValueYY# -
>YY- .
AwaitedYY/ 6
(YY6 7
TaskYY7 ;
<YY; <
IHtmlContentYY< H
>YYH I
taskYYJ N
)YYN O
{ZZ 
return[[ 
new[[ 
HtmlContentValue[[ +
([[+ ,
await[[, 1
task[[2 6
)[[6 7
;[[7 8
}\\ 
if^^ 
(^^ 
input^^ 
.^^ 
ToObjectValue^^ #
(^^# $
)^^$ %
is^^& (
IShape^^) /
shape^^0 5
)^^5 6
{__ 
if`` 
(`` 
!`` 
context`` 
.`` 
AmbientValues`` *
.``* +
TryGetValue``+ 6
(``6 7
$str``7 F
,``F G
out``H K
var``L O
item``P T
)``T U
||``V X
!``Y Z
(``Z [
item``[ _
is``` b
IDisplayHelper``c q
displayHelper``r 
)	`` Ä
)
``Ä Å
{aa 
returnbb "
ThrowArgumentExceptionbb 1
<bb1 2
	ValueTaskbb2 ;
<bb; <

FluidValuebb< F
>bbF G
>bbG H
(bbH I
$str	bbI Å
)
bbÅ Ç
;
bbÇ É
}cc 
varee 
taskee 
=ee 
displayHelperee (
.ee( )
ShapeExecuteAsyncee) :
(ee: ;
shapeee; @
)ee@ A
;eeA B
ifff 
(ff 
!ff 
taskff 
.ff #
IsCompletedSuccessfullyff 1
)ff1 2
{gg 
returnhh 
Awaitedhh "
(hh" #
taskhh# '
)hh' (
;hh( )
}ii 
StringValuekk 
valuekk !
;kk! "
usingll 
(ll 
varll 
writerll !
=ll" #
newll$ '
StringWriterll( 4
(ll4 5
)ll5 6
)ll6 7
{mm 
tasknn 
.nn 
Resultnn 
.nn  
WriteTonn  '
(nn' (
writernn( .
,nn. /
NullHtmlEncodernn0 ?
.nn? @
Defaultnn@ G
)nnG H
;nnH I
valueoo 
=oo 
newoo 
StringValueoo  +
(oo+ ,
writeroo, 2
.oo2 3
ToStringoo3 ;
(oo; <
)oo< =
,oo= >
falseoo? D
)ooD E
;ooE F
}pp 
returnrr 
newrr 
	ValueTaskrr $
<rr$ %

FluidValuerr% /
>rr/ 0
(rr0 1
valuerr1 6
)rr6 7
;rr7 8
}ss 
returnuu 
newuu 
	ValueTaskuu  
<uu  !

FluidValueuu! +
>uu+ ,
(uu, -
NilValueuu- 5
.uu5 6
Instanceuu6 >
)uu> ?
;uu? @
}vv 	
publicxx 
staticxx 
	ValueTaskxx 
<xx  

FluidValuexx  *
>xx* +
ShapeRenderxx, 7
(xx7 8

FluidValuexx8 B
inputxxC H
,xxH I
FilterArgumentsxxJ Y
	argumentsxxZ c
,xxc d
TemplateContextxxe t
contextxxu |
)xx| }
{yy 	
staticzz 
asynczz 
	ValueTaskzz "
<zz" #

FluidValuezz# -
>zz- .
Awaitedzz/ 6
(zz6 7
Taskzz7 ;
<zz; <
IHtmlContentzz< H
>zzH I
taskzzJ N
)zzN O
{{{ 
return|| 
new|| 
HtmlContentValue|| +
(||+ ,
await||, 1
task||2 6
)||6 7
;||7 8
}}} 
var 
shape 
= 
input 
. 
ToObjectValue +
(+ ,
), -
;- .
if
ÄÄ 
(
ÄÄ 
shape
ÄÄ 
!=
ÄÄ 
null
ÄÄ 
)
ÄÄ 
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
context
ÇÇ 
.
ÇÇ 
AmbientValues
ÇÇ *
.
ÇÇ* +
TryGetValue
ÇÇ+ 6
(
ÇÇ6 7
$str
ÇÇ7 F
,
ÇÇF G
out
ÇÇH K
var
ÇÇL O
item
ÇÇP T
)
ÇÇT U
||
ÇÇV X
!
ÇÇY Z
(
ÇÇZ [
item
ÇÇ[ _
is
ÇÇ` b
IDisplayHelper
ÇÇc q
displayHelper
ÇÇr 
)ÇÇ Ä
)ÇÇÄ Å
{
ÉÉ 
return
ÑÑ $
ThrowArgumentException
ÑÑ 1
<
ÑÑ1 2
	ValueTask
ÑÑ2 ;
<
ÑÑ; <

FluidValue
ÑÑ< F
>
ÑÑF G
>
ÑÑG H
(
ÑÑH I
$str
ÑÑI ~
)
ÑÑ~ 
;ÑÑ Ä
}
ÖÖ 
var
áá 
task
áá 
=
áá 
displayHelper
áá (
.
áá( )
ShapeExecuteAsync
áá) :
(
áá: ;
shape
áá; @
)
áá@ A
;
ááA B
if
àà 
(
àà 
!
àà 
task
àà 
.
àà %
IsCompletedSuccessfully
àà 1
)
àà1 2
{
ââ 
return
ää 
Awaited
ää "
(
ää" #
task
ää# '
)
ää' (
;
ää( )
}
ãã 
return
åå 
new
åå 
	ValueTask
åå $
<
åå$ %

FluidValue
åå% /
>
åå/ 0
(
åå0 1
new
åå1 4
HtmlContentValue
åå5 E
(
ååE F
task
ååF J
.
ååJ K
Result
ååK Q
)
ååQ R
)
ååR S
;
ååS T
}
çç 
return
èè 
new
èè 
	ValueTask
èè  
<
èè  !

FluidValue
èè! +
>
èè+ ,
(
èè, -
NilValue
èè- 5
.
èè5 6
Instance
èè6 >
)
èè> ?
;
èè? @
}
êê 	
public
íí 
static
íí 

FluidValue
íí  
ShapeProperties
íí! 0
(
íí0 1

FluidValue
íí1 ;
input
íí< A
,
ííA B
FilterArguments
ííC R
	arguments
ííS \
,
íí\ ]
TemplateContext
íí^ m
context
íín u
)
ííu v
{
ìì 	
if
îî 
(
îî 
input
îî 
.
îî 
ToObjectValue
îî #
(
îî# $
)
îî$ %
is
îî& (
IShape
îî) /
shape
îî0 5
)
îî5 6
{
ïï 
foreach
ññ 
(
ññ 
var
ññ 
name
ññ !
in
ññ" $
	arguments
ññ% .
.
ññ. /
Names
ññ/ 4
)
ññ4 5
{
óó 
shape
òò 
.
òò 

Properties
òò $
[
òò$ %
name
òò% )
.
òò) *$
ToPascalCaseUnderscore
òò* @
(
òò@ A
)
òòA B
]
òòB C
=
òòD E
	arguments
òòF O
[
òòO P
name
òòP T
]
òòT U
.
òòU V
ToObjectValue
òòV c
(
òòc d
)
òòd e
;
òòe f
}
ôô 
return
öö 

FluidValue
öö !
.
öö! "
Create
öö" (
(
öö( )
shape
öö) .
)
öö. /
;
öö/ 0
}
õõ 
return
ùù 
NilValue
ùù 
.
ùù 
Instance
ùù $
;
ùù$ %
}
ûû 	
[
†† 	

MethodImpl
††	 
(
†† 
MethodImplOptions
†† %
.
††% &

NoInlining
††& 0
)
††0 1
]
††1 2
private
°° 
static
°° 
T
°° $
ThrowArgumentException
°° /
<
°°/ 0
T
°°0 1
>
°°1 2
(
°°2 3
string
°°3 9
message
°°: A
)
°°A B
{
¢¢ 	
throw
££ 
new
££ 
ArgumentException
££ '
(
££' (
message
££( /
)
££/ 0
;
££0 1
}
§§ 	
}
•• 
}¶¶ ¢ 
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Filters\ResourceUrlFilter.cs
	namespace

 	
OrchardCore


 
.

 
DisplayManagement

 '
.

' (
Liquid

( .
.

. /
Filters

/ 6
{ 
public 

class 
ResourceUrlFilter "
:# $
ILiquidFilter% 2
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly %
ResourceManagementOptions 2
_options3 ;
;; <
public 
ResourceUrlFilter  
(  ! 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
IOptions 
< %
ResourceManagementOptions .
>. /
options0 7
) 
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
var 
resourcePath 
= 
input $
.$ %
ToStringValue% 2
(2 3
)3 4
;4 5
if!! 
(!! 
resourcePath!! 
.!! 

StartsWith!! '
(!!' (
$str!!( ,
,!!, -
StringComparison!!. >
.!!> ?
Ordinal!!? F
)!!F G
)!!G H
{"" 
resourcePath## 
=##  
_httpContextAccessor## 3
.##3 4
HttpContext##4 ?
.##? @
Request##@ G
.##G H
PathBase##H P
.##P Q
Add##Q T
(##T U
resourcePath##U a
.##a b
	Substring##b k
(##k l
$num##l m
)##m n
)##n o
.##o p
Value##p u
;##u v
}$$ 
if'' 
('' 
!'' 
_options'' 
.'' 
	DebugMode'' #
&&''$ &
!''' (
String''( .
.''. /
IsNullOrEmpty''/ <
(''< =
_options''= E
.''E F

CdnBaseUrl''F P
)''P Q
&&''R T
!)) 
resourcePath)) 
.)) 

StartsWith)) (
())( )
$str))) 3
,))3 4
StringComparison))5 E
.))E F
OrdinalIgnoreCase))F W
)))W X
&&))Y [
!** 
resourcePath** 
.** 

StartsWith** (
(**( )
$str**) 2
,**2 3
StringComparison**4 D
.**D E
OrdinalIgnoreCase**E V
)**V W
&&**X Z
!++ 
resourcePath++ 
.++ 

StartsWith++ (
(++( )
$str++) -
,++- .
StringComparison++/ ?
.++? @
OrdinalIgnoreCase++@ Q
)++Q R
&&++S U
!,, 
resourcePath,, 
.,, 

StartsWith,, (
(,,( )
$str,,) 2
,,,2 3
StringComparison,,4 D
.,,D E
OrdinalIgnoreCase,,E V
),,V W
),,W X
{-- 
resourcePath.. 
=.. 
_options.. '
...' (

CdnBaseUrl..( 2
+..3 4
resourcePath..5 A
;..A B
}// 
return11 
new11 
	ValueTask11  
<11  !

FluidValue11! +
>11+ ,
(11, -
new11- 0
StringValue111 <
(11< =
resourcePath11= I
)11I J
)11J K
;11K L
}22 	
}33 
}44 ˜
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Filters\SanitizeHtmlFilter.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Liquid		( .
.		. /
Filters		/ 6
{

 
public 

class 
SanitizeHtmlFilter #
:$ %
ILiquidFilter& 3
{ 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
var 
html 
= 
input 
. 
ToStringValue *
(* +
)+ ,
;, -
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, X
)X Y
;Y Z
} 
var 
	sanitizer 
= 
( 
( 
IServiceProvider .
). /
services/ 7
)7 8
.8 9
GetRequiredService9 K
<K L!
IHtmlSanitizerServiceL a
>a b
(b c
)c d
;d e
html 
= 
	sanitizer 
. 
Sanitize %
(% &
html& *
)* +
;+ ,
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
new- 0
StringValue1 <
(< =
html= A
)A B
)B C
;C D
} 	
} 
} ®'
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\HtmlContentValue.cs
	namespace

 	
OrchardCore


 
.

 
DisplayManagement

 '
.

' (
Liquid

( .
{ 
public 

class 
HtmlContentValue !
:" #

FluidValue$ .
{ 
private 
readonly 
IHtmlContent %
_value& ,
;, -
public 
HtmlContentValue 
(  
IHtmlContent  ,
value- 2
)2 3
{ 	
_value 
= 
value 
; 
} 	
public 
override 
FluidValues #
Type$ (
=>) +
FluidValues, 7
.7 8
String8 >
;> ?
public 
override 
bool 
Equals #
(# $

FluidValue$ .
other/ 4
)4 5
{ 	
if 
( 
other 
. 
IsNil 
( 
) 
) 
{ 
return 
_value 
==  
null! %
;% &
} 
return 
_value 
== 
other "
;" #
} 	
	protected!! 
override!! 

FluidValue!! %
GetIndex!!& .
(!!. /

FluidValue!!/ 9
index!!: ?
,!!? @
TemplateContext!!A P
context!!Q X
)!!X Y
{"" 	
return## 
NilValue## 
.## 
Instance## $
;##$ %
}$$ 	
	protected&& 
override&& 

FluidValue&& %
GetValue&&& .
(&&. /
string&&/ 5
name&&6 :
,&&: ;
TemplateContext&&< K
context&&L S
)&&S T
{'' 	
return(( 
NilValue(( 
.(( 
Instance(( $
;(($ %
})) 	
public++ 
override++ 
bool++ 
ToBooleanValue++ +
(+++ ,
)++, -
{,, 	
return-- 
true-- 
;-- 
}.. 	
public00 
override00 
decimal00 
ToNumberValue00  -
(00- .
)00. /
{11 	
return22 
$num22 
;22 
}33 	
public55 
override55 
string55 
ToStringValue55 ,
(55, -
)55- .
{66 	
return77 
_value77 
.77 
ToString77 "
(77" #
)77# $
;77$ %
}88 	
public:: 
override:: 
void:: 
WriteTo:: $
(::$ %

TextWriter::% /
writer::0 6
,::6 7
TextEncoder::8 C
encoder::D K
,::K L
CultureInfo::M X
cultureInfo::Y d
)::d e
{;; 	
_value<< 
.<< 
WriteTo<< 
(<< 
writer<< !
,<<! "
(<<# $
HtmlEncoder<<$ /
)<</ 0
encoder<<0 7
)<<7 8
;<<8 9
}== 	
public?? 
override?? 
object?? 
ToObjectValue?? ,
(??, -
)??- .
{@@ 	
returnAA 
_valueAA 
;AA 
}BB 	
publicDD 
overrideDD 
boolDD 
ContainsDD %
(DD% &

FluidValueDD& 0
valueDD1 6
)DD6 7
{EE 	
returnFF 
falseFF 
;FF 
}GG 	
publicII 
overrideII 
IEnumerableII #
<II# $

FluidValueII$ .
>II. /
	EnumerateII0 9
(II9 :
)II: ;
{JJ 	
returnKK 

EnumerableKK 
.KK 
EmptyKK #
<KK# $

FluidValueKK$ .
>KK. /
(KK/ 0
)KK0 1
;KK1 2
}LL 	
publicNN 
overrideNN 
boolNN 
EqualsNN #
(NN# $
objectNN$ *
otherNN+ 0
)NN0 1
{OO 	
ifQQ 
(QQ 
otherQQ 
isQQ 
HtmlContentValueQQ )

otherValueQQ* 4
)QQ4 5
{RR 
returnSS 
_valueSS 
.SS 
EqualsSS $
(SS$ %

otherValueSS% /
.SS/ 0
_valueSS0 6
)SS6 7
;SS7 8
}TT 
returnVV 
falseVV 
;VV 
}WW 	
publicYY 
overrideYY 
intYY 
GetHashCodeYY '
(YY' (
)YY( )
{ZZ 	
return[[ 
_value[[ 
.[[ 
GetHashCode[[ %
([[% &
)[[& '
;[[' (
}\\ 	
}]] 
}^^ “
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Internal\ILiquidViewFileProviderAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Internal/ 7
{ 
public 

	interface +
ILiquidViewFileProviderAccessor 4
{		 
IFileProvider 
FileProvider "
{# $
get% (
;( )
}* +
} 
} Ä
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Internal\LiquidViewFileProviderAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Internal/ 7
{ 
public		 

class		 *
LiquidViewFileProviderAccessor		 /
:		0 1+
ILiquidViewFileProviderAccessor		2 Q
{

 
public *
LiquidViewFileProviderAccessor -
(- .
IOptions. 6
<6 7
LiquidViewOptions7 H
>H I
optionsAccessorJ Y
)Y Z
{ 	
var 
fileProviders 
= 
optionsAccessor  /
./ 0
Value0 5
.5 6
FileProviders6 C
;C D
if 
( 
fileProviders 
. 
Count #
==$ &
$num' (
)( )
{ 
FileProvider 
= 
new "
NullFileProvider# 3
(3 4
)4 5
;5 6
} 
else 
if 
( 
fileProviders "
." #
Count# (
==) +
$num, -
)- .
{ 
FileProvider 
= 
fileProviders ,
[, -
$num- .
]. /
;/ 0
} 
else 
{ 
FileProvider 
= 
new "!
CompositeFileProvider# 8
(8 9
fileProviders9 F
)F G
;G H
} 
} 	
public$$ 
IFileProvider$$ 
FileProvider$$ )
{$$* +
get$$, /
;$$/ 0
}$$1 2
}%% 
}&& â
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\LiquidPage.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{ 
public 

class 

LiquidPage 
: 
Razor #
.# $
	RazorPage$ -
<- .
dynamic. 5
>5 6
{ 
public 
override 
Task 
ExecuteAsync )
() *
)* +
=>, .
LiquidViewTemplate/ A
.A B
RenderAsyncB M
(M N
thisN R
)R S
;S T
} 
}		 …
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\LiquidShapeTemplateOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{ 
public 

class +
LiquidShapeTemplateOptionsSetup 0
:1 2
IConfigureOptions3 D
<D E 
ShapeTemplateOptionsE Y
>Y Z
{		 
private

 
readonly

 +
ILiquidViewFileProviderAccessor

 8!
_fileProviderAccessor

9 N
;

N O
public +
LiquidShapeTemplateOptionsSetup .
(. /+
ILiquidViewFileProviderAccessor/ N 
fileProviderAccessorO c
)c d
{ 	!
_fileProviderAccessor !
=" # 
fileProviderAccessor$ 8
??9 ;
throw< A
newB E!
ArgumentNullExceptionF [
([ \
nameof\ b
(b c 
fileProviderAccessorc w
)w x
)x y
;y z
} 	
public 
void 
	Configure 
(  
ShapeTemplateOptions 2
options3 :
): ;
{ 	
options 
. 
FileProviders !
.! "
Insert" (
(( )
$num) *
,* +!
_fileProviderAccessor, A
.A B
FileProviderB N
)N O
;O P
} 	
} 
} â
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\LiquidViewExtensionProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{ 
public 

class '
LiquidViewExtensionProvider ,
:- .'
IRazorViewExtensionProvider/ J
{ 
public 
string 
ViewExtension #
=>$ &
LiquidViewTemplate' 9
.9 :
ViewExtension: G
;G H
} 
}		 ‚
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\LiquidViewOptions.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{ 
public		 

class		 
LiquidViewOptions		 "
{

 
public 
IList 
< 
IFileProvider "
>" #
FileProviders$ 1
{2 3
get4 7
;7 8
}9 :
=; <
new= @
ListA E
<E F
IFileProviderF S
>S T
(T U
)U V
;V W
} 
} •
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\LiquidViewOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{ 
public		 

class		 "
LiquidViewOptionsSetup		 '
:		( )
IConfigureOptions		* ;
<		; <
LiquidViewOptions		< M
>		M N
{

 
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public "
LiquidViewOptionsSetup %
(% &
IHostEnvironment& 6
hostingEnvironment7 I
,I J
IApplicationContextK ^
applicationContext_ q
)q r
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
??5 7
throw8 =
new> A!
ArgumentNullExceptionB W
(W X
nameofX ^
(^ _
hostingEnvironment_ q
)q r
)r s
;s t
_applicationContext 
=  !
applicationContext" 4
??5 7
throw8 =
new> A!
ArgumentNullExceptionB W
(W X
nameofX ^
(^ _
applicationContext_ q
)q r
)r s
;s t
} 	
public 
void 
	Configure 
( 
LiquidViewOptions /
options0 7
)7 8
{ 	
if 
( 
_hostingEnvironment #
.# $#
ContentRootFileProvider$ ;
!=< >
null? C
)C D
{ 
options 
. 
FileProviders %
.% &
Add& )
() *
_hostingEnvironment* =
.= >#
ContentRootFileProvider> U
)U V
;V W
options!! 
.!! 
FileProviders!! %
.!!% &
Insert!!& ,
(!!, -
$num!!- .
,!!. /
new!!0 3'
ApplicationViewFileProvider!!4 O
(!!O P
_applicationContext!!P c
)!!c d
)!!d e
;!!e f
if## 
(## 
_hostingEnvironment## '
.##' (
IsDevelopment##( 5
(##5 6
)##6 7
)##7 8
{$$ 
options&& 
.&& 
FileProviders&& )
.&&) *
Insert&&* 0
(&&0 1
$num&&1 2
,&&2 3
new&&4 7+
ModuleProjectLiquidFileProvider&&8 W
(&&W X
_applicationContext&&X k
)&&k l
)&&l m
;&&m n
}'' 
}(( 
})) 	
}** 
}++ π)
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\LiquidViewsFeatureProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{ 
public 

class &
LiquidViewsFeatureProvider +
:, -'
IApplicationFeatureProvider. I
<I J
ViewsFeatureJ V
>V W
{ 
public 
const 
string !
DefaultLiquidViewName 1
=2 3
$str4 K
;K L
public 
static 
string  
DefaultRazorViewPath 1
=2 3
$char4 7
+8 9!
DefaultLiquidViewName: O
+P Q
RazorViewEngineR a
.a b
ViewExtensionb o
;o p
public 
static 
string !
DefaultLiquidViewPath 2
=3 4
$char5 8
+9 :!
DefaultLiquidViewName; P
+Q R
LiquidViewTemplateS e
.e f
ViewExtensionf s
;s t
private 
static 
List 
< 
string "
>" #
_sharedPaths$ 0
;0 1
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
public &
LiquidViewsFeatureProvider )
() *+
ILiquidViewFileProviderAccessor + 
fileProviderAccessor, @
)@ A
{ 	
if 
( 
_sharedPaths 
!= 
null  $
)$ %
{ 
return 
; 
} 
lock 
( 
_synLock 
) 
{   
if!! 
(!! 
_sharedPaths!!  
==!!! #
null!!$ (
)!!( )
{"" 
_sharedPaths##  
=##! "
new### &
List##' +
<##+ ,
string##, 2
>##2 3
(##3 4
)##4 5
;##5 6
var%% 
	filePaths%% !
=%%" # 
fileProviderAccessor%%$ 8
.%%8 9
FileProvider%%9 E
.%%E F
GetViewFilePaths%%F V
(%%V W
Application&& #
.&&# $
ModulesPath&&$ /
,&&/ 0
new&&1 4
[&&4 5
]&&5 6
{&&7 8
LiquidViewTemplate&&9 K
.&&K L
ViewExtension&&L Y
}&&Z [
,&&[ \
LiquidViewTemplate'' *
.''* +
ViewsFolder''+ 6
)''6 7
;''7 8
_sharedPaths))  
.))  !
AddRange))! )
())) *
	filePaths))* 3
.))3 4
Select))4 :
()): ;
p)); <
=>))= ?
$char))@ C
+))D E
p))F G
)))G H
)))H I
;))I J
}** 
}++ 
},, 	
public.. 
void.. 
PopulateFeature.. #
(..# $
IEnumerable..$ /
<../ 0
ApplicationPart..0 ?
>..? @
parts..A F
,..F G
ViewsFeature..H T
feature..U \
)..\ ]
{// 	
feature00 
.00 
ViewDescriptors00 #
.00# $
Add00$ '
(00' (
new00( +"
CompiledViewDescriptor00, B
{11 
RelativePath22 
=22  
DefaultRazorViewPath22 3
,223 4
Item33 
=33 
new33 !
RazorViewCompiledItem33 0
(330 1
typeof331 7
(337 8

LiquidPage338 B
)33B C
,33C D
$str33E T
,33T U!
DefaultLiquidViewPath33V k
)33k l
}44 
)44 
;44 
foreach66 
(66 
var66 
path66 
in66  
_sharedPaths66! -
)66- .
{77 
if88 
(88 
!88 
Path88 
.88 
GetFileName88 %
(88% &
path88& *
)88* +
.88+ ,

StartsWith88, 6
(886 7
$char887 :
)88: ;
)88; <
{99 
var:: 
viewPath::  
=::! "
Path::# '
.::' (
ChangeExtension::( 7
(::7 8
path::8 <
,::< =
RazorViewEngine::> M
.::M N
ViewExtension::N [
)::[ \
;::\ ]
feature;; 
.;; 
ViewDescriptors;; +
.;;+ ,
Add;;, /
(;;/ 0
new;;0 3"
CompiledViewDescriptor;;4 J
{<< 
RelativePath== $
===% &
viewPath==' /
,==/ 0
Item>> 
=>> 
new>> "!
RazorViewCompiledItem>># 8
(>>8 9
typeof>>9 ?
(>>? @

LiquidPage>>@ J
)>>J K
,>>K L
$str>>M \
,>>\ ]
viewPath>>^ f
)>>f g
}?? 
)?? 
;?? 
}@@ 
}AA 
}BB 	
}CC 
}DD £À
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\LiquidViewTemplate.cs
	namespace## 	
OrchardCore##
 
.## 
DisplayManagement## '
.##' (
Liquid##( .
{$$ 
public%% 

class%% 
LiquidViewTemplate%% #
:%%$ %
BaseFluidTemplate%%& 7
<%%7 8
LiquidViewTemplate%%8 J
>%%J K
{&& 
public'' 
static'' 
readonly'' 
string'' %
ViewsFolder''& 1
=''2 3
$str''4 ;
;''; <
public(( 
static(( 
readonly(( 
string(( %
ViewExtension((& 3
=((4 5
$str((6 ?
;((? @
public)) 
static)) 
readonly)) 
MemoryCache)) *
Cache))+ 0
=))1 2
new))3 6
MemoryCache))7 B
())B C
new))C F
MemoryCacheOptions))G Y
())Y Z
)))Z [
)))[ \
;))\ ]
static++ 
LiquidViewTemplate++ !
(++! "
)++" #
{,, 	

FluidValue-- 
.-- 
SetTypeMapping-- %
<--% &
Shape--& +
>--+ ,
(--, -
o--- .
=>--/ 1
new--2 5
ObjectValue--6 A
(--A B
o--B C
)--C D
)--D E
;--E F

FluidValue.. 
... 
SetTypeMapping.. %
<..% &
ZoneHolding..& 1
>..1 2
(..2 3
o..3 4
=>..5 7
new..8 ;
ObjectValue..< G
(..G H
o..H I
)..I J
)..J K
;..K L
TemplateContext00 
.00 &
GlobalMemberAccessStrategy00 6
.006 7
Register007 ?
<00? @
Shape00@ E
>00E F
(00F G
$str00G J
,00J K
new00L O
ShapeAccessor00P ]
(00] ^
)00^ _
)00_ `
;00` a
TemplateContext11 
.11 &
GlobalMemberAccessStrategy11 6
.116 7
Register117 ?
<11? @
ZoneHolding11@ K
>11K L
(11L M
$str11M P
,11P Q
new11R U
ShapeAccessor11V c
(11c d
)11d e
)11e f
;11f g
TemplateContext22 
.22 &
GlobalMemberAccessStrategy22 6
.226 7
Register227 ?
<22? @
ShapeMetadata22@ M
>22M N
(22N O
)22O P
;22P Q
Factory44 
.44 
RegisterTag44 
<44  
RenderBodyTag44  -
>44- .
(44. /
$str44/ <
)44< =
;44= >
Factory55 
.55 
RegisterTag55 
<55  
RenderSectionTag55  0
>550 1
(551 2
$str552 B
)55B C
;55C D
Factory66 
.66 
RegisterTag66 
<66  "
RenderTitleSegmentsTag66  6
>666 7
(667 8
$str668 D
)66D E
;66E F
Factory77 
.77 
RegisterTag77 
<77  
AntiForgeryTokenTag77  3
>773 4
(774 5
$str775 G
)77G H
;77H I
Factory88 
.88 
RegisterTag88 
<88  
	LayoutTag88  )
>88) *
(88* +
$str88+ 3
)883 4
;884 5
Factory:: 
.:: 
RegisterTag:: 
<::  
ClearAlternatesTag::  2
>::2 3
(::3 4
$str::4 L
)::L M
;::M N
Factory;; 
.;; 
RegisterTag;; 
<;;  
AddAlternatesTag;;  0
>;;0 1
(;;1 2
$str;;2 H
);;H I
;;;I J
Factory<< 
.<< 
RegisterTag<< 
<<<  
ClearWrappers<<  -
><<- .
(<<. /
$str<</ E
)<<E F
;<<F G
Factory== 
.== 
RegisterTag== 
<==  
AddWrappersTag==  .
>==. /
(==/ 0
$str==0 D
)==D E
;==E F
Factory>> 
.>> 
RegisterTag>> 
<>>  
ClearClassesTag>>  /
>>>/ 0
(>>0 1
$str>>1 F
)>>F G
;>>G H
Factory?? 
.?? 
RegisterTag?? 
<??  
AddClassesTag??  -
>??- .
(??. /
$str??/ B
)??B C
;??C D
Factory@@ 
.@@ 
RegisterTag@@ 
<@@  
ClearAttributesTag@@  2
>@@2 3
(@@3 4
$str@@4 L
)@@L M
;@@M N
FactoryAA 
.AA 
RegisterTagAA 
<AA  
AddAttributesTagAA  0
>AA0 1
(AA1 2
$strAA2 H
)AAH I
;AAI J
FactoryBB 
.BB 
RegisterTagBB 
<BB  
ShapeTypeTagBB  ,
>BB, -
(BB- .
$strBB. :
)BB: ;
;BB; <
FactoryCC 
.CC 
RegisterTagCC 
<CC  
ShapeDisplayTypeTagCC  3
>CC3 4
(CC4 5
$strCC5 I
)CCI J
;CCJ K
FactoryDD 
.DD 
RegisterTagDD 
<DD  
ShapePositionTagDD  0
>DD0 1
(DD1 2
$strDD2 B
)DDB C
;DDC D
FactoryEE 
.EE 
RegisterTagEE 
<EE  
ShapeCacheTagEE  -
>EE- .
(EE. /
$strEE/ <
)EE< =
;EE= >
FactoryFF 
.FF 
RegisterTagFF 
<FF  
ShapeTabTagFF  +
>FF+ ,
(FF, -
$strFF- 8
)FF8 9
;FF9 :
FactoryGG 
.GG 
RegisterTagGG 
<GG  
ShapeRemoveItemTagGG  2
>GG2 3
(GG3 4
$strGG4 G
)GGG H
;GGH I
FactoryHH 
.HH 
RegisterTagHH 
<HH  
ShapeAddPropertyTagHH  3
>HH3 4
(HH4 5
$strHH5 K
)HHK L
;HHL M
FactoryII 
.II 
RegisterTagII 
<II  "
ShapeRemovePropertyTagII  6
>II6 7
(II7 8
$strII8 O
)IIO P
;IIP Q
FactoryJJ 
.JJ 
RegisterTagJJ 
<JJ  
ShapePagerTagJJ  -
>JJ- .
(JJ. /
$strJJ/ <
)JJ< =
;JJ= >
FactoryLL 
.LL 
RegisterTagLL 
<LL  !
HttpContextAddItemTagLL  5
>LL5 6
(LL6 7
$strLL7 N
)LLN O
;LLO P
FactoryMM 
.MM 
RegisterTagMM 
<MM  $
HttpContextRemoveItemTagMM  8
>MM8 9
(MM9 :
$strMM: T
)MMT U
;MMU V
FactoryOO 
.OO 
RegisterTagOO 
<OO  
	HelperTagOO  )
>OO) *
(OO* +
$strOO+ 3
)OO3 4
;OO4 5
FactoryPP 
.PP 
RegisterTagPP 
<PP  
NamedHelperTagPP  .
>PP. /
(PP/ 0
$strPP0 7
)PP7 8
;PP8 9
FactoryQQ 
.QQ 
RegisterTagQQ 
<QQ  
NamedHelperTagQQ  .
>QQ. /
(QQ/ 0
$strQQ0 =
)QQ= >
;QQ> ?
FactoryRR 
.RR 
RegisterTagRR 
<RR  
NamedHelperTagRR  .
>RR. /
(RR/ 0
$strRR0 6
)RR6 7
;RR7 8
FactorySS 
.SS 
RegisterTagSS 
<SS  
NamedHelperTagSS  .
>SS. /
(SS/ 0
$strSS0 6
)SS6 7
;SS7 8
FactoryTT 
.TT 
RegisterTagTT 
<TT  
NamedHelperTagTT  .
>TT. /
(TT/ 0
$strTT0 ;
)TT; <
;TT< =
FactoryUU 
.UU 
RegisterTagUU 
<UU  
NamedHelperTagUU  .
>UU. /
(UU/ 0
$strUU0 8
)UU8 9
;UU9 :
FactoryVV 
.VV 
RegisterTagVV 
<VV  
NamedHelperTagVV  .
>VV. /
(VV/ 0
$strVV0 7
)VV7 8
;VV8 9
FactoryXX 
.XX 
RegisterBlockXX !
<XX! "
HelperBlockXX" -
>XX- .
(XX. /
$strXX/ 6
)XX6 7
;XX7 8
FactoryYY 
.YY 
RegisterBlockYY !
<YY! "
NamedHelperBlockYY" 2
>YY2 3
(YY3 4
$strYY4 7
)YY7 8
;YY8 9
FactoryZZ 
.ZZ 
RegisterBlockZZ !
<ZZ! "
NamedHelperBlockZZ" 2
>ZZ2 3
(ZZ3 4
$strZZ4 :
)ZZ: ;
;ZZ; <
Factory[[ 
.[[ 
RegisterBlock[[ !
<[[! "
NamedHelperBlock[[" 2
>[[2 3
([[3 4
$str[[4 :
)[[: ;
;[[; <
Factory\\ 
.\\ 
RegisterBlock\\ !
<\\! "
NamedHelperBlock\\" 2
>\\2 3
(\\3 4
$str\\4 A
)\\A B
;\\B C
Factory]] 
.]] 
RegisterBlock]] !
<]]! "
NamedHelperBlock]]" 2
>]]2 3
(]]3 4
$str]]4 @
)]]@ A
;]]A B
Factory`` 
.`` 
RegisterBlock`` !
<``! "

CacheBlock``" ,
>``, -
(``- .
$str``. 5
)``5 6
;``6 7
Factoryaa 
.aa 
RegisterTagaa 
<aa  
CacheDependencyTagaa  2
>aa2 3
(aa3 4
$straa4 F
)aaF G
;aaG H
Factorybb 
.bb 
RegisterTagbb 
<bb  
CacheExpiresOnTagbb  1
>bb1 2
(bb2 3
$strbb3 E
)bbE F
;bbF G
Factorycc 
.cc 
RegisterTagcc 
<cc   
CacheExpiresAfterTagcc  4
>cc4 5
(cc5 6
$strcc6 K
)ccK L
;ccL M
Factorydd 
.dd 
RegisterTagdd 
<dd  "
CacheExpiresSlidingTagdd  6
>dd6 7
(dd7 8
$strdd8 O
)ddO P
;ddP Q
NamedHelperTagff 
.ff #
RegisterDefaultArgumentff 2
(ff2 3
$strff3 :
,ff: ;
$strff< B
)ffB C
;ffC D
NamedHelperBlockgg 
.gg #
RegisterDefaultArgumentgg 4
(gg4 5
$strgg5 ;
,gg; <
$strgg= C
)ggC D
;ggD E
TemplateContextii 
.ii 
GlobalFiltersii )
.ii) *!
WithLiquidViewFiltersii* ?
(ii? @
)ii@ A
;iiA B
}jj 	
publicoo 
staticoo !
LiquidTemplateContextoo +
Contextoo, 3
=>oo4 6

ShellScopeoo7 A
.ooA B
GetOrCreateFeatureooB T
(ooT U
(ooU V
)ooV W
=>ooX Z
newoo[ ^)
LiquidTemplateContextInternaloo_ |
(oo| }

ShellScope	oo} á
.
ooá à
Services
ooà ê
)
ooê ë
)
ooë í
;
ooí ì
internalqq 
staticqq 
asyncqq 
Taskqq "
RenderAsyncqq# .
(qq. /
	RazorPageqq/ 8
<qq8 9
dynamicqq9 @
>qq@ A
pageqqB F
)qqF G
{rr 	
varss 
servicesss 
=ss 
pagess 
.ss  
Contextss  '
.ss' (
RequestServicesss( 7
;ss7 8
varuu 
pathuu 
=uu 
Pathuu 
.uu 
ChangeExtensionuu +
(uu+ ,
pageuu, 0
.uu0 1
ViewContextuu1 <
.uu< =
ExecutingFilePathuu= N
,uuN O
ViewExtensionuuP ]
)uu] ^
;uu^ _
varvv  
fileProviderAccessorvv $
=vv% &
servicesvv' /
.vv/ 0
GetRequiredServicevv0 B
<vvB C+
ILiquidViewFileProviderAccessorvvC b
>vvb c
(vvc d
)vvd e
;vve f
varww 
isDevelopmentww 
=ww 
servicesww  (
.ww( )
GetRequiredServiceww) ;
<ww; <
IHostEnvironmentww< L
>wwL M
(wwM N
)wwN O
.wwO P
IsDevelopmentwwP ]
(ww] ^
)ww^ _
;ww_ `
varyy 
templateyy 
=yy 
awaityy  

ParseAsyncyy! +
(yy+ ,
pathyy, 0
,yy0 1 
fileProviderAccessoryy2 F
.yyF G
FileProvideryyG S
,yyS T
CacheyyU Z
,yyZ [
isDevelopmentyy\ i
)yyi j
;yyj k
var{{ 
context{{ 
={{ 
Context{{ !
;{{! "
var|| 
htmlEncoder|| 
=|| 
services|| &
.||& '
GetRequiredService||' 9
<||9 :
HtmlEncoder||: E
>||E F
(||F G
)||G H
;||H I
try~~ 
{ 
await
ÄÄ 
context
ÄÄ 
.
ÄÄ 
EnterScopeAsync
ÄÄ -
(
ÄÄ- .
page
ÄÄ. 2
.
ÄÄ2 3
ViewContext
ÄÄ3 >
,
ÄÄ> ?
(
ÄÄ@ A
object
ÄÄA G
)
ÄÄG H
page
ÄÄH L
.
ÄÄL M
Model
ÄÄM R
,
ÄÄR S
scopeAction
ÄÄT _
:
ÄÄ_ `
null
ÄÄa e
)
ÄÄe f
;
ÄÄf g
await
ÅÅ 
template
ÅÅ 
.
ÅÅ 
RenderAsync
ÅÅ *
(
ÅÅ* +
page
ÅÅ+ /
.
ÅÅ/ 0
Output
ÅÅ0 6
,
ÅÅ6 7
htmlEncoder
ÅÅ8 C
,
ÅÅC D
context
ÅÅE L
)
ÅÅL M
;
ÅÅM N
}
ÇÇ 
finally
ÉÉ 
{
ÑÑ 
context
ÖÖ 
.
ÖÖ 
ReleaseScope
ÖÖ $
(
ÖÖ$ %
)
ÖÖ% &
;
ÖÖ& '
}
ÜÜ 
}
áá 	
public
ââ 
static
ââ 
Task
ââ 
<
ââ  
LiquidViewTemplate
ââ -
>
ââ- .

ParseAsync
ââ/ 9
(
ââ9 :
string
ââ: @
path
ââA E
,
ââE F
IFileProvider
ââG T
fileProvider
ââU a
,
ââa b
IMemoryCache
ââc o
cache
ââp u
,
ââu v
bool
ââw {
isDevelopmentââ| â
)âââ ä
{
ää 	
return
ãã 
cache
ãã 
.
ãã 
GetOrCreateAsync
ãã )
(
ãã) *
path
ãã* .
,
ãã. /
async
ãã0 5
entry
ãã6 ;
=>
ãã< >
{
åå 
entry
çç 
.
çç "
SetSlidingExpiration
çç *
(
çç* +
TimeSpan
çç+ 3
.
çç3 4
	FromHours
çç4 =
(
çç= >
$num
çç> ?
)
çç? @
)
çç@ A
;
ççA B
var
éé 
fileInfo
éé 
=
éé 
fileProvider
éé +
.
éé+ ,
GetFileInfo
éé, 7
(
éé7 8
path
éé8 <
)
éé< =
;
éé= >
if
êê 
(
êê 
isDevelopment
êê !
)
êê! "
{
ëë 
entry
íí 
.
íí 
ExpirationTokens
íí *
.
íí* +
Add
íí+ .
(
íí. /
fileProvider
íí/ ;
.
íí; <
Watch
íí< A
(
ííA B
path
ííB F
)
ííF G
)
ííG H
;
ííH I
}
ìì 
using
ïï 
(
ïï 
var
ïï 
stream
ïï !
=
ïï" #
fileInfo
ïï$ ,
.
ïï, -
CreateReadStream
ïï- =
(
ïï= >
)
ïï> ?
)
ïï? @
{
ññ 
using
óó 
(
óó 
var
óó 
sr
óó !
=
óó" #
new
óó$ '
StreamReader
óó( 4
(
óó4 5
stream
óó5 ;
)
óó; <
)
óó< =
{
òò 
if
ôô 
(
ôô 
TryParse
ôô $
(
ôô$ %
await
ôô% *
sr
ôô+ -
.
ôô- .
ReadToEndAsync
ôô. <
(
ôô< =
)
ôô= >
,
ôô> ?
out
ôô@ C
var
ôôD G
template
ôôH P
,
ôôP Q
out
ôôR U
var
ôôV Y
errors
ôôZ `
)
ôô` a
)
ôôa b
{
öö 
return
õõ "
template
õõ# +
;
õõ+ ,
}
úú 
else
ùù 
{
ûû 
throw
üü !
new
üü" %
	Exception
üü& /
(
üü/ 0
$"
üü0 2*
Failed to parse liquid file 
üü2 N
{
üüN O
path
üüO S
}
üüS T
: 
üüT V
{
üüV W
String
üüW ]
.
üü] ^
Join
üü^ b
(
üüb c
System
üüc i
.
üüi j
Environment
üüj u
.
üüu v
NewLine
üüv }
,
üü} ~
errorsüü Ö
)üüÖ Ü
}üüÜ á
"üüá à
)üüà â
;üüâ ä
}
†† 
}
°° 
}
¢¢ 
}
££ 
)
££ 
;
££ 
}
§§ 	
}
•• 
internal
ßß 
class
ßß 
ShapeAccessor
ßß  
:
ßß! "
DelegateAccessor
ßß# 3
{
®® 
public
©© 
ShapeAccessor
©© 
(
©© 
)
©© 
:
©©  
base
©©! %
(
©©% &
_getter
©©& -
)
©©- .
{
™™ 	
}
´´ 	
private
≠≠ 
static
≠≠ 
Func
≠≠ 
<
≠≠ 
object
≠≠ "
,
≠≠" #
string
≠≠$ *
,
≠≠* +
object
≠≠, 2
>
≠≠2 3
_getter
≠≠4 ;
=>
≠≠< >
(
≠≠? @
o
≠≠@ A
,
≠≠A B
n
≠≠C D
)
≠≠D E
=>
≠≠F H
{
ÆÆ 	
if
ØØ 
(
ØØ 
o
ØØ 
is
ØØ 
Shape
ØØ 
shape
ØØ  
)
ØØ  !
{
∞∞ 
if
±± 
(
±± 
shape
±± 
.
±± 

Properties
±± $
.
±±$ %
TryGetValue
±±% 0
(
±±0 1
n
±±1 2
,
±±2 3
out
±±4 7
var
±±8 ;
result
±±< B
)
±±B C
)
±±C D
{
≤≤ 
return
≥≥ 
result
≥≥ !
;
≥≥! "
}
¥¥ 
if
∂∂ 
(
∂∂ 
n
∂∂ 
==
∂∂ 
$str
∂∂  
)
∂∂  !
{
∑∑ 
return
∏∏ 
shape
∏∏  
.
∏∏  !
Items
∏∏! &
;
∏∏& '
}
ππ 
var
ºº 
namedShaped
ºº 
=
ºº  !
shape
ºº" '
.
ºº' (
Named
ºº( -
(
ºº- .
n
ºº. /
)
ºº/ 0
;
ºº0 1
if
ΩΩ 
(
ΩΩ 
namedShaped
ΩΩ 
!=
ΩΩ  "
null
ΩΩ# '
)
ΩΩ' (
{
ææ 
return
øø 
namedShaped
øø &
;
øø& '
}
¿¿ 
return
≈≈ 
shape
≈≈ 
.
≈≈ 
NormalizedNamed
≈≈ ,
(
≈≈, -
n
≈≈- .
.
≈≈. /
Replace
≈≈/ 6
(
≈≈6 7
$str
≈≈7 ;
,
≈≈; <
$str
≈≈= @
)
≈≈@ A
)
≈≈A B
;
≈≈B C
}
∆∆ 
return
»» 
null
»» 
;
»» 
}
…… 	
;
……	 

}
   
public
ÃÃ 

static
ÃÃ 
class
ÃÃ *
LiquidViewTemplateExtensions
ÃÃ 4
{
ÕÕ 
public
ŒŒ 
static
ŒŒ 
async
ŒŒ 
Task
ŒŒ  
<
ŒŒ  !
string
ŒŒ! '
>
ŒŒ' (
RenderAsync
ŒŒ) 4
(
ŒŒ4 5
this
ŒŒ5 9 
LiquidViewTemplate
ŒŒ: L
template
ŒŒM U
,
ŒŒU V
TextEncoder
ŒŒW b
encoder
ŒŒc j
,
ŒŒj k$
LiquidTemplateContextŒŒl Å
contextŒŒÇ â
,ŒŒâ ä
objectŒŒã ë
modelŒŒí ó
,ŒŒó ò
ActionŒŒô ü
<ŒŒü †
ScopeŒŒ† •
>ŒŒ• ¶
scopeActionŒŒß ≤
)ŒŒ≤ ≥
{
œœ 	
var
–– !
viewContextAccessor
–– #
=
––$ %
context
––& -
.
––- .
Services
––. 6
.
––6 7 
GetRequiredService
––7 I
<
––I J!
ViewContextAccessor
––J ]
>
––] ^
(
––^ _
)
––_ `
;
––` a
var
—— 
viewContext
—— 
=
—— !
viewContextAccessor
—— 1
.
——1 2
ViewContext
——2 =
;
——= >
if
”” 
(
”” 
viewContext
”” 
==
”” 
null
”” #
)
””# $
{
‘‘ 
viewContext
’’ 
=
’’ !
viewContextAccessor
’’ 1
.
’’1 2
ViewContext
’’2 =
=
’’> ?
await
’’@ E!
GetViewContextAsync
’’F Y
(
’’Y Z
context
’’Z a
)
’’a b
;
’’b c
}
÷÷ 
try
ÿÿ 
{
ŸŸ 
await
⁄⁄ 
context
⁄⁄ 
.
⁄⁄ 
EnterScopeAsync
⁄⁄ -
(
⁄⁄- .
viewContext
⁄⁄. 9
,
⁄⁄9 :
model
⁄⁄; @
,
⁄⁄@ A
scopeAction
⁄⁄B M
)
⁄⁄M N
;
⁄⁄N O
return
€€ 
await
€€ 
template
€€ %
.
€€% &
RenderAsync
€€& 1
(
€€1 2
context
€€2 9
,
€€9 :
encoder
€€; B
)
€€B C
;
€€C D
}
‹‹ 
finally
›› 
{
ﬁﬁ 
context
ﬂﬂ 
.
ﬂﬂ 
ReleaseScope
ﬂﬂ $
(
ﬂﬂ$ %
)
ﬂﬂ% &
;
ﬂﬂ& '
}
‡‡ 
}
·· 	
public
„„ 
static
„„ 
async
„„ 
Task
„„  
RenderAsync
„„! ,
(
„„, -
this
„„- 1 
LiquidViewTemplate
„„2 D
template
„„E M
,
„„M N

TextWriter
„„O Y
writer
„„Z `
,
„„` a
TextEncoder
„„b m
encoder
„„n u
,
„„u v$
LiquidTemplateContext„„w å
context„„ç î
,„„î ï
object„„ñ ú
model„„ù ¢
,„„¢ £
Action„„§ ™
<„„™ ´
Scope„„´ ∞
>„„∞ ±
scopeAction„„≤ Ω
)„„Ω æ
{
‰‰ 	
var
ÂÂ !
viewContextAccessor
ÂÂ #
=
ÂÂ$ %
context
ÂÂ& -
.
ÂÂ- .
Services
ÂÂ. 6
.
ÂÂ6 7 
GetRequiredService
ÂÂ7 I
<
ÂÂI J!
ViewContextAccessor
ÂÂJ ]
>
ÂÂ] ^
(
ÂÂ^ _
)
ÂÂ_ `
;
ÂÂ` a
var
ÊÊ 
viewContext
ÊÊ 
=
ÊÊ !
viewContextAccessor
ÊÊ 1
.
ÊÊ1 2
ViewContext
ÊÊ2 =
;
ÊÊ= >
if
ËË 
(
ËË 
viewContext
ËË 
==
ËË 
null
ËË #
)
ËË# $
{
ÈÈ 
viewContext
ÍÍ 
=
ÍÍ !
viewContextAccessor
ÍÍ 1
.
ÍÍ1 2
ViewContext
ÍÍ2 =
=
ÍÍ> ?
await
ÍÍ@ E!
GetViewContextAsync
ÍÍF Y
(
ÍÍY Z
context
ÍÍZ a
)
ÍÍa b
;
ÍÍb c
}
ÎÎ 
try
ÌÌ 
{
ÓÓ 
await
ÔÔ 
context
ÔÔ 
.
ÔÔ 
EnterScopeAsync
ÔÔ -
(
ÔÔ- .
viewContext
ÔÔ. 9
,
ÔÔ9 :
model
ÔÔ; @
,
ÔÔ@ A
scopeAction
ÔÔB M
)
ÔÔM N
;
ÔÔN O
await
 
template
 
.
 
RenderAsync
 *
(
* +
writer
+ 1
,
1 2
encoder
3 :
,
: ;
context
< C
)
C D
;
D E
}
ÒÒ 
finally
ÚÚ 
{
ÛÛ 
context
ÙÙ 
.
ÙÙ 
ReleaseScope
ÙÙ $
(
ÙÙ$ %
)
ÙÙ% &
;
ÙÙ& '
}
ıı 
}
ˆˆ 	
public
¯¯ 
static
¯¯ 
async
¯¯ 
Task
¯¯  
<
¯¯  !
ViewContext
¯¯! ,
>
¯¯, -!
GetViewContextAsync
¯¯. A
(
¯¯A B#
LiquidTemplateContext
¯¯B W
context
¯¯X _
)
¯¯_ `
{
˘˘ 	
var
˙˙ 
actionContext
˙˙ 
=
˙˙ 
context
˙˙  '
.
˙˙' (
Services
˙˙( 0
.
˙˙0 1

GetService
˙˙1 ;
<
˙˙; <$
IActionContextAccessor
˙˙< R
>
˙˙R S
(
˙˙S T
)
˙˙T U
?
˙˙U V
.
˙˙V W
ActionContext
˙˙W d
;
˙˙d e
if
¸¸ 
(
¸¸ 
actionContext
¸¸ 
==
¸¸  
null
¸¸! %
)
¸¸% &
{
˝˝ 
var
˛˛ 
httpContext
˛˛ 
=
˛˛  !
context
˛˛" )
.
˛˛) *
Services
˛˛* 2
.
˛˛2 3 
GetRequiredService
˛˛3 E
<
˛˛E F"
IHttpContextAccessor
˛˛F Z
>
˛˛Z [
(
˛˛[ \
)
˛˛\ ]
.
˛˛] ^
HttpContext
˛˛^ i
;
˛˛i j
actionContext
ˇˇ 
=
ˇˇ 
await
ˇˇ  %#
GetActionContextAsync
ˇˇ& ;
(
ˇˇ; <
httpContext
ˇˇ< G
)
ˇˇG H
;
ˇˇH I
}
ÄÄ 
return
ÇÇ 
GetViewContext
ÇÇ !
(
ÇÇ! "
actionContext
ÇÇ" /
)
ÇÇ/ 0
;
ÇÇ0 1
}
ÉÉ 	
internal
ÖÖ 
static
ÖÖ 
async
ÖÖ 
Task
ÖÖ "
<
ÖÖ" #
ActionContext
ÖÖ# 0
>
ÖÖ0 1#
GetActionContextAsync
ÖÖ2 G
(
ÖÖG H
HttpContext
ÖÖH S
httpContext
ÖÖT _
)
ÖÖ_ `
{
ÜÜ 	
var
áá 
	routeData
áá 
=
áá 
new
áá 
	RouteData
áá  )
(
áá) *
)
áá* +
;
áá+ ,
	routeData
àà 
.
àà 
Routers
àà 
.
àà 
Add
àà !
(
àà! "
new
àà" %
RouteCollection
àà& 5
(
àà5 6
)
àà6 7
)
àà7 8
;
àà8 9
var
ää 
actionContext
ää 
=
ää 
new
ää  #
ActionContext
ää$ 1
(
ää1 2
httpContext
ää2 =
,
ää= >
	routeData
ää? H
,
ääH I
new
ääJ M
ActionDescriptor
ääN ^
(
ää^ _
)
ää_ `
)
ää` a
;
ääa b
var
ãã 
filters
ãã 
=
ãã 
httpContext
ãã %
.
ãã% &
RequestServices
ãã& 5
.
ãã5 6
GetServices
ãã6 A
<
ããA B$
IAsyncViewActionFilter
ããB X
>
ããX Y
(
ããY Z
)
ããZ [
;
ãã[ \
foreach
çç 
(
çç 
var
çç 
filter
çç 
in
çç  "
filters
çç# *
)
çç* +
{
éé 
await
èè 
filter
èè 
.
èè $
OnActionExecutionAsync
èè 3
(
èè3 4
actionContext
èè4 A
)
èèA B
;
èèB C
}
êê 
return
íí 
actionContext
íí  
;
íí  !
}
ìì 	
internal
ïï 
static
ïï 
ViewContext
ïï #
GetViewContext
ïï$ 2
(
ïï2 3
ActionContext
ïï3 @
actionContext
ïïA N
)
ïïN O
{
ññ 	
var
óó 
services
óó 
=
óó 
actionContext
óó (
.
óó( )
HttpContext
óó) 4
.
óó4 5
RequestServices
óó5 D
;
óóD E
var
ôô 
options
ôô 
=
ôô 
services
ôô "
.
ôô" #

GetService
ôô# -
<
ôô- .
IOptions
ôô. 6
<
ôô6 7
MvcViewOptions
ôô7 E
>
ôôE F
>
ôôF G
(
ôôG H
)
ôôH I
;
ôôI J
var
öö 

viewEngine
öö 
=
öö 
options
öö $
.
öö$ %
Value
öö% *
.
öö* +
ViewEngines
öö+ 6
[
öö6 7
$num
öö7 8
]
öö8 9
;
öö9 :
var
úú 

viewResult
úú 
=
úú 

viewEngine
úú '
.
úú' (
GetView
úú( /
(
úú/ 0
executingFilePath
úú0 A
:
úúA B
null
úúC G
,
úúG H(
LiquidViewsFeatureProvider
ùù *
.
ùù* +"
DefaultRazorViewPath
ùù+ ?
,
ùù? @

isMainPage
ùùA K
:
ùùK L
true
ùùM Q
)
ùùQ R
;
ùùR S
var
üü 
tempDataProvider
üü  
=
üü! "
services
üü# +
.
üü+ ,

GetService
üü, 6
<
üü6 7
ITempDataProvider
üü7 H
>
üüH I
(
üüI J
)
üüJ K
;
üüK L
var
°° 
viewContext
°° 
=
°° 
new
°° !
ViewContext
°°" -
(
°°- .
actionContext
¢¢ 
,
¢¢ 

viewResult
££ 
.
££ 
View
££ 
,
££  
new
§§  
ViewDataDictionary
§§ &
(
§§& '
metadataProvider
•• $
:
••$ %
new
••& )(
EmptyModelMetadataProvider
••* D
(
••D E
)
••E F
,
••F G

modelState
¶¶ 
:
¶¶ 
new
¶¶  #"
ModelStateDictionary
¶¶$ 8
(
¶¶8 9
)
¶¶9 :
)
¶¶: ;
,
¶¶; <
new
ßß  
TempDataDictionary
ßß &
(
ßß& '
actionContext
®® !
.
®®! "
HttpContext
®®" -
,
®®- .
tempDataProvider
©© $
)
©©$ %
,
©©% &

TextWriter
™™ 
.
™™ 
Null
™™ 
,
™™  
new
´´ 
HtmlHelperOptions
´´ %
(
´´% &
)
´´& '
)
´´' (
;
´´( )
if
≠≠ 
(
≠≠ 
viewContext
≠≠ 
.
≠≠ 
View
≠≠  
is
≠≠! #
	RazorView
≠≠$ -
	razorView
≠≠. 7
)
≠≠7 8
{
ÆÆ 
	razorView
ØØ 
.
ØØ 
	RazorPage
ØØ #
.
ØØ# $
ViewContext
ØØ$ /
=
ØØ0 1
viewContext
ØØ2 =
;
ØØ= >
}
∞∞ 
return
≤≤ 
viewContext
≤≤ 
;
≤≤ 
}
≥≥ 	
}
¥¥ 
public
∂∂ 

static
∂∂ 
class
∂∂ -
LiquidTemplateContextExtensions
∂∂ 7
{
∑∑ 
internal
∏∏ 
static
∏∏ 
async
∏∏ 
Task
∏∏ "
EnterScopeAsync
∏∏# 2
(
∏∏2 3
this
∏∏3 7#
LiquidTemplateContext
∏∏8 M
context
∏∏N U
,
∏∏U V
ViewContext
∏∏W b
viewContext
∏∏c n
,
∏∏n o
object
∏∏p v
model
∏∏w |
,
∏∏| }
Action∏∏~ Ñ
<∏∏Ñ Ö
Scope∏∏Ö ä
>∏∏ä ã
scopeAction∏∏å ó
)∏∏ó ò
{
ππ 	
var
∫∫ 
contextInternal
∫∫ 
=
∫∫  !
context
∫∫" )
as
∫∫* ,+
LiquidTemplateContextInternal
∫∫- J
;
∫∫J K
if
ºº 
(
ºº 
!
ºº 
contextInternal
ºº  
.
ºº  !
IsInitialized
ºº! .
)
ºº. /
{
ΩΩ 
context
ææ 
.
ææ 
AmbientValues
ææ %
.
ææ% &
EnsureCapacity
ææ& 4
(
ææ4 5
$num
ææ5 6
)
ææ6 7
;
ææ7 8
context
øø 
.
øø 
AmbientValues
øø %
.
øø% &
Add
øø& )
(
øø) *
$str
øø* 4
,
øø4 5
context
øø6 =
.
øø= >
Services
øø> F
)
øøF G
;
øøG H
var
¡¡ 
displayHelper
¡¡ !
=
¡¡" #
context
¡¡$ +
.
¡¡+ ,
Services
¡¡, 4
.
¡¡4 5 
GetRequiredService
¡¡5 G
<
¡¡G H
IDisplayHelper
¡¡H V
>
¡¡V W
(
¡¡W X
)
¡¡X Y
;
¡¡Y Z
context
¬¬ 
.
¬¬ 
AmbientValues
¬¬ %
.
¬¬% &
Add
¬¬& )
(
¬¬) *
$str
¬¬* 9
,
¬¬9 :
displayHelper
¬¬; H
)
¬¬H I
;
¬¬I J
var
ƒƒ 
urlHelperFactory
ƒƒ $
=
ƒƒ% &
context
ƒƒ' .
.
ƒƒ. /
Services
ƒƒ/ 7
.
ƒƒ7 8 
GetRequiredService
ƒƒ8 J
<
ƒƒJ K
IUrlHelperFactory
ƒƒK \
>
ƒƒ\ ]
(
ƒƒ] ^
)
ƒƒ^ _
;
ƒƒ_ `
var
≈≈ 
	urlHelper
≈≈ 
=
≈≈ 
urlHelperFactory
≈≈  0
.
≈≈0 1
GetUrlHelper
≈≈1 =
(
≈≈= >
viewContext
≈≈> I
)
≈≈I J
;
≈≈J K
context
∆∆ 
.
∆∆ 
AmbientValues
∆∆ %
.
∆∆% &
Add
∆∆& )
(
∆∆) *
$str
∆∆* 5
,
∆∆5 6
	urlHelper
∆∆7 @
)
∆∆@ A
;
∆∆A B
var
»» 
shapeFactory
»»  
=
»»! "
context
»»# *
.
»»* +
Services
»»+ 3
.
»»3 4 
GetRequiredService
»»4 F
<
»»F G
IShapeFactory
»»G T
>
»»T U
(
»»U V
)
»»V W
;
»»W X
context
…… 
.
…… 
AmbientValues
…… %
.
……% &
Add
……& )
(
……) *
$str
……* 8
,
……8 9
shapeFactory
……: F
)
……F G
;
……G H
var
ÀÀ 
layoutAccessor
ÀÀ "
=
ÀÀ# $
context
ÀÀ% ,
.
ÀÀ, -
Services
ÀÀ- 5
.
ÀÀ5 6 
GetRequiredService
ÀÀ6 H
<
ÀÀH I
ILayoutAccessor
ÀÀI X
>
ÀÀX Y
(
ÀÀY Z
)
ÀÀZ [
;
ÀÀ[ \
var
ÃÃ 
layout
ÃÃ 
=
ÃÃ 
await
ÃÃ "
layoutAccessor
ÃÃ# 1
.
ÃÃ1 2
GetLayoutAsync
ÃÃ2 @
(
ÃÃ@ A
)
ÃÃA B
;
ÃÃB C
context
ÕÕ 
.
ÕÕ 
AmbientValues
ÕÕ %
.
ÕÕ% &
Add
ÕÕ& )
(
ÕÕ) *
$str
ÕÕ* 7
,
ÕÕ7 8
layout
ÕÕ9 ?
)
ÕÕ? @
;
ÕÕ@ A
var
œœ 
options
œœ 
=
œœ 
context
œœ %
.
œœ% &
Services
œœ& .
.
œœ. / 
GetRequiredService
œœ/ A
<
œœA B
IOptions
œœB J
<
œœJ K
LiquidOptions
œœK X
>
œœX Y
>
œœY Z
(
œœZ [
)
œœ[ \
.
œœ\ ]
Value
œœ] b
;
œœb c
context
—— 
.
—— 
AddAsyncFilters
—— '
(
——' (
options
——( /
)
——/ 0
;
——0 1
foreach
”” 
(
”” 
var
”” 
handler
”” $
in
””% '
context
””( /
.
””/ 0
Services
””0 8
.
””8 9
GetServices
””9 D
<
””D E)
ILiquidTemplateEventHandler
””E `
>
””` a
(
””a b
)
””b c
)
””c d
{
‘‘ 
await
’’ 
handler
’’ !
.
’’! "
RenderingAsync
’’" 0
(
’’0 1
context
’’1 8
)
’’8 9
;
’’9 :
}
÷÷ 
context
ÿÿ 
.
ÿÿ 
FileProvider
ÿÿ $
=
ÿÿ% &
context
ÿÿ' .
.
ÿÿ. /
Services
ÿÿ/ 7
.
ÿÿ7 8 
GetRequiredService
ÿÿ8 J
<
ÿÿJ K-
ILiquidViewFileProviderAccessor
ÿÿK j
>
ÿÿj k
(
ÿÿk l
)
ÿÿl m
.
ÿÿm n
FileProvider
ÿÿn z
;
ÿÿz {
context
⁄⁄ 
.
⁄⁄ 
CultureInfo
⁄⁄ #
=
⁄⁄$ %
CultureInfo
⁄⁄& 1
.
⁄⁄1 2
CurrentUICulture
⁄⁄2 B
;
⁄⁄B C
contextInternal
‹‹ 
.
‹‹  
IsInitialized
‹‹  -
=
‹‹. /
true
‹‹0 4
;
‹‹4 5
}
›› 
context
ﬂﬂ 
.
ﬂﬂ 
EnterChildScope
ﬂﬂ #
(
ﬂﬂ# $
)
ﬂﬂ$ %
;
ﬂﬂ% &
var
·· 
viewLocalizer
·· 
=
·· 
context
··  '
.
··' (
Services
··( 0
.
··0 1 
GetRequiredService
··1 C
<
··C D
IViewLocalizer
··D R
>
··R S
(
··S T
)
··T U
;
··U V
if
„„ 
(
„„ 
viewLocalizer
„„ 
is
„„  
IViewContextAware
„„! 2
contextable
„„3 >
)
„„> ?
{
‰‰ 
contextable
ÂÂ 
.
ÂÂ 
Contextualize
ÂÂ )
(
ÂÂ) *
viewContext
ÂÂ* 5
)
ÂÂ5 6
;
ÂÂ6 7
}
ÊÊ 
context
ËË 
.
ËË 
SetValue
ËË 
(
ËË 
$str
ËË ,
,
ËË, -
viewLocalizer
ËË. ;
)
ËË; <
;
ËË< =
if
ÍÍ 
(
ÍÍ 
model
ÍÍ 
!=
ÍÍ 
null
ÍÍ 
)
ÍÍ 
{
ÎÎ 
context
ÏÏ 
.
ÏÏ "
MemberAccessStrategy
ÏÏ ,
.
ÏÏ, -
Register
ÏÏ- 5
(
ÏÏ5 6
model
ÏÏ6 ;
.
ÏÏ; <
GetType
ÏÏ< C
(
ÏÏC D
)
ÏÏD E
)
ÏÏE F
;
ÏÏF G
}
ÌÌ 
if
ÔÔ 
(
ÔÔ 
context
ÔÔ 
.
ÔÔ 
GetValue
ÔÔ  
(
ÔÔ  !
$str
ÔÔ! (
)
ÔÔ( )
?
ÔÔ) *
.
ÔÔ* +
ToObjectValue
ÔÔ+ 8
(
ÔÔ8 9
)
ÔÔ9 :
==
ÔÔ; =
model
ÔÔ> C
&&
ÔÔD F
model
ÔÔG L
is
ÔÔM O
IShape
ÔÔP V
shape
ÔÔW \
)
ÔÔ\ ]
{
 
if
ÒÒ 
(
ÒÒ 
contextInternal
ÒÒ #
.
ÒÒ# $
ShapeRecursions
ÒÒ$ 3
++
ÒÒ3 5
>
ÒÒ6 7+
LiquidTemplateContextInternal
ÒÒ8 U
.
ÒÒU V 
MaxShapeRecursions
ÒÒV h
)
ÒÒh i
{
ÚÚ 
throw
ÛÛ 
new
ÛÛ '
InvalidOperationException
ÛÛ 7
(
ÛÛ7 8
$"
ÙÙ 
The '
ÙÙ 
{
ÙÙ  
shape
ÙÙ  %
.
ÙÙ% &
Metadata
ÙÙ& .
.
ÙÙ. /
Type
ÙÙ/ 3
}
ÙÙ3 4<
.' shape has been called recursively more than 
ÙÙ4 b
{
ÙÙb c,
LiquidTemplateContextInternalÙÙc Ä
.ÙÙÄ Å"
MaxShapeRecursionsÙÙÅ ì
}ÙÙì î
 times.ÙÙî õ
"ÙÙõ ú
)ÙÙú ù
;ÙÙù û
}
ıı 
}
ˆˆ 
else
˜˜ 
{
¯¯ 
contextInternal
˘˘ 
.
˘˘  
ShapeRecursions
˘˘  /
=
˘˘0 1
$num
˘˘2 3
;
˘˘3 4
}
˙˙ 
context
¸¸ 
.
¸¸ 
SetValue
¸¸ 
(
¸¸ 
$str
¸¸ $
,
¸¸$ %
model
¸¸& +
)
¸¸+ ,
;
¸¸, -
scopeAction
˛˛ 
?
˛˛ 
.
˛˛ 
Invoke
˛˛ 
(
˛˛  
context
˛˛  '
.
˛˛' (

LocalScope
˛˛( 2
)
˛˛2 3
;
˛˛3 4
}
ˇˇ 	
internal
ÅÅ 
static
ÅÅ 
void
ÅÅ 
AddAsyncFilters
ÅÅ ,
(
ÅÅ, -
this
ÅÅ- 1#
LiquidTemplateContext
ÅÅ2 G
context
ÅÅH O
,
ÅÅO P
LiquidOptions
ÅÅQ ^
options
ÅÅ_ f
)
ÅÅf g
{
ÇÇ 	
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
registration
ÉÉ %
in
ÉÉ& (
options
ÉÉ) 0
.
ÉÉ0 1!
FilterRegistrations
ÉÉ1 D
)
ÉÉD E
{
ÑÑ 
context
ÖÖ 
.
ÖÖ 
Filters
ÖÖ 
.
ÖÖ  
AddAsyncFilter
ÖÖ  .
(
ÖÖ. /
registration
ÖÖ/ ;
.
ÖÖ; <
Key
ÖÖ< ?
,
ÖÖ? @
(
ÖÖA B
input
ÖÖB G
,
ÖÖG H
	arguments
ÖÖI R
,
ÖÖR S
ctx
ÖÖT W
)
ÖÖW X
=>
ÖÖY [
{
ÜÜ 
var
áá 
filter
áá 
=
áá  
(
áá! "
ILiquidFilter
áá" /
)
áá/ 0
context
áá0 7
.
áá7 8
Services
áá8 @
.
áá@ A 
GetRequiredService
ááA S
(
ááS T
registration
ááT `
.
áá` a
Value
ááa f
)
ááf g
;
áág h
return
àà 
filter
àà !
.
àà! "
ProcessAsync
àà" .
(
àà. /
input
àà/ 4
,
àà4 5
	arguments
àà6 ?
,
àà? @
ctx
ààA D
)
ààD E
;
ààE F
}
ââ 
)
ââ 
;
ââ 
}
ää 
}
ãã 	
}
åå 
internal
éé 
class
éé +
LiquidTemplateContextInternal
éé 0
:
éé1 2#
LiquidTemplateContext
éé3 H
{
èè 
public
êê 
const
êê 
int
êê  
MaxShapeRecursions
êê +
=
êê, -
$num
êê. /
;
êê/ 0
public
íí +
LiquidTemplateContextInternal
íí ,
(
íí, -
IServiceProvider
íí- =
services
íí> F
)
ííF G
:
ííH I
base
ííJ N
(
ííN O
services
ííO W
)
ííW X
{
ííY Z
}
íí[ \
public
îî 
bool
îî 
IsInitialized
îî !
{
îî" #
get
îî$ '
;
îî' (
set
îî) ,
;
îî, -
}
îî. /
public
ññ 
int
ññ 
ShapeRecursions
ññ "
{
ññ# $
get
ññ% (
;
ññ( )
set
ññ* -
;
ññ- .
}
ññ/ 0
}
óó 
}òò è2
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\ModuleProjectLiquidFileProvider.cs
	namespace

 	
OrchardCore


 
.

 
DisplayManagement

 '
.

' (
Liquid

( .
{ 
public 

class +
ModuleProjectLiquidFileProvider 0
:1 2
IFileProvider3 @
{ 
private 
static 

Dictionary !
<! "
string" (
,( )
string* 0
>0 1
_paths2 8
;8 9
private 
static 
readonly 
object  &
_synLock' /
=0 1
new2 5
object6 <
(< =
)= >
;> ?
public +
ModuleProjectLiquidFileProvider .
(. /
IApplicationContext/ B
applicationContextC U
)U V
{ 	
if 
( 
_paths 
!= 
null 
) 
{ 
return 
; 
} 
lock 
( 
_synLock 
) 
{ 
if 
( 
_paths 
== 
null "
)" #
{ 
var   
assets   
=    
new  ! $
List  % )
<  ) *
Asset  * /
>  / 0
(  0 1
)  1 2
;  2 3
var!! 
application!! #
=!!$ %
applicationContext!!& 8
.!!8 9
Application!!9 D
;!!D E
foreach## 
(## 
var##  
module##! '
in##( *
application##+ 6
.##6 7
Modules##7 >
)##> ?
{$$ 
if'' 
('' 
module'' "
.''" #
Assembly''# +
=='', .
null''/ 3
||''4 6
Path''7 ;
.''; <
GetDirectoryName''< L
(''L M
module''M S
.''S T
Assembly''T \
.''\ ]
Location''] e
)''e f
!=(( 
Path(( #
.((# $
GetDirectoryName(($ 4
(((4 5
application((5 @
.((@ A
Assembly((A I
.((I J
Location((J R
)((R S
)((S T
{)) 
continue** $
;**$ %
}++ 
assets.. 
... 
AddRange.. '
(..' (
module..( .
.... /
Assets../ 5
...5 6
Where..6 ;
(..; <
a..< =
=>..> @
a..A B
...B C
ModuleAssetPath..C R
.// 
EndsWith// %
(//% &
$str//& /
,/// 0
StringComparison//1 A
.//A B
Ordinal//B I
)//I J
)//J K
)//K L
;//L M
}00 
_paths33 
=33 
assets33 #
.33# $
ToDictionary33$ 0
(330 1
a331 2
=>333 5
a336 7
.337 8
ModuleAssetPath338 G
,33G H
a33I J
=>33K M
a33N O
.33O P
ProjectAssetPath33P `
)33` a
;33a b
}44 
}55 
}66 	
public88 
IDirectoryContents88 ! 
GetDirectoryContents88" 6
(886 7
string887 =
subpath88> E
)88E F
{99 	
return:: %
NotFoundDirectoryContents:: ,
.::, -
	Singleton::- 6
;::6 7
};; 	
public== 
	IFileInfo== 
GetFileInfo== $
(==$ %
string==% +
subpath==, 3
)==3 4
{>> 	
if?? 
(?? 
subpath?? 
==?? 
null?? 
)??  
{@@ 
returnAA 
newAA 
NotFoundFileInfoAA +
(AA+ ,
subpathAA, 3
)AA3 4
;AA4 5
}BB 
varDD 
pathDD 
=DD 
NormalizePathDD $
(DD$ %
subpathDD% ,
)DD, -
;DD- .
ifGG 
(GG 
_pathsGG 
.GG 
TryGetValueGG "
(GG" #
pathGG# '
,GG' (
outGG) ,
varGG- 0
projectAssetPathGG1 A
)GGA B
)GGB C
{HH 
returnJJ 
newJJ 
PhysicalFileInfoJJ +
(JJ+ ,
newJJ, /
FileInfoJJ0 8
(JJ8 9
projectAssetPathJJ9 I
)JJI J
)JJJ K
;JJK L
}KK 
returnMM 
newMM 
NotFoundFileInfoMM '
(MM' (
subpathMM( /
)MM/ 0
;MM0 1
}NN 	
publicPP 
IChangeTokenPP 
WatchPP !
(PP! "
stringPP" (
filterPP) /
)PP/ 0
{QQ 	
ifRR 
(RR 
filterRR 
==RR 
nullRR 
)RR 
{SS 
returnTT 
NullChangeTokenTT &
.TT& '
	SingletonTT' 0
;TT0 1
}UU 
varWW 
pathWW 
=WW 
NormalizePathWW $
(WW$ %
filterWW% +
)WW+ ,
;WW, -
ifZZ 
(ZZ 
_pathsZZ 
.ZZ 
TryGetValueZZ "
(ZZ" #
pathZZ# '
,ZZ' (
outZZ) ,
varZZ- 0
projectAssetPathZZ1 A
)ZZA B
)ZZB C
{[[ 
return]] 
new]] "
PollingFileChangeToken]] 1
(]]1 2
new]]2 5
FileInfo]]6 >
(]]> ?
projectAssetPath]]? O
)]]O P
)]]P Q
;]]Q R
}^^ 
return`` 
NullChangeToken`` "
.``" #
	Singleton``# ,
;``, -
}aa 	
privatecc 
stringcc 
NormalizePathcc $
(cc$ %
stringcc% +
pathcc, 0
)cc0 1
{dd 	
returnee 
pathee 
.ee 
Replaceee 
(ee  
$charee  $
,ee$ %
$charee& )
)ee) *
.ee* +
Trimee+ /
(ee/ 0
$charee0 3
)ee3 4
;ee4 5
}ff 	
}gg 
}hh ‰
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class (
OrchardCoreBuilderExtensions 4
{ 
public 
static 
OrchardCoreBuilder (
AddLiquidViews) 7
(7 8
this8 <
OrchardCoreBuilder= O
builderP W
)W X
{ 	
builder 
. 
ConfigureServices %
(% &
services& .
=>/ 1
{ 
services 
. 
TryAddEnumerable )
() *
ServiceDescriptor %
.% &
	Transient& /
</ 0
IConfigureOptions0 A
<A B
LiquidViewOptionsB S
>S T
,T U"
LiquidViewOptionsSetup *
>* +
(+ ,
), -
)- .
;. /
services 
. 
TryAddEnumerable )
() *
ServiceDescriptor %
.% &
	Transient& /
</ 0
IConfigureOptions0 A
<A B 
ShapeTemplateOptionsB V
>V W
,W X+
LiquidShapeTemplateOptionsSetup 3
>3 4
(4 5
)5 6
)6 7
;7 8
services   
.   
TryAddSingleton   (
<  ( )+
ILiquidViewFileProviderAccessor  ) H
,  H I*
LiquidViewFileProviderAccessor  J h
>  h i
(  i j
)  j k
;  k l
services!! 
.!! 
AddSingleton!! %
<!!% &'
IApplicationFeatureProvider!!& A
<!!A B
ViewsFeature!!B N
>!!N O
,!!O P&
LiquidViewsFeatureProvider!!Q k
>!!k l
(!!l m
)!!m n
;!!n o
services"" 
."" 
	AddScoped"" "
<""" #'
IRazorViewExtensionProvider""# >
,""> ?'
LiquidViewExtensionProvider""@ [
>""[ \
(""\ ]
)""] ^
;""^ _
services## 
.## 
AddSingleton## %
<##% &"
LiquidTagHelperFactory##& <
>##< =
(##= >
)##> ?
;##? @
services%% 
.%% 
	AddScoped%% "
<%%" #'
ILiquidTemplateEventHandler%%# >
,%%> ?-
!RequestLiquidTemplateEventHandler%%@ a
>%%a b
(%%b c
)%%c d
;%%d e
services&& 
.&& 
	AddScoped&& "
<&&" #'
ILiquidTemplateEventHandler&&# >
,&&> ?-
!CultureLiquidTemplateEventHandler&&@ a
>&&a b
(&&b c
)&&c d
;&&d e
services(( 
.(( 
AddLiquidFilter(( (
<((( )
AppendVersionFilter(() <
>((< =
(((= >
$str((> N
)((N O
;((O P
services)) 
.)) 
AddLiquidFilter)) (
<))( )
ResourceUrlFilter))) :
>)): ;
()); <
$str))< J
)))J K
;))K L
services** 
.** 
AddLiquidFilter** (
<**( )
SanitizeHtmlFilter**) ;
>**; <
(**< =
$str**= L
)**L M
;**M N
}++ 
)++ 
;++ 
return-- 
builder-- 
;-- 
}.. 	
}// 
}00 Èk
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\RequestLiquidTemplateEventHandler.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{ 
public 

class -
!RequestLiquidTemplateEventHandler 2
:3 4'
ILiquidTemplateEventHandler5 P
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
HttpContext 
_httpContext (
;( )
static -
!RequestLiquidTemplateEventHandler 0
(0 1
)1 2
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
HttpRequest@ K
,K L

FluidValueM W
>W X
(X Y
(Y Z
requestZ a
,a b
namec g
)g h
=>i k
{ 
switch 
( 
name 
) 
{ 
case 
$str &
:& '
return( .
new/ 2
StringValue3 >
(> ?
request? F
.F G
QueryStringG R
.R S
ValueS X
)X Y
;Y Z
case 
$str &
:& '
return( .
new/ 2
StringValue3 >
(> ?
request? F
.F G
ContentTypeG R
)R S
;S T
case 
$str (
:( )
return* 0
NumberValue1 <
.< =
Create= C
(C D
requestD K
.K L
ContentLengthL Y
??Z \
$num] ^
)^ _
;_ `
case 
$str "
:" #
return$ *
new+ .
ObjectValue/ :
(: ;
new; >#
CookieCollectionWrapper? V
(V W
requestW ^
.^ _
Cookies_ f
)f g
)g h
;h i
case   
$str   "
:  " #
return  $ *
new  + .
ObjectValue  / :
(  : ;
new  ; >#
HeaderDictionaryWrapper  ? V
(  V W
request  W ^
.  ^ _
Headers  _ f
)  f g
)  g h
;  h i
case!! 
$str!!  
:!!  !
return!!" (
new!!) ,
ObjectValue!!- 8
(!!8 9
request!!9 @
.!!@ A
Query!!A F
)!!F G
;!!G H
case"" 
$str"" 
:""  
return""! '
request""( /
.""/ 0
HasFormContentType""0 B
?""C D
(""E F

FluidValue""F P
)""P Q
new""Q T
ObjectValue""U `
(""` a
request""a h
.""h i
Form""i m
)""m n
:""o p
NilValue""q y
.""y z
Instance	""z Ç
;
""Ç É
case## 
$str## #
:### $
return##% +
new##, /
StringValue##0 ;
(##; <
request##< C
.##C D
Protocol##D L
)##L M
;##M N
case$$ 
$str$$ 
:$$  
return$$! '
new$$( +
StringValue$$, 7
($$7 8
request$$8 ?
.$$? @
Path$$@ D
.$$D E
Value$$E J
)$$J K
;$$K L
case%% 
$str%% #
:%%# $
return%%% +
new%%, /
StringValue%%0 ;
(%%; <
request%%< C
.%%C D
PathBase%%D L
.%%L M
Value%%M R
)%%R S
;%%S T
case&& 
$str&& 
:&&  
return&&! '
new&&( +
StringValue&&, 7
(&&7 8
request&&8 ?
.&&? @
Host&&@ D
.&&D E
Value&&E J
)&&J K
;&&K L
case'' 
$str'' "
:''" #
return''$ *
BooleanValue''+ 7
.''7 8
Create''8 >
(''> ?
request''? F
.''F G
IsHttps''G N
)''N O
;''O P
case(( 
$str(( !
:((! "
return((# )
new((* -
StringValue((. 9
(((9 :
request((: A
.((A B
Scheme((B H
)((H I
;((I J
case)) 
$str)) !
:))! "
return))# )
new))* -
StringValue)). 9
())9 :
request)): A
.))A B
Method))B H
)))H I
;))I J
case** 
$str**  
:**  !
return**" (
new**) ,
ObjectValue**- 8
(**8 9
new**9 <'
RouteValueDictionaryWrapper**= X
(**X Y
request**Y `
.**` a
RouteValues**a l
)**l m
)**m n
;**n o
default,, 
:,, 
return,, #
null,,$ (
;,,( )
}-- 
}.. 
).. 
;.. 
TemplateContext00 
.00 &
GlobalMemberAccessStrategy00 6
.006 7
Register007 ?
<00? @
FormCollection00@ N
,00N O

FluidValue00P Z
>00Z [
(00[ \
(00\ ]
forms00] b
,00b c
name00d h
)00h i
=>00j l
{11 
if22 
(22 
name22 
==22 
$str22 "
)22" #
{33 
return44 
new44 

ArrayValue44 )
(44) *
forms44* /
.44/ 0
Keys440 4
.444 5
Select445 ;
(44; <
x44< =
=>44> @
new44A D
StringValue44E P
(44P Q
x44Q R
)44R S
)44S T
)44T U
;44U V
}55 
return77 
new77 

ArrayValue77 %
(77% &
forms77& +
[77+ ,
name77, 0
]770 1
.771 2
Select772 8
(778 9
x779 :
=>77; =
new77> A
StringValue77B M
(77M N
x77N O
)77O P
)77P Q
.77Q R
ToArray77R Y
(77Y Z
)77Z [
)77[ \
;77\ ]
}88 
)88 
;88 
TemplateContext:: 
.:: &
GlobalMemberAccessStrategy:: 6
.::6 7
Register::7 ?
<::? @
HttpContext::@ K
,::K L

FluidValue::M W
>::W X
(::X Y
(::Y Z
httpcontext::Z e
,::e f
name::g k
)::k l
=>::m o
{;; 
switch<< 
(<< 
name<< 
)<< 
{== 
case>> 
$str>>  
:>>  !
return>>" (
new>>) ,
ObjectValue>>- 8
(>>8 9
new>>9 <#
HttpContextItemsWrapper>>= T
(>>T U
httpcontext>>U `
.>>` a
Items>>a f
)>>f g
)>>g h
;>>h i
default?? 
:?? 
return?? #
null??$ (
;??( )
}@@ 
}AA 
)AA 
;AA 
TemplateContextCC 
.CC &
GlobalMemberAccessStrategyCC 6
.CC6 7
RegisterCC7 ?
<CC? @#
HttpContextItemsWrapperCC@ W
,CCW X
objectCCY _
>CC_ `
(CC` a
(CCa b
httpContextCCb m
,CCm n
nameCCo s
)CCs t
=>CCu w
httpContext	CCx É
.
CCÉ Ñ
Items
CCÑ â
[
CCâ ä
name
CCä é
]
CCé è
)
CCè ê
;
CCê ë
TemplateContextDD 
.DD &
GlobalMemberAccessStrategyDD 6
.DD6 7
RegisterDD7 ?
<DD? @
QueryCollectionDD@ O
,DDO P
stringDDQ W
[DDW X
]DDX Y
>DDY Z
(DDZ [
(DD[ \
queriesDD\ c
,DDc d
nameDDe i
)DDi j
=>DDk m
queriesDDn u
[DDu v
nameDDv z
]DDz {
.DD{ |
ToArray	DD| É
(
DDÉ Ñ
)
DDÑ Ö
)
DDÖ Ü
;
DDÜ á
TemplateContextEE 
.EE &
GlobalMemberAccessStrategyEE 6
.EE6 7
RegisterEE7 ?
<EE? @#
CookieCollectionWrapperEE@ W
,EEW X
stringEEY _
>EE_ `
(EE` a
(EEa b
cookiesEEb i
,EEi j
nameEEk o
)EEo p
=>EEq s
cookiesEEt {
.EE{ |$
RequestCookieCollection	EE| ì
[
EEì î
name
EEî ò
]
EEò ô
)
EEô ö
;
EEö õ
TemplateContextFF 
.FF &
GlobalMemberAccessStrategyFF 6
.FF6 7
RegisterFF7 ?
<FF? @#
HeaderDictionaryWrapperFF@ W
,FFW X
stringFFY _
[FF_ `
]FF` a
>FFa b
(FFb c
(FFc d
headersFFd k
,FFk l
nameFFm q
)FFq r
=>FFs u
headersFFv }
.FF} ~
HeaderDictionary	FF~ é
[
FFé è
name
FFè ì
]
FFì î
.
FFî ï
ToArray
FFï ú
(
FFú ù
)
FFù û
)
FFû ü
;
FFü †
TemplateContextGG 
.GG &
GlobalMemberAccessStrategyGG 6
.GG6 7
RegisterGG7 ?
<GG? @'
RouteValueDictionaryWrapperGG@ [
,GG[ \
objectGG] c
>GGc d
(GGd e
(GGe f
headersGGf m
,GGm n
nameGGo s
)GGs t
=>GGu w
headersGGx 
.	GG Ä"
RouteValueDictionary
GGÄ î
[
GGî ï
name
GGï ô
]
GGô ö
)
GGö õ
;
GGõ ú
}HH 	
publicJJ -
!RequestLiquidTemplateEventHandlerJJ 0
(JJ0 1
IServiceProviderJJ1 A
serviceProviderJJB Q
)JJQ R
{KK 	
_serviceProviderLL 
=LL 
serviceProviderLL .
;LL. /
}MM 	
publicOO 
TaskOO 
RenderingAsyncOO "
(OO" #
TemplateContextOO# 2
contextOO3 :
)OO: ;
{PP 	
_httpContextRR 
=RR 
_httpContextRR '
??RR( *
_serviceProviderRR+ ;
.RR; <

GetServiceRR< F
<RRF G 
IHttpContextAccessorRRG [
>RR[ \
(RR\ ]
)RR] ^
?RR^ _
.RR_ `
HttpContextRR` k
;RRk l
ifTT 
(TT 
_httpContextTT 
!=TT 
nullTT  $
)TT$ %
{UU 
contextVV 
.VV 
SetValueVV  
(VV  !
$strVV! *
,VV* +
_httpContextVV, 8
.VV8 9
RequestVV9 @
)VV@ A
;VVA B
contextWW 
.WW 
SetValueWW  
(WW  !
$strWW! .
,WW. /
_httpContextWW0 <
)WW< =
;WW= >
}XX 
returnZZ 
TaskZZ 
.ZZ 
CompletedTaskZZ %
;ZZ% &
}[[ 	
private]] 
class]] #
CookieCollectionWrapper]] -
{^^ 	
public__ 
readonly__ $
IRequestCookieCollection__ 4#
RequestCookieCollection__5 L
;__L M
publicaa #
CookieCollectionWrapperaa *
(aa* +$
IRequestCookieCollectionaa+ C#
requestCookieCollectionaaD [
)aa[ \
{bb #
RequestCookieCollectioncc '
=cc( )#
requestCookieCollectioncc* A
;ccA B
}dd 
}ee 	
privategg 
classgg #
HeaderDictionaryWrappergg -
{hh 	
publicii 
readonlyii 
IHeaderDictionaryii -
HeaderDictionaryii. >
;ii> ?
publickk #
HeaderDictionaryWrapperkk *
(kk* +
IHeaderDictionarykk+ <
headerDictionarykk= M
)kkM N
{ll 
HeaderDictionarymm  
=mm! "
headerDictionarymm# 3
;mm3 4
}nn 
}oo 	
privateqq 
classqq #
HttpContextItemsWrapperqq -
{rr 	
publicss 
readonlyss 
IDictionaryss '
<ss' (
objectss( .
,ss. /
objectss0 6
>ss6 7
Itemsss8 =
;ss= >
publicuu #
HttpContextItemsWrapperuu *
(uu* +
IDictionaryuu+ 6
<uu6 7
objectuu7 =
,uu= >
objectuu? E
>uuE F
itemsuuG L
)uuL M
{vv 
Itemsww 
=ww 
itemsww 
;ww 
}xx 
}yy 	
private{{ 
class{{ '
RouteValueDictionaryWrapper{{ 1
{|| 	
public}} 
readonly}} 
IReadOnlyDictionary}} /
<}}/ 0
string}}0 6
,}}6 7
object}}8 >
>}}> ? 
RouteValueDictionary}}@ T
;}}T U
public '
RouteValueDictionaryWrapper .
(. /
IReadOnlyDictionary/ B
<B C
stringC I
,I J
objectK Q
>Q R 
routeValueDictionaryS g
)g h
{
ÄÄ "
RouteValueDictionary
ÅÅ $
=
ÅÅ% &"
routeValueDictionary
ÅÅ' ;
;
ÅÅ; <
}
ÇÇ 
}
ÉÉ 	
}
ÑÑ 
}ÖÖ ¬‰
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\TagHelpers\LiquidTagHelperActivator.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /

TagHelpers/ 9
{ 
public 

class $
LiquidTagHelperActivator )
{ 
private 
const 
string 
	AspPrefix &
=' (
$str) /
;/ 0
public 
static 
readonly $
LiquidTagHelperActivator 7
None8 <
== >
new? B$
LiquidTagHelperActivatorC [
([ \
)\ ]
;] ^
private 
readonly 
Func 
< 
ITagHelperFactory /
,/ 0
ViewContext1 <
,< =

ITagHelper> H
>H I
_activatorByFactoryJ ]
;] ^
private 
readonly 

Dictionary #
<# $
string$ *
,* +
Action, 2
<2 3

ITagHelper3 =
,= >#
ModelExpressionProvider? V
,V W
ViewDataDictionaryX j
<j k
objectk q
>q r
,r s
stringt z
,z {

FluidValue	| Ü
>
Ü á
>
á à
_setters
â ë
=
í ì
new 

Dictionary 
< 
string !
,! "
Action# )
<) *

ITagHelper* 4
,4 5#
ModelExpressionProvider6 M
,M N
ViewDataDictionaryO a
<a b
objectb h
>h i
,i j
stringk q
,q r

FluidValues }
>} ~
>~ 
(	 Ä
StringComparer
Ä é
.
é è
OrdinalIgnoreCase
è †
)
† °
;
° ¢
private 
readonly 
Func 
< 
ViewContext )
,) *

ITagHelper+ 5
>5 6
_activatorByService7 J
;J K
private 
readonly 
Action 
<  
object  &
,& '
object( .
>. /
_viewContextSetter0 B
;B C
public $
LiquidTagHelperActivator '
(' (
)( )
{ 	
}   	
public"" $
LiquidTagHelperActivator"" '
(""' (
Type""( ,
type""- 1
)""1 2
{## 	
var$$  
accessibleProperties$$ $
=$$% &
type$$' +
.$$+ ,
GetProperties$$, 9
($$9 :
)$$: ;
.$$; <
Where$$< A
($$A B
p$$B C
=>$$D F
(%% 
p%% 
.%% 
GetCustomAttribute%% %
<%%% &*
HtmlAttributeNotBoundAttribute%%& D
>%%D E
(%%E F
)%%F G
==%%H J
null%%K O
||%%P R
p&& 
.&& 
GetCustomAttribute&& $
<&&$ % 
ViewContextAttribute&&% 9
>&&9 :
(&&: ;
)&&; <
!=&&= ?
null&&@ D
)&&D E
&&&&F H
p'' 
.'' 
GetSetMethod'' 
('' 
)''  
!=''! #
null''$ (
)''( )
;'') *
foreach)) 
()) 
var)) 
property)) !
in))" $ 
accessibleProperties))% 9
)))9 :
{** 
var++ 
setter++ 
=++ "
MakeFastPropertySetter++ 3
(++3 4
type++4 8
,++8 9
property++: B
)++B C
;++C D
var,,  
viewContextAttribute,, (
=,,) *
property,,+ 3
.,,3 4
GetCustomAttribute,,4 F
<,,F G 
ViewContextAttribute,,G [
>,,[ \
(,,\ ]
),,] ^
;,,^ _
if.. 
(..  
viewContextAttribute.. (
!=..) +
null.., 0
&&..1 3
property..4 <
...< =
PropertyType..= I
==..J L
typeof..M S
(..S T
ViewContext..T _
).._ `
)..` a
{// 
_viewContextSetter00 &
=00' (
(00) *
helper00* 0
,000 1
context002 9
)009 :
=>00; =
setter00> D
(00D E
helper00E K
,00K L
context00M T
)00T U
;00U V
continue11 
;11 
}22 
var44 
allNames44 
=44 
new44 "
HashSet44# *
<44* +
string44+ 1
>441 2
(442 3
StringComparer443 A
.44A B
OrdinalIgnoreCase44B S
)44S T
{44U V
property44W _
.44_ `
Name44` d
}44e f
;44f g
var55 
htmlAttribute55 !
=55" #
property55$ ,
.55, -
GetCustomAttribute55- ?
<55? @&
HtmlAttributeNameAttribute55@ Z
>55Z [
(55[ \
)55\ ]
;55] ^
if77 
(77 
htmlAttribute77 !
!=77" $
null77% )
&&77* ,
htmlAttribute77- :
.77: ;
Name77; ?
!=77@ B
null77C G
)77G H
{88 
allNames99 
.99 
Add99  
(99  !
htmlAttribute99! .
.99. /
Name99/ 3
.993 4
ToPascalCaseDash994 D
(99D E
)99E F
)99F G
;99G H
if;; 
(;; 
htmlAttribute;; %
.;;% &
Name;;& *
.;;* +

StartsWith;;+ 5
(;;5 6
	AspPrefix;;6 ?
,;;? @
StringComparison;;A Q
.;;Q R
Ordinal;;R Y
);;Y Z
);;Z [
{<< 
allNames==  
.==  !
Add==! $
(==$ %
htmlAttribute==% 2
.==2 3
Name==3 7
.==7 8
	Substring==8 A
(==A B
	AspPrefix==B K
.==K L
Length==L R
)==R S
.==S T
ToPascalCaseDash==T d
(==d e
)==e f
)==f g
;==g h
}>> 
var@@ 
dictionaryPrefix@@ (
=@@) *
htmlAttribute@@+ 8
.@@8 9%
DictionaryAttributePrefix@@9 R
;@@R S
ifAA 
(AA 
dictionaryPrefixAA (
!=AA) +
nullAA, 0
)AA0 1
{BB 
allNamesCC  
.CC  !
AddCC! $
(CC$ %
dictionaryPrefixCC% 5
.CC5 6
ReplaceCC6 =
(CC= >
$charCC> A
,CCA B
$charCCC F
)CCF G
)CCG H
;CCH I
ifEE 
(EE 
dictionaryPrefixEE ,
.EE, -

StartsWithEE- 7
(EE7 8
	AspPrefixEE8 A
,EEA B
StringComparisonEEC S
.EES T
OrdinalEET [
)EE[ \
)EE\ ]
{FF 
allNamesGG $
.GG$ %
AddGG% (
(GG( )
dictionaryPrefixGG) 9
.GG9 :
	SubstringGG: C
(GGC D
	AspPrefixGGD M
.GGM N
LengthGGN T
)GGT U
.GGU V
ReplaceGGV ]
(GG] ^
$charGG^ a
,GGa b
$charGGc f
)GGf g
)GGg h
;GGh i
}HH 
}II 
}JJ 
varLL 
getterLL 
=LL "
MakeFastPropertyGetterLL 3
(LL3 4
typeLL4 8
,LL8 9
propertyLL: B
)LLB C
;LLC D
foreachNN 
(NN 
varNN 
propertyNameNN )
inNN* ,
allNamesNN- 5
)NN5 6
{OO 
_settersPP 
.PP 
AddPP  
(PP  !
propertyNamePP! -
,PP- .
(PP/ 0
hPP0 1
,PP1 2
mpPP3 5
,PP5 6
vdPP7 9
,PP9 :
kPP; <
,PP< =
vPP> ?
)PP? @
=>PPA C
{QQ 
objectRR 
valueRR $
=RR% &
nullRR' +
;RR+ ,
ifTT 
(TT 
propertyTT $
.TT$ %
PropertyTypeTT% 1
.TT1 2
IsEnumTT2 8
)TT8 9
{UU 
valueVV !
=VV" #
EnumVV$ (
.VV( )
ParseVV) .
(VV. /
propertyVV/ 7
.VV7 8
PropertyTypeVV8 D
,VVD E
vVVF G
.VVG H
ToStringValueVVH U
(VVU V
)VVV W
)VVW X
;VVX Y
}WW 
elseXX 
ifXX 
(XX  !
propertyXX! )
.XX) *
PropertyTypeXX* 6
==XX7 9
typeofXX: @
(XX@ A
stringXXA G
)XXG H
)XXH I
{YY 
valueZZ !
=ZZ" #
vZZ$ %
.ZZ% &
ToStringValueZZ& 3
(ZZ3 4
)ZZ4 5
;ZZ5 6
}[[ 
else\\ 
if\\ 
(\\  !
property\\! )
.\\) *
PropertyType\\* 6
==\\7 9
typeof\\: @
(\\@ A
bool\\A E
)\\E F
)\\F G
{]] 
value^^ !
=^^" #
Convert^^$ +
.^^+ ,
	ToBoolean^^, 5
(^^5 6
v^^6 7
.^^7 8
ToStringValue^^8 E
(^^E F
)^^F G
)^^G H
;^^H I
}__ 
else`` 
if`` 
(``  !
property``! )
.``) *
PropertyType``* 6
==``7 9
typeof``: @
(``@ A
bool``A E
?``E F
)``F G
)``G H
{aa 
valuebb !
=bb" #
vbb$ %
.bb% &
IsNilbb& +
(bb+ ,
)bb, -
?bb. /
nullbb0 4
:bb5 6
(bb7 8
boolbb8 <
?bb< =
)bb= >
Convertbb> E
.bbE F
	ToBooleanbbF O
(bbO P
vbbP Q
.bbQ R
ToStringValuebbR _
(bb_ `
)bb` a
)bba b
;bbb c
}cc 
elsedd 
ifdd 
(dd  !
propertydd! )
.dd) *
PropertyTypedd* 6
==dd7 9
typeofdd: @
(dd@ A
IDictionaryddA L
<ddL M
stringddM S
,ddS T
stringddU [
>dd[ \
)dd\ ]
)dd] ^
{ee 
varff 

dictionaryff  *
=ff+ ,
(ff- .
IDictionaryff. 9
<ff9 :
stringff: @
,ff@ A
stringffB H
>ffH I
)ffI J
getterffJ P
(ffP Q
hffQ R
)ffR S
;ffS T

dictionarygg &
[gg& '
kgg' (
]gg( )
=gg* +
vgg, -
.gg- .
ToStringValuegg. ;
(gg; <
)gg< =
;gg= >
valuehh !
=hh" #

dictionaryhh$ .
;hh. /
}ii 
elsejj 
ifjj 
(jj  !
propertyjj! )
.jj) *
PropertyTypejj* 6
==jj7 9
typeofjj: @
(jj@ A
IDictionaryjjA L
<jjL M
stringjjM S
,jjS T
objectjjU [
>jj[ \
)jj\ ]
)jj] ^
{kk 
varll 

dictionaryll  *
=ll+ ,
(ll- .
IDictionaryll. 9
<ll9 :
stringll: @
,ll@ A
objectllB H
>llH I
)llI J
getterllJ P
(llP Q
hllQ R
)llR S
;llS T

dictionarymm &
[mm& '
kmm' (
]mm( )
=mm* +
vmm, -
.mm- .
ToObjectValuemm. ;
(mm; <
)mm< =
;mm= >
valuenn !
=nn" #

dictionarynn$ .
;nn. /
}oo 
elsepp 
ifpp 
(pp  !
propertypp! )
.pp) *
PropertyTypepp* 6
==pp7 9
typeofpp: @
(pp@ A
ModelExpressionppA P
)ppP Q
)ppQ R
{qq 
valuerr !
=rr" #
mprr$ &
.rr& '!
CreateModelExpressionrr' <
(rr< =
vdrr= ?
,rr? @
vrrA B
.rrB C
ToStringValuerrC P
(rrP Q
)rrQ R
)rrR S
;rrS T
}ss 
elsett 
{uu 
valuevv !
=vv" #
vvv$ %
.vv% &
ToObjectValuevv& 3
(vv3 4
)vv4 5
;vv5 6
}ww 
setteryy 
(yy 
hyy  
,yy  !
valueyy" '
)yy' (
;yy( )
}zz 
)zz 
;zz 
}{{ 
}|| 
if~~ 
(~~ 

ShellScope~~ 
.~~ 
Services~~ #
.~~# $

GetService~~$ .
(~~. /
type~~/ 3
)~~3 4
as~~5 7

ITagHelper~~8 B
!=~~C E
null~~F J
)~~J K
{ !
_activatorByService
ÄÄ #
=
ÄÄ$ %
(
ÄÄ& '
context
ÄÄ' .
)
ÄÄ. /
=>
ÄÄ0 2
{
ÅÅ 
var
ÇÇ 
helper
ÇÇ 
=
ÇÇ  

ShellScope
ÇÇ! +
.
ÇÇ+ ,
Services
ÇÇ, 4
.
ÇÇ4 5

GetService
ÇÇ5 ?
(
ÇÇ? @
type
ÇÇ@ D
)
ÇÇD E
as
ÇÇF H

ITagHelper
ÇÇI S
;
ÇÇS T 
_viewContextSetter
ÉÉ &
?
ÉÉ& '
.
ÉÉ' (
Invoke
ÉÉ( .
(
ÉÉ. /
helper
ÉÉ/ 5
,
ÉÉ5 6
context
ÉÉ7 >
)
ÉÉ> ?
;
ÉÉ? @
return
ÑÑ 
helper
ÑÑ !
;
ÑÑ! "
}
ÖÖ 
;
ÖÖ 
}
ÜÜ 
else
áá 
{
àà 
var
ââ 
genericFactory
ââ "
=
ââ# $
typeof
ââ% +
(
ââ+ ,&
ReusableTagHelperFactory
ââ, D
<
ââD E
>
ââE F
)
ââF G
.
ââG H
MakeGenericType
ââH W
(
ââW X
type
ââX \
)
ââ\ ]
;
ââ] ^
var
ää 
factoryMethod
ää !
=
ää" #
genericFactory
ää$ 2
.
ää2 3
	GetMethod
ää3 <
(
ää< =
$str
ää= N
)
ääN O
;
ääO P!
_activatorByFactory
åå #
=
åå$ %
Delegate
åå& .
.
åå. /
CreateDelegate
åå/ =
(
åå= >
typeof
åå> D
(
ååD E
Func
ååE I
<
ååI J
ITagHelperFactory
ååJ [
,
åå[ \
ViewContext
åå] h
,
ååh i

ITagHelper
ååj t
>
ååt u
)
ååu v
,
ååv w
factoryMethod
çç !
)
çç! "
as
çç# %
Func
çç& *
<
çç* +
ITagHelperFactory
çç+ <
,
çç< =
ViewContext
çç> I
,
ççI J

ITagHelper
ççK U
>
ççU V
;
ççV W
}
éé 
}
èè 	
public
ëë 

ITagHelper
ëë 
Create
ëë  
(
ëë  !
ITagHelperFactory
ëë! 2
factory
ëë3 :
,
ëë: ;
ViewContext
ëë< G
context
ëëH O
,
ëëO P
FilterArguments
ëëQ `
	arguments
ëëa j
,
ëëj k
out
íí $
TagHelperAttributeList
íí &
contextAttributes
íí' 8
,
íí8 9
out
íí: =$
TagHelperAttributeList
íí> T
outputAttributes
ííU e
)
ííe f
{
ìì 	
contextAttributes
îî 
=
îî 
new
îî  #$
TagHelperAttributeList
îî$ :
(
îî: ;
)
îî; <
;
îî< =
outputAttributes
ïï 
=
ïï 
new
ïï "$
TagHelperAttributeList
ïï# 9
(
ïï9 :
)
ïï: ;
;
ïï; <

ITagHelper
óó 
	tagHelper
óó  
;
óó  !
if
ôô 
(
ôô !
_activatorByService
ôô #
!=
ôô$ &
null
ôô' +
)
ôô+ ,
{
öö 
	tagHelper
õõ 
=
õõ !
_activatorByService
õõ /
(
õõ/ 0
context
õõ0 7
)
õõ7 8
;
õõ8 9
}
úú 
else
ùù 
{
ûû 
	tagHelper
üü 
=
üü !
_activatorByFactory
üü /
(
üü/ 0
factory
üü0 7
,
üü7 8
context
üü9 @
)
üü@ A
;
üüA B
}
†† 
var
¢¢ 
expresionProvider
¢¢ !
=
¢¢" #
context
¢¢$ +
.
¢¢+ ,
HttpContext
¢¢, 7
.
¢¢7 8
RequestServices
¢¢8 G
.
¢¢G H 
GetRequiredService
¢¢H Z
<
¢¢Z [%
ModelExpressionProvider
¢¢[ r
>
¢¢r s
(
¢¢s t
)
¢¢t u
;
¢¢u v
var
§§ 
viewData
§§ 
=
§§ 
context
§§ "
.
§§" #
ViewData
§§# +
as
§§, . 
ViewDataDictionary
§§/ A
<
§§A B
object
§§B H
>
§§H I
;
§§I J
if
•• 
(
•• 
viewData
•• 
==
•• 
null
••  
)
••  !
{
¶¶ 
viewData
ßß 
=
ßß 
new
ßß  
ViewDataDictionary
ßß 1
<
ßß1 2
object
ßß2 8
>
ßß8 9
(
ßß9 :
context
ßß: A
.
ßßA B
ViewData
ßßB J
)
ßßJ K
;
ßßK L
}
®® 
foreach
™™ 
(
™™ 
var
™™ 
name
™™ 
in
™™  
	arguments
™™! *
.
™™* +
Names
™™+ 0
)
™™0 1
{
´´ 
var
¨¨ 
propertyName
¨¨  
=
¨¨! "
name
¨¨# '
.
¨¨' ($
ToPascalCaseUnderscore
¨¨( >
(
¨¨> ?
)
¨¨? @
;
¨¨@ A
var
≠≠ 
dictionaryName
≠≠ "
=
≠≠# $
String
≠≠% +
.
≠≠+ ,
Empty
≠≠, 1
;
≠≠1 2
var
ÆÆ 
dictionaryKey
ÆÆ !
=
ÆÆ" #
String
ÆÆ$ *
.
ÆÆ* +
Empty
ÆÆ+ 0
;
ÆÆ0 1
if
∞∞ 
(
∞∞ 
!
∞∞ 
_setters
∞∞ 
.
∞∞ 
TryGetValue
∞∞ )
(
∞∞) *
propertyName
∞∞* 6
,
∞∞6 7
out
∞∞8 ;
var
∞∞< ?
setter
∞∞@ F
)
∞∞F G
)
∞∞G H
{
±± 
var
≤≤ 
index
≤≤ 
=
≤≤ 
name
≤≤  $
.
≤≤$ %
LastIndexOf
≤≤% 0
(
≤≤0 1
$char
≤≤1 4
)
≤≤4 5
;
≤≤5 6
if
¥¥ 
(
¥¥ 
index
¥¥ 
>
¥¥ 
-
¥¥  !
$num
¥¥! "
)
¥¥" #
{
µµ 
dictionaryName
∂∂ &
=
∂∂' (
name
∂∂) -
.
∂∂- .
	Substring
∂∂. 7
(
∂∂7 8
$num
∂∂8 9
,
∂∂9 :
index
∂∂; @
+
∂∂A B
$num
∂∂C D
)
∂∂D E
;
∂∂E F
dictionaryKey
∑∑ %
=
∑∑& '
name
∑∑( ,
.
∑∑, -
	Substring
∑∑- 6
(
∑∑6 7
index
∑∑7 <
+
∑∑= >
$num
∑∑? @
)
∑∑@ A
;
∑∑A B
if
ππ 
(
ππ 
dictionaryName
ππ *
.
ππ* +
Length
ππ+ 1
>
ππ2 3
$num
ππ4 5
&&
ππ6 8
dictionaryKey
ππ9 F
.
ππF G
Length
ππG M
>
ππN O
$num
ππP Q
)
ππQ R
{
∫∫ 
_setters
ªª $
.
ªª$ %
TryGetValue
ªª% 0
(
ªª0 1
dictionaryName
ªª1 ?
,
ªª? @
out
ªªA D
setter
ªªE K
)
ªªK L
;
ªªL M
}
ºº 
}
ΩΩ 
}
ææ 
var
¿¿ 
found
¿¿ 
=
¿¿ 
false
¿¿ !
;
¿¿! "
if
¬¬ 
(
¬¬ 
setter
¬¬ 
!=
¬¬ 
null
¬¬ "
)
¬¬" #
{
√√ 
try
ƒƒ 
{
≈≈ 
setter
∆∆ 
(
∆∆ 
	tagHelper
∆∆ (
,
∆∆( )
expresionProvider
∆∆* ;
,
∆∆; <
viewData
∆∆= E
,
∆∆E F
dictionaryKey
∆∆G T
,
∆∆T U
	arguments
∆∆V _
[
∆∆_ `
name
∆∆` d
]
∆∆d e
)
∆∆e f
;
∆∆f g
found
«« 
=
«« 
true
««  $
;
««$ %
}
»» 
catch
…… 
(
…… 
ArgumentException
…… ,
e
……- .
)
……. /
{
   
throw
ÀÀ 
new
ÀÀ !
ArgumentException
ÀÀ" 3
(
ÀÀ3 4
$str
ÀÀ4 ]
,
ÀÀ] ^
name
ÀÀ_ c
,
ÀÀc d
e
ÀÀe f
)
ÀÀf g
;
ÀÀg h
}
ÃÃ 
}
ÕÕ 
var
œœ 
	attribute
œœ 
=
œœ 
new
œœ  # 
TagHelperAttribute
œœ$ 6
(
œœ6 7
name
œœ7 ;
.
œœ; <
Replace
œœ< C
(
œœC D
$char
œœD G
,
œœG H
$char
œœI L
)
œœL M
,
œœM N
	arguments
œœO X
[
œœX Y
name
œœY ]
]
œœ] ^
.
œœ^ _
ToObjectValue
œœ_ l
(
œœl m
)
œœm n
)
œœn o
;
œœo p
contextAttributes
—— !
.
——! "
Add
——" %
(
——% &
	attribute
——& /
)
——/ 0
;
——0 1
if
”” 
(
”” 
!
”” 
found
”” 
)
”” 
{
‘‘ 
outputAttributes
’’ $
.
’’$ %
Add
’’% (
(
’’( )
	attribute
’’) 2
)
’’2 3
;
’’3 4
}
÷÷ 
}
◊◊ 
return
ŸŸ 
	tagHelper
ŸŸ 
;
ŸŸ 
}
⁄⁄ 	
private
‹‹ 
class
‹‹ &
ReusableTagHelperFactory
‹‹ .
<
‹‹. /
T
‹‹/ 0
>
‹‹0 1
where
‹‹2 7
T
‹‹8 9
:
‹‹: ;
class
‹‹< A
,
‹‹A B

ITagHelper
‹‹C M
{
›› 	
public
ﬁﬁ 
static
ﬁﬁ 

ITagHelper
ﬁﬁ $
CreateTagHelper
ﬁﬁ% 4
(
ﬁﬁ4 5
ITagHelperFactory
ﬁﬁ5 F
tagHelperFactory
ﬁﬁG W
,
ﬁﬁW X
ViewContext
ﬁﬁY d
viewContext
ﬁﬁe p
)
ﬁﬁp q
{
ﬂﬂ 
return
‡‡ 
tagHelperFactory
‡‡ '
.
‡‡' (
CreateTagHelper
‡‡( 7
<
‡‡7 8
T
‡‡8 9
>
‡‡9 :
(
‡‡: ;
viewContext
‡‡; F
)
‡‡F G
;
‡‡G H
}
·· 
}
‚‚ 	
private
‰‰ 
static
‰‰ 
Action
‰‰ 
<
‰‰ 
object
‰‰ $
,
‰‰$ %
object
‰‰& ,
>
‰‰, -$
MakeFastPropertySetter
‰‰. D
(
‰‰D E
Type
‰‰E I
type
‰‰J N
,
‰‰N O
PropertyInfo
‰‰P \
prop
‰‰] a
)
‰‰a b
{
ÂÂ 	
var
ÁÁ 
setterAsAction
ÁÁ 
=
ÁÁ  
prop
ÁÁ! %
.
ÁÁ% &
	SetMethod
ÁÁ& /
.
ÁÁ/ 0
CreateDelegate
ÁÁ0 >
(
ÁÁ> ?
typeof
ÁÁ? E
(
ÁÁE F
Action
ÁÁF L
<
ÁÁL M
,
ÁÁM N
>
ÁÁN O
)
ÁÁO P
.
ÁÁP Q
MakeGenericType
ÁÁQ `
(
ÁÁ` a
type
ÁÁa e
,
ÁÁe f
prop
ÁÁg k
.
ÁÁk l
PropertyType
ÁÁl x
)
ÁÁx y
)
ÁÁy z
;
ÁÁz {
var
ËË '
setterClosedGenericMethod
ËË )
=
ËË* +1
#CallPropertySetterOpenGenericMethod
ËË, O
.
ËËO P
MakeGenericMethod
ËËP a
(
ËËa b
type
ËËb f
,
ËËf g
prop
ËËh l
.
ËËl m
PropertyType
ËËm y
)
ËËy z
;
ËËz {
var
ÈÈ 
setterDelegate
ÈÈ 
=
ÈÈ  '
setterClosedGenericMethod
ÈÈ! :
.
ÈÈ: ;
CreateDelegate
ÈÈ; I
(
ÈÈI J
typeof
ÈÈJ P
(
ÈÈP Q
Action
ÈÈQ W
<
ÈÈW X
object
ÈÈX ^
,
ÈÈ^ _
object
ÈÈ` f
>
ÈÈf g
)
ÈÈg h
,
ÈÈh i
setterAsAction
ÈÈj x
)
ÈÈx y
;
ÈÈy z
return
ÎÎ 
(
ÎÎ 
Action
ÎÎ 
<
ÎÎ 
object
ÎÎ !
,
ÎÎ! "
object
ÎÎ# )
>
ÎÎ) *
)
ÎÎ* +
setterDelegate
ÎÎ+ 9
;
ÎÎ9 :
}
ÏÏ 	
private
ÓÓ 
static
ÓÓ 
readonly
ÓÓ 

MethodInfo
ÓÓ  *1
#CallPropertySetterOpenGenericMethod
ÓÓ+ N
=
ÓÓO P
typeof
ÔÔ 
(
ÔÔ &
LiquidTagHelperActivator
ÔÔ +
)
ÔÔ+ ,
.
ÔÔ, -
GetTypeInfo
ÔÔ- 8
(
ÔÔ8 9
)
ÔÔ9 :
.
ÔÔ: ;
GetDeclaredMethod
ÔÔ; L
(
ÔÔL M
nameof
ÔÔM S
(
ÔÔS T 
CallPropertySetter
ÔÔT f
)
ÔÔf g
)
ÔÔg h
;
ÔÔh i
private
ÒÒ 
static
ÒÒ 
void
ÒÒ  
CallPropertySetter
ÒÒ .
<
ÒÒ. /
TDeclaringType
ÒÒ/ =
,
ÒÒ= >
TValue
ÒÒ? E
>
ÒÒE F
(
ÒÒF G
Action
ÒÒG M
<
ÒÒM N
TDeclaringType
ÒÒN \
,
ÒÒ\ ]
TValue
ÒÒ^ d
>
ÒÒd e
setter
ÒÒf l
,
ÒÒl m
object
ÒÒn t
target
ÒÒu {
,
ÒÒ{ |
objectÒÒ} É
valueÒÒÑ â
)ÒÒâ ä
=>
ÚÚ 
setter
ÚÚ 
(
ÚÚ 
(
ÚÚ 
TDeclaringType
ÚÚ %
)
ÚÚ% &
target
ÚÚ& ,
,
ÚÚ, -
(
ÚÚ. /
TValue
ÚÚ/ 5
)
ÚÚ5 6
value
ÚÚ6 ;
)
ÚÚ; <
;
ÚÚ< =
private
ÙÙ 
static
ÙÙ 
Func
ÙÙ 
<
ÙÙ 
object
ÙÙ "
,
ÙÙ" #
object
ÙÙ$ *
>
ÙÙ* +$
MakeFastPropertyGetter
ÙÙ, B
(
ÙÙB C
Type
ÙÙC G
type
ÙÙH L
,
ÙÙL M
PropertyInfo
ÙÙN Z
prop
ÙÙ[ _
)
ÙÙ_ `
{
ıı 	
var
˜˜ 
getterAsFunc
˜˜ 
=
˜˜ 
prop
˜˜ #
.
˜˜# $
	GetMethod
˜˜$ -
.
˜˜- .
CreateDelegate
˜˜. <
(
˜˜< =
typeof
˜˜= C
(
˜˜C D
Func
˜˜D H
<
˜˜H I
,
˜˜I J
>
˜˜J K
)
˜˜K L
.
˜˜L M
MakeGenericType
˜˜M \
(
˜˜\ ]
type
˜˜] a
,
˜˜a b
prop
˜˜c g
.
˜˜g h
PropertyType
˜˜h t
)
˜˜t u
)
˜˜u v
;
˜˜v w
var
¯¯ '
getterClosedGenericMethod
¯¯ )
=
¯¯* +1
#CallPropertyGetterOpenGenericMethod
¯¯, O
.
¯¯O P
MakeGenericMethod
¯¯P a
(
¯¯a b
type
¯¯b f
,
¯¯f g
prop
¯¯h l
.
¯¯l m
PropertyType
¯¯m y
)
¯¯y z
;
¯¯z {
var
˘˘ 
getterDelegate
˘˘ 
=
˘˘  '
getterClosedGenericMethod
˘˘! :
.
˘˘: ;
CreateDelegate
˘˘; I
(
˘˘I J
typeof
˘˘J P
(
˘˘P Q
Func
˘˘Q U
<
˘˘U V
object
˘˘V \
,
˘˘\ ]
object
˘˘^ d
>
˘˘d e
)
˘˘e f
,
˘˘f g
getterAsFunc
˘˘h t
)
˘˘t u
;
˘˘u v
return
˚˚ 
(
˚˚ 
Func
˚˚ 
<
˚˚ 
object
˚˚ 
,
˚˚  
object
˚˚! '
>
˚˚' (
)
˚˚( )
getterDelegate
˚˚) 7
;
˚˚7 8
}
¸¸ 	
private
˛˛ 
static
˛˛ 
readonly
˛˛ 

MethodInfo
˛˛  *1
#CallPropertyGetterOpenGenericMethod
˛˛+ N
=
˛˛O P
typeof
ˇˇ 
(
ˇˇ &
LiquidTagHelperActivator
ˇˇ +
)
ˇˇ+ ,
.
ˇˇ, -
GetTypeInfo
ˇˇ- 8
(
ˇˇ8 9
)
ˇˇ9 :
.
ˇˇ: ;
GetDeclaredMethod
ˇˇ; L
(
ˇˇL M
nameof
ˇˇM S
(
ˇˇS T 
CallPropertyGetter
ˇˇT f
)
ˇˇf g
)
ˇˇg h
;
ˇˇh i
private
ÅÅ 
static
ÅÅ 
object
ÅÅ  
CallPropertyGetter
ÅÅ 0
<
ÅÅ0 1
TDeclaringType
ÅÅ1 ?
,
ÅÅ? @
TValue
ÅÅA G
>
ÅÅG H
(
ÅÅH I
Func
ÅÅI M
<
ÅÅM N
TDeclaringType
ÅÅN \
,
ÅÅ\ ]
TValue
ÅÅ^ d
>
ÅÅd e
getter
ÅÅf l
,
ÅÅl m
object
ÅÅn t
target
ÅÅu {
)
ÅÅ{ |
=>
ÇÇ 
getter
ÇÇ 
(
ÇÇ 
(
ÇÇ 
TDeclaringType
ÇÇ %
)
ÇÇ% &
target
ÇÇ& ,
)
ÇÇ, -
;
ÇÇ- .
}
ÉÉ 
}ÑÑ ßY
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\TagHelpers\LiquidTagHelperFactory.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /

TagHelpers/ 9
{ 
public 

class "
LiquidTagHelperFactory '
{ 
private 
static  
ConcurrentDictionary +
<+ ,
Type, 0
,0 1#
LiquidTagHelperMatching2 I
>I J
_allMatchingsK X
=Y Z
new[ ^ 
ConcurrentDictionary_ s
<s t
Typet x
,x y$
LiquidTagHelperMatching	z ë
>
ë í
(
í ì
)
ì î
;
î ï
private 
static  
ConcurrentDictionary +
<+ ,
Type, 0
,0 1$
LiquidTagHelperActivator2 J
>J K
_allActivatorsL Z
=[ \
new] ` 
ConcurrentDictionarya u
<u v
Typev z
,z {%
LiquidTagHelperActivator	| î
>
î ï
(
ï ñ
)
ñ ó
;
ó ò
private 
List 
< #
LiquidTagHelperMatching ,
>, -

_matchings. 8
;8 9
private 
readonly "
ApplicationPartManager /
_partManager0 <
;< =
private 
readonly 
ITagHelperFactory *
_factory+ 3
;3 4
public "
LiquidTagHelperFactory %
(% &"
ApplicationPartManager& <
partManager= H
,H I
ITagHelperFactoryJ [
factory\ c
)c d
{ 	
_partManager 
= 
partManager &
;& '
_factory 
= 
factory 
; 
}   	
private"" 
void"" 
EnsureMatchings"" $
(""$ %
)""% &
{## 	
if$$ 
($$ 

_matchings$$ 
!=$$ 
null$$ "
)$$" #
{%% 
return&& 
;&& 
}'' 
lock)) 
()) 
this)) 
))) 
{** 
if++ 
(++ 

_matchings++ 
==++ !
null++" &
)++& '
{,, 
var-- 
feature-- 
=--  !
new--" %
TagHelperFeature--& 6
(--6 7
)--7 8
;--8 9
_partManager..  
...  !
PopulateFeature..! 0
(..0 1
feature..1 8
)..8 9
;..9 :
var00 
	matchings00 !
=00" #
new00$ '
List00( ,
<00, -#
LiquidTagHelperMatching00- D
>00D E
(00E F
)00F G
;00G H
foreach22 
(22 
var22  
	tagHelper22! *
in22+ -
feature22. 5
.225 6

TagHelpers226 @
)22@ A
{33 
var44 
matching44 $
=44% &
_allMatchings44' 4
.444 5
GetOrAdd445 =
(44= >
	tagHelper44> G
.44G H
AsType44H N
(44N O
)44O P
,44P Q
type44R V
=>44W Y
{55 
var66 
descriptorBuilder66  1
=662 3&
TagHelperDescriptorBuilder664 N
.66N O
Create66O U
(66U V
type77  $
.77$ %
FullName77% -
,77- .
type77/ 3
.773 4
Assembly774 <
.77< =
GetName77= D
(77D E
)77E F
.77F G
Name77G K
)77K L
;77L M
descriptorBuilder99 -
.99- .
SetTypeName99. 9
(999 :
type99: >
.99> ?
FullName99? G
)99G H
;99H I
AddTagMatchingRules:: /
(::/ 0
type::0 4
,::4 5
descriptorBuilder::6 G
)::G H
;::H I
var;; 

descriptor;;  *
=;;+ ,
descriptorBuilder;;- >
.;;> ?
Build;;? D
(;;D E
);;E F
;;;F G
return== "
new==# &#
LiquidTagHelperMatching==' >
(==> ?

descriptor>>  *
.>>* +
Name>>+ /
,>>/ 0

descriptor??  *
.??* +
AssemblyName??+ 7
,??7 8

descriptor@@  *
.@@* +
TagMatchingRules@@+ ;
)AA 
;AA 
}BB 
)BB 
;BB 
	matchingsDD !
.DD! "
AddDD" %
(DD% &
matchingDD& .
)DD. /
;DD/ 0
}EE 

_matchingsGG 
=GG  
	matchingsGG! *
;GG* +
}HH 
}II 
}JJ 	
publicLL $
LiquidTagHelperActivatorLL '
GetActivatorLL( 4
(LL4 5
stringLL5 ;
helperLL< B
,LLB C
IEnumerableLLD O
<LLO P
stringLLP V
>LLV W
	argumentsLLX a
)LLa b
{MM 	
EnsureMatchingsNN 
(NN 
)NN 
;NN 
varOO 
matchingOO 
=OO 

_matchingsOO %
.OO% &
WhereOO& +
(OO+ ,
dOO, -
=>OO. 0
dOO1 2
.OO2 3
MatchOO3 8
(OO8 9
helperOO9 ?
,OO? @
	argumentsOOA J
)OOJ K
)OOK L
.OOL M
FirstOrDefaultOOM [
(OO[ \
)OO\ ]
??OO^ `#
LiquidTagHelperMatchingOOa x
.OOx y
NoneOOy }
;OO} ~
ifQQ 
(QQ 
matchingQQ 
!=QQ #
LiquidTagHelperMatchingQQ 3
.QQ3 4
NoneQQ4 8
)QQ8 9
{RR 
varSS 
tagHelperTypeSS !
=SS" #
TypeSS$ (
.SS( )
GetTypeSS) 0
(SS0 1
matchingSS1 9
.SS9 :
NameSS: >
+SS? @
$strSSA E
+SSF G
matchingSSH P
.SSP Q
AssemblyNameSSQ ]
)SS] ^
;SS^ _
returnTT 
_allActivatorsTT %
.TT% &
GetOrAddTT& .
(TT. /
tagHelperTypeTT/ <
,TT< =
typeTT> B
=>TTC E
newTTF I$
LiquidTagHelperActivatorTTJ b
(TTb c
typeTTc g
)TTg h
)TTh i
;TTi j
}UU 
returnWW $
LiquidTagHelperActivatorWW +
.WW+ ,
NoneWW, 0
;WW0 1
}XX 	
publicZZ 

ITagHelperZZ 
CreateTagHelperZZ )
(ZZ) *$
LiquidTagHelperActivatorZZ* B
	activatorZZC L
,ZZL M
ViewContextZZN Y
contextZZZ a
,ZZa b
FilterArgumentsZZc r
	argumentsZZs |
,ZZ| }
out[[ "
TagHelperAttributeList[[ &
contextAttributes[[' 8
,[[8 9
out[[: ="
TagHelperAttributeList[[> T
outputAttributes[[U e
)[[e f
{\\ 	
return]] 
	activator]] 
.]] 
Create]] #
(]]# $
_factory]]$ ,
,]], -
context]]. 5
,]]5 6
	arguments]]7 @
,]]@ A
out]]B E
contextAttributes]]F W
,]]W X
out]]Y \
outputAttributes]]] m
)]]m n
;]]n o
}^^ 	
private`` 
static`` 
void`` 
AddTagMatchingRules`` /
(``/ 0
Type``0 4
type``5 9
,``9 :&
TagHelperDescriptorBuilder``; U
descriptorBuilder``V g
)``g h
{aa 	
varbb #
targetElementAttributesbb '
=bb( )
typebb* .
.bb. /
GetCustomAttributesbb/ B
<bbB C&
HtmlTargetElementAttributebbC ]
>bb] ^
(bb^ _
)bb_ `
;bb` a
ifee 
(ee 
!ee #
targetElementAttributesee (
.ee( )
Anyee) ,
(ee, -
)ee- .
)ee. /
{ff 
vargg 
namegg 
=gg 
typegg 
.gg  
Namegg  $
;gg$ %
ifii 
(ii 
nameii 
.ii 
EndsWithii !
(ii! "
$strii" -
,ii- .
StringComparisonii/ ?
.ii? @
OrdinalIgnoreCaseii@ Q
)iiQ R
)iiR S
{jj 
namekk 
=kk 
namekk 
.kk  
	Substringkk  )
(kk) *
$numkk* +
,kk+ ,
namekk- 1
.kk1 2
Lengthkk2 8
-kk9 :
$strkk; F
.kkF G
LengthkkG M
)kkM N
;kkN O
}ll 
descriptorBuildernn !
.nn! "
TagMatchingRulenn" 1
(nn1 2
ruleBuildernn2 =
=>nn> @
{oo 
varpp 
htmlCasedNamepp %
=pp& '
HtmlConventionspp( 7
.pp7 8

ToHtmlCasepp8 B
(ppB C
nameppC G
)ppG H
;ppH I
ruleBuilderqq 
.qq  
TagNameqq  '
=qq( )
htmlCasedNameqq* 7
;qq7 8
}rr 
)rr 
;rr 
returntt 
;tt 
}uu 
foreachww 
(ww 
varww "
targetElementAttributeww /
inww0 2#
targetElementAttributesww3 J
)wwJ K
{xx 
descriptorBuilderyy !
.yy! "
TagMatchingRuleyy" 1
(yy1 2
ruleBuilderyy2 =
=>yy> @
{zz 
var{{ 
tagName{{ 
={{  !"
targetElementAttribute{{" 8
.{{8 9
Tag{{9 <
;{{< =
ruleBuilder|| 
.||  
TagName||  '
=||( )
tagName||* 1
;||1 2
var~~ 
	parentTag~~ !
=~~" #"
targetElementAttribute~~$ :
.~~: ;
	ParentTag~~; D
;~~D E
ruleBuilder 
.  
	ParentTag  )
=* +
	parentTag, 5
;5 6
var
ÅÅ 
tagStructure
ÅÅ $
=
ÅÅ% &$
targetElementAttribute
ÅÅ' =
.
ÅÅ= >
TagStructure
ÅÅ> J
;
ÅÅJ K
ruleBuilder
ÇÇ 
.
ÇÇ  
TagStructure
ÇÇ  ,
=
ÇÇ- .
(
ÇÇ/ 0
	Microsoft
ÇÇ0 9
.
ÇÇ9 :

AspNetCore
ÇÇ: D
.
ÇÇD E
Razor
ÇÇE J
.
ÇÇJ K
Language
ÇÇK S
.
ÇÇS T
TagStructure
ÇÇT `
)
ÇÇ` a
tagStructure
ÇÇa m
;
ÇÇm n
var
ÑÑ %
requiredAttributeString
ÑÑ /
=
ÑÑ0 1$
targetElementAttribute
ÑÑ2 H
.
ÑÑH I

Attributes
ÑÑI S
;
ÑÑS T%
RequiredAttributeParser
ÖÖ +
.
ÖÖ+ ,#
AddRequiredAttributes
ÖÖ, A
(
ÖÖA B%
requiredAttributeString
ÖÖB Y
,
ÖÖY Z
ruleBuilder
ÖÖ[ f
)
ÖÖf g
;
ÖÖg h
}
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 	
}
ââ 
}ää ¬.
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\TagHelpers\LiquidTagHelperMatching.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /

TagHelpers/ 9
{ 
public 

class #
LiquidTagHelperMatching (
{		 
private

 
const

 
string

 
	AspPrefix

 &
=

' (
$str

) /
;

/ 0
public 
readonly 
static #
LiquidTagHelperMatching 6
None7 ;
=< =
new> A#
LiquidTagHelperMatchingB Y
(Y Z
)Z [
;[ \
public 
readonly 
IEnumerable #
<# $%
TagMatchingRuleDescriptor$ =
>= >
_rules? E
=F G

EnumerableH R
.R S
EmptyS X
<X Y%
TagMatchingRuleDescriptorY r
>r s
(s t
)t u
;u v
public #
LiquidTagHelperMatching &
(& '
)' (
{ 	
} 	
public #
LiquidTagHelperMatching &
(& '
string' -
name. 2
,2 3
string4 :
assemblyName; G
,G H
IEnumerableI T
<T U%
TagMatchingRuleDescriptorU n
>n o
tagMatchingRules	p Ä
)
Ä Å
{ 	
Name 
= 
name 
; 
AssemblyName 
= 
assemblyName '
;' (
_rules 
= 
tagMatchingRules %
.% &
ToArray& -
(- .
). /
;/ 0
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
=$ %
String& ,
., -
Empty- 2
;2 3
public 
string 
AssemblyName "
{# $
get% (
;( )
}* +
=, -
String. 4
.4 5
Empty5 :
;: ;
public 
bool 
Match 
( 
string  
helper! '
,' (
IEnumerable) 4
<4 5
string5 ;
>; <
	arguments= F
)F G
{ 	
return 
_rules 
. 
Any 
( 
rule "
=># %
{ 
if!! 
(!! 
rule!! 
.!! 
TagName!!  
!=!!! #
$str!!$ '
&&!!( *
!!!+ ,
String!!, 2
.!!2 3
Equals!!3 9
(!!9 :
rule!!: >
.!!> ?
TagName!!? F
,!!F G
helper!!H N
,!!N O
StringComparison!!P `
.!!` a
OrdinalIgnoreCase!!a r
)!!r s
)!!s t
{"" 
return## 
false##  
;##  !
}$$ 
if'' 
('' 
!'' 
rule'' 
.'' 

Attributes'' $
.''$ %
Any''% (
(''( )
)'') *
)''* +
{(( 
return)) 
true)) 
;))  
}** 
var-- 
allRequired-- 
=--  !
rule--" &
.--& '

Attributes--' 1
.--1 2
All--2 5
(--5 6
attr--6 :
=>--; =
	arguments--> G
.--G H
Any--H K
(--K L
name--L P
=>--Q S
{.. 
if00 
(00 
String00 
.00 
Equals00 %
(00% &
name00& *
,00* +
attr00, 0
.000 1
Name001 5
,005 6
StringComparison007 G
.00G H
OrdinalIgnoreCase00H Y
)00Y Z
)00Z [
{11 
return22 
true22 #
;22# $
}33 
name66 
=66 
name66 
.66  
Replace66  '
(66' (
$char66( +
,66+ ,
$char66- 0
)660 1
;661 2
if88 
(88 
attr88 
.88 
Name88 !
.88! "

StartsWith88" ,
(88, -
	AspPrefix88- 6
,886 7
StringComparison888 H
.88H I
Ordinal88I P
)88P Q
&&88R T
String88U [
.88[ \
Equals88\ b
(88b c
name88c g
,88g h
attr88i m
.88m n
Name88n r
.88r s
	Substring88s |
(88| }
	AspPrefix	88} Ü
.
88Ü á
Length
88á ç
)
88ç é
,
88é è
StringComparison
88ê †
.
88† °
OrdinalIgnoreCase
88° ≤
)
88≤ ≥
)
88≥ ¥
{99 
return:: 
true:: #
;::# $
};; 
if== 
(== 
String== 
.== 
Equals== %
(==% &
name==& *
,==* +
attr==, 0
.==0 1
Name==1 5
,==5 6
StringComparison==7 G
.==G H
OrdinalIgnoreCase==H Y
)==Y Z
)==Z [
{>> 
return?? 
true?? #
;??# $
}@@ 
returnBB 
falseBB  
;BB  !
}CC 
)CC 
)CC 
;CC 
ifEE 
(EE 
allRequiredEE 
)EE  
{FF 
returnGG 
trueGG 
;GG  
}HH 
returnJJ 
falseJJ 
;JJ 
}KK 
)KK 
;KK 
}LL 	
}MM 
}NN  õ
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\TagHelpers\RequiredAttributeParser.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /

TagHelpers/ 9
{ 
internal		 
static		 
class		 #
RequiredAttributeParser		 1
{

 
public 
static 
void !
AddRequiredAttributes 0
(0 1
string1 7
requiredAttributes8 J
,J K,
 TagMatchingRuleDescriptorBuilderL l
ruleBuilderm x
)x y
{ 	
var #
requiredAttributeParser '
=( )
new* -*
DefaultRequiredAttributeParser. L
(L M
requiredAttributesM _
)_ `
;` a#
requiredAttributeParser #
.# $!
AddRequiredAttributes$ 9
(9 :
ruleBuilder: E
)E F
;F G
} 	
private 
class *
DefaultRequiredAttributeParser 4
{ 	
private 
const 
char +
RequiredAttributeWildcardSuffix >
=? @
$charA D
;D E
private 
static 
readonly #
IReadOnlyDictionary$ 7
<7 8
char8 <
,< ='
RequiredAttributeDescriptor> Y
.Y Z
ValueComparisonModeZ m
>m n 
CssValueComparisons	o Ç
=
É Ñ
new 

Dictionary 
< 
char #
,# $'
RequiredAttributeDescriptor% @
.@ A
ValueComparisonModeA T
>T U
{ 
{ 
$char 
, '
RequiredAttributeDescriptor 6
.6 7
ValueComparisonMode7 J
.J K
	FullMatchK T
}U V
,V W
{ 
$char 
, '
RequiredAttributeDescriptor 6
.6 7
ValueComparisonMode7 J
.J K
PrefixMatchK V
}W X
,X Y
{ 
$char 
, '
RequiredAttributeDescriptor 6
.6 7
ValueComparisonMode7 J
.J K
SuffixMatchK V
}W X
} 
; 
private 
static 
readonly #
char$ (
[( )
]) */
#InvalidPlainAttributeNameCharacters+ N
=O P
{Q R
$charS V
,V W
$charX \
,\ ]
$char^ a
,a b,
RequiredAttributeWildcardSuffix	c Ç
}
É Ñ
;
Ñ Ö
private 
static 
readonly #
char$ (
[( )
]) *-
!InvalidCssAttributeNameCharacters+ L
=M N
(O P
newP S
[S T
]T U
{V W
$charX [
,[ \
$char] a
,a b
$charc f
,f g
$charh k
}l m
)m n
.   
Concat   
(   
CssValueComparisons   +
.  + ,
Keys  , 0
)  0 1
.!! 
ToArray!! 
(!! 
)!! 
;!! 
private## 
static## 
readonly## #
char##$ (
[##( )
]##) *.
"InvalidCssQuotelessValueCharacters##+ M
=##N O
{##P Q
$char##R U
,##U V
$char##W [
,##[ \
$char##] `
}##a b
;##b c
private%% 
int%% 
_index%% 
;%% 
private&& 
string&& 
_requiredAttributes&& .
;&&. /
public(( *
DefaultRequiredAttributeParser(( 1
(((1 2
string((2 8
requiredAttributes((9 K
)((K L
{)) 
_requiredAttributes** #
=**$ %
requiredAttributes**& 8
;**8 9
}++ 
private-- 
char-- 
Current--  
=>--! #
_requiredAttributes--$ 7
[--7 8
_index--8 >
]--> ?
;--? @
private// 
bool// 
AtEnd// 
=>// !
_index//" (
>=//) +
_requiredAttributes//, ?
.//? @
Length//@ F
;//F G
public11 
void11 !
AddRequiredAttributes11 -
(11- .,
 TagMatchingRuleDescriptorBuilder11. N
ruleBuilder11O Z
)11Z [
{22 
if33 
(33 
string33 
.33 
IsNullOrEmpty33 (
(33( )
_requiredAttributes33) <
)33< =
)33= >
{44 
return55 
;55 
}66 
var77 
descriptors77 
=77  !
new77" %
List77& *
<77* +'
RequiredAttributeDescriptor77+ F
>77F G
(77G H
)77H I
;77I J"
PassOptionalWhitespace99 &
(99& '
)99' (
;99( )
do;; 
{<< 
var== 
successfulParse== '
===( )
true==* .
;==. /
ruleBuilder>> 
.>>  
	Attribute>>  )
(>>) *
attributeBuilder>>* :
=>>>; =
{?? 
if@@ 
(@@ 
At@@ 
(@@ 
$char@@ "
)@@" #
)@@# $
{AA 
ifBB 
(BB  
!BB  !
TryParseCssSelectorBB! 4
(BB4 5
attributeBuilderBB5 E
)BBE F
)BBF G
{CC 
successfulParseDD  /
=DD0 1
falseDD2 7
;DD7 8
returnEE  &
;EE& '
}FF 
}GG 
elseHH 
{II 
ParsePlainSelectorJJ .
(JJ. /
attributeBuilderJJ/ ?
)JJ? @
;JJ@ A
}KK "
PassOptionalWhitespaceMM .
(MM. /
)MM/ 0
;MM0 1
ifOO 
(OO 
AtOO 
(OO 
$charOO "
)OO" #
)OO# $
{PP 
_indexQQ "
++QQ" $
;QQ$ %
ifSS 
(SS  
!SS  !
EnsureNotAtEndSS! /
(SS/ 0
attributeBuilderSS0 @
)SS@ A
)SSA B
{TT 
successfulParseUU  /
=UU0 1
falseUU2 7
;UU7 8
returnVV  &
;VV& '
}WW 
}XX 
elseYY 
ifYY 
(YY  !
!YY! "
AtEndYY" '
)YY' (
{ZZ 
successfulParse]] +
=]], -
false]]. 3
;]]3 4
return^^ "
;^^" #
}__ "
PassOptionalWhitespaceaa .
(aa. /
)aa/ 0
;aa0 1
}bb 
)bb 
;bb 
ifdd 
(dd 
!dd 
successfulParsedd (
)dd( )
{ee 
breakff 
;ff 
}gg 
}hh 
whileii 
(ii 
!ii 
AtEndii 
)ii 
;ii 
}jj 
privatell 
voidll 
ParsePlainSelectorll +
(ll+ ,.
"RequiredAttributeDescriptorBuilderll, N
attributeBuilderllO _
)ll_ `
{mm 
varnn 
nameEndIndexnn  
=nn! "
_requiredAttributesnn# 6
.nn6 7

IndexOfAnynn7 A
(nnA B/
#InvalidPlainAttributeNameCharactersnnB e
,nne f
_indexnng m
)nnm n
;nnn o
stringoo 
attributeNameoo $
;oo$ %
varqq 
nameComparisonqq "
=qq# $'
RequiredAttributeDescriptorqq% @
.qq@ A
NameComparisonModeqqA S
.qqS T
	FullMatchqqT ]
;qq] ^
ifrr 
(rr 
nameEndIndexrr  
==rr! #
-rr$ %
$numrr% &
)rr& '
{ss 
attributeNamett !
=tt" #
_requiredAttributestt$ 7
.tt7 8
	Substringtt8 A
(ttA B
_indexttB H
)ttH I
;ttI J
_indexuu 
=uu 
_requiredAttributesuu 0
.uu0 1
Lengthuu1 7
;uu7 8
}vv 
elseww 
{xx 
attributeNameyy !
=yy" #
_requiredAttributesyy$ 7
.yy7 8
	Substringyy8 A
(yyA B
_indexyyB H
,yyH I
nameEndIndexyyJ V
-yyW X
_indexyyY _
)yy_ `
;yy` a
_indexzz 
=zz 
nameEndIndexzz )
;zz) *
if|| 
(|| 
_requiredAttributes|| +
[||+ ,
nameEndIndex||, 8
]||8 9
==||: <+
RequiredAttributeWildcardSuffix||= \
)||\ ]
{}} 
nameComparison~~ &
=~~' ('
RequiredAttributeDescriptor~~) D
.~~D E
NameComparisonMode~~E W
.~~W X
PrefixMatch~~X c
;~~c d
_index
ÅÅ 
++
ÅÅ  
;
ÅÅ  !
}
ÇÇ 
}
ÉÉ 
attributeBuilder
ÖÖ  
.
ÖÖ  !
Name
ÖÖ! %
=
ÖÖ& '
attributeName
ÖÖ( 5
;
ÖÖ5 6
attributeBuilder
ÜÜ  
.
ÜÜ  ! 
NameComparisonMode
ÜÜ! 3
=
ÜÜ4 5
nameComparison
ÜÜ6 D
;
ÜÜD E
}
áá 
private
ââ 
void
ââ #
ParseCssAttributeName
ââ .
(
ââ. /0
"RequiredAttributeDescriptorBuilder
ââ/ Q
builder
ââR Y
)
ââY Z
{
ää 
var
ãã 
nameStartIndex
ãã "
=
ãã# $
_index
ãã% +
;
ãã+ ,
var
åå 
nameEndIndex
åå  
=
åå! "!
_requiredAttributes
åå# 6
.
åå6 7

IndexOfAny
åå7 A
(
ååA B/
!InvalidCssAttributeNameCharacters
ååB c
,
ååc d
_index
ååe k
)
ååk l
;
åål m
nameEndIndex
çç 
=
çç 
nameEndIndex
çç +
==
çç, .
-
çç/ 0
$num
çç0 1
?
çç2 3!
_requiredAttributes
çç4 G
.
ççG H
Length
ççH N
:
ççO P
nameEndIndex
ççQ ]
;
çç] ^
_index
éé 
=
éé 
nameEndIndex
éé %
;
éé% &
var
êê 
attributeName
êê !
=
êê" #!
_requiredAttributes
êê$ 7
.
êê7 8
	Substring
êê8 A
(
êêA B
nameStartIndex
êêB P
,
êêP Q
nameEndIndex
êêR ^
-
êê_ `
nameStartIndex
êêa o
)
êêo p
;
êêp q
builder
íí 
.
íí 
Name
íí 
=
íí 
attributeName
íí ,
;
íí, -
}
ìì 
private
ïï 
bool
ïï (
TryParseCssValueComparison
ïï 3
(
ïï3 40
"RequiredAttributeDescriptorBuilder
ïï4 V
builder
ïïW ^
,
ïï^ _
out
ïï` c)
RequiredAttributeDescriptor
ïïd 
.ïï Ä#
ValueComparisonModeïïÄ ì
valueComparisonïïî £
)ïï£ §
{
ññ 
Debug
óó 
.
óó 
Assert
óó 
(
óó 
!
óó 
AtEnd
óó #
)
óó# $
;
óó$ %
if
ôô 
(
ôô !
CssValueComparisons
ôô '
.
ôô' (
TryGetValue
ôô( 3
(
ôô3 4
Current
ôô4 ;
,
ôô; <
out
ôô= @
valueComparison
ôôA P
)
ôôP Q
)
ôôQ R
{
öö 
var
õõ 
op
õõ 
=
õõ 
Current
õõ $
;
õõ$ %
_index
úú 
++
úú 
;
úú 
if
ûû 
(
ûû 
op
ûû 
!=
ûû 
$char
ûû !
&&
ûû" $
At
ûû% '
(
ûû' (
$char
ûû( +
)
ûû+ ,
)
ûû, -
{
üü 
_index
°° 
++
°°  
;
°°  !
}
¢¢ 
else
££ 
if
££ 
(
££ 
op
££ 
!=
££  "
$char
££# &
)
££& '
{
§§ 
return
®® 
false
®® $
;
®®$ %
}
©© 
}
™™ 
else
´´ 
if
´´ 
(
´´ 
!
´´ 
At
´´ 
(
´´ 
$char
´´  
)
´´  !
)
´´! "
{
¨¨ 
return
∞∞ 
false
∞∞  
;
∞∞  !
}
±± 
builder
≥≥ 
.
≥≥ !
ValueComparisonMode
≥≥ +
=
≥≥, -
valueComparison
≥≥. =
;
≥≥= >
return
µµ 
true
µµ 
;
µµ 
}
∂∂ 
private
∏∏ 
bool
∏∏ 
TryParseCssValue
∏∏ )
(
∏∏) *0
"RequiredAttributeDescriptorBuilder
∏∏* L
builder
∏∏M T
)
∏∏T U
{
ππ 
int
∫∫ 

valueStart
∫∫ 
;
∫∫ 
int
ªª 
valueEnd
ªª 
;
ªª 
if
ºº 
(
ºº 
At
ºº 
(
ºº 
$char
ºº 
)
ºº 
||
ºº 
At
ºº  "
(
ºº" #
$char
ºº# &
)
ºº& '
)
ºº' (
{
ΩΩ 
var
ææ 
quote
ææ 
=
ææ 
Current
ææ  '
;
ææ' (
_index
¡¡ 
++
¡¡ 
;
¡¡ 

valueStart
√√ 
=
√√  
_index
√√! '
;
√√' (
valueEnd
ƒƒ 
=
ƒƒ !
_requiredAttributes
ƒƒ 2
.
ƒƒ2 3
IndexOf
ƒƒ3 :
(
ƒƒ: ;
quote
ƒƒ; @
,
ƒƒ@ A
_index
ƒƒB H
)
ƒƒH I
;
ƒƒI J
if
≈≈ 
(
≈≈ 
valueEnd
≈≈  
==
≈≈! #
-
≈≈$ %
$num
≈≈% &
)
≈≈& '
{
∆∆ 
return
   
false
   $
;
  $ %
}
ÀÀ 
_index
ÃÃ 
=
ÃÃ 
valueEnd
ÃÃ %
+
ÃÃ& '
$num
ÃÃ( )
;
ÃÃ) *
}
ÕÕ 
else
ŒŒ 
{
œœ 

valueStart
–– 
=
––  
_index
––! '
;
––' (
var
—— 
valueEndIndex
—— %
=
——& '!
_requiredAttributes
——( ;
.
——; <

IndexOfAny
——< F
(
——F G0
"InvalidCssQuotelessValueCharacters
——G i
,
——i j
_index
——k q
)
——q r
;
——r s
valueEnd
““ 
=
““ 
valueEndIndex
““ ,
==
““- /
-
““0 1
$num
““1 2
?
““3 4!
_requiredAttributes
““5 H
.
““H I
Length
““I O
:
““P Q
valueEndIndex
““R _
;
““_ `
_index
”” 
=
”” 
valueEnd
”” %
;
””% &
}
‘‘ 
var
÷÷ 
value
÷÷ 
=
÷÷ !
_requiredAttributes
÷÷ /
.
÷÷/ 0
	Substring
÷÷0 9
(
÷÷9 :

valueStart
÷÷: D
,
÷÷D E
valueEnd
÷÷F N
-
÷÷O P

valueStart
÷÷Q [
)
÷÷[ \
;
÷÷\ ]
builder
ÿÿ 
.
ÿÿ 
Value
ÿÿ 
=
ÿÿ 
value
ÿÿ  %
;
ÿÿ% &
return
⁄⁄ 
true
⁄⁄ 
;
⁄⁄ 
}
€€ 
private
›› 
bool
›› !
TryParseCssSelector
›› ,
(
››, -0
"RequiredAttributeDescriptorBuilder
››- O
attributeBuilder
››P `
)
››` a
{
ﬁﬁ 
Debug
ﬂﬂ 
.
ﬂﬂ 
Assert
ﬂﬂ 
(
ﬂﬂ 
At
ﬂﬂ 
(
ﬂﬂ  
$char
ﬂﬂ  #
)
ﬂﬂ# $
)
ﬂﬂ$ %
;
ﬂﬂ% &
_index
‚‚ 
++
‚‚ 
;
‚‚ $
PassOptionalWhitespace
„„ &
(
„„& '
)
„„' (
;
„„( )#
ParseCssAttributeName
ÂÂ %
(
ÂÂ% &
attributeBuilder
ÂÂ& 6
)
ÂÂ6 7
;
ÂÂ7 8$
PassOptionalWhitespace
ÁÁ &
(
ÁÁ& '
)
ÁÁ' (
;
ÁÁ( )
if
ÈÈ 
(
ÈÈ 
!
ÈÈ 
EnsureNotAtEnd
ÈÈ #
(
ÈÈ# $
attributeBuilder
ÈÈ$ 4
)
ÈÈ4 5
)
ÈÈ5 6
{
ÍÍ 
return
ÎÎ 
false
ÎÎ  
;
ÎÎ  !
}
ÏÏ 
if
ÓÓ 
(
ÓÓ 
!
ÓÓ (
TryParseCssValueComparison
ÓÓ /
(
ÓÓ/ 0
attributeBuilder
ÓÓ0 @
,
ÓÓ@ A
out
ÓÓB E)
RequiredAttributeDescriptor
ÓÓF a
.
ÓÓa b!
ValueComparisonMode
ÓÓb u
valueComparisonÓÓv Ö
)ÓÓÖ Ü
)ÓÓÜ á
{
ÔÔ 
return
 
false
  
;
  !
}
ÒÒ $
PassOptionalWhitespace
ÛÛ &
(
ÛÛ& '
)
ÛÛ' (
;
ÛÛ( )
if
ıı 
(
ıı 
!
ıı 
EnsureNotAtEnd
ıı #
(
ıı# $
attributeBuilder
ıı$ 4
)
ıı4 5
)
ıı5 6
{
ˆˆ 
return
˜˜ 
false
˜˜  
;
˜˜  !
}
¯¯ 
if
˙˙ 
(
˙˙ 
valueComparison
˙˙ #
!=
˙˙$ &)
RequiredAttributeDescriptor
˙˙' B
.
˙˙B C!
ValueComparisonMode
˙˙C V
.
˙˙V W
None
˙˙W [
&&
˙˙\ ^
!
˙˙_ `
TryParseCssValue
˙˙` p
(
˙˙p q
attributeBuilder˙˙q Å
)˙˙Å Ç
)˙˙Ç É
{
˚˚ 
return
¸¸ 
false
¸¸  
;
¸¸  !
}
˝˝ $
PassOptionalWhitespace
ˇˇ &
(
ˇˇ& '
)
ˇˇ' (
;
ˇˇ( )
if
ÅÅ 
(
ÅÅ 
At
ÅÅ 
(
ÅÅ 
$char
ÅÅ 
)
ÅÅ 
)
ÅÅ 
{
ÇÇ 
_index
ÑÑ 
++
ÑÑ 
;
ÑÑ 
return
ÖÖ 
true
ÖÖ 
;
ÖÖ  
}
ÜÜ 
else
áá 
if
áá 
(
áá 
AtEnd
áá 
)
áá 
{
àà 
}
ãã 
else
åå 
{
çç 
}
êê 
return
íí 
false
íí 
;
íí 
}
ìì 
private
ïï 
bool
ïï 
EnsureNotAtEnd
ïï '
(
ïï' (0
"RequiredAttributeDescriptorBuilder
ïï( J
builder
ïïK R
)
ïïR S
{
ññ 
if
óó 
(
óó 
AtEnd
óó 
)
óó 
{
òò 
return
úú 
false
úú  
;
úú  !
}
ùù 
return
üü 
true
üü 
;
üü 
}
†† 
private
¢¢ 
bool
¢¢ 
At
¢¢ 
(
¢¢ 
char
¢¢  
c
¢¢! "
)
¢¢" #
{
££ 
return
§§ 
!
§§ 
AtEnd
§§ 
&&
§§  
Current
§§! (
==
§§) +
c
§§, -
;
§§- .
}
•• 
private
ßß 
void
ßß $
PassOptionalWhitespace
ßß /
(
ßß/ 0
)
ßß0 1
{
®® 
while
©© 
(
©© 
!
©© 
AtEnd
©© 
&&
©©  
(
©©! "
Current
©©" )
==
©©* ,
$char
©©- 0
||
©©1 3
Current
©©4 ;
==
©©< >
$char
©©? C
)
©©C D
)
©©D E
{
™™ 
_index
´´ 
++
´´ 
;
´´ 
}
¨¨ 
}
≠≠ 
}
ÆÆ 	
}
ØØ 
}∞∞ Ä
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\AddAlternatesTag.cs
	namespace

 	
OrchardCore


 
.

 
DisplayManagement

 '
.

' (
Liquid

( .
.

. /
Tags

/ 3
{ 
public 

class 
AddAlternatesTag !
:" #"
ExpressionArgumentsTag$ :
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
var 

alternates 
=  
	arguments! *
[* +
$str+ 7
]7 8
.8 9
Or9 ;
(; <
	arguments< E
.E F
AtF H
(H I
$numI J
)J K
)K L
;L M
if 
( 

alternates 
. 
Type #
==$ &
FluidValues' 2
.2 3
String3 9
)9 :
{ 
var 
values 
=  

alternates! +
.+ ,
ToStringValue, 9
(9 :
): ;
.; <
Split< A
(A B
$charB E
,E F
StringSplitOptionsG Y
.Y Z
RemoveEmptyEntriesZ l
)l m
;m n
foreach 
( 
var  
value! &
in' )
values* 0
)0 1
{ 
shape 
. 
Metadata &
.& '

Alternates' 1
.1 2
Add2 5
(5 6
value6 ;
); <
;< =
} 
}   
else!! 
if!! 
(!! 

alternates!! #
.!!# $
Type!!$ (
==!!) +
FluidValues!!, 7
.!!7 8
Array!!8 =
)!!= >
{"" 
foreach## 
(## 
var##  
value##! &
in##' )

alternates##* 4
.##4 5
	Enumerate##5 >
(##> ?
)##? @
)##@ A
{$$ 
shape%% 
.%% 
Metadata%% &
.%%& '

Alternates%%' 1
.%%1 2
Add%%2 5
(%%5 6
value%%6 ;
.%%; <
ToStringValue%%< I
(%%I J
)%%J K
)%%K L
;%%L M
}&& 
}'' 
}(( 
return** 

Completion** 
.** 
Normal** $
;**$ %
}++ 	
},, 
}-- ”
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\AddAttributesTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
AddAttributesTag

 !
:

" #"
ExpressionArgumentsTag

$ :
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
foreach 
( 
var 
name !
in" $
	arguments% .
.. /
Names/ 4
)4 5
{ 
shape 
. 

Attributes $
[$ %
name% )
.) *
Replace* 1
(1 2
$char2 5
,5 6
$char7 :
): ;
]; <
== >
	arguments? H
[H I
nameI M
]M N
.N O
ToStringValueO \
(\ ]
)] ^
;^ _
} 
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} õ
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\AddClassesTag.cs
	namespace

 	
OrchardCore


 
.

 
DisplayManagement

 '
.

' (
Liquid

( .
.

. /
Tags

/ 3
{ 
public 

class 
AddClassesTag 
:  "
ExpressionArgumentsTag! 7
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
var 
classes 
= 
	arguments '
[' (
$str( 1
]1 2
.2 3
Or3 5
(5 6
	arguments6 ?
.? @
At@ B
(B C
$numC D
)D E
)E F
;F G
if 
( 
classes 
. 
Type  
==! #
FluidValues$ /
./ 0
String0 6
)6 7
{ 
var 
values 
=  
classes! (
.( )
ToStringValue) 6
(6 7
)7 8
.8 9
Split9 >
(> ?
$char? B
,B C
StringSplitOptionsD V
.V W
RemoveEmptyEntriesW i
)i j
;j k
foreach 
( 
var  
value! &
in' )
values* 0
)0 1
{ 
shape 
. 
Classes %
.% &
Add& )
() *
value* /
)/ 0
;0 1
} 
}   
else!! 
if!! 
(!! 
classes!!  
.!!  !
Type!!! %
==!!& (
FluidValues!!) 4
.!!4 5
Array!!5 :
)!!: ;
{"" 
foreach## 
(## 
var##  
value##! &
in##' )
classes##* 1
.##1 2
	Enumerate##2 ;
(##; <
)##< =
)##= >
{$$ 
shape%% 
.%% 
Classes%% %
.%%% &
Add%%& )
(%%) *
value%%* /
.%%/ 0
ToStringValue%%0 =
(%%= >
)%%> ?
)%%? @
;%%@ A
}&& 
}'' 
}(( 
return** 

Completion** 
.** 
Normal** $
;**$ %
}++ 	
},, 
}-- ¯
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\AddWrappersTag.cs
	namespace

 	
OrchardCore


 
.

 
DisplayManagement

 '
.

' (
Liquid

( .
.

. /
Tags

/ 3
{ 
public 

class 
AddWrappersTag 
:  !"
ExpressionArgumentsTag" 8
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
var 

alternates 
=  
	arguments! *
[* +
$str+ 5
]5 6
.6 7
Or7 9
(9 :
	arguments: C
.C D
AtD F
(F G
$numG H
)H I
)I J
;J K
if 
( 

alternates 
. 
Type #
==$ &
FluidValues' 2
.2 3
String3 9
)9 :
{ 
var 
values 
=  

alternates! +
.+ ,
ToStringValue, 9
(9 :
): ;
.; <
Split< A
(A B
$charB E
,E F
StringSplitOptionsG Y
.Y Z
RemoveEmptyEntriesZ l
)l m
;m n
foreach 
( 
var  
value! &
in' )
values* 0
)0 1
{ 
shape 
. 
Metadata &
.& '
Wrappers' /
./ 0
Add0 3
(3 4
value4 9
)9 :
;: ;
} 
}   
else!! 
if!! 
(!! 

alternates!! #
.!!# $
Type!!$ (
==!!) +
FluidValues!!, 7
.!!7 8
Array!!8 =
)!!= >
{"" 
foreach## 
(## 
var##  
value##! &
in##' )

alternates##* 4
.##4 5
	Enumerate##5 >
(##> ?
)##? @
)##@ A
{$$ 
shape%% 
.%% 
Metadata%% &
.%%& '
Wrappers%%' /
.%%/ 0
Add%%0 3
(%%3 4
value%%4 9
.%%9 :
ToStringValue%%: G
(%%G H
)%%H I
)%%I J
;%%J K
}&& 
}'' 
}(( 
return** 

Completion** 
.** 
Normal** $
;**$ %
}++ 	
},, 
}-- ∂
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\AntiForgeryTokenTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{ 
public 

class 
AntiForgeryTokenTag $
:% &
	SimpleTag' 0
{ 
public 

Expression 
Shape 
{  !
get" %
;% &
}' (
public 
override 
	ValueTask !
<! "

Completion" ,
>, -
WriteToAsync. :
(: ;

TextWriter; E
writerF L
,L M
TextEncoderN Y
encoderZ a
,a b
TemplateContextc r
contexts z
)z {
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesG O
)O P
)P Q
{ 
throw 
new 
ArgumentException +
(+ ,
$str, `
)` a
;a b
} 
var 
antiforgery 
= 
( 
(  
IServiceProvider  0
)0 1
services1 9
)9 :
.: ;
GetRequiredService; M
<M N
IAntiforgeryN Z
>Z [
([ \
)\ ]
;] ^
var 
httpContextAccessor #
=$ %
(& '
(' (
IServiceProvider( 8
)8 9
services9 A
)A B
.B C
GetRequiredServiceC U
<U V 
IHttpContextAccessorV j
>j k
(k l
)l m
;m n
var 
httpContext 
= 
httpContextAccessor 1
.1 2
HttpContext2 =
;= >
var 
tokenSet 
= 
antiforgery &
.& '
GetAndStoreTokens' 8
(8 9
httpContext9 D
)D E
;E F
writer 
. 
Write 
( 
$str )
)) *
;* +
encoder   
.   
Encode   
(   
writer   !
,  ! "
tokenSet  # +
.  + ,
FormFieldName  , 9
)  9 :
;  : ;
writer!! 
.!! 
Write!! 
(!! 
$str!! 6
)!!6 7
;!!7 8
encoder"" 
."" 
Encode"" 
("" 
writer"" !
,""! "
tokenSet""# +
.""+ ,
RequestToken"", 8
)""8 9
;""9 :
writer## 
.## 
Write## 
(## 
$str##  
)##  !
;##! "
return%% 
new%% 
	ValueTask%%  
<%%  !

Completion%%! +
>%%+ ,
(%%, -

Completion%%- 7
.%%7 8
Normal%%8 >
)%%> ?
;%%? @
}&& 	
}'' 
}(( ≈
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ClearAlternatesTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
ClearAlternatesTag

 #
:

$ %
ExpressionTag

& 3
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
)
ó ò
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
&&, .
shape/ 4
.4 5
Metadata5 =
.= >

Alternates> H
.H I
CountI N
>O P
$numQ R
)R S
{ 
shape 
. 
Metadata 
. 

Alternates )
.) *
Clear* /
(/ 0
)0 1
;1 2
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} ˚
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ClearAttributesTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
ClearAttributesTag

 #
:

$ %
ExpressionTag

& 3
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
)
ó ò
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
&&, .
shape/ 4
.4 5

Attributes5 ?
.? @
Count@ E
>F G
$numH I
)I J
{ 
shape 
. 

Attributes  
.  !
Clear! &
(& '
)' (
;( )
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} Ô
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ClearClassesTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
ClearClassesTag

  
:

! "
ExpressionTag

# 0
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
)
ó ò
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
&&, .
shape/ 4
.4 5
Classes5 <
.< =
Count= B
>C D
$numE F
)F G
{ 
shape 
. 
Classes 
. 
Clear #
(# $
)$ %
;% &
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} ä
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ClearWrappersTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
ClearWrappers

 
:

  
ExpressionTag

! .
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
)
ó ò
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
shape 
. 
Metadata 
. 
Wrappers '
.' (
Clear( -
(- .
). /
;/ 0
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} ˚X
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\HelperTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{ 
public 

class 
	HelperTag 
: 
ArgumentsTag )
{ 
public 
override 
	ValueTask !
<! "

Completion" ,
>, -
WriteToAsync. :
(: ;

TextWriter; E
writerF L
,L M
TextEncoderN Y
encoderZ a
,a b
TemplateContextc r
contexts z
,z {
FilterArgument	| ä
[
ä ã
]
ã å
	arguments
ç ñ
)
ñ ó
{ 	
return 
new 
HelperStatement &
(& '
new' *
ArgumentsExpression+ >
(> ?
	arguments? H
)H I
)I J
.J K
WriteToAsyncK W
(W X
writerX ^
,^ _
encoder` g
,g h
contexti p
)p q
;q r
} 	
} 
public 

class 
HelperBlock 
: 
ArgumentsBlock -
{ 
public 
override 
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
,z {
FilterArgument	| ä
[
ä ã
]
ã å
	arguments
ç ñ
,
ñ ó
List
ò ú
<
ú ù
	Statement
ù ¶
>
¶ ß

statements
® ≤
)
≤ ≥
{ 	
return 
new 
HelperStatement &
(& '
new' *
ArgumentsExpression+ >
(> ?
	arguments? H
)H I
,I J
nullK O
,O P

statementsQ [
)[ \
.\ ]
WriteToAsync] i
(i j
writerj p
,p q
encoderr y
,y z
context	{ Ç
)
Ç É
;
É Ñ
} 	
} 
public   

class   
HelperStatement    
:  ! "
TagStatement  # /
{!! 
private"" $
LiquidTagHelperActivator"" (

_activator"") 3
;""3 4
private## 
readonly## 
ArgumentsExpression## ,

_arguments##- 7
;##7 8
private$$ 
readonly$$ 
string$$ 
_helper$$  '
;$$' (
public&& 
HelperStatement&& 
(&& 
ArgumentsExpression&& 2
	arguments&&3 <
,&&< =
string&&> D
helper&&E K
=&&L M
null&&N R
,&&R S
List&&T X
<&&X Y
	Statement&&Y b
>&&b c

statements&&d n
=&&o p
null&&q u
)&&u v
:&&w x
base&&y }
(&&} ~

statements	&&~ à
)
&&à â
{'' 	

_arguments(( 
=(( 
	arguments(( "
;((" #
_helper)) 
=)) 
helper)) 
;)) 
}** 	
public,, 
override,, 
async,, 
	ValueTask,, '
<,,' (

Completion,,( 2
>,,2 3
WriteToAsync,,4 @
(,,@ A

TextWriter,,A K
writer,,L R
,,,R S
TextEncoder,,T _
encoder,,` g
,,,g h
TemplateContext,,i x
context	,,y Ä
)
,,Ä Å
{-- 	
if.. 
(.. 
!.. 
context.. 
... 
AmbientValues.. &
...& '
TryGetValue..' 2
(..2 3
$str..3 =
,..= >
out..? B
var..C F
servicesValue..G T
)..T U
)..U V
{// 
throw00 
new00 
ArgumentException00 +
(00+ ,
$str00, V
)00V W
;00W X
}11 
var33 
services33 
=33 
servicesValue33 (
as33) +
IServiceProvider33, <
;33< =
var55 
viewContextAccessor55 #
=55$ %
services55& .
.55. /
GetRequiredService55/ A
<55A B
ViewContextAccessor55B U
>55U V
(55V W
)55W X
;55X Y
var66 
viewContext66 
=66 
viewContextAccessor66 1
.661 2
ViewContext662 =
;66= >
var88 
	arguments88 
=88 
(88 
FilterArguments88 ,
)88, -
(88- .
await88. 3

_arguments884 >
.88> ?
EvaluateAsync88? L
(88L M
context88M T
)88T U
)88U V
.88V W
ToObjectValue88W d
(88d e
)88e f
;88f g
var99 
helper99 
=99 
_helper99  
??99! #
	arguments99$ -
[99- .
$str99. ;
]99; <
.99< =
Or99= ?
(99? @
	arguments99@ I
.99I J
At99J L
(99L M
$num99M N
)99N O
)99O P
.99P Q
ToStringValue99Q ^
(99^ _
)99_ `
;99` a
var;; 
factory;; 
=;; 
services;; "
.;;" #
GetRequiredService;;# 5
<;;5 6"
LiquidTagHelperFactory;;6 L
>;;L M
(;;M N
);;N O
;;;O P
if>> 
(>> 

_activator>> 
==>> 
null>> "
)>>" #
{?? 
lock@@ 
(@@ 
this@@ 
)@@ 
{AA 
ifBB 
(BB 

_activatorBB "
==BB# %
nullBB& *
)BB* +
{CC 

_activatorDD "
=DD# $
factoryDD% ,
.DD, -
GetActivatorDD- 9
(DD9 :
helperDD: @
,DD@ A
	argumentsDDB K
.DDK L
NamesDDL Q
)DDQ R
;DDR S
}EE 
}FF 
}GG 
ifII 
(II 

_activatorII 
==II $
LiquidTagHelperActivatorII 6
.II6 7
NoneII7 ;
)II; <
{JJ 
returnKK 

CompletionKK !
.KK! "
NormalKK" (
;KK( )
}LL 
varNN 
	tagHelperNN 
=NN 
factoryNN #
.NN# $
CreateTagHelperNN$ 3
(NN3 4

_activatorNN4 >
,NN> ?
viewContextNN@ K
,NNK L
	argumentsOO 
,OO 
outOO 
varOO "
contextAttributesOO# 4
,OO4 5
outOO6 9
varOO: =
outputAttributesOO> N
)OON O
;OOO P'
ViewBufferTextWriterContentQQ '
contentQQ( /
=QQ0 1
nullQQ2 6
;QQ6 7
ifSS 
(SS 

StatementsSS 
!=SS 
nullSS "
&&SS# %

StatementsSS& 0
.SS0 1
CountSS1 6
>SS7 8
$numSS9 :
)SS: ;
{TT 
contentUU 
=UU 
newUU '
ViewBufferTextWriterContentUU 9
(UU9 :
)UU: ;
;UU; <
varWW 

completionWW 
=WW  

CompletionWW! +
.WW+ ,
BreakWW, 1
;WW1 2
forYY 
(YY 
varYY 
indexYY 
=YY  
$numYY! "
;YY" #
indexYY$ )
<YY* +

StatementsYY, 6
.YY6 7
CountYY7 <
;YY< =
indexYY> C
++YYC E
)YYE F
{ZZ 

completion[[ 
=[[  
await[[! &

Statements[[' 1
[[[1 2
index[[2 7
][[7 8
.[[8 9
WriteToAsync[[9 E
([[E F
content[[F M
,[[M N
encoder[[O V
,[[V W
context[[X _
)[[_ `
;[[` a
if]] 
(]] 

completion]] "
!=]]# %

Completion]]& 0
.]]0 1
Normal]]1 7
)]]7 8
{^^ 
return__ 

completion__ )
;__) *
}`` 
}aa 
}bb 
vardd 
tagHelperContextdd  
=dd! "
newdd# &
TagHelperContextdd' 7
(dd7 8
contextAttributesdd8 I
,ddI J
newddK N

DictionaryddO Y
<ddY Z
objectddZ `
,dd` a
objectddb h
>ddh i
(ddi j
)ddj k
,ddk l
Guidddm q
.ddq r
NewGuidddr y
(ddy z
)ddz {
.dd{ |
ToString	dd| Ñ
(
ddÑ Ö
$str
ddÖ à
)
ddà â
)
ddâ ä
;
ddä ã
TagHelperOutputff 
tagHelperOutputff +
=ff, -
nullff. 2
;ff2 3
ifhh 
(hh 
contenthh 
!=hh 
nullhh 
)hh  
{ii 
tagHelperOutputjj 
=jj  !
newjj" %
TagHelperOutputjj& 5
(jj5 6
helperkk 
,kk 
outputAttributesll $
,ll$ %
(ll& '
_ll' (
,ll( )
ell* +
)ll+ ,
=>ll- /
Taskll0 4
.ll4 5

FromResultll5 ?
(ll? @
newll@ C#
DefaultTagHelperContentllD [
(ll[ \
)ll\ ]
.ll] ^

AppendHtmlll^ h
(llh i
contentlli p
)llp q
)llq r
)mm 
;mm 
tagHelperOutputoo 
.oo  
Contentoo  '
.oo' (

AppendHtmloo( 2
(oo2 3
contentoo3 :
)oo: ;
;oo; <
}pp 
elseqq 
{rr 
tagHelperOutputss 
=ss  !
newss" %
TagHelperOutputss& 5
(ss5 6
helpertt 
,tt 
outputAttributesuu $
,uu$ %
(uu& '
_uu' (
,uu( )
euu* +
)uu+ ,
=>uu- /
Taskuu0 4
.uu4 5

FromResultuu5 ?
<uu? @
TagHelperContentuu@ P
>uuP Q
(uuQ R
newuuR U#
DefaultTagHelperContentuuV m
(uum n
)uun o
)uuo p
)vv 
;vv 
}ww 
awaityy 
	tagHelperyy 
.yy 
ProcessAsyncyy (
(yy( )
tagHelperContextyy) 9
,yy9 :
tagHelperOutputyy; J
)yyJ K
;yyK L
tagHelperOutput{{ 
.{{ 
WriteTo{{ #
({{# $
writer{{$ *
,{{* +
({{, -
HtmlEncoder{{- 8
){{8 9
encoder{{9 @
){{@ A
;{{A B
return}} 

Completion}} 
.}} 
Normal}} $
;}}$ %
}~~ 	
} 
}ÄÄ Ω
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\HttpContextAddItemTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{ 
public 

class !
HttpContextAddItemTag &
:' (
ArgumentsTag) 5
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å
FilterArgument
Ç ê
[
ê ë
]
ë í
args
ì ó
)
ó ò
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesValueG T
)T U
)U V
{ 
throw 
new 
ArgumentException +
(+ ,
$str, V
)V W
;W X
} 
var 
services 
= 
servicesValue (
as) +
IServiceProvider, <
;< =
var 
httpContext 
= 
services &
.& '
GetRequiredService' 9
<9 : 
IHttpContextAccessor: N
>N O
(O P
)P Q
?Q R
.R S
HttpContextS ^
;^ _
if 
( 
httpContext 
!= 
null #
)# $
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
foreach 
( 
var 
name !
in" $
	arguments% .
.. /
Names/ 4
)4 5
{   
httpContext!! 
.!!  
Items!!  %
[!!% &
name!!& *
]!!* +
=!!, -
	arguments!!. 7
[!!7 8
name!!8 <
]!!< =
.!!= >
ToObjectValue!!> K
(!!K L
)!!L M
;!!M N
}"" 
}## 
return$$ 

Completion$$ 
.$$ 
Normal$$ $
;$$$ %
}%% 	
}&& 
}'' –
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\HttpContextRemoveItemTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{ 
public 

class $
HttpContextRemoveItemTag )
:* +
ArgumentsTag, 8
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å
FilterArgument
Ç ê
[
ê ë
]
ë í
args
ì ó
)
ó ò
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesValueG T
)T U
)U V
{ 
throw 
new 
ArgumentException +
(+ ,
$str, V
)V W
;W X
} 
var 
services 
= 
servicesValue (
as) +
IServiceProvider, <
;< =
var 
httpContext 
= 
services &
.& '
GetRequiredService' 9
<9 : 
IHttpContextAccessor: N
>N O
(O P
)P Q
?Q R
.R S
HttpContextS ^
;^ _
if 
( 
httpContext 
!= 
null #
)# $
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
var 
itemKey 
= 
	arguments '
[' (
$str( .
]. /
./ 0
Or0 2
(2 3
	arguments3 <
.< =
At= ?
(? @
$num@ A
)A B
)B C
.C D
ToStringValueD Q
(Q R
)R S
;S T
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
itemKey* 1
)1 2
)2 3
{   
httpContext!! 
.!!  
Items!!  %
.!!% &
Remove!!& ,
(!!, -
itemKey!!- 4
)!!4 5
;!!5 6
}"" 
}$$ 
return%% 

Completion%% 
.%% 
Normal%% $
;%%$ %
}&& 	
}'' 
}(( é
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\LayoutTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{ 
public 

class 
	LayoutTag 
: 
ExpressionTag *
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
)
ó ò
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
$str3 =
,= >
out? B
varC F
servicesValueG T
)T U
)U V
{ 
throw 
new 
ArgumentException +
(+ ,
$str, V
)V W
;W X
} 
var 
services 
= 
servicesValue (
as) +
IServiceProvider, <
;< =
var 
viewContextAccessor #
=$ %
services& .
.. /
GetRequiredService/ A
<A B
ViewContextAccessorB U
>U V
(V W
)W X
;X Y
var 
viewContext 
= 
viewContextAccessor 1
.1 2
ViewContext2 =
;= >
if 
( 
viewContext 
. 
View  
is! #
	RazorView$ -
	razorView. 7
&&8 :
	razorView; D
.D E
	RazorPageE N
isO Q
RazorR W
.W X

IRazorPageX b
	razorPagec l
)l m
{ 
	razorPage 
. 

ViewLayout $
=% &
(' (
await( -

expression. 8
.8 9
EvaluateAsync9 F
(F G
contextG N
)N O
)O P
.P Q
ToStringValueQ ^
(^ _
)_ `
;` a
} 
return   

Completion   
.   
Normal   $
;  $ %
}!! 	
}"" 
}## ∏8
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\NamedHelperTag.cs
	namespace

 	
OrchardCore


 
.

 
DisplayManagement

 '
.

' (
Liquid

( .
.

. /
Tags

/ 3
{ 
public 

class 
NamedHelperTag 
:  !
ITag" &
{ 
public 
static 
readonly 

Dictionary )
<) *
string* 0
,0 1
string2 8
>8 9
DefaultArguments: J
=K L
newM P

DictionaryQ [
<[ \
string\ b
,b c
stringd j
>j k
(k l
)l m
;m n
public 
BnfTerm 
	GetSyntax  
(  !
FluidGrammar! -
grammar. 5
)5 6
{ 	
return 
grammar 
. 
FilterArguments *
;* +
} 	
public 
	Statement 
Parse 
( 
ParseTreeNode ,
node- 1
,1 2
ParserContext3 @
contextA H
)H I
{ 	
return 
new 
HelperStatement &
(& '
new' *
ArgumentsExpression+ >
(> ?
BuildArguments? M
(M N
nodeN R
)R S
)S T
,T U
nodeV Z
.Z [
Term[ _
._ `
Name` d
)d e
;e f
} 	
public 
static 
FilterArgument $
[$ %
]% &
BuildArguments' 5
(5 6
ParseTreeNode6 C
nodeD H
)H I
{ 	
var 
	arguments 
= 
node  
.  !

ChildNodes! +
[+ ,
$num, -
]- .
.. /

ChildNodes/ 9
.9 :
Select: @
(@ A
DefaultFluidParserA S
.S T
BuildFilterArgumentT g
)g h
.h i
ToArrayi p
(p q
)q r
;r s
var 
defaultArgument 
=  !
node" &
.& '

ChildNodes' 1
[1 2
$num2 3
]3 4
.4 5

ChildNodes5 ?
[? @
$num@ A
]A B
.B C

ChildNodesC M
[M N
$numN O
]O P
;P Q
if   
(   
defaultArgument   
.    
Term    $
.  $ %
Name  % )
!=  * ,
$str  - 9
)  9 :
{!! 
if"" 
("" 
DefaultArguments"" $
.""$ %
TryGetValue""% 0
(""0 1
node""1 5
.""5 6
Term""6 :
."": ;
Name""; ?
,""? @
out""A D
var""E H
name""I M
)""M N
)""N O
{## 
foreach$$ 
($$ 
var$$  
argument$$! )
in$$* ,
	arguments$$- 6
)$$6 7
{%% 
if&& 
(&& 
argument&& $
.&&$ %
Name&&% )
==&&* ,
name&&- 1
)&&1 2
{'' 
return(( "
	arguments((# ,
;((, -
})) 
}** 
	arguments,, 
[,, 
$num,, 
],,  
=,,! "
new,,# &
FilterArgument,,' 5
(,,5 6
name,,6 :
,,,: ;
DefaultFluidParser,,< N
.,,N O
BuildTermExpression,,O b
(,,b c
defaultArgument,,c r
),,r s
),,s t
;,,t u
}-- 
}.. 
return00 
	arguments00 
;00 
}11 	
public33 
static33 
void33 #
RegisterDefaultArgument33 2
(332 3
string333 9
tagName33: A
,33A B
string33C I
argumentName33J V
)33V W
{44 	
DefaultArguments55 
[55 
tagName55 $
]55$ %
=55& '
argumentName55( 4
;554 5
}66 	
}77 
public99 

class99 
NamedHelperBlock99 !
:99" #
CustomBlock99$ /
{:: 
public;; 
override;; 
BnfTerm;; 
	GetSyntax;;  )
(;;) *
FluidGrammar;;* 6
grammar;;7 >
);;> ?
{<< 	
return== 
grammar== 
.== 
FilterArguments== *
;==* +
}>> 	
public@@ 
override@@ 
	Statement@@ !
Parse@@" '
(@@' (
ParseTreeNode@@( 5
node@@6 :
,@@: ;
ParserContext@@< I
context@@J Q
)@@Q R
{AA 	
varBB 
tagBB 
=BB 
contextBB 
.BB 
CurrentBlockBB *
.BB* +
TagBB+ .
;BB. /
varCC 

statementsCC 
=CC 
contextCC $
.CC$ %
CurrentBlockCC% 1
.CC1 2

StatementsCC2 <
;CC< =
varEE 
	argumentsEE 
=EE 
NamedHelperTagEE *
.EE* +
BuildArgumentsEE+ 9
(EE9 :
tagEE: =
)EE= >
;EE> ?
varGG 
helperGG 
=GG 
tagGG 
.GG 
TermGG !
.GG! "
NameGG" &
;GG& '
ifII 
(II 
helperII 
.II 
EndsWithII 
(II  
$strII  '
,II' (
StringComparisonII) 9
.II9 :
OrdinalII: A
)IIA B
&&IIC E
helperIIF L
.IIL M
LengthIIM S
>IIT U
$strIIV ]
.II] ^
LengthII^ d
)IId e
{JJ 
helperKK 
=KK 
helperKK 
.KK  
	SubstringKK  )
(KK) *
$numKK* +
,KK+ ,
helperKK- 3
.KK3 4
LengthKK4 :
-KK; <
$strKK= D
.KKD E
LengthKKE K
)KKK L
;KKL M
}LL 
returnNN 
newNN 
HelperStatementNN &
(NN& '
newNN' *
ArgumentsExpressionNN+ >
(NN> ?
	argumentsNN? H
)NNH I
,NNI J
helperNNK Q
,NNQ R

statementsNNS ]
)NN] ^
;NN^ _
}OO 	
publicQQ 
staticQQ 
voidQQ #
RegisterDefaultArgumentQQ 2
(QQ2 3
stringQQ3 9
tagNameQQ: A
,QQA B
stringQQC I
argumentNameQQJ V
)QQV W
{RR 	
NamedHelperTagSS 
.SS #
RegisterDefaultArgumentSS 2
(SS2 3
tagNameSS3 :
,SS: ;
argumentNameSS< H
)SSH I
;SSI J
}TT 	
}UU 
}VV ¶
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\RenderBodyTag.cs
	namespace

 	
OrchardCore


 
.

 
DisplayManagement

 '
.

' (
Liquid

( .
.

. /
Tags

/ 3
{ 
public 

class 
RenderBodyTag 
:  
	SimpleTag! *
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
)
Ä Å
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 @
,@ A
outB E
dynamicF M
layoutN T
)T U
)U V
{ 
throw 
new 
ArgumentException +
(+ ,
$str, ^
)^ _
;_ `
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
$str3 B
,B C
outD G
varH K
itemL P
)P Q
||R T
!U V
(V W
itemW [
is\ ^
IDisplayHelper_ m
displayHelpern {
){ |
)| }
{ 
throw 
new 
ArgumentException +
(+ ,
$str, `
)` a
;a b
} 
IHtmlContent 
htmlContent $
=% &
await' ,
displayHelper- :
.: ;
ShapeExecuteAsync; L
(L M
layoutM S
.S T
ContentT [
)[ \
;\ ]
htmlContent 
. 
WriteTo 
(  
writer  &
,& '
(( )
HtmlEncoder) 4
)4 5
encoder5 <
)< =
;= >
return 

Completion 
. 
Normal $
;$ %
} 	
} 
}   Ê"
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\RenderSectionTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{ 
public 

class 
RenderSectionTag !
:" #
ArgumentsTag$ 0
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å
FilterArgument
Ç ê
[
ê ë
]
ë í
args
ì ó
)
ó ò
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 @
,@ A
outB E
dynamicF M
layoutN T
)T U
)U V
{ 
throw 
new 
ArgumentException +
(+ ,
$str, a
)a b
;b c
} 
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 B
,B C
outD G
varH K
itemL P
)P Q
||R T
!U V
(V W
itemW [
is\ ^
IDisplayHelper_ m
displayHelpern {
){ |
)| }
{ 
throw 
new 
ArgumentException +
(+ ,
$str, c
)c d
;d e
} 
var 
	arguments 
= 
( 
FilterArguments ,
), -
(- .
await. 3
new4 7
ArgumentsExpression8 K
(K L
argsL P
)P Q
.Q R
EvaluateAsyncR _
(_ `
context` g
)g h
)h i
.i j
ToObjectValuej w
(w x
)x y
;y z
var 
name 
= 
	arguments  
[  !
$str! '
]' (
.( )
Or) +
(+ ,
	arguments, 5
.5 6
At6 8
(8 9
$num9 :
): ;
); <
.< =
ToStringValue= J
(J K
)K L
;L M
var 
required 
= 
	arguments $
.$ %
HasNamed% -
(- .
$str. 8
)8 9
&&: <
Convert= D
.D E
	ToBooleanE N
(N O
	argumentsO X
[X Y
$strY c
]c d
.d e
ToStringValuee r
(r s
)s t
)t u
;u v
var   
zone   
=   
layout   
[   
name   "
]  " #
;  # $
if"" 
("" 
required"" 
&&"" 
zone""  
!=""! #
null""$ (
&&"") +
zone"", 0
is""1 3
Shape""4 9
&&"": <
zone""= A
.""A B
Items""B G
.""G H
Count""H M
==""N P
$num""Q R
)""R S
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 3
($$3 4
$str$$4 f
+$$g h
name$$i m
)$$m n
;$$n o
}%% 
IHtmlContent'' 
htmlContent'' $
=''% &
await''' ,
displayHelper''- :
.'': ;
ShapeExecuteAsync''; L
(''L M
zone''M Q
)''Q R
;''R S
htmlContent(( 
.(( 
WriteTo(( 
(((  
writer((  &
,((& '
(((( )
HtmlEncoder(() 4
)((4 5
encoder((5 <
)((< =
;((= >
return)) 

Completion)) 
.)) 
Normal)) $
;))$ %
}** 	
}++ 
},, ∑
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\RenderTitleSegmentsTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{ 
public 

class "
RenderTitleSegmentsTag '
:( )
ArgumentsTag* 6
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å
FilterArgument
Ç ê
[
ê ë
]
ë í
args
ì ó
)
ó ò
{ 	
if 
( 
! 
context 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesG O
)O P
)P Q
{ 
throw 
new 
ArgumentException +
(+ ,
$str, Z
)Z [
;[ \
} 
var 
titleBuilder 
= 
(  
(  !
IServiceProvider! 1
)1 2
services2 :
): ;
.; <
GetRequiredService< N
<N O
IPageTitleBuilderO `
>` a
(a b
)b c
;c d
var 
	arguments 
= 
( 
FilterArguments ,
), -
(- .
await. 3
new4 7
ArgumentsExpression8 K
(K L
argsL P
)P Q
.Q R
EvaluateAsyncR _
(_ `
context` g
)g h
)h i
.i j
ToObjectValuej w
(w x
)x y
;y z
var 
segment 
= 
new 

HtmlString (
(( )
	arguments) 2
[2 3
$str3 <
]< =
.= >
Or> @
(@ A
	argumentsA J
.J K
AtK M
(M N
$numN O
)O P
)P Q
.Q R
ToStringValueR _
(_ `
)` a
)a b
;b c
var 
position 
= 
	arguments $
.$ %
HasNamed% -
(- .
$str. 8
)8 9
?: ;
	arguments< E
[E F
$strF P
]P Q
.Q R
ToStringValueR _
(_ `
)` a
:b c
$strd g
;g h
var 
	separator 
= 
	arguments %
.% &
HasNamed& .
(. /
$str/ :
): ;
?< =
new> A

HtmlStringB L
(L M
	argumentsM V
[V W
$strW b
]b c
.c d
ToStringValued q
(q r
)r s
)s t
:u v
nullw {
;{ |
titleBuilder 
. 

AddSegment #
(# $
segment$ +
,+ ,
position- 5
)5 6
;6 7
titleBuilder   
.   
GenerateTitle   &
(  & '
	separator  ' 0
)  0 1
.  1 2
WriteTo  2 9
(  9 :
writer  : @
,  @ A
(  B C
HtmlEncoder  C N
)  N O
encoder  O V
)  V W
;  W X
return!! 

Completion!! 
.!! 
Normal!! $
;!!$ %
}"" 	
}## 
}$$ ≥
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapeAddPropertyTag.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Liquid		( .
.		. /
Tags		/ 3
{

 
public 

class 
ShapeAddPropertyTag $
:% &"
ExpressionArgumentsTag' =
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
foreach 
( 
var 
name !
in" $
	arguments% .
.. /
Names/ 4
)4 5
{ 
shape 
. 

Properties $
[$ %
name% )
.) *"
ToPascalCaseUnderscore* @
(@ A
)A B
]B C
=D E
	argumentsF O
[O P
nameP T
]T U
.U V
ToObjectValueV c
(c d
)d e
;e f
} 
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} í.
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapeCacheTag.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Liquid		( .
.		. /
Tags		/ 3
{

 
public 

class 
ShapeCacheTag 
:  "
ExpressionArgumentsTag! 7
{ 
private 
static 
readonly 
char  $
[$ %
]% &

Separators' 1
=2 3
{4 5
$char6 9
,9 :
$char; >
}? @
;@ A
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
var 
metadata 
= 
shape $
.$ %
Metadata% -
;- .
if 
( 
	arguments 
. 
HasNamed &
(& '
$str' 1
)1 2
)2 3
{ 
metadata 
. 
Cache "
(" #
	arguments# ,
[, -
$str- 7
]7 8
.8 9
ToStringValue9 F
(F G
)G H
)H I
;I J
} 
if 
( 
	arguments 
. 
HasNamed &
(& '
$str' 6
)6 7
)7 8
{ 
var   
contexts    
=  ! "
	arguments  # ,
[  , -
$str  - <
]  < =
.  = >
ToStringValue  > K
(  K L
)  L M
.  M N
Split  N S
(  S T

Separators  T ^
,  ^ _
StringSplitOptions  ` r
.  r s
RemoveEmptyEntries	  s Ö
)
  Ö Ü
;
  Ü á
metadata!! 
.!! 
Cache!! "
(!!" #
)!!# $
.!!$ %

AddContext!!% /
(!!/ 0
contexts!!0 8
)!!8 9
;!!9 :
}"" 
if$$ 
($$ 
	arguments$$ 
.$$ 
HasNamed$$ &
($$& '
$str$$' 2
)$$2 3
)$$3 4
{%% 
var&& 
tags&& 
=&& 
	arguments&& (
[&&( )
$str&&) 4
]&&4 5
.&&5 6
ToStringValue&&6 C
(&&C D
)&&D E
.&&E F
Split&&F K
(&&K L

Separators&&L V
,&&V W
StringSplitOptions&&X j
.&&j k
RemoveEmptyEntries&&k }
)&&} ~
;&&~ 
metadata'' 
.'' 
Cache'' "
(''" #
)''# $
.''$ %
AddTag''% +
(''+ ,
tags'', 0
)''0 1
;''1 2
}(( 
if** 
(** 
	arguments** 
.** 
HasNamed** &
(**& '
$str**' =
)**= >
)**> ?
{++ 
if,, 
(,, 
TimeSpan,,  
.,,  !
TryParse,,! )
(,,) *
	arguments,,* 3
[,,3 4
$str,,4 J
],,J K
.,,K L
ToStringValue,,L Y
(,,Y Z
),,Z [
,,,[ \
out,,] `
var,,a d
timespan,,e m
),,m n
),,n o
{-- 
metadata..  
...  !
Cache..! &
(..& '
)..' (
...( )
WithExpiryAfter..) 8
(..8 9
timespan..9 A
)..A B
;..B C
}// 
}00 
if22 
(22 
	arguments22 
.22 
HasNamed22 &
(22& '
$str22' ?
)22? @
)22@ A
{33 
if44 
(44 
TimeSpan44  
.44  !
TryParse44! )
(44) *
	arguments44* 3
[443 4
$str444 L
]44L M
.44M N
ToStringValue44N [
(44[ \
)44\ ]
,44] ^
out44_ b
var44c f
timespan44g o
)44o p
)44p q
{55 
metadata66  
.66  !
Cache66! &
(66& '
)66' (
.66( )
WithExpirySliding66) :
(66: ;
timespan66; C
)66C D
;66D E
}77 
}88 
}99 
return;; 

Completion;; 
.;; 
Normal;; $
;;;$ %
}<< 	
}== 
}>> æ
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapeDisplayTypeTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
ShapeDisplayTypeTag

 $
:

% &"
ExpressionArgumentsTag

' =
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
shape 
. 
Metadata 
. 
DisplayType *
=+ ,
	arguments- 6
[6 7
$str7 =
]= >
.> ?
Or? A
(A B
	argumentsB K
.K L
AtL N
(N O
$numO P
)P Q
)Q R
.R S
ToStringValueS `
(` a
)a b
;b c
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} ˝R
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapePagerTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{ 
public 

class 
ShapePagerTag 
:  "
ExpressionArgumentsTag! 7
{ 
private 
static 
readonly 
HashSet  '
<' (
string( .
>. /
_properties0 ;
=< =
new> A
HashSetB I
<I J
stringJ P
>P Q
{ 	
$str 
, 
$str  
,  !
$str" ,
,, -
$str. =
,= >
$str? J
,J K
$strL U
,U V
$strW d
} 	
;	 

public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
asX Z
dynamic[ b
;b c
if 
( 
objectValue 
is 
Shape $
shape% *
)* +
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
if   
(   
shape   
.   
Metadata   "
.  " #
Type  # '
==  ( *
$str  + 6
)  6 7
{!! 
foreach"" 
("" 
var""  
name""! %
in""& (
	arguments"") 2
.""2 3
Names""3 8
)""8 9
{## 
var$$ 
argument$$ $
=$$% &
	arguments$$' 0
[$$0 1
name$$1 5
]$$5 6
;$$6 7
var%% 
propertyName%% (
=%%) *
name%%+ /
.%%/ 0"
ToPascalCaseUnderscore%%0 F
(%%F G
)%%G H
;%%H I
if'' 
('' 
_properties'' '
.''' (
Contains''( 0
(''0 1
propertyName''1 =
)''= >
)''> ?
{(( 
objectValue)) '
[))' (
propertyName))( 4
]))4 5
=))6 7
argument))8 @
.))@ A
ToStringValue))A N
())N O
)))O P
;))P Q
}** 
}++ 
},, 
if.. 
(.. 
shape.. 
... 
Metadata.. "
..." #
Type..# '
==..( *
$str..+ 6
||..7 9
shape..: ?
...? @
Metadata..@ H
...H I
Type..I M
==..N P
$str..Q X
)..X Y
{// 
if00 
(00 
	arguments00 !
.00! "
Names00" '
.00' (
Contains00( 0
(000 1
$str001 ?
)00? @
)00@ A
{11 
var22 
classes22 #
=22$ %
	arguments22& /
[22/ 0
$str220 >
]22> ?
;22? @
if44 
(44 
classes44 #
.44# $
Type44$ (
==44) +
FluidValues44, 7
.447 8
String448 >
)44> ?
{55 
var66 
values66  &
=66' (
classes66) 0
.660 1
ToStringValue661 >
(66> ?
)66? @
.66@ A
Split66A F
(66F G
$char66G J
,66J K
StringSplitOptions66L ^
.66^ _
RemoveEmptyEntries66_ q
)66q r
;66r s
foreach88 #
(88$ %
var88% (
value88) .
in88/ 1
values882 8
)888 9
{99 
objectValue::  +
.::+ ,
ItemClasses::, 7
.::7 8
Add::8 ;
(::; <
value::< A
)::A B
;::B C
};; 
}<< 
else== 
if== 
(==  !
classes==! (
.==( )
Type==) -
====. 0
FluidValues==1 <
.==< =
Array=== B
)==B C
{>> 
foreach?? #
(??$ %
var??% (
value??) .
in??/ 1
classes??2 9
.??9 :
	Enumerate??: C
(??C D
)??D E
)??E F
{@@ 
objectValueAA  +
.AA+ ,
ItemClassesAA, 7
.AA7 8
AddAA8 ;
(AA; <
valueAA< A
.AAA B
ToStringValueAAB O
(AAO P
)AAP Q
)AAQ R
;AAR S
}BB 
}CC 
}DD 
ifFF 
(FF 
	argumentsFF !
.FF! "
NamesFF" '
.FF' (
ContainsFF( 0
(FF0 1
$strFF1 :
)FF: ;
)FF; <
{GG 
varHH 
classesHH #
=HH$ %
	argumentsHH& /
[HH/ 0
$strHH0 9
]HH9 :
;HH: ;
ifJJ 
(JJ 
classesJJ #
.JJ# $
TypeJJ$ (
==JJ) +
FluidValuesJJ, 7
.JJ7 8
StringJJ8 >
)JJ> ?
{KK 
varLL 
valuesLL  &
=LL' (
classesLL) 0
.LL0 1
ToStringValueLL1 >
(LL> ?
)LL? @
.LL@ A
SplitLLA F
(LLF G
$charLLG J
,LLJ K
StringSplitOptionsLLL ^
.LL^ _
RemoveEmptyEntriesLL_ q
)LLq r
;LLr s
foreachNN #
(NN$ %
varNN% (
valueNN) .
inNN/ 1
valuesNN2 8
)NN8 9
{OO 
objectValuePP  +
.PP+ ,
ClassesPP, 3
.PP3 4
AddPP4 7
(PP7 8
valuePP8 =
)PP= >
;PP> ?
}QQ 
}RR 
elseTT 
ifTT 
(TT  !
classesTT! (
.TT( )
TypeTT) -
==TT. 0
FluidValuesTT1 <
.TT< =
ArrayTT= B
)TTB C
{UU 
foreachVV #
(VV$ %
varVV% (
valueVV) .
inVV/ 1
classesVV2 9
.VV9 :
	EnumerateVV: C
(VVC D
)VVD E
)VVE F
{WW 
objectValueXX  +
.XX+ ,
ClassesXX, 3
.XX3 4
AddXX4 7
(XX7 8
valueXX8 =
.XX= >
ToStringValueXX> K
(XXK L
)XXL M
)XXM N
;XXN O
}YY 
}ZZ 
}[[ 
if]] 
(]] 
	arguments]] !
.]]! "
Names]]" '
.]]' (
Contains]]( 0
(]]0 1
$str]]1 =
)]]= >
)]]> ?
{^^ 
var__ 

attributes__ &
=__' (
	arguments__) 2
[__2 3
$str__3 ?
]__? @
;__@ A
ifaa 
(aa 

attributesaa &
.aa& '
Typeaa' +
==aa, .
FluidValuesaa/ :
.aa: ;
Stringaa; A
)aaA B
{bb 
varcc 
valuescc  &
=cc' (
JsonConvertcc) 4
.cc4 5
DeserializeObjectcc5 F
<ccF G

DictionaryccG Q
<ccQ R
stringccR X
,ccX Y
stringccZ `
>cc` a
>cca b
(ccb c

attributesccc m
.ccm n
ToStringValueccn {
(cc{ |
)cc| }
)cc} ~
;cc~ 
foreachdd #
(dd$ %
vardd% (
valuedd) .
indd/ 1
valuesdd2 8
)dd8 9
{ee 
objectValueff  +
.ff+ ,

Attributesff, 6
.ff6 7
TryAddff7 =
(ff= >
valueff> C
.ffC D
KeyffD G
,ffG H
valueffI N
.ffN O
ValueffO T
)ffT U
;ffU V
}gg 
}hh 
}ii 
ifkk 
(kk 
	argumentskk !
.kk! "
Nameskk" '
.kk' (
Containskk( 0
(kk0 1
$strkk1 B
)kkB C
)kkC D
{ll 
varmm 
itemAttributesmm *
=mm+ ,
	argumentsmm- 6
[mm6 7
$strmm7 H
]mmH I
;mmI J
ifoo 
(oo 
itemAttributesoo *
.oo* +
Typeoo+ /
==oo0 2
FluidValuesoo3 >
.oo> ?
Stringoo? E
)ooE F
{pp 
varqq 
valuesqq  &
=qq' (
JsonConvertqq) 4
.qq4 5
DeserializeObjectqq5 F
<qqF G

DictionaryqqG Q
<qqQ R
stringqqR X
,qqX Y
stringqqZ `
>qq` a
>qqa b
(qqb c
itemAttributesqqc q
.qqq r
ToStringValueqqr 
(	qq Ä
)
qqÄ Å
)
qqÅ Ç
;
qqÇ É
foreachrr #
(rr$ %
varrr% (
valuerr) .
inrr/ 1
valuesrr2 8
)rr8 9
{ss 
objectValuett  +
.tt+ ,
ItemAttributestt, :
.tt: ;
TryAddtt; A
(ttA B
valuettB G
.ttG H
KeyttH K
,ttK L
valuettM R
.ttR S
ValuettS X
)ttX Y
;ttY Z
}uu 
}vv 
}ww 
}xx 
}yy 
return{{ 

Completion{{ 
.{{ 
Normal{{ $
;{{$ %
}|| 	
}}} 
}~~ µ
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapePositionTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
ShapePositionTag

 !
:

" #"
ExpressionArgumentsTag

$ :
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
shape 
. 
Metadata 
. 
Position '
=( )
	arguments* 3
[3 4
$str4 >
]> ?
.? @
Or@ B
(B C
	argumentsC L
.L M
AtM O
(O P
$numP Q
)Q R
)R S
.S T
ToStringValueT a
(a b
)b c
;c d
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} á
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapeRemoveItemTag.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Liquid		( .
.		. /
Tags		/ 3
{

 
public 

class 
ShapeRemoveItemTag #
:$ %"
ExpressionArgumentsTag& <
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
Shape $
shape% *
&&+ -
shape. 3
.3 4
Items4 9
!=: <
null= A
)A B
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
shape 
. 
Remove 
( 
	arguments &
[& '
$str' -
]- .
.. /
Or/ 1
(1 2
	arguments2 ;
.; <
At< >
(> ?
$num? @
)@ A
)A B
.B C
ToStringValueC P
(P Q
)Q R
)R S
;S T
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} …
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapeRemovePropertyTag.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Liquid		( .
.		. /
Tags		/ 3
{

 
public 

class "
ShapeRemovePropertyTag '
:( )"
ExpressionArgumentsTag* @
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
var 
propName 
= 
	arguments (
[( )
$str) 3
]3 4
.4 5
Or5 7
(7 8
	arguments8 A
.A B
AtB D
(D E
$numE F
)F G
)G H
.H I
ToStringValueI V
(V W
)W X
;X Y
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
propName* 2
)2 3
)3 4
{ 
shape 
. 

Properties $
.$ %
Remove% +
(+ ,
propName, 4
.4 5"
ToPascalCaseUnderscore5 K
(K L
)L M
)M N
;N O
} 
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} ¶
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapeTabTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
ShapeTabTag

 
:

 "
ExpressionArgumentsTag

 5
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
shape 
. 
Metadata 
. 
Tab "
=# $
	arguments% .
[. /
$str/ 4
]4 5
.5 6
Or6 8
(8 9
	arguments9 B
.B C
AtC E
(E F
$numF G
)G H
)H I
.I J
ToStringValueJ W
(W X
)X Y
;Y Z
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} ©
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\Tags\ShapeTypeTag.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
.. /
Tags/ 3
{		 
public

 

class

 
ShapeTypeTag

 
:

 "
ExpressionArgumentsTag

  6
{ 
public 
override 
async 
	ValueTask '
<' (

Completion( 2
>2 3
WriteToAsync4 @
(@ A

TextWriterA K
writerL R
,R S
TextEncoderT _
encoder` g
,g h
TemplateContexti x
context	y Ä
,
Ä Å

Expression
Ç å

expression
ç ó
,
ó ò
FilterArgument
ô ß
[
ß ®
]
® ©
args
™ Æ
)
Æ Ø
{ 	
var 
objectValue 
= 
( 
await $

expression% /
./ 0
EvaluateAsync0 =
(= >
context> E
)E F
)F G
.G H
ToObjectValueH U
(U V
)V W
;W X
if 
( 
objectValue 
is 
IShape %
shape& +
)+ ,
{ 
var 
	arguments 
= 
(  !
FilterArguments! 0
)0 1
(1 2
await2 7
new8 ;
ArgumentsExpression< O
(O P
argsP T
)T U
.U V
EvaluateAsyncV c
(c d
contextd k
)k l
)l m
.m n
ToObjectValuen {
({ |
)| }
;} ~
shape 
. 
Metadata 
. 
Type #
=$ %
	arguments& /
[/ 0
$str0 6
]6 7
.7 8
Or8 :
(: ;
	arguments; D
.D E
AtE G
(G H
$numH I
)I J
)J K
.K L
ToStringValueL Y
(Y Z
)Z [
;[ \
} 
return 

Completion 
. 
Normal $
;$ %
} 	
} 
} •E
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement.Liquid\ViewBufferTextWriterContent.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Liquid( .
{		 
public 

class '
ViewBufferTextWriterContent ,
:- .

TextWriter/ 9
,9 :
IHtmlContent; G
{ 
private 
static 
readonly 

HtmlString  *
[* +
]+ ,
_internedChars- ;
=< =
InitInternedChars> O
(O P
)P Q
;Q R
private 
const 
int  
_internedCharsLength .
=/ 0
$num1 4
;4 5
private 
readonly 
List 
< 
IHtmlContent *
>* +

_fragments, 6
=7 8
new9 <
List= A
<A B
IHtmlContentB N
>N O
(O P
)P Q
;Q R
private 
static 

HtmlString !
[! "
]" #
InitInternedChars$ 5
(5 6
)6 7
{ 	
var 
internedChars 
= 
new  #

HtmlString$ .
[. / 
_internedCharsLength/ C
]C D
;D E
for 
( 
var 
i 
= 
$num 
; 
i 
<  
_internedCharsLength  4
;4 5
i6 7
++7 9
)9 :
{ 
internedChars 
[ 
i 
]  
=! "
new# &

HtmlString' 1
(1 2
(2 3
(3 4
char4 8
)8 9
i9 :
): ;
.; <
ToString< D
(D E
)E F
)F G
;G H
} 
return   
internedChars    
;    !
}!! 	
public## 
override## 
Encoding##  
Encoding##! )
=>##* ,
Encoding##- 5
.##5 6
UTF8##6 :
;##: ;
public&& 
override&& 
void&& 
Write&& "
(&&" #
string&&# )
value&&* /
)&&/ 0
{'' 	

_fragments(( 
.(( 
Add(( 
((( 
new(( 

HtmlString(( )
((() *
value((* /
)((/ 0
)((0 1
;((1 2
})) 	
public++ 
override++ 
void++ 
Write++ "
(++" #
char++# '
value++( -
)++- .
{,, 	
if-- 
(-- 
value-- 
<--  
_internedCharsLength-- ,
)--, -
{.. 

_fragments// 
.// 
Add// 
(// 
_internedChars// -
[//- .
value//. 3
]//3 4
)//4 5
;//5 6
}00 
else11 
{22 

_fragments33 
.33 
Add33 
(33 
new33 "

HtmlString33# -
(33- .
value33. 3
.333 4
ToString334 <
(33< =
)33= >
)33> ?
)33? @
;33@ A
}44 
}55 	
public77 
override77 
void77 
Write77 "
(77" #
char77# '
[77' (
]77( )
buffer77* 0
)770 1
{88 	

_fragments99 
.99 
Add99 
(99 
new99 !
CharrArrayHtmlContent99 4
(994 5
buffer995 ;
)99; <
)99< =
;99= >
}:: 	
public<< 
override<< 
void<< 
Write<< "
(<<" #
char<<# '
[<<' (
]<<( )
buffer<<* 0
,<<0 1
int<<2 5
index<<6 ;
,<<; <
int<<= @
count<<A F
)<<F G
{== 	
if>> 
(>> 
index>> 
==>> 
$num>> 
&&>> 
buffer>> $
.>>$ %
Length>>% +
==>>, .
count>>/ 4
)>>4 5
{?? 

_fragments@@ 
.@@ 
Add@@ 
(@@ 
new@@ "!
CharrArrayHtmlContent@@# 8
(@@8 9
buffer@@9 ?
)@@? @
)@@@ A
;@@A B
}AA 
elseBB 
{CC 

_fragmentsDD 
.DD 
AddDD 
(DD 
newDD ")
CharrArrayFragmentHtmlContentDD# @
(DD@ A
bufferDDA G
,DDG H
indexDDI N
,DDN O
countDDP U
)DDU V
)DDV W
;DDW X
}EE 
}FF 	
publicII 
voidII 
WriteToII 
(II 

TextWriterII &
writerII' -
,II- .
HtmlEncoderII/ :
encoderII; B
)IIB C
{JJ 	
foreachKK 
(KK 
varKK 
fragmentKK !
inKK" $

_fragmentsKK% /
)KK/ 0
{LL 
writerMM 
.MM 
WriteMM 
(MM 
fragmentMM %
)MM% &
;MM& '
}NN 
}OO 	
privateTT 
classTT !
CharrArrayHtmlContentTT +
:TT, -
IHtmlContentTT. :
{UU 	
publicVV !
CharrArrayHtmlContentVV (
(VV( )
charVV) -
[VV- .
]VV. /
valueVV0 5
)VV5 6
{WW 
ifXX 
(XX 
valueXX 
==XX 
nullXX !
)XX! "
{YY 
throwZZ 
newZZ !
ArgumentNullExceptionZZ 3
(ZZ3 4
nameofZZ4 :
(ZZ: ;
valueZZ; @
)ZZ@ A
)ZZA B
;ZZB C
}[[ 
Value]] 
=]] 
value]] 
;]] 
}^^ 
public`` 
char`` 
[`` 
]`` 
Value`` 
{``  !
get``" %
;``% &
}``' (
publiccc 
voidcc 
WriteTocc 
(cc  

TextWritercc  *
writercc+ 1
,cc1 2
HtmlEncodercc3 >
encodercc? F
)ccF G
{dd 
writeree 
.ee 
Writeee 
(ee 
Valueee "
)ee" #
;ee# $
}ff 
publicii 
overrideii 
stringii "
ToStringii# +
(ii+ ,
)ii, -
{jj 
returnkk 
newkk 
Stringkk !
(kk! "
Valuekk" '
)kk' (
;kk( )
}ll 
}mm 	
privaterr 
classrr )
CharrArrayFragmentHtmlContentrr 3
:rr4 5
IHtmlContentrr6 B
{ss 	
publictt )
CharrArrayFragmentHtmlContenttt 0
(tt0 1
chartt1 5
[tt5 6
]tt6 7
valuett8 =
,tt= >
inttt? B
indexttC H
,ttH I
intttJ M
lengthttN T
)ttT U
{uu 
Valuevv 
=vv 
valuevv 
;vv 
Indexww 
=ww 
indexww 
;ww 
Lengthxx 
=xx 
lengthxx 
;xx  
}yy 
public{{ 
char{{ 
[{{ 
]{{ 
Value{{ 
{{{  !
get{{" %
;{{% &
}{{' (
public|| 
int|| 
Index|| 
{|| 
get|| "
;||" #
}||$ %
public}} 
int}} 
Length}} 
{}} 
get}}  #
;}}# $
}}}% &
public
ÄÄ 
void
ÄÄ 
WriteTo
ÄÄ 
(
ÄÄ  

TextWriter
ÄÄ  *
writer
ÄÄ+ 1
,
ÄÄ1 2
HtmlEncoder
ÄÄ3 >
encoder
ÄÄ? F
)
ÄÄF G
{
ÅÅ 
writer
ÇÇ 
.
ÇÇ 
Write
ÇÇ 
(
ÇÇ 
Value
ÇÇ "
,
ÇÇ" #
Index
ÇÇ$ )
,
ÇÇ) *
Length
ÇÇ+ 1
)
ÇÇ1 2
;
ÇÇ2 3
}
ÉÉ 
public
ÜÜ 
override
ÜÜ 
string
ÜÜ "
ToString
ÜÜ# +
(
ÜÜ+ ,
)
ÜÜ, -
{
áá 
return
àà 
new
àà 
String
àà !
(
àà! "
Value
àà" '
,
àà' (
Index
àà) .
,
àà. /
Length
àà0 6
)
àà6 7
;
àà7 8
}
ââ 
}
ää 	
}
ãã 
}åå 