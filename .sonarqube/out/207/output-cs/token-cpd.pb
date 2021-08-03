ë
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
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
String 
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
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
NavigationConstants) <
.< =*
AdminMenuConfigurationPosition= [
,[ \
design] c
=>d f
designg m
. 
AddClass 
( 
$str 2
)2 3
.3 4
Id4 6
(6 7
$str7 F
)F G
. 
Add 
( 
S 
[ 
$str %
]% &
,& '
S( )
[) *
$str* 4
]4 5
.5 6
PrefixPosition6 D
(D E
)E F
,F G

deploymentH R
=>S U

deploymentV `
. 
Action 
(  
$str  '
,' (
$str) 0
,0 1
new2 5
{6 7
area8 <
== >
$str? Y
}Z [
)[ \
. 

Permission #
(# $
Permissions$ /
./ 0
ExecuteGraphQL0 >
)> ?
. 
LocalNav !
(! "
)" #
) 
)   
;   
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% ‹
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
." #
Controllers# .
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
[ 	
HttpGet	 
] 
public 
IActionResult 
Index "
(" #
)# $
{		 	
return

 
View
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
} …õ
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\GraphQLMiddleware.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

class 
GraphQLMiddleware "
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
private 
readonly 
GraphQLSettings (
	_settings) 2
;2 3
private 
readonly 
IDocumentExecuter *
	_executer+ 4
;4 5
internal 
static 
readonly  
Encoding! )
_utf8Encoding* 7
=8 9
new: =
UTF8Encoding> J
(J K
falseK P
)P Q
;Q R
private 
readonly 
static 
	MediaType  )
_jsonMediaType* 8
=9 :
new; >
	MediaType? H
(H I
$strI [
)[ \
;\ ]
private 
readonly 
static 
	MediaType  )
_graphQlMediaType* ;
=< =
new> A
	MediaTypeB K
(K L
$strL a
)a b
;b c
public!! 
GraphQLMiddleware!!  
(!!  !
RequestDelegate"" 
next""  
,""  !
GraphQLSettings## 
settings## $
,##$ %
IDocumentExecuter$$ 
executer$$ &
)$$& '
{%% 	
_next&& 
=&& 
next&& 
;&& 
	_settings'' 
='' 
settings''  
;''  !
	_executer(( 
=(( 
executer((  
;((  !
})) 	
public++ 
async++ 
Task++ 
Invoke++  
(++  !
HttpContext++! ,
context++- 4
,++4 5!
IAuthorizationService++6 K 
authorizationService++L `
,++` a"
IAuthenticationService++b x"
authenticationService	++y é
,
++é è
ISchemaFactory
++ê û
schemaService
++ü ¨
)
++¨ ≠
{,, 	
if-- 
(-- 
!-- 
IsGraphQLRequest-- !
(--! "
context--" )
)--) *
)--* +
{.. 
await// 
_next// 
(// 
context// #
)//# $
;//$ %
}00 
else11 
{22 
var33 
authenticateResult33 &
=33' (
await33) .!
authenticationService33/ D
.33D E
AuthenticateAsync33E V
(33V W
context33W ^
,33^ _
$str33` e
)33e f
;33f g
if55 
(55 
authenticateResult55 &
.55& '
	Succeeded55' 0
)550 1
{66 
context77 
.77 
User77  
=77! "
authenticateResult77# 5
.775 6
	Principal776 ?
;77? @
}88 
var:: 

authorized:: 
=::  
await::! & 
authorizationService::' ;
.::; <
AuthorizeAsync::< J
(::J K
context::K R
.::R S
User::S W
,::W X
Permissions::Y d
.::d e
ExecuteGraphQL::e s
)::s t
;::t u
if<< 
(<< 

authorized<< 
)<< 
{== 
await>> 
ExecuteAsync>> &
(>>& '
context>>' .
,>>. /
schemaService>>0 =
)>>= >
;>>> ?
}?? 
else@@ 
{AA 
awaitBB 
contextBB !
.BB! "
ChallengeAsyncBB" 0
(BB0 1
$strBB1 6
)BB6 7
;BB7 8
}CC 
}DD 
}EE 	
privateGG 
boolGG 
IsGraphQLRequestGG %
(GG% &
HttpContextGG& 1
contextGG2 9
)GG9 :
{HH 	
returnII 
contextII 
.II 
RequestII "
.II" #
PathII# '
.II' ((
StartsWithNormalizedSegmentsII( D
(IID E
	_settingsIIE N
.IIN O
PathIIO S
,IIS T
StringComparisonIIU e
.IIe f
OrdinalIgnoreCaseIIf w
)IIw x
;IIx y
}JJ 	
privateLL 
asyncLL 
TaskLL 
ExecuteAsyncLL '
(LL' (
HttpContextLL( 3
contextLL4 ;
,LL; <
ISchemaFactoryLL= K
schemaServiceLLL Y
)LLY Z
{MM 	
varNN 
schemaNN 
=NN 
awaitNN 
schemaServiceNN ,
.NN, -
GetSchemaAsyncNN- ;
(NN; <
)NN< =
;NN= >
GraphQLRequestPP 
requestPP "
=PP# $
nullPP% )
;PP) *
ifTT 
(TT 
HttpMethodsTT 
.TT 
IsPostTT "
(TT" #
contextTT# *
.TT* +
RequestTT+ 2
.TT2 3
MethodTT3 9
)TT9 :
)TT: ;
{UU 
varVV 
	mediaTypeVV 
=VV 
newVV  #
	MediaTypeVV$ -
(VV- .
contextVV. 5
.VV5 6
RequestVV6 =
.VV= >
ContentTypeVV> I
)VVI J
;VVJ K
tryXX 
{YY 
ifZZ 
(ZZ 
	mediaTypeZZ !
.ZZ! "

IsSubsetOfZZ" ,
(ZZ, -
_jsonMediaTypeZZ- ;
)ZZ; <
)ZZ< =
{[[ 
using\\ 
(\\ 
var\\ "
sr\\# %
=\\& '
new\\( +
StreamReader\\, 8
(\\8 9
context\\9 @
.\\@ A
Request\\A H
.\\H I
Body\\I M
)\\M N
)\\N O
{]] 
var__ 
json__  $
=__% &
await__' ,
sr__- /
.__/ 0
ReadToEndAsync__0 >
(__> ?
)__? @
;__@ A
request`` #
=``$ %
JObject``& -
.``- .
Parse``. 3
(``3 4
json``4 8
)``8 9
.``9 :
ToObject``: B
<``B C
GraphQLRequest``C Q
>``Q R
(``R S
)``S T
;``T U
}aa 
}bb 
elsecc 
ifcc 
(cc 
	mediaTypecc &
.cc& '

IsSubsetOfcc' 1
(cc1 2
_graphQlMediaTypecc2 C
)ccC D
)ccD E
{dd 
requestee 
=ee  !
newee" %
GraphQLRequestee& 4
(ee4 5
)ee5 6
;ee6 7
usinggg 
(gg 
vargg "
srgg# %
=gg& '
newgg( +
StreamReadergg, 8
(gg8 9
contextgg9 @
.gg@ A
RequestggA H
.ggH I
BodyggI M
)ggM N
)ggN O
{hh 
requestii #
.ii# $
Queryii$ )
=ii* +
awaitii, 1
srii2 4
.ii4 5
ReadToEndAsyncii5 C
(iiC D
)iiD E
;iiE F
}jj 
}kk 
elsell 
ifll 
(ll 
contextll $
.ll$ %
Requestll% ,
.ll, -
Queryll- 2
.ll2 3
ContainsKeyll3 >
(ll> ?
$strll? F
)llF G
)llG H
{mm 
requestnn 
=nn  !
newnn" %
GraphQLRequestnn& 4
{oo 
Querypp !
=pp" #
contextpp$ +
.pp+ ,
Requestpp, 3
.pp3 4
Querypp4 9
[pp9 :
$strpp: A
]ppA B
}qq 
;qq 
ifss 
(ss 
contextss #
.ss# $
Requestss$ +
.ss+ ,
Queryss, 1
.ss1 2
ContainsKeyss2 =
(ss= >
$strss> I
)ssI J
)ssJ K
{tt 
requestuu #
.uu# $
	Variablesuu$ -
=uu. /
JObjectuu0 7
.uu7 8
Parseuu8 =
(uu= >
contextuu> E
.uuE F
RequestuuF M
.uuM N
QueryuuN S
[uuS T
$struuT _
]uu_ `
)uu` a
;uua b
}vv 
ifxx 
(xx 
contextxx #
.xx# $
Requestxx$ +
.xx+ ,
Queryxx, 1
.xx1 2
ContainsKeyxx2 =
(xx= >
$strxx> M
)xxM N
)xxN O
{yy 
requestzz #
.zz# $
OperationNamezz$ 1
=zz2 3
contextzz4 ;
.zz; <
Requestzz< C
.zzC D
QueryzzD I
[zzI J
$strzzJ Y
]zzY Z
;zzZ [
}{{ 
}|| 
}}} 
catch~~ 
(~~ 
	Exception~~  
e~~! "
)~~" #
{ 
await
ÄÄ 
WriteErrorAsync
ÄÄ )
(
ÄÄ) *
context
ÄÄ* 1
,
ÄÄ1 2
$str
ÄÄ3 i
,
ÄÄi j
e
ÄÄk l
)
ÄÄl m
;
ÄÄm n
return
ÅÅ 
;
ÅÅ 
}
ÇÇ 
}
ÉÉ 
else
ÑÑ 
if
ÑÑ 
(
ÑÑ 
HttpMethods
ÑÑ  
.
ÑÑ  !
IsGet
ÑÑ! &
(
ÑÑ& '
context
ÑÑ' .
.
ÑÑ. /
Request
ÑÑ/ 6
.
ÑÑ6 7
Method
ÑÑ7 =
)
ÑÑ= >
)
ÑÑ> ?
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
context
ÜÜ 
.
ÜÜ 
Request
ÜÜ $
.
ÜÜ$ %
Query
ÜÜ% *
.
ÜÜ* +
ContainsKey
ÜÜ+ 6
(
ÜÜ6 7
$str
ÜÜ7 >
)
ÜÜ> ?
)
ÜÜ? @
{
áá 
await
àà 
WriteErrorAsync
àà )
(
àà) *
context
àà* 1
,
àà1 2
$str
àà3 b
)
ààb c
;
ààc d
return
ââ 
;
ââ 
}
ää 
request
åå 
=
åå 
new
åå 
GraphQLRequest
åå ,
{
çç 
Query
éé 
=
éé 
context
éé #
.
éé# $
Request
éé$ +
.
éé+ ,
Query
éé, 1
[
éé1 2
$str
éé2 9
]
éé9 :
}
èè 
;
èè 
}
êê 
var
íí 
queryToExecute
íí 
=
íí  
request
íí! (
.
íí( )
Query
íí) .
;
íí. /
if
îî 
(
îî 
!
îî 
String
îî 
.
îî 
IsNullOrEmpty
îî %
(
îî% &
request
îî& -
.
îî- .

NamedQuery
îî. 8
)
îî8 9
)
îî9 :
{
ïï 
var
ññ 
namedQueries
ññ  
=
ññ! "
context
ññ# *
.
ññ* +
RequestServices
ññ+ :
.
ññ: ;
GetServices
ññ; F
<
ññF G!
INamedQueryProvider
ññG Z
>
ññZ [
(
ññ[ \
)
ññ\ ]
;
ññ] ^
var
òò 
queries
òò 
=
òò 
namedQueries
òò *
.
ôô 

SelectMany
ôô 
(
ôô  
dict
ôô  $
=>
ôô% '
dict
ôô( ,
.
ôô, -
Resolve
ôô- 4
(
ôô4 5
)
ôô5 6
)
ôô6 7
.
öö 
ToDictionary
öö !
(
öö! "
pair
öö" &
=>
öö' )
pair
öö* .
.
öö. /
Key
öö/ 2
,
öö2 3
pair
öö4 8
=>
öö9 ;
pair
öö< @
.
öö@ A
Value
ööA F
)
ööF G
;
ööG H
queryToExecute
úú 
=
úú  
queries
úú! (
[
úú( )
request
úú) 0
.
úú0 1

NamedQuery
úú1 ;
]
úú; <
;
úú< =
}
ùù 
var
üü (
dataLoaderDocumentListener
üü *
=
üü+ ,
context
üü- 4
.
üü4 5
RequestServices
üü5 D
.
üüD E 
GetRequiredService
üüE W
<
üüW X(
IDocumentExecutionListener
üüX r
>
üür s
(
üüs t
)
üüt u
;
üüu v
var
°° 
result
°° 
=
°° 
await
°° 
	_executer
°° (
.
°°( )
ExecuteAsync
°°) 5
(
°°5 6
_
°°6 7
=>
°°8 :
{
¢¢ 
_
££ 
.
££ 
Schema
££ 
=
££ 
schema
££ !
;
££! "
_
§§ 
.
§§ 
Query
§§ 
=
§§ 
queryToExecute
§§ (
;
§§( )
_
•• 
.
•• 
OperationName
•• 
=
••  !
request
••" )
.
••) *
OperationName
••* 7
;
••7 8
_
¶¶ 
.
¶¶ 
Inputs
¶¶ 
=
¶¶ 
request
¶¶ "
.
¶¶" #
	Variables
¶¶# ,
.
¶¶, -
ToInputs
¶¶- 5
(
¶¶5 6
)
¶¶6 7
;
¶¶7 8
_
ßß 
.
ßß 
UserContext
ßß 
=
ßß 
	_settings
ßß  )
.
ßß) *
BuildUserContext
ßß* :
?
ßß: ;
.
ßß; <
Invoke
ßß< B
(
ßßB C
context
ßßC J
)
ßßJ K
;
ßßK L
_
®® 
.
®® 
ExposeExceptions
®® "
=
®®# $
	_settings
®®% .
.
®®. /
ExposeExceptions
®®/ ?
;
®®? @
_
©© 
.
©© 
ValidationRules
©© !
=
©©" #
DocumentValidator
©©$ 5
.
©©5 6
	CoreRules
©©6 ?
(
©©? @
)
©©@ A
.
™™$ %
Concat
™™% +
(
™™+ ,
context
™™, 3
.
™™3 4
RequestServices
™™4 C
.
™™C D
GetServices
™™D O
<
™™O P
IValidationRule
™™P _
>
™™_ `
(
™™` a
)
™™a b
)
™™b c
;
™™c d
_
´´ 
.
´´ %
ComplexityConfiguration
´´ )
=
´´* +
new
´´, /%
ComplexityConfiguration
´´0 G
{
¨¨ 
MaxDepth
≠≠ 
=
≠≠ 
	_settings
≠≠ (
.
≠≠( )
MaxDepth
≠≠) 1
,
≠≠1 2
MaxComplexity
ÆÆ !
=
ÆÆ" #
	_settings
ÆÆ$ -
.
ÆÆ- .
MaxComplexity
ÆÆ. ;
,
ÆÆ; <
FieldImpact
ØØ 
=
ØØ  !
	_settings
ØØ" +
.
ØØ+ ,
FieldImpact
ØØ, 7
}
∞∞ 
;
∞∞ 
_
±± 
.
±± 
	Listeners
±± 
.
±± 
Add
±± 
(
±±  (
dataLoaderDocumentListener
±±  :
)
±±: ;
;
±±; <
}
≤≤ 
)
≤≤ 
;
≤≤ 
context
¥¥ 
.
¥¥ 
Response
¥¥ 
.
¥¥ 

StatusCode
¥¥ '
=
¥¥( )
(
¥¥* +
int
¥¥+ .
)
¥¥. /
(
¥¥/ 0
result
¥¥0 6
.
¥¥6 7
Errors
¥¥7 =
==
¥¥> @
null
¥¥A E
||
¥¥F H
result
¥¥I O
.
¥¥O P
Errors
¥¥P V
.
¥¥V W
Count
¥¥W \
==
¥¥] _
$num
¥¥` a
?
µµ 
HttpStatusCode
µµ  
.
µµ  !
OK
µµ! #
:
∂∂ 
result
∂∂ 
.
∂∂ 
Errors
∂∂ 
.
∂∂  
Any
∂∂  #
(
∂∂# $
x
∂∂$ %
=>
∂∂& (
x
∂∂) *
.
∂∂* +
Code
∂∂+ /
==
∂∂0 2.
 RequiresPermissionValidationRule
∂∂3 S
.
∂∂S T
	ErrorCode
∂∂T ]
)
∂∂] ^
?
∑∑ 
HttpStatusCode
∑∑ $
.
∑∑$ %
Unauthorized
∑∑% 1
:
∏∏ 
HttpStatusCode
∏∏ $
.
∏∏$ %

BadRequest
∏∏% /
)
∏∏/ 0
;
∏∏0 1
context
∫∫ 
.
∫∫ 
Response
∫∫ 
.
∫∫ 
ContentType
∫∫ (
=
∫∫) *
$str
∫∫+ =
;
∫∫= >
var
ΩΩ 
encodedBytes
ΩΩ 
=
ΩΩ 
_utf8Encoding
ΩΩ ,
.
ΩΩ, -
GetBytes
ΩΩ- 5
(
ΩΩ5 6
JObject
ΩΩ6 =
.
ΩΩ= >

FromObject
ΩΩ> H
(
ΩΩH I
result
ΩΩI O
)
ΩΩO P
.
ΩΩP Q
ToString
ΩΩQ Y
(
ΩΩY Z
)
ΩΩZ [
)
ΩΩ[ \
;
ΩΩ\ ]
await
ææ 
context
ææ 
.
ææ 
Response
ææ "
.
ææ" #
Body
ææ# '
.
ææ' (

WriteAsync
ææ( 2
(
ææ2 3
encodedBytes
ææ3 ?
,
ææ? @
$num
ææA B
,
ææB C
encodedBytes
ææD P
.
ææP Q
Length
ææQ W
)
ææW X
;
ææX Y
}
øø 	
private
¡¡ 
async
¡¡ 
Task
¡¡ 
WriteErrorAsync
¡¡ *
(
¡¡* +
HttpContext
¡¡+ 6
context
¡¡7 >
,
¡¡> ?
string
¡¡@ F
message
¡¡G N
,
¡¡N O
	Exception
¡¡P Y
e
¡¡Z [
=
¡¡\ ]
null
¡¡^ b
)
¡¡b c
{
¬¬ 	
if
√√ 
(
√√ 
message
√√ 
==
√√ 
null
√√ 
)
√√  
{
ƒƒ 
throw
≈≈ 
new
≈≈ #
ArgumentNullException
≈≈ /
(
≈≈/ 0
nameof
≈≈0 6
(
≈≈6 7
message
≈≈7 >
)
≈≈> ?
)
≈≈? @
;
≈≈@ A
}
∆∆ 
var
»» 
errorResult
»» 
=
»» 
new
»» !
ExecutionResult
»»" 1
{
…… 
Errors
   
=
   
new
   
ExecutionErrors
   ,
(
  , -
)
  - .
}
ÀÀ 
;
ÀÀ 
if
ÕÕ 
(
ÕÕ 
e
ÕÕ 
==
ÕÕ 
null
ÕÕ 
)
ÕÕ 
{
ŒŒ 
errorResult
œœ 
.
œœ 
Errors
œœ "
.
œœ" #
Add
œœ# &
(
œœ& '
new
œœ' *
ExecutionError
œœ+ 9
(
œœ9 :
message
œœ: A
)
œœA B
)
œœB C
;
œœC D
}
–– 
else
—— 
{
““ 
errorResult
”” 
.
”” 
Errors
”” "
.
””" #
Add
””# &
(
””& '
new
””' *
ExecutionError
””+ 9
(
””9 :
message
””: A
,
””A B
e
””C D
)
””D E
)
””E F
;
””F G
}
‘‘ 
context
÷÷ 
.
÷÷ 
Response
÷÷ 
.
÷÷ 

StatusCode
÷÷ '
=
÷÷( )
(
÷÷* +
int
÷÷+ .
)
÷÷. /
HttpStatusCode
÷÷/ =
.
÷÷= >

BadRequest
÷÷> H
;
÷÷H I
context
◊◊ 
.
◊◊ 
Response
◊◊ 
.
◊◊ 
ContentType
◊◊ (
=
◊◊) *
$str
◊◊+ =
;
◊◊= >
var
⁄⁄ 
encodedBytes
⁄⁄ 
=
⁄⁄ 
_utf8Encoding
⁄⁄ ,
.
⁄⁄, -
GetBytes
⁄⁄- 5
(
⁄⁄5 6
JObject
⁄⁄6 =
.
⁄⁄= >

FromObject
⁄⁄> H
(
⁄⁄H I
errorResult
⁄⁄I T
)
⁄⁄T U
.
⁄⁄U V
ToString
⁄⁄V ^
(
⁄⁄^ _
)
⁄⁄_ `
)
⁄⁄` a
;
⁄⁄a b
await
€€ 
context
€€ 
.
€€ 
Response
€€ "
.
€€" #
Body
€€# '
.
€€' (

WriteAsync
€€( 2
(
€€2 3
encodedBytes
€€3 ?
,
€€? @
$num
€€A B
,
€€B C
encodedBytes
€€D P
.
€€P Q
Length
€€Q W
)
€€W X
;
€€X Y
}
‹‹ 	
}
›› 
}ﬁﬁ Ò
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\GraphQLRequest.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

class 
GraphQLRequest 
{ 
public 
string 
OperationName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 

NamedQuery  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Query		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
JObject

 
	Variables

  
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
- .
} 
} π
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str 9
,9 :
Category		 
=		 
$str		 
)

 
]

 ±
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\OrchardFieldNameConverter.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

class %
OrchardFieldNameConverter *
:+ ,
IFieldNameConverter- @
{ 
private 
readonly 
IFieldNameConverter ,
_defaultConverter- >
=? @
newA D'
CamelCaseFieldNameConverterE `
(` a
)a b
;b c
public

 
string

 
NameFor

 
(

 
string

 $
field

% *
,

* +
Type

, 0

parentType

1 ;
)

; <
{ 	
var 

attributes 
= 

parentType '
?' (
.( )
GetCustomAttributes) <
(< =
typeof= C
(C D%
GraphQLFieldNameAttributeD ]
)] ^
,^ _
true` d
)d e
;e f
if 
( 

attributes 
!= 
null "
)" #
{ 
foreach 
( %
GraphQLFieldNameAttribute 2
	attribute3 <
in= ?

attributes@ J
)J K
{ 
if 
( 
	attribute !
.! "
Field" '
==( *
field+ 0
)0 1
{ 
return 
	attribute (
.( )
Mapped) /
;/ 0
} 
} 
} 
return 
_defaultConverter $
.$ %
NameFor% ,
(, -
field- 2
,2 3

parentType4 >
)> ?
;? @
} 	
} 
} ª
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\Permissions.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{ 
public		 
static		 
readonly		 

Permission		 )#
ExecuteGraphQLMutations		* A
=		B C
new		D G

Permission		H R
(		R S
$str		S l
,		l m
$str			n ä
)
		ä ã
;
		ã å
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
 )
ExecuteGraphQL

* 8
=

9 :
new

; >

Permission

? I
(

I J
$str

J Z
,

Z [
$str

\ n
,

n o
new

p s
[

s t
]

t u
{

v w$
ExecuteGraphQLMutations	

x è
}


ê ë
)


ë í
;


í ì
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
<" #
IEnumerable# .
<. /

Permission/ 9
>9 :
>: ;
(; <
new 
[ 
] 
{ #
ExecuteGraphQLMutations +
,+ ,
ExecuteGraphQL "
," #
} 
) 
; 
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{) *
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )#
ExecuteGraphQLMutations* A
}B C
} 
} 
; 
} 	
} 
}   „
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\RequestServicesDependencyResolver.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
internal 
class -
!RequestServicesDependencyResolver 4
:5 6
IDependencyResolver7 J
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public -
!RequestServicesDependencyResolver 0
(0 1 
IHttpContextAccessor1 E
httpContextAccessorF Y
)Y Z
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
T 
Resolve 
< 
T 
> 
( 
) 
{ 	
return 
( 
T 
) 
Resolve 
( 
typeof $
($ %
T% &
)& '
)' (
;( )
} 	
public 
object 
Resolve 
( 
Type "
type# '
)' (
{ 	
var 
serviceType 
=  
_httpContextAccessor 2
.2 3
HttpContext3 >
.> ?
RequestServices? N
.N O

GetServiceO Y
(Y Z
typeZ ^
)^ _
;_ `
if 
( 
serviceType 
== 
null #
)# $
{ 
return   
	Activator    
.    !
CreateInstance  ! /
(  / 0
type  0 4
)  4 5
;  5 6
}!! 
return## 
serviceType## 
;## 
}$$ 	
}%% 
}&& Â@
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\Services\SchemaService.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
." #
Services# +
{ 
public 

class 
SchemaService 
:  
ISchemaFactory! /
{ 
private 
readonly 
IEnumerable $
<$ %
ISchemaBuilder% 3
>3 4
_schemaBuilders5 D
;D E
private 
readonly 
SemaphoreSlim &&
_schemaGenerationSemaphore' A
=B C
newD G
SemaphoreSlimH U
(U V
$numV W
,W X
$numY Z
)Z [
;[ \
private 
readonly  
ConcurrentDictionary -
<- .
ISchemaBuilder. <
,< =
string> D
>D E
_identifiersF R
=S T
newU X 
ConcurrentDictionaryY m
<m n
ISchemaBuildern |
,| }
string	~ Ñ
>
Ñ Ö
(
Ö Ü
)
Ü á
;
á à
private 
ISchema 
_schema 
;  
public 
SchemaService 
( 
IEnumerable (
<( )
ISchemaBuilder) 7
>7 8
schemaBuilders9 G
)G H
{ 	
_schemaBuilders 
= 
schemaBuilders ,
;, -
} 	
public 
async 
Task 
< 
ISchema !
>! "
GetSchemaAsync# 1
(1 2
)2 3
{ 	
var 

hasChanged 
= 
false "
;" #
foreach 
( 
var 
builder  
in! #
_schemaBuilders$ 3
)3 4
{   
if!! 
(!! 
_identifiers!!  
.!!  !
TryGetValue!!! ,
(!!, -
builder!!- 4
,!!4 5
out!!6 9
var!!: =

identifier!!> H
)!!H I
&&!!J L
await!!M R
builder!!S Z
.!!Z [
GetIdentifierAsync!![ m
(!!m n
)!!n o
!=!!p r

identifier!!s }
)!!} ~
{"" 

hasChanged## 
=##  
true##! %
;##% &
break$$ 
;$$ 
}%% 
}&& 
if(( 
((( 
_schema(( 
is(( 
object(( !
&&((" $
!((% &

hasChanged((& 0
)((0 1
{)) 
return** 
_schema** 
;** 
}++ 
await-- &
_schemaGenerationSemaphore-- ,
.--, -
	WaitAsync--- 6
(--6 7
)--7 8
;--8 9
try// 
{00 
foreach11 
(11 
var11 
builder11 $
in11% '
_schemaBuilders11( 7
)117 8
{22 
if33 
(33 
_identifiers33 $
.33$ %
TryGetValue33% 0
(330 1
builder331 8
,338 9
out33: =
var33> A

identifier33B L
)33L M
&&33N P
await33Q V
builder33W ^
.33^ _
GetIdentifierAsync33_ q
(33q r
)33r s
!=33t v

identifier	33w Å
)
33Å Ç
{44 

hasChanged55 "
=55# $
true55% )
;55) *
break66 
;66 
}77 
}88 
if:: 
(:: 
_schema:: 
is:: 
object:: %
&&::& (
!::) *

hasChanged::* 4
)::4 5
{;; 
return<< 
_schema<< "
;<<" #
}== 
var?? 
serviceProvider?? #
=??$ %

ShellScope??& 0
.??0 1
Services??1 9
;??9 :
varAA 
schemaAA 
=AA 
newAA  
SchemaAA! '
{BB 
QueryCC 
=CC 
newCC 
ObjectGraphTypeCC  /
{CC0 1
NameCC2 6
=CC7 8
$strCC9 @
}CCA B
,CCB C
MutationDD 
=DD 
newDD "
ObjectGraphTypeDD# 2
{DD3 4
NameDD5 9
=DD: ;
$strDD< F
}DDG H
,DDH I
SubscriptionEE  
=EE! "
newEE# &
ObjectGraphTypeEE' 6
{EE7 8
NameEE9 =
=EE> ?
$strEE@ N
}EEO P
,EEP Q
FieldNameConverterFF &
=FF' (
newFF) ,%
OrchardFieldNameConverterFF- F
(FFF G
)FFG H
,FFH I
DependencyResolverGG &
=GG' (
serviceProviderGG) 8
.GG8 9

GetServiceGG9 C
<GGC D
IDependencyResolverGGD W
>GGW X
(GGX Y
)GGY Z
}HH 
;HH 
foreachJJ 
(JJ 
varJJ 
builderJJ $
inJJ% '
_schemaBuildersJJ( 7
)JJ7 8
{KK 
varLL 

identifierLL "
=LL# $
awaitLL% *
builderLL+ 2
.LL2 3
GetIdentifierAsyncLL3 E
(LLE F
)LLF G
;LLG H
ifOO 
(OO 

identifierOO "
!=OO# %
StringOO& ,
.OO, -
EmptyOO- 2
)OO2 3
{PP 
_identifiersQQ $
[QQ$ %
builderQQ% ,
]QQ, -
=QQ. /

identifierQQ0 :
;QQ: ;
}RR 
awaitTT 
builderTT !
.TT! "

BuildAsyncTT" ,
(TT, -
schemaTT- 3
)TT3 4
;TT4 5
}UU 
foreachWW 
(WW 
varWW 
typeWW !
inWW" $
serviceProviderWW% 4
.WW4 5
GetServicesWW5 @
<WW@ A!
IInputObjectGraphTypeWWA V
>WWV W
(WWW X
)WWX Y
)WWY Z
{XX 
schemaYY 
.YY 
RegisterTypeYY '
(YY' (
typeYY( ,
)YY, -
;YY- .
}ZZ 
foreach\\ 
(\\ 
var\\ 
type\\ !
in\\" $
serviceProvider\\% 4
.\\4 5
GetServices\\5 @
<\\@ A
IObjectGraphType\\A Q
>\\Q R
(\\R S
)\\S T
)\\T U
{]] 
schema^^ 
.^^ 
RegisterType^^ '
(^^' (
type^^( ,
)^^, -
;^^- .
}__ 
ifdd 
(dd 
!dd 
schemadd 
.dd 
Querydd !
.dd! "
Fieldsdd" (
.dd( )
Anydd) ,
(dd, -
)dd- .
)dd. /
{ee 
schemaff 
.ff 
Queryff  
=ff! "
nullff# '
;ff' (
}gg 
ifii 
(ii 
!ii 
schemaii 
.ii 
Mutationii $
.ii$ %
Fieldsii% +
.ii+ ,
Anyii, /
(ii/ 0
)ii0 1
)ii1 2
{jj 
schemakk 
.kk 
Mutationkk #
=kk$ %
nullkk& *
;kk* +
}ll 
ifnn 
(nn 
!nn 
schemann 
.nn 
Subscriptionnn (
.nn( )
Fieldsnn) /
.nn/ 0
Anynn0 3
(nn3 4
)nn4 5
)nn5 6
{oo 
schemapp 
.pp 
Subscriptionpp '
=pp( )
nullpp* .
;pp. /
}qq 
schemass 
.ss 

Initializess !
(ss! "
)ss" #
;ss# $
returntt 
_schematt 
=tt  
schematt! '
;tt' (
}uu 
finallyvv 
{ww &
_schemaGenerationSemaphorexx *
.xx* +
Releasexx+ 2
(xx2 3
)xx3 4
;xx4 5
}yy 
}zz 	
}{{ 
}|| ≠R
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
,: ;
IHostEnvironment< L
hostingEnvironmentM _
)_ `
{ 	
_adminOptions   
=   
adminOptions   (
.  ( )
Value  ) .
;  . /
_hostingEnvironment!! 
=!!  !
hostingEnvironment!!" 4
;!!4 5
}"" 	
public$$ 
override$$ 
void$$ 
ConfigureServices$$ .
($$. /
IServiceCollection$$/ A
services$$B J
)$$J K
{%% 	
services&& 
.&& 
AddSingleton&& !
<&&! "
IDependencyResolver&&" 5
,&&5 6-
!RequestServicesDependencyResolver&&7 X
>&&X Y
(&&Y Z
)&&Z [
;&&[ \
services'' 
.'' 
AddSingleton'' !
<''! "
IDocumentExecuter''" 3
,''3 4
DocumentExecuter''5 E
>''E F
(''F G
)''G H
;''H I
services(( 
.(( 
AddSingleton(( !
<((! "
IDocumentWriter((" 1
,((1 2
DocumentWriter((3 A
>((A B
(((B C
)((C D
;((D E
services)) 
.)) 
AddSingleton)) !
<))! "&
IDataLoaderContextAccessor))" <
,))< =%
DataLoaderContextAccessor))> W
>))W X
())X Y
)))Y Z
;))Z [
services** 
.** 
AddSingleton** !
<**! "&
IDocumentExecutionListener**" <
,**< =&
DataLoaderDocumentListener**> X
>**X Y
(**Y Z
)**Z [
;**[ \
services++ 
.++ 
AddSingleton++ !
<++! "
ISchemaFactory++" 0
,++0 1
SchemaService++2 ?
>++? @
(++@ A
)++A B
;++B C
services,, 
.,, 
	AddScoped,, 
<,, 
IValidationRule,, .
,,,. /,
 MaxNumberOfResultsValidationRule,,0 P
>,,P Q
(,,Q R
),,R S
;,,S T
services-- 
.-- 
	AddScoped-- 
<-- 
IValidationRule-- .
,--. /,
 RequiresPermissionValidationRule--0 P
>--P Q
(--Q R
)--R S
;--S T
services// 
.// 
	AddScoped// 
<// 
IPermissionProvider// 2
,//2 3
Permissions//4 ?
>//? @
(//@ A
)//A B
;//B C
services00 
.00 
AddTransient00 !
<00! "
INavigationProvider00" 5
,005 6
	AdminMenu007 @
>00@ A
(00A B
)00B C
;00C D
services22 
.22 

AddOptions22 
<22  
GraphQLSettings22  /
>22/ 0
(220 1
)221 2
.222 3
	Configure223 <
<22< =
IShellConfiguration22= P
>22P Q
(22Q R
(22R S
c22S T
,22T U
configuration22V c
)22c d
=>22e g
{33 
var44 
exposeExceptions44 $
=44% &
configuration44' 4
.444 5
GetValue445 =
(44= >
$"55 %
OrchardCore_Apis_GraphQL:55 /
{55/ 0
nameof550 6
(556 7
GraphQLSettings557 F
.55F G
ExposeExceptions55G W
)55W X
}55X Y
"55Y Z
,55Z [
_hostingEnvironment66 '
.66' (
IsDevelopment66( 5
(665 6
)666 7
)667 8
;668 9
var88 ,
 maxNumberOfResultsValidationMode88 4
=885 6
configuration887 D
.88D E
GetValue88E M
<88M N,
 MaxNumberOfResultsValidationMode88N n
?88n o
>88o p
(88p q
$"88q s&
OrchardCore_Apis_GraphQL:	88s å
{
88å ç
nameof
88ç ì
(
88ì î
GraphQLSettings
88î £
.
88£ §.
 MaxNumberOfResultsValidationMode
88§ ƒ
)
88ƒ ≈
}
88≈ ∆
"
88∆ «
)
88« »
??998 :,
 MaxNumberOfResultsValidationMode99; [
.99[ \
Default99\ c
;99c d
if;; 
(;; ,
 maxNumberOfResultsValidationMode;; 4
==;;5 7,
 MaxNumberOfResultsValidationMode;;8 X
.;;X Y
Default;;Y `
);;` a
{<< ,
 maxNumberOfResultsValidationMode== 4
===5 6
_hostingEnvironment==7 J
.==J K
IsDevelopment==K X
(==X Y
)==Y Z
?==[ \,
 MaxNumberOfResultsValidationMode==] }
.==} ~
Enabled	==~ Ö
:
==Ü á.
 MaxNumberOfResultsValidationMode
==à ®
.
==® ©
Disabled
==© ±
;
==± ≤
}>> 
c@@ 
.@@ 
BuildUserContext@@ "
=@@# $
ctx@@% (
=>@@) +
new@@, /
GraphQLContext@@0 >
{AA 
HttpContextBB 
=BB  !
ctxBB" %
,BB% &
UserCC 
=CC 
ctxCC 
.CC 
UserCC #
,CC# $
ServiceProviderDD #
=DD$ %
ctxDD& )
.DD) *
RequestServicesDD* 9
}EE 
;EE 
cFF 
.FF 
ExposeExceptionsFF "
=FF# $
exposeExceptionsFF% 5
;FF5 6
cGG 
.GG 
MaxDepthGG 
=GG 
configurationGG *
.GG* +
GetValueGG+ 3
<GG3 4
intGG4 7
?GG7 8
>GG8 9
(GG9 :
$"GG: <%
OrchardCore_Apis_GraphQL:GG< U
{GGU V
nameofGGV \
(GG\ ]
GraphQLSettingsGG] l
.GGl m
MaxDepthGGm u
)GGu v
}GGv w
"GGw x
)GGx y
??GGz |
$numGG} 
;	GG Ä
cHH 
.HH 
MaxComplexityHH 
=HH  !
configurationHH" /
.HH/ 0
GetValueHH0 8
<HH8 9
intHH9 <
?HH< =
>HH= >
(HH> ?
$"HH? A%
OrchardCore_Apis_GraphQL:HHA Z
{HHZ [
nameofHH[ a
(HHa b
GraphQLSettingsHHb q
.HHq r
MaxComplexityHHr 
)	HH Ä
}
HHÄ Å
"
HHÅ Ç
)
HHÇ É
;
HHÉ Ñ
cII 
.II 
FieldImpactII 
=II 
configurationII  -
.II- .
GetValueII. 6
<II6 7
doubleII7 =
?II= >
>II> ?
(II? @
$"II@ B%
OrchardCore_Apis_GraphQL:IIB [
{II[ \
nameofII\ b
(IIb c
GraphQLSettingsIIc r
.IIr s
FieldImpactIIs ~
)II~ 
}	II Ä
"
IIÄ Å
)
IIÅ Ç
;
IIÇ É
cJJ 
.JJ 
MaxNumberOfResultsJJ $
=JJ% &
configurationJJ' 4
.JJ4 5
GetValueJJ5 =
<JJ= >
intJJ> A
?JJA B
>JJB C
(JJC D
$"JJD F%
OrchardCore_Apis_GraphQL:JJF _
{JJ_ `
nameofJJ` f
(JJf g
GraphQLSettingsJJg v
.JJv w
MaxNumberOfResults	JJw â
)
JJâ ä
}
JJä ã
"
JJã å
)
JJå ç
??
JJé ê
$num
JJë ï
;
JJï ñ
cKK 
.KK ,
 MaxNumberOfResultsValidationModeKK 2
=KK3 4,
 maxNumberOfResultsValidationModeKK5 U
;KKU V
cLL 
.LL "
DefaultNumberOfResultsLL (
=LL) *
configurationLL+ 8
.LL8 9
GetValueLL9 A
<LLA B
intLLB E
?LLE F
>LLF G
(LLG H
$"LLH J%
OrchardCore_Apis_GraphQL:LLJ c
{LLc d
nameofLLd j
(LLj k
GraphQLSettingsLLk z
.LLz {#
DefaultNumberOfResults	LL{ ë
)
LLë í
}
LLí ì
"
LLì î
)
LLî ï
??
LLñ ò
$num
LLô ú
;
LLú ù
}MM 
)MM 
;MM 
}NN 	
publicPP 
overridePP 
voidPP 
	ConfigurePP &
(PP& '
IApplicationBuilderPP' :
appPP; >
,PP> ?!
IEndpointRouteBuilderPP@ U
routesPPV \
,PP\ ]
IServiceProviderPP^ n
serviceProviderPPo ~
)PP~ 
{QQ 	
routesRR 
.RR "
MapAreaControllerRouteRR )
(RR) *
nameSS 
:SS 
$strSS 
,SS  
areaNameTT 
:TT 
$strTT 4
,TT4 5
patternUU 
:UU 
_adminOptionsUU &
.UU& '
AdminUrlPrefixUU' 5
+UU6 7
$strUU8 B
,UUB C
defaultsVV 
:VV 
newVV 
{VV 

controllerVV  *
=VV+ ,
typeofVV- 3
(VV3 4
AdminControllerVV4 C
)VVC D
.VVD E
ControllerNameVVE S
(VVS T
)VVT U
,VVU V
actionVVW ]
=VV^ _
nameofVV` f
(VVf g
AdminControllerVVg v
.VVv w
IndexVVw |
)VV| }
}VV~ 
)WW 
;WW 
appYY 
.YY 
UseMiddlewareYY 
<YY 
GraphQLMiddlewareYY /
>YY/ 0
(YY0 1
serviceProviderYY1 @
.YY@ A

GetServiceYYA K
<YYK L
IOptionsYYL T
<YYT U
GraphQLSettingsYYU d
>YYd e
>YYe f
(YYf g
)YYg h
.YYh i
ValueYYi n
)YYn o
;YYo p
}ZZ 	
}[[ 
}\\ ÿ-
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\ValidationRules\MaxNumberOfResultsValidationRule.cs
	namespace 	
OrchardCore
 
. 
Apis 
. 
GraphQL "
." #
ValidationRules# 2
{		 
public

 

class

 ,
 MaxNumberOfResultsValidationRule

 1
:

2 3
IValidationRule

4 C
{ 
private 
readonly 
int 
_maxNumberOfResults 0
;0 1
private 
readonly ,
 MaxNumberOfResultsValidationMode 9-
!_maxNumberOfResultsValidationMode: [
;[ \
public ,
 MaxNumberOfResultsValidationRule /
(/ 0
IOptions0 8
<8 9
GraphQLSettings9 H
>H I
optionsJ Q
)Q R
{ 	
var 
settings 
= 
options "
." #
Value# (
;( )
_maxNumberOfResults 
=  !
settings" *
.* +
MaxNumberOfResults+ =
;= >-
!_maxNumberOfResultsValidationMode -
=. /
settings0 8
.8 9,
 MaxNumberOfResultsValidationMode9 Y
;Y Z
} 	
public 
INodeVisitor 
Validate $
($ %
ValidationContext% 6
validationContext7 H
)H I
{ 	
return 
new 
EnterLeaveListener )
() *
_* +
=>, .
{ 
_ 
. 
Match 
< 
Argument  
>  !
(! "
arg" %
=>& (
{ 
if 
( 
( 
arg 
. 
Name !
==" $
$str% ,
||- /
arg0 3
.3 4
Name4 8
==9 ;
$str< B
)B C
&&D F
argG J
.J K
ValueK P
!=Q S
nullT X
)X Y
{ 
var 
context #
=$ %
(& '
GraphQLContext' 5
)5 6
validationContext6 G
.G H
UserContextH S
;S T
int   
?   
value   "
=  # $
null  % )
;  ) *
if"" 
("" 
arg"" 
.""  
Value""  %
is""& (
IntValue"") 1
)""1 2
{## 
value$$ !
=$$" #
($$$ %
($$% &
IntValue$$& .
)$$. /
arg$$/ 2
.$$2 3
Value$$3 8
)$$8 9
?$$9 :
.$$: ;
Value$$; @
;$$@ A
}%% 
else&& 
{'' 
if(( 
(((  
validationContext((  1
.((1 2
Inputs((2 8
.((8 9
TryGetValue((9 D
(((D E
arg((E H
.((H I
Value((I N
.((N O
ToString((O W
(((W X
)((X Y
,((Y Z
out(([ ^
var((_ b
input((c h
)((h i
)((i j
{)) 
value**  %
=**& '
(**( )
int**) ,
?**, -
)**- .
input**. 3
;**3 4
}++ 
},, 
if.. 
(.. 
value.. !
...! "
HasValue.." *
&&..+ -
value... 3
>..4 5
_maxNumberOfResults..6 I
)..I J
{// 
var00 
	localizer00  )
=00* +
context00, 3
.003 4
ServiceProvider004 C
.00C D

GetService00D N
<00N O
IStringLocalizer00O _
<00_ `-
 MaxNumberOfResultsValidationRule	00` Ä
>
00Ä Å
>
00Å Ç
(
00Ç É
)
00É Ñ
;
00Ñ Ö
var11 
errorMessage11  ,
=11- .
	localizer11/ 8
[118 9
$str119 v
,11v w
value11x }
.11} ~
Value	11~ É
,
11É Ñ
arg
11Ö à
.
11à â
Name
11â ç
,
11ç é!
_maxNumberOfResults
11è ¢
]
11¢ £
;
11£ §
if33 
(33  -
!_maxNumberOfResultsValidationMode33  A
==33B D,
 MaxNumberOfResultsValidationMode33E e
.33e f
Enabled33f m
)33m n
{44 
validationContext55  1
.551 2
ReportError552 =
(55= >
new55> A
ValidationError55B Q
(55Q R
validationContext66$ 5
.665 6
OriginalQuery666 C
,66C D
$str77$ 8
,778 9
errorMessage88$ 0
,880 1
arg99$ '
)99' (
)99( )
;99) *
}:: 
else;;  
{<< 
var==  #
logger==$ *
===+ ,
context==- 4
.==4 5
ServiceProvider==5 D
.==D E

GetService==E O
<==O P
ILogger==P W
<==W X,
 MaxNumberOfResultsValidationMode==X x
>==x y
>==y z
(==z {
)=={ |
;==| }
logger>>  &
.>>& '
LogInformation>>' 5
(>>5 6
errorMessage>>6 B
)>>B C
;>>C D
arg??  #
.??# $
Value??$ )
=??* +
new??, /
IntValue??0 8
(??8 9
_maxNumberOfResults??9 L
)??L M
;??M N
}@@ 
}AA 
}BB 
}CC 
)CC 
;CC 
}DD 
)DD 
;DD 
}EE 	
}FF 
}GG ñ/
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Apis.GraphQL\ValidationRules\RequiresPermissionValidationRule.cs
	namespace		 	
OrchardCore		
 
.		 
Apis		 
.		 
GraphQL		 "
.		" #
ValidationRules		# 2
{

 
public 

class ,
 RequiresPermissionValidationRule 1
:2 3
IValidationRule4 C
{ 
public 
static 
readonly 
string %
	ErrorCode& /
=0 1
$str2 @
;@ A
public 
INodeVisitor 
Validate $
($ %
ValidationContext% 6
validationContext7 H
)H I
{ 	
var 
context 
= 
( 
GraphQLContext )
)) *
validationContext* ;
.; <
UserContext< G
;G H
return 
new 
EnterLeaveListener )
() *
_* +
=>, .
{ 
_ 
. 
Match 
< 
	Operation !
>! "
(" #
op# %
=>& (
{ 
if 
( 
op 
. 
OperationType (
==) +
OperationType, 9
.9 :
Mutation: B
)B C
{ 
var  
authorizationManager 0
=1 2
context3 :
.: ;
ServiceProvider; J
.J K

GetServiceK U
<U V!
IAuthorizationServiceV k
>k l
(l m
)m n
;n o
if 
( 
!  
authorizationManager 1
.1 2
AuthorizeAsync2 @
(@ A
contextA H
.H I
UserI M
,M N
PermissionsO Z
.Z [#
ExecuteGraphQLMutations[ r
)r s
.s t

GetAwaitert ~
(~ 
)	 Ä
.
Ä Å
	GetResult
Å ä
(
ä ã
)
ã å
)
å ç
{ 
var 
	localizer  )
=* +
context, 3
.3 4
ServiceProvider4 C
.C D

GetServiceD N
<N O
IStringLocalizerO _
<_ `-
 RequiresPermissionValidationRule	` Ä
>
Ä Å
>
Å Ç
(
Ç É
)
É Ñ
;
Ñ Ö
validationContext -
.- .
ReportError. 9
(9 :
new: =
ValidationError> M
(M N
validationContext    1
.  1 2
OriginalQuery  2 ?
,  ? @
	ErrorCode!!  )
,!!) *
	localizer""  )
["") *
$str""* T
,""T U
op""V X
.""X Y
Name""Y ]
]""] ^
,""^ _
op##  "
)##" #
)### $
;##$ %
}$$ 
}%% 
}&& 
)&& 
;&& 
_(( 
.(( 
Match(( 
<(( 
Field(( 
>(( 
((( 
fieldAst(( '
=>((( *
{)) 
var** 
fieldDef**  
=**! "
validationContext**# 4
.**4 5
TypeInfo**5 =
.**= >
GetFieldDef**> I
(**I J
)**J K
;**K L
if,, 
(,, 
fieldDef,,  
.,,  !
HasPermissions,,! /
(,,/ 0
),,0 1
&&,,2 4
!,,5 6
	Authorize,,6 ?
(,,? @
fieldDef,,@ H
,,,H I
context,,J Q
),,Q R
),,R S
{-- 
var.. 
	localizer.. %
=..& '
context..( /
.../ 0
ServiceProvider..0 ?
...? @

GetService..@ J
<..J K
IStringLocalizer..K [
<..[ \,
 RequiresPermissionValidationRule..\ |
>..| }
>..} ~
(..~ 
)	.. Ä
;
..Ä Å
validationContext00 )
.00) *
ReportError00* 5
(005 6
new006 9
ValidationError00: I
(00I J
validationContext11 -
.11- .
OriginalQuery11. ;
,11; <
	ErrorCode22 %
,22% &
	localizer33 %
[33% &
$str33& Z
,33Z [
fieldAst33\ d
.33d e
Name33e i
]33i j
,33j k
fieldAst44 $
)44$ %
)44% &
;44& '
}55 
}66 
)66 
;66 
}77 
)77 
;77 
}88 	
private:: 
static:: 
bool:: 
	Authorize:: %
(::% &
IProvideMetadata::& 6
type::7 ;
,::; <
GraphQLContext::= K
context::L S
)::S T
{;; 	
var<<  
authorizationManager<< $
=<<% &
context<<' .
.<<. /
ServiceProvider<</ >
.<<> ?

GetService<<? I
<<<I J!
IAuthorizationService<<J _
><<_ `
(<<` a
)<<a b
;<<b c
return@@ 
type@@ 
.@@ 
GetPermissions@@ &
(@@& '
)@@' (
.@@( )
All@@) ,
(@@, -
x@@- .
=>@@/ 1 
authorizationManager@@2 F
.@@F G
AuthorizeAsync@@G U
(@@U V
context@@V ]
.@@] ^
User@@^ b
,@@b c
x@@d e
.@@e f

Permission@@f p
,@@p q
x@@r s
.@@s t
Resource@@t |
)@@| }
.@@} ~

GetAwaiter	@@~ à
(
@@à â
)
@@â ä
.
@@ä ã
	GetResult
@@ã î
(
@@î ï
)
@@ï ñ
)
@@ñ ó
;
@@ó ò
}AA 	
}BB 
}CC 