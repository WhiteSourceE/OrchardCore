ñ
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\ContentPartDefinitionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

abstract 
class .
"ContentPartDefinitionDisplayDriver <
:= >
DisplayDriver? L
<L M!
ContentPartDefinitionM b
,b c
BuildDisplayContextd w
,w x
BuildEditorContext	y ã
,
ã å%
UpdatePartEditorContext
ç §
>
§ •
,
• ¶1
#IContentPartDefinitionDisplayDriver
ß  
{ 
public 
override 
bool 
CanHandleModel +
(+ ,!
ContentPartDefinition, A
modelB G
)G H
{		 	
return

 
true

 
;

 
} 	
} 
} ˝
∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\ContentPartFieldDefinitionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

abstract 
class 3
'ContentPartFieldDefinitionDisplayDriver A
:B C
DisplayDriverD Q
<Q R&
ContentPartFieldDefinitionR l
,l m 
BuildDisplayContext	n Å
,
Å Ç 
BuildEditorContext
É ï
,
ï ñ*
UpdatePartFieldEditorContext
ó ≥
>
≥ ¥
,
¥ µ6
(IContentPartFieldDefinitionDisplayDriver
∂ ﬁ
{ 
	protected 
override 
void 
BuildPrefix  +
(+ ,&
ContentPartFieldDefinition, F
modelG L
,L M
stringN T
htmlFieldPrefixU d
)d e
{ 	
Prefix 
= 
$" 
{ 
model 
. 
PartDefinition ,
., -
Name- 1
}1 2
.2 3
{3 4
model4 9
.9 :
Name: >
}> ?
"? @
;@ A
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
htmlFieldPrefix& 5
)5 6
)6 7
{ 
Prefix 
= 
htmlFieldPrefix (
+) *
$str+ .
+/ 0
Prefix1 7
;7 8
} 
Prefix 
+= 
$str 
+ 
GetType #
(# $
)$ %
.% &
Name& *
;* +
} 	
public 
override 
bool 
CanHandleModel +
(+ ,&
ContentPartFieldDefinition, F
modelG L
)L M
{ 	
return 
true 
; 
} 	
} 
public%% 

abstract%% 
class%% 3
'ContentPartFieldDefinitionDisplayDriver%% A
<%%A B
TField%%B H
>%%H I
:%%J K3
'ContentPartFieldDefinitionDisplayDriver%%L s
where%%t y
TField	%%z Ä
:
%%Å Ç
ContentField
%%É è
{&& 
public'' 
override'' 
bool'' 
CanHandleModel'' +
(''+ ,&
ContentPartFieldDefinition'', F
model''G L
)''L M
{(( 	
return)) 
string)) 
.)) 
Equals))  
())  !
typeof))! '
())' (
TField))( .
))). /
.))/ 0
Name))0 4
,))4 5
model))6 ;
.)); <
FieldDefinition))< K
.))K L
Name))L P
)))P Q
;))Q R
}** 	
}++ 
},, ñ
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\ContentTypeDefinitionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

abstract 
class .
"ContentTypeDefinitionDisplayDriver <
:= >
DisplayDriver? L
<L M!
ContentTypeDefinitionM b
,b c
BuildDisplayContextd w
,w x
BuildEditorContext	y ã
,
ã å%
UpdateTypeEditorContext
ç §
>
§ •
,
• ¶1
#IContentTypeDefinitionDisplayDriver
ß  
{ 
public 
override 
bool 
CanHandleModel +
(+ ,!
ContentTypeDefinition, A
modelB G
)G H
{		 	
return

 
true

 
;

 
} 	
} 
} ´
ØD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\ContentTypePartDefinitionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

abstract 
class 2
&ContentTypePartDefinitionDisplayDriver @
:A B
DisplayDriverC P
<P Q%
ContentTypePartDefinitionQ j
,j k
BuildDisplayContextl 
,	 Ä 
BuildEditorContext
Å ì
,
ì î)
UpdateTypePartEditorContext
ï ∞
>
∞ ±
,
± ≤5
'IContentTypePartDefinitionDisplayDriver
≥ ⁄
{ 
	protected		 
override		 
void		 
BuildPrefix		  +
(		+ ,%
ContentTypePartDefinition		, E
model		F K
,		K L
string		M S
htmlFielPrefix		T b
)		b c
{

 	
Prefix 
= 
$" 
{ 
model 
. !
ContentTypeDefinition 3
.3 4
Name4 8
}8 9
.9 :
{: ;
model; @
.@ A
PartDefinitionA O
.O P
NameP T
}T U
"U V
;V W
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
htmlFielPrefix& 4
)4 5
)5 6
{ 
Prefix 
= 
htmlFielPrefix '
+( )
$str* -
+. /
Prefix0 6
;6 7
} 
Prefix 
+= 
$str 
+ 
GetType #
(# $
)$ %
.% &
Name& *
;* +
} 	
public 
override 
bool 
CanHandleModel +
(+ ,%
ContentTypePartDefinition, E
modelF K
)K L
{ 	
return 
true 
; 
} 	
} 
} ˝
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\IContentDefinitionDisplayHandler.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

	interface ,
 IContentDefinitionDisplayHandler 5
{ 
Task		  
BuildTypeEditorAsync		 !
(		! "!
ContentTypeDefinition		" 7

definition		8 B
,		B C
BuildEditorContext		D V
context		W ^
)		^ _
;		_ `
Task

 !
UpdateTypeEditorAsync

 "
(

" #!
ContentTypeDefinition

# 8

definition

9 C
,

C D#
UpdateTypeEditorContext

E \
context

] d
)

d e
;

e f
Task $
BuildTypePartEditorAsync %
(% &%
ContentTypePartDefinition& ?

definition@ J
,J K
BuildEditorContextL ^
context_ f
)f g
;g h
Task %
UpdateTypePartEditorAsync &
(& '%
ContentTypePartDefinition' @

definitionA K
,K L'
UpdateTypePartEditorContextM h
contexti p
)p q
;q r
Task  
BuildPartEditorAsync !
(! "!
ContentPartDefinition" 7

definition8 B
,B C
BuildEditorContextD V
contextW ^
)^ _
;_ `
Task !
UpdatePartEditorAsync "
(" #!
ContentPartDefinition# 8

definition9 C
,C D#
UpdatePartEditorContextE \
context] d
)d e
;e f
Task %
BuildPartFieldEditorAsync &
(& '&
ContentPartFieldDefinition' A

definitionB L
,L M
BuildEditorContextN `
contexta h
)h i
;i j
Task &
UpdatePartFieldEditorAsync '
(' (&
ContentPartFieldDefinition( B

definitionC M
,M N(
UpdatePartFieldEditorContextO k
contextl s
)s t
;t u
} 
} û
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\IContentDefinitionDisplayManager.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

	interface ,
 IContentDefinitionDisplayManager 5
{ 
Task		 
<		 
dynamic		 
>		  
BuildTypeEditorAsync		 *
(		* +!
ContentTypeDefinition		+ @

definition		A K
,		K L
IUpdateModel		M Y
updater		Z a
,		a b
string		c i
groupId		j q
=		r s
$str		t v
)		v w
;		w x
Task

 
<

 
dynamic

 
>

 !
UpdateTypeEditorAsync

 +
(

+ ,!
ContentTypeDefinition

, A

definition

B L
,

L M
IUpdateModel

N Z
updater

[ b
,

b c
string

d j
groupId

k r
=

s t
$str

u w
)

w x
;

x y
Task 
< 
dynamic 
>  
BuildPartEditorAsync *
(* +!
ContentPartDefinition+ @

definitionA K
,K L
IUpdateModelM Y
updaterZ a
,a b
stringc i
groupIdj q
=r s
$strt v
)v w
;w x
Task 
< 
dynamic 
> !
UpdatePartEditorAsync +
(+ ,!
ContentPartDefinition, A

definitionB L
,L M
IUpdateModelN Z
updater[ b
,b c
stringd j
groupIdk r
=s t
$stru w
)w x
;x y
Task 
< 
dynamic 
> $
BuildTypePartEditorAsync .
(. /%
ContentTypePartDefinition/ H

definitionI S
,S T
IUpdateModelU a
updaterb i
,i j
stringk q
groupIdr y
=z {
$str| ~
)~ 
;	 Ä
Task 
< 
dynamic 
> %
UpdateTypePartEditorAsync /
(/ 0%
ContentTypePartDefinition0 I

definitionJ T
,T U
IUpdateModelV b
updaterc j
,j k
stringl r
groupIds z
={ |
$str} 
)	 Ä
;
Ä Å
Task 
< 
dynamic 
> %
BuildPartFieldEditorAsync /
(/ 0&
ContentPartFieldDefinition0 J

definitionK U
,U V
IUpdateModelW c
updaterd k
,k l
stringm s
groupIdt {
=| }
$str	~ Ä
)
Ä Å
;
Å Ç
Task 
< 
dynamic 
> &
UpdatePartFieldEditorAsync 0
(0 1&
ContentPartFieldDefinition1 K

definitionL V
,V W
IUpdateModelX d
updatere l
,l m
stringn t
groupIdu |
=} ~
$str	 Å
)
Å Ç
;
Ç É
} 
} ƒ
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\IContentPartDefinitionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

	interface /
#IContentPartDefinitionDisplayDriver 8
:9 :
IDisplayDriver; I
<I J!
ContentPartDefinitionJ _
,_ `
BuildDisplayContexta t
,t u
BuildEditorContext	v à
,
à â%
UpdatePartEditorContext
ä °
>
° ¢
{ 
} 
}		 Ÿ
±D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\IContentPartFieldDefinitionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

	interface 4
(IContentPartFieldDefinitionDisplayDriver =
:> ?
IDisplayDriver@ N
<N O&
ContentPartFieldDefinitionO i
,i j
BuildDisplayContextk ~
,~  
BuildEditorContext
Ä í
,
í ì*
UpdatePartFieldEditorContext
î ∞
>
∞ ±
{ 
} 
}		 ƒ
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\IContentTypeDefinitionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

	interface /
#IContentTypeDefinitionDisplayDriver 8
:9 :
IDisplayDriver; I
<I J!
ContentTypeDefinitionJ _
,_ `
BuildDisplayContexta t
,t u
BuildEditorContext	v à
,
à â%
UpdateTypeEditorContext
ä °
>
° ¢
{ 
} 
}		 ‘
∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\IContentTypePartDefinitionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

	interface 3
'IContentTypePartDefinitionDisplayDriver <
:= >
IDisplayDriver? M
<M N%
ContentTypePartDefinitionN g
,g h
BuildDisplayContexti |
,| }
BuildEditorContext	~ ê
,
ê ë)
UpdateTypePartEditorContext
í ≠
>
≠ Æ
{ 
} 
}		 À
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\UpdateContentDefinitionEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

class 0
$UpdateContentDefinitionEditorContext 5
<5 6
TBuilder6 >
>> ?
:@ A
UpdateEditorContextB U
{ 
public		 0
$UpdateContentDefinitionEditorContext		 3
(		3 4
TBuilder

 
builder

 
,

 
IShape 
model 
, 
string 
groupId 
, 
bool 
isNew 
, 
IShapeFactory 
shapeFactory &
,& '
IShape 
layout 
, 
IUpdateModel 
updater  
)  !
: 
base 
( 
model 
, 
groupId !
,! "
isNew# (
,( )
$str* ,
,, -
shapeFactory. :
,: ;
layout< B
,B C
updaterD K
)K L
{ 	
Builder 
= 
builder 
; 
} 	
public 
TBuilder 
Builder 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
} 
} Ê

†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\UpdatePartEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

class #
UpdatePartEditorContext (
:) *0
$UpdateContentDefinitionEditorContext+ O
<O P(
ContentPartDefinitionBuilderP l
>l m
{ 
public		 #
UpdatePartEditorContext		 &
(		& '(
ContentPartDefinitionBuilder

 ,
builder

- 4
,

4 5
IShape 
model 
, 
string 
groupId 
, 
bool 
isNew 
, 
IShapeFactory 
shapeFactory *
,* +
IShape 
layout 
, 
IUpdateModel 
updater $
)$ %
: 
base 
( 
builder 
, 
model !
,! "
groupId# *
,* +
isNew, 1
,1 2
shapeFactory3 ?
,? @
layoutA G
,G H
updaterI P
)P Q
{ 	
} 	
} 
} ˇ

•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\UpdatePartFieldEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

class (
UpdatePartFieldEditorContext -
:. /0
$UpdateContentDefinitionEditorContext0 T
<T U-
!ContentPartFieldDefinitionBuilderU v
>v w
{ 
public		 (
UpdatePartFieldEditorContext		 +
(		+ ,-
!ContentPartFieldDefinitionBuilder

 1
builder

2 9
,

9 :
IShape 
model 
, 
string 
groupId 
, 
bool 
isNew 
, 
IShapeFactory 
shapeFactory *
,* +
IShape 
layout 
, 
IUpdateModel 
updater $
)$ %
: 
base 
( 
builder 
, 
model !
,! "
groupId# *
,* +
isNew, 1
,1 2
shapeFactory3 ?
,? @
layoutA G
,G H
updaterI P
)P Q
{ 	
} 	
} 
} Ê

†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\UpdateTypeEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

class #
UpdateTypeEditorContext (
:) *0
$UpdateContentDefinitionEditorContext+ O
<O P(
ContentTypeDefinitionBuilderP l
>l m
{ 
public		 #
UpdateTypeEditorContext		 &
(		& '(
ContentTypeDefinitionBuilder

 ,
builder

- 4
,

4 5
IShape 
model 
, 
string 
groupId 
, 
bool 
isNew 
, 
IShapeFactory 
shapeFactory *
,* +
IShape 
layout 
, 
IUpdateModel 
updater $
)$ %
: 
base 
( 
builder 
, 
model !
,! "
groupId# *
,* +
isNew, 1
,1 2
shapeFactory3 ?
,? @
layoutA G
,G H
updaterI P
)P Q
{ 	
} 	
} 
} ˙

§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Editors\UpdateTypePartEditorContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Editors# *
{ 
public 

class '
UpdateTypePartEditorContext ,
:- .0
$UpdateContentDefinitionEditorContext/ S
<S T,
 ContentTypePartDefinitionBuilderT t
>t u
{ 
public		 '
UpdateTypePartEditorContext		 *
(		* +,
 ContentTypePartDefinitionBuilder

 0
builder

1 8
,

8 9
IShape 
model 
, 
string 
groupId 
, 
bool 
isNew 
, 
IShapeFactory 
shapeFactory *
,* +
IShape 
layout 
, 
IUpdateModel 
updater $
)$ %
: 
base 
( 
builder 
, 
model !
,! "
groupId# *
,* +
isNew, 1
,1 2
shapeFactory3 ?
,? @
layoutA G
,G H
updaterI P
)P Q
{ 	
} 	
} 
} Ø
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentFieldAttachedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class '
ContentFieldAttachedContext ,
:- .#
ContentPartFieldContext/ F
{ 
public 
string  
ContentFieldTypeName *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string #
ContentFieldDisplayName -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} ‹
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentFieldDetachedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class '
ContentFieldDetachedContext ,
:- .#
ContentPartFieldContext/ F
{G H
}I J
} Ÿ
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentPartAttachedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class &
ContentPartAttachedContext +
:, -"
ContentTypePartContext. D
{E F
}G H
} Œ
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentPartContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class 
ContentPartContext #
{ 
public !
ContentPartDefinition $!
ContentPartDefinition% :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
}		 ”
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentPartCreatedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class %
ContentPartCreatedContext *
:+ ,
ContentPartContext- ?
{@ A
}B C
} Ÿ
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentPartDetachedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class &
ContentPartDetachedContext +
:, -"
ContentTypePartContext. D
{E F
}G H
} Á
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentPartFieldContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class #
ContentPartFieldContext (
{ 
public 
string 
ContentPartName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
ContentFieldName &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ’
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentPartImportedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class &
ContentPartImportedContext +
:, -
ContentPartContext. @
{A B
}C D
} ˙
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentPartImportingContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class '
ContentPartImportingContext ,
:- .
ContentPartContext/ A
{ 
public 
string 
ContentPartName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ”
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentPartRemovedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class %
ContentPartRemovedContext *
:+ ,
ContentPartContext- ?
{@ A
}B C
} Œ
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentTypeContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class 
ContentTypeContext #
{ 
public !
ContentTypeDefinition $!
ContentTypeDefinition% :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
}		 ”
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentTypeCreatedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class %
ContentTypeCreatedContext *
:+ ,
ContentTypeContext- ?
{@ A
}B C
} ’
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentTypeImportedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class &
ContentTypeImportedContext +
:, -
ContentTypeContext. @
{A B
}C D
} ˙
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentTypeImportingContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class '
ContentTypeImportingContext ,
:- .
ContentTypeContext/ A
{ 
public 
string 
ContentTypeName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ‰
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentTypePartContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class "
ContentTypePartContext '
{ 
public 
string 
ContentTypeName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
ContentPartName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ”
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\ContentTypeRemovedContext.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

class %
ContentTypeRemovedContext *
:+ ,
ContentTypeContext- ?
{@ A
}B C
} é
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Events\IContentDefinitionEventHandler.cs
	namespace 	
OrchardCore
 
. 
ContentTypes "
." #
Events# )
{ 
public 

	interface *
IContentDefinitionEventHandler 3
{ 
void 
ContentTypeCreated 
(  %
ContentTypeCreatedContext  9
context: A
)A B
;B C
void 
ContentTypeRemoved 
(  %
ContentTypeRemovedContext  9
context: A
)A B
;B C
void  
ContentTypeImporting !
(! "'
ContentTypeImportingContext" =
context> E
)E F
;F G
void 
ContentTypeImported  
(  !&
ContentTypeImportedContext! ;
context< C
)C D
;D E
void		 
ContentPartCreated		 
(		  %
ContentPartCreatedContext		  9
context		: A
)		A B
;		B C
void

 
ContentPartRemoved

 
(

  %
ContentPartRemovedContext

  9
context

: A
)

A B
;

B C
void 
ContentPartAttached  
(  !&
ContentPartAttachedContext! ;
context< C
)C D
;D E
void 
ContentPartDetached  
(  !&
ContentPartDetachedContext! ;
context< C
)C D
;D E
void  
ContentPartImporting !
(! "'
ContentPartImportingContext" =
context> E
)E F
;F G
void 
ContentPartImported  
(  !&
ContentPartImportedContext! ;
context< C
)C D
;D E
void  
ContentFieldAttached !
(! "'
ContentFieldAttachedContext" =
context> E
)E F
;F G
void  
ContentFieldDetached !
(! "'
ContentFieldDetachedContext" =
context> E
)E F
;F G
} 
} Ë
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentTypes.Abstractions\Properties\AssemblyInfo.cs
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
$str		 B
)		B C
]		C D
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
]7 8