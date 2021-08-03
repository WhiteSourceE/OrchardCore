�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentElement.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
ContentElement 
:  !
IContent" *
{ 
private 

Dictionary 
< 
string !
,! "
ContentElement# 1
>1 2
	_elements3 <
;< =
	protected 
ContentElement  
(  !
)! "
:# $
this% )
() *
new* -
JObject. 5
(5 6
)6 7
)7 8
{ 	
} 	
	protected 
ContentElement  
(  !
JObject! (
data) -
)- .
{ 	
Data 
= 
data 
; 
} 	
[ 	

JsonIgnore	 
] 
	protected 
internal 

Dictionary %
<% &
string& ,
,, -
ContentElement. <
>< =
Elements> F
=>G I
	_elementsJ S
=T U
	_elementsV _
??` b
newc f

Dictionaryg q
<q r
stringr x
,x y
ContentElement	z �
>
� �
(
� �
)
� �
;
� �
[ 	

JsonIgnore	 
] 
public 
dynamic 
Content 
{  
get! $
{% &
return' -
Data. 2
;2 3
}4 5
}6 7
[ 	

JsonIgnore	 
] 
internal 
JObject 
Data 
{ 
get  #
;# $
set% (
;( )
}* +
[!! 	

JsonIgnore!!	 
]!! 
public"" 
ContentItem"" 
ContentItem"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
public(( 
bool(( 
Has(( 
((( 
string(( 
name(( #
)((# $
{)) 	
return** 
Data** 
.** 
ContainsKey** #
(**# $
name**$ (
)**( )
;**) *
}++ 	
},, 
}-- ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

static 
class 
ContentExtensions )
{		 
public

 
const

 
string

 "
WeldedPartSettingsName

 2
=

3 4
$str

5 J
;

J K
private 
static 
readonly 
JsonMergeSettings  1
JsonMergeSettings2 C
=D E
newF I
JsonMergeSettingsJ [
{\ ]
MergeArrayHandling^ p
=q r
MergeArrayHandling	s �
.
� �
Replace
� �
,
� �$
MergeNullValueHandling
� �
=
� �$
MergeNullValueHandling
� �
.
� �
Merge
� �
}
� �
;
� �
public 
static 
TElement 
Get "
<" #
TElement# +
>+ ,
(, -
this- 1
ContentElement2 @
contentElementA O
,O P
stringQ W
nameX \
)\ ]
where^ c
TElementd l
:m n
ContentElemento }
{ 	
return 
( 
TElement 
) 
contentElement +
.+ ,
Get, /
(/ 0
typeof0 6
(6 7
TElement7 ?
)? @
,@ A
nameB F
)F G
;G H
} 	
public"" 
static"" 
bool"" 
Has"" 
<"" 
TElement"" '
>""' (
(""( )
this"") -
ContentElement"". <
contentElement""= K
)""K L
where""M R
TElement""S [
:""\ ]
ContentElement""^ l
{## 	
return$$ 
contentElement$$ !
.$$! "
Has$$" %
($$% &
typeof$$& ,
($$, -
TElement$$- 5
)$$5 6
.$$6 7
Name$$7 ;
)$$; <
;$$< =
}%% 	
public.. 
static.. 
ContentElement.. $
Get..% (
(..( )
this..) -
ContentElement... <
contentElement..= K
,..K L
Type..M Q
contentElementType..R d
,..d e
string..f l
name..m q
)..q r
{// 	
if00 
(00 
contentElement00 
.00 
Elements00 '
.00' (
TryGetValue00( 3
(003 4
name004 8
,008 9
out00: =
var00> A
element00B I
)00I J
)00J K
{11 
return22 
element22 
;22 
}33 
var55 
elementData55 
=55 
contentElement55 ,
.55, -
Data55- 1
[551 2
name552 6
]556 7
as558 :
JObject55; B
;55B C
if77 
(77 
elementData77 
==77 
null77 #
)77# $
{88 
return99 
null99 
;99 
}:: 
var<< 
result<< 
=<< 
(<< 
ContentElement<< (
)<<( )
elementData<<) 4
.<<4 5
ToObject<<5 =
(<<= >
contentElementType<<> P
)<<P Q
;<<Q R
result== 
.== 
Data== 
=== 
elementData== %
;==% &
result>> 
.>> 
ContentItem>> 
=>>  
contentElement>>! /
.>>/ 0
ContentItem>>0 ;
;>>; <
contentElement@@ 
.@@ 
Elements@@ #
[@@# $
name@@$ (
]@@( )
=@@* +
result@@, 2
;@@2 3
returnBB 
resultBB 
;BB 
}CC 	
publicKK 
staticKK 
boolKK 
RemoveKK !
(KK! "
thisKK" &
ContentElementKK' 5
contentElementKK6 D
,KKD E
stringKKF L
nameKKM Q
)KKQ R
{LL 	
contentElementMM 
.MM 
ElementsMM #
.MM# $
RemoveMM$ *
(MM* +
nameMM+ /
)MM/ 0
;MM0 1
returnNN 
contentElementNN !
.NN! "
DataNN" &
.NN& '
RemoveNN' -
(NN- .
nameNN. 2
)NN2 3
;NN3 4
}OO 	
publicXX 
staticXX 
TElementXX 
GetOrCreateXX *
<XX* +
TElementXX+ 3
>XX3 4
(XX4 5
thisXX5 9
ContentElementXX: H
contentElementXXI W
,XXW X
stringXXY _
nameXX` d
)XXd e
whereXXf k
TElementXXl t
:XXu v
ContentElement	XXw �
,
XX� �
new
XX� �
(
XX� �
)
XX� �
{YY 	
varZZ 
existingZZ 
=ZZ 
contentElementZZ )
.ZZ) *
GetZZ* -
<ZZ- .
TElementZZ. 6
>ZZ6 7
(ZZ7 8
nameZZ8 <
)ZZ< =
;ZZ= >
if\\ 
(\\ 
existing\\ 
==\\ 
null\\  
)\\  !
{]] 
var^^ 

newElement^^ 
=^^  
new^^! $
TElement^^% -
(^^- .
)^^. /
;^^/ 0

newElement__ 
.__ 
ContentItem__ &
=__' (
contentElement__) 7
.__7 8
ContentItem__8 C
;__C D
contentElement`` 
.`` 
Data`` #
[``# $
name``$ (
]``( )
=``* +

newElement``, 6
.``6 7
Data``7 ;
;``; <
contentElementaa 
.aa 
Elementsaa '
[aa' (
nameaa( ,
]aa, -
=aa. /

newElementaa0 :
;aa: ;
returnbb 

newElementbb !
;bb! "
}cc 
returnee 
existingee 
;ee 
}ff 	
publicoo 
staticoo 
ContentElementoo $
Weldoo% )
(oo) *
thisoo* .
ContentElementoo/ =
contentElementoo> L
,ooL M
stringooN T
nameooU Y
,ooY Z
ContentElementoo[ i
elementooj q
)ooq r
{pp 	
ifqq 
(qq 
!qq 
contentElementqq 
.qq  
Dataqq  $
.qq$ %
ContainsKeyqq% 0
(qq0 1
nameqq1 5
)qq5 6
)qq6 7
{rr 
elementss 
.ss 
Datass 
=ss 
JObjectss &
.ss& '

FromObjectss' 1
(ss1 2
elementss2 9
,ss9 :"
ContentBuilderSettingsss; Q
.ssQ R)
IgnoreDefaultValuesSerializerssR o
)sso p
;ssp q
elementtt 
.tt 
ContentItemtt #
=tt$ %
contentElementtt& 4
.tt4 5
ContentItemtt5 @
;tt@ A
contentElementvv 
.vv 
Datavv #
[vv# $
namevv$ (
]vv( )
=vv* +
elementvv, 3
.vv3 4
Datavv4 8
;vv8 9
contentElementww 
.ww 
Elementsww '
[ww' (
nameww( ,
]ww, -
=ww. /
elementww0 7
;ww7 8
}xx 
returnzz 
contentElementzz !
;zz! "
}{{ 	
public
�� 
static
�� 
ContentElement
�� $
Weld
��% )
<
��) *
TElement
��* 2
>
��2 3
(
��3 4
this
��4 8
ContentElement
��9 G
contentElement
��H V
,
��V W
object
��X ^
settings
��_ g
=
��h i
null
��j n
)
��n o
where
��p u
TElement
��v ~
:�� �
ContentElement��� �
,��� �
new��� �
(��� �
)��� �
{
�� 	
var
�� 
elementName
�� 
=
�� 
typeof
�� $
(
��$ %
TElement
��% -
)
��- .
.
��. /
Name
��/ 3
;
��3 4
var
�� 
elementData
�� 
=
�� 
contentElement
�� ,
.
��, -
Data
��- 1
[
��1 2
elementName
��2 =
]
��= >
as
��? A
JObject
��B I
;
��I J
if
�� 
(
�� 
elementData
�� 
==
�� 
null
�� #
)
��# $
{
�� 
var
�� 
part
�� 
=
�� 
new
�� 
TElement
�� '
(
��' (
)
��( )
;
��) *
contentElement
�� 
.
�� 
Weld
�� #
(
��# $
elementName
��$ /
,
��/ 0
part
��1 5
)
��5 6
;
��6 7
}
�� 
JToken
�� 
result
�� 
;
�� 
if
�� 
(
�� 
!
�� 
contentElement
�� 
.
��  
Data
��  $
.
��$ %
TryGetValue
��% 0
(
��0 1$
WeldedPartSettingsName
��1 G
,
��G H
out
��I L
result
��M S
)
��S T
)
��T U
{
�� 
contentElement
�� 
.
�� 
Data
�� #
[
��# $$
WeldedPartSettingsName
��$ :
]
��: ;
=
��< =
result
��> D
=
��E F
new
��G J
JObject
��K R
(
��R S
)
��S T
;
��T U
}
�� 
var
��  
weldedPartSettings
�� "
=
��# $
(
��% &
JObject
��& -
)
��- .
result
��. 4
;
��4 5 
weldedPartSettings
�� 
[
�� 
elementName
�� *
]
��* +
=
��, -
settings
��. 6
==
��7 9
null
��: >
?
��? @
new
��A D
JObject
��E L
(
��L M
)
��M N
:
��O P
JObject
��Q X
.
��X Y

FromObject
��Y c
(
��c d
settings
��d l
,
��l m%
ContentBuilderSettings��n �
.��� �-
IgnoreDefaultValuesSerializer��� �
)��� �
;��� �
return
�� 
contentElement
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
ContentElement
�� $
Apply
��% *
(
��* +
this
��+ /
ContentElement
��0 >
contentElement
��? M
,
��M N
string
��O U
name
��V Z
,
��Z [
ContentElement
��\ j
element
��k r
)
��r s
{
�� 	
var
�� 
elementData
�� 
=
�� 
contentElement
�� ,
.
��, -
Data
��- 1
[
��1 2
name
��2 6
]
��6 7
as
��8 :
JObject
��; B
;
��B C
if
�� 
(
�� 
elementData
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
elementData
�� 
.
�� 
Merge
�� !
(
��! "
JObject
��" )
.
��) *

FromObject
��* 4
(
��4 5
element
��5 <
)
��< =
,
��= >
JsonMergeSettings
��? P
)
��P Q
;
��Q R
}
�� 
else
�� 
{
�� 
elementData
�� 
=
�� 
JObject
�� %
.
��% &

FromObject
��& 0
(
��0 1
element
��1 8
,
��8 9$
ContentBuilderSettings
��: P
.
��P Q+
IgnoreDefaultValuesSerializer
��Q n
)
��n o
;
��o p
contentElement
�� 
.
�� 
Data
�� #
[
��# $
name
��$ (
]
��( )
=
��* +
elementData
��, 7
;
��7 8
}
�� 
element
�� 
.
�� 
Data
�� 
=
�� 
elementData
�� &
;
��& '
element
�� 
.
�� 
ContentItem
�� 
=
��  !
contentElement
��" 0
.
��0 1
ContentItem
��1 <
;
��< =
contentElement
�� 
.
�� 
Elements
�� #
[
��# $
name
��$ (
]
��( )
=
��* +
element
��, 3
;
��3 4
if
�� 
(
�� 
element
�� 
is
�� 
ContentField
�� '
)
��' (
{
�� 
contentElement
�� 
.
�� 
ContentItem
�� *
.
��* +
Elements
��+ 3
.
��3 4
Clear
��4 9
(
��9 :
)
��: ;
;
��; <
}
�� 
return
�� 
contentElement
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
ContentElement
�� $
Apply
��% *
(
��* +
this
��+ /
ContentElement
��0 >
contentElement
��? M
,
��M N
ContentElement
��O ]
element
��^ e
)
��e f
{
�� 	
if
�� 
(
�� 
contentElement
�� 
.
�� 
Data
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
contentElement
�� 
.
�� 
Data
�� #
.
��# $
Merge
��$ )
(
��) *
JObject
��* 1
.
��1 2

FromObject
��2 <
(
��< =
element
��= D
.
��D E
Data
��E I
)
��I J
,
��J K
JsonMergeSettings
��L ]
)
��] ^
;
��^ _
}
�� 
else
�� 
{
�� 
contentElement
�� 
.
�� 
Data
�� #
=
��$ %
JObject
��& -
.
��- .

FromObject
��. 8
(
��8 9
element
��9 @
.
��@ A
Data
��A E
,
��E F$
ContentBuilderSettings
��G ]
.
��] ^+
IgnoreDefaultValuesSerializer
��^ {
)
��{ |
;
��| }
}
�� 
contentElement
�� 
.
�� 
Elements
�� #
.
��# $
Clear
��$ )
(
��) *
)
��* +
;
��+ ,
return
�� 
contentElement
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
ContentElement
�� $
Alter
��% *
<
��* +
TElement
��+ 3
>
��3 4
(
��4 5
this
��5 9
ContentElement
��: H
contentElement
��I W
,
��W X
string
��Y _
name
��` d
,
��d e
Action
��f l
<
��l m
TElement
��m u
>
��u v
action
��w }
)
��} ~
where�� �
TElement��� �
:��� �
ContentElement��� �
,��� �
new��� �
(��� �
)��� �
{
�� 	
var
�� 
element
�� 
=
�� 
contentElement
�� (
.
��( )
GetOrCreate
��) 4
<
��4 5
TElement
��5 =
>
��= >
(
��> ?
name
��? C
)
��C D
;
��D E
action
�� 
(
�� 
element
�� 
)
�� 
;
�� 
contentElement
�� 
.
�� 
Apply
��  
(
��  !
name
��! %
,
��% &
element
��' .
)
��. /
;
��/ 0
return
�� 
contentElement
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
ContentPart
�� !
Apply
��" '
(
��' (
this
��( ,
ContentPart
��- 8
contentPart
��9 D
)
��D E
{
�� 	
contentPart
�� 
.
�� 
ContentItem
�� #
.
��# $
Apply
��$ )
(
��) *
contentPart
��* 5
.
��5 6
GetType
��6 =
(
��= >
)
��> ?
.
��? @
Name
��@ D
,
��D E
contentPart
��F Q
)
��Q R
;
��R S
return
�� 
contentPart
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
IsPublished
�� &
(
��& '
this
��' +
IContent
��, 4
content
��5 <
)
��< =
{
�� 	
return
�� 
content
�� 
.
�� 
ContentItem
�� &
!=
��' )
null
��* .
&&
��/ 1
content
��2 9
.
��9 :
ContentItem
��: E
.
��E F
	Published
��F O
;
��O P
}
�� 	
public
�� 
static
�� 
bool
�� 
HasDraft
�� #
(
��# $
this
��$ (
IContent
��) 1
content
��2 9
)
��9 :
{
�� 	
return
�� 
content
�� 
.
�� 
ContentItem
�� &
!=
��' )
null
��* .
&&
��/ 1
(
��2 3
!
��3 4
content
��4 ;
.
��; <
ContentItem
��< G
.
��G H
	Published
��H Q
||
��R T
!
��U V
content
��V ]
.
��] ^
ContentItem
��^ i
.
��i j
Latest
��j p
)
��p q
;
��q r
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "
TElement
��" *
>
��* +
OfType
��, 2
<
��2 3
TElement
��3 ;
>
��; <
(
��< =
this
��= A
ContentElement
��B P
contentElement
��Q _
)
��_ `
where
��a f
TElement
��g o
:
��p q
ContentElement��r �
{
�� 	
foreach
�� 
(
�� 
var
�� 
part
�� 
in
��  
contentElement
��! /
.
��/ 0
Elements
��0 8
)
��8 9
{
�� 
var
�� 
result
�� 
=
�� 
part
�� !
.
��! "
Value
��" '
as
��( *
TElement
��+ 3
;
��3 4
if
�� 
(
�� 
result
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
yield
�� 
return
��  
result
��! '
;
��' (
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentField.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
ContentField 
: 
ContentElement  .
{ 
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentFieldOption.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
ContentFieldOption #
:$ %"
ContentFieldOptionBase& <
{ 
public 
ContentFieldOption !
(! "
Type" &
contentFieldType' 7
)7 8
:9 :
base; ?
(? @
contentFieldType@ P
)P Q
{ 	
}		 	
}

 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentFieldOptionBase.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

abstract 
class "
ContentFieldOptionBase 0
{ 
public "
ContentFieldOptionBase %
(% &
Type& *
contentFieldType+ ;
); <
{ 	
if		 
(		 
contentFieldType		  
==		! #
null		$ (
)		( )
{

 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
contentFieldType7 G
)G H
)H I
;I J
} 
Type 
= 
contentFieldType #
;# $
} 	
public 
Type 
Type 
{ 
get 
; 
}  !
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentFieldOptionBuilder.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class %
ContentFieldOptionBuilder *
{ 
public %
ContentFieldOptionBuilder (
(( )
IServiceCollection) ;
services< D
,D E
TypeF J
contentFieldTypeK [
)[ \
{		 	
Services

 
=

 
services

 
;

  
ContentFieldType 
= 
contentFieldType /
;/ 0
} 	
public 
IServiceCollection !
Services" *
{+ ,
get- 0
;0 1
}2 3
public 
Type 
ContentFieldType $
{% &
get' *
;* +
}, -
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentItem.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
[		 
JsonConverter		 
(		 
typeof		 
(		  
ContentItemConverter		 .
)		. /
)		/ 0
]		0 1
public

 

class

 
ContentItem

 
:

 
ContentElement

 -
{ 
public 
ContentItem 
( 
) 
: 
base #
(# $
)$ %
{ 	
ContentItem 
= 
this 
; 
} 	
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string  
ContentItemVersionId *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public## 
string## 
ContentType## !
{##" #
get##$ '
;##' (
set##) ,
;##, -
}##. /
public(( 
bool(( 
	Published(( 
{(( 
get((  #
;((# $
set((% (
;((( )
}((* +
public-- 
bool-- 
Latest-- 
{-- 
get--  
;--  !
set--" %
;--% &
}--' (
public22 
DateTime22 
?22 
ModifiedUtc22 $
{22% &
get22' *
;22* +
set22, /
;22/ 0
}221 2
public77 
DateTime77 
?77 
PublishedUtc77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
public<< 
DateTime<< 
?<< 

CreatedUtc<< #
{<<$ %
get<<& )
;<<) *
set<<+ .
;<<. /
}<<0 1
publicAA 
stringAA 
OwnerAA 
{AA 
getAA !
;AA! "
setAA# &
;AA& '
}AA( )
publicFF 
stringFF 
AuthorFF 
{FF 
getFF "
;FF" #
setFF$ '
;FF' (
}FF) *
publicKK 
stringKK 
DisplayTextKK !
{KK" #
getKK$ '
;KK' (
setKK) ,
;KK, -
}KK. /
publicMM 
overrideMM 
stringMM 
ToStringMM '
(MM' (
)MM( )
{NN 	
returnOO 
stringOO 
.OO 
IsNullOrWhiteSpaceOO ,
(OO, -
DisplayTextOO- 8
)OO8 9
?OO: ;
$"OO< >
{OO> ?
ContentTypeOO? J
}OOJ K
 (OOK M
{OOM N
ContentItemIdOON [
}OO[ \
)OO\ ]
"OO] ^
:OO_ `
DisplayTextOOa l
;OOl m
}PP 	
}QQ 
}RR �\
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentItemConverter.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class  
ContentItemConverter %
:& '
JsonConverter( 5
{ 
public		 
override		 
void		 
	WriteJson		 &
(		& '

JsonWriter		' 1
writer		2 8
,		8 9
object		: @
value		A F
,		F G
JsonSerializer		H V

serializer		W a
)		a b
{

 	
var 
contentItem 
= 
( 
ContentItem *
)* +
value+ 0
;0 1
var 
o 
= 
new 
JObject 
(  
)  !
;! "
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
ContentItemId3 @
)@ A
,A B
contentItemC N
.N O
ContentItemIdO \
)\ ]
)] ^
;^ _
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3 
ContentItemVersionId3 G
)G H
,H I
contentItemJ U
.U V 
ContentItemVersionIdV j
)j k
)k l
;l m
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
ContentType3 >
)> ?
,? @
contentItemA L
.L M
ContentTypeM X
)X Y
)Y Z
;Z [
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
DisplayText3 >
)> ?
,? @
contentItemA L
.L M
DisplayTextM X
)X Y
)Y Z
;Z [
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
Latest3 9
)9 :
,: ;
contentItem< G
.G H
LatestH N
)N O
)O P
;P Q
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
	Published3 <
)< =
,= >
contentItem? J
.J K
	PublishedK T
)T U
)U V
;V W
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
ModifiedUtc3 >
)> ?
,? @
contentItemA L
.L M
ModifiedUtcM X
)X Y
)Y Z
;Z [
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
PublishedUtc3 ?
)? @
,@ A
contentItemB M
.M N
PublishedUtcN Z
)Z [
)[ \
;\ ]
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3

CreatedUtc3 =
)= >
,> ?
contentItem@ K
.K L

CreatedUtcL V
)V W
)W X
;X Y
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
Owner3 8
)8 9
,9 :
contentItem; F
.F G
OwnerG L
)L M
)M N
;N O
o 
. 
Add 
( 
new 
	JProperty 
(  
nameof  &
(& '
ContentItem' 2
.2 3
Author3 9
)9 :
,: ;
contentItem< G
.G H
AuthorH N
)N O
)O P
;P Q
o 
. 
Merge 
( 
contentItem 
.  
Data  $
)$ %
;% &
o 
. 
WriteTo 
( 
writer 
) 
; 
} 	
public!! 
override!! 
object!! 
ReadJson!! '
(!!' (

JsonReader!!( 2
reader!!3 9
,!!9 :
Type!!; ?

objectType!!@ J
,!!J K
object!!L R
existingValue!!S `
,!!` a
JsonSerializer!!b p

serializer!!q {
)!!{ |
{"" 	
var## 
contentItem## 
=## 
new## !
ContentItem##" -
(##- .
)##. /
;##/ 0
var$$ 
skip$$ 
=$$ 
false$$ 
;$$ 
while&& 
(&& 
skip&& 
||&& 
reader&& !
.&&! "
Read&&" &
(&&& '
)&&' (
)&&( )
{'' 
skip(( 
=(( 
false(( 
;(( 
if** 
(** 
reader** 
.** 
	TokenType** $
==**% '
	JsonToken**( 1
.**1 2
	EndObject**2 ;
)**; <
{++ 
break,, 
;,, 
}-- 
if// 
(// 
reader// 
.// 
	TokenType// $
!=//% '
	JsonToken//( 1
.//1 2
PropertyName//2 >
)//> ?
{00 
continue11 
;11 
}22 
var44 
propertyName44  
=44! "
(44# $
string44$ *
)44* +
reader44+ 1
.441 2
Value442 7
;447 8
switch66 
(66 
propertyName66 $
)66$ %
{77 
case88 
nameof88 
(88  
ContentItem88  +
.88+ ,
ContentItemId88, 9
)889 :
:88: ;
contentItem99 #
.99# $
ContentItemId99$ 1
=992 3
reader994 :
.99: ;
ReadAsString99; G
(99G H
)99H I
;99I J
break:: 
;:: 
case;; 
nameof;; 
(;;  
ContentItem;;  +
.;;+ , 
ContentItemVersionId;;, @
);;@ A
:;;A B
contentItem<< #
.<<# $ 
ContentItemVersionId<<$ 8
=<<9 :
reader<<; A
.<<A B
ReadAsString<<B N
(<<N O
)<<O P
;<<P Q
break== 
;== 
case>> 
nameof>> 
(>>  
ContentItem>>  +
.>>+ ,
ContentType>>, 7
)>>7 8
:>>8 9
contentItem?? #
.??# $
ContentType??$ /
=??0 1
reader??2 8
.??8 9
ReadAsString??9 E
(??E F
)??F G
;??G H
break@@ 
;@@ 
caseAA 
nameofAA 
(AA  
ContentItemAA  +
.AA+ ,
DisplayTextAA, 7
)AA7 8
:AA8 9
contentItemBB #
.BB# $
DisplayTextBB$ /
=BB0 1
readerBB2 8
.BB8 9
ReadAsStringBB9 E
(BBE F
)BBF G
;BBG H
breakCC 
;CC 
caseDD 
nameofDD 
(DD  
ContentItemDD  +
.DD+ ,
LatestDD, 2
)DD2 3
:DD3 4
contentItemEE #
.EE# $
LatestEE$ *
=EE+ ,
readerEE- 3
.EE3 4
ReadAsBooleanEE4 A
(EEA B
)EEB C
??EED F
falseEEG L
;EEL M
breakFF 
;FF 
caseGG 
nameofGG 
(GG  
ContentItemGG  +
.GG+ ,
	PublishedGG, 5
)GG5 6
:GG6 7
contentItemHH #
.HH# $
	PublishedHH$ -
=HH. /
readerHH0 6
.HH6 7
ReadAsBooleanHH7 D
(HHD E
)HHE F
??HHG I
falseHHJ O
;HHO P
breakII 
;II 
caseJJ 
nameofJJ 
(JJ  
ContentItemJJ  +
.JJ+ ,
PublishedUtcJJ, 8
)JJ8 9
:JJ9 :
contentItemKK #
.KK# $
PublishedUtcKK$ 0
=KK1 2
readerKK3 9
.KK9 :
ReadAsDateTimeKK: H
(KKH I
)KKI J
;KKJ K
breakLL 
;LL 
caseMM 
nameofMM 
(MM  
ContentItemMM  +
.MM+ ,
ModifiedUtcMM, 7
)MM7 8
:MM8 9
contentItemNN #
.NN# $
ModifiedUtcNN$ /
=NN0 1
readerNN2 8
.NN8 9
ReadAsDateTimeNN9 G
(NNG H
)NNH I
;NNI J
breakOO 
;OO 
casePP 
nameofPP 
(PP  
ContentItemPP  +
.PP+ ,

CreatedUtcPP, 6
)PP6 7
:PP7 8
contentItemQQ #
.QQ# $

CreatedUtcQQ$ .
=QQ/ 0
readerQQ1 7
.QQ7 8
ReadAsDateTimeQQ8 F
(QQF G
)QQG H
;QQH I
breakRR 
;RR 
caseSS 
nameofSS 
(SS  
ContentItemSS  +
.SS+ ,
AuthorSS, 2
)SS2 3
:SS3 4
contentItemTT #
.TT# $
AuthorTT$ *
=TT+ ,
readerTT- 3
.TT3 4
ReadAsStringTT4 @
(TT@ A
)TTA B
;TTB C
breakUU 
;UU 
caseVV 
nameofVV 
(VV  
ContentItemVV  +
.VV+ ,
OwnerVV, 1
)VV1 2
:VV2 3
contentItemWW #
.WW# $
OwnerWW$ )
=WW* +
readerWW, 2
.WW2 3
ReadAsStringWW3 ?
(WW? @
)WW@ A
;WWA B
breakXX 
;XX 
defaultYY 
:YY 
varZZ 
customPropertyZZ *
=ZZ+ ,
	JPropertyZZ- 6
.ZZ6 7
LoadZZ7 ;
(ZZ; <
readerZZ< B
)ZZB C
;ZZC D
contentItem[[ #
.[[# $
Data[[$ (
.[[( )
Add[[) ,
([[, -
customProperty[[- ;
)[[; <
;[[< =
skip^^ 
=^^ 
true^^ #
;^^# $
break__ 
;__ 
}`` 
}aa 
returncc 
contentItemcc 
;cc 
}dd 	
publicff 
overrideff 
boolff 

CanConvertff '
(ff' (
Typeff( ,

objectTypeff- 7
)ff7 8
{gg 	
returnhh 

objectTypehh 
==hh  
typeofhh! '
(hh' (
ContentItemhh( 3
)hh3 4
;hh4 5
}ii 	
}jj 
}kk �p
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentItemExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

static 
class !
ContentItemExtensions -
{ 
public 
static 
TPart 
As 
< 
TPart $
>$ %
(% &
this& *
ContentItem+ 6
contentItem7 B
)B C
whereD I
TPartJ O
:P Q
ContentPartR ]
{ 	
return 
contentItem 
. 
Get "
<" #
TPart# (
>( )
() *
typeof* 0
(0 1
TPart1 6
)6 7
.7 8
Name8 <
)< =
;= >
} 	
public 
static 
TPart 
GetOrCreate '
<' (
TPart( -
>- .
(. /
this/ 3
ContentItem4 ?
contentItem@ K
)K L
whereM R
TPartS X
:Y Z
ContentPart[ f
,f g
newh k
(k l
)l m
{ 	
return 
contentItem 
. 
GetOrCreate *
<* +
TPart+ 0
>0 1
(1 2
typeof2 8
(8 9
TPart9 >
)> ?
.? @
Name@ D
)D E
;E F
} 	
public$$ 
static$$ 
void$$ 
Remove$$ !
<$$! "
TPart$$" '
>$$' (
($$( )
this$$) -
ContentItem$$. 9
contentItem$$: E
)$$E F
where$$G L
TPart$$M R
:$$S T
ContentPart$$U `
,$$` a
new$$b e
($$e f
)$$f g
{%% 	
contentItem&& 
.&& 
Remove&& 
(&& 
typeof&& %
(&&% &
TPart&&& +
)&&+ ,
.&&, -
Name&&- 1
)&&1 2
;&&2 3
}'' 	
public00 
static00 
ContentItem00 !
Weld00" &
<00& '
TPart00' ,
>00, -
(00- .
this00. 2
ContentItem003 >
contentItem00? J
,00J K
TPart00L Q
part00R V
)00V W
where00X ]
TPart00^ c
:00d e
ContentPart00f q
{11 	
contentItem22 
.22 
Weld22 
(22 
typeof22 #
(22# $
TPart22$ )
)22) *
.22* +
Name22+ /
,22/ 0
part221 5
)225 6
;226 7
return33 
contentItem33 
;33 
}44 	
public== 
static== 
ContentItem== !
Apply==" '
<==' (
TPart==( -
>==- .
(==. /
this==/ 3
ContentItem==4 ?
contentItem==@ K
,==K L
TPart==M R
part==S W
)==W X
where==Y ^
TPart==_ d
:==e f
ContentPart==g r
{>> 	
contentItem?? 
.?? 
Apply?? 
(?? 
typeof?? $
(??$ %
TPart??% *
)??* +
.??+ ,
Name??, 0
,??0 1
part??2 6
)??6 7
;??7 8
return@@ 
contentItem@@ 
;@@ 
}AA 	
publicJJ 
staticJJ 
ContentItemJJ !
AlterJJ" '
<JJ' (
TPartJJ( -
>JJ- .
(JJ. /
thisJJ/ 3
ContentItemJJ4 ?
contentItemJJ@ K
,JJK L
ActionJJM S
<JJS T
TPartJJT Y
>JJY Z
actionJJ[ a
)JJa b
whereJJc h
TPartJJi n
:JJo p
ContentPartJJq |
,JJ| }
new	JJ~ �
(
JJ� �
)
JJ� �
{KK 	
varLL 
partLL 
=LL 
contentItemLL "
.LL" #
GetOrCreateLL# .
<LL. /
TPartLL/ 4
>LL4 5
(LL5 6
)LL6 7
;LL7 8
actionMM 
(MM 
partMM 
)MM 
;MM 
contentItemNN 
.NN 
ApplyNN 
(NN 
partNN "
)NN" #
;NN# $
returnPP 
contentItemPP 
;PP 
}QQ 	
publicZZ 
staticZZ 
asyncZZ 
TaskZZ  
<ZZ  !
ContentItemZZ! ,
>ZZ, -

AlterAsyncZZ. 8
<ZZ8 9
TPartZZ9 >
>ZZ> ?
(ZZ? @
thisZZ@ D
ContentItemZZE P
contentItemZZQ \
,ZZ\ ]
FuncZZ^ b
<ZZb c
TPartZZc h
,ZZh i
TaskZZj n
>ZZn o
actionZZp v
)ZZv w
whereZZx }
TPart	ZZ~ �
:
ZZ� �
ContentPart
ZZ� �
,
ZZ� �
new
ZZ� �
(
ZZ� �
)
ZZ� �
{[[ 	
var\\ 
part\\ 
=\\ 
contentItem\\ "
.\\" #
GetOrCreate\\# .
<\\. /
TPart\\/ 4
>\\4 5
(\\5 6
)\\6 7
;\\7 8
await]] 
action]] 
(]] 
part]] 
)]] 
;]] 
contentItem^^ 
.^^ 
Apply^^ 
(^^ 
part^^ "
)^^" #
;^^# $
return`` 
contentItem`` 
;`` 
}aa 	
publicjj 
staticjj 
ContentItemjj !
Mergejj" '
(jj' (
thisjj( ,
ContentItemjj- 8
contentItemjj9 D
,jjD E
objectjjF L

propertiesjjM W
,jjW X
JsonMergeSettingsjjY j
jsonMergeSettingsjjk |
=jj} ~
null	jj �
)
jj� �
{kk 	
varll 
propsll 
=ll 
JObjectll 
.ll  

FromObjectll  *
(ll* +

propertiesll+ 5
)ll5 6
;ll6 7
varnn 
originalDocumentIdnn "
=nn# $
contentItemnn% 0
.nn0 1
Idnn1 3
;nn3 4
contentItemoo 
.oo 
Dataoo 
.oo 
Mergeoo "
(oo" #
propsoo# (
,oo( )
jsonMergeSettingsoo* ;
)oo; <
;oo< =
contentItempp 
.pp 
Elementspp  
.pp  !
Clearpp! &
(pp& '
)pp' (
;pp( )
contentItemss 
.ss 
Idss 
=ss 
originalDocumentIdss /
;ss/ 0
ifww 
(ww 
propsww 
.ww 
ContainsKeyww !
(ww! "
nameofww" (
(ww( )
contentItemww) 4
.ww4 5
DisplayTextww5 @
)ww@ A
)wwA B
)wwB C
{xx 
contentItemyy 
.yy 
DisplayTextyy '
=yy( )
propsyy* /
[yy/ 0
nameofyy0 6
(yy6 7
contentItemyy7 B
.yyB C
DisplayTextyyC N
)yyN O
]yyO P
.yyP Q
ToStringyyQ Y
(yyY Z
)yyZ [
;yy[ \
contentItemzz 
.zz 
Datazz  
.zz  !
Removezz! '
(zz' (
nameofzz( .
(zz. /
contentItemzz/ :
.zz: ;
DisplayTextzz; F
)zzF G
)zzG H
;zzH I
}{{ 
if}} 
(}} 
props}} 
.}} 
ContainsKey}} !
(}}! "
nameof}}" (
(}}( )
contentItem}}) 4
.}}4 5
Owner}}5 :
)}}: ;
)}}; <
)}}< =
{~~ 
contentItem 
. 
Owner !
=" #
props$ )
[) *
nameof* 0
(0 1
contentItem1 <
.< =
Owner= B
)B C
]C D
.D E
ToStringE M
(M N
)N O
;O P
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;
Owner
��; @
)
��@ A
)
��A B
;
��B C
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5
Author
��5 ;
)
��; <
)
��< =
)
��= >
{
�� 
contentItem
�� 
.
�� 
Author
�� "
=
��# $
props
��% *
[
��* +
nameof
��+ 1
(
��1 2
contentItem
��2 =
.
��= >
Author
��> D
)
��D E
]
��E F
.
��F G
ToString
��G O
(
��O P
)
��P Q
;
��Q R
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;
Author
��; A
)
��A B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5
	Published
��5 >
)
��> ?
)
��? @
)
��@ A
{
�� 
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;
	Published
��; D
)
��D E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5
Latest
��5 ;
)
��; <
)
��< =
)
��= >
{
�� 
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;
Latest
��; A
)
��A B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5

CreatedUtc
��5 ?
)
��? @
)
��@ A
)
��A B
{
�� 
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;

CreatedUtc
��; E
)
��E F
)
��F G
;
��G H
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5
ModifiedUtc
��5 @
)
��@ A
)
��A B
)
��B C
{
�� 
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;
ModifiedUtc
��; F
)
��F G
)
��G H
;
��H I
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5
PublishedUtc
��5 A
)
��A B
)
��B C
)
��C D
{
�� 
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;
PublishedUtc
��; G
)
��G H
)
��H I
;
��I J
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5
ContentItemId
��5 B
)
��B C
)
��C D
)
��D E
{
�� 
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;
ContentItemId
��; H
)
��H I
)
��I J
;
��J K
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5"
ContentItemVersionId
��5 I
)
��I J
)
��J K
)
��K L
{
�� 
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;"
ContentItemVersionId
��; O
)
��O P
)
��P Q
;
��Q R
}
�� 
if
�� 
(
�� 
props
�� 
.
�� 
ContainsKey
�� !
(
��! "
nameof
��" (
(
��( )
contentItem
��) 4
.
��4 5
ContentType
��5 @
)
��@ A
)
��A B
)
��B C
{
�� 
contentItem
�� 
.
�� 
Data
��  
.
��  !
Remove
��! '
(
��' (
nameof
��( .
(
��. /
contentItem
��/ :
.
��: ;
ContentType
��; F
)
��F G
)
��G H
;
��H I
}
�� 
return
�� 
contentItem
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentItemMetadata.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
ContentItemMetadata $
{ 
[		 	
Obsolete			 
(		 
$str		 k
)		k l
]		l m
public

 
string

 
DisplayText

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public  
RouteValueDictionary #
DisplayRouteValues$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public  
RouteValueDictionary #
EditorRouteValues$ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public  
RouteValueDictionary #
CreateRouteValues$ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public  
RouteValueDictionary #
RemoveRouteValues$ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public  
RouteValueDictionary #
AdminRouteValues$ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
readonly 
IList 
< 
	GroupInfo '
>' (
DisplayGroupInfo) 9
=: ;
new< ?
List@ D
<D E
	GroupInfoE N
>N O
(O P
)P Q
;Q R
public 
readonly 
IList 
< 
	GroupInfo '
>' (
EditorGroupInfo) 8
=9 :
new; >
List? C
<C D
	GroupInfoD M
>M N
(N O
)O P
;P Q
} 
} �/
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentOptions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public

 

class

 
ContentOptions

 
{ 
private 
readonly 
List 
< 
ContentPartOption /
>/ 0
_contentParts1 >
=? @
newA D
ListE I
<I J
ContentPartOptionJ [
>[ \
(\ ]
)] ^
;^ _
private 
readonly 
List 
< 
ContentFieldOption 0
>0 1
_contentFields2 @
=A B
newC F
ListG K
<K L
ContentFieldOptionL ^
>^ _
(_ `
)` a
;a b
private 
IReadOnlyDictionary #
<# $
string$ *
,* +
ContentPartOption, =
>= >%
_contentPartOptionsLookup? X
;X Y
public 
IReadOnlyDictionary "
<" #
string# )
,) *
ContentPartOption+ <
>< =$
ContentPartOptionsLookup> V
=>W Y%
_contentPartOptionsLookupZ s
??=t w
ContentPartOptions	x �
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
� �
public 
IReadOnlyList 
< 
ContentPartOption .
>. /
ContentPartOptions0 B
=>C E
_contentPartsF S
;S T
public 
IReadOnlyList 
< 
ContentFieldOption /
>/ 0
ContentFieldOptions1 D
=>E G
_contentFieldsH V
;V W
internal 
void 

AddHandler  
(  !
Type! %
contentPartType& 5
,5 6
Type7 ;
handlerType< G
)G H
{ 	
var 
option 
= 
GetOrAddContentPart ,
(, -
contentPartType- <
)< =
;= >
option 
. 

AddHandler 
( 
handlerType )
)) *
;* +
} 	
internal 
void 
RemoveHandler #
(# $
Type$ (
contentPartType) 8
,8 9
Type: >
handlerType? J
)J K
{ 	
var 
option 
= 
GetOrAddContentPart ,
(, -
contentPartType- <
)< =
;= >
option 
. 
RemoveHandler  
(  !
handlerType! ,
), -
;- .
} 	
internal!! 
ContentPartOption!! "
GetOrAddContentPart!!# 6
(!!6 7
Type!!7 ;
contentPartType!!< K
)!!K L
{"" 	
if## 
(## 
!## 
contentPartType##  
.##  !
IsSubclassOf##! -
(##- .
typeof##. 4
(##4 5
ContentPart##5 @
)##@ A
)##A B
)##B C
{$$ 
throw%% 
new%% 
ArgumentException%% +
(%%+ ,
$str%%, I
+%%J K
nameof%%L R
(%%R S
ContentPart%%S ^
)%%^ _
)%%_ `
;%%` a
}&& 
var(( 
option(( 
=(( 
_contentParts(( &
.((& '
FirstOrDefault((' 5
(((5 6
x((6 7
=>((8 :
x((; <
.((< =
Type((= A
==((B D
contentPartType((E T
)((T U
;((U V
if)) 
()) 
option)) 
==)) 
null)) 
))) 
{** 
option++ 
=++ 
new++ 
ContentPartOption++ .
(++. /
contentPartType++/ >
)++> ?
;++? @
_contentParts,, 
.,, 
Add,, !
(,,! "
option,," (
),,( )
;,,) *
}-- 
return// 
option// 
;// 
}00 	
internal22 
ContentFieldOption22 # 
GetOrAddContentField22$ 8
(228 9
Type229 =
contentFieldType22> N
)22N O
{33 	
if44 
(44 
!44 
contentFieldType44 !
.44! "
IsSubclassOf44" .
(44. /
typeof44/ 5
(445 6
ContentField446 B
)44B C
)44C D
)44D E
{55 
throw66 
new66 
ArgumentException66 +
(66+ ,
$str66, I
+66J K
nameof66L R
(66R S
ContentField66S _
)66_ `
)66` a
;66a b
}77 
var99 
option99 
=99 
_contentFields99 '
.99' (
FirstOrDefault99( 6
(996 7
o997 8
=>999 ;
o99< =
.99= >
Type99> B
==99C E
contentFieldType99F V
)99V W
;99W X
if:: 
(:: 
option:: 
==:: 
null:: 
):: 
{;; 
option<< 
=<< 
new<< 
ContentFieldOption<< /
(<</ 0
contentFieldType<<0 @
)<<@ A
;<<A B
_contentFields== 
.== 
Add== "
(==" #
option==# )
)==) *
;==* +
}>> 
return@@ 
option@@ 
;@@ 
}AA 	
}BB 
}CC �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentPart.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
ContentPart 
: 
ContentElement -
{ 
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentPartOption.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
ContentPartOption "
:# $!
ContentPartOptionBase% :
{ 
private 
readonly 
List 
< 
Type "
>" #
	_handlers$ -
=. /
new0 3
List4 8
<8 9
Type9 =
>= >
(> ?
)? @
;@ A
public

 
ContentPartOption

  
(

  !
Type

! %
contentPartType

& 5
)

5 6
:

7 8
base

9 =
(

= >
contentPartType

> M
)

M N
{ 	
} 	
public 
IReadOnlyList 
< 
Type !
>! "
Handlers# +
=>, .
	_handlers/ 8
;8 9
internal 
void 

AddHandler  
(  !
Type! %
type& *
)* +
{ 	
	_handlers 
. 
Add 
( 
type 
) 
;  
} 	
internal 
void 
RemoveHandler #
(# $
Type$ (
type) -
)- .
{ 	
	_handlers 
. 
Remove 
( 
type !
)! "
;" #
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentPartOptionBase.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

abstract 
class !
ContentPartOptionBase /
{ 
public !
ContentPartOptionBase $
($ %
Type% )
contentPartType* 9
)9 :
{ 	
if		 
(		 
contentPartType		 
==		  "
null		# '
)		' (
{

 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
contentPartType7 F
)F G
)G H
;H I
} 
Type 
= 
contentPartType "
;" #
} 	
public 
Type 
Type 
{ 
get 
; 
}  !
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ContentPartOptionBuilder.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class $
ContentPartOptionBuilder )
{ 
public $
ContentPartOptionBuilder '
(' (
IServiceCollection( :
services; C
,C D
TypeE I
contentPartTypeJ Y
)Y Z
{		 	
Services

 
=

 
services

 
;

  
ContentPartType 
= 
contentPartType -
;- .
} 	
public 
IServiceCollection !
Services" *
{+ ,
get- 0
;0 1
}2 3
public 
Type 
ContentPartType #
{$ %
get& )
;) *
}+ ,
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\GroupInfo.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public

 

class

 
	GroupInfo

 
{ 
public 
	GroupInfo 
( 
LocalizedString (
name) -
)- .
{ 	
Id 
= 
name 
. 
Name 
; 
Name 
= 
name 
; 
} 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
LocalizedString 
Name #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ActivatedContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class #
ActivatedContentContext (
:) *
ContentContextBase+ =
{ 
public #
ActivatedContentContext &
(& '
ContentItem' 2
contentItem3 >
)> ?
:@ A
baseB F
(F G
contentItemG R
)R S
{ 	
} 	
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ActivatingContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class $
ActivatingContentContext )
{ 
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public !
ContentTypeDefinition $

Definition% /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public		 
ContentItemBuilder		 !
Builder		" )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
}

 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\CloneContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class 
CloneContentContext $
:% &
ContentContextBase' 9
{ 
public 
ContentItem 
CloneContentItem +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
CloneContentContext "
(" #
ContentItem# .
contentItem/ :
,: ;
ContentItem< G
cloneContentItemH X
)X Y
: 
base 
( 
contentItem 
) 
{		 	
CloneContentItem

 
=

 
cloneContentItem

 /
;

/ 0
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ContentContextBase.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class 
ContentContextBase #
{ 
	protected 
ContentContextBase $
($ %
ContentItem% 0
contentItem1 <
)< =
{ 	
ContentItem 
= 
contentItem %
;% &
} 	
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
, -
private

. 5
set

6 9
;

9 :
}

; <
} 
} �C
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ContentHandlerBase.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

abstract 
class 
ContentHandlerBase ,
:- .
IContentHandler/ >
{ 
public 
virtual 
Task 
ActivatingAsync +
(+ ,$
ActivatingContentContext, D
contextE L
)L M
{ 	
return		 
Task		 
.		 
CompletedTask		 %
;		% &
}

 	
public 
virtual 
Task 
ActivatedAsync *
(* +#
ActivatedContentContext+ B
contextC J
)J K
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
InitializingAsync -
(- .&
InitializingContentContext. H
contextI P
)P Q
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
InitializedAsync ,
(, -&
InitializingContentContext- G
contextH O
)O P
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
CreatingAsync )
() * 
CreateContentContext* >
context? F
)F G
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
CreatedAsync (
(( ) 
CreateContentContext) =
context> E
)E F
{   	
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
public$$ 
virtual$$ 
Task$$ 
ImportingAsync$$ *
($$* + 
ImportContentContext$$+ ?
context$$@ G
)$$G H
{%% 	
return&& 
Task&& 
.&& 
CompletedTask&& %
;&&% &
}'' 	
public)) 
virtual)) 
Task)) 
ImportedAsync)) )
())) * 
ImportContentContext))* >
context))? F
)))F G
{** 	
return++ 
Task++ 
.++ 
CompletedTask++ %
;++% &
},, 	
public.. 
virtual.. 
Task.. 
LoadingAsync.. (
(..( )
LoadContentContext..) ;
context..< C
)..C D
{// 	
return00 
Task00 
.00 
CompletedTask00 %
;00% &
}11 	
public33 
virtual33 
Task33 
LoadedAsync33 '
(33' (
LoadContentContext33( :
context33; B
)33B C
{44 	
return55 
Task55 
.55 
CompletedTask55 %
;55% &
}66 	
public88 
virtual88 
Task88 
UpdatingAsync88 )
(88) * 
UpdateContentContext88* >
context88? F
)88F G
{99 	
return:: 
Task:: 
.:: 
CompletedTask:: %
;::% &
};; 	
public== 
virtual== 
Task== 
UpdatedAsync== (
(==( ) 
UpdateContentContext==) =
context==> E
)==E F
{>> 	
return?? 
Task?? 
.?? 
CompletedTask?? %
;??% &
}@@ 	
publicBB 
virtualBB 
TaskBB 
ValidatingAsyncBB +
(BB+ ,"
ValidateContentContextBB, B
contextBBC J
)BBJ K
{CC 	
returnDD 
TaskDD 
.DD 
CompletedTaskDD %
;DD% &
}EE 	
publicGG 
virtualGG 
TaskGG 
ValidatedAsyncGG *
(GG* +"
ValidateContentContextGG+ A
contextGGB I
)GGI J
{HH 	
returnII 
TaskII 
.II 
CompletedTaskII %
;II% &
}JJ 	
publicLL 
virtualLL 
TaskLL 
VersioningAsyncLL +
(LL+ ,!
VersionContentContextLL, A
contextLLB I
)LLI J
{MM 	
returnNN 
TaskNN 
.NN 
CompletedTaskNN %
;NN% &
}OO 	
publicQQ 
virtualQQ 
TaskQQ 
VersionedAsyncQQ *
(QQ* +!
VersionContentContextQQ+ @
contextQQA H
)QQH I
{RR 	
returnSS 
TaskSS 
.SS 
CompletedTaskSS %
;SS% &
}TT 	
publicVV 
virtualVV 
TaskVV 
DraftSavingAsyncVV ,
(VV, -#
SaveDraftContentContextVV- D
contextVVE L
)VVL M
{WW 	
returnXX 
TaskXX 
.XX 
CompletedTaskXX %
;XX% &
}YY 	
public[[ 
virtual[[ 
Task[[ 
DraftSavedAsync[[ +
([[+ ,#
SaveDraftContentContext[[, C
context[[D K
)[[K L
{\\ 	
return]] 
Task]] 
.]] 
CompletedTask]] %
;]]% &
}^^ 	
public`` 
virtual`` 
Task`` 
PublishingAsync`` +
(``+ ,!
PublishContentContext``, A
context``B I
)``I J
{aa 	
returnbb 
Taskbb 
.bb 
CompletedTaskbb %
;bb% &
}cc 	
publicee 
virtualee 
Taskee 
PublishedAsyncee *
(ee* +!
PublishContentContextee+ @
contexteeA H
)eeH I
{ff 	
returngg 
Taskgg 
.gg 
CompletedTaskgg %
;gg% &
}hh 	
publicjj 
virtualjj 
Taskjj 
UnpublishingAsyncjj -
(jj- .!
PublishContentContextjj. C
contextjjD K
)jjK L
{kk 	
returnll 
Taskll 
.ll 
CompletedTaskll %
;ll% &
}mm 	
publicoo 
virtualoo 
Taskoo 
UnpublishedAsyncoo ,
(oo, -!
PublishContentContextoo- B
contextooC J
)ooJ K
{pp 	
returnqq 
Taskqq 
.qq 
CompletedTaskqq %
;qq% &
}rr 	
publictt 
virtualtt 
Tasktt 
RemovingAsynctt )
(tt) * 
RemoveContentContexttt* >
contexttt? F
)ttF G
{uu 	
returnvv 
Taskvv 
.vv 
CompletedTaskvv %
;vv% &
}ww 	
publicyy 
virtualyy 
Taskyy 
RemovedAsyncyy (
(yy( ) 
RemoveContentContextyy) =
contextyy> E
)yyE F
{zz 	
return{{ 
Task{{ 
.{{ 
CompletedTask{{ %
;{{% &
}|| 	
public~~ 
virtual~~ 
Task~~ 
CloningAsync~~ (
(~~( )
CloneContentContext~~) <
context~~= D
)~~D E
{ 	
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
virtual
�� 
Task
�� 
ClonedAsync
�� '
(
��' (!
CloneContentContext
��( ;
context
��< C
)
��C D
{
�� 	
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
virtual
�� 
Task
�� '
GetContentItemAspectAsync
�� 5
(
��5 6&
ContentItemAspectContext
��6 N
context
��O V
)
��V W
{
�� 	
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ContentItemAspectContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class $
ContentItemAspectContext )
{ 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
object		 
Aspect		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public 
async 
Task 
< $
ContentItemAspectContext 2
>2 3
ForAsync4 <
<< =
TAspect= D
>D E
(E F
FuncF J
<J K
TAspectK R
,R S
TaskT X
>X Y
actionZ `
)` a
whereb g
TAspecth o
:p q
classr w
{ 	
var 
aspect 
= 
Aspect 
as  "
TAspect# *
;* +
if 
( 
aspect 
!= 
null 
) 
{ 
await 
action 
( 
aspect #
)# $
;$ %
} 
return 
this 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ContentItemBuilder.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class 
ContentItemBuilder #
{		 
private

 
readonly

 
ContentItem

 $
_item

% *
;

* +
public 
ContentItemBuilder !
(! "!
ContentTypeDefinition" 7

definition8 B
)B C
{ 	
_item 
= 
new 
ContentItem #
{ 
ContentType 
= 

definition (
.( )
Name) -
} 
; 
} 	
public 
ContentItem 
Build  
(  !
)! "
{ 	
return 
_item 
; 
} 	
public!! 
ContentItemBuilder!! !
Weld!!" &
(!!& '
ContentPart!!' 2
contentPart!!3 >
)!!> ?
{"" 	
_item## 
.## 
Weld## 
(## 
contentPart## "
.##" #
GetType### *
(##* +
)##+ ,
.##, -
Name##- 1
,##1 2
contentPart##3 >
)##> ?
;##? @
return$$ 
this$$ 
;$$ 
}%% 	
public** 
ContentItemBuilder** !
Weld**" &
(**& '
string**' -
name**. 2
,**2 3
ContentPart**4 ?
contentPart**@ K
)**K L
{++ 	
_item,, 
.,, 
Weld,, 
(,, 
name,, 
,,, 
contentPart,, (
),,( )
;,,) *
return-- 
this-- 
;-- 
}.. 	
}// 
}00 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ContentItemMetadataContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class &
ContentItemMetadataContext +
{ 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
ContentItemMetadata "
Metadata# +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ContentPartHandler.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

abstract 
class 
ContentPartHandler ,
<, -
TPart- 2
>2 3
:4 5
IContentPartHandler6 I
whereJ O
TPartP U
:V W
ContentPartX c
,c d
newe h
(h i
)i j
{ 
Task 
IContentPartHandler  
.  !
ActivatedAsync! /
(/ 0#
ActivatedContentContext0 G
contextH O
,O P
ContentPartQ \
part] a
)a b
{ 	
return		 
part		 
is		 
TPart		  
tpart		! &
?

 
ActivatedAsync

  
(

  !
context

! (
,

( )
tpart

* /
)

/ 0
: 
Task 
. 
CompletedTask $
;$ %
} 	
Task 
IContentPartHandler  
.  !
ActivatingAsync! 0
(0 1$
ActivatingContentContext1 I
contextJ Q
,Q R
ContentPartS ^
part_ c
)c d
{ 	
return 
part 
is 
TPart  
tpart! &
? 
ActivatingAsync !
(! "
context" )
,) *
tpart+ 0
)0 1
: 
Task 
. 
CompletedTask $
;$ %
} 	
Task 
IContentPartHandler  
.  !
InitializingAsync! 2
(2 3&
InitializingContentContext3 M
contextN U
,U V
ContentPartW b
partc g
)g h
{ 	
return 
part 
is 
TPart  
tpart! &
? 
InitializingAsync #
(# $
context$ +
,+ ,
tpart- 2
)2 3
: 
Task 
. 
CompletedTask $
;$ %
} 	
Task 
IContentPartHandler  
.  !
InitializedAsync! 1
(1 2&
InitializingContentContext2 L
contextM T
,T U
ContentPartV a
partb f
)f g
{ 	
return 
part 
is 
TPart  
tpart! &
? 
InitializedAsync "
(" #
context# *
,* +
tpart, 1
)1 2
:   
Task   
.   
CompletedTask   $
;  $ %
}!! 	
Task## 
IContentPartHandler##  
.##  !
CreatingAsync##! .
(##. / 
CreateContentContext##/ C
context##D K
,##K L
ContentPart##M X
part##Y ]
)##] ^
{$$ 	
return%% 
part%% 
is%% 
TPart%%  
tpart%%! &
?&& 
CreatingAsync&& 
(&&  
context&&  '
,&&' (
tpart&&) .
)&&. /
:'' 
Task'' 
.'' 
CompletedTask'' $
;''$ %
}(( 	
Task** 
IContentPartHandler**  
.**  !
CreatedAsync**! -
(**- . 
CreateContentContext**. B
context**C J
,**J K
ContentPart**L W
part**X \
)**\ ]
{++ 	
return,, 
part,, 
is,, 
TPart,,  
tpart,,! &
?-- 
CreatedAsync-- 
(-- 
context-- &
,--& '
tpart--( -
)--- .
:.. 
Task.. 
... 
CompletedTask.. $
;..$ %
}// 	
Task11 
IContentPartHandler11  
.11  !
LoadingAsync11! -
(11- .
LoadContentContext11. @
context11A H
,11H I
ContentPart11J U
part11V Z
)11Z [
{22 	
return33 
part33 
is33 
TPart33  
tpart33! &
?44 
LoadingAsync44 
(44 
context44 &
,44& '
tpart44( -
)44- .
:55 
Task55 
.55 
CompletedTask55 $
;55$ %
}66 	
Task88 
IContentPartHandler88  
.88  !
LoadedAsync88! ,
(88, -
LoadContentContext88- ?
context88@ G
,88G H
ContentPart88I T
part88U Y
)88Y Z
{99 	
return:: 
part:: 
is:: 
TPart::  
tpart::! &
?;; 
LoadedAsync;; 
(;; 
context;; %
,;;% &
tpart;;' ,
);;, -
:<< 
Task<< 
.<< 
CompletedTask<< $
;<<$ %
}== 	
Task?? 
IContentPartHandler??  
.??  !
ImportingAsync??! /
(??/ 0 
ImportContentContext??0 D
context??E L
,??L M
ContentPart??N Y
part??Z ^
)??^ _
{@@ 	
returnAA 
partAA 
isAA 
TPartAA  
tpartAA! &
?BB 
ImportingAsyncBB  
(BB  !
contextBB! (
,BB( )
tpartBB* /
)BB/ 0
:CC 
TaskCC 
.CC 
CompletedTaskCC $
;CC$ %
}DD 	
TaskFF 
IContentPartHandlerFF  
.FF  !
ImportedAsyncFF! .
(FF. / 
ImportContentContextFF/ C
contextFFD K
,FFK L
ContentPartFFM X
partFFY ]
)FF] ^
{GG 	
returnHH 
partHH 
isHH 
TPartHH  
tpartHH! &
?II 
ImportedAsyncII 
(II  
contextII  '
,II' (
tpartII) .
)II. /
:JJ 
TaskJJ 
.JJ 
CompletedTaskJJ $
;JJ$ %
}KK 	
TaskLL 
IContentPartHandlerLL  
.LL  !
UpdatingAsyncLL! .
(LL. / 
UpdateContentContextLL/ C
contextLLD K
,LLK L
ContentPartLLM X
partLLY ]
)LL] ^
{MM 	
returnNN 
partNN 
isNN 
TPartNN  
tpartNN! &
?OO 
UpdatingAsyncOO 
(OO  
contextOO  '
,OO' (
tpartOO) .
)OO. /
:PP 
TaskPP 
.PP 
CompletedTaskPP $
;PP$ %
}QQ 	
TaskSS 
IContentPartHandlerSS  
.SS  !
UpdatedAsyncSS! -
(SS- . 
UpdateContentContextSS. B
contextSSC J
,SSJ K
ContentPartSSL W
partSSX \
)SS\ ]
{TT 	
returnUU 
partUU 
isUU 
TPartUU  
tpartUU! &
?VV 
UpdatedAsyncVV 
(VV 
contextVV &
,VV& '
tpartVV( -
)VV- .
:WW 
TaskWW 
.WW 
CompletedTaskWW $
;WW$ %
}XX 	
TaskZZ 
IContentPartHandlerZZ  
.ZZ  !
ValidatingAsyncZZ! 0
(ZZ0 1"
ValidateContentContextZZ1 G
contextZZH O
,ZZO P
ContentPartZZQ \
partZZ] a
)ZZa b
{[[ 	
return\\ 
part\\ 
is\\ 
TPart\\  
tpart\\! &
?]] 
ValidatingAsync]] !
(]]! "
context]]" )
,]]) *
tpart]]+ 0
)]]0 1
:^^ 
Task^^ 
.^^ 
CompletedTask^^ $
;^^$ %
}__ 	
Taskaa 
IContentPartHandleraa  
.aa  !
ValidatedAsyncaa! /
(aa/ 0"
ValidateContentContextaa0 F
contextaaG N
,aaN O
ContentPartaaP [
partaa\ `
)aa` a
{bb 	
returncc 
partcc 
iscc 
TPartcc  
tpartcc! &
?dd 
ValidatedAsyncdd  
(dd  !
contextdd! (
,dd( )
tpartdd* /
)dd/ 0
:ee 
Taskee 
.ee 
CompletedTaskee $
;ee$ %
}ff 	
Taskhh 
IContentPartHandlerhh  
.hh  !
VersioningAsynchh! 0
(hh0 1!
VersionContentContexthh1 F
contexthhG N
,hhN O
ContentParthhP [
existinghh\ d
,hhd e
ContentParthhf q
buildinghhr z
)hhz {
{ii 	
returnjj 
existingjj 
isjj 
TPartjj $
	texistingjj% .
&&jj/ 1
buildingjj2 :
isjj; =
TPartjj> C
	tbuildingjjD M
?kk 
VersioningAsynckk !
(kk! "
contextkk" )
,kk) *
	texistingkk+ 4
,kk4 5
	tbuildingkk6 ?
)kk? @
:ll 
Taskll 
.ll 
CompletedTaskll $
;ll$ %
}mm 	
Taskoo 
IContentPartHandleroo  
.oo  !
VersionedAsyncoo! /
(oo/ 0!
VersionContentContextoo0 E
contextooF M
,ooM N
ContentPartooO Z
existingoo[ c
,ooc d
ContentPartooe p
buildingooq y
)ooy z
{pp 	
returnqq 
existingqq 
isqq 
TPartqq $
	texistingqq% .
&&qq/ 1
buildingqq2 :
isqq; =
TPartqq> C
	tbuildingqqD M
?rr 
VersionedAsyncrr  
(rr  !
contextrr! (
,rr( )
	texistingrr* 3
,rr3 4
	tbuildingrr5 >
)rr> ?
:ss 
Taskss 
.ss 
CompletedTaskss $
;ss$ %
}tt 	
Taskvv 
IContentPartHandlervv  
.vv  !
DraftSavingAsyncvv! 1
(vv1 2#
SaveDraftContentContextvv2 I
contextvvJ Q
,vvQ R
ContentPartvvS ^
partvv_ c
)vvc d
{ww 	
returnxx 
partxx 
isxx 
TPartxx  
tpartxx! &
?yy 
DraftSavingAsyncyy "
(yy" #
contextyy# *
,yy* +
tpartyy, 1
)yy1 2
:zz 
Taskzz 
.zz 
CompletedTaskzz $
;zz$ %
}{{ 	
Task}} 
IContentPartHandler}}  
.}}  !
DraftSavedAsync}}! 0
(}}0 1#
SaveDraftContentContext}}1 H
context}}I P
,}}P Q
ContentPart}}R ]
part}}^ b
)}}b c
{~~ 	
return 
part 
is 
TPart  
tpart! &
?
�� 
DraftSavedAsync
�� !
(
��! "
context
��" )
,
��) *
tpart
��+ 0
)
��0 1
:
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
Task
�� !
IContentPartHandler
��  
.
��  !
PublishingAsync
��! 0
(
��0 1#
PublishContentContext
��1 F
context
��G N
,
��N O
ContentPart
��P [
part
��\ `
)
��` a
{
�� 	
return
�� 
part
�� 
is
�� 
TPart
��  
tpart
��! &
?
�� 
PublishingAsync
�� !
(
��! "
context
��" )
,
��) *
tpart
��+ 0
)
��0 1
:
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
Task
�� !
IContentPartHandler
��  
.
��  !
PublishedAsync
��! /
(
��/ 0#
PublishContentContext
��0 E
context
��F M
,
��M N
ContentPart
��O Z
part
��[ _
)
��_ `
{
�� 	
return
�� 
part
�� 
is
�� 
TPart
��  
tpart
��! &
?
�� 
PublishedAsync
��  
(
��  !
context
��! (
,
��( )
tpart
��* /
)
��/ 0
:
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
Task
�� !
IContentPartHandler
��  
.
��  !
UnpublishingAsync
��! 2
(
��2 3#
PublishContentContext
��3 H
context
��I P
,
��P Q
ContentPart
��R ]
part
��^ b
)
��b c
{
�� 	
return
�� 
part
�� 
is
�� 
TPart
��  
tpart
��! &
?
�� 
UnpublishingAsync
�� #
(
��# $
context
��$ +
,
��+ ,
tpart
��- 2
)
��2 3
:
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
Task
�� !
IContentPartHandler
��  
.
��  !
UnpublishedAsync
��! 1
(
��1 2#
PublishContentContext
��2 G
context
��H O
,
��O P
ContentPart
��Q \
part
��] a
)
��a b
{
�� 	
return
�� 
part
�� 
is
�� 
TPart
��  
tpart
��! &
?
�� 
UnpublishedAsync
�� "
(
��" #
context
��# *
,
��* +
tpart
��, 1
)
��1 2
:
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
Task
�� !
IContentPartHandler
��  
.
��  !
RemovingAsync
��! .
(
��. /"
RemoveContentContext
��/ C
context
��D K
,
��K L
ContentPart
��M X
part
��Y ]
)
��] ^
{
�� 	
return
�� 
part
�� 
is
�� 
TPart
��  
tpart
��! &
?
�� 
RemovingAsync
�� 
(
��  
context
��  '
,
��' (
tpart
��) .
)
��. /
:
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
Task
�� !
IContentPartHandler
��  
.
��  !
RemovedAsync
��! -
(
��- ."
RemoveContentContext
��. B
context
��C J
,
��J K
ContentPart
��L W
part
��X \
)
��\ ]
{
�� 	
return
�� 
part
�� 
is
�� 
TPart
��  
tpart
��! &
?
�� 
RemovedAsync
�� 
(
�� 
context
�� &
,
��& '
tpart
��( -
)
��- .
:
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
Task
�� !
IContentPartHandler
��  
.
��  !'
GetContentItemAspectAsync
��! :
(
��: ;&
ContentItemAspectContext
��; S
context
��T [
,
��[ \
ContentPart
��] h
part
��i m
)
��m n
{
�� 	
return
�� 
part
�� 
is
�� 
TPart
��  
tpart
��! &
?
�� '
GetContentItemAspectAsync
�� +
(
��+ ,
context
��, 3
,
��3 4
tpart
��5 :
)
��: ;
:
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
async
�� 
Task
�� !
IContentPartHandler
�� &
.
��& '
CloningAsync
��' 3
(
��3 4!
CloneContentContext
��4 G
context
��H O
,
��O P
ContentPart
��Q \
part
��] a
)
��a b
{
�� 	
if
�� 
(
�� 
part
�� 
is
�� 
TPart
�� 
tpart
�� #
)
��# $
{
�� 
await
�� 
CloningAsync
�� "
(
��" #
context
��# *
,
��* +
tpart
��, 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
async
�� 
Task
�� !
IContentPartHandler
�� &
.
��& '
ClonedAsync
��' 2
(
��2 3!
CloneContentContext
��3 F
context
��G N
,
��N O
ContentPart
��P [
part
��\ `
)
��` a
{
�� 	
if
�� 
(
�� 
part
�� 
is
�� 
TPart
�� 
tpart
�� #
)
��# $
{
�� 
await
�� 
ClonedAsync
�� !
(
��! "
context
��" )
,
��) *
tpart
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
public
�� 
virtual
�� 
Task
�� 
ActivatedAsync
�� *
(
��* +%
ActivatedContentContext
��+ B
context
��C J
,
��J K
TPart
��L Q
instance
��R Z
)
��Z [
=>
��\ ^
Task
��_ c
.
��c d
CompletedTask
��d q
;
��q r
public
�� 
virtual
�� 
Task
�� 
ActivatingAsync
�� +
(
��+ ,&
ActivatingContentContext
��, D
context
��E L
,
��L M
TPart
��N S
instance
��T \
)
��\ ]
=>
��^ `
Task
��a e
.
��e f
CompletedTask
��f s
;
��s t
public
�� 
virtual
�� 
Task
�� 
InitializingAsync
�� -
(
��- .(
InitializingContentContext
��. H
context
��I P
,
��P Q
TPart
��R W
instance
��X `
)
��` a
=>
��b d
Task
��e i
.
��i j
CompletedTask
��j w
;
��w x
public
�� 
virtual
�� 
Task
�� 
InitializedAsync
�� ,
(
��, -(
InitializingContentContext
��- G
context
��H O
,
��O P
TPart
��Q V
instance
��W _
)
��_ `
=>
��a c
Task
��d h
.
��h i
CompletedTask
��i v
;
��v w
public
�� 
virtual
�� 
Task
�� 
CreatingAsync
�� )
(
��) *"
CreateContentContext
��* >
context
��? F
,
��F G
TPart
��H M
instance
��N V
)
��V W
=>
��X Z
Task
��[ _
.
��_ `
CompletedTask
��` m
;
��m n
public
�� 
virtual
�� 
Task
�� 
CreatedAsync
�� (
(
��( )"
CreateContentContext
��) =
context
��> E
,
��E F
TPart
��G L
instance
��M U
)
��U V
=>
��W Y
Task
��Z ^
.
��^ _
CompletedTask
��_ l
;
��l m
public
�� 
virtual
�� 
Task
�� 
LoadingAsync
�� (
(
��( ) 
LoadContentContext
��) ;
context
��< C
,
��C D
TPart
��E J
instance
��K S
)
��S T
=>
��U W
Task
��X \
.
��\ ]
CompletedTask
��] j
;
��j k
public
�� 
virtual
�� 
Task
�� 
LoadedAsync
�� '
(
��' ( 
LoadContentContext
��( :
context
��; B
,
��B C
TPart
��D I
instance
��J R
)
��R S
=>
��T V
Task
��W [
.
��[ \
CompletedTask
��\ i
;
��i j
public
�� 
virtual
�� 
Task
�� 
ImportingAsync
�� *
(
��* +"
ImportContentContext
��+ ?
context
��@ G
,
��G H
TPart
��I N
instance
��O W
)
��W X
=>
��Y [
Task
��\ `
.
��` a
CompletedTask
��a n
;
��n o
public
�� 
virtual
�� 
Task
�� 
ImportedAsync
�� )
(
��) *"
ImportContentContext
��* >
context
��? F
,
��F G
TPart
��H M
instance
��N V
)
��V W
=>
��X Z
Task
��[ _
.
��_ `
CompletedTask
��` m
;
��m n
public
�� 
virtual
�� 
Task
�� 
UpdatingAsync
�� )
(
��) *"
UpdateContentContext
��* >
context
��? F
,
��F G
TPart
��H M
instance
��N V
)
��V W
=>
��X Z
Task
��[ _
.
��_ `
CompletedTask
��` m
;
��m n
public
�� 
virtual
�� 
Task
�� 
UpdatedAsync
�� (
(
��( )"
UpdateContentContext
��) =
context
��> E
,
��E F
TPart
��G L
instance
��M U
)
��U V
=>
��W Y
Task
��Z ^
.
��^ _
CompletedTask
��_ l
;
��l m
public
�� 
virtual
�� 
Task
�� 
ValidatingAsync
�� +
(
��+ ,$
ValidateContentContext
��, B
context
��C J
,
��J K
TPart
��L Q
instance
��R Z
)
��Z [
=>
��\ ^
Task
��_ c
.
��c d
CompletedTask
��d q
;
��q r
public
�� 
virtual
�� 
Task
�� 
ValidatedAsync
�� *
(
��* +$
ValidateContentContext
��+ A
context
��B I
,
��I J
TPart
��K P
instance
��Q Y
)
��Y Z
=>
��[ ]
Task
��^ b
.
��b c
CompletedTask
��c p
;
��p q
public
�� 
virtual
�� 
Task
�� 
VersioningAsync
�� +
(
��+ ,#
VersionContentContext
��, A
context
��B I
,
��I J
TPart
��K P
existing
��Q Y
,
��Y Z
TPart
��[ `
building
��a i
)
��i j
=>
��k m
Task
��n r
.
��r s
CompletedTask��s �
;��� �
public
�� 
virtual
�� 
Task
�� 
VersionedAsync
�� *
(
��* +#
VersionContentContext
��+ @
context
��A H
,
��H I
TPart
��J O
existing
��P X
,
��X Y
TPart
��Z _
building
��` h
)
��h i
=>
��j l
Task
��m q
.
��q r
CompletedTask
��r 
;�� �
public
�� 
virtual
�� 
Task
�� 
DraftSavingAsync
�� ,
(
��, -%
SaveDraftContentContext
��- D
context
��E L
,
��L M
TPart
��N S
instance
��T \
)
��\ ]
=>
��^ `
Task
��a e
.
��e f
CompletedTask
��f s
;
��s t
public
�� 
virtual
�� 
Task
�� 
DraftSavedAsync
�� +
(
��+ ,%
SaveDraftContentContext
��, C
context
��D K
,
��K L
TPart
��M R
instance
��S [
)
��[ \
=>
��] _
Task
��` d
.
��d e
CompletedTask
��e r
;
��r s
public
�� 
virtual
�� 
Task
�� 
PublishingAsync
�� +
(
��+ ,#
PublishContentContext
��, A
context
��B I
,
��I J
TPart
��K P
instance
��Q Y
)
��Y Z
=>
��[ ]
Task
��^ b
.
��b c
CompletedTask
��c p
;
��p q
public
�� 
virtual
�� 
Task
�� 
PublishedAsync
�� *
(
��* +#
PublishContentContext
��+ @
context
��A H
,
��H I
TPart
��J O
instance
��P X
)
��X Y
=>
��Z \
Task
��] a
.
��a b
CompletedTask
��b o
;
��o p
public
�� 
virtual
�� 
Task
�� 
UnpublishingAsync
�� -
(
��- .#
PublishContentContext
��. C
context
��D K
,
��K L
TPart
��M R
instance
��S [
)
��[ \
=>
��] _
Task
��` d
.
��d e
CompletedTask
��e r
;
��r s
public
�� 
virtual
�� 
Task
�� 
UnpublishedAsync
�� ,
(
��, -#
PublishContentContext
��- B
context
��C J
,
��J K
TPart
��L Q
instance
��R Z
)
��Z [
=>
��\ ^
Task
��_ c
.
��c d
CompletedTask
��d q
;
��q r
public
�� 
virtual
�� 
Task
�� 
RemovingAsync
�� )
(
��) *"
RemoveContentContext
��* >
context
��? F
,
��F G
TPart
��H M
instance
��N V
)
��V W
=>
��X Z
Task
��[ _
.
��_ `
CompletedTask
��` m
;
��m n
public
�� 
virtual
�� 
Task
�� 
RemovedAsync
�� (
(
��( )"
RemoveContentContext
��) =
context
��> E
,
��E F
TPart
��G L
instance
��M U
)
��U V
=>
��W Y
Task
��Z ^
.
��^ _
CompletedTask
��_ l
;
��l m
public
�� 
virtual
�� 
Task
�� '
GetContentItemAspectAsync
�� 5
(
��5 6&
ContentItemAspectContext
��6 N
context
��O V
,
��V W
TPart
��X ]
part
��^ b
)
��b c
=>
��d f
Task
��g k
.
��k l
CompletedTask
��l y
;
��y z
public
�� 
virtual
�� 
Task
�� 
CloningAsync
�� (
(
��( )!
CloneContentContext
��) <
context
��= D
,
��D E
TPart
��F K
part
��L P
)
��P Q
=>
��R T
Task
��U Y
.
��Y Z
CompletedTask
��Z g
;
��g h
public
�� 
virtual
�� 
Task
�� 
ClonedAsync
�� '
(
��' (!
CloneContentContext
��( ;
context
��< C
,
��C D
TPart
��E J
part
��K O
)
��O P
=>
��Q S
Task
��T X
.
��X Y
CompletedTask
��Y f
;
��f g
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ContentValidateResult.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class !
ContentValidateResult &
{ 
private		 
readonly		 
List		 
<		 
ValidationResult		 .
>		. /
_errors		0 7
=		8 9
new		: =
List		> B
<		B C
ValidationResult		C S
>		S T
(		T U
)		U V
;		V W
public 
IReadOnlyList 
< 
ValidationResult -
>- .
Errors/ 5
=>6 8
_errors9 @
;@ A
public 
bool 
	Succeeded 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
true. 2
;2 3
public 
void 
Fail 
( 
ValidationResult )
error* /
)/ 0
{ 	
	Succeeded 
= 
false 
; 
_errors 
. 
Add 
( 
error 
) 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\CreateContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class  
CreateContentContext %
:& '
ContentContextBase( :
{ 
public  
CreateContentContext #
(# $
ContentItem$ /
contentItem0 ;
); <
:= >
base? C
(C D
contentItemD O
)O P
{ 	
} 	
} 
}		 �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\IContentHandler.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

	interface 
IContentHandler $
{ 
Task 
ActivatingAsync 
( $
ActivatingContentContext 5
context6 =
)= >
;> ?
Task 
ActivatedAsync 
( #
ActivatedContentContext 3
context4 ;
); <
;< =
Task		 
InitializingAsync		 
(		 &
InitializingContentContext		 9
context		: A
)		A B
;		B C
Task

 
InitializedAsync

 
(

 &
InitializingContentContext

 8
context

9 @
)

@ A
;

A B
Task 
CreatingAsync 
(  
CreateContentContext /
context0 7
)7 8
;8 9
Task 
CreatedAsync 
(  
CreateContentContext .
context/ 6
)6 7
;7 8
Task 
LoadingAsync 
( 
LoadContentContext ,
context- 4
)4 5
;5 6
Task 
LoadedAsync 
( 
LoadContentContext +
context, 3
)3 4
;4 5
Task 
ImportingAsync 
(  
ImportContentContext 0
context1 8
)8 9
;9 :
Task 
ImportedAsync 
(  
ImportContentContext /
context0 7
)7 8
;8 9
Task 
UpdatingAsync 
(  
UpdateContentContext /
context0 7
)7 8
;8 9
Task 
UpdatedAsync 
(  
UpdateContentContext .
context/ 6
)6 7
;7 8
Task 
ValidatingAsync 
( "
ValidateContentContext 3
context4 ;
); <
;< =
Task 
ValidatedAsync 
( "
ValidateContentContext 2
context3 :
): ;
;; <
Task 
VersioningAsync 
( !
VersionContentContext 2
context3 :
): ;
;; <
Task 
VersionedAsync 
( !
VersionContentContext 1
context2 9
)9 :
;: ;
Task 
DraftSavingAsync 
( #
SaveDraftContentContext 5
context6 =
)= >
;> ?
Task 
DraftSavedAsync 
( #
SaveDraftContentContext 4
context5 <
)< =
;= >
Task 
PublishingAsync 
( !
PublishContentContext 2
context3 :
): ;
;; <
Task 
PublishedAsync 
( !
PublishContentContext 1
context2 9
)9 :
;: ;
Task 
UnpublishingAsync 
( !
PublishContentContext 4
context5 <
)< =
;= >
Task 
UnpublishedAsync 
( !
PublishContentContext 3
context4 ;
); <
;< =
Task 
RemovingAsync 
(  
RemoveContentContext /
context0 7
)7 8
;8 9
Task 
RemovedAsync 
(  
RemoveContentContext .
context/ 6
)6 7
;7 8
Task %
GetContentItemAspectAsync &
(& '$
ContentItemAspectContext' ?
context@ G
)G H
;H I
Task   
CloningAsync   
(   
CloneContentContext   -
context  . 5
)  5 6
;  6 7
Task!! 
ClonedAsync!! 
(!! 
CloneContentContext!! ,
context!!- 4
)!!4 5
;!!5 6
}"" 
}## �/
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\IContentPartHandler.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

	interface 
IContentPartHandler (
{		 
Task

 
ActivatedAsync

 
(

 #
ActivatedContentContext

 3
context

4 ;
,

; <
ContentPart

= H
part

I M
)

M N
;

N O
Task 
ActivatingAsync 
( $
ActivatingContentContext 5
context6 =
,= >
ContentPart? J
partK O
)O P
;P Q
Task 
InitializingAsync 
( &
InitializingContentContext 9
context: A
,A B
ContentPartC N
partO S
)S T
;T U
Task 
InitializedAsync 
( &
InitializingContentContext 8
context9 @
,@ A
ContentPartB M
partN R
)R S
;S T
Task 
CreatingAsync 
(  
CreateContentContext /
context0 7
,7 8
ContentPart9 D
partE I
)I J
;J K
Task 
CreatedAsync 
(  
CreateContentContext .
context/ 6
,6 7
ContentPart8 C
partD H
)H I
;I J
Task 
LoadingAsync 
( 
LoadContentContext ,
context- 4
,4 5
ContentPart6 A
partB F
)F G
;G H
Task 
LoadedAsync 
( 
LoadContentContext +
context, 3
,3 4
ContentPart5 @
partA E
)E F
;F G
Task 
ImportingAsync 
(  
ImportContentContext 0
context1 8
,8 9
ContentPart: E
partF J
)J K
;K L
Task 
ImportedAsync 
(  
ImportContentContext /
context0 7
,7 8
ContentPart9 D
partE I
)I J
;J K
Task 
UpdatingAsync 
(  
UpdateContentContext /
context0 7
,7 8
ContentPart9 D
partE I
)I J
;J K
Task 
UpdatedAsync 
(  
UpdateContentContext .
context/ 6
,6 7
ContentPart8 C
partD H
)H I
;I J
Task 
ValidatingAsync 
( "
ValidateContentContext 3
context4 ;
,; <
ContentPart= H
partI M
)M N
;N O
Task 
ValidatedAsync 
( "
ValidateContentContext 2
context3 :
,: ;
ContentPart< G
partH L
)L M
;M N
Task 
VersioningAsync 
( !
VersionContentContext 2
context3 :
,: ;
ContentPart< G
existingH P
,P Q
ContentPartR ]
building^ f
)f g
;g h
Task 
VersionedAsync 
( !
VersionContentContext 1
context2 9
,9 :
ContentPart; F
existingG O
,O P
ContentPartQ \
building] e
)e f
;f g
Task 
DraftSavingAsync 
( #
SaveDraftContentContext 5
context6 =
,= >
ContentPart? J
partK O
)O P
;P Q
Task 
DraftSavedAsync 
( #
SaveDraftContentContext 4
context5 <
,< =
ContentPart> I
partJ N
)N O
;O P
Task 
PublishingAsync 
( !
PublishContentContext 2
context3 :
,: ;
ContentPart< G
partH L
)L M
;M N
Task 
PublishedAsync 
( !
PublishContentContext 1
context2 9
,9 :
ContentPart; F
partG K
)K L
;L M
Task 
UnpublishingAsync 
( !
PublishContentContext 4
context5 <
,< =
ContentPart> I
partJ N
)N O
;O P
Task 
UnpublishedAsync 
( !
PublishContentContext 3
context4 ;
,; <
ContentPart= H
partI M
)M N
;N O
Task   
RemovingAsync   
(    
RemoveContentContext   /
context  0 7
,  7 8
ContentPart  9 D
part  E I
)  I J
;  J K
Task!! 
RemovedAsync!! 
(!!  
RemoveContentContext!! .
context!!/ 6
,!!6 7
ContentPart!!8 C
part!!D H
)!!H I
;!!I J
Task"" %
GetContentItemAspectAsync"" &
(""& '$
ContentItemAspectContext""' ?
context""@ G
,""G H
ContentPart""I T
part""U Y
)""Y Z
;""Z [
Task## 
CloningAsync## 
(## 
CloneContentContext## -
context##. 5
,##5 6
ContentPart##7 B
part##C G
)##G H
;##H I
Task$$ 
ClonedAsync$$ 
($$ 
CloneContentContext$$ ,
context$$- 4
,$$4 5
ContentPart$$6 A
part$$B F
)$$F G
;$$G H
}%% 
}&& �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\IContentPartHandlerResolver.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

	interface '
IContentPartHandlerResolver 0
{ 
IList 
< 
IContentPartHandler !
>! "
GetHandlers# .
(. /
string/ 5
partName6 >
)> ?
;? @
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ImportContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class  
ImportContentContext %
:& '
ContentContextBase( :
{ 
public 
ContentItem 
OriginalContentItem .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public

  
ImportContentContext

 #
(

# $
ContentItem

$ /
contentItem

0 ;
,

; <
ContentItem

= H
originalContentItem

I \
=

] ^
null

_ c
)

c d
:

e f
base

g k
(

k l
contentItem

l w
)

w x
{ 	
OriginalContentItem 
=  !
originalContentItem" 5
;5 6
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\InitializingContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class &
InitializingContentContext +
:, -
ContentContextBase. @
{ 
public &
InitializingContentContext )
() *
ContentItem* 5
contentItem6 A
)A B
:C D
baseE I
(I J
contentItemJ U
)U V
{ 	
} 	
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\LoadContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class 
LoadContentContext #
:$ %
ContentContextBase& 8
{ 
public 
LoadContentContext !
(! "
ContentItem" -
contentItem. 9
)9 :
:; <
base= A
(A B
contentItemB M
)M N
{ 	
} 	
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\PublishContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class !
PublishContentContext &
:' (
ContentContextBase) ;
{ 
public !
PublishContentContext $
($ %
ContentItem% 0
contentItem1 <
,< =
ContentItem> I
previousContentItemJ ]
)] ^
:_ `
basea e
(e f
contentItemf q
)q r
{ 	
PublishingItem 
= 
contentItem (
;( )
PreviousItem 
= 
previousContentItem .
;. /
}		 	
public 
ContentItem 
PublishingItem )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
ContentItem 
PreviousItem '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
Cancel 
{ 
get  
;  !
set" %
;% &
}' (
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\RemoveContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class  
RemoveContentContext %
:& '
ContentContextBase( :
{ 
public  
RemoveContentContext #
(# $
ContentItem$ /
contentItem0 ;
,; <
bool= A
noActiveVersionLeftB U
=V W
falseX ]
)] ^
:_ `
basea e
(e f
contentItemf q
)q r
{ 	
NoActiveVersionLeft 
=  !
noActiveVersionLeft" 5
;5 6
} 	
public

 
bool

 
NoActiveVersionLeft

 '
{

( )
get

* -
;

- .
}

/ 0
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\SaveDraftContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class #
SaveDraftContentContext (
:) *
ContentContextBase+ =
{ 
public #
SaveDraftContentContext &
(& '
ContentItem' 2
contentItem3 >
)> ?
:@ A
baseB F
(F G
contentItemG R
)R S
{ 	
} 	
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\UpdateContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class  
UpdateContentContext %
:& '
ContentContextBase( :
{ 
public  
UpdateContentContext #
(# $
ContentItem$ /
contentItem0 ;
); <
:= >
base? C
(C D
contentItemD O
)O P
{ 	
UpdatingItem 
= 
contentItem &
;& '
} 	
public

 
ContentItem

 
UpdatingItem

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\ValidateContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class "
ValidateContentContext '
:( )
ContentContextBase* <
{ 
public		 "
ValidateContentContext		 %
(		% &
ContentItem		& 1
contentItem		2 =
)		= >
:		? @
base		A E
(		E F
contentItem		F Q
)		Q R
{

 	
} 	
public !
ContentValidateResult $!
ContentValidateResult% :
{; <
get= @
;@ A
}B C
=D E
newF I!
ContentValidateResultJ _
(_ `
)` a
;a b
} 
public 

static 
class ,
 ValidateContentContextExtensions 8
{ 
public 
static 
void 
Fail 
(  
this  $"
ValidateContentContext% ;
context< C
,C D
ValidationResultE U
errorV [
)[ \
{ 	
context 
. !
ContentValidateResult )
.) *
Fail* .
(. /
error/ 4
)4 5
;5 6
} 	
public 
static 
void 
Fail 
(  
this  $"
ValidateContentContext% ;
context< C
,C D
stringE K
errorMessageL X
,X Y
paramsZ `
stringa g
[g h
]h i
memberNamesj u
)u v
{ 	
if 
( 
memberNames 
!= 
null #
&&$ &
memberNames' 2
.2 3
Any3 6
(6 7
)7 8
)8 9
{ 
context 
. !
ContentValidateResult -
.- .
Fail. 2
(2 3
new3 6
ValidationResult7 G
(G H
errorMessageH T
,T U
memberNamesV a
)a b
)b c
;c d
} 
else 
{   
context!! 
.!! !
ContentValidateResult!! -
.!!- .
Fail!!. 2
(!!2 3
new!!3 6
ValidationResult!!7 G
(!!G H
errorMessage!!H T
)!!T U
)!!U V
;!!V W
}"" 
}## 	
}$$ 
}%% �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Handlers\VersionContentContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Handlers( 0
{ 
public 

class !
VersionContentContext &
:' (
ContentContextBase) ;
{ 
public !
VersionContentContext $
($ %
ContentItem% 0
contentItem1 <
,< =
ContentItem> I
buildingContentItemJ ]
)] ^
:_ `
basea e
(e f
contentItemf q
)q r
{ 	
BuildingContentItem 
=  !
buildingContentItem" 5
;5 6
} 	
public

 
ContentItem

 
BuildingContentItem

 .
{

/ 0
get

1 4
;

4 5
}

6 7
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContent.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface 
IContent 
{ 
ContentItem 
ContentItem 
{  !
get" %
;% &
}' (
} 
} �o
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContentDefinitionManager.cs
	namespace		 	
OrchardCore		
 
.		 
ContentManagement		 '
.		' (
Metadata		( 0
{

 
public 

	interface %
IContentDefinitionManager .
{ 
IEnumerable 
< !
ContentTypeDefinition )
>) *
LoadTypeDefinitions+ >
(> ?
)? @
;@ A
IEnumerable 
< !
ContentTypeDefinition )
>) *
ListTypeDefinitions+ >
(> ?
)? @
;@ A
IEnumerable 
< !
ContentPartDefinition )
>) *
LoadPartDefinitions+ >
(> ?
)? @
;@ A
IEnumerable 
< !
ContentPartDefinition )
>) *
ListPartDefinitions+ >
(> ?
)? @
;@ A!
ContentTypeDefinition 
LoadTypeDefinition 0
(0 1
string1 7
name8 <
)< =
;= >!
ContentTypeDefinition 
GetTypeDefinition /
(/ 0
string0 6
name7 ;
); <
;< =!
ContentPartDefinition 
LoadPartDefinition 0
(0 1
string1 7
name8 <
)< =
;= >!
ContentPartDefinition 
GetPartDefinition /
(/ 0
string0 6
name7 ;
); <
;< =
void  
DeleteTypeDefinition !
(! "
string" (
name) -
)- .
;. /
void  
DeletePartDefinition !
(! "
string" (
name) -
)- .
;. /
void 
StoreTypeDefinition  
(  !!
ContentTypeDefinition! 6!
contentTypeDefinition7 L
)L M
;M N
void 
StorePartDefinition  
(  !!
ContentPartDefinition! 6!
contentPartDefinition7 L
)L M
;M N
Task$$ 
<$$ 
string$$ 
>$$ 
GetIdentifierAsync$$ '
($$' (
)$$( )
;$$) *
}%% 
public'' 

static'' 
class'' .
"ContentDefinitionManagerExtensions'' :
{(( 
public)) 
static)) 
void)) 
AlterTypeDefinition)) .
()). /
this))/ 3%
IContentDefinitionManager))4 M
manager))N U
,))U V
string))W ]
name))^ b
,))b c
Action))d j
<))j k)
ContentTypeDefinitionBuilder	))k �
>
))� �

alteration
))� �
)
))� �
{** 	
var++ 
typeDefinition++ 
=++  
manager++! (
.++( )
LoadTypeDefinition++) ;
(++; <
name++< @
)++@ A
??++B D
new++E H!
ContentTypeDefinition++I ^
(++^ _
name++_ c
,++c d
name++e i
.++i j
CamelFriendly++j w
(++w x
)++x y
)++y z
;++z {
var,, 
builder,, 
=,, 
new,, (
ContentTypeDefinitionBuilder,, :
(,,: ;
typeDefinition,,; I
),,I J
;,,J K

alteration-- 
(-- 
builder-- 
)-- 
;--  
manager.. 
... 
StoreTypeDefinition.. '
(..' (
builder..( /
.../ 0
Build..0 5
(..5 6
)..6 7
)..7 8
;..8 9
}// 	
public11 
static11 
async11 
Task11  $
AlterTypeDefinitionAsync11! 9
(119 :
this11: >%
IContentDefinitionManager11? X
manager11Y `
,11` a
string11b h
name11i m
,11m n
Func11o s
<11s t)
ContentTypeDefinitionBuilder	11t �
,
11� �
Task
11� �
>
11� �
alterationAsync
11� �
)
11� �
{22 	
var33 
typeDefinition33 
=33  
manager33! (
.33( )
LoadTypeDefinition33) ;
(33; <
name33< @
)33@ A
??33B D
new33E H!
ContentTypeDefinition33I ^
(33^ _
name33_ c
,33c d
name33e i
.33i j
CamelFriendly33j w
(33w x
)33x y
)33y z
;33z {
var44 
builder44 
=44 
new44 (
ContentTypeDefinitionBuilder44 :
(44: ;
typeDefinition44; I
)44I J
;44J K
await55 
alterationAsync55 !
(55! "
builder55" )
)55) *
;55* +
manager66 
.66 
StoreTypeDefinition66 '
(66' (
builder66( /
.66/ 0
Build660 5
(665 6
)666 7
)667 8
;668 9
}77 	
public99 
static99 
void99 
AlterPartDefinition99 .
(99. /
this99/ 3%
IContentDefinitionManager994 M
manager99N U
,99U V
string99W ]
name99^ b
,99b c
Action99d j
<99j k)
ContentPartDefinitionBuilder	99k �
>
99� �

alteration
99� �
)
99� �
{:: 	
var;; 
partDefinition;; 
=;;  
manager;;! (
.;;( )
LoadPartDefinition;;) ;
(;;; <
name;;< @
);;@ A
??;;B D
new;;E H!
ContentPartDefinition;;I ^
(;;^ _
name;;_ c
);;c d
;;;d e
var<< 
builder<< 
=<< 
new<< (
ContentPartDefinitionBuilder<< :
(<<: ;
partDefinition<<; I
)<<I J
;<<J K

alteration== 
(== 
builder== 
)== 
;==  
manager>> 
.>> 
StorePartDefinition>> '
(>>' (
builder>>( /
.>>/ 0
Build>>0 5
(>>5 6
)>>6 7
)>>7 8
;>>8 9
}?? 	
publicAA 
staticAA 
asyncAA 
TaskAA  $
AlterPartDefinitionAsyncAA! 9
(AA9 :
thisAA: >%
IContentDefinitionManagerAA? X
managerAAY `
,AA` a
stringAAb h
nameAAi m
,AAm n
FuncAAo s
<AAs t)
ContentPartDefinitionBuilder	AAt �
,
AA� �
Task
AA� �
>
AA� �
alterationAsync
AA� �
)
AA� �
{BB 	
varCC 
partDefinitionCC 
=CC  
managerCC! (
.CC( )
LoadPartDefinitionCC) ;
(CC; <
nameCC< @
)CC@ A
??CCB D
newCCE H!
ContentPartDefinitionCCI ^
(CC^ _
nameCC_ c
)CCc d
;CCd e
varDD 
builderDD 
=DD 
newDD (
ContentPartDefinitionBuilderDD :
(DD: ;
partDefinitionDD; I
)DDI J
;DDJ K
awaitEE 
alterationAsyncEE !
(EE! "
builderEE" )
)EE) *
;EE* +
managerFF 
.FF 
StorePartDefinitionFF '
(FF' (
builderFF( /
.FF/ 0
BuildFF0 5
(FF5 6
)FF6 7
)FF7 8
;FF8 9
}GG 	
publicPP 
staticPP 
voidPP 
MigratePartSettingsPP .
<PP. /
TPartPP/ 4
,PP4 5
	TSettingsPP6 ?
>PP? @
(PP@ A
thisPPA E%
IContentDefinitionManagerPPF _
managerPP` g
)PPg h
whereQQ 
TPartQQ 
:QQ 
ContentPartQQ %
whereQQ& +
	TSettingsQQ, 5
:QQ6 7
classQQ8 =
{RR 	
varSS 
contentTypesSS 
=SS 
managerSS &
.SS& '
LoadTypeDefinitionsSS' :
(SS: ;
)SS; <
;SS< =
foreachUU 
(UU 
varUU 
contentTypeUU $
inUU% '
contentTypesUU( 4
)UU4 5
{VV 
varWW 
partDefinitionWW "
=WW# $
contentTypeWW% 0
.WW0 1
PartsWW1 6
.WW6 7
FirstOrDefaultWW7 E
(WWE F
xWWF G
=>WWH J
xWWK L
.WWL M
PartDefinitionWWM [
.WW[ \
NameWW\ `
==WWa c
typeofWWd j
(WWj k
TPartWWk p
)WWp q
.WWq r
NameWWr v
)WWv w
;WWw x
ifXX 
(XX 
partDefinitionXX "
!=XX# %
nullXX& *
)XX* +
{YY 
varZZ 
existingSettingsZZ (
=ZZ) *
partDefinitionZZ+ 9
.ZZ9 :
SettingsZZ: B
.ZZB C
ToObjectZZC K
<ZZK L
	TSettingsZZL U
>ZZU V
(ZZV W
)ZZW X
;ZZX Y
var]] 

properties]] "
=]]# $
typeof]]% +
(]]+ ,
	TSettings]], 5
)]]5 6
.]]6 7
GetProperties]]7 D
(]]D E
)]]E F
;]]F G
foreach^^ 
(^^ 
var^^  
property^^! )
in^^* ,

properties^^- 7
)^^7 8
{__ 
partDefinition`` &
.``& '
Settings``' /
.``/ 0
Remove``0 6
(``6 7
property``7 ?
.``? @
Name``@ D
)``D E
;``E F
}aa 
managerdd 
.dd 
AlterTypeDefinitiondd /
(dd/ 0
contentTypedd0 ;
.dd; <
Namedd< @
,dd@ A
typeBuilderddB M
=>ddN P
{ee 
typeBuilderff #
.ff# $
WithPartff$ ,
(ff, -
partDefinitionff- ;
.ff; <
Nameff< @
,ff@ A
partBuilderffB M
=>ffN P
{gg 
partBuilderhh '
.hh' (
WithSettingshh( 4
(hh4 5
existingSettingshh5 E
)hhE F
;hhF G
}ii 
)ii 
;ii 
}jj 
)jj 
;jj 
}kk 
}ll 
}mm 	
publicvv 
staticvv 
voidvv  
MigrateFieldSettingsvv /
<vv/ 0
TFieldvv0 6
,vv6 7
	TSettingsvv8 A
>vvA B
(vvB C
thisvvC G%
IContentDefinitionManagervvH a
managervvb i
)vvi j
whereww 
TFieldww 
:ww 
ContentFieldww '
whereww( -
	TSettingsww. 7
:ww8 9
classww: ?
{xx 	
varyy 
partDefinitionsyy 
=yy  !
manageryy" )
.yy) *
LoadPartDefinitionsyy* =
(yy= >
)yy> ?
;yy? @
foreachzz 
(zz 
varzz 
partDefinitionzz '
inzz( *
partDefinitionszz+ :
)zz: ;
{{{ 
manager|| 
.|| 
AlterPartDefinition|| +
(||+ ,
partDefinition||, :
.||: ;
Name||; ?
,||? @
partBuilder||A L
=>||M O
{}} 
foreach~~ 
(~~ 
var~~  
fieldDefinition~~! 0
in~~1 3
partDefinition~~4 B
.~~B C
Fields~~C I
.~~I J
Where~~J O
(~~O P
x~~P Q
=>~~R T
x~~U V
.~~V W
FieldDefinition~~W f
.~~f g
Name~~g k
==~~l n
typeof~~o u
(~~u v
TField~~v |
)~~| }
.~~} ~
Name	~~~ �
)
~~� �
)
~~� �
{ 
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
��U V
	TSettings
��V _
>
��_ `
(
��` a
)
��a b
;
��b c
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
��e f
var
�� 

hasSetting
�� &
=
��' (
false
��) .
;
��. /
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
�� 
if
�� 
(
��  
fieldDefinition
��  /
.
��/ 0
Settings
��0 8
.
��8 9
ContainsKey
��9 D
(
��D E
property
��E M
.
��M N
Name
��N R
)
��R S
)
��S T
{
�� 

hasSetting
��  *
=
��+ ,
true
��- 1
;
��1 2
fieldDefinition
��  /
.
��/ 0
Settings
��0 8
.
��8 9
Remove
��9 ?
(
��? @
property
��@ H
.
��H I
Name
��I M
)
��M N
;
��N O
}
�� 
}
�� 
if
�� 
(
�� 

hasSetting
�� &
)
��& '
{
�� 
partBuilder
�� '
.
��' (
	WithField
��( 1
(
��1 2
fieldDefinition
��2 A
.
��A B
Name
��B F
,
��F G
fieldBuilder
��H T
=>
��U W
{
�� 
fieldBuilder
��  ,
.
��, -
WithSettings
��- 9
(
��9 :#
existingFieldSettings
��: O
)
��O P
;
��P Q
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContentDefinitionStore.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface #
IContentDefinitionStore ,
{ 
Task 
< #
ContentDefinitionRecord $
>$ %&
LoadContentDefinitionAsync& @
(@ A
)A B
;B C
Task 
< #
ContentDefinitionRecord $
>$ %%
GetContentDefinitionAsync& ?
(? @
)@ A
;A B
Task &
SaveContentDefinitionAsync '
(' (#
ContentDefinitionRecord( ?#
contentDefinitionRecord@ W
)W X
;X Y
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContentHandleManager.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface !
IContentHandleManager *
{ 
Task 
< 
string 
> !
GetContentItemIdAsync *
(* +
string+ 1
handle2 8
)8 9
;9 :
}		 
[ 
Obsolete 
( 
$str H
)H I
]I J
public 

	interface  
IContentAliasManager )
{* +
}, -
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContentHandleProvider.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface "
IContentHandleProvider +
{ 
int 
Order 
{ 
get 
; 
} 
Task 
< 
string 
> !
GetContentItemIdAsync *
(* +
string+ 1
handle2 8
)8 9
;9 :
}		 
}

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContentItemIdGenerator.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface #
IContentItemIdGenerator ,
{ 
string 
GenerateUniqueId 
(  
ContentItem  +
contentItem, 7
)7 8
;8 9
} 
} �z
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContentManager.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface 
IContentManager $
{ 
Task 
< 
ContentItem 
> 
NewAsync "
(" #
string# )
contentType* 5
)5 6
;6 7
Task 
UpdateAsync 
( 
ContentItem $
contentItem% 0
)0 1
;1 2
Task"" 
CreateAsync"" 
("" 
ContentItem"" $
contentItem""% 0
,""0 1
VersionOptions""2 @
options""A H
)""H I
;""I J
Task** 
<** !
ContentValidateResult** "
>**" #)
CreateContentItemVersionAsync**$ A
(**A B
ContentItem**B M
contentItem**N Y
)**Y Z
;**Z [
Task22 
<22 !
ContentValidateResult22 "
>22" #)
UpdateContentItemVersionAsync22$ A
(22A B
ContentItem22B M
updatingVersion22N ]
,22] ^
ContentItem22_ j
updatedVersion22k y
)22y z
;22z {
Task88 
ImportAsync88 
(88 
IEnumerable88 $
<88$ %
ContentItem88% 0
>880 1
contentItems882 >
)88> ?
;88? @
Task?? 
<?? !
ContentValidateResult?? "
>??" #
ValidateAsync??$ 1
(??1 2
ContentItem??2 =
contentItem??> I
)??I J
;??J K
TaskEE 
<EE 
ContentItemEE 
>EE 
GetAsyncEE "
(EE" #
stringEE# )
idEE* ,
)EE, -
;EE- .
TaskLL 
<LL 
ContentItemLL 
>LL 
GetAsyncLL "
(LL" #
stringLL# )
idLL* ,
,LL, -
VersionOptionsLL. <
optionsLL= D
)LLD E
;LLE F
TaskWW 
<WW 
IEnumerableWW 
<WW 
ContentItemWW $
>WW$ %
>WW% &
GetAsyncWW' /
(WW/ 0
IEnumerableWW0 ;
<WW; <
stringWW< B
>WWB C
contentItemIdsWWD R
,WWR S
boolWWT X
latestWWY _
=WW` a
falseWWb g
)WWg h
;WWh i
Task]] 
<]] 
ContentItem]] 
>]] 
GetVersionAsync]] )
(]]) *
string]]* 0 
contentItemVersionId]]1 E
)]]E F
;]]F G
Taskcc 
<cc 
ContentItemcc 
>cc 
	LoadAsynccc #
(cc# $
ContentItemcc$ /
contentItemcc0 ;
)cc; <
;cc< =
Taskkk 
RemoveAsynckk 
(kk 
ContentItemkk $
contentItemkk% 0
)kk0 1
;kk1 2
Taskqq 
DiscardDraftAsyncqq 
(qq 
ContentItemqq *
contentItemqq+ 6
)qq6 7
;qq7 8
Taskww 
SaveDraftAsyncww 
(ww 
ContentItemww '
contentItemww( 3
)ww3 4
;ww4 5
Taskyy 
PublishAsyncyy 
(yy 
ContentItemyy %
contentItemyy& 1
)yy1 2
;yy2 3
Taskzz 
UnpublishAsynczz 
(zz 
ContentItemzz '
contentItemzz( 3
)zz3 4
;zz4 5
Task{{ 
<{{ 
TAspect{{ 
>{{ 
PopulateAspectAsync{{ )
<{{) *
TAspect{{* 1
>{{1 2
({{2 3
IContent{{3 ;
content{{< C
,{{C D
TAspect{{E L
aspect{{M S
){{S T
;{{T U
Task
�� 
<
�� 
ContentItem
�� 
>
�� 

CloneAsync
�� $
(
��$ %
ContentItem
��% 0
contentItem
��1 <
)
��< =
;
��= >
}
�� 
public
�� 

static
�� 
class
�� &
ContentManagerExtensions
�� 0
{
�� 
public
�� 
static
�� 
Task
�� 
CreateAsync
�� &
(
��& '
this
��' +
IContentManager
��, ;
contentManager
��< J
,
��J K
ContentItem
��L W
contentItem
��X c
)
��c d
{
�� 	
return
�� 
contentManager
�� !
.
��! "
CreateAsync
��" -
(
��- .
contentItem
��. 9
,
��9 :
VersionOptions
��; I
.
��I J
	Published
��J S
)
��S T
;
��T U
}
�� 	
public
�� 
static
�� 
Task
�� 
<
�� 
TAspect
�� "
>
��" #!
PopulateAspectAsync
��$ 7
<
��7 8
TAspect
��8 ?
>
��? @
(
��@ A
this
��A E
IContentManager
��F U
contentManager
��V d
,
��d e
IContent
��f n
content
��o v
)
��v w
where
��x }
TAspect��~ �
:��� �
new��� �
(��� �
)��� �
{
�� 	
return
�� 
contentManager
�� !
.
��! "!
PopulateAspectAsync
��" 5
(
��5 6
content
��6 =
,
��= >
new
��? B
TAspect
��C J
(
��J K
)
��K L
)
��L M
;
��M N
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
bool
��! %
>
��% &&
HasPublishedVersionAsync
��' ?
(
��? @
this
��@ D
IContentManager
��E T
contentManager
��U c
,
��c d
IContent
��e m
content
��n u
)
��u v
{
�� 	
if
�� 
(
�� 
content
�� 
.
�� 
ContentItem
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
content
�� 
.
�� 
ContentItem
�� &
.
��& '
IsPublished
��' 2
(
��2 3
)
��3 4
||
��5 7
(
��8 9
await
��9 >
contentManager
��? M
.
��M N
GetAsync
��N V
(
��V W
content
��W ^
.
��^ _
ContentItem
��_ j
.
��j k
ContentItemId
��k x
,
��x y
VersionOptions��z �
.��� �
	Published��� �
)��� �
!=��� �
null��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
Task
�� 
<
�� !
ContentItemMetadata
�� .
>
��. /)
GetContentItemMetadataAsync
��0 K
(
��K L
this
��L P
IContentManager
��Q `
contentManager
��a o
,
��o p
IContent
��q y
content��z �
)��� �
{
�� 	
return
�� 
contentManager
�� !
.
��! "!
PopulateAspectAsync
��" 5
<
��5 6!
ContentItemMetadata
��6 I
>
��I J
(
��J K
content
��K R
)
��R S
;
��S T
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
IEnumerable
��! ,
<
��, -
ContentItem
��- 8
>
��8 9
>
��9 :
	LoadAsync
��; D
(
��D E
this
��E I
IContentManager
��J Y
contentManager
��Z h
,
��h i
IEnumerable
��j u
<
��u v
ContentItem��v �
>��� �
contentItems��� �
)��� �
{
�� 	
var
�� 
results
�� 
=
�� 
new
�� 
List
�� "
<
��" #
ContentItem
��# .
>
��. /
(
��/ 0
contentItems
��0 <
.
��< =
Count
��= B
(
��B C
)
��C D
)
��D E
;
��E F
foreach
�� 
(
�� 
var
�� 
contentItem
�� $
in
��% '
contentItems
��( 4
)
��4 5
{
�� 
results
�� 
.
�� 
Add
�� 
(
�� 
await
�� !
contentManager
��" 0
.
��0 1
	LoadAsync
��1 :
(
��: ;
contentItem
��; F
)
��F G
)
��G H
;
��H I
}
�� 
return
�� 
results
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !#
ContentValidateResult
��! 6
>
��6 7*
UpdateValidateAndCreateAsync
��8 T
(
��T U
this
��U Y
IContentManager
��Z i
contentManager
��j x
,
��x y
ContentItem��z �
contentItem��� �
,��� �
VersionOptions��� �
options��� �
)��� �
{
�� 	
await
�� 
contentManager
��  
.
��  !
UpdateAsync
��! ,
(
��, -
contentItem
��- 8
)
��8 9
;
��9 :
var
�� 
result
�� 
=
�� 
await
�� 
contentManager
�� -
.
��- .
ValidateAsync
��. ;
(
��; <
contentItem
��< G
)
��G H
;
��H I
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
await
�� 
contentManager
�� $
.
��$ %
CreateAsync
��% 0
(
��0 1
contentItem
��1 <
,
��< =
options
��> E
)
��E F
;
��F G
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
Task
�� 
<
�� 
ContentItem
�� &
>
��& '
GetAsync
��( 0
(
��0 1
this
��1 5
IContentManager
��6 E
contentManager
��F T
,
��T U
string
��V \
id
��] _
,
��_ `
string
��a g
jsonPath
��h p
)
��p q
{
�� 	
return
�� 
contentManager
�� !
.
��! "
GetAsync
��" *
(
��* +
id
��+ -
,
��- .
jsonPath
��/ 7
,
��7 8
VersionOptions
��9 G
.
��G H
	Published
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
�� 
async
�� 
Task
��  
<
��  !
ContentItem
��! ,
>
��, -
GetAsync
��. 6
(
��6 7
this
��7 ;
IContentManager
��< K
contentManager
��L Z
,
��Z [
string
��\ b
id
��c e
,
��e f
string
��g m
jsonPath
��n v
,
��v w
VersionOptions��x �
options��� �
)��� �
{
�� 	
var
�� 
contentItem
�� 
=
�� 
await
�� #
contentManager
��$ 2
.
��2 3
GetAsync
��3 ;
(
��; <
id
��< >
,
��> ?
options
��@ G
)
��G H
;
��H I
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
jsonPath
��& .
)
��. /
)
��/ 0
{
�� 
var
�� 
root
�� 
=
�� 
contentItem
�� &
.
��& '
Content
��' .
as
��/ 1
JObject
��2 9
;
��9 :
contentItem
�� 
=
�� 
root
�� "
.
��" #
SelectToken
��# .
(
��. /
jsonPath
��/ 7
)
��7 8
?
��8 9
.
��9 :
ToObject
��: B
<
��B C
ContentItem
��C N
>
��N O
(
��O P
)
��P Q
;
��Q R
return
�� 
contentItem
�� "
;
��" #
}
�� 
return
�� 
contentItem
�� 
;
�� 
}
�� 	
}
�� 
public
�� 

class
�� 
VersionOptions
�� 
{
�� 
public
�� 
static
�� 
VersionOptions
�� $
Latest
��% +
{
��, -
get
��. 1
{
��2 3
return
��4 :
new
��; >
VersionOptions
��? M
{
��N O
IsLatest
��P X
=
��Y Z
true
��[ _
}
��` a
;
��a b
}
��c d
}
��e f
public
�� 
static
�� 
VersionOptions
�� $
	Published
��% .
{
��/ 0
get
��1 4
{
��5 6
return
��7 =
new
��> A
VersionOptions
��B P
{
��Q R
IsPublished
��S ^
=
��_ `
true
��a e
}
��f g
;
��g h
}
��i j
}
��k l
public
�� 
static
�� 
VersionOptions
�� $
Draft
��% *
{
��+ ,
get
��- 0
{
��1 2
return
��3 9
new
��: =
VersionOptions
��> L
{
��M N
IsDraft
��O V
=
��W X
true
��Y ]
}
��^ _
;
��_ `
}
��a b
}
��c d
public
�� 
static
�� 
VersionOptions
�� $
DraftRequired
��% 2
{
��3 4
get
��5 8
{
��9 :
return
��; A
new
��B E
VersionOptions
��F T
{
��U V
IsDraft
��W ^
=
��_ `
true
��a e
,
��e f
IsDraftRequired
��g v
=
��w x
true
��y }
}
��~ 
;�� �
}��� �
}��� �
public
�� 
static
�� 
VersionOptions
�� $
AllVersions
��% 0
{
��1 2
get
��3 6
{
��7 8
return
��9 ?
new
��@ C
VersionOptions
��D R
{
��S T
IsAllVersions
��U b
=
��c d
true
��e i
}
��j k
;
��k l
}
��m n
}
��o p
public
�� 
bool
�� 
IsLatest
�� 
{
�� 
get
�� "
;
��" #
private
��$ +
set
��, /
;
��/ 0
}
��1 2
public
�� 
bool
�� 
IsPublished
�� 
{
��  !
get
��" %
;
��% &
private
��' .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
bool
�� 
IsDraft
�� 
{
�� 
get
�� !
;
��! "
private
��# *
set
��+ .
;
��. /
}
��0 1
public
�� 
bool
�� 
IsDraftRequired
�� #
{
��$ %
get
��& )
;
��) *
private
��+ 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
bool
�� 
IsAllVersions
�� !
{
��" #
get
��$ '
;
��' (
private
��) 0
set
��1 4
;
��4 5
}
��6 7
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContentManagerSession.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface "
IContentManagerSession +
{ 
void 
Store 
( 
ContentItem 
item #
)# $
;$ %
bool 
RecallVersionId 
( 
int  
id! #
,# $
out% (
ContentItem) 4
item5 9
)9 :
;: ;
bool !
RecallPublishedItemId "
(" #
string# )
id* ,
,, -
out. 1
ContentItem2 =
item> B
)B C
;C D
void		 
Clear		 
(		 
)		 
;		 
}

 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IContentPickerResultProvider.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface (
IContentPickerResultProvider 1
{ 
string		 
Name		 
{		 
get		 
;		 
}		 
Task

 
<

 
IEnumerable

 
<

 
ContentPickerResult

 ,
>

, -
>

- .
Search

/ 5
(

5 6&
ContentPickerSearchContext

6 P
searchContext

Q ^
)

^ _
;

_ `
} 
public 

class &
ContentPickerSearchContext +
{ 
public 
string 
Query 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool "
DisplayAllContentTypes *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
IEnumerable 
< 
string !
>! "
ContentTypes# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
public 

class 
ContentPickerResult $
{ 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
HasPublished  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ITypeActivatorFactory.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface !
ITypeActivatorFactory *
<* +
	TInstance+ 4
>4 5
{		 
ITypeActivator

 
<

 
	TInstance

  
>

  !
GetTypeActivator

" 2
(

2 3
string

3 9
partName

: B
)

B C
;

C D
} 
public 

	interface 
ITypeActivator #
<# $
	TInstance$ -
>- .
{ 
Type 
Type 
{ 
get 
; 
} 
	TInstance 
CreateInstance  
(  !
)! "
;" #
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\IUserPickerResultProvider.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

	interface %
IUserPickerResultProvider .
{ 
string		 
Name		 
{		 
get		 
;		 
}		 
Task

 
<

 
IEnumerable

 
<

 
UserPickerResult

 )
>

) *
>

* +
Search

, 2
(

2 3#
UserPickerSearchContext

3 J
searchContext

K X
)

X Y
;

Y Z
} 
public 

class #
UserPickerSearchContext (
{ 
public 
string 
Query 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
DisplayAllUsers #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
IEnumerable 
< 
string !
>! "
Roles# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
public 

class 
UserPickerResult !
{ 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
	IsEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Builders\ContentBuilderSettings.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Builders1 9
{ 
public 

static 
class "
ContentBuilderSettings .
{ 
public 
static 
readonly 
JsonMergeSettings 0
JsonMergeSettings1 B
=C D
newE H
JsonMergeSettingsI Z
{[ \
MergeArrayHandling] o
=p q
MergeArrayHandling	r �
.
� �
Union
� �
,
� �$
MergeNullValueHandling
� �
=
� �$
MergeNullValueHandling
� �
.
� �
Merge
� �
}
� �
;
� �
public 
static 
readonly 
JsonSerializer -)
IgnoreDefaultValuesSerializer. K
=L M
newN Q
JsonSerializerR `
{a b 
DefaultValueHandlingc w
=x y!
DefaultValueHandling	z �
.
� �
Ignore
� �
}
� �
;
� �
} 
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Builders\ContentPartDefinitionBuilder.cs
	namespace		 	
OrchardCore		
 
.		 
ContentManagement		 '
.		' (
Metadata		( 0
.		0 1
Builders		1 9
{

 
public 

class (
ContentPartDefinitionBuilder -
{ 
private 
readonly !
ContentPartDefinition .
_part/ 4
;4 5
private 
readonly 
IList 
< &
ContentPartFieldDefinition 9
>9 :
_fields; B
;B C
private 
readonly 
JObject  
	_settings! *
;* +
public !
ContentPartDefinition $
Current% ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
public (
ContentPartDefinitionBuilder +
(+ ,
), -
: 
this 
( 
new !
ContentPartDefinition ,
(, -
null- 1
)1 2
)2 3
{ 	
} 	
public (
ContentPartDefinitionBuilder +
(+ ,!
ContentPartDefinition, A
existingB J
)J K
{ 	
_part 
= 
existing 
; 
if 
( 
existing 
== 
null  
)  !
{ 
_fields 
= 
new 
List "
<" #&
ContentPartFieldDefinition# =
>= >
(> ?
)? @
;@ A
	_settings 
= 
new 
JObject  '
(' (
)( )
;) *
}   
else!! 
{"" 
Name## 
=## 
existing## 
.##  
Name##  $
;##$ %
_fields$$ 
=$$ 
existing$$ "
.$$" #
Fields$$# )
.$$) *
ToList$$* 0
($$0 1
)$$1 2
;$$2 3
	_settings%% 
=%% 
new%% 
JObject%%  '
(%%' (
existing%%( 0
.%%0 1
Settings%%1 9
)%%9 :
;%%: ;
}&& 
}'' 	
public)) 
string)) 
Name)) 
{)) 
get))  
;))  !
private))" )
set))* -
;))- .
}))/ 0
public++ !
ContentPartDefinition++ $
Build++% *
(++* +
)+++ ,
{,, 	
if-- 
(-- 
!-- 
Name-- 
[-- 
$num-- 
]-- 
.-- 
IsLetter-- !
(--! "
)--" #
)--# $
{.. 
throw// 
new// 
ArgumentException// +
(//+ ,
$str//, X
,//X Y
$str//Z `
)//` a
;//a b
}00 
if11 
(11 
!11 
String11 
.11 
Equals11 
(11 
Name11 #
,11# $
Name11% )
.11) *

ToSafeName11* 4
(114 5
)115 6
,116 7
StringComparison118 H
.11H I
OrdinalIgnoreCase11I Z
)11Z [
)11[ \
{22 
throw33 
new33 
ArgumentException33 +
(33+ ,
$str33, [
,33[ \
$str33] c
)33c d
;33d e
}44 
return66 
new66 !
ContentPartDefinition66 ,
(66, -
Name66- 1
,661 2
_fields663 :
,66: ;
	_settings66< E
)66E F
;66F G
}77 	
public99 (
ContentPartDefinitionBuilder99 +
Named99, 1
(991 2
string992 8
name999 =
)99= >
{:: 	
Name;; 
=;; 
name;; 
;;; 
return<< 
this<< 
;<< 
}== 	
public?? (
ContentPartDefinitionBuilder?? +
RemoveField??, 7
(??7 8
string??8 >
	fieldName??? H
)??H I
{@@ 	
varAA 
existingFieldAA 
=AA 
_fieldsAA  '
.AA' (
SingleOrDefaultAA( 7
(AA7 8
xAA8 9
=>AA: <
xAA= >
.AA> ?
NameAA? C
==AAD F
	fieldNameAAG P
)AAP Q
;AAQ R
ifBB 
(BB 
existingFieldBB 
!=BB  
nullBB! %
)BB% &
{CC 
_fieldsDD 
.DD 
RemoveDD 
(DD 
existingFieldDD ,
)DD, -
;DD- .
}EE 
returnFF 
thisFF 
;FF 
}GG 	
[II 	
ObsoleteII	 
(II 
$strII R
)IIR S
]IIS T
publicJJ (
ContentPartDefinitionBuilderJJ +
WithSettingJJ, 7
(JJ7 8
stringJJ8 >
nameJJ? C
,JJC D
stringJJE K
valueJJL Q
)JJQ R
{KK 	
	_settingsLL 
[LL 
nameLL 
]LL 
=LL 
valueLL #
;LL# $
returnMM 
thisMM 
;MM 
}NN 	
publicPP (
ContentPartDefinitionBuilderPP +
MergeSettingsPP, 9
(PP9 :
JObjectPP: A
settingsPPB J
)PPJ K
{QQ 	
	_settingsRR 
.RR 
MergeRR 
(RR 
settingsRR $
,RR$ %"
ContentBuilderSettingsRR& <
.RR< =
JsonMergeSettingsRR= N
)RRN O
;RRO P
returnSS 
thisSS 
;SS 
}TT 	
publicVV (
ContentPartDefinitionBuilderVV +
MergeSettingsVV, 9
<VV9 :
TVV: ;
>VV; <
(VV< =
ActionVV= C
<VVC D
TVVD E
>VVE F
settingVVG N
)VVN O
whereVVP U
TVVV W
:VVX Y
classVVZ _
,VV_ `
newVVa d
(VVd e
)VVe f
{WW 	
varXX 
existingJObjectXX 
=XX  !
	_settingsXX" +
[XX+ ,
typeofXX, 2
(XX2 3
TXX3 4
)XX4 5
.XX5 6
NameXX6 :
]XX: ;
asXX< >
JObjectXX? F
;XXF G
ifZZ 
(ZZ 
existingJObjectZZ 
==ZZ  "
nullZZ# '
)ZZ' (
{[[ 
existingJObject\\ 
=\\  !
JObject\\" )
.\\) *

FromObject\\* 4
(\\4 5
new\\5 8
T\\9 :
(\\: ;
)\\; <
,\\< ="
ContentBuilderSettings\\> T
.\\T U)
IgnoreDefaultValuesSerializer\\U r
)\\r s
;\\s t
	_settings]] 
[]] 
typeof]]  
(]]  !
T]]! "
)]]" #
.]]# $
Name]]$ (
]]]( )
=]]* +
existingJObject]], ;
;]]; <
}^^ 
var`` 
settingsToMerge`` 
=``  !
existingJObject``" 1
.``1 2
ToObject``2 :
<``: ;
T``; <
>``< =
(``= >
)``> ?
;``? @
settingaa 
(aa 
settingsToMergeaa #
)aa# $
;aa$ %
	_settingsbb 
[bb 
typeofbb 
(bb 
Tbb 
)bb 
.bb  
Namebb  $
]bb$ %
=bb& '
JObjectbb( /
.bb/ 0

FromObjectbb0 :
(bb: ;
settingsToMergebb; J
,bbJ K"
ContentBuilderSettingsbbL b
.bbb c*
IgnoreDefaultValuesSerializer	bbc �
)
bb� �
;
bb� �
returncc 
thiscc 
;cc 
}dd 	
publicff (
ContentPartDefinitionBuilderff +
WithSettingsff, 8
<ff8 9
Tff9 :
>ff: ;
(ff; <
Tff< =
settingsff> F
)ffF G
{gg 	
ifhh 
(hh 
settingshh 
==hh 
nullhh  
)hh  !
{ii 
throwjj 
newjj !
ArgumentNullExceptionjj /
(jj/ 0
nameofjj0 6
(jj6 7
settingsjj7 ?
)jj? @
)jj@ A
;jjA B
}kk 
varmm 
jObjectmm 
=mm 
JObjectmm !
.mm! "

FromObjectmm" ,
(mm, -
settingsmm- 5
,mm5 6"
ContentBuilderSettingsmm7 M
.mmM N)
IgnoreDefaultValuesSerializermmN k
)mmk l
;mml m
	_settingsnn 
[nn 
typeofnn 
(nn 
Tnn 
)nn 
.nn  
Namenn  $
]nn$ %
=nn& '
jObjectnn( /
;nn/ 0
returnpp 
thispp 
;pp 
}qq 	
publicss (
ContentPartDefinitionBuilderss +
	WithFieldss, 5
(ss5 6
stringss6 <
	fieldNamess= F
)ssF G
{tt 	
returnuu 
	WithFielduu 
(uu 
	fieldNameuu &
,uu& '
configurationuu( 5
=>uu6 8
{uu9 :
}uu; <
)uu< =
;uu= >
}vv 	
publicxx (
ContentPartDefinitionBuilderxx +
	WithFieldxx, 5
(xx5 6
stringxx6 <
	fieldNamexx= F
,xxF G
ActionxxH N
<xxN O-
!ContentPartFieldDefinitionBuilderxxO p
>xxp q
configurationxxr 
)	xx �
{yy 	
varzz 
existingFieldzz 
=zz 
_fieldszz  '
.zz' (
FirstOrDefaultzz( 6
(zz6 7
xzz7 8
=>zz9 ;
xzz< =
.zz= >
Namezz> B
==zzC E
	fieldNamezzF O
)zzO P
;zzP Q
if{{ 
({{ 
existingField{{ 
!={{  
null{{! %
){{% &
{|| 
var}} 
toRemove}} 
=}} 
_fields}} &
.}}& '
Where}}' ,
(}}, -
x}}- .
=>}}/ 1
x}}2 3
.}}3 4
Name}}4 8
==}}9 ;
	fieldName}}< E
)}}E F
.}}F G
ToArray}}G N
(}}N O
)}}O P
;}}P Q
foreach~~ 
(~~ 
var~~ 
remove~~ #
in~~$ &
toRemove~~' /
)~~/ 0
{ 
_fields
�� 
.
�� 
Remove
�� "
(
��" #
remove
��# )
)
��) *
;
��* +
}
�� 
}
�� 
else
�� 
{
�� 
existingField
�� 
=
�� 
new
��  #(
ContentPartFieldDefinition
��$ >
(
��> ?
null
��? C
,
��C D
	fieldName
��E N
,
��N O
new
��P S
JObject
��T [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
var
�� 

configurer
�� 
=
�� 
new
��  !
FieldConfigurerImpl
��! 4
(
��4 5
existingField
��5 B
,
��B C
_part
��D I
)
��I J
;
��J K
configuration
�� 
(
�� 

configurer
�� $
)
��$ %
;
��% &
_fields
�� 
.
�� 
Add
�� 
(
�� 

configurer
�� "
.
��" #
Build
��# (
(
��( )
)
��) *
)
��* +
;
��+ ,
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� *
ContentPartDefinitionBuilder
�� 6
>
��6 7
WithFieldAsync
��8 F
(
��F G
string
��G M
	fieldName
��N W
,
��W X
Func
��Y ]
<
��] ^/
!ContentPartFieldDefinitionBuilder
��^ 
,�� �
Task��� �
>��� �"
configurationAsync��� �
)��� �
{
�� 	
var
�� 
existingField
�� 
=
�� 
_fields
��  '
.
��' (
FirstOrDefault
��( 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Name
��> B
==
��C E
	fieldName
��F O
)
��O P
;
��P Q
if
�� 
(
�� 
existingField
�� 
!=
��  
null
��! %
)
��% &
{
�� 
var
�� 
toRemove
�� 
=
�� 
_fields
�� &
.
��& '
Where
��' ,
(
��, -
x
��- .
=>
��/ 1
x
��2 3
.
��3 4
Name
��4 8
==
��9 ;
	fieldName
��< E
)
��E F
.
��F G
ToArray
��G N
(
��N O
)
��O P
;
��P Q
foreach
�� 
(
�� 
var
�� 
remove
�� #
in
��$ &
toRemove
��' /
)
��/ 0
{
�� 
_fields
�� 
.
�� 
Remove
�� "
(
��" #
remove
��# )
)
��) *
;
��* +
}
�� 
}
�� 
else
�� 
{
�� 
existingField
�� 
=
�� 
new
��  #(
ContentPartFieldDefinition
��$ >
(
��> ?
null
��? C
,
��C D
	fieldName
��E N
,
��N O
new
��P S
JObject
��T [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
var
�� 

configurer
�� 
=
�� 
new
��  !
FieldConfigurerImpl
��! 4
(
��4 5
existingField
��5 B
,
��B C
_part
��D I
)
��I J
;
��J K
await
��  
configurationAsync
�� $
(
��$ %

configurer
��% /
)
��/ 0
;
��0 1
_fields
�� 
.
�� 
Add
�� 
(
�� 

configurer
�� "
.
��" #
Build
��# (
(
��( )
)
��) *
)
��* +
;
��+ ,
return
�� 
this
�� 
;
�� 
}
�� 	
private
�� 
class
�� !
FieldConfigurerImpl
�� )
:
��* +/
!ContentPartFieldDefinitionBuilder
��, M
{
�� 	
private
�� $
ContentFieldDefinition
�� *
_fieldDefinition
��+ ;
;
��; <
private
�� 
readonly
�� #
ContentPartDefinition
�� 2
_partDefinition
��3 B
;
��B C
private
�� 
readonly
�� 
string
�� #

_fieldName
��$ .
;
��. /
public
�� !
FieldConfigurerImpl
�� &
(
��& '(
ContentPartFieldDefinition
��' A
field
��B G
,
��G H#
ContentPartDefinition
��I ^
part
��_ c
)
��c d
:
�� 
base
�� 
(
�� 
field
�� 
)
�� 
{
�� 
_fieldDefinition
��  
=
��! "
field
��# (
.
��( )
FieldDefinition
��) 8
;
��8 9

_fieldName
�� 
=
�� 
field
�� "
.
��" #
Name
��# '
;
��' (
_partDefinition
�� 
=
��  !
part
��" &
;
��& '
}
�� 
public
�� 
override
�� (
ContentPartFieldDefinition
�� 6
Build
��7 <
(
��< =
)
��= >
{
�� 
if
�� 
(
�� 
!
�� 

_fieldName
�� 
[
��  
$num
��  !
]
��! "
.
��" #
IsLetter
��# +
(
��+ ,
)
��, -
)
��- .
{
�� 
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
$str
��0 ]
,
��] ^
$str
��_ e
)
��e f
;
��f g
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
Equals
�� "
(
��" #

_fieldName
��# -
,
��- .

_fieldName
��/ 9
.
��9 :

ToSafeName
��: D
(
��D E
)
��E F
,
��F G
StringComparison
��H X
.
��X Y
OrdinalIgnoreCase
��Y j
)
��j k
)
��k l
{
�� 
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
$str
��0 `
,
��` a
$str
��b h
)
��h i
;
��i j
}
�� 
return
�� 
new
�� (
ContentPartFieldDefinition
�� 5
(
��5 6
_fieldDefinition
��6 F
,
��F G

_fieldName
��H R
,
��R S
	_settings
��T ]
)
��] ^
;
��^ _
}
�� 
public
�� 
override
�� 
string
�� "
Name
��# '
{
�� 
get
�� 
{
�� 
return
�� 

_fieldName
�� '
;
��' (
}
��) *
}
�� 
public
�� 
override
�� 
string
�� "
	FieldType
��# ,
{
�� 
get
�� 
{
�� 
return
�� 
_fieldDefinition
�� -
.
��- .
Name
��. 2
;
��2 3
}
��4 5
}
�� 
public
�� 
override
�� 
string
�� "
PartName
��# +
{
�� 
get
�� 
{
�� 
return
�� 
_partDefinition
�� ,
.
��, -
Name
��- 1
;
��1 2
}
��3 4
}
�� 
public
�� 
override
�� /
!ContentPartFieldDefinitionBuilder
�� =
OfType
��> D
(
��D E$
ContentFieldDefinition
��E [
fieldDefinition
��\ k
)
��k l
{
�� 
_fieldDefinition
��  
=
��! "
fieldDefinition
��# 2
;
��2 3
return
�� 
this
�� 
;
�� 
}
�� 
public
�� 
override
�� /
!ContentPartFieldDefinitionBuilder
�� =
OfType
��> D
(
��D E
string
��E K
	fieldType
��L U
)
��U V
{
�� 
_fieldDefinition
��  
=
��! "
new
��# &$
ContentFieldDefinition
��' =
(
��= >
	fieldType
��> G
)
��G H
;
��H I
return
�� 
this
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �<
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Builders\ContentPartFieldDefinitionBuilder.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Builders1 9
{ 
public 

abstract 
class -
!ContentPartFieldDefinitionBuilder ;
{ 
	protected		 
readonly		 
JObject		 "
	_settings		# ,
;		, -
public &
ContentPartFieldDefinition )
Current* 1
{2 3
get4 7
;7 8
private9 @
setA D
;D E
}F G
public 
abstract 
string 
Name #
{$ %
get& )
;) *
}+ ,
public 
abstract 
string 
	FieldType (
{) *
get+ .
;. /
}0 1
public 
abstract 
string 
PartName '
{( )
get* -
;- .
}/ 0
	protected -
!ContentPartFieldDefinitionBuilder 3
(3 4&
ContentPartFieldDefinition4 N
fieldO T
)T U
{ 	
Current 
= 
field 
; 
	_settings 
= 
new 
JObject #
(# $
field$ )
.) *
Settings* 2
)2 3
;3 4
} 	
[ 	
Obsolete	 
( 
$str R
)R S
]S T
public -
!ContentPartFieldDefinitionBuilder 0
WithSetting1 <
(< =
string= C
nameD H
,H I
stringJ P
valueQ V
)V W
{ 	
	_settings 
[ 
name 
] 
= 
value #
;# $
return 
this 
; 
} 	
[ 	
Obsolete	 
( 
$str R
)R S
]S T
public -
!ContentPartFieldDefinitionBuilder 0
WithSetting1 <
(< =
string= C
nameD H
,H I
stringJ P
[P Q
]Q R
valuesS Y
)Y Z
{   	
	_settings!! 
[!! 
name!! 
]!! 
=!! 
new!! !
JArray!!" (
(!!( )
values!!) /
)!!/ 0
;!!0 1
return"" 
this"" 
;"" 
}## 	
public%% -
!ContentPartFieldDefinitionBuilder%% 0
MergeSettings%%1 >
(%%> ?
JObject%%? F
settings%%G O
)%%O P
{&& 	
	_settings'' 
.'' 
Merge'' 
('' 
settings'' $
,''$ %"
ContentBuilderSettings''& <
.''< =
JsonMergeSettings''= N
)''N O
;''O P
return(( 
this(( 
;(( 
})) 	
[++ 	
Obsolete++	 
(++ 
$str++ S
)++S T
]++T U
public,, -
!ContentPartFieldDefinitionBuilder,, 0
MergeSettings,,1 >
(,,> ?
object,,? E
model,,F K
),,K L
{-- 	
	_settings.. 
... 
Merge.. 
(.. 
JObject.. #
...# $

FromObject..$ .
(... /
model../ 4
)..4 5
,..5 6"
ContentBuilderSettings..7 M
...M N
JsonMergeSettings..N _
).._ `
;..` a
return// 
this// 
;// 
}00 	
public22 -
!ContentPartFieldDefinitionBuilder22 0
MergeSettings221 >
<22> ?
T22? @
>22@ A
(22A B
Action22B H
<22H I
T22I J
>22J K
setting22L S
)22S T
where22U Z
T22[ \
:22] ^
class22_ d
,22d e
new22f i
(22i j
)22j k
{33 	
var44 
existingJObject44 
=44  !
	_settings44" +
[44+ ,
typeof44, 2
(442 3
T443 4
)444 5
.445 6
Name446 :
]44: ;
as44< >
JObject44? F
;44F G
if66 
(66 
existingJObject66 
==66  "
null66# '
)66' (
{77 
existingJObject88 
=88  !
JObject88" )
.88) *

FromObject88* 4
(884 5
new885 8
T889 :
(88: ;
)88; <
,88< ="
ContentBuilderSettings88> T
.88T U)
IgnoreDefaultValuesSerializer88U r
)88r s
;88s t
	_settings99 
[99 
typeof99  
(99  !
T99! "
)99" #
.99# $
Name99$ (
]99( )
=99* +
existingJObject99, ;
;99; <
}:: 
var<< 
settingsToMerge<< 
=<<  !
existingJObject<<" 1
.<<1 2
ToObject<<2 :
<<<: ;
T<<; <
><<< =
(<<= >
)<<> ?
;<<? @
setting== 
(== 
settingsToMerge== #
)==# $
;==$ %
	_settings>> 
[>> 
typeof>> 
(>> 
T>> 
)>> 
.>>  
Name>>  $
]>>$ %
=>>& '
JObject>>( /
.>>/ 0

FromObject>>0 :
(>>: ;
settingsToMerge>>; J
,>>J K"
ContentBuilderSettings>>L b
.>>b c*
IgnoreDefaultValuesSerializer	>>c �
)
>>� �
;
>>� �
return?? 
this?? 
;?? 
}@@ 	
publicBB -
!ContentPartFieldDefinitionBuilderBB 0
WithSettingsBB1 =
<BB= >
TBB> ?
>BB? @
(BB@ A
TBBA B
settingsBBC K
)BBK L
{CC 	
ifDD 
(DD 
settingsDD 
==DD 
nullDD  
)DD  !
{EE 
throwFF 
newFF !
ArgumentNullExceptionFF /
(FF/ 0
nameofFF0 6
(FF6 7
settingsFF7 ?
)FF? @
)FF@ A
;FFA B
}GG 
varII 
jObjectII 
=II 
JObjectII !
.II! "

FromObjectII" ,
(II, -
settingsII- 5
,II5 6"
ContentBuilderSettingsII7 M
.IIM N)
IgnoreDefaultValuesSerializerIIN k
)IIk l
;IIl m
	_settingsJJ 
[JJ 
typeofJJ 
(JJ 
TJJ 
)JJ 
.JJ  
NameJJ  $
]JJ$ %
=JJ& '
jObjectJJ( /
;JJ/ 0
returnLL 
thisLL 
;LL 
}MM 	
publicOO 
abstractOO -
!ContentPartFieldDefinitionBuilderOO 9
OfTypeOO: @
(OO@ A"
ContentFieldDefinitionOOA W
fieldDefinitionOOX g
)OOg h
;OOh i
publicPP 
abstractPP -
!ContentPartFieldDefinitionBuilderPP 9
OfTypePP: @
(PP@ A
stringPPA G
	fieldTypePPH Q
)PPQ R
;PPR S
publicQQ 
abstractQQ &
ContentPartFieldDefinitionQQ 2
BuildQQ3 8
(QQ8 9
)QQ9 :
;QQ: ;
}RR 
}SS ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Builders\ContentTypeDefinitionBuilder.cs
	namespace		 	
OrchardCore		
 
.		 
ContentManagement		 '
.		' (
Metadata		( 0
.		0 1
Builders		1 9
{

 
public 

class (
ContentTypeDefinitionBuilder -
{ 
private 
string 
_name 
; 
private 
string 
_displayName #
;# $
private 
readonly 
IList 
< %
ContentTypePartDefinition 8
>8 9
_parts: @
;@ A
private 
readonly 
JObject  
	_settings! *
;* +
public !
ContentTypeDefinition $
Current% ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
public (
ContentTypeDefinitionBuilder +
(+ ,
), -
: 
this 
( 
new !
ContentTypeDefinition ,
(, -
null- 1
,1 2
null3 7
)7 8
)8 9
{ 	
} 	
public (
ContentTypeDefinitionBuilder +
(+ ,!
ContentTypeDefinition, A
existingB J
)J K
{ 	
Current 
= 
existing 
; 
if 
( 
existing 
== 
null  
)  !
{ 
_parts 
= 
new 
List !
<! "%
ContentTypePartDefinition" ;
>; <
(< =
)= >
;> ?
	_settings   
=   
new   
JObject    '
(  ' (
)  ( )
;  ) *
}!! 
else"" 
{## 
_name$$ 
=$$ 
existing$$  
.$$  !
Name$$! %
;$$% &
_displayName%% 
=%% 
existing%% '
.%%' (
DisplayName%%( 3
;%%3 4
_parts&& 
=&& 
existing&& !
.&&! "
Parts&&" '
.&&' (
ToList&&( .
(&&. /
)&&/ 0
;&&0 1
	_settings'' 
='' 
new'' 
JObject''  '
(''' (
existing''( 0
.''0 1
Settings''1 9
)''9 :
;'': ;
}(( 
})) 	
public++ !
ContentTypeDefinition++ $
Build++% *
(++* +
)+++ ,
{,, 	
if-- 
(-- 
!-- 
_name-- 
[-- 
$num-- 
]-- 
.-- 
IsLetter-- "
(--" #
)--# $
)--$ %
{.. 
throw// 
new// 
ArgumentException// +
(//+ ,
$str//, X
,//X Y
$str//Z `
)//` a
;//a b
}00 
if11 
(11 
!11 
String11 
.11 
Equals11 
(11 
_name11 $
,11$ %
_name11& +
.11+ ,

ToSafeName11, 6
(116 7
)117 8
,118 9
StringComparison11: J
.11J K
OrdinalIgnoreCase11K \
)11\ ]
)11] ^
{22 
throw33 
new33 
ArgumentException33 +
(33+ ,
$str33, [
,33[ \
$str33] c
)33c d
;33d e
}44 
return55 
new55 !
ContentTypeDefinition55 ,
(55, -
_name55- 2
,552 3
_displayName554 @
,55@ A
_parts55B H
,55H I
	_settings55J S
)55S T
;55T U
}66 	
public88 (
ContentTypeDefinitionBuilder88 +
Named88, 1
(881 2
string882 8
name889 =
)88= >
{99 	
_name:: 
=:: 
name:: 
;:: 
return;; 
this;; 
;;; 
}<< 	
public>> (
ContentTypeDefinitionBuilder>> +
DisplayedAs>>, 7
(>>7 8
string>>8 >
displayName>>? J
)>>J K
{?? 	
_displayName@@ 
=@@ 
displayName@@ &
;@@& '
returnAA 
thisAA 
;AA 
}BB 	
[DD 	
ObsoleteDD	 
(DD 
$strDD R
)DDR S
]DDS T
publicEE (
ContentTypeDefinitionBuilderEE +
WithSettingEE, 7
(EE7 8
stringEE8 >
nameEE? C
,EEC D
objectEEE K
valueEEL Q
)EEQ R
{FF 	
	_settingsGG 
[GG 
nameGG 
]GG 
=GG 
JTokenGG $
.GG$ %

FromObjectGG% /
(GG/ 0
valueGG0 5
)GG5 6
;GG6 7
returnHH 
thisHH 
;HH 
}II 	
publicKK (
ContentTypeDefinitionBuilderKK +
MergeSettingsKK, 9
(KK9 :
JObjectKK: A
settingsKKB J
)KKJ K
{LL 	
	_settingsMM 
.MM 
MergeMM 
(MM 
settingsMM $
,MM$ %"
ContentBuilderSettingsMM& <
.MM< =
JsonMergeSettingsMM= N
)MMN O
;MMO P
returnNN 
thisNN 
;NN 
}OO 	
publicQQ (
ContentTypeDefinitionBuilderQQ +
MergeSettingsQQ, 9
<QQ9 :
TQQ: ;
>QQ; <
(QQ< =
ActionQQ= C
<QQC D
TQQD E
>QQE F
settingQQG N
)QQN O
whereQQP U
TQQV W
:QQX Y
classQQZ _
,QQ_ `
newQQa d
(QQd e
)QQe f
{RR 	
varSS 
existingJObjectSS 
=SS  !
	_settingsSS" +
[SS+ ,
typeofSS, 2
(SS2 3
TSS3 4
)SS4 5
.SS5 6
NameSS6 :
]SS: ;
asSS< >
JObjectSS? F
;SSF G
ifUU 
(UU 
existingJObjectUU 
==UU  "
nullUU# '
)UU' (
{VV 
existingJObjectWW 
=WW  !
JObjectWW" )
.WW) *

FromObjectWW* 4
(WW4 5
newWW5 8
TWW9 :
(WW: ;
)WW; <
,WW< ="
ContentBuilderSettingsWW> T
.WWT U)
IgnoreDefaultValuesSerializerWWU r
)WWr s
;WWs t
	_settingsXX 
[XX 
typeofXX  
(XX  !
TXX! "
)XX" #
.XX# $
NameXX$ (
]XX( )
=XX* +
existingJObjectXX, ;
;XX; <
}YY 
var[[ 
settingsToMerge[[ 
=[[  !
existingJObject[[" 1
.[[1 2
ToObject[[2 :
<[[: ;
T[[; <
>[[< =
([[= >
)[[> ?
;[[? @
setting\\ 
(\\ 
settingsToMerge\\ #
)\\# $
;\\$ %
	_settings]] 
[]] 
typeof]] 
(]] 
T]] 
)]] 
.]]  
Name]]  $
]]]$ %
=]]& '
JObject]]( /
.]]/ 0

FromObject]]0 :
(]]: ;
settingsToMerge]]; J
,]]J K"
ContentBuilderSettings]]L b
.]]b c*
IgnoreDefaultValuesSerializer	]]c �
)
]]� �
;
]]� �
return^^ 
this^^ 
;^^ 
}__ 	
publicaa (
ContentTypeDefinitionBuilderaa +
WithSettingsaa, 8
<aa8 9
Taa9 :
>aa: ;
(aa; <
Taa< =
settingsaa> F
)aaF G
{bb 	
ifcc 
(cc 
settingscc 
==cc 
nullcc  
)cc  !
{dd 
throwee 
newee !
ArgumentNullExceptionee /
(ee/ 0
nameofee0 6
(ee6 7
settingsee7 ?
)ee? @
)ee@ A
;eeA B
}ff 
varhh 
jObjecthh 
=hh 
JObjecthh !
.hh! "

FromObjecthh" ,
(hh, -
settingshh- 5
,hh5 6"
ContentBuilderSettingshh7 M
.hhM N)
IgnoreDefaultValuesSerializerhhN k
)hhk l
;hhl m
	_settingsii 
[ii 
typeofii 
(ii 
Tii 
)ii 
.ii  
Nameii  $
]ii$ %
=ii& '
jObjectii( /
;ii/ 0
returnkk 
thiskk 
;kk 
}ll 	
publicnn (
ContentTypeDefinitionBuildernn +

RemovePartnn, 6
(nn6 7
stringnn7 =
partNamenn> F
)nnF G
{oo 	
varpp 
existingPartpp 
=pp 
_partspp %
.pp% &
SingleOrDefaultpp& 5
(pp5 6
xpp6 7
=>pp8 :
xpp; <
.pp< =
Namepp= A
==ppB D
partNameppE M
)ppM N
;ppN O
ifqq 
(qq 
existingPartqq 
!=qq 
nullqq  $
)qq$ %
{rr 
_partsss 
.ss 
Removess 
(ss 
existingPartss *
)ss* +
;ss+ ,
}tt 
returnuu 
thisuu 
;uu 
}vv 	
publicxx (
ContentTypeDefinitionBuilderxx +
WithPartxx, 4
(xx4 5
stringxx5 ;
partNamexx< D
)xxD E
{yy 	
returnzz 
WithPartzz 
(zz 
partNamezz $
,zz$ %
configurationzz& 3
=>zz4 6
{zz7 8
}zz9 :
)zz: ;
;zz; <
}{{ 	
public}} (
ContentTypeDefinitionBuilder}} +
WithPart}}, 4
(}}4 5
string}}5 ;
name}}< @
,}}@ A
string}}B H
partName}}I Q
)}}Q R
{~~ 	
return 
WithPart 
( 
name  
,  !
new" %!
ContentPartDefinition& ;
(; <
partName< D
)D E
,E F
configurationG T
=>U W
{X Y
}Z [
)[ \
;\ ]
}
�� 	
public
�� *
ContentTypeDefinitionBuilder
�� +
WithPart
��, 4
(
��4 5
string
��5 ;
name
��< @
,
��@ A
string
��B H
partName
��I Q
,
��Q R
Action
��S Y
<
��Y Z.
 ContentTypePartDefinitionBuilder
��Z z
>
��z {
configuration��| �
)��� �
{
�� 	
return
�� 
WithPart
�� 
(
�� 
name
��  
,
��  !
new
��" %#
ContentPartDefinition
��& ;
(
��; <
partName
��< D
)
��D E
,
��E F
configuration
��G T
)
��T U
;
��U V
}
�� 	
public
�� *
ContentTypeDefinitionBuilder
�� +
WithPart
��, 4
(
��4 5
string
��5 ;
partName
��< D
,
��D E
Action
��F L
<
��L M.
 ContentTypePartDefinitionBuilder
��M m
>
��m n
configuration
��o |
)
��| }
{
�� 	
return
�� 
WithPart
�� 
(
�� 
partName
�� $
,
��$ %
new
��& )#
ContentPartDefinition
��* ?
(
��? @
partName
��@ H
)
��H I
,
��I J
configuration
��K X
)
��X Y
;
��Y Z
}
�� 	
public
�� *
ContentTypeDefinitionBuilder
�� +
WithPart
��, 4
(
��4 5
string
��5 ;
name
��< @
,
��@ A#
ContentPartDefinition
��B W
partDefinition
��X f
,
��f g
Action
��h n
<
��n o/
 ContentTypePartDefinitionBuilder��o �
>��� �
configuration��� �
)��� �
{
�� 	
var
�� 
existingPart
�� 
=
�� 
_parts
�� %
.
��% &
FirstOrDefault
��& 4
(
��4 5
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Name
��< @
==
��A C
name
��D H
)
��H I
;
��I J
if
�� 
(
�� 
existingPart
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
_parts
�� 
.
�� 
Remove
�� 
(
�� 
existingPart
�� *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� 
existingPart
�� 
=
�� 
new
�� "'
ContentTypePartDefinition
��# <
(
��< =
name
��= A
,
��A B
partDefinition
��C Q
,
��Q R
new
��S V
JObject
��W ^
(
��^ _
)
��_ `
)
��` a
;
��a b
existingPart
�� 
.
�� #
ContentTypeDefinition
�� 2
=
��3 4
Current
��5 <
;
��< =
}
�� 
var
�� 

configurer
�� 
=
�� 
new
��   
PartConfigurerImpl
��! 3
(
��3 4
existingPart
��4 @
)
��@ A
;
��A B
configuration
�� 
(
�� 

configurer
�� $
)
��$ %
;
��% &
_parts
�� 
.
�� 
Add
�� 
(
�� 

configurer
�� !
.
��! "
Build
��" '
(
��' (
)
��( )
)
��) *
;
��* +
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
Task
�� 
<
�� *
ContentTypeDefinitionBuilder
�� 0
>
��0 1
WithPartAsync
��2 ?
(
��? @
string
��@ F
name
��G K
,
��K L
string
��M S
partName
��T \
,
��\ ]
Func
��^ b
<
��b c/
 ContentTypePartDefinitionBuilder��c �
,��� �
Task��� �
>��� �"
configurationAsync��� �
)��� �
{
�� 	
return
�� 
WithPartAsync
��  
(
��  !
name
��! %
,
��% &
new
��' *#
ContentPartDefinition
��+ @
(
��@ A
partName
��A I
)
��I J
,
��J K 
configurationAsync
��L ^
)
��^ _
;
��_ `
}
�� 	
public
�� 
Task
�� 
<
�� *
ContentTypeDefinitionBuilder
�� 0
>
��0 1
WithPartAsync
��2 ?
(
��? @
string
��@ F
partName
��G O
,
��O P
Func
��Q U
<
��U V.
 ContentTypePartDefinitionBuilder
��V v
,
��v w
Task
��x |
>
��| }!
configurationAsync��~ �
)��� �
{
�� 	
return
�� 
WithPartAsync
��  
(
��  !
partName
��! )
,
��) *
new
��+ .#
ContentPartDefinition
��/ D
(
��D E
partName
��E M
)
��M N
,
��N O 
configurationAsync
��P b
)
��b c
;
��c d
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� *
ContentTypeDefinitionBuilder
�� 6
>
��6 7
WithPartAsync
��8 E
(
��E F
string
��F L
name
��M Q
,
��Q R#
ContentPartDefinition
��S h
partDefinition
��i w
,
��w x
Func
��y }
<
��} ~/
 ContentTypePartDefinitionBuilder��~ �
,��� �
Task��� �
>��� �"
configurationAsync��� �
)��� �
{
�� 	
var
�� 
existingPart
�� 
=
�� 
_parts
�� %
.
��% &
FirstOrDefault
��& 4
(
��4 5
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Name
��< @
==
��A C
name
��D H
)
��H I
;
��I J
if
�� 
(
�� 
existingPart
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
_parts
�� 
.
�� 
Remove
�� 
(
�� 
existingPart
�� *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� 
existingPart
�� 
=
�� 
new
�� "'
ContentTypePartDefinition
��# <
(
��< =
name
��= A
,
��A B
partDefinition
��C Q
,
��Q R
new
��S V
JObject
��W ^
(
��^ _
)
��_ `
)
��` a
;
��a b
existingPart
�� 
.
�� #
ContentTypeDefinition
�� 2
=
��3 4
Current
��5 <
;
��< =
}
�� 
var
�� 

configurer
�� 
=
�� 
new
��   
PartConfigurerImpl
��! 3
(
��3 4
existingPart
��4 @
)
��@ A
;
��A B
await
��  
configurationAsync
�� $
(
��$ %

configurer
��% /
)
��/ 0
;
��0 1
_parts
�� 
.
�� 
Add
�� 
(
�� 

configurer
�� !
.
��! "
Build
��" '
(
��' (
)
��( )
)
��) *
;
��* +
return
�� 
this
�� 
;
�� 
}
�� 	
private
�� 
class
��  
PartConfigurerImpl
�� (
:
��) *.
 ContentTypePartDefinitionBuilder
��+ K
{
�� 	
private
�� 
readonly
�� #
ContentPartDefinition
�� 2
_partDefinition
��3 B
;
��B C
public
��  
PartConfigurerImpl
�� %
(
��% &'
ContentTypePartDefinition
��& ?
part
��@ D
)
��D E
:
�� 
base
�� 
(
�� 
part
�� 
)
�� 
{
�� 
Current
�� 
=
�� 
part
�� 
;
�� 
_partDefinition
�� 
=
��  !
part
��" &
.
��& '
PartDefinition
��' 5
;
��5 6
}
�� 
public
�� 
override
�� '
ContentTypePartDefinition
�� 5
Build
��6 ;
(
��; <
)
��< =
{
�� 
if
�� 
(
�� 
!
�� 
Current
�� 
.
�� 
Name
�� !
[
��! "
$num
��" #
]
��# $
.
��$ %
IsLetter
��% -
(
��- .
)
��. /
)
��/ 0
{
�� 
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
$str
��0 \
,
��\ ]
$str
��^ d
)
��d e
;
��e f
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
Equals
�� "
(
��" #
Current
��# *
.
��* +
Name
��+ /
,
��/ 0
Current
��1 8
.
��8 9
Name
��9 =
.
��= >

ToSafeName
��> H
(
��H I
)
��I J
,
��J K
StringComparison
��L \
.
��\ ]
OrdinalIgnoreCase
��] n
)
��n o
)
��o p
{
�� 
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
$str
��0 _
,
��_ `
$str
��a g
)
��g h
;
��h i
}
�� 
return
�� 
new
�� '
ContentTypePartDefinition
�� 4
(
��4 5
Current
��5 <
.
��< =
Name
��= A
,
��A B
_partDefinition
��C R
,
��R S
	_settings
��T ]
)
��] ^
{
�� #
ContentTypeDefinition
�� )
=
��* +
Current
��, 3
.
��3 4#
ContentTypeDefinition
��4 I
,
��I J
}
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �9
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Builders\ContentTypePartDefinitionBuilder.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Builders1 9
{ 
public 

abstract 
class ,
 ContentTypePartDefinitionBuilder :
{ 
	protected		 
readonly		 
JObject		 "
	_settings		# ,
;		, -
public %
ContentTypePartDefinition (
Current) 0
{1 2
get3 6
;6 7
	protected8 A
setB E
;E F
}G H
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
PartName 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
string 
TypeName 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
	protected ,
 ContentTypePartDefinitionBuilder 2
(2 3%
ContentTypePartDefinition3 L
partM Q
)Q R
{ 	
Current 
= 
part 
; 
Name 
= 
part 
. 
Name 
; 
PartName 
= 
part 
. 
PartDefinition *
.* +
Name+ /
;/ 0
TypeName 
= 
part 
. !
ContentTypeDefinition 1
!=2 4
null5 9
?: ;
part< @
.@ A!
ContentTypeDefinitionA V
.V W
NameW [
:\ ]
default^ e
(e f
stringf l
)l m
;m n
	_settings 
= 
new 
JObject #
(# $
part$ (
.( )
Settings) 1
)1 2
;2 3
} 	
public ,
 ContentTypePartDefinitionBuilder /
WithSettings0 <
<< =
T= >
>> ?
(? @
T@ A
settingsB J
)J K
{ 	
if 
( 
settings 
== 
null  
)  !
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
settings7 ?
)? @
)@ A
;A B
} 
var   
jObject   
=   
JObject   !
.  ! "

FromObject  " ,
(  , -
settings  - 5
,  5 6"
ContentBuilderSettings  7 M
.  M N)
IgnoreDefaultValuesSerializer  N k
)  k l
;  l m
	_settings!! 
[!! 
typeof!! 
(!! 
T!! 
)!! 
.!!  
Name!!  $
]!!$ %
=!!& '
jObject!!( /
;!!/ 0
return## 
this## 
;## 
}$$ 	
[&& 	
Obsolete&&	 
(&& 
$str&& R
)&&R S
]&&S T
public'' ,
 ContentTypePartDefinitionBuilder'' /
WithSetting''0 ;
(''; <
string''< B
name''C G
,''G H
string''I O
value''P U
)''U V
{(( 	
	_settings)) 
[)) 
name)) 
])) 
=)) 
value)) #
;))# $
return** 
this** 
;** 
}++ 	
[-- 	
Obsolete--	 
(-- 
$str-- R
)--R S
]--S T
public.. ,
 ContentTypePartDefinitionBuilder.. /
WithSetting..0 ;
(..; <
string..< B
name..C G
,..G H
string..I O
[..O P
]..P Q
values..R X
)..X Y
{// 	
	_settings00 
[00 
name00 
]00 
=00 
new00 !
JArray00" (
(00( )
values00) /
)00/ 0
;000 1
return11 
this11 
;11 
}22 	
public44 ,
 ContentTypePartDefinitionBuilder44 /
MergeSettings440 =
(44= >
JObject44> E
settings44F N
)44N O
{55 	
	_settings66 
.66 
Merge66 
(66 
settings66 $
,66$ %"
ContentBuilderSettings66& <
.66< =
JsonMergeSettings66= N
)66N O
;66O P
return77 
this77 
;77 
}88 	
public:: ,
 ContentTypePartDefinitionBuilder:: /
MergeSettings::0 =
<::= >
T::> ?
>::? @
(::@ A
Action::A G
<::G H
T::H I
>::I J
setting::K R
)::R S
where::T Y
T::Z [
:::\ ]
class::^ c
,::c d
new::e h
(::h i
)::i j
{;; 	
var<< 
existingJObject<< 
=<<  !
	_settings<<" +
[<<+ ,
typeof<<, 2
(<<2 3
T<<3 4
)<<4 5
.<<5 6
Name<<6 :
]<<: ;
as<<< >
JObject<<? F
;<<F G
if>> 
(>> 
existingJObject>> 
==>>  "
null>># '
)>>' (
{?? 
existingJObject@@ 
=@@  !
JObject@@" )
.@@) *

FromObject@@* 4
(@@4 5
new@@5 8
T@@9 :
(@@: ;
)@@; <
,@@< ="
ContentBuilderSettings@@> T
.@@T U)
IgnoreDefaultValuesSerializer@@U r
)@@r s
;@@s t
	_settingsAA 
[AA 
typeofAA  
(AA  !
TAA! "
)AA" #
.AA# $
NameAA$ (
]AA( )
=AA* +
existingJObjectAA, ;
;AA; <
}BB 
varDD 
settingsToMergeDD 
=DD  !
existingJObjectDD" 1
.DD1 2
ToObjectDD2 :
<DD: ;
TDD; <
>DD< =
(DD= >
)DD> ?
;DD? @
settingEE 
(EE 
settingsToMergeEE #
)EE# $
;EE$ %
	_settingsFF 
[FF 
typeofFF 
(FF 
TFF 
)FF 
.FF  
NameFF  $
]FF$ %
=FF& '
JObjectFF( /
.FF/ 0

FromObjectFF0 :
(FF: ;
settingsToMergeFF; J
,FFJ K"
ContentBuilderSettingsFFL b
.FFb c*
IgnoreDefaultValuesSerializer	FFc �
)
FF� �
;
FF� �
returnGG 
thisGG 
;GG 
}HH 	
publicJJ 
abstractJJ %
ContentTypePartDefinitionJJ 1
BuildJJ2 7
(JJ7 8
)JJ8 9
;JJ9 :
}KK 
}LL �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\ContentDefinition.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

abstract 
class 
ContentDefinition +
{ 
public 
string 
Name 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public 
JObject 
Settings 
{  !
get" %
;% &
	protected' 0
set1 4
;4 5
}6 7
public 
T 
GetSettings 
< 
T 
> 
(  
)  !
where" '
T( )
:* +
new, /
(/ 0
)0 1
{ 	
var 
typeName 
= 
typeof !
(! "
T" #
)# $
.$ %
Name% )
;) *
if 
( 
Settings 
== 
null  
)  !
{ 
return 
new 
T 
( 
) 
; 
} 
JToken 
value 
; 
if 
( 
Settings 
. 
TryGetValue $
($ %
typeName% -
,- .
out/ 2
value3 8
)8 9
)9 :
{ 
return 
value 
. 
ToObject %
<% &
T& '
>' (
(( )
)) *
;* +
} 
return 
new 
T 
( 
) 
; 
} 	
public!! 
void!! 
PopulateSettings!! $
<!!$ %
T!!% &
>!!& '
(!!' (
T!!( )
target!!* 0
)!!0 1
{"" 	
var## 
typeName## 
=## 
typeof## !
(##! "
T##" #
)### $
.##$ %
Name##% )
;##) *
if%% 
(%% 
Settings%% 
==%% 
null%%  
)%%  !
{&& 
return'' 
;'' 
}(( 
JToken** 
value** 
;** 
if++ 
(++ 
Settings++ 
.++ 
TryGetValue++ $
(++$ %
typeName++% -
,++- .
out++/ 2
value++3 8
)++8 9
)++9 :
{,, 
JsonConvert-- 
.-- 
PopulateObject-- *
(--* +
value--+ 0
.--0 1
ToString--1 9
(--9 :
)--: ;
,--; <
target--= C
)--C D
;--D E
}.. 
}// 	
}00 
}11 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\ContentFieldDefinition.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

class "
ContentFieldDefinition '
{ 
public "
ContentFieldDefinition %
(% &
string& ,
name- 1
)1 2
{ 	
Name 
= 
name 
; 
} 	
public

 
string

 
Name

 
{

 
get

  
;

  !
private

" )
set

* -
;

- .
}

/ 0
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\ContentPartDefinition.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

class !
ContentPartDefinition &
:' (
ContentDefinition) :
{ 
public		 !
ContentPartDefinition		 $
(		$ %
string		% +
name		, 0
)		0 1
{

 	
Name 
= 
name 
; 
Fields 
= 

Enumerable 
.  
Empty  %
<% &&
ContentPartFieldDefinition& @
>@ A
(A B
)B C
;C D
Settings 
= 
new 
JObject "
(" #
)# $
;$ %
} 	
public !
ContentPartDefinition $
($ %
string% +
name, 0
,0 1
IEnumerable2 =
<= >&
ContentPartFieldDefinition> X
>X Y
fieldsZ `
,` a
JObjectb i
settingsj r
)r s
{ 	
Name 
= 
name 
; 
Fields 
= 
fields 
. 
ToList "
(" #
)# $
;$ %
Settings 
= 
new 
JObject "
(" #
settings# +
)+ ,
;, -
foreach 
( 
var 
field 
in !
Fields" (
)( )
{ 
field 
. 
PartDefinition $
=% &
this' +
;+ ,
} 
} 	
public 
IEnumerable 
< &
ContentPartFieldDefinition 5
>5 6
Fields7 =
{> ?
get@ C
;C D
privateE L
setM P
;P Q
}R S
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\ContentPartFieldDefinition.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

class &
ContentPartFieldDefinition +
:, -
ContentDefinition. ?
{ 
public &
ContentPartFieldDefinition )
() *"
ContentFieldDefinition* @"
contentFieldDefinitionA W
,W X
stringY _
name` d
,d e
JObjectf m
settingsn v
)v w
{ 	
Name		 
=		 
name		 
;		 
FieldDefinition

 
=

 "
contentFieldDefinition

 4
;

4 5
Settings 
= 
settings 
;  
} 	
public "
ContentFieldDefinition %
FieldDefinition& 5
{6 7
get8 ;
;; <
private= D
setE H
;H I
}J K
public !
ContentPartDefinition $
PartDefinition% 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\ContentPartFieldExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

static 
class .
"ContentPartFieldSettingsExtensions :
{ 
public 
static 
string 
DisplayName (
(( )
this) -&
ContentPartFieldDefinition. H
	partFieldI R
)R S
{		 	
var

 
displayName

 
=

 
	partField

 '
.

' (
GetSettings

( 3
<

3 4$
ContentPartFieldSettings

4 L
>

L M
(

M N
)

N O
.

O P
DisplayName

P [
;

[ \
if 
( 
String 
. 
IsNullOrEmpty $
($ %
displayName% 0
)0 1
)1 2
{ 
displayName 
= 
	partField '
.' (
FieldDefinition( 7
.7 8
Name8 <
;< =
} 
return 
displayName 
; 
} 	
public 
static 
string 
Description (
(( )
this) -&
ContentPartFieldDefinition. H
	partFieldI R
)R S
{ 	
return 
	partField 
. 
GetSettings (
<( )$
ContentPartFieldSettings) A
>A B
(B C
)C D
.D E
DescriptionE P
;P Q
} 	
public 
static 
string 
Editor #
(# $
this$ (&
ContentPartFieldDefinition) C
	partFieldD M
)M N
{ 	
return 
	partField 
. 
GetSettings (
<( )$
ContentPartFieldSettings) A
>A B
(B C
)C D
.D E
EditorE K
;K L
} 	
public 
static 
string 
DisplayMode (
(( )
this) -&
ContentPartFieldDefinition. H
	partFieldI R
)R S
{ 	
return   
	partField   
.   
GetSettings   (
<  ( )$
ContentPartFieldSettings  ) A
>  A B
(  B C
)  C D
.  D E
DisplayMode  E P
;  P Q
}!! 	
}"" 
}## �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\ContentTypeDefinition.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

class !
ContentTypeDefinition &
:' (
ContentDefinition) :
{		 
public

 !
ContentTypeDefinition

 $
(

$ %
string

% +
name

, 0
,

0 1
string

2 8
displayName

9 D
,

D E
IEnumerable

F Q
<

Q R%
ContentTypePartDefinition

R k
>

k l
parts

m r
,

r s
JObject

t {
settings	

| �
)


� �
{ 	
Name 
= 
name 
; 
DisplayName 
= 
displayName %
;% &
Parts 
= 
parts 
. 
ToList  
(  !
)! "
;" #
Settings 
= 
new 
JObject "
(" #
settings# +
)+ ,
;, -
foreach 
( 
var 
part 
in  
Parts! &
)& '
{ 
part 
. !
ContentTypeDefinition *
=+ ,
this- 1
;1 2
} 
} 	
public !
ContentTypeDefinition $
($ %
string% +
name, 0
,0 1
string2 8
displayName9 D
)D E
{ 	
Name 
= 
name 
; 
DisplayName 
= 
displayName %
;% &
Parts 
= 

Enumerable 
. 
Empty $
<$ %%
ContentTypePartDefinition% >
>> ?
(? @
)@ A
;A B
Settings 
= 
new 
JObject "
(" #
)# $
;$ %
} 	
[ 	
Required	 
, 
StringLength 
(  
$num  $
)$ %
]% &
public   
string   
DisplayName   !
{  " #
get  $ '
;  ' (
private  ) 0
set  1 4
;  4 5
}  6 7
public"" 
IEnumerable"" 
<"" %
ContentTypePartDefinition"" 4
>""4 5
Parts""6 ;
{""< =
get""> A
;""A B
private""C J
set""K N
;""N O
}""P Q
public)) 
override)) 
string)) 
ToString)) '
())' (
)))( )
{** 	
return++ 
string++ 
.++ 
IsNullOrEmpty++ '
(++' (
DisplayName++( 3
)++3 4
?,, 
Name,, 
:-- 
DisplayName-- 
;-- 
}.. 	
}// 
}00 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\ContentTypePartDefinition.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

class %
ContentTypePartDefinition *
:+ ,
ContentDefinition- >
{ 
public %
ContentTypePartDefinition (
(( )
string) /
name0 4
,4 5!
ContentPartDefinition6 K!
contentPartDefinitionL a
,a b
JObjectc j
settingsk s
)s t
{ 	
Name		 
=		 
name		 
;		 
PartDefinition

 
=

 !
contentPartDefinition

 2
;

2 3
Settings 
= 
settings 
;  
} 	
public !
ContentPartDefinition $
PartDefinition% 3
{4 5
get6 9
;9 :
private; B
setC F
;F G
}H I
public !
ContentTypeDefinition $!
ContentTypeDefinition% :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\ContentTypePartExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

static 
class %
ContentTypePartExtensions 1
{ 
public 
static 
string 
DisplayName (
(( )
this) -%
ContentTypePartDefinition. G
typePartH P
)P Q
{		 	
var

 
displayName

 
=

 
typePart

 &
.

& '
GetSettings

' 2
<

2 3#
ContentTypePartSettings

3 J
>

J K
(

K L
)

L M
.

M N
DisplayName

N Y
;

Y Z
if 
( 
String 
. 
IsNullOrEmpty $
($ %
displayName% 0
)0 1
)1 2
{ 
displayName 
= 
typePart &
.& '
PartDefinition' 5
.5 6
DisplayName6 A
(A B
)B C
;C D
} 
return 
displayName 
; 
} 	
public 
static 
string 
Description (
(( )
this) -%
ContentTypePartDefinition. G
typePartH P
)P Q
{ 	
var 
description 
= 
typePart &
.& '
GetSettings' 2
<2 3#
ContentTypePartSettings3 J
>J K
(K L
)L M
.M N
DescriptionN Y
;Y Z
if 
( 
String 
. 
IsNullOrEmpty $
($ %
description% 0
)0 1
)1 2
{ 
description 
= 
typePart &
.& '
PartDefinition' 5
.5 6
Description6 A
(A B
)B C
;C D
} 
return 
description 
; 
} 	
public   
static   
string   
Editor   #
(  # $
this  $ (%
ContentTypePartDefinition  ) B
typePart  C K
)  K L
{!! 	
return"" 
typePart"" 
."" 
GetSettings"" '
<""' (#
ContentTypePartSettings""( ?
>""? @
(""@ A
)""A B
.""B C
Editor""C I
;""I J
}## 	
public%% 
static%% 
string%% 
DisplayMode%% (
(%%( )
this%%) -%
ContentTypePartDefinition%%. G
typePart%%H P
)%%P Q
{&& 	
return'' 
typePart'' 
.'' 
GetSettings'' '
<''' (#
ContentTypePartSettings''( ?
>''? @
(''@ A
)''A B
.''B C
DisplayMode''C N
;''N O
}(( 	
})) 
}** �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Models\MetaDataExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Models1 7
{ 
public 

static 
class 
MetaDataExtensions *
{ 
[ 	
Obsolete	 
( 
$str ]
)] ^
]^ _
public 
static 
void 
Populate #
(# $
this$ (
JObject) 0
settings1 9
,9 :
object; A
targetB H
)H I
{ 	
JsonConvert 
. 
PopulateObject &
(& '
settings' /
./ 0
ToString0 8
(8 9
)9 :
,: ;
target< B
)B C
;C D
} 	
[ 	
Obsolete	 
( 
$str ]
)] ^
]^ _
public 
static 
void 
Populate #
<# $
T$ %
>% &
(& '
this' +
JObject, 3
settings4 <
,< =
object> D
targetE K
)K L
{ 	
var 
property 
= 
settings #
[# $
typeof$ *
(* +
T+ ,
), -
.- .
Name. 2
]2 3
;3 4
if 
( 
property 
!= 
null  
)  !
{ 
JsonConvert 
. 
PopulateObject *
(* +
property+ 3
.3 4
ToString4 <
(< =
)= >
,> ?
target@ F
)F G
;G H
} 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Records\ContentDefinitionRecord.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Records1 8
{ 
[ 
FileDocumentStore 
( 
FileName 
=  !
$str" 5
)5 6
]6 7
public 

class #
ContentDefinitionRecord (
:) *
Document+ 3
{ 
public		 #
ContentDefinitionRecord		 &
(		& '
)		' (
{

 	(
ContentTypeDefinitionRecords (
=) *
new+ .
List/ 3
<3 4'
ContentTypeDefinitionRecord4 O
>O P
(P Q
)Q R
;R S(
ContentPartDefinitionRecords (
=) *
new+ .
List/ 3
<3 4'
ContentPartDefinitionRecord4 O
>O P
(P Q
)Q R
;R S
} 	
public 
IList 
< '
ContentTypeDefinitionRecord 0
>0 1(
ContentTypeDefinitionRecords2 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
public 
IList 
< '
ContentPartDefinitionRecord 0
>0 1(
ContentPartDefinitionRecords2 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Records\ContentFieldDefinitionRecord.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Records1 8
{ 
public 

class (
ContentFieldDefinitionRecord -
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Records\ContentPartDefinitionRecord.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Records1 8
{ 
public 

class '
ContentPartDefinitionRecord ,
{ 
public '
ContentPartDefinitionRecord *
(* +
)+ ,
{		 	-
!ContentPartFieldDefinitionRecords

 -
=

. /
new

0 3
List

4 8
<

8 9,
 ContentPartFieldDefinitionRecord

9 Y
>

Y Z
(

Z [
)

[ \
;

\ ]
Settings 
= 
new 
JObject "
(" #
)# $
;$ %
} 	
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
JObject 
Settings 
{  !
get" %
;% &
set' *
;* +
}, -
public 
IList 
< ,
 ContentPartFieldDefinitionRecord 5
>5 6-
!ContentPartFieldDefinitionRecords7 X
{Y Z
get[ ^
;^ _
set` c
;c d
}e f
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Records\ContentPartFieldDefinitionRecord.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Records1 8
{ 
public 

class ,
 ContentPartFieldDefinitionRecord 1
{		 
public 
string 
	FieldName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
JObject 
Settings 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Records\ContentTypeDefinitionRecord.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Records1 8
{ 
public 

class '
ContentTypeDefinitionRecord ,
{ 
public '
ContentTypeDefinitionRecord *
(* +
)+ ,
{		 	,
 ContentTypePartDefinitionRecords

 ,
=

- .
new

/ 2
List

3 7
<

7 8+
ContentTypePartDefinitionRecord

8 W
>

W X
(

X Y
)

Y Z
;

Z [
} 	
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
JObject 
Settings 
{  !
get" %
;% &
set' *
;* +
}, -
public 
IList 
< +
ContentTypePartDefinitionRecord 4
>4 5,
 ContentTypePartDefinitionRecords6 V
{W X
getY \
;\ ]
set^ a
;a b
}c d
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Records\ContentTypePartDefinitionRecord.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Records1 8
{ 
public 

class +
ContentTypePartDefinitionRecord 0
{		 
public 
string 
PartName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
JObject 
Settings 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Settings\ContentPartFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Settings1 9
{ 
public 

class $
ContentPartFieldSettings )
{ 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Editor 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DisplayMode !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Settings\ContentPartFieldSettingsExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Settings1 9
{ 
public 

static 
class .
"ContentPartFieldSettingsExtensions :
{ 
public 
static -
!ContentPartFieldDefinitionBuilder 7
WithDisplayName8 G
(G H
thisH L-
!ContentPartFieldDefinitionBuilderM n
buildero v
,v w
stringx ~
displayName	 �
)
� �
{ 	
return		 
builder		 
.		 
MergeSettings		 (
<		( )$
ContentPartFieldSettings		) A
>		A B
(		B C
x		C D
=>		E G
x		H I
.		I J
DisplayName		J U
=		V W
displayName		X c
)		c d
;		d e
}

 	
public 
static -
!ContentPartFieldDefinitionBuilder 7
WithDescription8 G
(G H
thisH L-
!ContentPartFieldDefinitionBuilderM n
buildero v
,v w
stringx ~
description	 �
)
� �
{ 	
return 
builder 
. 
MergeSettings (
<( )$
ContentPartFieldSettings) A
>A B
(B C
xC D
=>E G
xH I
.I J
DescriptionJ U
=V W
descriptionX c
)c d
;d e
} 	
public 
static -
!ContentPartFieldDefinitionBuilder 7

WithEditor8 B
(B C
thisC G-
!ContentPartFieldDefinitionBuilderH i
builderj q
,q r
strings y
editor	z �
)
� �
{ 	
return 
builder 
. 
MergeSettings (
<( )$
ContentPartFieldSettings) A
>A B
(B C
xC D
=>E G
xH I
.I J
EditorJ P
=Q R
editorS Y
)Y Z
;Z [
} 	
public 
static -
!ContentPartFieldDefinitionBuilder 7
WithDisplayMode8 G
(G H
thisH L-
!ContentPartFieldDefinitionBuilderM n
buildero v
,v w
stringx ~
displayMode	 �
)
� �
{ 	
return 
builder 
. 
MergeSettings (
<( )$
ContentPartFieldSettings) A
>A B
(B C
xC D
=>E G
xH I
.I J
DisplayModeJ U
=V W
displayModeX c
)c d
;d e
} 	
public 
static -
!ContentPartFieldDefinitionBuilder 7
WithPosition8 D
(D E
thisE I-
!ContentPartFieldDefinitionBuilderJ k
builderl s
,s t
stringu {
position	| �
)
� �
{ 	
return 
builder 
. 
MergeSettings (
<( )$
ContentPartFieldSettings) A
>A B
(B C
xC D
=>E G
xH I
.I J
PositionJ R
=S T
positionU ]
)] ^
;^ _
} 	
} 
}   �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Settings\ContentPartSettings.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Settings1 9
{ 
public 

class 
ContentPartSettings $
{ 
public 
bool 

Attachable 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
Reusable 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
DefaultPosition %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} �1
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Settings\ContentPartSettingsExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Settings1 9
{ 
public 

static 
class )
ContentPartSettingsExtensions 5
{		 
public

 
static

 (
ContentPartDefinitionBuilder

 2

Attachable

3 =
(

= >
this

> B(
ContentPartDefinitionBuilder

C _
builder

` g
,

g h
bool

i m

attachable

n x
=

y z
true

{ 
)	

 �
{ 	
return 
builder 
. 
MergeSettings (
<( )
ContentPartSettings) <
>< =
(= >
x> ?
=>@ B
xC D
.D E

AttachableE O
=P Q

attachableR \
)\ ]
;] ^
} 	
public 
static 
bool 
IsAttachable '
(' (
this( ,!
ContentPartDefinition- B
partC G
)G H
{ 	
return 
part 
. 
GetSettings #
<# $
ContentPartSettings$ 7
>7 8
(8 9
)9 :
.: ;

Attachable; E
;E F
} 	
public 
static (
ContentPartDefinitionBuilder 2
Reusable3 ;
(; <
this< @(
ContentPartDefinitionBuilderA ]
builder^ e
,e f
boolg k
reusablel t
=u v
truew {
){ |
{ 	
return 
builder 
. 
MergeSettings (
<( )
ContentPartSettings) <
>< =
(= >
x> ?
=>@ B
xC D
.D E
ReusableE M
=N O
reusableP X
)X Y
;Y Z
} 	
public 
static 
bool 

IsReusable %
(% &
this& *!
ContentPartDefinition+ @
partA E
)E F
{ 	
return 
part 
. 
GetSettings #
<# $
ContentPartSettings$ 7
>7 8
(8 9
)9 :
.: ;
Reusable; C
;C D
} 	
public 
static (
ContentPartDefinitionBuilder 2
WithDescription3 B
(B C
thisC G(
ContentPartDefinitionBuilderH d
buildere l
,l m
stringn t
description	u �
)
� �
{ 	
return   
builder   
.   
MergeSettings   (
<  ( )
ContentPartSettings  ) <
>  < =
(  = >
x  > ?
=>  @ B
x  C D
.  D E
Description  E P
=  Q R
description  S ^
)  ^ _
;  _ `
}!! 	
public## 
static## (
ContentPartDefinitionBuilder## 2
WithDisplayName##3 B
(##B C
this##C G(
ContentPartDefinitionBuilder##H d
builder##e l
,##l m
string##n t
description	##u �
)
##� �
{$$ 	
return%% 
builder%% 
.%% 
MergeSettings%% (
<%%( )
ContentPartSettings%%) <
>%%< =
(%%= >
x%%> ?
=>%%@ B
x%%C D
.%%D E
DisplayName%%E P
=%%Q R
description%%S ^
)%%^ _
;%%_ `
}&& 	
public(( 
static(( (
ContentPartDefinitionBuilder(( 2
WithDefaultPosition((3 F
(((F G
this((G K(
ContentPartDefinitionBuilder((L h
builder((i p
,((p q
string((r x
position	((y �
)
((� �
{)) 	
return** 
builder** 
.** 
MergeSettings** (
<**( )
ContentPartSettings**) <
>**< =
(**= >
x**> ?
=>**@ B
x**C D
.**D E
DefaultPosition**E T
=**U V
position**W _
)**_ `
;**` a
}++ 	
public-- 
static-- 
string-- 
DefaultPosition-- ,
(--, -
this--- 1!
ContentPartDefinition--2 G
part--H L
)--L M
{.. 	
return// 
part// 
.// 
GetSettings// #
<//# $
ContentPartSettings//$ 7
>//7 8
(//8 9
)//9 :
.//: ;
DefaultPosition//; J
;//J K
}00 	
public22 
static22 
string22 
Description22 (
(22( )
this22) -!
ContentPartDefinition22. C
part22D H
)22H I
{33 	
return44 
part44 
.44 
GetSettings44 #
<44# $
ContentPartSettings44$ 7
>447 8
(448 9
)449 :
.44: ;
Description44; F
;44F G
}55 	
public77 
static77 
string77 
DisplayName77 (
(77( )
this77) -!
ContentPartDefinition77. C
part77D H
)77H I
{88 	
var99 
displayName99 
=99 
part99 "
.99" #
GetSettings99# .
<99. /
ContentPartSettings99/ B
>99B C
(99C D
)99D E
.99E F
DisplayName99F Q
;99Q R
if;; 
(;; 
String;; 
.;; 
IsNullOrEmpty;; $
(;;$ %
displayName;;% 0
);;0 1
);;1 2
{<< 
displayName== 
=== 
part== "
.==" #
Name==# '
.==' (
TrimEnd==( /
(==/ 0
$str==0 6
)==6 7
;==7 8
}>> 
return@@ 
displayName@@ 
;@@ 
}AA 	
}BB 
}CC �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Settings\ContentTypePartSettings.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Settings1 9
{ 
public 

class #
ContentTypePartSettings (
{ 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
DisplayMode !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Editor 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Settings\ContentTypePartSettingsExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Settings1 9
{ 
public 

static 
class -
!ContentTypePartSettingsExtensions 9
{ 
public 
static ,
 ContentTypePartDefinitionBuilder 6
WithDisplayName7 F
(F G
thisG K,
 ContentTypePartDefinitionBuilderL l
builderm t
,t u
stringv |
displayName	} �
)
� �
{ 	
return		 
builder		 
.		 
MergeSettings		 (
<		( )#
ContentTypePartSettings		) @
>		@ A
(		A B
x		B C
=>		D F
x		G H
.		H I
DisplayName		I T
=		U V
displayName		W b
)		b c
;		c d
}

 	
public 
static ,
 ContentTypePartDefinitionBuilder 6
WithDescription7 F
(F G
thisG K,
 ContentTypePartDefinitionBuilderL l
builderm t
,t u
stringv |
description	} �
)
� �
{ 	
return 
builder 
. 
MergeSettings (
<( )#
ContentTypePartSettings) @
>@ A
(A B
xB C
=>D F
xG H
.H I
DescriptionI T
=U V
descriptionW b
)b c
;c d
} 	
public 
static ,
 ContentTypePartDefinitionBuilder 6
WithPosition7 C
(C D
thisD H,
 ContentTypePartDefinitionBuilderI i
builderj q
,q r
strings y
position	z �
)
� �
{ 	
return 
builder 
. 
MergeSettings (
<( )#
ContentTypePartSettings) @
>@ A
(A B
xB C
=>D F
xG H
.H I
PositionI Q
=R S
positionT \
)\ ]
;] ^
} 	
public 
static ,
 ContentTypePartDefinitionBuilder 6
WithDisplayMode7 F
(F G
thisG K,
 ContentTypePartDefinitionBuilderL l
builderm t
,t u
stringv |
displayMode	} �
)
� �
{ 	
return 
builder 
. 
MergeSettings (
<( )#
ContentTypePartSettings) @
>@ A
(A B
xB C
=>D F
xG H
.H I
DisplayModeI T
=U V
displayModeW b
)b c
;c d
} 	
public 
static ,
 ContentTypePartDefinitionBuilder 6

WithEditor7 A
(A B
thisB F,
 ContentTypePartDefinitionBuilderG g
builderh o
,o p
stringq w
editorx ~
)~ 
{ 	
return 
builder 
. 
MergeSettings (
<( )#
ContentTypePartSettings) @
>@ A
(A B
xB C
=>D F
xG H
.H I
EditorI O
=P Q
editorR X
)X Y
;Y Z
} 	
} 
}   �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Settings\ContentTypeSettings.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Settings1 9
{ 
public 

class 
ContentTypeSettings $
{ 
public 
bool 
	Creatable 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Listable 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
	Draftable 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Versionable 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

Stereotype  
{! "
get# &
;& '
set( +
;+ ,
}- .
public!! 
bool!! 
	Securable!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
}"" 
}## �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Metadata\Settings\ContentTypeSettingsExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Metadata( 0
.0 1
Settings1 9
{ 
public 

static 
class )
ContentTypeSettingsExtensions 5
{ 
public 
static (
ContentTypeDefinitionBuilder 2
	Creatable3 <
(< =
this= A(
ContentTypeDefinitionBuilderB ^
builder_ f
,f g
boolh l
	creatablem v
=w x
truey }
)} ~
{ 	
return		 
builder		 
.		 
MergeSettings		 (
<		( )
ContentTypeSettings		) <
>		< =
(		= >
x		> ?
=>		@ B
x		C D
.		D E
	Creatable		E N
=		O P
	creatable		Q Z
)		Z [
;		[ \
}

 	
public 
static (
ContentTypeDefinitionBuilder 2
Listable3 ;
(; <
this< @(
ContentTypeDefinitionBuilderA ]
builder^ e
,e f
boolg k
listablel t
=u v
truew {
){ |
{ 	
return 
builder 
. 
MergeSettings (
<( )
ContentTypeSettings) <
>< =
(= >
x> ?
=>@ B
xC D
.D E
ListableE M
=N O
listableP X
)X Y
;Y Z
} 	
public 
static (
ContentTypeDefinitionBuilder 2
	Draftable3 <
(< =
this= A(
ContentTypeDefinitionBuilderB ^
builder_ f
,f g
boolh l
	draftablem v
=w x
truey }
)} ~
{ 	
return 
builder 
. 
MergeSettings (
<( )
ContentTypeSettings) <
>< =
(= >
x> ?
=>@ B
xC D
.D E
	DraftableE N
=O P
	draftableQ Z
)Z [
;[ \
} 	
public 
static (
ContentTypeDefinitionBuilder 2
Versionable3 >
(> ?
this? C(
ContentTypeDefinitionBuilderD `
buildera h
,h i
boolj n
versionableo z
={ |
true	} �
)
� �
{ 	
return 
builder 
. 
MergeSettings (
<( )
ContentTypeSettings) <
>< =
(= >
x> ?
=>@ B
xC D
.D E
VersionableE P
=Q R
versionableS ^
)^ _
;_ `
} 	
public 
static (
ContentTypeDefinitionBuilder 2
	Securable3 <
(< =
this= A(
ContentTypeDefinitionBuilderB ^
builder_ f
,f g
boolh l
	securablem v
=w x
truey }
)} ~
{ 	
return 
builder 
. 
MergeSettings (
<( )
ContentTypeSettings) <
>< =
(= >
x> ?
=>@ B
xC D
.D E
	SecurableE N
=O P
	securableQ Z
)Z [
;[ \
} 	
public   
static   (
ContentTypeDefinitionBuilder   2

Stereotype  3 =
(  = >
this  > B(
ContentTypeDefinitionBuilder  C _
builder  ` g
,  g h
string  i o

stereotype  p z
)  z {
{!! 	
return"" 
builder"" 
."" 
MergeSettings"" (
<""( )
ContentTypeSettings"") <
>""< =
(""= >
x""> ?
=>""@ B
x""C D
.""D E

Stereotype""E O
=""P Q

stereotype""R \
)""\ ]
;""] ^
}## 	
}$$ 
}%% �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Models\BodyAspect.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Models( .
{ 
public 

class 

BodyAspect 
{ 
public 
IHtmlContent 
Body  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Models\FullTextAspect.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Models( .
{ 
public 

class 
FullTextAspect 
{ 
public

 
List

 
<

 
string

 
>

 
Segments

 $
{

% &
get

' *
;

* +
}

, -
=

. /
new

0 3
List

4 8
<

8 9
string

9 ?
>

? @
(

@ A
)

A B
;

B C
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\PreviewAspect.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

class 
PreviewAspect 
{ 
public 
string 

PreviewUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[		 
assembly		 	
:			 

AssemblyCompany		 
(		 
$str		 
)		 
]		 
[

 
assembly

 	
:

	 

AssemblyProduct

 
(

 
$str

 G
)

G H
]

H I
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Routing\AutorouteEntry.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Routing( /
{ 
public 

class 
AutorouteEntry 
{ 
public 
AutorouteEntry 
( 
string $
contentItemId% 2
,2 3
string4 :
path; ?
,? @
stringA G"
containedContentItemIdH ^
=_ `
nulla e
,e f
stringg m
jsonPathn v
=w x
nully }
)} ~
{ 	
ContentItemId 
= 
contentItemId )
;) *
Path

 
=

 
$str

 
+

 
path

 
.

 
Trim

 "
(

" #
$char

# &
)

& '
;

' ("
ContainedContentItemId "
=# $"
containedContentItemId% ;
;; <
JsonPath 
= 
jsonPath 
;  
} 	
public 
int 

DocumentId 
; 
public 
string 
ContentItemId #
;# $
public 
string 
Path 
; 
public## 
string## "
ContainedContentItemId## ,
;##, -
public(( 
string(( 
JsonPath(( 
;(( 
})) 
}** �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Routing\AutorouteOptions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Routing( /
{ 
public 

class 
AutorouteOptions !
{ 
public  
RouteValueDictionary #
GlobalRouteValues$ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
newF I 
RouteValueDictionaryJ ^
(^ _
)_ `
;` a
public 
string 
ContentItemIdKey &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
$str7 9
;9 :
public 
string %
ContainedContentItemIdKey /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
$str@ B
;B C
public 
string 
JsonPathKey !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
$str2 4
;4 5
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Routing\ContainedContentItemsAspect.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Routing( /
{ 
public 

class '
ContainedContentItemsAspect ,
{ 
public 
IList 
< 
Func 
< 
JObject !
,! "
JArray# )
>) *
>* +
	Accessors, 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
newF I
ListJ N
<N O
FuncO S
<S T
JObjectT [
,[ \
JArray] c
>c d
>d e
(e f
)f g
;g h
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Routing\IAutorouteEntries.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Routing( /
{ 
public 

	interface 
IAutorouteEntries &
{ 
Task 
< 
( 
bool 
, 
AutorouteEntry "
)" #
># $"
TryGetEntryByPathAsync% ;
(; <
string< B
pathC G
)G H
;H I
Task 
< 
( 
bool 
, 
AutorouteEntry "
)" #
># $+
TryGetEntryByContentItemIdAsync% D
(D E
stringE K
contentItemIdL Y
)Y Z
;Z [
Task		 
UpdateEntriesAsync		 
(		  
)		  !
;		! "
}

 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Routing\RouteHandlerAspect.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Routing( /
{ 
public 

class 
RouteHandlerAspect #
{ 
public 
string 
Path 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Absolute 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Disabled 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �2
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{		 
public 
static $
ContentPartOptionBuilder .
AddContentPart/ =
<= >
TContentPart> J
>J K
(K L
thisL P
IServiceCollectionQ c
servicesd l
)l m
where 
TContentPart 
:  
ContentPart! ,
{ 	
return 
services 
. 
AddContentPart *
(* +
typeof+ 1
(1 2
TContentPart2 >
)> ?
)? @
;@ A
} 	
public 
static $
ContentPartOptionBuilder .
AddContentPart/ =
(= >
this> B
IServiceCollectionC U
servicesV ^
,^ _
Type` d
contentPartTypee t
)t u
{ 	
services 
. 
	Configure 
< 
ContentOptions -
>- .
(. /
o/ 0
=>1 3
o4 5
.5 6
GetOrAddContentPart6 I
(I J
contentPartTypeJ Y
)Y Z
)Z [
;[ \
return 
new $
ContentPartOptionBuilder /
(/ 0
services0 8
,8 9
contentPartType: I
)I J
;J K
} 	
public"" 
static"" %
ContentFieldOptionBuilder"" /
AddContentField""0 ?
<""? @
TContentField""@ M
>""M N
(""N O
this""O S
IServiceCollection""T f
services""g o
)""o p
where## 
TContentField## 
:##  !
ContentField##" .
{$$ 	
return%% 
services%% 
.%% 
AddContentField%% +
(%%+ ,
typeof%%, 2
(%%2 3
TContentField%%3 @
)%%@ A
)%%A B
;%%B C
}&& 	
public,, 
static,, %
ContentFieldOptionBuilder,, /
AddContentField,,0 ?
(,,? @
this,,@ D
IServiceCollection,,E W
services,,X `
,,,` a
Type,,b f
contentFieldType,,g w
),,w x
{-- 	
services.. 
... 
	Configure.. 
<.. 
ContentOptions.. -
>..- .
(... /
o../ 0
=>..1 3
o..4 5
...5 6 
GetOrAddContentField..6 J
(..J K
contentFieldType..K [
)..[ \
)..\ ]
;..] ^
return// 
new// %
ContentFieldOptionBuilder// 0
(//0 1
services//1 9
,//9 :
contentFieldType//; K
)//K L
;//L M
}00 	
public66 
static66 $
ContentPartOptionBuilder66 .

AddHandler66/ 9
<669 :
TContentPartHandler66: M
>66M N
(66N O
this66O S$
ContentPartOptionBuilder66T l
builder66m t
)66t u
where77 
TContentPartHandler77 %
:77& '
class77( -
,77- .
IContentPartHandler77/ B
{88 	
return99 
builder99 
.99 

AddHandler99 %
(99% &
typeof99& ,
(99, -
TContentPartHandler99- @
)99@ A
)99A B
;99B C
}:: 	
public?? 
static?? $
ContentPartOptionBuilder?? .

AddHandler??/ 9
(??9 :
this??: >$
ContentPartOptionBuilder??? W
builder??X _
,??_ `
Type??a e
handlerType??f q
)??q r
{@@ 	
builderAA 
.AA 
ServicesAA 
.AA 
TryAddScopedAA )
(AA) *
handlerTypeAA* 5
)AA5 6
;AA6 7
builderBB 
.BB 
ServicesBB 
.BB 
	ConfigureBB &
<BB& '
ContentOptionsBB' 5
>BB5 6
(BB6 7
oBB7 8
=>BB9 ;
{CC 
oDD 
.DD 

AddHandlerDD 
(DD 
builderDD $
.DD$ %
ContentPartTypeDD% 4
,DD4 5
handlerTypeDD6 A
)DDA B
;DDB C
}EE 
)EE 
;EE 
returnGG 
builderGG 
;GG 
}HH 	
publicNN 
staticNN $
ContentPartOptionBuilderNN .
RemoveHandlerNN/ <
<NN< =
TContentPartHandlerNN= P
>NNP Q
(NNQ R
thisNNR V$
ContentPartOptionBuilderNNW o
builderNNp w
)NNw x
whereOO 
TContentPartHandlerOO %
:OO& '
classOO( -
,OO- .
IContentPartHandlerOO/ B
{PP 	
returnQQ 
builderQQ 
.QQ 
RemoveHandlerQQ (
(QQ( )
typeofQQ) /
(QQ/ 0
TContentPartHandlerQQ0 C
)QQC D
)QQD E
;QQE F
}RR 	
publicWW 
staticWW $
ContentPartOptionBuilderWW .
RemoveHandlerWW/ <
(WW< =
thisWW= A$
ContentPartOptionBuilderWWB Z
builderWW[ b
,WWb c
TypeWWd h
handlerTypeWWi t
)WWt u
{XX 	
builderYY 
.YY 
ServicesYY 
.YY 
	RemoveAllYY &
(YY& '
handlerTypeYY' 2
)YY2 3
;YY3 4
builderZZ 
.ZZ 
ServicesZZ 
.ZZ 
	ConfigureZZ &
<ZZ& '
ContentOptionsZZ' 5
>ZZ5 6
(ZZ6 7
oZZ7 8
=>ZZ9 ;
{[[ 
o\\ 
.\\ 
RemoveHandler\\ 
(\\  
builder\\  '
.\\' (
ContentPartType\\( 7
,\\7 8
handlerType\\9 D
)\\D E
;\\E F
}]] 
)]] 
;]] 
return__ 
builder__ 
;__ 
}`` 	
}aa 
}bb ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Utilities\StringExtensions.cs
	namespace		 	
OrchardCore		
 
.		 
ContentManagement		 '
.		' (
	Utilities		( 1
{

 
public 

static 
class 
StringExtensions (
{ 
public 
static 
string 
CamelFriendly *
(* +
this+ /
string0 6
camel7 <
)< =
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
camel* /
)/ 0
)0 1
return 
$str 
; 
var 
sb 
= 
new 
StringBuilder &
(& '
camel' ,
), -
;- .
for 
( 
int 
i 
= 
camel 
. 
Length %
-& '
$num( )
;) *
i+ ,
>- .
$num/ 0
;0 1
i2 3
--3 5
)5 6
{ 
if 
( 
char 
. 
IsUpper  
(  !
sb! #
[# $
i$ %
]% &
)& '
)' (
{ 
sb 
. 
Insert 
( 
i 
,  
$char! $
)$ %
;% &
} 
} 
return 
sb 
. 
ToString 
( 
)  
;  !
} 	
public 
static 
string 
	Ellipsize &
(& '
this' +
string, 2
text3 7
,7 8
int9 <
characterCount= K
)K L
{   	
return!! 
text!! 
.!! 
	Ellipsize!! !
(!!! "
characterCount!!" 0
,!!0 1
$str!!2 @
)!!@ A
;!!A B
}"" 	
public$$ 
static$$ 
string$$ 
	Ellipsize$$ &
($$& '
this$$' +
string$$, 2
text$$3 7
,$$7 8
int$$9 <
characterCount$$= K
,$$K L
string$$M S
ellipsis$$T \
,$$\ ]
bool$$^ b
wordBoundary$$c o
=$$p q
false$$r w
)$$w x
{%% 	
if&& 
(&& 
string&& 
.&& 
IsNullOrWhiteSpace&& )
(&&) *
text&&* .
)&&. /
)&&/ 0
return'' 
$str'' 
;'' 
if)) 
()) 
characterCount)) 
<))  
$num))! "
||))# %
text))& *
.))* +
Length))+ 1
<=))2 4
characterCount))5 C
)))C D
return** 
text** 
;** 
var-- 
backup-- 
=-- 
characterCount-- '
;--' (
while.. 
(.. 
characterCount.. !
>.." #
$num..$ %
&&..& (
text..) -
[..- .
characterCount... <
-..= >
$num..? @
]..@ A
...A B
IsLetter..B J
(..J K
)..K L
)..L M
{// 
characterCount00 
--00  
;00  !
}11 
while44 
(44 
characterCount44 !
>44" #
$num44$ %
&&44& (
text44) -
[44- .
characterCount44. <
-44= >
$num44? @
]44@ A
.44A B
IsSpace44B I
(44I J
)44J K
)44K L
{55 
characterCount66 
--66  
;66  !
}77 
if:: 
(:: 
characterCount:: 
==:: !
$num::" #
&&::$ &
!::' (
wordBoundary::( 4
)::4 5
{;; 
characterCount<< 
=<<  
backup<<! '
;<<' (
}== 
var?? 
trimmed?? 
=?? 
text?? 
.?? 
	Substring?? (
(??( )
$num??) *
,??* +
characterCount??, :
)??: ;
;??; <
return@@ 
trimmed@@ 
+@@ 
ellipsis@@ %
;@@% &
}AA 	
publicCC 
staticCC 
stringCC 
HtmlClassifyCC )
(CC) *
thisCC* .
stringCC/ 5
textCC6 :
)CC: ;
{DD 	
ifEE 
(EE 
stringEE 
.EE 
IsNullOrWhiteSpaceEE )
(EE) *
textEE* .
)EE. /
)EE/ 0
returnFF 
$strFF 
;FF 
varHH 

friendlierHH 
=HH 
textHH !
.HH! "
CamelFriendlyHH" /
(HH/ 0
)HH0 1
;HH1 2
varJJ 
resultJJ 
=JJ 
newJJ 
charJJ !
[JJ! "

friendlierJJ" ,
.JJ, -
LengthJJ- 3
]JJ3 4
;JJ4 5
varLL 
cursorLL 
=LL 
$numLL 
;LL 
varMM 
previousIsNotLetterMM #
=MM$ %
falseMM& +
;MM+ ,
forNN 
(NN 
varNN 
iNN 
=NN 
$numNN 
;NN 
iNN 
<NN 

friendlierNN  *
.NN* +
LengthNN+ 1
;NN1 2
iNN3 4
++NN4 6
)NN6 7
{OO 
charPP 
currentPP 
=PP 

friendlierPP )
[PP) *
iPP* +
]PP+ ,
;PP, -
ifQQ 
(QQ 
IsLetterQQ 
(QQ 
currentQQ $
)QQ$ %
||QQ& (
(QQ) *
charQQ* .
.QQ. /
IsDigitQQ/ 6
(QQ6 7
currentQQ7 >
)QQ> ?
&&QQ@ B
cursorQQC I
>QQJ K
$numQQL M
)QQM N
)QQN O
{RR 
ifSS 
(SS 
previousIsNotLetterSS +
&&SS, .
iSS/ 0
!=SS1 3
$numSS4 5
&&SS6 8
cursorSS9 ?
>SS@ A
$numSSB C
)SSC D
{TT 
resultUU 
[UU 
cursorUU %
++UU% '
]UU' (
=UU) *
$charUU+ .
;UU. /
}VV 
resultXX 
[XX 
cursorXX !
++XX! #
]XX# $
=XX% &
charXX' +
.XX+ ,
ToLowerInvariantXX, <
(XX< =
currentXX= D
)XXD E
;XXE F
previousIsNotLetterYY '
=YY( )
falseYY* /
;YY/ 0
}ZZ 
else[[ 
{\\ 
previousIsNotLetter]] '
=]]( )
true]]* .
;]]. /
}^^ 
}__ 
returnaa 
newaa 
stringaa 
(aa 
resultaa $
,aa$ %
$numaa& '
,aa' (
cursoraa) /
)aa/ 0
;aa0 1
}bb 	
publicdd 
staticdd 
LocalizedStringdd %
	OrDefaultdd& /
(dd/ 0
thisdd0 4
stringdd5 ;
textdd< @
,dd@ A
LocalizedStringddB Q
defaultValueddR ^
)dd^ _
{ee 	
returnff 
stringff 
.ff 
IsNullOrEmptyff '
(ff' (
textff( ,
)ff, -
?gg 
defaultValuegg 
:hh 
newhh 
LocalizedStringhh %
(hh% &
nullhh& *
,hh* +
texthh, 0
)hh0 1
;hh1 2
}ii 	
publickk 
statickk 
stringkk 

RemoveTagskk '
(kk' (
thiskk( ,
stringkk- 3
htmlkk4 8
,kk8 9
boolkk: >

htmlDecodekk? I
=kkJ K
falsekkL Q
)kkQ R
{ll 	
ifmm 
(mm 
Stringmm 
.mm 
IsNullOrEmptymm $
(mm$ %
htmlmm% )
)mm) *
)mm* +
{nn 
returnoo 
Stringoo 
.oo 
Emptyoo #
;oo# $
}pp 
varrr 
resultrr 
=rr 
newrr 
charrr !
[rr! "
htmlrr" &
.rr& '
Lengthrr' -
]rr- .
;rr. /
vartt 
cursortt 
=tt 
$numtt 
;tt 
varuu 
insideuu 
=uu 
falseuu 
;uu 
forvv 
(vv 
varvv 
ivv 
=vv 
$numvv 
;vv 
ivv 
<vv 
htmlvv  $
.vv$ %
Lengthvv% +
;vv+ ,
ivv- .
++vv. 0
)vv0 1
{ww 
charxx 
currentxx 
=xx 
htmlxx #
[xx# $
ixx$ %
]xx% &
;xx& '
switchzz 
(zz 
currentzz 
)zz  
{{{ 
case|| 
$char|| 
:|| 
inside}} 
=}}  
true}}! %
;}}% &
continue~~  
;~~  !
case 
$char 
: 
inside
�� 
=
��  
false
��! &
;
��& '
continue
��  
;
��  !
}
�� 
if
�� 
(
�� 
!
�� 
inside
�� 
)
�� 
{
�� 
result
�� 
[
�� 
cursor
�� !
++
��! #
]
��# $
=
��% &
current
��' .
;
��. /
}
�� 
}
�� 
var
�� 
stringResult
�� 
=
�� 
new
�� "
string
��# )
(
��) *
result
��* 0
,
��0 1
$num
��2 3
,
��3 4
cursor
��5 ;
)
��; <
;
��< =
if
�� 
(
�� 

htmlDecode
�� 
)
�� 
{
�� 
stringResult
�� 
=
�� 

WebUtility
�� )
.
��) *

HtmlDecode
��* 4
(
��4 5
stringResult
��5 A
)
��A B
;
��B C
}
�� 
return
�� 
stringResult
�� 
;
��  
}
�� 	
public
�� 
static
�� 
string
�� !
ReplaceNewLinesWith
�� 0
(
��0 1
this
��1 5
string
��6 <
text
��= A
,
��A B
string
��C I
replacement
��J U
)
��U V
{
�� 	
return
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� ,
(
��, -
text
��- 1
)
��1 2
?
�� 
String
�� 
.
��  
Empty
��  %
:
�� 
text
�� 
.
�� 
Replace
�� %
(
��% &
$str
��& ,
,
��, -
$str
��. 4
)
��4 5
.
�� 
Replace
�� %
(
��% &
$str
��& *
,
��* +
String
��, 2
.
��2 3
Format
��3 9
(
��9 :
replacement
��: E
,
��E F
$str
��G M
)
��M N
)
��N O
.
�� 
Replace
�� %
(
��% &
$str
��& ,
,
��, -
String
��. 4
.
��4 5
Format
��5 ;
(
��; <
replacement
��< G
,
��G H
$str
��I O
)
��O P
)
��P Q
;
��Q R
}
�� 	
private
�� 
static
�� 
readonly
�� 
char
��  $
[
��$ %
]
��% &
validSegmentChars
��' 8
=
��9 :
$str
��; U
.
��U V
ToCharArray
��V a
(
��a b
)
��b c
;
��c d
public
�� 
static
�� 
bool
�� 
IsValidUrlSegment
�� ,
(
��, -
this
��- 1
string
��2 8
segment
��9 @
)
��@ A
{
�� 	
return
�� 
!
�� 
segment
�� 
.
�� 
Any
�� 
(
��  
validSegmentChars
��  1
)
��1 2
;
��2 3
}
�� 	
public
�� 
static
�� 
string
�� 

ToSafeName
�� '
(
��' (
this
��( ,
string
��- 3
name
��4 8
)
��8 9
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
name
��* .
)
��. /
)
��/ 0
return
�� 
string
�� 
.
�� 
Empty
�� #
;
��# $
name
�� 
=
�� 
RemoveDiacritics
�� #
(
��# $
name
��$ (
)
��( )
;
��) *
name
�� 
=
�� 
name
�� 
.
�� 
Strip
�� 
(
�� 
c
�� 
=>
��  "
!
�� 
c
�� 
.
�� 
IsLetter
�� 
(
�� 
)
�� 
&&
�� 
!
�� 
char
�� 
.
�� 
IsDigit
��  
(
��  !
c
��! "
)
��" #
)
�� 
;
�� 
name
�� 
=
�� 
name
�� 
.
�� 
Trim
�� 
(
�� 
)
�� 
;
�� 
while
�� 
(
�� 
name
�� 
.
�� 
Length
�� 
>
��  
$num
��! "
&&
��# %
!
��& '
IsLetter
��' /
(
��/ 0
name
��0 4
[
��4 5
$num
��5 6
]
��6 7
)
��7 8
)
��8 9
{
�� 
name
�� 
=
�� 
name
�� 
.
�� 
	Substring
�� %
(
��% &
$num
��& '
)
��' (
;
��( )
}
�� 
if
�� 
(
�� 
name
�� 
.
�� 
Length
�� 
>
�� 
$num
�� !
)
��! "
name
�� 
=
�� 
name
�� 
.
�� 
	Substring
�� %
(
��% &
$num
��& '
,
��' (
$num
��) ,
)
��, -
;
��- .
return
�� 
name
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
IsLetter
�� #
(
��# $
this
��$ (
char
��) -
c
��. /
)
��/ 0
{
�� 	
return
�� 
(
�� 
$char
�� 
<=
�� 
c
�� 
&&
�� 
c
��  !
<=
��" $
$char
��% (
)
��( )
||
��* ,
(
��- .
$char
��. 1
<=
��2 4
c
��5 6
&&
��7 9
c
��: ;
<=
��< >
$char
��? B
)
��B C
;
��C D
}
�� 	
public
�� 
static
�� 
bool
�� 
IsSpace
�� "
(
��" #
this
��# '
char
��( ,
c
��- .
)
��. /
{
�� 	
return
�� 
(
�� 
c
�� 
==
�� 
$char
�� 
||
��  
c
��! "
==
��# %
$char
��& *
||
��+ -
c
��. /
==
��0 2
$char
��3 7
||
��8 :
c
��; <
==
��= ?
$char
��@ D
||
��E G
c
��H I
==
��J L
$char
��M P
)
��P Q
;
��Q R
}
�� 	
public
�� 
static
�� 
string
�� 
RemoveDiacritics
�� -
(
��- .
this
��. 2
string
��3 9
name
��: >
)
��> ?
{
�� 	
string
�� 
stFormD
�� 
=
�� 
name
�� !
.
��! "
	Normalize
��" +
(
��+ ,
NormalizationForm
��, =
.
��= >
FormD
��> C
)
��C D
;
��D E
var
�� 
sb
�� 
=
�� 
new
�� 
StringBuilder
�� &
(
��& '
)
��' (
;
��( )
foreach
�� 
(
�� 
char
�� 
t
�� 
in
�� 
stFormD
�� &
)
��& '
{
�� 
UnicodeCategory
�� 
uc
��  "
=
��# $
CharUnicodeInfo
��% 4
.
��4 5 
GetUnicodeCategory
��5 G
(
��G H
t
��H I
)
��I J
;
��J K
if
�� 
(
�� 
uc
�� 
!=
�� 
UnicodeCategory
�� )
.
��) *
NonSpacingMark
��* 8
)
��8 9
{
�� 
sb
�� 
.
�� 
Append
�� 
(
�� 
t
�� 
)
��  
;
��  !
}
�� 
}
�� 
return
�� 
(
�� 
sb
�� 
.
�� 
ToString
�� 
(
��  
)
��  !
.
��! "
	Normalize
��" +
(
��+ ,
NormalizationForm
��, =
.
��= >
FormC
��> C
)
��C D
)
��D E
;
��E F
}
�� 	
public
�� 
static
�� 
string
�� 
Strip
�� "
(
��" #
this
��# '
string
��( .
subject
��/ 6
,
��6 7
params
��8 >
char
��? C
[
��C D
]
��D E
stripped
��F N
)
��N O
{
�� 	
if
�� 
(
�� 
stripped
�� 
==
�� 
null
��  
||
��! #
stripped
��$ ,
.
��, -
Length
��- 3
==
��4 6
$num
��7 8
||
��9 ;
string
��< B
.
��B C
IsNullOrEmpty
��C P
(
��P Q
subject
��Q X
)
��X Y
)
��Y Z
{
�� 
return
�� 
subject
�� 
;
�� 
}
�� 
var
�� 
result
�� 
=
�� 
new
�� 
char
�� !
[
��! "
subject
��" )
.
��) *
Length
��* 0
]
��0 1
;
��1 2
var
�� 
cursor
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
char
�� 
current
�� 
=
�� 
subject
�� &
[
��& '
i
��' (
]
��( )
;
��) *
if
�� 
(
�� 
Array
�� 
.
�� 
IndexOf
�� !
(
��! "
stripped
��" *
,
��* +
current
��, 3
)
��3 4
<
��5 6
$num
��7 8
)
��8 9
{
�� 
result
�� 
[
�� 
cursor
�� !
++
��! #
]
��# $
=
��% &
current
��' .
;
��. /
}
�� 
}
�� 
return
�� 
new
�� 
string
�� 
(
�� 
result
�� $
,
��$ %
$num
��& '
,
��' (
cursor
��) /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
static
�� 
string
�� 
Strip
�� "
(
��" #
this
��# '
string
��( .
subject
��/ 6
,
��6 7
Func
��8 <
<
��< =
char
��= A
,
��A B
bool
��C G
>
��G H
	predicate
��I R
)
��R S
{
�� 	
var
�� 
result
�� 
=
�� 
new
�� 
char
�� !
[
��! "
subject
��" )
.
��) *
Length
��* 0
]
��0 1
;
��1 2
var
�� 
cursor
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
char
�� 
current
�� 
=
�� 
subject
�� &
[
��& '
i
��' (
]
��( )
;
��) *
if
�� 
(
�� 
!
�� 
	predicate
�� 
(
�� 
current
�� &
)
��& '
)
��' (
{
�� 
result
�� 
[
�� 
cursor
�� !
++
��! #
]
��# $
=
��% &
current
��' .
;
��. /
}
�� 
}
�� 
return
�� 
new
�� 
string
�� 
(
�� 
result
�� $
,
��$ %
$num
��& '
,
��' (
cursor
��) /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
static
�� 
bool
�� 
Any
�� 
(
�� 
this
�� #
string
��$ *
subject
��+ 2
,
��2 3
params
��4 :
char
��; ?
[
��? @
]
��@ A
chars
��B G
)
��G H
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
||
��. 0
chars
��1 6
==
��7 9
null
��: >
||
��? A
chars
��B G
.
��G H
Length
��H N
==
��O Q
$num
��R S
)
��S T
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
char
�� 
current
�� 
=
�� 
subject
�� &
[
��& '
i
��' (
]
��( )
;
��) *
if
�� 
(
�� 
Array
�� 
.
�� 
IndexOf
�� !
(
��! "
chars
��" '
,
��' (
current
��) 0
)
��0 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
All
�� 
(
�� 
this
�� #
string
��$ *
subject
��+ 2
,
��2 3
params
��4 :
char
��; ?
[
��? @
]
��@ A
chars
��B G
)
��G H
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
)
��- .
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
chars
�� 
==
�� 
null
�� 
||
��  
chars
��! &
.
��& '
Length
��' -
==
��. 0
$num
��1 2
)
��2 3
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
char
�� 
current
�� 
=
�� 
subject
�� &
[
��& '
i
��' (
]
��( )
;
��) *
if
�� 
(
�� 
Array
�� 
.
�� 
IndexOf
�� !
(
��! "
chars
��" '
,
��' (
current
��) 0
)
��0 1
<
��2 3
$num
��4 5
)
��5 6
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
string
�� 
	Translate
�� &
(
��& '
this
��' +
string
��, 2
subject
��3 :
,
��: ;
char
��< @
[
��@ A
]
��A B
from
��C G
,
��G H
char
��I M
[
��M N
]
��N O
to
��P R
)
��R S
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
)
��- .
{
�� 
return
�� 
subject
�� 
;
�� 
}
�� 
if
�� 
(
�� 
from
�� 
==
�� 
null
�� 
||
�� 
to
��  "
==
��# %
null
��& *
)
��* +
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
if
�� 
(
�� 
from
�� 
.
�� 
Length
�� 
!=
�� 
to
�� !
.
��! "
Length
��" (
)
��( )
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
from
��7 ;
)
��; <
,
��< =
$str
��> d
)
��d e
;
��e f
}
�� 
var
�� 
map
�� 
=
�� 
new
�� 

Dictionary
�� $
<
��$ %
char
��% )
,
��) *
char
��+ /
>
��/ 0
(
��0 1
from
��1 5
.
��5 6
Length
��6 <
)
��< =
;
��= >
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
from
��  $
.
��$ %
Length
��% +
;
��+ ,
i
��- .
++
��. 0
)
��0 1
{
�� 
map
�� 
[
�� 
from
�� 
[
�� 
i
�� 
]
�� 
]
�� 
=
�� 
to
�� !
[
��! "
i
��" #
]
��# $
;
��$ %
}
�� 
var
�� 
result
�� 
=
�� 
new
�� 
char
�� !
[
��! "
subject
��" )
.
��) *
Length
��* 0
]
��0 1
;
��1 2
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
current
�� 
=
�� 
subject
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
map
�� 
.
�� 
ContainsKey
�� #
(
��# $
current
��$ +
)
��+ ,
)
��, -
{
�� 
result
�� 
[
�� 
i
�� 
]
�� 
=
�� 
map
��  #
[
��# $
current
��$ +
]
��+ ,
;
��, -
}
�� 
else
�� 
{
�� 
result
�� 
[
�� 
i
�� 
]
�� 
=
�� 
current
��  '
;
��' (
}
�� 
}
�� 
return
�� 
new
�� 
string
�� 
(
�� 
result
�� $
)
��$ %
;
��% &
}
�� 	
public
�� 
static
�� 
string
�� 

ReplaceAll
�� '
(
��' (
this
��( ,
string
��- 3
original
��4 <
,
��< =
IDictionary
��> I
<
��I J
string
��J P
,
��P Q
string
��R X
>
��X Y
replacements
��Z f
)
��f g
{
�� 	
var
�� 
pattern
�� 
=
�� 
$"
�� 
{
�� 
string
�� #
.
��# $
Join
��$ (
(
��( )
$str
��) ,
,
��, -
replacements
��. :
.
��: ;
Keys
��; ?
)
��? @
}
��@ A
"
��A B
;
��B C
return
�� 
Regex
�� 
.
�� 
Replace
��  
(
��  !
original
��! )
,
��) *
pattern
��+ 2
,
��2 3
match
��4 9
=>
��: <
replacements
��= I
[
��I J
match
��J O
.
��O P
Value
��P U
]
��U V
)
��V W
;
��W X
}
�� 	
public
�� 
static
�� 
string
�� 
TrimEnd
�� $
(
��$ %
this
��% )
string
��* 0
rough
��1 6
,
��6 7
string
��8 >
trim
��? C
=
��D E
$str
��F H
)
��H I
{
�� 	
if
�� 
(
�� 
rough
�� 
==
�� 
null
�� 
)
�� 
return
�� 
null
�� 
;
�� 
return
�� 
rough
�� 
.
�� 
EndsWith
�� !
(
��! "
trim
��" &
,
��& '
StringComparison
��( 8
.
��8 9
Ordinal
��9 @
)
��@ A
?
�� 
rough
�� 
.
�� 
	Substring
�� (
(
��( )
$num
��) *
,
��* +
rough
��, 1
.
��1 2
Length
��2 8
-
��9 :
trim
��; ?
.
��? @
Length
��@ F
)
��F G
:
�� 
rough
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
string
�� #
ReplaceLastOccurrence
�� 2
(
��2 3
this
��3 7
string
��8 >
source
��? E
,
��E F
string
��G M
find
��N R
,
��R S
string
��T Z
replace
��[ b
)
��b c
{
�� 	
int
�� 
place
�� 
=
�� 
source
�� 
.
�� 
LastIndexOf
�� *
(
��* +
find
��+ /
,
��/ 0
StringComparison
��1 A
.
��A B
Ordinal
��B I
)
��I J
;
��J K
return
�� 
source
�� 
.
�� 
Remove
��  
(
��  !
place
��! &
,
��& '
find
��( ,
.
��, -
Length
��- 3
)
��3 4
.
��4 5
Insert
��5 ;
(
��; <
place
��< A
,
��A B
replace
��C J
)
��J K
;
��K L
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Workflows\ContentEventConstants.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
	Workflows( 1
{ 
public 

static 
class !
ContentEventConstants -
{ 
public 
const 
string 
ContentItemInputKey /
=0 1
$str2 ?
;? @
public 
const 
string  
ContentEventInputKey 0
=1 2
$str3 A
;A B
public 
const 
string 
UserActionInputKey .
=/ 0
$str1 =
;= >
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.Abstractions\Workflows\ContentEventContext.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
	Workflows( 1
{ 
public 

class 
ContentEventContext $
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
IsStart 
{ 
get !
;! "
set# &
;& '
}( )
}		 
}

 