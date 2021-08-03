á
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

abstract 
class  
ContentDisplayDriver .
:/ 0
DisplayDriver1 >
<> ?
ContentItem? J
,J K
BuildDisplayContextL _
,_ `
BuildEditorContexta s
,s t 
UpdateEditorContext	u à
>
à â
,
â ä#
IContentDisplayDriver
ã †
{ 
public 
override 
bool 
CanHandleModel +
(+ ,
ContentItem, 7
model8 =
)= >
{ 	
return		 
true		 
;		 
}

 	
} 
} ‘b
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentDisplayOptions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

class !
ContentDisplayOptions &
{ 
private		 
readonly		 
List		 
<		 $
ContentPartDisplayOption		 6
>		6 7
_contentParts		8 E
=		F G
new		H K
List		L P
<		P Q$
ContentPartDisplayOption		Q i
>		i j
(		j k
)		k l
;		l m
private

 
readonly

 
List

 
<

 %
ContentFieldDisplayOption

 7
>

7 8
_contentFields

9 G
=

H I
new

J M
List

N R
<

R S%
ContentFieldDisplayOption

S l
>

l m
(

m n
)

n o
;

o p
private 

Dictionary 
< 
string !
,! "$
ContentPartDisplayOption# ;
>; <
_contentPartOptions= P
;P Q
public 
IReadOnlyDictionary "
<" #
string# )
,) *$
ContentPartDisplayOption+ C
>C D
ContentPartOptionsE W
=>X Z
_contentPartOptions[ n
??=o r
_contentParts	s Ä
.
Ä Å
ToDictionary
Å ç
(
ç é
k
é è
=>
ê í
k
ì î
.
î ï
Type
ï ô
.
ô ö
Name
ö û
)
û ü
;
ü †
private 

Dictionary 
< 
string !
,! "%
ContentFieldDisplayOption# <
>< = 
_contentFieldOptions> R
;R S
public 
IReadOnlyDictionary "
<" #
string# )
,) *%
ContentFieldDisplayOption+ D
>D E
ContentFieldOptionsF Y
=>Z \ 
_contentFieldOptions] q
??=r u
_contentFields	v Ñ
.
Ñ Ö
ToDictionary
Ö ë
(
ë í
k
í ì
=>
î ñ
k
ó ò
.
ò ô
Type
ô ù
.
ù û
Name
û ¢
)
¢ £
;
£ §
internal 
void %
ForContentPartDisplayMode /
(/ 0
Type0 4
contentPartType5 D
,D E
TypeF J
displayDriverTypeK \
,\ ]
Func^ b
<b c
stringc i
,i j
boolk o
>o p
	predicateq z
)z {
{ 	
if 
( 
! 
typeof 
( %
IContentPartDisplayDriver 1
)1 2
.2 3
IsAssignableFrom3 C
(C D
displayDriverTypeD U
)U V
)V W
{ 
throw 
new 
ArgumentException +
(+ ,
$str, F
+G H
nameofI O
(O P%
IContentPartDisplayDriverP i
)i j
)j k
;k l
} 
var 
option 
= ,
 GetOrAddContentPartDisplayOption 9
(9 :
contentPartType: I
)I J
;J K
option 
. 
ForDisplayMode !
(! "
displayDriverType" 3
,3 4
	predicate5 >
)> ?
;? @
} 	
internal 
void  
ForContentPartEditor *
(* +
Type+ /
contentPartType0 ?
,? @
TypeA E
editorDriverTypeF V
,V W
FuncX \
<\ ]
string] c
,c d
boole i
>i j
	predicatek t
)t u
{ 	
if 
( 
! 
typeof 
( %
IContentPartDisplayDriver 1
)1 2
.2 3
IsAssignableFrom3 C
(C D
editorDriverTypeD T
)T U
)U V
{   
throw!! 
new!! 
ArgumentException!! +
(!!+ ,
$str!!, F
+!!G H
nameof!!I O
(!!O P%
IContentPartDisplayDriver!!P i
)!!i j
)!!j k
;!!k l
}"" 
var$$ 
option$$ 
=$$ ,
 GetOrAddContentPartDisplayOption$$ 9
($$9 :
contentPartType$$: I
)$$I J
;$$J K
option%% 
.%% 
	ForEditor%% 
(%% 
editorDriverType%% -
,%%- .
	predicate%%/ 8
)%%8 9
;%%9 :
}&& 	
internal(( 
void(( *
RemoveContentPartDisplayDriver(( 4
(((4 5
Type((5 9
contentPartType((: I
,((I J
Type((K O

driverType((P Z
)((Z [
{)) 	
if** 
(** 
!** 
typeof** 
(** %
IContentPartDisplayDriver** 1
)**1 2
.**2 3
IsAssignableFrom**3 C
(**C D

driverType**D N
)**N O
)**O P
{++ 
throw,, 
new,, 
ArgumentException,, +
(,,+ ,
$str,,, F
+,,G H
nameof,,I O
(,,O P%
IContentPartDisplayDriver,,P i
),,i j
),,j k
;,,k l
}-- 
var// 
option// 
=// ,
 GetOrAddContentPartDisplayOption// 9
(//9 :
contentPartType//: I
)//I J
;//J K
option00 
.00 
RemoveDisplayDriver00 &
(00& '

driverType00' 1
)001 2
;002 3
}11 	
private33 $
ContentPartDisplayOption33 (,
 GetOrAddContentPartDisplayOption33) I
(33I J
Type33J N
contentPartType33O ^
)33^ _
{44 	
if55 
(55 
!55 
contentPartType55  
.55  !
IsSubclassOf55! -
(55- .
typeof55. 4
(554 5
ContentPart555 @
)55@ A
)55A B
)55B C
{66 
throw77 
new77 
ArgumentException77 +
(77+ ,
$str77, I
+77J K
nameof77L R
(77R S
ContentPart77S ^
)77^ _
)77_ `
;77` a
}88 
var:: 
option:: 
=:: 
_contentParts:: &
.::& '
FirstOrDefault::' 5
(::5 6
x::6 7
=>::8 :
x::; <
.::< =
Type::= A
==::B D
contentPartType::E T
)::T U
;::U V
if;; 
(;; 
option;; 
==;; 
null;; 
);; 
{<< 
option== 
=== 
new== $
ContentPartDisplayOption== 5
(==5 6
contentPartType==6 E
)==E F
;==F G
_contentParts>> 
.>> 
Add>> !
(>>! "
option>>" (
)>>( )
;>>) *
}?? 
returnAA 
optionAA 
;AA 
}BB 	
internalDD 
voidDD &
ForContentFieldDisplayModeDD 0
(DD0 1
TypeDD1 5
contentFieldTypeDD6 F
,DDF G
TypeDDH L!
displayModeDriverTypeDDM b
,DDb c
FuncDDd h
<DDh i
stringDDi o
,DDo p
boolDDq u
>DDu v
	predicate	DDw Ä
)
DDÄ Å
{EE 	
ifFF 
(FF 
!FF 
typeofFF 
(FF &
IContentFieldDisplayDriverFF 2
)FF2 3
.FF3 4
IsAssignableFromFF4 D
(FFD E!
displayModeDriverTypeFFE Z
)FFZ [
)FF[ \
{GG 
throwHH 
newHH 
ArgumentExceptionHH +
(HH+ ,
$strHH, F
+HHG H
nameofHHI O
(HHO P&
IContentFieldDisplayDriverHHP j
)HHj k
)HHk l
;HHl m
}II 
varKK 
optionKK 
=KK -
!GetOrAddContentFieldDisplayOptionKK :
(KK: ;
contentFieldTypeKK; K
)KKK L
;KKL M
optionLL 
.LL 
ForDisplayModeLL !
(LL! "!
displayModeDriverTypeLL" 7
,LL7 8
	predicateLL9 B
)LLB C
;LLC D
}MM 	
internalOO 
voidOO !
ForContentFieldEditorOO +
(OO+ ,
TypeOO, 0
contentFieldTypeOO1 A
,OOA B
TypeOOC G
editorDriverTypeOOH X
,OOX Y
FuncOOZ ^
<OO^ _
stringOO_ e
,OOe f
boolOOg k
>OOk l
	predicateOOm v
)OOv w
{PP 	
ifQQ 
(QQ 
!QQ 
typeofQQ 
(QQ &
IContentFieldDisplayDriverQQ 2
)QQ2 3
.QQ3 4
IsAssignableFromQQ4 D
(QQD E
editorDriverTypeQQE U
)QQU V
)QQV W
{RR 
throwSS 
newSS 
ArgumentExceptionSS +
(SS+ ,
$strSS, F
+SSG H
nameofSSI O
(SSO P&
IContentFieldDisplayDriverSSP j
)SSj k
)SSk l
;SSl m
}TT 
varVV 
optionVV 
=VV -
!GetOrAddContentFieldDisplayOptionVV :
(VV: ;
contentFieldTypeVV; K
)VVK L
;VVL M
optionWW 
.WW 
	ForEditorWW 
(WW 
editorDriverTypeWW -
,WW- .
	predicateWW/ 8
)WW8 9
;WW9 :
}XX 	
internalZZ 
voidZZ +
RemoveContentFieldDisplayDriverZZ 5
(ZZ5 6
TypeZZ6 :
contentPartTypeZZ; J
,ZZJ K
TypeZZL P

driverTypeZZQ [
)ZZ[ \
{[[ 	
if\\ 
(\\ 
!\\ 
typeof\\ 
(\\ &
IContentFieldDisplayDriver\\ 2
)\\2 3
.\\3 4
IsAssignableFrom\\4 D
(\\D E

driverType\\E O
)\\O P
)\\P Q
{]] 
throw^^ 
new^^ 
ArgumentException^^ +
(^^+ ,
$str^^, F
+^^G H
nameof^^I O
(^^O P&
IContentFieldDisplayDriver^^P j
)^^j k
)^^k l
;^^l m
}__ 
varaa 
optionaa 
=aa -
!GetOrAddContentFieldDisplayOptionaa :
(aa: ;
contentPartTypeaa; J
)aaJ K
;aaK L
optionbb 
.bb 
RemoveDisplayDriverbb &
(bb& '

driverTypebb' 1
)bb1 2
;bb2 3
}cc 	
privateee %
ContentFieldDisplayOptionee )-
!GetOrAddContentFieldDisplayOptionee* K
(eeK L
TypeeeL P
contentFieldTypeeeQ a
)eea b
{ff 	
ifgg 
(gg 
!gg 
contentFieldTypegg !
.gg! "
IsSubclassOfgg" .
(gg. /
typeofgg/ 5
(gg5 6
ContentFieldgg6 B
)ggB C
)ggC D
)ggD E
{hh 
throwii 
newii 
ArgumentExceptionii +
(ii+ ,
$strii, I
+iiJ K
nameofiiL R
(iiR S
ContentFieldiiS _
)ii_ `
)ii` a
;iia b
}jj 
varll 
optionll 
=ll 
_contentFieldsll '
.ll' (
FirstOrDefaultll( 6
(ll6 7
xll7 8
=>ll9 ;
xll< =
.ll= >
Typell> B
==llC E
contentFieldTypellF V
)llV W
;llW X
ifmm 
(mm 
optionmm 
==mm 
nullmm 
)mm 
{nn 
optionoo 
=oo 
newoo %
ContentFieldDisplayOptionoo 6
(oo6 7
contentFieldTypeoo7 G
)ooG H
;ooH I
_contentFieldspp 
.pp 
Addpp "
(pp" #
optionpp# )
)pp) *
;pp* +
}qq 
returnss 
optionss 
;ss 
}tt 	
}uu 
}vv “Î
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldDisplayDriver.cs
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
ContentManagement

 '
.

' (
Display

( /
.

/ 0
ContentDisplay

0 >
{ 
public 

abstract 
class %
ContentFieldDisplayDriver 3
<3 4
TField4 :
>: ;
:< =
DisplayDriverBase> O
,O P&
IContentFieldDisplayDriverQ k
wherel q
TFieldr x
:y z
ContentField	{ á
,
á à
new
â å
(
å ç
)
ç é
{ 
private 
const 
string 
DisplayToken )
=* +
$str, 6
;6 7
private 
const 
string 
DisplaySeparator -
=. /
$str0 <
;< =
private %
ContentTypePartDefinition )
_typePartDefinition* =
;= >
private &
ContentPartFieldDefinition * 
_partFieldDefinition+ ?
;? @
public 
override 
ShapeResult #
Factory$ +
(+ ,
string, 2
	shapeType3 <
,< =
Func> B
<B C
IBuildShapeContextC U
,U V
	ValueTaskW `
<` a
IShapea g
>g h
>h i
shapeBuilderj v
,v w
Funcx |
<| }
IShape	} É
,
É Ñ
Task
Ö â
>
â ä
initializeAsync
ã ö
)
ö õ
{ 	
var 
result 
= 
base 
. 
Factory %
(% &
	shapeType& /
,/ 0
shapeBuilder1 =
,= >
initializeAsync? N
)N O
.O P
PrefixP V
(V W
PrefixW ]
)] ^
;^ _
if 
( 
_typePartDefinition #
!=$ &
null' +
&&, . 
_partFieldDefinition/ C
!=D F
nullG K
)K L
{ 
var 
partType 
= 
_typePartDefinition 2
.2 3
PartDefinition3 A
.A B
NameB F
;F G
var 
partName 
= 
_typePartDefinition 2
.2 3
Name3 7
;7 8
var 
	fieldType 
=  
_partFieldDefinition  4
.4 5
FieldDefinition5 D
.D E
NameE I
;I J
var   
	fieldName   
=    
_partFieldDefinition    4
.  4 5
Name  5 9
;  9 :
var!! 
contentType!! 
=!!  !
_typePartDefinition!!" 5
.!!5 6!
ContentTypeDefinition!!6 K
.!!K L
Name!!L P
;!!P Q
var"" 
displayMode"" 
=""  ! 
_partFieldDefinition""" 6
.""6 7
DisplayMode""7 B
(""B C
)""C D
;""D E
var## 
hasDisplayMode## "
=### $
!##% &
String##& ,
.##, -
IsNullOrEmpty##- :
(##: ;
displayMode##; F
)##F G
;##G H
if%% 
(%% 
GetEditorShapeType%% &
(%%& ' 
_partFieldDefinition%%' ;
)%%; <
==%%= ?
	shapeType%%@ I
)%%I J
{&& 
result(( 
.(( 
Differentiator(( )
((() *
$"((* ,
{((, -
partName((- 5
}((5 6
-((6 7
{((7 8
	fieldName((8 A
}((A B
"((B C
)((C D
;((D E
return++ 
result++ !
;++! "
},, 
if// 
(// 
hasDisplayMode// "
&&//# %
	shapeType//& /
==//0 2
	fieldType//3 <
+//= >
DisplaySeparator//? O
+//P Q
displayMode//R ]
)//] ^
{00 
result22 
.22 
Name22 
(22  
$"22  "
{22" #
partName22# +
}22+ ,
-22, -
{22- .
	fieldName22. 7
}227 8
"228 9
)229 :
;22: ;
}33 
if55 
(55 
	fieldType55 
==55  
	shapeType55! *
)55* +
{66 
result88 
.88 
Differentiator88 )
(88) *
$"88* ,
{88, -
partName88- 5
}885 6
-886 7
{887 8
	fieldName888 A
}88A B
"88B C
)88C D
;88D E
}99 
else:: 
{;; 
result== 
.== 
Differentiator== )
(==) *
$"==* ,
{==, -
partName==- 5
}==5 6
-==6 7
{==7 8
	fieldName==8 A
}==A B
-==B C
{==C D
	shapeType==D M
}==M N
"==N O
)==O P
;==P Q
}>> 
result@@ 
.@@ 

Displaying@@ !
(@@! "
ctx@@" %
=>@@& (
{AA 
varBB 
displayTypesBB $
=BB% &
newBB' *
[BB* +
]BB+ ,
{BB- .
$strBB/ 1
,BB1 2
$strBB3 6
+BB7 8
ctxBB9 <
.BB< =
ShapeBB= B
.BBB C
MetadataBBC K
.BBK L
DisplayTypeBBL W
}BBX Y
;BBY Z
ctxEE 
.EE 
ShapeEE 
.EE 
MetadataEE &
.EE& '

AlternatesEE' 1
.EE1 2
AddEE2 5
(EE5 6
$"EE6 8
{EE8 9
	shapeTypeEE9 B
}EEB C
_EEC D
{EED E
ctxEEE H
.EEH I
ShapeEEI N
.EEN O
MetadataEEO W
.EEW X
DisplayTypeEEX c
}EEc d
"EEd e
)EEe f
;EEf g
ifII 
(II 
	shapeTypeII !
==II" $
	fieldTypeII% .
)II. /
{JJ 
foreachKK 
(KK  !
varKK! $
displayTypeKK% 0
inKK1 3
displayTypesKK4 @
)KK@ A
{LL 
ctxNN 
.NN  
ShapeNN  %
.NN% &
MetadataNN& .
.NN. /

AlternatesNN/ 9
.NN9 :
AddNN: =
(NN= >
$"NN> @
{NN@ A
partTypeNNA I
}NNI J
{NNJ K
displayTypeNNK V
}NNV W
__NNW Y
{NNY Z
	fieldNameNNZ c
}NNc d
"NNd e
)NNe f
;NNf g
ctxQQ 
.QQ  
ShapeQQ  %
.QQ% &
MetadataQQ& .
.QQ. /

AlternatesQQ/ 9
.QQ9 :
AddQQ: =
(QQ= >
$"QQ> @
{QQ@ A
contentTypeQQA L
}QQL M
{QQM N
displayTypeQQN Y
}QQY Z
__QQZ \
{QQ\ ]
	fieldTypeQQ] f
}QQf g
"QQg h
)QQh i
;QQi j
ctxTT 
.TT  
ShapeTT  %
.TT% &
MetadataTT& .
.TT. /

AlternatesTT/ 9
.TT9 :
AddTT: =
(TT= >
$"TT> @
{TT@ A
contentTypeTTA L
}TTL M
{TTM N
displayTypeTTN Y
}TTY Z
__TTZ \
{TT\ ]
partTypeTT] e
}TTe f
__TTf h
{TTh i
	fieldNameTTi r
}TTr s
"TTs t
)TTt u
;TTu v
}UU 
}VV 
elseWW 
{XX 
ifYY 
(YY 
hasDisplayModeYY *
)YY* +
{ZZ 
ctx\\ 
.\\  
Shape\\  %
.\\% &
Metadata\\& .
.\\. /

Alternates\\/ 9
.\\9 :
Add\\: =
(\\= >
$"\\> @
{\\@ A
	fieldType\\A J
}\\J K
_\\K L
{\\L M
ctx\\M P
.\\P Q
Shape\\Q V
.\\V W
Metadata\\W _
.\\_ `
DisplayType\\` k
}\\k l
__\\l n
{\\n o
displayMode\\o z
}\\z {
{\\{ |
DisplayToken	\\| à
}
\\à â
"
\\â ä
)
\\ä ã
;
\\ã å
}]] 
for__ 
(__ 
var__  
i__! "
=__# $
$num__% &
;__& '
i__( )
<__* +
displayTypes__, 8
.__8 9
Length__9 ?
;__? @
i__A B
++__B D
)__D E
{`` 
varaa 
displayTypeaa  +
=aa, -
displayTypesaa. :
[aa: ;
iaa; <
]aa< =
;aa= >
ifcc 
(cc  
hasDisplayModecc  .
)cc. /
{dd 
	shapeTypeee  )
=ee* +
$"ee, .
{ee. /
	fieldTypeee/ 8
}ee8 9
__ee9 ;
{ee; <
displayModeee< G
}eeG H
"eeH I
;eeI J
ifgg  "
(gg# $
displayTypegg$ /
==gg0 2
$strgg3 5
)gg5 6
{hh  !
displayTypeii$ /
=ii0 1
DisplayTokenii2 >
;ii> ?
}jj  !
elsekk  $
{ll  !
	shapeTypemm$ -
+=mm. 0
DisplayTokenmm1 =
;mm= >
}nn  !
}oo 
ctxrr 
.rr  
Shaperr  %
.rr% &
Metadatarr& .
.rr. /

Alternatesrr/ 9
.rr9 :
Addrr: =
(rr= >
$"rr> @
{rr@ A
	fieldTyperrA J
}rrJ K
{rrK L
displayTyperrL W
}rrW X
__rrX Z
{rrZ [
	shapeTyperr[ d
}rrd e
"rre f
)rrf g
;rrg h
ctxuu 
.uu  
Shapeuu  %
.uu% &
Metadatauu& .
.uu. /

Alternatesuu/ 9
.uu9 :
Adduu: =
(uu= >
$"uu> @
{uu@ A
partTypeuuA I
}uuI J
{uuJ K
displayTypeuuK V
}uuV W
__uuW Y
{uuY Z
	fieldNameuuZ c
}uuc d
__uud f
{uuf g
	shapeTypeuug p
}uup q
"uuq r
)uur s
;uus t
ctxxx 
.xx  
Shapexx  %
.xx% &
Metadataxx& .
.xx. /

Alternatesxx/ 9
.xx9 :
Addxx: =
(xx= >
$"xx> @
{xx@ A
contentTypexxA L
}xxL M
{xxM N
displayTypexxN Y
}xxY Z
__xxZ \
{xx\ ]
	fieldTypexx] f
}xxf g
__xxg i
{xxi j
	shapeTypexxj s
}xxs t
"xxt u
)xxu v
;xxv w
ctx{{ 
.{{  
Shape{{  %
.{{% &
Metadata{{& .
.{{. /

Alternates{{/ 9
.{{9 :
Add{{: =
({{= >
$"{{> @
{{{@ A
contentType{{A L
}{{L M
{{{M N
displayType{{N Y
}{{Y Z
__{{Z \
{{{\ ]
partName{{] e
}{{e f
__{{f h
{{{h i
	fieldName{{i r
}{{r s
__{{s u
{{{u v
	shapeType{{v 
}	{{ Ä
"
{{Ä Å
)
{{Å Ç
;
{{Ç É
}|| 
}}} 
}~~ 
)~~ 
;~~ 
} 
return
ÅÅ 
result
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
Task
ÑÑ 
<
ÑÑ 
IDisplayResult
ÑÑ 
>
ÑÑ (
IContentFieldDisplayDriver
ÑÑ 7
.
ÑÑ7 8
BuildDisplayAsync
ÑÑ8 I
(
ÑÑI J
ContentPart
ÑÑJ U
contentPart
ÑÑV a
,
ÑÑa b(
ContentPartFieldDefinition
ÑÑc }"
partFieldDefinitionÑÑ~ ë
,ÑÑë í)
ContentTypePartDefinitionÑÑì ¨"
typePartDefinitionÑÑ≠ ø
,ÑÑø ¿#
BuildDisplayContextÑÑ¡ ‘
contextÑÑ’ ‹
)ÑÑ‹ ›
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
String
ÜÜ 
.
ÜÜ 
Equals
ÜÜ 
(
ÜÜ 
typeof
ÜÜ %
(
ÜÜ% &
TField
ÜÜ& ,
)
ÜÜ, -
.
ÜÜ- .
Name
ÜÜ. 2
,
ÜÜ2 3!
partFieldDefinition
ÜÜ4 G
.
ÜÜG H
FieldDefinition
ÜÜH W
.
ÜÜW X
Name
ÜÜX \
)
ÜÜ\ ]
&&
ÜÜ^ `
!
áá 
String
áá 
.
áá 
Equals
áá 
(
áá 
nameof
áá $
(
áá$ %
ContentField
áá% 1
)
áá1 2
,
áá2 3!
partFieldDefinition
áá4 G
.
ááG H
FieldDefinition
ááH W
.
ááW X
Name
ááX \
)
áá\ ]
)
áá] ^
{
àà 
return
ââ 
Task
ââ 
.
ââ 

FromResult
ââ &
(
ââ& '
default
ââ' .
(
ââ. /
IDisplayResult
ââ/ =
)
ââ= >
)
ââ> ?
;
ââ? @
}
ää 
var
åå 
field
åå 
=
åå 
contentPart
åå #
.
åå# $
Get
åå$ '
<
åå' (
TField
åå( .
>
åå. /
(
åå/ 0!
partFieldDefinition
åå0 C
.
ååC D
Name
ååD H
)
ååH I
;
ååI J
if
çç 
(
çç 
field
çç 
!=
çç 
null
çç 
)
çç 
{
éé 
BuildPrefix
èè 
(
èè  
typePartDefinition
èè .
,
èè. /!
partFieldDefinition
èè0 C
,
èèC D
context
èèE L
.
èèL M
HtmlFieldPrefix
èèM \
)
èè\ ]
;
èè] ^
var
ëë !
fieldDisplayContext
ëë '
=
ëë( )
new
ëë* -&
BuildFieldDisplayContext
ëë. F
(
ëëF G
contentPart
ëëG R
,
ëëR S 
typePartDefinition
ëëT f
,
ëëf g!
partFieldDefinition
ëëh {
,
ëë{ |
contextëë} Ñ
)ëëÑ Ö
;ëëÖ Ü!
_typePartDefinition
ìì #
=
ìì$ % 
typePartDefinition
ìì& 8
;
ìì8 9"
_partFieldDefinition
îî $
=
îî% &!
partFieldDefinition
îî' :
;
îî: ;
var
ññ 
result
ññ 
=
ññ 
DisplayAsync
ññ )
(
ññ) *
field
ññ* /
,
ññ/ 0!
fieldDisplayContext
ññ1 D
)
ññD E
;
ññE F!
_typePartDefinition
òò #
=
òò$ %
null
òò& *
;
òò* +"
_partFieldDefinition
ôô $
=
ôô% &
null
ôô' +
;
ôô+ ,
return
õõ 
result
õõ 
;
õõ 
}
úú 
return
ûû 
Task
ûû 
.
ûû 

FromResult
ûû "
(
ûû" #
default
ûû# *
(
ûû* +
IDisplayResult
ûû+ 9
)
ûû9 :
)
ûû: ;
;
ûû; <
}
üü 	
Task
°° 
<
°° 
IDisplayResult
°° 
>
°° (
IContentFieldDisplayDriver
°° 7
.
°°7 8
BuildEditorAsync
°°8 H
(
°°H I
ContentPart
°°I T
contentPart
°°U `
,
°°` a(
ContentPartFieldDefinition
°°b |"
partFieldDefinition°°} ê
,°°ê ë)
ContentTypePartDefinition°°í ´"
typePartDefinition°°¨ æ
,°°æ ø"
BuildEditorContext°°¿ “
context°°” ⁄
)°°⁄ €
{
¢¢ 	
if
££ 
(
££ 
!
££ 
String
££ 
.
££ 
Equals
££ 
(
££ 
typeof
££ %
(
££% &
TField
££& ,
)
££, -
.
££- .
Name
££. 2
,
££2 3!
partFieldDefinition
££4 G
.
££G H
FieldDefinition
££H W
.
££W X
Name
££X \
)
££\ ]
&&
££^ `
!
§§ 
String
§§ 
.
§§ 
Equals
§§ 
(
§§ 
nameof
§§ %
(
§§% &
ContentField
§§& 2
)
§§2 3
,
§§3 4!
partFieldDefinition
§§5 H
.
§§H I
FieldDefinition
§§I X
.
§§X Y
Name
§§Y ]
)
§§] ^
)
§§^ _
{
•• 
return
¶¶ 
Task
¶¶ 
.
¶¶ 

FromResult
¶¶ &
(
¶¶& '
default
¶¶' .
(
¶¶. /
IDisplayResult
¶¶/ =
)
¶¶= >
)
¶¶> ?
;
¶¶? @
}
ßß 
var
©© 
field
©© 
=
©© 
contentPart
©© #
.
©©# $
GetOrCreate
©©$ /
<
©©/ 0
TField
©©0 6
>
©©6 7
(
©©7 8!
partFieldDefinition
©©8 K
.
©©K L
Name
©©L P
)
©©P Q
;
©©Q R
if
´´ 
(
´´ 
field
´´ 
!=
´´ 
null
´´ 
)
´´ 
{
¨¨ 
BuildPrefix
≠≠ 
(
≠≠  
typePartDefinition
≠≠ .
,
≠≠. /!
partFieldDefinition
≠≠0 C
,
≠≠C D
context
≠≠E L
.
≠≠L M
HtmlFieldPrefix
≠≠M \
)
≠≠\ ]
;
≠≠] ^
var
ØØ  
fieldEditorContext
ØØ &
=
ØØ' (
new
ØØ) ,%
BuildFieldEditorContext
ØØ- D
(
ØØD E
contentPart
ØØE P
,
ØØP Q 
typePartDefinition
ØØR d
,
ØØd e!
partFieldDefinition
ØØf y
,
ØØy z
contextØØ{ Ç
)ØØÇ É
;ØØÉ Ñ!
_typePartDefinition
±± #
=
±±$ % 
typePartDefinition
±±& 8
;
±±8 9"
_partFieldDefinition
≤≤ $
=
≤≤% &!
partFieldDefinition
≤≤' :
;
≤≤: ;
var
¥¥ 
result
¥¥ 
=
¥¥ 
	EditAsync
¥¥ &
(
¥¥& '
field
¥¥' ,
,
¥¥, - 
fieldEditorContext
¥¥. @
)
¥¥@ A
;
¥¥A B!
_typePartDefinition
∂∂ #
=
∂∂$ %
null
∂∂& *
;
∂∂* +"
_partFieldDefinition
∑∑ $
=
∑∑% &
null
∑∑' +
;
∑∑+ ,
return
ππ 
result
ππ 
;
ππ 
}
∫∫ 
return
ºº 
Task
ºº 
.
ºº 

FromResult
ºº "
(
ºº" #
default
ºº# *
(
ºº* +
IDisplayResult
ºº+ 9
)
ºº9 :
)
ºº: ;
;
ºº; <
}
ΩΩ 	
async
øø 
Task
øø 
<
øø 
IDisplayResult
øø !
>
øø! "(
IContentFieldDisplayDriver
øø# =
.
øø= >
UpdateEditorAsync
øø> O
(
øøO P
ContentPart
øøP [
contentPart
øø\ g
,
øøg h)
ContentPartFieldDefinitionøøi É#
partFieldDefinitionøøÑ ó
,øøó ò)
ContentTypePartDefinitionøøô ≤"
typePartDefinitionøø≥ ≈
,øø≈ ∆#
UpdateEditorContextøø« ⁄
contextøø€ ‚
)øø‚ „
{
¿¿ 	
if
¡¡ 
(
¡¡ 
!
¡¡ 
String
¡¡ 
.
¡¡ 
Equals
¡¡ 
(
¡¡ 
typeof
¡¡ %
(
¡¡% &
TField
¡¡& ,
)
¡¡, -
.
¡¡- .
Name
¡¡. 2
,
¡¡2 3!
partFieldDefinition
¡¡4 G
.
¡¡G H
FieldDefinition
¡¡H W
.
¡¡W X
Name
¡¡X \
)
¡¡\ ]
&&
¡¡^ `
!
¬¬ 
String
¬¬ 
.
¬¬ 
Equals
¬¬ 
(
¬¬ 
nameof
¬¬ %
(
¬¬% &
ContentField
¬¬& 2
)
¬¬2 3
,
¬¬3 4!
partFieldDefinition
¬¬5 H
.
¬¬H I
FieldDefinition
¬¬I X
.
¬¬X Y
Name
¬¬Y ]
)
¬¬] ^
)
¬¬^ _
{
√√ 
return
ƒƒ 
null
ƒƒ 
;
ƒƒ 
}
≈≈ 
var
«« 
field
«« 
=
«« 
contentPart
«« #
.
««# $
GetOrCreate
««$ /
<
««/ 0
TField
««0 6
>
««6 7
(
««7 8!
partFieldDefinition
««8 K
.
««K L
Name
««L P
)
««P Q
;
««Q R
BuildPrefix
…… 
(
……  
typePartDefinition
…… *
,
……* +!
partFieldDefinition
……, ?
,
……? @
context
……A H
.
……H I
HtmlFieldPrefix
……I X
)
……X Y
;
……Y Z
var
ÀÀ &
updateFieldEditorContext
ÀÀ (
=
ÀÀ) *
new
ÀÀ+ .&
UpdateFieldEditorContext
ÀÀ/ G
(
ÀÀG H
contentPart
ÀÀH S
,
ÀÀS T 
typePartDefinition
ÀÀU g
,
ÀÀg h!
partFieldDefinition
ÀÀi |
,
ÀÀ| }
contextÀÀ~ Ö
)ÀÀÖ Ü
;ÀÀÜ á!
_typePartDefinition
ÕÕ 
=
ÕÕ  ! 
typePartDefinition
ÕÕ" 4
;
ÕÕ4 5"
_partFieldDefinition
ŒŒ  
=
ŒŒ! "!
partFieldDefinition
ŒŒ# 6
;
ŒŒ6 7
var
–– 
result
–– 
=
–– 
await
–– 
UpdateAsync
–– *
(
––* +
field
––+ 0
,
––0 1
context
––2 9
.
––9 :
Updater
––: A
,
––A B&
updateFieldEditorContext
––C [
)
––[ \
;
––\ ]!
_typePartDefinition
““ 
=
““  !
null
““" &
;
““& '"
_partFieldDefinition
””  
=
””! "
null
””# '
;
””' (
if
’’ 
(
’’ 
result
’’ 
==
’’ 
null
’’ 
)
’’ 
{
÷÷ 
return
◊◊ 
null
◊◊ 
;
◊◊ 
}
ÿÿ 
contentPart
⁄⁄ 
.
⁄⁄ 
Apply
⁄⁄ 
(
⁄⁄ !
partFieldDefinition
⁄⁄ 1
.
⁄⁄1 2
Name
⁄⁄2 6
,
⁄⁄6 7
field
⁄⁄8 =
)
⁄⁄= >
;
⁄⁄> ?
return
‹‹ 
result
‹‹ 
;
‹‹ 
}
›› 	
public
ﬂﬂ 
virtual
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ 
IDisplayResult
ﬂﬂ *
>
ﬂﬂ* +
DisplayAsync
ﬂﬂ, 8
(
ﬂﬂ8 9
TField
ﬂﬂ9 ?
field
ﬂﬂ@ E
,
ﬂﬂE F&
BuildFieldDisplayContext
ﬂﬂG _!
fieldDisplayContext
ﬂﬂ` s
)
ﬂﬂs t
{
‡‡ 	
return
·· 
Task
·· 
.
·· 

FromResult
·· "
(
··" #
Display
··# *
(
··* +
field
··+ 0
,
··0 1!
fieldDisplayContext
··2 E
)
··E F
)
··F G
;
··G H
}
‚‚ 	
public
‰‰ 
virtual
‰‰ 
Task
‰‰ 
<
‰‰ 
IDisplayResult
‰‰ *
>
‰‰* +
	EditAsync
‰‰, 5
(
‰‰5 6
TField
‰‰6 <
field
‰‰= B
,
‰‰B C%
BuildFieldEditorContext
‰‰D [
context
‰‰\ c
)
‰‰c d
{
ÂÂ 	
return
ÊÊ 
Task
ÊÊ 
.
ÊÊ 

FromResult
ÊÊ "
(
ÊÊ" #
Edit
ÊÊ# '
(
ÊÊ' (
field
ÊÊ( -
,
ÊÊ- .
context
ÊÊ/ 6
)
ÊÊ6 7
)
ÊÊ7 8
;
ÊÊ8 9
}
ÁÁ 	
public
ÈÈ 
virtual
ÈÈ 
Task
ÈÈ 
<
ÈÈ 
IDisplayResult
ÈÈ *
>
ÈÈ* +
UpdateAsync
ÈÈ, 7
(
ÈÈ7 8
TField
ÈÈ8 >
field
ÈÈ? D
,
ÈÈD E
IUpdateModel
ÈÈF R
updater
ÈÈS Z
,
ÈÈZ [&
UpdateFieldEditorContext
ÈÈ\ t
context
ÈÈu |
)
ÈÈ| }
{
ÍÍ 	
return
ÎÎ 
Task
ÎÎ 
.
ÎÎ 

FromResult
ÎÎ "
(
ÎÎ" #
Update
ÎÎ# )
(
ÎÎ) *
field
ÎÎ* /
,
ÎÎ/ 0
updater
ÎÎ1 8
,
ÎÎ8 9
context
ÎÎ: A
)
ÎÎA B
)
ÎÎB C
;
ÎÎC D
}
ÏÏ 	
public
ÓÓ 
virtual
ÓÓ 
IDisplayResult
ÓÓ %
Display
ÓÓ& -
(
ÓÓ- .
TField
ÓÓ. 4
field
ÓÓ5 :
,
ÓÓ: ;&
BuildFieldDisplayContext
ÓÓ< T!
fieldDisplayContext
ÓÓU h
)
ÓÓh i
{
ÔÔ 	
return
 
null
 
;
 
}
ÒÒ 	
public
ÛÛ 
virtual
ÛÛ 
IDisplayResult
ÛÛ %
Edit
ÛÛ& *
(
ÛÛ* +
TField
ÛÛ+ 1
field
ÛÛ2 7
,
ÛÛ7 8%
BuildFieldEditorContext
ÛÛ9 P
context
ÛÛQ X
)
ÛÛX Y
{
ÙÙ 	
return
ıı 
null
ıı 
;
ıı 
}
ˆˆ 	
public
¯¯ 
virtual
¯¯ 
IDisplayResult
¯¯ %
Update
¯¯& ,
(
¯¯, -
TField
¯¯- 3
field
¯¯4 9
,
¯¯9 :
IUpdateModel
¯¯; G
updater
¯¯H O
,
¯¯O P&
UpdateFieldEditorContext
¯¯Q i
context
¯¯j q
)
¯¯q r
{
˘˘ 	
return
˙˙ 
null
˙˙ 
;
˙˙ 
}
˚˚ 	
	protected
˝˝ 
string
˝˝  
GetEditorShapeType
˝˝ +
(
˝˝+ ,
string
˝˝, 2
	shapeType
˝˝3 <
,
˝˝< =(
ContentPartFieldDefinition
˝˝> X!
partFieldDefinition
˝˝Y l
)
˝˝l m
{
˛˛ 	
var
ˇˇ 
editor
ˇˇ 
=
ˇˇ !
partFieldDefinition
ˇˇ ,
.
ˇˇ, -
Editor
ˇˇ- 3
(
ˇˇ3 4
)
ˇˇ4 5
;
ˇˇ5 6
return
ÄÄ 
!
ÄÄ 
String
ÄÄ 
.
ÄÄ 
IsNullOrEmpty
ÄÄ (
(
ÄÄ( )
editor
ÄÄ) /
)
ÄÄ/ 0
?
ÅÅ 
	shapeType
ÅÅ 
+
ÅÅ 
$str
ÅÅ "
+
ÅÅ# $
editor
ÅÅ% +
:
ÇÇ 
	shapeType
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
	protected
ÖÖ 
string
ÖÖ  
GetEditorShapeType
ÖÖ +
(
ÖÖ+ ,
string
ÖÖ, 2
	shapeType
ÖÖ3 <
,
ÖÖ< =%
BuildFieldEditorContext
ÖÖ> U
context
ÖÖV ]
)
ÖÖ] ^
{
ÜÜ 	
return
áá  
GetEditorShapeType
áá %
(
áá% &
	shapeType
áá& /
,
áá/ 0
context
áá1 8
.
áá8 9!
PartFieldDefinition
áá9 L
)
ááL M
;
ááM N
}
àà 	
	protected
ää 
string
ää  
GetEditorShapeType
ää +
(
ää+ ,(
ContentPartFieldDefinition
ää, F!
partFieldDefinition
ääG Z
)
ääZ [
{
ãã 	
return
åå  
GetEditorShapeType
åå %
(
åå% &
typeof
åå& ,
(
åå, -
TField
åå- 3
)
åå3 4
.
åå4 5
Name
åå5 9
+
åå: ;
$str
åå< C
,
ååC D!
partFieldDefinition
ååE X
)
ååX Y
;
ååY Z
}
çç 	
	protected
èè 
string
èè  
GetEditorShapeType
èè +
(
èè+ ,%
BuildFieldEditorContext
èè, C
context
èèD K
)
èèK L
{
êê 	
return
ëë  
GetEditorShapeType
ëë %
(
ëë% &
context
ëë& -
.
ëë- .!
PartFieldDefinition
ëë. A
)
ëëA B
;
ëëB C
}
íí 	
	protected
îî 
string
îî !
GetDisplayShapeType
îî ,
(
îî, -
string
îî- 3
	shapeType
îî4 =
,
îî= >&
BuildFieldDisplayContext
îî? W
context
îîX _
)
îî_ `
{
ïï 	
var
ññ 
displayMode
ññ 
=
ññ 
context
ññ %
.
ññ% &!
PartFieldDefinition
ññ& 9
.
ññ9 :
DisplayMode
ññ: E
(
ññE F
)
ññF G
;
ññG H
return
óó 
!
óó 
String
óó 
.
óó 
IsNullOrEmpty
óó (
(
óó( )
displayMode
óó) 4
)
óó4 5
?
òò 
	shapeType
òò 
+
òò 
DisplaySeparator
òò .
+
òò/ 0
displayMode
òò1 <
:
ôô 
	shapeType
ôô 
;
ôô 
}
öö 	
	protected
úú 
string
úú !
GetDisplayShapeType
úú ,
(
úú, -&
BuildFieldDisplayContext
úú- E
context
úúF M
)
úúM N
{
ùù 	
return
ûû !
GetDisplayShapeType
ûû &
(
ûû& '
typeof
ûû' -
(
ûû- .
TField
ûû. 4
)
ûû4 5
.
ûû5 6
Name
ûû6 :
,
ûû: ;
context
ûû< C
)
ûûC D
;
ûûD E
}
üü 	
private
°° 
void
°° 
BuildPrefix
°°  
(
°°  !'
ContentTypePartDefinition
°°! : 
typePartDefinition
°°; M
,
°°M N(
ContentPartFieldDefinition
°°O i!
partFieldDefinition
°°j }
,
°°} ~
string°° Ö
htmlFieldPrefix°°Ü ï
)°°ï ñ
{
¢¢ 	
Prefix
££ 
=
££  
typePartDefinition
££ '
.
££' (
Name
££( ,
+
££- .
$str
££/ 2
+
££3 4!
partFieldDefinition
££5 H
.
££H I
Name
££I M
;
££M N
if
•• 
(
•• 
!
•• 
String
•• 
.
•• 
IsNullOrEmpty
•• %
(
••% &
htmlFieldPrefix
••& 5
)
••5 6
)
••6 7
{
¶¶ 
Prefix
ßß 
=
ßß 
htmlFieldPrefix
ßß (
+
ßß) *
$str
ßß+ .
+
ßß/ 0
Prefix
ßß1 7
;
ßß7 8
}
®® 
}
©© 	
}
™™ 
}´´ É
ØD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldDisplayDriverOption.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

class +
ContentFieldDisplayDriverOption 0
{ 
public +
ContentFieldDisplayDriverOption .
(. /
Type/ 3
displayDriverType4 E
)E F
{ 	
DisplayDriverType		 
=		 
displayDriverType		  1
;		1 2
}

 	
public 
Type 
DisplayDriverType %
{& '
get( +
;+ ,
}- .
public 
Func 
< 
string 
, 
bool  
>  !
DisplayMode" -
{. /
get0 3
;3 4
private5 <
set= @
;@ A
}B C
public 
Func 
< 
string 
, 
bool  
>  !
Editor" (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
internal 
void 
SetDisplayMode $
($ %
Func% )
<) *
string* 0
,0 1
bool2 6
>6 7
displayMode8 C
)C D
{ 	
DisplayMode 
= 
displayMode %
;% &
} 	
internal 
void 
	SetEditor 
(  
Func  $
<$ %
string% +
,+ ,
bool- 1
>1 2
editor3 9
)9 :
{ 	
Editor 
= 
editor 
; 
} 	
} 
} ‘%
±D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldDisplayDriverResolver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

class -
!ContentFieldDisplayDriverResolver 2
:3 4.
"IContentFieldDisplayDriverResolver5 W
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
readonly !
ContentDisplayOptions ."
_contentDisplayOptions/ E
;E F
public -
!ContentFieldDisplayDriverResolver 0
(0 1
IServiceProvider 
serviceProvider ,
,, -
IOptions 
< !
ContentDisplayOptions *
>* +!
contentDisplayOptions, A
) 
{ 	
_serviceProvider 
= 
serviceProvider .
;. /"
_contentDisplayOptions "
=# $!
contentDisplayOptions% :
.: ;
Value; @
;@ A
} 	
public 
IList 
< &
IContentFieldDisplayDriver /
>/ 0!
GetDisplayModeDrivers1 F
(F G
stringG M
	fieldNameN W
,W X
stringY _
displayMode` k
)k l
{ 	
var 
services 
= 
new 
List #
<# $&
IContentFieldDisplayDriver$ >
>> ?
(? @
)@ A
;A B
if 
( "
_contentDisplayOptions &
.& '
ContentFieldOptions' :
.: ;
TryGetValue; F
(F G
	fieldNameG P
,P Q
outR U
varV Y%
contentFieldDisplayOptionZ s
)s t
)t u
{ 
foreach 
( 
var #
displayModeDriverOption 4
in5 7%
contentFieldDisplayOption8 Q
.Q R
DisplayModeDriversR d
)d e
{ 
if 
( #
displayModeDriverOption /
./ 0
DisplayMode0 ;
.; <
Invoke< B
(B C
displayModeC N
)N O
)O P
{ 
services    
.    !
Add  ! $
(  $ %
(  % &&
IContentFieldDisplayDriver  & @
)  @ A
_serviceProvider  A Q
.  Q R
GetRequiredService  R d
(  d e#
displayModeDriverOption  e |
.  | }
DisplayDriverType	  } é
)
  é è
)
  è ê
;
  ê ë
}!! 
}"" 
}## 
return%% 
services%% 
;%% 
}&& 	
public(( 
IList(( 
<(( &
IContentFieldDisplayDriver(( /
>((/ 0
GetEditorDrivers((1 A
(((A B
string((B H
	fieldName((I R
,((R S
string((T Z
editor(([ a
)((a b
{)) 	
var** 
services** 
=** 
new** 
List** #
<**# $&
IContentFieldDisplayDriver**$ >
>**> ?
(**? @
)**@ A
;**A B
if,, 
(,, "
_contentDisplayOptions,, &
.,,& '
ContentFieldOptions,,' :
.,,: ;
TryGetValue,,; F
(,,F G
	fieldName,,G P
,,,P Q
out,,R U
var,,V Y%
contentFieldDisplayOption,,Z s
),,s t
),,t u
{-- 
foreach.. 
(.. 
var.. 
editorDriverOption.. /
in..0 2%
contentFieldDisplayOption..3 L
...L M
EditorDrivers..M Z
)..Z [
{// 
if00 
(00 
editorDriverOption00 *
.00* +
Editor00+ 1
.001 2
Invoke002 8
(008 9
editor009 ?
)00? @
)00@ A
{11 
services22  
.22  !
Add22! $
(22$ %
(22% &&
IContentFieldDisplayDriver22& @
)22@ A
_serviceProvider22A Q
.22Q R
GetRequiredService22R d
(22d e
editorDriverOption22e w
.22w x
DisplayDriverType	22x â
)
22â ä
)
22ä ã
;
22ã å
}33 
}44 
}55 
return77 
services77 
;77 
}88 	
}99 
}:: „+
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldDisplayOption.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

class %
ContentFieldDisplayOption *
:+ ,"
ContentFieldOptionBase- C
{ 
private		 
readonly		 
List		 
<		 +
ContentFieldDisplayDriverOption		 =
>		= > 
_fieldDisplayDrivers		? S
=		T U
new		V Y
List		Z ^
<		^ _+
ContentFieldDisplayDriverOption		_ ~
>		~ 
(			 Ä
)
		Ä Å
;
		Å Ç
public %
ContentFieldDisplayOption (
(( )
Type) -
contentFieldType. >
)> ?
:@ A
baseB F
(F G
contentFieldTypeG W
)W X
{ 	
} 	
private 
List 
< +
ContentFieldDisplayDriverOption 4
>4 5
_displayModeDrivers6 I
;I J
public 
IReadOnlyList 
< +
ContentFieldDisplayDriverOption <
>< =
DisplayModeDrivers> P
=>Q S
_displayModeDriversT g
??=h k!
_fieldDisplayDrivers	l Ä
.
Ä Å
Where
Å Ü
(
Ü á
d
á à
=>
â ã
d
å ç
.
ç é
DisplayMode
é ô
!=
ö ú
null
ù °
)
° ¢
.
¢ £
ToList
£ ©
(
© ™
)
™ ´
;
´ ¨
private 
List 
< +
ContentFieldDisplayDriverOption 4
>4 5
_editorDrivers6 D
;D E
public 
IReadOnlyList 
< +
ContentFieldDisplayDriverOption <
>< =
EditorDrivers> K
=>L N
_editorDriversO ]
??=^ a 
_fieldDisplayDriversb v
.v w
Wherew |
(| }
d} ~
=>	 Å
d
Ç É
.
É Ñ
Editor
Ñ ä
!=
ã ç
null
é í
)
í ì
.
ì î
ToList
î ö
(
ö õ
)
õ ú
;
ú ù
internal 
void 
ForDisplayMode $
($ %
Type% )
displayDriverType* ;
,; <
Func= A
<A B
stringB H
,H I
boolJ N
>N O
	predicateP Y
)Y Z
{ 	
var 
option 
= 3
'GetOrAddContentFieldDisplayDriverOption @
(@ A
displayDriverTypeA R
)R S
;S T
option 
. 
SetDisplayMode !
(! "
	predicate" +
)+ ,
;, -
} 	
internal 
void 
	ForEditor 
(  
Type  $
displayDriverType% 6
,6 7
Func8 <
<< =
string= C
,C D
boolE I
>I J
	predicateK T
)T U
{ 	
var 
option 
= 3
'GetOrAddContentFieldDisplayDriverOption @
(@ A
displayDriverTypeA R
)R S
;S T
option   
.   
	SetEditor   
(   
	predicate   &
)  & '
;  ' (
}!! 	
internal## 
void## 
RemoveDisplayDriver## )
(##) *
Type##* .
displayDriverType##/ @
)##@ A
{$$ 	
var%% 
displayDriverOption%% #
=%%$ % 
_fieldDisplayDrivers%%& :
.%%: ;
FirstOrDefault%%; I
(%%I J
d%%J K
=>%%L N
d%%O P
.%%P Q
DisplayDriverType%%Q b
==%%c e
displayDriverType%%f w
)%%w x
;%%x y
if&& 
(&& 
displayDriverOption&& #
!=&&$ &
null&&' +
)&&+ ,
{''  
_fieldDisplayDrivers(( $
.(($ %
Remove((% +
(((+ ,
displayDriverOption((, ?
)((? @
;((@ A
})) 
}** 	
private,, +
ContentFieldDisplayDriverOption,, /3
'GetOrAddContentFieldDisplayDriverOption,,0 W
(,,W X
Type,,X \
displayDriverType,,] n
),,n o
{-- 	
var.. 
option.. 
=..  
_fieldDisplayDrivers.. -
...- .
FirstOrDefault... <
(..< =
o..= >
=>..? A
o..B C
...C D
DisplayDriverType..D U
==..V X
displayDriverType..Y j
)..j k
;..k l
if00 
(00 
option00 
==00 
null00 
)00 
{11 
option22 
=22 
new22 +
ContentFieldDisplayDriverOption22 <
(22< =
displayDriverType22= N
)22N O
;22O P 
_fieldDisplayDrivers33 $
.33$ %
Add33% (
(33( )
option33) /
)33/ 0
;330 1
}44 
return66 
option66 
;66 
}77 	
}88 
}99 ÑZ
∑D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

static 
class 3
'ContentFieldServiceCollectionExtensions ?
{ 
public 
static %
ContentFieldOptionBuilder /
UseDisplayDriver0 @
<@ A&
TContentFieldDisplayDriverA [
>[ \
(\ ]
this] a%
ContentFieldOptionBuilderb {
builder	| É
)
É Ñ
where &
TContentFieldDisplayDriver ,
:- .
class/ 4
,4 5&
IContentFieldDisplayDriver6 P
{ 	
return 
builder 
. 
UseDisplayDriver +
(+ ,
typeof, 2
(2 3&
TContentFieldDisplayDriver3 M
)M N
)N O
;O P
} 	
public 
static %
ContentFieldOptionBuilder /
UseDisplayDriver0 @
(@ A
thisA E%
ContentFieldOptionBuilderF _
builder` g
,g h
Typei m#
fieldDisplayDriverType	n Ñ
)
Ñ Ö
{ 	
return 
builder 
. 
ForDisplayMode )
() *"
fieldDisplayDriverType* @
)@ A
. 
	ForEditor 
( "
fieldDisplayDriverType 1
)1 2
;2 3
} 	
public$$ 
static$$ %
ContentFieldOptionBuilder$$ /
UseDisplayDriver$$0 @
<$$@ A&
TContentFieldDisplayDriver$$A [
>$$[ \
($$\ ]
this$$] a%
ContentFieldOptionBuilder$$b {
builder	$$| É
,
$$É Ñ
Func
$$Ö â
<
$$â ä
string
$$ä ê
,
$$ê ë
bool
$$í ñ
>
$$ñ ó
	predicate
$$ò °
)
$$° ¢
where%% &
TContentFieldDisplayDriver%% ,
:%%- .
class%%/ 4
,%%4 5&
IContentFieldDisplayDriver%%6 P
{&& 	
return'' 
builder'' 
.'' 
ForDisplayMode'' )
('') *
typeof''* 0
(''0 1&
TContentFieldDisplayDriver''1 K
)''K L
,''L M
	predicate''N W
)''W X
.(( 
	ForEditor(( 
((( 
typeof(( !
(((! "&
TContentFieldDisplayDriver((" <
)((< =
,((= >
	predicate((? H
)((H I
;((I J
})) 	
public.. 
static.. %
ContentFieldOptionBuilder.. /
RemoveDisplayDriver..0 C
<..C D&
TContentFieldDisplayDriver..D ^
>..^ _
(.._ `
this..` d%
ContentFieldOptionBuilder..e ~
builder	.. Ü
)
..Ü á
where// &
TContentFieldDisplayDriver// ,
://- .
class/// 4
,//4 5&
IContentFieldDisplayDriver//6 P
{00 	
return11 
builder11 
.11 
RemoveDisplayDriver11 .
(11. /
typeof11/ 5
(115 6&
TContentFieldDisplayDriver116 P
)11P Q
)11Q R
;11R S
}22 	
public77 
static77 %
ContentFieldOptionBuilder77 /
RemoveDisplayDriver770 C
(77C D
this77D H%
ContentFieldOptionBuilder77I b
builder77c j
,77j k
Type77l p#
fieldDisplayDriverType	77q á
)
77á à
{88 	
builder99 
.99 
Services99 
.99 
	Configure99 &
<99& '!
ContentDisplayOptions99' <
>99< =
(99= >
o99> ?
=>99@ B
{:: 
o;; 
.;; +
RemoveContentFieldDisplayDriver;; 1
(;;1 2
builder;;2 9
.;;9 :
ContentFieldType;;: J
,;;J K"
fieldDisplayDriverType;;L b
);;b c
;;;c d
}<< 
)<< 
;<< 
builder>> 
.>> 
Services>> 
.>> 
	RemoveAll>> &
(>>& '"
fieldDisplayDriverType>>' =
)>>= >
;>>> ?
return@@ 
builder@@ 
;@@ 
}AA 	
publicHH 
staticHH %
ContentFieldOptionBuilderHH /
ForDisplayModeHH0 >
<HH> ?&
TContentFieldDisplayDriverHH? Y
>HHY Z
(HHZ [
thisHH[ _%
ContentFieldOptionBuilderHH` y
builder	HHz Å
)
HHÅ Ç
whereII &
TContentFieldDisplayDriverII ,
:II- .
classII/ 4
,II4 5&
IContentFieldDisplayDriverII6 P
{JJ 	
returnKK 
builderKK 
.KK 
ForDisplayModeKK )
(KK) *
typeofKK* 0
(KK0 1&
TContentFieldDisplayDriverKK1 K
)KKK L
)KKL M
;KKM N
}LL 	
publicNN 
staticNN %
ContentFieldOptionBuilderNN /
ForDisplayModeNN0 >
(NN> ?
thisNN? C%
ContentFieldOptionBuilderNND ]
builderNN^ e
,NNe f
TypeNNg k#
fieldDisplayDriverType	NNl Ç
)
NNÇ É
{OO 	
returnPP 
builderPP 
.PP 
ForDisplayModePP )
(PP) *"
fieldDisplayDriverTypePP* @
,PP@ A
dPPB C
=>PPD F
truePPG K
)PPK L
;PPL M
}QQ 	
publicXX 
staticXX %
ContentFieldOptionBuilderXX /
ForDisplayModeXX0 >
<XX> ?&
TContentFieldDisplayDriverXX? Y
>XXY Z
(XXZ [
thisXX[ _%
ContentFieldOptionBuilderXX` y
builder	XXz Å
,
XXÅ Ç
Func
XXÉ á
<
XXá à
string
XXà é
,
XXé è
bool
XXê î
>
XXî ï
	predicate
XXñ ü
)
XXü †
whereYY &
TContentFieldDisplayDriverYY ,
:YY- .
classYY/ 4
,YY4 5&
IContentFieldDisplayDriverYY6 P
{ZZ 	
return[[ 
builder[[ 
.[[ 
ForDisplayMode[[ )
([[) *
typeof[[* 0
([[0 1&
TContentFieldDisplayDriver[[1 K
)[[K L
,[[L M
	predicate[[N W
)[[W X
;[[X Y
}\\ 	
publiccc 
staticcc %
ContentFieldOptionBuildercc /
ForDisplayModecc0 >
(cc> ?
thiscc? C%
ContentFieldOptionBuilderccD ]
buildercc^ e
,cce f
Typeccg k#
fieldDisplayDriverType	ccl Ç
,
ccÇ É
Func
ccÑ à
<
ccà â
string
ccâ è
,
ccè ê
bool
ccë ï
>
ccï ñ
	predicate
ccó †
)
cc† °
{dd 	
builderee 
.ee 
Servicesee 
.ee 
	Configureee &
<ee& '!
ContentDisplayOptionsee' <
>ee< =
(ee= >
oee> ?
=>ee@ B
{ff 
ogg 
.gg &
ForContentFieldDisplayModegg ,
(gg, -
buildergg- 4
.gg4 5
ContentFieldTypegg5 E
,ggE F"
fieldDisplayDriverTypeggG ]
,gg] ^
	predicategg_ h
)ggh i
;ggi j
}hh 
)hh 
;hh 
builderjj 
.jj 
Servicesjj 
.jj 
TryAddScopedjj )
(jj) *"
fieldDisplayDriverTypejj* @
)jj@ A
;jjA B
returnll 
builderll 
;ll 
}mm 	
publictt 
statictt %
ContentFieldOptionBuildertt /
	ForEditortt0 9
<tt9 :&
TContentFieldDisplayDrivertt: T
>ttT U
(ttU V
thisttV Z%
ContentFieldOptionBuildertt[ t
builderttu |
)tt| }
whereuu &
TContentFieldDisplayDriveruu ,
:uu- .
classuu/ 4
,uu4 5&
IContentFieldDisplayDriveruu6 P
{vv 	
returnww 
builderww 
.ww 
	ForEditorww $
(ww$ %
typeofww% +
(ww+ ,&
TContentFieldDisplayDriverww, F
)wwF G
)wwG H
;wwH I
}xx 	
public 
static %
ContentFieldOptionBuilder /
	ForEditor0 9
(9 :
this: >%
ContentFieldOptionBuilder? X
builderY `
,` a
Typeb f"
fieldDisplayDriverTypeg }
)} ~
{
ÄÄ 	
return
ÅÅ 
builder
ÅÅ 
.
ÅÅ 
	ForEditor
ÅÅ $
(
ÅÅ$ %$
fieldDisplayDriverType
ÅÅ% ;
,
ÅÅ; <
d
ÅÅ= >
=>
ÅÅ? A
true
ÅÅB F
)
ÅÅF G
;
ÅÅG H
}
ÇÇ 	
public
ââ 
static
ââ '
ContentFieldOptionBuilder
ââ /
	ForEditor
ââ0 9
<
ââ9 :(
TContentFieldDisplayDriver
ââ: T
>
ââT U
(
ââU V
this
ââV Z'
ContentFieldOptionBuilder
ââ[ t
builder
ââu |
,
ââ| }
Funcââ~ Ç
<ââÇ É
stringââÉ â
,âââ ä
boolââã è
>ââè ê
	predicateââë ö
)ââö õ
where
ää (
TContentFieldDisplayDriver
ää ,
:
ää- .
class
ää/ 4
,
ää4 5(
IContentFieldDisplayDriver
ää6 P
{
ãã 	
return
åå 
builder
åå 
.
åå 
	ForEditor
åå $
(
åå$ %
typeof
åå% +
(
åå+ ,(
TContentFieldDisplayDriver
åå, F
)
ååF G
,
ååG H
	predicate
ååI R
)
ååR S
;
ååS T
}
çç 	
public
îî 
static
îî '
ContentFieldOptionBuilder
îî /
	ForEditor
îî0 9
(
îî9 :
this
îî: >'
ContentFieldOptionBuilder
îî? X
builder
îîY `
,
îî` a
Type
îîb f$
fieldDisplayDriverType
îîg }
,
îî} ~
Funcîî É
<îîÉ Ñ
stringîîÑ ä
,îîä ã
boolîîå ê
>îîê ë
	predicateîîí õ
)îîõ ú
{
ïï 	
builder
ññ 
.
ññ 
Services
ññ 
.
ññ 
	Configure
ññ &
<
ññ& '#
ContentDisplayOptions
ññ' <
>
ññ< =
(
ññ= >
o
ññ> ?
=>
ññ@ B
{
óó 
o
òò 
.
òò #
ForContentFieldEditor
òò '
(
òò' (
builder
òò( /
.
òò/ 0
ContentFieldType
òò0 @
,
òò@ A$
fieldDisplayDriverType
òòB X
,
òòX Y
	predicate
òòZ c
)
òòc d
;
òòd e
}
ôô 
)
ôô 
;
ôô 
builder
õõ 
.
õõ 
Services
õõ 
.
õõ 
TryAddScoped
õõ )
(
õõ) *$
fieldDisplayDriverType
õõ* @
)
õõ@ A
;
õõA B
return
ùù 
builder
ùù 
;
ùù 
}
ûû 	
}
üü 
}†† ﬂˆ
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentItemDisplayCoordinator.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
{ 
public 

class )
ContentItemDisplayCoordinator .
:/ 0"
IContentDisplayHandler1 G
{ 
private 
readonly -
!IContentPartDisplayDriverResolver :-
!_contentPartDisplayDriverResolver; \
;\ ]
private 
readonly .
"IContentFieldDisplayDriverResolver ;.
"_contentFieldDisplayDriverResolver< ^
;^ _
private 
readonly 
IEnumerable $
<$ %!
IContentDisplayDriver% :
>: ;
_displayDrivers< K
;K L
private 
readonly 
IEnumerable $
<$ %&
IContentFieldDisplayDriver% ?
>? @ 
_fieldDisplayDriversA U
;U V
private 
readonly 
IEnumerable $
<$ %%
IContentPartDisplayDriver% >
>> ?
_partDisplayDrivers@ S
;S T
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly !
ITypeActivatorFactory .
<. /
ContentPart/ :
>: ;
_contentPartFactory< O
;O P
private 
readonly 
ILogger  
_logger! (
;( )
public   )
ContentItemDisplayCoordinator   ,
(  , --
!IContentPartDisplayDriverResolver!! -,
 contentPartDisplayDriverResolver!!. N
,!!N O.
"IContentFieldDisplayDriverResolver"" .-
!contentFieldDisplayDriverResolver""/ P
,""P Q%
IContentDefinitionManager## %$
contentDefinitionManager##& >
,##> ?
IEnumerable$$ 
<$$ !
IContentDisplayDriver$$ -
>$$- .
displayDrivers$$/ =
,$$= >
IEnumerable%% 
<%% &
IContentFieldDisplayDriver%% 2
>%%2 3
fieldDisplayDrivers%%4 G
,%%G H
IEnumerable&& 
<&& %
IContentPartDisplayDriver&& 1
>&&1 2
partDisplayDrivers&&3 E
,&&E F!
ITypeActivatorFactory'' !
<''! "
ContentPart''" -
>''- .
contentPartFactory''/ A
,''A B
ILogger(( 
<(( )
ContentItemDisplayCoordinator(( 1
>((1 2
logger((3 9
)((9 :
{)) 	-
!_contentPartDisplayDriverResolver** -
=**. /,
 contentPartDisplayDriverResolver**0 P
;**P Q.
"_contentFieldDisplayDriverResolver++ .
=++/ 0-
!contentFieldDisplayDriverResolver++1 R
;++R S
_contentPartFactory,, 
=,,  !
contentPartFactory,," 4
;,,4 5%
_contentDefinitionManager-- %
=--& '$
contentDefinitionManager--( @
;--@ A
_displayDrivers.. 
=.. 
displayDrivers.. ,
;.., - 
_fieldDisplayDrivers//  
=//! "
fieldDisplayDrivers//# 6
;//6 7
_partDisplayDrivers00 
=00  !
partDisplayDrivers00" 4
;004 5
foreach22 
(22 
var22 
element22  
in22! #
partDisplayDrivers22$ 6
.226 7
Select227 =
(22= >
x22> ?
=>22@ B
x22C D
.22D E
GetType22E L
(22L M
)22M N
)22N O
)22O P
{33 
logger44 
.44 

LogWarning44 !
(44! "
$str	44" °
,
44° ¢
element
44£ ™
)
44™ ´
;
44´ ¨
}55 
foreach77 
(77 
var77 
element77  
in77! #
fieldDisplayDrivers77$ 7
.777 8
Select778 >
(77> ?
x77? @
=>77A C
x77D E
.77E F
GetType77F M
(77M N
)77N O
)77O P
)77P Q
{88 
logger99 
.99 

LogWarning99 !
(99! "
$str	99" £
,
99£ §
element
99• ¨
)
99¨ ≠
;
99≠ Æ
}:: 
_logger<< 
=<< 
logger<< 
;<< 
}== 	
public?? 
async?? 
Task?? 
BuildDisplayAsync?? +
(??+ ,
ContentItem??, 7
contentItem??8 C
,??C D
BuildDisplayContext??E X
context??Y `
)??` a
{@@ 	
varAA !
contentTypeDefinitionAA %
=AA& '%
_contentDefinitionManagerAA( A
.AAA B
GetTypeDefinitionAAB S
(AAS T
contentItemAAT _
.AA_ `
ContentTypeAA` k
)AAk l
;AAl m
ifCC 
(CC !
contentTypeDefinitionCC %
==CC& (
nullCC) -
)CC- .
{DD 
returnEE 
;EE 
}FF 
foreachHH 
(HH 
varHH 
displayDriverHH &
inHH' )
_displayDriversHH* 9
)HH9 :
{II 
tryJJ 
{KK 
varLL 
resultLL 
=LL  
awaitLL! &
displayDriverLL' 4
.LL4 5
BuildDisplayAsyncLL5 F
(LLF G
contentItemLLG R
,LLR S
contextLLT [
)LL[ \
;LL\ ]
ifMM 
(MM 
resultMM 
!=MM !
nullMM" &
)MM& '
{NN 
awaitOO 
resultOO $
.OO$ %

ApplyAsyncOO% /
(OO/ 0
contextOO0 7
)OO7 8
;OO8 9
}PP 
}QQ 
catchRR 
(RR 
	ExceptionRR  
exRR! #
)RR# $
{SS 
InvokeExtensionsTT $
.TT$ %
HandleExceptionTT% 4
(TT4 5
exTT5 7
,TT7 8
_loggerTT9 @
,TT@ A
displayDriverTTB O
.TTO P
GetTypeTTP W
(TTW X
)TTX Y
.TTY Z
NameTTZ ^
,TT^ _
nameofTT` f
(TTf g
BuildDisplayAsyncTTg x
)TTx y
)TTy z
;TTz {
}UU 
}VV 
foreachXX 
(XX 
varXX %
contentTypePartDefinitionXX 2
inXX3 5!
contentTypeDefinitionXX6 K
.XXK L
PartsXXL Q
)XXQ R
{YY 
varZZ 
partNameZZ 
=ZZ %
contentTypePartDefinitionZZ 8
.ZZ8 9
NameZZ9 =
;ZZ= >
var[[ 
partTypeName[[  
=[[! "%
contentTypePartDefinition[[# <
.[[< =
PartDefinition[[= K
.[[K L
Name[[L P
;[[P Q
var\\ 
contentType\\ 
=\\  !%
contentTypePartDefinition\\" ;
.\\; <!
ContentTypeDefinition\\< Q
.\\Q R
Name\\R V
;\\V W
var]] 
partActivator]] !
=]]" #
_contentPartFactory]]$ 7
.]]7 8
GetTypeActivator]]8 H
(]]H I
partTypeName]]I U
)]]U V
;]]V W
var^^ 
part^^ 
=^^ 
contentItem^^ &
.^^& '
Get^^' *
(^^* +
partActivator^^+ 8
.^^8 9
Type^^9 =
,^^= >
partName^^? G
)^^G H
as^^I K
ContentPart^^L W
;^^W X
if`` 
(`` 
part`` 
!=`` 
null``  
)``  !
{aa 
varbb 
partDisplayDriversbb *
=bb+ ,-
!_contentPartDisplayDriverResolverbb- N
.bbN O!
GetDisplayModeDriversbbO d
(bbd e
partTypeNamebbe q
,bbq r&
contentTypePartDefinition	bbs å
.
bbå ç
DisplayMode
bbç ò
(
bbò ô
)
bbô ö
)
bbö õ
;
bbõ ú
foreachcc 
(cc 
varcc  
partDisplayDrivercc! 2
incc3 5
partDisplayDriverscc6 H
)ccH I
{dd 
tryee 
{ff 
vargg 
resultgg  &
=gg' (
awaitgg) .
partDisplayDrivergg/ @
.gg@ A
BuildDisplayAsyncggA R
(ggR S
partggS W
,ggW X%
contentTypePartDefinitionggY r
,ggr s
contextggt {
)gg{ |
;gg| }
ifhh 
(hh  
resulthh  &
!=hh' )
nullhh* .
)hh. /
{ii 
awaitjj  %
resultjj& ,
.jj, -

ApplyAsyncjj- 7
(jj7 8
contextjj8 ?
)jj? @
;jj@ A
}kk 
}ll 
catchmm 
(mm 
	Exceptionmm (
exmm) +
)mm+ ,
{nn 
InvokeExtensionsoo ,
.oo, -
HandleExceptionoo- <
(oo< =
exoo= ?
,oo? @
_loggerooA H
,ooH I
partDisplayDriversooJ \
.oo\ ]
GetTypeoo] d
(ood e
)ooe f
.oof g
Nameoog k
,ook l
nameofoom s
(oos t
BuildDisplayAsync	oot Ö
)
ooÖ Ü
)
ooÜ á
;
ooá à
}pp 
}qq 
foreachtt 
(tt 
vartt  
displayDrivertt! .
intt/ 1
_partDisplayDriverstt2 E
)ttE F
{uu 
tryvv 
{ww 
varxx 
resultxx  &
=xx' (
awaitxx) .
displayDriverxx/ <
.xx< =
BuildDisplayAsyncxx= N
(xxN O
partxxO S
,xxS T%
contentTypePartDefinitionxxU n
,xxn o
contextxxp w
)xxw x
;xxx y
ifyy 
(yy  
resultyy  &
!=yy' )
nullyy* .
)yy. /
{zz 
await{{  %
result{{& ,
.{{, -

ApplyAsync{{- 7
({{7 8
context{{8 ?
){{? @
;{{@ A
}|| 
}}} 
catch~~ 
(~~ 
	Exception~~ (
ex~~) +
)~~+ ,
{ 
InvokeExtensions
ÄÄ ,
.
ÄÄ, -
HandleException
ÄÄ- <
(
ÄÄ< =
ex
ÄÄ= ?
,
ÄÄ? @
_logger
ÄÄA H
,
ÄÄH I
displayDriver
ÄÄJ W
.
ÄÄW X
GetType
ÄÄX _
(
ÄÄ_ `
)
ÄÄ` a
.
ÄÄa b
Name
ÄÄb f
,
ÄÄf g
nameof
ÄÄh n
(
ÄÄn o 
BuildDisplayAsyncÄÄo Ä
)ÄÄÄ Å
)ÄÄÅ Ç
;ÄÄÇ É
}
ÅÅ 
}
ÇÇ 
var
ÉÉ 
tempContext
ÉÉ #
=
ÉÉ$ %
context
ÉÉ& -
;
ÉÉ- .
if
àà 
(
àà 
part
àà 
.
àà 
GetType
àà $
(
àà$ %
)
àà% &
==
àà' )
typeof
àà* 0
(
àà0 1
ContentPart
àà1 <
)
àà< =
&&
àà> @
partTypeName
ààA M
!=
ààN P'
contentTypePartDefinition
ààQ j
.
ààj k$
ContentTypeDefinitionààk Ä
.ààÄ Å
NameààÅ Ö
)ààÖ Ü
{
ââ 
var
ää 
	shapeType
ää %
=
ää& '
context
ää( /
.
ää/ 0
DisplayType
ää0 ;
!=
ää< >
$str
ää? G
?
ääH I
$str
ääJ X
+
ääY Z
context
ää[ b
.
ääb c
DisplayType
ääc n
:
ääo p
$str
ääq ~
;
ää~ 
var
åå 
shapeResult
åå '
=
åå( )
new
åå* -
ShapeResult
åå. 9
(
åå9 :
	shapeType
åå: C
,
ååC D
ctx
ååE H
=>
ååI K
ctx
ååL O
.
ååO P
ShapeFactory
ååP \
.
åå\ ]
CreateAsync
åå] h
(
ååh i
	shapeType
ååi r
,
åår s
(
ååt u
)
ååu v
=>
ååw y
new
ååz }
	ValueTaskåå~ á
<ååá à
IShapeååà é
>ååé è
(ååè ê
newååê ì
ZoneHoldingååî ü
(ååü †
(åå† °
)åå° ¢
=>åå£ •
ctxåå¶ ©
.åå© ™
ShapeFactoryåå™ ∂
.åå∂ ∑
CreateAsyncåå∑ ¬
(åå¬ √
$stråå√ …
)åå…  
)åå  À
)ååÀ Ã
)ååÃ Õ
)ååÕ Œ
;ååŒ œ
shapeResult
çç #
.
çç# $
Differentiator
çç$ 2
(
çç2 3
partName
çç3 ;
)
çç; <
;
çç< =
shapeResult
éé #
.
éé# $
Location
éé$ ,
(
éé, -
$str
éé- 6
)
éé6 7
;
éé7 8
await
êê 
shapeResult
êê )
.
êê) *

ApplyAsync
êê* 4
(
êê4 5
context
êê5 <
)
êê< =
;
êê= >
var
íí 
contentPartShape
íí ,
=
íí- .
shapeResult
íí/ :
.
íí: ;
Shape
íí; @
;
íí@ A
dynamic
ïï %
dynamicContentPartShape
ïï  7
=
ïï8 9
contentPartShape
ïï: J
;
ïïJ K%
dynamicContentPartShape
ññ /
[
ññ/ 0
partTypeName
ññ0 <
]
ññ< =
=
ññ> ?
part
ññ@ D
.
ññD E
Content
ññE L
;
ññL M%
dynamicContentPartShape
óó /
[
óó/ 0
$str
óó0 =
]
óó= >
=
óó? @
part
óóA E
.
óóE F
ContentItem
óóF Q
;
óóQ R
contentPartShape
ôô (
.
ôô( )
Metadata
ôô) 1
.
ôô1 2

Alternates
ôô2 <
.
ôô< =
Add
ôô= @
(
ôô@ A
partTypeName
ôôA M
)
ôôM N
;
ôôN O
contentPartShape
öö (
.
öö( )
Metadata
öö) 1
.
öö1 2

Alternates
öö2 <
.
öö< =
Add
öö= @
(
öö@ A
$"
ööA C
{
ööC D
contentType
ööD O
}
ööO P
__
ööP R
{
ööR S
partTypeName
ööS _
}
öö_ `
"
öö` a
)
ööa b
;
ööb c
if
úú 
(
úú 
context
úú #
.
úú# $
DisplayType
úú$ /
!=
úú0 2
$str
úú3 ;
)
úú; <
{
ùù 
contentPartShape
ûû ,
.
ûû, -
Metadata
ûû- 5
.
ûû5 6

Alternates
ûû6 @
.
ûû@ A
Add
ûûA D
(
ûûD E
$"
ûûE G
{
ûûG H
partTypeName
ûûH T
}
ûûT U
_
ûûU V
{
ûûV W
context
ûûW ^
.
ûû^ _
DisplayType
ûû_ j
}
ûûj k
"
ûûk l
)
ûûl m
;
ûûm n
contentPartShape
üü ,
.
üü, -
Metadata
üü- 5
.
üü5 6

Alternates
üü6 @
.
üü@ A
Add
üüA D
(
üüD E
$"
üüE G
{
üüG H
contentType
üüH S
}
üüS T
_
üüT U
{
üüU V
context
üüV ]
.
üü] ^
DisplayType
üü^ i
}
üüi j
__
üüj l
{
üül m
partTypeName
üüm y
}
üüy z
"
üüz {
)
üü{ |
;
üü| }
}
†† 
if
¢¢ 
(
¢¢ 
partName
¢¢ $
!=
¢¢% '
partTypeName
¢¢( 4
)
¢¢4 5
{
££ 
contentPartShape
§§ ,
.
§§, -
Metadata
§§- 5
.
§§5 6

Alternates
§§6 @
.
§§@ A
Add
§§A D
(
§§D E
$"
§§E G
{
§§G H
contentType
§§H S
}
§§S T
__
§§T V
{
§§V W
partName
§§W _
}
§§_ `
"
§§` a
)
§§a b
;
§§b c
if
¶¶ 
(
¶¶  
context
¶¶  '
.
¶¶' (
DisplayType
¶¶( 3
!=
¶¶4 6
$str
¶¶7 ?
)
¶¶? @
{
ßß 
contentPartShape
®®  0
.
®®0 1
Metadata
®®1 9
.
®®9 :

Alternates
®®: D
.
®®D E
Add
®®E H
(
®®H I
$"
®®I K
{
®®K L
contentType
®®L W
}
®®W X
_
®®X Y
{
®®Y Z
context
®®Z a
.
®®a b
DisplayType
®®b m
}
®®m n
__
®®n p
{
®®p q
partName
®®q y
}
®®y z
"
®®z {
)
®®{ |
;
®®| }
}
©© 
}
™™ 
context
¨¨ 
=
¨¨  !
new
¨¨" %!
BuildDisplayContext
¨¨& 9
(
¨¨9 :
shapeResult
¨¨: E
.
¨¨E F
Shape
¨¨F K
,
¨¨K L
context
¨¨M T
.
¨¨T U
DisplayType
¨¨U `
,
¨¨` a
context
¨¨b i
.
¨¨i j
GroupId
¨¨j q
,
¨¨q r
context
¨¨s z
.
¨¨z {
ShapeFactory¨¨{ á
,¨¨á à
context¨¨â ê
.¨¨ê ë
Layout¨¨ë ó
,¨¨ó ò
context¨¨ô †
.¨¨† °
Updater¨¨° ®
)¨¨® ©
;¨¨© ™
context
ÆÆ 
.
ÆÆ  
FindPlacement
ÆÆ  -
=
ÆÆ. /
tempContext
ÆÆ0 ;
.
ÆÆ; <
FindPlacement
ÆÆ< I
;
ÆÆI J
}
ØØ 
foreach
±± 
(
±± 
var
±±  (
contentPartFieldDefinition
±±! ;
in
±±< >'
contentTypePartDefinition
±±? X
.
±±X Y
PartDefinition
±±Y g
.
±±g h
Fields
±±h n
)
±±n o
{
≤≤ 
var
≥≥ !
fieldDisplayDrivers
≥≥ /
=
≥≥0 10
"_contentFieldDisplayDriverResolver
≥≥2 T
.
≥≥T U#
GetDisplayModeDrivers
≥≥U j
(
≥≥j k)
contentPartFieldDefinition≥≥k Ö
.≥≥Ö Ü
FieldDefinition≥≥Ü ï
.≥≥ï ñ
Name≥≥ñ ö
,≥≥ö õ*
contentPartFieldDefinition≥≥ú ∂
.≥≥∂ ∑
DisplayMode≥≥∑ ¬
(≥≥¬ √
)≥≥√ ƒ
)≥≥ƒ ≈
;≥≥≈ ∆
foreach
¥¥ 
(
¥¥  !
var
¥¥! $ 
fieldDisplayDriver
¥¥% 7
in
¥¥8 :!
fieldDisplayDrivers
¥¥; N
)
¥¥N O
{
µµ 
try
∂∂ 
{
∑∑ 
var
∏∏  #
result
∏∏$ *
=
∏∏+ ,
await
∏∏- 2 
fieldDisplayDriver
∏∏3 E
.
∏∏E F
BuildDisplayAsync
∏∏F W
(
∏∏W X
part
∏∏X \
,
∏∏\ ](
contentPartFieldDefinition
∏∏^ x
,
∏∏x y(
contentTypePartDefinition∏∏z ì
,∏∏ì î
context∏∏ï ú
)∏∏ú ù
;∏∏ù û
if
ππ  "
(
ππ# $
result
ππ$ *
!=
ππ+ -
null
ππ. 2
)
ππ2 3
{
∫∫  !
await
ªª$ )
result
ªª* 0
.
ªª0 1

ApplyAsync
ªª1 ;
(
ªª; <
context
ªª< C
)
ªªC D
;
ªªD E
}
ºº  !
}
ΩΩ 
catch
ææ !
(
ææ" #
	Exception
ææ# ,
ex
ææ- /
)
ææ/ 0
{
øø 
InvokeExtensions
¿¿  0
.
¿¿0 1
HandleException
¿¿1 @
(
¿¿@ A
ex
¿¿A C
,
¿¿C D
_logger
¿¿E L
,
¿¿L M 
fieldDisplayDriver
¿¿N `
.
¿¿` a
GetType
¿¿a h
(
¿¿h i
)
¿¿i j
.
¿¿j k
Name
¿¿k o
,
¿¿o p
nameof
¿¿q w
(
¿¿w x 
BuildDisplayAsync¿¿x â
)¿¿â ä
)¿¿ä ã
;¿¿ã å
}
¡¡ 
}
¬¬ 
foreach
≈≈ 
(
≈≈  !
var
≈≈! $
displayDriver
≈≈% 2
in
≈≈3 5"
_fieldDisplayDrivers
≈≈6 J
)
≈≈J K
{
∆∆ 
try
«« 
{
»» 
var
……  #
result
……$ *
=
……+ ,
await
……- 2
displayDriver
……3 @
.
……@ A
BuildDisplayAsync
……A R
(
……R S
part
……S W
,
……W X(
contentPartFieldDefinition
……Y s
,
……s t(
contentTypePartDefinition……u é
,……é è
context……ê ó
)……ó ò
;……ò ô
if
    "
(
  # $
result
  $ *
!=
  + -
null
  . 2
)
  2 3
{
ÀÀ  !
await
ÃÃ$ )
result
ÃÃ* 0
.
ÃÃ0 1

ApplyAsync
ÃÃ1 ;
(
ÃÃ; <
context
ÃÃ< C
)
ÃÃC D
;
ÃÃD E
}
ÕÕ  !
}
ŒŒ 
catch
œœ !
(
œœ" #
	Exception
œœ# ,
ex
œœ- /
)
œœ/ 0
{
–– 
InvokeExtensions
——  0
.
——0 1
HandleException
——1 @
(
——@ A
ex
——A C
,
——C D
_logger
——E L
,
——L M
displayDriver
——N [
.
——[ \
GetType
——\ c
(
——c d
)
——d e
.
——e f
Name
——f j
,
——j k
nameof
——l r
(
——r s 
BuildDisplayAsync——s Ñ
)——Ñ Ö
)——Ö Ü
;——Ü á
}
““ 
}
”” 
}
‘‘ 
context
÷÷ 
=
÷÷ 
tempContext
÷÷ )
;
÷÷) *
}
◊◊ 
}
ÿÿ 
}
ŸŸ 	
public
€€ 
async
€€ 
Task
€€ 
BuildEditorAsync
€€ *
(
€€* +
ContentItem
€€+ 6
contentItem
€€7 B
,
€€B C 
BuildEditorContext
€€D V
context
€€W ^
)
€€^ _
{
‹‹ 	
var
›› #
contentTypeDefinition
›› %
=
››& ''
_contentDefinitionManager
››( A
.
››A B
GetTypeDefinition
››B S
(
››S T
contentItem
››T _
.
››_ `
ContentType
››` k
)
››k l
;
››l m
if
ﬁﬁ 
(
ﬁﬁ #
contentTypeDefinition
ﬁﬁ %
==
ﬁﬁ& (
null
ﬁﬁ) -
)
ﬁﬁ- .
return
ﬂﬂ 
;
ﬂﬂ 
dynamic
·· 
contentShape
··  
=
··! "
context
··# *
.
··* +
Shape
··+ 0
;
··0 1
dynamic
‚‚ 

partsShape
‚‚ 
=
‚‚  
await
‚‚! &
context
‚‚' .
.
‚‚. /
ShapeFactory
‚‚/ ;
.
‚‚; <
CreateAsync
‚‚< G
(
‚‚G H
$str
‚‚H U
,
‚‚U V
	Arguments
„„ 
.
„„ 
From
„„ 
(
„„ 
new
„„ "
{
‰‰ 

Identifier
ÂÂ 
=
ÂÂ  
contentItem
ÂÂ! ,
.
ÂÂ, -
ContentItemId
ÂÂ- :
}
ÊÊ 
)
ÊÊ 
)
ÊÊ 
;
ÊÊ 
contentShape
ËË 
.
ËË 
Zones
ËË 
[
ËË 
$str
ËË &
]
ËË& '
=
ËË( )

partsShape
ËË* 4
;
ËË4 5
foreach
ÍÍ 
(
ÍÍ 
var
ÍÍ 
displayDriver
ÍÍ &
in
ÍÍ' )
_displayDrivers
ÍÍ* 9
)
ÍÍ9 :
{
ÎÎ 
try
ÏÏ 
{
ÌÌ 
var
ÓÓ 
result
ÓÓ 
=
ÓÓ  
await
ÓÓ! &
displayDriver
ÓÓ' 4
.
ÓÓ4 5
BuildEditorAsync
ÓÓ5 E
(
ÓÓE F
contentItem
ÓÓF Q
,
ÓÓQ R
context
ÓÓS Z
)
ÓÓZ [
;
ÓÓ[ \
if
ÔÔ 
(
ÔÔ 
result
ÔÔ 
!=
ÔÔ !
null
ÔÔ" &
)
ÔÔ& '
{
 
await
ÒÒ 
result
ÒÒ $
.
ÒÒ$ %

ApplyAsync
ÒÒ% /
(
ÒÒ/ 0
context
ÒÒ0 7
)
ÒÒ7 8
;
ÒÒ8 9
}
ÚÚ 
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
	Exception
ÙÙ  
ex
ÙÙ! #
)
ÙÙ# $
{
ıı 
InvokeExtensions
ˆˆ $
.
ˆˆ$ %
HandleException
ˆˆ% 4
(
ˆˆ4 5
ex
ˆˆ5 7
,
ˆˆ7 8
_logger
ˆˆ9 @
,
ˆˆ@ A
displayDriver
ˆˆB O
.
ˆˆO P
GetType
ˆˆP W
(
ˆˆW X
)
ˆˆX Y
.
ˆˆY Z
Name
ˆˆZ ^
,
ˆˆ^ _
nameof
ˆˆ` f
(
ˆˆf g
BuildEditorAsync
ˆˆg w
)
ˆˆw x
)
ˆˆx y
;
ˆˆy z
}
˜˜ 
}
¯¯ 
foreach
˙˙ 
(
˙˙ 
var
˙˙  
typePartDefinition
˙˙ +
in
˙˙, .#
contentTypeDefinition
˙˙/ D
.
˙˙D E
Parts
˙˙E J
)
˙˙J K
{
˚˚ 
var
¸¸ 
partTypeName
¸¸  
=
¸¸! " 
typePartDefinition
¸¸# 5
.
¸¸5 6
PartDefinition
¸¸6 D
.
¸¸D E
Name
¸¸E I
;
¸¸I J
var
˝˝ 
	activator
˝˝ 
=
˝˝ !
_contentPartFactory
˝˝  3
.
˝˝3 4
GetTypeActivator
˝˝4 D
(
˝˝D E
partTypeName
˝˝E Q
)
˝˝Q R
;
˝˝R S
var
˛˛ 
part
˛˛ 
=
˛˛ 
(
˛˛ 
ContentPart
˛˛ '
)
˛˛' (
contentItem
˛˛( 3
.
˛˛3 4
Get
˛˛4 7
(
˛˛7 8
	activator
˛˛8 A
.
˛˛A B
Type
˛˛B F
,
˛˛F G 
typePartDefinition
˛˛H Z
.
˛˛Z [
Name
˛˛[ _
)
˛˛_ `
??
˛˛a c
	activator
˛˛d m
.
˛˛m n
CreateInstance
˛˛n |
(
˛˛| }
)
˛˛} ~
;
˛˛~ 
part
ˇˇ 
.
ˇˇ 
ContentItem
ˇˇ  
=
ˇˇ! "
contentItem
ˇˇ# .
;
ˇˇ. /
dynamic
ÇÇ 
typePartShape
ÇÇ %
=
ÇÇ& '
await
ÇÇ( -
context
ÇÇ. 5
.
ÇÇ5 6
ShapeFactory
ÇÇ6 B
.
ÇÇB C
CreateAsync
ÇÇC N
(
ÇÇN O
$str
ÇÇO a
)
ÇÇa b
;
ÇÇb c
typePartShape
ÉÉ 
.
ÉÉ 
ContentPart
ÉÉ )
=
ÉÉ* +
part
ÉÉ, 0
;
ÉÉ0 1
typePartShape
ÑÑ 
.
ÑÑ '
ContentTypePartDefinition
ÑÑ 7
=
ÑÑ8 9 
typePartDefinition
ÑÑ: L
;
ÑÑL M
var
ÜÜ 
partPosition
ÜÜ  
=
ÜÜ! " 
typePartDefinition
ÜÜ# 5
.
ÜÜ5 6
GetSettings
ÜÜ6 A
<
ÜÜA B%
ContentTypePartSettings
ÜÜB Y
>
ÜÜY Z
(
ÜÜZ [
)
ÜÜ[ \
.
ÜÜ\ ]
Position
ÜÜ] e
??
ÜÜf h
$str
ÜÜi q
;
ÜÜq r

partsShape
àà 
.
àà 
Add
àà 
(
àà 
typePartShape
àà ,
,
àà, -
partPosition
àà. :
)
àà: ;
;
àà; <

partsShape
ââ 
[
ââ  
typePartDefinition
ââ -
.
ââ- .
Name
ââ. 2
]
ââ2 3
=
ââ4 5
typePartShape
ââ6 C
;
ââC D
context
ãã 
.
ãã 
DefaultZone
ãã #
=
ãã$ %
$"
ãã& (
Parts.
ãã( .
{
ãã. / 
typePartDefinition
ãã/ A
.
ããA B
Name
ããB F
}
ããF G
"
ããG H
;
ããH I
context
åå 
.
åå 
DefaultPosition
åå '
=
åå( )
partPosition
åå* 6
;
åå6 7
var
éé  
partDisplayDrivers
éé &
=
éé' (/
!_contentPartDisplayDriverResolver
éé) J
.
ééJ K
GetEditorDrivers
ééK [
(
éé[ \
partTypeName
éé\ h
,
ééh i 
typePartDefinition
ééj |
.
éé| }
Editoréé} É
(ééÉ Ñ
)ééÑ Ö
)ééÖ Ü
;ééÜ á
await
èè  
partDisplayDrivers
èè (
.
èè( )
InvokeAsync
èè) 4
(
èè4 5
async
èè5 :
(
èè; <
driver
èè< B
,
èèB C
part
èèD H
,
èèH I 
typePartDefinition
èèJ \
,
èè\ ]
context
èè^ e
)
èèe f
=>
èèg i
{
êê 
var
ëë 
result
ëë 
=
ëë  
await
ëë! &
driver
ëë' -
.
ëë- .
BuildEditorAsync
ëë. >
(
ëë> ?
part
ëë? C
,
ëëC D 
typePartDefinition
ëëE W
,
ëëW X
context
ëëY `
)
ëë` a
;
ëëa b
if
íí 
(
íí 
result
íí 
!=
íí !
null
íí" &
)
íí& '
{
ìì 
await
îî 
result
îî $
.
îî$ %

ApplyAsync
îî% /
(
îî/ 0
context
îî0 7
)
îî7 8
;
îî8 9
}
ïï 
}
ññ 
,
ññ 
part
ññ 
,
ññ  
typePartDefinition
ññ +
,
ññ+ ,
context
ññ- 4
,
ññ4 5
_logger
ññ6 =
)
ññ= >
;
ññ> ?
await
ôô !
_partDisplayDrivers
ôô )
.
ôô) *
InvokeAsync
ôô* 5
(
ôô5 6
async
ôô6 ;
(
ôô< =
driver
ôô= C
,
ôôC D
part
ôôE I
,
ôôI J 
typePartDefinition
ôôK ]
,
ôô] ^
context
ôô_ f
)
ôôf g
=>
ôôh j
{
öö 
var
õõ 
result
õõ 
=
õõ  
await
õõ! &
driver
õõ' -
.
õõ- .
BuildEditorAsync
õõ. >
(
õõ> ?
part
õõ? C
,
õõC D 
typePartDefinition
õõE W
,
õõW X
context
õõY `
)
õõ` a
;
õõa b
if
úú 
(
úú 
result
úú 
!=
úú !
null
úú" &
)
úú& '
{
ùù 
await
ûû 
result
ûû $
.
ûû$ %

ApplyAsync
ûû% /
(
ûû/ 0
context
ûû0 7
)
ûû7 8
;
ûû8 9
}
üü 
}
†† 
,
†† 
part
†† 
,
††  
typePartDefinition
†† +
,
††+ ,
context
††- 4
,
††4 5
_logger
††6 =
)
††= >
;
††> ?
foreach
¢¢ 
(
¢¢ 
var
¢¢ !
partFieldDefinition
¢¢ 0
in
¢¢1 3 
typePartDefinition
¢¢4 F
.
¢¢F G
PartDefinition
¢¢G U
.
¢¢U V
Fields
¢¢V \
)
¢¢\ ]
{
££ 
var
§§ 
	fieldName
§§ !
=
§§" #!
partFieldDefinition
§§$ 7
.
§§7 8
Name
§§8 <
;
§§< =
var
•• 
fieldPosition
•• %
=
••& '!
partFieldDefinition
••( ;
.
••; <
GetSettings
••< G
<
••G H&
ContentPartFieldSettings
••H `
>
••` a
(
••a b
)
••b c
.
••c d
Position
••d l
??
••m o
$str
••p x
;
••x y
context
ßß 
.
ßß 
DefaultZone
ßß '
=
ßß( )
$"
ßß* ,
Parts.
ßß, 2
{
ßß2 3 
typePartDefinition
ßß3 E
.
ßßE F
Name
ßßF J
}
ßßJ K
:
ßßK L
{
ßßL M
fieldPosition
ßßM Z
}
ßßZ [
"
ßß[ \
;
ßß\ ]
var
®® !
fieldDisplayDrivers
®® +
=
®®, -0
"_contentFieldDisplayDriverResolver
®®. P
.
®®P Q
GetEditorDrivers
®®Q a
(
®®a b!
partFieldDefinition
®®b u
.
®®u v
FieldDefinition®®v Ö
.®®Ö Ü
Name®®Ü ä
,®®ä ã#
partFieldDefinition®®å ü
.®®ü †
Editor®®† ¶
(®®¶ ß
)®®ß ®
)®®® ©
;®®© ™
await
©© !
fieldDisplayDrivers
©© -
.
©©- .
InvokeAsync
©©. 9
(
©©9 :
async
©©: ?
(
©©@ A
driver
©©A G
,
©©G H
part
©©I M
,
©©M N!
partFieldDefinition
©©O b
,
©©b c 
typePartDefinition
©©d v
,
©©v w
context
©©x 
)©© Ä
=>©©Å É
{
™™ 
var
´´ 
result
´´ "
=
´´# $
await
´´% *
driver
´´+ 1
.
´´1 2
BuildEditorAsync
´´2 B
(
´´B C
part
´´C G
,
´´G H!
partFieldDefinition
´´I \
,
´´\ ] 
typePartDefinition
´´^ p
,
´´p q
context
´´r y
)
´´y z
;
´´z {
if
¨¨ 
(
¨¨ 
result
¨¨ "
!=
¨¨# %
null
¨¨& *
)
¨¨* +
{
≠≠ 
await
ÆÆ !
result
ÆÆ" (
.
ÆÆ( )

ApplyAsync
ÆÆ) 3
(
ÆÆ3 4
context
ÆÆ4 ;
)
ÆÆ; <
;
ÆÆ< =
}
ØØ 
}
∞∞ 
,
∞∞ 
part
∞∞ 
,
∞∞ !
partFieldDefinition
∞∞ 0
,
∞∞0 1 
typePartDefinition
∞∞2 D
,
∞∞D E
context
∞∞F M
,
∞∞M N
_logger
∞∞O V
)
∞∞V W
;
∞∞W X
await
≥≥ "
_fieldDisplayDrivers
≥≥ .
.
≥≥. /
InvokeAsync
≥≥/ :
(
≥≥: ;
async
≥≥; @
(
≥≥A B
driver
≥≥B H
,
≥≥H I
part
≥≥J N
,
≥≥N O!
partFieldDefinition
≥≥P c
,
≥≥c d 
typePartDefinition
≥≥e w
,
≥≥w x
context≥≥y Ä
)≥≥Ä Å
=>≥≥Ç Ñ
{
¥¥ 
var
µµ 
result
µµ "
=
µµ# $
await
µµ% *
driver
µµ+ 1
.
µµ1 2
BuildEditorAsync
µµ2 B
(
µµB C
part
µµC G
,
µµG H!
partFieldDefinition
µµI \
,
µµ\ ] 
typePartDefinition
µµ^ p
,
µµp q
context
µµr y
)
µµy z
;
µµz {
if
∂∂ 
(
∂∂ 
result
∂∂ "
!=
∂∂# %
null
∂∂& *
)
∂∂* +
{
∑∑ 
await
∏∏ !
result
∏∏" (
.
∏∏( )

ApplyAsync
∏∏) 3
(
∏∏3 4
context
∏∏4 ;
)
∏∏; <
;
∏∏< =
}
ππ 
}
∫∫ 
,
∫∫ 
part
∫∫ 
,
∫∫ !
partFieldDefinition
∫∫ 0
,
∫∫0 1 
typePartDefinition
∫∫2 D
,
∫∫D E
context
∫∫F M
,
∫∫M N
_logger
∫∫O V
)
∫∫V W
;
∫∫W X
}
ªª 
}
ºº 
}
ΩΩ 	
public
øø 
async
øø 
Task
øø 
UpdateEditorAsync
øø +
(
øø+ ,
ContentItem
øø, 7
contentItem
øø8 C
,
øøC D!
UpdateEditorContext
øøE X
context
øøY `
)
øø` a
{
¿¿ 	
var
¡¡ #
contentTypeDefinition
¡¡ %
=
¡¡& ''
_contentDefinitionManager
¡¡( A
.
¡¡A B 
LoadTypeDefinition
¡¡B T
(
¡¡T U
contentItem
¡¡U `
.
¡¡` a
ContentType
¡¡a l
)
¡¡l m
;
¡¡m n
if
¬¬ 
(
¬¬ #
contentTypeDefinition
¬¬ %
==
¬¬& (
null
¬¬) -
)
¬¬- .
return
√√ 
;
√√ 
dynamic
≈≈ 
contentShape
≈≈  
=
≈≈! "
context
≈≈# *
.
≈≈* +
Shape
≈≈+ 0
;
≈≈0 1
dynamic
∆∆ 

partsShape
∆∆ 
=
∆∆  
await
∆∆! &
context
∆∆' .
.
∆∆. /
ShapeFactory
∆∆/ ;
.
∆∆; <
CreateAsync
∆∆< G
(
∆∆G H
$str
∆∆H U
,
∆∆U V
	Arguments
«« 
.
«« 
From
«« 
(
«« 
new
«« "
{
»» 

Identifier
…… 
=
……  
contentItem
……! ,
.
……, -
ContentItemId
……- :
}
   
)
   
)
   
;
   
contentShape
ÃÃ 
.
ÃÃ 
Zones
ÃÃ 
[
ÃÃ 
$str
ÃÃ &
]
ÃÃ& '
=
ÃÃ( )

partsShape
ÃÃ* 4
;
ÃÃ4 5
foreach
ŒŒ 
(
ŒŒ 
var
ŒŒ 
displayDriver
ŒŒ &
in
ŒŒ' )
_displayDrivers
ŒŒ* 9
)
ŒŒ9 :
{
œœ 
try
–– 
{
—— 
var
““ 
result
““ 
=
““  
await
““! &
displayDriver
““' 4
.
““4 5
UpdateEditorAsync
““5 F
(
““F G
contentItem
““G R
,
““R S
context
““T [
)
““[ \
;
““\ ]
if
”” 
(
”” 
result
”” 
!=
”” !
null
””" &
)
””& '
{
‘‘ 
await
’’ 
result
’’ $
.
’’$ %

ApplyAsync
’’% /
(
’’/ 0
context
’’0 7
)
’’7 8
;
’’8 9
}
÷÷ 
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
	Exception
ÿÿ  
ex
ÿÿ! #
)
ÿÿ# $
{
ŸŸ 
InvokeExtensions
⁄⁄ $
.
⁄⁄$ %
HandleException
⁄⁄% 4
(
⁄⁄4 5
ex
⁄⁄5 7
,
⁄⁄7 8
_logger
⁄⁄9 @
,
⁄⁄@ A
displayDriver
⁄⁄B O
.
⁄⁄O P
GetType
⁄⁄P W
(
⁄⁄W X
)
⁄⁄X Y
.
⁄⁄Y Z
Name
⁄⁄Z ^
,
⁄⁄^ _
nameof
⁄⁄` f
(
⁄⁄f g
UpdateEditorAsync
⁄⁄g x
)
⁄⁄x y
)
⁄⁄y z
;
⁄⁄z {
}
€€ 
}
‹‹ 
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ  
typePartDefinition
ﬁﬁ +
in
ﬁﬁ, .#
contentTypeDefinition
ﬁﬁ/ D
.
ﬁﬁD E
Parts
ﬁﬁE J
)
ﬁﬁJ K
{
ﬂﬂ 
var
‡‡ 
partTypeName
‡‡  
=
‡‡! " 
typePartDefinition
‡‡# 5
.
‡‡5 6
PartDefinition
‡‡6 D
.
‡‡D E
Name
‡‡E I
;
‡‡I J
var
·· 
	activator
·· 
=
·· !
_contentPartFactory
··  3
.
··3 4
GetTypeActivator
··4 D
(
··D E
partTypeName
··E Q
)
··Q R
;
··R S
var
‚‚ 
part
‚‚ 
=
‚‚ 
(
‚‚ 
ContentPart
‚‚ '
)
‚‚' (
contentItem
‚‚( 3
.
‚‚3 4
Get
‚‚4 7
(
‚‚7 8
	activator
‚‚8 A
.
‚‚A B
Type
‚‚B F
,
‚‚F G 
typePartDefinition
‚‚H Z
.
‚‚Z [
Name
‚‚[ _
)
‚‚_ `
??
‚‚a c
	activator
‚‚d m
.
‚‚m n
CreateInstance
‚‚n |
(
‚‚| }
)
‚‚} ~
;
‚‚~ 
part
„„ 
.
„„ 
ContentItem
„„  
=
„„! "
contentItem
„„# .
;
„„. /
dynamic
ÊÊ 
typePartShape
ÊÊ %
=
ÊÊ& '
await
ÊÊ( -
context
ÊÊ. 5
.
ÊÊ5 6
ShapeFactory
ÊÊ6 B
.
ÊÊB C
CreateAsync
ÊÊC N
(
ÊÊN O
$str
ÊÊO a
)
ÊÊa b
;
ÊÊb c
typePartShape
ÁÁ 
.
ÁÁ 
ContentPart
ÁÁ )
=
ÁÁ* +
part
ÁÁ, 0
;
ÁÁ0 1
typePartShape
ËË 
.
ËË '
ContentTypePartDefinition
ËË 7
=
ËË8 9 
typePartDefinition
ËË: L
;
ËËL M
var
ÈÈ 
partPosition
ÈÈ  
=
ÈÈ! " 
typePartDefinition
ÈÈ# 5
.
ÈÈ5 6
GetSettings
ÈÈ6 A
<
ÈÈA B%
ContentTypePartSettings
ÈÈB Y
>
ÈÈY Z
(
ÈÈZ [
)
ÈÈ[ \
.
ÈÈ\ ]
Position
ÈÈ] e
??
ÈÈf h
$str
ÈÈi q
;
ÈÈq r

partsShape
ÎÎ 
.
ÎÎ 
Add
ÎÎ 
(
ÎÎ 
typePartShape
ÎÎ ,
,
ÎÎ, -
partPosition
ÎÎ. :
)
ÎÎ: ;
;
ÎÎ; <

partsShape
ÏÏ 
[
ÏÏ  
typePartDefinition
ÏÏ -
.
ÏÏ- .
Name
ÏÏ. 2
]
ÏÏ2 3
=
ÏÏ4 5
typePartShape
ÏÏ6 C
;
ÏÏC D
context
ÓÓ 
.
ÓÓ 
DefaultZone
ÓÓ #
=
ÓÓ$ %
$"
ÓÓ& (
Parts.
ÓÓ( .
{
ÓÓ. / 
typePartDefinition
ÓÓ/ A
.
ÓÓA B
Name
ÓÓB F
}
ÓÓF G
:
ÓÓG H
{
ÓÓH I
partPosition
ÓÓI U
}
ÓÓU V
"
ÓÓV W
;
ÓÓW X
var
ÔÔ  
partDisplayDrivers
ÔÔ &
=
ÔÔ' (/
!_contentPartDisplayDriverResolver
ÔÔ) J
.
ÔÔJ K
GetEditorDrivers
ÔÔK [
(
ÔÔ[ \
partTypeName
ÔÔ\ h
,
ÔÔh i 
typePartDefinition
ÔÔj |
.
ÔÔ| }
EditorÔÔ} É
(ÔÔÉ Ñ
)ÔÔÑ Ö
)ÔÔÖ Ü
;ÔÔÜ á
await
  
partDisplayDrivers
 (
.
( )
InvokeAsync
) 4
(
4 5
async
5 :
(
; <
driver
< B
,
B C
part
D H
,
H I 
typePartDefinition
J \
,
\ ]
context
^ e
)
e f
=>
g i
{
ÒÒ 
var
ÚÚ 
result
ÚÚ 
=
ÚÚ  
await
ÚÚ! &
driver
ÚÚ' -
.
ÚÚ- .
UpdateEditorAsync
ÚÚ. ?
(
ÚÚ? @
part
ÚÚ@ D
,
ÚÚD E 
typePartDefinition
ÚÚF X
,
ÚÚX Y
context
ÚÚZ a
)
ÚÚa b
;
ÚÚb c
if
ÛÛ 
(
ÛÛ 
result
ÛÛ 
!=
ÛÛ !
null
ÛÛ" &
)
ÛÛ& '
{
ÙÙ 
await
ıı 
result
ıı $
.
ıı$ %

ApplyAsync
ıı% /
(
ıı/ 0
context
ıı0 7
)
ıı7 8
;
ıı8 9
}
ˆˆ 
}
˜˜ 
,
˜˜ 
part
˜˜ 
,
˜˜  
typePartDefinition
˜˜ +
,
˜˜+ ,
context
˜˜- 4
,
˜˜4 5
_logger
˜˜6 =
)
˜˜= >
;
˜˜> ?
await
˙˙ !
_partDisplayDrivers
˙˙ )
.
˙˙) *
InvokeAsync
˙˙* 5
(
˙˙5 6
async
˙˙6 ;
(
˙˙< =
driver
˙˙= C
,
˙˙C D
part
˙˙E I
,
˙˙I J 
typePartDefinition
˙˙K ]
,
˙˙] ^
context
˙˙_ f
)
˙˙f g
=>
˙˙h j
{
˚˚ 
var
¸¸ 
result
¸¸ 
=
¸¸  
await
¸¸! &
driver
¸¸' -
.
¸¸- .
UpdateEditorAsync
¸¸. ?
(
¸¸? @
part
¸¸@ D
,
¸¸D E 
typePartDefinition
¸¸F X
,
¸¸X Y
context
¸¸Z a
)
¸¸a b
;
¸¸b c
if
˝˝ 
(
˝˝ 
result
˝˝ 
!=
˝˝ !
null
˝˝" &
)
˝˝& '
{
˛˛ 
await
ˇˇ 
result
ˇˇ $
.
ˇˇ$ %

ApplyAsync
ˇˇ% /
(
ˇˇ/ 0
context
ˇˇ0 7
)
ˇˇ7 8
;
ˇˇ8 9
}
ÄÄ 
}
ÅÅ 
,
ÅÅ 
part
ÅÅ 
,
ÅÅ  
typePartDefinition
ÅÅ +
,
ÅÅ+ ,
context
ÅÅ- 4
,
ÅÅ4 5
_logger
ÅÅ6 =
)
ÅÅ= >
;
ÅÅ> ?
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ !
partFieldDefinition
ÉÉ 0
in
ÉÉ1 3 
typePartDefinition
ÉÉ4 F
.
ÉÉF G
PartDefinition
ÉÉG U
.
ÉÉU V
Fields
ÉÉV \
)
ÉÉ\ ]
{
ÑÑ 
var
ÖÖ 
	fieldName
ÖÖ !
=
ÖÖ" #!
partFieldDefinition
ÖÖ$ 7
.
ÖÖ7 8
Name
ÖÖ8 <
;
ÖÖ< =
var
ÜÜ 
fieldPosition
ÜÜ %
=
ÜÜ& '!
partFieldDefinition
ÜÜ( ;
.
ÜÜ; <
GetSettings
ÜÜ< G
<
ÜÜG H&
ContentPartFieldSettings
ÜÜH `
>
ÜÜ` a
(
ÜÜa b
)
ÜÜb c
.
ÜÜc d
Position
ÜÜd l
??
ÜÜm o
$str
ÜÜp x
;
ÜÜx y
context
àà 
.
àà 
DefaultZone
àà '
=
àà( )
$"
àà* ,
Parts.
àà, 2
{
àà2 3 
typePartDefinition
àà3 E
.
ààE F
Name
ààF J
}
ààJ K
:
ààK L
{
ààL M
fieldPosition
ààM Z
}
ààZ [
"
àà[ \
;
àà\ ]
var
ââ !
fieldDisplayDrivers
ââ +
=
ââ, -0
"_contentFieldDisplayDriverResolver
ââ. P
.
ââP Q
GetEditorDrivers
ââQ a
(
ââa b!
partFieldDefinition
ââb u
.
ââu v
FieldDefinitionââv Ö
.ââÖ Ü
NameââÜ ä
,ââä ã#
partFieldDefinitionââå ü
.ââü †
Editorââ† ¶
(ââ¶ ß
)ââß ®
)ââ® ©
;ââ© ™
await
ää !
fieldDisplayDrivers
ää -
.
ää- .
InvokeAsync
ää. 9
(
ää9 :
async
ää: ?
(
ää@ A
driver
ääA G
,
ääG H
part
ääI M
,
ääM N!
partFieldDefinition
ääO b
,
ääb c 
typePartDefinition
ääd v
,
ääv w
context
ääx 
)ää Ä
=>ääÅ É
{
ãã 
var
åå 
result
åå "
=
åå# $
await
åå% *
driver
åå+ 1
.
åå1 2
UpdateEditorAsync
åå2 C
(
ååC D
part
ååD H
,
ååH I!
partFieldDefinition
ååJ ]
,
åå] ^ 
typePartDefinition
åå_ q
,
ååq r
context
åås z
)
ååz {
;
åå{ |
if
çç 
(
çç 
result
çç "
!=
çç# %
null
çç& *
)
çç* +
{
éé 
await
èè !
result
èè" (
.
èè( )

ApplyAsync
èè) 3
(
èè3 4
context
èè4 ;
)
èè; <
;
èè< =
}
êê 
}
ëë 
,
ëë 
part
ëë 
,
ëë !
partFieldDefinition
ëë 0
,
ëë0 1 
typePartDefinition
ëë2 D
,
ëëD E
context
ëëF M
,
ëëM N
_logger
ëëO V
)
ëëV W
;
ëëW X
await
îî "
_fieldDisplayDrivers
îî .
.
îî. /
InvokeAsync
îî/ :
(
îî: ;
async
îî; @
(
îîA B
driver
îîB H
,
îîH I
part
îîJ N
,
îîN O!
partFieldDefinition
îîP c
,
îîc d 
typePartDefinition
îîe w
,
îîw x
contextîîy Ä
)îîÄ Å
=>îîÇ Ñ
{
ïï 
var
ññ 
result
ññ "
=
ññ# $
await
ññ% *
driver
ññ+ 1
.
ññ1 2
UpdateEditorAsync
ññ2 C
(
ññC D
part
ññD H
,
ññH I!
partFieldDefinition
ññJ ]
,
ññ] ^ 
typePartDefinition
ññ_ q
,
ññq r
context
ññs z
)
ññz {
;
ññ{ |
if
óó 
(
óó 
result
óó "
!=
óó# %
null
óó& *
)
óó* +
{
òò 
await
ôô !
result
ôô" (
.
ôô( )

ApplyAsync
ôô) 3
(
ôô3 4
context
ôô4 ;
)
ôô; <
;
ôô< =
}
öö 
}
õõ 
,
õõ 
part
õõ 
,
õõ !
partFieldDefinition
õõ 0
,
õõ0 1 
typePartDefinition
õõ2 D
,
õõD E
context
õõF M
,
õõM N
_logger
õõO V
)
õõV W
;
õõW X
}
úú 
}
ùù 
}
ûû 	
}
üü 
}†† Ä
ÆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartDisplayDriverOption.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

class *
ContentPartDisplayDriverOption /
{ 
public *
ContentPartDisplayDriverOption -
(- .
Type. 2
displayDriverType3 D
)D E
{ 	
DisplayDriverType		 
=		 
displayDriverType		  1
;		1 2
}

 	
public 
Type 
DisplayDriverType %
{& '
get( +
;+ ,
}- .
public 
Func 
< 
string 
, 
bool  
>  !
DisplayMode" -
{. /
get0 3
;3 4
private5 <
set= @
;@ A
}B C
public 
Func 
< 
string 
, 
bool  
>  !
Editor" (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
internal 
void 
SetDisplayMode $
($ %
Func% )
<) *
string* 0
,0 1
bool2 6
>6 7
displayMode8 C
)C D
{ 	
DisplayMode 
= 
displayMode %
;% &
} 	
internal 
void 
	SetEditor 
(  
Func  $
<$ %
string% +
,+ ,
bool- 1
>1 2
editor3 9
)9 :
{ 	
Editor 
= 
editor 
; 
} 	
} 
} ∞%
∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartDisplayDriverResolver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

class ,
 ContentPartDisplayDriverResolver 1
:2 3-
!IContentPartDisplayDriverResolver4 U
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
readonly !
ContentDisplayOptions ."
_contentDisplayOptions/ E
;E F
public ,
 ContentPartDisplayDriverResolver /
(/ 0
IServiceProvider 
serviceProvider ,
,, -
IOptions 
< !
ContentDisplayOptions *
>* +!
contentDisplayOptions, A
) 
{ 	
_serviceProvider 
= 
serviceProvider .
;. /"
_contentDisplayOptions "
=# $!
contentDisplayOptions% :
.: ;
Value; @
;@ A
} 	
public 
IList 
< %
IContentPartDisplayDriver .
>. /!
GetDisplayModeDrivers0 E
(E F
stringF L
partNameM U
,U V
stringW ]
displayMode^ i
)i j
{ 	
var 
services 
= 
new 
List #
<# $%
IContentPartDisplayDriver$ =
>= >
(> ?
)? @
;@ A
if 
( "
_contentDisplayOptions &
.& '
ContentPartOptions' 9
.9 :
TryGetValue: E
(E F
partNameF N
,N O
outP S
varT W$
contentPartDisplayOptionX p
)p q
)q r
{ 
foreach 
( 
var 
displayDriverOption 0
in1 3$
contentPartDisplayOption4 L
.L M
DisplayDriversM [
)[ \
{ 
if 
( 
displayDriverOption +
.+ ,
DisplayMode, 7
.7 8
Invoke8 >
(> ?
displayMode? J
)J K
)K L
{ 
services  
.  !
Add! $
($ %
(% &%
IContentPartDisplayDriver& ?
)? @
_serviceProvider@ P
.P Q
GetRequiredServiceQ c
(c d
displayDriverOptiond w
.w x
DisplayDriverType	x â
)
â ä
)
ä ã
;
ã å
}   
}!! 
}"" 
return$$ 
services$$ 
;$$ 
}%% 	
public'' 
IList'' 
<'' %
IContentPartDisplayDriver'' .
>''. /
GetEditorDrivers''0 @
(''@ A
string''A G
partName''H P
,''P Q
string''R X
editor''Y _
)''_ `
{(( 	
var)) 
services)) 
=)) 
new)) 
List)) #
<))# $%
IContentPartDisplayDriver))$ =
>))= >
())> ?
)))? @
;))@ A
if++ 
(++ "
_contentDisplayOptions++ &
.++& '
ContentPartOptions++' 9
.++9 :
TryGetValue++: E
(++E F
partName++F N
,++N O
out++P S
var++T W$
contentPartDisplayOption++X p
)++p q
)++q r
{,, 
foreach-- 
(-- 
var-- 
editorDriverOption-- /
in--0 2$
contentPartDisplayOption--3 K
.--K L
EditorDrivers--L Y
)--Y Z
{.. 
if// 
(// 
editorDriverOption// *
.//* +
Editor//+ 1
.//1 2
Invoke//2 8
(//8 9
editor//9 ?
)//? @
)//@ A
{00 
services11  
.11  !
Add11! $
(11$ %
(11% &%
IContentPartDisplayDriver11& ?
)11? @
_serviceProvider11@ P
.11P Q
GetRequiredService11Q c
(11c d
editorDriverOption11d v
.11v w
DisplayDriverType	11w à
)
11à â
)
11â ä
;
11ä ã
}22 
}33 
}44 
return66 
services66 
;66 
}77 	
}88 
}99 —
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartDisplayDriverTPart.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

abstract 
class $
ContentPartDisplayDriver 2
<2 3
TPart3 8
>8 9
:: ;
DisplayDriverBase< M
,M N%
IContentPartDisplayDriverO h
wherei n
TParto t
:u v
ContentPart	w Ç
,
Ç É
new
Ñ á
(
á à
)
à â
{ 
private 
const 
string 
DisplayToken )
=* +
$str, 6
;6 7
private 
const 
string 
DisplaySeparator -
=. /
$str0 <
;< =
private %
ContentTypePartDefinition )
_typePartDefinition* =
;= >
public 
override 
ShapeResult #
Factory$ +
(+ ,
string, 2
	shapeType3 <
,< =
Func> B
<B C
IBuildShapeContextC U
,U V
	ValueTaskW `
<` a
IShapea g
>g h
>h i
shapeBuilderj v
,v w
Funcx |
<| }
IShape	} É
,
É Ñ
Task
Ö â
>
â ä
initializeAsync
ã ö
)
ö õ
{ 	
var 
result 
= 
base 
. 
Factory %
(% &
	shapeType& /
,/ 0
shapeBuilder1 =
,= >
initializeAsync? N
)N O
.O P
PrefixP V
(V W
PrefixW ]
)] ^
;^ _
if   
(   
_typePartDefinition   #
!=  $ &
null  ' +
)  + ,
{!! 
var%% 

stereotype%% 
=%%  
$str%%! #
;%%# $
var'' 
settings'' 
='' 
_typePartDefinition'' 2
.''2 3!
ContentTypeDefinition''3 H
?''H I
.''I J
GetSettings''J U
<''U V
ContentTypeSettings''V i
>''i j
(''j k
)''k l
;''l m
if)) 
()) 
settings)) 
!=)) 
null))  $
)))$ %
{** 

stereotype++ 
=++  
settings++! )
.++) *

Stereotype++* 4
;++4 5
},, 
if.. 
(.. 
!.. 
String.. 
... 
IsNullOrEmpty.. )
(..) *

stereotype..* 4
)..4 5
&&..6 8
!..9 :
String..: @
...@ A
Equals..A G
(..G H
$str..H Q
,..Q R

stereotype..S ]
,..] ^
StringComparison.._ o
...o p
OrdinalIgnoreCase	..p Å
)
..Å Ç
)
..Ç É
{// 

stereotype00 
+=00 !
$str00" &
;00& '
}11 
var33 
partName33 
=33 
_typePartDefinition33 2
.332 3
Name333 7
;337 8
var44 
partType44 
=44 
_typePartDefinition44 2
.442 3
PartDefinition443 A
.44A B
Name44B F
;44F G
var55 
contentType55 
=55  !
_typePartDefinition55" 5
.555 6!
ContentTypeDefinition556 K
.55K L
Name55L P
;55P Q
var66 
editorPartType66 "
=66# $
GetEditorShapeType66% 7
(667 8
_typePartDefinition668 K
)66K L
;66L M
var77 
displayMode77 
=77  !
_typePartDefinition77" 5
.775 6
DisplayMode776 A
(77A B
)77B C
;77C D
var88 
hasDisplayMode88 "
=88# $
!88% &
String88& ,
.88, -
IsNullOrEmpty88- :
(88: ;
displayMode88; F
)88F G
;88G H
if;; 
(;; 
hasDisplayMode;; "
&&;;# %
	shapeType;;& /
==;;0 2
partType;;3 ;
+;;< =
DisplaySeparator;;> N
+;;O P
displayMode;;Q \
);;\ ]
{<< 
result>> 
.>> 
Name>> 
(>>  
partName>>  (
)>>( )
;>>) *
}?? 
ifAA 
(AA 
partTypeAA 
==AA 
	shapeTypeAA  )
||AA* ,
editorPartTypeAA- ;
==AA< >
	shapeTypeAA? H
)AAH I
{BB 
resultDD 
.DD 
DifferentiatorDD )
(DD) *
partNameDD* 2
)DD2 3
;DD3 4
}EE 
elseFF 
{GG 
resultII 
.II 
DifferentiatorII )
(II) *
$"II* ,
{II, -
partNameII- 5
}II5 6
-II6 7
{II7 8
	shapeTypeII8 A
}IIA B
"IIB C
)IIC D
;IID E
}JJ 
resultLL 
.LL 

DisplayingLL !
(LL! "
ctxLL" %
=>LL& (
{MM 
stringNN 
[NN 
]NN 
displayTypesNN )
;NN) *
ifPP 
(PP 
editorPartTypePP &
==PP' )
	shapeTypePP* 3
)PP3 4
{QQ 
displayTypesRR $
=RR% &
newRR' *
[RR* +
]RR+ ,
{RR- .
$strRR/ 2
+RR3 4
ctxRR5 8
.RR8 9
ShapeRR9 >
.RR> ?
MetadataRR? G
.RRG H
DisplayTypeRRH S
}RRT U
;RRU V
}SS 
elseTT 
{UU 
displayTypesVV $
=VV% &
newVV' *
[VV* +
]VV+ ,
{VV- .
$strVV/ 1
,VV1 2
$strVV3 6
+VV7 8
ctxVV9 <
.VV< =
ShapeVV= B
.VVB C
MetadataVVC K
.VVK L
DisplayTypeVVL W
}VVX Y
;VVY Z
ctxYY 
.YY 
ShapeYY !
.YY! "
MetadataYY" *
.YY* +

AlternatesYY+ 5
.YY5 6
AddYY6 9
(YY9 :
$"YY: <
{YY< =
	shapeTypeYY= F
}YYF G
_YYG H
{YYH I
ctxYYI L
.YYL M
ShapeYYM R
.YYR S
MetadataYYS [
.YY[ \
DisplayTypeYY\ g
}YYg h
"YYh i
)YYi j
;YYj k
}ZZ 
if\\ 
(\\ 
	shapeType\\ !
==\\" $
partType\\% -
||\\. 0
	shapeType\\1 :
==\\; =
editorPartType\\> L
)\\L M
{]] 
foreach^^ 
(^^  !
var^^! $
displayType^^% 0
in^^1 3
displayTypes^^4 @
)^^@ A
{__ 
ctxaa 
.aa  
Shapeaa  %
.aa% &
Metadataaa& .
.aa. /

Alternatesaa/ 9
.aa9 :
Addaa: =
(aa= >
$"aa> @
{aa@ A
contentTypeaaA L
}aaL M
{aaM N
displayTypeaaN Y
}aaY Z
__aaZ \
{aa\ ]
partTypeaa] e
}aae f
"aaf g
)aag h
;aah i
ifcc 
(cc  
!cc  !
Stringcc! '
.cc' (
IsNullOrEmptycc( 5
(cc5 6

stereotypecc6 @
)cc@ A
)ccA B
{dd 
ctxff  #
.ff# $
Shapeff$ )
.ff) *
Metadataff* 2
.ff2 3

Alternatesff3 =
.ff= >
Addff> A
(ffA B
$"ffB D
{ffD E

stereotypeffE O
}ffO P
{ffP Q
displayTypeffQ \
}ff\ ]
__ff] _
{ff_ `
partTypeff` h
}ffh i
"ffi j
)ffj k
;ffk l
}gg 
}hh 
ifjj 
(jj 
partTypejj $
!=jj% '
partNamejj( 0
)jj0 1
{kk 
foreachll #
(ll$ %
varll% (
displayTypell) 4
inll5 7
displayTypesll8 D
)llD E
{mm 
ctxoo  #
.oo# $
Shapeoo$ )
.oo) *
Metadataoo* 2
.oo2 3

Alternatesoo3 =
.oo= >
Addoo> A
(ooA B
$"ooB D
{ooD E
contentTypeooE P
}ooP Q
{ooQ R
displayTypeooR ]
}oo] ^
__oo^ `
{oo` a
partNameooa i
}ooi j
"ooj k
)ook l
;ool m
ifqq  "
(qq# $
!qq$ %
Stringqq% +
.qq+ ,
IsNullOrEmptyqq, 9
(qq9 :

stereotypeqq: D
)qqD E
)qqE F
{rr  !
ctxtt$ '
.tt' (
Shapett( -
.tt- .
Metadatatt. 6
.tt6 7

Alternatestt7 A
.ttA B
AddttB E
(ttE F
$"ttF H
{ttH I

stereotypettI S
}ttS T
{ttT U
displayTypettU `
}tt` a
__tta c
{ttc d
partNamettd l
}ttl m
"ttm n
)ttn o
;tto p
}uu  !
}vv 
}ww 
}xx 
elseyy 
{zz 
if{{ 
({{ 
hasDisplayMode{{ *
){{* +
{|| 
ctx~~ 
.~~  
Shape~~  %
.~~% &
Metadata~~& .
.~~. /

Alternates~~/ 9
.~~9 :
Add~~: =
(~~= >
$"~~> @
{~~@ A
partType~~A I
}~~I J
_~~J K
{~~K L
ctx~~L O
.~~O P
Shape~~P U
.~~U V
Metadata~~V ^
.~~^ _
DisplayType~~_ j
}~~j k
__~~k m
{~~m n
displayMode~~n y
}~~y z
{~~z {
DisplayToken	~~{ á
}
~~á à
"
~~à â
)
~~â ä
;
~~ä ã
} 
var
ÅÅ '
lastAlternatesOfNamedPart
ÅÅ 5
=
ÅÅ6 7
new
ÅÅ8 ;
List
ÅÅ< @
<
ÅÅ@ A
string
ÅÅA G
>
ÅÅG H
(
ÅÅH I
)
ÅÅI J
;
ÅÅJ K
for
ÉÉ 
(
ÉÉ 
var
ÉÉ  
i
ÉÉ! "
=
ÉÉ# $
$num
ÉÉ% &
;
ÉÉ& '
i
ÉÉ( )
<
ÉÉ* +
displayTypes
ÉÉ, 8
.
ÉÉ8 9
Length
ÉÉ9 ?
;
ÉÉ? @
i
ÉÉA B
++
ÉÉB D
)
ÉÉD E
{
ÑÑ 
var
ÖÖ 
displayType
ÖÖ  +
=
ÖÖ, -
displayTypes
ÖÖ. :
[
ÖÖ: ;
i
ÖÖ; <
]
ÖÖ< =
;
ÖÖ= >
if
áá 
(
áá  
hasDisplayMode
áá  .
)
áá. /
{
àà 
	shapeType
ââ  )
=
ââ* +
$"
ââ, .
{
ââ. /
partType
ââ/ 7
}
ââ7 8
__
ââ8 :
{
ââ: ;
displayMode
ââ; F
}
ââF G
"
ââG H
;
ââH I
if
ãã  "
(
ãã# $
displayType
ãã$ /
==
ãã0 2
$str
ãã3 5
)
ãã5 6
{
åå  !
displayType
çç$ /
=
çç0 1
DisplayToken
çç2 >
;
çç> ?
}
éé  !
else
èè  $
{
êê  !
	shapeType
ëë$ -
+=
ëë. 0
DisplayToken
ëë1 =
;
ëë= >
}
íí  !
}
ìì 
ctx
ññ 
.
ññ  
Shape
ññ  %
.
ññ% &
Metadata
ññ& .
.
ññ. /

Alternates
ññ/ 9
.
ññ9 :
Add
ññ: =
(
ññ= >
$"
ññ> @
{
ññ@ A
contentType
ññA L
}
ññL M
{
ññM N
displayType
ññN Y
}
ññY Z
__
ññZ \
{
ññ\ ]
partType
ññ] e
}
ññe f
__
ññf h
{
ññh i
	shapeType
ññi r
}
ññr s
"
ññs t
)
ññt u
;
ññu v
if
òò 
(
òò  
!
òò  !
String
òò! '
.
òò' (
IsNullOrEmpty
òò( 5
(
òò5 6

stereotype
òò6 @
)
òò@ A
)
òòA B
{
ôô 
ctx
õõ  #
.
õõ# $
Shape
õõ$ )
.
õõ) *
Metadata
õõ* 2
.
õõ2 3

Alternates
õõ3 =
.
õõ= >
Add
õõ> A
(
õõA B
$"
õõB D
{
õõD E

stereotype
õõE O
}
õõO P
{
õõP Q
displayType
õõQ \
}
õõ\ ]
__
õõ] _
{
õõ_ `
partType
õõ` h
}
õõh i
__
õõi k
{
õõk l
	shapeType
õõl u
}
õõu v
"
õõv w
)
õõw x
;
õõx y
}
úú 
if
ûû 
(
ûû  
partType
ûû  (
!=
ûû) +
partName
ûû, 4
)
ûû4 5
{
üü '
lastAlternatesOfNamedPart
°°  9
.
°°9 :
Add
°°: =
(
°°= >
$"
°°> @
{
°°@ A
contentType
°°A L
}
°°L M
{
°°M N
displayType
°°N Y
}
°°Y Z
__
°°Z \
{
°°\ ]
partName
°°] e
}
°°e f
__
°°f h
{
°°h i
	shapeType
°°i r
}
°°r s
"
°°s t
)
°°t u
;
°°u v
if
££  "
(
££# $
!
££$ %
String
££% +
.
££+ ,
IsNullOrEmpty
££, 9
(
££9 :

stereotype
££: D
)
££D E
)
££E F
{
§§  !'
lastAlternatesOfNamedPart
¶¶$ =
.
¶¶= >
Add
¶¶> A
(
¶¶A B
$"
¶¶B D
{
¶¶D E

stereotype
¶¶E O
}
¶¶O P
{
¶¶P Q
displayType
¶¶Q \
}
¶¶\ ]
__
¶¶] _
{
¶¶_ `
partName
¶¶` h
}
¶¶h i
__
¶¶i k
{
¶¶k l
	shapeType
¶¶l u
}
¶¶u v
"
¶¶v w
)
¶¶w x
;
¶¶x y
}
ßß  !
}
®® 
}
©© 
ctx
´´ 
.
´´ 
Shape
´´ !
.
´´! "
Metadata
´´" *
.
´´* +

Alternates
´´+ 5
.
´´5 6
AddRange
´´6 >
(
´´> ?'
lastAlternatesOfNamedPart
´´? X
)
´´X Y
;
´´Y Z
}
¨¨ 
}
≠≠ 
)
≠≠ 
;
≠≠ 
}
ÆÆ 
return
∞∞ 
result
∞∞ 
;
∞∞ 
}
±± 	
async
≥≥ 
Task
≥≥ 
<
≥≥ 
IDisplayResult
≥≥ !
>
≥≥! "'
IContentPartDisplayDriver
≥≥# <
.
≥≥< =
BuildDisplayAsync
≥≥= N
(
≥≥N O
ContentPart
≥≥O Z
contentPart
≥≥[ f
,
≥≥f g(
ContentTypePartDefinition≥≥h Å"
typePartDefinition≥≥Ç î
,≥≥î ï#
BuildDisplayContext≥≥ñ ©
context≥≥™ ±
)≥≥± ≤
{
¥¥ 	
var
µµ 
part
µµ 
=
µµ 
contentPart
µµ "
as
µµ# %
TPart
µµ& +
;
µµ+ ,
if
∑∑ 
(
∑∑ 
part
∑∑ 
==
∑∑ 
null
∑∑ 
)
∑∑ 
{
∏∏ 
return
ππ 
null
ππ 
;
ππ 
}
∫∫ 
using
ºº 
(
ºº 
BuildPrefix
ºº 
(
ºº  
typePartDefinition
ºº 1
,
ºº1 2
context
ºº3 :
.
ºº: ;
HtmlFieldPrefix
ºº; J
)
ººJ K
)
ººK L
{
ΩΩ !
_typePartDefinition
ææ #
=
ææ$ % 
typePartDefinition
ææ& 8
;
ææ8 9
var
¿¿ !
buildDisplayContext
¿¿ '
=
¿¿( )
new
¿¿* -%
BuildPartDisplayContext
¿¿. E
(
¿¿E F 
typePartDefinition
¿¿F X
,
¿¿X Y
context
¿¿Z a
)
¿¿a b
;
¿¿b c
var
¬¬ 
result
¬¬ 
=
¬¬ 
await
¬¬ "
DisplayAsync
¬¬# /
(
¬¬/ 0
part
¬¬0 4
,
¬¬4 5!
buildDisplayContext
¬¬6 I
)
¬¬I J
;
¬¬J K!
_typePartDefinition
ƒƒ #
=
ƒƒ$ %
null
ƒƒ& *
;
ƒƒ* +
return
∆∆ 
result
∆∆ 
;
∆∆ 
}
«« 
}
»» 	
async
   
Task
   
<
   
IDisplayResult
   !
>
  ! "'
IContentPartDisplayDriver
  # <
.
  < =
BuildEditorAsync
  = M
(
  M N
ContentPart
  N Y
contentPart
  Z e
,
  e f(
ContentTypePartDefinition  g Ä"
typePartDefinition  Å ì
,  ì î"
BuildEditorContext  ï ß
context  ® Ø
)  Ø ∞
{
ÀÀ 	
var
ÃÃ 
part
ÃÃ 
=
ÃÃ 
contentPart
ÃÃ "
as
ÃÃ# %
TPart
ÃÃ& +
;
ÃÃ+ ,
if
ŒŒ 
(
ŒŒ 
part
ŒŒ 
==
ŒŒ 
null
ŒŒ 
)
ŒŒ 
{
œœ 
return
–– 
null
–– 
;
–– 
}
—— 
using
”” 
(
”” 
BuildPrefix
”” 
(
””  
typePartDefinition
”” 1
,
””1 2
context
””3 :
.
””: ;
HtmlFieldPrefix
””; J
)
””J K
)
””K L
{
‘‘ !
_typePartDefinition
’’ #
=
’’$ % 
typePartDefinition
’’& 8
;
’’8 9
var
◊◊  
buildEditorContext
◊◊ &
=
◊◊' (
new
◊◊) ,$
BuildPartEditorContext
◊◊- C
(
◊◊C D 
typePartDefinition
◊◊D V
,
◊◊V W
context
◊◊X _
)
◊◊_ `
;
◊◊` a
var
ŸŸ 
result
ŸŸ 
=
ŸŸ 
await
ŸŸ "
	EditAsync
ŸŸ# ,
(
ŸŸ, -
part
ŸŸ- 1
,
ŸŸ1 2 
buildEditorContext
ŸŸ3 E
)
ŸŸE F
;
ŸŸF G!
_typePartDefinition
€€ #
=
€€$ %
null
€€& *
;
€€* +
return
›› 
result
›› 
;
›› 
}
ﬁﬁ 
}
ﬂﬂ 	
async
·· 
Task
·· 
<
·· 
IDisplayResult
·· !
>
··! "'
IContentPartDisplayDriver
··# <
.
··< =
UpdateEditorAsync
··= N
(
··N O
ContentPart
··O Z
contentPart
··[ f
,
··f g(
ContentTypePartDefinition··h Å"
typePartDefinition··Ç î
,··î ï#
UpdateEditorContext··ñ ©
context··™ ±
)··± ≤
{
‚‚ 	
var
„„ 
part
„„ 
=
„„ 
contentPart
„„ "
as
„„# %
TPart
„„& +
;
„„+ ,
if
ÂÂ 
(
ÂÂ 
part
ÂÂ 
==
ÂÂ 
null
ÂÂ 
)
ÂÂ 
{
ÊÊ 
return
ÁÁ 
null
ÁÁ 
;
ÁÁ 
}
ËË 
using
ÍÍ 
(
ÍÍ 
BuildPrefix
ÍÍ 
(
ÍÍ  
typePartDefinition
ÍÍ 1
,
ÍÍ1 2
context
ÍÍ3 :
.
ÍÍ: ;
HtmlFieldPrefix
ÍÍ; J
)
ÍÍJ K
)
ÍÍK L
{
ÎÎ 
var
ÏÏ !
updateEditorContext
ÏÏ '
=
ÏÏ( )
new
ÏÏ* -%
UpdatePartEditorContext
ÏÏ. E
(
ÏÏE F 
typePartDefinition
ÏÏF X
,
ÏÏX Y
context
ÏÏZ a
)
ÏÏa b
;
ÏÏb c!
_typePartDefinition
ÓÓ #
=
ÓÓ$ % 
typePartDefinition
ÓÓ& 8
;
ÓÓ8 9
var
 
result
 
=
 
await
 "
UpdateAsync
# .
(
. /
part
/ 3
,
3 4
context
5 <
.
< =
Updater
= D
,
D E!
updateEditorContext
F Y
)
Y Z
;
Z [
part
ÚÚ 
.
ÚÚ 
ContentItem
ÚÚ  
.
ÚÚ  !
Apply
ÚÚ! &
(
ÚÚ& ' 
typePartDefinition
ÚÚ' 9
.
ÚÚ9 :
Name
ÚÚ: >
,
ÚÚ> ?
part
ÚÚ@ D
)
ÚÚD E
;
ÚÚE F!
_typePartDefinition
ÙÙ #
=
ÙÙ$ %
null
ÙÙ& *
;
ÙÙ* +
return
ˆˆ 
result
ˆˆ 
;
ˆˆ 
}
˜˜ 
}
¯¯ 	
public
˙˙ 
virtual
˙˙ 
Task
˙˙ 
<
˙˙ 
IDisplayResult
˙˙ *
>
˙˙* +
DisplayAsync
˙˙, 8
(
˙˙8 9
TPart
˙˙9 >
part
˙˙? C
,
˙˙C D%
BuildPartDisplayContext
˙˙E \
context
˙˙] d
)
˙˙d e
{
˚˚ 	
return
¸¸ 
Task
¸¸ 
.
¸¸ 

FromResult
¸¸ "
(
¸¸" #
Display
¸¸# *
(
¸¸* +
part
¸¸+ /
,
¸¸/ 0
context
¸¸1 8
)
¸¸8 9
)
¸¸9 :
;
¸¸: ;
}
˝˝ 	
public
ˇˇ 
virtual
ˇˇ 
IDisplayResult
ˇˇ %
Display
ˇˇ& -
(
ˇˇ- .
TPart
ˇˇ. 3
part
ˇˇ4 8
,
ˇˇ8 9%
BuildPartDisplayContext
ˇˇ: Q
context
ˇˇR Y
)
ˇˇY Z
{
ÄÄ 	
return
ÅÅ 
Display
ÅÅ 
(
ÅÅ 
part
ÅÅ 
)
ÅÅ  
;
ÅÅ  !
}
ÇÇ 	
public
ÑÑ 
virtual
ÑÑ 
IDisplayResult
ÑÑ %
Display
ÑÑ& -
(
ÑÑ- .
TPart
ÑÑ. 3
part
ÑÑ4 8
)
ÑÑ8 9
{
ÖÖ 	
return
ÜÜ 
null
ÜÜ 
;
ÜÜ 
}
áá 	
public
ââ 
virtual
ââ 
Task
ââ 
<
ââ 
IDisplayResult
ââ *
>
ââ* +
	EditAsync
ââ, 5
(
ââ5 6
TPart
ââ6 ;
part
ââ< @
,
ââ@ A$
BuildPartEditorContext
ââB X
context
ââY `
)
ââ` a
{
ää 	
return
ãã 
Task
ãã 
.
ãã 

FromResult
ãã "
(
ãã" #
Edit
ãã# '
(
ãã' (
part
ãã( ,
,
ãã, -
context
ãã. 5
)
ãã5 6
)
ãã6 7
;
ãã7 8
}
åå 	
public
éé 
virtual
éé 
IDisplayResult
éé %
Edit
éé& *
(
éé* +
TPart
éé+ 0
part
éé1 5
,
éé5 6$
BuildPartEditorContext
éé7 M
context
ééN U
)
ééU V
{
èè 	
return
êê 
Edit
êê 
(
êê 
part
êê 
)
êê 
;
êê 
}
ëë 	
public
ìì 
virtual
ìì 
IDisplayResult
ìì %
Edit
ìì& *
(
ìì* +
TPart
ìì+ 0
part
ìì1 5
)
ìì5 6
{
îî 	
return
ïï 
null
ïï 
;
ïï 
}
ññ 	
public
òò 
virtual
òò 
Task
òò 
<
òò 
IDisplayResult
òò *
>
òò* +
UpdateAsync
òò, 7
(
òò7 8
TPart
òò8 =
part
òò> B
,
òòB C
IUpdateModel
òòD P
updater
òòQ X
,
òòX Y%
UpdatePartEditorContext
òòZ q
context
òòr y
)
òòy z
{
ôô 	
return
öö 
UpdateAsync
öö 
(
öö 
part
öö #
,
öö# $
context
öö% ,
)
öö, -
;
öö- .
}
õõ 	
public
ùù 
virtual
ùù 
Task
ùù 
<
ùù 
IDisplayResult
ùù *
>
ùù* +
UpdateAsync
ùù, 7
(
ùù7 8
TPart
ùù8 =
part
ùù> B
,
ùùB C%
UpdatePartEditorContext
ùùD [
context
ùù\ c
)
ùùc d
{
ûû 	
return
üü 
UpdateAsync
üü 
(
üü 
part
üü #
,
üü# $
context
üü% ,
.
üü, -
Updater
üü- 4
)
üü4 5
;
üü5 6
}
†† 	
public
¢¢ 
virtual
¢¢ 
Task
¢¢ 
<
¢¢ 
IDisplayResult
¢¢ *
>
¢¢* +
UpdateAsync
¢¢, 7
(
¢¢7 8
TPart
¢¢8 =
part
¢¢> B
,
¢¢B C
IUpdateModel
¢¢D P
updater
¢¢Q X
)
¢¢X Y
{
££ 	
return
§§ 
Task
§§ 
.
§§ 

FromResult
§§ "
<
§§" #
IDisplayResult
§§# 1
>
§§1 2
(
§§2 3
null
§§3 7
)
§§7 8
;
§§8 9
}
•• 	
	protected
ßß 
string
ßß  
GetEditorShapeType
ßß +
(
ßß+ ,
string
ßß, 2
	shapeType
ßß3 <
,
ßß< ='
ContentTypePartDefinition
ßß> W 
typePartDefinition
ßßX j
)
ßßj k
{
®® 	
var
©© 
editor
©© 
=
©©  
typePartDefinition
©© +
.
©©+ ,
Editor
©©, 2
(
©©2 3
)
©©3 4
;
©©4 5
return
™™ 
!
™™ 
String
™™ 
.
™™ 
IsNullOrEmpty
™™ (
(
™™( )
editor
™™) /
)
™™/ 0
?
´´ 
	shapeType
´´ 
+
´´ 
$str
´´ "
+
´´# $
editor
´´% +
:
¨¨ 
	shapeType
¨¨ 
;
¨¨ 
}
≠≠ 	
	protected
ØØ 
string
ØØ  
GetEditorShapeType
ØØ +
(
ØØ+ ,
string
ØØ, 2
	shapeType
ØØ3 <
,
ØØ< =$
BuildPartEditorContext
ØØ> T
context
ØØU \
)
ØØ\ ]
{
∞∞ 	
return
±±  
GetEditorShapeType
±± %
(
±±% &
	shapeType
±±& /
,
±±/ 0
context
±±1 8
.
±±8 9 
TypePartDefinition
±±9 K
)
±±K L
;
±±L M
}
≤≤ 	
	protected
¥¥ 
string
¥¥  
GetEditorShapeType
¥¥ +
(
¥¥+ ,'
ContentTypePartDefinition
¥¥, E 
typePartDefinition
¥¥F X
)
¥¥X Y
{
µµ 	
return
∂∂  
GetEditorShapeType
∂∂ %
(
∂∂% &
typeof
∂∂& ,
(
∂∂, -
TPart
∂∂- 2
)
∂∂2 3
.
∂∂3 4
Name
∂∂4 8
+
∂∂9 :
$str
∂∂; B
,
∂∂B C 
typePartDefinition
∂∂D V
)
∂∂V W
;
∂∂W X
}
∑∑ 	
	protected
ππ 
string
ππ  
GetEditorShapeType
ππ +
(
ππ+ ,$
BuildPartEditorContext
ππ, B
context
ππC J
)
ππJ K
{
∫∫ 	
return
ªª  
GetEditorShapeType
ªª %
(
ªª% &
context
ªª& -
.
ªª- . 
TypePartDefinition
ªª. @
)
ªª@ A
;
ªªA B
}
ºº 	
	protected
ææ 
string
ææ !
GetDisplayShapeType
ææ ,
(
ææ, -
string
ææ- 3
	shapeType
ææ4 =
,
ææ= >%
BuildPartDisplayContext
ææ? V
context
ææW ^
)
ææ^ _
{
øø 	
var
¿¿ 
displayMode
¿¿ 
=
¿¿ 
context
¿¿ %
.
¿¿% & 
TypePartDefinition
¿¿& 8
.
¿¿8 9
DisplayMode
¿¿9 D
(
¿¿D E
)
¿¿E F
;
¿¿F G
return
¡¡ 
!
¡¡ 
String
¡¡ 
.
¡¡ 
IsNullOrEmpty
¡¡ (
(
¡¡( )
displayMode
¡¡) 4
)
¡¡4 5
?
¬¬ 
	shapeType
¬¬ 
+
¬¬ 
DisplaySeparator
¬¬ .
+
¬¬/ 0
displayMode
¬¬1 <
:
√√ 
	shapeType
√√ 
;
√√ 
}
ƒƒ 	
	protected
∆∆ 
string
∆∆ !
GetDisplayShapeType
∆∆ ,
(
∆∆, -%
BuildPartDisplayContext
∆∆- D
context
∆∆E L
)
∆∆L M
{
«« 	
return
»» !
GetDisplayShapeType
»» &
(
»»& '
typeof
»»' -
(
»»- .
TPart
»». 3
)
»»3 4
.
»»4 5
Name
»»5 9
,
»»9 :
context
»»; B
)
»»B C
;
»»C D
}
…… 	
private
ÀÀ 

TempPrefix
ÀÀ 
BuildPrefix
ÀÀ &
(
ÀÀ& ''
ContentTypePartDefinition
ÀÀ' @ 
typePartDefinition
ÀÀA S
,
ÀÀS T
string
ÀÀU [
htmlFieldPrefix
ÀÀ\ k
)
ÀÀk l
{
ÃÃ 	
var
ÕÕ 

tempPrefix
ÕÕ 
=
ÕÕ 
new
ÕÕ  

TempPrefix
ÕÕ! +
(
ÕÕ+ ,
this
ÕÕ, 0
,
ÕÕ0 1
Prefix
ÕÕ2 8
)
ÕÕ8 9
;
ÕÕ9 :
Prefix
œœ 
=
œœ  
typePartDefinition
œœ '
.
œœ' (
Name
œœ( ,
;
œœ, -
if
—— 
(
—— 
!
—— 
String
—— 
.
—— 
IsNullOrEmpty
—— %
(
——% &
htmlFieldPrefix
——& 5
)
——5 6
)
——6 7
{
““ 
Prefix
”” 
=
”” 
htmlFieldPrefix
”” (
+
””) *
$str
””+ .
+
””/ 0
Prefix
””1 7
;
””7 8
}
‘‘ 
return
÷÷ 

tempPrefix
÷÷ 
;
÷÷ 
}
◊◊ 	
private
‹‹ 
class
‹‹ 

TempPrefix
‹‹  
:
‹‹! "
IDisposable
‹‹# .
{
›› 	
private
ﬁﬁ 
readonly
ﬁﬁ &
ContentPartDisplayDriver
ﬁﬁ 5
<
ﬁﬁ5 6
TPart
ﬁﬁ6 ;
>
ﬁﬁ; <
_driver
ﬁﬁ= D
;
ﬁﬁD E
private
ﬂﬂ 
readonly
ﬂﬂ 
string
ﬂﬂ #
_originalPrefix
ﬂﬂ$ 3
;
ﬂﬂ3 4
public
·· 

TempPrefix
·· 
(
·· &
ContentPartDisplayDriver
·· 6
<
··6 7
TPart
··7 <
>
··< =
driver
··> D
,
··D E
string
··F L
originalPrefix
··M [
)
··[ \
{
‚‚ 
_driver
„„ 
=
„„ 
driver
„„  
;
„„  !
_originalPrefix
‰‰ 
=
‰‰  !
originalPrefix
‰‰" 0
;
‰‰0 1
}
ÂÂ 
public
ÁÁ 
void
ÁÁ 
Dispose
ÁÁ 
(
ÁÁ  
)
ÁÁ  !
{
ËË 
_driver
ÈÈ 
.
ÈÈ 
Prefix
ÈÈ 
=
ÈÈ  
_originalPrefix
ÈÈ! 0
;
ÈÈ0 1
}
ÍÍ 
}
ÎÎ 	
}
ÏÏ 
}ÌÌ Ø+
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartDisplayOption.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

class $
ContentPartDisplayOption )
:* +!
ContentPartOptionBase, A
{ 
private		 
readonly		 
List		 
<		 *
ContentPartDisplayDriverOption		 <
>		< =
_partDisplayDrivers		> Q
=		R S
new		T W
List		X \
<		\ ]*
ContentPartDisplayDriverOption		] {
>		{ |
(		| }
)		} ~
;		~ 
public $
ContentPartDisplayOption '
(' (
Type( ,
contentPartType- <
)< =
:> ?
base@ D
(D E
contentPartTypeE T
)T U
{ 	
} 	
private 
List 
< *
ContentPartDisplayDriverOption 3
>3 4
_displayDrivers5 D
;D E
public 
IReadOnlyList 
< *
ContentPartDisplayDriverOption ;
>; <
DisplayDrivers= K
=>L N
_displayDriversO ^
??=_ b
_partDisplayDriversc v
.v w
Wherew |
(| }
d} ~
=>	 Å
d
Ç É
.
É Ñ
DisplayMode
Ñ è
!=
ê í
null
ì ó
)
ó ò
.
ò ô
ToList
ô ü
(
ü †
)
† °
;
° ¢
private 
List 
< *
ContentPartDisplayDriverOption 3
>3 4
_editorDrivers5 C
;C D
public 
IReadOnlyList 
< *
ContentPartDisplayDriverOption ;
>; <
EditorDrivers= J
=>K M
_editorDriversN \
??=] `
_partDisplayDriversa t
.t u
Whereu z
(z {
d{ |
=>} 
d
Ä Å
.
Å Ç
Editor
Ç à
!=
â ã
null
å ê
)
ê ë
.
ë í
ToList
í ò
(
ò ô
)
ô ö
;
ö õ
internal 
void 
ForDisplayMode $
($ %
Type% )
displayDriverType* ;
,; <
Func= A
<A B
stringB H
,H I
boolJ N
>N O
	predicateP Y
)Y Z
{ 	
var 
option 
= 2
&GetOrAddContentPartDisplayDriverOption ?
(? @
displayDriverType@ Q
)Q R
;R S
option 
. 
SetDisplayMode !
(! "
	predicate" +
)+ ,
;, -
} 	
internal 
void 
	ForEditor 
(  
Type  $
displayDriverType% 6
,6 7
Func8 <
<< =
string= C
,C D
boolE I
>I J
	predicateK T
)T U
{ 	
var 
option 
= 2
&GetOrAddContentPartDisplayDriverOption ?
(? @
displayDriverType@ Q
)Q R
;R S
option   
.   
	SetEditor   
(   
	predicate   &
)  & '
;  ' (
}!! 	
internal## 
void## 
RemoveDisplayDriver## )
(##) *
Type##* .
displayDriverType##/ @
)##@ A
{$$ 	
var%% 
displayDriverOption%% #
=%%$ %
_partDisplayDrivers%%& 9
.%%9 :
FirstOrDefault%%: H
(%%H I
d%%I J
=>%%K M
d%%N O
.%%O P
DisplayDriverType%%P a
==%%b d
displayDriverType%%e v
)%%v w
;%%w x
if&& 
(&& 
displayDriverOption&& #
!=&&$ &
null&&' +
)&&+ ,
{'' 
_partDisplayDrivers(( #
.((# $
Remove(($ *
(((* +
displayDriverOption((+ >
)((> ?
;((? @
})) 
}** 	
private,, *
ContentPartDisplayDriverOption,, .2
&GetOrAddContentPartDisplayDriverOption,,/ U
(,,U V
Type,,V Z
displayDriverType,,[ l
),,l m
{-- 	
var.. 
option.. 
=.. 
_partDisplayDrivers.. ,
..., -
FirstOrDefault..- ;
(..; <
o..< =
=>..> @
o..A B
...B C
DisplayDriverType..C T
==..U W
displayDriverType..X i
)..i j
;..j k
if00 
(00 
option00 
==00 
null00 
)00 
{11 
option22 
=22 
new22 *
ContentPartDisplayDriverOption22 ;
(22; <
displayDriverType22< M
)22M N
;22N O
_partDisplayDrivers33 #
.33# $
Add33$ '
(33' (
option33( .
)33. /
;33/ 0
}44 
return66 
option66 
;66 
}77 	
}88 
}99 ‡P
∂D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

static 
class 2
&ContentPartServiceCollectionExtensions >
{ 
public 
static $
ContentPartOptionBuilder .
UseDisplayDriver/ ?
<? @%
TContentPartDisplayDriver@ Y
>Y Z
(Z [
this[ _$
ContentPartOptionBuilder` x
builder	y Ä
)
Ä Å
where %
TContentPartDisplayDriver +
:, -
class. 3
,3 4%
IContentPartDisplayDriver5 N
{ 	
return 
builder 
. 
UseDisplayDriver +
(+ ,
typeof, 2
(2 3%
TContentPartDisplayDriver3 L
)L M
)M N
;N O
} 	
public 
static $
ContentPartOptionBuilder .
UseDisplayDriver/ ?
(? @
this@ D$
ContentPartOptionBuilderE ]
builder^ e
,e f
Typeg k"
partDisplayDriverType	l Å
)
Å Ç
{ 	
return 
builder 
. 
ForDisplayMode )
() *!
partDisplayDriverType* ?
)? @
. 
	ForEditor 
( !
partDisplayDriverType 0
)0 1
;1 2
} 	
public"" 
static"" $
ContentPartOptionBuilder"" .
RemoveDisplayDriver""/ B
<""B C%
TContentPartDisplayDriver""C \
>""\ ]
(""] ^
this""^ b$
ContentPartOptionBuilder""c {
builder	""| É
)
""É Ñ
where## %
TContentPartDisplayDriver## +
:##, -
class##. 3
,##3 4%
IContentPartDisplayDriver##5 N
{$$ 	
return%% 
builder%% 
.%% 
RemoveDisplayDriver%% .
(%%. /
typeof%%/ 5
(%%5 6%
TContentPartDisplayDriver%%6 O
)%%O P
)%%P Q
;%%Q R
}&& 	
public++ 
static++ $
ContentPartOptionBuilder++ .
RemoveDisplayDriver++/ B
(++B C
this++C G$
ContentPartOptionBuilder++H `
builder++a h
,++h i
Type++j n"
partDisplayDriverType	++o Ñ
)
++Ñ Ö
{,, 	
builder-- 
.-- 
Services-- 
.-- 
	Configure-- &
<--& '!
ContentDisplayOptions--' <
>--< =
(--= >
o--> ?
=>--@ B
{.. 
o// 
.// *
RemoveContentPartDisplayDriver// 0
(//0 1
builder//1 8
.//8 9
ContentPartType//9 H
,//H I!
partDisplayDriverType//J _
)//_ `
;//` a
}00 
)00 
;00 
builder22 
.22 
Services22 
.22 
	RemoveAll22 &
(22& '!
partDisplayDriverType22' <
)22< =
;22= >
return44 
builder44 
;44 
}55 	
public<< 
static<< $
ContentPartOptionBuilder<< .
ForDisplayMode<</ =
<<<= >%
TContentPartDisplayDriver<<> W
><<W X
(<<X Y
this<<Y ]$
ContentPartOptionBuilder<<^ v
builder<<w ~
)<<~ 
where== %
TContentPartDisplayDriver== +
:==, -
class==. 3
,==3 4%
IContentPartDisplayDriver==5 N
{>> 	
return?? 
builder?? 
.?? 
ForDisplayMode?? )
(??) *
typeof??* 0
(??0 1%
TContentPartDisplayDriver??1 J
)??J K
)??K L
;??L M
}@@ 	
publicGG 
staticGG $
ContentPartOptionBuilderGG .
ForDisplayModeGG/ =
(GG= >
thisGG> B$
ContentPartOptionBuilderGGC [
builderGG\ c
,GGc d
TypeGGe i!
partDisplayDriverTypeGGj 
)	GG Ä
{HH 	
returnII 
builderII 
.II 
ForDisplayModeII )
(II) *!
partDisplayDriverTypeII* ?
,II? @
dIIA B
=>IIC E
trueIIF J
)IIJ K
;IIK L
}JJ 	
publicQQ 
staticQQ $
ContentPartOptionBuilderQQ .
ForDisplayModeQQ/ =
<QQ= >%
TContentPartDisplayDriverQQ> W
>QQW X
(QQX Y
thisQQY ]$
ContentPartOptionBuilderQQ^ v
builderQQw ~
,QQ~ 
Func
QQÄ Ñ
<
QQÑ Ö
string
QQÖ ã
,
QQã å
bool
QQç ë
>
QQë í
	predicate
QQì ú
)
QQú ù
whereRR %
TContentPartDisplayDriverRR +
:RR, -
classRR. 3
,RR3 4%
IContentPartDisplayDriverRR5 N
{SS 	
returnTT 
builderTT 
.TT 
ForDisplayModeTT )
(TT) *
typeofTT* 0
(TT0 1%
TContentPartDisplayDriverTT1 J
)TTJ K
,TTK L
	predicateTTM V
)TTV W
;TTW X
}UU 	
public\\ 
static\\ $
ContentPartOptionBuilder\\ .
ForDisplayMode\\/ =
(\\= >
this\\> B$
ContentPartOptionBuilder\\C [
builder\\\ c
,\\c d
Type\\e i!
partDisplayDriverType\\j 
,	\\ Ä
Func
\\Å Ö
<
\\Ö Ü
string
\\Ü å
,
\\å ç
bool
\\é í
>
\\í ì
	predicate
\\î ù
)
\\ù û
{]] 	
builder^^ 
.^^ 
Services^^ 
.^^ 
	Configure^^ &
<^^& '!
ContentDisplayOptions^^' <
>^^< =
(^^= >
o^^> ?
=>^^@ B
{__ 
o`` 
.`` %
ForContentPartDisplayMode`` +
(``+ ,
builder``, 3
.``3 4
ContentPartType``4 C
,``C D!
partDisplayDriverType``E Z
,``Z [
	predicate``\ e
)``e f
;``f g
}aa 
)aa 
;aa 
buildercc 
.cc 
Servicescc 
.cc 
TryAddScopedcc )
(cc) *!
partDisplayDriverTypecc* ?
)cc? @
;cc@ A
returnee 
builderee 
;ee 
}ff 	
publicmm 
staticmm $
ContentPartOptionBuildermm .
	ForEditormm/ 8
<mm8 9%
TContentPartDisplayDrivermm9 R
>mmR S
(mmS T
thismmT X$
ContentPartOptionBuildermmY q
buildermmr y
)mmy z
wherenn %
TContentPartDisplayDrivernn +
:nn, -
classnn. 3
,nn3 4%
IContentPartDisplayDrivernn5 N
{oo 	
returnpp 
builderpp 
.pp 
	ForEditorpp $
(pp$ %
typeofpp% +
(pp+ ,%
TContentPartDisplayDriverpp, E
)ppE F
)ppF G
;ppG H
}qq 	
publicxx 
staticxx $
ContentPartOptionBuilderxx .
	ForEditorxx/ 8
(xx8 9
thisxx9 =$
ContentPartOptionBuilderxx> V
builderxxW ^
,xx^ _
Typexx` d!
partDisplayDriverTypexxe z
)xxz {
{yy 	
returnzz 
builderzz 
.zz 
	ForEditorzz $
(zz$ %!
partDisplayDriverTypezz% :
,zz: ;
dzz< =
=>zz> @
truezzA E
)zzE F
;zzF G
}{{ 	
public
ÇÇ 
static
ÇÇ &
ContentPartOptionBuilder
ÇÇ .
	ForEditor
ÇÇ/ 8
<
ÇÇ8 9'
TContentPartDisplayDriver
ÇÇ9 R
>
ÇÇR S
(
ÇÇS T
this
ÇÇT X&
ContentPartOptionBuilder
ÇÇY q
builder
ÇÇr y
,
ÇÇy z
Func
ÇÇ{ 
<ÇÇ Ä
stringÇÇÄ Ü
,ÇÇÜ á
boolÇÇà å
>ÇÇå ç
	predicateÇÇé ó
)ÇÇó ò
where
ÉÉ '
TContentPartDisplayDriver
ÉÉ +
:
ÉÉ, -
class
ÉÉ. 3
,
ÉÉ3 4'
IContentPartDisplayDriver
ÉÉ5 N
{
ÑÑ 	
return
ÖÖ 
builder
ÖÖ 
.
ÖÖ 
	ForEditor
ÖÖ $
(
ÖÖ$ %
typeof
ÖÖ% +
(
ÖÖ+ ,'
TContentPartDisplayDriver
ÖÖ, E
)
ÖÖE F
,
ÖÖF G
	predicate
ÖÖH Q
)
ÖÖQ R
;
ÖÖR S
}
ÜÜ 	
public
çç 
static
çç &
ContentPartOptionBuilder
çç .
	ForEditor
çç/ 8
(
çç8 9
this
çç9 =&
ContentPartOptionBuilder
çç> V
builder
ççW ^
,
çç^ _
Type
çç` d#
partDisplayDriverType
ççe z
,
ççz {
Funcçç| Ä
<ççÄ Å
stringççÅ á
,ççá à
boolççâ ç
>ççç é
	predicateççè ò
)ççò ô
{
éé 	
builder
èè 
.
èè 
Services
èè 
.
èè 
	Configure
èè &
<
èè& '#
ContentDisplayOptions
èè' <
>
èè< =
(
èè= >
o
èè> ?
=>
èè@ B
{
êê 
o
ëë 
.
ëë "
ForContentPartEditor
ëë &
(
ëë& '
builder
ëë' .
.
ëë. /
ContentPartType
ëë/ >
,
ëë> ?#
partDisplayDriverType
ëë@ U
,
ëëU V
	predicate
ëëW `
)
ëë` a
;
ëëa b
}
íí 
)
íí 
;
íí 
builder
îî 
.
îî 
Services
îî 
.
îî 
TryAddScoped
îî )
(
îî) *#
partDisplayDriverType
îî* ?
)
îî? @
;
îî@ A
return
ññ 
builder
ññ 
;
ññ 
}
óó 	
}
òò 
}ôô Õ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

	interface !
IContentDisplayDriver *
:+ ,
IDisplayDriver- ;
<; <
ContentItem< G
,G H
BuildDisplayContextI \
,\ ]
BuildEditorContext^ p
,p q 
UpdateEditorContext	r Ö
>
Ö Ü
{ 
} 
} ÿ
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentDisplayHandler.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public

 

	interface

 "
IContentDisplayHandler

 +
{ 
Task 
BuildDisplayAsync 
( 
ContentItem *
contentItem+ 6
,6 7
BuildDisplayContext8 K
contextL S
)S T
;T U
Task 
BuildEditorAsync 
( 
ContentItem )
contentItem* 5
,5 6
BuildEditorContext7 I
contextJ Q
)Q R
;R S
Task 
UpdateEditorAsync 
( 
ContentItem *
contentItem+ 6
,6 7
UpdateEditorContext8 K
contextL S
)S T
;T U
} 
} ø
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

	interface &
IContentFieldDisplayDriver /
{		 
Task

 
<

 
IDisplayResult

 
>

 
BuildDisplayAsync

 .
(

. /
ContentPart

/ :
contentPart

; F
,

F G&
ContentPartFieldDefinition

H b
partFieldDefinition

c v
,

v w&
ContentTypePartDefinition	

x ë 
typePartDefinition


í §
,


§ •!
BuildDisplayContext


¶ π
context


∫ ¡
)


¡ ¬
;


¬ √
Task 
< 
IDisplayResult 
> 
BuildEditorAsync -
(- .
ContentPart. 9
contentPart: E
,E F&
ContentPartFieldDefinitionG a
partFieldDefinitionb u
,u v&
ContentTypePartDefinition	w ê 
typePartDefinition
ë £
,
£ § 
BuildEditorContext
• ∑
context
∏ ø
)
ø ¿
;
¿ ¡
Task 
< 
IDisplayResult 
> 
UpdateEditorAsync .
(. /
ContentPart/ :
contentPart; F
,F G&
ContentPartFieldDefinitionH b
partFieldDefinitionc v
,v w&
ContentTypePartDefinition	x ë 
typePartDefinition
í §
,
§ •!
UpdateEditorContext
¶ π
context
∫ ¡
)
¡ ¬
;
¬ √
} 
} â
≤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentFieldDisplayDriverResolver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

	interface .
"IContentFieldDisplayDriverResolver 7
{ 
IList 
< &
IContentFieldDisplayDriver (
>( )!
GetDisplayModeDrivers* ?
(? @
string@ F
	fieldNameG P
,P Q
stringR X
displayModeY d
)d e
;e f
IList 
< &
IContentFieldDisplayDriver (
>( )
GetEditorDrivers* :
(: ;
string; A
	fieldNameB K
,K L
stringM S
editorT Z
)Z [
;[ \
}		 
}

 £
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

	interface %
IContentPartDisplayDriver .
{		 
Task

 
<

 
IDisplayResult

 
>

 
BuildDisplayAsync

 .
(

. /
ContentPart

/ :
contentPart

; F
,

F G%
ContentTypePartDefinition

H a
typePartDefinition

b t
,

t u 
BuildDisplayContext	

v â
context


ä ë
)


ë í
;


í ì
Task 
< 
IDisplayResult 
> 
BuildEditorAsync -
(- .
ContentPart. 9
contentPart: E
,E F%
ContentTypePartDefinitionG `
typePartDefinitiona s
,s t
BuildEditorContext	u á
context
à è
)
è ê
;
ê ë
Task 
< 
IDisplayResult 
> 
UpdateEditorAsync .
(. /
ContentPart/ :
contentPart; F
,F G%
ContentTypePartDefinitionH a
typePartDefinitionb t
,t u 
UpdateEditorContext	v â
context
ä ë
)
ë í
;
í ì
} 
} É
±D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentPartDisplayDriverResolver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
ContentDisplay0 >
{ 
public 

	interface -
!IContentPartDisplayDriverResolver 6
{ 
IList 
< %
IContentPartDisplayDriver '
>' (!
GetDisplayModeDrivers) >
(> ?
string? E
partNameF N
,N O
stringP V
displayModeW b
)b c
;c d
IList 
< %
IContentPartDisplayDriver '
>' (
GetEditorDrivers) 9
(9 :
string: @
partNameA I
,I J
stringK Q
editorR X
)X Y
;Y Z
}		 
}

 ªÇ
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentItemDisplayManager.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
{ 
public 

class %
ContentItemDisplayManager *
:+ ,
BaseDisplayManager- ?
,? @&
IContentItemDisplayManagerA [
{ 
private 
readonly 
IEnumerable $
<$ %
IContentHandler% 4
>4 5
_contentHandlers6 F
;F G
private 
readonly 
IEnumerable $
<$ %"
IContentDisplayHandler% ;
>; <
	_handlers= F
;F G
private 
readonly 
IShapeTableManager +
_shapeTableManager, >
;> ?
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private   
readonly   
IShapeFactory   &
_shapeFactory  ' 4
;  4 5
private!! 
readonly!! 
ILayoutAccessor!! (
_layoutAccessor!!) 8
;!!8 9
private"" 
readonly"" 
ILogger""  
_logger""! (
;""( )
public$$ %
ContentItemDisplayManager$$ (
($$( )
IEnumerable%% 
<%% "
IContentDisplayHandler%% .
>%%. /
handlers%%0 8
,%%8 9
IEnumerable&& 
<&& 
IContentHandler&& '
>&&' (
contentHandlers&&) 8
,&&8 9
IShapeTableManager'' 
shapeTableManager'' 0
,''0 1%
IContentDefinitionManager(( %$
contentDefinitionManager((& >
,((> ?
IShapeFactory)) 
shapeFactory)) &
,))& '
IEnumerable** 
<** #
IShapePlacementProvider** /
>**/ 0
placementProviders**1 C
,**C D
ILogger++ 
<++ %
ContentItemDisplayManager++ -
>++- .
logger++/ 5
,++5 6
ILayoutAccessor,, 
layoutAccessor,, *
)-- 
:-- 
base-- 
(-- 
shapeFactory-- !
,--! "
placementProviders--# 5
)--5 6
{.. 	
	_handlers// 
=// 
handlers//  
;//  !
_contentHandlers00 
=00 
contentHandlers00 .
;00. /
_shapeTableManager11 
=11  
shapeTableManager11! 2
;112 3%
_contentDefinitionManager22 %
=22& '$
contentDefinitionManager22( @
;22@ A
_shapeFactory33 
=33 
shapeFactory33 (
;33( )
_layoutAccessor44 
=44 
layoutAccessor44 ,
;44, -
_logger55 
=55 
logger55 
;55 
}66 	
public88 
async88 
Task88 
<88 
IShape88  
>88  !
BuildDisplayAsync88" 3
(883 4
ContentItem884 ?
contentItem88@ K
,88K L
IUpdateModel88M Y
updater88Z a
,88a b
string88c i
displayType88j u
,88u v
string88w }
groupId	88~ Ö
)
88Ö Ü
{99 	
if:: 
(:: 
contentItem:: 
==:: 
null:: #
)::# $
{;; 
throw<< 
new<< !
ArgumentNullException<< /
(<</ 0
nameof<<0 6
(<<6 7
contentItem<<7 B
)<<B C
)<<C D
;<<D E
}== 
var?? !
contentTypeDefinition?? %
=??& '%
_contentDefinitionManager??( A
.??A B
GetTypeDefinition??B S
(??S T
contentItem??T _
.??_ `
ContentType??` k
)??k l
;??l m
varAA 

stereotypeAA 
=AA !
contentTypeDefinitionAA 2
.AA2 3
GetSettingsAA3 >
<AA> ?
ContentTypeSettingsAA? R
>AAR S
(AAS T
)AAT U
.AAU V

StereotypeAAV `
;AA` a
varBB 
actualDisplayTypeBB !
=BB" #
stringBB$ *
.BB* +
IsNullOrEmptyBB+ 8
(BB8 9
displayTypeBB9 D
)BBD E
?BBF G
$strBBH P
:BBQ R
displayTypeBBS ^
;BB^ _
varCC 
actualShapeTypeCC 
=CC  !

stereotypeCC" ,
??CC- /
$strCC0 9
;CC9 :
ifFF 
(FF 
actualDisplayTypeFF !
!=FF" $
$strFF% -
)FF- .
{GG 
actualShapeTypeHH 
=HH  !
actualShapeTypeHH" 1
+HH2 3
$strHH4 7
+HH8 9
actualDisplayTypeHH: K
;HHK L
}II 
dynamicKK 
	itemShapeKK 
=KK 
awaitKK  %#
CreateContentShapeAsyncKK& =
(KK= >
actualShapeTypeKK> M
)KKM N
;KKN O
	itemShapeLL 
.LL 
ContentItemLL !
=LL" #
contentItemLL$ /
;LL/ 0
	itemShapeMM 
.MM 

StereotypeMM  
=MM! "

stereotypeMM# -
;MM- .
ShapeMetadataOO 
metadataOO "
=OO# $
	itemShapeOO% .
.OO. /
MetadataOO/ 7
;OO7 8
metadataPP 
.PP 
DisplayTypePP  
=PP! "
actualDisplayTypePP# 4
;PP4 5
metadataSS 
.SS 

AlternatesSS 
.SS  
AddSS  #
(SS# $
$"SS$ &
{SS& '
actualShapeTypeSS' 6
}SS6 7
__SS7 9
{SS9 :
contentItemSS: E
.SSE F
ContentTypeSSF Q
}SSQ R
"SSR S
)SSS T
;SST U
varUU 
contextUU 
=UU 
newUU 
BuildDisplayContextUU 1
(UU1 2
	itemShapeVV 
,VV 
actualDisplayTypeWW !
,WW! "
groupIdXX 
,XX 
_shapeFactoryYY 
,YY 
awaitZZ 
_layoutAccessorZZ %
.ZZ% &
GetLayoutAsyncZZ& 4
(ZZ4 5
)ZZ5 6
,ZZ6 7
new[[ $
ModelStateWrapperUpdater[[ ,
([[, -
updater[[- 4
)[[4 5
)\\ 
;\\ 
await^^ 
BindPlacementAsync^^ $
(^^$ %
context^^% ,
)^^, -
;^^- .
await`` 
	_handlers`` 
.`` 
InvokeAsync`` '
(``' (
(``( )
handler``) 0
,``0 1
contentItem``2 =
,``= >
context``? F
)``F G
=>``H J
handler``K R
.``R S
BuildDisplayAsync``S d
(``d e
contentItem``e p
,``p q
context``r y
)``y z
,``z {
contentItem	``| á
,
``á à
context
``â ê
,
``ê ë
_logger
``í ô
)
``ô ö
;
``ö õ
returnbb 
contextbb 
.bb 
Shapebb  
;bb  !
}cc 	
publicee 
asyncee 
Taskee 
<ee 
IShapeee  
>ee  !
BuildEditorAsyncee" 2
(ee2 3
ContentItemee3 >
contentItemee? J
,eeJ K
IUpdateModeleeL X
updatereeY `
,ee` a
booleeb f
isNeweeg l
,eel m
stringeen t
groupIdeeu |
,ee| }
string	ee~ Ñ
htmlFieldPrefix
eeÖ î
)
eeî ï
{ff 	
ifgg 
(gg 
contentItemgg 
==gg 
nullgg #
)gg# $
{hh 
throwii 
newii !
ArgumentNullExceptionii /
(ii/ 0
nameofii0 6
(ii6 7
contentItemii7 B
)iiB C
)iiC D
;iiD E
}jj 
varll !
contentTypeDefinitionll %
=ll& '%
_contentDefinitionManagerll( A
.llA B
GetTypeDefinitionllB S
(llS T
contentItemllT _
.ll_ `
ContentTypell` k
)llk l
;lll m
varnn 

stereotypenn 
=nn !
contentTypeDefinitionnn 2
.nn2 3
GetSettingsnn3 >
<nn> ?
ContentTypeSettingsnn? R
>nnR S
(nnS T
)nnT U
.nnU V

StereotypennV `
;nn` a
varpp 
actualShapeTypepp 
=pp  !
(pp" #

stereotypepp# -
??pp. 0
$strpp1 :
)pp: ;
+pp< =
$strpp> E
;ppE F
dynamicrr 
	itemShaperr 
=rr 
awaitrr  %#
CreateContentShapeAsyncrr& =
(rr= >
actualShapeTyperr> M
)rrM N
;rrN O
	itemShapess 
.ss 
ContentItemss !
=ss" #
contentItemss$ /
;ss/ 0
	itemShapett 
.tt 

Stereotypett  
=tt! "

stereotypett# -
;tt- .
(ww 
(ww 
IShapeww 
)ww 
	itemShapeww 
)ww 
.ww  
Metadataww  (
.ww( )

Alternatesww) 3
.ww3 4
Addww4 7
(ww7 8
actualShapeTypeww8 G
+wwH I
$strwwJ N
+wwO P
contentItemwwQ \
.ww\ ]
ContentTypeww] h
)wwh i
;wwi j
varyy 
contextyy 
=yy 
newyy 
BuildEditorContextyy 0
(yy0 1
	itemShapezz 
,zz 
groupId{{ 
,{{ 
isNew|| 
,|| 
htmlFieldPrefix}} 
,}}  
_shapeFactory~~ 
,~~ 
await 
_layoutAccessor %
.% &
GetLayoutAsync& 4
(4 5
)5 6
,6 7
new
ÄÄ &
ModelStateWrapperUpdater
ÄÄ ,
(
ÄÄ, -
updater
ÄÄ- 4
)
ÄÄ4 5
)
ÅÅ 
;
ÅÅ 
await
ÉÉ  
BindPlacementAsync
ÉÉ $
(
ÉÉ$ %
context
ÉÉ% ,
)
ÉÉ, -
;
ÉÉ- .
await
ÖÖ 
	_handlers
ÖÖ 
.
ÖÖ 
InvokeAsync
ÖÖ '
(
ÖÖ' (
(
ÖÖ( )
handler
ÖÖ) 0
,
ÖÖ0 1
contentItem
ÖÖ2 =
,
ÖÖ= >
context
ÖÖ? F
)
ÖÖF G
=>
ÖÖH J
handler
ÖÖK R
.
ÖÖR S
BuildEditorAsync
ÖÖS c
(
ÖÖc d
contentItem
ÖÖd o
,
ÖÖo p
context
ÖÖq x
)
ÖÖx y
,
ÖÖy z
contentItemÖÖ{ Ü
,ÖÖÜ á
contextÖÖà è
,ÖÖè ê
_loggerÖÖë ò
)ÖÖò ô
;ÖÖô ö
return
áá 
context
áá 
.
áá 
Shape
áá  
;
áá  !
}
àà 	
public
ää 
async
ää 
Task
ää 
<
ää 
IShape
ää  
>
ää  !
UpdateEditorAsync
ää" 3
(
ää3 4
ContentItem
ää4 ?
contentItem
ää@ K
,
ääK L
IUpdateModel
ääM Y
updater
ääZ a
,
ääa b
bool
ääc g
isNew
ääh m
,
ääm n
string
ääo u
groupId
ääv }
,
ää} ~
stringää Ö
htmlFieldPrefixääÜ ï
)ääï ñ
{
ãã 	
if
åå 
(
åå 
contentItem
åå 
==
åå 
null
åå #
)
åå# $
{
çç 
throw
éé 
new
éé #
ArgumentNullException
éé /
(
éé/ 0
nameof
éé0 6
(
éé6 7
contentItem
éé7 B
)
ééB C
)
ééC D
;
ééD E
}
èè 
var
ëë #
contentTypeDefinition
ëë %
=
ëë& ''
_contentDefinitionManager
ëë( A
.
ëëA B 
LoadTypeDefinition
ëëB T
(
ëëT U
contentItem
ëëU `
.
ëë` a
ContentType
ëëa l
)
ëël m
;
ëëm n
var
íí 

stereotype
íí 
=
íí #
contentTypeDefinition
íí 2
.
íí2 3
GetSettings
íí3 >
<
íí> ?!
ContentTypeSettings
íí? R
>
ííR S
(
ííS T
)
ííT U
.
ííU V

Stereotype
ííV `
;
íí` a
var
ìì 
actualShapeType
ìì 
=
ìì  !
(
ìì" #

stereotype
ìì# -
??
ìì. 0
$str
ìì1 :
)
ìì: ;
+
ìì< =
$str
ìì> E
;
ììE F
dynamic
ïï 
	itemShape
ïï 
=
ïï 
await
ïï  %%
CreateContentShapeAsync
ïï& =
(
ïï= >
actualShapeType
ïï> M
)
ïïM N
;
ïïN O
	itemShape
ññ 
.
ññ 
ContentItem
ññ !
=
ññ" #
contentItem
ññ$ /
;
ññ/ 0
	itemShape
óó 
.
óó 

Stereotype
óó  
=
óó! "

stereotype
óó# -
;
óó- .
(
öö 
(
öö 
IShape
öö 
)
öö 
	itemShape
öö 
)
öö 
.
öö  
Metadata
öö  (
.
öö( )

Alternates
öö) 3
.
öö3 4
Add
öö4 7
(
öö7 8
actualShapeType
öö8 G
+
ööH I
$str
ööJ N
+
ööO P
contentItem
ööQ \
.
öö\ ]
ContentType
öö] h
)
ööh i
;
ööi j
var
úú 
context
úú 
=
úú 
new
úú !
UpdateEditorContext
úú 1
(
úú1 2
	itemShape
ùù 
,
ùù 
groupId
ûû 
,
ûû 
isNew
üü 
,
üü 
htmlFieldPrefix
†† 
,
††  
_shapeFactory
°° 
,
°° 
await
¢¢ 
_layoutAccessor
¢¢ %
.
¢¢% &
GetLayoutAsync
¢¢& 4
(
¢¢4 5
)
¢¢5 6
,
¢¢6 7
new
££ &
ModelStateWrapperUpdater
££ ,
(
££, -
updater
££- 4
)
££4 5
)
§§ 
;
§§ 
await
¶¶  
BindPlacementAsync
¶¶ $
(
¶¶$ %
context
¶¶% ,
)
¶¶, -
;
¶¶- .
var
®® "
updateContentContext
®® $
=
®®% &
new
®®' *"
UpdateContentContext
®®+ ?
(
®®? @
contentItem
®®@ K
)
®®K L
;
®®L M
await
™™ 
_contentHandlers
™™ "
.
™™" #
InvokeAsync
™™# .
(
™™. /
(
™™/ 0
handler
™™0 7
,
™™7 8"
updateContentContext
™™9 M
)
™™M N
=>
™™O Q
handler
™™R Y
.
™™Y Z
UpdatingAsync
™™Z g
(
™™g h"
updateContentContext
™™h |
)
™™| }
,
™™} ~#
updateContentContext™™ ì
,™™ì î
_logger™™ï ú
)™™ú ù
;™™ù û
await
´´ 
	_handlers
´´ 
.
´´ 
InvokeAsync
´´ '
(
´´' (
(
´´( )
handler
´´) 0
,
´´0 1
contentItem
´´2 =
,
´´= >
context
´´? F
)
´´F G
=>
´´H J
handler
´´K R
.
´´R S
UpdateEditorAsync
´´S d
(
´´d e
contentItem
´´e p
,
´´p q
context
´´r y
)
´´y z
,
´´z {
contentItem´´| á
,´´á à
context´´â ê
,´´ê ë
_logger´´í ô
)´´ô ö
;´´ö õ
await
¨¨ 
_contentHandlers
¨¨ "
.
¨¨" #
Reverse
¨¨# *
(
¨¨* +
)
¨¨+ ,
.
¨¨, -
InvokeAsync
¨¨- 8
(
¨¨8 9
(
¨¨9 :
handler
¨¨: A
,
¨¨A B"
updateContentContext
¨¨C W
)
¨¨W X
=>
¨¨Y [
handler
¨¨\ c
.
¨¨c d
UpdatedAsync
¨¨d p
(
¨¨p q#
updateContentContext¨¨q Ö
)¨¨Ö Ü
,¨¨Ü á$
updateContentContext¨¨à ú
,¨¨ú ù
_logger¨¨û •
)¨¨• ¶
;¨¨¶ ß
return
ÆÆ 
context
ÆÆ 
.
ÆÆ 
Shape
ÆÆ  
;
ÆÆ  !
}
ØØ 	
}
∞∞ 
}±± ¡
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\IContentItemDisplayManager.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
{ 
public 

	interface &
IContentItemDisplayManager /
{ 
Task 
< 
IShape 
> 
BuildDisplayAsync &
(& '
ContentItem' 2
content3 :
,: ;
IUpdateModel< H
updaterI P
,P Q
stringR X
displayTypeY d
=e f
$strg i
,i j
stringk q
groupIdr y
=z {
$str| ~
)~ 
;	 Ä
Task 
< 
IShape 
> 
BuildEditorAsync %
(% &
ContentItem& 1
content2 9
,9 :
IUpdateModel; G
updaterH O
,O P
boolQ U
isNewV [
,[ \
string] c
groupIdd k
=l m
$strn p
,p q
stringr x
htmlFieldPrefix	y à
=
â ä
$str
ã ç
)
ç é
;
é è
Task 
< 
IShape 
> 
UpdateEditorAsync &
(& '
ContentItem' 2
content3 :
,: ;
IUpdateModel< H
updaterI P
,P Q
boolR V
isNewW \
,\ ]
string^ d
groupIde l
=m n
$stro q
,q r
strings y
htmlFieldPrefix	z â
=
ä ã
$str
å é
)
é è
;
è ê
} 
} Ö*
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Liquid\ConsoleLogFilter.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
Liquid0 6
{ 
public 

class 
ConsoleLogFilter !
:" #
ILiquidFilter$ 1
{ 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
contexto v
)v w
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
varC F
servicesG O
)O P
)P Q
{ 
throw 
new 
ArgumentException +
(+ ,
$str, [
)[ \
;\ ]
} 
var 
env 
= 
( 
( 
IServiceProvider (
)( )
services) 1
)1 2
.2 3
GetRequiredService3 E
<E F
IHostEnvironmentF V
>V W
(W X
)X Y
;Y Z
var 
content 
= 
input 
.  
ToObjectValue  -
(- .
). /
;/ 0
if 
( 
content 
== 
null 
||  "
env# &
.& '
IsProduction' 3
(3 4
)4 5
)5 6
{ 
return 
new 
	ValueTask $
<$ %

FluidValue% /
>/ 0
(0 1
NilValue1 9
.9 :
Instance: B
)B C
;C D
} 
using   
(   
var   
sb   
=   
StringBuilderPool   -
.  - .
GetInstance  . 9
(  9 :
)  : ;
)  ; <
{!! 
sb"" 
."" 
Builder"" 
."" 
Append"" !
(""! "
$str""" 8
)""8 9
;""9 :
if$$ 
($$ 
content$$ 
is$$ 
string$$ %
stringContent$$& 3
)$$3 4
{%% 
sb&& 
.&& 
Builder&& 
.&& 
Append&& %
(&&% &
$str&&& *
)&&* +
.&&+ ,
Append&&, 2
(&&2 3
stringContent&&3 @
)&&@ A
.&&A B
Append&&B H
(&&H I
$str&&I M
)&&M N
;&&N O
}'' 
else(( 
if(( 
((( 
content((  
is((! #
JToken(($ *
jTokenContent((+ 8
)((8 9
{)) 
sb** 
.** 
Builder** 
.** 
Append** %
(**% &
jTokenContent**& 3
.**3 4
ToString**4 <
(**< =
)**= >
)**> ?
;**? @
}++ 
else,, 
if,, 
(,, 
content,,  
is,,! #
ContentItem,,$ /
contentItem,,0 ;
),,; <
{-- 
sb.. 
... 
Builder.. 
... 
Append.. %
(..% &(
OrchardRazorHelperExtensions..& B
...B C
ConvertContentItem..C U
(..U V
contentItem..V a
)..a b
...b c
ToString..c k
(..k l
)..l m
)..m n
;..n o
}// 
else00 
if00 
(00 
content00  
is00! #
IShape00$ *
shape00+ 0
)000 1
{11 
sb22 
.22 
Builder22 
.22 
Append22 %
(22% &
shape22& +
.22+ ,
ShapeToJson22, 7
(227 8
)228 9
.229 :
ToString22: B
(22B C
)22C D
)22D E
;22E F
}33 
else44 
{55 
sb66 
.66 
Builder66 
.66 
Append66 %
(66% &
JsonConvert66& 1
.661 2
SerializeObject662 A
(66A B
content66B I
)66I J
)66J K
;66K L
}77 
sb99 
.99 
Builder99 
.99 
Append99 !
(99! "
$str99" .
)99. /
;99/ 0
var;; 
result;; 
=;; 
new;;  
StringValue;;! ,
(;;, -
sb;;- /
.;;/ 0
Builder;;0 7
.;;7 8
ToString;;8 @
(;;@ A
);;A B
,;;B C
false;;D I
);;I J
;;;J K
return== 
new== 
	ValueTask== $
<==$ %

FluidValue==% /
>==/ 0
(==0 1
result==1 7
)==7 8
;==8 9
}>> 
}?? 	
}@@ 
}AA Õ
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\BuildFieldDisplayContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
Models0 6
{ 
public 

class $
BuildFieldDisplayContext )
:* +
BuildDisplayContext, ?
{ 
public $
BuildFieldDisplayContext '
(' (
ContentPart( 3
contentPart4 ?
,? @%
ContentTypePartDefinitionA Z
typePartDefinition[ m
,m n'
ContentPartFieldDefinition	o â!
partFieldDefinition
ä ù
,
ù û!
BuildDisplayContext
ü ≤
context
≥ ∫
)
∫ ª
:		 
base		 
(		 
context		 
.		 
Shape		  
,		  !
context		" )
.		) *
DisplayType		* 5
,		5 6
context		7 >
.		> ?
GroupId		? F
,		F G
context		H O
.		O P
ShapeFactory		P \
,		\ ]
context		^ e
.		e f
Layout		f l
,		l m
context		n u
.		u v
Updater		v }
)		} ~
{

 	
ContentPart 
= 
contentPart %
;% &
TypePartDefinition 
=  
typePartDefinition! 3
;3 4
PartFieldDefinition 
=  !
partFieldDefinition" 5
;5 6
} 	
public 
ContentPart 
ContentPart &
{' (
get) ,
;, -
}. /
public %
ContentTypePartDefinition (
TypePartDefinition) ;
{< =
get> A
;A B
}C D
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
}E F
} 
} „
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\BuildFieldEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
Models0 6
{ 
public 

class #
BuildFieldEditorContext (
:) *
BuildEditorContext+ =
{ 
public #
BuildFieldEditorContext &
(& '
ContentPart' 2
contentPart3 >
,> ?%
ContentTypePartDefinition@ Y
typePartDefinitionZ l
,l m'
ContentPartFieldDefinition	n à!
partFieldDefinition
â ú
,
ú ù 
BuildEditorContext
û ∞
context
± ∏
)
∏ π
:		 
base		 
(		 
context		 
.		 
Shape		  
,		  !
context		" )
.		) *
GroupId		* 1
,		1 2
context		3 :
.		: ;
IsNew		; @
,		@ A
$str		B D
,		D E
context		F M
.		M N
ShapeFactory		N Z
,		Z [
context		\ c
.		c d
Layout		d j
,		j k
context		l s
.		s t
Updater		t {
)		{ |
{

 	
ContentPart 
= 
contentPart %
;% &
TypePartDefinition 
=  
typePartDefinition! 3
;3 4
PartFieldDefinition 
=  !
partFieldDefinition" 5
;5 6
} 	
public 
ContentPart 
ContentPart &
{' (
get) ,
;, -
}. /
public %
ContentTypePartDefinition (
TypePartDefinition) ;
{< =
get> A
;A B
}C D
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
}E F
} 
} ◊
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\BuildPartDisplayContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
Models0 6
{ 
public 

class #
BuildPartDisplayContext (
:) *
BuildDisplayContext+ >
{ 
public #
BuildPartDisplayContext &
(& '%
ContentTypePartDefinition' @
typePartDefinitionA S
,S T
BuildDisplayContextU h
contexti p
)p q
:		 
base		 
(		 
context		 
.		 
Shape		  
,		  !
context		" )
.		) *
DisplayType		* 5
,		5 6
context		7 >
.		> ?
GroupId		? F
,		F G
context		H O
.		O P
ShapeFactory		P \
,		\ ]
context		^ e
.		e f
Layout		f l
,		l m
context		n u
.		u v
Updater		v }
)		} ~
{

 	
TypePartDefinition 
=  
typePartDefinition! 3
;3 4
} 	
public %
ContentTypePartDefinition (
TypePartDefinition) ;
{< =
get> A
;A B
}C D
} 
} ç
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\BuildPartEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
Models0 6
{ 
public 

class "
BuildPartEditorContext '
:( )
BuildEditorContext* <
{ 
public "
BuildPartEditorContext %
(% &%
ContentTypePartDefinition& ?
typePartDefinition@ R
,R S
BuildEditorContextT f
contextg n
)n o
:		 
base		 
(		 
context		 
.		 
Shape		  
,		  !
context		" )
.		) *
GroupId		* 1
,		1 2
context		3 :
.		: ;
IsNew		; @
,		@ A
$str		B D
,		D E
context		F M
.		M N
ShapeFactory		N Z
,		Z [
context		\ c
.		c d
Layout		d j
,		j k
context		l s
.		s t
Updater		t {
)		{ |
{

 	
TypePartDefinition 
=  
typePartDefinition! 3
;3 4
} 	
public %
ContentTypePartDefinition (
TypePartDefinition) ;
{< =
get> A
;A B
}C D
public 
string 
PartLocation "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Ä	
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\UpdateFieldEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
Models0 6
{ 
public 

class $
UpdateFieldEditorContext )
:* +#
BuildFieldEditorContext, C
{ 
public $
UpdateFieldEditorContext '
(' (
ContentPart( 3
contentPart4 ?
,? @%
ContentTypePartDefinitionA Z
typePartDefinition[ m
,m n'
ContentPartFieldDefinition	o â!
partFieldDefinition
ä ù
,
ù û!
UpdateEditorContext
ü ≤
context
≥ ∫
)
∫ ª
:		 
base		 
(		 
contentPart		 
,		 
typePartDefinition		  2
,		2 3
partFieldDefinition		4 G
,		G H
context		I P
)		P Q
{

 	
} 	
} 
} Ä
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\UpdatePartEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0
Models0 6
{ 
public 

class #
UpdatePartEditorContext (
:) *"
BuildPartEditorContext+ A
{		 
public #
UpdatePartEditorContext &
(& '%
ContentTypePartDefinition' @
typePartDefinitionA S
,S T
UpdateEditorContextU h
contexti p
)p q
: 
base 
( 
typePartDefinition %
,% &
context' .
). /
{ 	
} 	
} 
} ∫=
ÆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Placement\ContentPlacementNodeFilterProviders.cs
	namespace		 	
OrchardCore		
 
.		 
ContentManagement		 '
.		' (
Display		( /
.		/ 0
	Placement		0 9
{

 
public 

class 2
&ContentPartPlacementNodeFilterProvider 7
:8 93
'ContentPlacementParseFilterProviderBase: a
,a b(
IPlacementNodeFilterProviderc 
{ 
public 
string 
Key 
{ 
get 
{  !
return" (
$str) 6
;6 7
}8 9
}: ;
public 
bool 
IsMatch 
( !
ShapePlacementContext 1
context2 9
,9 :
JToken; A

expressionB L
)L M
{ 	
var 
contentItem 
= 

GetContent (
(( )
context) 0
)0 1
;1 2
if 
( 
contentItem 
== 
null #
)# $
{ 
return 
false 
; 
} 
if 
( 

expression 
is 
JArray $
)$ %
{ 
return 

expression !
.! "
Any" %
(% &
p& '
=>( *
contentItem+ 6
.6 7
Has7 :
(: ;
p; <
.< =
Value= B
<B C
stringC I
>I J
(J K
)K L
)L M
)M N
;N O
} 
else 
{ 
return 
contentItem "
." #
Has# &
(& '

expression' 1
.1 2
Value2 7
<7 8
string8 >
>> ?
(? @
)@ A
)A B
;B C
} 
} 	
}   
public"" 

class"" 2
&ContentTypePlacementNodeFilterProvider"" 7
:""8 93
'ContentPlacementParseFilterProviderBase"": a
,""a b(
IPlacementNodeFilterProvider""c 
{## 
public$$ 
string$$ 
Key$$ 
{$$ 
get$$ 
{$$  !
return$$" (
$str$$) 6
;$$6 7
}$$8 9
}$$: ;
public&& 
bool&& 
IsMatch&& 
(&& !
ShapePlacementContext&& 1
context&&2 9
,&&9 :
JToken&&; A

expression&&B L
)&&L M
{'' 	
var(( 
contentItem(( 
=(( 

GetContent(( (
(((( )
context(() 0
)((0 1
;((1 2
if)) 
()) 
contentItem)) 
==)) 
null)) #
)))# $
{** 
return++ 
false++ 
;++ 
},, 
IEnumerable.. 
<.. 
string.. 
>.. 
contentTypes..  ,
;.., -
if00 
(00 

expression00 
is00 
JArray00 $
)00$ %
{11 
contentTypes22 
=22 

expression22 )
.22) *
Values22* 0
<220 1
string221 7
>227 8
(228 9
)229 :
;22: ;
}33 
else44 
{55 
contentTypes66 
=66 
new66 "
string66# )
[66) *
]66* +
{66, -

expression66. 8
.668 9
Value669 >
<66> ?
string66? E
>66E F
(66F G
)66G H
}66I J
;66J K
}77 
return99 
contentTypes99 
.99  
Any99  #
(99# $
ct99$ &
=>99' )
{:: 
if;; 
(;; 
ct;; 
.;; 
EndsWith;; 
(;;  
$char;;  #
);;# $
);;$ %
{<< 
var== 
prefix== 
===  
ct==! #
.==# $
	Substring==$ -
(==- .
$num==. /
,==/ 0
ct==1 3
.==3 4
Length==4 :
-==; <
$num=== >
)==> ?
;==? @
return?? 
(?? 
contentItem?? '
.??' (
ContentType??( 3
????4 6
$str??7 9
)??9 :
.??: ;

StartsWith??; E
(??E F
prefix??F L
,??L M
StringComparison??N ^
.??^ _
OrdinalIgnoreCase??_ p
)??p q
||??r t
(??u v
GetStereotype	??v É
(
??É Ñ
context
??Ñ ã
)
??ã å
??
??ç è
$str
??ê í
)
??í ì
.
??ì î

StartsWith
??î û
(
??û ü
prefix
??ü •
,
??• ¶
StringComparison
??ß ∑
.
??∑ ∏
OrdinalIgnoreCase
??∏ …
)
??…  
;
??  À
}@@ 
returnBB 
contentItemBB "
.BB" #
ContentTypeBB# .
==BB/ 1
ctBB2 4
||BB5 7
GetStereotypeBB8 E
(BBE F
contextBBF M
)BBM N
==BBO Q
ctBBR T
;BBT U
}CC 
)CC 
;CC 
}DD 	
privateFF 
stringFF 
GetStereotypeFF $
(FF$ %!
ShapePlacementContextFF% :
contextFF; B
)FFB C
{GG 	
varHH 
shapeHH 
=HH 
contextHH 
.HH  
	ZoneShapeHH  )
asHH* ,
ShapeHH- 2
;HH2 3
objectII 
stereotypeValII  
=II! "
nullII# '
;II' (
shapeJJ 
?JJ 
.JJ 

PropertiesJJ 
?JJ 
.JJ 
TryGetValueJJ *
(JJ* +
$strJJ+ 7
,JJ7 8
outJJ9 <
stereotypeValJJ= J
)JJJ K
;JJK L
returnKK 
stereotypeValKK  
?KK  !
.KK! "
ToStringKK" *
(KK* +
)KK+ ,
;KK, -
}LL 	
}MM 
publicOO 

classOO 3
'ContentPlacementParseFilterProviderBaseOO 8
{PP 
	protectedQQ 
boolQQ 

HasContentQQ !
(QQ! "!
ShapePlacementContextQQ" 7
contextQQ8 ?
)QQ? @
{RR 	
varSS 
shapeSS 
=SS 
contextSS 
.SS  
	ZoneShapeSS  )
asSS* ,
ShapeSS- 2
;SS2 3
returnTT 
shapeTT 
!=TT 
nullTT  
&&TT! #
shapeTT$ )
.TT) *

PropertiesTT* 4
[TT4 5
$strTT5 B
]TTB C
!=TTD F
nullTTG K
;TTK L
}UU 	
	protectedWW 
ContentItemWW 

GetContentWW (
(WW( )!
ShapePlacementContextWW) >
contextWW? F
)WWF G
{XX 	
ifYY 
(YY 
!YY 

HasContentYY 
(YY 
contextYY #
)YY# $
)YY$ %
{ZZ 
return[[ 
null[[ 
;[[ 
}\\ 
var^^ 
shape^^ 
=^^ 
context^^ 
.^^  
	ZoneShape^^  )
as^^* ,
Shape^^- 2
;^^2 3
return__ 
shape__ 
.__ 

Properties__ #
[__# $
$str__$ 1
]__1 2
as__3 5
ContentItem__6 A
;__A B
}`` 	
}aa 
}bb ÊM
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Razor\OrchardRazorHelperExtensions.cs
public 
static 
class (
OrchardRazorHelperExtensions 0
{ 
public 

static 
async 
Task 
< 
IHtmlContent )
>) *
DisplayAsync+ 7
(7 8
this8 <!
IOrchardDisplayHelper= R 
orchardDisplayHelperS g
,g h
ContentItemi t
contentu |
,| }
string	~ Ñ
displayType
Ö ê
=
ë í
$str
ì ï
,
ï ñ
string
ó ù
groupId
û •
=
¶ ß
$str
® ™
,
™ ´
IUpdateModel
¨ ∏
updater
π ¿
=
¡ ¬
null
√ «
)
« »
{ 
var 
displayManager 
=  
orchardDisplayHelper 1
.1 2
HttpContext2 =
.= >
RequestServices> M
.M N

GetServiceN X
<X Y&
IContentItemDisplayManagerY s
>s t
(t u
)u v
;v w
var 
shape 
= 
await 
displayManager (
.( )
BuildDisplayAsync) :
(: ;
content; B
,B C
updaterD K
,K L
displayTypeM X
,X Y
groupIdZ a
)a b
;b c
return 
await  
orchardDisplayHelper )
.) *
DisplayHelper* 7
.7 8
ShapeExecuteAsync8 I
(I J
shapeJ O
)O P
;P Q
} 
public 

static 
IHtmlContent 

ConsoleLog )
() *
this* .
IOrchardHelper/ =
orchardHelper> K
,K L
objectM S
contentT [
)[ \
{ 
var   
builder   
=   
new   
HtmlContentBuilder   ,
(  , -
$num  - .
)  . /
;  / 0
builder"" 
."" 

AppendHtml"" 
("" 
$str"" 1
)""1 2
;""2 3
var$$ 
env$$ 
=$$ 
orchardHelper$$ 
.$$  
HttpContext$$  +
.$$+ ,
RequestServices$$, ;
.$$; <
GetRequiredService$$< N
<$$N O
IHostEnvironment$$O _
>$$_ `
($$` a
)$$a b
;$$b c
if&& 

(&& 
content&& 
==&& 
null&& 
||&& 
env&& "
.&&" #
IsProduction&&# /
(&&/ 0
)&&0 1
)&&1 2
{'' 	
builder(( 
.(( 

AppendHtml(( 
((( 
$str(( %
)((% &
;((& '
})) 	
else** 
if** 
(** 
content** 
is** 
string** "
stringContent**# 0
)**0 1
{++ 	
builder,, 
.,, 

AppendHtml,, 
(,, 
$str,, #
),,# $
.,,$ %
Append,,% +
(,,+ ,
stringContent,,, 9
),,9 :
.,,: ;

AppendHtml,,; E
(,,E F
$str,,F J
),,J K
;,,K L
}-- 	
else.. 
if.. 
(.. 
content.. 
is.. 
JToken.. "
jTokenContent..# 0
)..0 1
{// 	
builder00 
.00 

AppendHtml00 
(00 
jTokenContent00 ,
.00, -
ToString00- 5
(005 6
)006 7
)007 8
;008 9
}11 	
else22 
if22 
(22 
content22 
is22 
ContentItem22 '
contentItem22( 3
)223 4
{33 	
builder44 
.44 

AppendHtml44 
(44 
ConvertContentItem44 1
(441 2
contentItem442 =
)44= >
.44> ?
ToString44? G
(44G H
)44H I
)44I J
;44J K
}55 	
else66 
if66 
(66 
content66 
is66 
IShape66 "
shape66# (
)66( )
{77 	
builder88 
.88 

AppendHtml88 
(88 
shape88 $
.88$ %
ShapeToJson88% 0
(880 1
)881 2
.882 3
ToString883 ;
(88; <
)88< =
)88= >
;88> ?
}99 	
else:: 
{;; 	
builder<< 
.<< 

AppendHtml<< 
(<< 
JsonConvert<< *
.<<* +
SerializeObject<<+ :
(<<: ;
content<<; B
)<<B C
)<<C D
;<<D E
}== 	
builder?? 
.?? 

AppendHtml?? 
(?? 
$str?? '
)??' (
;??( )
returnAA 
builderAA 
;AA 
}BB 
internalDD 
staticDD 
JObjectDD 
ConvertContentItemDD .
(DD. /
ContentItemDD/ :
contentItemDD; F
)DDF G
{EE 
varFF 
oFF 
=FF 
newFF 
JObjectFF 
(FF 
)FF 
;FF 
oII 	
.II	 

AddII
 
(II 
newII 
	JPropertyII 
(II 
nameofII "
(II" #
ContentItemII# .
.II. /
ContentItemIdII/ <
)II< =
,II= >
contentItemII? J
.IIJ K
ContentItemIdIIK X
)IIX Y
)IIY Z
;IIZ [
oJJ 	
.JJ	 

AddJJ
 
(JJ 
newJJ 
	JPropertyJJ 
(JJ 
nameofJJ "
(JJ" #
ContentItemJJ# .
.JJ. / 
ContentItemVersionIdJJ/ C
)JJC D
,JJD E
contentItemJJF Q
.JJQ R 
ContentItemVersionIdJJR f
)JJf g
)JJg h
;JJh i
oKK 	
.KK	 

AddKK
 
(KK 
newKK 
	JPropertyKK 
(KK 
nameofKK "
(KK" #
ContentItemKK# .
.KK. /
ContentTypeKK/ :
)KK: ;
,KK; <
contentItemKK= H
.KKH I
ContentTypeKKI T
)KKT U
)KKU V
;KKV W
oLL 	
.LL	 

AddLL
 
(LL 
newLL 
	JPropertyLL 
(LL 
nameofLL "
(LL" #
ContentItemLL# .
.LL. /
DisplayTextLL/ :
)LL: ;
,LL; <
contentItemLL= H
.LLH I
DisplayTextLLI T
)LLT U
)LLU V
;LLV W
oMM 	
.MM	 

AddMM
 
(MM 
newMM 
	JPropertyMM 
(MM 
nameofMM "
(MM" #
ContentItemMM# .
.MM. /
LatestMM/ 5
)MM5 6
,MM6 7
contentItemMM8 C
.MMC D
LatestMMD J
)MMJ K
)MMK L
;MML M
oNN 	
.NN	 

AddNN
 
(NN 
newNN 
	JPropertyNN 
(NN 
nameofNN "
(NN" #
ContentItemNN# .
.NN. /
	PublishedNN/ 8
)NN8 9
,NN9 :
contentItemNN; F
.NNF G
	PublishedNNG P
)NNP Q
)NNQ R
;NNR S
oOO 	
.OO	 

AddOO
 
(OO 
newOO 
	JPropertyOO 
(OO 
nameofOO "
(OO" #
ContentItemOO# .
.OO. /
ModifiedUtcOO/ :
)OO: ;
,OO; <
contentItemOO= H
.OOH I
ModifiedUtcOOI T
)OOT U
)OOU V
;OOV W
oPP 	
.PP	 

AddPP
 
(PP 
newPP 
	JPropertyPP 
(PP 
nameofPP "
(PP" #
ContentItemPP# .
.PP. /
PublishedUtcPP/ ;
)PP; <
,PP< =
contentItemPP> I
.PPI J
PublishedUtcPPJ V
)PPV W
)PPW X
;PPX Y
oQQ 	
.QQ	 

AddQQ
 
(QQ 
newQQ 
	JPropertyQQ 
(QQ 
nameofQQ "
(QQ" #
ContentItemQQ# .
.QQ. /

CreatedUtcQQ/ 9
)QQ9 :
,QQ: ;
contentItemQQ< G
.QQG H

CreatedUtcQQH R
)QQR S
)QQS T
;QQT U
oRR 	
.RR	 

AddRR
 
(RR 
newRR 
	JPropertyRR 
(RR 
nameofRR "
(RR" #
ContentItemRR# .
.RR. /
OwnerRR/ 4
)RR4 5
,RR5 6
contentItemRR7 B
.RRB C
OwnerRRC H
)RRH I
)RRI J
;RRJ K
oSS 	
.SS	 

AddSS
 
(SS 
newSS 
	JPropertySS 
(SS 
nameofSS "
(SS" #
ContentItemSS# .
.SS. /
AuthorSS/ 5
)SS5 6
,SS6 7
contentItemSS8 C
.SSC D
AuthorSSD J
)SSJ K
)SSK L
;SSL M
oUU 	
.UU	 

AddUU
 
(UU 
newUU 
	JPropertyUU 
(UU 
nameofUU "
(UU" #
ContentItemUU# .
.UU. /
ContentUU/ 6
)UU6 7
,UU7 8
(UU9 :
JObjectUU: A
)UUA B
contentItemUUB M
.UUM N
ContentUUN U
)UUU V
)UUV W
;UUW X
returnWW 
oWW 
;WW 
}XX 
}YY Ï
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ServiceCollectionExtensions.cs
	namespace		 	
OrchardCore		
 
.		 
ContentManagement		 '
.		' (
Display		( /
{

 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection ('
AddContentManagementDisplay) D
(D E
thisE I
IServiceCollectionJ \
services] e
)e f
{ 	
services 
. 
TryAddTransient $
<$ %&
IContentItemDisplayManager% ?
,? @%
ContentItemDisplayManagerA Z
>Z [
([ \
)\ ]
;] ^
services 
. 
TryAddEnumerable %
(% &
new& )
ServiceDescriptor* ;
(; <
typeof< B
(B C"
IContentDisplayHandlerC Y
)Y Z
,Z [
typeof\ b
(b c*
ContentItemDisplayCoordinator	c Ä
)
Ä Å
,
Å Ç
ServiceLifetime
É í
.
í ì
Scoped
ì ô
)
ô ö
)
ö õ
;
õ ú
services 
. 
	AddScoped 
< (
IPlacementNodeFilterProvider ;
,; <2
&ContentTypePlacementNodeFilterProvider= c
>c d
(d e
)e f
;f g
services 
. 
	AddScoped 
< (
IPlacementNodeFilterProvider ;
,; <2
&ContentPartPlacementNodeFilterProvider= c
>c d
(d e
)e f
;f g
services 
. 
	AddScoped 
< -
!IContentPartDisplayDriverResolver @
,@ A,
 ContentPartDisplayDriverResolverB b
>b c
(c d
)d e
;e f
services 
. 
	AddScoped 
< .
"IContentFieldDisplayDriverResolver A
,A B-
!ContentFieldDisplayDriverResolverC d
>d e
(e f
)f g
;g h
services 
. 

AddOptions 
<  !
ContentDisplayOptions  5
>5 6
(6 7
)7 8
;8 9
services 
. 
AddLiquidFilter $
<$ %
ConsoleLogFilter% 5
>5 6
(6 7
$str7 D
)D E
;E F
return 
services 
; 
} 	
} 
} Ä
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ViewModels\ContentItemViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0

ViewModels0 :
{ 
public 

class  
ContentItemViewModel %
:& '
ShapeViewModel( 6
{ 
public  
ContentItemViewModel #
(# $
)$ %
{ 	
}		 	
public  
ContentItemViewModel #
(# $
ContentItem$ /
contentItem0 ;
); <
{ 	
ContentItem 
= 
contentItem %
;% &
} 	
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} Ä
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ViewModels\ContentPartViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Display( /
./ 0

ViewModels0 :
{ 
public 

class  
ContentPartViewModel %
:& '
ShapeViewModel( 6
{ 
public  
ContentPartViewModel #
(# $
)$ %
{ 	
}		 	
public  
ContentPartViewModel #
(# $
ContentPart$ /
contentPart0 ;
); <
{ 	
ContentPart 
= 
contentPart %
;% &
} 	
public 
ContentPart 
ContentPart &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} 