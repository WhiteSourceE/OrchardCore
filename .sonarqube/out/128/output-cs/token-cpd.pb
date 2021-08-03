õ
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.HomeRoute\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str	  
,  !
Name 
=	 

$str 
, 
Description 
= 
$str ]
,] ^
Category 
= 
$str 
) 
] ‡
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.HomeRoute\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[		 
assembly		 	
:			 

AssemblyProduct		 
(		 
$str		 2
)		2 3
]		3 4
[

 
assembly

 	
:

	 

AssemblyTrademark

 
(

 
$str

 
)

  
]

  !
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8∞
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.HomeRoute\Routing\HomeRouteTransformer.cs
	namespace 	
OrchardCore
 
. 
	HomeRoute 
.  
Routing  '
{ 
public		 

class		  
HomeRouteTransformer		 %
:		& '(
DynamicRouteValueTransformer		( D
{

 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public  
HomeRouteTransformer #
(# $
ISiteService$ 0
siteService1 <
)< =
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
override 
async 
	ValueTask '
<' ( 
RouteValueDictionary( <
>< =
TransformAsync> L
(L M
HttpContextM X
httpContextY d
,d e 
RouteValueDictionaryf z
values	{ Å
)
Å Ç
{ 	
var 
	homeRoute 
= 
( 
await "
_siteService# /
./ 0 
GetSiteSettingsAsync0 D
(D E
)E F
)F G
.G H
	HomeRouteH Q
;Q R
if 
( 
	homeRoute 
. 
Count 
>  !
$num" #
)# $
{ 
return 
new  
RouteValueDictionary /
(/ 0
	homeRoute0 9
)9 :
;: ;
} 
else 
{ 
return 
null 
; 
} 
} 	
} 
}   á*
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.HomeRoute\Routing\HomeRouteValuesAddressScheme.cs
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
	HomeRoute

 
.

  
Routing

  '
{ 
internal 
sealed 
class (
HomeRouteValuesAddressScheme 6
:7 8*
IShellRouteValuesAddressScheme9 W
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public (
HomeRouteValuesAddressScheme +
(+ ,
ISiteService, 8
siteService9 D
)D E
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
IEnumerable 
< 
Endpoint #
># $
FindEndpoints% 2
(2 3
RouteValuesAddress3 E
addressF M
)M N
{ 	
if 
( 
address 
. 
AmbientValues %
==& (
null) -
||. 0
address1 8
.8 9
ExplicitValues9 G
==H J
nullK O
)O P
{ 
return 

Enumerable !
.! "
Empty" '
<' (
Endpoint( 0
>0 1
(1 2
)2 3
;3 4
} 
var 
	homeRoute 
= 
_siteService (
.( ) 
GetSiteSettingsAsync) =
(= >
)> ?
.? @

GetAwaiter@ J
(J K
)K L
.L M
	GetResultM V
(V W
)W X
.X Y
	HomeRouteY b
;b c
if 
( 
Match 
( 
	homeRoute 
,  
address! (
.( )
ExplicitValues) 7
)7 8
)8 9
{ 
var   
routeValues   
=    !
new  " % 
RouteValueDictionary  & :
(  : ;
address  ; B
.  B C
ExplicitValues  C Q
)  Q R
;  R S
if"" 
("" 
address"" 
."" 
ExplicitValues"" *
.""* +
Count""+ 0
>""1 2
	homeRoute""3 <
.""< =
Count""= B
)""B C
{## 
foreach$$ 
($$ 
var$$  
entry$$! &
in$$' )
address$$* 1
.$$1 2
ExplicitValues$$2 @
)$$@ A
{%% 
if&& 
(&& 
!&& 
	homeRoute&& &
.&&& '
ContainsKey&&' 2
(&&2 3
entry&&3 8
.&&8 9
Key&&9 <
)&&< =
)&&= >
{'' 
routeValues(( '
.((' (
Remove((( .
(((. /
entry((/ 4
.((4 5
Key((5 8
)((8 9
;((9 :
})) 
}** 
}++ 
var-- 
endpoint-- 
=-- 
new-- "
RouteEndpoint--# 0
(.. 
c// 
=>// 
null// 
,// 
RoutePatternFactory00 '
.00' (
Parse00( -
(00- .
String00. 4
.004 5
Empty005 :
,00: ;
routeValues00< G
,00G H
null00I M
)00M N
,00N O
$num11 
,11 
null22 
,22 
null33 
)44 
;44 
return66 
new66 
[66 
]66 
{66 
endpoint66 '
}66( )
;66) *
}77 
return99 

Enumerable99 
.99 
Empty99 #
<99# $
Endpoint99$ ,
>99, -
(99- .
)99. /
;99/ 0
}:: 	
private<< 
bool<< 
Match<< 
(<<  
RouteValueDictionary<< /
routeValues<<0 ;
,<<; < 
RouteValueDictionary<<= Q
explicitValues<<R `
)<<` a
{== 	
if>> 
(>> 
routeValues>> 
.>> 
Count>> !
==>>" $
$num>>% &
)>>& '
{?? 
return@@ 
false@@ 
;@@ 
}AA 
foreachCC 
(CC 
varCC 
entryCC 
inCC !
routeValuesCC" -
)CC- .
{DD 
ifEE 
(EE 
!EE 
StringEE 
.EE 
EqualsEE "
(EE" #
explicitValuesEE# 1
[EE1 2
entryEE2 7
.EE7 8
KeyEE8 ;
]EE; <
?EE< =
.EE= >
ToStringEE> F
(EEF G
)EEG H
,EEH I
entryEEJ O
.EEO P
ValueEEP U
?EEU V
.EEV W
ToStringEEW _
(EE_ `
)EE` a
,EEa b
StringComparisonEEc s
.EEs t
OrdinalIgnoreCase	EEt Ö
)
EEÖ Ü
)
EEÜ á
{FF 
returnGG 
falseGG  
;GG  !
}HH 
}II 
returnKK 
trueKK 
;KK 
}LL 	
}MM 
}NN É
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.HomeRoute\Startup.cs
	namespace		 	
OrchardCore		
 
.		 
	HomeRoute		 
{

 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
int 
Order !
=>" $
-% &
$num& )
;) *
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
. 
AddSingleton !
<! " 
HomeRouteTransformer" 6
>6 7
(7 8
)8 9
;9 :
services 
. 
AddSingleton !
<! "*
IShellRouteValuesAddressScheme" @
,@ A(
HomeRouteValuesAddressSchemeB ^
>^ _
(_ `
)` a
;a b
} 	
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
routes 
. %
MapDynamicControllerRoute ,
<, - 
HomeRouteTransformer- A
>A B
(B C
$strC F
)F G
;G H
} 	
} 
} 