�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentDisplayDriver.cs
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
UpdateEditorContext	u �
>
� �
,
� �#
IContentDisplayDriver
� �
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
} �b
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentDisplayOptions.cs
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
_contentParts	s �
.
� �
ToDictionary
� �
(
� �
k
� �
=>
� �
k
� �
.
� �
Type
� �
.
� �
Name
� �
)
� �
;
� �
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
_contentFields	v �
.
� �
ToDictionary
� �
(
� �
k
� �
=>
� �
k
� �
.
� �
Type
� �
.
� �
Name
� �
)
� �
;
� �
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
	predicate	DDw �
)
DD� �
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
}vv ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldDisplayDriver.cs
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
ContentField	{ �
,
� �
new
� �
(
� �
)
� �
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
IShape	} �
,
� �
Task
� �
>
� �
initializeAsync
� �
)
� �
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
DisplayToken	\\| �
}
\\� �
"
\\� �
)
\\� �
;
\\� �
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
}	{{ �
"
{{� �
)
{{� �
;
{{� �
}|| 
}}} 
}~~ 
)~~ 
;~~ 
} 
return
�� 
result
�� 
;
�� 
}
�� 	
Task
�� 
<
�� 
IDisplayResult
�� 
>
�� (
IContentFieldDisplayDriver
�� 7
.
��7 8
BuildDisplayAsync
��8 I
(
��I J
ContentPart
��J U
contentPart
��V a
,
��a b(
ContentPartFieldDefinition
��c }"
partFieldDefinition��~ �
,��� �)
ContentTypePartDefinition��� �"
typePartDefinition��� �
,��� �#
BuildDisplayContext��� �
context��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
Equals
�� 
(
�� 
typeof
�� %
(
��% &
TField
��& ,
)
��, -
.
��- .
Name
��. 2
,
��2 3!
partFieldDefinition
��4 G
.
��G H
FieldDefinition
��H W
.
��W X
Name
��X \
)
��\ ]
&&
��^ `
!
�� 
String
�� 
.
�� 
Equals
�� 
(
�� 
nameof
�� $
(
��$ %
ContentField
��% 1
)
��1 2
,
��2 3!
partFieldDefinition
��4 G
.
��G H
FieldDefinition
��H W
.
��W X
Name
��X \
)
��\ ]
)
��] ^
{
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� &
(
��& '
default
��' .
(
��. /
IDisplayResult
��/ =
)
��= >
)
��> ?
;
��? @
}
�� 
var
�� 
field
�� 
=
�� 
contentPart
�� #
.
��# $
Get
��$ '
<
��' (
TField
��( .
>
��. /
(
��/ 0!
partFieldDefinition
��0 C
.
��C D
Name
��D H
)
��H I
;
��I J
if
�� 
(
�� 
field
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
BuildPrefix
�� 
(
��  
typePartDefinition
�� .
,
��. /!
partFieldDefinition
��0 C
,
��C D
context
��E L
.
��L M
HtmlFieldPrefix
��M \
)
��\ ]
;
��] ^
var
�� !
fieldDisplayContext
�� '
=
��( )
new
��* -&
BuildFieldDisplayContext
��. F
(
��F G
contentPart
��G R
,
��R S 
typePartDefinition
��T f
,
��f g!
partFieldDefinition
��h {
,
��{ |
context��} �
)��� �
;��� �!
_typePartDefinition
�� #
=
��$ % 
typePartDefinition
��& 8
;
��8 9"
_partFieldDefinition
�� $
=
��% &!
partFieldDefinition
��' :
;
��: ;
var
�� 
result
�� 
=
�� 
DisplayAsync
�� )
(
��) *
field
��* /
,
��/ 0!
fieldDisplayContext
��1 D
)
��D E
;
��E F!
_typePartDefinition
�� #
=
��$ %
null
��& *
;
��* +"
_partFieldDefinition
�� $
=
��% &
null
��' +
;
��+ ,
return
�� 
result
�� 
;
�� 
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
default
��# *
(
��* +
IDisplayResult
��+ 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
Task
�� 
<
�� 
IDisplayResult
�� 
>
�� (
IContentFieldDisplayDriver
�� 7
.
��7 8
BuildEditorAsync
��8 H
(
��H I
ContentPart
��I T
contentPart
��U `
,
��` a(
ContentPartFieldDefinition
��b |"
partFieldDefinition��} �
,��� �)
ContentTypePartDefinition��� �"
typePartDefinition��� �
,��� �"
BuildEditorContext��� �
context��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
Equals
�� 
(
�� 
typeof
�� %
(
��% &
TField
��& ,
)
��, -
.
��- .
Name
��. 2
,
��2 3!
partFieldDefinition
��4 G
.
��G H
FieldDefinition
��H W
.
��W X
Name
��X \
)
��\ ]
&&
��^ `
!
�� 
String
�� 
.
�� 
Equals
�� 
(
�� 
nameof
�� %
(
��% &
ContentField
��& 2
)
��2 3
,
��3 4!
partFieldDefinition
��5 H
.
��H I
FieldDefinition
��I X
.
��X Y
Name
��Y ]
)
��] ^
)
��^ _
{
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� &
(
��& '
default
��' .
(
��. /
IDisplayResult
��/ =
)
��= >
)
��> ?
;
��? @
}
�� 
var
�� 
field
�� 
=
�� 
contentPart
�� #
.
��# $
GetOrCreate
��$ /
<
��/ 0
TField
��0 6
>
��6 7
(
��7 8!
partFieldDefinition
��8 K
.
��K L
Name
��L P
)
��P Q
;
��Q R
if
�� 
(
�� 
field
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
BuildPrefix
�� 
(
��  
typePartDefinition
�� .
,
��. /!
partFieldDefinition
��0 C
,
��C D
context
��E L
.
��L M
HtmlFieldPrefix
��M \
)
��\ ]
;
��] ^
var
��  
fieldEditorContext
�� &
=
��' (
new
��) ,%
BuildFieldEditorContext
��- D
(
��D E
contentPart
��E P
,
��P Q 
typePartDefinition
��R d
,
��d e!
partFieldDefinition
��f y
,
��y z
context��{ �
)��� �
;��� �!
_typePartDefinition
�� #
=
��$ % 
typePartDefinition
��& 8
;
��8 9"
_partFieldDefinition
�� $
=
��% &!
partFieldDefinition
��' :
;
��: ;
var
�� 
result
�� 
=
�� 
	EditAsync
�� &
(
��& '
field
��' ,
,
��, - 
fieldEditorContext
��. @
)
��@ A
;
��A B!
_typePartDefinition
�� #
=
��$ %
null
��& *
;
��* +"
_partFieldDefinition
�� $
=
��% &
null
��' +
;
��+ ,
return
�� 
result
�� 
;
�� 
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
default
��# *
(
��* +
IDisplayResult
��+ 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
async
�� 
Task
�� 
<
�� 
IDisplayResult
�� !
>
��! "(
IContentFieldDisplayDriver
��# =
.
��= >
UpdateEditorAsync
��> O
(
��O P
ContentPart
��P [
contentPart
��\ g
,
��g h)
ContentPartFieldDefinition��i �#
partFieldDefinition��� �
,��� �)
ContentTypePartDefinition��� �"
typePartDefinition��� �
,��� �#
UpdateEditorContext��� �
context��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
Equals
�� 
(
�� 
typeof
�� %
(
��% &
TField
��& ,
)
��, -
.
��- .
Name
��. 2
,
��2 3!
partFieldDefinition
��4 G
.
��G H
FieldDefinition
��H W
.
��W X
Name
��X \
)
��\ ]
&&
��^ `
!
�� 
String
�� 
.
�� 
Equals
�� 
(
�� 
nameof
�� %
(
��% &
ContentField
��& 2
)
��2 3
,
��3 4!
partFieldDefinition
��5 H
.
��H I
FieldDefinition
��I X
.
��X Y
Name
��Y ]
)
��] ^
)
��^ _
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
var
�� 
field
�� 
=
�� 
contentPart
�� #
.
��# $
GetOrCreate
��$ /
<
��/ 0
TField
��0 6
>
��6 7
(
��7 8!
partFieldDefinition
��8 K
.
��K L
Name
��L P
)
��P Q
;
��Q R
BuildPrefix
�� 
(
��  
typePartDefinition
�� *
,
��* +!
partFieldDefinition
��, ?
,
��? @
context
��A H
.
��H I
HtmlFieldPrefix
��I X
)
��X Y
;
��Y Z
var
�� &
updateFieldEditorContext
�� (
=
��) *
new
��+ .&
UpdateFieldEditorContext
��/ G
(
��G H
contentPart
��H S
,
��S T 
typePartDefinition
��U g
,
��g h!
partFieldDefinition
��i |
,
��| }
context��~ �
)��� �
;��� �!
_typePartDefinition
�� 
=
��  ! 
typePartDefinition
��" 4
;
��4 5"
_partFieldDefinition
��  
=
��! "!
partFieldDefinition
��# 6
;
��6 7
var
�� 
result
�� 
=
�� 
await
�� 
UpdateAsync
�� *
(
��* +
field
��+ 0
,
��0 1
context
��2 9
.
��9 :
Updater
��: A
,
��A B&
updateFieldEditorContext
��C [
)
��[ \
;
��\ ]!
_typePartDefinition
�� 
=
��  !
null
��" &
;
��& '"
_partFieldDefinition
��  
=
��! "
null
��# '
;
��' (
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
return
�� 
null
�� 
;
�� 
}
�� 
contentPart
�� 
.
�� 
Apply
�� 
(
�� !
partFieldDefinition
�� 1
.
��1 2
Name
��2 6
,
��6 7
field
��8 =
)
��= >
;
��> ?
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
IDisplayResult
�� *
>
��* +
DisplayAsync
��, 8
(
��8 9
TField
��9 ?
field
��@ E
,
��E F&
BuildFieldDisplayContext
��G _!
fieldDisplayContext
��` s
)
��s t
{
�� 	
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
Display
��# *
(
��* +
field
��+ 0
,
��0 1!
fieldDisplayContext
��2 E
)
��E F
)
��F G
;
��G H
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
IDisplayResult
�� *
>
��* +
	EditAsync
��, 5
(
��5 6
TField
��6 <
field
��= B
,
��B C%
BuildFieldEditorContext
��D [
context
��\ c
)
��c d
{
�� 	
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
Edit
��# '
(
��' (
field
��( -
,
��- .
context
��/ 6
)
��6 7
)
��7 8
;
��8 9
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
IDisplayResult
�� *
>
��* +
UpdateAsync
��, 7
(
��7 8
TField
��8 >
field
��? D
,
��D E
IUpdateModel
��F R
updater
��S Z
,
��Z [&
UpdateFieldEditorContext
��\ t
context
��u |
)
��| }
{
�� 	
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
Update
��# )
(
��) *
field
��* /
,
��/ 0
updater
��1 8
,
��8 9
context
��: A
)
��A B
)
��B C
;
��C D
}
�� 	
public
�� 
virtual
�� 
IDisplayResult
�� %
Display
��& -
(
��- .
TField
��. 4
field
��5 :
,
��: ;&
BuildFieldDisplayContext
��< T!
fieldDisplayContext
��U h
)
��h i
{
�� 	
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
IDisplayResult
�� %
Edit
��& *
(
��* +
TField
��+ 1
field
��2 7
,
��7 8%
BuildFieldEditorContext
��9 P
context
��Q X
)
��X Y
{
�� 	
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
IDisplayResult
�� %
Update
��& ,
(
��, -
TField
��- 3
field
��4 9
,
��9 :
IUpdateModel
��; G
updater
��H O
,
��O P&
UpdateFieldEditorContext
��Q i
context
��j q
)
��q r
{
�� 	
return
�� 
null
�� 
;
�� 
}
�� 	
	protected
�� 
string
��  
GetEditorShapeType
�� +
(
��+ ,
string
��, 2
	shapeType
��3 <
,
��< =(
ContentPartFieldDefinition
��> X!
partFieldDefinition
��Y l
)
��l m
{
�� 	
var
�� 
editor
�� 
=
�� !
partFieldDefinition
�� ,
.
��, -
Editor
��- 3
(
��3 4
)
��4 5
;
��5 6
return
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
editor
��) /
)
��/ 0
?
�� 
	shapeType
�� 
+
�� 
$str
�� "
+
��# $
editor
��% +
:
�� 
	shapeType
�� 
;
�� 
}
�� 	
	protected
�� 
string
��  
GetEditorShapeType
�� +
(
��+ ,
string
��, 2
	shapeType
��3 <
,
��< =%
BuildFieldEditorContext
��> U
context
��V ]
)
��] ^
{
�� 	
return
��  
GetEditorShapeType
�� %
(
��% &
	shapeType
��& /
,
��/ 0
context
��1 8
.
��8 9!
PartFieldDefinition
��9 L
)
��L M
;
��M N
}
�� 	
	protected
�� 
string
��  
GetEditorShapeType
�� +
(
��+ ,(
ContentPartFieldDefinition
��, F!
partFieldDefinition
��G Z
)
��Z [
{
�� 	
return
��  
GetEditorShapeType
�� %
(
��% &
typeof
��& ,
(
��, -
TField
��- 3
)
��3 4
.
��4 5
Name
��5 9
+
��: ;
$str
��< C
,
��C D!
partFieldDefinition
��E X
)
��X Y
;
��Y Z
}
�� 	
	protected
�� 
string
��  
GetEditorShapeType
�� +
(
��+ ,%
BuildFieldEditorContext
��, C
context
��D K
)
��K L
{
�� 	
return
��  
GetEditorShapeType
�� %
(
��% &
context
��& -
.
��- .!
PartFieldDefinition
��. A
)
��A B
;
��B C
}
�� 	
	protected
�� 
string
�� !
GetDisplayShapeType
�� ,
(
��, -
string
��- 3
	shapeType
��4 =
,
��= >&
BuildFieldDisplayContext
��? W
context
��X _
)
��_ `
{
�� 	
var
�� 
displayMode
�� 
=
�� 
context
�� %
.
��% &!
PartFieldDefinition
��& 9
.
��9 :
DisplayMode
��: E
(
��E F
)
��F G
;
��G H
return
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
displayMode
��) 4
)
��4 5
?
�� 
	shapeType
�� 
+
�� 
DisplaySeparator
�� .
+
��/ 0
displayMode
��1 <
:
�� 
	shapeType
�� 
;
�� 
}
�� 	
	protected
�� 
string
�� !
GetDisplayShapeType
�� ,
(
��, -&
BuildFieldDisplayContext
��- E
context
��F M
)
��M N
{
�� 	
return
�� !
GetDisplayShapeType
�� &
(
��& '
typeof
��' -
(
��- .
TField
��. 4
)
��4 5
.
��5 6
Name
��6 :
,
��: ;
context
��< C
)
��C D
;
��D E
}
�� 	
private
�� 
void
�� 
BuildPrefix
��  
(
��  !'
ContentTypePartDefinition
��! : 
typePartDefinition
��; M
,
��M N(
ContentPartFieldDefinition
��O i!
partFieldDefinition
��j }
,
��} ~
string�� �
htmlFieldPrefix��� �
)��� �
{
�� 	
Prefix
�� 
=
��  
typePartDefinition
�� '
.
��' (
Name
��( ,
+
��- .
$str
��/ 2
+
��3 4!
partFieldDefinition
��5 H
.
��H I
Name
��I M
;
��M N
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
htmlFieldPrefix
��& 5
)
��5 6
)
��6 7
{
�� 
Prefix
�� 
=
�� 
htmlFieldPrefix
�� (
+
��) *
$str
��+ .
+
��/ 0
Prefix
��1 7
;
��7 8
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldDisplayDriverOption.cs
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
} �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldDisplayDriverResolver.cs
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
DisplayDriverType	  } �
)
  � �
)
  � �
;
  � �
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
DisplayDriverType	22x �
)
22� �
)
22� �
;
22� �
}33 
}44 
}55 
return77 
services77 
;77 
}88 	
}99 
}:: �+
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldDisplayOption.cs
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
(			 �
)
		� �
;
		� �
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
_fieldDisplayDrivers	l �
.
� �
Where
� �
(
� �
d
� �
=>
� �
d
� �
.
� �
DisplayMode
� �
!=
� �
null
� �
)
� �
.
� �
ToList
� �
(
� �
)
� �
;
� �
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
=>	 �
d
� �
.
� �
Editor
� �
!=
� �
null
� �
)
� �
.
� �
ToList
� �
(
� �
)
� �
;
� �
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
}99 �Z
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentFieldServiceCollectionExtensions.cs
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
builder	| �
)
� �
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
fieldDisplayDriverType	n �
)
� �
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
builder	$$| �
,
$$� �
Func
$$� �
<
$$� �
string
$$� �
,
$$� �
bool
$$� �
>
$$� �
	predicate
$$� �
)
$$� �
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
builder	.. �
)
..� �
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
fieldDisplayDriverType	77q �
)
77� �
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
builder	HHz �
)
HH� �
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
fieldDisplayDriverType	NNl �
)
NN� �
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
builder	XXz �
,
XX� �
Func
XX� �
<
XX� �
string
XX� �
,
XX� �
bool
XX� �
>
XX� �
	predicate
XX� �
)
XX� �
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
fieldDisplayDriverType	ccl �
,
cc� �
Func
cc� �
<
cc� �
string
cc� �
,
cc� �
bool
cc� �
>
cc� �
	predicate
cc� �
)
cc� �
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
�� 	
return
�� 
builder
�� 
.
�� 
	ForEditor
�� $
(
��$ %$
fieldDisplayDriverType
��% ;
,
��; <
d
��= >
=>
��? A
true
��B F
)
��F G
;
��G H
}
�� 	
public
�� 
static
�� '
ContentFieldOptionBuilder
�� /
	ForEditor
��0 9
<
��9 :(
TContentFieldDisplayDriver
��: T
>
��T U
(
��U V
this
��V Z'
ContentFieldOptionBuilder
��[ t
builder
��u |
,
��| }
Func��~ �
<��� �
string��� �
,��� �
bool��� �
>��� �
	predicate��� �
)��� �
where
�� (
TContentFieldDisplayDriver
�� ,
:
��- .
class
��/ 4
,
��4 5(
IContentFieldDisplayDriver
��6 P
{
�� 	
return
�� 
builder
�� 
.
�� 
	ForEditor
�� $
(
��$ %
typeof
��% +
(
��+ ,(
TContentFieldDisplayDriver
��, F
)
��F G
,
��G H
	predicate
��I R
)
��R S
;
��S T
}
�� 	
public
�� 
static
�� '
ContentFieldOptionBuilder
�� /
	ForEditor
��0 9
(
��9 :
this
��: >'
ContentFieldOptionBuilder
��? X
builder
��Y `
,
��` a
Type
��b f$
fieldDisplayDriverType
��g }
,
��} ~
Func�� �
<��� �
string��� �
,��� �
bool��� �
>��� �
	predicate��� �
)��� �
{
�� 	
builder
�� 
.
�� 
Services
�� 
.
�� 
	Configure
�� &
<
��& '#
ContentDisplayOptions
��' <
>
��< =
(
��= >
o
��> ?
=>
��@ B
{
�� 
o
�� 
.
�� #
ForContentFieldEditor
�� '
(
��' (
builder
��( /
.
��/ 0
ContentFieldType
��0 @
,
��@ A$
fieldDisplayDriverType
��B X
,
��X Y
	predicate
��Z c
)
��c d
;
��d e
}
�� 
)
�� 
;
�� 
builder
�� 
.
�� 
Services
�� 
.
�� 
TryAddScoped
�� )
(
��) *$
fieldDisplayDriverType
��* @
)
��@ A
;
��A B
return
�� 
builder
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentItemDisplayCoordinator.cs
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
$str	44" �
,
44� �
element
44� �
)
44� �
;
44� �
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
$str	99" �
,
99� �
element
99� �
)
99� �
;
99� �
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
contentTypePartDefinition	bbs �
.
bb� �
DisplayMode
bb� �
(
bb� �
)
bb� �
)
bb� �
;
bb� �
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
BuildDisplayAsync	oot �
)
oo� �
)
oo� �
;
oo� �
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
�� ,
.
��, -
HandleException
��- <
(
��< =
ex
��= ?
,
��? @
_logger
��A H
,
��H I
displayDriver
��J W
.
��W X
GetType
��X _
(
��_ `
)
��` a
.
��a b
Name
��b f
,
��f g
nameof
��h n
(
��n o 
BuildDisplayAsync��o �
)��� �
)��� �
;��� �
}
�� 
}
�� 
var
�� 
tempContext
�� #
=
��$ %
context
��& -
;
��- .
if
�� 
(
�� 
part
�� 
.
�� 
GetType
�� $
(
��$ %
)
��% &
==
��' )
typeof
��* 0
(
��0 1
ContentPart
��1 <
)
��< =
&&
��> @
partTypeName
��A M
!=
��N P'
contentTypePartDefinition
��Q j
.
��j k$
ContentTypeDefinition��k �
.��� �
Name��� �
)��� �
{
�� 
var
�� 
	shapeType
�� %
=
��& '
context
��( /
.
��/ 0
DisplayType
��0 ;
!=
��< >
$str
��? G
?
��H I
$str
��J X
+
��Y Z
context
��[ b
.
��b c
DisplayType
��c n
:
��o p
$str
��q ~
;
��~ 
var
�� 
shapeResult
�� '
=
��( )
new
��* -
ShapeResult
��. 9
(
��9 :
	shapeType
��: C
,
��C D
ctx
��E H
=>
��I K
ctx
��L O
.
��O P
ShapeFactory
��P \
.
��\ ]
CreateAsync
��] h
(
��h i
	shapeType
��i r
,
��r s
(
��t u
)
��u v
=>
��w y
new
��z }
	ValueTask��~ �
<��� �
IShape��� �
>��� �
(��� �
new��� �
ZoneHolding��� �
(��� �
(��� �
)��� �
=>��� �
ctx��� �
.��� �
ShapeFactory��� �
.��� �
CreateAsync��� �
(��� �
$str��� �
)��� �
)��� �
)��� �
)��� �
)��� �
;��� �
shapeResult
�� #
.
��# $
Differentiator
��$ 2
(
��2 3
partName
��3 ;
)
��; <
;
��< =
shapeResult
�� #
.
��# $
Location
��$ ,
(
��, -
$str
��- 6
)
��6 7
;
��7 8
await
�� 
shapeResult
�� )
.
��) *

ApplyAsync
��* 4
(
��4 5
context
��5 <
)
��< =
;
��= >
var
�� 
contentPartShape
�� ,
=
��- .
shapeResult
��/ :
.
��: ;
Shape
��; @
;
��@ A
dynamic
�� %
dynamicContentPartShape
��  7
=
��8 9
contentPartShape
��: J
;
��J K%
dynamicContentPartShape
�� /
[
��/ 0
partTypeName
��0 <
]
��< =
=
��> ?
part
��@ D
.
��D E
Content
��E L
;
��L M%
dynamicContentPartShape
�� /
[
��/ 0
$str
��0 =
]
��= >
=
��? @
part
��A E
.
��E F
ContentItem
��F Q
;
��Q R
contentPartShape
�� (
.
��( )
Metadata
��) 1
.
��1 2

Alternates
��2 <
.
��< =
Add
��= @
(
��@ A
partTypeName
��A M
)
��M N
;
��N O
contentPartShape
�� (
.
��( )
Metadata
��) 1
.
��1 2

Alternates
��2 <
.
��< =
Add
��= @
(
��@ A
$"
��A C
{
��C D
contentType
��D O
}
��O P
__
��P R
{
��R S
partTypeName
��S _
}
��_ `
"
��` a
)
��a b
;
��b c
if
�� 
(
�� 
context
�� #
.
��# $
DisplayType
��$ /
!=
��0 2
$str
��3 ;
)
��; <
{
�� 
contentPartShape
�� ,
.
��, -
Metadata
��- 5
.
��5 6

Alternates
��6 @
.
��@ A
Add
��A D
(
��D E
$"
��E G
{
��G H
partTypeName
��H T
}
��T U
_
��U V
{
��V W
context
��W ^
.
��^ _
DisplayType
��_ j
}
��j k
"
��k l
)
��l m
;
��m n
contentPartShape
�� ,
.
��, -
Metadata
��- 5
.
��5 6

Alternates
��6 @
.
��@ A
Add
��A D
(
��D E
$"
��E G
{
��G H
contentType
��H S
}
��S T
_
��T U
{
��U V
context
��V ]
.
��] ^
DisplayType
��^ i
}
��i j
__
��j l
{
��l m
partTypeName
��m y
}
��y z
"
��z {
)
��{ |
;
��| }
}
�� 
if
�� 
(
�� 
partName
�� $
!=
��% '
partTypeName
��( 4
)
��4 5
{
�� 
contentPartShape
�� ,
.
��, -
Metadata
��- 5
.
��5 6

Alternates
��6 @
.
��@ A
Add
��A D
(
��D E
$"
��E G
{
��G H
contentType
��H S
}
��S T
__
��T V
{
��V W
partName
��W _
}
��_ `
"
��` a
)
��a b
;
��b c
if
�� 
(
��  
context
��  '
.
��' (
DisplayType
��( 3
!=
��4 6
$str
��7 ?
)
��? @
{
�� 
contentPartShape
��  0
.
��0 1
Metadata
��1 9
.
��9 :

Alternates
��: D
.
��D E
Add
��E H
(
��H I
$"
��I K
{
��K L
contentType
��L W
}
��W X
_
��X Y
{
��Y Z
context
��Z a
.
��a b
DisplayType
��b m
}
��m n
__
��n p
{
��p q
partName
��q y
}
��y z
"
��z {
)
��{ |
;
��| }
}
�� 
}
�� 
context
�� 
=
��  !
new
��" %!
BuildDisplayContext
��& 9
(
��9 :
shapeResult
��: E
.
��E F
Shape
��F K
,
��K L
context
��M T
.
��T U
DisplayType
��U `
,
��` a
context
��b i
.
��i j
GroupId
��j q
,
��q r
context
��s z
.
��z {
ShapeFactory��{ �
,��� �
context��� �
.��� �
Layout��� �
,��� �
context��� �
.��� �
Updater��� �
)��� �
;��� �
context
�� 
.
��  
FindPlacement
��  -
=
��. /
tempContext
��0 ;
.
��; <
FindPlacement
��< I
;
��I J
}
�� 
foreach
�� 
(
�� 
var
��  (
contentPartFieldDefinition
��! ;
in
��< >'
contentTypePartDefinition
��? X
.
��X Y
PartDefinition
��Y g
.
��g h
Fields
��h n
)
��n o
{
�� 
var
�� !
fieldDisplayDrivers
�� /
=
��0 10
"_contentFieldDisplayDriverResolver
��2 T
.
��T U#
GetDisplayModeDrivers
��U j
(
��j k)
contentPartFieldDefinition��k �
.��� �
FieldDefinition��� �
.��� �
Name��� �
,��� �*
contentPartFieldDefinition��� �
.��� �
DisplayMode��� �
(��� �
)��� �
)��� �
;��� �
foreach
�� 
(
��  !
var
��! $ 
fieldDisplayDriver
��% 7
in
��8 :!
fieldDisplayDrivers
��; N
)
��N O
{
�� 
try
�� 
{
�� 
var
��  #
result
��$ *
=
��+ ,
await
��- 2 
fieldDisplayDriver
��3 E
.
��E F
BuildDisplayAsync
��F W
(
��W X
part
��X \
,
��\ ](
contentPartFieldDefinition
��^ x
,
��x y(
contentTypePartDefinition��z �
,��� �
context��� �
)��� �
;��� �
if
��  "
(
��# $
result
��$ *
!=
��+ -
null
��. 2
)
��2 3
{
��  !
await
��$ )
result
��* 0
.
��0 1

ApplyAsync
��1 ;
(
��; <
context
��< C
)
��C D
;
��D E
}
��  !
}
�� 
catch
�� !
(
��" #
	Exception
��# ,
ex
��- /
)
��/ 0
{
�� 
InvokeExtensions
��  0
.
��0 1
HandleException
��1 @
(
��@ A
ex
��A C
,
��C D
_logger
��E L
,
��L M 
fieldDisplayDriver
��N `
.
��` a
GetType
��a h
(
��h i
)
��i j
.
��j k
Name
��k o
,
��o p
nameof
��q w
(
��w x 
BuildDisplayAsync��x �
)��� �
)��� �
;��� �
}
�� 
}
�� 
foreach
�� 
(
��  !
var
��! $
displayDriver
��% 2
in
��3 5"
_fieldDisplayDrivers
��6 J
)
��J K
{
�� 
try
�� 
{
�� 
var
��  #
result
��$ *
=
��+ ,
await
��- 2
displayDriver
��3 @
.
��@ A
BuildDisplayAsync
��A R
(
��R S
part
��S W
,
��W X(
contentPartFieldDefinition
��Y s
,
��s t(
contentTypePartDefinition��u �
,��� �
context��� �
)��� �
;��� �
if
��  "
(
��# $
result
��$ *
!=
��+ -
null
��. 2
)
��2 3
{
��  !
await
��$ )
result
��* 0
.
��0 1

ApplyAsync
��1 ;
(
��; <
context
��< C
)
��C D
;
��D E
}
��  !
}
�� 
catch
�� !
(
��" #
	Exception
��# ,
ex
��- /
)
��/ 0
{
�� 
InvokeExtensions
��  0
.
��0 1
HandleException
��1 @
(
��@ A
ex
��A C
,
��C D
_logger
��E L
,
��L M
displayDriver
��N [
.
��[ \
GetType
��\ c
(
��c d
)
��d e
.
��e f
Name
��f j
,
��j k
nameof
��l r
(
��r s 
BuildDisplayAsync��s �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
context
�� 
=
�� 
tempContext
�� )
;
��) *
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
BuildEditorAsync
�� *
(
��* +
ContentItem
��+ 6
contentItem
��7 B
,
��B C 
BuildEditorContext
��D V
context
��W ^
)
��^ _
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
��S T
contentItem
��T _
.
��_ `
ContentType
��` k
)
��k l
;
��l m
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
dynamic
�� 
contentShape
��  
=
��! "
context
��# *
.
��* +
Shape
��+ 0
;
��0 1
dynamic
�� 

partsShape
�� 
=
��  
await
��! &
context
��' .
.
��. /
ShapeFactory
��/ ;
.
��; <
CreateAsync
��< G
(
��G H
$str
��H U
,
��U V
	Arguments
�� 
.
�� 
From
�� 
(
�� 
new
�� "
{
�� 

Identifier
�� 
=
��  
contentItem
��! ,
.
��, -
ContentItemId
��- :
}
�� 
)
�� 
)
�� 
;
�� 
contentShape
�� 
.
�� 
Zones
�� 
[
�� 
$str
�� &
]
��& '
=
��( )

partsShape
��* 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
displayDriver
�� &
in
��' )
_displayDrivers
��* 9
)
��9 :
{
�� 
try
�� 
{
�� 
var
�� 
result
�� 
=
��  
await
��! &
displayDriver
��' 4
.
��4 5
BuildEditorAsync
��5 E
(
��E F
contentItem
��F Q
,
��Q R
context
��S Z
)
��Z [
;
��[ \
if
�� 
(
�� 
result
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
await
�� 
result
�� $
.
��$ %

ApplyAsync
��% /
(
��/ 0
context
��0 7
)
��7 8
;
��8 9
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
InvokeExtensions
�� $
.
��$ %
HandleException
��% 4
(
��4 5
ex
��5 7
,
��7 8
_logger
��9 @
,
��@ A
displayDriver
��B O
.
��O P
GetType
��P W
(
��W X
)
��X Y
.
��Y Z
Name
��Z ^
,
��^ _
nameof
��` f
(
��f g
BuildEditorAsync
��g w
)
��w x
)
��x y
;
��y z
}
�� 
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
�� 
partTypeName
��  
=
��! " 
typePartDefinition
��# 5
.
��5 6
PartDefinition
��6 D
.
��D E
Name
��E I
;
��I J
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
��D E
partTypeName
��E Q
)
��Q R
;
��R S
var
�� 
part
�� 
=
�� 
(
�� 
ContentPart
�� '
)
��' (
contentItem
��( 3
.
��3 4
Get
��4 7
(
��7 8
	activator
��8 A
.
��A B
Type
��B F
,
��F G 
typePartDefinition
��H Z
.
��Z [
Name
��[ _
)
��_ `
??
��a c
	activator
��d m
.
��m n
CreateInstance
��n |
(
��| }
)
��} ~
;
��~ 
part
�� 
.
�� 
ContentItem
��  
=
��! "
contentItem
��# .
;
��. /
dynamic
�� 
typePartShape
�� %
=
��& '
await
��( -
context
��. 5
.
��5 6
ShapeFactory
��6 B
.
��B C
CreateAsync
��C N
(
��N O
$str
��O a
)
��a b
;
��b c
typePartShape
�� 
.
�� 
ContentPart
�� )
=
��* +
part
��, 0
;
��0 1
typePartShape
�� 
.
�� '
ContentTypePartDefinition
�� 7
=
��8 9 
typePartDefinition
��: L
;
��L M
var
�� 
partPosition
��  
=
��! " 
typePartDefinition
��# 5
.
��5 6
GetSettings
��6 A
<
��A B%
ContentTypePartSettings
��B Y
>
��Y Z
(
��Z [
)
��[ \
.
��\ ]
Position
��] e
??
��f h
$str
��i q
;
��q r

partsShape
�� 
.
�� 
Add
�� 
(
�� 
typePartShape
�� ,
,
��, -
partPosition
��. :
)
��: ;
;
��; <

partsShape
�� 
[
��  
typePartDefinition
�� -
.
��- .
Name
��. 2
]
��2 3
=
��4 5
typePartShape
��6 C
;
��C D
context
�� 
.
�� 
DefaultZone
�� #
=
��$ %
$"
��& (
Parts.
��( .
{
��. / 
typePartDefinition
��/ A
.
��A B
Name
��B F
}
��F G
"
��G H
;
��H I
context
�� 
.
�� 
DefaultPosition
�� '
=
��( )
partPosition
��* 6
;
��6 7
var
��  
partDisplayDrivers
�� &
=
��' (/
!_contentPartDisplayDriverResolver
��) J
.
��J K
GetEditorDrivers
��K [
(
��[ \
partTypeName
��\ h
,
��h i 
typePartDefinition
��j |
.
��| }
Editor��} �
(��� �
)��� �
)��� �
;��� �
await
��  
partDisplayDrivers
�� (
.
��( )
InvokeAsync
��) 4
(
��4 5
async
��5 :
(
��; <
driver
��< B
,
��B C
part
��D H
,
��H I 
typePartDefinition
��J \
,
��\ ]
context
��^ e
)
��e f
=>
��g i
{
�� 
var
�� 
result
�� 
=
��  
await
��! &
driver
��' -
.
��- .
BuildEditorAsync
��. >
(
��> ?
part
��? C
,
��C D 
typePartDefinition
��E W
,
��W X
context
��Y `
)
��` a
;
��a b
if
�� 
(
�� 
result
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
await
�� 
result
�� $
.
��$ %

ApplyAsync
��% /
(
��/ 0
context
��0 7
)
��7 8
;
��8 9
}
�� 
}
�� 
,
�� 
part
�� 
,
��  
typePartDefinition
�� +
,
��+ ,
context
��- 4
,
��4 5
_logger
��6 =
)
��= >
;
��> ?
await
�� !
_partDisplayDrivers
�� )
.
��) *
InvokeAsync
��* 5
(
��5 6
async
��6 ;
(
��< =
driver
��= C
,
��C D
part
��E I
,
��I J 
typePartDefinition
��K ]
,
��] ^
context
��_ f
)
��f g
=>
��h j
{
�� 
var
�� 
result
�� 
=
��  
await
��! &
driver
��' -
.
��- .
BuildEditorAsync
��. >
(
��> ?
part
��? C
,
��C D 
typePartDefinition
��E W
,
��W X
context
��Y `
)
��` a
;
��a b
if
�� 
(
�� 
result
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
await
�� 
result
�� $
.
��$ %

ApplyAsync
��% /
(
��/ 0
context
��0 7
)
��7 8
;
��8 9
}
�� 
}
�� 
,
�� 
part
�� 
,
��  
typePartDefinition
�� +
,
��+ ,
context
��- 4
,
��4 5
_logger
��6 =
)
��= >
;
��> ?
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
��< =
var
�� 
fieldPosition
�� %
=
��& '!
partFieldDefinition
��( ;
.
��; <
GetSettings
��< G
<
��G H&
ContentPartFieldSettings
��H `
>
��` a
(
��a b
)
��b c
.
��c d
Position
��d l
??
��m o
$str
��p x
;
��x y
context
�� 
.
�� 
DefaultZone
�� '
=
��( )
$"
��* ,
Parts.
��, 2
{
��2 3 
typePartDefinition
��3 E
.
��E F
Name
��F J
}
��J K
:
��K L
{
��L M
fieldPosition
��M Z
}
��Z [
"
��[ \
;
��\ ]
var
�� !
fieldDisplayDrivers
�� +
=
��, -0
"_contentFieldDisplayDriverResolver
��. P
.
��P Q
GetEditorDrivers
��Q a
(
��a b!
partFieldDefinition
��b u
.
��u v
FieldDefinition��v �
.��� �
Name��� �
,��� �#
partFieldDefinition��� �
.��� �
Editor��� �
(��� �
)��� �
)��� �
;��� �
await
�� !
fieldDisplayDrivers
�� -
.
��- .
InvokeAsync
��. 9
(
��9 :
async
��: ?
(
��@ A
driver
��A G
,
��G H
part
��I M
,
��M N!
partFieldDefinition
��O b
,
��b c 
typePartDefinition
��d v
,
��v w
context
��x 
)�� �
=>��� �
{
�� 
var
�� 
result
�� "
=
��# $
await
��% *
driver
��+ 1
.
��1 2
BuildEditorAsync
��2 B
(
��B C
part
��C G
,
��G H!
partFieldDefinition
��I \
,
��\ ] 
typePartDefinition
��^ p
,
��p q
context
��r y
)
��y z
;
��z {
if
�� 
(
�� 
result
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
await
�� !
result
��" (
.
��( )

ApplyAsync
��) 3
(
��3 4
context
��4 ;
)
��; <
;
��< =
}
�� 
}
�� 
,
�� 
part
�� 
,
�� !
partFieldDefinition
�� 0
,
��0 1 
typePartDefinition
��2 D
,
��D E
context
��F M
,
��M N
_logger
��O V
)
��V W
;
��W X
await
�� "
_fieldDisplayDrivers
�� .
.
��. /
InvokeAsync
��/ :
(
��: ;
async
��; @
(
��A B
driver
��B H
,
��H I
part
��J N
,
��N O!
partFieldDefinition
��P c
,
��c d 
typePartDefinition
��e w
,
��w x
context��y �
)��� �
=>��� �
{
�� 
var
�� 
result
�� "
=
��# $
await
��% *
driver
��+ 1
.
��1 2
BuildEditorAsync
��2 B
(
��B C
part
��C G
,
��G H!
partFieldDefinition
��I \
,
��\ ] 
typePartDefinition
��^ p
,
��p q
context
��r y
)
��y z
;
��z {
if
�� 
(
�� 
result
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
await
�� !
result
��" (
.
��( )

ApplyAsync
��) 3
(
��3 4
context
��4 ;
)
��; <
;
��< =
}
�� 
}
�� 
,
�� 
part
�� 
,
�� !
partFieldDefinition
�� 0
,
��0 1 
typePartDefinition
��2 D
,
��D E
context
��F M
,
��M N
_logger
��O V
)
��V W
;
��W X
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
UpdateEditorAsync
�� +
(
��+ ,
ContentItem
��, 7
contentItem
��8 C
,
��C D!
UpdateEditorContext
��E X
context
��Y `
)
��` a
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
LoadTypeDefinition
��B T
(
��T U
contentItem
��U `
.
��` a
ContentType
��a l
)
��l m
;
��m n
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
dynamic
�� 
contentShape
��  
=
��! "
context
��# *
.
��* +
Shape
��+ 0
;
��0 1
dynamic
�� 

partsShape
�� 
=
��  
await
��! &
context
��' .
.
��. /
ShapeFactory
��/ ;
.
��; <
CreateAsync
��< G
(
��G H
$str
��H U
,
��U V
	Arguments
�� 
.
�� 
From
�� 
(
�� 
new
�� "
{
�� 

Identifier
�� 
=
��  
contentItem
��! ,
.
��, -
ContentItemId
��- :
}
�� 
)
�� 
)
�� 
;
�� 
contentShape
�� 
.
�� 
Zones
�� 
[
�� 
$str
�� &
]
��& '
=
��( )

partsShape
��* 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
displayDriver
�� &
in
��' )
_displayDrivers
��* 9
)
��9 :
{
�� 
try
�� 
{
�� 
var
�� 
result
�� 
=
��  
await
��! &
displayDriver
��' 4
.
��4 5
UpdateEditorAsync
��5 F
(
��F G
contentItem
��G R
,
��R S
context
��T [
)
��[ \
;
��\ ]
if
�� 
(
�� 
result
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
await
�� 
result
�� $
.
��$ %

ApplyAsync
��% /
(
��/ 0
context
��0 7
)
��7 8
;
��8 9
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
InvokeExtensions
�� $
.
��$ %
HandleException
��% 4
(
��4 5
ex
��5 7
,
��7 8
_logger
��9 @
,
��@ A
displayDriver
��B O
.
��O P
GetType
��P W
(
��W X
)
��X Y
.
��Y Z
Name
��Z ^
,
��^ _
nameof
��` f
(
��f g
UpdateEditorAsync
��g x
)
��x y
)
��y z
;
��z {
}
�� 
}
�� 
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
�� 
partTypeName
��  
=
��! " 
typePartDefinition
��# 5
.
��5 6
PartDefinition
��6 D
.
��D E
Name
��E I
;
��I J
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
��D E
partTypeName
��E Q
)
��Q R
;
��R S
var
�� 
part
�� 
=
�� 
(
�� 
ContentPart
�� '
)
��' (
contentItem
��( 3
.
��3 4
Get
��4 7
(
��7 8
	activator
��8 A
.
��A B
Type
��B F
,
��F G 
typePartDefinition
��H Z
.
��Z [
Name
��[ _
)
��_ `
??
��a c
	activator
��d m
.
��m n
CreateInstance
��n |
(
��| }
)
��} ~
;
��~ 
part
�� 
.
�� 
ContentItem
��  
=
��! "
contentItem
��# .
;
��. /
dynamic
�� 
typePartShape
�� %
=
��& '
await
��( -
context
��. 5
.
��5 6
ShapeFactory
��6 B
.
��B C
CreateAsync
��C N
(
��N O
$str
��O a
)
��a b
;
��b c
typePartShape
�� 
.
�� 
ContentPart
�� )
=
��* +
part
��, 0
;
��0 1
typePartShape
�� 
.
�� '
ContentTypePartDefinition
�� 7
=
��8 9 
typePartDefinition
��: L
;
��L M
var
�� 
partPosition
��  
=
��! " 
typePartDefinition
��# 5
.
��5 6
GetSettings
��6 A
<
��A B%
ContentTypePartSettings
��B Y
>
��Y Z
(
��Z [
)
��[ \
.
��\ ]
Position
��] e
??
��f h
$str
��i q
;
��q r

partsShape
�� 
.
�� 
Add
�� 
(
�� 
typePartShape
�� ,
,
��, -
partPosition
��. :
)
��: ;
;
��; <

partsShape
�� 
[
��  
typePartDefinition
�� -
.
��- .
Name
��. 2
]
��2 3
=
��4 5
typePartShape
��6 C
;
��C D
context
�� 
.
�� 
DefaultZone
�� #
=
��$ %
$"
��& (
Parts.
��( .
{
��. / 
typePartDefinition
��/ A
.
��A B
Name
��B F
}
��F G
:
��G H
{
��H I
partPosition
��I U
}
��U V
"
��V W
;
��W X
var
��  
partDisplayDrivers
�� &
=
��' (/
!_contentPartDisplayDriverResolver
��) J
.
��J K
GetEditorDrivers
��K [
(
��[ \
partTypeName
��\ h
,
��h i 
typePartDefinition
��j |
.
��| }
Editor��} �
(��� �
)��� �
)��� �
;��� �
await
��  
partDisplayDrivers
�� (
.
��( )
InvokeAsync
��) 4
(
��4 5
async
��5 :
(
��; <
driver
��< B
,
��B C
part
��D H
,
��H I 
typePartDefinition
��J \
,
��\ ]
context
��^ e
)
��e f
=>
��g i
{
�� 
var
�� 
result
�� 
=
��  
await
��! &
driver
��' -
.
��- .
UpdateEditorAsync
��. ?
(
��? @
part
��@ D
,
��D E 
typePartDefinition
��F X
,
��X Y
context
��Z a
)
��a b
;
��b c
if
�� 
(
�� 
result
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
await
�� 
result
�� $
.
��$ %

ApplyAsync
��% /
(
��/ 0
context
��0 7
)
��7 8
;
��8 9
}
�� 
}
�� 
,
�� 
part
�� 
,
��  
typePartDefinition
�� +
,
��+ ,
context
��- 4
,
��4 5
_logger
��6 =
)
��= >
;
��> ?
await
�� !
_partDisplayDrivers
�� )
.
��) *
InvokeAsync
��* 5
(
��5 6
async
��6 ;
(
��< =
driver
��= C
,
��C D
part
��E I
,
��I J 
typePartDefinition
��K ]
,
��] ^
context
��_ f
)
��f g
=>
��h j
{
�� 
var
�� 
result
�� 
=
��  
await
��! &
driver
��' -
.
��- .
UpdateEditorAsync
��. ?
(
��? @
part
��@ D
,
��D E 
typePartDefinition
��F X
,
��X Y
context
��Z a
)
��a b
;
��b c
if
�� 
(
�� 
result
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
await
�� 
result
�� $
.
��$ %

ApplyAsync
��% /
(
��/ 0
context
��0 7
)
��7 8
;
��8 9
}
�� 
}
�� 
,
�� 
part
�� 
,
��  
typePartDefinition
�� +
,
��+ ,
context
��- 4
,
��4 5
_logger
��6 =
)
��= >
;
��> ?
foreach
�� 
(
�� 
var
�� !
partFieldDefinition
�� 0
in
��1 3 
typePartDefinition
��4 F
.
��F G
PartDefinition
��G U
.
��U V
Fields
��V \
)
��\ ]
{
�� 
var
�� 
	fieldName
�� !
=
��" #!
partFieldDefinition
��$ 7
.
��7 8
Name
��8 <
;
��< =
var
�� 
fieldPosition
�� %
=
��& '!
partFieldDefinition
��( ;
.
��; <
GetSettings
��< G
<
��G H&
ContentPartFieldSettings
��H `
>
��` a
(
��a b
)
��b c
.
��c d
Position
��d l
??
��m o
$str
��p x
;
��x y
context
�� 
.
�� 
DefaultZone
�� '
=
��( )
$"
��* ,
Parts.
��, 2
{
��2 3 
typePartDefinition
��3 E
.
��E F
Name
��F J
}
��J K
:
��K L
{
��L M
fieldPosition
��M Z
}
��Z [
"
��[ \
;
��\ ]
var
�� !
fieldDisplayDrivers
�� +
=
��, -0
"_contentFieldDisplayDriverResolver
��. P
.
��P Q
GetEditorDrivers
��Q a
(
��a b!
partFieldDefinition
��b u
.
��u v
FieldDefinition��v �
.��� �
Name��� �
,��� �#
partFieldDefinition��� �
.��� �
Editor��� �
(��� �
)��� �
)��� �
;��� �
await
�� !
fieldDisplayDrivers
�� -
.
��- .
InvokeAsync
��. 9
(
��9 :
async
��: ?
(
��@ A
driver
��A G
,
��G H
part
��I M
,
��M N!
partFieldDefinition
��O b
,
��b c 
typePartDefinition
��d v
,
��v w
context
��x 
)�� �
=>��� �
{
�� 
var
�� 
result
�� "
=
��# $
await
��% *
driver
��+ 1
.
��1 2
UpdateEditorAsync
��2 C
(
��C D
part
��D H
,
��H I!
partFieldDefinition
��J ]
,
��] ^ 
typePartDefinition
��_ q
,
��q r
context
��s z
)
��z {
;
��{ |
if
�� 
(
�� 
result
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
await
�� !
result
��" (
.
��( )

ApplyAsync
��) 3
(
��3 4
context
��4 ;
)
��; <
;
��< =
}
�� 
}
�� 
,
�� 
part
�� 
,
�� !
partFieldDefinition
�� 0
,
��0 1 
typePartDefinition
��2 D
,
��D E
context
��F M
,
��M N
_logger
��O V
)
��V W
;
��W X
await
�� "
_fieldDisplayDrivers
�� .
.
��. /
InvokeAsync
��/ :
(
��: ;
async
��; @
(
��A B
driver
��B H
,
��H I
part
��J N
,
��N O!
partFieldDefinition
��P c
,
��c d 
typePartDefinition
��e w
,
��w x
context��y �
)��� �
=>��� �
{
�� 
var
�� 
result
�� "
=
��# $
await
��% *
driver
��+ 1
.
��1 2
UpdateEditorAsync
��2 C
(
��C D
part
��D H
,
��H I!
partFieldDefinition
��J ]
,
��] ^ 
typePartDefinition
��_ q
,
��q r
context
��s z
)
��z {
;
��{ |
if
�� 
(
�� 
result
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
await
�� !
result
��" (
.
��( )

ApplyAsync
��) 3
(
��3 4
context
��4 ;
)
��; <
;
��< =
}
�� 
}
�� 
,
�� 
part
�� 
,
�� !
partFieldDefinition
�� 0
,
��0 1 
typePartDefinition
��2 D
,
��D E
context
��F M
,
��M N
_logger
��O V
)
��V W
;
��W X
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartDisplayDriverOption.cs
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
} �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartDisplayDriverResolver.cs
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
DisplayDriverType	x �
)
� �
)
� �
;
� �
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
DisplayDriverType	11w �
)
11� �
)
11� �
;
11� �
}22 
}33 
}44 
return66 
services66 
;66 
}77 	
}88 
}99 ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartDisplayDriverTPart.cs
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
ContentPart	w �
,
� �
new
� �
(
� �
)
� �
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
IShape	} �
,
� �
Task
� �
>
� �
initializeAsync
� �
)
� �
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
OrdinalIgnoreCase	..p �
)
..� �
)
..� �
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
DisplayToken	~~{ �
}
~~� �
"
~~� �
)
~~� �
;
~~� �
} 
var
�� '
lastAlternatesOfNamedPart
�� 5
=
��6 7
new
��8 ;
List
��< @
<
��@ A
string
��A G
>
��G H
(
��H I
)
��I J
;
��J K
for
�� 
(
�� 
var
��  
i
��! "
=
��# $
$num
��% &
;
��& '
i
��( )
<
��* +
displayTypes
��, 8
.
��8 9
Length
��9 ?
;
��? @
i
��A B
++
��B D
)
��D E
{
�� 
var
�� 
displayType
��  +
=
��, -
displayTypes
��. :
[
��: ;
i
��; <
]
��< =
;
��= >
if
�� 
(
��  
hasDisplayMode
��  .
)
��. /
{
�� 
	shapeType
��  )
=
��* +
$"
��, .
{
��. /
partType
��/ 7
}
��7 8
__
��8 :
{
��: ;
displayMode
��; F
}
��F G
"
��G H
;
��H I
if
��  "
(
��# $
displayType
��$ /
==
��0 2
$str
��3 5
)
��5 6
{
��  !
displayType
��$ /
=
��0 1
DisplayToken
��2 >
;
��> ?
}
��  !
else
��  $
{
��  !
	shapeType
��$ -
+=
��. 0
DisplayToken
��1 =
;
��= >
}
��  !
}
�� 
ctx
�� 
.
��  
Shape
��  %
.
��% &
Metadata
��& .
.
��. /

Alternates
��/ 9
.
��9 :
Add
��: =
(
��= >
$"
��> @
{
��@ A
contentType
��A L
}
��L M
{
��M N
displayType
��N Y
}
��Y Z
__
��Z \
{
��\ ]
partType
��] e
}
��e f
__
��f h
{
��h i
	shapeType
��i r
}
��r s
"
��s t
)
��t u
;
��u v
if
�� 
(
��  
!
��  !
String
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6

stereotype
��6 @
)
��@ A
)
��A B
{
�� 
ctx
��  #
.
��# $
Shape
��$ )
.
��) *
Metadata
��* 2
.
��2 3

Alternates
��3 =
.
��= >
Add
��> A
(
��A B
$"
��B D
{
��D E

stereotype
��E O
}
��O P
{
��P Q
displayType
��Q \
}
��\ ]
__
��] _
{
��_ `
partType
��` h
}
��h i
__
��i k
{
��k l
	shapeType
��l u
}
��u v
"
��v w
)
��w x
;
��x y
}
�� 
if
�� 
(
��  
partType
��  (
!=
��) +
partName
��, 4
)
��4 5
{
�� '
lastAlternatesOfNamedPart
��  9
.
��9 :
Add
��: =
(
��= >
$"
��> @
{
��@ A
contentType
��A L
}
��L M
{
��M N
displayType
��N Y
}
��Y Z
__
��Z \
{
��\ ]
partName
��] e
}
��e f
__
��f h
{
��h i
	shapeType
��i r
}
��r s
"
��s t
)
��t u
;
��u v
if
��  "
(
��# $
!
��$ %
String
��% +
.
��+ ,
IsNullOrEmpty
��, 9
(
��9 :

stereotype
��: D
)
��D E
)
��E F
{
��  !'
lastAlternatesOfNamedPart
��$ =
.
��= >
Add
��> A
(
��A B
$"
��B D
{
��D E

stereotype
��E O
}
��O P
{
��P Q
displayType
��Q \
}
��\ ]
__
��] _
{
��_ `
partName
��` h
}
��h i
__
��i k
{
��k l
	shapeType
��l u
}
��u v
"
��v w
)
��w x
;
��x y
}
��  !
}
�� 
}
�� 
ctx
�� 
.
�� 
Shape
�� !
.
��! "
Metadata
��" *
.
��* +

Alternates
��+ 5
.
��5 6
AddRange
��6 >
(
��> ?'
lastAlternatesOfNamedPart
��? X
)
��X Y
;
��Y Z
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
�� 
result
�� 
;
�� 
}
�� 	
async
�� 
Task
�� 
<
�� 
IDisplayResult
�� !
>
��! "'
IContentPartDisplayDriver
��# <
.
��< =
BuildDisplayAsync
��= N
(
��N O
ContentPart
��O Z
contentPart
��[ f
,
��f g(
ContentTypePartDefinition��h �"
typePartDefinition��� �
,��� �#
BuildDisplayContext��� �
context��� �
)��� �
{
�� 	
var
�� 
part
�� 
=
�� 
contentPart
�� "
as
��# %
TPart
��& +
;
��+ ,
if
�� 
(
�� 
part
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
using
�� 
(
�� 
BuildPrefix
�� 
(
��  
typePartDefinition
�� 1
,
��1 2
context
��3 :
.
��: ;
HtmlFieldPrefix
��; J
)
��J K
)
��K L
{
�� !
_typePartDefinition
�� #
=
��$ % 
typePartDefinition
��& 8
;
��8 9
var
�� !
buildDisplayContext
�� '
=
��( )
new
��* -%
BuildPartDisplayContext
��. E
(
��E F 
typePartDefinition
��F X
,
��X Y
context
��Z a
)
��a b
;
��b c
var
�� 
result
�� 
=
�� 
await
�� "
DisplayAsync
��# /
(
��/ 0
part
��0 4
,
��4 5!
buildDisplayContext
��6 I
)
��I J
;
��J K!
_typePartDefinition
�� #
=
��$ %
null
��& *
;
��* +
return
�� 
result
�� 
;
�� 
}
�� 
}
�� 	
async
�� 
Task
�� 
<
�� 
IDisplayResult
�� !
>
��! "'
IContentPartDisplayDriver
��# <
.
��< =
BuildEditorAsync
��= M
(
��M N
ContentPart
��N Y
contentPart
��Z e
,
��e f(
ContentTypePartDefinition��g �"
typePartDefinition��� �
,��� �"
BuildEditorContext��� �
context��� �
)��� �
{
�� 	
var
�� 
part
�� 
=
�� 
contentPart
�� "
as
��# %
TPart
��& +
;
��+ ,
if
�� 
(
�� 
part
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
using
�� 
(
�� 
BuildPrefix
�� 
(
��  
typePartDefinition
�� 1
,
��1 2
context
��3 :
.
��: ;
HtmlFieldPrefix
��; J
)
��J K
)
��K L
{
�� !
_typePartDefinition
�� #
=
��$ % 
typePartDefinition
��& 8
;
��8 9
var
��  
buildEditorContext
�� &
=
��' (
new
��) ,$
BuildPartEditorContext
��- C
(
��C D 
typePartDefinition
��D V
,
��V W
context
��X _
)
��_ `
;
��` a
var
�� 
result
�� 
=
�� 
await
�� "
	EditAsync
��# ,
(
��, -
part
��- 1
,
��1 2 
buildEditorContext
��3 E
)
��E F
;
��F G!
_typePartDefinition
�� #
=
��$ %
null
��& *
;
��* +
return
�� 
result
�� 
;
�� 
}
�� 
}
�� 	
async
�� 
Task
�� 
<
�� 
IDisplayResult
�� !
>
��! "'
IContentPartDisplayDriver
��# <
.
��< =
UpdateEditorAsync
��= N
(
��N O
ContentPart
��O Z
contentPart
��[ f
,
��f g(
ContentTypePartDefinition��h �"
typePartDefinition��� �
,��� �#
UpdateEditorContext��� �
context��� �
)��� �
{
�� 	
var
�� 
part
�� 
=
�� 
contentPart
�� "
as
��# %
TPart
��& +
;
��+ ,
if
�� 
(
�� 
part
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
using
�� 
(
�� 
BuildPrefix
�� 
(
��  
typePartDefinition
�� 1
,
��1 2
context
��3 :
.
��: ;
HtmlFieldPrefix
��; J
)
��J K
)
��K L
{
�� 
var
�� !
updateEditorContext
�� '
=
��( )
new
��* -%
UpdatePartEditorContext
��. E
(
��E F 
typePartDefinition
��F X
,
��X Y
context
��Z a
)
��a b
;
��b c!
_typePartDefinition
�� #
=
��$ % 
typePartDefinition
��& 8
;
��8 9
var
�� 
result
�� 
=
�� 
await
�� "
UpdateAsync
��# .
(
��. /
part
��/ 3
,
��3 4
context
��5 <
.
��< =
Updater
��= D
,
��D E!
updateEditorContext
��F Y
)
��Y Z
;
��Z [
part
�� 
.
�� 
ContentItem
��  
.
��  !
Apply
��! &
(
��& ' 
typePartDefinition
��' 9
.
��9 :
Name
��: >
,
��> ?
part
��@ D
)
��D E
;
��E F!
_typePartDefinition
�� #
=
��$ %
null
��& *
;
��* +
return
�� 
result
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
IDisplayResult
�� *
>
��* +
DisplayAsync
��, 8
(
��8 9
TPart
��9 >
part
��? C
,
��C D%
BuildPartDisplayContext
��E \
context
��] d
)
��d e
{
�� 	
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
Display
��# *
(
��* +
part
��+ /
,
��/ 0
context
��1 8
)
��8 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
virtual
�� 
IDisplayResult
�� %
Display
��& -
(
��- .
TPart
��. 3
part
��4 8
,
��8 9%
BuildPartDisplayContext
��: Q
context
��R Y
)
��Y Z
{
�� 	
return
�� 
Display
�� 
(
�� 
part
�� 
)
��  
;
��  !
}
�� 	
public
�� 
virtual
�� 
IDisplayResult
�� %
Display
��& -
(
��- .
TPart
��. 3
part
��4 8
)
��8 9
{
�� 	
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
IDisplayResult
�� *
>
��* +
	EditAsync
��, 5
(
��5 6
TPart
��6 ;
part
��< @
,
��@ A$
BuildPartEditorContext
��B X
context
��Y `
)
��` a
{
�� 	
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
Edit
��# '
(
��' (
part
��( ,
,
��, -
context
��. 5
)
��5 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
virtual
�� 
IDisplayResult
�� %
Edit
��& *
(
��* +
TPart
��+ 0
part
��1 5
,
��5 6$
BuildPartEditorContext
��7 M
context
��N U
)
��U V
{
�� 	
return
�� 
Edit
�� 
(
�� 
part
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
IDisplayResult
�� %
Edit
��& *
(
��* +
TPart
��+ 0
part
��1 5
)
��5 6
{
�� 	
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
IDisplayResult
�� *
>
��* +
UpdateAsync
��, 7
(
��7 8
TPart
��8 =
part
��> B
,
��B C
IUpdateModel
��D P
updater
��Q X
,
��X Y%
UpdatePartEditorContext
��Z q
context
��r y
)
��y z
{
�� 	
return
�� 
UpdateAsync
�� 
(
�� 
part
�� #
,
��# $
context
��% ,
)
��, -
;
��- .
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
IDisplayResult
�� *
>
��* +
UpdateAsync
��, 7
(
��7 8
TPart
��8 =
part
��> B
,
��B C%
UpdatePartEditorContext
��D [
context
��\ c
)
��c d
{
�� 	
return
�� 
UpdateAsync
�� 
(
�� 
part
�� #
,
��# $
context
��% ,
.
��, -
Updater
��- 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
IDisplayResult
�� *
>
��* +
UpdateAsync
��, 7
(
��7 8
TPart
��8 =
part
��> B
,
��B C
IUpdateModel
��D P
updater
��Q X
)
��X Y
{
�� 	
return
�� 
Task
�� 
.
�� 

FromResult
�� "
<
��" #
IDisplayResult
��# 1
>
��1 2
(
��2 3
null
��3 7
)
��7 8
;
��8 9
}
�� 	
	protected
�� 
string
��  
GetEditorShapeType
�� +
(
��+ ,
string
��, 2
	shapeType
��3 <
,
��< ='
ContentTypePartDefinition
��> W 
typePartDefinition
��X j
)
��j k
{
�� 	
var
�� 
editor
�� 
=
��  
typePartDefinition
�� +
.
��+ ,
Editor
��, 2
(
��2 3
)
��3 4
;
��4 5
return
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
editor
��) /
)
��/ 0
?
�� 
	shapeType
�� 
+
�� 
$str
�� "
+
��# $
editor
��% +
:
�� 
	shapeType
�� 
;
�� 
}
�� 	
	protected
�� 
string
��  
GetEditorShapeType
�� +
(
��+ ,
string
��, 2
	shapeType
��3 <
,
��< =$
BuildPartEditorContext
��> T
context
��U \
)
��\ ]
{
�� 	
return
��  
GetEditorShapeType
�� %
(
��% &
	shapeType
��& /
,
��/ 0
context
��1 8
.
��8 9 
TypePartDefinition
��9 K
)
��K L
;
��L M
}
�� 	
	protected
�� 
string
��  
GetEditorShapeType
�� +
(
��+ ,'
ContentTypePartDefinition
��, E 
typePartDefinition
��F X
)
��X Y
{
�� 	
return
��  
GetEditorShapeType
�� %
(
��% &
typeof
��& ,
(
��, -
TPart
��- 2
)
��2 3
.
��3 4
Name
��4 8
+
��9 :
$str
��; B
,
��B C 
typePartDefinition
��D V
)
��V W
;
��W X
}
�� 	
	protected
�� 
string
��  
GetEditorShapeType
�� +
(
��+ ,$
BuildPartEditorContext
��, B
context
��C J
)
��J K
{
�� 	
return
��  
GetEditorShapeType
�� %
(
��% &
context
��& -
.
��- . 
TypePartDefinition
��. @
)
��@ A
;
��A B
}
�� 	
	protected
�� 
string
�� !
GetDisplayShapeType
�� ,
(
��, -
string
��- 3
	shapeType
��4 =
,
��= >%
BuildPartDisplayContext
��? V
context
��W ^
)
��^ _
{
�� 	
var
�� 
displayMode
�� 
=
�� 
context
�� %
.
��% & 
TypePartDefinition
��& 8
.
��8 9
DisplayMode
��9 D
(
��D E
)
��E F
;
��F G
return
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
displayMode
��) 4
)
��4 5
?
�� 
	shapeType
�� 
+
�� 
DisplaySeparator
�� .
+
��/ 0
displayMode
��1 <
:
�� 
	shapeType
�� 
;
�� 
}
�� 	
	protected
�� 
string
�� !
GetDisplayShapeType
�� ,
(
��, -%
BuildPartDisplayContext
��- D
context
��E L
)
��L M
{
�� 	
return
�� !
GetDisplayShapeType
�� &
(
��& '
typeof
��' -
(
��- .
TPart
��. 3
)
��3 4
.
��4 5
Name
��5 9
,
��9 :
context
��; B
)
��B C
;
��C D
}
�� 	
private
�� 

TempPrefix
�� 
BuildPrefix
�� &
(
��& ''
ContentTypePartDefinition
��' @ 
typePartDefinition
��A S
,
��S T
string
��U [
htmlFieldPrefix
��\ k
)
��k l
{
�� 	
var
�� 

tempPrefix
�� 
=
�� 
new
��  

TempPrefix
��! +
(
��+ ,
this
��, 0
,
��0 1
Prefix
��2 8
)
��8 9
;
��9 :
Prefix
�� 
=
��  
typePartDefinition
�� '
.
��' (
Name
��( ,
;
��, -
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
htmlFieldPrefix
��& 5
)
��5 6
)
��6 7
{
�� 
Prefix
�� 
=
�� 
htmlFieldPrefix
�� (
+
��) *
$str
��+ .
+
��/ 0
Prefix
��1 7
;
��7 8
}
�� 
return
�� 

tempPrefix
�� 
;
�� 
}
�� 	
private
�� 
class
�� 

TempPrefix
��  
:
��! "
IDisposable
��# .
{
�� 	
private
�� 
readonly
�� &
ContentPartDisplayDriver
�� 5
<
��5 6
TPart
��6 ;
>
��; <
_driver
��= D
;
��D E
private
�� 
readonly
�� 
string
�� #
_originalPrefix
��$ 3
;
��3 4
public
�� 

TempPrefix
�� 
(
�� &
ContentPartDisplayDriver
�� 6
<
��6 7
TPart
��7 <
>
��< =
driver
��> D
,
��D E
string
��F L
originalPrefix
��M [
)
��[ \
{
�� 
_driver
�� 
=
�� 
driver
��  
;
��  !
_originalPrefix
�� 
=
��  !
originalPrefix
��" 0
;
��0 1
}
�� 
public
�� 
void
�� 
Dispose
�� 
(
��  
)
��  !
{
�� 
_driver
�� 
.
�� 
Prefix
�� 
=
��  
_originalPrefix
��! 0
;
��0 1
}
�� 
}
�� 	
}
�� 
}�� �+
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartDisplayOption.cs
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
=>	 �
d
� �
.
� �
DisplayMode
� �
!=
� �
null
� �
)
� �
.
� �
ToList
� �
(
� �
)
� �
;
� �
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
� �
.
� �
Editor
� �
!=
� �
null
� �
)
� �
.
� �
ToList
� �
(
� �
)
� �
;
� �
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
}99 �P
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\ContentPartServiceCollectionExtensions.cs
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
builder	y �
)
� �
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
partDisplayDriverType	l �
)
� �
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
builder	""| �
)
""� �
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
partDisplayDriverType	++o �
)
++� �
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
)	GG �
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
QQ� �
<
QQ� �
string
QQ� �
,
QQ� �
bool
QQ� �
>
QQ� �
	predicate
QQ� �
)
QQ� �
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
,	\\ �
Func
\\� �
<
\\� �
string
\\� �
,
\\� �
bool
\\� �
>
\\� �
	predicate
\\� �
)
\\� �
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
�� 
static
�� &
ContentPartOptionBuilder
�� .
	ForEditor
��/ 8
<
��8 9'
TContentPartDisplayDriver
��9 R
>
��R S
(
��S T
this
��T X&
ContentPartOptionBuilder
��Y q
builder
��r y
,
��y z
Func
��{ 
<�� �
string��� �
,��� �
bool��� �
>��� �
	predicate��� �
)��� �
where
�� '
TContentPartDisplayDriver
�� +
:
��, -
class
��. 3
,
��3 4'
IContentPartDisplayDriver
��5 N
{
�� 	
return
�� 
builder
�� 
.
�� 
	ForEditor
�� $
(
��$ %
typeof
��% +
(
��+ ,'
TContentPartDisplayDriver
��, E
)
��E F
,
��F G
	predicate
��H Q
)
��Q R
;
��R S
}
�� 	
public
�� 
static
�� &
ContentPartOptionBuilder
�� .
	ForEditor
��/ 8
(
��8 9
this
��9 =&
ContentPartOptionBuilder
��> V
builder
��W ^
,
��^ _
Type
��` d#
partDisplayDriverType
��e z
,
��z {
Func��| �
<��� �
string��� �
,��� �
bool��� �
>��� �
	predicate��� �
)��� �
{
�� 	
builder
�� 
.
�� 
Services
�� 
.
�� 
	Configure
�� &
<
��& '#
ContentDisplayOptions
��' <
>
��< =
(
��= >
o
��> ?
=>
��@ B
{
�� 
o
�� 
.
�� "
ForContentPartEditor
�� &
(
��& '
builder
��' .
.
��. /
ContentPartType
��/ >
,
��> ?#
partDisplayDriverType
��@ U
,
��U V
	predicate
��W `
)
��` a
;
��a b
}
�� 
)
�� 
;
�� 
builder
�� 
.
�� 
Services
�� 
.
�� 
TryAddScoped
�� )
(
��) *#
partDisplayDriverType
��* ?
)
��? @
;
��@ A
return
�� 
builder
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentDisplayDriver.cs
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
UpdateEditorContext	r �
>
� �
{ 
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentDisplayHandler.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentFieldDisplayDriver.cs
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
x � 
typePartDefinition


� �
,


� �!
BuildDisplayContext


� �
context


� �
)


� �
;


� �
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
ContentTypePartDefinition	w � 
typePartDefinition
� �
,
� � 
BuildEditorContext
� �
context
� �
)
� �
;
� �
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
ContentTypePartDefinition	x � 
typePartDefinition
� �
,
� �!
UpdateEditorContext
� �
context
� �
)
� �
;
� �
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentFieldDisplayDriverResolver.cs
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
 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentPartDisplayDriver.cs
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
v �
context


� �
)


� �
;


� �
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
BuildEditorContext	u �
context
� �
)
� �
;
� �
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
UpdateEditorContext	v �
context
� �
)
� �
;
� �
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentDisplay\IContentPartDisplayDriverResolver.cs
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
 ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ContentItemDisplayManager.cs
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
groupId	88~ �
)
88� �
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
contentItem	``| �
,
``� �
context
``� �
,
``� �
_logger
``� �
)
``� �
;
``� �
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
string	ee~ �
htmlFieldPrefix
ee� �
)
ee� �
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
�� &
ModelStateWrapperUpdater
�� ,
(
��, -
updater
��- 4
)
��4 5
)
�� 
;
�� 
await
��  
BindPlacementAsync
�� $
(
��$ %
context
��% ,
)
��, -
;
��- .
await
�� 
	_handlers
�� 
.
�� 
InvokeAsync
�� '
(
��' (
(
��( )
handler
��) 0
,
��0 1
contentItem
��2 =
,
��= >
context
��? F
)
��F G
=>
��H J
handler
��K R
.
��R S
BuildEditorAsync
��S c
(
��c d
contentItem
��d o
,
��o p
context
��q x
)
��x y
,
��y z
contentItem��{ �
,��� �
context��� �
,��� �
_logger��� �
)��� �
;��� �
return
�� 
context
�� 
.
�� 
Shape
��  
;
��  !
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IShape
��  
>
��  !
UpdateEditorAsync
��" 3
(
��3 4
ContentItem
��4 ?
contentItem
��@ K
,
��K L
IUpdateModel
��M Y
updater
��Z a
,
��a b
bool
��c g
isNew
��h m
,
��m n
string
��o u
groupId
��v }
,
��} ~
string�� �
htmlFieldPrefix��� �
)��� �
{
�� 	
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
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
contentItem
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
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
LoadTypeDefinition
��B T
(
��T U
contentItem
��U `
.
��` a
ContentType
��a l
)
��l m
;
��m n
var
�� 

stereotype
�� 
=
�� #
contentTypeDefinition
�� 2
.
��2 3
GetSettings
��3 >
<
��> ?!
ContentTypeSettings
��? R
>
��R S
(
��S T
)
��T U
.
��U V

Stereotype
��V `
;
��` a
var
�� 
actualShapeType
�� 
=
��  !
(
��" #

stereotype
��# -
??
��. 0
$str
��1 :
)
��: ;
+
��< =
$str
��> E
;
��E F
dynamic
�� 
	itemShape
�� 
=
�� 
await
��  %%
CreateContentShapeAsync
��& =
(
��= >
actualShapeType
��> M
)
��M N
;
��N O
	itemShape
�� 
.
�� 
ContentItem
�� !
=
��" #
contentItem
��$ /
;
��/ 0
	itemShape
�� 
.
�� 

Stereotype
��  
=
��! "

stereotype
��# -
;
��- .
(
�� 
(
�� 
IShape
�� 
)
�� 
	itemShape
�� 
)
�� 
.
��  
Metadata
��  (
.
��( )

Alternates
��) 3
.
��3 4
Add
��4 7
(
��7 8
actualShapeType
��8 G
+
��H I
$str
��J N
+
��O P
contentItem
��Q \
.
��\ ]
ContentType
��] h
)
��h i
;
��i j
var
�� 
context
�� 
=
�� 
new
�� !
UpdateEditorContext
�� 1
(
��1 2
	itemShape
�� 
,
�� 
groupId
�� 
,
�� 
isNew
�� 
,
�� 
htmlFieldPrefix
�� 
,
��  
_shapeFactory
�� 
,
�� 
await
�� 
_layoutAccessor
�� %
.
��% &
GetLayoutAsync
��& 4
(
��4 5
)
��5 6
,
��6 7
new
�� &
ModelStateWrapperUpdater
�� ,
(
��, -
updater
��- 4
)
��4 5
)
�� 
;
�� 
await
��  
BindPlacementAsync
�� $
(
��$ %
context
��% ,
)
��, -
;
��- .
var
�� "
updateContentContext
�� $
=
��% &
new
��' *"
UpdateContentContext
��+ ?
(
��? @
contentItem
��@ K
)
��K L
;
��L M
await
�� 
_contentHandlers
�� "
.
��" #
InvokeAsync
��# .
(
��. /
(
��/ 0
handler
��0 7
,
��7 8"
updateContentContext
��9 M
)
��M N
=>
��O Q
handler
��R Y
.
��Y Z
UpdatingAsync
��Z g
(
��g h"
updateContentContext
��h |
)
��| }
,
��} ~#
updateContentContext�� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
	_handlers
�� 
.
�� 
InvokeAsync
�� '
(
��' (
(
��( )
handler
��) 0
,
��0 1
contentItem
��2 =
,
��= >
context
��? F
)
��F G
=>
��H J
handler
��K R
.
��R S
UpdateEditorAsync
��S d
(
��d e
contentItem
��e p
,
��p q
context
��r y
)
��y z
,
��z {
contentItem��| �
,��� �
context��� �
,��� �
_logger��� �
)��� �
;��� �
await
�� 
_contentHandlers
�� "
.
��" #
Reverse
��# *
(
��* +
)
��+ ,
.
��, -
InvokeAsync
��- 8
(
��8 9
(
��9 :
handler
��: A
,
��A B"
updateContentContext
��C W
)
��W X
=>
��Y [
handler
��\ c
.
��c d
UpdatedAsync
��d p
(
��p q#
updateContentContext��q �
)��� �
,��� �$
updateContentContext��� �
,��� �
_logger��� �
)��� �
;��� �
return
�� 
context
�� 
.
�� 
Shape
��  
;
��  !
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\IContentItemDisplayManager.cs
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
;	 �
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
htmlFieldPrefix	y �
=
� �
$str
� �
)
� �
;
� �
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
htmlFieldPrefix	z �
=
� �
$str
� �
)
� �
;
� �
} 
} �*
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Liquid\ConsoleLogFilter.cs
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
}AA �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\BuildFieldDisplayContext.cs
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
ContentPartFieldDefinition	o �!
partFieldDefinition
� �
,
� �!
BuildDisplayContext
� �
context
� �
)
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\BuildFieldEditorContext.cs
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
ContentPartFieldDefinition	n �!
partFieldDefinition
� �
,
� � 
BuildEditorContext
� �
context
� �
)
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\BuildPartDisplayContext.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\BuildPartEditorContext.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\UpdateFieldEditorContext.cs
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
ContentPartFieldDefinition	o �!
partFieldDefinition
� �
,
� �!
UpdateEditorContext
� �
context
� �
)
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Models\UpdatePartEditorContext.cs
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
} �=
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Placement\ContentPlacementNodeFilterProviders.cs
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
GetStereotype	??v �
(
??� �
context
??� �
)
??� �
??
??� �
$str
??� �
)
??� �
.
??� �

StartsWith
??� �
(
??� �
prefix
??� �
,
??� �
StringComparison
??� �
.
??� �
OrdinalIgnoreCase
??� �
)
??� �
;
??� �
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
}bb �M
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\Razor\OrchardRazorHelperExtensions.cs
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
string	~ �
displayType
� �
=
� �
$str
� �
,
� �
string
� �
groupId
� �
=
� �
$str
� �
,
� �
IUpdateModel
� �
updater
� �
=
� �
null
� �
)
� �
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
}YY �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ServiceCollectionExtensions.cs
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
ContentItemDisplayCoordinator	c �
)
� �
,
� �
ServiceLifetime
� �
.
� �
Scoped
� �
)
� �
)
� �
;
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ViewModels\ContentItemViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Display\ViewModels\ContentPartViewModel.cs
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