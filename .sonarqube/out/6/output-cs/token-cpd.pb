·	
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data\DbConnectionAccessor.cs
	namespace 	
OrchardCore
 
. 
Data 
{ 
public

 

class

  
DbConnectionAccessor

 %
:

& '!
IDbConnectionAccessor

( =
{ 
private 
readonly 
IStore 
_store  &
;& '
public  
DbConnectionAccessor #
(# $
IStore$ *
store+ 0
)0 1
{ 	
_store 
= 
store 
?? 
throw #
new$ '!
ArgumentNullException( =
(= >
nameof> D
(D E
storeE J
)J K
)K L
;L M
} 	
public 
DbConnection 
CreateConnection ,
(, -
)- .
{ 	
return 
_store 
. 
Configuration '
.' (
ConnectionFactory( 9
.9 :
CreateConnection: J
(J K
)K L
;L M
} 	
} 
} ¸c
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data\Documents\DocumentStore.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public 

class 
DocumentStore 
:  
IDocumentStore! /
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 

Dictionary #
<# $
Type$ (
,( )
object* 0
>0 1
_loaded2 9
=: ;
new< ?

Dictionary@ J
<J K
TypeK O
,O P
objectQ W
>W X
(X Y
)Y Z
;Z [
private 
readonly 
List 
< 
Type "
>" # 
_afterCommitsSuccess$ 8
=9 :
new; >
List? C
<C D
TypeD H
>H I
(I J
)J K
;K L
private 
readonly 
List 
< 
Type "
>" # 
_afterCommitsFailure$ 8
=9 :
new; >
List? C
<C D
TypeD H
>H I
(I J
)J K
;K L
private .
"DocumentStoreCommitSuccessDelegate 2
_afterCommitSuccess3 F
;F G
private .
"DocumentStoreCommitFailureDelegate 2
_afterCommitFailure3 F
;F G
private 
bool 
	_canceled 
; 
private 
bool 

_committed 
;  
public 
DocumentStore 
( 
ISession %
session& -
)- .
{ 	
_session 
= 
session 
; 
} 	
public   
async   
Task   
<   
T   
>   #
GetOrCreateMutableAsync   4
<  4 5
T  5 6
>  6 7
(  7 8
Func  8 <
<  < =
Task  = A
<  A B
T  B C
>  C D
>  D E
factoryAsync  F R
=  S T
null  U Y
)  Y Z
where  [ `
T  a b
:  c d
class  e j
,  j k
new  l o
(  o p
)  p q
{!! 	
if"" 
("" 
_loaded"" 
."" 
TryGetValue"" #
(""# $
typeof""$ *
(""* +
T""+ ,
)"", -
,""- .
out""/ 2
var""3 6
loaded""7 =
)""= >
)""> ?
{## 
return$$ 
loaded$$ 
as$$  
T$$! "
;$$" #
}%% 
var'' 
document'' 
='' 
await''  
_session''! )
.'') *
Query''* /
<''/ 0
T''0 1
>''1 2
(''2 3
)''3 4
.''4 5
FirstOrDefaultAsync''5 H
(''H I
)''I J
??(( 
await(( 
((( 
factoryAsync(( &
?((& '
.((' (
Invoke((( .
(((. /
)((/ 0
??((1 3
Task((4 8
.((8 9

FromResult((9 C
(((C D
(((D E
T((E F
)((F G
null((G K
)((K L
)((L M
??)) 
new)) 
T)) 
()) 
))) 
;)) 
_loaded++ 
[++ 
typeof++ 
(++ 
T++ 
)++ 
]++ 
=++  
document++! )
;++) *
return-- 
document-- 
;-- 
}.. 	
public11 
async11 
Task11 
<11 
(11 
bool11 
,11  
T11! "
)11" #
>11# $%
GetOrCreateImmutableAsync11% >
<11> ?
T11? @
>11@ A
(11A B
Func11B F
<11F G
Task11G K
<11K L
T11L M
>11M N
>11N O
factoryAsync11P \
=11] ^
null11_ c
)11c d
where11e j
T11k l
:11m n
class11o t
,11t u
new11v y
(11y z
)11z {
{22 	
if33 
(33 
_loaded33 
.33 
TryGetValue33 #
(33# $
typeof33$ *
(33* +
T33+ ,
)33, -
,33- .
out33/ 2
var333 6
loaded337 =
)33= >
)33> ?
{44 
return66 
(66 
false66 
,66 
loaded66 %
as66& (
T66) *
)66* +
;66+ ,
}77 
T99 
document99 
=99 
null99 
;99 
if<< 
(<< 

_committed<< 
)<< 
{== 
using?? 
var?? 
session?? !
=??" #
_session??$ ,
.??, -
Store??- 2
.??2 3
CreateSession??3 @
(??@ A
)??A B
;??B C
document@@ 
=@@ 
await@@  
session@@! (
.@@( )
Query@@) .
<@@. /
T@@/ 0
>@@0 1
(@@1 2
)@@2 3
.@@3 4
FirstOrDefaultAsync@@4 G
(@@G H
)@@H I
;@@I J
}AA 
elseBB 
{CC 
documentDD 
=DD 
awaitDD  
_sessionDD! )
.DD) *
QueryDD* /
<DD/ 0
TDD0 1
>DD1 2
(DD2 3
)DD3 4
.DD4 5
FirstOrDefaultAsyncDD5 H
(DDH I
)DDI J
;DDJ K
}EE 
ifGG 
(GG 
documentGG 
!=GG 
nullGG  
)GG  !
{HH 
ifII 
(II 
!II 

_committedII 
)II  
{JJ 
_sessionKK 
.KK 
DetachKK #
(KK# $
documentKK$ ,
)KK, -
;KK- .
}LL 
returnNN 
(NN 
trueNN 
,NN 
documentNN &
)NN& '
;NN' (
}OO 
returnQQ 
(QQ 
trueQQ 
,QQ 
awaitQQ 
(QQ  !
factoryAsyncQQ! -
?QQ- .
.QQ. /
InvokeQQ/ 5
(QQ5 6
)QQ6 7
??QQ8 :
TaskQQ; ?
.QQ? @

FromResultQQ@ J
(QQJ K
(QQK L
TQQL M
)QQM N
nullQQN R
)QQR S
)QQS T
??QQU W
newQQX [
TQQ\ ]
(QQ] ^
)QQ^ _
)QQ_ `
;QQ` a
}RR 	
publicUU 
TaskUU 
UpdateAsyncUU 
<UU  
TUU  !
>UU! "
(UU" #
TUU# $
documentUU% -
,UU- .
FuncUU/ 3
<UU3 4
TUU4 5
,UU5 6
TaskUU7 ;
>UU; <
updateCacheUU= H
,UUH I
boolUUJ N
checkConcurrencyUUO _
=UU` a
falseUUb g
)UUg h
{VV 	
_sessionWW 
.WW 
SaveWW 
(WW 
documentWW "
,WW" #
checkConcurrencyWW$ 4
)WW4 5
;WW5 6
AfterCommitSuccessYY 
<YY 
TYY  
>YY  !
(YY! "
(YY" #
)YY# $
=>YY% '
{ZZ 
return[[ 
updateCache[[ "
([[" #
document[[# +
)[[+ ,
;[[, -
}\\ 
)\\ 
;\\ 
AfterCommitFailure^^ 
<^^ 
T^^  
>^^  !
(^^! "
	exception^^" +
=>^^, .
{__ 
throw`` 
new`` (
DocumentStoreCommitException`` 6
(``6 7
$"aa 
The 'aa 
{aa 
typeofaa "
(aa" #
Taa# $
)aa$ %
.aa% &
Nameaa& *
}aa* +Z
N' could not be persisted and cached as it has been changed by another process.aa+ y
"aay z
,aaz {
	exceptionbb 
)bb 
;bb 
}cc 
)cc 
;cc 
returnee 
Taskee 
.ee 
CompletedTaskee %
;ee% &
}ff 	
publicii 
voidii 
Cancelii 
(ii 
)ii 
{jj 	
	_canceledkk 
=kk 
truekk 
;kk 
_sessionll 
.ll 
Cancelll 
(ll 
)ll 
;ll 
}mm 	
publicpp 
voidpp 
AfterCommitSuccesspp &
<pp& '
Tpp' (
>pp( )
(pp) *.
"DocumentStoreCommitSuccessDelegatepp* L
afterCommitSuccessppM _
)pp_ `
{qq 	
ifrr 
(rr 
!rr  
_afterCommitsSuccessrr %
.rr% &
Containsrr& .
(rr. /
typeofrr/ 5
(rr5 6
Trr6 7
)rr7 8
)rr8 9
)rr9 :
{ss  
_afterCommitsSuccesstt $
.tt$ %
Addtt% (
(tt( )
typeoftt) /
(tt/ 0
Ttt0 1
)tt1 2
)tt2 3
;tt3 4
_afterCommitSuccessuu #
+=uu$ &
afterCommitSuccessuu' 9
;uu9 :
}vv 
}ww 	
publiczz 
voidzz 
AfterCommitFailurezz &
<zz& '
Tzz' (
>zz( )
(zz) *.
"DocumentStoreCommitFailureDelegatezz* L
afterCommitFailurezzM _
)zz_ `
{{{ 	
if|| 
(|| 
!||  
_afterCommitsFailure|| %
.||% &
Contains||& .
(||. /
typeof||/ 5
(||5 6
T||6 7
)||7 8
)||8 9
)||9 :
{}}  
_afterCommitsFailure~~ $
.~~$ %
Add~~% (
(~~( )
typeof~~) /
(~~/ 0
T~~0 1
)~~1 2
)~~2 3
;~~3 4
_afterCommitFailure #
+=$ &
afterCommitFailure' 9
;9 :
}
ÄÄ 
}
ÅÅ 	
public
ÑÑ 
async
ÑÑ 
Task
ÑÑ 
CommitAsync
ÑÑ %
(
ÑÑ% &
)
ÑÑ& '
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
_session
ÜÜ 
==
ÜÜ 
null
ÜÜ  
)
ÜÜ  !
{
áá 
return
àà 
;
àà 
}
ââ 
try
ãã 
{
åå 
await
çç 
_session
çç 
.
çç 
CommitAsync
çç *
(
çç* +
)
çç+ ,
;
çç, -

_committed
èè 
=
èè 
true
èè !
;
èè! "
_loaded
êê 
.
êê 
Clear
êê 
(
êê 
)
êê 
;
êê  
if
íí 
(
íí 
!
íí 
	_canceled
íí 
&&
íí !!
_afterCommitSuccess
íí" 5
!=
íí6 8
null
íí9 =
)
íí= >
{
ìì 
foreach
îî 
(
îî 
var
îî  
d
îî! "
in
îî# %!
_afterCommitSuccess
îî& 9
.
îî9 :
GetInvocationList
îî: K
(
îîK L
)
îîL M
)
îîM N
{
ïï 
await
ññ 
(
ññ 
(
ññ  0
"DocumentStoreCommitSuccessDelegate
ññ  B
)
ññB C
d
ññC D
)
ññD E
(
ññE F
)
ññF G
;
ññG H
}
óó 
}
òò 
}
ôô 
catch
öö 
(
öö "
ConcurrencyException
öö '
	exception
öö( 1
)
öö1 2
{
õõ 
if
úú 
(
úú !
_afterCommitFailure
úú '
!=
úú( *
null
úú+ /
)
úú/ 0
{
ùù 
foreach
ûû 
(
ûû 
var
ûû  
d
ûû! "
in
ûû# %!
_afterCommitFailure
ûû& 9
.
ûû9 :
GetInvocationList
ûû: K
(
ûûK L
)
ûûL M
)
ûûM N
{
üü 
await
†† 
(
†† 
(
††  0
"DocumentStoreCommitFailureDelegate
††  B
)
††B C
d
††C D
)
††D E
(
††E F
	exception
††F O
)
††O P
;
††P Q
}
°° 
}
¢¢ 
else
££ 
{
§§ 
throw
•• 
;
•• 
}
¶¶ 
}
ßß 
}
®® 	
}
©© 
}™™ àa
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data\Documents\FileDocumentStore.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Documents $
{ 
public 

class 
FileDocumentStore "
:# $
IFileDocumentStore% 7
{ 
private 
readonly 
string 
_tenantPath  +
;+ ,
private 
readonly 
SemaphoreSlim &

_semaphore' 1
=2 3
new4 7
SemaphoreSlim8 E
(E F
$numF G
)G H
;H I
public 
FileDocumentStore  
(  !
IOptions! )
<) *
ShellOptions* 6
>6 7
shellOptions8 D
,D E
ShellSettingsF S
shellSettingsT a
)a b
{ 	
_tenantPath 
= 
Path 
. 
Combine &
(& '
shellOptions 
. 
Value "
." #%
ShellsApplicationDataPath# <
,< =
shellOptions 
. 
Value "
." #
ShellsContainerName# 6
,6 7
shellSettings 
. 
Name "
)" #
+$ %
$str& )
;) *
	Directory 
. 
CreateDirectory %
(% &
_tenantPath& 1
)1 2
;2 3
}   	
public## 
async## 
Task## 
<## 
T## 
>## #
GetOrCreateMutableAsync## 4
<##4 5
T##5 6
>##6 7
(##7 8
Func##8 <
<##< =
Task##= A
<##A B
T##B C
>##C D
>##D E
factoryAsync##F R
=##S T
null##U Y
)##Y Z
where##[ `
T##a b
:##c d
class##e j
,##j k
new##l o
(##o p
)##p q
{$$ 	
var%% 
loaded%% 
=%% 

ShellScope%% #
.%%# $
Get%%$ '
<%%' (
T%%( )
>%%) *
(%%* +
typeof%%+ 1
(%%1 2
T%%2 3
)%%3 4
)%%4 5
;%%5 6
if'' 
('' 
loaded'' 
!='' 
null'' 
)'' 
{(( 
return)) 
loaded)) 
;)) 
}** 
var,, 
document,, 
=,, 
await,,  
GetDocumentAsync,,! 1
<,,1 2
T,,2 3
>,,3 4
(,,4 5
),,5 6
??-- 
await-- 
(-- 
factoryAsync-- &
?--& '
.--' (
Invoke--( .
(--. /
)--/ 0
??--1 3
Task--4 8
.--8 9

FromResult--9 C
(--C D
(--D E
T--E F
)--F G
null--G K
)--K L
)--L M
??.. 
new.. 
T.. 
(.. 
).. 
;.. 

ShellScope00 
.00 
Set00 
(00 
typeof00 !
(00! "
T00" #
)00# $
,00$ %
document00& .
)00. /
;00/ 0
return22 
document22 
;22 
}33 	
public66 
async66 
Task66 
<66 
(66 
bool66 
,66  
T66! "
)66" #
>66# $%
GetOrCreateImmutableAsync66% >
<66> ?
T66? @
>66@ A
(66A B
Func66B F
<66F G
Task66G K
<66K L
T66L M
>66M N
>66N O
factoryAsync66P \
=66] ^
null66_ c
)66c d
where66e j
T66k l
:66m n
class66o t
,66t u
new66v y
(66y z
)66z {
{77 	
var88 
loaded88 
=88 

ShellScope88 #
.88# $
Get88$ '
<88' (
T88( )
>88) *
(88* +
typeof88+ 1
(881 2
T882 3
)883 4
)884 5
;885 6
if:: 
(:: 
loaded:: 
!=:: 
null:: 
):: 
{;; 
return== 
(== 
false== 
,== 
loaded== %
as==& (
T==) *
)==* +
;==+ ,
}>> 
return@@ 
(@@ 
true@@ 
,@@ 
await@@ 
GetDocumentAsync@@  0
<@@0 1
T@@1 2
>@@2 3
(@@3 4
)@@4 5
??@@6 8
await@@9 >
(@@? @
factoryAsync@@@ L
?@@L M
.@@M N
Invoke@@N T
(@@T U
)@@U V
??@@W Y
Task@@Z ^
.@@^ _

FromResult@@_ i
(@@i j
(@@j k
T@@k l
)@@l m
null@@m q
)@@q r
)@@r s
??@@t v
new@@w z
T@@{ |
(@@| }
)@@} ~
)@@~ 
;	@@ Ä
}AA 	
publicDD 
TaskDD 
UpdateAsyncDD 
<DD  
TDD  !
>DD! "
(DD" #
TDD# $
documentDD% -
,DD- .
FuncDD/ 3
<DD3 4
TDD4 5
,DD5 6
TaskDD7 ;
>DD; <
updateCacheDD= H
,DDH I
boolDDJ N
checkConcurrencyDDO _
=DD` a
falseDDb g
)DDg h
{EE 	
varFF 
documentStoreFF 
=FF 

ShellScopeFF  *
.FF* +
ServicesFF+ 3
.FF3 4
GetRequiredServiceFF4 F
<FFF G
IDocumentStoreFFG U
>FFU V
(FFV W
)FFW X
;FFX Y
documentStoreHH 
.HH 
AfterCommitSuccessHH ,
<HH, -
THH- .
>HH. /
(HH/ 0
asyncHH0 5
(HH6 7
)HH7 8
=>HH9 ;
{II 
awaitJJ 
SaveDocumentAsyncJJ '
(JJ' (
documentJJ( 0
)JJ0 1
;JJ1 2

ShellScopeKK 
.KK 
SetKK 
(KK 
typeofKK %
(KK% &
TKK& '
)KK' (
,KK( )
nullKK* .
)KK. /
;KK/ 0
awaitLL 
updateCacheLL !
(LL! "
documentLL" *
)LL* +
;LL+ ,
}MM 
)MM 
;MM 
returnOO 
TaskOO 
.OO 
CompletedTaskOO %
;OO% &
}PP 	
publicRR 
voidRR 
CancelRR 
(RR 
)RR 
=>RR 
throwRR  %
newRR& )#
NotImplementedExceptionRR* A
(RRA B
)RRB C
;RRC D
publicSS 
voidSS 
AfterCommitSuccessSS &
<SS& '
TSS' (
>SS( )
(SS) *.
"DocumentStoreCommitSuccessDelegateSS* L
afterCommitSuccessSSM _
)SS_ `
=>SSa c
throwSSd i
newSSj m$
NotImplementedException	SSn Ö
(
SSÖ Ü
)
SSÜ á
;
SSá à
publicTT 
voidTT 
AfterCommitFailureTT &
<TT& '
TTT' (
>TT( )
(TT) *.
"DocumentStoreCommitFailureDelegateTT* L
afterCommitFailureTTM _
)TT_ `
=>TTa c
throwTTd i
newTTj m$
NotImplementedException	TTn Ö
(
TTÖ Ü
)
TTÜ á
;
TTá à
publicUU 
TaskUU 
CommitAsyncUU 
(UU  
)UU  !
=>UU" $
throwUU% *
newUU+ .#
NotImplementedExceptionUU/ F
(UUF G
)UUG H
;UUH I
privateWW 
asyncWW 
TaskWW 
<WW 
TWW 
>WW 
GetDocumentAsyncWW .
<WW. /
TWW/ 0
>WW0 1
(WW1 2
)WW2 3
{XX 	
varYY 
typeNameYY 
=YY 
typeofYY !
(YY! "
TYY" #
)YY# $
.YY$ %
NameYY% )
;YY) *
var[[ 
	attribute[[ 
=[[ 
typeof[[ "
([[" #
T[[# $
)[[$ %
.[[% &
GetCustomAttribute[[& 8
<[[8 9&
FileDocumentStoreAttribute[[9 S
>[[S T
([[T U
)[[U V
;[[V W
if\\ 
(\\ 
	attribute\\ 
!=\\ 
null\\ !
)\\! "
{]] 
typeName^^ 
=^^ 
	attribute^^ $
.^^$ %
FileName^^% -
??^^. 0
typeName^^1 9
;^^9 :
}__ 
varaa 
filenameaa 
=aa 
_tenantPathaa &
+aa' (
typeNameaa) 1
+aa2 3
$straa4 ;
;aa; <
ifcc 
(cc 
!cc 
Filecc 
.cc 
Existscc 
(cc 
filenamecc %
)cc% &
)cc& '
{dd 
returnee 
defaultee 
;ee 
}ff 
awaithh 

_semaphorehh 
.hh 
	WaitAsynchh &
(hh& '
)hh' (
;hh( )
tryii 
{jj 
Tkk 
documentkk 
;kk 
usingmm 
(mm 
varmm 
filemm 
=mm  !
Filemm" &
.mm& '
OpenTextmm' /
(mm/ 0
filenamemm0 8
)mm8 9
)mm9 :
{nn 
varoo 

serializeroo "
=oo# $
newoo% (
JsonSerializeroo) 7
(oo7 8
)oo8 9
;oo9 :
documentpp 
=pp 
(pp  
Tpp  !
)pp! "

serializerpp" ,
.pp, -
Deserializepp- 8
(pp8 9
filepp9 =
,pp= >
typeofpp? E
(ppE F
TppF G
)ppG H
)ppH I
;ppI J
}qq 
returnss 
documentss 
;ss  
}tt 
finallyuu 
{vv 

_semaphoreww 
.ww 
Releaseww "
(ww" #
)ww# $
;ww$ %
}xx 
}yy 	
private{{ 
async{{ 
Task{{ 
SaveDocumentAsync{{ ,
<{{, -
T{{- .
>{{. /
({{/ 0
T{{0 1
document{{2 :
){{: ;
{|| 	
var}} 
typeName}} 
=}} 
typeof}} !
(}}! "
T}}" #
)}}# $
.}}$ %
Name}}% )
;}}) *
if
ÄÄ 
(
ÄÄ 
typeName
ÄÄ 
==
ÄÄ 
$str
ÄÄ 5
)
ÄÄ5 6
{
ÅÅ 
typeName
ÇÇ 
=
ÇÇ 
$str
ÇÇ .
;
ÇÇ. /
}
ÉÉ 
var
ÖÖ 
filename
ÖÖ 
=
ÖÖ 
_tenantPath
ÖÖ &
+
ÖÖ' (
typeName
ÖÖ) 1
+
ÖÖ2 3
$str
ÖÖ4 ;
;
ÖÖ; <
await
áá 

_semaphore
áá 
.
áá 
	WaitAsync
áá &
(
áá& '
)
áá' (
;
áá( )
try
àà 
{
ââ 
using
ää 
(
ää 
var
ää 
file
ää 
=
ää  !
File
ää" &
.
ää& '

CreateText
ää' 1
(
ää1 2
filename
ää2 :
)
ää: ;
)
ää; <
{
ãã 
var
åå 

serializer
åå "
=
åå# $
new
åå% (
JsonSerializer
åå) 7
(
åå7 8
)
åå8 9
;
åå9 :

serializer
çç 
.
çç 

Formatting
çç )
=
çç* +

Formatting
çç, 6
.
çç6 7
Indented
çç7 ?
;
çç? @

serializer
éé 
.
éé 
	Serialize
éé (
(
éé( )
file
éé) -
,
éé- .
document
éé/ 7
)
éé7 8
;
éé8 9
}
èè 
}
êê 
finally
ëë 
{
íí 

_semaphore
ìì 
.
ìì 
Release
ìì "
(
ìì" #
)
ìì# $
;
ìì$ %
}
îî 
}
ïï 	
}
ññ 
}óó ´
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data\Migration\AutomaticDataMigrations.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Migration $
{		 
public 

class #
AutomaticDataMigrations (
:) *
ModularTenantEvents+ >
{ 
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public #
AutomaticDataMigrations &
(& '
IServiceProvider 
serviceProvider ,
,, -
ShellSettings 
shellSettings '
,' (
ILogger 
< #
AutomaticDataMigrations +
>+ ,
logger- 3
)3 4
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
_shellSettings 
= 
shellSettings *
;* +
_logger   
=   
logger   
;   
}!! 	
public$$ 
override$$ 
Task$$ 
ActivatingAsync$$ ,
($$, -
)$$- .
{%% 	
if&& 
(&& 
_shellSettings&& 
.&& 
State&& $
!=&&% '
Environment&&( 3
.&&3 4
Shell&&4 9
.&&9 :
Models&&: @
.&&@ A
TenantState&&A L
.&&L M
Uninitialized&&M Z
)&&Z [
{'' 
_logger(( 
.(( 
LogDebug((  
(((  !
$str((! <
)((< =
;((= >
var**  
dataMigrationManager** (
=**) *
_serviceProvider**+ ;
.**; <

GetService**< F
<**F G!
IDataMigrationManager**G \
>**\ ]
(**] ^
)**^ _
;**_ `
return++  
dataMigrationManager++ +
.+++ ,"
UpdateAllFeaturesAsync++, B
(++B C
)++C D
;++D E
},, 
return.. 
Task.. 
... 
CompletedTask.. %
;..% &
}// 	
}00 
}11 ÄÙ
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data\Migration\DataMigrationManager.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Migration $
{ 
public 

class  
DataMigrationManager %
:& '!
IDataMigrationManager( =
{ 
private 
readonly 
IEnumerable $
<$ %
IDataMigration% 3
>3 4
_dataMigrations5 D
;D E
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IStore 
_store  &
;& '
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
List 
< 
string $
>$ %
_processedFeatures& 8
;8 9
private 
DataMigrationRecord # 
_dataMigrationRecord$ 8
;8 9
public''  
DataMigrationManager'' #
(''# $ 
ITypeFeatureProvider((  
typeFeatureProvider((! 4
,((4 5
IEnumerable)) 
<)) 
IDataMigration)) &
>))& '
dataMigrations))( 6
,))6 7
ISession** 
session** 
,** 
IStore++ 
store++ 
,++ 
IExtensionManager,, 
extensionManager,, .
,,,. /
ILogger-- 
<--  
DataMigrationManager-- (
>--( )
logger--* 0
)--0 1
{.. 	 
_typeFeatureProvider//  
=//! "
typeFeatureProvider//# 6
;//6 7
_dataMigrations00 
=00 
dataMigrations00 ,
;00, -
_session11 
=11 
session11 
;11 
_store22 
=22 
store22 
;22 
_extensionManager33 
=33 
extensionManager33  0
;330 1
_logger44 
=44 
logger44 
;44 
_processedFeatures55 
=55  
new55! $
List55% )
<55) *
string55* 0
>550 1
(551 2
)552 3
;553 4
}66 	
public99 
async99 
Task99 
<99 
DataMigrationRecord99 -
>99- .'
GetDataMigrationRecordAsync99/ J
(99J K
)99K L
{:: 	
if;; 
(;;  
_dataMigrationRecord;; $
==;;% '
null;;( ,
);;, -
{<<  
_dataMigrationRecord== $
===% &
await==' ,
_session==- 5
.==5 6
Query==6 ;
<==; <
DataMigrationRecord==< O
>==O P
(==P Q
)==Q R
.==R S
FirstOrDefaultAsync==S f
(==f g
)==g h
;==h i
if?? 
(??  
_dataMigrationRecord?? (
==??) +
null??, 0
)??0 1
{@@  
_dataMigrationRecordAA (
=AA) *
newAA+ .
DataMigrationRecordAA/ B
(AAB C
)AAC D
;AAD E
_sessionBB 
.BB 
SaveBB !
(BB! " 
_dataMigrationRecordBB" 6
)BB6 7
;BB7 8
}CC 
}DD 
returnFF  
_dataMigrationRecordFF '
;FF' (
}GG 	
publicII 
asyncII 
TaskII 
<II 
IEnumerableII %
<II% &
stringII& ,
>II, -
>II- .*
GetFeaturesThatNeedUpdateAsyncII/ M
(IIM N
)IIN O
{JJ 	
varKK 
currentVersionsKK 
=KK  !
(KK" #
awaitKK# ('
GetDataMigrationRecordAsyncKK) D
(KKD E
)KKE F
)KKF G
.KKG H
DataMigrationsKKH V
.LL 
ToDictionaryLL 
(LL 
rLL 
=>LL  "
rLL# $
.LL$ %
DataMigrationClassLL% 7
)LL7 8
;LL8 9
varNN 
outOfDateMigrationsNN #
=NN$ %
_dataMigrationsNN& 5
.NN5 6
WhereNN6 ;
(NN; <
dataMigrationNN< I
=>NNJ L
{OO 
RecordsPP 
.PP 
DataMigrationPP %
recordPP& ,
;PP, -
ifQQ 
(QQ 
currentVersionsQQ #
.QQ# $
TryGetValueQQ$ /
(QQ/ 0
dataMigrationQQ0 =
.QQ= >
GetTypeQQ> E
(QQE F
)QQF G
.QQG H
FullNameQQH P
,QQP Q
outQQR U
recordQQV \
)QQ\ ]
&&QQ^ `
recordQQa g
.QQg h
VersionQQh o
.QQo p
HasValueQQp x
)QQx y
{RR 
returnSS $
CreateUpgradeLookupTableSS 3
(SS3 4
dataMigrationSS4 A
)SSA B
.SSB C
ContainsKeySSC N
(SSN O
recordSSO U
.SSU V
VersionSSV ]
.SS] ^
ValueSS^ c
)SSc d
;SSd e
}TT 
returnVV 
(VV 
(VV 
GetCreateMethodVV (
(VV( )
dataMigrationVV) 6
)VV6 7
??VV8 : 
GetCreateAsyncMethodVV; O
(VVO P
dataMigrationVVP ]
)VV] ^
)VV^ _
!=VV` b
nullVVc g
)VVg h
;VVh i
}WW 
)WW 
;WW 
returnYY 
outOfDateMigrationsYY &
.YY& '
SelectYY' -
(YY- .
mYY. /
=>YY0 2 
_typeFeatureProviderYY3 G
.YYG H#
GetFeatureForDependencyYYH _
(YY_ `
mYY` a
.YYa b
GetTypeYYb i
(YYi j
)YYj k
)YYk l
.YYl m
IdYYm o
)YYo p
.YYp q
ToListYYq w
(YYw x
)YYx y
;YYy z
}ZZ 	
public\\ 
async\\ 
Task\\ 
	Uninstall\\ #
(\\# $
string\\$ *
feature\\+ 2
)\\2 3
{]] 	
if^^ 
(^^ 
_logger^^ 
.^^ 
	IsEnabled^^ !
(^^! "
LogLevel^^" *
.^^* +
Information^^+ 6
)^^6 7
)^^7 8
{__ 
_logger`` 
.`` 
LogInformation`` &
(``& '
$str``' N
,``N O
feature``P W
)``W X
;``X Y
}aa 
varbb 

migrationsbb 
=bb 
GetDataMigrationsbb .
(bb. /
featurebb/ 6
)bb6 7
;bb7 8
foreachee 
(ee 
varee 
	migrationee "
inee# %

migrationsee& 0
)ee0 1
{ff 
varhh 
tempMigrationhh !
=hh" #
	migrationhh$ -
;hh- .
varkk 
dataMigrationRecordkk '
=kk( )
awaitkk* /'
GetDataMigrationRecordAsynckk0 K
(kkK L
tempMigrationkkL Y
)kkY Z
;kkZ [
varmm 
uninstallMethodmm #
=mm$ %
GetUninstallMethodmm& 8
(mm8 9
	migrationmm9 B
)mmB C
;mmC D
ifnn 
(nn 
uninstallMethodnn #
!=nn$ &
nullnn' +
)nn+ ,
{oo 
uninstallMethodpp #
.pp# $
Invokepp$ *
(pp* +
	migrationpp+ 4
,pp4 5
newpp6 9
objectpp: @
[pp@ A
$numppA B
]ppB C
)ppC D
;ppD E
}qq 
varss  
uninstallAsyncMethodss (
=ss) *#
GetUninstallAsyncMethodss+ B
(ssB C
	migrationssC L
)ssL M
;ssM N
iftt 
(tt  
uninstallAsyncMethodtt (
!=tt) +
nulltt, 0
)tt0 1
{uu 
awaitvv 
(vv 
Taskvv 
)vv   
uninstallAsyncMethodvv  4
.vv4 5
Invokevv5 ;
(vv; <
	migrationvv< E
,vvE F
newvvG J
objectvvK Q
[vvQ R
$numvvR S
]vvS T
)vvT U
;vvU V
}ww 
ifyy 
(yy 
dataMigrationRecordyy '
==yy( *
nullyy+ /
)yy/ 0
{zz 
continue{{ 
;{{ 
}|| 
(~~ 
await~~ '
GetDataMigrationRecordAsync~~ 2
(~~2 3
)~~3 4
)~~4 5
.~~5 6
DataMigrations~~6 D
.~~D E
Remove~~E K
(~~K L
dataMigrationRecord~~L _
)~~_ `
;~~` a
} 
}
ÄÄ 	
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
UpdateAsync
ÇÇ %
(
ÇÇ% &
IEnumerable
ÇÇ& 1
<
ÇÇ1 2
string
ÇÇ2 8
>
ÇÇ8 9

featureIds
ÇÇ: D
)
ÇÇD E
{
ÉÉ 	
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ 
	featureId
ÑÑ "
in
ÑÑ# %

featureIds
ÑÑ& 0
)
ÑÑ0 1
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
!
ÜÜ  
_processedFeatures
ÜÜ '
.
ÜÜ' (
Contains
ÜÜ( 0
(
ÜÜ0 1
	featureId
ÜÜ1 :
)
ÜÜ: ;
)
ÜÜ; <
{
áá 
await
àà 
UpdateAsync
àà %
(
àà% &
	featureId
àà& /
)
àà/ 0
;
àà0 1
}
ââ 
}
ää 
}
ãã 	
public
çç 
async
çç 
Task
çç 
UpdateAsync
çç %
(
çç% &
string
çç& ,
	featureId
çç- 6
)
çç6 7
{
éé 	
if
èè 
(
èè  
_processedFeatures
èè "
.
èè" #
Contains
èè# +
(
èè+ ,
	featureId
èè, 5
)
èè5 6
)
èè6 7
{
êê 
return
ëë 
;
ëë 
}
íí  
_processedFeatures
îî 
.
îî 
Add
îî "
(
îî" #
	featureId
îî# ,
)
îî, -
;
îî- .
if
ññ 
(
ññ 
_logger
ññ 
.
ññ 
	IsEnabled
ññ !
(
ññ! "
LogLevel
ññ" *
.
ññ* +
Information
ññ+ 6
)
ññ6 7
)
ññ7 8
{
óó 
_logger
òò 
.
òò 
LogInformation
òò &
(
òò& '
$str
òò' I
,
òòI J
	featureId
òòK T
)
òòT U
;
òòU V
}
ôô 
var
úú 
dependencies
úú 
=
úú 
_extensionManager
úú 0
.
ùù $
GetFeatureDependencies
ùù '
(
ùù' (
	featureId
ûû 
)
ûû 
.
üü 
Where
üü 
(
üü 
x
üü 
=>
üü 
x
üü 
.
üü 
Id
üü  
!=
üü! #
	featureId
üü$ -
)
üü- .
.
†† 
Select
†† 
(
†† 
x
†† 
=>
†† 
x
†† 
.
†† 
Id
†† !
)
††! "
;
††" #
await
¢¢ 
UpdateAsync
¢¢ 
(
¢¢ 
dependencies
¢¢ *
)
¢¢* +
;
¢¢+ ,
var
§§ 

migrations
§§ 
=
§§ 
GetDataMigrations
§§ .
(
§§. /
	featureId
§§/ 8
)
§§8 9
;
§§9 :
foreach
ßß 
(
ßß 
var
ßß 
	migration
ßß "
in
ßß# %

migrations
ßß& 0
)
ßß0 1
{
®® 
var
©© 
schemaBuilder
©© !
=
©©" #
new
©©$ '
SchemaBuilder
©©( 5
(
©©5 6
_store
©©6 <
.
©©< =
Configuration
©©= J
,
©©J K
await
©©L Q
_session
©©R Z
.
©©Z [
DemandAsync
©©[ f
(
©©f g
)
©©g h
)
©©h i
;
©©i j
	migration
™™ 
.
™™ 
SchemaBuilder
™™ '
=
™™( )
schemaBuilder
™™* 7
;
™™7 8
var
≠≠ 
tempMigration
≠≠ !
=
≠≠" #
	migration
≠≠$ -
;
≠≠- .
var
∞∞ !
dataMigrationRecord
∞∞ '
=
∞∞( )
await
∞∞* /)
GetDataMigrationRecordAsync
∞∞0 K
(
∞∞K L
tempMigration
∞∞L Y
)
∞∞Y Z
;
∞∞Z [
var
≤≤ 
current
≤≤ 
=
≤≤ 
$num
≤≤ 
;
≤≤  
if
≥≥ 
(
≥≥ !
dataMigrationRecord
≥≥ '
!=
≥≥( *
null
≥≥+ /
)
≥≥/ 0
{
¥¥ 
current
∂∂ 
=
∂∂ !
dataMigrationRecord
∂∂ 1
.
∂∂1 2
Version
∂∂2 9
.
∂∂9 :
HasValue
∂∂: B
?
∂∂C D!
dataMigrationRecord
∂∂E X
.
∂∂X Y
Version
∂∂Y `
.
∂∂` a
Value
∂∂a f
:
∂∂g h
current
∂∂i p
;
∂∂p q
}
∑∑ 
else
∏∏ 
{
ππ !
dataMigrationRecord
∫∫ '
=
∫∫( )
new
∫∫* -
Records
∫∫. 5
.
∫∫5 6
DataMigration
∫∫6 C
{
∫∫D E 
DataMigrationClass
∫∫F X
=
∫∫Y Z
	migration
∫∫[ d
.
∫∫d e
GetType
∫∫e l
(
∫∫l m
)
∫∫m n
.
∫∫n o
FullName
∫∫o w
}
∫∫x y
;
∫∫y z"
_dataMigrationRecord
ªª (
.
ªª( )
DataMigrations
ªª) 7
.
ªª7 8
Add
ªª8 ;
(
ªª; <!
dataMigrationRecord
ªª< O
)
ªªO P
;
ªªP Q
}
ºº 
try
ææ 
{
øø 
if
¡¡ 
(
¡¡ 
current
¡¡ 
==
¡¡  "
$num
¡¡# $
)
¡¡$ %
{
¬¬ 
var
≈≈ 
createMethod
≈≈ (
=
≈≈) *
GetCreateMethod
≈≈+ :
(
≈≈: ;
	migration
≈≈; D
)
≈≈D E
;
≈≈E F
if
∆∆ 
(
∆∆ 
createMethod
∆∆ (
!=
∆∆) +
null
∆∆, 0
)
∆∆0 1
{
«« 
current
»» #
=
»»$ %
(
»»& '
int
»»' *
)
»»* +
createMethod
»»+ 7
.
»»7 8
Invoke
»»8 >
(
»»> ?
	migration
»»? H
,
»»H I
new
»»J M
object
»»N T
[
»»T U
$num
»»U V
]
»»V W
)
»»W X
;
»»X Y
}
…… 
var
ÕÕ 
createAsyncMethod
ÕÕ -
=
ÕÕ. /"
GetCreateAsyncMethod
ÕÕ0 D
(
ÕÕD E
	migration
ÕÕE N
)
ÕÕN O
;
ÕÕO P
if
ŒŒ 
(
ŒŒ 
createAsyncMethod
ŒŒ -
!=
ŒŒ. 0
null
ŒŒ1 5
)
ŒŒ5 6
{
œœ 
current
–– #
=
––$ %
await
––& +
(
––, -
Task
––- 1
<
––1 2
int
––2 5
>
––5 6
)
––6 7
createAsyncMethod
––7 H
.
––H I
Invoke
––I O
(
––O P
	migration
––P Y
,
––Y Z
new
––[ ^
object
––_ e
[
––e f
$num
––f g
]
––g h
)
––h i
;
––i j
}
—— 
}
““ 
var
‘‘ 
lookupTable
‘‘ #
=
‘‘$ %&
CreateUpgradeLookupTable
‘‘& >
(
‘‘> ?
	migration
‘‘? H
)
‘‘H I
;
‘‘I J
while
÷÷ 
(
÷÷ 
lookupTable
÷÷ &
.
÷÷& '
TryGetValue
÷÷' 2
(
÷÷2 3
current
÷÷3 :
,
÷÷: ;
out
÷÷< ?
var
÷÷@ C

methodInfo
÷÷D N
)
÷÷N O
)
÷÷O P
{
◊◊ 
if
ÿÿ 
(
ÿÿ 
_logger
ÿÿ #
.
ÿÿ# $
	IsEnabled
ÿÿ$ -
(
ÿÿ- .
LogLevel
ÿÿ. 6
.
ÿÿ6 7
Information
ÿÿ7 B
)
ÿÿB C
)
ÿÿC D
{
ŸŸ 
_logger
⁄⁄ #
.
⁄⁄# $
LogInformation
⁄⁄$ 2
(
⁄⁄2 3
$str
⁄⁄3 s
,
⁄⁄s t
	featureId
⁄⁄u ~
,
⁄⁄~ 
current⁄⁄Ä á
)⁄⁄á à
;⁄⁄à â
}
€€ 
var
›› 
isAwaitable
›› '
=
››( )

methodInfo
››* 4
.
››4 5

ReturnType
››5 ?
.
››? @
	GetMethod
››@ I
(
››I J
nameof
››J P
(
››P Q
Task
››Q U
.
››U V

GetAwaiter
››V `
)
››` a
)
››a b
!=
››c e
null
››f j
;
››j k
if
ﬁﬁ 
(
ﬁﬁ 
isAwaitable
ﬁﬁ '
)
ﬁﬁ' (
{
ﬂﬂ 
current
‡‡ #
=
‡‡$ %
await
‡‡& +
(
‡‡, -
Task
‡‡- 1
<
‡‡1 2
int
‡‡2 5
>
‡‡5 6
)
‡‡6 7

methodInfo
‡‡7 A
.
‡‡A B
Invoke
‡‡B H
(
‡‡H I
	migration
‡‡I R
,
‡‡R S
new
‡‡T W
object
‡‡X ^
[
‡‡^ _
$num
‡‡_ `
]
‡‡` a
)
‡‡a b
;
‡‡b c
}
·· 
else
‚‚ 
{
„„ 
current
‰‰ #
=
‰‰$ %
(
‰‰& '
int
‰‰' *
)
‰‰* +

methodInfo
‰‰+ 5
.
‰‰5 6
Invoke
‰‰6 <
(
‰‰< =
	migration
‰‰= F
,
‰‰F G
new
‰‰H K
object
‰‰L R
[
‰‰R S
$num
‰‰S T
]
‰‰T U
)
‰‰U V
;
‰‰V W
}
ÂÂ 
}
ÊÊ 
if
ÈÈ 
(
ÈÈ 
current
ÈÈ 
==
ÈÈ  "
$num
ÈÈ# $
)
ÈÈ$ %
{
ÍÍ 
return
ÎÎ 
;
ÎÎ 
}
ÏÏ !
dataMigrationRecord
ÓÓ '
.
ÓÓ' (
Version
ÓÓ( /
=
ÓÓ0 1
current
ÓÓ2 9
;
ÓÓ9 :
}
ÔÔ 
catch
 
(
 
	Exception
  
ex
! #
)
# $
{
ÒÒ 
_logger
ÚÚ 
.
ÚÚ 
LogError
ÚÚ $
(
ÚÚ$ %
ex
ÚÚ% '
,
ÚÚ' (
$str
ÚÚ) o
,
ÚÚo p
current
ÚÚq x
,
ÚÚx y
	featureIdÚÚz É
)ÚÚÉ Ñ
;ÚÚÑ Ö
_session
ÙÙ 
.
ÙÙ 
Cancel
ÙÙ #
(
ÙÙ# $
)
ÙÙ$ %
;
ÙÙ% &
}
ıı 
finally
ˆˆ 
{
˜˜ 
_session
˘˘ 
.
˘˘ 
Save
˘˘ !
(
˘˘! ""
_dataMigrationRecord
˘˘" 6
)
˘˘6 7
;
˘˘7 8
}
˙˙ 
}
˚˚ 
}
¸¸ 	
private
˛˛ 
async
˛˛ 
Task
˛˛ 
<
˛˛ 
Records
˛˛ "
.
˛˛" #
DataMigration
˛˛# 0
>
˛˛0 1)
GetDataMigrationRecordAsync
˛˛2 M
(
˛˛M N
IDataMigration
˛˛N \
tempMigration
˛˛] j
)
˛˛j k
{
ˇˇ 	
var
ÄÄ !
dataMigrationRecord
ÄÄ #
=
ÄÄ$ %
await
ÄÄ& +)
GetDataMigrationRecordAsync
ÄÄ, G
(
ÄÄG H
)
ÄÄH I
;
ÄÄI J
return
ÅÅ !
dataMigrationRecord
ÅÅ &
.
ÇÇ 
DataMigrations
ÇÇ 
.
ÉÉ 
FirstOrDefault
ÉÉ 
(
ÉÉ  
dm
ÉÉ  "
=>
ÉÉ# %
dm
ÉÉ& (
.
ÉÉ( ) 
DataMigrationClass
ÉÉ) ;
==
ÉÉ< >
tempMigration
ÉÉ? L
.
ÉÉL M
GetType
ÉÉM T
(
ÉÉT U
)
ÉÉU V
.
ÉÉV W
FullName
ÉÉW _
)
ÉÉ_ `
;
ÉÉ` a
}
ÑÑ 	
private
ââ 
IEnumerable
ââ 
<
ââ 
IDataMigration
ââ *
>
ââ* +
GetDataMigrations
ââ, =
(
ââ= >
string
ââ> D
	featureId
ââE N
)
ââN O
{
ää 	
var
ãã 

migrations
ãã 
=
ãã 
_dataMigrations
ãã ,
.
åå 
Where
åå 
(
åå 
dm
åå 
=>
åå  "
_typeFeatureProvider
åå! 5
.
åå5 6%
GetFeatureForDependency
åå6 M
(
ååM N
dm
ååN P
.
ååP Q
GetType
ååQ X
(
ååX Y
)
ååY Z
)
ååZ [
.
åå[ \
Id
åå\ ^
==
åå_ a
	featureId
ååb k
)
ååk l
.
çç 
ToList
çç 
(
çç 
)
çç 
;
çç 
return
èè 

migrations
èè 
;
èè 
}
êê 	
private
ïï 
static
ïï 

Dictionary
ïï !
<
ïï! "
int
ïï" %
,
ïï% &

MethodInfo
ïï' 1
>
ïï1 2&
CreateUpgradeLookupTable
ïï3 K
(
ïïK L
IDataMigration
ïïL Z
dataMigration
ïï[ h
)
ïïh i
{
ññ 	
return
óó 
dataMigration
óó  
.
òò 
GetType
òò 
(
òò 
)
òò 
.
ôô 

GetMethods
ôô 
(
ôô 
BindingFlags
ôô (
.
ôô( )
Public
ôô) /
|
ôô0 1
BindingFlags
ôô2 >
.
ôô> ?
Instance
ôô? G
)
ôôG H
.
öö 
Select
öö 
(
öö 
GetUpdateMethod
öö '
)
öö' (
.
õõ 
Where
õõ 
(
õõ 
tuple
õõ 
=>
õõ 
tuple
õõ  %
!=
õõ& (
null
õõ) -
)
õõ- .
.
úú 
ToDictionary
úú 
(
úú 
tuple
úú #
=>
úú$ &
tuple
úú' ,
.
úú, -
Item1
úú- 2
,
úú2 3
tuple
úú4 9
=>
úú: <
tuple
úú= B
.
úúB C
Item2
úúC H
)
úúH I
;
úúI J
}
ùù 	
private
üü 
static
üü 
Tuple
üü 
<
üü 
int
üü  
,
üü  !

MethodInfo
üü" ,
>
üü, -
GetUpdateMethod
üü. =
(
üü= >

MethodInfo
üü> H

methodInfo
üüI S
)
üüS T
{
†† 	
const
°° 
string
°° 
updateFromPrefix
°° )
=
°°* +
$str
°°, 8
;
°°8 9
const
¢¢ 
string
¢¢ 
asyncSuffix
¢¢ $
=
¢¢% &
$str
¢¢' .
;
¢¢. /
if
§§ 
(
§§ 

methodInfo
§§ 
.
§§ 
Name
§§ 
.
§§  

StartsWith
§§  *
(
§§* +
updateFromPrefix
§§+ ;
,
§§; <
StringComparison
§§= M
.
§§M N
Ordinal
§§N U
)
§§U V
&&
§§W Y
(
§§Z [

methodInfo
§§[ e
.
§§e f

ReturnType
§§f p
==
§§q s
typeof
§§t z
(
§§z {
int
§§{ ~
)
§§~ 
||§§Ä Ç

methodInfo§§É ç
.§§ç é

ReturnType§§é ò
==§§ô õ
typeof§§ú ¢
(§§¢ £
Task§§£ ß
<§§ß ®
int§§® ´
>§§´ ¨
)§§¨ ≠
)§§≠ Æ
)§§Æ Ø
{
•• 
var
¶¶ 
version
¶¶ 
=
¶¶ 

methodInfo
¶¶ (
.
¶¶( )
Name
¶¶) -
.
¶¶- .
EndsWith
¶¶. 6
(
¶¶6 7
asyncSuffix
¶¶7 B
,
¶¶B C
StringComparison
¶¶D T
.
¶¶T U
Ordinal
¶¶U \
)
¶¶\ ]
?
ßß 

methodInfo
ßß  
.
ßß  !
Name
ßß! %
.
ßß% &
	Substring
ßß& /
(
ßß/ 0
updateFromPrefix
ßß0 @
.
ßß@ A
Length
ßßA G
,
ßßG H

methodInfo
ßßI S
.
ßßS T
Name
ßßT X
.
ßßX Y
Length
ßßY _
-
ßß` a
updateFromPrefix
ßßb r
.
ßßr s
Length
ßßs y
-
ßßz {
asyncSuffixßß| á
.ßßá à
Lengthßßà é
)ßßé è
:
®® 

methodInfo
®®  
.
®®  !
Name
®®! %
.
®®% &
	Substring
®®& /
(
®®/ 0
updateFromPrefix
®®0 @
.
®®@ A
Length
®®A G
)
®®G H
;
®®H I
if
™™ 
(
™™ 
Int32
™™ 
.
™™ 
TryParse
™™ "
(
™™" #
version
™™# *
,
™™* +
out
™™, /
var
™™0 3
versionValue
™™4 @
)
™™@ A
)
™™A B
{
´´ 
return
¨¨ 
new
¨¨ 
Tuple
¨¨ $
<
¨¨$ %
int
¨¨% (
,
¨¨( )

MethodInfo
¨¨* 4
>
¨¨4 5
(
¨¨5 6
versionValue
¨¨6 B
,
¨¨B C

methodInfo
¨¨D N
)
¨¨N O
;
¨¨O P
}
≠≠ 
}
ÆÆ 
return
∞∞ 
null
∞∞ 
;
∞∞ 
}
±± 	
private
∂∂ 
static
∂∂ 

MethodInfo
∂∂ !
GetCreateMethod
∂∂" 1
(
∂∂1 2
IDataMigration
∂∂2 @
dataMigration
∂∂A N
)
∂∂N O
{
∑∑ 	
var
∏∏ 

methodInfo
∏∏ 
=
∏∏ 
dataMigration
∏∏ *
.
∏∏* +
GetType
∏∏+ 2
(
∏∏2 3
)
∏∏3 4
.
∏∏4 5
	GetMethod
∏∏5 >
(
∏∏> ?
$str
∏∏? G
,
∏∏G H
BindingFlags
∏∏I U
.
∏∏U V
Public
∏∏V \
|
∏∏] ^
BindingFlags
∏∏_ k
.
∏∏k l
Instance
∏∏l t
)
∏∏t u
;
∏∏u v
if
ππ 
(
ππ 

methodInfo
ππ 
!=
ππ 
null
ππ "
&&
ππ# %

methodInfo
ππ& 0
.
ππ0 1

ReturnType
ππ1 ;
==
ππ< >
typeof
ππ? E
(
ππE F
int
ππF I
)
ππI J
)
ππJ K
{
∫∫ 
return
ªª 

methodInfo
ªª !
;
ªª! "
}
ºº 
return
ææ 
null
ææ 
;
ææ 
}
øø 	
private
ƒƒ 
static
ƒƒ 

MethodInfo
ƒƒ !"
GetCreateAsyncMethod
ƒƒ" 6
(
ƒƒ6 7
IDataMigration
ƒƒ7 E
dataMigration
ƒƒF S
)
ƒƒS T
{
≈≈ 	
var
∆∆ 

methodInfo
∆∆ 
=
∆∆ 
dataMigration
∆∆ *
.
∆∆* +
GetType
∆∆+ 2
(
∆∆2 3
)
∆∆3 4
.
∆∆4 5
	GetMethod
∆∆5 >
(
∆∆> ?
$str
∆∆? L
,
∆∆L M
BindingFlags
∆∆N Z
.
∆∆Z [
Public
∆∆[ a
|
∆∆b c
BindingFlags
∆∆d p
.
∆∆p q
Instance
∆∆q y
)
∆∆y z
;
∆∆z {
if
«« 
(
«« 

methodInfo
«« 
!=
«« 
null
«« "
&&
««# %

methodInfo
««& 0
.
««0 1

ReturnType
««1 ;
==
««< >
typeof
««? E
(
««E F
Task
««F J
<
««J K
int
««K N
>
««N O
)
««O P
)
««P Q
{
»» 
return
…… 

methodInfo
…… !
;
……! "
}
   
return
ÃÃ 
null
ÃÃ 
;
ÃÃ 
}
ÕÕ 	
private
““ 
static
““ 

MethodInfo
““ ! 
GetUninstallMethod
““" 4
(
““4 5
IDataMigration
““5 C
dataMigration
““D Q
)
““Q R
{
”” 	
var
‘‘ 

methodInfo
‘‘ 
=
‘‘ 
dataMigration
‘‘ *
.
‘‘* +
GetType
‘‘+ 2
(
‘‘2 3
)
‘‘3 4
.
‘‘4 5
	GetMethod
‘‘5 >
(
‘‘> ?
$str
‘‘? J
,
‘‘J K
BindingFlags
‘‘L X
.
‘‘X Y
Public
‘‘Y _
|
‘‘` a
BindingFlags
‘‘b n
.
‘‘n o
Instance
‘‘o w
)
‘‘w x
;
‘‘x y
if
’’ 
(
’’ 

methodInfo
’’ 
!=
’’ 
null
’’ "
&&
’’# %

methodInfo
’’& 0
.
’’0 1

ReturnType
’’1 ;
==
’’< >
typeof
’’? E
(
’’E F
void
’’F J
)
’’J K
)
’’K L
{
÷÷ 
return
◊◊ 

methodInfo
◊◊ !
;
◊◊! "
}
ÿÿ 
return
⁄⁄ 
null
⁄⁄ 
;
⁄⁄ 
}
€€ 	
private
‡‡ 
static
‡‡ 

MethodInfo
‡‡ !%
GetUninstallAsyncMethod
‡‡" 9
(
‡‡9 :
IDataMigration
‡‡: H
dataMigration
‡‡I V
)
‡‡V W
{
·· 	
var
‚‚ 

methodInfo
‚‚ 
=
‚‚ 
dataMigration
‚‚ *
.
‚‚* +
GetType
‚‚+ 2
(
‚‚2 3
)
‚‚3 4
.
‚‚4 5
	GetMethod
‚‚5 >
(
‚‚> ?
$str
‚‚? O
,
‚‚O P
BindingFlags
‚‚Q ]
.
‚‚] ^
Public
‚‚^ d
|
‚‚e f
BindingFlags
‚‚g s
.
‚‚s t
Instance
‚‚t |
)
‚‚| }
;
‚‚} ~
if
„„ 
(
„„ 

methodInfo
„„ 
!=
„„ 
null
„„ "
&&
„„# %

methodInfo
„„& 0
.
„„0 1

ReturnType
„„1 ;
==
„„< >
typeof
„„? E
(
„„E F
Task
„„F J
)
„„J K
)
„„K L
{
‰‰ 
return
ÂÂ 

methodInfo
ÂÂ !
;
ÂÂ! "
}
ÊÊ 
return
ËË 
null
ËË 
;
ËË 
}
ÈÈ 	
public
ÎÎ 
async
ÎÎ 
Task
ÎÎ $
UpdateAllFeaturesAsync
ÎÎ 0
(
ÎÎ0 1
)
ÎÎ1 2
{
ÏÏ 	
var
ÌÌ $
featuresThatNeedUpdate
ÌÌ &
=
ÌÌ' (
await
ÌÌ) .,
GetFeaturesThatNeedUpdateAsync
ÌÌ/ M
(
ÌÌM N
)
ÌÌN O
;
ÌÌO P
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ 
	featureId
ÔÔ "
in
ÔÔ# %$
featuresThatNeedUpdate
ÔÔ& <
)
ÔÔ< =
{
 
try
ÒÒ 
{
ÚÚ 
await
ÛÛ 
UpdateAsync
ÛÛ %
(
ÛÛ% &
	featureId
ÛÛ& /
)
ÛÛ/ 0
;
ÛÛ0 1
}
ÙÙ 
catch
ıı 
(
ıı 
	Exception
ıı  
ex
ıı! #
)
ıı# $
when
ıı% )
(
ıı* +
!
ıı+ ,
ex
ıı, .
.
ıı. /
IsFatal
ıı/ 6
(
ıı6 7
)
ıı7 8
)
ıı8 9
{
ˆˆ 
_logger
˜˜ 
.
˜˜ 
LogError
˜˜ $
(
˜˜$ %
ex
˜˜% '
,
˜˜' (
$str
˜˜) d
,
˜˜d e
	featureId
˜˜f o
)
˜˜o p
;
˜˜p q
}
¯¯ 
}
˘˘ 
}
˙˙ 	
}
˚˚ 
}¸¸ Ó
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data\Migration\Records\DataMigration.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Migration $
.$ %
Records% ,
{ 
public 

class 
DataMigration 
{ 
public 
string 
DataMigrationClass (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
Version 
{ 
get !
;! "
set# &
;& '
}( )
} 
} æ
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data\Migration\Records\DataMigrationRecord.cs
	namespace 	
OrchardCore
 
. 
Data 
. 
	Migration $
.$ %
Records% ,
{ 
public 

class 
DataMigrationRecord $
{		 
public 
DataMigrationRecord "
(" #
)# $
{ 	
DataMigrations 
= 
new  
List! %
<% &
DataMigration& 3
>3 4
(4 5
)5 6
;6 7
} 	
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
List 
< 
DataMigration !
>! "
DataMigrations# 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
} †Z
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Data\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class (
OrchardCoreBuilderExtensions 4
{ 
public 
static 
OrchardCoreBuilder (
AddDataAccess) 6
(6 7
this7 ;
OrchardCoreBuilder< N
builderO V
)V W
{   	
builder!! 
.!! 
ConfigureServices!! %
(!!% &
services!!& .
=>!!/ 1
{"" 
services## 
.## 
	AddScoped## "
<##" #!
IDataMigrationManager### 8
,##8 9 
DataMigrationManager##: N
>##N O
(##O P
)##P Q
;##Q R
services$$ 
.$$ 
	AddScoped$$ "
<$$" # 
IModularTenantEvents$$# 7
,$$7 8#
AutomaticDataMigrations$$9 P
>$$P Q
($$Q R
)$$R S
;$$S T
services'' 
.'' 
TryAddDataProvider'' +
(''+ ,
name'', 0
:''0 1
$str''2 >
,''> ?
value''@ E
:''E F
$str''G V
,''V W
hasConnectionString''X k
:''k l
true''m q
,''q r#
sampleConnectionString	''s â
:
''â ä
$str
''ã —
,
''— “
hasTablePrefix
''” ·
:
''· ‚
true
''„ Á
,
''Á Ë
	isDefault
''È Ú
:
''Ú Û
false
''Ù ˘
)
''˘ ˙
;
''˙ ˚
services(( 
.(( 
TryAddDataProvider(( +
(((+ ,
name((, 0
:((0 1
$str((2 :
,((: ;
value((< A
:((A B
$str((C K
,((K L
hasConnectionString((M `
:((` a
false((b g
,((g h
hasTablePrefix((i w
:((w x
false((y ~
,((~ 
	isDefault
((Ä â
:
((â ä
true
((ã è
)
((è ê
;
((ê ë
services)) 
.)) 
TryAddDataProvider)) +
())+ ,
name)), 0
:))0 1
$str))2 9
,))9 :
value)); @
:))@ A
$str))B I
,))I J
hasConnectionString))K ^
:))^ _
true))` d
,))d e"
sampleConnectionString))f |
:))| }
$str	))~ ª
,
))ª º
hasTablePrefix
))Ω À
:
))À Ã
true
))Õ —
,
))— “
	isDefault
))” ‹
:
))‹ ›
false
))ﬁ „
)
))„ ‰
;
))‰ Â
services** 
.** 
TryAddDataProvider** +
(**+ ,
name**, 0
:**0 1
$str**2 <
,**< =
value**> C
:**C D
$str**E O
,**O P
hasConnectionString**Q d
:**d e
true**f j
,**j k#
sampleConnectionString	**l Ç
:
**Ç É
$str
**Ñ ‘
,
**‘ ’
hasTablePrefix
**÷ ‰
:
**‰ Â
true
**Ê Í
,
**Í Î
	isDefault
**Ï ı
:
**ı ˆ
false
**˜ ¸
)
**¸ ˝
;
**˝ ˛
services.. 
... 
AddSingleton.. %
(..% &
sp..& (
=>..) +
{// 
var00 
shellSettings00 %
=00& '
sp00( *
.00* +

GetService00+ 5
<005 6
ShellSettings006 C
>00C D
(00D E
)00E F
;00F G
if33 
(33 
shellSettings33 %
.33% &
State33& +
==33, .
TenantState33/ :
.33: ;
Uninitialized33; H
||33I K
shellSettings33L Y
[33Y Z
$str33Z l
]33l m
==33n p
null33q u
)33u v
{44 
return55 
null55 #
;55# $
}66 
IConfiguration88 "
storeConfiguration88# 5
=886 7
new888 ;
YesSql88< B
.88B C
Configuration88C P
(88P Q
)88Q R
;88R S
switch:: 
(:: 
shellSettings:: )
[::) *
$str::* <
]::< =
)::= >
{;; 
case<< 
$str<< ,
:<<, -
storeConfiguration== .
.>>  !
UseSqlServer>>! -
(>>- .
shellSettings>>. ;
[>>; <
$str>>< N
]>>N O
,>>O P
IsolationLevel>>Q _
.>>_ `
ReadUncommitted>>` o
)>>o p
.??  !
UseBlockIdGenerator??! 4
(??4 5
)??5 6
;??6 7
break@@ !
;@@! "
caseAA 
$strAA %
:AA% &
varBB 
shellOptionsBB  ,
=BB- .
spBB/ 1
.BB1 2

GetServiceBB2 <
<BB< =
IOptionsBB= E
<BBE F
ShellOptionsBBF R
>BBR S
>BBS T
(BBT U
)BBU V
;BBV W
varCC 
optionCC  &
=CC' (
shellOptionsCC) 5
.CC5 6
ValueCC6 ;
;CC; <
varDD 
databaseFolderDD  .
=DD/ 0
PathDD1 5
.DD5 6
CombineDD6 =
(DD= >
optionDD> D
.DDD E%
ShellsApplicationDataPathDDE ^
,DD^ _
optionDD` f
.DDf g
ShellsContainerNameDDg z
,DDz {
shellSettings	DD| â
.
DDâ ä
Name
DDä é
)
DDé è
;
DDè ê
varEE 
databaseFileEE  ,
=EE- .
PathEE/ 3
.EE3 4
CombineEE4 ;
(EE; <
databaseFolderEE< J
,EEJ K
$strEEL W
)EEW X
;EEX Y
	DirectoryFF %
.FF% &
CreateDirectoryFF& 5
(FF5 6
databaseFolderFF6 D
)FFD E
;FFE F
storeConfigurationGG .
.HH  !
	UseSqLiteHH! *
(HH* +
$"HH+ -
Data Source=HH- 9
{HH9 :
databaseFileHH: F
}HHF G
;Cache=SharedHHG T
"HHT U
,HHU V
IsolationLevelHHW e
.HHe f
ReadUncommittedHHf u
)HHu v
.II  !!
UseDefaultIdGeneratorII! 6
(II6 7
)II7 8
;II8 9
breakJJ !
;JJ! "
caseKK 
$strKK $
:KK$ %
storeConfigurationLL .
.MM  !
UseMySqlMM! )
(MM) *
shellSettingsMM* 7
[MM7 8
$strMM8 J
]MMJ K
,MMK L
IsolationLevelMMM [
.MM[ \
ReadUncommittedMM\ k
)MMk l
.NN  !
UseBlockIdGeneratorNN! 4
(NN4 5
)NN5 6
;NN6 7
breakOO !
;OO! "
casePP 
$strPP '
:PP' (
storeConfigurationQQ .
.RR  !
UsePostgreSqlRR! .
(RR. /
shellSettingsRR/ <
[RR< =
$strRR= O
]RRO P
,RRP Q
IsolationLevelRRR `
.RR` a
ReadUncommittedRRa p
)RRp q
.SS  !
UseBlockIdGeneratorSS! 4
(SS4 5
)SS5 6
;SS6 7
breakTT !
;TT! "
defaultUU 
:UU  
throwVV !
newVV" %
ArgumentExceptionVV& 7
(VV7 8
$strVV8 U
+VVV W
shellSettingsVVX e
[VVe f
$strVVf x
]VVx y
)VVy z
;VVz {
}WW 
ifYY 
(YY 
!YY 
stringYY 
.YY  
IsNullOrWhiteSpaceYY  2
(YY2 3
shellSettingsYY3 @
[YY@ A
$strYYA N
]YYN O
)YYO P
)YYP Q
{ZZ 
storeConfiguration[[ *
=[[+ ,
storeConfiguration[[- ?
.[[? @
SetTablePrefix[[@ N
([[N O
shellSettings[[O \
[[[\ ]
$str[[] j
][[j k
+[[l m
$str[[n q
)[[q r
;[[r s
}\\ 
var^^ 
store^^ 
=^^ 
StoreFactory^^  ,
.^^, -$
CreateAndInitializeAsync^^- E
(^^E F
storeConfiguration^^F X
)^^X Y
.^^Y Z

GetAwaiter^^Z d
(^^d e
)^^e f
.^^f g
	GetResult^^g p
(^^p q
)^^q r
;^^r s
var__ 
indexes__ 
=__  !
sp__" $
.__$ %
GetServices__% 0
<__0 1
IIndexProvider__1 ?
>__? @
(__@ A
)__A B
;__B C
storeaa 
.aa 
RegisterIndexesaa )
(aa) *
indexesaa* 1
)aa1 2
;aa2 3
returncc 
storecc  
;cc  !
}dd 
)dd 
;dd 
servicesff 
.ff 
	AddScopedff "
(ff" #
spff# %
=>ff& (
{gg 
varhh 
storehh 
=hh 
sphh  "
.hh" #

GetServicehh# -
<hh- .
IStorehh. 4
>hh4 5
(hh5 6
)hh6 7
;hh7 8
ifjj 
(jj 
storejj 
==jj  
nulljj! %
)jj% &
{kk 
returnll 
nullll #
;ll# $
}mm 
varoo 
sessionoo 
=oo  !
storeoo" '
.oo' (
CreateSessionoo( 5
(oo5 6
)oo6 7
;oo7 8
varqq 
scopedServicesqq &
=qq' (
spqq) +
.qq+ ,
GetServicesqq, 7
<qq7 8 
IScopedIndexProviderqq8 L
>qqL M
(qqM N
)qqN O
;qqO P
sessionss 
.ss 
RegisterIndexesss +
(ss+ ,
scopedServicesss, :
.ss: ;
ToArrayss; B
(ssB C
)ssC D
)ssD E
;ssE F

ShellScopeuu 
.uu !
RegisterBeforeDisposeuu 4
(uu4 5
scopeuu5 :
=>uu; =
{vv 
returnww 
scopeww $
.ww$ %
ServiceProviderww% 4
.xx 
GetRequiredServicexx /
<xx/ 0
IDocumentStorexx0 >
>xx> ?
(xx? @
)xx@ A
.yy 
CommitAsyncyy (
(yy( )
)yy) *
;yy* +
}zz 
)zz 
;zz 
return|| 
session|| "
;||" #
}}} 
)}} 
;}} 
services 
. 
	AddScoped "
<" #
IDocumentStore# 1
,1 2
DocumentStore3 @
>@ A
(A B
)B C
;C D
services
ÄÄ 
.
ÄÄ 
AddSingleton
ÄÄ %
<
ÄÄ% & 
IFileDocumentStore
ÄÄ& 8
,
ÄÄ8 9
FileDocumentStore
ÄÄ: K
>
ÄÄK L
(
ÄÄL M
)
ÄÄM N
;
ÄÄN O
services
ÇÇ 
.
ÇÇ 
AddTransient
ÇÇ %
<
ÇÇ% &#
IDbConnectionAccessor
ÇÇ& ;
,
ÇÇ; <"
DbConnectionAccessor
ÇÇ= Q
>
ÇÇQ R
(
ÇÇR S
)
ÇÇS T
;
ÇÇT U
}
ÉÉ 
)
ÉÉ 
;
ÉÉ 
return
ÖÖ 
builder
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
}
áá 
}àà 