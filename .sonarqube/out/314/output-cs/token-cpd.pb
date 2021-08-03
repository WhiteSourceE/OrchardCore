�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Cache\ContentDefinitionCacheContextProvider.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\CompiledQueries\PublishedContentItemById.cs
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
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ContentDefinitionManager.cs
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
ContentTypeDefinition	s �
>
� �
(
� �
)
� �
;
� �
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
ContentPartDefinition	s �
>
� �
(
� �
)
� �
;
� �
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
ContentTypeDefinition	##{ �
>
##� �
(
##� �
)
##� �
)
##� �
;
##� �"
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
ContentPartDefinition	$${ �
>
$$� �
(
$$� �
)
$$� �
)
$$� �
;
$$� �
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

Identifier	''v �
;
''� �
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
)	66 �
.
66� �*
ContentPartDefinitionRecords
66� �
)
66� �
;
66� �
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
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 	
public
�� 
void
�� !
StorePartDefinition
�� '
(
��' (#
ContentPartDefinition
��( =#
contentPartDefinition
��> S
)
��S T
{
�� 	
Apply
�� 
(
�� #
contentPartDefinition
�� '
,
��' (
Acquire
��) 0
(
��0 1#
contentPartDefinition
��1 F
)
��F G
)
��G H
;
��H I+
UpdateContentDefinitionRecord
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 	
public
�� 
void
�� "
DeleteTypeDefinition
�� (
(
��( )
string
��) /
name
��0 4
)
��4 5
{
�� 	
var
�� 
record
�� 
=
�� )
LoadContentDefinitionRecord
�� 4
(
��4 5
)
��5 6
.
��6 7*
ContentTypeDefinitionRecords
��7 S
.
��S T
FirstOrDefault
��T b
(
��b c
x
��c d
=>
��e g
x
��h i
.
��i j
Name
��j n
==
��o q
name
��r v
)
��v w
;
��w x
if
�� 
(
�� 
record
�� 
!=
�� 
null
�� 
)
�� 
{
�� )
LoadContentDefinitionRecord
�� +
(
��+ ,
)
��, -
.
��- .*
ContentTypeDefinitionRecords
��. J
.
��J K
Remove
��K Q
(
��Q R
record
��R X
)
��X Y
;
��Y Z+
UpdateContentDefinitionRecord
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 	
public
�� 
void
�� "
DeletePartDefinition
�� (
(
��( )
string
��) /
name
��0 4
)
��4 5
{
�� 	
var
�� 
typesWithPart
�� 
=
�� !
LoadTypeDefinitions
��  3
(
��3 4
)
��4 5
.
��5 6
Where
��6 ;
(
��; <
typeDefinition
��< J
=>
��K M
typeDefinition
��N \
.
��\ ]
Parts
��] b
.
��b c
Any
��c f
(
��f g
part
��g k
=>
��l n
part
��o s
.
��s t
PartDefinition��t �
.��� �
Name��� �
==��� �
name��� �
)��� �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� 
typeDefinition
�� '
in
��( *
typesWithPart
��+ 8
)
��8 9
{
�� 
this
�� 
.
�� !
AlterTypeDefinition
�� (
(
��( )
typeDefinition
��) 7
.
��7 8
Name
��8 <
,
��< =
builder
��> E
=>
��F H
builder
��I P
.
��P Q

RemovePart
��Q [
(
��[ \
name
��\ `
)
��` a
)
��a b
;
��b c
}
�� 
var
�� 
record
�� 
=
�� )
LoadContentDefinitionRecord
�� 4
(
��4 5
)
��5 6
.
��6 7*
ContentPartDefinitionRecords
��7 S
.
��S T
FirstOrDefault
��T b
(
��b c
x
��c d
=>
��e g
x
��h i
.
��i j
Name
��j n
==
��o q
name
��r v
)
��v w
;
��w x
if
�� 
(
�� 
record
�� 
!=
�� 
null
�� 
)
�� 
{
�� )
LoadContentDefinitionRecord
�� +
(
��+ ,
)
��, -
.
��- .*
ContentPartDefinitionRecords
��. J
.
��J K
Remove
��K Q
(
��Q R
record
��R X
)
��X Y
;
��Y Z+
UpdateContentDefinitionRecord
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 	
private
�� )
ContentTypeDefinitionRecord
�� +
Acquire
��, 3
(
��3 4#
ContentTypeDefinition
��4 I#
contentTypeDefinition
��J _
)
��_ `
{
�� 	
var
�� 
result
�� 
=
�� )
LoadContentDefinitionRecord
�� 4
(
��4 5
)
��5 6
.
��6 7*
ContentTypeDefinitionRecords
��7 S
.
��S T
FirstOrDefault
��T b
(
��b c
x
��c d
=>
��e g
x
��h i
.
��i j
Name
��j n
==
��o q$
contentTypeDefinition��r �
.��� �
Name��� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
==
�� 
null
�� 
)
�� 
{
�� 
result
�� 
=
�� 
new
�� )
ContentTypeDefinitionRecord
�� 8
{
��9 :
Name
��; ?
=
��@ A#
contentTypeDefinition
��B W
.
��W X
Name
��X \
,
��\ ]
DisplayName
��^ i
=
��j k$
contentTypeDefinition��l �
.��� �
DisplayName��� �
}��� �
;��� �)
LoadContentDefinitionRecord
�� +
(
��+ ,
)
��, -
.
��- .*
ContentTypeDefinitionRecords
��. J
.
��J K
Add
��K N
(
��N O
result
��O U
)
��U V
;
��V W
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� )
ContentPartDefinitionRecord
�� +
Acquire
��, 3
(
��3 4#
ContentPartDefinition
��4 I#
contentPartDefinition
��J _
)
��_ `
{
�� 	
var
�� 
result
�� 
=
�� )
LoadContentDefinitionRecord
�� 4
(
��4 5
)
��5 6
.
��6 7*
ContentPartDefinitionRecords
��7 S
.
��S T
FirstOrDefault
��T b
(
��b c
x
��c d
=>
��e g
x
��h i
.
��i j
Name
��j n
==
��o q$
contentPartDefinition��r �
.��� �
Name��� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
==
�� 
null
�� 
)
�� 
{
�� 
result
�� 
=
�� 
new
�� )
ContentPartDefinitionRecord
�� 8
{
��9 :
Name
��; ?
=
��@ A#
contentPartDefinition
��B W
.
��W X
Name
��X \
,
��\ ]
}
��^ _
;
��_ `)
LoadContentDefinitionRecord
�� +
(
��+ ,
)
��, -
.
��- .*
ContentPartDefinitionRecords
��. J
.
��J K
Add
��K N
(
��N O
result
��O U
)
��U V
;
��V W
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Apply
�� 
(
�� #
ContentTypeDefinition
�� 0
model
��1 6
,
��6 7)
ContentTypeDefinitionRecord
��8 S
record
��T Z
)
��Z [
{
�� 	
record
�� 
.
�� 
DisplayName
�� 
=
��  
model
��! &
.
��& '
DisplayName
��' 2
;
��2 3
record
�� 
.
�� 
Settings
�� 
=
�� 
model
�� #
.
��# $
Settings
��$ ,
;
��, -
var
�� 
toRemove
�� 
=
�� 
record
�� !
.
��! ".
 ContentTypePartDefinitionRecords
��" B
.
�� 
Where
�� 
(
�� &
typePartDefinitionRecord
�� /
=>
��0 2
!
��3 4
model
��4 9
.
��9 :
Parts
��: ?
.
��? @
Any
��@ C
(
��C D
part
��D H
=>
��I K&
typePartDefinitionRecord
��L d
.
��d e
Name
��e i
==
��j l
part
��m q
.
��q r
Name
��r v
)
��v w
)
��w x
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
remove
�� 
in
��  "
toRemove
��# +
)
��+ ,
{
�� 
record
�� 
.
�� .
 ContentTypePartDefinitionRecords
�� 7
.
��7 8
Remove
��8 >
(
��> ?
remove
��? E
)
��E F
;
��F G
}
�� 
foreach
�� 
(
�� 
var
�� 
part
�� 
in
��  
model
��! &
.
��& '
Parts
��' ,
)
��, -
{
�� 
var
�� 
typePartRecord
�� "
=
��# $
record
��% +
.
��+ ,.
 ContentTypePartDefinitionRecords
��, L
.
��L M
FirstOrDefault
��M [
(
��[ \
r
��\ ]
=>
��^ `
r
��a b
.
��b c
Name
��c g
==
��h j
part
��k o
.
��o p
Name
��p t
)
��t u
;
��u v
if
�� 
(
�� 
typePartRecord
�� "
==
��# %
null
��& *
)
��* +
{
�� 
typePartRecord
�� "
=
��# $
new
��% (-
ContentTypePartDefinitionRecord
��) H
{
�� 
PartName
��  
=
��! "
part
��# '
.
��' (
PartDefinition
��( 6
.
��6 7
Name
��7 ;
,
��; <
Name
�� 
=
�� 
part
�� #
.
��# $
Name
��$ (
,
��( )
Settings
��  
=
��! "
part
��# '
.
��' (
Settings
��( 0
}
�� 
;
�� 
record
�� 
.
�� .
 ContentTypePartDefinitionRecords
�� ;
.
��; <
Add
��< ?
(
��? @
typePartRecord
��@ N
)
��N O
;
��O P
}
�� 
Apply
�� 
(
�� 
part
�� 
,
�� 
typePartRecord
�� *
)
��* +
;
��+ ,
}
�� 
}
�� 	
private
�� 
void
�� 
Apply
�� 
(
�� '
ContentTypePartDefinition
�� 4
model
��5 :
,
��: ;-
ContentTypePartDefinitionRecord
��< [
record
��\ b
)
��b c
{
�� 	
record
�� 
.
�� 
Settings
�� 
=
�� 
model
�� #
.
��# $
Settings
��$ ,
;
��, -
}
�� 	
private
�� 
void
�� 
Apply
�� 
(
�� #
ContentPartDefinition
�� 0
model
��1 6
,
��6 7)
ContentPartDefinitionRecord
��8 S
record
��T Z
)
��Z [
{
�� 	
record
�� 
.
�� 
Settings
�� 
=
�� 
model
�� #
.
��# $
Settings
��$ ,
;
��, -
var
�� 
toRemove
�� 
=
�� 
record
�� !
.
��! "/
!ContentPartFieldDefinitionRecords
��" C
.
�� 
Where
�� 
(
�� '
partFieldDefinitionRecord
�� 0
=>
��1 3
!
��4 5
model
��5 :
.
��: ;
Fields
��; A
.
��A B
Any
��B E
(
��E F
	partField
��F O
=>
��P R'
partFieldDefinitionRecord
��S l
.
��l m
Name
��m q
==
��r t
	partField
��u ~
.
��~ 
Name�� �
)��� �
)��� �
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
remove
�� 
in
��  "
toRemove
��# +
)
��+ ,
{
�� 
record
�� 
.
�� /
!ContentPartFieldDefinitionRecords
�� 8
.
��8 9
Remove
��9 ?
(
��? @
remove
��@ F
)
��F G
;
��G H
}
�� 
foreach
�� 
(
�� 
var
�� 
field
�� 
in
�� !
model
��" '
.
��' (
Fields
��( .
)
��. /
{
�� 
var
�� 
	fieldName
�� 
=
�� 
field
��  %
.
��% &
Name
��& *
;
��* +
var
�� 
partFieldRecord
�� #
=
��$ %
record
��& ,
.
��, -/
!ContentPartFieldDefinitionRecords
��- N
.
��N O
FirstOrDefault
��O ]
(
��] ^
r
��^ _
=>
��` b
r
��c d
.
��d e
Name
��e i
==
��j l
	fieldName
��m v
)
��v w
;
��w x
if
�� 
(
�� 
partFieldRecord
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
partFieldRecord
�� #
=
��$ %
new
��& ).
 ContentPartFieldDefinitionRecord
��* J
{
�� 
	FieldName
�� !
=
��" #
field
��$ )
.
��) *
FieldDefinition
��* 9
.
��9 :
Name
��: >
,
��> ?
Name
�� 
=
�� 
field
�� $
.
��$ %
Name
��% )
}
�� 
;
�� 
record
�� 
.
�� /
!ContentPartFieldDefinitionRecords
�� <
.
��< =
Add
��= @
(
��@ A
partFieldRecord
��A P
)
��P Q
;
��Q R
}
�� 
Apply
�� 
(
�� 
field
�� 
,
�� 
partFieldRecord
�� ,
)
��, -
;
��- .
}
�� 
}
�� 	
private
�� 
void
�� 
Apply
�� 
(
�� (
ContentPartFieldDefinition
�� 5
model
��6 ;
,
��; <.
 ContentPartFieldDefinitionRecord
��= ]
record
��^ d
)
��d e
{
�� 	
record
�� 
.
�� 
Settings
�� 
=
�� 
model
�� #
.
��# $
Settings
��$ ,
;
��, -
}
�� 	
private
�� #
ContentTypeDefinition
�� %
Build
��& +
(
��+ ,)
ContentTypeDefinitionRecord
��, G
source
��H N
,
��N O
IList
��P U
<
��U V)
ContentPartDefinitionRecord
��V q
>
��q r$
partDefinitionRecords��s �
)��� �
{
�� 	
if
�� 
(
�� 
source
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
var
�� #
contentTypeDefinition
�� %
=
��& '
new
��( +#
ContentTypeDefinition
��, A
(
��A B
source
�� 
.
�� 
Name
�� 
,
�� 
source
�� 
.
�� 
DisplayName
�� "
,
��" #
source
�� 
.
�� .
 ContentTypePartDefinitionRecords
�� 7
.
��7 8
Select
��8 >
(
��> ?
tp
��? A
=>
��B D
Build
��E J
(
��J K
tp
��K M
,
��M N#
partDefinitionRecords
��O d
.
��d e
FirstOrDefault
��e s
(
��s t
p
��t u
=>
��v x
p
��y z
.
��z {
Name
��{ 
==��� �
tp��� �
.��� �
PartName��� �
)��� �
)��� �
)��� �
,��� �
source
�� 
.
�� 
Settings
�� 
)
��  
;
��  !
return
�� #
contentTypeDefinition
�� (
;
��( )
}
�� 	
private
�� '
ContentTypePartDefinition
�� )
Build
��* /
(
��/ 0-
ContentTypePartDefinitionRecord
��0 O
source
��P V
,
��V W)
ContentPartDefinitionRecord
��X s#
partDefinitionRecord��t �
)��� �
{
�� 	
return
�� 
source
�� 
==
�� 
null
�� !
?
��" #
null
��$ (
:
��) *
new
��+ .'
ContentTypePartDefinition
��/ H
(
��H I
source
�� 
.
�� 
Name
�� 
,
�� 
Build
�� 
(
�� "
partDefinitionRecord
�� *
)
��* +
??
��, .
new
��/ 2#
ContentPartDefinition
��3 H
(
��H I
source
��I O
.
��O P
PartName
��P X
,
��X Y

Enumerable
��Z d
.
��d e
Empty
��e j
<
��j k)
ContentPartFieldDefinition��k �
>��� �
(��� �
)��� �
,��� �
new��� �
JObject��� �
(��� �
)��� �
)��� �
,��� �
source
�� 
.
�� 
Settings
�� 
)
��  
;
��  !
}
�� 	
private
�� #
ContentPartDefinition
�� %
Build
��& +
(
��+ ,)
ContentPartDefinitionRecord
��, G
source
��H N
)
��N O
{
�� 	
return
�� 
source
�� 
==
�� 
null
�� !
?
��" #
null
��$ (
:
��) *
new
��+ .#
ContentPartDefinition
��/ D
(
��D E
source
�� 
.
�� 
Name
�� 
,
�� 
source
�� 
.
�� /
!ContentPartFieldDefinitionRecords
�� 8
.
��8 9
Select
��9 ?
(
��? @
Build
��@ E
)
��E F
,
��F G
source
�� 
.
�� 
Settings
�� 
)
��  
;
��  !
}
�� 	
private
�� (
ContentPartFieldDefinition
�� *
Build
��+ 0
(
��0 1.
 ContentPartFieldDefinitionRecord
��1 Q
source
��R X
)
��X Y
{
�� 	
return
�� 
source
�� 
==
�� 
null
�� !
?
��" #
null
��$ (
:
��) *
new
��+ .(
ContentPartFieldDefinition
��/ I
(
��I J
Build
�� 
(
�� 
new
�� *
ContentFieldDefinitionRecord
�� 6
{
��7 8
Name
��9 =
=
��> ?
source
��@ F
.
��F G
	FieldName
��G P
}
��Q R
)
��R S
,
��S T
source
�� 
.
�� 
Name
�� 
,
�� 
source
�� 
.
�� 
Settings
�� 
)
�� 
;
�� 
}
�� 	
private
�� $
ContentFieldDefinition
�� &
Build
��' ,
(
��, -*
ContentFieldDefinitionRecord
��- I
source
��J P
)
��P Q
{
�� 	
return
�� 
source
�� 
==
�� 
null
�� !
?
��" #
null
��$ (
:
��) *
new
��+ .$
ContentFieldDefinition
��/ E
(
��E F
source
��F L
.
��L M
Name
��M Q
)
��Q R
;
��R S
}
�� 	
private
�� %
ContentDefinitionRecord
�� ')
LoadContentDefinitionRecord
��( C
(
��C D
)
��D E
=>
��F H%
_contentDefinitionStore
��I `
.
��` a(
LoadContentDefinitionAsync
��a {
(
��{ |
)
��| }
.
��} ~

GetAwaiter��~ �
(��� �
)��� �
.��� �
	GetResult��� �
(��� �
)��� �
;��� �
private
�� %
ContentDefinitionRecord
�� '(
GetContentDefinitionRecord
��( B
(
��B C
)
��C D
=>
��E G%
_contentDefinitionStore
��H _
.
��_ `'
GetContentDefinitionAsync
��` y
(
��y z
)
��z {
.
��{ |

GetAwaiter��| �
(��� �
)��� �
.��� �
	GetResult��� �
(��� �
)��� �
;��� �
private
�� 
void
�� +
UpdateContentDefinitionRecord
�� 2
(
��2 3
)
��3 4
{
�� 	
var
�� %
contentDefinitionRecord
�� '
=
��( ))
LoadContentDefinitionRecord
��* E
(
��E F
)
��F G
;
��G H%
_contentDefinitionStore
�� #
.
��# $(
SaveContentDefinitionAsync
��$ >
(
��> ?%
contentDefinitionRecord
��? V
)
��V W
.
��W X

GetAwaiter
��X b
(
��b c
)
��c d
.
��d e
	GetResult
��e n
(
��n o
)
��o p
;
��p q$
_scopedTypeDefinitions
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +$
_scopedPartDefinitions
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
}
�� 	
private
�� 
void
�� %
CheckDocumentIdentifier
�� ,
(
��, -%
ContentDefinitionRecord
��- D
document
��E M
)
��M N
{
�� 	
if
�� 
(
�� 
!
�� 
_memoryCache
�� 
.
�� 
TryGetValue
�� )
<
��) *
Document
��* 2
>
��2 3
(
��3 4
CacheKey
��4 <
,
��< =
out
��> A
var
��B E

cacheEntry
��F P
)
��P Q
||
��R T

cacheEntry
��U _
.
��_ `

Identifier
��` j
!=
��k m
document
��n v
.
��v w

Identifier��w �
)��� �
{
�� 

cacheEntry
�� 
=
�� 
new
��  
Document
��! )
(
��) *
)
��* +
{
�� 

Identifier
�� 
=
��  
document
��! )
.
��) *

Identifier
��* 4
,
��4 5
}
�� 
;
�� $
_cachedTypeDefinitions
�� &
.
��& '
Clear
��' ,
(
��, -
)
��- .
;
��. /$
_cachedPartDefinitions
�� &
.
��& '
Clear
��' ,
(
��, -
)
��- .
;
��. /
_memoryCache
�� 
.
�� 
Set
��  
(
��  !
CacheKey
��! )
,
��) *

cacheEntry
��+ 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
}
�� 
}�� �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ContentFieldFactory.cs
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
)	 �
)
� �
;
� �
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
}55 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ContentHandleManager.cs
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
}   �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ContentPartFactory.cs
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
;	 �
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
}55 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\DatabaseContentDefinitionStore.cs
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
(	 �%
contentDefinitionRecord
� �
)
� �
;
� �
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\DefaultContentItemIdGenerator.cs
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
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\DefaultContentManager.cs
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
MergeArrayHandling	y �
.
� �
Replace
� �
}
� �
;
� �
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
�� 	
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
contentItemId
��% 2
)
��2 3
)
��3 4
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
ContentItem
�� 
contentItem
�� #
=
��$ %
null
��& *
;
��* +
if
�� 
(
�� 
options
�� 
.
�� 
IsLatest
��  
)
��  !
{
�� 
contentItem
�� 
=
�� 
await
�� #
_session
��$ ,
.
�� 
Query
�� 
<
�� 
ContentItem
�� &
,
��& '
ContentItemIndex
��( 8
>
��8 9
(
��9 :
)
��: ;
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
��  !
.
��! "
ContentItemId
��" /
==
��0 2
contentItemId
��3 @
&&
��A C
x
��D E
.
��E F
Latest
��F L
==
��M O
true
��P T
)
��T U
.
�� !
FirstOrDefaultAsync
�� (
(
��( )
)
��) *
;
��* +
}
�� 
else
�� 
if
�� 
(
�� 
options
�� 
.
�� 
IsDraft
�� $
&&
��% '
!
��( )
options
��) 0
.
��0 1
IsDraftRequired
��1 @
)
��@ A
{
�� 
contentItem
�� 
=
�� 
await
�� #
_session
��$ ,
.
�� 
Query
�� 
<
�� 
ContentItem
�� &
,
��& '
ContentItemIndex
��( 8
>
��8 9
(
��9 :
)
��: ;
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
ContentItemId
�� '
==
��( *
contentItemId
��+ 8
&&
��9 ;
x
�� 
.
�� 
	Published
�� #
==
��$ &
false
��' ,
&&
��- /
x
�� 
.
�� 
Latest
��  
==
��! #
true
��$ (
)
��( )
.
�� !
FirstOrDefaultAsync
�� (
(
��( )
)
��) *
;
��* +
}
�� 
else
�� 
if
�� 
(
�� 
options
�� 
.
�� 
IsDraft
�� $
||
��% '
options
��( /
.
��/ 0
IsDraftRequired
��0 ?
)
��? @
{
�� 
contentItem
�� 
=
�� 
await
�� #
_session
��$ ,
.
�� 
Query
�� 
<
�� 
ContentItem
�� &
,
��& '
ContentItemIndex
��( 8
>
��8 9
(
��9 :
)
��: ;
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
ContentItemId
�� '
==
��( *
contentItemId
��+ 8
&&
��9 ;
x
�� 
.
�� 
Latest
��  
==
��! #
true
��$ (
)
��( )
.
�� !
FirstOrDefaultAsync
�� (
(
��( )
)
��) *
;
��* +
}
�� 
else
�� 
if
�� 
(
�� 
options
�� 
.
�� 
IsPublished
�� (
)
��( )
{
�� 
if
�� 
(
�� $
_contentManagerSession
�� *
.
��* +#
RecallPublishedItemId
��+ @
(
��@ A
contentItemId
��A N
,
��N O
out
��P S
contentItem
��T _
)
��_ `
)
��` a
{
�� 
return
�� 
contentItem
�� &
;
��& '
}
�� 
contentItem
�� 
=
�� 
await
�� #
_session
��$ ,
.
��, -
ExecuteQuery
��- 9
(
��9 :
new
��: =&
PublishedContentItemById
��> V
(
��V W
contentItemId
��W d
)
��d e
)
��e f
.
��f g!
FirstOrDefaultAsync
��g z
(
��z {
)
��{ |
;
��| }
}
�� 
if
�� 
(
�� 
contentItem
�� 
==
�� 
null
�� #
)
��# $
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
contentItem
�� 
=
�� 
await
�� 
	LoadAsync
��  )
(
��) *
contentItem
��* 5
)
��5 6
;
��6 7
if
�� 
(
�� 
options
�� 
.
�� 
IsDraftRequired
�� '
)
��' (
{
�� 
if
�� 
(
�� 
contentItem
�� 
.
��  
	Published
��  )
)
��) *
{
�� 
var
�� #
contentTypeDefinition
�� -
=
��. /'
_contentDefinitionManager
��0 I
.
��I J
GetTypeDefinition
��J [
(
��[ \
contentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� 
!
�� 
(
�� #
contentTypeDefinition
�� /
?
��/ 0
.
��0 1
GetSettings
��1 <
<
��< =!
ContentTypeSettings
��= P
>
��P Q
(
��Q R
)
��R S
.
��S T
Versionable
��T _
??
��` b
true
��c g
)
��g h
)
��h i
{
�� 
contentItem
�� #
.
��# $
	Published
��$ -
=
��. /
false
��0 5
;
��5 6
}
�� 
else
�� 
{
�� 
_session
��  
.
��  !
Save
��! %
(
��% &
contentItem
��& 1
)
��1 2
;
��2 3
contentItem
�� #
=
��$ %
await
��& +"
BuildNewVersionAsync
��, @
(
��@ A
contentItem
��A L
)
��L M
;
��M N
}
�� 
}
�� 
_session
�� 
.
�� 
Save
�� 
(
�� 
contentItem
�� )
)
��) *
;
��* +
}
�� 
return
�� 
contentItem
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ContentItem
�� %
>
��% &
	LoadAsync
��' 0
(
��0 1
ContentItem
��1 <
contentItem
��= H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� $
_contentManagerSession
�� '
.
��' (
RecallVersionId
��( 7
(
��7 8
contentItem
��8 C
.
��C D
Id
��D F
,
��F G
out
��H K
var
��L O
loaded
��P V
)
��V W
)
��W X
{
�� $
_contentManagerSession
�� &
.
��& '
Store
��' ,
(
��, -
contentItem
��- 8
)
��8 9
;
��9 :
var
�� 
context
�� 
=
�� 
new
�� ! 
LoadContentContext
��" 4
(
��4 5
contentItem
��5 @
)
��@ A
;
��A B
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� *
(
��* +
(
��+ ,
handler
��, 3
,
��3 4
context
��5 <
)
��< =
=>
��> @
handler
��A H
.
��H I
LoadingAsync
��I U
(
��U V
context
��V ]
)
��] ^
,
��^ _
context
��` g
,
��g h
_logger
��i p
)
��p q
;
��q r
await
�� 
ReversedHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
LoadedAsync
��Q \
(
��\ ]
context
��] d
)
��d e
,
��e f
context
��g n
,
��n o
_logger
��p w
)
��w x
;
��x y
loaded
�� 
=
�� 
context
��  
.
��  !
ContentItem
��! ,
;
��, -
}
�� 
return
�� 
loaded
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ContentItem
�� %
>
��% &
GetVersionAsync
��' 6
(
��6 7
string
��7 ="
contentItemVersionId
��> R
)
��R S
{
�� 	
var
�� 
contentItem
�� 
=
�� 
await
�� #
_session
��$ ,
.
�� 
Query
�� 
<
�� 
ContentItem
�� "
,
��" #
ContentItemIndex
��$ 4
>
��4 5
(
��5 6
x
��6 7
=>
��8 :
x
��; <
.
��< ="
ContentItemVersionId
��= Q
==
��R T"
contentItemVersionId
��U i
)
��i j
.
�� !
FirstOrDefaultAsync
�� $
(
��$ %
)
��% &
;
��& '
if
�� 
(
�� 
contentItem
�� 
==
�� 
null
�� #
)
��# $
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
await
�� 
	LoadAsync
�� "
(
��" #
contentItem
��# .
)
��. /
;
��/ 0
}
�� 	
public
�� 
async
�� 
Task
�� 
SaveDraftAsync
�� (
(
��( )
ContentItem
��) 4
contentItem
��5 @
)
��@ A
{
�� 	
if
�� 
(
�� 
!
�� 
contentItem
�� 
.
�� 
Latest
�� #
||
��$ &
contentItem
��' 2
.
��2 3
	Published
��3 <
)
��< =
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
context
�� 
=
�� 
new
�� %
SaveDraftContentContext
�� 5
(
��5 6
contentItem
��6 A
)
��A B
;
��B C
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
DraftSavingAsync
��E U
(
��U V
context
��V ]
)
��] ^
,
��^ _
context
��` g
,
��g h
_logger
��i p
)
��p q
;
��q r
_session
�� 
.
�� 
Save
�� 
(
�� 
contentItem
�� %
)
��% &
;
��& '
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
DraftSavedAsync
��M \
(
��\ ]
context
��] d
)
��d e
,
��e f
context
��g n
,
��n o
_logger
��p w
)
��w x
;
��x y
}
�� 	
public
�� 
async
�� 
Task
�� 
PublishAsync
�� &
(
��& '
ContentItem
��' 2
contentItem
��3 >
)
��> ?
{
�� 	
if
�� 
(
�� 
contentItem
�� 
.
�� 
	Published
�� %
)
��% &
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
previous
�� 
=
�� 
await
��  
_session
��! )
.
�� 
Query
�� 
<
�� 
ContentItem
�� "
,
��" #
ContentItemIndex
��$ 4
>
��4 5
(
��5 6
x
��6 7
=>
��8 :
x
�� 
.
�� 
ContentItemId
�� #
==
��$ &
contentItem
��' 2
.
��2 3
ContentItemId
��3 @
&&
��A C
x
��D E
.
��E F
	Published
��F O
)
��O P
.
�� !
FirstOrDefaultAsync
�� $
(
��$ %
)
��% &
;
��& '
var
�� 
context
�� 
=
�� 
new
�� #
PublishContentContext
�� 3
(
��3 4
contentItem
��4 ?
,
��? @
previous
��A I
)
��I J
;
��J K
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
PublishingAsync
��E T
(
��T U
context
��U \
)
��\ ]
,
��] ^
context
��_ f
,
��f g
_logger
��h o
)
��o p
;
��p q
if
�� 
(
�� 
context
�� 
.
�� 
Cancel
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
previous
�� 
!=
�� 
null
��  
)
��  !
{
�� 
_session
�� 
.
�� 
Save
�� 
(
�� 
previous
�� &
)
��& '
;
��' (
previous
�� 
.
�� 
	Published
�� "
=
��# $
false
��% *
;
��* +
}
�� 
contentItem
�� 
.
�� 
	Published
�� !
=
��" #
true
��$ (
;
��( )
_session
�� 
.
�� 
Save
�� 
(
�� 
contentItem
�� %
)
��% &
;
��& '
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
PublishedAsync
��M [
(
��[ \
context
��\ c
)
��c d
,
��d e
context
��f m
,
��m n
_logger
��o v
)
��v w
;
��w x
}
�� 	
public
�� 
async
�� 
Task
�� 
UnpublishAsync
�� (
(
��( )
ContentItem
��) 4
contentItem
��5 @
)
��@ A
{
�� 	
if
�� 
(
�� 
!
�� 
contentItem
�� 
.
�� 
Latest
�� #
)
��# $
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 M
)
��M N
;
��N O
}
�� 
ContentItem
�� 
publishedItem
�� %
;
��% &
if
�� 
(
�� 
contentItem
�� 
.
�� 
	Published
�� %
)
��% &
{
�� 
publishedItem
�� 
=
�� 
contentItem
��  +
;
��+ ,
}
�� 
else
�� 
{
�� 
publishedItem
�� 
=
�� 
await
��  %
GetAsync
��& .
(
��. /
contentItem
��/ :
.
��: ;
ContentItemId
��; H
,
��H I
VersionOptions
��J X
.
��X Y
	Published
��Y b
)
��b c
;
��c d
}
�� 
if
�� 
(
�� 
publishedItem
�� 
==
��  
null
��! %
)
��% &
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
context
�� 
=
�� 
new
�� #
PublishContentContext
�� 3
(
��3 4
contentItem
��4 ?
,
��? @
publishedItem
��A N
)
��N O
{
�� 
PublishingItem
�� 
=
��  
null
��! %
}
�� 
;
�� 
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
UnpublishingAsync
��E V
(
��V W
context
��W ^
)
��^ _
,
��_ `
context
��a h
,
��h i
_logger
��j q
)
��q r
;
��r s
publishedItem
�� 
.
�� 
	Published
�� #
=
��$ %
false
��& +
;
��+ ,
publishedItem
�� 
.
�� 
ModifiedUtc
�� %
=
��& '
_clock
��( .
.
��. /
UtcNow
��/ 5
;
��5 6
_session
�� 
.
�� 
Save
�� 
(
�� 
publishedItem
�� '
)
��' (
;
��( )
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
UnpublishedAsync
��M ]
(
��] ^
context
��^ e
)
��e f
,
��f g
context
��h o
,
��o p
_logger
��q x
)
��x y
;
��y z
}
�� 	
	protected
�� 
async
�� 
Task
�� 
<
�� 
ContentItem
�� (
>
��( )"
BuildNewVersionAsync
��* >
(
��> ?
ContentItem
��? J!
existingContentItem
��K ^
)
��^ _
{
�� 	
ContentItem
�� 
latestVersion
�� %
;
��% &
if
�� 
(
�� !
existingContentItem
�� #
.
��# $
Latest
��$ *
)
��* +
{
�� 
latestVersion
�� 
=
�� !
existingContentItem
��  3
;
��3 4
}
�� 
else
�� 
{
�� 
latestVersion
�� 
=
�� 
await
��  %
_session
��& .
.
�� 
Query
�� 
<
�� 
ContentItem
�� &
,
��& '
ContentItemIndex
��( 8
>
��8 9
(
��9 :
x
��: ;
=>
��< >
x
�� 
.
�� 
ContentItemId
�� '
==
��( *!
existingContentItem
��+ >
.
��> ?
ContentItemId
��? L
&&
��M O
x
�� 
.
�� 
Latest
��  
)
��  !
.
�� !
FirstOrDefaultAsync
�� (
(
��( )
)
��) *
;
��* +
if
�� 
(
�� 
latestVersion
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
_session
�� 
.
�� 
Save
�� !
(
��! "
latestVersion
��" /
)
��/ 0
;
��0 1
}
�� 
}
�� 
if
�� 
(
�� 
latestVersion
�� 
!=
��  
null
��! %
)
��% &
{
�� 
latestVersion
�� 
.
�� 
Latest
�� $
=
��% &
false
��' ,
;
��, -
}
�� 
var
�� !
buildingContentItem
�� #
=
��$ %
new
��& )
ContentItem
��* 5
(
��5 6
)
��6 7
;
��7 8!
buildingContentItem
�� 
.
��  
ContentType
��  +
=
��, -!
existingContentItem
��. A
.
��A B
ContentType
��B M
;
��M N!
buildingContentItem
�� 
.
��  
ContentItemId
��  -
=
��. /!
existingContentItem
��0 C
.
��C D
ContentItemId
��D Q
;
��Q R!
buildingContentItem
�� 
.
��  "
ContentItemVersionId
��  4
=
��5 6
_idGenerator
��7 C
.
��C D
GenerateUniqueId
��D T
(
��T U!
existingContentItem
��U h
)
��h i
;
��i j!
buildingContentItem
�� 
.
��  
DisplayText
��  +
=
��, -!
existingContentItem
��. A
.
��A B
DisplayText
��B M
;
��M N!
buildingContentItem
�� 
.
��  
Latest
��  &
=
��' (
true
��) -
;
��- .!
buildingContentItem
�� 
.
��  
Data
��  $
=
��% &
new
��' *
JObject
��+ 2
(
��2 3!
existingContentItem
��3 F
.
��F G
Data
��G K
)
��K L
;
��L M
var
�� 
context
�� 
=
�� 
new
�� #
VersionContentContext
�� 3
(
��3 4!
existingContentItem
��4 G
,
��G H!
buildingContentItem
��I \
)
��\ ]
;
��] ^
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
VersioningAsync
��E T
(
��T U
context
��U \
)
��\ ]
,
��] ^
context
��_ f
,
��f g
_logger
��h o
)
��o p
;
��p q
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
VersionedAsync
��M [
(
��[ \
context
��\ c
)
��c d
,
��d e
context
��f m
,
��m n
_logger
��o v
)
��v w
;
��w x
return
�� 
context
�� 
.
�� !
BuildingContentItem
�� .
;
��. /
}
�� 	
public
�� 
async
�� 
Task
�� 
CreateAsync
�� %
(
��% &
ContentItem
��& 1
contentItem
��2 =
,
��= >
VersionOptions
��? M
options
��N U
)
��U V
{
�� 	
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
contentItem
��% 0
.
��0 1"
ContentItemVersionId
��1 E
)
��E F
)
��F G
{
�� 
contentItem
�� 
.
�� "
ContentItemVersionId
�� 0
=
��1 2
_idGenerator
��3 ?
.
��? @
GenerateUniqueId
��@ P
(
��P Q
contentItem
��Q \
)
��\ ]
;
��] ^
contentItem
�� 
.
�� 
	Published
�� %
=
��& '
true
��( ,
;
��, -
contentItem
�� 
.
�� 
Latest
�� "
=
��# $
true
��% )
;
��) *
}
�� 
if
�� 
(
�� 
options
�� 
.
�� 
IsDraft
�� 
)
��  
{
�� 
contentItem
�� 
.
�� 
	Published
�� %
=
��& '
false
��( -
;
��- .
}
�� 
var
�� 
context
�� 
=
�� 
new
�� "
CreateContentContext
�� 2
(
��2 3
contentItem
��3 >
)
��> ?
;
��? @
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
CreatingAsync
��E R
(
��R S
context
��S Z
)
��Z [
,
��[ \
context
��] d
,
��d e
_logger
��f m
)
��m n
;
��n o
_session
�� 
.
�� 
Save
�� 
(
�� 
contentItem
�� %
)
��% &
;
��& '$
_contentManagerSession
�� "
.
��" #
Store
��# (
(
��( )
contentItem
��) 4
)
��4 5
;
��5 6
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
CreatedAsync
��M Y
(
��Y Z
context
��Z a
)
��a b
,
��b c
context
��d k
,
��k l
_logger
��m t
)
��t u
;
��u v
if
�� 
(
�� 
options
�� 
.
�� 
IsPublished
�� #
)
��# $
{
�� 
var
�� 
publishContext
�� "
=
��# $
new
��% (#
PublishContentContext
��) >
(
��> ?
contentItem
��? J
,
��J K
null
��L P
)
��P Q
;
��Q R
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� *
(
��* +
(
��+ ,
handler
��, 3
,
��3 4
context
��5 <
)
��< =
=>
��> @
handler
��A H
.
��H I
PublishingAsync
��I X
(
��X Y
context
��Y `
)
��` a
,
��a b
publishContext
��c q
,
��q r
_logger
��s z
)
��z {
;
��{ |
await
�� 
ReversedHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
PublishedAsync
��Q _
(
��_ `
context
��` g
)
��g h
,
��h i
publishContext
��j x
,
��x y
_logger��z �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
Task
�� 
<
�� #
ContentValidateResult
�� )
>
��) *+
CreateContentItemVersionAsync
��+ H
(
��H I
ContentItem
��I T
contentItem
��U `
)
��` a
{
�� 	
return
�� +
CreateContentItemVersionAsync
�� 0
(
��0 1
contentItem
��1 <
,
��< =
null
��> B
)
��B C
;
��C D
}
�� 	
public
�� 
Task
�� 
<
�� #
ContentValidateResult
�� )
>
��) *+
UpdateContentItemVersionAsync
��+ H
(
��H I
ContentItem
��I T
updatingVersion
��U d
,
��d e
ContentItem
��f q
updatedVersion��r �
)��� �
{
�� 	
return
�� +
UpdateContentItemVersionAsync
�� 0
(
��0 1
updatingVersion
��1 @
,
��@ A
updatedVersion
��B P
,
��P Q
null
��R V
)
��V W
;
��W X
}
�� 	
public
�� 
async
�� 
Task
�� 
ImportAsync
�� %
(
��% &
IEnumerable
��& 1
<
��1 2
ContentItem
��2 =
>
��= >
contentItems
��? K
)
��K L
{
�� 	
var
�� 
skip
�� 
=
�� 
$num
�� 
;
�� 
var
�� !
batchedContentItems
�� #
=
��$ %
contentItems
��& 2
.
��2 3
Take
��3 7
(
��7 8
ImportBatchSize
��8 G
)
��G H
;
��H I
while
�� 
(
�� !
batchedContentItems
�� &
.
��& '
Any
��' *
(
��* +
)
��+ ,
)
��, -
{
�� 
var
�� 

versionIds
�� 
=
��  !
batchedContentItems
��! 4
.
�� 
Where
�� 
(
�� 
x
�� 
=>
��  
!
��! "
String
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7
x
��7 8
.
��8 9"
ContentItemVersionId
��9 M
)
��M N
)
��N O
.
�� 
Select
�� 
(
�� 
x
�� 
=>
�� !
x
��" #
.
��# $"
ContentItemVersionId
��$ 8
)
��8 9
;
��9 :
var
�� 
itemIds
�� 
=
�� !
batchedContentItems
�� 1
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
!
��  !
String
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6
x
��6 7
.
��7 8
ContentItemId
��8 E
)
��E F
)
��F G
.
�� 
Select
�� 
(
�� 
x
�� 
=>
��  
x
��! "
.
��" #
ContentItemId
��# 0
)
��0 1
;
��1 2
var
�� "
existingContentItems
�� (
=
��) *
await
��+ 0
_session
��1 9
.
�� 
Query
�� 
<
�� 
ContentItem
�� &
,
��& '
ContentItemIndex
��( 8
>
��8 9
(
��9 :
x
��: ;
=>
��< >
x
�� 
.
�� 
ContentItemId
�� '
.
��' (
IsIn
��( ,
(
��, -
itemIds
��- 4
)
��4 5
&&
��6 8
(
�� 
x
�� 
.
�� 
Latest
�� !
||
��" $
x
��% &
.
��& '
	Published
��' 0
||
��1 3
x
��4 5
.
��5 6"
ContentItemVersionId
��6 J
.
��J K
IsIn
��K O
(
��O P

versionIds
��P Z
)
��Z [
)
��[ \
)
��\ ]
.
�� 
	ListAsync
�� 
(
�� 
)
��  
;
��  !
var
�� 
versionsToUpdate
�� $
=
��% &"
existingContentItems
��' ;
.
��; <
Where
��< A
(
��A B
c
��B C
=>
��D F

versionIds
��G Q
.
��Q R
Any
��R U
(
��U V
v
��V W
=>
��X Z
String
��[ a
.
��a b
Equals
��b h
(
��h i
v
��i j
,
��j k
c
��l m
.
��m n#
ContentItemVersionId��n �
,��� � 
StringComparison��� �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
)��� �
;��� �
var
�� &
versionsThatMaybeEvicted
�� ,
=
��- ."
existingContentItems
��/ C
.
��C D
Except
��D J
(
��J K
versionsToUpdate
��K [
)
��[ \
;
��\ ]
foreach
�� 
(
�� 
var
�� 
version
�� $
in
��% '"
existingContentItems
��( <
)
��< =
{
�� 
await
�� 
	LoadAsync
�� #
(
��# $
version
��$ +
)
��+ ,
;
��, -
}
�� 
foreach
�� 
(
�� 
var
�� 
importingItem
�� *
in
��+ -!
batchedContentItems
��. A
)
��A B
{
�� 
ContentItem
�� 
originalVersion
��  /
=
��0 1
null
��2 6
;
��6 7
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
importingItem
��. ;
.
��; <"
ContentItemVersionId
��< P
)
��P Q
)
��Q R
{
�� 
originalVersion
�� '
=
��( )
versionsToUpdate
��* :
.
��: ;
FirstOrDefault
��; I
(
��I J
x
��J K
=>
��L N
String
��O U
.
��U V
Equals
��V \
(
��\ ]
x
��] ^
.
��^ _"
ContentItemVersionId
��_ s
,
��s t
importingItem��u �
.��� �$
ContentItemVersionId��� �
,��� � 
StringComparison��� �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
originalVersion
�� '
==
��( *
null
��+ /
)
��/ 0
{
�� 
var
�� 
context
�� #
=
��$ %
new
��& )"
ImportContentContext
��* >
(
��> ?
importingItem
��? L
)
��L M
;
��M N
await
�� 
Handlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
ImportingAsync
��Q _
(
��_ `
context
��` g
)
��g h
,
��h i
context
��j q
,
��q r
_logger
��s z
)
��z {
;
��{ |
var
�� 
evictionVersions
�� ,
=
��- .&
versionsThatMaybeEvicted
��/ G
.
��G H
Where
��H M
(
��M N
x
��N O
=>
��P R
String
��S Y
.
��Y Z
Equals
��Z `
(
��` a
x
��a b
.
��b c
ContentItemId
��c p
,
��p q
importingItem
��r 
.�� �
ContentItemId��� �
,��� � 
StringComparison��� �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
;��� �
var
�� 
result
�� "
=
��# $
await
��% *+
CreateContentItemVersionAsync
��+ H
(
��H I
importingItem
��I V
,
��V W
evictionVersions
��X h
)
��h i
;
��i j
if
�� 
(
�� 
!
�� 
result
�� #
.
��# $
	Succeeded
��$ -
)
��- .
{
�� 
if
�� 
(
��  
_logger
��  '
.
��' (
	IsEnabled
��( 1
(
��1 2
LogLevel
��2 :
.
��: ;
Error
��; @
)
��@ A
)
��A B
{
�� 
_logger
��  '
.
��' (
LogError
��( 0
(
��0 1
$str��1 �
,��� �
importingItem��� �
?��� �
.��� �$
ContentItemVersionId��� �
,��� �
string��� �
.��� �
Join��� �
(��� �
$str��� �
,��� �
result��� �
.��� �
Errors��� �
)��� �
)��� �
;��� �
}
�� 
throw
�� !
new
��" %!
ValidationException
��& 9
(
��9 :
string
��: @
.
��@ A
Join
��A E
(
��E F
$str
��F J
,
��J K
result
��L R
.
��R S
Errors
��S Y
)
��Y Z
)
��Z [
;
��[ \
}
�� 
await
�� 
ReversedHandlers
�� .
.
��. /
InvokeAsync
��/ :
(
��: ;
(
��; <
handler
��< C
,
��C D
context
��E L
)
��L M
=>
��N P
handler
��Q X
.
��X Y
ImportedAsync
��Y f
(
��f g
context
��g n
)
��n o
,
��o p
context
��q x
,
��x y
_logger��z �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
var
�� 

jImporting
�� &
=
��' (
JObject
��) 0
.
��0 1

FromObject
��1 ;
(
��; <
importingItem
��< I
)
��I J
;
��J K

jImporting
�� "
.
��" #
Remove
��# )
(
��) *
nameof
��* 0
(
��0 1
ContentItem
��1 <
.
��< =
	Published
��= F
)
��F G
)
��G H
;
��H I

jImporting
�� "
.
��" #
Remove
��# )
(
��) *
nameof
��* 0
(
��0 1
ContentItem
��1 <
.
��< =
Latest
��= C
)
��C D
)
��D E
;
��E F
var
�� 
	jOriginal
�� %
=
��& '
JObject
��( /
.
��/ 0

FromObject
��0 :
(
��: ;
originalVersion
��; J
)
��J K
;
��K L
	jOriginal
�� !
.
��! "
Remove
��" (
(
��( )
nameof
��) /
(
��/ 0
ContentItem
��0 ;
.
��; <
	Published
��< E
)
��E F
)
��F G
;
��G H
	jOriginal
�� !
.
��! "
Remove
��" (
(
��( )
nameof
��) /
(
��/ 0
ContentItem
��0 ;
.
��; <
Latest
��< B
)
��B C
)
��C D
;
��D E
if
�� 
(
�� 
JToken
�� "
.
��" #

DeepEquals
��# -
(
��- .

jImporting
��. 8
,
��8 9
	jOriginal
��: C
)
��C D
)
��D E
{
�� 
_logger
�� #
.
��# $
LogInformation
��$ 2
(
��2 3
$str
��3 r
,
��r s
importingItem��t �
.��� �$
ContentItemVersionId��� �
)��� �
;��� �
continue
�� $
;
��$ %
}
�� 
var
�� 
context
�� #
=
��$ %
new
��& )"
ImportContentContext
��* >
(
��> ?
importingItem
��? L
,
��L M
originalVersion
��N ]
)
��] ^
;
��^ _
await
�� 
Handlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
ImportingAsync
��Q _
(
��_ `
context
��` g
)
��g h
,
��h i
context
��j q
,
��q r
_logger
��s z
)
��z {
;
��{ |
var
�� 
evictionVersions
�� ,
=
��- .&
versionsThatMaybeEvicted
��/ G
.
��G H
Where
��H M
(
��M N
x
��N O
=>
��P R
String
��S Y
.
��Y Z
Equals
��Z `
(
��` a
x
��a b
.
��b c
ContentItemId
��c p
,
��p q
importingItem
��r 
.�� �
ContentItemId��� �
,��� � 
StringComparison��� �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
;��� �
var
�� 
result
�� "
=
��# $
await
��% *+
UpdateContentItemVersionAsync
��+ H
(
��H I
originalVersion
��I X
,
��X Y
importingItem
��Z g
,
��g h
evictionVersions
��i y
)
��y z
;
��z {
if
�� 
(
�� 
!
�� 
result
�� #
.
��# $
	Succeeded
��$ -
)
��- .
{
�� 
if
�� 
(
��  
_logger
��  '
.
��' (
	IsEnabled
��( 1
(
��1 2
LogLevel
��2 :
.
��: ;
Error
��; @
)
��@ A
)
��A B
{
�� 
_logger
��  '
.
��' (
LogError
��( 0
(
��0 1
$str��1 �
,��� �
importingItem��� �
.��� �$
ContentItemVersionId��� �
,��� �
string��� �
.��� �
Join��� �
(��� �
$str��� �
,��� �
result��� �
.��� �
Errors��� �
)��� �
)��� �
;��� �
}
�� 
throw
�� !
new
��" %!
ValidationException
��& 9
(
��9 :
string
��: @
.
��@ A
Join
��A E
(
��E F
$str
��F J
,
��J K
result
��L R
.
��R S
Errors
��S Y
)
��Y Z
)
��Z [
;
��[ \
}
�� 
await
�� 
ReversedHandlers
�� .
.
��. /
InvokeAsync
��/ :
(
��: ;
(
��; <
handler
��< C
,
��C D
context
��E L
)
��L M
=>
��N P
handler
��Q X
.
��X Y
ImportedAsync
��Y f
(
��f g
context
��g n
)
��n o
,
��o p
context
��q x
,
��x y
_logger��z �
)��� �
;��� �
}
�� 
}
�� 
skip
�� 
+=
�� 
ImportBatchSize
�� '
;
��' (!
batchedContentItems
�� #
=
��$ %
contentItems
��& 2
.
��2 3
Skip
��3 7
(
��7 8
skip
��8 <
)
��< =
.
��= >
Take
��> B
(
��B C
ImportBatchSize
��C R
)
��R S
;
��S T
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
UpdateAsync
�� %
(
��% &
ContentItem
��& 1
contentItem
��2 =
)
��= >
{
�� 	
var
�� 
context
�� 
=
�� 
new
�� "
UpdateContentContext
�� 2
(
��2 3
contentItem
��3 >
)
��> ?
;
��? @
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
UpdatingAsync
��E R
(
��R S
context
��S Z
)
��Z [
,
��[ \
context
��] d
,
��d e
_logger
��f m
)
��m n
;
��n o
_session
�� 
.
�� 
Save
�� 
(
�� 
contentItem
�� %
)
��% &
;
��& '
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
UpdatedAsync
��M Y
(
��Y Z
context
��Z a
)
��a b
,
��b c
context
��d k
,
��k l
_logger
��m t
)
��t u
;
��u v
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� #
ContentValidateResult
�� /
>
��/ 0
ValidateAsync
��1 >
(
��> ?
ContentItem
��? J
contentItem
��K V
)
��V W
{
�� 	
var
�� 
validateContext
�� 
=
��  !
new
��" %$
ValidateContentContext
��& <
(
��< =
contentItem
��= H
)
��H I
;
��I J
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
ValidatingAsync
��E T
(
��T U
context
��U \
)
��\ ]
,
��] ^
validateContext
��_ n
,
��n o
_logger
��p w
)
��w x
;
��x y
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
ValidatedAsync
��M [
(
��[ \
context
��\ c
)
��c d
,
��d e
validateContext
��f u
,
��u v
_logger
��w ~
)
��~ 
;�� �
if
�� 
(
�� 
!
�� 
validateContext
��  
.
��  !#
ContentValidateResult
��! 6
.
��6 7
	Succeeded
��7 @
)
��@ A
{
�� 
_session
�� 
.
�� 
Cancel
�� 
(
��  
)
��  !
;
��! "
}
�� 
return
�� 
validateContext
�� "
.
��" ##
ContentValidateResult
��# 8
;
��8 9
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
TAspect
�� !
>
��! "!
PopulateAspectAsync
��# 6
<
��6 7
TAspect
��7 >
>
��> ?
(
��? @
IContent
��@ H
content
��I P
,
��P Q
TAspect
��R Y
aspect
��Z `
)
��` a
{
�� 	
var
�� 
context
�� 
=
�� 
new
�� &
ContentItemAspectContext
�� 6
{
�� 
ContentItem
�� 
=
�� 
content
�� %
.
��% &
ContentItem
��& 1
,
��1 2
Aspect
�� 
=
�� 
aspect
�� 
}
�� 
;
�� 
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E'
GetContentItemAspectAsync
��E ^
(
��^ _
context
��_ f
)
��f g
,
��g h
context
��i p
,
��p q
_logger
��r y
)
��y z
;
��z {
return
�� 
aspect
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
RemoveAsync
�� %
(
��% &
ContentItem
��& 1
contentItem
��2 =
)
��= >
{
�� 	
var
�� 
activeVersions
�� 
=
��  
await
��! &
_session
��' /
.
��/ 0
Query
��0 5
<
��5 6
ContentItem
��6 A
,
��A B
ContentItemIndex
��C S
>
��S T
(
��T U
)
��U V
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
ContentItemId
�� #
==
��$ &
contentItem
��' 2
.
��2 3
ContentItemId
��3 @
&&
��A C
(
�� 
x
�� 
.
�� 
	Published
��  
||
��! #
x
��$ %
.
��% &
Latest
��& ,
)
��, -
)
��- .
.
��. /
	ListAsync
��/ 8
(
��8 9
)
��9 :
;
��: ;
if
�� 
(
�� 
!
�� 
activeVersions
�� 
.
��  
Any
��  #
(
��# $
)
��$ %
)
��% &
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
context
�� 
=
�� 
new
�� "
RemoveContentContext
�� 2
(
��2 3
contentItem
��3 >
,
��> ?
true
��@ D
)
��D E
;
��E F
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
RemovingAsync
��E R
(
��R S
context
��S Z
)
��Z [
,
��[ \
context
��] d
,
��d e
_logger
��f m
)
��m n
;
��n o
foreach
�� 
(
�� 
var
�� 
version
��  
in
��! #
activeVersions
��$ 2
)
��2 3
{
�� 
version
�� 
.
�� 
	Published
�� !
=
��" #
false
��$ )
;
��) *
version
�� 
.
�� 
Latest
�� 
=
��  
false
��! &
;
��& '
_session
�� 
.
�� 
Save
�� 
(
�� 
version
�� %
)
��% &
;
��& '
}
�� 
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
RemovedAsync
��M Y
(
��Y Z
context
��Z a
)
��a b
,
��b c
context
��d k
,
��k l
_logger
��m t
)
��t u
;
��u v
}
�� 	
public
�� 
async
�� 
Task
�� 
DiscardDraftAsync
�� +
(
��+ ,
ContentItem
��, 7
contentItem
��8 C
)
��C D
{
�� 	
if
�� 
(
�� 
contentItem
�� 
.
�� 
	Published
�� %
||
��& (
!
��) *
contentItem
��* 5
.
��5 6
Latest
��6 <
)
��< =
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 J
)
��J K
;
��K L
}
�� 
var
�� 
publishedItem
�� 
=
�� 
await
��  %
GetAsync
��& .
(
��. /
contentItem
��/ :
.
��: ;
ContentItemId
��; H
,
��H I
VersionOptions
��J X
.
��X Y
	Published
��Y b
)
��b c
;
��c d
var
�� 
context
�� 
=
�� 
new
�� "
RemoveContentContext
�� 2
(
��2 3
contentItem
��3 >
,
��> ?
publishedItem
��@ M
==
��N P
null
��Q U
)
��U V
;
��V W
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
RemovingAsync
��E R
(
��R S
context
��S Z
)
��Z [
,
��[ \
context
��] d
,
��d e
_logger
��f m
)
��m n
;
��n o
contentItem
�� 
.
�� 
Latest
�� 
=
��  
false
��! &
;
��& '
_session
�� 
.
�� 
Save
�� 
(
�� 
contentItem
�� %
)
��% &
;
��& '
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
RemovedAsync
��M Y
(
��Y Z
context
��Z a
)
��a b
,
��b c
context
��d k
,
��k l
_logger
��m t
)
��t u
;
��u v
if
�� 
(
�� 
publishedItem
�� 
!=
��  
null
��! %
)
��% &
{
�� 
publishedItem
�� 
.
�� 
Latest
�� $
=
��% &
true
��' +
;
��+ ,
_session
�� 
.
�� 
Save
�� 
(
�� 
publishedItem
�� +
)
��+ ,
;
��, -
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ContentItem
�� %
>
��% &

CloneAsync
��' 1
(
��1 2
ContentItem
��2 =
contentItem
��> I
)
��I J
{
�� 	
var
�� 
cloneContentItem
��  
=
��! "
await
��# (
NewAsync
��) 1
(
��1 2
contentItem
��2 =
.
��= >
ContentType
��> I
)
��I J
;
��J K
await
�� 
CreateAsync
�� 
(
�� 
cloneContentItem
�� .
,
��. /
VersionOptions
��0 >
.
��> ?
Draft
��? D
)
��D E
;
��E F
var
�� 
context
�� 
=
�� 
new
�� !
CloneContentContext
�� 1
(
��1 2
contentItem
��2 =
,
��= >
cloneContentItem
��? O
)
��O P
;
��P Q
context
�� 
.
�� 
CloneContentItem
�� $
.
��$ %
Data
��% )
=
��* +
contentItem
��, 7
.
��7 8
Data
��8 <
.
��< =
	DeepClone
��= F
(
��F G
)
��G H
as
��I K
JObject
��L S
;
��S T
context
�� 
.
�� 
CloneContentItem
�� $
.
��$ %
DisplayText
��% 0
=
��1 2
contentItem
��3 >
.
��> ?
DisplayText
��? J
;
��J K
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
CloningAsync
��E Q
(
��Q R
context
��R Y
)
��Y Z
,
��Z [
context
��\ c
,
��c d
_logger
��e l
)
��l m
;
��m n
_session
�� 
.
�� 
Save
�� 
(
�� 
context
�� !
.
��! "
CloneContentItem
��" 2
)
��2 3
;
��3 4
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
ClonedAsync
��M X
(
��X Y
context
��Y `
)
��` a
,
��a b
context
��c j
,
��j k
_logger
��l s
)
��s t
;
��t u
return
�� 
context
�� 
.
�� 
CloneContentItem
�� +
;
��+ ,
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� #
ContentValidateResult
�� 0
>
��0 1+
CreateContentItemVersionAsync
��2 O
(
��O P
ContentItem
��P [
contentItem
��\ g
,
��g h
IEnumerable
��i t
<
��t u
ContentItem��u �
>��� � 
evictionVersions��� �
=��� �
null��� �
)��� �
{
�� 	
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
contentItem
��% 0
.
��0 1
ContentItemId
��1 >
)
��> ?
)
��? @
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
ContentItem
��7 B
.
��B C
ContentItemId
��C P
)
��P Q
)
��Q R
;
��R S
}
�� 
contentItem
�� 
.
�� 
Id
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
modifiedUtc
�� 
=
�� 
contentItem
�� )
.
��) *
ModifiedUtc
��* 5
;
��5 6
var
�� 
publishedUtc
�� 
=
�� 
contentItem
�� *
.
��* +
PublishedUtc
��+ 7
;
��7 8
var
�� 
owner
�� 
=
�� 
contentItem
�� #
.
��# $
Owner
��$ )
;
��) *
var
�� 
author
�� 
=
�� 
contentItem
�� $
.
��$ %
Author
��% +
;
��+ ,
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
contentItem
��% 0
.
��0 1"
ContentItemVersionId
��1 E
)
��E F
)
��F G
{
�� 
contentItem
�� 
.
�� "
ContentItemVersionId
�� 0
=
��1 2
_idGenerator
��3 ?
.
��? @
GenerateUniqueId
��@ P
(
��P Q
contentItem
��Q \
)
��\ ]
;
��] ^
}
�� 
if
�� 
(
�� 
contentItem
�� 
.
�� 
Latest
�� "
&&
��# %
!
��& '
contentItem
��' 2
.
��2 3
	Published
��3 <
)
��< =
{
�� 
await
�� &
RemoveLatestVersionAsync
�� .
(
��. /
contentItem
��/ :
,
��: ;
evictionVersions
��< L
)
��L M
;
��M N
}
�� 
else
�� 
if
�� 
(
�� 
contentItem
��  
.
��  !
	Published
��! *
)
��* +
{
�� 
await
�� !
RemoveVersionsAsync
�� )
(
��) *
contentItem
��* 5
,
��5 6
evictionVersions
��7 G
)
��G H
;
��H I
}
�� 
var
�� 
context
�� 
=
�� 
new
�� "
CreateContentContext
�� 2
(
��2 3
contentItem
��3 >
)
��> ?
;
��? @
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� &
(
��& '
(
��' (
handler
��( /
,
��/ 0
context
��1 8
)
��8 9
=>
��: <
handler
��= D
.
��D E
CreatingAsync
��E R
(
��R S
context
��S Z
)
��Z [
,
��[ \
context
��] d
,
��d e
_logger
��f m
)
��m n
;
��n o
_session
�� 
.
�� 
Save
�� 
(
�� 
contentItem
�� %
)
��% &
;
��& '$
_contentManagerSession
�� "
.
��" #
Store
��# (
(
��( )
contentItem
��) 4
)
��4 5
;
��5 6
await
�� 
ReversedHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
)
��@ A
=>
��B D
handler
��E L
.
��L M
CreatedAsync
��M Y
(
��Y Z
context
��Z a
)
��a b
,
��b c
context
��d k
,
��k l
_logger
��m t
)
��t u
;
��u v
await
�� 
UpdateAsync
�� 
(
�� 
contentItem
�� )
)
��) *
;
��* +
var
�� 
result
�� 
=
�� 
await
�� 
ValidateAsync
�� ,
(
��, -
contentItem
��- 8
)
��8 9
;
��9 :
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
return
�� 
result
�� 
;
�� 
}
�� 
if
�� 
(
�� 
contentItem
�� 
.
�� 
	Published
�� %
)
��% &
{
�� 
var
�� 
publishContext
�� "
=
��# $
new
��% (#
PublishContentContext
��) >
(
��> ?
contentItem
��? J
,
��J K
null
��L P
)
��P Q
;
��Q R
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� *
(
��* +
(
��+ ,
handler
��, 3
,
��3 4
context
��5 <
)
��< =
=>
��> @
handler
��A H
.
��H I
PublishingAsync
��I X
(
��X Y
context
��Y `
)
��` a
,
��a b
publishContext
��c q
,
��q r
_logger
��s z
)
��z {
;
��{ |
await
�� 
ReversedHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
PublishedAsync
��Q _
(
��_ `
context
��` g
)
��g h
,
��h i
publishContext
��j x
,
��x y
_logger��z �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
await
�� 
SaveDraftAsync
�� $
(
��$ %
contentItem
��% 0
)
��0 1
;
��1 2
}
�� 
if
�� 
(
�� 
modifiedUtc
�� 
.
�� 
HasValue
�� $
)
��$ %
{
�� 
contentItem
�� 
.
�� 
ModifiedUtc
�� '
=
��( )
modifiedUtc
��* 5
;
��5 6
}
�� 
if
�� 
(
�� 
publishedUtc
�� 
.
�� 
HasValue
�� %
)
��% &
{
�� 
contentItem
�� 
.
�� 
PublishedUtc
�� (
=
��) *
publishedUtc
��+ 7
;
��7 8
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
owner
��& +
)
��+ ,
)
��, -
{
�� 
contentItem
�� 
.
�� 
Owner
�� !
=
��" #
owner
��$ )
;
��) *
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
author
��& ,
)
��, -
)
��- .
{
�� 
contentItem
�� 
.
�� 
Author
�� "
=
��# $
author
��% +
;
��+ ,
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� #
ContentValidateResult
�� 0
>
��0 1+
UpdateContentItemVersionAsync
��2 O
(
��O P
ContentItem
��P [
updatingVersion
��\ k
,
��k l
ContentItem
��m x
updatedVersion��y �
,��� �
IEnumerable��� �
<��� �
ContentItem��� �
>��� � 
evictionVersions��� �
=��� �
null��� �
)��� �
{
�� 	
updatingVersion
�� 
.
�� 
Id
�� 
=
��  
updatedVersion
��! /
.
��/ 0
Id
��0 2
;
��2 3
var
�� 
modifiedUtc
�� 
=
�� 
updatedVersion
�� ,
.
��, -
ModifiedUtc
��- 8
;
��8 9
var
�� 
publishedUtc
�� 
=
�� 
updatedVersion
�� -
.
��- .
PublishedUtc
��. :
;
��: ;
var
�� 
discardLatest
�� 
=
�� 
false
��  %
;
��% &
var
�� 
removePublished
�� 
=
��  !
false
��" '
;
��' (
var
�� 
importingLatest
�� 
=
��  !
updatedVersion
��" 0
.
��0 1
Latest
��1 7
;
��7 8
var
�� 
existingLatest
�� 
=
��  
updatingVersion
��! 0
.
��0 1
Latest
��1 7
;
��7 8
if
�� 
(
�� 
importingLatest
�� 
!=
��  "
existingLatest
��# 1
&&
��2 4
importingLatest
��5 D
==
��E G
true
��H L
)
��L M
{
�� 
discardLatest
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
var
��  
importingPublished
�� "
=
��# $
updatedVersion
��% 3
.
��3 4
	Published
��4 =
;
��= >
var
�� 
existingPublished
�� !
=
��" #
updatingVersion
��$ 3
.
��3 4
	Published
��4 =
;
��= >
if
�� 
(
��  
importingPublished
�� "
!=
��# %
existingPublished
��& 7
&&
��8 : 
importingPublished
��; M
==
��N P
true
��Q U
)
��U V
{
�� 
removePublished
�� 
=
��  !
true
��" &
;
��& '
}
�� 
if
�� 
(
�� 
discardLatest
�� 
&&
��  
removePublished
��! 0
)
��0 1
{
�� 
await
�� !
RemoveVersionsAsync
�� )
(
��) *
updatingVersion
��* 9
,
��9 :
evictionVersions
��; K
)
��K L
;
��L M
}
�� 
else
�� 
if
�� 
(
�� 
discardLatest
�� "
)
��" #
{
�� 
await
�� &
RemoveLatestVersionAsync
�� .
(
��. /
updatingVersion
��/ >
,
��> ?
evictionVersions
��@ P
)
��P Q
;
��Q R
}
�� 
else
�� 
if
�� 
(
�� 
removePublished
�� $
)
��$ %
{
�� 
await
�� )
RemovePublishedVersionAsync
�� 1
(
��1 2
updatingVersion
��2 A
,
��A B
evictionVersions
��C S
)
��S T
;
��T U
}
�� 
updatingVersion
�� 
.
�� 
Merge
�� !
(
��! "
updatedVersion
��" 0
,
��0 1%
UpdateJsonMergeSettings
��2 I
)
��I J
;
��J K
updatingVersion
�� 
.
�� 
Latest
�� "
=
��# $
importingLatest
��% 4
;
��4 5
updatingVersion
�� 
.
�� 
	Published
�� %
=
��& ' 
importingPublished
��( :
;
��: ;
await
�� 
UpdateAsync
�� 
(
�� 
updatingVersion
�� -
)
��- .
;
��. /
var
�� 
result
�� 
=
�� 
await
�� 
ValidateAsync
�� ,
(
��, -
updatingVersion
��- <
)
��< =
;
��= >
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
return
�� 
result
�� 
;
�� 
}
�� 
if
�� 
(
��  
importingPublished
�� "
)
��" #
{
�� 
var
�� 
publishContext
�� "
=
��# $
new
��% (#
PublishContentContext
��) >
(
��> ?
updatingVersion
��? N
,
��N O
null
��P T
)
��T U
;
��U V
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� *
(
��* +
(
��+ ,
handler
��, 3
,
��3 4
context
��5 <
)
��< =
=>
��> @
handler
��A H
.
��H I
PublishingAsync
��I X
(
��X Y
context
��Y `
)
��` a
,
��a b
publishContext
��c q
,
��q r
_logger
��s z
)
��z {
;
��{ |
await
�� 
ReversedHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
PublishedAsync
��Q _
(
��_ `
context
��` g
)
��g h
,
��h i
publishContext
��j x
,
��x y
_logger��z �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
await
�� 
SaveDraftAsync
�� $
(
��$ %
updatingVersion
��% 4
)
��4 5
;
��5 6
}
�� 
if
�� 
(
�� 
modifiedUtc
�� 
.
�� 
HasValue
�� $
)
��$ %
{
�� 
updatingVersion
�� 
.
��  
ModifiedUtc
��  +
=
��, -
modifiedUtc
��. 9
;
��9 :
}
�� 
if
�� 
(
�� 
publishedUtc
�� 
.
�� 
HasValue
�� %
)
��% &
{
�� 
updatingVersion
�� 
.
��  
PublishedUtc
��  ,
=
��- .
publishedUtc
��/ ;
;
��; <
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� &
RemoveLatestVersionAsync
�� 3
(
��3 4
ContentItem
��4 ?
contentItem
��@ K
,
��K L
IEnumerable
��M X
<
��X Y
ContentItem
��Y d
>
��d e
evictionVersions
��f v
)
��v w
{
�� 	
ContentItem
�� 
latestVersion
�� %
;
��% &
if
�� 
(
�� 
evictionVersions
��  
==
��! #
null
��$ (
)
��( )
{
�� 
latestVersion
�� 
=
�� 
await
��  %
_session
��& .
.
��. /
Query
��/ 4
<
��4 5
ContentItem
��5 @
,
��@ A
ContentItemIndex
��B R
>
��R S
(
��S T
)
��T U
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
��  !
.
��! "
ContentItemId
��" /
==
��0 2
contentItem
��3 >
.
��> ?
ContentItemId
��? L
&&
��M O
x
��P Q
.
��Q R
Latest
��R X
)
��X Y
.
�� !
FirstOrDefaultAsync
�� (
(
��( )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
latestVersion
�� 
=
�� 
evictionVersions
��  0
.
��0 1
FirstOrDefault
��1 ?
(
��? @
x
��@ A
=>
��B D
x
��E F
.
��F G
Latest
��G M
)
��M N
;
��N O
}
�� 
if
�� 
(
�� 
latestVersion
�� 
!=
��  
null
��! %
)
��% &
{
�� 
var
�� 
publishedVersion
�� $
=
��% &
evictionVersions
��' 7
?
��7 8
.
��8 9
FirstOrDefault
��9 G
(
��G H
x
��H I
=>
��J L
x
��M N
.
��N O
	Published
��O X
)
��X Y
;
��Y Z
var
�� 
removeContext
�� !
=
��" #
new
��$ '"
RemoveContentContext
��( <
(
��< =
contentItem
��= H
,
��H I
publishedVersion
��J Z
==
��[ ]
null
��^ b
)
��b c
;
��c d
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� *
(
��* +
(
��+ ,
handler
��, 3
,
��3 4
context
��5 <
)
��< =
=>
��> @
handler
��A H
.
��H I
RemovingAsync
��I V
(
��V W
context
��W ^
)
��^ _
,
��_ `
removeContext
��a n
,
��n o
_logger
��p w
)
��w x
;
��x y
latestVersion
�� 
.
�� 
Latest
�� $
=
��% &
false
��' ,
;
��, -
_session
�� 
.
�� 
Save
�� 
(
�� 
latestVersion
�� +
)
��+ ,
;
��, -
await
�� 
ReversedHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
RemovedAsync
��Q ]
(
��] ^
context
��^ e
)
��e f
,
��f g
removeContext
��h u
,
��u v
_logger
��w ~
)
��~ 
;�� �
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� )
RemovePublishedVersionAsync
�� 6
(
��6 7
ContentItem
��7 B
contentItem
��C N
,
��N O
IEnumerable
��P [
<
��[ \
ContentItem
��\ g
>
��g h
evictionVersions
��i y
)
��y z
{
�� 	
ContentItem
�� 
publishedVersion
�� (
;
��( )
if
�� 
(
�� 
evictionVersions
��  
==
��! #
null
��$ (
)
��( )
{
�� 
publishedVersion
��  
=
��! "
await
��# (
_session
��) 1
.
��1 2
Query
��2 7
<
��7 8
ContentItem
��8 C
,
��C D
ContentItemIndex
��E U
>
��U V
(
��V W
)
��W X
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
��  !
.
��! "
ContentItemId
��" /
==
��0 2
contentItem
��3 >
.
��> ?
ContentItemId
��? L
&&
��M O
x
��P Q
.
��Q R
	Published
��R [
)
��[ \
.
�� !
FirstOrDefaultAsync
�� (
(
��( )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
publishedVersion
��  
=
��! "
evictionVersions
��# 3
.
��3 4
FirstOrDefault
��4 B
(
��B C
x
��C D
=>
��E G
x
��H I
.
��I J
	Published
��J S
)
��S T
;
��T U
}
�� 
if
�� 
(
�� 
publishedVersion
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
var
�� 
removeContext
�� !
=
��" #
new
��$ '"
RemoveContentContext
��( <
(
��< =
contentItem
��= H
,
��H I
true
��J N
)
��N O
;
��O P
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� *
(
��* +
(
��+ ,
handler
��, 3
,
��3 4
context
��5 <
)
��< =
=>
��> @
handler
��A H
.
��H I
RemovingAsync
��I V
(
��V W
context
��W ^
)
��^ _
,
��_ `
removeContext
��a n
,
��n o
_logger
��p w
)
��w x
;
��x y
publishedVersion
��  
.
��  !
	Published
��! *
=
��+ ,
false
��- 2
;
��2 3
_session
�� 
.
�� 
Save
�� 
(
�� 
publishedVersion
�� .
)
��. /
;
��/ 0
await
�� 
ReversedHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
RemovedAsync
��Q ]
(
��] ^
context
��^ e
)
��e f
,
��f g
removeContext
��h u
,
��u v
_logger
��w ~
)
��~ 
;�� �
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� !
RemoveVersionsAsync
�� .
(
��. /
ContentItem
��/ :
contentItem
��; F
,
��F G
IEnumerable
��H S
<
��S T
ContentItem
��T _
>
��_ `
evictionVersions
��a q
)
��q r
{
�� 	
IEnumerable
�� 
<
�� 
ContentItem
�� #
>
��# $
activeVersions
��% 3
;
��3 4
if
�� 
(
�� 
evictionVersions
��  
==
��! #
null
��$ (
)
��( )
{
�� 
activeVersions
�� 
=
��  
await
��! &
_session
��' /
.
��/ 0
Query
��0 5
<
��5 6
ContentItem
��6 A
,
��A B
ContentItemIndex
��C S
>
��S T
(
��T U
)
��U V
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
ContentItemId
�� '
==
��( *
contentItem
��+ 6
.
��6 7
ContentItemId
��7 D
&&
��E G
(
�� 
x
�� 
.
�� 
	Published
�� $
||
��% '
x
��( )
.
��) *
Latest
��* 0
)
��0 1
)
��1 2
.
��2 3
	ListAsync
��3 <
(
��< =
)
��= >
;
��> ?
}
�� 
else
�� 
{
�� 
activeVersions
�� 
=
��  
evictionVersions
��! 1
.
��1 2
Where
��2 7
(
��7 8
x
��8 9
=>
��: <
x
��= >
.
��> ?
Latest
��? E
||
��F H
x
��I J
.
��J K
	Published
��K T
)
��T U
;
��U V
}
�� 
if
�� 
(
�� 
activeVersions
�� 
.
�� 
Any
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
var
�� 
removeContext
�� !
=
��" #
new
��$ '"
RemoveContentContext
��( <
(
��< =
contentItem
��= H
,
��H I
true
��J N
)
��N O
;
��O P
await
�� 
Handlers
�� 
.
�� 
InvokeAsync
�� *
(
��* +
(
��+ ,
handler
��, 3
,
��3 4
context
��5 <
)
��< =
=>
��> @
handler
��A H
.
��H I
RemovingAsync
��I V
(
��V W
context
��W ^
)
��^ _
,
��_ `
removeContext
��a n
,
��n o
_logger
��p w
)
��w x
;
��x y
foreach
�� 
(
�� 
var
�� 
version
�� $
in
��% '
activeVersions
��( 6
)
��6 7
{
�� 
version
�� 
.
�� 
	Published
�� %
=
��& '
false
��( -
;
��- .
version
�� 
.
�� 
Latest
�� "
=
��# $
false
��% *
;
��* +
_session
�� 
.
�� 
Save
�� !
(
��! "
version
��" )
)
��) *
;
��* +
}
�� 
await
�� 
ReversedHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
)
��D E
=>
��F H
handler
��I P
.
��P Q
RemovedAsync
��Q ]
(
��] ^
context
��^ e
)
��e f
,
��f g
removeContext
��h u
,
��u v
_logger
��w ~
)
��~ 
;�� �
}
�� 
}
�� 	
}
�� 
}�� � 
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\DefaultContentManagerSession.cs
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
}:: �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\FileContentDefinitionStore.cs
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
(	 �%
contentDefinitionRecord
� �
)
� �
;
� �
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\GenericTypeActivator.cs
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
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Handlers\ContentPartHandlerCoordinator.cs
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
$str	&&" �
,
&&� �
element
&&� �
)
&&� �
;
&&� �
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
part	<<| �
,
<<� �
_logger
<<� �
)
<<� �
;
<<� �
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
part	??} �
,
??� �
_logger
??� �
)
??� �
;
??� �
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
part	SS �
,
SS� �
_logger
SS� �
)
SS� �
;
SS� �
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
VV� �
,
VV� �
_logger
VV� �
)
VV� �
;
VV� �
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
part	kk~ �
,
kk� �
_logger
kk� �
)
kk� �
;
kk� �
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
part	nn �
,
nn� �
_logger
nn� �
)
nn� �
;
nn� �
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
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
CreatedAsync
��W c
(
��c d
context
��d k
,
��k l
part
��m q
)
��q r
,
��r s
context
��t {
,
��{ |
part��} �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
CreatedAsync
��X d
(
��d e
context
��e l
,
��l m
part
��n r
)
��r s
,
��s t
context
��u |
,
��| }
part��~ �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
ImportingAsync
��# 1
(
��1 2"
ImportContentContext
��2 F
context
��G N
)
��N O
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
ImportingAsync
��W e
(
��e f
context
��f m
,
��m n
part
��o s
)
��s t
,
��t u
context
��v }
,
��} ~
part�� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
ImportingAsync
��X f
(
��f g
context
��g n
,
��n o
part
��p t
)
��t u
,
��u v
context
��w ~
,
��~ 
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
ImportedAsync
��# 0
(
��0 1"
ImportContentContext
��1 E
context
��F M
)
��M N
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
ImportedAsync
��W d
(
��d e
context
��e l
,
��l m
part
��n r
)
��r s
,
��s t
context
��u |
,
��| }
part��~ �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
ImportedAsync
��X e
(
��e f
context
��f m
,
��m n
part
��o s
)
��s t
,
��t u
context
��v }
,
��} ~
part�� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
InitializingAsync
��# 4
(
��4 5(
InitializingContentContext
��5 O
context
��P W
)
��W X
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
InitializingAsync
��W h
(
��h i
context
��i p
,
��p q
part
��r v
)
��v w
,
��w x
context��y �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
InitializingAsync
��X i
(
��i j
context
��j q
,
��q r
part
��s w
)
��w x
,
��x y
context��z �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
InitializedAsync
��# 3
(
��3 4(
InitializingContentContext
��4 N
context
��O V
)
��V W
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
InitializedAsync
��W g
(
��g h
context
��h o
,
��o p
part
��q u
)
��u v
,
��v w
context
��x 
,�� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
InitializedAsync
��X h
(
��h i
context
��i p
,
��p q
part
��r v
)
��v w
,
��w x
context��y �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
LoadingAsync
��# /
(
��/ 0 
LoadContentContext
��0 B
context
��C J
)
��J K
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
{
�� 
return
�� 
;
�� 
}
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
==
�� 
null
��  
)
��  !
{
�� 
part
�� 
=
�� 
	activator
�� $
.
��$ %
CreateInstance
��% 3
(
��3 4
)
��4 5
;
��5 6
context
�� 
.
�� 
ContentItem
�� '
.
��' (
Weld
��( ,
(
��, - 
typePartDefinition
��- ?
.
��? @
Name
��@ D
,
��D E
part
��F J
)
��J K
;
��K L
}
�� 
var
�� 
partHandlers
��  
=
��! ")
_contentPartHandlerResolver
��# >
.
��> ?
GetHandlers
��? J
(
��J K
partName
��K S
)
��S T
;
��T U
await
�� 
partHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8
context
��9 @
,
��@ A
part
��B F
)
��F G
=>
��H J
handler
��K R
.
��R S
LoadingAsync
��S _
(
��_ `
context
��` g
,
��g h
part
��i m
)
��m n
,
��n o
context
��p w
,
��w x
part
��y }
,
��} ~
_logger�� �
)��� �
;��� �
await
�� 
_partHandlers
�� #
.
��# $
InvokeAsync
��$ /
(
��/ 0
(
��0 1
handler
��1 8
,
��8 9
context
��: A
,
��A B
part
��C G
)
��G H
=>
��I K
handler
��L S
.
��S T
LoadingAsync
��T `
(
��` a
context
��a h
,
��h i
part
��j n
)
��n o
,
��o p
context
��q x
,
��x y
part
��z ~
,
��~ 
_logger��� �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� !
partFieldDefinition
�� 0
in
��1 3 
typePartDefinition
��4 F
.
��F G
PartDefinition
��G U
.
��U V
Fields
��V \
)
��\ ]
{
�� 
var
�� 
	fieldName
�� !
=
��" #!
partFieldDefinition
��$ 7
.
��7 8
Name
��8 <
;
��< =
if
�� 
(
�� 
!
�� 
part
�� 
.
�� 
Has
�� !
(
��! "
	fieldName
��" +
)
��+ ,
)
��, -
{
�� 
var
�� 
fieldActivator
�� *
=
��+ ,"
_contentFieldFactory
��- A
.
��A B
GetTypeActivator
��B R
(
��R S!
partFieldDefinition
��S f
.
��f g
FieldDefinition
��g v
.
��v w
Name
��w {
)
��{ |
;
��| }
context
�� 
.
��  
ContentItem
��  +
.
��+ ,
Get
��, /
<
��/ 0
ContentPart
��0 ;
>
��; <
(
��< = 
typePartDefinition
��= O
.
��O P
Name
��P T
)
��T U
.
��U V
Weld
��V Z
(
��Z [
	fieldName
��[ d
,
��d e
fieldActivator
��f t
.
��t u
CreateInstance��u �
(��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
LoadedAsync
��# .
(
��. / 
LoadContentContext
��/ A
context
��B I
)
��I J
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
LoadedAsync
��W b
(
��b c
context
��c j
,
��j k
part
��l p
)
��p q
,
��q r
context
��s z
,
��z {
part��| �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
LoadedAsync
��X c
(
��c d
context
��d k
,
��k l
part
��m q
)
��q r
,
��r s
context
��t {
,
��{ |
part��} �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
ValidatingAsync
��# 2
(
��2 3$
ValidateContentContext
��3 I
context
��J Q
)
��Q R
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
ValidatingAsync
��W f
(
��f g
context
��g n
,
��n o
part
��p t
)
��t u
,
��u v
context
��w ~
,
��~ 
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
ValidatingAsync
��X g
(
��g h
context
��h o
,
��o p
part
��q u
)
��u v
,
��v w
context
��x 
,�� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
ValidatedAsync
��# 1
(
��1 2$
ValidateContentContext
��2 H
context
��I P
)
��P Q
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
ValidatedAsync
��W e
(
��e f
context
��f m
,
��m n
part
��o s
)
��s t
,
��t u
context
��v }
,
��} ~
part�� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
ValidatedAsync
��X f
(
��f g
context
��g n
,
��n o
part
��p t
)
��t u
,
��u v
context
��w ~
,
��~ 
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
DraftSavingAsync
��# 3
(
��3 4%
SaveDraftContentContext
��4 K
context
��L S
)
��S T
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
DraftSavingAsync
��W g
(
��g h
context
��h o
,
��o p
part
��q u
)
��u v
,
��v w
context
��x 
,�� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
DraftSavingAsync
��X h
(
��h i
context
��i p
,
��p q
part
��r v
)
��v w
,
��w x
context��y �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
DraftSavedAsync
��# 2
(
��2 3%
SaveDraftContentContext
��3 J
context
��K R
)
��R S
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
DraftSavedAsync
��W f
(
��f g
context
��g n
,
��n o
part
��p t
)
��t u
,
��u v
context
��w ~
,
��~ 
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
DraftSavedAsync
��X g
(
��g h
context
��h o
,
��o p
part
��q u
)
��u v
,
��v w
context
��x 
,�� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
PublishingAsync
��# 2
(
��2 3#
PublishContentContext
��3 H
context
��I P
)
��P Q
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
PublishingAsync
��W f
(
��f g
context
��g n
,
��n o
part
��p t
)
��t u
,
��u v
context
��w ~
,
��~ 
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
PublishingAsync
��X g
(
��g h
context
��h o
,
��o p
part
��q u
)
��u v
,
��v w
context
��x 
,�� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
PublishedAsync
��# 1
(
��1 2#
PublishContentContext
��2 G
context
��H O
)
��O P
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
PublishedAsync
��W e
(
��e f
context
��f m
,
��m n
part
��o s
)
��s t
,
��t u
context
��v }
,
��} ~
part�� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
PublishedAsync
��X f
(
��f g
context
��g n
,
��n o
part
��p t
)
��t u
,
��u v
context
��w ~
,
��~ 
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
RemovingAsync
��# 0
(
��0 1"
RemoveContentContext
��1 E
context
��F M
)
��M N
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
RemovingAsync
��W d
(
��d e
context
��e l
,
��l m
part
��n r
)
��r s
,
��s t
context
��u |
,
��| }
part��~ �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
RemovingAsync
��X e
(
��e f
context
��f m
,
��m n
part
��o s
)
��s t
,
��t u
context
��v }
,
��} ~
part�� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
RemovedAsync
��# /
(
��/ 0"
RemoveContentContext
��0 D
context
��E L
)
��L M
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
RemovedAsync
��W c
(
��c d
context
��d k
,
��k l
part
��m q
)
��q r
,
��r s
context
��t {
,
��{ |
part��} �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
RemovedAsync
��X d
(
��d e
context
��e l
,
��l m
part
��n r
)
��r s
,
��s t
context
��u |
,
��| }
part��~ �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
UnpublishingAsync
��# 4
(
��4 5#
PublishContentContext
��5 J
context
��K R
)
��R S
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
UnpublishingAsync
��W h
(
��h i
context
��i p
,
��p q
part
��r v
)
��v w
,
��w x
context��y �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
UnpublishingAsync
��X i
(
��i j
context
��j q
,
��q r
part
��s w
)
��w x
,
��x y
context��z �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
UnpublishedAsync
��# 3
(
��3 4#
PublishContentContext
��4 I
context
��J Q
)
��Q R
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
UnpublishedAsync
��W g
(
��g h
context
��h o
,
��o p
part
��q u
)
��u v
,
��v w
context
��x 
,�� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
UnpublishedAsync
��X h
(
��h i
context
��i p
,
��p q
part
��r v
)
��v w
,
��w x
context��y �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
UpdatingAsync
��# 0
(
��0 1"
UpdateContentContext
��1 E
context
��F M
)
��M N
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
UpdatingAsync
��W d
(
��d e
context
��e l
,
��l m
part
��n r
)
��r s
,
��s t
context
��u |
,
��| }
part��~ �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
UpdatingAsync
��X e
(
��e f
context
��f m
,
��m n
part
��o s
)
��s t
,
��t u
context
��v }
,
��} ~
part�� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
UpdatedAsync
��# /
(
��/ 0"
UpdateContentContext
��0 D
context
��E L
)
��L M
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
;
��l m
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
UpdatedAsync
��W c
(
��c d
context
��d k
,
��k l
part
��m q
)
��q r
,
��r s
context
��t {
,
��{ |
part��} �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
UpdatedAsync
��X d
(
��d e
context
��e l
,
��l m
part
��n r
)
��r s
,
��s t
context
��u |
,
��| }
part��~ �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
VersioningAsync
��# 2
(
��2 3#
VersionContentContext
��3 H
context
��I P
)
��P Q
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
buildingPart
��  
=
��! "
context
��# *
.
��* +!
BuildingContentItem
��+ >
.
��> ?
Get
��? B
(
��B C
	activator
��C L
.
��L M
Type
��M Q
,
��Q R
partName
��S [
)
��[ \
as
��] _
ContentPart
��` k
;
��k l
var
�� 
existingPart
��  
=
��! "
context
��# *
.
��* +
ContentItem
��+ 6
.
��6 7
Get
��7 :
(
��: ;
	activator
��; D
.
��D E
Type
��E I
,
��I J 
typePartDefinition
��K ]
.
��] ^
Name
��^ b
)
��b c
as
��d f
ContentPart
��g r
;
��r s
if
�� 
(
�� 
buildingPart
��  
!=
��! #
null
��$ (
&&
��) +
existingPart
��, 8
!=
��9 ;
null
��< @
)
��@ A
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
existingPart
��F R
,
��R S
buildingPart
��T `
)
��` a
=>
��b d
handler
��e l
.
��l m
VersioningAsync
��m |
(
��| }
context��} �
,��� �
existingPart��� �
,��� �
buildingPart��� �
)��� �
,��� �
context��� �
,��� �
existingPart��� �
,��� �
buildingPart��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
existingPart
��G S
,
��S T
buildingPart
��U a
)
��a b
=>
��c e
handler
��f m
.
��m n
VersioningAsync
��n }
(
��} ~
context��~ �
,��� �
existingPart��� �
,��� �
buildingPart��� �
)��� �
,��� �
context��� �
,��� �
existingPart��� �
,��� �
buildingPart��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
VersionedAsync
��# 1
(
��1 2#
VersionContentContext
��2 G
context
��H O
)
��O P
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
buildingPart
��  
=
��! "
(
��# $
ContentPart
��$ /
)
��/ 0
context
��0 7
.
��7 8!
BuildingContentItem
��8 K
.
��K L
Get
��L O
(
��O P
	activator
��P Y
.
��Y Z
Type
��Z ^
,
��^ _
partName
��` h
)
��h i
;
��i j
var
�� 
existingPart
��  
=
��! "
(
��# $
ContentPart
��$ /
)
��/ 0
context
��0 7
.
��7 8
ContentItem
��8 C
.
��C D
Get
��D G
(
��G H
	activator
��H Q
.
��Q R
Type
��R V
,
��V W 
typePartDefinition
��X j
.
��j k
Name
��k o
)
��o p
;
��p q
if
�� 
(
�� 
buildingPart
��  
!=
��! #
null
��$ (
&&
��) +
existingPart
��, 8
!=
��9 ;
null
��< @
)
��@ A
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
existingPart
��F R
,
��R S
buildingPart
��T `
)
��` a
=>
��b d
handler
��e l
.
��l m
VersionedAsync
��m {
(
��{ |
context��| �
,��� �
existingPart��� �
,��� �
buildingPart��� �
)��� �
,��� �
context��� �
,��� �
existingPart��� �
,��� �
buildingPart��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
existingPart
��G S
,
��S T
buildingPart
��U a
)
��a b
=>
��c e
handler
��f m
.
��m n
VersionedAsync
��n |
(
��| }
context��} �
,��� �
existingPart��� �
,��� �
buildingPart��� �
)��� �
,��� �
context��� �
,��� �
existingPart��� �
,��� �
buildingPart��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "'
GetContentItemAspectAsync
��# <
(
��< =&
ContentItemAspectContext
��= U
context
��V ]
)
��] ^
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W'
GetContentItemAspectAsync
��W p
(
��p q
context
��q x
,
��x y
part
��z ~
)
��~ 
,�� �
context��� �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X'
GetContentItemAspectAsync
��X q
(
��q r
context
��r y
,
��y z
part
��{ 
)�� �
,��� �
context��� �
,��� �
part��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
ClonedAsync
��# .
(
��. /!
CloneContentContext
��/ B
context
��C J
)
��J K
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
ClonedAsync
��W b
(
��b c
context
��c j
,
��j k
part
��l p
)
��p q
,
��q r
context
��s z
,
��z {
part��| �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
ClonedAsync
��X c
(
��c d
context
��d k
,
��k l
part
��m q
)
��q r
,
��r s
context
��t {
,
��{ |
part��} �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
CloningAsync
��# /
(
��/ 0!
CloneContentContext
��0 C
context
��D K
)
��K L
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
context
��T [
.
��[ \
ContentItem
��\ g
.
��g h
ContentType
��h s
)
��s t
;
��t u
if
�� 
(
�� #
contentTypeDefinition
�� %
==
��& (
null
��) -
)
��- .
return
�� 
;
�� 
foreach
�� 
(
�� 
var
��  
typePartDefinition
�� +
in
��, .#
contentTypeDefinition
��/ D
.
��D E
Parts
��E J
)
��J K
{
�� 
var
�� 
partName
�� 
=
��  
typePartDefinition
�� 1
.
��1 2
PartDefinition
��2 @
.
��@ A
Name
��A E
;
��E F
var
�� 
	activator
�� 
=
�� !
_contentPartFactory
��  3
.
��3 4
GetTypeActivator
��4 D
(
��D E
partName
��E M
)
��M N
;
��N O
var
�� 
part
�� 
=
�� 
context
�� "
.
��" #
ContentItem
��# .
.
��. /
Get
��/ 2
(
��2 3
	activator
��3 <
.
��< =
Type
��= A
,
��A B 
typePartDefinition
��C U
.
��U V
Name
��V Z
)
��Z [
as
��\ ^
ContentPart
��_ j
;
��j k
if
�� 
(
�� 
part
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
partHandlers
�� $
=
��% &)
_contentPartHandlerResolver
��' B
.
��B C
GetHandlers
��C N
(
��N O
partName
��O W
)
��W X
;
��X Y
await
�� 
partHandlers
�� &
.
��& '
InvokeAsync
��' 2
(
��2 3
(
��3 4
handler
��4 ;
,
��; <
context
��= D
,
��D E
part
��F J
)
��J K
=>
��L N
handler
��O V
.
��V W
CloningAsync
��W c
(
��c d
context
��d k
,
��k l
part
��m q
)
��q r
,
��r s
context
��t {
,
��{ |
part��} �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_partHandlers
�� '
.
��' (
InvokeAsync
��( 3
(
��3 4
(
��4 5
handler
��5 <
,
��< =
context
��> E
,
��E F
part
��G K
)
��K L
=>
��M O
handler
��P W
.
��W X
CloningAsync
��X d
(
��d e
context
��e l
,
��l m
part
��n r
)
��r s
,
��s t
context
��u |
,
��| }
part��~ �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Handlers\ContentPartHandlerResolver.cs
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
}%% �:
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Handlers\ContentsHandler.cs
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
}YY �=
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Records\ContentItemIndex.cs
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
)	55 �
;
55� �
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
)	DD �
;
DD� �
}EE 
returnGG 
contentItemIndexGG +
;GG+ ,
}HH 
)HH 
;HH 
}II 	
}JJ 
}KK ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\Records\Migrations.cs
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
�� 5
.
��5 6
Settings
��6 >
.
��> ?
Remove
��? E
(
��E F
property
��F N
.
��N O
Name
��O S
)
��S T
;
��T U
}
�� 
builder
�� 
.
��  
WithPart
��  (
(
��( )'
contentTypePartDefinition
��) B
.
��B C
Name
��C G
,
��G H'
contentTypePartDefinition
��I b
.
��b c
PartDefinition
��c q
,
��q r
partBuilder
��s ~
=>�� �
{
�� 
partBuilder
�� '
.
��' (
WithSettings
��( 4
(
��4 5&
existingTypePartSettings
��5 M
)
��M N
;
��N O
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
UpdateFrom4
�� 
(
�� 
)
��  
{
�� 	
var
�� 
partDefinitions
�� 
=
��  !'
_contentDefinitionManager
��" ;
.
��; <!
LoadPartDefinitions
��< O
(
��O P
)
��P Q
;
��Q R
foreach
�� 
(
�� 
var
�� 
partDefinition
�� '
in
��( *
partDefinitions
��+ :
)
��: ;
{
�� 
var
�� "
existingPartSettings
�� (
=
��) *
partDefinition
��+ 9
.
��9 :
Settings
��: B
.
��B C
ToObject
��C K
<
��K L!
ContentPartSettings
��L _
>
��_ `
(
��` a
)
��a b
;
��b c
var
�� +
contentTypeSettingsProperties
�� 1
=
��2 3"
existingPartSettings
��4 H
.
��H I
GetType
��I P
(
��P Q
)
��Q R
.
��R S
GetProperties
��S `
(
��` a
)
��a b
;
��b c
foreach
�� 
(
�� 
var
�� 
property
�� %
in
��& (+
contentTypeSettingsProperties
��) F
)
��F G
{
�� 
partDefinition
�� "
.
��" #
Settings
��# +
.
��+ ,
Remove
��, 2
(
��2 3
property
��3 ;
.
��; <
Name
��< @
)
��@ A
;
��A B
}
�� '
_contentDefinitionManager
�� )
.
��) *!
AlterPartDefinition
��* =
(
��= >
partDefinition
��> L
.
��L M
Name
��M Q
,
��Q R
partBuilder
��S ^
=>
��_ a
{
�� 
partBuilder
�� 
.
��  
WithSettings
��  ,
(
��, -"
existingPartSettings
��- A
)
��A B
;
��B C
foreach
�� 
(
�� 
var
��  
fieldDefinition
��! 0
in
��1 3
partDefinition
��4 B
.
��B C
Fields
��C I
)
��I J
{
�� 
var
�� #
existingFieldSettings
�� 1
=
��2 3
fieldDefinition
��4 C
.
��C D
Settings
��D L
.
��L M
ToObject
��M U
<
��U V&
ContentPartFieldSettings
��V n
>
��n o
(
��o p
)
��p q
;
��q r
var
�� %
fieldSettingsProperties
�� 3
=
��4 5#
existingFieldSettings
��6 K
.
��K L
GetType
��L S
(
��S T
)
��T U
.
��U V
GetProperties
��V c
(
��c d
)
��d e
;
��e f
foreach
�� 
(
��  !
var
��! $
property
��% -
in
��. 0%
fieldSettingsProperties
��1 H
)
��H I
{
�� 
fieldDefinition
�� +
.
��+ ,
Settings
��, 4
.
��4 5
Remove
��5 ;
(
��; <
property
��< D
.
��D E
Name
��E I
)
��I J
;
��J K
}
�� 
partBuilder
�� #
.
��# $
	WithField
��$ -
(
��- .
fieldDefinition
��. =
.
��= >
Name
��> B
,
��B C
fieldBuilder
��D P
=>
��Q S
{
�� 
fieldBuilder
�� (
.
��( )
WithSettings
��) 5
(
��5 6#
existingFieldSettings
��6 K
)
��K L
;
��L M
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
UpdateFrom5
�� 
(
�� 
)
��  
{
�� 	
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
ContentItemIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� >
,
��> ?
$str
��  
,
��  !
$str
�� #
,
��# $
$str
�� *
,
��* +
$str
�� 
,
��  
$str
�� 
)
�� 
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
ContentItemIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� J
,
��J K
$str
��  
,
��  !
$str
�� !
,
��! "
$str
��  
,
��  !
$str
�� !
,
��! "
$str
�� "
,
��" #
$str
�� 
,
��  
$str
�� 
)
�� 
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
ContentItemIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� D
,
��D E
$str
��  
,
��  !
$str
�� 
,
�� 
$str
�� 
,
��  
$str
�� 
)
�� 
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
ContentItemIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� E
,
��E F
$str
��  
,
��  !
$str
�� 
,
�� 
$str
�� 
,
��  
$str
�� 
)
�� 
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
ContentItemIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� J
,
��J K
$str
��  
,
��  !
$str
�� !
,
��! "
$str
�� 
,
��  
$str
�� 
)
�� 
)
�� 
;
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
}�� �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement\ServiceCollectionExtensions.cs
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