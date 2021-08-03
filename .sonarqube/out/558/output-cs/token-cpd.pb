À4
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\Drivers\PublishLaterPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
PublishLater "
." #
Drivers# *
{ 
public 

class )
PublishLaterPartDisplayDriver .
:/ 0$
ContentPartDisplayDriver1 I
<I J
PublishLaterPartJ Z
>Z [
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ILocalClock $
_localClock% 0
;0 1
public )
PublishLaterPartDisplayDriver ,
(, - 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
,6 7
ILocalClock 

localClock "
)" #
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_localClock 
= 

localClock $
;$ %
} 	
public   
override   
IDisplayResult   &
Display  ' .
(  . /
PublishLaterPart  / ?
part  @ D
,  D E#
BuildPartDisplayContext  F ]
context  ^ e
)  e f
{!! 	
return"" 

Initialize"" 
<"" %
PublishLaterPartViewModel"" 7
>""7 8
(""8 9
$"## 
{## 
nameof## 
(## 
PublishLaterPart## *
)##* +
}##+ ,
_SummaryAdmin##, 9
"##9 :
,##: ;
model$$ 
=>$$ 
PopulateViewModel$$ *
($$* +
part$$+ /
,$$/ 0
model$$1 6
)$$6 7
)$$7 8
.%% 
Location%% 
(%% 
$str%% $
,%%$ %
$str%%& /
)%%/ 0
;%%0 1
}&& 	
public(( 
override(( 
IDisplayResult(( &
Edit((' +
(((+ ,
PublishLaterPart((, <
part((= A
,((A B"
BuildPartEditorContext((C Y
context((Z a
)((a b
{)) 	
return** 

Initialize** 
<** %
PublishLaterPartViewModel** 7
>**7 8
(**8 9
GetEditorShapeType**9 K
(**K L
context**L S
)**S T
,**T U
model++ 
=>++ 
PopulateViewModel++ *
(++* +
part+++ /
,++/ 0
model++1 6
)++6 7
)++7 8
.,, 
Location,, 
(,, 
$str,, "
),," #
;,,# $
}-- 	
public// 
override// 
async// 
Task// "
<//" #
IDisplayResult//# 1
>//1 2
UpdateAsync//3 >
(//> ?
PublishLaterPart//? O
part//P T
,//T U
IUpdateModel//V b
updater//c j
,//j k$
UpdatePartEditorContext	//l É
context
//Ñ ã
)
//ã å
{00 	
var11 
httpContext11 
=11  
_httpContextAccessor11 2
.112 3
HttpContext113 >
;11> ?
if33 
(33 
await33 !
_authorizationService33 +
.33+ ,
AuthorizeAsync33, :
(33: ;
httpContext33; F
?33F G
.33G H
User33H L
,33L M
CommonPermissions33N _
.33_ `
PublishContent33` n
,33n o
part33p t
.33t u
ContentItem	33u Ä
)
33Ä Å
)
33Å Ç
{44 
var55 
	viewModel55 
=55 
new55  #%
PublishLaterPartViewModel55$ =
(55= >
)55> ?
;55? @
await77 
updater77 
.77 
TryUpdateModelAsync77 1
(771 2
	viewModel772 ;
,77; <
Prefix77= C
)77C D
;77D E
if99 
(99 
	viewModel99 
.99 )
ScheduledPublishLocalDateTime99 ;
==99< >
null99? C
||99D F
httpContext99G R
.99R S
Request99S Z
.99Z [
Form99[ _
[99_ `
$str99` m
]99m n
==99o q
$str	99r ç
)
99ç é
{:: 
part;; 
.;; 
ScheduledPublishUtc;; ,
=;;- .
null;;/ 3
;;;3 4
}<< 
else== 
{>> 
part?? 
.?? 
ScheduledPublishUtc?? ,
=??- .
await??/ 4
_localClock??5 @
.??@ A
ConvertToUtcAsync??A R
(??R S
	viewModel??S \
.??\ ])
ScheduledPublishLocalDateTime??] z
.??z {
Value	??{ Ä
)
??Ä Å
;
??Å Ç
}@@ 
}AA 
returnCC 
EditCC 
(CC 
partCC 
,CC 
contextCC %
)CC% &
;CC& '
}DD 	
privateFF 
asyncFF 
	ValueTaskFF 
PopulateViewModelFF  1
(FF1 2
PublishLaterPartFF2 B
partFFC G
,FFG H%
PublishLaterPartViewModelFFI b
	viewModelFFc l
)FFl m
{GG 	
	viewModelHH 
.HH 
ContentItemHH !
=HH" #
partHH$ (
.HH( )
ContentItemHH) 4
;HH4 5
	viewModelII 
.II 
ScheduledPublishUtcII )
=II* +
partII, 0
.II0 1
ScheduledPublishUtcII1 D
;IID E
	viewModelJJ 
.JJ )
ScheduledPublishLocalDateTimeJJ 3
=JJ4 5
partJJ6 :
.JJ: ;
ScheduledPublishUtcJJ; N
.JJN O
HasValueJJO W
?JJX Y
(KK 
awaitKK 
_localClockKK "
.KK" #
ConvertToLocalAsyncKK# 6
(KK6 7
partKK7 ;
.KK; <
ScheduledPublishUtcKK< O
.KKO P
ValueKKP U
)KKU V
)KKV W
.KKW X
DateTimeKKX `
:KKa b
(LL 
DateTimeLL 
?LL 
)LL 
nullLL 
;LL  
}MM 	
}NN 
}OO «
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\Handlers\PublishLaterPartHandler.cs
	namespace 	
OrchardCore
 
. 
PublishLater "
." #
Handlers# +
{ 
public 

class #
PublishLaterPartHandler (
:) *
ContentPartHandler+ =
<= >
PublishLaterPart> N
>N O
{		 
public

 
override

 
Task

 
PublishedAsync

 +
(

+ ,!
PublishContentContext

, A
context

B I
,

I J
PublishLaterPart

K [
part

\ `
)

` a
{ 	
part 
. 
ScheduledPublishUtc $
=% &
null' +
;+ ,
part 
. 
Apply 
( 
) 
; 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ú2
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\Indexes\PublishLaterPartIndex.cs
	namespace 	
OrchardCore
 
. 
PublishLater "
." #
Indexes# *
{ 
public 

class !
PublishLaterPartIndex &
:' (
MapIndex) 1
{ 
public 
DateTime 
? '
ScheduledPublishDateTimeUtc 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
public 

class )
PublishLaterPartIndexProvider .
:/ 0
ContentHandlerBase1 C
,C D
IIndexProviderE S
,S T 
IScopedIndexProviderU i
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_partRemoved) 5
=6 7
new8 ;
HashSet< C
<C D
stringD J
>J K
(K L
)L M
;M N
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public )
PublishLaterPartIndexProvider ,
(, -
IServiceProvider- =
serviceProvider> M
)M N
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
Task 
UpdatedAsync )
() * 
UpdateContentContext* >
context? F
)F G
{   	
var!! 
part!! 
=!! 
context!! 
.!! 
ContentItem!! *
.!!* +
As!!+ -
<!!- .
PublishLaterPart!!. >
>!!> ?
(!!? @
)!!@ A
;!!A B
if%% 
(%% 
part%% 
!=%% 
null%% 
)%% 
{&& %
_contentDefinitionManager(( )
??=((* -
_serviceProvider((. >
.((> ?
GetRequiredService((? Q
<((Q R%
IContentDefinitionManager((R k
>((k l
(((l m
)((m n
;((n o
var++ !
contentTypeDefinition++ )
=++* +%
_contentDefinitionManager++, E
.++E F
GetTypeDefinition++F W
(++W X
context++X _
.++_ `
ContentItem++` k
.++k l
ContentType++l w
)++w x
;++x y
if,, 
(,, 
!,, !
contentTypeDefinition,, *
.,,* +
Parts,,+ 0
.,,0 1
Any,,1 4
(,,4 5
ctpd,,5 9
=>,,: <
ctpd,,= A
.,,A B
Name,,B F
==,,G I
nameof,,J P
(,,P Q
PublishLaterPart,,Q a
),,a b
),,b c
),,c d
{-- 
context.. 
... 
ContentItem.. '
...' (
Remove..( .
<... /
PublishLaterPart../ ?
>..? @
(..@ A
)..A B
;..B C
_partRemoved//  
.//  !
Add//! $
(//$ %
context//% ,
.//, -
ContentItem//- 8
.//8 9
ContentItemId//9 F
)//F G
;//G H
}00 
}11 
return33 
Task33 
.33 
CompletedTask33 %
;33% &
}44 	
public66 
string66 
CollectionName66 $
{66% &
get66' *
;66* +
set66, /
;66/ 0
}661 2
public77 
Type77 
ForType77 
(77 
)77 
=>77  
typeof77! '
(77' (
ContentItem77( 3
)773 4
;774 5
public88 
void88 
Describe88 
(88 
IDescriptor88 (
context88) 0
)880 1
=>882 4
Describe885 =
(88= >
(88> ?
DescribeContext88? N
<88N O
ContentItem88O Z
>88Z [
)88[ \
context88\ c
)88c d
;88d e
public:: 
void:: 
Describe:: 
(:: 
DescribeContext:: ,
<::, -
ContentItem::- 8
>::8 9
context::: A
)::A B
{;; 	
context<< 
.<< 
For<< 
<<< !
PublishLaterPartIndex<< -
><<- .
(<<. /
)<</ 0
.== 
When== 
(== 
contentItem== !
=>==" $
contentItem==% 0
.==0 1
Has==1 4
<==4 5
PublishLaterPart==5 E
>==E F
(==F G
)==G H
||==I K
_partRemoved==L X
.==X Y
Contains==Y a
(==a b
contentItem==b m
.==m n
ContentItemId==n {
)=={ |
)==| }
.>> 
Map>> 
(>> 
contentItem>>  
=>>>! #
{?? 
ifAA 
(AA 
contentItemAA #
.AA# $
	PublishedAA$ -
||AA. 0
!AA1 2
contentItemAA2 =
.AA= >
LatestAA> D
)AAD E
{BB 
returnCC 
nullCC #
;CC# $
}DD 
varFF 
partFF 
=FF 
contentItemFF *
.FF* +
AsFF+ -
<FF- .
PublishLaterPartFF. >
>FF> ?
(FF? @
)FF@ A
;FFA B
ifGG 
(GG 
partGG 
==GG 
nullGG  $
||GG% '
!GG( )
partGG) -
.GG- .
ScheduledPublishUtcGG. A
.GGA B
HasValueGGB J
)GGJ K
{HH 
returnII 
nullII #
;II# $
}JJ 
returnLL 
newLL !
PublishLaterPartIndexLL 4
{MM '
ScheduledPublishDateTimeUtcNN 3
=NN4 5
partNN6 :
.NN: ;
ScheduledPublishUtcNN; N
,NNN O
}OO 
;OO 
}PP 
)PP 
;PP 
}QQ 	
}RR 
}SS ”
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
= 
$str	 à
,
à â
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 1
}		2 3
,		3 4
Category

 
=

 
$str

 #
) 
] æ!
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\Migrations.cs
	namespace		 	
OrchardCore		
 
.		 
PublishLater		 "
{

 
public 

class 

Migrations 
: 
DataMigration +
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
nameof: @
(@ A
PublishLaterPartA Q
)Q R
,R S
builderT [
=>\ ^
builder_ f
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! ~
)~ 
)	 Ä
;
Ä Å
SchemaBuilder 
. 
CreateMapIndexTable -
<- .!
PublishLaterPartIndex. C
>C D
(D E
tableE J
=>K M
tableN S
. 
Column 
< 
DateTime  
>  !
(! "
nameof" (
(( )!
PublishLaterPartIndex) >
.> ?'
ScheduledPublishDateTimeUtc? Z
)Z [
)[ \
) 
; 
SchemaBuilder 
. 
AlterIndexTable )
<) *!
PublishLaterPartIndex* ?
>? @
(@ A
tableA F
=>G I
tableJ O
. 
CreateIndex 
( 
$" 
IDX_ #
{# $
nameof$ *
(* +!
PublishLaterPartIndex+ @
)@ A
}A B
_B C
{C D
nameofD J
(J K!
PublishLaterPartIndexK `
.` a'
ScheduledPublishDateTimeUtca |
)| }
}} ~
"~ 
,	 Ä
$str    
,    !
nameof!! 
(!! !
PublishLaterPartIndex!! 0
.!!0 1'
ScheduledPublishDateTimeUtc!!1 L
)!!L M
)!!M N
)"" 
;"" 
return%% 
$num%% 
;%% 
}&& 	
public)) 
int)) 
UpdateFrom1)) 
()) 
)))  
{** 	
SchemaBuilder.. 
... 
AlterIndexTable.. )
<..) *!
PublishLaterPartIndex..* ?
>..? @
(..@ A
table..A F
=>..G I
table..J O
.// 
	AddColumn// 
<// 
DateTime// #
>//# $
(//$ %
nameof//% +
(//+ ,!
PublishLaterPartIndex//, A
.//A B'
ScheduledPublishDateTimeUtc//B ]
)//] ^
)//^ _
)00 
;00 
SchemaBuilder22 
.22 
AlterIndexTable22 )
<22) *!
PublishLaterPartIndex22* ?
>22? @
(22@ A
table22A F
=>22G I
table22J O
.33 
CreateIndex33 
(33 
$"33 
IDX_33 #
{33# $
nameof33$ *
(33* +!
PublishLaterPartIndex33+ @
)33@ A
}33A B
_33B C
{33C D
nameof33D J
(33J K!
PublishLaterPartIndex33K `
.33` a'
ScheduledPublishDateTimeUtc33a |
)33| }
}33} ~
"33~ 
,	33 Ä
$str44  
,44  !
nameof55 
(55 !
PublishLaterPartIndex55 0
.550 1'
ScheduledPublishDateTimeUtc551 L
)55L M
)55M N
)66 
;66 
return88 
$num88 
;88 
}99 	
}:: 
};; Ì
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\Models\PublishLaterPart.cs
	namespace 	
OrchardCore
 
. 
PublishLater "
." #
Models# )
{ 
public 

class 
PublishLaterPart !
:" #
ContentPart$ /
{ 
public 
DateTime 
? 
ScheduledPublishUtc ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
}		 
}

 ï
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\Services\ScheduledPublishingBackgroundTask.cs
	namespace 	
OrchardCore
 
. 
PublishLater "
." #
Services# +
{ 
[ 
BackgroundTask 
( 
Schedule 
= 
$str *
,* +
Description, 7
=8 9
$str	: É
)
É Ñ
]
Ñ Ö
public 

class -
!ScheduledPublishingBackgroundTask 2
:3 4
IBackgroundTask5 D
{ 
private 
readonly 
ILogger  
<  !-
!ScheduledPublishingBackgroundTask! B
>B C
_loggerD K
;K L
private 
readonly 
IClock 
_clock  &
;& '
public -
!ScheduledPublishingBackgroundTask 0
(0 1
ILogger1 8
<8 9-
!ScheduledPublishingBackgroundTask9 Z
>Z [
logger\ b
,b c
IClockd j
clockk p
)p q
{ 	
_logger 
= 
logger 
; 
_clock 
= 
clock 
; 
} 	
public 
async 
Task 
DoWorkAsync %
(% &
IServiceProvider& 6
serviceProvider7 F
,F G
CancellationTokenH Y
cancellationTokenZ k
)k l
{ 	
var 
itemsToPublish 
=  
await! &
serviceProvider' 6
. 
GetRequiredService #
<# $
ISession$ ,
>, -
(- .
). /
. 
Query 
< 
ContentItem "
," #!
PublishLaterPartIndex$ 9
>9 :
(: ;
index; @
=>A C
indexD I
.I J'
ScheduledPublishDateTimeUtcJ e
<f g
_clockh n
.n o
UtcNowo u
)u v
.   
	ListAsync   
(   
)   
;   
if"" 
("" 
!"" 
itemsToPublish"" 
.""  
Any""  #
(""# $
)""$ %
)""% &
{## 
return$$ 
;$$ 
}%% 
foreach'' 
('' 
var'' 
item'' 
in''  
itemsToPublish''! /
)''/ 0
{(( 
_logger)) 
.)) 
LogDebug))  
())  !
$str))! U
,))U V
item))W [
.))[ \
ContentItemId))\ i
)))i j
;))j k
await** 
serviceProvider** %
.**% &
GetRequiredService**& 8
<**8 9
IContentManager**9 H
>**H I
(**I J
)**J K
.**K L
PublishAsync**L X
(**X Y
item**Y ]
)**] ^
;**^ _
}++ 
},, 	
}-- 
}.. ñ
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\Startup.cs
	namespace 	
OrchardCore
 
. 
PublishLater "
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
static 
Startup 
( 
) 
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @%
PublishLaterPartViewModel@ Y
>Y Z
(Z [
)[ \
;\ ]
} 	
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
. 
AddContentPart 
<  
PublishLaterPart  0
>0 1
(1 2
)2 3
. 
UseDisplayDriver !
<! ")
PublishLaterPartDisplayDriver" ?
>? @
(@ A
)A B
. 

AddHandler 
< #
PublishLaterPartHandler 3
>3 4
(4 5
)5 6
;6 7
services!! 
.!! 
	AddScoped!! 
<!! 
IDataMigration!! -
,!!- .

Migrations!!/ 9
>!!9 :
(!!: ;
)!!; <
;!!< =
services## 
.## 
	AddScoped## 
<## )
PublishLaterPartIndexProvider## <
>##< =
(##= >
)##> ?
;##? @
services$$ 
.$$ 
	AddScoped$$ 
<$$  
IScopedIndexProvider$$ 3
>$$3 4
($$4 5
sp$$5 7
=>$$8 :
sp$$; =
.$$= >
GetRequiredService$$> P
<$$P Q)
PublishLaterPartIndexProvider$$Q n
>$$n o
($$o p
)$$p q
)$$q r
;$$r s
services%% 
.%% 
	AddScoped%% 
<%% 
IContentHandler%% .
>%%. /
(%%/ 0
sp%%0 2
=>%%3 5
sp%%6 8
.%%8 9
GetRequiredService%%9 K
<%%K L)
PublishLaterPartIndexProvider%%L i
>%%i j
(%%j k
)%%k l
)%%l m
;%%m n
services'' 
.'' 
AddSingleton'' !
<''! "
IBackgroundTask''" 1
,''1 2-
!ScheduledPublishingBackgroundTask''3 T
>''T U
(''U V
)''V W
;''W X
}(( 	
})) 
}** ˙
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.PublishLater\ViewModels\PublishLaterPartViewModel.cs
	namespace 	
OrchardCore
 
. 
PublishLater "
." #

ViewModels# -
{ 
public 

class %
PublishLaterPartViewModel *
{ 
[		 	
	BindNever			 
]		 
public

 
ContentItem

 
ContentItem

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
DateTime 
? 
ScheduledPublishUtc ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DateTime 
? )
ScheduledPublishLocalDateTime 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
} 