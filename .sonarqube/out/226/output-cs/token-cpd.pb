�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.TagHelpers\ContentItemTagHelper.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

TagHelpers )
{ 
[ 
HtmlTargetElement 
( 
$str $
)$ %
]% &
public 

class  
ContentItemTagHelper %
:& '
BaseShapeTagHelper( :
{		 
public

  
ContentItemTagHelper

 #
(

# $
IShapeFactory

$ 1
shapeFactory

2 >
,

> ?
IDisplayHelper

@ N
displayHelper

O \
)

\ ]
: 
base 
( 
shapeFactory 
,  
displayHelper! .
). /
{ 	
Type 
= 
$str  
;  !
} 	
} 
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.TagHelpers\ContentLinkTagHelper.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

TagHelpers )
{ 
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes &
=' (
ContentLinkAdmin) 9
)9 :
]: ;
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes &
=' (
ContentLinkDisplay) ;
); <
]< =
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes &
=' (
ContentLinkEdit) 8
)8 9
]9 :
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes &
=' (
ContentLinkRemove) :
): ;
]; <
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes &
=' (
ContentLinkCreate) :
): ;
]; <
public 

class  
ContentLinkTagHelper %
:& '
	TagHelper( 1
{ 
private 
const 
string 
ContentLinkAdmin -
=. /
$str0 ;
;; <
private 
const 
string 
ContentLinkDisplay /
=0 1
$str2 ?
;? @
private 
const 
string 
ContentLinkEdit ,
=- .
$str/ 9
;9 :
private 
const 
string 
ContentLinkRemove .
=/ 0
$str1 =
;= >
private 
const 
string 
ContentLinkCreate .
=/ 0
$str1 =
;= >
private 
const 
string 
RoutePrefix (
=) *
$str+ 7
;7 8
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IUrlHelperFactory *
_urlHelperFactory+ <
;< =
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public    
ContentLinkTagHelper   #
(  # $
IContentManager!! 
contentManager!! *
,!!* +
IUrlHelperFactory"" 
urlHelperFactory"" .
,"". /%
IContentDefinitionManager## %$
contentDefinitionManager##& >
)##> ?
{$$ 	%
_contentDefinitionManager%% %
=%%& '$
contentDefinitionManager%%( @
;%%@ A
_urlHelperFactory&& 
=&& 
urlHelperFactory&&  0
;&&0 1
_contentManager'' 
='' 
contentManager'' ,
;'', -
}(( 	
[** 	
ViewContext**	 
]** 
[++ 	!
HtmlAttributeNotBound++	 
]++ 
public,, 
ViewContext,, 
ViewContext,, &
{,,' (
get,,) ,
;,,, -
set,,. 1
;,,1 2
},,3 4
[11 	
HtmlAttributeName11	 
(11 
ContentLinkAdmin11 +
)11+ ,
]11, -
public22 
ContentItem22 
AdminFor22 #
{22$ %
get22& )
;22) *
set22+ .
;22. /
}220 1
[77 	
HtmlAttributeName77	 
(77 
ContentLinkDisplay77 -
)77- .
]77. /
public88 
ContentItem88 

DisplayFor88 %
{88& '
get88( +
;88+ ,
set88- 0
;880 1
}882 3
[== 	
HtmlAttributeName==	 
(== 
ContentLinkEdit== *
)==* +
]==+ ,
public>> 
ContentItem>> 
EditFor>> "
{>># $
get>>% (
;>>( )
set>>* -
;>>- .
}>>/ 0
[CC 	
HtmlAttributeNameCC	 
(CC 
ContentLinkRemoveCC ,
)CC, -
]CC- .
publicDD 
ContentItemDD 
	RemoveForDD $
{DD% &
getDD' *
;DD* +
setDD, /
;DD/ 0
}DD1 2
[II 	
HtmlAttributeNameII	 
(II 
ContentLinkCreateII ,
)II, -
]II- .
publicJJ 
ContentItemJJ 
	CreateForJJ $
{JJ% &
getJJ' *
;JJ* +
setJJ, /
;JJ/ 0
}JJ1 2
publicLL 
overrideLL 
asyncLL 
TaskLL "
ProcessAsyncLL# /
(LL/ 0
TagHelperContextLL0 @
tagHelperContextLLA Q
,LLQ R
TagHelperOutputLLS b
outputLLc i
)LLi j
{MM 	
ContentItemMetadataNN 
metadataNN  (
=NN) *
nullNN+ /
;NN/ 0
ContentItemOO 
contentItemOO #
=OO$ %
nullOO& *
;OO* +
varQQ 
	urlHelperQQ 
=QQ 
_urlHelperFactoryQQ -
.QQ- .
GetUrlHelperQQ. :
(QQ: ;
ViewContextQQ; F
)QQF G
;QQG H
ifSS 
(SS 

DisplayForSS 
!=SS 
nullSS "
)SS" #
{TT 
contentItemUU 
=UU 

DisplayForUU (
;UU( )
varVV 
previewAspectVV !
=VV" #
awaitVV$ )
_contentManagerVV* 9
.VV9 :
PopulateAspectAsyncVV: M
<VVM N
PreviewAspectVVN [
>VV[ \
(VV\ ]
contentItemVV] h
)VVh i
;VVi j
ifXX 
(XX 
!XX 
stringXX 
.XX 
IsNullOrEmptyXX )
(XX) *
previewAspectXX* 7
.XX7 8

PreviewUrlXX8 B
)XXB C
)XXC D
{YY 
varZZ 

previewUrlZZ "
=ZZ# $
previewAspectZZ% 2
.ZZ2 3

PreviewUrlZZ3 =
;ZZ= >
if[[ 
([[ 
![[ 

previewUrl[[ #
.[[# $

StartsWith[[$ .
([[. /
$str[[/ 3
,[[3 4
StringComparison[[5 E
.[[E F
OrdinalIgnoreCase[[F W
)[[W X
)[[X Y
{\\ 
if]] 
(]] 

previewUrl]] &
.]]& '

StartsWith]]' 1
(]]1 2
$char]]2 5
)]]5 6
)]]6 7
{^^ 

previewUrl__ &
=__' (
$char__) ,
+__- .

previewUrl__/ 9
;__9 :
}`` 
elseaa 
{bb 

previewUrlcc &
=cc' (
$strcc) -
+cc. /

previewUrlcc0 :
;cc: ;
}dd 
}ee 
outputgg 
.gg 

Attributesgg %
.gg% &
SetAttributegg& 2
(gg2 3
$strgg3 9
,gg9 :
	urlHelpergg; D
.ggD E
ContentggE L
(ggL M

previewUrlggM W
)ggW X
)ggX Y
;ggY Z
returnhh 
;hh 
}ii 
metadatakk 
=kk 
awaitkk  
_contentManagerkk! 0
.kk0 1
PopulateAspectAsynckk1 D
<kkD E
ContentItemMetadatakkE X
>kkX Y
(kkY Z

DisplayForkkZ d
)kkd e
;kke f
ifmm 
(mm 
metadatamm 
.mm 
DisplayRouteValuesmm /
==mm0 2
nullmm3 7
)mm7 8
{nn 
returnoo 
;oo 
}pp 
ApplyRouteValuesrr  
(rr  !
tagHelperContextrr! 1
,rr1 2
metadatarr3 ;
.rr; <
DisplayRouteValuesrr< N
)rrN O
;rrO P
outputtt 
.tt 

Attributestt !
.tt! "
SetAttributett" .
(tt. /
$strtt/ 5
,tt5 6
	urlHelpertt7 @
.tt@ A
ActionttA G
(ttG H
metadatattH P
.ttP Q
DisplayRouteValuesttQ c
[ttc d
$strttd l
]ttl m
.ttm n
ToStringttn v
(ttv w
)ttw x
,ttx y
metadata	ttz �
.
tt� � 
DisplayRouteValues
tt� �
)
tt� �
)
tt� �
;
tt� �
}uu 
elsevv 
ifvv 
(vv 
EditForvv 
!=vv 
nullvv  $
)vv$ %
{ww 
contentItemxx 
=xx 
EditForxx %
;xx% &
metadatayy 
=yy 
awaityy  
_contentManageryy! 0
.yy0 1
PopulateAspectAsyncyy1 D
<yyD E
ContentItemMetadatayyE X
>yyX Y
(yyY Z
EditForyyZ a
)yya b
;yyb c
if{{ 
({{ 
metadata{{ 
.{{ 
EditorRouteValues{{ .
=={{/ 1
null{{2 6
){{6 7
{|| 
return}} 
;}} 
}~~ 
ApplyRouteValues
��  
(
��  !
tagHelperContext
��! 1
,
��1 2
metadata
��3 ;
.
��; <
EditorRouteValues
��< M
)
��M N
;
��N O
output
�� 
.
�� 

Attributes
�� !
.
��! "
SetAttribute
��" .
(
��. /
$str
��/ 5
,
��5 6
	urlHelper
��7 @
.
��@ A
Action
��A G
(
��G H
metadata
��H P
.
��P Q
EditorRouteValues
��Q b
[
��b c
$str
��c k
]
��k l
.
��l m
ToString
��m u
(
��u v
)
��v w
,
��w x
metadata��y �
.��� �!
EditorRouteValues��� �
)��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
AdminFor
�� 
!=
��  
null
��! %
)
��% &
{
�� 
contentItem
�� 
=
�� 
AdminFor
�� &
;
��& '
metadata
�� 
=
�� 
await
��  
_contentManager
��! 0
.
��0 1!
PopulateAspectAsync
��1 D
<
��D E!
ContentItemMetadata
��E X
>
��X Y
(
��Y Z
AdminFor
��Z b
)
��b c
;
��c d
if
�� 
(
�� 
metadata
�� 
.
�� 
AdminRouteValues
�� -
==
��. 0
null
��1 5
)
��5 6
{
�� 
return
�� 
;
�� 
}
�� 
ApplyRouteValues
��  
(
��  !
tagHelperContext
��! 1
,
��1 2
metadata
��3 ;
.
��; <
AdminRouteValues
��< L
)
��L M
;
��M N
output
�� 
.
�� 

Attributes
�� !
.
��! "
SetAttribute
��" .
(
��. /
$str
��/ 5
,
��5 6
	urlHelper
��7 @
.
��@ A
Action
��A G
(
��G H
metadata
��H P
.
��P Q
AdminRouteValues
��Q a
[
��a b
$str
��b j
]
��j k
.
��k l
ToString
��l t
(
��t u
)
��u v
,
��v w
metadata��x �
.��� � 
AdminRouteValues��� �
)��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
	RemoveFor
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
contentItem
�� 
=
�� 
	RemoveFor
�� '
;
��' (
metadata
�� 
=
�� 
await
��  
_contentManager
��! 0
.
��0 1!
PopulateAspectAsync
��1 D
<
��D E!
ContentItemMetadata
��E X
>
��X Y
(
��Y Z
	RemoveFor
��Z c
)
��c d
;
��d e
if
�� 
(
�� 
metadata
�� 
.
�� 
RemoveRouteValues
�� .
==
��/ 1
null
��2 6
)
��6 7
{
�� 
return
�� 
;
�� 
}
�� 
ApplyRouteValues
��  
(
��  !
tagHelperContext
��! 1
,
��1 2
metadata
��3 ;
.
��; <
RemoveRouteValues
��< M
)
��M N
;
��N O
output
�� 
.
�� 

Attributes
�� !
.
��! "
SetAttribute
��" .
(
��. /
$str
��/ 5
,
��5 6
	urlHelper
��7 @
.
��@ A
Action
��A G
(
��G H
metadata
��H P
.
��P Q
RemoveRouteValues
��Q b
[
��b c
$str
��c k
]
��k l
.
��l m
ToString
��m u
(
��u v
)
��v w
,
��w x
metadata��y �
.��� �!
RemoveRouteValues��� �
)��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
	CreateFor
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
contentItem
�� 
=
�� 
	CreateFor
�� '
;
��' (
metadata
�� 
=
�� 
await
��  
_contentManager
��! 0
.
��0 1!
PopulateAspectAsync
��1 D
<
��D E!
ContentItemMetadata
��E X
>
��X Y
(
��Y Z
	CreateFor
��Z c
)
��c d
;
��d e
if
�� 
(
�� 
metadata
�� 
.
�� 
CreateRouteValues
�� .
==
��/ 1
null
��2 6
)
��6 7
{
�� 
return
�� 
;
�� 
}
�� 
ApplyRouteValues
��  
(
��  !
tagHelperContext
��! 1
,
��1 2
metadata
��3 ;
.
��; <
CreateRouteValues
��< M
)
��M N
;
��N O
output
�� 
.
�� 

Attributes
�� !
.
��! "
SetAttribute
��" .
(
��. /
$str
��/ 5
,
��5 6
	urlHelper
��7 @
.
��@ A
Action
��A G
(
��G H
metadata
��H P
.
��P Q
CreateRouteValues
��Q b
[
��b c
$str
��c k
]
��k l
.
��l m
ToString
��m u
(
��u v
)
��v w
,
��w x
metadata��y �
.��� �!
CreateRouteValues��� �
)��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
output
�� 
.
�� 
TagMode
�� 
==
�� !
TagMode
��" )
.
��) *
SelfClosing
��* 5
&&
��6 8
metadata
��9 A
!=
��B D
null
��E I
)
��I J
{
�� 
output
�� 
.
�� 
TagMode
�� 
=
��  
TagMode
��! (
.
��( )
StartTagAndEndTag
��) :
;
��: ;
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
contentItem
��* 5
.
��5 6
DisplayText
��6 A
)
��A B
)
��B C
{
�� 
output
�� 
.
�� 
Content
�� "
.
��" #
Append
��# )
(
��) *
contentItem
��* 5
.
��5 6
DisplayText
��6 A
)
��A B
;
��B C
}
�� 
else
�� 
{
�� 
var
�� 
typeDefinition
�� &
=
��' ('
_contentDefinitionManager
��) B
.
��B C
GetTypeDefinition
��C T
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
��m n
output
�� 
.
�� 
Content
�� "
.
��" #
Append
��# )
(
��) *
typeDefinition
��* 8
.
��8 9
ToString
��9 A
(
��A B
)
��B C
)
��C D
;
��D E
}
�� 
}
�� 
return
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
ApplyRouteValues
�� %
(
��% &
TagHelperContext
��& 6
tagHelperContext
��7 G
,
��G H"
RouteValueDictionary
��I ]
route
��^ c
)
��c d
{
�� 	
foreach
�� 
(
�� 
var
�� 
	attribute
�� "
in
��# %
tagHelperContext
��& 6
.
��6 7
AllAttributes
��7 D
)
��D E
{
�� 
if
�� 
(
�� 
	attribute
�� 
.
�� 
Name
�� "
.
��" #

StartsWith
��# -
(
��- .
RoutePrefix
��. 9
,
��9 :
System
��; A
.
��A B
StringComparison
��B R
.
��R S
OrdinalIgnoreCase
��S d
)
��d e
)
��e f
{
�� 
route
�� 
.
�� 
Add
�� 
(
�� 
	attribute
�� '
.
��' (
Name
��( ,
.
��, -
	Substring
��- 6
(
��6 7
RoutePrefix
��7 B
.
��B C
Length
��C I
)
��I J
,
��J K
	attribute
��L U
.
��U V
Value
��V [
)
��[ \
;
��\ ]
}
�� 
}
�� 
}
�� 	
}
�� 
}�� 