ƒ
²D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\ContentLocalizationOrchardHelperExtensions.cs
public 
static 
class 6
*ContentLocalizationOrchardHelperExtensions >
{ 
public 

async 
static 
Task 
< 
CultureInfo (
>( )"
GetContentCultureAsync* @
(@ A
thisA E
IOrchardHelperF T
orchardHelperU b
,b c
ContentItemd o
contentItemp {
){ |
{ 
var 
contentManager 
= 
orchardHelper *
.* +
HttpContext+ 6
.6 7
RequestServices7 F
.F G

GetServiceG Q
<Q R
IContentManagerR a
>a b
(b c
)c d
;d e
var 
cultureAspect 
= 
await !
contentManager" 0
.0 1
PopulateAspectAsync1 D
(D E
contentItemE P
,P Q
newR U
CultureAspectV c
(c d
)d e
)e f
;f g
return 
cultureAspect 
. 
Culture $
;$ %
} 
} 
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\CultureAspect.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
{ 
public 

class 
CultureAspect 
{		 
public 
CultureInfo 
Culture "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
CultureInfo3 >
.> ?
CurrentUICulture? O
;O P
public 
bool 

HasCulture 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ×
¯D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Handlers\ContentLocalizationHandlerBase.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Handlers* 2
{ 
public 

class *
ContentLocalizationHandlerBase /
:0 1'
IContentLocalizationHandler2 M
{ 
public 
virtual 
Task 
LocalizedAsync *
(* +&
LocalizationContentContext+ E
contextF M
)M N
{ 	
return		 
Task		 
.		 
CompletedTask		 %
;		% &
}

 	
public 
virtual 
Task 
LocalizingAsync +
(+ ,&
LocalizationContentContext, F
contextG N
)N O
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ‘
³D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Handlers\ContentLocalizationPartHandlerBase.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Handlers* 2
{ 
public 

abstract 
class .
"ContentLocalizationPartHandlerBase <
<< =
TPart= B
>B C
:D E+
IContentLocalizationPartHandlerF e
wheref k
TPartl q
:r s
ContentPartt 
,	 €
new
 „
(
„ …
)
… †
{ 
async 
Task +
IContentLocalizationPartHandler 2
.2 3
LocalizingAsync3 B
(B C&
LocalizationContentContextC ]
context^ e
,e f
ContentPartg r
parts w
)w x
{		 	
if

 
(

 
part

 
is

 
TPart

 
tpart

 #
)

# $
{ 
await 
LocalizingAsync %
(% &
context& -
,- .
tpart/ 4
)4 5
;5 6
} 
} 	
async 
Task +
IContentLocalizationPartHandler 2
.2 3
LocalizedAsync3 A
(A B&
LocalizationContentContextB \
context] d
,d e
ContentPartf q
partr v
)v w
{ 	
if 
( 
part 
is 
TPart 
tpart #
)# $
{ 
await 
LocalizedAsync $
($ %
context% ,
,, -
tpart. 3
)3 4
;4 5
} 
} 	
public 
virtual 
Task 
LocalizingAsync +
(+ ,&
LocalizationContentContext, F
contextG N
,N O
TPartP U
partV Z
)Z [
=>\ ^
Task_ c
.c d
CompletedTaskd q
;q r
public 
virtual 
Task 
LocalizedAsync *
(* +&
LocalizationContentContext+ E
contextF M
,M N
TPartO T
partU Y
)Y Z
=>[ ]
Task^ b
.b c
CompletedTaskc p
;p q
} 
} ï
¬D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Handlers\IContentLocalizationHandler.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Handlers* 2
{ 
public 

	interface '
IContentLocalizationHandler 0
{ 
Task 
LocalizingAsync 
( &
LocalizationContentContext 7
context8 ?
)? @
;@ A
Task 
LocalizedAsync 
( &
LocalizationContentContext 6
context7 >
)> ?
;? @
}		 
}

 ë
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Handlers\IContentLocalizationPartHandler.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Handlers* 2
{ 
public 

	interface +
IContentLocalizationPartHandler 4
{ 
Task 
LocalizingAsync 
( &
LocalizationContentContext 7
context8 ?
,? @
ContentPartA L
partM Q
)Q R
;R S
Task		 
LocalizedAsync		 
(		 &
LocalizationContentContext		 6
context		7 >
,		> ?
ContentPart		@ K
part		L P
)		P Q
;		Q R
}

 
} é
«D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Handlers\LocalizationContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Handlers* 2
{ 
public 

class &
LocalizationContentContext +
:, -
ContentContextBase. @
{ 
public 
ContentItem 
Original #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
string		 
LocalizationSet		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
string

 
Culture
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
public &
LocalizationContentContext )
() *
ContentItem* 5
contentItem6 A
,A B
ContentItemC N
originalO W
,W X
stringY _
localizationSet` o
,o p
stringq w
culturex 
)	 €
: 
base 
( 
contentItem 
) 
{ 	
Original 
= 
original 
;  
LocalizationSet 
= 
localizationSet -
;- .
Culture 
= 
culture 
; 
} 	
} 
} ¼
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\IContentLocalizationManager.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
{ 
public 

	interface '
IContentLocalizationManager 0
{ 
Task 
< 
IEnumerable 
< 
ContentItem $
>$ %
>% &
GetItemsForSetAsync' :
(: ;
string; A
localizationSetB Q
)Q R
;R S
Task 
< 
ContentItem 
> 
GetContentItemAsync -
(- .
string. 4
localizationSet5 D
,D E
stringF L
cultureM T
)T U
;U V
Task 
< 
ContentItem 
> 
LocalizeAsync '
(' (
ContentItem( 3
content4 ;
,; <
string= C
targetCultureD Q
)Q R
;R S
Task%% 
<%% 
IDictionary%% 
<%% 
string%% 
,%%  
ContentItem%%! ,
>%%, -
>%%- .(
DeduplicateContentItemsAsync%%/ K
(%%K L
IEnumerable%%L W
<%%W X
ContentItem%%X c
>%%c d
contentItems%%e q
)%%q r
;%%r s
Task11 
<11 
IDictionary11 
<11 
string11 
,11  
string11! '
>11' (
>11( )&
GetFirstItemIdForSetsAsync11* D
(11D E
IEnumerable11E P
<11P Q
string11Q W
>11W X
localizationSets11Y i
)11i j
;11j k
Task66 
<66 
IEnumerable66 
<66 
ContentItem66 $
>66$ %
>66% & 
GetItemsForSetsAsync66' ;
(66; <
IEnumerable66< G
<66G H
string66H N
>66N O
localizationSets66P `
,66` a
string66b h
culture66i p
)66p q
;66q r
}77 
}88 È
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\ILocalizable.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
{ 
public 

	interface 
ILocalizable !
{ 
string 
LocalizationSet 
{  
get! $
;$ %
}& '
string 
Culture 
{ 
get 
; 
} 
} 
} à
 D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Models\LocalizationEntry.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Models* 0
{ 
public 

class 
LocalizationEntry "
{ 
public 
int 

DocumentId 
; 
public 
string 
ContentItemId #
;# $
public 
string 
LocalizationSet %
;% &
public 
string 
Culture 
; 
}		 
}

 ¯
ŸD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Models\LocalizationPart.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Models* 0
{ 
public 

class 
LocalizationPart !
:" #
ContentPart$ /
,/ 0
ILocalizable1 =
{ 
public 
string 
LocalizationSet %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Culture 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 îK
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Records\LocalizedContentItemIndex.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Records* 1
{ 
public 

class %
LocalizedContentItemIndex *
:+ ,
MapIndex- 5
{ 
public 
int 

DocumentId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
LocalizationSet %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Culture 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
	Published 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Latest 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class -
!LocalizedContentItemIndexProvider 2
:3 4
ContentHandlerBase5 G
,G H
IIndexProviderI W
,W X 
IScopedIndexProviderY m
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
ContentItem! ,
>, -
_itemRemoved. :
=; <
new= @
HashSetA H
<H I
ContentItemI T
>T U
(U V
)V W
;W X
private 
readonly 
HashSet  
<  !
string! '
>' (
_partRemoved) 5
=6 7
new8 ;
HashSet< C
<C D
stringD J
>J K
(K L
)L M
;M N
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public   -
!LocalizedContentItemIndexProvider   0
(  0 1
IServiceProvider  1 A
serviceProvider  B Q
)  Q R
{!! 	
_serviceProvider"" 
="" 
serviceProvider"" .
;"". /
}## 	
public%% 
override%% 
Task%% 
RemovedAsync%% )
(%%) * 
RemoveContentContext%%* >
context%%? F
)%%F G
{&& 	
if'' 
('' 
context'' 
.'' 
NoActiveVersionLeft'' +
)''+ ,
{(( 
var)) 
part)) 
=)) 
context)) "
.))" #
ContentItem))# .
.)). /
As))/ 1
<))1 2
LocalizationPart))2 B
>))B C
())C D
)))D E
;))E F
if++ 
(++ 
part++ 
!=++ 
null++  
)++  !
{,, 
_itemRemoved--  
.--  !
Add--! $
(--$ %
context--% ,
.--, -
ContentItem--- 8
)--8 9
;--9 :
}.. 
}// 
return11 
Task11 
.11 
CompletedTask11 %
;11% &
}22 	
public44 
override44 
Task44 
PublishedAsync44 +
(44+ ,!
PublishContentContext44, A
context44B I
)44I J
{55 	
var66 
part66 
=66 
context66 
.66 
ContentItem66 *
.66* +
As66+ -
<66- .
LocalizationPart66. >
>66> ?
(66? @
)66@ A
;66A B
if:: 
(:: 
part:: 
!=:: 
null:: 
):: 
{;; %
_contentDefinitionManager== )
??===* -
_serviceProvider==. >
.==> ?
GetRequiredService==? Q
<==Q R%
IContentDefinitionManager==R k
>==k l
(==l m
)==m n
;==n o
var@@ !
contentTypeDefinition@@ )
=@@* +%
_contentDefinitionManager@@, E
.@@E F
GetTypeDefinition@@F W
(@@W X
context@@X _
.@@_ `
ContentItem@@` k
.@@k l
ContentType@@l w
)@@w x
;@@x y
ifAA 
(AA 
!AA !
contentTypeDefinitionAA *
.AA* +
PartsAA+ 0
.AA0 1
AnyAA1 4
(AA4 5
ctpdAA5 9
=>AA: <
ctpdAA= A
.AAA B
NameAAB F
==AAG I
nameofAAJ P
(AAP Q
LocalizationPartAAQ a
)AAa b
)AAb c
)AAc d
{BB 
contextCC 
.CC 
ContentItemCC '
.CC' (
RemoveCC( .
<CC. /
LocalizationPartCC/ ?
>CC? @
(CC@ A
)CCA B
;CCB C
_partRemovedDD  
.DD  !
AddDD! $
(DD$ %
contextDD% ,
.DD, -
ContentItemDD- 8
.DD8 9
ContentItemIdDD9 F
)DDF G
;DDG H
}EE 
}FF 
returnHH 
TaskHH 
.HH 
CompletedTaskHH %
;HH% &
}II 	
publicKK 
stringKK 
CollectionNameKK $
{KK% &
getKK' *
;KK* +
setKK, /
;KK/ 0
}KK1 2
publicLL 
TypeLL 
ForTypeLL 
(LL 
)LL 
=>LL  
typeofLL! '
(LL' (
ContentItemLL( 3
)LL3 4
;LL4 5
publicMM 
voidMM 
DescribeMM 
(MM 
IDescriptorMM (
contextMM) 0
)MM0 1
=>MM2 4
DescribeMM5 =
(MM= >
(MM> ?
DescribeContextMM? N
<MMN O
ContentItemMMO Z
>MMZ [
)MM[ \
contextMM\ c
)MMc d
;MMd e
publicOO 
voidOO 
DescribeOO 
(OO 
DescribeContextOO ,
<OO, -
ContentItemOO- 8
>OO8 9
contextOO: A
)OOA B
{PP 	
contextQQ 
.QQ 
ForQQ 
<QQ %
LocalizedContentItemIndexQQ 1
>QQ1 2
(QQ2 3
)QQ3 4
.RR 
WhenRR 
(RR 
contentItemRR !
=>RR" $
contentItemRR% 0
.RR0 1
HasRR1 4
<RR4 5
LocalizationPartRR5 E
>RRE F
(RRF G
)RRG H
||RRI K
_partRemovedRRL X
.RRX Y
ContainsRRY a
(RRa b
contentItemRRb m
.RRm n
ContentItemIdRRn {
)RR{ |
)RR| }
.SS 
MapSS 
(SS 
contentItemSS  
=>SS! #
{TT 
ifVV 
(VV 
!VV 
contentItemVV $
.VV$ %
	PublishedVV% .
&&VV/ 1
!VV2 3
contentItemVV3 >
.VV> ?
LatestVV? E
&&VVF H
!VVI J
_itemRemovedVVJ V
.VVV W
ContainsVVW _
(VV_ `
contentItemVV` k
)VVk l
)VVl m
{WW 
returnXX 
nullXX #
;XX# $
}YY 
var\\ 
partRemoved\\ #
=\\$ %
_partRemoved\\& 2
.\\2 3
Contains\\3 ;
(\\; <
contentItem\\< G
.\\G H
ContentItemId\\H U
)\\U V
;\\V W
var^^ 
part^^ 
=^^ 
contentItem^^ *
.^^* +
As^^+ -
<^^- .
LocalizationPart^^. >
>^^> ?
(^^? @
)^^@ A
;^^A B
if__ 
(__ 
!__ 
partRemoved__ $
&&__% '
(__( )
part__) -
==__. 0
null__1 5
||__6 8
String__9 ?
.__? @
IsNullOrEmpty__@ M
(__M N
part__N R
.__R S
LocalizationSet__S b
)__b c
||__d f
part__g k
.__k l
Culture__l s
==__t v
null__w {
)__{ |
)__| }
{`` 
returnaa 
nullaa #
;aa# $
}bb 
returnee 
newee %
LocalizedContentItemIndexee 8
{ff 
Culturegg 
=gg  !
!gg" #
partRemovedgg# .
?gg/ 0
partgg1 5
.gg5 6
Culturegg6 =
.gg= >
ToLowerInvariantgg> N
(ggN O
)ggO P
:ggQ R
nullggS W
,ggW X
LocalizationSethh '
=hh( )
parthh* .
.hh. /
LocalizationSethh/ >
,hh> ?
ContentItemIdii %
=ii& '
contentItemii( 3
.ii3 4
ContentItemIdii4 A
,iiA B
	Publishedjj !
=jj" #
contentItemjj$ /
.jj/ 0
	Publishedjj0 9
,jj9 :
Latestkk 
=kk  
contentItemkk! ,
.kk, -
Latestkk- 3
}ll 
;ll 
}mm 
)mm 
;mm 
}nn 	
}oo 
}pp Õ(
šD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentLocalization.Abstractions\Records\Migrations.cs
	namespace 	
OrchardCore
 
. 
ContentLocalization )
.) *
Records* 1
{ 
public		 

class		 

Migrations		 
:		 
DataMigration		 +
{

 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
nameof: @
(@ A
LocalizationPartA Q
)Q R
,R S
builderT [
=>\ ^
builder_ f
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! Y
)Y Z
)Z [
;[ \
SchemaBuilder 
. 
CreateMapIndexTable -
<- .%
LocalizedContentItemIndex. G
>G H
(H I
tableI N
=>O Q
tableR W
. 
Column 
< 
string 
> 
(  
$str  1
,1 2
col3 6
=>7 9
col: =
.= >

WithLength> H
(H I
$numI K
)K L
)L M
. 
Column 
< 
string 
> 
(  
$str  )
,) *
col+ .
=>/ 1
col2 5
.5 6

WithLength6 @
(@ A
$numA C
)C D
)D E
. 
Column 
< 
string 
> 
(  
$str  /
,/ 0
c1 2
=>3 5
c6 7
.7 8

WithLength8 B
(B C
$numC E
)E F
)F G
. 
Column 
< 
bool 
> 
( 
$str )
)) *
. 
Column 
< 
bool 
> 
( 
$str &
)& '
) 
; 
SchemaBuilder   
.   
AlterIndexTable   )
<  ) *%
LocalizedContentItemIndex  * C
>  C D
(  D E
table  E J
=>  K M
table  N S
.!! 
CreateIndex!! 
(!! 
$str!! C
,!!C D
$str"" 
,"" 
$str## !
,##! "
$str$$ 
,$$ 
$str%% 
,%%  
$str&& 
,&& 
$str'' 
)'' 
)(( 
;(( 
return++ 
$num++ 
;++ 
},, 	
public// 
int// 
UpdateFrom1// 
(// 
)//  
{00 	
SchemaBuilder11 
.11 
AlterIndexTable11 )
<11) *%
LocalizedContentItemIndex11* C
>11C D
(11D E
table11E J
=>11K M
table11N S
.22 
	AddColumn22 
<22 
bool22 
>22  
(22  !
nameof22! '
(22' (%
LocalizedContentItemIndex22( A
.22A B
	Published22B K
)22K L
)22L M
)22M N
;22N O
return44 
$num44 
;44 
}55 	
public88 
int88 
UpdateFrom288 
(88 
)88  
{99 	
SchemaBuilder:: 
.:: 
AlterIndexTable:: )
<::) *%
LocalizedContentItemIndex::* C
>::C D
(::D E
table::E J
=>::K M
table::N S
.;; 
	AddColumn;; 
<;; 
bool;; 
>;;  
(;;  !
nameof;;! '
(;;' (%
LocalizedContentItemIndex;;( A
.;;A B
Latest;;B H
);;H I
);;I J
)<< 
;<< 
SchemaBuilder>> 
.>> 
AlterIndexTable>> )
<>>) *%
LocalizedContentItemIndex>>* C
>>>C D
(>>D E
table>>E J
=>>>K M
table>>N S
.?? 
CreateIndex?? 
(?? 
$str?? C
,??C D
$str@@ 
,@@ 
$strAA !
,AA! "
$strBB 
,BB 
$strCC 
,CC  
$strDD 
,DD 
$strEE 
)EE 
)FF 
;FF 
returnHH 
$numHH 
;HH 
}II 	
}JJ 
}KK 