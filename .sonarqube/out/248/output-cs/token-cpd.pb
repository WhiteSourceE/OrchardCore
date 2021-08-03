õ
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Cache\ContentDefinitionCacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Cache( -
{		 
public

 

class

 1
%ContentDefinitionCacheContextProvider

 6
:

7 8!
ICacheContextProvider

9 N
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public 1
%ContentDefinitionCacheContextProvider 4
(4 5%
IContentDefinitionManager5 N$
contentDefinitionManagerO g
)g h
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
async 
Task '
PopulateContextEntriesAsync 5
(5 6
IEnumerable6 A
<A B
stringB H
>H I
contextsJ R
,R S
ListT X
<X Y
CacheContextEntryY j
>j k
entriesl s
)s t
{ 	
if 
( 
contexts 
. 
Any 
( 
ctx  
=>! #
String$ *
.* +
Equals+ 1
(1 2
ctx2 5
,5 6
$str7 >
,> ?
StringComparison@ P
.P Q
OrdinalIgnoreCaseQ b
)b c
)c d
)d e
{ 
var 

identifier 
=  
await! &%
_contentDefinitionManager' @
.@ A
GetIdentifierAsyncA S
(S T
)T U
;U V
entries 
. 
Add 
( 
new 
CacheContextEntry  1
(1 2
$str2 9
,9 :

identifier; E
)E F
)F G
;G H
return 
; 
} 
} 	
} 
} ô
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\CompiledQueries\PublishedContentItemById.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
CompiledQueries( 7
{ 
public 

class $
PublishedContentItemById )
:* +
ICompiledQuery, :
<: ;
ContentItem; F
>F G
{		 
public

 $
PublishedContentItemById

 '
(

' (
string

( .
contentItemId

/ <
)

< =
{ 	
ContentItemId 
= 
contentItemId )
;) *
} 	
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

Expression 
< 
Func 
< 
IQuery %
<% &
ContentItem& 1
>1 2
,2 3
IQuery4 :
<: ;
ContentItem; F
>F G
>G H
>H I
QueryJ O
(O P
)P Q
{ 	
return 
query 
=> 
query !
. 
With 
< 
ContentItemIndex &
>& '
(' (
)( )
. 
Where 
( 
x 
=> 
x 
. 
ContentItemId +
==, .
ContentItemId/ <
&&= ?
x@ A
.A B
	PublishedB K
==L N
trueO S
)S T
;T U
} 	
} 
} £ì
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ContentDefinitionManager.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class $
ContentDefinitionManager )
:* +%
IContentDefinitionManager, E
{ 
private 
const 
string 
CacheKey %
=& '
nameof( .
(. /$
ContentDefinitionManager/ G
)G H
;H I
private 
readonly #
IContentDefinitionStore 0#
_contentDefinitionStore1 H
;H I
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5!
ContentTypeDefinition6 K
>K L"
_cachedTypeDefinitionsM c
;c d
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5!
ContentPartDefinition6 K
>K L"
_cachedPartDefinitionsM c
;c d
private 
readonly 

Dictionary #
<# $
string$ *
,* +!
ContentTypeDefinition, A
>A B"
_scopedTypeDefinitionsC Y
=Z [
new\ _

Dictionary` j
<j k
stringk q
,q r"
ContentTypeDefinition	s à
>
à â
(
â ä
)
ä ã
;
ã å
private 
readonly 

Dictionary #
<# $
string$ *
,* +!
ContentPartDefinition, A
>A B"
_scopedPartDefinitionsC Y
=Z [
new\ _

Dictionary` j
<j k
stringk q
,q r"
ContentPartDefinition	s à
>
à â
(
â ä
)
ä ã
;
ã å
public $
ContentDefinitionManager '
(' (#
IContentDefinitionStore #"
contentDefinitionStore$ :
,: ;
IMemoryCache 
memoryCache $
)$ %
{ 	#
_contentDefinitionStore   #
=  $ %"
contentDefinitionStore  & <
;  < =
_memoryCache!! 
=!! 
memoryCache!! &
;!!& '"
_cachedTypeDefinitions## "
=### $
_memoryCache##% 1
.##1 2
GetOrCreate##2 =
(##= >
$str##> O
,##O P
entry##Q V
=>##W Y
new##Z ] 
ConcurrentDictionary##^ r
<##r s
string##s y
,##y z"
ContentTypeDefinition	##{ ê
>
##ê ë
(
##ë í
)
##í ì
)
##ì î
;
##î ï"
_cachedPartDefinitions$$ "
=$$# $
_memoryCache$$% 1
.$$1 2
GetOrCreate$$2 =
($$= >
$str$$> O
,$$O P
entry$$Q V
=>$$W Y
new$$Z ] 
ConcurrentDictionary$$^ r
<$$r s
string$$s y
,$$y z"
ContentPartDefinition	$${ ê
>
$$ê ë
(
$$ë í
)
$$í ì
)
$$ì î
;
$$î ï
}%% 	
public'' 
async'' 
Task'' 
<'' 
string''  
>''  !
GetIdentifierAsync''" 4
(''4 5
)''5 6
=>''7 9
('': ;
await''; @#
_contentDefinitionStore''A X
.''X Y%
GetContentDefinitionAsync''Y r
(''r s
)''s t
)''t u
.''u v

Identifier	''v Ä
;
''Ä Å
public)) !
ContentTypeDefinition)) $
LoadTypeDefinition))% 7
())7 8
string))8 >
name))? C
)))C D
{** 	
if++ 
(++ 
string++ 
.++ 
IsNullOrEmpty++ $
(++$ %
name++% )
)++) *
)++* +
{,, 
throw-- 
new-- 
ArgumentException-- +
(--+ ,
$str--, N
,--N O
nameof--P V
(--V W
name--W [
)--[ \
)--\ ]
;--] ^
}.. 
if00 
(00 
!00 "
_scopedTypeDefinitions00 '
.00' (
TryGetValue00( 3
(003 4
name004 8
,008 9
out00: =
var00> A
typeDefinition00B P
)00P Q
)00Q R
{11 
var22 '
contentTypeDefinitionRecord22 /
=220 1'
LoadContentDefinitionRecord222 M
(22M N
)22N O
.33 (
ContentTypeDefinitionRecords33 1
.44 
FirstOrDefault44 #
(44# $
x44$ %
=>44& (
x44) *
.44* +
Name44+ /
==440 2
name443 7
)447 8
;448 9"
_scopedTypeDefinitions66 &
[66& '
name66' +
]66+ ,
=66- .
typeDefinition66/ =
=66> ?
Build66@ E
(66E F'
contentTypeDefinitionRecord66F a
,66a b'
LoadContentDefinitionRecord66c ~
(66~ 
)	66 Ä
.
66Ä Å*
ContentPartDefinitionRecords
66Å ù
)
66ù û
;
66û ü
}77 
;77 
return99 
typeDefinition99 !
;99! "
}:: 	
public<< !
ContentTypeDefinition<< $
GetTypeDefinition<<% 6
(<<6 7
string<<7 =
name<<> B
)<<B C
{== 	
if>> 
(>> 
string>> 
.>> 
IsNullOrEmpty>> $
(>>$ %
name>>% )
)>>) *
)>>* +
{?? 
throw@@ 
new@@ 
ArgumentException@@ +
(@@+ ,
$str@@, N
,@@N O
nameof@@P V
(@@V W
name@@W [
)@@[ \
)@@\ ]
;@@] ^
}AA 
varCC 
documentCC 
=CC &
GetContentDefinitionRecordCC 5
(CC5 6
)CC6 7
;CC7 8#
CheckDocumentIdentifierDD #
(DD# $
documentDD$ ,
)DD, -
;DD- .
returnFF "
_cachedTypeDefinitionsFF )
.FF) *
GetOrAddFF* 2
(FF2 3
nameFF3 7
,FF7 8
nFF9 :
=>FF; =
{GG 
varHH '
contentTypeDefinitionRecordHH /
=HH0 1
documentHH2 :
.II (
ContentTypeDefinitionRecordsII 1
.JJ 
FirstOrDefaultJJ #
(JJ# $
xJJ$ %
=>JJ& (
xJJ) *
.JJ* +
NameJJ+ /
==JJ0 2
nameJJ3 7
)JJ7 8
;JJ8 9
returnLL 
BuildLL 
(LL '
contentTypeDefinitionRecordLL 8
,LL8 9&
GetContentDefinitionRecordLL: T
(LLT U
)LLU V
.LLV W(
ContentPartDefinitionRecordsLLW s
)LLs t
;LLt u
}MM 
)MM 
;MM 
}NN 	
publicPP !
ContentPartDefinitionPP $
LoadPartDefinitionPP% 7
(PP7 8
stringPP8 >
namePP? C
)PPC D
{QQ 	
ifRR 
(RR 
!RR "
_scopedPartDefinitionsRR '
.RR' (
TryGetValueRR( 3
(RR3 4
nameRR4 8
,RR8 9
outRR: =
varRR> A
partDefinitionRRB P
)RRP Q
)RRQ R
{SS "
_scopedPartDefinitionsTT &
[TT& '
nameTT' +
]TT+ ,
=TT- .
partDefinitionTT/ =
=TT> ?
BuildTT@ E
(TTE F'
LoadContentDefinitionRecordTTF a
(TTa b
)TTb c
.UU (
ContentPartDefinitionRecordsUU 1
.VV 
FirstOrDefaultVV #
(VV# $
xVV$ %
=>VV& (
xVV) *
.VV* +
NameVV+ /
==VV0 2
nameVV3 7
)VV7 8
)VV8 9
;VV9 :
}WW 
;WW 
returnYY 
partDefinitionYY !
;YY! "
}ZZ 	
public\\ !
ContentPartDefinition\\ $
GetPartDefinition\\% 6
(\\6 7
string\\7 =
name\\> B
)\\B C
{]] 	
var^^ 
document^^ 
=^^ &
GetContentDefinitionRecord^^ 5
(^^5 6
)^^6 7
;^^7 8#
CheckDocumentIdentifier__ #
(__# $
document__$ ,
)__, -
;__- .
returnaa "
_cachedPartDefinitionsaa )
.aa) *
GetOrAddaa* 2
(aa2 3
nameaa3 7
,aa7 8
naa9 :
=>aa; =
{bb 
returncc 
Buildcc 
(cc 
documentcc %
.dd (
ContentPartDefinitionRecordsdd 1
.ee 
FirstOrDefaultee #
(ee# $
xee$ %
=>ee& (
xee) *
.ee* +
Nameee+ /
==ee0 2
nameee3 7
)ee7 8
)ee8 9
;ee9 :
}ff 
)ff 
;ff 
}gg 	
publicii 
IEnumerableii 
<ii !
ContentTypeDefinitionii 0
>ii0 1
LoadTypeDefinitionsii2 E
(iiE F
)iiF G
{jj 	
returnkk '
LoadContentDefinitionRecordkk .
(kk. /
)kk/ 0
.kk0 1(
ContentTypeDefinitionRecordskk1 M
.kkM N
SelectkkN T
(kkT U
xkkU V
=>kkW Y
LoadTypeDefinitionkkZ l
(kkl m
xkkm n
.kkn o
Namekko s
)kks t
)kkt u
.kku v
ToListkkv |
(kk| }
)kk} ~
;kk~ 
}ll 	
publicnn 
IEnumerablenn 
<nn !
ContentTypeDefinitionnn 0
>nn0 1
ListTypeDefinitionsnn2 E
(nnE F
)nnF G
{oo 	
returnpp &
GetContentDefinitionRecordpp -
(pp- .
)pp. /
.pp/ 0(
ContentTypeDefinitionRecordspp0 L
.ppL M
SelectppM S
(ppS T
xppT U
=>ppV X
GetTypeDefinitionppY j
(ppj k
xppk l
.ppl m
Nameppm q
)ppq r
)ppr s
.pps t
ToListppt z
(ppz {
)pp{ |
;pp| }
}qq 	
publicss 
IEnumerabless 
<ss !
ContentPartDefinitionss 0
>ss0 1
LoadPartDefinitionsss2 E
(ssE F
)ssF G
{tt 	
returnuu '
LoadContentDefinitionRecorduu .
(uu. /
)uu/ 0
.uu0 1(
ContentPartDefinitionRecordsuu1 M
.uuM N
SelectuuN T
(uuT U
xuuU V
=>uuW Y
LoadPartDefinitionuuZ l
(uul m
xuum n
.uun o
Nameuuo s
)uus t
)uut u
.uuu v
ToListuuv |
(uu| }
)uu} ~
;uu~ 
}vv 	
publicxx 
IEnumerablexx 
<xx !
ContentPartDefinitionxx 0
>xx0 1
ListPartDefinitionsxx2 E
(xxE F
)xxF G
{yy 	
returnzz &
GetContentDefinitionRecordzz -
(zz- .
)zz. /
.zz/ 0(
ContentPartDefinitionRecordszz0 L
.zzL M
SelectzzM S
(zzS T
xzzT U
=>zzV X
GetPartDefinitionzzY j
(zzj k
xzzk l
.zzl m
Namezzm q
)zzq r
)zzr s
.zzs t
ToListzzt z
(zzz {
)zz{ |
;zz| }
}{{ 	
public}} 
void}} 
StoreTypeDefinition}} '
(}}' (!
ContentTypeDefinition}}( =!
contentTypeDefinition}}> S
)}}S T
{~~ 	
Apply 
( !
contentTypeDefinition '
,' (
Acquire) 0
(0 1!
contentTypeDefinition1 F
)F G
)G H
;H I+
UpdateContentDefinitionRecord
ÄÄ )
(
ÄÄ) *
)
ÄÄ* +
;
ÄÄ+ ,
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ !
StorePartDefinition
ÉÉ '
(
ÉÉ' (#
ContentPartDefinition
ÉÉ( =#
contentPartDefinition
ÉÉ> S
)
ÉÉS T
{
ÑÑ 	
Apply
ÖÖ 
(
ÖÖ #
contentPartDefinition
ÖÖ '
,
ÖÖ' (
Acquire
ÖÖ) 0
(
ÖÖ0 1#
contentPartDefinition
ÖÖ1 F
)
ÖÖF G
)
ÖÖG H
;
ÖÖH I+
UpdateContentDefinitionRecord
ÜÜ )
(
ÜÜ) *
)
ÜÜ* +
;
ÜÜ+ ,
}
áá 	
public
ââ 
void
ââ "
DeleteTypeDefinition
ââ (
(
ââ( )
string
ââ) /
name
ââ0 4
)
ââ4 5
{
ää 	
var
ãã 
record
ãã 
=
ãã )
LoadContentDefinitionRecord
ãã 4
(
ãã4 5
)
ãã5 6
.
ãã6 7*
ContentTypeDefinitionRecords
ãã7 S
.
ããS T
FirstOrDefault
ããT b
(
ããb c
x
ããc d
=>
ããe g
x
ããh i
.
ããi j
Name
ããj n
==
ãão q
name
ããr v
)
ããv w
;
ããw x
if
éé 
(
éé 
record
éé 
!=
éé 
null
éé 
)
éé 
{
èè )
LoadContentDefinitionRecord
êê +
(
êê+ ,
)
êê, -
.
êê- .*
ContentTypeDefinitionRecords
êê. J
.
êêJ K
Remove
êêK Q
(
êêQ R
record
êêR X
)
êêX Y
;
êêY Z+
UpdateContentDefinitionRecord
ëë -
(
ëë- .
)
ëë. /
;
ëë/ 0
}
íí 
}
ìì 	
public
ïï 
void
ïï "
DeletePartDefinition
ïï (
(
ïï( )
string
ïï) /
name
ïï0 4
)
ïï4 5
{
ññ 	
var
òò 
typesWithPart
òò 
=
òò !
LoadTypeDefinitions
òò  3
(
òò3 4
)
òò4 5
.
òò5 6
Where
òò6 ;
(
òò; <
typeDefinition
òò< J
=>
òòK M
typeDefinition
òòN \
.
òò\ ]
Parts
òò] b
.
òòb c
Any
òòc f
(
òòf g
part
òòg k
=>
òòl n
part
òòo s
.
òòs t
PartDefinitionòòt Ç
.òòÇ É
NameòòÉ á
==òòà ä
nameòòã è
)òòè ê
)òòê ë
;òòë í
foreach
öö 
(
öö 
var
öö 
typeDefinition
öö '
in
öö( *
typesWithPart
öö+ 8
)
öö8 9
{
õõ 
this
úú 
.
úú !
AlterTypeDefinition
úú (
(
úú( )
typeDefinition
úú) 7
.
úú7 8
Name
úú8 <
,
úú< =
builder
úú> E
=>
úúF H
builder
úúI P
.
úúP Q

RemovePart
úúQ [
(
úú[ \
name
úú\ `
)
úú` a
)
úúa b
;
úúb c
}
ùù 
var
†† 
record
†† 
=
†† )
LoadContentDefinitionRecord
†† 4
(
††4 5
)
††5 6
.
††6 7*
ContentPartDefinitionRecords
††7 S
.
††S T
FirstOrDefault
††T b
(
††b c
x
††c d
=>
††e g
x
††h i
.
††i j
Name
††j n
==
††o q
name
††r v
)
††v w
;
††w x
if
¢¢ 
(
¢¢ 
record
¢¢ 
!=
¢¢ 
null
¢¢ 
)
¢¢ 
{
££ )
LoadContentDefinitionRecord
§§ +
(
§§+ ,
)
§§, -
.
§§- .*
ContentPartDefinitionRecords
§§. J
.
§§J K
Remove
§§K Q
(
§§Q R
record
§§R X
)
§§X Y
;
§§Y Z+
UpdateContentDefinitionRecord
•• -
(
••- .
)
••. /
;
••/ 0
}
¶¶ 
}
ßß 	
private
©© )
ContentTypeDefinitionRecord
©© +
Acquire
©©, 3
(
©©3 4#
ContentTypeDefinition
©©4 I#
contentTypeDefinition
©©J _
)
©©_ `
{
™™ 	
var
´´ 
result
´´ 
=
´´ )
LoadContentDefinitionRecord
´´ 4
(
´´4 5
)
´´5 6
.
´´6 7*
ContentTypeDefinitionRecords
´´7 S
.
´´S T
FirstOrDefault
´´T b
(
´´b c
x
´´c d
=>
´´e g
x
´´h i
.
´´i j
Name
´´j n
==
´´o q$
contentTypeDefinition´´r á
.´´á à
Name´´à å
)´´å ç
;´´ç é
if
¨¨ 
(
¨¨ 
result
¨¨ 
==
¨¨ 
null
¨¨ 
)
¨¨ 
{
≠≠ 
result
ÆÆ 
=
ÆÆ 
new
ÆÆ )
ContentTypeDefinitionRecord
ÆÆ 8
{
ÆÆ9 :
Name
ÆÆ; ?
=
ÆÆ@ A#
contentTypeDefinition
ÆÆB W
.
ÆÆW X
Name
ÆÆX \
,
ÆÆ\ ]
DisplayName
ÆÆ^ i
=
ÆÆj k$
contentTypeDefinitionÆÆl Å
.ÆÆÅ Ç
DisplayNameÆÆÇ ç
}ÆÆé è
;ÆÆè ê)
LoadContentDefinitionRecord
ØØ +
(
ØØ+ ,
)
ØØ, -
.
ØØ- .*
ContentTypeDefinitionRecords
ØØ. J
.
ØØJ K
Add
ØØK N
(
ØØN O
result
ØØO U
)
ØØU V
;
ØØV W
}
∞∞ 
return
±± 
result
±± 
;
±± 
}
≤≤ 	
private
¥¥ )
ContentPartDefinitionRecord
¥¥ +
Acquire
¥¥, 3
(
¥¥3 4#
ContentPartDefinition
¥¥4 I#
contentPartDefinition
¥¥J _
)
¥¥_ `
{
µµ 	
var
∂∂ 
result
∂∂ 
=
∂∂ )
LoadContentDefinitionRecord
∂∂ 4
(
∂∂4 5
)
∂∂5 6
.
∂∂6 7*
ContentPartDefinitionRecords
∂∂7 S
.
∂∂S T
FirstOrDefault
∂∂T b
(
∂∂b c
x
∂∂c d
=>
∂∂e g
x
∂∂h i
.
∂∂i j
Name
∂∂j n
==
∂∂o q$
contentPartDefinition∂∂r á
.∂∂á à
Name∂∂à å
)∂∂å ç
;∂∂ç é
if
∑∑ 
(
∑∑ 
result
∑∑ 
==
∑∑ 
null
∑∑ 
)
∑∑ 
{
∏∏ 
result
ππ 
=
ππ 
new
ππ )
ContentPartDefinitionRecord
ππ 8
{
ππ9 :
Name
ππ; ?
=
ππ@ A#
contentPartDefinition
ππB W
.
ππW X
Name
ππX \
,
ππ\ ]
}
ππ^ _
;
ππ_ `)
LoadContentDefinitionRecord
∫∫ +
(
∫∫+ ,
)
∫∫, -
.
∫∫- .*
ContentPartDefinitionRecords
∫∫. J
.
∫∫J K
Add
∫∫K N
(
∫∫N O
result
∫∫O U
)
∫∫U V
;
∫∫V W
}
ªª 
return
ºº 
result
ºº 
;
ºº 
}
ΩΩ 	
private
øø 
void
øø 
Apply
øø 
(
øø #
ContentTypeDefinition
øø 0
model
øø1 6
,
øø6 7)
ContentTypeDefinitionRecord
øø8 S
record
øøT Z
)
øøZ [
{
¿¿ 	
record
¡¡ 
.
¡¡ 
DisplayName
¡¡ 
=
¡¡  
model
¡¡! &
.
¡¡& '
DisplayName
¡¡' 2
;
¡¡2 3
record
¬¬ 
.
¬¬ 
Settings
¬¬ 
=
¬¬ 
model
¬¬ #
.
¬¬# $
Settings
¬¬$ ,
;
¬¬, -
var
ƒƒ 
toRemove
ƒƒ 
=
ƒƒ 
record
ƒƒ !
.
ƒƒ! ".
 ContentTypePartDefinitionRecords
ƒƒ" B
.
≈≈ 
Where
≈≈ 
(
≈≈ &
typePartDefinitionRecord
≈≈ /
=>
≈≈0 2
!
≈≈3 4
model
≈≈4 9
.
≈≈9 :
Parts
≈≈: ?
.
≈≈? @
Any
≈≈@ C
(
≈≈C D
part
≈≈D H
=>
≈≈I K&
typePartDefinitionRecord
≈≈L d
.
≈≈d e
Name
≈≈e i
==
≈≈j l
part
≈≈m q
.
≈≈q r
Name
≈≈r v
)
≈≈v w
)
≈≈w x
.
∆∆ 
ToList
∆∆ 
(
∆∆ 
)
∆∆ 
;
∆∆ 
foreach
»» 
(
»» 
var
»» 
remove
»» 
in
»»  "
toRemove
»»# +
)
»»+ ,
{
…… 
record
   
.
   .
 ContentTypePartDefinitionRecords
   7
.
  7 8
Remove
  8 >
(
  > ?
remove
  ? E
)
  E F
;
  F G
}
ÀÀ 
foreach
ÕÕ 
(
ÕÕ 
var
ÕÕ 
part
ÕÕ 
in
ÕÕ  
model
ÕÕ! &
.
ÕÕ& '
Parts
ÕÕ' ,
)
ÕÕ, -
{
ŒŒ 
var
œœ 
typePartRecord
œœ "
=
œœ# $
record
œœ% +
.
œœ+ ,.
 ContentTypePartDefinitionRecords
œœ, L
.
œœL M
FirstOrDefault
œœM [
(
œœ[ \
r
œœ\ ]
=>
œœ^ `
r
œœa b
.
œœb c
Name
œœc g
==
œœh j
part
œœk o
.
œœo p
Name
œœp t
)
œœt u
;
œœu v
if
–– 
(
–– 
typePartRecord
–– "
==
––# %
null
––& *
)
––* +
{
—— 
typePartRecord
““ "
=
““# $
new
““% (-
ContentTypePartDefinitionRecord
““) H
{
”” 
PartName
‘‘  
=
‘‘! "
part
‘‘# '
.
‘‘' (
PartDefinition
‘‘( 6
.
‘‘6 7
Name
‘‘7 ;
,
‘‘; <
Name
’’ 
=
’’ 
part
’’ #
.
’’# $
Name
’’$ (
,
’’( )
Settings
÷÷  
=
÷÷! "
part
÷÷# '
.
÷÷' (
Settings
÷÷( 0
}
◊◊ 
;
◊◊ 
record
ŸŸ 
.
ŸŸ .
 ContentTypePartDefinitionRecords
ŸŸ ;
.
ŸŸ; <
Add
ŸŸ< ?
(
ŸŸ? @
typePartRecord
ŸŸ@ N
)
ŸŸN O
;
ŸŸO P
}
⁄⁄ 
Apply
€€ 
(
€€ 
part
€€ 
,
€€ 
typePartRecord
€€ *
)
€€* +
;
€€+ ,
}
‹‹ 
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ 
Apply
ﬂﬂ 
(
ﬂﬂ '
ContentTypePartDefinition
ﬂﬂ 4
model
ﬂﬂ5 :
,
ﬂﬂ: ;-
ContentTypePartDefinitionRecord
ﬂﬂ< [
record
ﬂﬂ\ b
)
ﬂﬂb c
{
‡‡ 	
record
·· 
.
·· 
Settings
·· 
=
·· 
model
·· #
.
··# $
Settings
··$ ,
;
··, -
}
‚‚ 	
private
‰‰ 
void
‰‰ 
Apply
‰‰ 
(
‰‰ #
ContentPartDefinition
‰‰ 0
model
‰‰1 6
,
‰‰6 7)
ContentPartDefinitionRecord
‰‰8 S
record
‰‰T Z
)
‰‰Z [
{
ÂÂ 	
record
ÊÊ 
.
ÊÊ 
Settings
ÊÊ 
=
ÊÊ 
model
ÊÊ #
.
ÊÊ# $
Settings
ÊÊ$ ,
;
ÊÊ, -
var
ËË 
toRemove
ËË 
=
ËË 
record
ËË !
.
ËË! "/
!ContentPartFieldDefinitionRecords
ËË" C
.
ÈÈ 
Where
ÈÈ 
(
ÈÈ '
partFieldDefinitionRecord
ÈÈ 0
=>
ÈÈ1 3
!
ÈÈ4 5
model
ÈÈ5 :
.
ÈÈ: ;
Fields
ÈÈ; A
.
ÈÈA B
Any
ÈÈB E
(
ÈÈE F
	partField
ÈÈF O
=>
ÈÈP R'
partFieldDefinitionRecord
ÈÈS l
.
ÈÈl m
Name
ÈÈm q
==
ÈÈr t
	partField
ÈÈu ~
.
ÈÈ~ 
NameÈÈ É
)ÈÈÉ Ñ
)ÈÈÑ Ö
.
ÍÍ 
ToList
ÍÍ 
(
ÍÍ 
)
ÍÍ 
;
ÍÍ 
foreach
ÏÏ 
(
ÏÏ 
var
ÏÏ 
remove
ÏÏ 
in
ÏÏ  "
toRemove
ÏÏ# +
)
ÏÏ+ ,
{
ÌÌ 
record
ÓÓ 
.
ÓÓ /
!ContentPartFieldDefinitionRecords
ÓÓ 8
.
ÓÓ8 9
Remove
ÓÓ9 ?
(
ÓÓ? @
remove
ÓÓ@ F
)
ÓÓF G
;
ÓÓG H
}
ÔÔ 
foreach
ÒÒ 
(
ÒÒ 
var
ÒÒ 
field
ÒÒ 
in
ÒÒ !
model
ÒÒ" '
.
ÒÒ' (
Fields
ÒÒ( .
)
ÒÒ. /
{
ÚÚ 
var
ÛÛ 
	fieldName
ÛÛ 
=
ÛÛ 
field
ÛÛ  %
.
ÛÛ% &
Name
ÛÛ& *
;
ÛÛ* +
var
ÙÙ 
partFieldRecord
ÙÙ #
=
ÙÙ$ %
record
ÙÙ& ,
.
ÙÙ, -/
!ContentPartFieldDefinitionRecords
ÙÙ- N
.
ÙÙN O
FirstOrDefault
ÙÙO ]
(
ÙÙ] ^
r
ÙÙ^ _
=>
ÙÙ` b
r
ÙÙc d
.
ÙÙd e
Name
ÙÙe i
==
ÙÙj l
	fieldName
ÙÙm v
)
ÙÙv w
;
ÙÙw x
if
ıı 
(
ıı 
partFieldRecord
ıı #
==
ıı$ &
null
ıı' +
)
ıı+ ,
{
ˆˆ 
partFieldRecord
˜˜ #
=
˜˜$ %
new
˜˜& ).
 ContentPartFieldDefinitionRecord
˜˜* J
{
¯¯ 
	FieldName
˘˘ !
=
˘˘" #
field
˘˘$ )
.
˘˘) *
FieldDefinition
˘˘* 9
.
˘˘9 :
Name
˘˘: >
,
˘˘> ?
Name
˙˙ 
=
˙˙ 
field
˙˙ $
.
˙˙$ %
Name
˙˙% )
}
˚˚ 
;
˚˚ 
record
¸¸ 
.
¸¸ /
!ContentPartFieldDefinitionRecords
¸¸ <
.
¸¸< =
Add
¸¸= @
(
¸¸@ A
partFieldRecord
¸¸A P
)
¸¸P Q
;
¸¸Q R
}
˝˝ 
Apply
˛˛ 
(
˛˛ 
field
˛˛ 
,
˛˛ 
partFieldRecord
˛˛ ,
)
˛˛, -
;
˛˛- .
}
ˇˇ 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ 
Apply
ÇÇ 
(
ÇÇ (
ContentPartFieldDefinition
ÇÇ 5
model
ÇÇ6 ;
,
ÇÇ; <.
 ContentPartFieldDefinitionRecord
ÇÇ= ]
record
ÇÇ^ d
)
ÇÇd e
{
ÉÉ 	
record
ÑÑ 
.
ÑÑ 
Settings
ÑÑ 
=
ÑÑ 
model
ÑÑ #
.
ÑÑ# $
Settings
ÑÑ$ ,
;
ÑÑ, -
}
ÖÖ 	
private
áá #
ContentTypeDefinition
áá %
Build
áá& +
(
áá+ ,)
ContentTypeDefinitionRecord
áá, G
source
ááH N
,
ááN O
IList
ááP U
<
ááU V)
ContentPartDefinitionRecord
ááV q
>
ááq r$
partDefinitionRecordsáás à
)ááà â
{
àà 	
if
ââ 
(
ââ 
source
ââ 
==
ââ 
null
ââ 
)
ââ 
{
ää 
return
ãã 
null
ãã 
;
ãã 
}
åå 
var
éé #
contentTypeDefinition
éé %
=
éé& '
new
éé( +#
ContentTypeDefinition
éé, A
(
ééA B
source
èè 
.
èè 
Name
èè 
,
èè 
source
êê 
.
êê 
DisplayName
êê "
,
êê" #
source
ëë 
.
ëë .
 ContentTypePartDefinitionRecords
ëë 7
.
ëë7 8
Select
ëë8 >
(
ëë> ?
tp
ëë? A
=>
ëëB D
Build
ëëE J
(
ëëJ K
tp
ëëK M
,
ëëM N#
partDefinitionRecords
ëëO d
.
ëëd e
FirstOrDefault
ëëe s
(
ëës t
p
ëët u
=>
ëëv x
p
ëëy z
.
ëëz {
Name
ëë{ 
==ëëÄ Ç
tpëëÉ Ö
.ëëÖ Ü
PartNameëëÜ é
)ëëé è
)ëëè ê
)ëëê ë
,ëëë í
source
íí 
.
íí 
Settings
íí 
)
íí  
;
íí  !
return
îî #
contentTypeDefinition
îî (
;
îî( )
}
ïï 	
private
óó '
ContentTypePartDefinition
óó )
Build
óó* /
(
óó/ 0-
ContentTypePartDefinitionRecord
óó0 O
source
óóP V
,
óóV W)
ContentPartDefinitionRecord
óóX s#
partDefinitionRecordóót à
)óóà â
{
òò 	
return
ôô 
source
ôô 
==
ôô 
null
ôô !
?
ôô" #
null
ôô$ (
:
ôô) *
new
ôô+ .'
ContentTypePartDefinition
ôô/ H
(
ôôH I
source
öö 
.
öö 
Name
öö 
,
öö 
Build
õõ 
(
õõ "
partDefinitionRecord
õõ *
)
õõ* +
??
õõ, .
new
õõ/ 2#
ContentPartDefinition
õõ3 H
(
õõH I
source
õõI O
.
õõO P
PartName
õõP X
,
õõX Y

Enumerable
õõZ d
.
õõd e
Empty
õõe j
<
õõj k)
ContentPartFieldDefinitionõõk Ö
>õõÖ Ü
(õõÜ á
)õõá à
,õõà â
newõõä ç
JObjectõõé ï
(õõï ñ
)õõñ ó
)õõó ò
,õõò ô
source
úú 
.
úú 
Settings
úú 
)
úú  
;
úú  !
}
ùù 	
private
üü #
ContentPartDefinition
üü %
Build
üü& +
(
üü+ ,)
ContentPartDefinitionRecord
üü, G
source
üüH N
)
üüN O
{
†† 	
return
°° 
source
°° 
==
°° 
null
°° !
?
°°" #
null
°°$ (
:
°°) *
new
°°+ .#
ContentPartDefinition
°°/ D
(
°°D E
source
¢¢ 
.
¢¢ 
Name
¢¢ 
,
¢¢ 
source
££ 
.
££ /
!ContentPartFieldDefinitionRecords
££ 8
.
££8 9
Select
££9 ?
(
££? @
Build
££@ E
)
££E F
,
££F G
source
§§ 
.
§§ 
Settings
§§ 
)
§§  
;
§§  !
}
•• 	
private
ßß (
ContentPartFieldDefinition
ßß *
Build
ßß+ 0
(
ßß0 1.
 ContentPartFieldDefinitionRecord
ßß1 Q
source
ßßR X
)
ßßX Y
{
®® 	
return
©© 
source
©© 
==
©© 
null
©© !
?
©©" #
null
©©$ (
:
©©) *
new
©©+ .(
ContentPartFieldDefinition
©©/ I
(
©©I J
Build
™™ 
(
™™ 
new
™™ *
ContentFieldDefinitionRecord
™™ 6
{
™™7 8
Name
™™9 =
=
™™> ?
source
™™@ F
.
™™F G
	FieldName
™™G P
}
™™Q R
)
™™R S
,
™™S T
source
´´ 
.
´´ 
Name
´´ 
,
´´ 
source
¨¨ 
.
¨¨ 
Settings
¨¨ 
)
≠≠ 
;
≠≠ 
}
ÆÆ 	
private
∞∞ $
ContentFieldDefinition
∞∞ &
Build
∞∞' ,
(
∞∞, -*
ContentFieldDefinitionRecord
∞∞- I
source
∞∞J P
)
∞∞P Q
{
±± 	
return
≤≤ 
source
≤≤ 
==
≤≤ 
null
≤≤ !
?
≤≤" #
null
≤≤$ (
:
≤≤) *
new
≤≤+ .$
ContentFieldDefinition
≤≤/ E
(
≤≤E F
source
≤≤F L
.
≤≤L M
Name
≤≤M Q
)
≤≤Q R
;
≤≤R S
}
≥≥ 	
private
∏∏ %
ContentDefinitionRecord
∏∏ ')
LoadContentDefinitionRecord
∏∏( C
(
∏∏C D
)
∏∏D E
=>
∏∏F H%
_contentDefinitionStore
∏∏I `
.
∏∏` a(
LoadContentDefinitionAsync
∏∏a {
(
∏∏{ |
)
∏∏| }
.
∏∏} ~

GetAwaiter∏∏~ à
(∏∏à â
)∏∏â ä
.∏∏ä ã
	GetResult∏∏ã î
(∏∏î ï
)∏∏ï ñ
;∏∏ñ ó
private
ΩΩ %
ContentDefinitionRecord
ΩΩ '(
GetContentDefinitionRecord
ΩΩ( B
(
ΩΩB C
)
ΩΩC D
=>
ΩΩE G%
_contentDefinitionStore
ΩΩH _
.
ΩΩ_ `'
GetContentDefinitionAsync
ΩΩ` y
(
ΩΩy z
)
ΩΩz {
.
ΩΩ{ |

GetAwaiterΩΩ| Ü
(ΩΩÜ á
)ΩΩá à
.ΩΩà â
	GetResultΩΩâ í
(ΩΩí ì
)ΩΩì î
;ΩΩî ï
private
øø 
void
øø +
UpdateContentDefinitionRecord
øø 2
(
øø2 3
)
øø3 4
{
¿¿ 	
var
¡¡ %
contentDefinitionRecord
¡¡ '
=
¡¡( ))
LoadContentDefinitionRecord
¡¡* E
(
¡¡E F
)
¡¡F G
;
¡¡G H%
_contentDefinitionStore
√√ #
.
√√# $(
SaveContentDefinitionAsync
√√$ >
(
√√> ?%
contentDefinitionRecord
√√? V
)
√√V W
.
√√W X

GetAwaiter
√√X b
(
√√b c
)
√√c d
.
√√d e
	GetResult
√√e n
(
√√n o
)
√√o p
;
√√p q$
_scopedTypeDefinitions
∆∆ "
.
∆∆" #
Clear
∆∆# (
(
∆∆( )
)
∆∆) *
;
∆∆* +$
_scopedPartDefinitions
«« "
.
««" #
Clear
««# (
(
««( )
)
««) *
;
««* +
}
»» 	
private
ÕÕ 
void
ÕÕ %
CheckDocumentIdentifier
ÕÕ ,
(
ÕÕ, -%
ContentDefinitionRecord
ÕÕ- D
document
ÕÕE M
)
ÕÕM N
{
ŒŒ 	
if
œœ 
(
œœ 
!
œœ 
_memoryCache
œœ 
.
œœ 
TryGetValue
œœ )
<
œœ) *
Document
œœ* 2
>
œœ2 3
(
œœ3 4
CacheKey
œœ4 <
,
œœ< =
out
œœ> A
var
œœB E

cacheEntry
œœF P
)
œœP Q
||
œœR T

cacheEntry
œœU _
.
œœ_ `

Identifier
œœ` j
!=
œœk m
document
œœn v
.
œœv w

Identifierœœw Å
)œœÅ Ç
{
–– 

cacheEntry
—— 
=
—— 
new
——  
Document
——! )
(
——) *
)
——* +
{
““ 

Identifier
”” 
=
””  
document
””! )
.
””) *

Identifier
””* 4
,
””4 5
}
‘‘ 
;
‘‘ $
_cachedTypeDefinitions
÷÷ &
.
÷÷& '
Clear
÷÷' ,
(
÷÷, -
)
÷÷- .
;
÷÷. /$
_cachedPartDefinitions
◊◊ &
.
◊◊& '
Clear
◊◊' ,
(
◊◊, -
)
◊◊- .
;
◊◊. /
_memoryCache
ŸŸ 
.
ŸŸ 
Set
ŸŸ  
(
ŸŸ  !
CacheKey
ŸŸ! )
,
ŸŸ) *

cacheEntry
ŸŸ+ 5
)
ŸŸ5 6
;
ŸŸ6 7
}
⁄⁄ 
}
€€ 	
}
‹‹ 
}›› ¿%
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ContentFieldFactory.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
ContentFieldFactory $
:% &!
ITypeActivatorFactory' <
<< =
ContentField= I
>I J
{ 
private 
ITypeActivator 
< 
ContentField +
>+ ,!
ContentFieldActivator- B
=C D
newE H 
GenericTypeActivatorI ]
<] ^
ContentField^ j
,j k
ContentFieldl x
>x y
(y z
)z {
;{ |
private 
readonly 

Dictionary #
<# $
string$ *
,* +
ITypeActivator, :
<: ;
ContentField; G
>G H
>H I#
_contentFieldActivatorsJ a
;a b
public 
ContentFieldFactory "
(" #
IEnumerable 
< 
ContentField $
>$ %
contentFields& 3
,3 4
IOptions 
< 
ContentOptions #
># $
contentOptions% 3
) 
{ 	#
_contentFieldActivators #
=$ %
new& )

Dictionary* 4
<4 5
string5 ;
,; <
ITypeActivator= K
<K L
ContentFieldL X
>X Y
>Y Z
(Z [
)[ \
;\ ]
foreach 
( 
var 
contentField %
in& (
contentFields) 6
)6 7
{ 
var 
activatorType !
=" #
typeof$ *
(* + 
GenericTypeActivator+ ?
<? @
,@ A
>A B
)B C
.C D
MakeGenericTypeD S
(S T
contentFieldT `
.` a
GetTypea h
(h i
)i j
,j k
typeofl r
(r s
ContentFields 
)	 Ä
)
Ä Å
;
Å Ç
var 
	activator 
= 
(  !
ITypeActivator! /
</ 0
ContentField0 <
>< =
)= >
	Activator> G
.G H
CreateInstanceH V
(V W
activatorTypeW d
)d e
;e f#
_contentFieldActivators '
.' (
Add( +
(+ ,
contentField, 8
.8 9
GetType9 @
(@ A
)A B
.B C
NameC G
,G H
	activatorI R
)R S
;S T
} 
foreach"" 
("" 
var"" 
fieldOption"" $
in""% '
contentOptions""( 6
.""6 7
Value""7 <
.""< =
ContentFieldOptions""= P
)""P Q
{## 
var$$ 
activatorType$$ !
=$$" #
typeof$$$ *
($$* + 
GenericTypeActivator$$+ ?
<$$? @
,$$@ A
>$$A B
)$$B C
.$$C D
MakeGenericType$$D S
($$S T
fieldOption$$T _
.$$_ `
Type$$` d
,$$d e
typeof$$f l
($$l m
ContentField$$m y
)$$y z
)$$z {
;$${ |
var%% 
	activator%% 
=%% 
(%%  !
ITypeActivator%%! /
<%%/ 0
ContentField%%0 <
>%%< =
)%%= >
	Activator%%> G
.%%G H
CreateInstance%%H V
(%%V W
activatorType%%W d
)%%d e
;%%e f#
_contentFieldActivators&& '
.&&' (
Add&&( +
(&&+ ,
fieldOption&&, 7
.&&7 8
Type&&8 <
.&&< =
Name&&= A
,&&A B
	activator&&C L
)&&L M
;&&M N
}'' 
}(( 	
public++ 
ITypeActivator++ 
<++ 
ContentField++ *
>++* +
GetTypeActivator++, <
(++< =
string++= C
	fieldName++D M
)++M N
{,, 	
if-- 
(-- #
_contentFieldActivators-- '
.--' (
TryGetValue--( 3
(--3 4
	fieldName--4 =
,--= >
out--? B
var--C F
	activator--G P
)--P Q
)--Q R
{.. 
return// 
	activator//  
;//  !
}00 
return22 !
ContentFieldActivator22 (
;22( )
}33 	
}44 
}55 È
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ContentHandleManager.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class  
ContentHandleManager %
:& '!
IContentHandleManager( =
{		 
private

 
readonly

 
IEnumerable

 $
<

$ %"
IContentHandleProvider

% ;
>

; <#
_contentHandleProviders

= T
;

T U
public  
ContentHandleManager #
(# $
IEnumerable$ /
</ 0"
IContentHandleProvider0 F
>F G"
contentHandleProvidersH ^
)^ _
{ 	#
_contentHandleProviders #
=$ %"
contentHandleProviders& <
.< =
OrderBy= D
(D E
xE F
=>G I
xJ K
.K L
OrderL Q
)Q R
;R S
} 	
public 
async 
Task 
< 
string  
>  !!
GetContentItemIdAsync" 7
(7 8
string8 >
handle? E
)E F
{ 	
foreach 
( 
var 
provider !
in" $#
_contentHandleProviders% <
)< =
{ 
var 
result 
= 
await "
provider# +
.+ ,!
GetContentItemIdAsync, A
(A B
handleB H
)H I
;I J
if 
( 
! 
String 
. 
IsNullOrEmpty )
() *
result* 0
)0 1
)1 2
{ 
return 
result !
;! "
} 
} 
return 
null 
; 
} 	
} 
}   õ%
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ContentPartFactory.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
ContentPartFactory #
:$ %!
ITypeActivatorFactory& ;
<; <
ContentPart< G
>G H
{ 
private 
ITypeActivator 
< 
ContentPart *
>* + 
ContentPartActivator, @
=A B
newC F 
GenericTypeActivatorG [
<[ \
ContentPart\ g
,g h
ContentParti t
>t u
(u v
)v w
;w x
private 
readonly 

Dictionary #
<# $
string$ *
,* +
ITypeActivator, :
<: ;
ContentPart; F
>F G
>G H"
_contentPartActivatorsI _
;_ `
public 
ContentPartFactory !
(! "
IEnumerable 
< 
ContentPart #
># $
contentParts% 1
,1 2
IOptions 
< 
ContentOptions #
># $
contentOptions% 3
) 
{ 	"
_contentPartActivators "
=# $
new% (

Dictionary) 3
<3 4
string4 :
,: ;
ITypeActivator< J
<J K
ContentPartK V
>V W
>W X
(X Y
)Y Z
;Z [
foreach 
( 
var 
contentPart $
in% '
contentParts( 4
)4 5
{ 
var 
activatorType !
=" #
typeof$ *
(* + 
GenericTypeActivator+ ?
<? @
,@ A
>A B
)B C
.C D
MakeGenericTypeD S
(S T
contentPartT _
._ `
GetType` g
(g h
)h i
,i j
typeofk q
(q r
ContentPartr }
)} ~
)~ 
;	 Ä
var 
	activator 
= 
(  !
ITypeActivator! /
</ 0
ContentPart0 ;
>; <
)< =
	Activator= F
.F G
CreateInstanceG U
(U V
activatorTypeV c
)c d
;d e"
_contentPartActivators &
.& '
Add' *
(* +
contentPart+ 6
.6 7
GetType7 >
(> ?
)? @
.@ A
NameA E
,E F
	activatorG P
)P Q
;Q R
} 
foreach"" 
("" 
var"" 

partOption"" #
in""$ &
contentOptions""' 5
.""5 6
Value""6 ;
.""; <
ContentPartOptions""< N
)""N O
{## 
var$$ 
activatorType$$ !
=$$" #
typeof$$$ *
($$* + 
GenericTypeActivator$$+ ?
<$$? @
,$$@ A
>$$A B
)$$B C
.$$C D
MakeGenericType$$D S
($$S T

partOption$$T ^
.$$^ _
Type$$_ c
,$$c d
typeof$$e k
($$k l
ContentPart$$l w
)$$w x
)$$x y
;$$y z
var%% 
	activator%% 
=%% 
(%%  !
ITypeActivator%%! /
<%%/ 0
ContentPart%%0 ;
>%%; <
)%%< =
	Activator%%= F
.%%F G
CreateInstance%%G U
(%%U V
activatorType%%V c
)%%c d
;%%d e"
_contentPartActivators&& &
.&&& '
Add&&' *
(&&* +

partOption&&+ 5
.&&5 6
Type&&6 :
.&&: ;
Name&&; ?
,&&? @
	activator&&A J
)&&J K
;&&K L
}'' 
}(( 	
public++ 
ITypeActivator++ 
<++ 
ContentPart++ )
>++) *
GetTypeActivator+++ ;
(++; <
string++< B
partName++C K
)++K L
{,, 	
if-- 
(-- "
_contentPartActivators-- &
.--& '
TryGetValue--' 2
(--2 3
partName--3 ;
,--; <
out--= @
var--A D
	activator--E N
)--N O
)--O P
{.. 
return// 
	activator//  
;//  !
}00 
return22  
ContentPartActivator22 '
;22' (
}33 	
}44 
}55 £
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\DatabaseContentDefinitionStore.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class *
DatabaseContentDefinitionStore /
:0 1#
IContentDefinitionStore2 I
{ 
private		 
readonly		 
IDocumentManager		 )
<		) *#
ContentDefinitionRecord		* A
>		A B
_documentManager		C S
;		S T
public *
DatabaseContentDefinitionStore -
(- .
IDocumentManager. >
<> ?#
ContentDefinitionRecord? V
>V W
documentManagerX g
)g h
{ 	
_documentManager 
= 
documentManager .
;. /
} 	
public 
Task 
< #
ContentDefinitionRecord +
>+ ,&
LoadContentDefinitionAsync- G
(G H
)H I
=>J L
_documentManagerM ]
.] ^#
GetOrCreateMutableAsync^ u
(u v
)v w
;w x
public 
Task 
< #
ContentDefinitionRecord +
>+ ,%
GetContentDefinitionAsync- F
(F G
)G H
=>I K
_documentManagerL \
.\ ]%
GetOrCreateImmutableAsync] v
(v w
)w x
;x y
public 
Task &
SaveContentDefinitionAsync .
(. /#
ContentDefinitionRecord/ F#
contentDefinitionRecordG ^
)^ _
=>` b
_documentManagerc s
.s t
UpdateAsynct 
(	 Ä%
contentDefinitionRecord
Ä ó
)
ó ò
;
ò ô
} 
} “
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\DefaultContentItemIdGenerator.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class )
DefaultContentItemIdGenerator .
:/ 0#
IContentItemIdGenerator1 H
{ 
private 
readonly 
IIdGenerator %

_generator& 0
;0 1
public		 )
DefaultContentItemIdGenerator		 ,
(		, -
IIdGenerator		- 9
	generator		: C
)		C D
{

 	

_generator 
= 
	generator "
;" #
} 	
public 
string 
GenerateUniqueId &
(& '
ContentItem' 2
contentItem3 >
)> ?
{ 	
return 

_generator 
. 
GenerateUniqueId .
(. /
)/ 0
;0 1
} 	
} 
} ÇŒ
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\DefaultContentManager.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class !
DefaultContentManager &
:' (
IContentManager) 8
{ 
private 
const 
int 
ImportBatchSize )
=* +
$num, /
;/ 0
private 
static 
readonly 
JsonMergeSettings  1#
UpdateJsonMergeSettings2 I
=J K
newL O
JsonMergeSettingsP a
{b c
MergeArrayHandlingd v
=w x
MergeArrayHandling	y ã
.
ã å
Replace
å ì
}
î ï
;
ï ñ
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly "
IContentManagerSession /"
_contentManagerSession0 F
;F G
private 
readonly #
IContentItemIdGenerator 0
_idGenerator1 =
;= >
private 
readonly 
IClock 
_clock  &
;& '
public!! !
DefaultContentManager!! $
(!!$ %%
IContentDefinitionManager"" %$
contentDefinitionManager""& >
,""> ?"
IContentManagerSession## "!
contentManagerSession### 8
,##8 9
IEnumerable$$ 
<$$ 
IContentHandler$$ '
>$$' (
handlers$$) 1
,$$1 2
ISession%% 
session%% 
,%% #
IContentItemIdGenerator&& #
idGenerator&&$ /
,&&/ 0
ILogger'' 
<'' !
DefaultContentManager'' )
>'') *
logger''+ 1
,''1 2
IClock(( 
clock(( 
)(( 
{)) 	%
_contentDefinitionManager** %
=**& '$
contentDefinitionManager**( @
;**@ A
Handlers++ 
=++ 
handlers++ 
;++  
ReversedHandlers,, 
=,, 
handlers,, '
.,,' (
Reverse,,( /
(,,/ 0
),,0 1
.,,1 2
ToArray,,2 9
(,,9 :
),,: ;
;,,; <
_session-- 
=-- 
session-- 
;-- 
_idGenerator.. 
=.. 
idGenerator.. &
;..& '"
_contentManagerSession// "
=//# $!
contentManagerSession//% :
;//: ;
_logger00 
=00 
logger00 
;00 
_clock11 
=11 
clock11 
;11 
}22 	
public44 
IEnumerable44 
<44 
IContentHandler44 *
>44* +
Handlers44, 4
{445 6
get447 :
;44: ;
private44< C
set44D G
;44G H
}44I J
public55 
IEnumerable55 
<55 
IContentHandler55 *
>55* +
ReversedHandlers55, <
{55= >
get55? B
;55B C
private55D K
set55L O
;55O P
}55Q R
public77 
async77 
Task77 
<77 
ContentItem77 %
>77% &
NewAsync77' /
(77/ 0
string770 6
contentType777 B
)77B C
{88 	
var99 !
contentTypeDefinition99 %
=99& '%
_contentDefinitionManager99( A
.99A B
GetTypeDefinition99B S
(99S T
contentType99T _
)99_ `
;99` a
if:: 
(:: !
contentTypeDefinition:: %
==::& (
null::) -
)::- .
{;; !
contentTypeDefinition<< %
=<<& '
new<<( +(
ContentTypeDefinitionBuilder<<, H
(<<H I
)<<I J
.<<J K
Named<<K P
(<<P Q
contentType<<Q \
)<<\ ]
.<<] ^
Build<<^ c
(<<c d
)<<d e
;<<e f
}== 
var@@ 
context@@ 
=@@ 
new@@ $
ActivatingContentContext@@ 6
{AA 
ContentTypeBB 
=BB !
contentTypeDefinitionBB 3
.BB3 4
NameBB4 8
,BB8 9

DefinitionCC 
=CC !
contentTypeDefinitionCC 2
,CC2 3
BuilderDD 
=DD 
newDD 
ContentItemBuilderDD 0
(DD0 1!
contentTypeDefinitionDD1 F
)DDF G
}EE 
;EE 
awaitHH 
HandlersHH 
.HH 
InvokeAsyncHH &
(HH& '
(HH' (
handlerHH( /
,HH/ 0
contextHH1 8
)HH8 9
=>HH: <
handlerHH= D
.HHD E
ActivatingAsyncHHE T
(HHT U
contextHHU \
)HH\ ]
,HH] ^
contextHH_ f
,HHf g
_loggerHHh o
)HHo p
;HHp q
varJJ 
context2JJ 
=JJ 
newJJ #
ActivatedContentContextJJ 6
(JJ6 7
contextJJ7 >
.JJ> ?
BuilderJJ? F
.JJF G
BuildJJG L
(JJL M
)JJM N
)JJN O
;JJO P
context2LL 
.LL 
ContentItemLL  
.LL  !
ContentItemIdLL! .
=LL/ 0
_idGeneratorLL1 =
.LL= >
GenerateUniqueIdLL> N
(LLN O
context2LLO W
.LLW X
ContentItemLLX c
)LLc d
;LLd e
awaitNN 
ReversedHandlersNN "
.NN" #
InvokeAsyncNN# .
(NN. /
(NN/ 0
handlerNN0 7
,NN7 8
context2NN9 A
)NNA B
=>NNC E
handlerNNF M
.NNM N
ActivatedAsyncNNN \
(NN\ ]
context2NN] e
)NNe f
,NNf g
context2NNh p
,NNp q
_loggerNNr y
)NNy z
;NNz {
varPP 
context3PP 
=PP 
newPP &
InitializingContentContextPP 9
(PP9 :
context2PP: B
.PPB C
ContentItemPPC N
)PPN O
;PPO P
awaitRR 
HandlersRR 
.RR 
InvokeAsyncRR &
(RR& '
(RR' (
handlerRR( /
,RR/ 0
context3RR1 9
)RR9 :
=>RR; =
handlerRR> E
.RRE F
InitializingAsyncRRF W
(RRW X
context3RRX `
)RR` a
,RRa b
context3RRc k
,RRk l
_loggerRRm t
)RRt u
;RRu v
awaitSS 
ReversedHandlersSS "
.SS" #
InvokeAsyncSS# .
(SS. /
(SS/ 0
handlerSS0 7
,SS7 8
context3SS9 A
)SSA B
=>SSC E
handlerSSF M
.SSM N
InitializedAsyncSSN ^
(SS^ _
context3SS_ g
)SSg h
,SSh i
context3SSj r
,SSr s
_loggerSSt {
)SS{ |
;SS| }
returnVV 
context3VV 
.VV 
ContentItemVV '
;VV' (
}WW 	
publicYY 
TaskYY 
<YY 
ContentItemYY 
>YY  
GetAsyncYY! )
(YY) *
stringYY* 0
contentItemIdYY1 >
)YY> ?
{ZZ 	
return[[ 
GetAsync[[ 
([[ 
contentItemId[[ )
,[[) *
VersionOptions[[+ 9
.[[9 :
	Published[[: C
)[[C D
;[[D E
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^ 
IEnumerable^^ %
<^^% &
ContentItem^^& 1
>^^1 2
>^^2 3
GetAsync^^4 <
(^^< =
IEnumerable^^= H
<^^H I
string^^I O
>^^O P
contentItemIds^^Q _
,^^_ `
bool^^a e
latest^^f l
=^^m n
false^^o t
)^^t u
{__ 	
if`` 
(`` 
contentItemIds`` 
==`` !
null``" &
)``& '
{aa 
throwbb 
newbb !
ArgumentNullExceptionbb /
(bb/ 0
nameofbb0 6
(bb6 7
contentItemIdsbb7 E
)bbE F
)bbF G
;bbG H
}cc 
Listee 
<ee 
ContentItemee 
>ee 
contentItemsee *
;ee* +
ifgg 
(gg 
latestgg 
)gg 
{hh 
contentItemsii 
=ii 
(ii  
awaitii  %
_sessionii& .
.jj 
Queryjj 
<jj 
ContentItemjj &
,jj& '
ContentItemIndexjj( 8
>jj8 9
(jj9 :
)jj: ;
.kk 
Wherekk 
(kk 
xkk 
=>kk 
xkk  !
.kk! "
ContentItemIdkk" /
.kk/ 0
IsInkk0 4
(kk4 5
contentItemIdskk5 C
)kkC D
&&kkE G
xkkH I
.kkI J
LatestkkJ P
==kkQ S
truekkT X
)kkX Y
.ll 
	ListAsyncll 
(ll 
)ll  
)ll  !
.ll! "
ToListll" (
(ll( )
)ll) *
;ll* +
}mm 
elsenn 
{oo 
contentItemspp 
=pp 
(pp  
awaitpp  %
_sessionpp& .
.qq 
Queryqq 
<qq 
ContentItemqq &
,qq& '
ContentItemIndexqq( 8
>qq8 9
(qq9 :
)qq: ;
.rr 
Whererr 
(rr 
xrr 
=>rr 
xrr  !
.rr! "
ContentItemIdrr" /
.rr/ 0
IsInrr0 4
(rr4 5
contentItemIdsrr5 C
)rrC D
&&rrE G
xrrH I
.rrI J
	PublishedrrJ S
==rrT V
truerrW [
)rr[ \
.ss 
	ListAsyncss 
(ss 
)ss  
)ss  !
.ss! "
ToListss" (
(ss( )
)ss) *
;ss* +
}tt 
forvv 
(vv 
varvv 
ivv 
=vv 
$numvv 
;vv 
ivv 
<vv 
contentItemsvv  ,
.vv, -
Countvv- 2
;vv2 3
ivv4 5
++vv5 7
)vv7 8
{ww 
contentItemsxx 
[xx 
ixx 
]xx 
=xx  !
awaitxx" '
	LoadAsyncxx( 1
(xx1 2
contentItemsxx2 >
[xx> ?
ixx? @
]xx@ A
)xxA B
;xxB C
}yy 
var{{ 
contentItemIdsArray{{ #
={{$ %
contentItemIds{{& 4
.{{4 5
ToImmutableArray{{5 E
({{E F
){{F G
;{{G H
return|| 
contentItems|| 
.||  
OrderBy||  '
(||' (
c||( )
=>||* ,
contentItemIdsArray||- @
.||@ A
IndexOf||A H
(||H I
c||I J
.||J K
ContentItemId||K X
)||X Y
)||Y Z
;||Z [
}}} 	
public 
async 
Task 
< 
ContentItem %
>% &
GetAsync' /
(/ 0
string0 6
contentItemId7 D
,D E
VersionOptionsF T
optionsU \
)\ ]
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
String
ÅÅ 
.
ÅÅ 
IsNullOrEmpty
ÅÅ $
(
ÅÅ$ %
contentItemId
ÅÅ% 2
)
ÅÅ2 3
)
ÅÅ3 4
{
ÇÇ 
return
ÉÉ 
null
ÉÉ 
;
ÉÉ 
}
ÑÑ 
ContentItem
ÜÜ 
contentItem
ÜÜ #
=
ÜÜ$ %
null
ÜÜ& *
;
ÜÜ* +
if
àà 
(
àà 
options
àà 
.
àà 
IsLatest
àà  
)
àà  !
{
ââ 
contentItem
ää 
=
ää 
await
ää #
_session
ää$ ,
.
ãã 
Query
ãã 
<
ãã 
ContentItem
ãã &
,
ãã& '
ContentItemIndex
ãã( 8
>
ãã8 9
(
ãã9 :
)
ãã: ;
.
åå 
Where
åå 
(
åå 
x
åå 
=>
åå 
x
åå  !
.
åå! "
ContentItemId
åå" /
==
åå0 2
contentItemId
åå3 @
&&
ååA C
x
ååD E
.
ååE F
Latest
ååF L
==
ååM O
true
ååP T
)
ååT U
.
çç !
FirstOrDefaultAsync
çç (
(
çç( )
)
çç) *
;
çç* +
}
éé 
else
èè 
if
èè 
(
èè 
options
èè 
.
èè 
IsDraft
èè $
&&
èè% '
!
èè( )
options
èè) 0
.
èè0 1
IsDraftRequired
èè1 @
)
èè@ A
{
êê 
contentItem
ëë 
=
ëë 
await
ëë #
_session
ëë$ ,
.
íí 
Query
íí 
<
íí 
ContentItem
íí &
,
íí& '
ContentItemIndex
íí( 8
>
íí8 9
(
íí9 :
)
íí: ;
.
ìì 
Where
ìì 
(
ìì 
x
ìì 
=>
ìì 
x
îî 
.
îî 
ContentItemId
îî '
==
îî( *
contentItemId
îî+ 8
&&
îî9 ;
x
ïï 
.
ïï 
	Published
ïï #
==
ïï$ &
false
ïï' ,
&&
ïï- /
x
ññ 
.
ññ 
Latest
ññ  
==
ññ! #
true
ññ$ (
)
ññ( )
.
óó !
FirstOrDefaultAsync
óó (
(
óó( )
)
óó) *
;
óó* +
}
òò 
else
ôô 
if
ôô 
(
ôô 
options
ôô 
.
ôô 
IsDraft
ôô $
||
ôô% '
options
ôô( /
.
ôô/ 0
IsDraftRequired
ôô0 ?
)
ôô? @
{
öö 
contentItem
úú 
=
úú 
await
úú #
_session
úú$ ,
.
ùù 
Query
ùù 
<
ùù 
ContentItem
ùù &
,
ùù& '
ContentItemIndex
ùù( 8
>
ùù8 9
(
ùù9 :
)
ùù: ;
.
ûû 
Where
ûû 
(
ûû 
x
ûû 
=>
ûû 
x
üü 
.
üü 
ContentItemId
üü '
==
üü( *
contentItemId
üü+ 8
&&
üü9 ;
x
†† 
.
†† 
Latest
††  
==
††! #
true
††$ (
)
††( )
.
°° !
FirstOrDefaultAsync
°° (
(
°°( )
)
°°) *
;
°°* +
}
¢¢ 
else
££ 
if
££ 
(
££ 
options
££ 
.
££ 
IsPublished
££ (
)
££( )
{
§§ 
if
ßß 
(
ßß $
_contentManagerSession
ßß *
.
ßß* +#
RecallPublishedItemId
ßß+ @
(
ßß@ A
contentItemId
ßßA N
,
ßßN O
out
ßßP S
contentItem
ßßT _
)
ßß_ `
)
ßß` a
{
®® 
return
©© 
contentItem
©© &
;
©©& '
}
™™ 
contentItem
¨¨ 
=
¨¨ 
await
¨¨ #
_session
¨¨$ ,
.
¨¨, -
ExecuteQuery
¨¨- 9
(
¨¨9 :
new
¨¨: =&
PublishedContentItemById
¨¨> V
(
¨¨V W
contentItemId
¨¨W d
)
¨¨d e
)
¨¨e f
.
¨¨f g!
FirstOrDefaultAsync
¨¨g z
(
¨¨z {
)
¨¨{ |
;
¨¨| }
}
≠≠ 
if
ØØ 
(
ØØ 
contentItem
ØØ 
==
ØØ 
null
ØØ #
)
ØØ# $
{
∞∞ 
return
±± 
null
±± 
;
±± 
}
≤≤ 
contentItem
¥¥ 
=
¥¥ 
await
¥¥ 
	LoadAsync
¥¥  )
(
¥¥) *
contentItem
¥¥* 5
)
¥¥5 6
;
¥¥6 7
if
∂∂ 
(
∂∂ 
options
∂∂ 
.
∂∂ 
IsDraftRequired
∂∂ '
)
∂∂' (
{
∑∑ 
if
ππ 
(
ππ 
contentItem
ππ 
.
ππ  
	Published
ππ  )
)
ππ) *
{
∫∫ 
var
ºº #
contentTypeDefinition
ºº -
=
ºº. /'
_contentDefinitionManager
ºº0 I
.
ººI J
GetTypeDefinition
ººJ [
(
ºº[ \
contentItem
ºº\ g
.
ººg h
ContentType
ººh s
)
ººs t
;
ººt u
if
øø 
(
øø 
!
øø 
(
øø #
contentTypeDefinition
øø /
?
øø/ 0
.
øø0 1
GetSettings
øø1 <
<
øø< =!
ContentTypeSettings
øø= P
>
øøP Q
(
øøQ R
)
øøR S
.
øøS T
Versionable
øøT _
??
øø` b
true
øøc g
)
øøg h
)
øøh i
{
¿¿ 
contentItem
¡¡ #
.
¡¡# $
	Published
¡¡$ -
=
¡¡. /
false
¡¡0 5
;
¡¡5 6
}
¬¬ 
else
√√ 
{
ƒƒ 
_session
∆∆  
.
∆∆  !
Save
∆∆! %
(
∆∆% &
contentItem
∆∆& 1
)
∆∆1 2
;
∆∆2 3
contentItem
»» #
=
»»$ %
await
»»& +"
BuildNewVersionAsync
»», @
(
»»@ A
contentItem
»»A L
)
»»L M
;
»»M N
}
…… 
}
   
_session
ÕÕ 
.
ÕÕ 
Save
ÕÕ 
(
ÕÕ 
contentItem
ÕÕ )
)
ÕÕ) *
;
ÕÕ* +
}
ŒŒ 
return
–– 
contentItem
–– 
;
–– 
}
—— 	
public
”” 
async
”” 
Task
”” 
<
”” 
ContentItem
”” %
>
””% &
	LoadAsync
””' 0
(
””0 1
ContentItem
””1 <
contentItem
””= H
)
””H I
{
‘‘ 	
if
’’ 
(
’’ 
!
’’ $
_contentManagerSession
’’ '
.
’’' (
RecallVersionId
’’( 7
(
’’7 8
contentItem
’’8 C
.
’’C D
Id
’’D F
,
’’F G
out
’’H K
var
’’L O
loaded
’’P V
)
’’V W
)
’’W X
{
÷÷ $
_contentManagerSession
ÿÿ &
.
ÿÿ& '
Store
ÿÿ' ,
(
ÿÿ, -
contentItem
ÿÿ- 8
)
ÿÿ8 9
;
ÿÿ9 :
var
€€ 
context
€€ 
=
€€ 
new
€€ ! 
LoadContentContext
€€" 4
(
€€4 5
contentItem
€€5 @
)
€€@ A
;
€€A B
await
ﬁﬁ 
Handlers
ﬁﬁ 
.
ﬁﬁ 
InvokeAsync
ﬁﬁ *
(
ﬁﬁ* +
(
ﬁﬁ+ ,
handler
ﬁﬁ, 3
,
ﬁﬁ3 4
context
ﬁﬁ5 <
)
ﬁﬁ< =
=>
ﬁﬁ> @
handler
ﬁﬁA H
.
ﬁﬁH I
LoadingAsync
ﬁﬁI U
(
ﬁﬁU V
context
ﬁﬁV ]
)
ﬁﬁ] ^
,
ﬁﬁ^ _
context
ﬁﬁ` g
,
ﬁﬁg h
_logger
ﬁﬁi p
)
ﬁﬁp q
;
ﬁﬁq r
await
ﬂﬂ 
ReversedHandlers
ﬂﬂ &
.
ﬂﬂ& '
InvokeAsync
ﬂﬂ' 2
(
ﬂﬂ2 3
(
ﬂﬂ3 4
handler
ﬂﬂ4 ;
,
ﬂﬂ; <
context
ﬂﬂ= D
)
ﬂﬂD E
=>
ﬂﬂF H
handler
ﬂﬂI P
.
ﬂﬂP Q
LoadedAsync
ﬂﬂQ \
(
ﬂﬂ\ ]
context
ﬂﬂ] d
)
ﬂﬂd e
,
ﬂﬂe f
context
ﬂﬂg n
,
ﬂﬂn o
_logger
ﬂﬂp w
)
ﬂﬂw x
;
ﬂﬂx y
loaded
·· 
=
·· 
context
··  
.
··  !
ContentItem
··! ,
;
··, -
}
‚‚ 
return
‰‰ 
loaded
‰‰ 
;
‰‰ 
}
ÂÂ 	
public
ÁÁ 
async
ÁÁ 
Task
ÁÁ 
<
ÁÁ 
ContentItem
ÁÁ %
>
ÁÁ% &
GetVersionAsync
ÁÁ' 6
(
ÁÁ6 7
string
ÁÁ7 ="
contentItemVersionId
ÁÁ> R
)
ÁÁR S
{
ËË 	
var
ÈÈ 
contentItem
ÈÈ 
=
ÈÈ 
await
ÈÈ #
_session
ÈÈ$ ,
.
ÍÍ 
Query
ÍÍ 
<
ÍÍ 
ContentItem
ÍÍ "
,
ÍÍ" #
ContentItemIndex
ÍÍ$ 4
>
ÍÍ4 5
(
ÍÍ5 6
x
ÍÍ6 7
=>
ÍÍ8 :
x
ÍÍ; <
.
ÍÍ< ="
ContentItemVersionId
ÍÍ= Q
==
ÍÍR T"
contentItemVersionId
ÍÍU i
)
ÍÍi j
.
ÎÎ !
FirstOrDefaultAsync
ÎÎ $
(
ÎÎ$ %
)
ÎÎ% &
;
ÎÎ& '
if
ÌÌ 
(
ÌÌ 
contentItem
ÌÌ 
==
ÌÌ 
null
ÌÌ #
)
ÌÌ# $
{
ÓÓ 
return
ÔÔ 
null
ÔÔ 
;
ÔÔ 
}
 
return
ÚÚ 
await
ÚÚ 
	LoadAsync
ÚÚ "
(
ÚÚ" #
contentItem
ÚÚ# .
)
ÚÚ. /
;
ÚÚ/ 0
}
ÛÛ 	
public
ıı 
async
ıı 
Task
ıı 
SaveDraftAsync
ıı (
(
ıı( )
ContentItem
ıı) 4
contentItem
ıı5 @
)
ıı@ A
{
ˆˆ 	
if
˜˜ 
(
˜˜ 
!
˜˜ 
contentItem
˜˜ 
.
˜˜ 
Latest
˜˜ #
||
˜˜$ &
contentItem
˜˜' 2
.
˜˜2 3
	Published
˜˜3 <
)
˜˜< =
{
¯¯ 
return
˘˘ 
;
˘˘ 
}
˙˙ 
var
¸¸ 
context
¸¸ 
=
¸¸ 
new
¸¸ %
SaveDraftContentContext
¸¸ 5
(
¸¸5 6
contentItem
¸¸6 A
)
¸¸A B
;
¸¸B C
await
˛˛ 
Handlers
˛˛ 
.
˛˛ 
InvokeAsync
˛˛ &
(
˛˛& '
(
˛˛' (
handler
˛˛( /
,
˛˛/ 0
context
˛˛1 8
)
˛˛8 9
=>
˛˛: <
handler
˛˛= D
.
˛˛D E
DraftSavingAsync
˛˛E U
(
˛˛U V
context
˛˛V ]
)
˛˛] ^
,
˛˛^ _
context
˛˛` g
,
˛˛g h
_logger
˛˛i p
)
˛˛p q
;
˛˛q r
_session
ÄÄ 
.
ÄÄ 
Save
ÄÄ 
(
ÄÄ 
contentItem
ÄÄ %
)
ÄÄ% &
;
ÄÄ& '
await
ÇÇ 
ReversedHandlers
ÇÇ "
.
ÇÇ" #
InvokeAsync
ÇÇ# .
(
ÇÇ. /
(
ÇÇ/ 0
handler
ÇÇ0 7
,
ÇÇ7 8
context
ÇÇ9 @
)
ÇÇ@ A
=>
ÇÇB D
handler
ÇÇE L
.
ÇÇL M
DraftSavedAsync
ÇÇM \
(
ÇÇ\ ]
context
ÇÇ] d
)
ÇÇd e
,
ÇÇe f
context
ÇÇg n
,
ÇÇn o
_logger
ÇÇp w
)
ÇÇw x
;
ÇÇx y
}
ÉÉ 	
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
PublishAsync
ÖÖ &
(
ÖÖ& '
ContentItem
ÖÖ' 2
contentItem
ÖÖ3 >
)
ÖÖ> ?
{
ÜÜ 	
if
áá 
(
áá 
contentItem
áá 
.
áá 
	Published
áá %
)
áá% &
{
àà 
return
ââ 
;
ââ 
}
ää 
var
èè 
previous
èè 
=
èè 
await
èè  
_session
èè! )
.
êê 
Query
êê 
<
êê 
ContentItem
êê "
,
êê" #
ContentItemIndex
êê$ 4
>
êê4 5
(
êê5 6
x
êê6 7
=>
êê8 :
x
ëë 
.
ëë 
ContentItemId
ëë #
==
ëë$ &
contentItem
ëë' 2
.
ëë2 3
ContentItemId
ëë3 @
&&
ëëA C
x
ëëD E
.
ëëE F
	Published
ëëF O
)
ëëO P
.
íí !
FirstOrDefaultAsync
íí $
(
íí$ %
)
íí% &
;
íí& '
var
îî 
context
îî 
=
îî 
new
îî #
PublishContentContext
îî 3
(
îî3 4
contentItem
îî4 ?
,
îî? @
previous
îîA I
)
îîI J
;
îîJ K
await
óó 
Handlers
óó 
.
óó 
InvokeAsync
óó &
(
óó& '
(
óó' (
handler
óó( /
,
óó/ 0
context
óó1 8
)
óó8 9
=>
óó: <
handler
óó= D
.
óóD E
PublishingAsync
óóE T
(
óóT U
context
óóU \
)
óó\ ]
,
óó] ^
context
óó_ f
,
óóf g
_logger
óóh o
)
óóo p
;
óóp q
if
ôô 
(
ôô 
context
ôô 
.
ôô 
Cancel
ôô 
)
ôô 
{
öö 
return
õõ 
;
õõ 
}
úú 
if
ûû 
(
ûû 
previous
ûû 
!=
ûû 
null
ûû  
)
ûû  !
{
üü 
_session
†† 
.
†† 
Save
†† 
(
†† 
previous
†† &
)
††& '
;
††' (
previous
°° 
.
°° 
	Published
°° "
=
°°# $
false
°°% *
;
°°* +
}
¢¢ 
contentItem
§§ 
.
§§ 
	Published
§§ !
=
§§" #
true
§§$ (
;
§§( )
_session
•• 
.
•• 
Save
•• 
(
•• 
contentItem
•• %
)
••% &
;
••& '
await
ßß 
ReversedHandlers
ßß "
.
ßß" #
InvokeAsync
ßß# .
(
ßß. /
(
ßß/ 0
handler
ßß0 7
,
ßß7 8
context
ßß9 @
)
ßß@ A
=>
ßßB D
handler
ßßE L
.
ßßL M
PublishedAsync
ßßM [
(
ßß[ \
context
ßß\ c
)
ßßc d
,
ßßd e
context
ßßf m
,
ßßm n
_logger
ßßo v
)
ßßv w
;
ßßw x
}
®® 	
public
™™ 
async
™™ 
Task
™™ 
UnpublishAsync
™™ (
(
™™( )
ContentItem
™™) 4
contentItem
™™5 @
)
™™@ A
{
´´ 	
if
≠≠ 
(
≠≠ 
!
≠≠ 
contentItem
≠≠ 
.
≠≠ 
Latest
≠≠ #
)
≠≠# $
{
ÆÆ 
throw
ØØ 
new
ØØ '
InvalidOperationException
ØØ 3
(
ØØ3 4
$str
ØØ4 M
)
ØØM N
;
ØØN O
}
∞∞ 
ContentItem
≤≤ 
publishedItem
≤≤ %
;
≤≤% &
if
≥≥ 
(
≥≥ 
contentItem
≥≥ 
.
≥≥ 
	Published
≥≥ %
)
≥≥% &
{
¥¥ 
publishedItem
∂∂ 
=
∂∂ 
contentItem
∂∂  +
;
∂∂+ ,
}
∑∑ 
else
∏∏ 
{
ππ 
publishedItem
ªª 
=
ªª 
await
ªª  %
GetAsync
ªª& .
(
ªª. /
contentItem
ªª/ :
.
ªª: ;
ContentItemId
ªª; H
,
ªªH I
VersionOptions
ªªJ X
.
ªªX Y
	Published
ªªY b
)
ªªb c
;
ªªc d
}
ºº 
if
ææ 
(
ææ 
publishedItem
ææ 
==
ææ  
null
ææ! %
)
ææ% &
{
øø 
return
¡¡ 
;
¡¡ 
}
¬¬ 
var
«« 
context
«« 
=
«« 
new
«« #
PublishContentContext
«« 3
(
««3 4
contentItem
««4 ?
,
««? @
publishedItem
««A N
)
««N O
{
»» 
PublishingItem
…… 
=
……  
null
……! %
}
   
;
   
await
ÃÃ 
Handlers
ÃÃ 
.
ÃÃ 
InvokeAsync
ÃÃ &
(
ÃÃ& '
(
ÃÃ' (
handler
ÃÃ( /
,
ÃÃ/ 0
context
ÃÃ1 8
)
ÃÃ8 9
=>
ÃÃ: <
handler
ÃÃ= D
.
ÃÃD E
UnpublishingAsync
ÃÃE V
(
ÃÃV W
context
ÃÃW ^
)
ÃÃ^ _
,
ÃÃ_ `
context
ÃÃa h
,
ÃÃh i
_logger
ÃÃj q
)
ÃÃq r
;
ÃÃr s
publishedItem
ŒŒ 
.
ŒŒ 
	Published
ŒŒ #
=
ŒŒ$ %
false
ŒŒ& +
;
ŒŒ+ ,
publishedItem
œœ 
.
œœ 
ModifiedUtc
œœ %
=
œœ& '
_clock
œœ( .
.
œœ. /
UtcNow
œœ/ 5
;
œœ5 6
_session
–– 
.
–– 
Save
–– 
(
–– 
publishedItem
–– '
)
––' (
;
––( )
await
““ 
ReversedHandlers
““ "
.
““" #
InvokeAsync
““# .
(
““. /
(
““/ 0
handler
““0 7
,
““7 8
context
““9 @
)
““@ A
=>
““B D
handler
““E L
.
““L M
UnpublishedAsync
““M ]
(
““] ^
context
““^ e
)
““e f
,
““f g
context
““h o
,
““o p
_logger
““q x
)
““x y
;
““y z
}
”” 	
	protected
’’ 
async
’’ 
Task
’’ 
<
’’ 
ContentItem
’’ (
>
’’( )"
BuildNewVersionAsync
’’* >
(
’’> ?
ContentItem
’’? J!
existingContentItem
’’K ^
)
’’^ _
{
÷÷ 	
ContentItem
◊◊ 
latestVersion
◊◊ %
;
◊◊% &
if
ŸŸ 
(
ŸŸ !
existingContentItem
ŸŸ #
.
ŸŸ# $
Latest
ŸŸ$ *
)
ŸŸ* +
{
⁄⁄ 
latestVersion
€€ 
=
€€ !
existingContentItem
€€  3
;
€€3 4
}
‹‹ 
else
›› 
{
ﬁﬁ 
latestVersion
ﬂﬂ 
=
ﬂﬂ 
await
ﬂﬂ  %
_session
ﬂﬂ& .
.
‡‡ 
Query
‡‡ 
<
‡‡ 
ContentItem
‡‡ &
,
‡‡& '
ContentItemIndex
‡‡( 8
>
‡‡8 9
(
‡‡9 :
x
‡‡: ;
=>
‡‡< >
x
·· 
.
·· 
ContentItemId
·· '
==
··( *!
existingContentItem
··+ >
.
··> ?
ContentItemId
··? L
&&
··M O
x
‚‚ 
.
‚‚ 
Latest
‚‚  
)
‚‚  !
.
„„ !
FirstOrDefaultAsync
„„ (
(
„„( )
)
„„) *
;
„„* +
if
ÂÂ 
(
ÂÂ 
latestVersion
ÂÂ !
!=
ÂÂ" $
null
ÂÂ% )
)
ÂÂ) *
{
ÊÊ 
_session
ÁÁ 
.
ÁÁ 
Save
ÁÁ !
(
ÁÁ! "
latestVersion
ÁÁ" /
)
ÁÁ/ 0
;
ÁÁ0 1
}
ËË 
}
ÈÈ 
if
ÎÎ 
(
ÎÎ 
latestVersion
ÎÎ 
!=
ÎÎ  
null
ÎÎ! %
)
ÎÎ% &
{
ÏÏ 
latestVersion
ÌÌ 
.
ÌÌ 
Latest
ÌÌ $
=
ÌÌ% &
false
ÌÌ' ,
;
ÌÌ, -
}
ÓÓ 
var
ÚÚ !
buildingContentItem
ÚÚ #
=
ÚÚ$ %
new
ÚÚ& )
ContentItem
ÚÚ* 5
(
ÚÚ5 6
)
ÚÚ6 7
;
ÚÚ7 8!
buildingContentItem
ÙÙ 
.
ÙÙ  
ContentType
ÙÙ  +
=
ÙÙ, -!
existingContentItem
ÙÙ. A
.
ÙÙA B
ContentType
ÙÙB M
;
ÙÙM N!
buildingContentItem
ıı 
.
ıı  
ContentItemId
ıı  -
=
ıı. /!
existingContentItem
ıı0 C
.
ııC D
ContentItemId
ııD Q
;
ııQ R!
buildingContentItem
ˆˆ 
.
ˆˆ  "
ContentItemVersionId
ˆˆ  4
=
ˆˆ5 6
_idGenerator
ˆˆ7 C
.
ˆˆC D
GenerateUniqueId
ˆˆD T
(
ˆˆT U!
existingContentItem
ˆˆU h
)
ˆˆh i
;
ˆˆi j!
buildingContentItem
˜˜ 
.
˜˜  
DisplayText
˜˜  +
=
˜˜, -!
existingContentItem
˜˜. A
.
˜˜A B
DisplayText
˜˜B M
;
˜˜M N!
buildingContentItem
¯¯ 
.
¯¯  
Latest
¯¯  &
=
¯¯' (
true
¯¯) -
;
¯¯- .!
buildingContentItem
˘˘ 
.
˘˘  
Data
˘˘  $
=
˘˘% &
new
˘˘' *
JObject
˘˘+ 2
(
˘˘2 3!
existingContentItem
˘˘3 F
.
˘˘F G
Data
˘˘G K
)
˘˘K L
;
˘˘L M
var
˚˚ 
context
˚˚ 
=
˚˚ 
new
˚˚ #
VersionContentContext
˚˚ 3
(
˚˚3 4!
existingContentItem
˚˚4 G
,
˚˚G H!
buildingContentItem
˚˚I \
)
˚˚\ ]
;
˚˚] ^
await
˝˝ 
Handlers
˝˝ 
.
˝˝ 
InvokeAsync
˝˝ &
(
˝˝& '
(
˝˝' (
handler
˝˝( /
,
˝˝/ 0
context
˝˝1 8
)
˝˝8 9
=>
˝˝: <
handler
˝˝= D
.
˝˝D E
VersioningAsync
˝˝E T
(
˝˝T U
context
˝˝U \
)
˝˝\ ]
,
˝˝] ^
context
˝˝_ f
,
˝˝f g
_logger
˝˝h o
)
˝˝o p
;
˝˝p q
await
˛˛ 
ReversedHandlers
˛˛ "
.
˛˛" #
InvokeAsync
˛˛# .
(
˛˛. /
(
˛˛/ 0
handler
˛˛0 7
,
˛˛7 8
context
˛˛9 @
)
˛˛@ A
=>
˛˛B D
handler
˛˛E L
.
˛˛L M
VersionedAsync
˛˛M [
(
˛˛[ \
context
˛˛\ c
)
˛˛c d
,
˛˛d e
context
˛˛f m
,
˛˛m n
_logger
˛˛o v
)
˛˛v w
;
˛˛w x
return
ÄÄ 
context
ÄÄ 
.
ÄÄ !
BuildingContentItem
ÄÄ .
;
ÄÄ. /
}
ÅÅ 	
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
CreateAsync
ÉÉ %
(
ÉÉ% &
ContentItem
ÉÉ& 1
contentItem
ÉÉ2 =
,
ÉÉ= >
VersionOptions
ÉÉ? M
options
ÉÉN U
)
ÉÉU V
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
String
ÖÖ 
.
ÖÖ 
IsNullOrEmpty
ÖÖ $
(
ÖÖ$ %
contentItem
ÖÖ% 0
.
ÖÖ0 1"
ContentItemVersionId
ÖÖ1 E
)
ÖÖE F
)
ÖÖF G
{
ÜÜ 
contentItem
áá 
.
áá "
ContentItemVersionId
áá 0
=
áá1 2
_idGenerator
áá3 ?
.
áá? @
GenerateUniqueId
áá@ P
(
ááP Q
contentItem
ááQ \
)
áá\ ]
;
áá] ^
contentItem
àà 
.
àà 
	Published
àà %
=
àà& '
true
àà( ,
;
àà, -
contentItem
ââ 
.
ââ 
Latest
ââ "
=
ââ# $
true
ââ% )
;
ââ) *
}
ää 
if
çç 
(
çç 
options
çç 
.
çç 
IsDraft
çç 
)
çç  
{
éé 
contentItem
èè 
.
èè 
	Published
èè %
=
èè& '
false
èè( -
;
èè- .
}
êê 
var
ìì 
context
ìì 
=
ìì 
new
ìì "
CreateContentContext
ìì 2
(
ìì2 3
contentItem
ìì3 >
)
ìì> ?
;
ìì? @
await
ññ 
Handlers
ññ 
.
ññ 
InvokeAsync
ññ &
(
ññ& '
(
ññ' (
handler
ññ( /
,
ññ/ 0
context
ññ1 8
)
ññ8 9
=>
ññ: <
handler
ññ= D
.
ññD E
CreatingAsync
ññE R
(
ññR S
context
ññS Z
)
ññZ [
,
ññ[ \
context
ññ] d
,
ññd e
_logger
ññf m
)
ññm n
;
ññn o
_session
òò 
.
òò 
Save
òò 
(
òò 
contentItem
òò %
)
òò% &
;
òò& '$
_contentManagerSession
ôô "
.
ôô" #
Store
ôô# (
(
ôô( )
contentItem
ôô) 4
)
ôô4 5
;
ôô5 6
await
õõ 
ReversedHandlers
õõ "
.
õõ" #
InvokeAsync
õõ# .
(
õõ. /
(
õõ/ 0
handler
õõ0 7
,
õõ7 8
context
õõ9 @
)
õõ@ A
=>
õõB D
handler
õõE L
.
õõL M
CreatedAsync
õõM Y
(
õõY Z
context
õõZ a
)
õõa b
,
õõb c
context
õõd k
,
õõk l
_logger
õõm t
)
õõt u
;
õõu v
if
ùù 
(
ùù 
options
ùù 
.
ùù 
IsPublished
ùù #
)
ùù# $
{
ûû 
var
üü 
publishContext
üü "
=
üü# $
new
üü% (#
PublishContentContext
üü) >
(
üü> ?
contentItem
üü? J
,
üüJ K
null
üüL P
)
üüP Q
;
üüQ R
await
¢¢ 
Handlers
¢¢ 
.
¢¢ 
InvokeAsync
¢¢ *
(
¢¢* +
(
¢¢+ ,
handler
¢¢, 3
,
¢¢3 4
context
¢¢5 <
)
¢¢< =
=>
¢¢> @
handler
¢¢A H
.
¢¢H I
PublishingAsync
¢¢I X
(
¢¢X Y
context
¢¢Y `
)
¢¢` a
,
¢¢a b
publishContext
¢¢c q
,
¢¢q r
_logger
¢¢s z
)
¢¢z {
;
¢¢{ |
await
•• 
ReversedHandlers
•• &
.
••& '
InvokeAsync
••' 2
(
••2 3
(
••3 4
handler
••4 ;
,
••; <
context
••= D
)
••D E
=>
••F H
handler
••I P
.
••P Q
PublishedAsync
••Q _
(
••_ `
context
••` g
)
••g h
,
••h i
publishContext
••j x
,
••x y
_logger••z Å
)••Å Ç
;••Ç É
}
¶¶ 
}
ßß 	
public
©© 
Task
©© 
<
©© #
ContentValidateResult
©© )
>
©©) *+
CreateContentItemVersionAsync
©©+ H
(
©©H I
ContentItem
©©I T
contentItem
©©U `
)
©©` a
{
™™ 	
return
´´ +
CreateContentItemVersionAsync
´´ 0
(
´´0 1
contentItem
´´1 <
,
´´< =
null
´´> B
)
´´B C
;
´´C D
}
¨¨ 	
public
ÆÆ 
Task
ÆÆ 
<
ÆÆ #
ContentValidateResult
ÆÆ )
>
ÆÆ) *+
UpdateContentItemVersionAsync
ÆÆ+ H
(
ÆÆH I
ContentItem
ÆÆI T
updatingVersion
ÆÆU d
,
ÆÆd e
ContentItem
ÆÆf q
updatedVersionÆÆr Ä
)ÆÆÄ Å
{
ØØ 	
return
∞∞ +
UpdateContentItemVersionAsync
∞∞ 0
(
∞∞0 1
updatingVersion
∞∞1 @
,
∞∞@ A
updatedVersion
∞∞B P
,
∞∞P Q
null
∞∞R V
)
∞∞V W
;
∞∞W X
}
±± 	
public
≥≥ 
async
≥≥ 
Task
≥≥ 
ImportAsync
≥≥ %
(
≥≥% &
IEnumerable
≥≥& 1
<
≥≥1 2
ContentItem
≥≥2 =
>
≥≥= >
contentItems
≥≥? K
)
≥≥K L
{
¥¥ 	
var
µµ 
skip
µµ 
=
µµ 
$num
µµ 
;
µµ 
var
∑∑ !
batchedContentItems
∑∑ #
=
∑∑$ %
contentItems
∑∑& 2
.
∑∑2 3
Take
∑∑3 7
(
∑∑7 8
ImportBatchSize
∑∑8 G
)
∑∑G H
;
∑∑H I
while
ππ 
(
ππ !
batchedContentItems
ππ &
.
ππ& '
Any
ππ' *
(
ππ* +
)
ππ+ ,
)
ππ, -
{
∫∫ 
var
ºº 

versionIds
ºº 
=
ºº  !
batchedContentItems
ºº! 4
.
ΩΩ 
Where
ΩΩ 
(
ΩΩ 
x
ΩΩ 
=>
ΩΩ  
!
ΩΩ! "
String
ΩΩ" (
.
ΩΩ( )
IsNullOrEmpty
ΩΩ) 6
(
ΩΩ6 7
x
ΩΩ7 8
.
ΩΩ8 9"
ContentItemVersionId
ΩΩ9 M
)
ΩΩM N
)
ΩΩN O
.
ææ 
Select
ææ 
(
ææ 
x
ææ 
=>
ææ !
x
ææ" #
.
ææ# $"
ContentItemVersionId
ææ$ 8
)
ææ8 9
;
ææ9 :
var
¿¿ 
itemIds
¿¿ 
=
¿¿ !
batchedContentItems
¿¿ 1
.
¡¡ 
Where
¡¡ 
(
¡¡ 
x
¡¡ 
=>
¡¡ 
!
¡¡  !
String
¡¡! '
.
¡¡' (
IsNullOrEmpty
¡¡( 5
(
¡¡5 6
x
¡¡6 7
.
¡¡7 8
ContentItemId
¡¡8 E
)
¡¡E F
)
¡¡F G
.
¬¬ 
Select
¬¬ 
(
¬¬ 
x
¬¬ 
=>
¬¬  
x
¬¬! "
.
¬¬" #
ContentItemId
¬¬# 0
)
¬¬0 1
;
¬¬1 2
var
ƒƒ "
existingContentItems
ƒƒ (
=
ƒƒ) *
await
ƒƒ+ 0
_session
ƒƒ1 9
.
≈≈ 
Query
≈≈ 
<
≈≈ 
ContentItem
≈≈ &
,
≈≈& '
ContentItemIndex
≈≈( 8
>
≈≈8 9
(
≈≈9 :
x
≈≈: ;
=>
≈≈< >
x
∆∆ 
.
∆∆ 
ContentItemId
∆∆ '
.
∆∆' (
IsIn
∆∆( ,
(
∆∆, -
itemIds
∆∆- 4
)
∆∆4 5
&&
∆∆6 8
(
«« 
x
«« 
.
«« 
Latest
«« !
||
««" $
x
««% &
.
««& '
	Published
««' 0
||
««1 3
x
««4 5
.
««5 6"
ContentItemVersionId
««6 J
.
««J K
IsIn
««K O
(
««O P

versionIds
««P Z
)
««Z [
)
««[ \
)
««\ ]
.
»» 
	ListAsync
»» 
(
»» 
)
»»  
;
»»  !
var
   
versionsToUpdate
   $
=
  % &"
existingContentItems
  ' ;
.
  ; <
Where
  < A
(
  A B
c
  B C
=>
  D F

versionIds
  G Q
.
  Q R
Any
  R U
(
  U V
v
  V W
=>
  X Z
String
  [ a
.
  a b
Equals
  b h
(
  h i
v
  i j
,
  j k
c
  l m
.
  m n#
ContentItemVersionId  n Ç
,  Ç É 
StringComparison  Ñ î
.  î ï!
OrdinalIgnoreCase  ï ¶
)  ¶ ß
)  ß ®
)  ® ©
;  © ™
var
ÀÀ &
versionsThatMaybeEvicted
ÀÀ ,
=
ÀÀ- ."
existingContentItems
ÀÀ/ C
.
ÀÀC D
Except
ÀÀD J
(
ÀÀJ K
versionsToUpdate
ÀÀK [
)
ÀÀ[ \
;
ÀÀ\ ]
foreach
ÕÕ 
(
ÕÕ 
var
ÕÕ 
version
ÕÕ $
in
ÕÕ% '"
existingContentItems
ÕÕ( <
)
ÕÕ< =
{
ŒŒ 
await
œœ 
	LoadAsync
œœ #
(
œœ# $
version
œœ$ +
)
œœ+ ,
;
œœ, -
}
–– 
foreach
““ 
(
““ 
var
““ 
importingItem
““ *
in
““+ -!
batchedContentItems
““. A
)
““A B
{
”” 
ContentItem
‘‘ 
originalVersion
‘‘  /
=
‘‘0 1
null
‘‘2 6
;
‘‘6 7
if
’’ 
(
’’ 
!
’’ 
String
’’ 
.
’’  
IsNullOrEmpty
’’  -
(
’’- .
importingItem
’’. ;
.
’’; <"
ContentItemVersionId
’’< P
)
’’P Q
)
’’Q R
{
÷÷ 
originalVersion
◊◊ '
=
◊◊( )
versionsToUpdate
◊◊* :
.
◊◊: ;
FirstOrDefault
◊◊; I
(
◊◊I J
x
◊◊J K
=>
◊◊L N
String
◊◊O U
.
◊◊U V
Equals
◊◊V \
(
◊◊\ ]
x
◊◊] ^
.
◊◊^ _"
ContentItemVersionId
◊◊_ s
,
◊◊s t
importingItem◊◊u Ç
.◊◊Ç É$
ContentItemVersionId◊◊É ó
,◊◊ó ò 
StringComparison◊◊ô ©
.◊◊© ™!
OrdinalIgnoreCase◊◊™ ª
)◊◊ª º
)◊◊º Ω
;◊◊Ω æ
}
ÿÿ 
if
⁄⁄ 
(
⁄⁄ 
originalVersion
⁄⁄ '
==
⁄⁄( *
null
⁄⁄+ /
)
⁄⁄/ 0
{
€€ 
var
›› 
context
›› #
=
››$ %
new
››& )"
ImportContentContext
››* >
(
››> ?
importingItem
››? L
)
››L M
;
››M N
await
ﬂﬂ 
Handlers
ﬂﬂ &
.
ﬂﬂ& '
InvokeAsync
ﬂﬂ' 2
(
ﬂﬂ2 3
(
ﬂﬂ3 4
handler
ﬂﬂ4 ;
,
ﬂﬂ; <
context
ﬂﬂ= D
)
ﬂﬂD E
=>
ﬂﬂF H
handler
ﬂﬂI P
.
ﬂﬂP Q
ImportingAsync
ﬂﬂQ _
(
ﬂﬂ_ `
context
ﬂﬂ` g
)
ﬂﬂg h
,
ﬂﬂh i
context
ﬂﬂj q
,
ﬂﬂq r
_logger
ﬂﬂs z
)
ﬂﬂz {
;
ﬂﬂ{ |
var
·· 
evictionVersions
·· ,
=
··- .&
versionsThatMaybeEvicted
··/ G
.
··G H
Where
··H M
(
··M N
x
··N O
=>
··P R
String
··S Y
.
··Y Z
Equals
··Z `
(
··` a
x
··a b
.
··b c
ContentItemId
··c p
,
··p q
importingItem
··r 
.·· Ä
ContentItemId··Ä ç
,··ç é 
StringComparison··è ü
.··ü †!
OrdinalIgnoreCase··† ±
)··± ≤
)··≤ ≥
;··≥ ¥
var
‚‚ 
result
‚‚ "
=
‚‚# $
await
‚‚% *+
CreateContentItemVersionAsync
‚‚+ H
(
‚‚H I
importingItem
‚‚I V
,
‚‚V W
evictionVersions
‚‚X h
)
‚‚h i
;
‚‚i j
if
„„ 
(
„„ 
!
„„ 
result
„„ #
.
„„# $
	Succeeded
„„$ -
)
„„- .
{
‰‰ 
if
ÂÂ 
(
ÂÂ  
_logger
ÂÂ  '
.
ÂÂ' (
	IsEnabled
ÂÂ( 1
(
ÂÂ1 2
LogLevel
ÂÂ2 :
.
ÂÂ: ;
Error
ÂÂ; @
)
ÂÂ@ A
)
ÂÂA B
{
ÊÊ 
_logger
ÁÁ  '
.
ÁÁ' (
LogError
ÁÁ( 0
(
ÁÁ0 1
$strÁÁ1 Ä
,ÁÁÄ Å
importingItemÁÁÇ è
?ÁÁè ê
.ÁÁê ë$
ContentItemVersionIdÁÁë •
,ÁÁ• ¶
stringÁÁß ≠
.ÁÁ≠ Æ
JoinÁÁÆ ≤
(ÁÁ≤ ≥
$strÁÁ≥ ∑
,ÁÁ∑ ∏
resultÁÁπ ø
.ÁÁø ¿
ErrorsÁÁ¿ ∆
)ÁÁ∆ «
)ÁÁ« »
;ÁÁ» …
}
ËË 
throw
ÍÍ !
new
ÍÍ" %!
ValidationException
ÍÍ& 9
(
ÍÍ9 :
string
ÍÍ: @
.
ÍÍ@ A
Join
ÍÍA E
(
ÍÍE F
$str
ÍÍF J
,
ÍÍJ K
result
ÍÍL R
.
ÍÍR S
Errors
ÍÍS Y
)
ÍÍY Z
)
ÍÍZ [
;
ÍÍ[ \
}
ÎÎ 
await
ÔÔ 
ReversedHandlers
ÔÔ .
.
ÔÔ. /
InvokeAsync
ÔÔ/ :
(
ÔÔ: ;
(
ÔÔ; <
handler
ÔÔ< C
,
ÔÔC D
context
ÔÔE L
)
ÔÔL M
=>
ÔÔN P
handler
ÔÔQ X
.
ÔÔX Y
ImportedAsync
ÔÔY f
(
ÔÔf g
context
ÔÔg n
)
ÔÔn o
,
ÔÔo p
context
ÔÔq x
,
ÔÔx y
_loggerÔÔz Å
)ÔÔÅ Ç
;ÔÔÇ É
}
 
else
ÒÒ 
{
ÚÚ 
var
˝˝ 

jImporting
˝˝ &
=
˝˝' (
JObject
˝˝) 0
.
˝˝0 1

FromObject
˝˝1 ;
(
˝˝; <
importingItem
˝˝< I
)
˝˝I J
;
˝˝J K

jImporting
ÅÅ "
.
ÅÅ" #
Remove
ÅÅ# )
(
ÅÅ) *
nameof
ÅÅ* 0
(
ÅÅ0 1
ContentItem
ÅÅ1 <
.
ÅÅ< =
	Published
ÅÅ= F
)
ÅÅF G
)
ÅÅG H
;
ÅÅH I

jImporting
ÇÇ "
.
ÇÇ" #
Remove
ÇÇ# )
(
ÇÇ) *
nameof
ÇÇ* 0
(
ÇÇ0 1
ContentItem
ÇÇ1 <
.
ÇÇ< =
Latest
ÇÇ= C
)
ÇÇC D
)
ÇÇD E
;
ÇÇE F
var
ÑÑ 
	jOriginal
ÑÑ %
=
ÑÑ& '
JObject
ÑÑ( /
.
ÑÑ/ 0

FromObject
ÑÑ0 :
(
ÑÑ: ;
originalVersion
ÑÑ; J
)
ÑÑJ K
;
ÑÑK L
	jOriginal
ÜÜ !
.
ÜÜ! "
Remove
ÜÜ" (
(
ÜÜ( )
nameof
ÜÜ) /
(
ÜÜ/ 0
ContentItem
ÜÜ0 ;
.
ÜÜ; <
	Published
ÜÜ< E
)
ÜÜE F
)
ÜÜF G
;
ÜÜG H
	jOriginal
áá !
.
áá! "
Remove
áá" (
(
áá( )
nameof
áá) /
(
áá/ 0
ContentItem
áá0 ;
.
áá; <
Latest
áá< B
)
ááB C
)
ááC D
;
ááD E
if
ââ 
(
ââ 
JToken
ââ "
.
ââ" #

DeepEquals
ââ# -
(
ââ- .

jImporting
ââ. 8
,
ââ8 9
	jOriginal
ââ: C
)
ââC D
)
ââD E
{
ää 
_logger
ãã #
.
ãã# $
LogInformation
ãã$ 2
(
ãã2 3
$str
ãã3 r
,
ããr s
importingItemããt Å
.ããÅ Ç$
ContentItemVersionIdããÇ ñ
)ããñ ó
;ããó ò
continue
åå $
;
åå$ %
}
çç 
var
êê 
context
êê #
=
êê$ %
new
êê& )"
ImportContentContext
êê* >
(
êê> ?
importingItem
êê? L
,
êêL M
originalVersion
êêN ]
)
êê] ^
;
êê^ _
await
íí 
Handlers
íí &
.
íí& '
InvokeAsync
íí' 2
(
íí2 3
(
íí3 4
handler
íí4 ;
,
íí; <
context
íí= D
)
ííD E
=>
ííF H
handler
ííI P
.
ííP Q
ImportingAsync
ííQ _
(
íí_ `
context
íí` g
)
ííg h
,
ííh i
context
ííj q
,
ííq r
_logger
íís z
)
ííz {
;
íí{ |
var
îî 
evictionVersions
îî ,
=
îî- .&
versionsThatMaybeEvicted
îî/ G
.
îîG H
Where
îîH M
(
îîM N
x
îîN O
=>
îîP R
String
îîS Y
.
îîY Z
Equals
îîZ `
(
îî` a
x
îîa b
.
îîb c
ContentItemId
îîc p
,
îîp q
importingItem
îîr 
.îî Ä
ContentItemIdîîÄ ç
,îîç é 
StringComparisonîîè ü
.îîü †!
OrdinalIgnoreCaseîî† ±
)îî± ≤
)îî≤ ≥
;îî≥ ¥
var
ïï 
result
ïï "
=
ïï# $
await
ïï% *+
UpdateContentItemVersionAsync
ïï+ H
(
ïïH I
originalVersion
ïïI X
,
ïïX Y
importingItem
ïïZ g
,
ïïg h
evictionVersions
ïïi y
)
ïïy z
;
ïïz {
if
ññ 
(
ññ 
!
ññ 
result
ññ #
.
ññ# $
	Succeeded
ññ$ -
)
ññ- .
{
óó 
if
òò 
(
òò  
_logger
òò  '
.
òò' (
	IsEnabled
òò( 1
(
òò1 2
LogLevel
òò2 :
.
òò: ;
Error
òò; @
)
òò@ A
)
òòA B
{
ôô 
_logger
öö  '
.
öö' (
LogError
öö( 0
(
öö0 1
$ströö1 Ä
,ööÄ Å
importingItemööÇ è
.ööè ê$
ContentItemVersionIdööê §
,öö§ •
stringöö¶ ¨
.öö¨ ≠
Joinöö≠ ±
(öö± ≤
$ströö≤ ∂
,öö∂ ∑
resultöö∏ æ
.ööæ ø
Errorsööø ≈
)öö≈ ∆
)öö∆ «
;öö« »
}
õõ 
throw
ùù !
new
ùù" %!
ValidationException
ùù& 9
(
ùù9 :
string
ùù: @
.
ùù@ A
Join
ùùA E
(
ùùE F
$str
ùùF J
,
ùùJ K
result
ùùL R
.
ùùR S
Errors
ùùS Y
)
ùùY Z
)
ùùZ [
;
ùù[ \
}
ûû 
await
¢¢ 
ReversedHandlers
¢¢ .
.
¢¢. /
InvokeAsync
¢¢/ :
(
¢¢: ;
(
¢¢; <
handler
¢¢< C
,
¢¢C D
context
¢¢E L
)
¢¢L M
=>
¢¢N P
handler
¢¢Q X
.
¢¢X Y
ImportedAsync
¢¢Y f
(
¢¢f g
context
¢¢g n
)
¢¢n o
,
¢¢o p
context
¢¢q x
,
¢¢x y
_logger¢¢z Å
)¢¢Å Ç
;¢¢Ç É
}
££ 
}
§§ 
skip
¶¶ 
+=
¶¶ 
ImportBatchSize
¶¶ '
;
¶¶' (!
batchedContentItems
ßß #
=
ßß$ %
contentItems
ßß& 2
.
ßß2 3
Skip
ßß3 7
(
ßß7 8
skip
ßß8 <
)
ßß< =
.
ßß= >
Take
ßß> B
(
ßßB C
ImportBatchSize
ßßC R
)
ßßR S
;
ßßS T
}
®® 
}
©© 	
public
´´ 
async
´´ 
Task
´´ 
UpdateAsync
´´ %
(
´´% &
ContentItem
´´& 1
contentItem
´´2 =
)
´´= >
{
¨¨ 	
var
≠≠ 
context
≠≠ 
=
≠≠ 
new
≠≠ "
UpdateContentContext
≠≠ 2
(
≠≠2 3
contentItem
≠≠3 >
)
≠≠> ?
;
≠≠? @
await
ØØ 
Handlers
ØØ 
.
ØØ 
InvokeAsync
ØØ &
(
ØØ& '
(
ØØ' (
handler
ØØ( /
,
ØØ/ 0
context
ØØ1 8
)
ØØ8 9
=>
ØØ: <
handler
ØØ= D
.
ØØD E
UpdatingAsync
ØØE R
(
ØØR S
context
ØØS Z
)
ØØZ [
,
ØØ[ \
context
ØØ] d
,
ØØd e
_logger
ØØf m
)
ØØm n
;
ØØn o
_session
±± 
.
±± 
Save
±± 
(
±± 
contentItem
±± %
)
±±% &
;
±±& '
await
≥≥ 
ReversedHandlers
≥≥ "
.
≥≥" #
InvokeAsync
≥≥# .
(
≥≥. /
(
≥≥/ 0
handler
≥≥0 7
,
≥≥7 8
context
≥≥9 @
)
≥≥@ A
=>
≥≥B D
handler
≥≥E L
.
≥≥L M
UpdatedAsync
≥≥M Y
(
≥≥Y Z
context
≥≥Z a
)
≥≥a b
,
≥≥b c
context
≥≥d k
,
≥≥k l
_logger
≥≥m t
)
≥≥t u
;
≥≥u v
}
¥¥ 	
public
∂∂ 
async
∂∂ 
Task
∂∂ 
<
∂∂ #
ContentValidateResult
∂∂ /
>
∂∂/ 0
ValidateAsync
∂∂1 >
(
∂∂> ?
ContentItem
∂∂? J
contentItem
∂∂K V
)
∂∂V W
{
∑∑ 	
var
∏∏ 
validateContext
∏∏ 
=
∏∏  !
new
∏∏" %$
ValidateContentContext
∏∏& <
(
∏∏< =
contentItem
∏∏= H
)
∏∏H I
;
∏∏I J
await
∫∫ 
Handlers
∫∫ 
.
∫∫ 
InvokeAsync
∫∫ &
(
∫∫& '
(
∫∫' (
handler
∫∫( /
,
∫∫/ 0
context
∫∫1 8
)
∫∫8 9
=>
∫∫: <
handler
∫∫= D
.
∫∫D E
ValidatingAsync
∫∫E T
(
∫∫T U
context
∫∫U \
)
∫∫\ ]
,
∫∫] ^
validateContext
∫∫_ n
,
∫∫n o
_logger
∫∫p w
)
∫∫w x
;
∫∫x y
await
ºº 
ReversedHandlers
ºº "
.
ºº" #
InvokeAsync
ºº# .
(
ºº. /
(
ºº/ 0
handler
ºº0 7
,
ºº7 8
context
ºº9 @
)
ºº@ A
=>
ººB D
handler
ººE L
.
ººL M
ValidatedAsync
ººM [
(
ºº[ \
context
ºº\ c
)
ººc d
,
ººd e
validateContext
ººf u
,
ººu v
_logger
ººw ~
)
ºº~ 
;ºº Ä
if
ææ 
(
ææ 
!
ææ 
validateContext
ææ  
.
ææ  !#
ContentValidateResult
ææ! 6
.
ææ6 7
	Succeeded
ææ7 @
)
ææ@ A
{
øø 
_session
¿¿ 
.
¿¿ 
Cancel
¿¿ 
(
¿¿  
)
¿¿  !
;
¿¿! "
}
¡¡ 
return
√√ 
validateContext
√√ "
.
√√" ##
ContentValidateResult
√√# 8
;
√√8 9
}
ƒƒ 	
public
∆∆ 
async
∆∆ 
Task
∆∆ 
<
∆∆ 
TAspect
∆∆ !
>
∆∆! "!
PopulateAspectAsync
∆∆# 6
<
∆∆6 7
TAspect
∆∆7 >
>
∆∆> ?
(
∆∆? @
IContent
∆∆@ H
content
∆∆I P
,
∆∆P Q
TAspect
∆∆R Y
aspect
∆∆Z `
)
∆∆` a
{
«« 	
var
»» 
context
»» 
=
»» 
new
»» &
ContentItemAspectContext
»» 6
{
…… 
ContentItem
   
=
   
content
   %
.
  % &
ContentItem
  & 1
,
  1 2
Aspect
ÀÀ 
=
ÀÀ 
aspect
ÀÀ 
}
ÃÃ 
;
ÃÃ 
await
ŒŒ 
Handlers
ŒŒ 
.
ŒŒ 
InvokeAsync
ŒŒ &
(
ŒŒ& '
(
ŒŒ' (
handler
ŒŒ( /
,
ŒŒ/ 0
context
ŒŒ1 8
)
ŒŒ8 9
=>
ŒŒ: <
handler
ŒŒ= D
.
ŒŒD E'
GetContentItemAspectAsync
ŒŒE ^
(
ŒŒ^ _
context
ŒŒ_ f
)
ŒŒf g
,
ŒŒg h
context
ŒŒi p
,
ŒŒp q
_logger
ŒŒr y
)
ŒŒy z
;
ŒŒz {
return
–– 
aspect
–– 
;
–– 
}
—— 	
public
”” 
async
”” 
Task
”” 
RemoveAsync
”” %
(
””% &
ContentItem
””& 1
contentItem
””2 =
)
””= >
{
‘‘ 	
var
’’ 
activeVersions
’’ 
=
’’  
await
’’! &
_session
’’' /
.
’’/ 0
Query
’’0 5
<
’’5 6
ContentItem
’’6 A
,
’’A B
ContentItemIndex
’’C S
>
’’S T
(
’’T U
)
’’U V
.
÷÷ 
Where
÷÷ 
(
÷÷ 
x
÷÷ 
=>
÷÷ 
x
◊◊ 
.
◊◊ 
ContentItemId
◊◊ #
==
◊◊$ &
contentItem
◊◊' 2
.
◊◊2 3
ContentItemId
◊◊3 @
&&
◊◊A C
(
ÿÿ 
x
ÿÿ 
.
ÿÿ 
	Published
ÿÿ  
||
ÿÿ! #
x
ÿÿ$ %
.
ÿÿ% &
Latest
ÿÿ& ,
)
ÿÿ, -
)
ÿÿ- .
.
ÿÿ. /
	ListAsync
ÿÿ/ 8
(
ÿÿ8 9
)
ÿÿ9 :
;
ÿÿ: ;
if
⁄⁄ 
(
⁄⁄ 
!
⁄⁄ 
activeVersions
⁄⁄ 
.
⁄⁄  
Any
⁄⁄  #
(
⁄⁄# $
)
⁄⁄$ %
)
⁄⁄% &
{
€€ 
return
‹‹ 
;
‹‹ 
}
›› 
var
ﬂﬂ 
context
ﬂﬂ 
=
ﬂﬂ 
new
ﬂﬂ "
RemoveContentContext
ﬂﬂ 2
(
ﬂﬂ2 3
contentItem
ﬂﬂ3 >
,
ﬂﬂ> ?
true
ﬂﬂ@ D
)
ﬂﬂD E
;
ﬂﬂE F
await
·· 
Handlers
·· 
.
·· 
InvokeAsync
·· &
(
··& '
(
··' (
handler
··( /
,
··/ 0
context
··1 8
)
··8 9
=>
··: <
handler
··= D
.
··D E
RemovingAsync
··E R
(
··R S
context
··S Z
)
··Z [
,
··[ \
context
··] d
,
··d e
_logger
··f m
)
··m n
;
··n o
foreach
„„ 
(
„„ 
var
„„ 
version
„„  
in
„„! #
activeVersions
„„$ 2
)
„„2 3
{
‰‰ 
version
ÂÂ 
.
ÂÂ 
	Published
ÂÂ !
=
ÂÂ" #
false
ÂÂ$ )
;
ÂÂ) *
version
ÊÊ 
.
ÊÊ 
Latest
ÊÊ 
=
ÊÊ  
false
ÊÊ! &
;
ÊÊ& '
_session
ÁÁ 
.
ÁÁ 
Save
ÁÁ 
(
ÁÁ 
version
ÁÁ %
)
ÁÁ% &
;
ÁÁ& '
}
ËË 
await
ÍÍ 
ReversedHandlers
ÍÍ "
.
ÍÍ" #
InvokeAsync
ÍÍ# .
(
ÍÍ. /
(
ÍÍ/ 0
handler
ÍÍ0 7
,
ÍÍ7 8
context
ÍÍ9 @
)
ÍÍ@ A
=>
ÍÍB D
handler
ÍÍE L
.
ÍÍL M
RemovedAsync
ÍÍM Y
(
ÍÍY Z
context
ÍÍZ a
)
ÍÍa b
,
ÍÍb c
context
ÍÍd k
,
ÍÍk l
_logger
ÍÍm t
)
ÍÍt u
;
ÍÍu v
}
ÎÎ 	
public
ÌÌ 
async
ÌÌ 
Task
ÌÌ 
DiscardDraftAsync
ÌÌ +
(
ÌÌ+ ,
ContentItem
ÌÌ, 7
contentItem
ÌÌ8 C
)
ÌÌC D
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
contentItem
ÔÔ 
.
ÔÔ 
	Published
ÔÔ %
||
ÔÔ& (
!
ÔÔ) *
contentItem
ÔÔ* 5
.
ÔÔ5 6
Latest
ÔÔ6 <
)
ÔÔ< =
{
 
throw
ÒÒ 
new
ÒÒ '
InvalidOperationException
ÒÒ 3
(
ÒÒ3 4
$str
ÒÒ4 J
)
ÒÒJ K
;
ÒÒK L
}
ÚÚ 
var
ÙÙ 
publishedItem
ÙÙ 
=
ÙÙ 
await
ÙÙ  %
GetAsync
ÙÙ& .
(
ÙÙ. /
contentItem
ÙÙ/ :
.
ÙÙ: ;
ContentItemId
ÙÙ; H
,
ÙÙH I
VersionOptions
ÙÙJ X
.
ÙÙX Y
	Published
ÙÙY b
)
ÙÙb c
;
ÙÙc d
var
ˆˆ 
context
ˆˆ 
=
ˆˆ 
new
ˆˆ "
RemoveContentContext
ˆˆ 2
(
ˆˆ2 3
contentItem
ˆˆ3 >
,
ˆˆ> ?
publishedItem
ˆˆ@ M
==
ˆˆN P
null
ˆˆQ U
)
ˆˆU V
;
ˆˆV W
await
¯¯ 
Handlers
¯¯ 
.
¯¯ 
InvokeAsync
¯¯ &
(
¯¯& '
(
¯¯' (
handler
¯¯( /
,
¯¯/ 0
context
¯¯1 8
)
¯¯8 9
=>
¯¯: <
handler
¯¯= D
.
¯¯D E
RemovingAsync
¯¯E R
(
¯¯R S
context
¯¯S Z
)
¯¯Z [
,
¯¯[ \
context
¯¯] d
,
¯¯d e
_logger
¯¯f m
)
¯¯m n
;
¯¯n o
contentItem
˙˙ 
.
˙˙ 
Latest
˙˙ 
=
˙˙  
false
˙˙! &
;
˙˙& '
_session
˚˚ 
.
˚˚ 
Save
˚˚ 
(
˚˚ 
contentItem
˚˚ %
)
˚˚% &
;
˚˚& '
await
˝˝ 
ReversedHandlers
˝˝ "
.
˝˝" #
InvokeAsync
˝˝# .
(
˝˝. /
(
˝˝/ 0
handler
˝˝0 7
,
˝˝7 8
context
˝˝9 @
)
˝˝@ A
=>
˝˝B D
handler
˝˝E L
.
˝˝L M
RemovedAsync
˝˝M Y
(
˝˝Y Z
context
˝˝Z a
)
˝˝a b
,
˝˝b c
context
˝˝d k
,
˝˝k l
_logger
˝˝m t
)
˝˝t u
;
˝˝u v
if
ˇˇ 
(
ˇˇ 
publishedItem
ˇˇ 
!=
ˇˇ  
null
ˇˇ! %
)
ˇˇ% &
{
ÄÄ 
publishedItem
ÅÅ 
.
ÅÅ 
Latest
ÅÅ $
=
ÅÅ% &
true
ÅÅ' +
;
ÅÅ+ ,
_session
ÇÇ 
.
ÇÇ 
Save
ÇÇ 
(
ÇÇ 
publishedItem
ÇÇ +
)
ÇÇ+ ,
;
ÇÇ, -
}
ÉÉ 
}
ÑÑ 	
public
ÜÜ 
async
ÜÜ 
Task
ÜÜ 
<
ÜÜ 
ContentItem
ÜÜ %
>
ÜÜ% &

CloneAsync
ÜÜ' 1
(
ÜÜ1 2
ContentItem
ÜÜ2 =
contentItem
ÜÜ> I
)
ÜÜI J
{
áá 	
var
àà 
cloneContentItem
àà  
=
àà! "
await
àà# (
NewAsync
àà) 1
(
àà1 2
contentItem
àà2 =
.
àà= >
ContentType
àà> I
)
ààI J
;
ààJ K
await
ââ 
CreateAsync
ââ 
(
ââ 
cloneContentItem
ââ .
,
ââ. /
VersionOptions
ââ0 >
.
ââ> ?
Draft
ââ? D
)
ââD E
;
ââE F
var
ãã 
context
ãã 
=
ãã 
new
ãã !
CloneContentContext
ãã 1
(
ãã1 2
contentItem
ãã2 =
,
ãã= >
cloneContentItem
ãã? O
)
ããO P
;
ããP Q
context
çç 
.
çç 
CloneContentItem
çç $
.
çç$ %
Data
çç% )
=
çç* +
contentItem
çç, 7
.
çç7 8
Data
çç8 <
.
çç< =
	DeepClone
çç= F
(
ççF G
)
ççG H
as
ççI K
JObject
ççL S
;
ççS T
context
éé 
.
éé 
CloneContentItem
éé $
.
éé$ %
DisplayText
éé% 0
=
éé1 2
contentItem
éé3 >
.
éé> ?
DisplayText
éé? J
;
ééJ K
await
êê 
Handlers
êê 
.
êê 
InvokeAsync
êê &
(
êê& '
(
êê' (
handler
êê( /
,
êê/ 0
context
êê1 8
)
êê8 9
=>
êê: <
handler
êê= D
.
êêD E
CloningAsync
êêE Q
(
êêQ R
context
êêR Y
)
êêY Z
,
êêZ [
context
êê\ c
,
êêc d
_logger
êêe l
)
êêl m
;
êêm n
_session
íí 
.
íí 
Save
íí 
(
íí 
context
íí !
.
íí! "
CloneContentItem
íí" 2
)
íí2 3
;
íí3 4
await
îî 
ReversedHandlers
îî "
.
îî" #
InvokeAsync
îî# .
(
îî. /
(
îî/ 0
handler
îî0 7
,
îî7 8
context
îî9 @
)
îî@ A
=>
îîB D
handler
îîE L
.
îîL M
ClonedAsync
îîM X
(
îîX Y
context
îîY `
)
îî` a
,
îîa b
context
îîc j
,
îîj k
_logger
îîl s
)
îîs t
;
îît u
return
ññ 
context
ññ 
.
ññ 
CloneContentItem
ññ +
;
ññ+ ,
}
óó 	
private
ôô 
async
ôô 
Task
ôô 
<
ôô #
ContentValidateResult
ôô 0
>
ôô0 1+
CreateContentItemVersionAsync
ôô2 O
(
ôôO P
ContentItem
ôôP [
contentItem
ôô\ g
,
ôôg h
IEnumerable
ôôi t
<
ôôt u
ContentItemôôu Ä
>ôôÄ Å 
evictionVersionsôôÇ í
=ôôì î
nullôôï ô
)ôôô ö
{
öö 	
if
õõ 
(
õõ 
String
õõ 
.
õõ 
IsNullOrEmpty
õõ $
(
õõ$ %
contentItem
õõ% 0
.
õõ0 1
ContentItemId
õõ1 >
)
õõ> ?
)
õõ? @
{
úú 
throw
ûû 
new
ûû #
ArgumentNullException
ûû /
(
ûû/ 0
nameof
ûû0 6
(
ûû6 7
ContentItem
ûû7 B
.
ûûB C
ContentItemId
ûûC P
)
ûûP Q
)
ûûQ R
;
ûûR S
}
üü 
contentItem
¢¢ 
.
¢¢ 
Id
¢¢ 
=
¢¢ 
$num
¢¢ 
;
¢¢ 
var
•• 
modifiedUtc
•• 
=
•• 
contentItem
•• )
.
••) *
ModifiedUtc
••* 5
;
••5 6
var
¶¶ 
publishedUtc
¶¶ 
=
¶¶ 
contentItem
¶¶ *
.
¶¶* +
PublishedUtc
¶¶+ 7
;
¶¶7 8
var
ßß 
owner
ßß 
=
ßß 
contentItem
ßß #
.
ßß# $
Owner
ßß$ )
;
ßß) *
var
®® 
author
®® 
=
®® 
contentItem
®® $
.
®®$ %
Author
®®% +
;
®®+ ,
if
™™ 
(
™™ 
String
™™ 
.
™™ 
IsNullOrEmpty
™™ $
(
™™$ %
contentItem
™™% 0
.
™™0 1"
ContentItemVersionId
™™1 E
)
™™E F
)
™™F G
{
´´ 
contentItem
¨¨ 
.
¨¨ "
ContentItemVersionId
¨¨ 0
=
¨¨1 2
_idGenerator
¨¨3 ?
.
¨¨? @
GenerateUniqueId
¨¨@ P
(
¨¨P Q
contentItem
¨¨Q \
)
¨¨\ ]
;
¨¨] ^
}
≠≠ 
if
±± 
(
±± 
contentItem
±± 
.
±± 
Latest
±± "
&&
±±# %
!
±±& '
contentItem
±±' 2
.
±±2 3
	Published
±±3 <
)
±±< =
{
≤≤ 
await
≥≥ &
RemoveLatestVersionAsync
≥≥ .
(
≥≥. /
contentItem
≥≥/ :
,
≥≥: ;
evictionVersions
≥≥< L
)
≥≥L M
;
≥≥M N
}
¥¥ 
else
µµ 
if
µµ 
(
µµ 
contentItem
µµ  
.
µµ  !
	Published
µµ! *
)
µµ* +
{
∂∂ 
await
∫∫ !
RemoveVersionsAsync
∫∫ )
(
∫∫) *
contentItem
∫∫* 5
,
∫∫5 6
evictionVersions
∫∫7 G
)
∫∫G H
;
∫∫H I
}
ªª 
var
¿¿ 
context
¿¿ 
=
¿¿ 
new
¿¿ "
CreateContentContext
¿¿ 2
(
¿¿2 3
contentItem
¿¿3 >
)
¿¿> ?
;
¿¿? @
await
¡¡ 
Handlers
¡¡ 
.
¡¡ 
InvokeAsync
¡¡ &
(
¡¡& '
(
¡¡' (
handler
¡¡( /
,
¡¡/ 0
context
¡¡1 8
)
¡¡8 9
=>
¡¡: <
handler
¡¡= D
.
¡¡D E
CreatingAsync
¡¡E R
(
¡¡R S
context
¡¡S Z
)
¡¡Z [
,
¡¡[ \
context
¡¡] d
,
¡¡d e
_logger
¡¡f m
)
¡¡m n
;
¡¡n o
_session
≈≈ 
.
≈≈ 
Save
≈≈ 
(
≈≈ 
contentItem
≈≈ %
)
≈≈% &
;
≈≈& '$
_contentManagerSession
∆∆ "
.
∆∆" #
Store
∆∆# (
(
∆∆( )
contentItem
∆∆) 4
)
∆∆4 5
;
∆∆5 6
await
»» 
ReversedHandlers
»» "
.
»»" #
InvokeAsync
»»# .
(
»». /
(
»»/ 0
handler
»»0 7
,
»»7 8
context
»»9 @
)
»»@ A
=>
»»B D
handler
»»E L
.
»»L M
CreatedAsync
»»M Y
(
»»Y Z
context
»»Z a
)
»»a b
,
»»b c
context
»»d k
,
»»k l
_logger
»»m t
)
»»t u
;
»»u v
await
   
UpdateAsync
   
(
   
contentItem
   )
)
  ) *
;
  * +
var
ÃÃ 
result
ÃÃ 
=
ÃÃ 
await
ÃÃ 
ValidateAsync
ÃÃ ,
(
ÃÃ, -
contentItem
ÃÃ- 8
)
ÃÃ8 9
;
ÃÃ9 :
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
result
ÕÕ 
.
ÕÕ 
	Succeeded
ÕÕ !
)
ÕÕ! "
{
ŒŒ 
return
œœ 
result
œœ 
;
œœ 
}
–– 
if
““ 
(
““ 
contentItem
““ 
.
““ 
	Published
““ %
)
““% &
{
”” 
var
’’ 
publishContext
’’ "
=
’’# $
new
’’% (#
PublishContentContext
’’) >
(
’’> ?
contentItem
’’? J
,
’’J K
null
’’L P
)
’’P Q
;
’’Q R
await
◊◊ 
Handlers
◊◊ 
.
◊◊ 
InvokeAsync
◊◊ *
(
◊◊* +
(
◊◊+ ,
handler
◊◊, 3
,
◊◊3 4
context
◊◊5 <
)
◊◊< =
=>
◊◊> @
handler
◊◊A H
.
◊◊H I
PublishingAsync
◊◊I X
(
◊◊X Y
context
◊◊Y `
)
◊◊` a
,
◊◊a b
publishContext
◊◊c q
,
◊◊q r
_logger
◊◊s z
)
◊◊z {
;
◊◊{ |
await
ÿÿ 
ReversedHandlers
ÿÿ &
.
ÿÿ& '
InvokeAsync
ÿÿ' 2
(
ÿÿ2 3
(
ÿÿ3 4
handler
ÿÿ4 ;
,
ÿÿ; <
context
ÿÿ= D
)
ÿÿD E
=>
ÿÿF H
handler
ÿÿI P
.
ÿÿP Q
PublishedAsync
ÿÿQ _
(
ÿÿ_ `
context
ÿÿ` g
)
ÿÿg h
,
ÿÿh i
publishContext
ÿÿj x
,
ÿÿx y
_loggerÿÿz Å
)ÿÿÅ Ç
;ÿÿÇ É
}
ŸŸ 
else
⁄⁄ 
{
€€ 
await
‹‹ 
SaveDraftAsync
‹‹ $
(
‹‹$ %
contentItem
‹‹% 0
)
‹‹0 1
;
‹‹1 2
}
›› 
if
‡‡ 
(
‡‡ 
modifiedUtc
‡‡ 
.
‡‡ 
HasValue
‡‡ $
)
‡‡$ %
{
·· 
contentItem
‚‚ 
.
‚‚ 
ModifiedUtc
‚‚ '
=
‚‚( )
modifiedUtc
‚‚* 5
;
‚‚5 6
}
„„ 
if
‰‰ 
(
‰‰ 
publishedUtc
‰‰ 
.
‰‰ 
HasValue
‰‰ %
)
‰‰% &
{
ÂÂ 
contentItem
ÊÊ 
.
ÊÊ 
PublishedUtc
ÊÊ (
=
ÊÊ) *
publishedUtc
ÊÊ+ 7
;
ÊÊ7 8
}
ÁÁ 
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
String
ÏÏ 
.
ÏÏ 
IsNullOrEmpty
ÏÏ %
(
ÏÏ% &
owner
ÏÏ& +
)
ÏÏ+ ,
)
ÏÏ, -
{
ÌÌ 
contentItem
ÓÓ 
.
ÓÓ 
Owner
ÓÓ !
=
ÓÓ" #
owner
ÓÓ$ )
;
ÓÓ) *
}
ÔÔ 
if
 
(
 
!
 
String
 
.
 
IsNullOrEmpty
 %
(
% &
author
& ,
)
, -
)
- .
{
ÒÒ 
contentItem
ÚÚ 
.
ÚÚ 
Author
ÚÚ "
=
ÚÚ# $
author
ÚÚ% +
;
ÚÚ+ ,
}
ÛÛ 
return
ıı 
result
ıı 
;
ıı 
}
ˆˆ 	
private
¯¯ 
async
¯¯ 
Task
¯¯ 
<
¯¯ #
ContentValidateResult
¯¯ 0
>
¯¯0 1+
UpdateContentItemVersionAsync
¯¯2 O
(
¯¯O P
ContentItem
¯¯P [
updatingVersion
¯¯\ k
,
¯¯k l
ContentItem
¯¯m x
updatedVersion¯¯y á
,¯¯á à
IEnumerable¯¯â î
<¯¯î ï
ContentItem¯¯ï †
>¯¯† ° 
evictionVersions¯¯¢ ≤
=¯¯≥ ¥
null¯¯µ π
)¯¯π ∫
{
˘˘ 	
updatingVersion
˚˚ 
.
˚˚ 
Id
˚˚ 
=
˚˚  
updatedVersion
˚˚! /
.
˚˚/ 0
Id
˚˚0 2
;
˚˚2 3
var
˝˝ 
modifiedUtc
˝˝ 
=
˝˝ 
updatedVersion
˝˝ ,
.
˝˝, -
ModifiedUtc
˝˝- 8
;
˝˝8 9
var
˛˛ 
publishedUtc
˛˛ 
=
˛˛ 
updatedVersion
˛˛ -
.
˛˛- .
PublishedUtc
˛˛. :
;
˛˛: ;
var
ÅÅ 
discardLatest
ÅÅ 
=
ÅÅ 
false
ÅÅ  %
;
ÅÅ% &
var
ÇÇ 
removePublished
ÇÇ 
=
ÇÇ  !
false
ÇÇ" '
;
ÇÇ' (
var
ÑÑ 
importingLatest
ÑÑ 
=
ÑÑ  !
updatedVersion
ÑÑ" 0
.
ÑÑ0 1
Latest
ÑÑ1 7
;
ÑÑ7 8
var
ÖÖ 
existingLatest
ÖÖ 
=
ÖÖ  
updatingVersion
ÖÖ! 0
.
ÖÖ0 1
Latest
ÖÖ1 7
;
ÖÖ7 8
if
àà 
(
àà 
importingLatest
àà 
!=
àà  "
existingLatest
àà# 1
&&
àà2 4
importingLatest
àà5 D
==
ààE G
true
ààH L
)
ààL M
{
ââ 
discardLatest
ää 
=
ää 
true
ää  $
;
ää$ %
}
ãã 
var
çç  
importingPublished
çç "
=
çç# $
updatedVersion
çç% 3
.
çç3 4
	Published
çç4 =
;
çç= >
var
éé 
existingPublished
éé !
=
éé" #
updatingVersion
éé$ 3
.
éé3 4
	Published
éé4 =
;
éé= >
if
ìì 
(
ìì  
importingPublished
ìì "
!=
ìì# %
existingPublished
ìì& 7
&&
ìì8 : 
importingPublished
ìì; M
==
ììN P
true
ììQ U
)
ììU V
{
îî 
removePublished
ïï 
=
ïï  !
true
ïï" &
;
ïï& '
}
ññ 
if
òò 
(
òò 
discardLatest
òò 
&&
òò  
removePublished
òò! 0
)
òò0 1
{
ôô 
await
öö !
RemoveVersionsAsync
öö )
(
öö) *
updatingVersion
öö* 9
,
öö9 :
evictionVersions
öö; K
)
ööK L
;
ööL M
}
õõ 
else
úú 
if
úú 
(
úú 
discardLatest
úú "
)
úú" #
{
ùù 
await
ûû &
RemoveLatestVersionAsync
ûû .
(
ûû. /
updatingVersion
ûû/ >
,
ûû> ?
evictionVersions
ûû@ P
)
ûûP Q
;
ûûQ R
}
üü 
else
†† 
if
†† 
(
†† 
removePublished
†† $
)
††$ %
{
°° 
await
¢¢ )
RemovePublishedVersionAsync
¢¢ 1
(
¢¢1 2
updatingVersion
¢¢2 A
,
¢¢A B
evictionVersions
¢¢C S
)
¢¢S T
;
¢¢T U
}
££ 
updatingVersion
•• 
.
•• 
Merge
•• !
(
••! "
updatedVersion
••" 0
,
••0 1%
UpdateJsonMergeSettings
••2 I
)
••I J
;
••J K
updatingVersion
¶¶ 
.
¶¶ 
Latest
¶¶ "
=
¶¶# $
importingLatest
¶¶% 4
;
¶¶4 5
updatingVersion
ßß 
.
ßß 
	Published
ßß %
=
ßß& ' 
importingPublished
ßß( :
;
ßß: ;
await
©© 
UpdateAsync
©© 
(
©© 
updatingVersion
©© -
)
©©- .
;
©©. /
var
™™ 
result
™™ 
=
™™ 
await
™™ 
ValidateAsync
™™ ,
(
™™, -
updatingVersion
™™- <
)
™™< =
;
™™= >
if
≠≠ 
(
≠≠ 
!
≠≠ 
result
≠≠ 
.
≠≠ 
	Succeeded
≠≠ !
)
≠≠! "
{
ÆÆ 
return
ØØ 
result
ØØ 
;
ØØ 
}
∞∞ 
if
≤≤ 
(
≤≤  
importingPublished
≤≤ "
)
≤≤" #
{
≥≥ 
var
µµ 
publishContext
µµ "
=
µµ# $
new
µµ% (#
PublishContentContext
µµ) >
(
µµ> ?
updatingVersion
µµ? N
,
µµN O
null
µµP T
)
µµT U
;
µµU V
await
∑∑ 
Handlers
∑∑ 
.
∑∑ 
InvokeAsync
∑∑ *
(
∑∑* +
(
∑∑+ ,
handler
∑∑, 3
,
∑∑3 4
context
∑∑5 <
)
∑∑< =
=>
∑∑> @
handler
∑∑A H
.
∑∑H I
PublishingAsync
∑∑I X
(
∑∑X Y
context
∑∑Y `
)
∑∑` a
,
∑∑a b
publishContext
∑∑c q
,
∑∑q r
_logger
∑∑s z
)
∑∑z {
;
∑∑{ |
await
∏∏ 
ReversedHandlers
∏∏ &
.
∏∏& '
InvokeAsync
∏∏' 2
(
∏∏2 3
(
∏∏3 4
handler
∏∏4 ;
,
∏∏; <
context
∏∏= D
)
∏∏D E
=>
∏∏F H
handler
∏∏I P
.
∏∏P Q
PublishedAsync
∏∏Q _
(
∏∏_ `
context
∏∏` g
)
∏∏g h
,
∏∏h i
publishContext
∏∏j x
,
∏∏x y
_logger∏∏z Å
)∏∏Å Ç
;∏∏Ç É
}
ππ 
else
∫∫ 
{
ªª 
await
ºº 
SaveDraftAsync
ºº $
(
ºº$ %
updatingVersion
ºº% 4
)
ºº4 5
;
ºº5 6
}
ΩΩ 
if
¿¿ 
(
¿¿ 
modifiedUtc
¿¿ 
.
¿¿ 
HasValue
¿¿ $
)
¿¿$ %
{
¡¡ 
updatingVersion
¬¬ 
.
¬¬  
ModifiedUtc
¬¬  +
=
¬¬, -
modifiedUtc
¬¬. 9
;
¬¬9 :
}
√√ 
if
ƒƒ 
(
ƒƒ 
publishedUtc
ƒƒ 
.
ƒƒ 
HasValue
ƒƒ %
)
ƒƒ% &
{
≈≈ 
updatingVersion
∆∆ 
.
∆∆  
PublishedUtc
∆∆  ,
=
∆∆- .
publishedUtc
∆∆/ ;
;
∆∆; <
}
«« 
return
…… 
result
…… 
;
…… 
}
   	
private
ÃÃ 
async
ÃÃ 
Task
ÃÃ &
RemoveLatestVersionAsync
ÃÃ 3
(
ÃÃ3 4
ContentItem
ÃÃ4 ?
contentItem
ÃÃ@ K
,
ÃÃK L
IEnumerable
ÃÃM X
<
ÃÃX Y
ContentItem
ÃÃY d
>
ÃÃd e
evictionVersions
ÃÃf v
)
ÃÃv w
{
ÕÕ 	
ContentItem
ŒŒ 
latestVersion
ŒŒ %
;
ŒŒ% &
if
œœ 
(
œœ 
evictionVersions
œœ  
==
œœ! #
null
œœ$ (
)
œœ( )
{
–– 
latestVersion
—— 
=
—— 
await
——  %
_session
——& .
.
——. /
Query
——/ 4
<
——4 5
ContentItem
——5 @
,
——@ A
ContentItemIndex
——B R
>
——R S
(
——S T
)
——T U
.
““ 
Where
““ 
(
““ 
x
““ 
=>
““ 
x
““  !
.
““! "
ContentItemId
““" /
==
““0 2
contentItem
““3 >
.
““> ?
ContentItemId
““? L
&&
““M O
x
““P Q
.
““Q R
Latest
““R X
)
““X Y
.
”” !
FirstOrDefaultAsync
”” (
(
””( )
)
””) *
;
””* +
}
‘‘ 
else
’’ 
{
÷÷ 
latestVersion
◊◊ 
=
◊◊ 
evictionVersions
◊◊  0
.
◊◊0 1
FirstOrDefault
◊◊1 ?
(
◊◊? @
x
◊◊@ A
=>
◊◊B D
x
◊◊E F
.
◊◊F G
Latest
◊◊G M
)
◊◊M N
;
◊◊N O
}
ÿÿ 
if
⁄⁄ 
(
⁄⁄ 
latestVersion
⁄⁄ 
!=
⁄⁄  
null
⁄⁄! %
)
⁄⁄% &
{
€€ 
var
‹‹ 
publishedVersion
‹‹ $
=
‹‹% &
evictionVersions
‹‹' 7
?
‹‹7 8
.
‹‹8 9
FirstOrDefault
‹‹9 G
(
‹‹G H
x
‹‹H I
=>
‹‹J L
x
‹‹M N
.
‹‹N O
	Published
‹‹O X
)
‹‹X Y
;
‹‹Y Z
var
ﬁﬁ 
removeContext
ﬁﬁ !
=
ﬁﬁ" #
new
ﬁﬁ$ '"
RemoveContentContext
ﬁﬁ( <
(
ﬁﬁ< =
contentItem
ﬁﬁ= H
,
ﬁﬁH I
publishedVersion
ﬁﬁJ Z
==
ﬁﬁ[ ]
null
ﬁﬁ^ b
)
ﬁﬁb c
;
ﬁﬁc d
await
‡‡ 
Handlers
‡‡ 
.
‡‡ 
InvokeAsync
‡‡ *
(
‡‡* +
(
‡‡+ ,
handler
‡‡, 3
,
‡‡3 4
context
‡‡5 <
)
‡‡< =
=>
‡‡> @
handler
‡‡A H
.
‡‡H I
RemovingAsync
‡‡I V
(
‡‡V W
context
‡‡W ^
)
‡‡^ _
,
‡‡_ `
removeContext
‡‡a n
,
‡‡n o
_logger
‡‡p w
)
‡‡w x
;
‡‡x y
latestVersion
‚‚ 
.
‚‚ 
Latest
‚‚ $
=
‚‚% &
false
‚‚' ,
;
‚‚, -
_session
„„ 
.
„„ 
Save
„„ 
(
„„ 
latestVersion
„„ +
)
„„+ ,
;
„„, -
await
ÂÂ 
ReversedHandlers
ÂÂ &
.
ÂÂ& '
InvokeAsync
ÂÂ' 2
(
ÂÂ2 3
(
ÂÂ3 4
handler
ÂÂ4 ;
,
ÂÂ; <
context
ÂÂ= D
)
ÂÂD E
=>
ÂÂF H
handler
ÂÂI P
.
ÂÂP Q
RemovedAsync
ÂÂQ ]
(
ÂÂ] ^
context
ÂÂ^ e
)
ÂÂe f
,
ÂÂf g
removeContext
ÂÂh u
,
ÂÂu v
_logger
ÂÂw ~
)
ÂÂ~ 
;ÂÂ Ä
}
ÊÊ 
}
ÁÁ 	
private
ÈÈ 
async
ÈÈ 
Task
ÈÈ )
RemovePublishedVersionAsync
ÈÈ 6
(
ÈÈ6 7
ContentItem
ÈÈ7 B
contentItem
ÈÈC N
,
ÈÈN O
IEnumerable
ÈÈP [
<
ÈÈ[ \
ContentItem
ÈÈ\ g
>
ÈÈg h
evictionVersions
ÈÈi y
)
ÈÈy z
{
ÍÍ 	
ContentItem
ÎÎ 
publishedVersion
ÎÎ (
;
ÎÎ( )
if
ÏÏ 
(
ÏÏ 
evictionVersions
ÏÏ  
==
ÏÏ! #
null
ÏÏ$ (
)
ÏÏ( )
{
ÌÌ 
publishedVersion
ÓÓ  
=
ÓÓ! "
await
ÓÓ# (
_session
ÓÓ) 1
.
ÓÓ1 2
Query
ÓÓ2 7
<
ÓÓ7 8
ContentItem
ÓÓ8 C
,
ÓÓC D
ContentItemIndex
ÓÓE U
>
ÓÓU V
(
ÓÓV W
)
ÓÓW X
.
ÔÔ 
Where
ÔÔ 
(
ÔÔ 
x
ÔÔ 
=>
ÔÔ 
x
ÔÔ  !
.
ÔÔ! "
ContentItemId
ÔÔ" /
==
ÔÔ0 2
contentItem
ÔÔ3 >
.
ÔÔ> ?
ContentItemId
ÔÔ? L
&&
ÔÔM O
x
ÔÔP Q
.
ÔÔQ R
	Published
ÔÔR [
)
ÔÔ[ \
.
 !
FirstOrDefaultAsync
 (
(
( )
)
) *
;
* +
}
ÒÒ 
else
ÚÚ 
{
ÛÛ 
publishedVersion
ÙÙ  
=
ÙÙ! "
evictionVersions
ÙÙ# 3
.
ÙÙ3 4
FirstOrDefault
ÙÙ4 B
(
ÙÙB C
x
ÙÙC D
=>
ÙÙE G
x
ÙÙH I
.
ÙÙI J
	Published
ÙÙJ S
)
ÙÙS T
;
ÙÙT U
}
ıı 
if
˜˜ 
(
˜˜ 
publishedVersion
˜˜  
!=
˜˜! #
null
˜˜$ (
)
˜˜( )
{
¯¯ 
var
˘˘ 
removeContext
˘˘ !
=
˘˘" #
new
˘˘$ '"
RemoveContentContext
˘˘( <
(
˘˘< =
contentItem
˘˘= H
,
˘˘H I
true
˘˘J N
)
˘˘N O
;
˘˘O P
await
˚˚ 
Handlers
˚˚ 
.
˚˚ 
InvokeAsync
˚˚ *
(
˚˚* +
(
˚˚+ ,
handler
˚˚, 3
,
˚˚3 4
context
˚˚5 <
)
˚˚< =
=>
˚˚> @
handler
˚˚A H
.
˚˚H I
RemovingAsync
˚˚I V
(
˚˚V W
context
˚˚W ^
)
˚˚^ _
,
˚˚_ `
removeContext
˚˚a n
,
˚˚n o
_logger
˚˚p w
)
˚˚w x
;
˚˚x y
publishedVersion
˝˝  
.
˝˝  !
	Published
˝˝! *
=
˝˝+ ,
false
˝˝- 2
;
˝˝2 3
_session
˛˛ 
.
˛˛ 
Save
˛˛ 
(
˛˛ 
publishedVersion
˛˛ .
)
˛˛. /
;
˛˛/ 0
await
ÄÄ 
ReversedHandlers
ÄÄ &
.
ÄÄ& '
InvokeAsync
ÄÄ' 2
(
ÄÄ2 3
(
ÄÄ3 4
handler
ÄÄ4 ;
,
ÄÄ; <
context
ÄÄ= D
)
ÄÄD E
=>
ÄÄF H
handler
ÄÄI P
.
ÄÄP Q
RemovedAsync
ÄÄQ ]
(
ÄÄ] ^
context
ÄÄ^ e
)
ÄÄe f
,
ÄÄf g
removeContext
ÄÄh u
,
ÄÄu v
_logger
ÄÄw ~
)
ÄÄ~ 
;ÄÄ Ä
}
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
async
ÑÑ 
Task
ÑÑ !
RemoveVersionsAsync
ÑÑ .
(
ÑÑ. /
ContentItem
ÑÑ/ :
contentItem
ÑÑ; F
,
ÑÑF G
IEnumerable
ÑÑH S
<
ÑÑS T
ContentItem
ÑÑT _
>
ÑÑ_ `
evictionVersions
ÑÑa q
)
ÑÑq r
{
ÖÖ 	
IEnumerable
ÜÜ 
<
ÜÜ 
ContentItem
ÜÜ #
>
ÜÜ# $
activeVersions
ÜÜ% 3
;
ÜÜ3 4
if
áá 
(
áá 
evictionVersions
áá  
==
áá! #
null
áá$ (
)
áá( )
{
àà 
activeVersions
ââ 
=
ââ  
await
ââ! &
_session
ââ' /
.
ââ/ 0
Query
ââ0 5
<
ââ5 6
ContentItem
ââ6 A
,
ââA B
ContentItemIndex
ââC S
>
ââS T
(
ââT U
)
ââU V
.
ää 
Where
ää 
(
ää 
x
ää 
=>
ää 
x
ãã 
.
ãã 
ContentItemId
ãã '
==
ãã( *
contentItem
ãã+ 6
.
ãã6 7
ContentItemId
ãã7 D
&&
ããE G
(
åå 
x
åå 
.
åå 
	Published
åå $
||
åå% '
x
åå( )
.
åå) *
Latest
åå* 0
)
åå0 1
)
åå1 2
.
åå2 3
	ListAsync
åå3 <
(
åå< =
)
åå= >
;
åå> ?
}
çç 
else
éé 
{
èè 
activeVersions
êê 
=
êê  
evictionVersions
êê! 1
.
êê1 2
Where
êê2 7
(
êê7 8
x
êê8 9
=>
êê: <
x
êê= >
.
êê> ?
Latest
êê? E
||
êêF H
x
êêI J
.
êêJ K
	Published
êêK T
)
êêT U
;
êêU V
}
ëë 
if
ìì 
(
ìì 
activeVersions
ìì 
.
ìì 
Any
ìì "
(
ìì" #
)
ìì# $
)
ìì$ %
{
îî 
var
ïï 
removeContext
ïï !
=
ïï" #
new
ïï$ '"
RemoveContentContext
ïï( <
(
ïï< =
contentItem
ïï= H
,
ïïH I
true
ïïJ N
)
ïïN O
;
ïïO P
await
óó 
Handlers
óó 
.
óó 
InvokeAsync
óó *
(
óó* +
(
óó+ ,
handler
óó, 3
,
óó3 4
context
óó5 <
)
óó< =
=>
óó> @
handler
óóA H
.
óóH I
RemovingAsync
óóI V
(
óóV W
context
óóW ^
)
óó^ _
,
óó_ `
removeContext
óóa n
,
óón o
_logger
óóp w
)
óów x
;
óóx y
foreach
ôô 
(
ôô 
var
ôô 
version
ôô $
in
ôô% '
activeVersions
ôô( 6
)
ôô6 7
{
öö 
version
õõ 
.
õõ 
	Published
õõ %
=
õõ& '
false
õõ( -
;
õõ- .
version
úú 
.
úú 
Latest
úú "
=
úú# $
false
úú% *
;
úú* +
_session
ùù 
.
ùù 
Save
ùù !
(
ùù! "
version
ùù" )
)
ùù) *
;
ùù* +
}
ûû 
await
†† 
ReversedHandlers
†† &
.
††& '
InvokeAsync
††' 2
(
††2 3
(
††3 4
handler
††4 ;
,
††; <
context
††= D
)
††D E
=>
††F H
handler
††I P
.
††P Q
RemovedAsync
††Q ]
(
††] ^
context
††^ e
)
††e f
,
††f g
removeContext
††h u
,
††u v
_logger
††w ~
)
††~ 
;†† Ä
}
°° 
}
¢¢ 	
}
££ 
}§§ ¢ 
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\DefaultContentManagerSession.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class (
DefaultContentManagerSession -
:. /"
IContentManagerSession0 F
{ 
private 
readonly 

Dictionary #
<# $
int$ '
,' (
ContentItem) 4
>4 5
_itemByVersionId6 F
=G H
newI L

DictionaryM W
<W X
intX [
,[ \
ContentItem] h
>h i
(i j
)j k
;k l
private 
readonly 

Dictionary #
<# $
string$ *
,* +
ContentItem, 7
>7 8
_publishedItemsById9 L
=M N
newO R

DictionaryS ]
<] ^
string^ d
,d e
ContentItemf q
>q r
(r s
)s t
;t u
private

 
bool

 
	_hasItems

 
;

 
public 
void 
Store 
( 
ContentItem %
item& *
)* +
{ 	
	_hasItems 
= 
true 
; 
if 
( 
! 
_itemByVersionId !
.! "
TryGetValue" -
(- .
item. 2
.2 3
Id3 5
,5 6
out7 :
var; >
existing? G
)G H
||I K
existingL T
!=U W
itemX \
)\ ]
{ 
_itemByVersionId  
.  !
Add! $
($ %
item% )
.) *
Id* ,
,, -
item. 2
)2 3
;3 4
} 
if 
( 
item 
. 
	Published 
) 
{ 
_publishedItemsById #
[# $
item$ (
.( )
ContentItemId) 6
]6 7
=8 9
item: >
;> ?
} 
} 	
public 
bool 
RecallVersionId #
(# $
int$ '
id( *
,* +
out, /
ContentItem0 ;
item< @
)@ A
{ 	
if 
( 
! 
	_hasItems 
) 
{   
item!! 
=!! 
null!! 
;!! 
return"" 
false"" 
;"" 
}## 
return%% 
_itemByVersionId%% #
.%%# $
TryGetValue%%$ /
(%%/ 0
id%%0 2
,%%2 3
out%%4 7
item%%8 <
)%%< =
;%%= >
}&& 	
public(( 
bool(( !
RecallPublishedItemId(( )
((() *
string((* 0
id((1 3
,((3 4
out((5 8
ContentItem((9 D
item((E I
)((I J
{)) 	
if** 
(** 
!** 
	_hasItems** 
)** 
{++ 
item,, 
=,, 
null,, 
;,, 
return-- 
false-- 
;-- 
}.. 
return00 
_publishedItemsById00 &
.00& '
TryGetValue00' 2
(002 3
id003 5
,005 6
out007 :
item00; ?
)00? @
;00@ A
}11 	
public33 
void33 
Clear33 
(33 
)33 
{44 	
_itemByVersionId55 
.55 
Clear55 "
(55" #
)55# $
;55$ %
_publishedItemsById66 
.66  
Clear66  %
(66% &
)66& '
;66' (
	_hasItems77 
=77 
false77 
;77 
}88 	
}99 
}:: ı
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\FileContentDefinitionStore.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class &
FileContentDefinitionStore +
:, -#
IContentDefinitionStore. E
{		 
private

 
readonly

 
IDocumentManager

 )
<

) *
IFileDocumentStore

* <
,

< =#
ContentDefinitionRecord

> U
>

U V
_documentManager

W g
;

g h
public &
FileContentDefinitionStore )
() *
IDocumentManager* :
<: ;
IFileDocumentStore; M
,M N#
ContentDefinitionRecordO f
>f g
documentManagerh w
)w x
{ 	
_documentManager 
= 
documentManager .
;. /
} 	
public 
Task 
< #
ContentDefinitionRecord +
>+ ,&
LoadContentDefinitionAsync- G
(G H
)H I
=>J L
_documentManagerM ]
.] ^#
GetOrCreateMutableAsync^ u
(u v
)v w
;w x
public 
Task 
< #
ContentDefinitionRecord +
>+ ,%
GetContentDefinitionAsync- F
(F G
)G H
=>I K
_documentManagerL \
.\ ]%
GetOrCreateImmutableAsync] v
(v w
)w x
;x y
public 
Task &
SaveContentDefinitionAsync .
(. /#
ContentDefinitionRecord/ F#
contentDefinitionRecordG ^
)^ _
=>` b
_documentManagerc s
.s t
UpdateAsynct 
(	 Ä%
contentDefinitionRecord
Ä ó
)
ó ò
;
ò ô
} 
} §
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\GenericTypeActivator.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
internal 
class  
GenericTypeActivator '
<' (
T( )
,) *
	TInstance+ 4
>4 5
:6 7
ITypeActivator8 F
<F G
	TInstanceG P
>P Q
whereR W
TX Y
:Z [
	TInstance\ e
,e f
newg j
(j k
)k l
{ 
public 
Type 
Type 
=> 
typeof "
(" #
T# $
)$ %
;% &
public 
	TInstance 
CreateInstance '
(' (
)( )
{ 	
return 
new 
T 
( 
) 
; 
} 	
} 
} £Ì
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Handlers\ContentPartHandlerCoordinator.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{		 
public 

class )
ContentPartHandlerCoordinator .
:/ 0
ContentHandlerBase1 C
{ 
private 
readonly '
IContentPartHandlerResolver 4'
_contentPartHandlerResolver5 P
;P Q
private 
readonly !
ITypeActivatorFactory .
<. /
ContentPart/ :
>: ;
_contentPartFactory< O
;O P
private 
readonly 
IEnumerable $
<$ %
IContentPartHandler% 8
>8 9
_partHandlers: G
;G H
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly !
ITypeActivatorFactory .
<. /
ContentField/ ;
>; < 
_contentFieldFactory= Q
;Q R
private 
readonly 
ILogger  
_logger! (
;( )
public )
ContentPartHandlerCoordinator ,
(, -'
IContentPartHandlerResolver '&
contentPartHandlerResolver( B
,B C!
ITypeActivatorFactory !
<! "
ContentPart" -
>- .
contentPartFactory/ A
,A B
IEnumerable 
< 
IContentPartHandler +
>+ ,
partHandlers- 9
,9 :!
ITypeActivatorFactory !
<! "
ContentField" .
>. /
contentFieldFactory0 C
,C D%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
ILogger 
< )
ContentPartHandlerCoordinator 1
>1 2
logger3 9
)9 :
{ 	'
_contentPartHandlerResolver '
=( )&
contentPartHandlerResolver* D
;D E
_contentPartFactory 
=  !
contentPartFactory" 4
;4 5 
_contentFieldFactory    
=  ! "
contentFieldFactory  # 6
;  6 7
_partHandlers!! 
=!! 
partHandlers!! (
;!!( )%
_contentDefinitionManager"" %
=""& '$
contentDefinitionManager""( @
;""@ A
foreach$$ 
($$ 
var$$ 
element$$  
in$$! #
partHandlers$$$ 0
.$$0 1
Select$$1 7
($$7 8
x$$8 9
=>$$: <
x$$= >
.$$> ?
GetType$$? F
($$F G
)$$G H
)$$H I
)$$I J
{%% 
logger&& 
.&& 

LogWarning&& !
(&&! "
$str	&&" é
,
&&é è
element
&&ê ó
)
&&ó ò
;
&&ò ô
}'' 
_logger)) 
=)) 
logger)) 
;)) 
}** 	
public,, 
override,, 
async,, 
Task,, "
ActivatingAsync,,# 2
(,,2 3$
ActivatingContentContext,,3 K
context,,L S
),,S T
{-- 	
var11 !
contentTypeDefinition11 %
=11& '%
_contentDefinitionManager11( A
.11A B
GetTypeDefinition11B S
(11S T
context11T [
.11[ \
ContentType11\ g
)11g h
;11h i
if22 
(22 !
contentTypeDefinition22 %
==22& (
null22) -
)22- .
return33 
;33 
foreach55 
(55 
var55 
typePartDefinition55 +
in55, .!
contentTypeDefinition55/ D
.55D E
Parts55E J
)55J K
{66 
var77 
partName77 
=77 
typePartDefinition77 1
.771 2
PartDefinition772 @
.77@ A
Name77A E
;77E F
var:: 
part:: 
=:: 
_contentPartFactory:: .
.::. /
GetTypeActivator::/ ?
(::? @
partName::@ H
)::H I
.::I J
CreateInstance::J X
(::X Y
)::Y Z
;::Z [
var;; 
partHandlers;;  
=;;! "'
_contentPartHandlerResolver;;# >
.;;> ?
GetHandlers;;? J
(;;J K
partName;;K S
);;S T
;;;T U
await<< 
partHandlers<< "
.<<" #
InvokeAsync<<# .
(<<. /
(<</ 0
handler<<0 7
,<<7 8
context<<9 @
,<<@ A
part<<B F
)<<F G
=><<H J
handler<<K R
.<<R S
ActivatingAsync<<S b
(<<b c
context<<c j
,<<j k
part<<l p
)<<p q
,<<q r
context<<s z
,<<z {
part	<<| Ä
,
<<Ä Å
_logger
<<Ç â
)
<<â ä
;
<<ä ã
await?? 
_partHandlers?? #
.??# $
InvokeAsync??$ /
(??/ 0
(??0 1
handler??1 8
,??8 9
context??: A
,??A B
part??C G
)??G H
=>??I K
handler??L S
.??S T
ActivatingAsync??T c
(??c d
context??d k
,??k l
part??m q
)??q r
,??r s
context??t {
,??{ |
part	??} Å
,
??Å Ç
_logger
??É ä
)
??ä ã
;
??ã å
context@@ 
.@@ 
Builder@@ 
.@@  
Weld@@  $
(@@$ %
typePartDefinition@@% 7
.@@7 8
Name@@8 <
,@@< =
part@@> B
)@@B C
;@@C D
}AA 
}BB 	
publicDD 
overrideDD 
asyncDD 
TaskDD "
ActivatedAsyncDD# 1
(DD1 2#
ActivatedContentContextDD2 I
contextDDJ Q
)DDQ R
{EE 	
varFF !
contentTypeDefinitionFF %
=FF& '%
_contentDefinitionManagerFF( A
.FFA B
GetTypeDefinitionFFB S
(FFS T
contextFFT [
.FF[ \
ContentItemFF\ g
.FFg h
ContentTypeFFh s
)FFs t
;FFt u
ifGG 
(GG !
contentTypeDefinitionGG %
==GG& (
nullGG) -
)GG- .
returnHH 
;HH 
foreachJJ 
(JJ 
varJJ 
typePartDefinitionJJ +
inJJ, .!
contentTypeDefinitionJJ/ D
.JJD E
PartsJJE J
)JJJ K
{KK 
varLL 
partNameLL 
=LL 
typePartDefinitionLL 1
.LL1 2
PartDefinitionLL2 @
.LL@ A
NameLLA E
;LLE F
varMM 
	activatorMM 
=MM 
_contentPartFactoryMM  3
.MM3 4
GetTypeActivatorMM4 D
(MMD E
partNameMME M
)MMM N
;MMN O
varNN 
partNN 
=NN 
contextNN "
.NN" #
ContentItemNN# .
.NN. /
GetNN/ 2
(NN2 3
	activatorNN3 <
.NN< =
TypeNN= A
,NNA B
partNameNNC K
)NNK L
asNNM O
ContentPartNNP [
;NN[ \
ifPP 
(PP 
partPP 
!=PP 
nullPP  
)PP  !
{QQ 
varRR 
partHandlersRR $
=RR% &'
_contentPartHandlerResolverRR' B
.RRB C
GetHandlersRRC N
(RRN O
partNameRRO W
)RRW X
;RRX Y
awaitSS 
partHandlersSS &
.SS& '
InvokeAsyncSS' 2
(SS2 3
(SS3 4
handlerSS4 ;
,SS; <
contextSS= D
,SSD E
partSSF J
)SSJ K
=>SSL N
handlerSSO V
.SSV W
ActivatedAsyncSSW e
(SSe f
contextSSf m
,SSm n
partSSo s
)SSs t
,SSt u
contextSSv }
,SS} ~
part	SS É
,
SSÉ Ñ
_logger
SSÖ å
)
SSå ç
;
SSç é
awaitVV 
_partHandlersVV '
.VV' (
InvokeAsyncVV( 3
(VV3 4
(VV4 5
handlerVV5 <
,VV< =
contextVV> E
,VVE F
partVVG K
)VVK L
=>VVM O
handlerVVP W
.VVW X
ActivatedAsyncVVX f
(VVf g
contextVVg n
,VVn o
partVVp t
)VVt u
,VVu v
contextVVw ~
,VV~ 
part
VVÄ Ñ
,
VVÑ Ö
_logger
VVÜ ç
)
VVç é
;
VVé è
}WW 
}XX 
}YY 	
public[[ 
override[[ 
async[[ 
Task[[ "
CreatingAsync[[# 0
([[0 1 
CreateContentContext[[1 E
context[[F M
)[[M N
{\\ 	
var]] !
contentTypeDefinition]] %
=]]& '%
_contentDefinitionManager]]( A
.]]A B
GetTypeDefinition]]B S
(]]S T
context]]T [
.]][ \
ContentItem]]\ g
.]]g h
ContentType]]h s
)]]s t
;]]t u
if^^ 
(^^ !
contentTypeDefinition^^ %
==^^& (
null^^) -
)^^- .
return__ 
;__ 
foreachaa 
(aa 
varaa 
typePartDefinitionaa +
inaa, .!
contentTypeDefinitionaa/ D
.aaD E
PartsaaE J
)aaJ K
{bb 
varcc 
partNamecc 
=cc 
typePartDefinitioncc 1
.cc1 2
PartDefinitioncc2 @
.cc@ A
NameccA E
;ccE F
vardd 
	activatordd 
=dd 
_contentPartFactorydd  3
.dd3 4
GetTypeActivatordd4 D
(ddD E
partNameddE M
)ddM N
;ddN O
varff 
partff 
=ff 
contextff "
.ff" #
ContentItemff# .
.ff. /
Getff/ 2
(ff2 3
	activatorff3 <
.ff< =
Typeff= A
,ffA B
typePartDefinitionffC U
.ffU V
NameffV Z
)ffZ [
asff\ ^
ContentPartff_ j
;ffj k
ifhh 
(hh 
parthh 
!=hh 
nullhh  
)hh  !
{ii 
varjj 
partHandlersjj $
=jj% &'
_contentPartHandlerResolverjj' B
.jjB C
GetHandlersjjC N
(jjN O
partNamejjO W
)jjW X
;jjX Y
awaitkk 
partHandlerskk &
.kk& '
InvokeAsynckk' 2
(kk2 3
(kk3 4
handlerkk4 ;
,kk; <
contextkk= D
,kkD E
partkkF J
)kkJ K
=>kkL N
handlerkkO V
.kkV W
CreatingAsynckkW d
(kkd e
contextkke l
,kkl m
partkkn r
)kkr s
,kks t
contextkku |
,kk| }
part	kk~ Ç
,
kkÇ É
_logger
kkÑ ã
)
kkã å
;
kkå ç
awaitnn 
_partHandlersnn '
.nn' (
InvokeAsyncnn( 3
(nn3 4
(nn4 5
handlernn5 <
,nn< =
contextnn> E
,nnE F
partnnG K
)nnK L
=>nnM O
handlernnP W
.nnW X
CreatingAsyncnnX e
(nne f
contextnnf m
,nnm n
partnno s
)nns t
,nnt u
contextnnv }
,nn} ~
part	nn É
,
nnÉ Ñ
_logger
nnÖ å
)
nnå ç
;
nnç é
}oo 
}pp 
}qq 	
publicss 
overridess 
asyncss 
Taskss "
CreatedAsyncss# /
(ss/ 0 
CreateContentContextss0 D
contextssE L
)ssL M
{tt 	
varuu !
contentTypeDefinitionuu %
=uu& '%
_contentDefinitionManageruu( A
.uuA B
GetTypeDefinitionuuB S
(uuS T
contextuuT [
.uu[ \
ContentItemuu\ g
.uug h
ContentTypeuuh s
)uus t
;uut u
ifvv 
(vv !
contentTypeDefinitionvv %
==vv& (
nullvv) -
)vv- .
returnww 
;ww 
foreachyy 
(yy 
varyy 
typePartDefinitionyy +
inyy, .!
contentTypeDefinitionyy/ D
.yyD E
PartsyyE J
)yyJ K
{zz 
var{{ 
partName{{ 
={{ 
typePartDefinition{{ 1
.{{1 2
PartDefinition{{2 @
.{{@ A
Name{{A E
;{{E F
var|| 
	activator|| 
=|| 
_contentPartFactory||  3
.||3 4
GetTypeActivator||4 D
(||D E
partName||E M
)||M N
;||N O
var~~ 
part~~ 
=~~ 
context~~ "
.~~" #
ContentItem~~# .
.~~. /
Get~~/ 2
(~~2 3
	activator~~3 <
.~~< =
Type~~= A
,~~A B
typePartDefinition~~C U
.~~U V
Name~~V Z
)~~Z [
as~~\ ^
ContentPart~~_ j
;~~j k
if
ÄÄ 
(
ÄÄ 
part
ÄÄ 
!=
ÄÄ 
null
ÄÄ  
)
ÄÄ  !
{
ÅÅ 
var
ÇÇ 
partHandlers
ÇÇ $
=
ÇÇ% &)
_contentPartHandlerResolver
ÇÇ' B
.
ÇÇB C
GetHandlers
ÇÇC N
(
ÇÇN O
partName
ÇÇO W
)
ÇÇW X
;
ÇÇX Y
await
ÉÉ 
partHandlers
ÉÉ &
.
ÉÉ& '
InvokeAsync
ÉÉ' 2
(
ÉÉ2 3
(
ÉÉ3 4
handler
ÉÉ4 ;
,
ÉÉ; <
context
ÉÉ= D
,
ÉÉD E
part
ÉÉF J
)
ÉÉJ K
=>
ÉÉL N
handler
ÉÉO V
.
ÉÉV W
CreatedAsync
ÉÉW c
(
ÉÉc d
context
ÉÉd k
,
ÉÉk l
part
ÉÉm q
)
ÉÉq r
,
ÉÉr s
context
ÉÉt {
,
ÉÉ{ |
partÉÉ} Å
,ÉÉÅ Ç
_loggerÉÉÉ ä
)ÉÉä ã
;ÉÉã å
await
ÜÜ 
_partHandlers
ÜÜ '
.
ÜÜ' (
InvokeAsync
ÜÜ( 3
(
ÜÜ3 4
(
ÜÜ4 5
handler
ÜÜ5 <
,
ÜÜ< =
context
ÜÜ> E
,
ÜÜE F
part
ÜÜG K
)
ÜÜK L
=>
ÜÜM O
handler
ÜÜP W
.
ÜÜW X
CreatedAsync
ÜÜX d
(
ÜÜd e
context
ÜÜe l
,
ÜÜl m
part
ÜÜn r
)
ÜÜr s
,
ÜÜs t
context
ÜÜu |
,
ÜÜ| }
partÜÜ~ Ç
,ÜÜÇ É
_loggerÜÜÑ ã
)ÜÜã å
;ÜÜå ç
}
áá 
}
àà 
}
ââ 	
public
ãã 
override
ãã 
async
ãã 
Task
ãã "
ImportingAsync
ãã# 1
(
ãã1 2"
ImportContentContext
ãã2 F
context
ããG N
)
ããN O
{
åå 	
var
çç #
contentTypeDefinition
çç %
=
çç& ''
_contentDefinitionManager
çç( A
.
ççA B
GetTypeDefinition
ççB S
(
ççS T
context
ççT [
.
çç[ \
ContentItem
çç\ g
.
ççg h
ContentType
ççh s
)
ççs t
;
ççt u
if
éé 
(
éé #
contentTypeDefinition
éé %
==
éé& (
null
éé) -
)
éé- .
return
èè 
;
èè 
foreach
ëë 
(
ëë 
var
ëë  
typePartDefinition
ëë +
in
ëë, .#
contentTypeDefinition
ëë/ D
.
ëëD E
Parts
ëëE J
)
ëëJ K
{
íí 
var
ìì 
partName
ìì 
=
ìì  
typePartDefinition
ìì 1
.
ìì1 2
PartDefinition
ìì2 @
.
ìì@ A
Name
ììA E
;
ììE F
var
îî 
	activator
îî 
=
îî !
_contentPartFactory
îî  3
.
îî3 4
GetTypeActivator
îî4 D
(
îîD E
partName
îîE M
)
îîM N
;
îîN O
var
ññ 
part
ññ 
=
ññ 
context
ññ "
.
ññ" #
ContentItem
ññ# .
.
ññ. /
Get
ññ/ 2
(
ññ2 3
	activator
ññ3 <
.
ññ< =
Type
ññ= A
,
ññA B 
typePartDefinition
ññC U
.
ññU V
Name
ññV Z
)
ññZ [
as
ññ\ ^
ContentPart
ññ_ j
;
ññj k
if
òò 
(
òò 
part
òò 
!=
òò 
null
òò  
)
òò  !
{
ôô 
var
öö 
partHandlers
öö $
=
öö% &)
_contentPartHandlerResolver
öö' B
.
ööB C
GetHandlers
ööC N
(
ööN O
partName
ööO W
)
ööW X
;
ööX Y
await
õõ 
partHandlers
õõ &
.
õõ& '
InvokeAsync
õõ' 2
(
õõ2 3
(
õõ3 4
handler
õõ4 ;
,
õõ; <
context
õõ= D
,
õõD E
part
õõF J
)
õõJ K
=>
õõL N
handler
õõO V
.
õõV W
ImportingAsync
õõW e
(
õõe f
context
õõf m
,
õõm n
part
õõo s
)
õõs t
,
õõt u
context
õõv }
,
õõ} ~
partõõ É
,õõÉ Ñ
_loggerõõÖ å
)õõå ç
;õõç é
await
ûû 
_partHandlers
ûû '
.
ûû' (
InvokeAsync
ûû( 3
(
ûû3 4
(
ûû4 5
handler
ûû5 <
,
ûû< =
context
ûû> E
,
ûûE F
part
ûûG K
)
ûûK L
=>
ûûM O
handler
ûûP W
.
ûûW X
ImportingAsync
ûûX f
(
ûûf g
context
ûûg n
,
ûûn o
part
ûûp t
)
ûût u
,
ûûu v
context
ûûw ~
,
ûû~ 
partûûÄ Ñ
,ûûÑ Ö
_loggerûûÜ ç
)ûûç é
;ûûé è
}
üü 
}
†† 
}
°° 	
public
££ 
override
££ 
async
££ 
Task
££ "
ImportedAsync
££# 0
(
££0 1"
ImportContentContext
££1 E
context
££F M
)
££M N
{
§§ 	
var
•• #
contentTypeDefinition
•• %
=
••& ''
_contentDefinitionManager
••( A
.
••A B
GetTypeDefinition
••B S
(
••S T
context
••T [
.
••[ \
ContentItem
••\ g
.
••g h
ContentType
••h s
)
••s t
;
••t u
if
¶¶ 
(
¶¶ #
contentTypeDefinition
¶¶ %
==
¶¶& (
null
¶¶) -
)
¶¶- .
return
ßß 
;
ßß 
foreach
©© 
(
©© 
var
©©  
typePartDefinition
©© +
in
©©, .#
contentTypeDefinition
©©/ D
.
©©D E
Parts
©©E J
)
©©J K
{
™™ 
var
´´ 
partName
´´ 
=
´´  
typePartDefinition
´´ 1
.
´´1 2
PartDefinition
´´2 @
.
´´@ A
Name
´´A E
;
´´E F
var
¨¨ 
	activator
¨¨ 
=
¨¨ !
_contentPartFactory
¨¨  3
.
¨¨3 4
GetTypeActivator
¨¨4 D
(
¨¨D E
partName
¨¨E M
)
¨¨M N
;
¨¨N O
var
ÆÆ 
part
ÆÆ 
=
ÆÆ 
context
ÆÆ "
.
ÆÆ" #
ContentItem
ÆÆ# .
.
ÆÆ. /
Get
ÆÆ/ 2
(
ÆÆ2 3
	activator
ÆÆ3 <
.
ÆÆ< =
Type
ÆÆ= A
,
ÆÆA B 
typePartDefinition
ÆÆC U
.
ÆÆU V
Name
ÆÆV Z
)
ÆÆZ [
as
ÆÆ\ ^
ContentPart
ÆÆ_ j
;
ÆÆj k
if
∞∞ 
(
∞∞ 
part
∞∞ 
!=
∞∞ 
null
∞∞  
)
∞∞  !
{
±± 
var
≤≤ 
partHandlers
≤≤ $
=
≤≤% &)
_contentPartHandlerResolver
≤≤' B
.
≤≤B C
GetHandlers
≤≤C N
(
≤≤N O
partName
≤≤O W
)
≤≤W X
;
≤≤X Y
await
≥≥ 
partHandlers
≥≥ &
.
≥≥& '
InvokeAsync
≥≥' 2
(
≥≥2 3
(
≥≥3 4
handler
≥≥4 ;
,
≥≥; <
context
≥≥= D
,
≥≥D E
part
≥≥F J
)
≥≥J K
=>
≥≥L N
handler
≥≥O V
.
≥≥V W
ImportedAsync
≥≥W d
(
≥≥d e
context
≥≥e l
,
≥≥l m
part
≥≥n r
)
≥≥r s
,
≥≥s t
context
≥≥u |
,
≥≥| }
part≥≥~ Ç
,≥≥Ç É
_logger≥≥Ñ ã
)≥≥ã å
;≥≥å ç
await
∂∂ 
_partHandlers
∂∂ '
.
∂∂' (
InvokeAsync
∂∂( 3
(
∂∂3 4
(
∂∂4 5
handler
∂∂5 <
,
∂∂< =
context
∂∂> E
,
∂∂E F
part
∂∂G K
)
∂∂K L
=>
∂∂M O
handler
∂∂P W
.
∂∂W X
ImportedAsync
∂∂X e
(
∂∂e f
context
∂∂f m
,
∂∂m n
part
∂∂o s
)
∂∂s t
,
∂∂t u
context
∂∂v }
,
∂∂} ~
part∂∂ É
,∂∂É Ñ
_logger∂∂Ö å
)∂∂å ç
;∂∂ç é
}
∑∑ 
}
∏∏ 
}
ππ 	
public
ªª 
override
ªª 
async
ªª 
Task
ªª "
InitializingAsync
ªª# 4
(
ªª4 5(
InitializingContentContext
ªª5 O
context
ªªP W
)
ªªW X
{
ºº 	
var
ΩΩ #
contentTypeDefinition
ΩΩ %
=
ΩΩ& ''
_contentDefinitionManager
ΩΩ( A
.
ΩΩA B
GetTypeDefinition
ΩΩB S
(
ΩΩS T
context
ΩΩT [
.
ΩΩ[ \
ContentItem
ΩΩ\ g
.
ΩΩg h
ContentType
ΩΩh s
)
ΩΩs t
;
ΩΩt u
if
ææ 
(
ææ #
contentTypeDefinition
ææ %
==
ææ& (
null
ææ) -
)
ææ- .
return
øø 
;
øø 
foreach
¡¡ 
(
¡¡ 
var
¡¡  
typePartDefinition
¡¡ +
in
¡¡, .#
contentTypeDefinition
¡¡/ D
.
¡¡D E
Parts
¡¡E J
)
¡¡J K
{
¬¬ 
var
√√ 
partName
√√ 
=
√√  
typePartDefinition
√√ 1
.
√√1 2
PartDefinition
√√2 @
.
√√@ A
Name
√√A E
;
√√E F
var
ƒƒ 
	activator
ƒƒ 
=
ƒƒ !
_contentPartFactory
ƒƒ  3
.
ƒƒ3 4
GetTypeActivator
ƒƒ4 D
(
ƒƒD E
partName
ƒƒE M
)
ƒƒM N
;
ƒƒN O
var
∆∆ 
part
∆∆ 
=
∆∆ 
context
∆∆ "
.
∆∆" #
ContentItem
∆∆# .
.
∆∆. /
Get
∆∆/ 2
(
∆∆2 3
	activator
∆∆3 <
.
∆∆< =
Type
∆∆= A
,
∆∆A B 
typePartDefinition
∆∆C U
.
∆∆U V
Name
∆∆V Z
)
∆∆Z [
as
∆∆\ ^
ContentPart
∆∆_ j
;
∆∆j k
if
«« 
(
«« 
part
«« 
!=
«« 
null
««  
)
««  !
{
»» 
var
…… 
partHandlers
…… $
=
……% &)
_contentPartHandlerResolver
……' B
.
……B C
GetHandlers
……C N
(
……N O
partName
……O W
)
……W X
;
……X Y
await
   
partHandlers
   &
.
  & '
InvokeAsync
  ' 2
(
  2 3
(
  3 4
handler
  4 ;
,
  ; <
context
  = D
,
  D E
part
  F J
)
  J K
=>
  L N
handler
  O V
.
  V W
InitializingAsync
  W h
(
  h i
context
  i p
,
  p q
part
  r v
)
  v w
,
  w x
context  y Ä
,  Ä Å
part  Ç Ü
,  Ü á
_logger  à è
)  è ê
;  ê ë
await
ÕÕ 
_partHandlers
ÕÕ '
.
ÕÕ' (
InvokeAsync
ÕÕ( 3
(
ÕÕ3 4
(
ÕÕ4 5
handler
ÕÕ5 <
,
ÕÕ< =
context
ÕÕ> E
,
ÕÕE F
part
ÕÕG K
)
ÕÕK L
=>
ÕÕM O
handler
ÕÕP W
.
ÕÕW X
InitializingAsync
ÕÕX i
(
ÕÕi j
context
ÕÕj q
,
ÕÕq r
part
ÕÕs w
)
ÕÕw x
,
ÕÕx y
contextÕÕz Å
,ÕÕÅ Ç
partÕÕÉ á
,ÕÕá à
_loggerÕÕâ ê
)ÕÕê ë
;ÕÕë í
}
ŒŒ 
}
œœ 
}
–– 	
public
““ 
override
““ 
async
““ 
Task
““ "
InitializedAsync
““# 3
(
““3 4(
InitializingContentContext
““4 N
context
““O V
)
““V W
{
”” 	
var
‘‘ #
contentTypeDefinition
‘‘ %
=
‘‘& ''
_contentDefinitionManager
‘‘( A
.
‘‘A B
GetTypeDefinition
‘‘B S
(
‘‘S T
context
‘‘T [
.
‘‘[ \
ContentItem
‘‘\ g
.
‘‘g h
ContentType
‘‘h s
)
‘‘s t
;
‘‘t u
if
’’ 
(
’’ #
contentTypeDefinition
’’ %
==
’’& (
null
’’) -
)
’’- .
return
÷÷ 
;
÷÷ 
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ  
typePartDefinition
ÿÿ +
in
ÿÿ, .#
contentTypeDefinition
ÿÿ/ D
.
ÿÿD E
Parts
ÿÿE J
)
ÿÿJ K
{
ŸŸ 
var
⁄⁄ 
partName
⁄⁄ 
=
⁄⁄  
typePartDefinition
⁄⁄ 1
.
⁄⁄1 2
PartDefinition
⁄⁄2 @
.
⁄⁄@ A
Name
⁄⁄A E
;
⁄⁄E F
var
€€ 
	activator
€€ 
=
€€ !
_contentPartFactory
€€  3
.
€€3 4
GetTypeActivator
€€4 D
(
€€D E
partName
€€E M
)
€€M N
;
€€N O
var
›› 
part
›› 
=
›› 
context
›› "
.
››" #
ContentItem
››# .
.
››. /
Get
››/ 2
(
››2 3
	activator
››3 <
.
››< =
Type
››= A
,
››A B 
typePartDefinition
››C U
.
››U V
Name
››V Z
)
››Z [
as
››\ ^
ContentPart
››_ j
;
››j k
if
ﬂﬂ 
(
ﬂﬂ 
part
ﬂﬂ 
!=
ﬂﬂ 
null
ﬂﬂ  
)
ﬂﬂ  !
{
‡‡ 
var
·· 
partHandlers
·· $
=
··% &)
_contentPartHandlerResolver
··' B
.
··B C
GetHandlers
··C N
(
··N O
partName
··O W
)
··W X
;
··X Y
await
‚‚ 
partHandlers
‚‚ &
.
‚‚& '
InvokeAsync
‚‚' 2
(
‚‚2 3
(
‚‚3 4
handler
‚‚4 ;
,
‚‚; <
context
‚‚= D
,
‚‚D E
part
‚‚F J
)
‚‚J K
=>
‚‚L N
handler
‚‚O V
.
‚‚V W
InitializedAsync
‚‚W g
(
‚‚g h
context
‚‚h o
,
‚‚o p
part
‚‚q u
)
‚‚u v
,
‚‚v w
context
‚‚x 
,‚‚ Ä
part‚‚Å Ö
,‚‚Ö Ü
_logger‚‚á é
)‚‚é è
;‚‚è ê
await
ÂÂ 
_partHandlers
ÂÂ '
.
ÂÂ' (
InvokeAsync
ÂÂ( 3
(
ÂÂ3 4
(
ÂÂ4 5
handler
ÂÂ5 <
,
ÂÂ< =
context
ÂÂ> E
,
ÂÂE F
part
ÂÂG K
)
ÂÂK L
=>
ÂÂM O
handler
ÂÂP W
.
ÂÂW X
InitializedAsync
ÂÂX h
(
ÂÂh i
context
ÂÂi p
,
ÂÂp q
part
ÂÂr v
)
ÂÂv w
,
ÂÂw x
contextÂÂy Ä
,ÂÂÄ Å
partÂÂÇ Ü
,ÂÂÜ á
_loggerÂÂà è
)ÂÂè ê
;ÂÂê ë
}
ÊÊ 
}
ÁÁ 
}
ËË 	
public
ÍÍ 
override
ÍÍ 
async
ÍÍ 
Task
ÍÍ "
LoadingAsync
ÍÍ# /
(
ÍÍ/ 0 
LoadContentContext
ÍÍ0 B
context
ÍÍC J
)
ÍÍJ K
{
ÎÎ 	
var
ÒÒ #
contentTypeDefinition
ÒÒ %
=
ÒÒ& ''
_contentDefinitionManager
ÒÒ( A
.
ÒÒA B
GetTypeDefinition
ÒÒB S
(
ÒÒS T
context
ÒÒT [
.
ÒÒ[ \
ContentItem
ÒÒ\ g
.
ÒÒg h
ContentType
ÒÒh s
)
ÒÒs t
;
ÒÒt u
if
ÚÚ 
(
ÚÚ #
contentTypeDefinition
ÚÚ %
==
ÚÚ& (
null
ÚÚ) -
)
ÚÚ- .
{
ÛÛ 
return
ÙÙ 
;
ÙÙ 
}
ıı 
foreach
˜˜ 
(
˜˜ 
var
˜˜  
typePartDefinition
˜˜ +
in
˜˜, .#
contentTypeDefinition
˜˜/ D
.
˜˜D E
Parts
˜˜E J
)
˜˜J K
{
¯¯ 
var
˘˘ 
partName
˘˘ 
=
˘˘  
typePartDefinition
˘˘ 1
.
˘˘1 2
PartDefinition
˘˘2 @
.
˘˘@ A
Name
˘˘A E
;
˘˘E F
var
˙˙ 
	activator
˙˙ 
=
˙˙ !
_contentPartFactory
˙˙  3
.
˙˙3 4
GetTypeActivator
˙˙4 D
(
˙˙D E
partName
˙˙E M
)
˙˙M N
;
˙˙N O
var
¸¸ 
part
¸¸ 
=
¸¸ 
context
¸¸ "
.
¸¸" #
ContentItem
¸¸# .
.
¸¸. /
Get
¸¸/ 2
(
¸¸2 3
	activator
¸¸3 <
.
¸¸< =
Type
¸¸= A
,
¸¸A B 
typePartDefinition
¸¸C U
.
¸¸U V
Name
¸¸V Z
)
¸¸Z [
as
¸¸\ ^
ContentPart
¸¸_ j
;
¸¸j k
if
ˇˇ 
(
ˇˇ 
part
ˇˇ 
==
ˇˇ 
null
ˇˇ  
)
ˇˇ  !
{
ÄÄ 
part
ÅÅ 
=
ÅÅ 
	activator
ÅÅ $
.
ÅÅ$ %
CreateInstance
ÅÅ% 3
(
ÅÅ3 4
)
ÅÅ4 5
;
ÅÅ5 6
context
ÇÇ 
.
ÇÇ 
ContentItem
ÇÇ '
.
ÇÇ' (
Weld
ÇÇ( ,
(
ÇÇ, - 
typePartDefinition
ÇÇ- ?
.
ÇÇ? @
Name
ÇÇ@ D
,
ÇÇD E
part
ÇÇF J
)
ÇÇJ K
;
ÇÇK L
}
ÉÉ 
var
ÖÖ 
partHandlers
ÖÖ  
=
ÖÖ! ")
_contentPartHandlerResolver
ÖÖ# >
.
ÖÖ> ?
GetHandlers
ÖÖ? J
(
ÖÖJ K
partName
ÖÖK S
)
ÖÖS T
;
ÖÖT U
await
ÜÜ 
partHandlers
ÜÜ "
.
ÜÜ" #
InvokeAsync
ÜÜ# .
(
ÜÜ. /
(
ÜÜ/ 0
handler
ÜÜ0 7
,
ÜÜ7 8
context
ÜÜ9 @
,
ÜÜ@ A
part
ÜÜB F
)
ÜÜF G
=>
ÜÜH J
handler
ÜÜK R
.
ÜÜR S
LoadingAsync
ÜÜS _
(
ÜÜ_ `
context
ÜÜ` g
,
ÜÜg h
part
ÜÜi m
)
ÜÜm n
,
ÜÜn o
context
ÜÜp w
,
ÜÜw x
part
ÜÜy }
,
ÜÜ} ~
_loggerÜÜ Ü
)ÜÜÜ á
;ÜÜá à
await
ââ 
_partHandlers
ââ #
.
ââ# $
InvokeAsync
ââ$ /
(
ââ/ 0
(
ââ0 1
handler
ââ1 8
,
ââ8 9
context
ââ: A
,
ââA B
part
ââC G
)
ââG H
=>
ââI K
handler
ââL S
.
ââS T
LoadingAsync
ââT `
(
ââ` a
context
ââa h
,
ââh i
part
ââj n
)
âân o
,
ââo p
context
ââq x
,
ââx y
part
ââz ~
,
ââ~ 
_loggerââÄ á
)ââá à
;ââà â
foreach
ää 
(
ää 
var
ää !
partFieldDefinition
ää 0
in
ää1 3 
typePartDefinition
ää4 F
.
ääF G
PartDefinition
ääG U
.
ääU V
Fields
ääV \
)
ää\ ]
{
ãã 
var
åå 
	fieldName
åå !
=
åå" #!
partFieldDefinition
åå$ 7
.
åå7 8
Name
åå8 <
;
åå< =
if
éé 
(
éé 
!
éé 
part
éé 
.
éé 
Has
éé !
(
éé! "
	fieldName
éé" +
)
éé+ ,
)
éé, -
{
èè 
var
êê 
fieldActivator
êê *
=
êê+ ,"
_contentFieldFactory
êê- A
.
êêA B
GetTypeActivator
êêB R
(
êêR S!
partFieldDefinition
êêS f
.
êêf g
FieldDefinition
êêg v
.
êêv w
Name
êêw {
)
êê{ |
;
êê| }
context
ëë 
.
ëë  
ContentItem
ëë  +
.
ëë+ ,
Get
ëë, /
<
ëë/ 0
ContentPart
ëë0 ;
>
ëë; <
(
ëë< = 
typePartDefinition
ëë= O
.
ëëO P
Name
ëëP T
)
ëëT U
.
ëëU V
Weld
ëëV Z
(
ëëZ [
	fieldName
ëë[ d
,
ëëd e
fieldActivator
ëëf t
.
ëët u
CreateInstanceëëu É
(ëëÉ Ñ
)ëëÑ Ö
)ëëÖ Ü
;ëëÜ á
}
íí 
}
ìì 
}
îî 
}
ïï 	
public
óó 
override
óó 
async
óó 
Task
óó "
LoadedAsync
óó# .
(
óó. / 
LoadContentContext
óó/ A
context
óóB I
)
óóI J
{
òò 	
var
ôô #
contentTypeDefinition
ôô %
=
ôô& ''
_contentDefinitionManager
ôô( A
.
ôôA B
GetTypeDefinition
ôôB S
(
ôôS T
context
ôôT [
.
ôô[ \
ContentItem
ôô\ g
.
ôôg h
ContentType
ôôh s
)
ôôs t
;
ôôt u
if
öö 
(
öö #
contentTypeDefinition
öö %
==
öö& (
null
öö) -
)
öö- .
return
õõ 
;
õõ 
foreach
ùù 
(
ùù 
var
ùù  
typePartDefinition
ùù +
in
ùù, .#
contentTypeDefinition
ùù/ D
.
ùùD E
Parts
ùùE J
)
ùùJ K
{
ûû 
var
üü 
partName
üü 
=
üü  
typePartDefinition
üü 1
.
üü1 2
PartDefinition
üü2 @
.
üü@ A
Name
üüA E
;
üüE F
var
†† 
	activator
†† 
=
†† !
_contentPartFactory
††  3
.
††3 4
GetTypeActivator
††4 D
(
††D E
partName
††E M
)
††M N
;
††N O
var
¢¢ 
part
¢¢ 
=
¢¢ 
context
¢¢ "
.
¢¢" #
ContentItem
¢¢# .
.
¢¢. /
Get
¢¢/ 2
(
¢¢2 3
	activator
¢¢3 <
.
¢¢< =
Type
¢¢= A
,
¢¢A B 
typePartDefinition
¢¢C U
.
¢¢U V
Name
¢¢V Z
)
¢¢Z [
as
¢¢\ ^
ContentPart
¢¢_ j
;
¢¢j k
if
§§ 
(
§§ 
part
§§ 
!=
§§ 
null
§§  
)
§§  !
{
•• 
var
¶¶ 
partHandlers
¶¶ $
=
¶¶% &)
_contentPartHandlerResolver
¶¶' B
.
¶¶B C
GetHandlers
¶¶C N
(
¶¶N O
partName
¶¶O W
)
¶¶W X
;
¶¶X Y
await
ßß 
partHandlers
ßß &
.
ßß& '
InvokeAsync
ßß' 2
(
ßß2 3
(
ßß3 4
handler
ßß4 ;
,
ßß; <
context
ßß= D
,
ßßD E
part
ßßF J
)
ßßJ K
=>
ßßL N
handler
ßßO V
.
ßßV W
LoadedAsync
ßßW b
(
ßßb c
context
ßßc j
,
ßßj k
part
ßßl p
)
ßßp q
,
ßßq r
context
ßßs z
,
ßßz {
partßß| Ä
,ßßÄ Å
_loggerßßÇ â
)ßßâ ä
;ßßä ã
await
™™ 
_partHandlers
™™ '
.
™™' (
InvokeAsync
™™( 3
(
™™3 4
(
™™4 5
handler
™™5 <
,
™™< =
context
™™> E
,
™™E F
part
™™G K
)
™™K L
=>
™™M O
handler
™™P W
.
™™W X
LoadedAsync
™™X c
(
™™c d
context
™™d k
,
™™k l
part
™™m q
)
™™q r
,
™™r s
context
™™t {
,
™™{ |
part™™} Å
,™™Å Ç
_logger™™É ä
)™™ä ã
;™™ã å
}
´´ 
}
¨¨ 
}
≠≠ 	
public
ØØ 
override
ØØ 
async
ØØ 
Task
ØØ "
ValidatingAsync
ØØ# 2
(
ØØ2 3$
ValidateContentContext
ØØ3 I
context
ØØJ Q
)
ØØQ R
{
∞∞ 	
var
±± #
contentTypeDefinition
±± %
=
±±& ''
_contentDefinitionManager
±±( A
.
±±A B
GetTypeDefinition
±±B S
(
±±S T
context
±±T [
.
±±[ \
ContentItem
±±\ g
.
±±g h
ContentType
±±h s
)
±±s t
;
±±t u
if
≤≤ 
(
≤≤ #
contentTypeDefinition
≤≤ %
==
≤≤& (
null
≤≤) -
)
≤≤- .
return
≥≥ 
;
≥≥ 
foreach
µµ 
(
µµ 
var
µµ  
typePartDefinition
µµ +
in
µµ, .#
contentTypeDefinition
µµ/ D
.
µµD E
Parts
µµE J
)
µµJ K
{
∂∂ 
var
∑∑ 
partName
∑∑ 
=
∑∑  
typePartDefinition
∑∑ 1
.
∑∑1 2
PartDefinition
∑∑2 @
.
∑∑@ A
Name
∑∑A E
;
∑∑E F
var
∏∏ 
	activator
∏∏ 
=
∏∏ !
_contentPartFactory
∏∏  3
.
∏∏3 4
GetTypeActivator
∏∏4 D
(
∏∏D E
partName
∏∏E M
)
∏∏M N
;
∏∏N O
var
∫∫ 
part
∫∫ 
=
∫∫ 
context
∫∫ "
.
∫∫" #
ContentItem
∫∫# .
.
∫∫. /
Get
∫∫/ 2
(
∫∫2 3
	activator
∫∫3 <
.
∫∫< =
Type
∫∫= A
,
∫∫A B 
typePartDefinition
∫∫C U
.
∫∫U V
Name
∫∫V Z
)
∫∫Z [
as
∫∫\ ^
ContentPart
∫∫_ j
;
∫∫j k
if
ºº 
(
ºº 
part
ºº 
!=
ºº 
null
ºº  
)
ºº  !
{
ΩΩ 
var
ææ 
partHandlers
ææ $
=
ææ% &)
_contentPartHandlerResolver
ææ' B
.
ææB C
GetHandlers
ææC N
(
ææN O
partName
ææO W
)
ææW X
;
ææX Y
await
øø 
partHandlers
øø &
.
øø& '
InvokeAsync
øø' 2
(
øø2 3
(
øø3 4
handler
øø4 ;
,
øø; <
context
øø= D
,
øøD E
part
øøF J
)
øøJ K
=>
øøL N
handler
øøO V
.
øøV W
ValidatingAsync
øøW f
(
øøf g
context
øøg n
,
øøn o
part
øøp t
)
øøt u
,
øøu v
context
øøw ~
,
øø~ 
partøøÄ Ñ
,øøÑ Ö
_loggerøøÜ ç
)øøç é
;øøé è
await
¬¬ 
_partHandlers
¬¬ '
.
¬¬' (
InvokeAsync
¬¬( 3
(
¬¬3 4
(
¬¬4 5
handler
¬¬5 <
,
¬¬< =
context
¬¬> E
,
¬¬E F
part
¬¬G K
)
¬¬K L
=>
¬¬M O
handler
¬¬P W
.
¬¬W X
ValidatingAsync
¬¬X g
(
¬¬g h
context
¬¬h o
,
¬¬o p
part
¬¬q u
)
¬¬u v
,
¬¬v w
context
¬¬x 
,¬¬ Ä
part¬¬Å Ö
,¬¬Ö Ü
_logger¬¬á é
)¬¬é è
;¬¬è ê
}
√√ 
}
ƒƒ 
}
≈≈ 	
public
«« 
override
«« 
async
«« 
Task
«« "
ValidatedAsync
««# 1
(
««1 2$
ValidateContentContext
««2 H
context
««I P
)
««P Q
{
»» 	
var
…… #
contentTypeDefinition
…… %
=
……& ''
_contentDefinitionManager
……( A
.
……A B
GetTypeDefinition
……B S
(
……S T
context
……T [
.
……[ \
ContentItem
……\ g
.
……g h
ContentType
……h s
)
……s t
;
……t u
if
   
(
   #
contentTypeDefinition
   %
==
  & (
null
  ) -
)
  - .
return
ÀÀ 
;
ÀÀ 
foreach
ÕÕ 
(
ÕÕ 
var
ÕÕ  
typePartDefinition
ÕÕ +
in
ÕÕ, .#
contentTypeDefinition
ÕÕ/ D
.
ÕÕD E
Parts
ÕÕE J
)
ÕÕJ K
{
ŒŒ 
var
œœ 
partName
œœ 
=
œœ  
typePartDefinition
œœ 1
.
œœ1 2
PartDefinition
œœ2 @
.
œœ@ A
Name
œœA E
;
œœE F
var
–– 
	activator
–– 
=
–– !
_contentPartFactory
––  3
.
––3 4
GetTypeActivator
––4 D
(
––D E
partName
––E M
)
––M N
;
––N O
var
““ 
part
““ 
=
““ 
context
““ "
.
““" #
ContentItem
““# .
.
““. /
Get
““/ 2
(
““2 3
	activator
““3 <
.
““< =
Type
““= A
,
““A B 
typePartDefinition
““C U
.
““U V
Name
““V Z
)
““Z [
as
““\ ^
ContentPart
““_ j
;
““j k
if
‘‘ 
(
‘‘ 
part
‘‘ 
!=
‘‘ 
null
‘‘  
)
‘‘  !
{
’’ 
var
÷÷ 
partHandlers
÷÷ $
=
÷÷% &)
_contentPartHandlerResolver
÷÷' B
.
÷÷B C
GetHandlers
÷÷C N
(
÷÷N O
partName
÷÷O W
)
÷÷W X
;
÷÷X Y
await
◊◊ 
partHandlers
◊◊ &
.
◊◊& '
InvokeAsync
◊◊' 2
(
◊◊2 3
(
◊◊3 4
handler
◊◊4 ;
,
◊◊; <
context
◊◊= D
,
◊◊D E
part
◊◊F J
)
◊◊J K
=>
◊◊L N
handler
◊◊O V
.
◊◊V W
ValidatedAsync
◊◊W e
(
◊◊e f
context
◊◊f m
,
◊◊m n
part
◊◊o s
)
◊◊s t
,
◊◊t u
context
◊◊v }
,
◊◊} ~
part◊◊ É
,◊◊É Ñ
_logger◊◊Ö å
)◊◊å ç
;◊◊ç é
await
⁄⁄ 
_partHandlers
⁄⁄ '
.
⁄⁄' (
InvokeAsync
⁄⁄( 3
(
⁄⁄3 4
(
⁄⁄4 5
handler
⁄⁄5 <
,
⁄⁄< =
context
⁄⁄> E
,
⁄⁄E F
part
⁄⁄G K
)
⁄⁄K L
=>
⁄⁄M O
handler
⁄⁄P W
.
⁄⁄W X
ValidatedAsync
⁄⁄X f
(
⁄⁄f g
context
⁄⁄g n
,
⁄⁄n o
part
⁄⁄p t
)
⁄⁄t u
,
⁄⁄u v
context
⁄⁄w ~
,
⁄⁄~ 
part⁄⁄Ä Ñ
,⁄⁄Ñ Ö
_logger⁄⁄Ü ç
)⁄⁄ç é
;⁄⁄é è
}
€€ 
}
‹‹ 
}
›› 	
public
ﬂﬂ 
override
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ "
DraftSavingAsync
ﬂﬂ# 3
(
ﬂﬂ3 4%
SaveDraftContentContext
ﬂﬂ4 K
context
ﬂﬂL S
)
ﬂﬂS T
{
‡‡ 	
var
·· #
contentTypeDefinition
·· %
=
··& ''
_contentDefinitionManager
··( A
.
··A B
GetTypeDefinition
··B S
(
··S T
context
··T [
.
··[ \
ContentItem
··\ g
.
··g h
ContentType
··h s
)
··s t
;
··t u
if
‚‚ 
(
‚‚ #
contentTypeDefinition
‚‚ %
==
‚‚& (
null
‚‚) -
)
‚‚- .
return
„„ 
;
„„ 
foreach
ÂÂ 
(
ÂÂ 
var
ÂÂ  
typePartDefinition
ÂÂ +
in
ÂÂ, .#
contentTypeDefinition
ÂÂ/ D
.
ÂÂD E
Parts
ÂÂE J
)
ÂÂJ K
{
ÊÊ 
var
ÁÁ 
partName
ÁÁ 
=
ÁÁ  
typePartDefinition
ÁÁ 1
.
ÁÁ1 2
PartDefinition
ÁÁ2 @
.
ÁÁ@ A
Name
ÁÁA E
;
ÁÁE F
var
ËË 
	activator
ËË 
=
ËË !
_contentPartFactory
ËË  3
.
ËË3 4
GetTypeActivator
ËË4 D
(
ËËD E
partName
ËËE M
)
ËËM N
;
ËËN O
var
ÈÈ 
part
ÈÈ 
=
ÈÈ 
context
ÈÈ "
.
ÈÈ" #
ContentItem
ÈÈ# .
.
ÈÈ. /
Get
ÈÈ/ 2
(
ÈÈ2 3
	activator
ÈÈ3 <
.
ÈÈ< =
Type
ÈÈ= A
,
ÈÈA B 
typePartDefinition
ÈÈC U
.
ÈÈU V
Name
ÈÈV Z
)
ÈÈZ [
as
ÈÈ\ ^
ContentPart
ÈÈ_ j
;
ÈÈj k
;
ÈÈl m
if
ÎÎ 
(
ÎÎ 
part
ÎÎ 
!=
ÎÎ 
null
ÎÎ  
)
ÎÎ  !
{
ÏÏ 
var
ÌÌ 
partHandlers
ÌÌ $
=
ÌÌ% &)
_contentPartHandlerResolver
ÌÌ' B
.
ÌÌB C
GetHandlers
ÌÌC N
(
ÌÌN O
partName
ÌÌO W
)
ÌÌW X
;
ÌÌX Y
await
ÓÓ 
partHandlers
ÓÓ &
.
ÓÓ& '
InvokeAsync
ÓÓ' 2
(
ÓÓ2 3
(
ÓÓ3 4
handler
ÓÓ4 ;
,
ÓÓ; <
context
ÓÓ= D
,
ÓÓD E
part
ÓÓF J
)
ÓÓJ K
=>
ÓÓL N
handler
ÓÓO V
.
ÓÓV W
DraftSavingAsync
ÓÓW g
(
ÓÓg h
context
ÓÓh o
,
ÓÓo p
part
ÓÓq u
)
ÓÓu v
,
ÓÓv w
context
ÓÓx 
,ÓÓ Ä
partÓÓÅ Ö
,ÓÓÖ Ü
_loggerÓÓá é
)ÓÓé è
;ÓÓè ê
await
ÒÒ 
_partHandlers
ÒÒ '
.
ÒÒ' (
InvokeAsync
ÒÒ( 3
(
ÒÒ3 4
(
ÒÒ4 5
handler
ÒÒ5 <
,
ÒÒ< =
context
ÒÒ> E
,
ÒÒE F
part
ÒÒG K
)
ÒÒK L
=>
ÒÒM O
handler
ÒÒP W
.
ÒÒW X
DraftSavingAsync
ÒÒX h
(
ÒÒh i
context
ÒÒi p
,
ÒÒp q
part
ÒÒr v
)
ÒÒv w
,
ÒÒw x
contextÒÒy Ä
,ÒÒÄ Å
partÒÒÇ Ü
,ÒÒÜ á
_loggerÒÒà è
)ÒÒè ê
;ÒÒê ë
}
ÚÚ 
}
ÛÛ 
}
ÙÙ 	
public
ˆˆ 
override
ˆˆ 
async
ˆˆ 
Task
ˆˆ "
DraftSavedAsync
ˆˆ# 2
(
ˆˆ2 3%
SaveDraftContentContext
ˆˆ3 J
context
ˆˆK R
)
ˆˆR S
{
˜˜ 	
var
¯¯ #
contentTypeDefinition
¯¯ %
=
¯¯& ''
_contentDefinitionManager
¯¯( A
.
¯¯A B
GetTypeDefinition
¯¯B S
(
¯¯S T
context
¯¯T [
.
¯¯[ \
ContentItem
¯¯\ g
.
¯¯g h
ContentType
¯¯h s
)
¯¯s t
;
¯¯t u
if
˘˘ 
(
˘˘ #
contentTypeDefinition
˘˘ %
==
˘˘& (
null
˘˘) -
)
˘˘- .
return
˙˙ 
;
˙˙ 
foreach
¸¸ 
(
¸¸ 
var
¸¸  
typePartDefinition
¸¸ +
in
¸¸, .#
contentTypeDefinition
¸¸/ D
.
¸¸D E
Parts
¸¸E J
)
¸¸J K
{
˝˝ 
var
˛˛ 
partName
˛˛ 
=
˛˛  
typePartDefinition
˛˛ 1
.
˛˛1 2
PartDefinition
˛˛2 @
.
˛˛@ A
Name
˛˛A E
;
˛˛E F
var
ˇˇ 
	activator
ˇˇ 
=
ˇˇ !
_contentPartFactory
ˇˇ  3
.
ˇˇ3 4
GetTypeActivator
ˇˇ4 D
(
ˇˇD E
partName
ˇˇE M
)
ˇˇM N
;
ˇˇN O
var
ÄÄ 
part
ÄÄ 
=
ÄÄ 
context
ÄÄ "
.
ÄÄ" #
ContentItem
ÄÄ# .
.
ÄÄ. /
Get
ÄÄ/ 2
(
ÄÄ2 3
	activator
ÄÄ3 <
.
ÄÄ< =
Type
ÄÄ= A
,
ÄÄA B 
typePartDefinition
ÄÄC U
.
ÄÄU V
Name
ÄÄV Z
)
ÄÄZ [
as
ÄÄ\ ^
ContentPart
ÄÄ_ j
;
ÄÄj k
;
ÄÄl m
if
ÇÇ 
(
ÇÇ 
part
ÇÇ 
!=
ÇÇ 
null
ÇÇ  
)
ÇÇ  !
{
ÉÉ 
var
ÑÑ 
partHandlers
ÑÑ $
=
ÑÑ% &)
_contentPartHandlerResolver
ÑÑ' B
.
ÑÑB C
GetHandlers
ÑÑC N
(
ÑÑN O
partName
ÑÑO W
)
ÑÑW X
;
ÑÑX Y
await
ÖÖ 
partHandlers
ÖÖ &
.
ÖÖ& '
InvokeAsync
ÖÖ' 2
(
ÖÖ2 3
(
ÖÖ3 4
handler
ÖÖ4 ;
,
ÖÖ; <
context
ÖÖ= D
,
ÖÖD E
part
ÖÖF J
)
ÖÖJ K
=>
ÖÖL N
handler
ÖÖO V
.
ÖÖV W
DraftSavedAsync
ÖÖW f
(
ÖÖf g
context
ÖÖg n
,
ÖÖn o
part
ÖÖp t
)
ÖÖt u
,
ÖÖu v
context
ÖÖw ~
,
ÖÖ~ 
partÖÖÄ Ñ
,ÖÖÑ Ö
_loggerÖÖÜ ç
)ÖÖç é
;ÖÖé è
await
àà 
_partHandlers
àà '
.
àà' (
InvokeAsync
àà( 3
(
àà3 4
(
àà4 5
handler
àà5 <
,
àà< =
context
àà> E
,
ààE F
part
ààG K
)
ààK L
=>
ààM O
handler
ààP W
.
ààW X
DraftSavedAsync
ààX g
(
ààg h
context
ààh o
,
àào p
part
ààq u
)
ààu v
,
ààv w
context
ààx 
,àà Ä
partààÅ Ö
,ààÖ Ü
_loggerààá é
)ààé è
;ààè ê
}
ââ 
}
ää 
}
ãã 	
public
çç 
override
çç 
async
çç 
Task
çç "
PublishingAsync
çç# 2
(
çç2 3#
PublishContentContext
çç3 H
context
ççI P
)
ççP Q
{
éé 	
var
èè #
contentTypeDefinition
èè %
=
èè& ''
_contentDefinitionManager
èè( A
.
èèA B
GetTypeDefinition
èèB S
(
èèS T
context
èèT [
.
èè[ \
ContentItem
èè\ g
.
èèg h
ContentType
èèh s
)
èès t
;
èèt u
if
êê 
(
êê #
contentTypeDefinition
êê %
==
êê& (
null
êê) -
)
êê- .
return
ëë 
;
ëë 
foreach
ìì 
(
ìì 
var
ìì  
typePartDefinition
ìì +
in
ìì, .#
contentTypeDefinition
ìì/ D
.
ììD E
Parts
ììE J
)
ììJ K
{
îî 
var
ïï 
partName
ïï 
=
ïï  
typePartDefinition
ïï 1
.
ïï1 2
PartDefinition
ïï2 @
.
ïï@ A
Name
ïïA E
;
ïïE F
var
ññ 
	activator
ññ 
=
ññ !
_contentPartFactory
ññ  3
.
ññ3 4
GetTypeActivator
ññ4 D
(
ññD E
partName
ññE M
)
ññM N
;
ññN O
var
óó 
part
óó 
=
óó 
context
óó "
.
óó" #
ContentItem
óó# .
.
óó. /
Get
óó/ 2
(
óó2 3
	activator
óó3 <
.
óó< =
Type
óó= A
,
óóA B 
typePartDefinition
óóC U
.
óóU V
Name
óóV Z
)
óóZ [
as
óó\ ^
ContentPart
óó_ j
;
óój k
;
óól m
if
ôô 
(
ôô 
part
ôô 
!=
ôô 
null
ôô  
)
ôô  !
{
öö 
var
õõ 
partHandlers
õõ $
=
õõ% &)
_contentPartHandlerResolver
õõ' B
.
õõB C
GetHandlers
õõC N
(
õõN O
partName
õõO W
)
õõW X
;
õõX Y
await
úú 
partHandlers
úú &
.
úú& '
InvokeAsync
úú' 2
(
úú2 3
(
úú3 4
handler
úú4 ;
,
úú; <
context
úú= D
,
úúD E
part
úúF J
)
úúJ K
=>
úúL N
handler
úúO V
.
úúV W
PublishingAsync
úúW f
(
úúf g
context
úúg n
,
úún o
part
úúp t
)
úút u
,
úúu v
context
úúw ~
,
úú~ 
partúúÄ Ñ
,úúÑ Ö
_loggerúúÜ ç
)úúç é
;úúé è
await
üü 
_partHandlers
üü '
.
üü' (
InvokeAsync
üü( 3
(
üü3 4
(
üü4 5
handler
üü5 <
,
üü< =
context
üü> E
,
üüE F
part
üüG K
)
üüK L
=>
üüM O
handler
üüP W
.
üüW X
PublishingAsync
üüX g
(
üüg h
context
üüh o
,
üüo p
part
üüq u
)
üüu v
,
üüv w
context
üüx 
,üü Ä
partüüÅ Ö
,üüÖ Ü
_loggerüüá é
)üüé è
;üüè ê
}
†† 
}
°° 
}
¢¢ 	
public
§§ 
override
§§ 
async
§§ 
Task
§§ "
PublishedAsync
§§# 1
(
§§1 2#
PublishContentContext
§§2 G
context
§§H O
)
§§O P
{
•• 	
var
¶¶ #
contentTypeDefinition
¶¶ %
=
¶¶& ''
_contentDefinitionManager
¶¶( A
.
¶¶A B
GetTypeDefinition
¶¶B S
(
¶¶S T
context
¶¶T [
.
¶¶[ \
ContentItem
¶¶\ g
.
¶¶g h
ContentType
¶¶h s
)
¶¶s t
;
¶¶t u
if
ßß 
(
ßß #
contentTypeDefinition
ßß %
==
ßß& (
null
ßß) -
)
ßß- .
return
®® 
;
®® 
foreach
™™ 
(
™™ 
var
™™  
typePartDefinition
™™ +
in
™™, .#
contentTypeDefinition
™™/ D
.
™™D E
Parts
™™E J
)
™™J K
{
´´ 
var
¨¨ 
partName
¨¨ 
=
¨¨  
typePartDefinition
¨¨ 1
.
¨¨1 2
PartDefinition
¨¨2 @
.
¨¨@ A
Name
¨¨A E
;
¨¨E F
var
≠≠ 
	activator
≠≠ 
=
≠≠ !
_contentPartFactory
≠≠  3
.
≠≠3 4
GetTypeActivator
≠≠4 D
(
≠≠D E
partName
≠≠E M
)
≠≠M N
;
≠≠N O
var
ÆÆ 
part
ÆÆ 
=
ÆÆ 
context
ÆÆ "
.
ÆÆ" #
ContentItem
ÆÆ# .
.
ÆÆ. /
Get
ÆÆ/ 2
(
ÆÆ2 3
	activator
ÆÆ3 <
.
ÆÆ< =
Type
ÆÆ= A
,
ÆÆA B 
typePartDefinition
ÆÆC U
.
ÆÆU V
Name
ÆÆV Z
)
ÆÆZ [
as
ÆÆ\ ^
ContentPart
ÆÆ_ j
;
ÆÆj k
;
ÆÆl m
if
∞∞ 
(
∞∞ 
part
∞∞ 
!=
∞∞ 
null
∞∞  
)
∞∞  !
{
±± 
var
≤≤ 
partHandlers
≤≤ $
=
≤≤% &)
_contentPartHandlerResolver
≤≤' B
.
≤≤B C
GetHandlers
≤≤C N
(
≤≤N O
partName
≤≤O W
)
≤≤W X
;
≤≤X Y
await
≥≥ 
partHandlers
≥≥ &
.
≥≥& '
InvokeAsync
≥≥' 2
(
≥≥2 3
(
≥≥3 4
handler
≥≥4 ;
,
≥≥; <
context
≥≥= D
,
≥≥D E
part
≥≥F J
)
≥≥J K
=>
≥≥L N
handler
≥≥O V
.
≥≥V W
PublishedAsync
≥≥W e
(
≥≥e f
context
≥≥f m
,
≥≥m n
part
≥≥o s
)
≥≥s t
,
≥≥t u
context
≥≥v }
,
≥≥} ~
part≥≥ É
,≥≥É Ñ
_logger≥≥Ö å
)≥≥å ç
;≥≥ç é
await
∂∂ 
_partHandlers
∂∂ '
.
∂∂' (
InvokeAsync
∂∂( 3
(
∂∂3 4
(
∂∂4 5
handler
∂∂5 <
,
∂∂< =
context
∂∂> E
,
∂∂E F
part
∂∂G K
)
∂∂K L
=>
∂∂M O
handler
∂∂P W
.
∂∂W X
PublishedAsync
∂∂X f
(
∂∂f g
context
∂∂g n
,
∂∂n o
part
∂∂p t
)
∂∂t u
,
∂∂u v
context
∂∂w ~
,
∂∂~ 
part∂∂Ä Ñ
,∂∂Ñ Ö
_logger∂∂Ü ç
)∂∂ç é
;∂∂é è
}
∑∑ 
}
∏∏ 
}
ππ 	
public
ªª 
override
ªª 
async
ªª 
Task
ªª "
RemovingAsync
ªª# 0
(
ªª0 1"
RemoveContentContext
ªª1 E
context
ªªF M
)
ªªM N
{
ºº 	
var
ΩΩ #
contentTypeDefinition
ΩΩ %
=
ΩΩ& ''
_contentDefinitionManager
ΩΩ( A
.
ΩΩA B
GetTypeDefinition
ΩΩB S
(
ΩΩS T
context
ΩΩT [
.
ΩΩ[ \
ContentItem
ΩΩ\ g
.
ΩΩg h
ContentType
ΩΩh s
)
ΩΩs t
;
ΩΩt u
if
ææ 
(
ææ #
contentTypeDefinition
ææ %
==
ææ& (
null
ææ) -
)
ææ- .
return
øø 
;
øø 
foreach
¡¡ 
(
¡¡ 
var
¡¡  
typePartDefinition
¡¡ +
in
¡¡, .#
contentTypeDefinition
¡¡/ D
.
¡¡D E
Parts
¡¡E J
)
¡¡J K
{
¬¬ 
var
√√ 
partName
√√ 
=
√√  
typePartDefinition
√√ 1
.
√√1 2
PartDefinition
√√2 @
.
√√@ A
Name
√√A E
;
√√E F
var
ƒƒ 
	activator
ƒƒ 
=
ƒƒ !
_contentPartFactory
ƒƒ  3
.
ƒƒ3 4
GetTypeActivator
ƒƒ4 D
(
ƒƒD E
partName
ƒƒE M
)
ƒƒM N
;
ƒƒN O
var
≈≈ 
part
≈≈ 
=
≈≈ 
context
≈≈ "
.
≈≈" #
ContentItem
≈≈# .
.
≈≈. /
Get
≈≈/ 2
(
≈≈2 3
	activator
≈≈3 <
.
≈≈< =
Type
≈≈= A
,
≈≈A B 
typePartDefinition
≈≈C U
.
≈≈U V
Name
≈≈V Z
)
≈≈Z [
as
≈≈\ ^
ContentPart
≈≈_ j
;
≈≈j k
;
≈≈l m
if
«« 
(
«« 
part
«« 
!=
«« 
null
««  
)
««  !
{
»» 
var
…… 
partHandlers
…… $
=
……% &)
_contentPartHandlerResolver
……' B
.
……B C
GetHandlers
……C N
(
……N O
partName
……O W
)
……W X
;
……X Y
await
   
partHandlers
   &
.
  & '
InvokeAsync
  ' 2
(
  2 3
(
  3 4
handler
  4 ;
,
  ; <
context
  = D
,
  D E
part
  F J
)
  J K
=>
  L N
handler
  O V
.
  V W
RemovingAsync
  W d
(
  d e
context
  e l
,
  l m
part
  n r
)
  r s
,
  s t
context
  u |
,
  | }
part  ~ Ç
,  Ç É
_logger  Ñ ã
)  ã å
;  å ç
await
ÕÕ 
_partHandlers
ÕÕ '
.
ÕÕ' (
InvokeAsync
ÕÕ( 3
(
ÕÕ3 4
(
ÕÕ4 5
handler
ÕÕ5 <
,
ÕÕ< =
context
ÕÕ> E
,
ÕÕE F
part
ÕÕG K
)
ÕÕK L
=>
ÕÕM O
handler
ÕÕP W
.
ÕÕW X
RemovingAsync
ÕÕX e
(
ÕÕe f
context
ÕÕf m
,
ÕÕm n
part
ÕÕo s
)
ÕÕs t
,
ÕÕt u
context
ÕÕv }
,
ÕÕ} ~
partÕÕ É
,ÕÕÉ Ñ
_loggerÕÕÖ å
)ÕÕå ç
;ÕÕç é
}
ŒŒ 
}
œœ 
}
–– 	
public
““ 
override
““ 
async
““ 
Task
““ "
RemovedAsync
““# /
(
““/ 0"
RemoveContentContext
““0 D
context
““E L
)
““L M
{
”” 	
var
‘‘ #
contentTypeDefinition
‘‘ %
=
‘‘& ''
_contentDefinitionManager
‘‘( A
.
‘‘A B
GetTypeDefinition
‘‘B S
(
‘‘S T
context
‘‘T [
.
‘‘[ \
ContentItem
‘‘\ g
.
‘‘g h
ContentType
‘‘h s
)
‘‘s t
;
‘‘t u
if
’’ 
(
’’ #
contentTypeDefinition
’’ %
==
’’& (
null
’’) -
)
’’- .
return
÷÷ 
;
÷÷ 
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ  
typePartDefinition
ÿÿ +
in
ÿÿ, .#
contentTypeDefinition
ÿÿ/ D
.
ÿÿD E
Parts
ÿÿE J
)
ÿÿJ K
{
ŸŸ 
var
⁄⁄ 
partName
⁄⁄ 
=
⁄⁄  
typePartDefinition
⁄⁄ 1
.
⁄⁄1 2
PartDefinition
⁄⁄2 @
.
⁄⁄@ A
Name
⁄⁄A E
;
⁄⁄E F
var
€€ 
	activator
€€ 
=
€€ !
_contentPartFactory
€€  3
.
€€3 4
GetTypeActivator
€€4 D
(
€€D E
partName
€€E M
)
€€M N
;
€€N O
var
‹‹ 
part
‹‹ 
=
‹‹ 
context
‹‹ "
.
‹‹" #
ContentItem
‹‹# .
.
‹‹. /
Get
‹‹/ 2
(
‹‹2 3
	activator
‹‹3 <
.
‹‹< =
Type
‹‹= A
,
‹‹A B 
typePartDefinition
‹‹C U
.
‹‹U V
Name
‹‹V Z
)
‹‹Z [
as
‹‹\ ^
ContentPart
‹‹_ j
;
‹‹j k
;
‹‹l m
if
ﬁﬁ 
(
ﬁﬁ 
part
ﬁﬁ 
!=
ﬁﬁ 
null
ﬁﬁ  
)
ﬁﬁ  !
{
ﬂﬂ 
var
‡‡ 
partHandlers
‡‡ $
=
‡‡% &)
_contentPartHandlerResolver
‡‡' B
.
‡‡B C
GetHandlers
‡‡C N
(
‡‡N O
partName
‡‡O W
)
‡‡W X
;
‡‡X Y
await
·· 
partHandlers
·· &
.
··& '
InvokeAsync
··' 2
(
··2 3
(
··3 4
handler
··4 ;
,
··; <
context
··= D
,
··D E
part
··F J
)
··J K
=>
··L N
handler
··O V
.
··V W
RemovedAsync
··W c
(
··c d
context
··d k
,
··k l
part
··m q
)
··q r
,
··r s
context
··t {
,
··{ |
part··} Å
,··Å Ç
_logger··É ä
)··ä ã
;··ã å
await
‰‰ 
_partHandlers
‰‰ '
.
‰‰' (
InvokeAsync
‰‰( 3
(
‰‰3 4
(
‰‰4 5
handler
‰‰5 <
,
‰‰< =
context
‰‰> E
,
‰‰E F
part
‰‰G K
)
‰‰K L
=>
‰‰M O
handler
‰‰P W
.
‰‰W X
RemovedAsync
‰‰X d
(
‰‰d e
context
‰‰e l
,
‰‰l m
part
‰‰n r
)
‰‰r s
,
‰‰s t
context
‰‰u |
,
‰‰| }
part‰‰~ Ç
,‰‰Ç É
_logger‰‰Ñ ã
)‰‰ã å
;‰‰å ç
}
ÂÂ 
}
ÊÊ 
}
ÁÁ 	
public
ÈÈ 
override
ÈÈ 
async
ÈÈ 
Task
ÈÈ "
UnpublishingAsync
ÈÈ# 4
(
ÈÈ4 5#
PublishContentContext
ÈÈ5 J
context
ÈÈK R
)
ÈÈR S
{
ÍÍ 	
var
ÎÎ #
contentTypeDefinition
ÎÎ %
=
ÎÎ& ''
_contentDefinitionManager
ÎÎ( A
.
ÎÎA B
GetTypeDefinition
ÎÎB S
(
ÎÎS T
context
ÎÎT [
.
ÎÎ[ \
ContentItem
ÎÎ\ g
.
ÎÎg h
ContentType
ÎÎh s
)
ÎÎs t
;
ÎÎt u
if
ÏÏ 
(
ÏÏ #
contentTypeDefinition
ÏÏ %
==
ÏÏ& (
null
ÏÏ) -
)
ÏÏ- .
return
ÌÌ 
;
ÌÌ 
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ  
typePartDefinition
ÔÔ +
in
ÔÔ, .#
contentTypeDefinition
ÔÔ/ D
.
ÔÔD E
Parts
ÔÔE J
)
ÔÔJ K
{
 
var
ÒÒ 
partName
ÒÒ 
=
ÒÒ  
typePartDefinition
ÒÒ 1
.
ÒÒ1 2
PartDefinition
ÒÒ2 @
.
ÒÒ@ A
Name
ÒÒA E
;
ÒÒE F
var
ÚÚ 
	activator
ÚÚ 
=
ÚÚ !
_contentPartFactory
ÚÚ  3
.
ÚÚ3 4
GetTypeActivator
ÚÚ4 D
(
ÚÚD E
partName
ÚÚE M
)
ÚÚM N
;
ÚÚN O
var
ÛÛ 
part
ÛÛ 
=
ÛÛ 
context
ÛÛ "
.
ÛÛ" #
ContentItem
ÛÛ# .
.
ÛÛ. /
Get
ÛÛ/ 2
(
ÛÛ2 3
	activator
ÛÛ3 <
.
ÛÛ< =
Type
ÛÛ= A
,
ÛÛA B 
typePartDefinition
ÛÛC U
.
ÛÛU V
Name
ÛÛV Z
)
ÛÛZ [
as
ÛÛ\ ^
ContentPart
ÛÛ_ j
;
ÛÛj k
;
ÛÛl m
if
ıı 
(
ıı 
part
ıı 
!=
ıı 
null
ıı  
)
ıı  !
{
ˆˆ 
var
˜˜ 
partHandlers
˜˜ $
=
˜˜% &)
_contentPartHandlerResolver
˜˜' B
.
˜˜B C
GetHandlers
˜˜C N
(
˜˜N O
partName
˜˜O W
)
˜˜W X
;
˜˜X Y
await
¯¯ 
partHandlers
¯¯ &
.
¯¯& '
InvokeAsync
¯¯' 2
(
¯¯2 3
(
¯¯3 4
handler
¯¯4 ;
,
¯¯; <
context
¯¯= D
,
¯¯D E
part
¯¯F J
)
¯¯J K
=>
¯¯L N
handler
¯¯O V
.
¯¯V W
UnpublishingAsync
¯¯W h
(
¯¯h i
context
¯¯i p
,
¯¯p q
part
¯¯r v
)
¯¯v w
,
¯¯w x
context¯¯y Ä
,¯¯Ä Å
part¯¯Ç Ü
,¯¯Ü á
_logger¯¯à è
)¯¯è ê
;¯¯ê ë
await
˚˚ 
_partHandlers
˚˚ '
.
˚˚' (
InvokeAsync
˚˚( 3
(
˚˚3 4
(
˚˚4 5
handler
˚˚5 <
,
˚˚< =
context
˚˚> E
,
˚˚E F
part
˚˚G K
)
˚˚K L
=>
˚˚M O
handler
˚˚P W
.
˚˚W X
UnpublishingAsync
˚˚X i
(
˚˚i j
context
˚˚j q
,
˚˚q r
part
˚˚s w
)
˚˚w x
,
˚˚x y
context˚˚z Å
,˚˚Å Ç
part˚˚É á
,˚˚á à
_logger˚˚â ê
)˚˚ê ë
;˚˚ë í
}
¸¸ 
}
˝˝ 
}
˛˛ 	
public
ÄÄ 
override
ÄÄ 
async
ÄÄ 
Task
ÄÄ "
UnpublishedAsync
ÄÄ# 3
(
ÄÄ3 4#
PublishContentContext
ÄÄ4 I
context
ÄÄJ Q
)
ÄÄQ R
{
ÅÅ 	
var
ÇÇ #
contentTypeDefinition
ÇÇ %
=
ÇÇ& ''
_contentDefinitionManager
ÇÇ( A
.
ÇÇA B
GetTypeDefinition
ÇÇB S
(
ÇÇS T
context
ÇÇT [
.
ÇÇ[ \
ContentItem
ÇÇ\ g
.
ÇÇg h
ContentType
ÇÇh s
)
ÇÇs t
;
ÇÇt u
if
ÉÉ 
(
ÉÉ #
contentTypeDefinition
ÉÉ %
==
ÉÉ& (
null
ÉÉ) -
)
ÉÉ- .
return
ÑÑ 
;
ÑÑ 
foreach
ÜÜ 
(
ÜÜ 
var
ÜÜ  
typePartDefinition
ÜÜ +
in
ÜÜ, .#
contentTypeDefinition
ÜÜ/ D
.
ÜÜD E
Parts
ÜÜE J
)
ÜÜJ K
{
áá 
var
àà 
partName
àà 
=
àà  
typePartDefinition
àà 1
.
àà1 2
PartDefinition
àà2 @
.
àà@ A
Name
ààA E
;
ààE F
var
ââ 
	activator
ââ 
=
ââ !
_contentPartFactory
ââ  3
.
ââ3 4
GetTypeActivator
ââ4 D
(
ââD E
partName
ââE M
)
ââM N
;
ââN O
var
ää 
part
ää 
=
ää 
context
ää "
.
ää" #
ContentItem
ää# .
.
ää. /
Get
ää/ 2
(
ää2 3
	activator
ää3 <
.
ää< =
Type
ää= A
,
ääA B 
typePartDefinition
ääC U
.
ääU V
Name
ääV Z
)
ääZ [
as
ää\ ^
ContentPart
ää_ j
;
ääj k
;
ääl m
if
åå 
(
åå 
part
åå 
!=
åå 
null
åå  
)
åå  !
{
çç 
var
éé 
partHandlers
éé $
=
éé% &)
_contentPartHandlerResolver
éé' B
.
ééB C
GetHandlers
ééC N
(
ééN O
partName
ééO W
)
ééW X
;
ééX Y
await
èè 
partHandlers
èè &
.
èè& '
InvokeAsync
èè' 2
(
èè2 3
(
èè3 4
handler
èè4 ;
,
èè; <
context
èè= D
,
èèD E
part
èèF J
)
èèJ K
=>
èèL N
handler
èèO V
.
èèV W
UnpublishedAsync
èèW g
(
èèg h
context
èèh o
,
èèo p
part
èèq u
)
èèu v
,
èèv w
context
èèx 
,èè Ä
partèèÅ Ö
,èèÖ Ü
_loggerèèá é
)èèé è
;èèè ê
await
íí 
_partHandlers
íí '
.
íí' (
InvokeAsync
íí( 3
(
íí3 4
(
íí4 5
handler
íí5 <
,
íí< =
context
íí> E
,
ííE F
part
ííG K
)
ííK L
=>
ííM O
handler
ííP W
.
ííW X
UnpublishedAsync
ííX h
(
ííh i
context
ííi p
,
ííp q
part
íír v
)
íív w
,
ííw x
contextííy Ä
,ííÄ Å
partííÇ Ü
,ííÜ á
_loggerííà è
)ííè ê
;ííê ë
}
ìì 
}
îî 
}
ïï 	
public
óó 
override
óó 
async
óó 
Task
óó "
UpdatingAsync
óó# 0
(
óó0 1"
UpdateContentContext
óó1 E
context
óóF M
)
óóM N
{
òò 	
var
ôô #
contentTypeDefinition
ôô %
=
ôô& ''
_contentDefinitionManager
ôô( A
.
ôôA B
GetTypeDefinition
ôôB S
(
ôôS T
context
ôôT [
.
ôô[ \
ContentItem
ôô\ g
.
ôôg h
ContentType
ôôh s
)
ôôs t
;
ôôt u
if
öö 
(
öö #
contentTypeDefinition
öö %
==
öö& (
null
öö) -
)
öö- .
return
õõ 
;
õõ 
foreach
ùù 
(
ùù 
var
ùù  
typePartDefinition
ùù +
in
ùù, .#
contentTypeDefinition
ùù/ D
.
ùùD E
Parts
ùùE J
)
ùùJ K
{
ûû 
var
üü 
partName
üü 
=
üü  
typePartDefinition
üü 1
.
üü1 2
PartDefinition
üü2 @
.
üü@ A
Name
üüA E
;
üüE F
var
†† 
	activator
†† 
=
†† !
_contentPartFactory
††  3
.
††3 4
GetTypeActivator
††4 D
(
††D E
partName
††E M
)
††M N
;
††N O
var
°° 
part
°° 
=
°° 
context
°° "
.
°°" #
ContentItem
°°# .
.
°°. /
Get
°°/ 2
(
°°2 3
	activator
°°3 <
.
°°< =
Type
°°= A
,
°°A B 
typePartDefinition
°°C U
.
°°U V
Name
°°V Z
)
°°Z [
as
°°\ ^
ContentPart
°°_ j
;
°°j k
;
°°l m
if
££ 
(
££ 
part
££ 
!=
££ 
null
££  
)
££  !
{
§§ 
var
•• 
partHandlers
•• $
=
••% &)
_contentPartHandlerResolver
••' B
.
••B C
GetHandlers
••C N
(
••N O
partName
••O W
)
••W X
;
••X Y
await
¶¶ 
partHandlers
¶¶ &
.
¶¶& '
InvokeAsync
¶¶' 2
(
¶¶2 3
(
¶¶3 4
handler
¶¶4 ;
,
¶¶; <
context
¶¶= D
,
¶¶D E
part
¶¶F J
)
¶¶J K
=>
¶¶L N
handler
¶¶O V
.
¶¶V W
UpdatingAsync
¶¶W d
(
¶¶d e
context
¶¶e l
,
¶¶l m
part
¶¶n r
)
¶¶r s
,
¶¶s t
context
¶¶u |
,
¶¶| }
part¶¶~ Ç
,¶¶Ç É
_logger¶¶Ñ ã
)¶¶ã å
;¶¶å ç
await
©© 
_partHandlers
©© '
.
©©' (
InvokeAsync
©©( 3
(
©©3 4
(
©©4 5
handler
©©5 <
,
©©< =
context
©©> E
,
©©E F
part
©©G K
)
©©K L
=>
©©M O
handler
©©P W
.
©©W X
UpdatingAsync
©©X e
(
©©e f
context
©©f m
,
©©m n
part
©©o s
)
©©s t
,
©©t u
context
©©v }
,
©©} ~
part©© É
,©©É Ñ
_logger©©Ö å
)©©å ç
;©©ç é
}
™™ 
}
´´ 
}
¨¨ 	
public
ÆÆ 
override
ÆÆ 
async
ÆÆ 
Task
ÆÆ "
UpdatedAsync
ÆÆ# /
(
ÆÆ/ 0"
UpdateContentContext
ÆÆ0 D
context
ÆÆE L
)
ÆÆL M
{
ØØ 	
var
∞∞ #
contentTypeDefinition
∞∞ %
=
∞∞& ''
_contentDefinitionManager
∞∞( A
.
∞∞A B
GetTypeDefinition
∞∞B S
(
∞∞S T
context
∞∞T [
.
∞∞[ \
ContentItem
∞∞\ g
.
∞∞g h
ContentType
∞∞h s
)
∞∞s t
;
∞∞t u
if
±± 
(
±± #
contentTypeDefinition
±± %
==
±±& (
null
±±) -
)
±±- .
return
≤≤ 
;
≤≤ 
foreach
¥¥ 
(
¥¥ 
var
¥¥  
typePartDefinition
¥¥ +
in
¥¥, .#
contentTypeDefinition
¥¥/ D
.
¥¥D E
Parts
¥¥E J
)
¥¥J K
{
µµ 
var
∂∂ 
partName
∂∂ 
=
∂∂  
typePartDefinition
∂∂ 1
.
∂∂1 2
PartDefinition
∂∂2 @
.
∂∂@ A
Name
∂∂A E
;
∂∂E F
var
∑∑ 
	activator
∑∑ 
=
∑∑ !
_contentPartFactory
∑∑  3
.
∑∑3 4
GetTypeActivator
∑∑4 D
(
∑∑D E
partName
∑∑E M
)
∑∑M N
;
∑∑N O
var
∏∏ 
part
∏∏ 
=
∏∏ 
context
∏∏ "
.
∏∏" #
ContentItem
∏∏# .
.
∏∏. /
Get
∏∏/ 2
(
∏∏2 3
	activator
∏∏3 <
.
∏∏< =
Type
∏∏= A
,
∏∏A B 
typePartDefinition
∏∏C U
.
∏∏U V
Name
∏∏V Z
)
∏∏Z [
as
∏∏\ ^
ContentPart
∏∏_ j
;
∏∏j k
;
∏∏l m
if
∫∫ 
(
∫∫ 
part
∫∫ 
!=
∫∫ 
null
∫∫  
)
∫∫  !
{
ªª 
var
ºº 
partHandlers
ºº $
=
ºº% &)
_contentPartHandlerResolver
ºº' B
.
ººB C
GetHandlers
ººC N
(
ººN O
partName
ººO W
)
ººW X
;
ººX Y
await
ΩΩ 
partHandlers
ΩΩ &
.
ΩΩ& '
InvokeAsync
ΩΩ' 2
(
ΩΩ2 3
(
ΩΩ3 4
handler
ΩΩ4 ;
,
ΩΩ; <
context
ΩΩ= D
,
ΩΩD E
part
ΩΩF J
)
ΩΩJ K
=>
ΩΩL N
handler
ΩΩO V
.
ΩΩV W
UpdatedAsync
ΩΩW c
(
ΩΩc d
context
ΩΩd k
,
ΩΩk l
part
ΩΩm q
)
ΩΩq r
,
ΩΩr s
context
ΩΩt {
,
ΩΩ{ |
partΩΩ} Å
,ΩΩÅ Ç
_loggerΩΩÉ ä
)ΩΩä ã
;ΩΩã å
await
¿¿ 
_partHandlers
¿¿ '
.
¿¿' (
InvokeAsync
¿¿( 3
(
¿¿3 4
(
¿¿4 5
handler
¿¿5 <
,
¿¿< =
context
¿¿> E
,
¿¿E F
part
¿¿G K
)
¿¿K L
=>
¿¿M O
handler
¿¿P W
.
¿¿W X
UpdatedAsync
¿¿X d
(
¿¿d e
context
¿¿e l
,
¿¿l m
part
¿¿n r
)
¿¿r s
,
¿¿s t
context
¿¿u |
,
¿¿| }
part¿¿~ Ç
,¿¿Ç É
_logger¿¿Ñ ã
)¿¿ã å
;¿¿å ç
}
¡¡ 
}
¬¬ 
}
√√ 	
public
≈≈ 
override
≈≈ 
async
≈≈ 
Task
≈≈ "
VersioningAsync
≈≈# 2
(
≈≈2 3#
VersionContentContext
≈≈3 H
context
≈≈I P
)
≈≈P Q
{
∆∆ 	
var
«« #
contentTypeDefinition
«« %
=
««& ''
_contentDefinitionManager
««( A
.
««A B
GetTypeDefinition
««B S
(
««S T
context
««T [
.
««[ \
ContentItem
««\ g
.
««g h
ContentType
««h s
)
««s t
;
««t u
if
»» 
(
»» #
contentTypeDefinition
»» %
==
»»& (
null
»») -
)
»»- .
return
…… 
;
…… 
foreach
ÀÀ 
(
ÀÀ 
var
ÀÀ  
typePartDefinition
ÀÀ +
in
ÀÀ, .#
contentTypeDefinition
ÀÀ/ D
.
ÀÀD E
Parts
ÀÀE J
)
ÀÀJ K
{
ÃÃ 
var
ÕÕ 
partName
ÕÕ 
=
ÕÕ  
typePartDefinition
ÕÕ 1
.
ÕÕ1 2
PartDefinition
ÕÕ2 @
.
ÕÕ@ A
Name
ÕÕA E
;
ÕÕE F
var
ŒŒ 
	activator
ŒŒ 
=
ŒŒ !
_contentPartFactory
ŒŒ  3
.
ŒŒ3 4
GetTypeActivator
ŒŒ4 D
(
ŒŒD E
partName
ŒŒE M
)
ŒŒM N
;
ŒŒN O
var
–– 
buildingPart
––  
=
––! "
context
––# *
.
––* +!
BuildingContentItem
––+ >
.
––> ?
Get
––? B
(
––B C
	activator
––C L
.
––L M
Type
––M Q
,
––Q R
partName
––S [
)
––[ \
as
––] _
ContentPart
––` k
;
––k l
var
—— 
existingPart
——  
=
——! "
context
——# *
.
——* +
ContentItem
——+ 6
.
——6 7
Get
——7 :
(
——: ;
	activator
——; D
.
——D E
Type
——E I
,
——I J 
typePartDefinition
——K ]
.
——] ^
Name
——^ b
)
——b c
as
——d f
ContentPart
——g r
;
——r s
if
”” 
(
”” 
buildingPart
””  
!=
””! #
null
””$ (
&&
””) +
existingPart
””, 8
!=
””9 ;
null
””< @
)
””@ A
{
‘‘ 
var
’’ 
partHandlers
’’ $
=
’’% &)
_contentPartHandlerResolver
’’' B
.
’’B C
GetHandlers
’’C N
(
’’N O
partName
’’O W
)
’’W X
;
’’X Y
await
÷÷ 
partHandlers
÷÷ &
.
÷÷& '
InvokeAsync
÷÷' 2
(
÷÷2 3
(
÷÷3 4
handler
÷÷4 ;
,
÷÷; <
context
÷÷= D
,
÷÷D E
existingPart
÷÷F R
,
÷÷R S
buildingPart
÷÷T `
)
÷÷` a
=>
÷÷b d
handler
÷÷e l
.
÷÷l m
VersioningAsync
÷÷m |
(
÷÷| }
context÷÷} Ñ
,÷÷Ñ Ö
existingPart÷÷Ü í
,÷÷í ì
buildingPart÷÷î †
)÷÷† °
,÷÷° ¢
context÷÷£ ™
,÷÷™ ´
existingPart÷÷¨ ∏
,÷÷∏ π
buildingPart÷÷∫ ∆
,÷÷∆ «
_logger÷÷» œ
)÷÷œ –
;÷÷– —
await
ŸŸ 
_partHandlers
ŸŸ '
.
ŸŸ' (
InvokeAsync
ŸŸ( 3
(
ŸŸ3 4
(
ŸŸ4 5
handler
ŸŸ5 <
,
ŸŸ< =
context
ŸŸ> E
,
ŸŸE F
existingPart
ŸŸG S
,
ŸŸS T
buildingPart
ŸŸU a
)
ŸŸa b
=>
ŸŸc e
handler
ŸŸf m
.
ŸŸm n
VersioningAsync
ŸŸn }
(
ŸŸ} ~
contextŸŸ~ Ö
,ŸŸÖ Ü
existingPartŸŸá ì
,ŸŸì î
buildingPartŸŸï °
)ŸŸ° ¢
,ŸŸ¢ £
contextŸŸ§ ´
,ŸŸ´ ¨
existingPartŸŸ≠ π
,ŸŸπ ∫
buildingPartŸŸª «
,ŸŸ« »
_loggerŸŸ… –
)ŸŸ– —
;ŸŸ— “
}
⁄⁄ 
}
€€ 
}
‹‹ 	
public
ﬁﬁ 
override
ﬁﬁ 
async
ﬁﬁ 
Task
ﬁﬁ "
VersionedAsync
ﬁﬁ# 1
(
ﬁﬁ1 2#
VersionContentContext
ﬁﬁ2 G
context
ﬁﬁH O
)
ﬁﬁO P
{
ﬂﬂ 	
var
‡‡ #
contentTypeDefinition
‡‡ %
=
‡‡& ''
_contentDefinitionManager
‡‡( A
.
‡‡A B
GetTypeDefinition
‡‡B S
(
‡‡S T
context
‡‡T [
.
‡‡[ \
ContentItem
‡‡\ g
.
‡‡g h
ContentType
‡‡h s
)
‡‡s t
;
‡‡t u
if
·· 
(
·· #
contentTypeDefinition
·· %
==
··& (
null
··) -
)
··- .
return
‚‚ 
;
‚‚ 
foreach
‰‰ 
(
‰‰ 
var
‰‰  
typePartDefinition
‰‰ +
in
‰‰, .#
contentTypeDefinition
‰‰/ D
.
‰‰D E
Parts
‰‰E J
)
‰‰J K
{
ÂÂ 
var
ÊÊ 
partName
ÊÊ 
=
ÊÊ  
typePartDefinition
ÊÊ 1
.
ÊÊ1 2
PartDefinition
ÊÊ2 @
.
ÊÊ@ A
Name
ÊÊA E
;
ÊÊE F
var
ÁÁ 
	activator
ÁÁ 
=
ÁÁ !
_contentPartFactory
ÁÁ  3
.
ÁÁ3 4
GetTypeActivator
ÁÁ4 D
(
ÁÁD E
partName
ÁÁE M
)
ÁÁM N
;
ÁÁN O
var
ÈÈ 
buildingPart
ÈÈ  
=
ÈÈ! "
(
ÈÈ# $
ContentPart
ÈÈ$ /
)
ÈÈ/ 0
context
ÈÈ0 7
.
ÈÈ7 8!
BuildingContentItem
ÈÈ8 K
.
ÈÈK L
Get
ÈÈL O
(
ÈÈO P
	activator
ÈÈP Y
.
ÈÈY Z
Type
ÈÈZ ^
,
ÈÈ^ _
partName
ÈÈ` h
)
ÈÈh i
;
ÈÈi j
var
ÍÍ 
existingPart
ÍÍ  
=
ÍÍ! "
(
ÍÍ# $
ContentPart
ÍÍ$ /
)
ÍÍ/ 0
context
ÍÍ0 7
.
ÍÍ7 8
ContentItem
ÍÍ8 C
.
ÍÍC D
Get
ÍÍD G
(
ÍÍG H
	activator
ÍÍH Q
.
ÍÍQ R
Type
ÍÍR V
,
ÍÍV W 
typePartDefinition
ÍÍX j
.
ÍÍj k
Name
ÍÍk o
)
ÍÍo p
;
ÍÍp q
if
ÏÏ 
(
ÏÏ 
buildingPart
ÏÏ  
!=
ÏÏ! #
null
ÏÏ$ (
&&
ÏÏ) +
existingPart
ÏÏ, 8
!=
ÏÏ9 ;
null
ÏÏ< @
)
ÏÏ@ A
{
ÌÌ 
var
ÓÓ 
partHandlers
ÓÓ $
=
ÓÓ% &)
_contentPartHandlerResolver
ÓÓ' B
.
ÓÓB C
GetHandlers
ÓÓC N
(
ÓÓN O
partName
ÓÓO W
)
ÓÓW X
;
ÓÓX Y
await
ÔÔ 
partHandlers
ÔÔ &
.
ÔÔ& '
InvokeAsync
ÔÔ' 2
(
ÔÔ2 3
(
ÔÔ3 4
handler
ÔÔ4 ;
,
ÔÔ; <
context
ÔÔ= D
,
ÔÔD E
existingPart
ÔÔF R
,
ÔÔR S
buildingPart
ÔÔT `
)
ÔÔ` a
=>
ÔÔb d
handler
ÔÔe l
.
ÔÔl m
VersionedAsync
ÔÔm {
(
ÔÔ{ |
contextÔÔ| É
,ÔÔÉ Ñ
existingPartÔÔÖ ë
,ÔÔë í
buildingPartÔÔì ü
)ÔÔü †
,ÔÔ† °
contextÔÔ¢ ©
,ÔÔ© ™
existingPartÔÔ´ ∑
,ÔÔ∑ ∏
buildingPartÔÔπ ≈
,ÔÔ≈ ∆
_loggerÔÔ« Œ
)ÔÔŒ œ
;ÔÔœ –
await
ÚÚ 
_partHandlers
ÚÚ '
.
ÚÚ' (
InvokeAsync
ÚÚ( 3
(
ÚÚ3 4
(
ÚÚ4 5
handler
ÚÚ5 <
,
ÚÚ< =
context
ÚÚ> E
,
ÚÚE F
existingPart
ÚÚG S
,
ÚÚS T
buildingPart
ÚÚU a
)
ÚÚa b
=>
ÚÚc e
handler
ÚÚf m
.
ÚÚm n
VersionedAsync
ÚÚn |
(
ÚÚ| }
contextÚÚ} Ñ
,ÚÚÑ Ö
existingPartÚÚÜ í
,ÚÚí ì
buildingPartÚÚî †
)ÚÚ† °
,ÚÚ° ¢
contextÚÚ£ ™
,ÚÚ™ ´
existingPartÚÚ¨ ∏
,ÚÚ∏ π
buildingPartÚÚ∫ ∆
,ÚÚ∆ «
_loggerÚÚ» œ
)ÚÚœ –
;ÚÚ– —
}
ÛÛ 
}
ÙÙ 
}
ıı 	
public
˜˜ 
override
˜˜ 
async
˜˜ 
Task
˜˜ "'
GetContentItemAspectAsync
˜˜# <
(
˜˜< =&
ContentItemAspectContext
˜˜= U
context
˜˜V ]
)
˜˜] ^
{
¯¯ 	
var
˘˘ #
contentTypeDefinition
˘˘ %
=
˘˘& ''
_contentDefinitionManager
˘˘( A
.
˘˘A B
GetTypeDefinition
˘˘B S
(
˘˘S T
context
˘˘T [
.
˘˘[ \
ContentItem
˘˘\ g
.
˘˘g h
ContentType
˘˘h s
)
˘˘s t
;
˘˘t u
if
˙˙ 
(
˙˙ #
contentTypeDefinition
˙˙ %
==
˙˙& (
null
˙˙) -
)
˙˙- .
return
˚˚ 
;
˚˚ 
foreach
˝˝ 
(
˝˝ 
var
˝˝  
typePartDefinition
˝˝ +
in
˝˝, .#
contentTypeDefinition
˝˝/ D
.
˝˝D E
Parts
˝˝E J
)
˝˝J K
{
˛˛ 
var
ˇˇ 
partName
ˇˇ 
=
ˇˇ  
typePartDefinition
ˇˇ 1
.
ˇˇ1 2
PartDefinition
ˇˇ2 @
.
ˇˇ@ A
Name
ˇˇA E
;
ˇˇE F
var
ÄÄ 
	activator
ÄÄ 
=
ÄÄ !
_contentPartFactory
ÄÄ  3
.
ÄÄ3 4
GetTypeActivator
ÄÄ4 D
(
ÄÄD E
partName
ÄÄE M
)
ÄÄM N
;
ÄÄN O
var
ÅÅ 
part
ÅÅ 
=
ÅÅ 
context
ÅÅ "
.
ÅÅ" #
ContentItem
ÅÅ# .
.
ÅÅ. /
Get
ÅÅ/ 2
(
ÅÅ2 3
	activator
ÅÅ3 <
.
ÅÅ< =
Type
ÅÅ= A
,
ÅÅA B 
typePartDefinition
ÅÅC U
.
ÅÅU V
Name
ÅÅV Z
)
ÅÅZ [
as
ÅÅ\ ^
ContentPart
ÅÅ_ j
;
ÅÅj k
if
ÉÉ 
(
ÉÉ 
part
ÉÉ 
!=
ÉÉ 
null
ÉÉ  
)
ÉÉ  !
{
ÑÑ 
var
ÖÖ 
partHandlers
ÖÖ $
=
ÖÖ% &)
_contentPartHandlerResolver
ÖÖ' B
.
ÖÖB C
GetHandlers
ÖÖC N
(
ÖÖN O
partName
ÖÖO W
)
ÖÖW X
;
ÖÖX Y
await
ÜÜ 
partHandlers
ÜÜ &
.
ÜÜ& '
InvokeAsync
ÜÜ' 2
(
ÜÜ2 3
(
ÜÜ3 4
handler
ÜÜ4 ;
,
ÜÜ; <
context
ÜÜ= D
,
ÜÜD E
part
ÜÜF J
)
ÜÜJ K
=>
ÜÜL N
handler
ÜÜO V
.
ÜÜV W'
GetContentItemAspectAsync
ÜÜW p
(
ÜÜp q
context
ÜÜq x
,
ÜÜx y
part
ÜÜz ~
)
ÜÜ~ 
,ÜÜ Ä
contextÜÜÅ à
,ÜÜà â
partÜÜä é
,ÜÜé è
_loggerÜÜê ó
)ÜÜó ò
;ÜÜò ô
await
ââ 
_partHandlers
ââ '
.
ââ' (
InvokeAsync
ââ( 3
(
ââ3 4
(
ââ4 5
handler
ââ5 <
,
ââ< =
context
ââ> E
,
ââE F
part
ââG K
)
ââK L
=>
ââM O
handler
ââP W
.
ââW X'
GetContentItemAspectAsync
ââX q
(
ââq r
context
ââr y
,
âây z
part
ââ{ 
)ââ Ä
,ââÄ Å
contextââÇ â
,âââ ä
partââã è
,ââè ê
_loggerââë ò
)ââò ô
;ââô ö
}
ää 
}
ãã 
}
åå 	
public
çç 
override
çç 
async
çç 
Task
çç "
ClonedAsync
çç# .
(
çç. /!
CloneContentContext
çç/ B
context
ççC J
)
ççJ K
{
éé 	
var
èè #
contentTypeDefinition
èè %
=
èè& ''
_contentDefinitionManager
èè( A
.
èèA B
GetTypeDefinition
èèB S
(
èèS T
context
èèT [
.
èè[ \
ContentItem
èè\ g
.
èèg h
ContentType
èèh s
)
èès t
;
èèt u
if
êê 
(
êê #
contentTypeDefinition
êê %
==
êê& (
null
êê) -
)
êê- .
return
ëë 
;
ëë 
foreach
ìì 
(
ìì 
var
ìì  
typePartDefinition
ìì +
in
ìì, .#
contentTypeDefinition
ìì/ D
.
ììD E
Parts
ììE J
)
ììJ K
{
îî 
var
ïï 
partName
ïï 
=
ïï  
typePartDefinition
ïï 1
.
ïï1 2
PartDefinition
ïï2 @
.
ïï@ A
Name
ïïA E
;
ïïE F
var
ññ 
	activator
ññ 
=
ññ !
_contentPartFactory
ññ  3
.
ññ3 4
GetTypeActivator
ññ4 D
(
ññD E
partName
ññE M
)
ññM N
;
ññN O
var
óó 
part
óó 
=
óó 
context
óó "
.
óó" #
ContentItem
óó# .
.
óó. /
Get
óó/ 2
(
óó2 3
	activator
óó3 <
.
óó< =
Type
óó= A
,
óóA B 
typePartDefinition
óóC U
.
óóU V
Name
óóV Z
)
óóZ [
as
óó\ ^
ContentPart
óó_ j
;
óój k
if
ôô 
(
ôô 
part
ôô 
!=
ôô 
null
ôô  
)
ôô  !
{
öö 
var
õõ 
partHandlers
õõ $
=
õõ% &)
_contentPartHandlerResolver
õõ' B
.
õõB C
GetHandlers
õõC N
(
õõN O
partName
õõO W
)
õõW X
;
õõX Y
await
úú 
partHandlers
úú &
.
úú& '
InvokeAsync
úú' 2
(
úú2 3
(
úú3 4
handler
úú4 ;
,
úú; <
context
úú= D
,
úúD E
part
úúF J
)
úúJ K
=>
úúL N
handler
úúO V
.
úúV W
ClonedAsync
úúW b
(
úúb c
context
úúc j
,
úúj k
part
úúl p
)
úúp q
,
úúq r
context
úús z
,
úúz {
partúú| Ä
,úúÄ Å
_loggerúúÇ â
)úúâ ä
;úúä ã
await
üü 
_partHandlers
üü '
.
üü' (
InvokeAsync
üü( 3
(
üü3 4
(
üü4 5
handler
üü5 <
,
üü< =
context
üü> E
,
üüE F
part
üüG K
)
üüK L
=>
üüM O
handler
üüP W
.
üüW X
ClonedAsync
üüX c
(
üüc d
context
üüd k
,
üük l
part
üüm q
)
üüq r
,
üür s
context
üüt {
,
üü{ |
partüü} Å
,üüÅ Ç
_loggerüüÉ ä
)üüä ã
;üüã å
}
†† 
}
°° 
}
¢¢ 	
public
££ 
override
££ 
async
££ 
Task
££ "
CloningAsync
££# /
(
££/ 0!
CloneContentContext
££0 C
context
££D K
)
££K L
{
§§ 	
var
•• #
contentTypeDefinition
•• %
=
••& ''
_contentDefinitionManager
••( A
.
••A B
GetTypeDefinition
••B S
(
••S T
context
••T [
.
••[ \
ContentItem
••\ g
.
••g h
ContentType
••h s
)
••s t
;
••t u
if
¶¶ 
(
¶¶ #
contentTypeDefinition
¶¶ %
==
¶¶& (
null
¶¶) -
)
¶¶- .
return
ßß 
;
ßß 
foreach
©© 
(
©© 
var
©©  
typePartDefinition
©© +
in
©©, .#
contentTypeDefinition
©©/ D
.
©©D E
Parts
©©E J
)
©©J K
{
™™ 
var
´´ 
partName
´´ 
=
´´  
typePartDefinition
´´ 1
.
´´1 2
PartDefinition
´´2 @
.
´´@ A
Name
´´A E
;
´´E F
var
¨¨ 
	activator
¨¨ 
=
¨¨ !
_contentPartFactory
¨¨  3
.
¨¨3 4
GetTypeActivator
¨¨4 D
(
¨¨D E
partName
¨¨E M
)
¨¨M N
;
¨¨N O
var
≠≠ 
part
≠≠ 
=
≠≠ 
context
≠≠ "
.
≠≠" #
ContentItem
≠≠# .
.
≠≠. /
Get
≠≠/ 2
(
≠≠2 3
	activator
≠≠3 <
.
≠≠< =
Type
≠≠= A
,
≠≠A B 
typePartDefinition
≠≠C U
.
≠≠U V
Name
≠≠V Z
)
≠≠Z [
as
≠≠\ ^
ContentPart
≠≠_ j
;
≠≠j k
if
ØØ 
(
ØØ 
part
ØØ 
!=
ØØ 
null
ØØ  
)
ØØ  !
{
∞∞ 
var
±± 
partHandlers
±± $
=
±±% &)
_contentPartHandlerResolver
±±' B
.
±±B C
GetHandlers
±±C N
(
±±N O
partName
±±O W
)
±±W X
;
±±X Y
await
≤≤ 
partHandlers
≤≤ &
.
≤≤& '
InvokeAsync
≤≤' 2
(
≤≤2 3
(
≤≤3 4
handler
≤≤4 ;
,
≤≤; <
context
≤≤= D
,
≤≤D E
part
≤≤F J
)
≤≤J K
=>
≤≤L N
handler
≤≤O V
.
≤≤V W
CloningAsync
≤≤W c
(
≤≤c d
context
≤≤d k
,
≤≤k l
part
≤≤m q
)
≤≤q r
,
≤≤r s
context
≤≤t {
,
≤≤{ |
part≤≤} Å
,≤≤Å Ç
_logger≤≤É ä
)≤≤ä ã
;≤≤ã å
await
µµ 
_partHandlers
µµ '
.
µµ' (
InvokeAsync
µµ( 3
(
µµ3 4
(
µµ4 5
handler
µµ5 <
,
µµ< =
context
µµ> E
,
µµE F
part
µµG K
)
µµK L
=>
µµM O
handler
µµP W
.
µµW X
CloningAsync
µµX d
(
µµd e
context
µµe l
,
µµl m
part
µµn r
)
µµr s
,
µµs t
context
µµu |
,
µµ| }
partµµ~ Ç
,µµÇ É
_loggerµµÑ ã
)µµã å
;µµå ç
}
∂∂ 
}
∑∑ 
}
∏∏ 	
}
ππ 
}∫∫ ¸
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Handlers\ContentPartHandlerResolver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class &
ContentPartHandlerResolver +
:, -'
IContentPartHandlerResolver. I
{		 
private

 
readonly

 
IServiceProvider

 )
_serviceProvider

* :
;

: ;
private 
readonly 
ContentOptions '
_contentOptions( 7
;7 8
public &
ContentPartHandlerResolver )
() *
IServiceProvider 
serviceProvider ,
,, -
IOptions 
< 
ContentOptions #
># $!
contentDisplayOptions% :
) 
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
_contentOptions 
= !
contentDisplayOptions 3
.3 4
Value4 9
;9 :
} 	
public 
IList 
< 
IContentPartHandler (
>( )
GetHandlers* 5
(5 6
string6 <
partName= E
)E F
{ 	
var 
services 
= 
new 
List #
<# $
IContentPartHandler$ 7
>7 8
(8 9
)9 :
;: ;
if 
( 
_contentOptions 
.  $
ContentPartOptionsLookup  8
.8 9
TryGetValue9 D
(D E
partNameE M
,M N
outO R
varS V
contentPartOptionW h
)h i
)i j
{ 
foreach 
( 
var 
handlerOption *
in+ -
contentPartOption. ?
.? @
Handlers@ H
)H I
{ 
services 
. 
Add  
(  !
(! "
IContentPartHandler" 5
)5 6
_serviceProvider6 F
.F G
GetRequiredServiceG Y
(Y Z
handlerOptionZ g
)g h
)h i
;i j
} 
}   
return"" 
services"" 
;"" 
}## 	
}$$ 
}%% “:
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Handlers\ContentsHandler.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public		 

class		 !
UpdateContentsHandler		 &
:		' (
ContentHandlerBase		) ;
{

 
private 
readonly 
IClock 
_clock  &
;& '
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public !
UpdateContentsHandler $
($ %
IClock% +
clock, 1
,1 2 
IHttpContextAccessor3 G
httpContextAccessorH [
)[ \
{ 	
_clock 
= 
clock 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
override 
Task 
CreatingAsync *
(* + 
CreateContentContext+ ?
context@ G
)G H
{ 	
var 
utcNow 
= 
_clock 
.  
UtcNow  &
;& '
if 
( 
! 
context 
. 
ContentItem $
.$ %

CreatedUtc% /
./ 0
HasValue0 8
)8 9
{ 
context 
. 
ContentItem #
.# $

CreatedUtc$ .
=/ 0
utcNow1 7
;7 8
} 
context 
. 
ContentItem 
.  
ModifiedUtc  +
=, -
utcNow. 4
;4 5
var 
httpContext 
=  
_httpContextAccessor 2
.2 3
HttpContext3 >
;> ?
if 
( 
context 
. 
ContentItem #
.# $
Owner$ )
==* ,
null- 1
&&2 4
(5 6
httpContext6 A
?A B
.B C
UserC G
?G H
.H I
IdentityI Q
?Q R
.R S
IsAuthenticatedS b
??c e
falsef k
)k l
)l m
{   
context!! 
.!! 
ContentItem!! #
.!!# $
Owner!!$ )
=!!* +
httpContext!!, 7
.!!7 8
User!!8 <
.!!< =
FindFirstValue!!= K
(!!K L

ClaimTypes!!L V
.!!V W
NameIdentifier!!W e
)!!e f
;!!f g
context"" 
."" 
ContentItem"" #
.""# $
Author""$ *
=""+ ,
httpContext""- 8
.""8 9
User""9 =
.""= >
Identity""> F
.""F G
Name""G K
;""K L
}## 
return%% 
Task%% 
.%% 
CompletedTask%% %
;%%% &
}&& 	
public(( 
override(( 
Task(( 
UpdatingAsync(( *
(((* + 
UpdateContentContext((+ ?
context((@ G
)((G H
{)) 	
var** 
utcNow** 
=** 
_clock** 
.**  
UtcNow**  &
;**& '
context++ 
.++ 
ContentItem++ 
.++  
ModifiedUtc++  +
=++, -
utcNow++. 4
;++4 5
var,, 
httpContext,, 
=,,  
_httpContextAccessor,, 2
.,,2 3
HttpContext,,3 >
;,,> ?
if-- 
(-- 
httpContext-- 
?-- 
.-- 
User-- !
?--! "
.--" #
Identity--# +
?--+ ,
.--, -
IsAuthenticated--- <
??--= ?
false--@ E
)--E F
{.. 
context11 
.11 
ContentItem11 #
.11# $
Author11$ *
=11+ ,
httpContext11- 8
.118 9
User119 =
.11= >
Identity11> F
.11F G
Name11G K
;11K L
}22 
return44 
Task44 
.44 
CompletedTask44 %
;44% &
}55 	
public77 
override77 
Task77 
VersioningAsync77 ,
(77, -!
VersionContentContext77- B
context77C J
)77J K
{88 	
var99 
utcNow99 
=99 
_clock99 
.99  
UtcNow99  &
;99& '
context;; 
.;; 
BuildingContentItem;; '
.;;' (
Owner;;( -
=;;. /
context;;0 7
.;;7 8
ContentItem;;8 C
.;;C D
Owner;;D I
;;;I J
context<< 
.<< 
BuildingContentItem<< '
.<<' (

CreatedUtc<<( 2
=<<3 4
context<<5 <
.<<< =
ContentItem<<= H
.<<H I

CreatedUtc<<I S
??<<T V
utcNow<<W ]
;<<] ^
context== 
.== 
BuildingContentItem== '
.==' (
PublishedUtc==( 4
===5 6
context==7 >
.==> ?
ContentItem==? J
.==J K
PublishedUtc==K W
;==W X
context>> 
.>> 
BuildingContentItem>> '
.>>' (
ModifiedUtc>>( 3
=>>4 5
utcNow>>6 <
;>>< =
return@@ 
Task@@ 
.@@ 
CompletedTask@@ %
;@@% &
}AA 	
publicCC 
overrideCC 
TaskCC 
PublishingAsyncCC ,
(CC, -!
PublishContentContextCC- B
contextCCC J
)CCJ K
{DD 	
varEE 
utcNowEE 
=EE 
_clockEE 
.EE  
UtcNowEE  &
;EE& '
ifHH 
(HH 
!HH 
contextHH 
.HH 
ContentItemHH $
.HH$ %
PublishedUtcHH% 1
.HH1 2
HasValueHH2 :
&&HH; =
!HH> ?
contextHH? F
.HHF G
ContentItemHHG R
.HHR S

CreatedUtcHHS ]
.HH] ^
HasValueHH^ f
)HHf g
{II 
contextJJ 
.JJ 
ContentItemJJ #
.JJ# $

CreatedUtcJJ$ .
=JJ/ 0
utcNowJJ1 7
;JJ7 8
}KK 
contextMM 
.MM 
ContentItemMM 
.MM  
PublishedUtcMM  ,
=MM- .
utcNowMM/ 5
;MM5 6
returnOO 
TaskOO 
.OO 
CompletedTaskOO %
;OO% &
}PP 	
publicRR 
overrideRR 
TaskRR 
UnpublishedAsyncRR -
(RR- .!
PublishContentContextRR. C
contextRRD K
)RRK L
{SS 	
varTT 
utcNowTT 
=TT 
_clockTT 
.TT  
UtcNowTT  &
;TT& '
contextUU 
.UU 
ContentItemUU 
.UU  
PublishedUtcUU  ,
=UU- .
nullUU/ 3
;UU3 4
returnVV 
TaskVV 
.VV 
CompletedTaskVV %
;VV% &
}WW 	
}XX 
}YY Î=
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Records\ContentItemIndex.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Records( /
{ 
public 

class 
ContentItemIndex !
:" #
MapIndex$ ,
{ 
public 
const 
int 
MaxContentTypeSize +
=, -
$num. 1
;1 2
public		 
const		 
int		 
MaxContentPartSize		 +
=		, -
$num		. 1
;		1 2
public

 
const

 
int

 
MaxContentFieldSize

 ,
=

- .
$num

/ 2
;

2 3
public 
const 
int 
MaxOwnerSize %
=& '
$num( +
;+ ,
public 
const 
int 
MaxAuthorSize &
=' (
$num) ,
;, -
public 
const 
int 
MaxDisplayTextSize +
=, -
$num. 1
;1 2
public 
int 

DocumentId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string  
ContentItemVersionId *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool 
	Published 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Latest 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
ModifiedUtc $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
PublishedUtc %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 

CreatedUtc #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Owner 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Author 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class $
ContentItemIndexProvider )
:* +
IndexProvider, 9
<9 :
ContentItem: E
>E F
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{   	
context!! 
.!! 
For!! 
<!! 
ContentItemIndex!! (
>!!( )
(!!) *
)!!* +
."" 
Map"" 
("" 
contentItem""  
=>""! #
{## 
var$$ 
contentItemIndex$$ (
=$$) *
new$$+ .
ContentItemIndex$$/ ?
{%% 
Latest&& 
=&&  
contentItem&&! ,
.&&, -
Latest&&- 3
,&&3 4
	Published'' !
=''" #
contentItem''$ /
.''/ 0
	Published''0 9
,''9 :
ContentType(( #
=(($ %
contentItem((& 1
.((1 2
ContentType((2 =
,((= >
ContentItemId)) %
=))& '
contentItem))( 3
.))3 4
ContentItemId))4 A
,))A B 
ContentItemVersionId** ,
=**- .
contentItem**/ :
.**: ; 
ContentItemVersionId**; O
,**O P
ModifiedUtc++ #
=++$ %
contentItem++& 1
.++1 2
ModifiedUtc++2 =
,++= >
PublishedUtc,, $
=,,% &
contentItem,,' 2
.,,2 3
PublishedUtc,,3 ?
,,,? @

CreatedUtc-- "
=--# $
contentItem--% 0
.--0 1

CreatedUtc--1 ;
,--; <
Owner.. 
=.. 
contentItem..  +
...+ ,
Owner.., 1
,..1 2
Author// 
=//  
contentItem//! ,
.//, -
Author//- 3
,//3 4
DisplayText00 #
=00$ %
contentItem00& 1
.001 2
DisplayText002 =
}11 
;11 
if33 
(33 
contentItemIndex33 (
.33( )
ContentType33) 4
?334 5
.335 6
Length336 <
>33= >
ContentItemIndex33? O
.33O P
MaxContentTypeSize33P b
)33b c
{44 
contentItemIndex55 (
.55( )
ContentType55) 4
=555 6
contentItem557 B
.55B C
ContentType55C N
.55N O
	Substring55O X
(55X Y
$num55Y Z
,55Z [
ContentItemIndex55\ l
.55l m
MaxContentTypeSize55m 
)	55 Ä
;
55Ä Å
}66 
if88 
(88 
contentItemIndex88 (
.88( )
Owner88) .
?88. /
.88/ 0
Length880 6
>887 8
ContentItemIndex889 I
.88I J
MaxOwnerSize88J V
)88V W
{99 
contentItemIndex:: (
.::( )
Owner::) .
=::/ 0
contentItem::1 <
.::< =
Owner::= B
.::B C
	Substring::C L
(::L M
$num::M N
,::N O
ContentItemIndex::P `
.::` a
MaxOwnerSize::a m
)::m n
;::n o
};; 
if== 
(== 
contentItemIndex== (
.==( )
Author==) /
?==/ 0
.==0 1
Length==1 7
>==8 9
ContentItemIndex==: J
.==J K
MaxAuthorSize==K X
)==X Y
{>> 
contentItemIndex?? (
.??( )
Author??) /
=??0 1
contentItem??2 =
.??= >
Author??> D
.??D E
	Substring??E N
(??N O
$num??O P
,??P Q
ContentItemIndex??R b
.??b c
MaxAuthorSize??c p
)??p q
;??q r
}@@ 
ifBB 
(BB 
contentItemIndexBB (
.BB( )
DisplayTextBB) 4
?BB4 5
.BB5 6
LengthBB6 <
>BB= >
ContentItemIndexBB? O
.BBO P
MaxDisplayTextSizeBBP b
)BBb c
{CC 
contentItemIndexDD (
.DD( )
DisplayTextDD) 4
=DD5 6
contentItemDD7 B
.DDB C
DisplayTextDDC N
.DDN O
	SubstringDDO X
(DDX Y
$numDDY Z
,DDZ [
ContentItemIndexDD\ l
.DDl m
MaxDisplayTextSizeDDm 
)	DD Ä
;
DDÄ Å
}EE 
returnGG 
contentItemIndexGG +
;GG+ ,
}HH 
)HH 
;HH 
}II 	
}JJ 
}KK ëí
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Records\Migrations.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Records( /
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
{ 	
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
ContentItemIndex. >
>> ?
(? @
table@ E
=>F H
tableI N
. 
Column 
< 
string 
> 
(  
$str  /
,/ 0
c1 2
=>3 5
c6 7
.7 8

WithLength8 B
(B C
$numC E
)E F
)F G
. 
Column 
< 
string 
> 
(  
$str  6
,6 7
c8 9
=>: <
c= >
.> ?

WithLength? I
(I J
$numJ L
)L M
)M N
. 
Column 
< 
bool 
> 
( 
$str &
)& '
. 
Column 
< 
bool 
> 
( 
$str )
)) *
. 
Column 
< 
string 
> 
(  
$str  -
,- .
column/ 5
=>6 8
column9 ?
.? @

WithLength@ J
(J K
ContentItemIndexK [
.[ \
MaxContentTypeSize\ n
)n o
)o p
. 
Column 
< 
DateTime  
>  !
(! "
$str" /
,/ 0
column1 7
=>8 :
column; A
.A B
NullableB J
(J K
)K L
)L M
. 
Column 
< 
DateTime  
>  !
(! "
$str" 0
,0 1
column2 8
=>9 ;
column< B
.B C
NullableC K
(K L
)L M
)M N
. 
Column 
< 
DateTime  
>  !
(! "
$str" .
,. /
column0 6
=>7 9
column: @
.@ A
NullableA I
(I J
)J K
)K L
. 
Column 
< 
string 
> 
(  
$str  '
,' (
column) /
=>0 2
column3 9
.9 :
Nullable: B
(B C
)C D
.D E

WithLengthE O
(O P
ContentItemIndexP `
.` a
MaxOwnerSizea m
)m n
)n o
. 
Column 
< 
string 
> 
(  
$str  (
,( )
column* 0
=>1 3
column4 :
.: ;
Nullable; C
(C D
)D E
.E F

WithLengthF P
(P Q
ContentItemIndexQ a
.a b
MaxAuthorSizeb o
)o p
)p q
. 
Column 
< 
string 
> 
(  
$str  -
,- .
column/ 5
=>6 8
column9 ?
.? @
Nullable@ H
(H I
)I J
.J K

WithLengthK U
(U V
ContentItemIndexV f
.f g
MaxDisplayTextSizeg y
)y z
)z {
) 
; 
SchemaBuilder!! 
.!! 
AlterIndexTable!! )
<!!) *
ContentItemIndex!!* :
>!!: ;
(!!; <
table!!< A
=>!!B D
table!!E J
."" 
CreateIndex"" 
("" 
$str"" >
,""> ?
$str##  
,##  !
$str$$ #
,$$# $
$str%% *
,%%* +
$str&& 
,&&  
$str'' 
)'' 
)(( 
;(( 
SchemaBuilder** 
.** 
AlterIndexTable** )
<**) *
ContentItemIndex*** :
>**: ;
(**; <
table**< A
=>**B D
table**E J
.++ 
CreateIndex++ 
(++ 
$str++ J
,++J K
$str,,  
,,,  !
$str-- !
,--! "
$str..  
,..  !
$str// !
,//! "
$str00 "
,00" #
$str11 
,11  
$str22 
)22 
)33 
;33 
SchemaBuilder55 
.55 
AlterIndexTable55 )
<55) *
ContentItemIndex55* :
>55: ;
(55; <
table55< A
=>55B D
table55E J
.66 
CreateIndex66 
(66 
$str66 D
,66D E
$str77  
,77  !
$str88 
,88 
$str99 
,99  
$str:: 
):: 
);; 
;;; 
SchemaBuilder== 
.== 
AlterIndexTable== )
<==) *
ContentItemIndex==* :
>==: ;
(==; <
table==< A
=>==B D
table==E J
.>> 
CreateIndex>> 
(>> 
$str>> E
,>>E F
$str??  
,??  !
$str@@ 
,@@ 
$strAA 
,AA  
$strBB 
)BB 
)CC 
;CC 
SchemaBuilderEE 
.EE 
AlterIndexTableEE )
<EE) *
ContentItemIndexEE* :
>EE: ;
(EE; <
tableEE< A
=>EEB D
tableEEE J
.FF 
CreateIndexFF 
(FF 
$strFF J
,FFJ K
$strGG  
,GG  !
$strHH !
,HH! "
$strII 
,II  
$strJJ 
)JJ 
)KK 
;KK 
returnNN 
$numNN 
;NN 
}OO 	
publicQQ 
intQQ 
UpdateFrom1QQ 
(QQ 
)QQ  
{RR 	
SchemaBuilderSS 
.SS 
AlterIndexTableSS )
<SS) *
ContentItemIndexSS* :
>SS: ;
(SS; <
tableSS< A
=>SSB D
tableSSE J
.TT 
	AddColumnTT 
<TT 
stringTT !
>TT! "
(TT" #
$strTT# 9
,TT9 :
cTT; <
=>TT= ?
cTT@ A
.TTA B

WithLengthTTB L
(TTL M
$numTTM O
)TTO P
)TTP Q
)UU 
;UU 
returnWW 
$numWW 
;WW 
}XX 	
publicZZ 
intZZ 
UpdateFrom2ZZ 
(ZZ 
)ZZ  
{[[ 	
SchemaBuilder\\ 
.\\ 
AlterIndexTable\\ )
<\\) *
ContentItemIndex\\* :
>\\: ;
(\\; <
table\\< A
=>\\B D
table\\E J
.]] 
	AddColumn]] 
<]] 
string]] !
>]]! "
(]]" #
$str]]# 0
,]]0 1
column]]2 8
=>]]9 ;
column]]< B
.]]B C
Nullable]]C K
(]]K L
)]]L M
.]]M N

WithLength]]N X
(]]X Y
ContentItemIndex]]Y i
.]]i j
MaxDisplayTextSize]]j |
)]]| }
)]]} ~
)^^ 
;^^ 
return`` 
$num`` 
;`` 
}aa 	
publicee 
intee 
UpdateFrom3ee 
(ee 
)ee  
{ff 	
vargg "
contentTypeDefinitionsgg &
=gg' (%
_contentDefinitionManagergg) B
.ggB C
LoadTypeDefinitionsggC V
(ggV W
)ggW X
;ggX Y
foreachhh 
(hh 
varhh !
contentTypeDefinitionhh .
inhh/ 1"
contentTypeDefinitionshh2 H
)hhH I
{ii 
varjj '
existingContentTypeSettingsjj /
=jj0 1!
contentTypeDefinitionjj2 G
.jjG H
SettingsjjH P
.jjP Q
ToObjectjjQ Y
<jjY Z
ContentTypeSettingsjjZ m
>jjm n
(jjn o
)jjo p
;jjp q
varnn )
contentTypeSettingsPropertiesnn 1
=nn2 3'
existingContentTypeSettingsnn4 O
.nnO P
GetTypennP W
(nnW X
)nnX Y
.nnY Z
GetPropertiesnnZ g
(nng h
)nnh i
;nni j
foreachoo 
(oo 
varoo 
propertyoo %
inoo& ()
contentTypeSettingsPropertiesoo) F
)ooF G
{pp !
contentTypeDefinitionqq )
.qq) *
Settingsqq* 2
.qq2 3
Removeqq3 9
(qq9 :
propertyqq: B
.qqB C
NameqqC G
)qqG H
;qqH I
}rr %
_contentDefinitionManagertt )
.tt) *
AlterTypeDefinitiontt* =
(tt= >!
contentTypeDefinitiontt> S
.ttS T
NamettT X
,ttX Y
builderttZ a
=>ttb d
{uu 
buildervv 
.vv 
WithSettingsvv (
(vv( )'
existingContentTypeSettingsvv) D
)vvD E
;vvE F
foreachxx 
(xx 
varxx  %
contentTypePartDefinitionxx! :
inxx; =!
contentTypeDefinitionxx> S
.xxS T
PartsxxT Y
)xxY Z
{yy 
varzz $
existingTypePartSettingszz 4
=zz5 6%
contentTypePartDefinitionzz7 P
.zzP Q
SettingszzQ Y
.zzY Z
ToObjectzzZ b
<zzb c#
ContentTypePartSettingszzc z
>zzz {
(zz{ |
)zz| }
;zz} ~
var}} -
!contentTypePartSettingsProperties}} =
=}}> ?$
existingTypePartSettings}}@ X
.}}X Y
GetType}}Y `
(}}` a
)}}a b
.}}b c
GetProperties}}c p
(}}p q
)}}q r
;}}r s
foreach~~ 
(~~  !
var~~! $
property~~% -
in~~. 0-
!contentTypePartSettingsProperties~~1 R
)~~R S
{ '
contentTypePartDefinition
ÄÄ 5
.
ÄÄ5 6
Settings
ÄÄ6 >
.
ÄÄ> ?
Remove
ÄÄ? E
(
ÄÄE F
property
ÄÄF N
.
ÄÄN O
Name
ÄÄO S
)
ÄÄS T
;
ÄÄT U
}
ÅÅ 
builder
ÉÉ 
.
ÉÉ  
WithPart
ÉÉ  (
(
ÉÉ( )'
contentTypePartDefinition
ÉÉ) B
.
ÉÉB C
Name
ÉÉC G
,
ÉÉG H'
contentTypePartDefinition
ÉÉI b
.
ÉÉb c
PartDefinition
ÉÉc q
,
ÉÉq r
partBuilder
ÉÉs ~
=>ÉÉ Å
{
ÑÑ 
partBuilder
ÖÖ '
.
ÖÖ' (
WithSettings
ÖÖ( 4
(
ÖÖ4 5&
existingTypePartSettings
ÖÖ5 M
)
ÖÖM N
;
ÖÖN O
}
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 
)
àà 
;
àà 
}
ââ 
return
ãã 
$num
ãã 
;
ãã 
}
åå 	
public
êê 
int
êê 
UpdateFrom4
êê 
(
êê 
)
êê  
{
ëë 	
var
íí 
partDefinitions
íí 
=
íí  !'
_contentDefinitionManager
íí" ;
.
íí; <!
LoadPartDefinitions
íí< O
(
ííO P
)
ííP Q
;
ííQ R
foreach
ìì 
(
ìì 
var
ìì 
partDefinition
ìì '
in
ìì( *
partDefinitions
ìì+ :
)
ìì: ;
{
îî 
var
ïï "
existingPartSettings
ïï (
=
ïï) *
partDefinition
ïï+ 9
.
ïï9 :
Settings
ïï: B
.
ïïB C
ToObject
ïïC K
<
ïïK L!
ContentPartSettings
ïïL _
>
ïï_ `
(
ïï` a
)
ïïa b
;
ïïb c
var
ôô +
contentTypeSettingsProperties
ôô 1
=
ôô2 3"
existingPartSettings
ôô4 H
.
ôôH I
GetType
ôôI P
(
ôôP Q
)
ôôQ R
.
ôôR S
GetProperties
ôôS `
(
ôô` a
)
ôôa b
;
ôôb c
foreach
öö 
(
öö 
var
öö 
property
öö %
in
öö& (+
contentTypeSettingsProperties
öö) F
)
ööF G
{
õõ 
partDefinition
úú "
.
úú" #
Settings
úú# +
.
úú+ ,
Remove
úú, 2
(
úú2 3
property
úú3 ;
.
úú; <
Name
úú< @
)
úú@ A
;
úúA B
}
ùù '
_contentDefinitionManager
üü )
.
üü) *!
AlterPartDefinition
üü* =
(
üü= >
partDefinition
üü> L
.
üüL M
Name
üüM Q
,
üüQ R
partBuilder
üüS ^
=>
üü_ a
{
†† 
partBuilder
°° 
.
°°  
WithSettings
°°  ,
(
°°, -"
existingPartSettings
°°- A
)
°°A B
;
°°B C
foreach
¢¢ 
(
¢¢ 
var
¢¢  
fieldDefinition
¢¢! 0
in
¢¢1 3
partDefinition
¢¢4 B
.
¢¢B C
Fields
¢¢C I
)
¢¢I J
{
££ 
var
§§ #
existingFieldSettings
§§ 1
=
§§2 3
fieldDefinition
§§4 C
.
§§C D
Settings
§§D L
.
§§L M
ToObject
§§M U
<
§§U V&
ContentPartFieldSettings
§§V n
>
§§n o
(
§§o p
)
§§p q
;
§§q r
var
®® %
fieldSettingsProperties
®® 3
=
®®4 5#
existingFieldSettings
®®6 K
.
®®K L
GetType
®®L S
(
®®S T
)
®®T U
.
®®U V
GetProperties
®®V c
(
®®c d
)
®®d e
;
®®e f
foreach
©© 
(
©©  !
var
©©! $
property
©©% -
in
©©. 0%
fieldSettingsProperties
©©1 H
)
©©H I
{
™™ 
fieldDefinition
´´ +
.
´´+ ,
Settings
´´, 4
.
´´4 5
Remove
´´5 ;
(
´´; <
property
´´< D
.
´´D E
Name
´´E I
)
´´I J
;
´´J K
}
¨¨ 
partBuilder
ÆÆ #
.
ÆÆ# $
	WithField
ÆÆ$ -
(
ÆÆ- .
fieldDefinition
ÆÆ. =
.
ÆÆ= >
Name
ÆÆ> B
,
ÆÆB C
fieldBuilder
ÆÆD P
=>
ÆÆQ S
{
ØØ 
fieldBuilder
∞∞ (
.
∞∞( )
WithSettings
∞∞) 5
(
∞∞5 6#
existingFieldSettings
∞∞6 K
)
∞∞K L
;
∞∞L M
}
±± 
)
±± 
;
±± 
}
≤≤ 
}
≥≥ 
)
≥≥ 
;
≥≥ 
}
¥¥ 
return
∂∂ 
$num
∂∂ 
;
∂∂ 
}
∑∑ 	
public
∫∫ 
int
∫∫ 
UpdateFrom5
∫∫ 
(
∫∫ 
)
∫∫  
{
ªª 	
SchemaBuilder
ºº 
.
ºº 
AlterIndexTable
ºº )
<
ºº) *
ContentItemIndex
ºº* :
>
ºº: ;
(
ºº; <
table
ºº< A
=>
ººB D
table
ººE J
.
ΩΩ 
CreateIndex
ΩΩ 
(
ΩΩ 
$str
ΩΩ >
,
ΩΩ> ?
$str
ææ  
,
ææ  !
$str
øø #
,
øø# $
$str
¿¿ *
,
¿¿* +
$str
¡¡ 
,
¡¡  
$str
¬¬ 
)
¬¬ 
)
√√ 
;
√√ 
SchemaBuilder
≈≈ 
.
≈≈ 
AlterIndexTable
≈≈ )
<
≈≈) *
ContentItemIndex
≈≈* :
>
≈≈: ;
(
≈≈; <
table
≈≈< A
=>
≈≈B D
table
≈≈E J
.
∆∆ 
CreateIndex
∆∆ 
(
∆∆ 
$str
∆∆ J
,
∆∆J K
$str
««  
,
««  !
$str
»» !
,
»»! "
$str
……  
,
……  !
$str
   !
,
  ! "
$str
ÀÀ "
,
ÀÀ" #
$str
ÃÃ 
,
ÃÃ  
$str
ÕÕ 
)
ÕÕ 
)
ŒŒ 
;
ŒŒ 
SchemaBuilder
–– 
.
–– 
AlterIndexTable
–– )
<
––) *
ContentItemIndex
––* :
>
––: ;
(
––; <
table
––< A
=>
––B D
table
––E J
.
—— 
CreateIndex
—— 
(
—— 
$str
—— D
,
——D E
$str
““  
,
““  !
$str
”” 
,
”” 
$str
‘‘ 
,
‘‘  
$str
’’ 
)
’’ 
)
÷÷ 
;
÷÷ 
SchemaBuilder
ÿÿ 
.
ÿÿ 
AlterIndexTable
ÿÿ )
<
ÿÿ) *
ContentItemIndex
ÿÿ* :
>
ÿÿ: ;
(
ÿÿ; <
table
ÿÿ< A
=>
ÿÿB D
table
ÿÿE J
.
ŸŸ 
CreateIndex
ŸŸ 
(
ŸŸ 
$str
ŸŸ E
,
ŸŸE F
$str
⁄⁄  
,
⁄⁄  !
$str
€€ 
,
€€ 
$str
‹‹ 
,
‹‹  
$str
›› 
)
›› 
)
ﬁﬁ 
;
ﬁﬁ 
SchemaBuilder
‡‡ 
.
‡‡ 
AlterIndexTable
‡‡ )
<
‡‡) *
ContentItemIndex
‡‡* :
>
‡‡: ;
(
‡‡; <
table
‡‡< A
=>
‡‡B D
table
‡‡E J
.
·· 
CreateIndex
·· 
(
·· 
$str
·· J
,
··J K
$str
‚‚  
,
‚‚  !
$str
„„ !
,
„„! "
$str
‰‰ 
,
‰‰  
$str
ÂÂ 
)
ÂÂ 
)
ÊÊ 
;
ÊÊ 
return
ËË 
$num
ËË 
;
ËË 
}
ÈÈ 	
}
ÍÍ 
}ÎÎ ¡%
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection ( 
AddContentManagement) =
(= >
this> B
IServiceCollectionC U
servicesV ^
)^ _
{ 	
services 
. 
	AddScoped 
< !
ICacheContextProvider 4
,4 51
%ContentDefinitionCacheContextProvider6 [
>[ \
(\ ]
)] ^
;^ _
services 
. 
TryAddScoped !
<! "%
IContentDefinitionManager" ;
,; <$
ContentDefinitionManager= U
>U V
(V W
)W X
;X Y
services 
. 
TryAddScoped !
<! "#
IContentDefinitionStore" 9
,9 :*
DatabaseContentDefinitionStore; Y
>Y Z
(Z [
)[ \
;\ ]
services 
. 
TryAddScoped !
<! "
IContentManager" 1
,1 2!
DefaultContentManager3 H
>H I
(I J
)J K
;K L
services 
. 
TryAddScoped !
<! ""
IContentManagerSession" 8
,8 9(
DefaultContentManagerSession: V
>V W
(W X
)X Y
;Y Z
services 
. 
AddSingleton !
<! "
IIndexProvider" 0
,0 1$
ContentItemIndexProvider2 J
>J K
(K L
)L M
;M N
services 
. 
	AddScoped 
< 
IDataMigration -
,- .

Migrations/ 9
>9 :
(: ;
); <
;< =
services 
. 
	AddScoped 
< 
IContentHandler .
,. /!
UpdateContentsHandler0 E
>E F
(F G
)G H
;H I
services 
. 
	AddScoped 
< 
IContentHandler .
,. /)
ContentPartHandlerCoordinator0 M
>M N
(N O
)O P
;P Q
services 
. 
AddSingleton !
<! "!
ITypeActivatorFactory" 7
<7 8
ContentPart8 C
>C D
,D E
ContentPartFactoryF X
>X Y
(Y Z
)Z [
;[ \
services 
. 
AddSingleton !
<! "!
ITypeActivatorFactory" 7
<7 8
ContentField8 D
>D E
,E F
ContentFieldFactoryG Z
>Z [
([ \
)\ ]
;] ^
services 
. 
AddSingleton !
<! "#
IContentItemIdGenerator" 9
,9 :)
DefaultContentItemIdGenerator; X
>X Y
(Y Z
)Z [
;[ \
services 
. 
	AddScoped 
< !
IContentHandleManager 4
,4 5 
ContentHandleManager6 J
>J K
(K L
)L M
;M N
services   
.   

AddOptions   
<    
ContentOptions    .
>  . /
(  / 0
)  0 1
;  1 2
services!! 
.!! 
	AddScoped!! 
<!! '
IContentPartHandlerResolver!! :
,!!: ;&
ContentPartHandlerResolver!!< V
>!!V W
(!!W X
)!!X Y
;!!Y Z
return## 
services## 
;## 
}$$ 	
public&& 
static&& 
IServiceCollection&& ()
AddFileContentDefinitionStore&&) F
(&&F G
this&&G K
IServiceCollection&&L ^
services&&_ g
)&&g h
{'' 	
services(( 
.(( 
	RemoveAll(( 
<(( #
IContentDefinitionStore(( 6
>((6 7
(((7 8
)((8 9
;((9 :
services)) 
.)) 
	AddScoped)) 
<)) #
IContentDefinitionStore)) 6
,))6 7&
FileContentDefinitionStore))8 R
>))R S
())S T
)))T U
;))U V
return** 
services** 
;** 
}++ 	
},, 
}-- 