Á
ŒD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DataProtection.Azure\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str ,
,, -
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
$str N
,N O
Category		 
=		 
$str		 
)

 
]

 šJ
‹D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DataProtection.Azure\Startup.cs
	namespace 	
OrchardCore
 
. 
DataProtection $
.$ %
Azure% *
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
IShellConfiguration ,
_configuration- ;
;; <
private 
readonly 
ShellOptions %
_shellOptions& 3
;3 4
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public 
Startup 
( 
IShellConfiguration 
configuration  -
,- .
IOptions 
< 
ShellOptions !
>! "
shellOptions# /
,/ 0
ShellSettings 
shellSettings '
,' (
ILogger 
< 
Startup 
> 
logger #
)# $
{ 	
_configuration 
= 
configuration *
;* +
_shellOptions 
= 
shellOptions (
.( )
Value) .
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
public## 
override## 
void## 
ConfigureServices## .
(##. /
IServiceCollection##/ A
services##B J
)##J K
{$$ 	
var%% 
connectionString%%  
=%%! "
_configuration%%# 1
.%%1 2
GetValue%%2 :
<%%: ;
string%%; A
>%%A B
(%%B C
$str%%C v
)%%v w
;%%w x
if'' 
('' 
!'' 
string'' 
.'' 
IsNullOrWhiteSpace'' *
(''* +
connectionString''+ ;
)''; <
)''< =
{(( 
services)) 
.)) 
AddDataProtection)) *
())* +
)))+ ,
.)), -)
PersistKeysToAzureBlobStorage))- J
())J K
connectionString))K [
,))[ \ 
GetBlobContainerName))] q
())q r
connectionString	))r ‚
)
))‚ ƒ
,
))ƒ „
GetBlobName
))… 
(
)) ‘
)
))‘ ’
)
))’ “
;
))“ ”
}** 
else++ 
{,, 
_logger-- 
.-- 
LogCritical-- #
(--# $
$str	--$ 
)
-- ‘
;
--‘ ’
}.. 
}// 	
private11 
string11  
GetBlobContainerName11 +
(11+ ,
string11, 2
connectionString113 C
)11C D
{22 	
var33 
containerName33 
=33 
_configuration33  .
.33. /
GetValue33/ 7
(337 8
$str338 h
,33h i
$str33j z
)33z {
;33{ |
try66 
{77 
var88 
templateContext88 #
=88$ %
new88& )
TemplateContext88* 9
(889 :
)88: ;
;88; <
templateContext99 
.99   
MemberAccessStrategy99  4
.994 5
Register995 =
<99= >
ShellSettings99> K
>99K L
(99L M
)99M N
;99N O
templateContext:: 
.::  
SetValue::  (
(::( )
$str::) 8
,::8 9
_shellSettings::: H
)::H I
;::I J
var<< 
template<< 
=<< 
FluidTemplate<< ,
.<<, -
Parse<<- 2
(<<2 3
containerName<<3 @
)<<@ A
;<<A B
containerName?? 
=?? 
template??  (
.??( )
Render??) /
(??/ 0
templateContext??0 ?
,??? @
NullEncoder??A L
.??L M
Default??M T
)??T U
.??U V
ToLower??V ]
(??] ^
)??^ _
;??_ `
containerName@@ 
.@@ 
Replace@@ %
(@@% &
$str@@& *
,@@* +
String@@, 2
.@@2 3
Empty@@3 8
)@@8 9
.@@9 :
Replace@@: A
(@@A B
$str@@B F
,@@F G
String@@H N
.@@N O
Empty@@O T
)@@T U
;@@U V
}AA 
catchBB 
(BB 
	ExceptionBB 
eBB 
)BB 
{CC 
_loggerDD 
.DD 
LogCriticalDD #
(DD# $
eDD$ %
,DD% &
$strDD' [
)DD[ \
;DD\ ]
throwEE 
;EE 
}FF 
varHH 
createContainerHH 
=HH  !
_configurationHH" 0
.HH0 1
GetValueHH1 9
(HH9 :
$strHH: l
,HHl m
trueHHn r
)HHr s
;HHs t
ifII 
(II 
createContainerII 
)II  
{JJ 
tryKK 
{LL 
_loggerMM 
.MM 
LogDebugMM $
(MM$ %
$strMM% b
,MMb c
containerNameMMd q
)MMq r
;MMr s
varNN 
_blobContainerNN &
=NN' (
newNN) ,
BlobContainerClientNN- @
(NN@ A
connectionStringNNA Q
,NNQ R
containerNameNNS `
)NN` a
;NNa b
varOO 
responseOO  
=OO! "
_blobContainerOO$ 2
.OO2 3"
CreateIfNotExistsAsyncOO3 I
(OOI J
PublicAccessTypeOOJ Z
.OOZ [
NoneOO[ _
)OO_ `
.OO` a

GetAwaiterOOa k
(OOk l
)OOl m
.OOm n
	GetResultOOn w
(OOw x
)OOx y
;OOy z
_loggerPP 
.PP 
LogDebugPP $
(PP$ %
$strPP% Y
,PPY Z
containerNamePP[ h
)PPh i
;PPi j
}QQ 
catchRR 
(RR 
	ExceptionRR  
)RR  !
{SS 
_loggerTT 
.TT 
LogCriticalTT '
(TT' (
$str	TT( •
)
TT• –
;
TT– —
throwVV 
;VV 
}WW 
}XX 
returnZZ 
containerNameZZ  
;ZZ  !
}[[ 	
private]] 
string]] 
GetBlobName]] "
(]]" #
)]]# $
{^^ 	
var__ 
blobName__ 
=__ 
_configuration__ )
.__) *
GetValue__* 2
<__2 3
string__3 9
>__9 :
(__: ;
$str__; f
)__f g
;__g h
ifaa 
(aa 
Stringaa 
.aa 
IsNullOrEmptyaa $
(aa$ %
blobNameaa% -
)aa- .
)aa. /
{bb 
blobNamecc 
=cc 
$"cc 
{cc 
_shellOptionscc +
.cc+ ,
ShellsContainerNamecc, ?
}cc? @
/cc@ A
{ccA B
_shellSettingsccB P
.ccP Q
NameccQ U
}ccU V#
/DataProtectionKeys.xmlccV m
"ccm n
;ccn o
}dd 
elseee 
{ff 
trygg 
{hh 
varjj 
templateContextjj '
=jj( )
newjj* -
TemplateContextjj. =
(jj= >
)jj> ?
;jj? @
templateContextkk #
.kk# $ 
MemberAccessStrategykk$ 8
.kk8 9
Registerkk9 A
<kkA B
ShellSettingskkB O
>kkO P
(kkP Q
)kkQ R
;kkR S
templateContextll #
.ll# $
SetValuell$ ,
(ll, -
$strll- <
,ll< =
_shellSettingsll> L
)llL M
;llM N
varnn 
templatenn  
=nn! "
FluidTemplatenn# 0
.nn0 1
Parsenn1 6
(nn6 7
blobNamenn7 ?
)nn? @
;nn@ A
blobNamepp 
=pp 
templatepp '
.pp' (
Renderpp( .
(pp. /
templateContextpp/ >
,pp> ?
NullEncoderpp@ K
.ppK L
DefaultppL S
)ppS T
;ppT U
blobNameqq 
.qq 
Replaceqq $
(qq$ %
$strqq% )
,qq) *
Stringqq+ 1
.qq1 2
Emptyqq2 7
)qq7 8
.qq8 9
Replaceqq9 @
(qq@ A
$strqqA E
,qqE F
StringqqG M
.qqM N
EmptyqqN S
)qqS T
;qqT U
}rr 
catchss 
(ss 
	Exceptionss  
ess! "
)ss" #
{tt 
_loggeruu 
.uu 
LogCriticaluu '
(uu' (
euu( )
,uu) *
$struu+ W
)uuW X
;uuX Y
throwvv 
;vv 
}ww 
}xx 
returnzz 
blobNamezz 
;zz 
}{{ 	
public~~ 
override~~ 
int~~ 
Order~~ !
=>~~" $
$num~~% '
;~~' (
} 
}€€ 