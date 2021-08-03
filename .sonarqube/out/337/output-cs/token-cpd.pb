Î7
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Feeds\Controllers\FeedController.cs
	namespace		 	
OrchardCore		
 
.		 
Feeds		 
.		 
Controllers		 '
{

 
public 

class 
FeedController 
:  !

Controller" ,
{ 
private 
readonly 
IEnumerable $
<$ % 
IFeedBuilderProvider% 9
>9 : 
_feedFormatProviders; O
;O P
private 
readonly 
IEnumerable $
<$ %
IFeedQueryProvider% 7
>7 8
_feedQueryProviders9 L
;L M
private 
readonly 
IFeedItemBuilder )
_feedItemBuilder* :
;: ;
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
FeedController 
( 
IEnumerable 
< 
IFeedQueryProvider *
>* +
feedQueryProviders, >
,> ?
IEnumerable 
<  
IFeedBuilderProvider ,
>, -
feedFormatProviders. A
,A B
IFeedItemBuilder 
feedItemBuilder ,
,, -
IServiceProvider 
serviceProvider ,
,, - 
IUpdateModelAccessor  
updateModelAccessor! 4
)4 5
{ 	
_feedQueryProviders 
=  !
feedQueryProviders" 4
;4 5 
_feedFormatProviders  
=! "
feedFormatProviders# 6
;6 7
_feedItemBuilder 
= 
feedItemBuilder .
;. /
_serviceProvider 
= 
serviceProvider .
;. / 
_updateModelAccessor  
=! "
updateModelAccessor# 6
;6 7
} 	
public!! 
async!! 
Task!! 
<!! 
ActionResult!! &
>!!& '
Index!!( -
(!!- .
string!!. 4
format!!5 ;
)!!; <
{"" 	
var## 
context## 
=## 
new## 
FeedContext## )
(##) * 
_updateModelAccessor##* >
.##> ?
ModelUpdater##? K
,##K L
format##M S
)##S T
;##T U
var%% 
bestFormatterMatch%% "
=%%# $ 
_feedFormatProviders%%% 9
.&& 
Select&& 
(&& 
provider&&  
=>&&! #
provider&&$ ,
.&&, -
Match&&- 2
(&&2 3
context&&3 :
)&&: ;
)&&; <
.'' 
Where'' 
('' 
match'' 
=>'' 
match''  %
!=''& (
null'') -
&&''. 0
match''1 6
.''6 7
FeedBuilder''7 B
!=''C E
null''F J
)''J K
.(( 
OrderByDescending(( "
(((" #
match((# (
=>(() +
match((, 1
.((1 2
Priority((2 :
)((: ;
.)) 
FirstOrDefault)) 
())  
)))  !
;))! "
if++ 
(++ 
bestFormatterMatch++ "
==++# %
null++& *
||+++ -
bestFormatterMatch++. @
.++@ A
FeedBuilder++A L
==++M O
null++P T
)++T U
{,, 
return-- 
NotFound-- 
(--  
)--  !
;--! "
}.. 
context00 
.00 
Builder00 
=00 
bestFormatterMatch00 0
.000 1
FeedBuilder001 <
;00< =
var22 
queryMatches22 
=22 
new22 "
List22# '
<22' (
FeedQueryMatch22( 6
>226 7
(227 8
)228 9
;229 :
foreach44 
(44 
var44 
provider44 !
in44" $
_feedQueryProviders44% 8
)448 9
{55 
queryMatches66 
.66 
Add66  
(66  !
await66! &
provider66' /
.66/ 0

MatchAsync660 :
(66: ;
context66; B
)66B C
)66C D
;66D E
}77 
var99 
bestQueryMatch99 
=99  
queryMatches99! -
.:: 
Where:: 
(:: 
match:: 
=>:: 
match::  %
!=::& (
null::) -
&&::. 0
match::1 6
.::6 7
	FeedQuery::7 @
!=::A C
null::D H
)::H I
.;; 
OrderByDescending;; "
(;;" #
match;;# (
=>;;) +
match;;, 1
.;;1 2
Priority;;2 :
);;: ;
.<< 
FirstOrDefault<< 
(<<  
)<<  !
;<<! "
if>> 
(>> 
bestQueryMatch>> 
==>> !
null>>" &
||>>' )
bestQueryMatch>>* 8
.>>8 9
	FeedQuery>>9 B
==>>C E
null>>F J
)>>J K
{?? 
return@@ 
NotFound@@ 
(@@  
)@@  !
;@@! "
}AA 
varCC 
documentCC 
=CC 
awaitCC  
contextCC! (
.CC( )
BuilderCC) 0
.CC0 1
ProcessAsyncCC1 =
(CC= >
contextCC> E
,CCE F
asyncCCG L
(CCM N
)CCN O
=>CCP R
{DD 
awaitEE 
bestQueryMatchEE #
.EE# $
	FeedQueryEE$ -
.EE- .
ExecuteAsyncEE. :
(EE: ;
contextEE; B
)EEB C
;EEC D
awaitGG 
_feedItemBuilderGG %
.GG% &
PopulateAsyncGG& 3
(GG3 4
contextGG4 ;
)GG; <
;GG< =
foreachII 
(II 
varII 
contextualizerII *
inII+ -
contextII. 5
.II5 6
ResponseII6 >
.II> ?
ContextualizersII? N
)IIN O
{JJ 
ifKK 
(KK 
ControllerContextKK (
!=KK) +
nullKK, 0
)KK0 1
{LL 
contextualizerMM %
(MM% &
newMM& ) 
ContextualizeContextMM* >
{NN 
ServiceProviderOO *
=OO+ ,
_serviceProviderOO- =
,OO= >
UrlPP 
=PP  
UrlPP! $
}QQ 
)QQ 
;QQ 
}RR 
}SS 
}TT 
)TT 
;TT 
returnVV 
ContentVV 
(VV 
documentVV #
.VV# $
ToStringVV$ ,
(VV, -
)VV- .
,VV. /
$strVV0 :
)VV: ;
;VV; <
}WW 	
}XX 
}YY ±
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Feeds\Manifest.cs
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
,2 3
Description 
= 
$str ,
,, -
Category		 
=		 
$str		 
)

 
]

 £
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Feeds\Startup.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public		 
override		 
void		 
ConfigureServices		 .
(		. /
IServiceCollection		/ A
services		B J
)		J K
{

 	
services 
. 
AddFeeds 
( 
) 
;  
} 	
} 
} 