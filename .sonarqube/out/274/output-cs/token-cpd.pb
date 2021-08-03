�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Extensions\DataLoaderExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
{ 
public 

static 
class  
DataLoaderExtensions ,
{ 
public 
static 
IDataLoader !
<! "
string" (
,( )
ContentItem* 5
>5 66
*GetOrAddPublishedContentItemByIdDataLoader7 a
<a b
Tb c
>c d
(d e
thise i
ResolveFieldContextj }
<} ~
T~ 
>	 �
context
� �
)
� �
{ 	
var 
serviceProvider 
=  !
context" )
.) *"
ResolveServiceProvider* @
(@ A
)A B
;B C
var 
accessor 
= 
serviceProvider *
.* +
GetRequiredService+ =
<= >&
IDataLoaderContextAccessor> X
>X Y
(Y Z
)Z [
;[ \
var 
session 
= 
serviceProvider )
.) *

GetService* 4
<4 5
ISession5 =
>= >
(> ?
)? @
;@ A
return 
accessor 
. 
Context #
.# $
GetOrAddBatchLoader$ 7
<7 8
string8 >
,> ?
ContentItem@ K
>K L
(L M
$strM k
,k l
cim o
=>p r&
LoadPublishedContentItems	s �
(
� �
ci
� �
,
� �
session
� �
)
� �
)
� �
;
� �
} 	
private 
static 
async 
Task !
<! "
IDictionary" -
<- .
string. 4
,4 5
ContentItem6 A
>A B
>B C%
LoadPublishedContentItemsD ]
(] ^
IEnumerable^ i
<i j
stringj p
>p q
contentItemIds	r �
,
� �
ISession
� �
session
� �
)
� �
{ 	
if 
( 
contentItemIds 
is !
null" &
||' )
!* +
contentItemIds+ 9
.9 :
Any: =
(= >
)> ?
)? @
{ 
return 
new 

Dictionary %
<% &
string& ,
,, -
ContentItem. 9
>9 :
(: ;
); <
;< =
} 
var!! 
contentItemsLoaded!! "
=!!# $
await!!% *
session!!+ 2
.!!2 3
Query!!3 8
<!!8 9
ContentItem!!9 D
,!!D E
ContentItemIndex!!F V
>!!V W
(!!W X
y!!X Y
=>!!Z \
y!!] ^
.!!^ _
ContentItemId!!_ l
.!!l m
IsIn!!m q
(!!q r
contentItemIds	!!r �
)
!!� �
&&
!!� �
y
!!� �
.
!!� �
	Published
!!� �
)
!!� �
.
!!� �
	ListAsync
!!� �
(
!!� �
)
!!� �
;
!!� �
return"" 
contentItemsLoaded"" %
.""% &
ToDictionary""& 2
(""2 3
k""3 4
=>""5 7
k""8 9
.""9 :
ContentItemId"": G
,""G H
v""I J
=>""K M
v""N O
)""O P
;""P Q
}## 	
}$$ 
}%% �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Extensions\FieldTypeExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
{ 
public 

static 
class 
FieldTypeExtensions +
{ 
public 
static 
	FieldType %
WithPartCollapsedMetaData  9
(9 :
this: >
	FieldType? H
	fieldTypeI R
,R S
boolT X
	collapsedY b
=c d
truee i
)i j
{		 	
return

 
	fieldType

 
.

 
WithMetaData

 )
(

) *
$str

* 9
,

9 :
	collapsed

; D
)

D E
;

E F
} 	
public 
static 
	FieldType  
WithPartNameMetaData  4
(4 5
this5 9
	FieldType: C
	fieldTypeD M
,M N
stringO U
partNameV ^
)^ _
{ 	
return 
	fieldType 
. 
WithMetaData )
() *
$str* 4
,4 5
partName6 >
)> ?
;? @
} 	
internal 
static 
	FieldType !
WithMetaData" .
(. /
this/ 3
	FieldType4 =
	fieldType> G
,G H
stringI O
nameP T
,T U
objectV \
value] b
)b c
{ 	
if 
( 
	fieldType 
== 
null !
)! "
{ 
return 
null 
; 
} 
if 
( 
	fieldType 
. 
Metadata "
==# %
null& *
)* +
{ 
	fieldType 
. 
Metadata "
=# $
new% (

Dictionary) 3
<3 4
string4 :
,: ;
object< B
>B C
(C D
)D E
;E F
} 
if 
( 
! 
	fieldType 
. 
HasMetadata &
(& '
name' +
)+ ,
), -
{ 
	fieldType   
.   
Metadata   "
.  " #
Add  # &
(  & '
name  ' +
,  + ,
value  - 2
)  2 3
;  3 4
}!! 
return## 
	fieldType## 
;## 
}$$ 	
}%% 
}&& �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Extensions\StringExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
{ 
public 

static 
class 
StringExtensions (
{ 
public		 
static		 
string		 
ToFieldName		 (
(		( )
this		) -
string		. 4
name		5 9
)		9 :
{

 	
return 
name 
. 
TrimEnd 
(  
$str  &
)& '
.' (
ToCamelCase( 3
(3 4
)4 5
;5 6
} 	
} 
} �n
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Options\GraphQLContentOptions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Options0 7
{		 
public

 

class

 !
GraphQLContentOptions

 &
{ 
public 
IEnumerable 
< $
GraphQLContentTypeOption 3
>3 4
ContentTypeOptions5 G
{H I
getJ M
;M N
setO R
;R S
}T U
= 

Enumerable 
. 
Empty 
< $
GraphQLContentTypeOption 7
>7 8
(8 9
)9 :
;: ;
public 
IEnumerable 
< $
GraphQLContentPartOption 3
>3 4
PartOptions5 @
{A B
getC F
;F G
setH K
;K L
}M N
= 

Enumerable 
. 
Empty 
< $
GraphQLContentPartOption 7
>7 8
(8 9
)9 :
;: ;
public 
IEnumerable 
< 
GraphQLField '
>' (
HiddenFields) 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
= 

Enumerable 
. 
Empty 
< 
GraphQLField +
>+ ,
(, -
)- .
;. /
public !
GraphQLContentOptions $ 
ConfigureContentType% 9
(9 :
string: @
contentTypeA L
,L M
ActionN T
<T U$
GraphQLContentTypeOptionU m
>m n
actiono u
)u v
{ 	
var 
option 
= 
new $
GraphQLContentTypeOption 5
(5 6
contentType6 A
)A B
;B C
action 
( 
option 
) 
; 
ContentTypeOptions 
=  
ContentTypeOptions! 3
.3 4
Union4 9
(9 :
new: =
[= >
]> ?
{@ A
optionB H
}I J
)J K
;K L
return 
this 
; 
} 	
public   !
GraphQLContentOptions   $
ConfigurePart  % 2
<  2 3
TContentPart  3 ?
>  ? @
(  @ A
Action  A G
<  G H$
GraphQLContentPartOption  H `
>  ` a
action  b h
)  h i
where!! 
TContentPart!! 
:!!  
ContentPart!!! ,
{"" 	
var## 
option## 
=## 
new## $
GraphQLContentPartOption## 5
<##5 6
TContentPart##6 B
>##B C
(##C D
)##D E
;##E F
action%% 
(%% 
option%% 
)%% 
;%% 
PartOptions'' 
='' 
PartOptions'' %
.''% &
Union''& +
(''+ ,
new'', /
[''/ 0
]''0 1
{''2 3
option''4 :
}''; <
)''< =
;''= >
return)) 
this)) 
;)) 
}** 	
public,, !
GraphQLContentOptions,, $
ConfigurePart,,% 2
(,,2 3
string,,3 9
partName,,: B
,,,B C
Action,,D J
<,,J K$
GraphQLContentPartOption,,K c
>,,c d
action,,e k
),,k l
{-- 	
var.. 
option.. 
=.. 
new.. $
GraphQLContentPartOption.. 5
(..5 6
partName..6 >
)..> ?
;..? @
action00 
(00 
option00 
)00 
;00 
PartOptions22 
=22 
PartOptions22 %
.22% &
Union22& +
(22+ ,
new22, /
[22/ 0
]220 1
{222 3
option224 :
}22; <
)22< =
;22= >
return44 
this44 
;44 
}55 	
public77 !
GraphQLContentOptions77 $
IgnoreField77% 0
<770 1

TGraphType771 ;
>77; <
(77< =
string77= C
	fieldName77D M
)77M N
where77O T

TGraphType77U _
:77` a
IObjectGraphType77b r
{88 	
HiddenFields99 
=99 
HiddenFields99 '
.99' (
Union99( -
(99- .
new99. 1
[991 2
]992 3
{994 5
new:: 
GraphQLField::  
<::  !

TGraphType::! +
>::+ ,
(::, -
	fieldName::- 6
)::6 7
,::7 8
};; 
);; 
;;; 
return== 
this== 
;== 
}>> 	
public@@ !
GraphQLContentOptions@@ $
IgnoreField@@% 0
(@@0 1
Type@@1 5
	fieldType@@6 ?
,@@? @
string@@A G
	fieldName@@H Q
)@@Q R
{AA 	
HiddenFieldsBB 
=BB 
HiddenFieldsBB '
.BB' (
UnionBB( -
(BB- .
newBB. 1
[BB1 2
]BB2 3
{BB4 5
newCC 
GraphQLFieldCC  
(CC  !
	fieldTypeCC! *
,CC* +
	fieldNameCC, 5
)CC5 6
,CC6 7
}DD 
)DD 
;DD 
returnFF 
thisFF 
;FF 
}GG 	
internalRR 
boolRR 
ShouldCollapseRR $
(RR$ %%
ContentTypePartDefinitionRR% >

definitionRR? I
)RRI J
{SS 	
ifTT 
(TT  
IsCollapsedByDefaultTT $
(TT$ %

definitionTT% /
)TT/ 0
)TT0 1
{UU 
returnVV 
trueVV 
;VV 
}WW 
varYY 
settingsYY 
=YY 

definitionYY %
.YY% &
GetSettingsYY& 1
<YY1 2*
GraphQLContentTypePartSettingsYY2 P
>YYP Q
(YYQ R
)YYR S
;YYS T
if[[ 
([[ 
settings[[ 
.[[ 
Collapse[[ !
)[[! "
{\\ 
return]] 
true]] 
;]] 
}^^ 
return`` 
false`` 
;`` 
}aa 	
publiccc 
boolcc  
IsCollapsedByDefaultcc (
(cc( )%
ContentTypePartDefinitioncc) B

definitionccC M
)ccM N
{dd 	
varee 
contentTypeee 
=ee 

definitionee (
.ee( )!
ContentTypeDefinitionee) >
.ee> ?
Nameee? C
;eeC D
varff 
partNameff 
=ff 

definitionff %
.ff% &
PartDefinitionff& 4
.ff4 5
Nameff5 9
;ff9 :
ifhh 
(hh 
contentTypehh 
==hh 
partNamehh '
)hh' (
{ii 
returnjj 
truejj 
;jj 
}kk 
varmm 
contentTypeOptionmm !
=mm" #
ContentTypeOptionsmm$ 6
.mm6 7
FirstOrDefaultmm7 E
(mmE F
ctpmmF I
=>mmJ L
ctpmmM P
.mmP Q
ContentTypemmQ \
==mm] _
contentTypemm` k
)mmk l
;mml m
ifoo 
(oo 
contentTypeOptionoo !
!=oo" $
nulloo% )
)oo) *
{pp 
ifqq 
(qq 
contentTypeOptionqq %
.qq% &
Collapseqq& .
)qq. /
{rr 
returnss 
truess 
;ss  
}tt 
varvv !
contentTypePartOptionvv )
=vv* +
contentTypeOptionvv, =
.vv= >
PartOptionsvv> I
.vvI J
FirstOrDefaultvvJ X
(vvX Y
pvvY Z
=>vv[ ]
pvv^ _
.vv_ `
Namevv` d
==vve g
partNamevvh p
)vvp q
;vvq r
ifxx 
(xx !
contentTypePartOptionxx )
!=xx* ,
nullxx- 1
)xx1 2
{yy 
ifzz 
(zz !
contentTypePartOptionzz -
.zz- .
Collapsezz. 6
)zz6 7
{{{ 
return|| 
true|| #
;||# $
}}} 
}~~ 
} 
var
�� 
contentPartOption
�� !
=
��" #
PartOptions
��$ /
.
��/ 0
FirstOrDefault
��0 >
(
��> ?
p
��? @
=>
��A C
p
��D E
.
��E F
Name
��F J
==
��K M
partName
��N V
)
��V W
;
��W X
if
�� 
(
�� 
contentPartOption
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
if
�� 
(
�� 
contentPartOption
�� %
.
��% &
Collapse
��& .
)
��. /
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� 

ShouldSkip
��  
(
��  !'
ContentTypePartDefinition
��! :

definition
��; E
)
��E F
{
�� 	
if
�� 
(
�� 
IsHiddenByDefault
�� !
(
��! "

definition
��" ,
)
��, -
)
��- .
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
var
�� 
settings
�� 
=
�� 

definition
�� %
.
��% &
GetSettings
��& 1
<
��1 2,
GraphQLContentTypePartSettings
��2 P
>
��P Q
(
��Q R
)
��R S
;
��S T
if
�� 
(
�� 
settings
�� 
.
�� 
Hidden
�� 
)
��  
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� 

ShouldSkip
��  
(
��  !
Type
��! %
	fieldType
��& /
,
��/ 0
string
��1 7
	fieldName
��8 A
)
��A B
{
�� 	
return
�� 
HiddenFields
�� 
.
�� 
Any
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
	FieldType
�� %
==
��& (
	fieldType
��) 2
&&
��3 5
x
��6 7
.
��7 8
	FieldName
��8 A
.
��A B
Equals
��B H
(
��H I
	fieldName
��I R
,
��R S
StringComparison
��T d
.
��d e
OrdinalIgnoreCase
��e v
)
��v w
)
��w x
;
��x y
}
�� 	
public
�� 
bool
�� 
IsHiddenByDefault
�� %
(
��% &'
ContentTypePartDefinition
��& ?

definition
��@ J
)
��J K
{
�� 	
var
�� 
contentType
�� 
=
�� 

definition
�� (
.
��( )#
ContentTypeDefinition
��) >
.
��> ?
Name
��? C
;
��C D
var
�� 
partName
�� 
=
�� 

definition
�� %
.
��% &
PartDefinition
��& 4
.
��4 5
Name
��5 9
;
��9 :
var
�� 
contentTypeOption
�� !
=
��" # 
ContentTypeOptions
��$ 6
.
��6 7
FirstOrDefault
��7 E
(
��E F
ctp
��F I
=>
��J L
ctp
��M P
.
��P Q
ContentType
��Q \
==
��] _
contentType
��` k
)
��k l
;
��l m
if
�� 
(
�� 
contentTypeOption
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
if
�� 
(
�� 
contentTypeOption
�� %
.
��% &
Hidden
��& ,
)
��, -
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
var
�� #
contentTypePartOption
�� )
=
��* +
contentTypeOption
��, =
.
��= >
PartOptions
��> I
.
��I J
FirstOrDefault
��J X
(
��X Y
p
��Y Z
=>
��[ ]
p
��^ _
.
��_ `
Name
��` d
==
��e g
partName
��h p
)
��p q
;
��q r
if
�� 
(
�� #
contentTypePartOption
�� )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
if
�� 
(
�� #
contentTypePartOption
�� -
.
��- .
Hidden
��. 4
)
��4 5
{
�� 
return
�� 
true
�� #
;
��# $
}
�� 
}
�� 
}
�� 
var
�� 
contentPartOption
�� !
=
��" #
PartOptions
��$ /
.
��/ 0
FirstOrDefault
��0 >
(
��> ?
p
��? @
=>
��A C
p
��D E
.
��E F
Name
��F J
==
��K M
partName
��N V
)
��V W
;
��W X
if
�� 
(
�� 
contentPartOption
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
if
�� 
(
�� 
contentPartOption
�� %
.
��% &
Hidden
��& ,
)
��, -
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Options\GraphQLContentPartOption.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Options0 7
{ 
public 

class $
GraphQLContentPartOption )
<) *
TContentPart* 6
>6 7
:8 9$
GraphQLContentPartOption: R
whereS X
TContentPartY e
:f g
ContentParth s
{ 
public $
GraphQLContentPartOption '
(' (
)( )
:* +
base, 0
(0 1
typeof1 7
(7 8
TContentPart8 D
)D E
.E F
NameF J
)J K
{ 	
}		 	
}

 
public 

class $
GraphQLContentPartOption )
{ 
public $
GraphQLContentPartOption '
(' (
string( .
contentPartName/ >
)> ?
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
contentPartName% 4
)4 5
)5 6
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
contentPartName7 F
)F G
)G H
;H I
} 
Name 
= 
contentPartName "
;" #
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
public 
bool 
Collapse 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Hidden 
{ 
get  
;  !
set" %
;% &
}' (
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Options\GraphQLContentTypeOption.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Options0 7
{ 
public 

class $
GraphQLContentTypeOption )
{ 
public		 $
GraphQLContentTypeOption		 '
(		' (
string		( .
contentType		/ :
)		: ;
{

 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
contentType% 0
)0 1
)1 2
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
contentType7 B
)B C
)C D
;D E
} 
ContentType 
= 
contentType %
;% &
} 	
public 
string 
ContentType !
{" #
get$ '
;' (
}) *
public 
bool 
Collapse 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Hidden 
{ 
get  
;  !
set" %
;% &
}' (
public 
IEnumerable 
< $
GraphQLContentPartOption 3
>3 4
PartOptions5 @
{A B
getC F
;F G
setH K
;K L
}M N
= 

Enumerable 
. 
Empty 
< $
GraphQLContentPartOption 7
>7 8
(8 9
)9 :
;: ;
public $
GraphQLContentTypeOption '
ConfigurePart( 5
<5 6
TContentPart6 B
>B C
(C D
ActionD J
<J K$
GraphQLContentPartOptionK c
>c d
actione k
)k l
where 
TContentPart 
:  
ContentPart! ,
{ 	
var 
option 
= 
new $
GraphQLContentPartOption 5
<5 6
TContentPart6 B
>B C
(C D
)D E
;E F
action!! 
(!! 
option!! 
)!! 
;!! 
PartOptions## 
=## 
PartOptions## %
.##% &
Union##& +
(##+ ,
new##, /
[##/ 0
]##0 1
{##2 3
option##4 :
}##; <
)##< =
;##= >
return%% 
this%% 
;%% 
}&& 	
public(( $
GraphQLContentTypeOption(( '
ConfigurePart((( 5
(((5 6
string((6 <
partName((= E
,((E F
Action((G M
<((M N$
GraphQLContentPartOption((N f
>((f g
action((h n
)((n o
{)) 	
var** 
option** 
=** 
new** $
GraphQLContentPartOption** 5
(**5 6
partName**6 >
)**> ?
;**? @
action,, 
(,, 
option,, 
),, 
;,, 
PartOptions.. 
=.. 
PartOptions.. %
...% &
Union..& +
(..+ ,
new.., /
[../ 0
]..0 1
{..2 3
option..4 :
}..; <
)..< =
;..= >
return00 
this00 
;00 
}11 	
}22 
}33 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Options\GraphQLField.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Options0 7
{ 
public 

class 
GraphQLField 
< 

TGraphType (
>( )
:* +
GraphQLField, 8
where9 >

TGraphType? I
:J K
IObjectGraphTypeL \
{ 
public 
GraphQLField 
( 
string "
	fieldName# ,
), -
:. /
base0 4
(4 5
typeof5 ;
(; <

TGraphType< F
)F G
,G H
	fieldNameI R
)R S
{		 	
}

 	
} 
public 

class 
GraphQLField 
{ 
public 
GraphQLField 
( 
Type  
	fieldType! *
,* +
string, 2
	fieldName3 <
)< =
{ 	
if 
( 
	fieldType 
== 
null !
)! "
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
	fieldType7 @
)@ A
)A B
;B C
} 
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
	fieldName* 3
)3 4
)4 5
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
	fieldName7 @
)@ A
)A B
;B C
} 
	FieldName 
= 
	fieldName !
;! "
	FieldType 
= 
	fieldType !
;! "
} 	
public 
string 
	FieldName 
{  !
get" %
;% &
}' (
public!! 
Type!! 
	FieldType!! 
{!! 
get!!  #
;!!# $
}!!% &
}"" 
}## �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Permissions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{		 
public

 
static

 
readonly

 

Permission

 )
ApiViewContent

* 8
=

9 :
new

; >

Permission

? I
(

I J
$str

J Z
,

Z [
$str

\ {
)

{ |
;

| }
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{ 
ApiViewContent 
} 
. 
AsEnumerable 
( 
) 
) 
; 
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{) *
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ApiViewContent* 8
}9 :
} 
, 
new  
PermissionStereotype (
{) *
Name 
= 
$str #
} 
, 
new  
PermissionStereotype (
{) *
Name   
=   
$str   &
}!! 
,!! 
new""  
PermissionStereotype"" (
{"") *
Name## 
=## 
$str## #
}$$ 
,$$ 
new%%  
PermissionStereotype%% (
{%%) *
Name&& 
=&& 
$str&& (
}'' 
,'' 
new((  
PermissionStereotype(( (
{(() *
Name)) 
=)) 
$str)) *
}** 
,** 
new++  
PermissionStereotype++ (
{++) *
Name,, 
=,, 
$str,, &
}-- 
}.. 
;.. 
}// 	
}00 
}11 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\ContentItemQuery.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

class 
ContentItemQuery !
:" #
ISchemaBuilder$ 2
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ContentItemQuery 
(   
IHttpContextAccessor  4
httpContextAccessor5 H
,H I
IStringLocalizer 
< 
ContentItemQuery -
>- .
	localizer/ 8
)8 9
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
S 
= 
	localizer 
; 
} 	
public 
Task 
< 
string 
> 
GetIdentifierAsync .
(. /
)/ 0
=>1 3
Task4 8
.8 9

FromResult9 C
(C D
StringD J
.J K
EmptyK P
)P Q
;Q R
public 
Task 

BuildAsync 
( 
ISchema &
schema' -
)- .
{ 	
var 
field 
= 
new 
	FieldType %
{ 
Name   
=   
$str   $
,  $ %
Description!! 
=!! 
S!! 
[!!  
$str!!  {
]!!{ |
,!!| }
Type"" 
="" 
typeof"" 
(""  
ContentItemInterface"" 2
)""2 3
,""3 4
	Arguments## 
=## 
new## 
QueryArguments##  .
(##. /
new$$ 
QueryArgument$$ %
<$$% &
NonNullGraphType$$& 6
<$$6 7
StringGraphType$$7 F
>$$F G
>$$G H
{%% 
Name&& 
=&& 
$str&& .
,&&. /
Description'' #
=''$ %
S''& '
[''' (
$str''( 9
]''9 :
}(( 
))) 
,)) 
Resolver** 
=** 
new** 
AsyncFieldResolver** 1
<**1 2
ContentItem**2 =
>**= >
(**> ?
ResolveAsync**? K
)**K L
}++ 
;++ 
schema-- 
.-- 
Query-- 
.-- 
AddField-- !
(--! "
field--" '
)--' (
;--( )
return// 
Task// 
.// 
CompletedTask// %
;//% &
}00 	
private22 
Task22 
<22 
ContentItem22  
>22  !
ResolveAsync22" .
(22. /
ResolveFieldContext22/ B
context22C J
)22J K
{33 	
var44 
contentItemId44 
=44 
context44  '
.44' (
GetArgument44( 3
<443 4
string444 :
>44: ;
(44; <
$str44< K
)44K L
;44L M
var55 
contentManager55 
=55   
_httpContextAccessor55! 5
.555 6
HttpContext556 A
.55A B
RequestServices55B Q
.55Q R

GetService55R \
<55\ ]
IContentManager55] l
>55l m
(55m n
)55n o
;55o p
return66 
contentManager66 !
.66! "
GetAsync66" *
(66* +
contentItemId66+ 8
)668 9
;669 :
}77 	
}88 
}99 ҈
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\ContentItemsFieldType.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

class !
ContentItemsFieldType &
:' (
	FieldType) 2
{ 
private 
static 
readonly 
List  $
<$ %
string% +
>+ ,!
ContentItemProperties- B
;B C
private 
readonly 
int !
_defaultNumberOfItems 2
;2 3
static !
ContentItemsFieldType $
($ %
)% &
{   	!
ContentItemProperties!! !
=!!" #
new!!$ '
List!!( ,
<!!, -
string!!- 3
>!!3 4
(!!4 5
)!!5 6
;!!6 7
foreach## 
(## 
var## 
property## !
in##" $
typeof##% +
(##+ ,
ContentItemIndex##, <
)##< =
.##= >
GetProperties##> K
(##K L
)##L M
)##M N
{$$ !
ContentItemProperties%% %
.%%% &
Add%%& )
(%%) *
property%%* 2
.%%2 3
Name%%3 7
)%%7 8
;%%8 9
}&& 
}'' 	
public)) !
ContentItemsFieldType)) $
())$ %
string))% +
contentItemName)), ;
,)); <
ISchema))= D
schema))E K
,))K L
IOptions))M U
<))U V!
GraphQLContentOptions))V k
>))k l
optionsAccessor))m |
,))| }
IOptions	))~ �
<
))� �
GraphQLSettings
))� �
>
))� �
settingsAccessor
))� �
)
))� �
{** 	
Name++ 
=++ 
$str++ !
;++! "
Type-- 
=-- 
typeof-- 
(-- 
ListGraphType-- '
<--' (
ContentItemType--( 7
>--7 8
)--8 9
;--9 :
var// 

whereInput// 
=// 
new//  !
ContentItemWhereInput//! 6
(//6 7
contentItemName//7 F
,//F G
optionsAccessor//H W
)//W X
;//X Y
var00 
orderByInput00 
=00 
new00 "#
ContentItemOrderByInput00# :
(00: ;
contentItemName00; J
)00J K
;00K L
	Arguments22 
=22 
new22 
QueryArguments22 *
(22* +
new33 
QueryArgument33 !
<33! "!
ContentItemWhereInput33" 7
>337 8
{339 :
Name33; ?
=33@ A
$str33B I
,33I J
Description33K V
=33W X
$str33Y t
,33t u
ResolvedType	33v �
=
33� �

whereInput
33� �
}
33� �
,
33� �
new44 
QueryArgument44 !
<44! "#
ContentItemOrderByInput44" 9
>449 :
{44; <
Name44= A
=44B C
$str44D M
,44M N
Description44O Z
=44[ \
$str44] i
,44i j
ResolvedType44k w
=44x y
orderByInput	44z �
}
44� �
,
44� �
new55 
QueryArgument55 !
<55! "
IntGraphType55" .
>55. /
{550 1
Name552 6
=557 8
$str559 @
,55@ A
Description55B M
=55N O
$str55P k
,55k l
ResolvedType55m y
=55z {
new55| 
IntGraphType
55� �
(
55� �
)
55� �
}
55� �
,
55� �
new66 
QueryArgument66 !
<66! "
IntGraphType66" .
>66. /
{660 1
Name662 6
=667 8
$str669 ?
,66? @
Description66A L
=66M N
$str66O t
,66t u
ResolvedType	66v �
=
66� �
new
66� �
IntGraphType
66� �
(
66� �
)
66� �
}
66� �
,
66� �
new77 
QueryArgument77 !
<77! "&
PublicationStatusGraphType77" <
>77< =
{77> ?
Name77@ D
=77E F
$str77G O
,77O P
Description77Q \
=77] ^
$str	77_ �
,
77� �
ResolvedType
77� �
=
77� �
new
77� �(
PublicationStatusGraphType
77� �
(
77� �
)
77� �
,
77� �
DefaultValue
77� �
=
77� �#
PublicationStatusEnum
77� �
.
77� �
	Published
77� �
}
77� �
)88 
;88 
Resolver:: 
=:: 
new:: $
LockedAsyncFieldResolver:: 3
<::3 4
IEnumerable::4 ?
<::? @
ContentItem::@ K
>::K L
>::L M
(::M N
Resolve::N U
)::U V
;::V W
schema<< 
.<< 
RegisterType<< 
(<<  

whereInput<<  *
)<<* +
;<<+ ,
schema== 
.== 
RegisterType== 
(==  
orderByInput==  ,
)==, -
;==- .
schema>> 
.>> 
RegisterType>> 
<>>  &
PublicationStatusGraphType>>  :
>>>: ;
(>>; <
)>>< =
;>>= >!
_defaultNumberOfItems@@ !
=@@" #
settingsAccessor@@$ 4
.@@4 5
Value@@5 :
.@@: ;"
DefaultNumberOfResults@@; Q
;@@Q R
}AA 	
privateCC 
asyncCC 
TaskCC 
<CC 
IEnumerableCC &
<CC& '
ContentItemCC' 2
>CC2 3
>CC3 4
ResolveCC5 <
(CC< =
ResolveFieldContextCC= P
contextCCQ X
)CCX Y
{DD 	
varEE 
graphContextEE 
=EE 
(EE  
GraphQLContextEE  .
)EE. /
contextEE/ 6
.EE6 7
UserContextEE7 B
;EEB C
varGG 
versionOptionGG 
=GG 
VersionOptionsGG  .
.GG. /
	PublishedGG/ 8
;GG8 9
ifII 
(II 
contextII 
.II  
HasPopulatedArgumentII ,
(II, -
$strII- 5
)II5 6
)II6 7
{JJ 
versionOptionKK 
=KK 
GetVersionOptionKK  0
(KK0 1
contextKK1 8
.KK8 9
GetArgumentKK9 D
<KKD E!
PublicationStatusEnumKKE Z
>KKZ [
(KK[ \
$strKK\ d
)KKd e
)KKe f
;KKf g
}LL 
JObjectNN 
whereNN 
=NN 
nullNN  
;NN  !
ifOO 
(OO 
contextOO 
.OO 
HasArgumentOO #
(OO# $
$strOO$ +
)OO+ ,
)OO, -
{PP 
whereQQ 
=QQ 
JObjectQQ 
.QQ  

FromObjectQQ  *
(QQ* +
contextQQ+ 2
.QQ2 3
	ArgumentsQQ3 <
[QQ< =
$strQQ= D
]QQD E
)QQE F
;QQF G
}RR 
varTT 
sessionTT 
=TT 
graphContextTT &
.TT& '
ServiceProviderTT' 6
.TT6 7

GetServiceTT7 A
<TTA B
ISessionTTB J
>TTJ K
(TTK L
)TTL M
;TTM N
varVV 
preQueryVV 
=VV 
sessionVV "
.VV" #
QueryVV# (
<VV( )
ContentItemVV) 4
>VV4 5
(VV5 6
)VV6 7
;VV7 8
varXX 
filtersXX 
=XX 
graphContextXX &
.XX& '
ServiceProviderXX' 6
.XX6 7
GetServicesXX7 B
<XXB C
IGraphQLFilterXXC Q
<XXQ R
ContentItemXXR ]
>XX] ^
>XX^ _
(XX_ `
)XX` a
;XXa b
foreachZZ 
(ZZ 
varZZ 
filterZZ 
inZZ  "
filtersZZ# *
)ZZ* +
{[[ 
preQuery\\ 
=\\ 
await\\  
filter\\! '
.\\' (
PreQueryAsync\\( 5
(\\5 6
preQuery\\6 >
,\\> ?
context\\@ G
)\\G H
;\\H I
}]] 
var__ 
query__ 
=__ 
preQuery__  
.__  !
With__! %
<__% &
ContentItemIndex__& 6
>__6 7
(__7 8
)__8 9
;__9 :
queryaa 
=aa 
FilterVersionaa !
(aa! "
queryaa" '
,aa' (
versionOptionaa) 6
)aa6 7
;aa7 8
querybb 
=bb 
FilterContentTypebb %
(bb% &
querybb& +
,bb+ ,
contextbb- 4
)bb4 5
;bb5 6
querycc 
=cc 
OrderBycc 
(cc 
querycc !
,cc! "
contextcc# *
)cc* +
;cc+ ,
varee 
contentItemsQueryee !
=ee" #
awaitee$ ) 
FilterWhereArgumentsee* >
(ee> ?
queryee? D
,eeD E
whereeeF K
,eeK L
contexteeM T
,eeT U
sessioneeV ]
,ee] ^
graphContextee_ k
)eek l
;eel m
contentItemsQueryff 
=ff 
	PageQueryff  )
(ff) *
contentItemsQueryff* ;
,ff; <
contextff= D
,ffD E
graphContextffF R
)ffR S
;ffS T
varhh 
contentItemshh 
=hh 
awaithh $
contentItemsQueryhh% 6
.hh6 7
	ListAsynchh7 @
(hh@ A
)hhA B
;hhB C
foreachjj 
(jj 
varjj 
filterjj 
injj  "
filtersjj# *
)jj* +
{kk 
contentItemsll 
=ll 
awaitll $
filterll% +
.ll+ ,
PostQueryAsyncll, :
(ll: ;
contentItemsll; G
,llG H
contextllI P
)llP Q
;llQ R
}mm 
returnoo 
contentItemsoo 
;oo  
}pp 	
privaterr 
asyncrr 
Taskrr 
<rr 
IQueryrr !
<rr! "
ContentItemrr" -
>rr- .
>rr. / 
FilterWhereArgumentsrr0 D
(rrD E
IQueryss 
<ss 
ContentItemss 
,ss 
ContentItemIndexss  0
>ss0 1
queryss2 7
,ss7 8
JObjecttt 
wherett 
,tt 
ResolveFieldContextuu 
fieldContextuu  ,
,uu, -
ISessionvv 
sessionvv 
,vv 
GraphQLContextww 
contextww "
)ww" #
{xx 	
ifyy 
(yy 
whereyy 
==yy 
nullyy 
)yy 
{zz 
return{{ 
query{{ 
;{{ 
}|| 
string~~ 
defaultTableAlias~~ $
=~~% &
query~~' ,
.~~, -
GetTypeAlias~~- 9
(~~9 :
typeof~~: @
(~~@ A
ContentItemIndex~~A Q
)~~Q R
)~~R S
;~~S T
var
�� 
transaction
�� 
=
�� 
await
�� #
session
��$ +
.
��+ ,
DemandAsync
��, 7
(
��7 8
)
��8 9
;
��9 :
IPredicateQuery
�� 
predicateQuery
�� *
=
��+ ,
new
��- 0
PredicateQuery
��1 ?
(
��? @
dialect
�� 
:
�� 
session
��  
.
��  !
Store
��! &
.
��& '
Configuration
��' 4
.
��4 5

SqlDialect
��5 ?
,
��? @
shellSettings
�� 
:
�� 
context
�� &
.
��& '
ServiceProvider
��' 6
.
��6 7

GetService
��7 A
<
��A B
ShellSettings
��B O
>
��O P
(
��P Q
)
��Q R
,
��R S
propertyProviders
�� !
:
��! "
context
��# *
.
��* +
ServiceProvider
��+ :
.
��: ;
GetServices
��; F
<
��F G$
IIndexPropertyProvider
��G ]
>
��] ^
(
��^ _
)
��_ `
)
��` a
;
��a b
predicateQuery
�� 
.
�� 
CreateAlias
�� &
(
��& '
$str
��' )
,
��) *
nameof
��+ 1
(
��1 2
ContentItemIndex
��2 B
)
��B C
)
��C D
;
��D E
predicateQuery
�� 
.
�� 
CreateTableAlias
�� +
(
��+ ,
nameof
��, 2
(
��2 3
ContentItemIndex
��3 C
)
��C D
,
��D E
defaultTableAlias
��F W
)
��W X
;
��X Y
var
�� 
	providers
�� 
=
�� 
context
�� #
.
��# $
ServiceProvider
��$ 3
.
��3 4
GetServices
��4 ?
<
��? @!
IIndexAliasProvider
��@ S
>
��S T
(
��T U
)
��U V
;
��V W
var
�� 
indexes
�� 
=
�� 
new
�� 

Dictionary
�� (
<
��( )
string
��) /
,
��/ 0

IndexAlias
��1 ;
>
��; <
(
��< =
StringComparer
��= K
.
��K L
OrdinalIgnoreCase
��L ]
)
��] ^
;
��^ _
var
�� 
indexAliases
�� 
=
�� 
new
�� "

Dictionary
��# -
<
��- .
string
��. 4
,
��4 5
string
��6 <
>
��< =
(
��= >
StringComparer
��> L
.
��L M
OrdinalIgnoreCase
��M ^
)
��^ _
;
��_ `
foreach
�� 
(
�� 
var
�� 
aliasProvider
�� &
in
��' )
	providers
��* 3
)
��3 4
{
�� 
foreach
�� 
(
�� 
var
�� 
alias
�� "
in
��# %
aliasProvider
��& 3
.
��3 4

GetAliases
��4 >
(
��> ?
)
��? @
)
��@ A
{
�� 
predicateQuery
�� "
.
��" #
CreateAlias
��# .
(
��. /
alias
��/ 4
.
��4 5
Alias
��5 :
,
��: ;
alias
��< A
.
��A B
Index
��B G
)
��G H
;
��H I
indexAliases
��  
.
��  !
Add
��! $
(
��$ %
alias
��% *
.
��* +
Alias
��+ 0
,
��0 1
alias
��2 7
.
��7 8
Alias
��8 =
)
��= >
;
��> ?
if
�� 
(
�� 
!
�� 
indexes
��  
.
��  !
ContainsKey
��! ,
(
��, -
alias
��- 2
.
��2 3
Index
��3 8
)
��8 9
)
��9 :
{
�� 
indexes
�� 
.
��  
Add
��  #
(
��# $
alias
��$ )
.
��) *
Index
��* /
,
��/ 0
alias
��1 6
)
��6 7
;
��7 8
}
�� 
}
�� 
}
�� 
var
�� 
expressions
�� 
=
�� 

Expression
�� (
.
��( )
Conjunction
��) 4
(
��4 5
)
��5 6
;
��6 7#
BuildWhereExpressions
�� !
(
��! "
where
��" '
,
��' (
expressions
��) 4
,
��4 5
null
��6 :
,
��: ;
fieldContext
��< H
,
��H I
indexAliases
��J V
)
��V W
;
��W X
expressions
�� 
.
�� 
SearchUsedAlias
�� '
(
��' (
predicateQuery
��( 6
)
��6 7
;
��7 8
IQuery
�� 
<
�� 
ContentItem
�� 
>
�� 
contentQuery
��  ,
=
��- .
query
��/ 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
	usedAlias
�� "
in
��# %
predicateQuery
��& 4
.
��4 5
GetUsedAliases
��5 C
(
��C D
)
��D E
)
��E F
{
�� 
if
�� 
(
�� 
indexes
�� 
.
�� 
ContainsKey
�� '
(
��' (
	usedAlias
��( 1
)
��1 2
)
��2 3
{
�� 
contentQuery
��  
=
��! "
contentQuery
��# /
.
��/ 0
With
��0 4
(
��4 5
indexes
��5 <
[
��< =
	usedAlias
��= F
]
��F G
.
��G H
	IndexType
��H Q
)
��Q R
;
��R S
var
�� 

tableAlias
�� "
=
��# $
query
��% *
.
��* +
GetTypeAlias
��+ 7
(
��7 8
indexes
��8 ?
[
��? @
	usedAlias
��@ I
]
��I J
.
��J K
	IndexType
��K T
)
��T U
;
��U V
predicateQuery
�� "
.
��" #
CreateTableAlias
��# 3
(
��3 4
indexes
��4 ;
[
��; <
	usedAlias
��< E
]
��E F
.
��F G
Index
��G L
,
��L M

tableAlias
��N X
)
��X Y
;
��Y Z
}
�� 
}
�� 
var
�� 
whereSqlClause
�� 
=
��  
expressions
��! ,
.
��, -
ToSqlString
��- 8
(
��8 9
predicateQuery
��9 G
)
��G H
;
��H I
query
�� 
=
�� 
query
�� 
.
�� 
Where
�� 
(
��  
whereSqlClause
��  .
)
��. /
;
��/ 0
foreach
�� 
(
�� 
var
�� 
	parameter
�� "
in
��# %
predicateQuery
��& 4
.
��4 5

Parameters
��5 ?
)
��? @
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
WithParameter
�� +
(
��+ ,
	parameter
��, 5
.
��5 6
Key
��6 9
,
��9 :
	parameter
��; D
.
��D E
Value
��E J
)
��J K
;
��K L
}
�� 
return
�� 
contentQuery
�� 
;
��  
}
�� 	
private
�� 
IQuery
�� 
<
�� 
ContentItem
�� "
>
��" #
	PageQuery
��$ -
(
��- .
IQuery
��. 4
<
��4 5
ContentItem
��5 @
>
��@ A
contentItemsQuery
��B S
,
��S T!
ResolveFieldContext
��U h
context
��i p
,
��p q
GraphQLContext��r �
graphQLContext��� �
)��� �
{
�� 	
var
�� 
first
�� 
=
�� 
context
�� 
.
��  
GetArgument
��  +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
$str
��1 8
)
��8 9
;
��9 :
if
�� 
(
�� 
first
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
first
�� 
=
�� #
_defaultNumberOfItems
�� -
;
��- .
}
�� 
contentItemsQuery
�� 
=
�� 
contentItemsQuery
��  1
.
��1 2
Take
��2 6
(
��6 7
first
��7 <
)
��< =
;
��= >
if
�� 
(
�� 
context
�� 
.
�� "
HasPopulatedArgument
�� ,
(
��, -
$str
��- 3
)
��3 4
)
��4 5
{
�� 
var
�� 
skip
�� 
=
�� 
context
�� "
.
��" #
GetArgument
��# .
<
��. /
int
��/ 2
>
��2 3
(
��3 4
$str
��4 :
)
��: ;
;
��; <
contentItemsQuery
�� !
=
��" #
contentItemsQuery
��$ 5
.
��5 6
Skip
��6 :
(
��: ;
skip
��; ?
)
��? @
;
��@ A
}
�� 
return
�� 
contentItemsQuery
�� $
;
��$ %
}
�� 	
private
�� 
VersionOptions
�� 
GetVersionOption
�� /
(
��/ 0#
PublicationStatusEnum
��0 E
status
��F L
)
��L M
{
�� 	
switch
�� 
(
�� 
status
�� 
)
�� 
{
�� 
case
�� #
PublicationStatusEnum
�� *
.
��* +
	Published
��+ 4
:
��4 5
return
��6 <
VersionOptions
��= K
.
��K L
	Published
��L U
;
��U V
case
�� #
PublicationStatusEnum
�� *
.
��* +
Draft
��+ 0
:
��0 1
return
��2 8
VersionOptions
��9 G
.
��G H
Draft
��H M
;
��M N
case
�� #
PublicationStatusEnum
�� *
.
��* +
Latest
��+ 1
:
��1 2
return
��3 9
VersionOptions
��: H
.
��H I
Latest
��I O
;
��O P
case
�� #
PublicationStatusEnum
�� *
.
��* +
All
��+ .
:
��. /
return
��0 6
VersionOptions
��7 E
.
��E F
AllVersions
��F Q
;
��Q R
default
�� 
:
�� 
return
�� 
VersionOptions
��  .
.
��. /
	Published
��/ 8
;
��8 9
}
�� 
}
�� 	
private
�� 
static
�� 
IQuery
�� 
<
�� 
ContentItem
�� )
,
��) *
ContentItemIndex
��+ ;
>
��; <
FilterContentType
��= N
(
��N O
IQuery
��O U
<
��U V
ContentItem
��V a
,
��a b
ContentItemIndex
��c s
>
��s t
query
��u z
,
��z {"
ResolveFieldContext��| �
context��� �
)��� �
{
�� 	
var
�� 
contentType
�� 
=
�� 
(
�� 
(
��  
ListGraphType
��  -
)
��- .
context
��. 5
.
��5 6

ReturnType
��6 @
)
��@ A
.
��A B
ResolvedType
��B N
.
��N O
Name
��O S
;
��S T
return
�� 
query
�� 
.
�� 
Where
�� 
(
�� 
q
��  
=>
��! #
q
��$ %
.
��% &
ContentType
��& 1
==
��2 4
contentType
��5 @
)
��@ A
;
��A B
}
�� 	
private
�� 
static
�� 
IQuery
�� 
<
�� 
ContentItem
�� )
,
��) *
ContentItemIndex
��+ ;
>
��; <
FilterVersion
��= J
(
��J K
IQuery
��K Q
<
��Q R
ContentItem
��R ]
,
��] ^
ContentItemIndex
��_ o
>
��o p
query
��q v
,
��v w
VersionOptions��x �
versionOption��� �
)��� �
{
�� 	
if
�� 
(
�� 
versionOption
�� 
.
�� 
IsPublished
�� )
)
��) *
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Where
�� #
(
��# $
q
��$ %
=>
��& (
q
��) *
.
��* +
	Published
��+ 4
==
��5 7
true
��8 <
)
��< =
;
��= >
}
�� 
else
�� 
if
�� 
(
�� 
versionOption
�� "
.
��" #
IsDraft
��# *
)
��* +
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Where
�� #
(
��# $
q
��$ %
=>
��& (
q
��) *
.
��* +
Latest
��+ 1
==
��2 4
true
��5 9
&&
��: <
q
��= >
.
��> ?
	Published
��? H
==
��I K
false
��L Q
)
��Q R
;
��R S
}
�� 
else
�� 
if
�� 
(
�� 
versionOption
�� "
.
��" #
IsLatest
��# +
)
��+ ,
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Where
�� #
(
��# $
q
��$ %
=>
��& (
q
��) *
.
��* +
Latest
��+ 1
==
��2 4
true
��5 9
)
��9 :
;
��: ;
}
�� 
return
�� 
query
�� 
;
�� 
}
�� 	
private
�� 
void
�� #
BuildWhereExpressions
�� *
(
��* +
JToken
��+ 1
where
��2 7
,
��7 8
Junction
��9 A
expressions
��B M
,
��M N
string
��O U

tableAlias
��V `
,
��` a!
ResolveFieldContext
��b u
fieldContext��v �
,��� �
IDictionary��� �
<��� �
string��� �
,��� �
string��� �
>��� �
indexAliases��� �
)��� �
{
�� 	
if
�� 
(
�� 
where
�� 
is
�� 
JArray
�� 
array
��  %
)
��% &
{
�� 
foreach
�� 
(
�� 
var
�� 
child
�� "
in
��# %
array
��& +
.
��+ ,
Children
��, 4
(
��4 5
)
��5 6
)
��6 7
{
�� 
if
�� 
(
�� 
child
�� 
is
��  
JObject
��! (
whereObject
��) 4
)
��4 5
{
�� &
BuildExpressionsInternal
�� 0
(
��0 1
whereObject
��1 <
,
��< =
expressions
��> I
,
��I J

tableAlias
��K U
,
��U V
fieldContext
��W c
,
��c d
indexAliases
��e q
)
��q r
;
��r s
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
where
�� 
is
�� 
JObject
�� %
whereObject
��& 1
)
��1 2
{
�� &
BuildExpressionsInternal
�� (
(
��( )
whereObject
��) 4
,
��4 5
expressions
��6 A
,
��A B

tableAlias
��C M
,
��M N
fieldContext
��O [
,
��[ \
indexAliases
��] i
)
��i j
;
��j k
}
�� 
}
�� 	
private
�� 
void
�� &
BuildExpressionsInternal
�� -
(
��- .
JObject
��. 5
where
��6 ;
,
��; <
Junction
��= E
expressions
��F Q
,
��Q R
string
��S Y

tableAlias
��Z d
,
��d e!
ResolveFieldContext
��f y
fieldContext��z �
,��� �
IDictionary��� �
<��� �
string��� �
,��� �
string��� �
>��� �
indexAliases��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
entry
�� 
in
�� !
where
��" '
.
��' (

Properties
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 

IPredicate
�� 

expression
�� %
=
��& '
null
��( ,
;
��, -
var
�� 
values
�� 
=
�� 
entry
�� "
.
��" #
Name
��# '
.
��' (
Split
��( -
(
��- .
$char
��. 1
,
��1 2
$num
��3 4
)
��4 5
;
��5 6
var
�� 
property
�� 
=
�� 
values
�� %
[
��% &
$num
��& '
]
��' (
;
��( )
if
�� 
(
�� 

tableAlias
�� 
==
�� !
null
��" &
||
��' )
!
��* +

tableAlias
��+ 5
.
��5 6
EndsWith
��6 >
(
��> ?
$str
��? E
,
��E F
StringComparison
��G W
.
��W X
OrdinalIgnoreCase
��X i
)
��i j
)
��j k
{
�� 
var
�� 
whereArgument
�� %
=
��& '
fieldContext
��( 4
?
��4 5
.
��5 6
FieldDefinition
��6 E
?
��E F
.
��F G
	Arguments
��G P
.
��P Q
FirstOrDefault
��Q _
(
��_ `
x
��` a
=>
��b d
x
��e f
.
��f g
Name
��g k
==
��l n
$str
��o v
)
��v w
;
��w x
if
�� 
(
�� 
whereArgument
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
var
�� 

whereInput
�� &
=
��' (
(
��) *'
WhereInputObjectGraphType
��* C
)
��C D
whereArgument
��D Q
.
��Q R
ResolvedType
��R ^
;
��^ _
foreach
�� 
(
��  !
var
��! $
field
��% *
in
��+ -

whereInput
��. 8
.
��8 9
Fields
��9 ?
.
��? @
Where
��@ E
(
��E F
x
��F G
=>
��H J
x
��K L
.
��L M
GetMetadata
��M X
<
��X Y
string
��Y _
>
��_ `
(
��` a
$str
��a k
)
��k l
!=
��m o
null
��p t
)
��t u
)
��u v
{
�� 
var
�� 
partName
��  (
=
��) *
field
��+ 0
.
��0 1
GetMetadata
��1 <
<
��< =
string
��= C
>
��C D
(
��D E
$str
��E O
)
��O P
;
��P Q
if
�� 
(
��  
(
��  !

tableAlias
��! +
==
��, .
null
��/ 3
&&
��4 6
field
��7 <
.
��< =
GetMetadata
��= H
<
��H I
bool
��I M
>
��M N
(
��N O
$str
��O ^
)
��^ _
&&
��` b
field
��c h
.
��h i
Name
��i m
.
��m n
Equals
��n t
(
��t u
property
��u }
,
��} ~
StringComparison�� �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
||��� �
(
��  !

tableAlias
��! +
!=
��, .
null
��/ 3
&&
��4 6
partName
��7 ?
.
��? @
ToFieldName
��@ K
(
��K L
)
��L M
.
��M N
Equals
��N T
(
��T U

tableAlias
��U _
,
��_ `
StringComparison
��a q
.
��q r 
OrdinalIgnoreCase��r �
)��� �
)��� �
)��� �
{
�� 

tableAlias
��  *
=
��+ ,
indexAliases
��- 9
.
��9 :
TryGetValue
��: E
(
��E F
partName
��F N
,
��N O
out
��P S
var
��T W
indexTableAlias
��X g
)
��g h
?
��i j
indexTableAlias
��k z
:
��{ |

tableAlias��} �
;��� �
break
��  %
;
��% &
}
�� 
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 

tableAlias
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
property
�� 
=
�� 
$"
�� !
{
��! "

tableAlias
��" ,
}
��, -
.
��- .
{
��. /
property
��/ 7
}
��7 8
"
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
values
�� 
.
�� 
Length
�� !
==
��" $
$num
��% &
)
��& '
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
Equals
�� %
(
��% &
values
��& ,
[
��, -
$num
��- .
]
��. /
,
��/ 0
$str
��1 5
,
��5 6
StringComparison
��7 G
.
��G H
OrdinalIgnoreCase
��H Y
)
��Y Z
)
��Z [
{
�� 

expression
�� "
=
��# $

Expression
��% /
.
��/ 0
Disjunction
��0 ;
(
��; <
)
��< =
;
��= >#
BuildWhereExpressions
�� -
(
��- .
entry
��. 3
.
��3 4
Value
��4 9
,
��9 :
(
��; <
Junction
��< D
)
��D E

expression
��E O
,
��O P

tableAlias
��Q [
,
��[ \
fieldContext
��] i
,
��i j
indexAliases
��k w
)
��w x
;
��x y
}
�� 
else
�� 
if
�� 
(
�� 
string
�� #
.
��# $
Equals
��$ *
(
��* +
values
��+ 1
[
��1 2
$num
��2 3
]
��3 4
,
��4 5
$str
��6 ;
,
��; <
StringComparison
��= M
.
��M N
OrdinalIgnoreCase
��N _
)
��_ `
)
��` a
{
�� 

expression
�� "
=
��# $

Expression
��% /
.
��/ 0
Conjunction
��0 ;
(
��; <
)
��< =
;
��= >#
BuildWhereExpressions
�� -
(
��- .
entry
��. 3
.
��3 4
Value
��4 9
,
��9 :
(
��; <
Junction
��< D
)
��D E

expression
��E O
,
��O P

tableAlias
��Q [
,
��[ \
fieldContext
��] i
,
��i j
indexAliases
��k w
)
��w x
;
��x y
}
�� 
else
�� 
if
�� 
(
�� 
string
�� #
.
��# $
Equals
��$ *
(
��* +
values
��+ 1
[
��1 2
$num
��2 3
]
��3 4
,
��4 5
$str
��6 ;
,
��; <
StringComparison
��= M
.
��M N
OrdinalIgnoreCase
��N _
)
��_ `
)
��` a
{
�� 

expression
�� "
=
��# $

Expression
��% /
.
��/ 0
Conjunction
��0 ;
(
��; <
)
��< =
;
��= >#
BuildWhereExpressions
�� -
(
��- .
entry
��. 3
.
��3 4
Value
��4 9
,
��9 :
(
��; <
Junction
��< D
)
��D E

expression
��E O
,
��O P

tableAlias
��Q [
,
��[ \
fieldContext
��] i
,
��i j
indexAliases
��k w
)
��w x
;
��x y

expression
�� "
=
��# $

Expression
��% /
.
��/ 0
Not
��0 3
(
��3 4

expression
��4 >
)
��> ?
;
��? @
}
�� 
else
�� 
if
�� 
(
�� 
entry
�� "
.
��" #
	HasValues
��# ,
&&
��- /
entry
��0 5
.
��5 6
Value
��6 ;
.
��; <
Type
��< @
==
��A C

JTokenType
��D N
.
��N O
Object
��O U
)
��U V
{
�� #
BuildWhereExpressions
�� -
(
��- .
entry
��. 3
.
��3 4
Value
��4 9
,
��9 :
expressions
��; F
,
��F G
values
��H N
[
��N O
$num
��O P
]
��P Q
,
��Q R
fieldContext
��S _
,
��_ `
indexAliases
��a m
)
��m n
;
��n o
}
�� 
else
�� 
{
�� 
var
�� 
propertyValue
�� )
=
��* +
entry
��, 1
.
��1 2
Value
��2 7
.
��7 8
ToObject
��8 @
<
��@ A
object
��A G
>
��G H
(
��H I
)
��I J
;
��J K

expression
�� "
=
��# $

Expression
��% /
.
��/ 0
Equal
��0 5
(
��5 6
property
��6 >
,
��> ?
propertyValue
��@ M
)
��M N
;
��N O
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
value
�� 
=
�� 
entry
��  %
.
��% &
Value
��& +
.
��+ ,
ToObject
��, 4
<
��4 5
object
��5 ;
>
��; <
(
��< =
)
��= >
;
��> ?
switch
�� 
(
�� 
values
�� "
[
��" #
$num
��# $
]
��$ %
)
��% &
{
�� 
case
�� 
$str
�� "
:
��" #

expression
��$ .
=
��/ 0

Expression
��1 ;
.
��; <
Not
��< ?
(
��? @

Expression
��@ J
.
��J K
Equal
��K P
(
��P Q
property
��Q Y
,
��Y Z
value
��[ `
)
��` a
)
��a b
;
��b c
break
��d i
;
��i j
case
�� 
$str
�� !
:
��! "

expression
��# -
=
��. /

Expression
��0 :
.
��: ;
GreaterThan
��; F
(
��F G
property
��G O
,
��O P
value
��Q V
)
��V W
;
��W X
break
��Y ^
;
��^ _
case
�� 
$str
�� "
:
��" #

expression
��$ .
=
��/ 0

Expression
��1 ;
.
��; < 
GreaterThanOrEqual
��< N
(
��N O
property
��O W
,
��W X
value
��Y ^
)
��^ _
;
��_ `
break
��a f
;
��f g
case
�� 
$str
�� !
:
��! "

expression
��# -
=
��. /

Expression
��0 :
.
��: ;
LessThan
��; C
(
��C D
property
��D L
,
��L M
value
��N S
)
��S T
;
��T U
break
��V [
;
��[ \
case
�� 
$str
�� "
:
��" #

expression
��$ .
=
��/ 0

Expression
��1 ;
.
��; <
LessThanOrEqual
��< K
(
��K L
property
��L T
,
��T U
value
��V [
)
��[ \
;
��\ ]
break
��^ c
;
��c d
case
�� 
$str
�� '
:
��' (

expression
��) 3
=
��4 5

Expression
��6 @
.
��@ A
Like
��A E
(
��E F
property
��F N
,
��N O
(
��P Q
string
��Q W
)
��W X
value
��X ]
,
��] ^
MatchOptions
��_ k
.
��k l
Contains
��l t
)
��t u
;
��u v
break
��w |
;
��| }
case
�� 
$str
�� +
:
��+ ,

expression
��- 7
=
��8 9

Expression
��: D
.
��D E
Not
��E H
(
��H I

Expression
��I S
.
��S T
Like
��T X
(
��X Y
property
��Y a
,
��a b
(
��c d
string
��d j
)
��j k
value
��k p
,
��p q
MatchOptions
��r ~
.
��~ 
Contains�� �
)��� �
)��� �
;��� �
break��� �
;��� �
case
�� 
$str
�� *
:
��* +

expression
��, 6
=
��7 8

Expression
��9 C
.
��C D
Like
��D H
(
��H I
property
��I Q
,
��Q R
(
��S T
string
��T Z
)
��Z [
value
��[ `
,
��` a
MatchOptions
��b n
.
��n o

StartsWith
��o y
)
��y z
;
��z {
break��| �
;��� �
case
�� 
$str
�� .
:
��. /

expression
��0 :
=
��; <

Expression
��= G
.
��G H
Not
��H K
(
��K L

Expression
��L V
.
��V W
Like
��W [
(
��[ \
property
��\ d
,
��d e
(
��f g
string
��g m
)
��m n
value
��n s
,
��s t
MatchOptions��u �
.��� �

StartsWith��� �
)��� �
)��� �
;��� �
break��� �
;��� �
case
�� 
$str
�� (
:
��( )

expression
��* 4
=
��5 6

Expression
��7 A
.
��A B
Like
��B F
(
��F G
property
��G O
,
��O P
(
��Q R
string
��R X
)
��X Y
value
��Y ^
,
��^ _
MatchOptions
��` l
.
��l m
EndsWith
��m u
)
��u v
;
��v w
break
��x }
;
��} ~
case
�� 
$str
�� ,
:
��, -

expression
��. 8
=
��9 :

Expression
��; E
.
��E F
Not
��F I
(
��I J

Expression
��J T
.
��T U
Like
��U Y
(
��Y Z
property
��Z b
,
��b c
(
��d e
string
��e k
)
��k l
value
��l q
,
��q r
MatchOptions
��s 
.�� �
EndsWith��� �
)��� �
)��� �
;��� �
break��� �
;��� �
case
�� 
$str
�� !
:
��! "

expression
��# -
=
��. /

Expression
��0 :
.
��: ;
In
��; =
(
��= >
property
��> F
,
��F G
entry
��H M
.
��M N
Value
��N S
.
��S T
ToObject
��T \
<
��\ ]
object
��] c
[
��c d
]
��d e
>
��e f
(
��f g
)
��g h
)
��h i
;
��i j
break
��k p
;
��p q
case
�� 
$str
�� %
:
��% &

expression
��' 1
=
��2 3

Expression
��4 >
.
��> ?
Not
��? B
(
��B C

Expression
��C M
.
��M N
In
��N P
(
��P Q
property
��Q Y
,
��Y Z
entry
��[ `
.
��` a
Value
��a f
.
��f g
ToObject
��g o
<
��o p
object
��p v
[
��v w
]
��w x
>
��x y
(
��y z
)
��z {
)
��{ |
)
��| }
;
��} ~
break�� �
;��� �
default
�� 
:
��  

expression
��! +
=
��, -

Expression
��. 8
.
��8 9
Equal
��9 >
(
��> ?
property
��? G
,
��G H
value
��I N
)
��N O
;
��O P
break
��Q V
;
��V W
}
�� 
}
�� 
if
�� 
(
�� 

expression
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
expressions
�� 
.
��  
Add
��  #
(
��# $

expression
��$ .
)
��. /
;
��/ 0
}
�� 
}
�� 
}
�� 	
private
�� 
IQuery
�� 
<
�� 
ContentItem
�� "
,
��" #
ContentItemIndex
��$ 4
>
��4 5
OrderBy
��6 =
(
��= >
IQuery
��> D
<
��D E
ContentItem
��E P
,
��P Q
ContentItemIndex
��R b
>
��b c
query
��d i
,
��i j!
ResolveFieldContext
�� 
context
��  '
)
��' (
{
�� 	
if
�� 
(
�� 
context
�� 
.
�� "
HasPopulatedArgument
�� ,
(
��, -
$str
��- 6
)
��6 7
)
��7 8
{
�� 
var
�� 
orderByArguments
�� $
=
��% &
JObject
��' .
.
��. /

FromObject
��/ 9
(
��9 :
context
��: A
.
��A B
	Arguments
��B K
[
��K L
$str
��L U
]
��U V
)
��V W
;
��W X
if
�� 
(
�� 
orderByArguments
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
var
�� 
thenBy
�� 
=
��  
false
��! &
;
��& '
foreach
�� 
(
�� 
var
��  
property
��! )
in
��* ,
orderByArguments
��- =
.
��= >

Properties
��> H
(
��H I
)
��I J
)
��J K
{
�� 
var
�� 
	direction
�� %
=
��& '
(
��( )
OrderByDirection
��) 9
)
��9 :
property
��: B
.
��B C
Value
��C H
.
��H I
Value
��I N
<
��N O
int
��O R
>
��R S
(
��S T
)
��T U
;
��U V

Expression
�� "
<
��" #
Func
��# '
<
��' (
ContentItemIndex
��( 8
,
��8 9
object
��: @
>
��@ A
>
��A B
selector
��C K
=
��L M
null
��N R
;
��R S
switch
�� 
(
��  
property
��  (
.
��( )
Name
��) -
)
��- .
{
�� 
case
��  
$str
��! 0
:
��0 1
selector
��2 :
=
��; <
x
��= >
=>
��? A
x
��B C
.
��C D
ContentItemId
��D Q
;
��Q R
break
��S X
;
��X Y
case
��  
$str
��! 7
:
��7 8
selector
��9 A
=
��B C
x
��D E
=>
��F H
x
��I J
.
��J K"
ContentItemVersionId
��K _
;
��_ `
break
��a f
;
��f g
case
��  
$str
��! .
:
��. /
selector
��0 8
=
��9 :
x
��; <
=>
��= ?
x
��@ A
.
��A B
DisplayText
��B M
;
��M N
break
��O T
;
��T U
case
��  
$str
��! ,
:
��, -
selector
��. 6
=
��7 8
x
��9 :
=>
��; =
x
��> ?
.
��? @
	Published
��@ I
;
��I J
break
��K P
;
��P Q
case
��  
$str
��! )
:
��) *
selector
��+ 3
=
��4 5
x
��6 7
=>
��8 :
x
��; <
.
��< =
Latest
��= C
;
��C D
break
��E J
;
��J K
case
��  
$str
��! -
:
��- .
selector
��/ 7
=
��8 9
x
��: ;
=>
��< >
x
��? @
.
��@ A

CreatedUtc
��A K
;
��K L
break
��M R
;
��R S
case
��  
$str
��! .
:
��. /
selector
��0 8
=
��9 :
x
��; <
=>
��= ?
x
��@ A
.
��A B
ModifiedUtc
��B M
;
��M N
break
��O T
;
��T U
case
��  
$str
��! /
:
��/ 0
selector
��1 9
=
��: ;
x
��< =
=>
��> @
x
��A B
.
��B C
PublishedUtc
��C O
;
��O P
break
��Q V
;
��V W
case
��  
$str
��! (
:
��( )
selector
��* 2
=
��3 4
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Owner
��< A
;
��A B
break
��C H
;
��H I
case
��  
$str
��! )
:
��) *
selector
��+ 3
=
��4 5
x
��6 7
=>
��8 :
x
��; <
.
��< =
Author
��= C
;
��C D
break
��E J
;
��J K
}
�� 
if
�� 
(
�� 
selector
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
if
�� 
(
��  
!
��  !
thenBy
��! '
)
��' (
{
�� 
query
��  %
=
��& '
	direction
��( 1
==
��2 4
OrderByDirection
��5 E
.
��E F
	Ascending
��F O
?
��( )
query
��* /
.
��/ 0
OrderBy
��0 7
(
��7 8
selector
��8 @
)
��@ A
:
��( )
query
��* /
.
��/ 0
OrderByDescending
��0 A
(
��A B
selector
��B J
)
��J K
;
��$ %
}
�� 
else
��  
{
�� 
query
��  %
=
��& '
	direction
��( 1
==
��2 4
OrderByDirection
��5 E
.
��E F
	Ascending
��F O
?
��( )
query
��* /
.
��/ 0
ThenBy
��0 6
(
��6 7
selector
��7 ?
)
��? @
:
��( )
query
��* /
.
��/ 0
ThenByDescending
��0 @
(
��@ A
selector
��A I
)
��I J
;
��$ %
}
�� 
thenBy
�� "
=
��# $
true
��% )
;
��) *
}
�� 
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
OrderByDescending
�� /
(
��/ 0
x
��0 1
=>
��2 4
x
��5 6
.
��6 7

CreatedUtc
��7 A
)
��A B
;
��B C
}
�� 
return
�� 
query
�� 
;
�� 
}
�� 	
}
�� 
}�� �6
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\ContentTypeQuery.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

class 
ContentTypeQuery !
:" #
ISchemaBuilder$ 2
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IOptions !
<! "!
GraphQLContentOptions" 7
>7 8#
_contentOptionsAccessor9 P
;P Q
private 
readonly 
IOptions !
<! "
GraphQLSettings" 1
>1 2
_settingsAccessor3 D
;D E
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ContentTypeQuery 
(   
IHttpContextAccessor  4
httpContextAccessor5 H
,H I
IOptions 
< !
GraphQLContentOptions *
>* +"
contentOptionsAccessor, B
,B C
IOptions 
< 
GraphQLSettings $
>$ %
settingsAccessor& 6
,6 7
IStringLocalizer 
< 
ContentTypeQuery -
>- .
	localizer/ 8
)8 9
{   	 
_httpContextAccessor!!  
=!!! "
httpContextAccessor!!# 6
;!!6 7#
_contentOptionsAccessor"" #
=""$ %"
contentOptionsAccessor""& <
;""< =
_settingsAccessor## 
=## 
settingsAccessor##  0
;##0 1
S$$ 
=$$ 
	localizer$$ 
;$$ 
}%% 	
public'' 
Task'' 
<'' 
string'' 
>'' 
GetIdentifierAsync'' .
(''. /
)''/ 0
{(( 	
var)) $
contentDefinitionManager)) (
=))) * 
_httpContextAccessor))+ ?
.))? @
HttpContext))@ K
.))K L
RequestServices))L [
.))[ \

GetService))\ f
<))f g&
IContentDefinitionManager	))g �
>
))� �
(
))� �
)
))� �
;
))� �
return** $
contentDefinitionManager** +
.**+ ,
GetIdentifierAsync**, >
(**> ?
)**? @
;**@ A
}++ 	
public-- 
Task-- 

BuildAsync-- 
(-- 
ISchema-- &
schema--' -
)--- .
{.. 	
var// 
serviceProvider// 
=//  ! 
_httpContextAccessor//" 6
.//6 7
HttpContext//7 B
.//B C
RequestServices//C R
;//R S
var11 $
contentDefinitionManager11 (
=11) *
serviceProvider11+ :
.11: ;

GetService11; E
<11E F%
IContentDefinitionManager11F _
>11_ `
(11` a
)11a b
;11b c
var22 
contentTypeBuilders22 #
=22$ %
serviceProvider22& 5
.225 6
GetServices226 A
<22A B
IContentTypeBuilder22B U
>22U V
(22V W
)22W X
.22X Y
ToList22Y _
(22_ `
)22` a
;22a b
foreach44 
(44 
var44 
typeDefinition44 '
in44( *$
contentDefinitionManager44+ C
.44C D
ListTypeDefinitions44D W
(44W X
)44X Y
)44Y Z
{55 
var66 
typeType66 
=66 
new66 "
ContentItemType66# 2
(662 3#
_contentOptionsAccessor663 J
)66J K
{77 
Name88 
=88 
typeDefinition88 )
.88) *
Name88* .
,88. /
Description99 
=99  !
S99" #
[99# $
$str99$ 7
,997 8
typeDefinition999 G
.99G H
DisplayName99H S
]99S T
}:: 
;:: 
var<< 
query<< 
=<< 
new<< !
ContentItemsFieldType<<  5
(<<5 6
typeDefinition<<6 D
.<<D E
Name<<E I
,<<I J
schema<<K Q
,<<Q R#
_contentOptionsAccessor<<S j
,<<j k
_settingsAccessor<<l }
)<<} ~
{== 
Name>> 
=>> 
typeDefinition>> )
.>>) *
Name>>* .
,>>. /
Description?? 
=??  !
S??" #
[??# $
$str??$ 7
,??7 8
typeDefinition??9 G
.??G H
DisplayName??H S
]??S T
,??T U
ResolvedType@@  
=@@! "
new@@# &
ListGraphType@@' 4
(@@4 5
typeType@@5 =
)@@= >
}AA 
;AA 
queryCC 
.CC 
RequirePermissionCC '
(CC' (
CommonPermissionsCC( 9
.CC9 :
ViewContentCC: E
,CCE F
typeDefinitionCCG U
.CCU V
NameCCV Z
)CCZ [
;CC[ \
foreachEE 
(EE 
varEE 
builderEE $
inEE% '
contentTypeBuildersEE( ;
)EE; <
{FF 
builderGG 
.GG 
BuildGG !
(GG! "
queryGG" '
,GG' (
typeDefinitionGG) 7
,GG7 8
typeTypeGG9 A
)GGA B
;GGB C
}HH 
varJJ 
settingsJJ 
=JJ 
typeDefinitionJJ -
.JJ- .
GetSettingsJJ. 9
<JJ9 :
ContentTypeSettingsJJ: M
>JJM N
(JJN O
)JJO P
;JJP Q
ifMM 
(MM 
settingsMM 
==MM 
nullMM  $
||MM% '
StringMM( .
.MM. /
IsNullOrWhiteSpaceMM/ A
(MMA B
settingsMMB J
.MMJ K

StereotypeMMK U
)MMU V
)MMV W
{NN 
schemaOO 
.OO 
QueryOO  
.OO  !
AddFieldOO! )
(OO) *
queryOO* /
)OO/ 0
;OO0 1
}PP 
elseQQ 
{RR 
schemaTT 
.TT 
RegisterTypeTT '
(TT' (
typeTypeTT( 0
)TT0 1
;TT1 2
}UU 
}VV 
foreachXX 
(XX 
varXX 
builderXX  
inXX! #
contentTypeBuildersXX$ 7
)XX7 8
{YY 
builderZZ 
.ZZ 
ClearZZ 
(ZZ 
)ZZ 
;ZZ  
}[[ 
return]] 
Task]] 
.]] 
CompletedTask]] %
;]]% &
}^^ 	
}__ 
}`` �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\GraphQLFilter.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

abstract 
class 
GraphQLFilter '
<' (
TSourceType( 3
>3 4
:5 6
IGraphQLFilter7 E
<E F
TSourceTypeF Q
>Q R
whereS X
TSourceTypeY d
:e f
classg l
{		 
public

 
virtual

 
Task

 
<

 
IQuery

 "
<

" #
TSourceType

# .
>

. /
>

/ 0
PreQueryAsync

1 >
(

> ?
IQuery

? E
<

E F
TSourceType

F Q
>

Q R
query

S X
,

X Y
ResolveFieldContext

Z m
context

n u
)

u v
{ 	
return 
Task 
. 

FromResult "
(" #
query# (
)( )
;) *
} 	
public 
virtual 
Task 
< 
IEnumerable '
<' (
TSourceType( 3
>3 4
>4 5
PostQueryAsync6 D
(D E
IEnumerableE P
<P Q
TSourceTypeQ \
>\ ]
contentItems^ j
,j k
ResolveFieldContextl 
context
� �
)
� �
{ 	
return 
Task 
. 

FromResult "
(" #
contentItems# /
)/ 0
;0 1
} 	
} 
} �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\IGraphQLFilter.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

	interface 
IGraphQLFilter #
<# $
TSourceType$ /
>/ 0
where1 6
TSourceType7 B
:C D
classE J
{		 
Task

 
<

 
IQuery

 
<

 
TSourceType

 
>

  
>

  !
PreQueryAsync

" /
(

/ 0
IQuery

0 6
<

6 7
TSourceType

7 B
>

B C
query

D I
,

I J
ResolveFieldContext

K ^
context

_ f
)

f g
;

g h
Task 
< 
IEnumerable 
< 
TSourceType $
>$ %
>% &
PostQueryAsync' 5
(5 6
IEnumerable6 A
<A B
TSourceTypeB M
>M N
contentItemsO [
,[ \
ResolveFieldContext] p
contextq x
)x y
;y z
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\IIndexAliasProvider.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

	interface 
IIndexAliasProvider (
{ 
IEnumerable 
< 

IndexAlias 
> 

GetAliases  *
(* +
)+ ,
;, -
} 
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\IIndexPropertyProvider.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

	interface "
IIndexPropertyProvider +
{ 
public 
string 
	IndexName 
{  !
get" %
;% &
}' (
public 
bool 
TryGetValue 
(  
string  &
propertyName' 3
,3 4
out5 8
string9 ?
indexPropertyName@ Q
)Q R
;R S
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\IndexAlias.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

class 

IndexAlias 
{ 
public 
string 
Alias 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Index		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public 
Type 
	IndexType 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\IndexPropertyProvider.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

class !
IndexPropertyProvider &
<& '
T' (
>( )
:* +"
IIndexPropertyProvider, B
whereC H
TI J
:K L
MapIndexM U
{		 
private

 
static

 

Dictionary

 !
<

! "
string

" (
,

( )
string

* 0
>

0 1
_indexProperties

2 B
=

C D
new

E H

Dictionary

I S
<

S T
string

T Z
,

Z [
string

\ b
>

b c
(

c d
StringComparer

d r
.

r s
OrdinalIgnoreCase	

s �
)


� �
;


� �
private 
static 
string 

_indexName (
;( )
static !
IndexPropertyProvider $
($ %
)% &
{ 	
foreach 
( 
var 
property !
in" $
typeof% +
(+ ,
T, -
)- .
.. /
GetProperties/ <
(< =
BindingFlags= I
.I J
PublicJ P
|Q R
BindingFlagsS _
._ `
Instance` h
|i j
BindingFlagsk w
.w x

IgnoreCase	x �
)
� �
)
� �
{ 
_indexProperties  
[  !
property! )
.) *
Name* .
]. /
=0 1
property2 :
.: ;
Name; ?
;? @
} 

_indexName 
= 
typeof 
(  
T  !
)! "
." #
Name# '
;' (
} 	
public 
string 
	IndexName 
=>  "

_indexName# -
;- .
public 
bool 
TryGetValue 
(  
string  &
propertyName' 3
,3 4
out5 8
string9 ?
indexPropertyName@ Q
)Q R
{ 	
return 
_indexProperties #
.# $
TryGetValue$ /
(/ 0
propertyName0 <
,< =
out> A
indexPropertyNameB S
)S T
;T U
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\AndExpression.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 
AndExpression 
:  
LogicalExpression! 2
{ 
public 
AndExpression 
( 

IPredicate '
left( ,
,, -

IPredicate. 8
right9 >
)> ?
:@ A
baseB F
(F G
leftG K
,K L
rightM R
)R S
{ 	
} 	
	protected 
override 
string !
Operator" *
=>+ -
$str. 3
;3 4
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\Conjunction.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 
Conjunction 
: 
Junction '
{ 
	protected		 
override		 
string		 !
	Operation		" +
=>		, .
$str		/ 6
;		6 7
	protected 
override 
string !
EmptyExpression" 1
=>2 4
$str5 :
;: ;
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\Disjunction.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 
Disjunction 
: 
Junction '
{ 
	protected		 
override		 
string		 !
	Operation		" +
=>		, .
$str		/ 5
;		5 6
	protected 
override 
string !
EmptyExpression" 1
=>2 4
$str5 :
;: ;
} 
} �+
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\Expressions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 

Expression 
{ 
	protected

 

Expression

 
(

 
)

 
{ 	
} 	
public 
static 
SimpleExpression &
Equal' ,
(, -
string- 3
propertyName4 @
,@ A
objectB H
valueI N
)N O
{ 	
return 
new 
SimpleExpression '
(' (
propertyName( 4
,4 5
value6 ;
,; <
$str= B
)B C
;C D
} 	
public 
static 

IPredicate  
Like! %
(% &
string& ,
propertyName- 9
,9 :
string; A
valueB G
,G H
MatchOptionsI U
matchOptionsV b
)b c
{   	
return!! 
new!! 
LikeExpression!! %
(!!% &
propertyName!!& 2
,!!2 3
value!!4 9
,!!9 :
matchOptions!!; G
)!!G H
;!!H I
}"" 	
public)) 
static)) 
SimpleExpression)) &
GreaterThan))' 2
())2 3
string))3 9
propertyName)): F
,))F G
object))H N
value))O T
)))T U
{** 	
return++ 
new++ 
SimpleExpression++ '
(++' (
propertyName++( 4
,++4 5
value++6 ;
,++; <
$str++= B
)++B C
;++C D
},, 	
public33 
static33 
SimpleExpression33 &
GreaterThanOrEqual33' 9
(339 :
string33: @
propertyName33A M
,33M N
object33O U
value33V [
)33[ \
{44 	
return55 
new55 
SimpleExpression55 '
(55' (
propertyName55( 4
,554 5
value556 ;
,55; <
$str55= C
)55C D
;55D E
}66 	
public== 
static== 
SimpleExpression== &
LessThan==' /
(==/ 0
string==0 6
propertyName==7 C
,==C D
object==E K
value==L Q
)==Q R
{>> 	
return?? 
new?? 
SimpleExpression?? '
(??' (
propertyName??( 4
,??4 5
value??6 ;
,??; <
$str??= B
)??B C
;??C D
}@@ 	
publicGG 
staticGG 
SimpleExpressionGG &
LessThanOrEqualGG' 6
(GG6 7
stringGG7 =
propertyNameGG> J
,GGJ K
objectGGL R
valueGGS X
)GGX Y
{HH 	
returnII 
newII 
SimpleExpressionII '
(II' (
propertyNameII( 4
,II4 5
valueII6 ;
,II; <
$strII= C
)IIC D
;IID E
}JJ 	
publicRR 
staticRR 

IPredicateRR  
InRR! #
(RR# $
stringRR$ *
propertyNameRR+ 7
,RR7 8
objectRR9 ?
[RR? @
]RR@ A
valuesRRB H
)RRH I
{SS 	
returnTT 
newTT 
InExpressionTT #
(TT# $
propertyNameTT$ 0
,TT0 1
valuesTT2 8
)TT8 9
;TT9 :
}UU 	
public]] 
static]] 

IPredicate]]  
And]]! $
(]]$ %

IPredicate]]% /
left]]0 4
,]]4 5

IPredicate]]6 @
right]]A F
)]]F G
{^^ 	
return__ 
new__ 
AndExpression__ $
(__$ %
left__% )
,__) *
right__+ 0
)__0 1
;__1 2
}`` 	
publichh 
statichh 

IPredicatehh  
Orhh! #
(hh# $

IPredicatehh$ .
lefthh/ 3
,hh3 4

IPredicatehh5 ?
righthh@ E
)hhE F
{ii 	
returnjj 
newjj 
OrExpressionjj #
(jj# $
leftjj$ (
,jj( )
rightjj* /
)jj/ 0
;jj0 1
}kk 	
publicrr 
staticrr 

IPredicaterr  
Notrr! $
(rr$ %

IPredicaterr% /

expressionrr0 :
)rr: ;
{ss 	
returntt 
newtt 
NotExpressiontt $
(tt$ %

expressiontt% /
)tt/ 0
;tt0 1
}uu 	
publiczz 
staticzz 
Conjunctionzz !
Conjunctionzz" -
(zz- .
)zz. /
{{{ 	
return|| 
new|| 
Conjunction|| "
(||" #
)||# $
;||$ %
}}} 	
public
�� 
static
�� 
Disjunction
�� !
Disjunction
��" -
(
��- .
)
��. /
{
�� 	
return
�� 
new
�� 
Disjunction
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\InExpression.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 
InExpression 
: 

IPredicate  *
{		 
private

 
readonly

 
string

 
_propertyName

  -
;

- .
public 
InExpression 
( 
string "
propertyName# /
,/ 0
object1 7
[7 8
]8 9
values: @
)@ A
{ 	
_propertyName 
= 
propertyName (
;( )
Values 
= 
values 
; 
} 	
public 
object 
[ 
] 
Values 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
void 
SearchUsedAlias #
(# $
IPredicateQuery$ 3
predicateQuery4 B
)B C
{ 	
predicateQuery 
. 
SearchUsedAlias *
(* +
_propertyName+ 8
)8 9
;9 :
} 	
public 
string 
ToSqlString !
(! "
IPredicateQuery" 1
predicateQuery2 @
)@ A
{ 	
if 
( 
Values 
. 
Length 
==  
$num! "
)" #
return$ *
$str+ 0
;0 1
var!! 
array!! 
=!! 
new!! 
StringBuilder!! )
(!!) *
)!!* +
;!!+ ,
for"" 
("" 
var"" 
i"" 
="" 
$num"" 
;"" 
i"" 
<"" 
Values""  &
.""& '
Length""' -
;""- .
i""/ 0
++""0 2
)""2 3
{## 
var$$ 
	parameter$$ 
=$$ 
predicateQuery$$  .
.$$. /
NewQueryParameter$$/ @
($$@ A
Values$$A G
[$$G H
i$$H I
]$$I J
)$$J K
;$$K L
if&& 
(&& 
i&& 
>&& 
$num&& 
)&& 
array&&  
.&&  !
Append&&! '
(&&' (
$str&&( ,
)&&, -
;&&- .
array'' 
.'' 
Append'' 
('' 
	parameter'' &
)''& '
;''' (
}(( 
var** 

columnName** 
=** 
predicateQuery** +
.**+ ,
GetColumnName**, 9
(**9 :
_propertyName**: G
)**G H
;**H I
var++ 
inClause++ 
=++ 
predicateQuery++ )
.++) *
Dialect++* 1
.++1 2
InSelectOperator++2 B
(++B C
array++C H
.++H I
ToString++I Q
(++Q R
)++R S
)++S T
;++T U
return-- 
$"-- 
{-- 

columnName--  
}--  !
{--" #
inClause--# +
}--+ ,
"--, -
;--- .
}.. 	
}// 
}00 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\IPredicate.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

	interface 

IPredicate 
{ 
string		 
ToSqlString		 
(		 
IPredicateQuery		 *
predicateQuery		+ 9
)		9 :
;		: ;
void 
SearchUsedAlias 
( 
IPredicateQuery ,
predicateQuery- ;
); <
;< =
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\IPredicateQuery.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public		 

	interface		 
IPredicateQuery		 $
{

 
ISqlDialect 
Dialect 
{ 
get !
;! "
set# &
;& '
}( )
IDictionary 
< 
string 
, 
object "
>" #

Parameters$ .
{/ 0
get1 4
;4 5
}6 7
string 
NewQueryParameter  
(  !
object! '
value( -
)- .
;. /
void 
CreateAlias 
( 
string 
path  $
,$ %
string& ,
alias- 2
)2 3
;3 4
void"" 
CreateTableAlias"" 
("" 
string"" $
path""% )
,"") *
string""+ 1

tableAlias""2 <
)""< =
;""= >
void(( 
SearchUsedAlias(( 
((( 
string(( #
propertyPath(($ 0
)((0 1
;((1 2
string// 
GetColumnName// 
(// 
string// #
propertyPath//$ 0
)//0 1
;//1 2
IEnumerable55 
<55 
string55 
>55 
GetUsedAliases55 *
(55* +
)55+ ,
;55, -
}66 
}77 �!
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\Junction.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public

 

abstract

 
class

 
Junction

 "
:

# $

IPredicate

% /
{ 
private 
readonly 
IList 
< 

IPredicate )
>) *
_predicates+ 6
=7 8
new9 <
List= A
<A B

IPredicateB L
>L M
(M N
)N O
;O P
	protected 
abstract 
string !
	Operation" +
{, -
get. 1
;1 2
}3 4
	protected 
abstract 
string !
EmptyExpression" 1
{2 3
get4 7
;7 8
}9 :
public 
void 
SearchUsedAlias #
(# $
IPredicateQuery$ 3
predicateQuery4 B
)B C
{ 	
if 
( 
_predicates 
. 
Count !
==" $
$num% &
)& '
return( .
;. /
for 
( 
var 
i 
= 
$num 
; 
i 
< 
_predicates  +
.+ ,
Count, 1
;1 2
i3 4
++4 6
)6 7
{ 
_predicates 
[ 
i 
] 
. 
SearchUsedAlias .
(. /
predicateQuery/ =
)= >
;> ?
}   
}"" 	
public$$ 
string$$ 
ToSqlString$$ !
($$! "
IPredicateQuery$$" 1
predicateQuery$$2 @
)$$@ A
{%% 	
if&& 
(&& 
_predicates&& 
.&& 
Count&& !
==&&" $
$num&&% &
)&&& '
return&&( .
EmptyExpression&&/ >
;&&> ?
var(( 

sqlBuilder(( 
=(( 
new((  
StringBuilder((! .
(((. /
)((/ 0
;((0 1

sqlBuilder** 
.** 
Append** 
(** 
$char** !
)**! "
;**" #
for,, 
(,, 
var,, 
i,, 
=,, 
$num,, 
;,, 
i,, 
<,, 
_predicates,,  +
.,,+ ,
Count,,, 1
-,,2 3
$num,,4 5
;,,5 6
i,,7 8
++,,8 :
),,: ;
{-- 

sqlBuilder.. 
... 
Append.. !
(..! "
_predicates.." -
[..- .
i... /
]../ 0
...0 1
ToSqlString..1 <
(..< =
predicateQuery..= K
)..K L
)..L M
;..M N

sqlBuilder// 
.// 
Append// !
(//! "
	Operation//" +
)//+ ,
;//, -
}00 

sqlBuilder22 
.22 
Append22 
(22 
_predicates22 )
[22) *
_predicates22* 5
.225 6
Count226 ;
-22< =
$num22> ?
]22? @
.22@ A
ToSqlString22A L
(22L M
predicateQuery22M [
)22[ \
)22\ ]
;22] ^

sqlBuilder44 
.44 
Append44 
(44 
$char44 !
)44! "
;44" #
return66 

sqlBuilder66 
.66 
ToString66 &
(66& '
)66' (
;66( )
}77 	
publicAA 
JunctionAA 
AddAA 
(AA 

IPredicateAA &
	predicateAA' 0
)AA0 1
{BB 	
_predicatesCC 
.CC 
AddCC 
(CC 
	predicateCC %
)CC% &
;CC& '
returnDD 
thisDD 
;DD 
}EE 	
}FF 
}GG �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\LikeExpression.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 
LikeExpression 
:  !

IPredicate" ,
{ 
private 
readonly 
string 
_propertyName  -
;- .
private		 
readonly		 
string		 
_value		  &
;		& '
public 
LikeExpression 
( 
string $
propertyName% 1
,1 2
string3 9
value: ?
,? @
MatchOptionsA M
matchOptionsN Z
)Z [
: 
this 
( 
propertyName 
,  
matchOptions! -
.- .
ToMatchString. ;
(; <
value< A
)A B
)B C
{ 	
} 	
public 
LikeExpression 
( 
string $
propertyName% 1
,1 2
string3 9
value: ?
)? @
{ 	
_propertyName 
= 
propertyName (
;( )
_value 
= 
value 
; 
} 	
public 
void 
SearchUsedAlias #
(# $
IPredicateQuery$ 3
predicateQuery4 B
)B C
{ 	
predicateQuery 
. 
SearchUsedAlias *
(* +
_propertyName+ 8
)8 9
;9 :
} 	
public 
string 
ToSqlString !
(! "
IPredicateQuery" 1
predicateQuery2 @
)@ A
{ 	
var 

columnName 
= 
predicateQuery +
.+ ,
GetColumnName, 9
(9 :
_propertyName: G
)G H
;H I
var 
	parameter 
= 
predicateQuery *
.* +
NewQueryParameter+ <
(< =
_value= C
)C D
;D E
return   
$"   
{   

columnName    
}    !
 like   ! '
{  ' (
	parameter  ( 1
}  1 2
"  2 3
;  3 4
}!! 	
}"" 
}## �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\LogicalExpression.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

abstract 
class 
LogicalExpression +
:, -

IPredicate. 8
{ 
	protected 
LogicalExpression #
(# $

IPredicate$ .
left/ 3
,3 4

IPredicate5 ?
right@ E
)E F
{ 	
Left 
= 
left 
; 
Right 
= 
right 
; 
} 	
	protected 

IPredicate 
Left !
{" #
get$ '
;' (
}) *
	protected 

IPredicate 
Right "
{# $
get% (
;( )
}* +
	protected"" 
abstract"" 
string"" !
Operator""" *
{""+ ,
get""- 0
;""0 1
}""2 3
public$$ 
void$$ 
SearchUsedAlias$$ #
($$# $
IPredicateQuery$$$ 3
predicateQuery$$4 B
)$$B C
{%% 	
Left&& 
.&& 
SearchUsedAlias&&  
(&&  !
predicateQuery&&! /
)&&/ 0
;&&0 1
Right'' 
.'' 
SearchUsedAlias'' !
(''! "
predicateQuery''" 0
)''0 1
;''1 2
}(( 	
public** 
string** 
ToSqlString** !
(**! "
IPredicateQuery**" 1
predicateQuery**2 @
)**@ A
{++ 	
var,, 
left,, 
=,, 
Left,, 
.,, 
ToSqlString,, '
(,,' (
predicateQuery,,( 6
),,6 7
;,,7 8
var-- 
right-- 
=-- 
Right-- 
.-- 
ToSqlString-- )
(--) *
predicateQuery--* 8
)--8 9
;--9 :
return// 
$"// 
(// 
{// 
left// 
}// 
{// 
Operator// &
}//& '
{//( )
right//) .
}//. /
)/// 0
"//0 1
;//1 2
}00 	
}11 
}22 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\MatchOptions.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

abstract 
class 
MatchOptions &
{ 
public 
static 
readonly 
MatchOptions +

StartsWith, 6
=7 8
new9 <"
StartsWithMatchOptions= S
(S T
)T U
;U V
public 
static 
readonly 
MatchOptions +
EndsWith, 4
=5 6
new7 : 
EndsWithMatchOptions; O
(O P
)P Q
;Q R
public 
static 
readonly 
MatchOptions +
Contains, 4
=5 6
new7 : 
ContainsMatchOptions; O
(O P
)P Q
;Q R
public 
abstract 
string 
ToMatchString ,
(, -
string- 3
pattern4 ;
); <
;< =
private$$ 
class$$ "
StartsWithMatchOptions$$ ,
:$$- .
MatchOptions$$/ ;
{%% 	
public'' 
override'' 
string'' "
ToMatchString''# 0
(''0 1
string''1 7
pattern''8 ?
)''? @
{(( 
return)) 
pattern)) 
+))  
$char))! $
;))$ %
}** 
}++ 	
private00 
class00  
EndsWithMatchOptions00 *
:00+ ,
MatchOptions00- 9
{11 	
public33 
override33 
string33 "
ToMatchString33# 0
(330 1
string331 7
pattern338 ?
)33? @
{44 
return55 
$char55 
+55 
pattern55 $
;55$ %
}66 
}77 	
private<< 
class<<  
ContainsMatchOptions<< *
:<<+ ,
MatchOptions<<- 9
{== 	
public?? 
override?? 
string?? "
ToMatchString??# 0
(??0 1
string??1 7
pattern??8 ?
)??? @
{@@ 
returnAA 
$charAA 
+AA 
patternAA $
+AA% &
$charAA' *
;AA* +
}BB 
}CC 	
}DD 
}EE �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\NotExpression.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 
NotExpression 
:  

IPredicate! +
{ 
private 
readonly 

IPredicate #

_predicate$ .
;. /
public 
NotExpression 
( 

IPredicate '
	predicate( 1
)1 2
{ 	

_predicate 
= 
	predicate "
;" #
} 	
public 
void 
SearchUsedAlias #
(# $
IPredicateQuery$ 3
predicateQuery4 B
)B C
{ 	

_predicate 
. 
SearchUsedAlias &
(& '
predicateQuery' 5
)5 6
;6 7
} 	
public 
string 
ToSqlString !
(! "
IPredicateQuery" 1
predicateQuery2 @
)@ A
{ 	
var 

expression 
= 

_predicate '
.' (
ToSqlString( 3
(3 4
predicateQuery4 B
)B C
;C D
return 
$" 
not ( 
{ 

expression %
}% &
)& '
"' (
;( )
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\OrExpression.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 
OrExpression 
: 
LogicalExpression  1
{ 
public 
OrExpression 
( 

IPredicate &
left' +
,+ ,

IPredicate- 7
right8 =
)= >
:? @
baseA E
(E F
leftF J
,J K
rightL Q
)Q R
{ 	
} 	
	protected 
override 
string !
Operator" *
=>+ -
$str. 2
;2 3
} 
} �a
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\PredicateQuery.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public		 

class		 
PredicateQuery		 
:		  !
IPredicateQuery		" 1
{

 
private 
readonly 
IEnumerable $
<$ %"
IIndexPropertyProvider% ;
>; <
_propertyProviders= O
;O P
private 
readonly 
HashSet  
<  !
string! '
>' (
_usedAliases) 5
=6 7
new8 ;
HashSet< C
<C D
stringD J
>J K
(K L
)L M
;M N
private 
readonly 

Dictionary #
<# $
string$ *
,* +
string, 2
>2 3
_aliases4 <
== >
new? B

DictionaryC M
<M N
stringN T
,T U
stringV \
>\ ]
(] ^
)^ _
;_ `
private 
readonly 

Dictionary #
<# $
string$ *
,* +
string, 2
>2 3
_tableAliases4 A
=B C
newD G

DictionaryH R
<R S
stringS Y
,Y Z
string[ a
>a b
(b c
)c d
;d e
public 
PredicateQuery 
( 
ISqlDialect )
dialect* 1
,1 2
ShellSettings3 @
shellSettingsA N
,N O
IEnumerableP [
<[ \"
IIndexPropertyProvider\ r
>r s
propertyProviders	t �
)
� �
{ 	
Dialect 
= 
dialect 
; 
_propertyProviders 
=  
propertyProviders! 2
;2 3
} 	
public 
ISqlDialect 
Dialect "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
IDictionary 
< 
string !
,! "
object# )
>) *

Parameters+ 5
{6 7
get8 ;
;; <
}= >
=? @
newA D

DictionaryE O
<O P
stringP V
,V W
objectX ^
>^ _
(_ `
)` a
;a b
public 
string 
NewQueryParameter '
(' (
object( .
value/ 4
)4 5
{ 	
var 
count 
= 

Parameters "
." #
Count# (
;( )
var 
parameterName 
= 
$"  "
@x" $
{$ %
count% *
++ ,
$num- .
}. /
"/ 0
;0 1

Parameters   
.   
Add   
(   
parameterName   (
,  ( )
value  * /
)  / 0
;  0 1
return"" 
parameterName""  
;""  !
}## 	
public%% 
void%% 
CreateAlias%% 
(%%  
string%%  &
path%%' +
,%%+ ,
string%%- 3
alias%%4 9
)%%9 :
{&& 	
if'' 
('' 
path'' 
=='' 
null'' 
)'' 
throw'' #
new''$ '!
ArgumentNullException''( =
(''= >
nameof''> D
(''D E
path''E I
)''I J
)''J K
;''K L
if(( 
((( 
alias(( 
==(( 
null(( 
)(( 
throw(( $
new((% (!
ArgumentNullException(() >
(((> ?
nameof((? E
(((E F
alias((F K
)((K L
)((L M
;((M N
_aliases** 
[** 
path** 
]** 
=** 
alias** "
;**" #
}++ 	
public,, 
void,, 
CreateTableAlias,, $
(,,$ %
string,,% +
path,,, 0
,,,0 1
string,,2 8

tableAlias,,9 C
),,C D
{-- 	
if.. 
(.. 
path.. 
==.. 
null.. 
).. 
throw.. #
new..$ '!
ArgumentNullException..( =
(..= >
nameof..> D
(..D E
path..E I
)..I J
)..J K
;..K L
if// 
(// 

tableAlias// 
==// 
null// "
)//" #
throw//$ )
new//* -!
ArgumentNullException//. C
(//C D
nameof//D J
(//J K

tableAlias//K U
)//U V
)//V W
;//W X
_tableAliases11 
[11 
path11 
]11 
=11  !

tableAlias11" ,
;11, -
}22 	
public55 
void55 
SearchUsedAlias55 #
(55# $
string55$ *
propertyPath55+ 7
)557 8
{66 	
if77 
(77 
propertyPath77 
==77 
null77  $
)77$ %
throw77& +
new77, /!
ArgumentNullException770 E
(77E F
nameof77F L
(77L M
propertyPath77M Y
)77Y Z
)77Z [
;77[ \
if;; 
(;; 
_aliases;; 
.;; 
TryGetValue;; $
(;;$ %
propertyPath;;% 1
,;;1 2
out;;3 6
string;;7 =
alias;;> C
);;C D
);;D E
{<< 
_usedAliases== 
.== 
Add==  
(==  !
alias==! &
)==& '
;==' (
return>> 
;>> 
}?? 
varAA 
valuesAA 
=AA 
propertyPathAA %
.AA% &
SplitAA& +
(AA+ ,
$charAA, /
,AA/ 0
$numAA1 2
)AA2 3
;AA3 4
varDD 
	aliasPathDD 
=DD 
valuesDD "
.DD" #
LengthDD# )
==DD* ,
$numDD- .
?DD/ 0
stringDD1 7
.DD7 8
EmptyDD8 =
:DD> ?
valuesDD@ F
[DDF G
$numDDG H
]DDH I
;DDI J
ifGG 
(GG 
_aliasesGG 
.GG 
TryGetValueGG $
(GG$ %
	aliasPathGG% .
,GG. /
outGG0 3
aliasGG4 9
)GG9 :
)GG: ;
{HH 
varJJ 
propertyProviderJJ $
=JJ% &
_propertyProvidersJJ' 9
.JJ9 :
FirstOrDefaultJJ: H
(JJH I
xJJI J
=>JJK M
xJJN O
.JJO P
	IndexNameJJP Y
.JJY Z
EqualsJJZ `
(JJ` a
aliasJJa f
,JJf g
StringComparisonJJh x
.JJx y
OrdinalIgnoreCase	JJy �
)
JJ� �
)
JJ� �
;
JJ� �
ifLL 
(LL 
propertyProviderLL $
!=LL% '
nullLL( ,
)LL, -
{MM 
ifNN 
(NN 
propertyProviderNN (
.NN( )
TryGetValueNN) 4
(NN4 5
valuesNN5 ;
.NN; <
LastNN< @
(NN@ A
)NNA B
,NNB C
outNND G
varNNH K

columnNameNNL V
)NNV W
)NNW X
{OO 
_usedAliasesPP $
.PP$ %
AddPP% (
(PP( )
aliasPP) .
)PP. /
;PP/ 0
returnQQ 
;QQ 
}RR 
}SS 
elseTT 
{UU 
_usedAliasesVV  
.VV  !
AddVV! $
(VV$ %
aliasVV% *
)VV* +
;VV+ ,
returnWW 
;WW 
}XX 
}YY 
return\\ 
;\\ 
}]] 	
public__ 
string__ 
GetColumnName__ #
(__# $
string__$ *
propertyPath__+ 7
)__7 8
{`` 	
ifaa 
(aa 
propertyPathaa 
==aa 
nullaa  $
)aa$ %
throwaa& +
newaa, /!
ArgumentNullExceptionaa0 E
(aaE F
nameofaaF L
(aaL M
propertyPathaaM Y
)aaY Z
)aaZ [
;aa[ \
ifee 
(ee 
_aliasesee 
.ee 
TryGetValueee $
(ee$ %
propertyPathee% 1
,ee1 2
outee3 6
stringee7 =
aliasee> C
)eeC D
)eeD E
{ff 
returngg 
Dialectgg 
.gg 
QuoteForColumnNamegg 1
(gg1 2
aliasgg2 7
)gg7 8
;gg8 9
}hh 
varjj 
valuesjj 
=jj 
propertyPathjj %
.jj% &
Splitjj& +
(jj+ ,
$charjj, /
,jj/ 0
$numjj1 2
)jj2 3
;jj3 4
varmm 
	aliasPathmm 
=mm 
valuesmm "
.mm" #
Lengthmm# )
==mm* ,
$nummm- .
?mm/ 0
stringmm1 7
.mm7 8
Emptymm8 =
:mm> ?
valuesmm@ F
[mmF G
$nummmG H
]mmH I
;mmI J
ifpp 
(pp 
_aliasespp 
.pp 
TryGetValuepp $
(pp$ %
	aliasPathpp% .
,pp. /
outpp0 3
aliaspp4 9
)pp9 :
)pp: ;
{qq 
stringrr 

tableAliasrr !
=rr" #
_tableAliasesrr$ 1
[rr1 2
aliasrr2 7
]rr7 8
;rr8 9
vartt 
propertyProvidertt $
=tt% &
_propertyProviderstt' 9
.tt9 :
FirstOrDefaulttt: H
(ttH I
xttI J
=>ttK M
xttN O
.ttO P
	IndexNamettP Y
.ttY Z
EqualsttZ `
(tt` a
aliastta f
,ttf g
StringComparisontth x
.ttx y
OrdinalIgnoreCase	tty �
)
tt� �
)
tt� �
;
tt� �
ifvv 
(vv 
propertyProvidervv $
!=vv% '
nullvv( ,
)vv, -
{ww 
ifxx 
(xx 
propertyProviderxx (
.xx( )
TryGetValuexx) 4
(xx4 5
valuesxx5 ;
.xx; <
Lastxx< @
(xx@ A
)xxA B
,xxB C
outxxD G
varxxH K

columnNamexxL V
)xxV W
)xxW X
{yy 
return|| 
Dialect|| &
.||& '
QuoteForTableName||' 8
(||8 9
$"||9 ;
{||; <

tableAlias||< F
}||F G
"||G H
)||H I
+||J K
$str||L O
+||P Q
Dialect||R Y
.||Y Z
QuoteForColumnName||Z l
(||l m

columnName||m w
)||w x
;||x y
}}} 
}~~ 
else 
{
�� 
return
�� 
Dialect
�� "
.
��" #
QuoteForTableName
��# 4
(
��4 5
$"
��5 7
{
��7 8

tableAlias
��8 B
}
��B C
"
��C D
)
��D E
+
��F G
$str
��H K
+
��L M
Dialect
��N U
.
��U V 
QuoteForColumnName
��V h
(
��h i
values
��i o
[
��o p
$num
��p q
]
��q r
)
��r s
;
��s t
}
�� 
}
�� 
return
�� 
Dialect
�� 
.
��  
QuoteForColumnName
�� -
(
��- .
propertyPath
��. :
)
��: ;
;
��; <
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
string
�� !
>
��! "
GetUsedAliases
��# 1
(
��1 2
)
��2 3
{
�� 	
return
�� 
_usedAliases
�� 
;
��  
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Predicates\SimpleExpression.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8

Predicates8 B
{ 
public 

class 
SimpleExpression !
:" #

IPredicate$ .
{ 
private		 
readonly		 
string		 
_propertyName		  -
;		- .
private

 
readonly

 
object

 
_value

  &
;

& '
public 
SimpleExpression 
(  
string  &
propertyName' 3
,3 4
object5 ;
value< A
,A B
stringC I
	operationJ S
)S T
{ 	
_propertyName 
= 
propertyName (
;( )
_value 
= 
value 
; 
	Operation 
= 
	operation !
;! "
} 	
	protected 
virtual 
string  
	Operation! *
{+ ,
get- 0
;0 1
}2 3
public   
void   
SearchUsedAlias   #
(  # $
IPredicateQuery  $ 3
predicateQuery  4 B
)  B C
{!! 	
predicateQuery"" 
."" 
SearchUsedAlias"" *
(""* +
_propertyName""+ 8
)""8 9
;""9 :
}## 	
public)) 
string)) 
ToSqlString)) !
())! "
IPredicateQuery))" 1
predicateQuery))2 @
)))@ A
{** 	
var++ 

columnName++ 
=++ 
predicateQuery++ +
.+++ ,
GetColumnName++, 9
(++9 :
_propertyName++: G
)++G H
;++H I
var,, 
	parameter,, 
=,, 
predicateQuery,, *
.,,* +
NewQueryParameter,,+ <
(,,< =
_value,,= C
),,C D
;,,D E
return.. 
$".. 
(.. 
{.. 

columnName.. !
}..! "
{.." #
	Operation..# ,
}.., -
{..- .
	parameter... 7
}..7 8
)..8 9
"..9 :
;..: ;
}// 	
}00 
}11 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\PublicationStatusEnum.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
{ 
public 

enum !
PublicationStatusEnum %
{ 
	Published 
, 
Draft 
, 
Latest		 
,		 
All

 
} 
public 

class &
PublicationStatusGraphType +
:, - 
EnumerationGraphType. B
{ 
public &
PublicationStatusGraphType )
() *
)* +
{ 	
Name 
= 
$str 
; 
Description 
= 
$str .
;. /
AddValue 
( 
$str  
,  !
$str" B
,B C!
PublicationStatusEnumD Y
.Y Z
	PublishedZ c
)c d
;d e
AddValue 
( 
$str 
, 
$str :
,: ;!
PublicationStatusEnum< Q
.Q R
DraftR W
)W X
;X Y
AddValue 
( 
$str 
, 
$str N
,N O!
PublicationStatusEnumP e
.e f
Latestf l
)l m
;m n
AddValue 
( 
$str 
, 
$str 5
,5 6!
PublicationStatusEnum7 L
.L M
AllM P
)P Q
;Q R
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\ContentItemInterface.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8
Types8 =
{ 
public 

class  
ContentItemInterface %
:& '
InterfaceGraphType( :
<: ;
ContentItem; F
>F G
{ 
private		 
readonly		 !
GraphQLContentOptions		 .
_options		/ 7
;		7 8
public  
ContentItemInterface #
(# $
IOptions$ ,
<, -!
GraphQLContentOptions- B
>B C
optionsAccessorD S
)S T
{ 	
_options 
= 
optionsAccessor &
.& '
Value' ,
;, -
Name 
= 
$str  
;  !
Field 
( 
ci 
=> 
ci 
. 
ContentItemId (
)( )
;) *
Field 
( 
ci 
=> 
ci 
.  
ContentItemVersionId /
)/ 0
;0 1
Field 
( 
ci 
=> 
ci 
. 
ContentType &
)& '
;' (
Field 
( 
ci 
=> 
ci 
. 
DisplayText &
,& '
nullable( 0
:0 1
true2 6
)6 7
;7 8
Field 
( 
ci 
=> 
ci 
. 
	Published $
)$ %
;% &
Field 
( 
ci 
=> 
ci 
. 
Latest !
)! "
;" #
Field 
< 
DateTimeGraphType #
># $
($ %
$str% 2
,2 3
resolve4 ;
:; <
ci= ?
=>@ B
ciC E
.E F
SourceF L
.L M
ModifiedUtcM X
)X Y
;Y Z
Field 
< 
DateTimeGraphType #
># $
($ %
$str% 3
,3 4
resolve5 <
:< =
ci> @
=>A C
ciD F
.F G
SourceG M
.M N
PublishedUtcN Z
)Z [
;[ \
Field 
< 
DateTimeGraphType #
># $
($ %
$str% 1
,1 2
resolve3 :
:: ;
ci< >
=>? A
ciB D
.D E
SourceE K
.K L

CreatedUtcL V
)V W
;W X
Field 
( 
ci 
=> 
ci 
. 
Owner  
)  !
;! "
Field 
( 
ci 
=> 
ci 
. 
Author !
)! "
;" #
} 	
public 
override 
	FieldType !
AddField" *
(* +
	FieldType+ 4
	fieldType5 >
)> ?
{ 	
if   
(   
!   
_options   
.   

ShouldSkip   $
(  $ %
typeof  % +
(  + ,
ContentItemType  , ;
)  ; <
,  < =
	fieldType  > G
.  G H
Name  H L
)  L M
)  M N
{!! 
return"" 
base"" 
."" 
AddField"" $
(""$ %
	fieldType""% .
)"". /
;""/ 0
}## 
return%% 
null%% 
;%% 
}&& 	
}'' 
}(( �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\ContentItemOrderByInput.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8
Types8 =
{ 
public 

class #
ContentItemOrderByInput (
:) * 
InputObjectGraphType+ ?
{ 
public #
ContentItemOrderByInput &
(& '
string' -
contentItemName. =
)= >
{ 	
Name		 
=		 
contentItemName		 "
+		# $
$str		% 3
;		3 4
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- <
)< =
;= >
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- C
)C D
;D E
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- :
): ;
;; <
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- :
): ;
;; <
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- 8
)8 9
;9 :
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- 5
)5 6
;6 7
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- 9
)9 :
;: ;
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- :
): ;
;; <
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- ;
); <
;< =
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- 4
)4 5
;5 6
Field 
< %
OrderByDirectionGraphType +
>+ ,
(, -
$str- 5
)5 6
;6 7
} 	
} 
public 

enum 
OrderByDirection  
{ 
	Ascending 
, 

Descending 
} 
public 

class %
OrderByDirectionGraphType *
:+ , 
EnumerationGraphType- A
{   
public!! %
OrderByDirectionGraphType!! (
(!!( )
)!!) *
{"" 	
Name## 
=## 
$str## %
;##% &
Description$$ 
=$$ 
$str$$ 2
;$$2 3
AddValue%% 
(%% 
$str%% 
,%% 
$str%% E
,%%E F
OrderByDirection%%G W
.%%W X
	Ascending%%X a
)%%a b
;%%b c
AddValue&& 
(&& 
$str&& 
,&& 
$str&& G
,&&G H
OrderByDirection&&I Y
.&&Y Z

Descending&&Z d
)&&d e
;&&e f
}'' 	
}(( 
})) �D
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\ContentItemType.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8
Types8 =
{ 
public 

class 
ContentItemType  
:! "
ObjectGraphType# 2
<2 3
ContentItem3 >
>> ?
{ 
private 
readonly !
GraphQLContentOptions .
_options/ 7
;7 8
public 
ContentItemType 
( 
IOptions '
<' (!
GraphQLContentOptions( =
>= >
optionsAccessor? N
)N O
{ 	
_options 
= 
optionsAccessor &
.& '
Value' ,
;, -
Name 
= 
$str $
;$ %
Field 
( 
ci 
=> 
ci 
. 
ContentItemId (
)( )
.) *
Description* 5
(5 6
$str6 G
)G H
;H I
Field 
( 
ci 
=> 
ci 
.  
ContentItemVersionId /
)/ 0
.0 1
Description1 <
(< =
$str= Z
)Z [
;[ \
Field 
( 
ci 
=> 
ci 
. 
ContentType &
)& '
.' (
Description( 3
(3 4
$str4 E
)E F
;F G
Field 
( 
ci 
=> 
ci 
. 
DisplayText &
,& '
nullable( 0
:0 1
true2 6
)6 7
.7 8
Description8 C
(C D
$strD j
)j k
;k l
Field 
( 
ci 
=> 
ci 
. 
	Published $
)$ %
.% &
Description& 1
(1 2
$str2 L
)L M
;M N
Field 
( 
ci 
=> 
ci 
. 
Latest !
)! "
." #
Description# .
(. /
$str/ F
)F G
;G H
Field 
< 
DateTimeGraphType #
># $
($ %
$str% 2
,2 3
resolve4 ;
:; <
ci= ?
=>@ B
ciC E
.E F
SourceF L
.L M
ModifiedUtcM X
,X Y
descriptionZ e
:e f
$str	g �
)
� �
;
� �
Field 
< 
DateTimeGraphType #
># $
($ %
$str% 3
,3 4
resolve5 <
:< =
ci> @
=>A C
ciD F
.F G
SourceG M
.M N
PublishedUtcN Z
,Z [
description\ g
:g h
$str	i �
)
� �
;
� �
Field   
<   
DateTimeGraphType   #
>  # $
(  $ %
$str  % 1
,  1 2
resolve  3 :
:  : ;
ci  < >
=>  ? A
ci  B D
.  D E
Source  E K
.  K L

CreatedUtc  L V
,  V W
description  X c
:  c d
$str	  e �
)
  � �
;
  � �
Field!! 
(!! 
ci!! 
=>!! 
ci!! 
.!! 
Owner!!  
)!!  !
.!!! "
Description!!" -
(!!- .
$str!!. M
)!!M N
;!!N O
Field"" 
("" 
ci"" 
=>"" 
ci"" 
."" 
Author"" !
)""! "
.""" #
Description""# .
("". /
$str""/ O
)""O P
;""P Q
Field$$ 
<$$ 
StringGraphType$$ !
,$$! "
string$$# )
>$$) *
($$* +
)$$+ ,
.%% 
Name%% 
(%% 
$str%% 
)%% 
.&& 
ResolveLockedAsync&& #
(&&# $
async&&$ )
context&&* 1
=>&&2 4
{'' 
var(( 
userContext(( #
=(($ %
(((& '
GraphQLContext((' 5
)((5 6
context((6 =
.((= >
UserContext((> I
;((I J
var)) 
serviceProvider)) '
=))( )
userContext))* 5
.))5 6
ServiceProvider))6 E
;))E F
var,, 
displayManager,, &
=,,' (
serviceProvider,,) 8
.,,8 9
GetRequiredService,,9 K
<,,K L&
IContentItemDisplayManager,,L f
>,,f g
(,,g h
),,h i
;,,i j
var-- 
updateModelAccessor-- +
=--, -
serviceProvider--. =
.--= >
GetRequiredService--> P
<--P Q 
IUpdateModelAccessor--Q e
>--e f
(--f g
)--g h
;--h i
var.. 
model.. 
=.. 
await..  %
displayManager..& 4
...4 5
BuildDisplayAsync..5 F
(..F G
context..G N
...N O
Source..O U
,..U V
updateModelAccessor..W j
...j k
ModelUpdater..k w
)..w x
;..x y
var00 
displayHelper00 %
=00& '
serviceProvider00( 7
.007 8
GetRequiredService008 J
<00J K
IDisplayHelper00K Y
>00Y Z
(00Z [
)00[ \
;00\ ]
var11 
htmlEncoder11 #
=11$ %
serviceProvider11& 5
.115 6
GetRequiredService116 H
<11H I
HtmlEncoder11I T
>11T U
(11U V
)11V W
;11W X
using33 
(33 
var33 
sb33 !
=33" #
StringBuilderPool33$ 5
.335 6
GetInstance336 A
(33A B
)33B C
)33C D
{44 
using55 
(55 
var55 "
sw55# %
=55& '
new55( +
StringWriter55, 8
(558 9
sb559 ;
.55; <
Builder55< C
)55C D
)55D E
{66 
var77 
htmlContent77  +
=77, -
await77. 3
displayHelper774 A
.77A B
ShapeExecuteAsync77B S
(77S T
model77T Y
)77Y Z
;77Z [
htmlContent88 '
.88' (
WriteTo88( /
(88/ 0
sw880 2
,882 3
htmlEncoder884 ?
)88? @
;88@ A
await:: !
sw::" $
.::$ %

FlushAsync::% /
(::/ 0
)::0 1
;::1 2
return;; "
sw;;# %
.;;% &
ToString;;& .
(;;. /
);;/ 0
;;;0 1
}<< 
}== 
}>> 
)>> 
;>> 
	Interface@@ 
<@@  
ContentItemInterface@@ *
>@@* +
(@@+ ,
)@@, -
;@@- .
IsTypeOfBB 
=BB 
IsContentTypeBB $
;BB$ %
}CC 	
privateEE 
boolEE 
IsContentTypeEE "
(EE" #
objectEE# )
objEE* -
)EE- .
{FF 	
returnGG 
objGG 
isGG 
ContentItemGG %
itemGG& *
&&GG+ -
itemGG. 2
.GG2 3
ContentTypeGG3 >
==GG? A
NameGGB F
;GGF G
}HH 	
publicJJ 
overrideJJ 
	FieldTypeJJ !
AddFieldJJ" *
(JJ* +
	FieldTypeJJ+ 4
	fieldTypeJJ5 >
)JJ> ?
{KK 	
ifLL 
(LL 
!LL 
_optionsLL 
.LL 

ShouldSkipLL $
(LL$ %
thisLL% )
.LL) *
GetTypeLL* 1
(LL1 2
)LL2 3
,LL3 4
	fieldTypeLL5 >
.LL> ?
NameLL? C
)LLC D
)LLD E
{MM 
returnNN 
baseNN 
.NN 
AddFieldNN $
(NN$ %
	fieldTypeNN% .
)NN. /
;NN/ 0
}OO 
returnQQ 
nullQQ 
;QQ 
}RR 	
}SS 
}TT �)
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\ContentItemWhereInput.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8
Types8 =
{ 
[		 
GraphQLFieldName		 
(		 
$str		 
,		 
$str		  
)		  !
]		! "
[

 
GraphQLFieldName

 
(

 
$str

 
,

 
$str

 "
)

" #
]

# $
[ 
GraphQLFieldName 
( 
$str 
, 
$str "
)" #
]# $
public 

class !
ContentItemWhereInput &
:' (%
WhereInputObjectGraphType) B
{ 
private 
readonly 
IOptions !
<! "!
GraphQLContentOptions" 7
>7 8
_optionsAccessor9 I
;I J
public !
ContentItemWhereInput $
($ %
string% +
contentItemName, ;
,; <
IOptions= E
<E F!
GraphQLContentOptionsF [
>[ \
optionsAccessor] l
)l m
{ 	
_optionsAccessor 
= 
optionsAccessor .
;. /
Name 
= 
$" 
{ 
contentItemName %
}% &

WhereInput& 0
"0 1
;1 2
Description 
= 
$" 
the   
{  !
contentItemName! 0
}0 1!
 content item filters1 F
"F G
;G H
AddFilterField 
< 
IdGraphType &
>& '
(' (
$str( 7
,7 8
$str9 J
)J K
;K L
AddFilterField 
< 
IdGraphType &
>& '
(' (
$str( >
,> ?
$str@ ]
)] ^
;^ _
AddFilterField 
< 
StringGraphType *
>* +
(+ ,
$str, 9
,9 :
$str; a
)a b
;b c
AddFilterField 
< 
DateTimeGraphType ,
>, -
(- .
$str. :
,: ;
$str< [
)[ \
;\ ]
AddFilterField 
< 
DateTimeGraphType ,
>, -
(- .
$str. ;
,; <
$str= `
)` a
;a b
AddFilterField 
< 
DateTimeGraphType ,
>, -
(- .
$str. <
,< =
$str> `
)` a
;a b
AddFilterField 
< 
StringGraphType *
>* +
(+ ,
$str, 3
,3 4
$str5 T
)T U
;U V
AddFilterField 
< 
StringGraphType *
>* +
(+ ,
$str, 4
,4 5
$str6 V
)V W
;W X
var!! 
whereInputType!! 
=!!  
new!!! $
ListGraphType!!% 2
(!!2 3
this!!3 7
)!!7 8
;!!8 9
Field"" 
<"" 
ListGraphType"" 
<""  !
ContentItemWhereInput""  5
>""5 6
>""6 7
(""7 8
$str""8 <
,""< =
$str""> T
)""T U
.""U V
ResolvedType""V b
=""c d
whereInputType""e s
;""s t
Field## 
<## 
ListGraphType## 
<##  !
ContentItemWhereInput##  5
>##5 6
>##6 7
(##7 8
$str##8 =
,##= >
$str##? V
)##V W
.##W X
ResolvedType##X d
=##e f
whereInputType##g u
;##u v
Field$$ 
<$$ 
ListGraphType$$ 
<$$  !
ContentItemWhereInput$$  5
>$$5 6
>$$6 7
($$7 8
$str$$8 =
,$$= >
$str$$? V
)$$V W
.$$W X
ResolvedType$$X d
=$$e f
whereInputType$$g u
;$$u v
}%% 	
private'' 
void'' 
AddFilterField'' #
<''# $
T''$ %
>''% &
(''& '
string''' -
name''. 2
,''2 3
string''4 :
description''; F
)''F G
{(( 	
if)) 
()) 
!)) 
_optionsAccessor)) !
.))! "
Value))" '
.))' (

ShouldSkip))( 2
())2 3
typeof))3 9
())9 :
ContentItemType)): I
)))I J
,))J K
name))L P
)))P Q
)))Q R
{** !
AddScalarFilterFields++ %
<++% &
T++& '
>++' (
(++( )
name++) -
,++- .
description++/ :
)++: ;
;++; <
},, 
}-- 	
}.. 
}// �G
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\DynamicContentTypeBuilder.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8
Types8 =
{ 
public 

class %
DynamicContentTypeBuilder *
:+ ,
IContentTypeBuilder- @
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
GraphQLContentOptions .
_contentOptions/ >
;> ?
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 

Dictionary #
<# $
string$ *
,* +
	FieldType, 5
>5 6
_dynamicPartFields7 I
;I J
public %
DynamicContentTypeBuilder (
(( ) 
IHttpContextAccessor) =
httpContextAccessor> Q
,Q R
IOptions 
< !
GraphQLContentOptions *
>* +"
contentOptionsAccessor, B
,B C
IStringLocalizer 
< %
DynamicContentTypeBuilder 6
>6 7
	localizer8 A
)A B
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_contentOptions 
= "
contentOptionsAccessor 4
.4 5
Value5 :
;: ;
_dynamicPartFields 
=  
new! $

Dictionary% /
</ 0
string0 6
,6 7
	FieldType8 A
>A B
(B C
)C D
;D E
S 
= 
	localizer 
; 
} 	
public 
void 
Build 
( 
	FieldType #
contentQuery$ 0
,0 1!
ContentTypeDefinition2 G!
contentTypeDefinitionH ]
,] ^
ContentItemType_ n
contentItemTypeo ~
)~ 
{   	
var!! 
serviceProvider!! 
=!!  ! 
_httpContextAccessor!!" 6
.!!6 7
HttpContext!!7 B
.!!B C
RequestServices!!C R
;!!R S
var"" !
contentFieldProviders"" %
=""& '
serviceProvider""( 7
.""7 8
GetServices""8 C
<""C D!
IContentFieldProvider""D Y
>""Y Z
(""Z [
)""[ \
.""\ ]
ToList""] c
(""c d
)""d e
;""e f
foreach$$ 
($$ 
var$$ 
part$$ 
in$$  !
contentTypeDefinition$$! 6
.$$6 7
Parts$$7 <
)$$< =
{%% 
var&& 
partName&& 
=&& 
part&& #
.&&# $
Name&&$ (
;&&( )
if)) 
()) 
!)) 
part)) 
.)) 
PartDefinition)) (
.))( )
Fields))) /
.))/ 0
Any))0 3
())3 4
)))4 5
)))5 6
{** 
continue++ 
;++ 
},, 
if.. 
(.. 
_contentOptions.. #
...# $

ShouldSkip..$ .
(... /
part../ 3
)..3 4
)..4 5
{// 
continue00 
;00 
}11 
if33 
(33 
_contentOptions33 #
.33# $
ShouldCollapse33$ 2
(332 3
part333 7
)337 8
)338 9
{44 
foreach55 
(55 
var55  
field55! &
in55' )
part55* .
.55. /
PartDefinition55/ =
.55= >
Fields55> D
)55D E
{66 
foreach77 
(77  !
var77! $
fieldProvider77% 2
in773 5!
contentFieldProviders776 K
)77K L
{88 
var99 
	fieldType99  )
=99* +
fieldProvider99, 9
.999 :
GetField99: B
(99B C
field99C H
)99H I
;99I J
if;; 
(;;  
	fieldType;;  )
!=;;* ,
null;;- 1
);;1 2
{<< 
if==  "
(==# $
_contentOptions==$ 3
.==3 4

ShouldSkip==4 >
(==> ?
	fieldType==? H
.==H I
Type==I M
,==M N
	fieldType==O X
.==X Y
Name==Y ]
)==] ^
)==^ _
{>>  !
continue??$ ,
;??, -
}@@  !
contentItemTypeBB  /
.BB/ 0
AddFieldBB0 8
(BB8 9
	fieldTypeBB9 B
)BBB C
;BBC D
breakCC  %
;CC% &
}DD 
}EE 
}FF 
}GG 
elseHH 
{II 
varKK 
existingFieldKK %
=KK& '
contentItemTypeKK( 7
.KK7 8
GetFieldKK8 @
(KK@ A
partNameKKA I
.KKI J
ToFieldNameKKJ U
(KKU V
)KKV W
)KKW X
;KKX Y
ifLL 
(LL 
existingFieldLL %
!=LL& (
nullLL) -
)LL- .
{MM 
foreachOO 
(OO  !
varOO! $
fieldOO% *
inOO+ -
partOO. 2
.OO2 3
PartDefinitionOO3 A
.OOA B
FieldsOOB H
)OOH I
{PP 
foreachQQ #
(QQ$ %
varQQ% (
fieldProviderQQ) 6
inQQ7 9!
contentFieldProvidersQQ: O
)QQO P
{RR 
varSS  #
contentFieldTypeSS$ 4
=SS5 6
fieldProviderSS7 D
.SSD E
GetFieldSSE M
(SSM N
fieldSSN S
)SSS T
;SST U
ifUU  "
(UU# $
contentFieldTypeUU$ 4
!=UU5 7
nullUU8 <
&&UU= ?
!UU@ A
contentItemTypeUUA P
.UUP Q
HasFieldUUQ Y
(UUY Z
contentFieldTypeUUZ j
.UUj k
NameUUk o
)UUo p
)UUp q
{VV  !
contentItemTypeWW$ 3
.WW3 4
AddFieldWW4 <
(WW< =
contentFieldTypeWW= M
)WWM N
;WWN O
breakXX$ )
;XX) *
}YY  !
}ZZ 
}[[ 
continue\\  
;\\  !
}]] 
if__ 
(__ 
_dynamicPartFields__ *
.__* +
TryGetValue__+ 6
(__6 7
partName__7 ?
,__? @
out__A D
var__E H
	fieldType__I R
)__R S
)__S T
{`` 
contentItemTypeaa '
.aa' (
AddFieldaa( 0
(aa0 1
	fieldTypeaa1 :
)aa: ;
;aa; <
}bb 
elsecc 
{dd 
varee 
fieldee !
=ee" #
contentItemTypeee$ 3
.ee3 4
Fieldee4 9
(ee9 :
typeofff "
(ff" # 
DynamicPartGraphTypeff# 7
)ff7 8
,ff8 9
partNamegg $
.gg$ %
ToFieldNamegg% 0
(gg0 1
)gg1 2
,gg2 3
descriptionhh '
:hh' (
Shh) *
[hh* +
$strhh+ >
,hh> ?
parthh@ D
.hhD E
PartDefinitionhhE S
.hhS T
NamehhT X
]hhX Y
,hhY Z
resolveii #
:ii# $
contextii% ,
=>ii- /
{jj 
varkk  #
nameToResolvekk$ 1
=kk2 3
partNamekk4 <
;kk< =
varll  #
typeToResolvell$ 1
=ll2 3
contextll4 ;
.ll; <

ReturnTypell< F
.llF G
GetTypellG N
(llN O
)llO P
.llP Q
BaseTypellQ Y
.llY Z
GetGenericArgumentsllZ m
(llm n
)lln o
.llo p
Firstllp u
(llu v
)llv w
;llw x
returnnn  &
contextnn' .
.nn. /
Sourcenn/ 5
.nn5 6
Getnn6 9
(nn9 :
typeToResolvenn: G
,nnG H
nameToResolvennI V
)nnV W
;nnW X
}oo 
)oo 
;oo 
fieldqq 
.qq 
ResolvedTypeqq *
=qq+ ,
newqq- 0 
DynamicPartGraphTypeqq1 E
(qqE F 
_httpContextAccessorqqF Z
,qqZ [
partqq\ `
)qq` a
;qqa b
_dynamicPartFieldsrr *
[rr* +
partNamerr+ 3
]rr3 4
=rr5 6
fieldrr7 <
;rr< =
}ss 
}tt 
}uu 
}vv 	
publicxx 
voidxx 
Clearxx 
(xx 
)xx 
{yy 	
_dynamicPartFieldszz 
.zz 
Clearzz $
(zz$ %
)zz% &
;zz& '
}{{ 	
}|| 
}}} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\DynamicPartGraphType.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8
Types8 =
{ 
public		 

sealed		 
class		  
DynamicPartGraphType		 ,
:		- .
ObjectGraphType		/ >
<		> ?
ContentPart		? J
>		J K
{

 
public  
DynamicPartGraphType #
(# $ 
IHttpContextAccessor$ 8
httpContextAccessor9 L
,L M%
ContentTypePartDefinitionN g
parth l
)l m
{ 	
Name 
= 
part 
. 
Name 
; 
var 
serviceProvider 
=  !
httpContextAccessor" 5
.5 6
HttpContext6 A
.A B
RequestServicesB Q
;Q R
var !
contentFieldProviders %
=& '
serviceProvider( 7
.7 8
GetServices8 C
<C D!
IContentFieldProviderD Y
>Y Z
(Z [
)[ \
.\ ]
ToList] c
(c d
)d e
;e f
foreach 
( 
var 
field 
in !
part" &
.& '
PartDefinition' 5
.5 6
Fields6 <
)< =
{ 
foreach 
( 
var 
fieldProvider *
in+ -!
contentFieldProviders. C
)C D
{ 
var 
	fieldType !
=" #
fieldProvider$ 1
.1 2
GetField2 :
(: ;
field; @
)@ A
;A B
if 
( 
	fieldType !
!=" $
null% )
)) *
{ 
AddField  
(  !
	fieldType! *
)* +
;+ ,
break 
; 
} 
} 
} 
} 	
} 
}   �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\IContentFieldProvider.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8
Types8 =
{ 
public 

	interface !
IContentFieldProvider *
{ 
	FieldType 
GetField 
( &
ContentPartFieldDefinition 5
field6 ;
); <
;< =
}		 
}

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\IContentTypeBuilder.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Queries0 7
.7 8
Types8 =
{ 
public 

	interface 
IContentTypeBuilder (
{ 
void 
Build 
( 
	FieldType 
contentQuery )
,) *!
ContentTypeDefinition+ @!
contentTypeDefinitionA V
,V W
ContentItemTypeX g
contentItemTypeh w
)w x
;x y
void		 
Clear		 
(		 
)		 
{		 
}		 
}

 
} �R
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Queries\Types\TypedContentTypeBuilder.cs
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
GraphQL

( /
.

/ 0
Queries

0 7
.

7 8
Types

8 =
{ 
public 

class #
TypedContentTypeBuilder (
:) *
IContentTypeBuilder+ >
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
GraphQLContentOptions .
_contentOptions/ >
;> ?
public #
TypedContentTypeBuilder &
(& ' 
IHttpContextAccessor' ;
httpContextAccessor< O
,O P
IOptions 
< !
GraphQLContentOptions *
>* +"
contentOptionsAccessor, B
)B C
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_contentOptions 
= "
contentOptionsAccessor 4
.4 5
Value5 :
;: ;
} 	
public 
void 
Build 
( 
	FieldType #
contentQuery$ 0
,0 1!
ContentTypeDefinition2 G!
contentTypeDefinitionH ]
,] ^
ContentItemType_ n
contentItemTypeo ~
)~ 
{ 	
var 
serviceProvider 
=  ! 
_httpContextAccessor" 6
.6 7
HttpContext7 B
.B C
RequestServicesC R
;R S
var 
typeActivator 
= 
serviceProvider  /
./ 0

GetService0 :
<: ;!
ITypeActivatorFactory; P
<P Q
ContentPartQ \
>\ ]
>] ^
(^ _
)_ `
;` a
foreach 
( 
var 
part 
in  !
contentTypeDefinition! 6
.6 7
Parts7 <
)< =
{ 
if 
( 
_contentOptions #
.# $

ShouldSkip$ .
(. /
part/ 3
)3 4
)4 5
continue6 >
;> ?
var!! 
partName!! 
=!! 
part!! #
.!!# $
Name!!$ (
;!!( )
if$$ 
($$ 
contentItemType$$ #
.$$# $
HasField$$$ ,
($$, -
partName$$- 5
)$$5 6
)$$6 7
continue$$8 @
;$$@ A
var&& 
	activator&& 
=&& 
typeActivator&&  -
.&&- .
GetTypeActivator&&. >
(&&> ?
part&&? C
.&&C D
PartDefinition&&D R
.&&R S
Name&&S W
)&&W X
;&&X Y
var(( 
queryGraphType(( "
=((# $
typeof((% +
(((+ ,
ObjectGraphType((, ;
<((; <
>((< =
)((= >
.((> ?
MakeGenericType((? N
(((N O
	activator((O X
.((X Y
Type((Y ]
)((] ^
;((^ _
var** 
collapsePart**  
=**! "
_contentOptions**# 2
.**2 3
ShouldCollapse**3 A
(**A B
part**B F
)**F G
;**G H
if,, 
(,, 
serviceProvider,, #
.,,# $

GetService,,$ .
(,,. /
queryGraphType,,/ =
),,= >
is,,? A
IObjectGraphType,,B R"
queryGraphTypeResolved,,S i
),,i j
{-- 
if.. 
(.. 
collapsePart.. $
)..$ %
{// 
foreach00 
(00  !
var00! $
field00% *
in00+ -"
queryGraphTypeResolved00. D
.00D E
Fields00E K
)00K L
{11 
if22 
(22  
_contentOptions22  /
.22/ 0

ShouldSkip220 :
(22: ;
queryGraphType22; I
,22I J
field22K P
.22P Q
Name22Q U
)22U V
)22V W
continue22X `
;22` a
var44 
rolledUpField44  -
=44. /
new440 3
	FieldType444 =
{55 
Name66  $
=66% &
field66' ,
.66, -
Name66- 1
,661 2
Type77  $
=77% &
field77' ,
.77, -
Type77- 1
,771 2
Description88  +
=88, -
field88. 3
.883 4
Description884 ?
,88? @
DeprecationReason99  1
=992 3
field994 9
.999 :
DeprecationReason99: K
,99K L
	Arguments::  )
=::* +
field::, 1
.::1 2
	Arguments::2 ;
,::; <
Resolver;;  (
=;;) *
new;;+ .
FuncFieldResolver;;/ @
<;;@ A
ContentItem;;A L
,;;L M
object;;N T
>;;T U
(;;U V
context;;V ]
=>;;^ `
{<<  !
var==$ '
nameToResolve==( 5
===6 7
partName==8 @
;==@ A
var>>$ '
resolvedPart>>( 4
=>>5 6
context>>7 >
.>>> ?
Source>>? E
.>>E F
Get>>F I
(>>I J
	activator>>J S
.>>S T
Type>>T X
,>>X Y
nameToResolve>>Z g
)>>g h
;>>h i
return@@$ *
field@@+ 0
.@@0 1
Resolver@@1 9
.@@9 :
Resolve@@: A
(@@A B
new@@B E
ResolveFieldContext@@F Y
{AA$ %
	ArgumentsBB( 1
=BB2 3
contextBB4 ;
.BB; <
	ArgumentsBB< E
,BBE F
SourceCC( .
=CC/ 0
resolvedPartCC1 =
,CC= >
FieldDefinitionDD( 7
=DD8 9
fieldDD: ?
,DD? @
UserContextEE( 3
=EE4 5
contextEE6 =
.EE= >
UserContextEE> I
}FF$ %
)FF% &
;FF& '
}GG  !
)GG! "
}HH 
;HH 
contentItemTypeJJ +
.JJ+ ,
AddFieldJJ, 4
(JJ4 5
rolledUpFieldJJ5 B
)JJB C
;JJC D
}KK 
}LL 
elseMM 
{NN 
contentItemTypeOO '
.OO' (
FieldOO( -
(OO- ."
queryGraphTypeResolvedPP 2
.PP2 3
GetTypePP3 :
(PP: ;
)PP; <
,PP< =
partNameQQ $
.QQ$ %
ToFieldNameQQ% 0
(QQ0 1
)QQ1 2
,QQ2 3
descriptionRR '
:RR' ("
queryGraphTypeResolvedRR) ?
.RR? @
DescriptionRR@ K
,RRK L
resolveSS #
:SS# $
contextSS% ,
=>SS- /
{TT 
varUU  #
nameToResolveUU$ 1
=UU2 3
partNameUU4 <
;UU< =
varVV  #
typeToResolveVV$ 1
=VV2 3
contextVV4 ;
.VV; <

ReturnTypeVV< F
.VVF G
GetTypeVVG N
(VVN O
)VVO P
.VVP Q
BaseTypeVVQ Y
.VVY Z
GetGenericArgumentsVVZ m
(VVm n
)VVn o
.VVo p
FirstVVp u
(VVu v
)VVv w
;VVw x
returnXX  &
contextXX' .
.XX. /
SourceXX/ 5
.XX5 6
GetXX6 9
(XX9 :
typeToResolveXX: G
,XXG H
nameToResolveXXI V
)XXV W
;XXW X
}YY 
)YY 
;YY 
}ZZ 
}[[ 
var]] 
inputGraphType]] "
=]]# $
typeof]]% +
(]]+ , 
InputObjectGraphType]], @
<]]@ A
>]]A B
)]]B C
.]]C D
MakeGenericType]]D S
(]]S T
	activator]]T ]
.]]] ^
Type]]^ b
)]]b c
;]]c d
if__ 
(__ 
serviceProvider__ #
.__# $

GetService__$ .
(__. /
inputGraphType__/ =
)__= >
is__? A!
IInputObjectGraphType__B W"
inputGraphTypeResolved__X n
)__n o
{`` 
varaa 
whereArgumentaa %
=aa& '
contentQueryaa( 4
.aa4 5
	Argumentsaa5 >
.aa> ?
FirstOrDefaultaa? M
(aaM N
xaaN O
=>aaP R
xaaS T
.aaT U
NameaaU Y
==aaZ \
$straa] d
)aad e
;aae f
ifbb 
(bb 
whereArgumentbb %
==bb& (
nullbb) -
)bb- .
{cc 
returndd 
;dd 
}ee 
vargg 

whereInputgg "
=gg# $
(gg% &!
ContentItemWhereInputgg& ;
)gg; <
whereArgumentgg< I
.ggI J
ResolvedTypeggJ V
;ggV W
ifii 
(ii 
collapsePartii $
)ii$ %
{jj 
foreachkk 
(kk  !
varkk! $
fieldkk% *
inkk+ -"
inputGraphTypeResolvedkk. D
.kkD E
FieldskkE K
)kkK L
{ll 

whereInputmm &
.mm& '
AddFieldmm' /
(mm/ 0
fieldmm0 5
.mm5 6%
WithPartCollapsedMetaDatamm6 O
(mmO P
)mmP Q
.mmQ R 
WithPartNameMetaDatammR f
(mmf g
partNamemmg o
)mmo p
)mmp q
;mmq r
}nn 
}oo 
elsepp 
{qq 

whereInputrr "
.rr" #
AddFieldrr# +
(rr+ ,
newrr, /
	FieldTyperr0 9
{ss 
Typett  
=tt! ""
inputGraphTypeResolvedtt# 9
.tt9 :
GetTypett: A
(ttA B
)ttB C
,ttC D
Nameuu  
=uu! "
partNameuu# +
.uu+ ,
ToFieldNameuu, 7
(uu7 8
)uu8 9
,uu9 :
Descriptionvv '
=vv( )"
inputGraphTypeResolvedvv* @
.vv@ A
DescriptionvvA L
}ww 
.ww  
WithPartNameMetaDataww .
(ww. /
partNameww/ 7
)ww7 8
)ww8 9
;ww9 :
}xx 
}yy 
}zz 
}{{ 	
}|| 
}}} � 
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\ServiceCollectionExtensions.cs
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
GraphQL

( /
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddContentGraphQL) :
(: ;
this; ?
IServiceCollection@ R
servicesS [
)[ \
{ 	
services 
. 
AddSingleton !
<! "
ISchemaBuilder" 0
,0 1
ContentItemQuery2 B
>B C
(C D
)D E
;E F
services 
. 
AddSingleton !
<! "
ISchemaBuilder" 0
,0 1
ContentTypeQuery2 B
>B C
(C D
)D E
;E F
services 
. 
AddSingleton !
<! " 
ContentItemInterface" 6
>6 7
(7 8
)8 9
;9 :
services 
. 
AddTransient !
<! "
ContentItemType" 1
>1 2
(2 3
)3 4
;4 5
services 
. 
	AddScoped 
< 
IPermissionProvider 2
,2 3
Permissions4 ?
>? @
(@ A
)A B
;B C
services 
. 
AddTransient !
<! " 
DynamicPartGraphType" 6
>6 7
(7 8
)8 9
;9 :
services 
. 
	AddScoped 
< 
IContentTypeBuilder 2
,2 3#
TypedContentTypeBuilder4 K
>K L
(L M
)M N
;N O
services 
. 
	AddScoped 
< 
IContentTypeBuilder 2
,2 3%
DynamicContentTypeBuilder4 M
>M N
(N O
)O P
;P Q
services 
. 

AddOptions 
<  !
GraphQLContentOptions  5
>5 6
(6 7
)7 8
;8 9
services 
. .
"AddWhereInputIndexPropertyProvider 7
<7 8
ContentItemIndex8 H
>H I
(I J
)J K
;K L
return   
services   
;   
}!! 	
public## 
static## 
void## .
"AddWhereInputIndexPropertyProvider## =
<##= >

IIndexType##> H
>##H I
(##I J
this##J N
IServiceCollection##O a
services##b j
)##j k
where$$ 

IIndexType$$ 
:$$ 
MapIndex$$ '
{%% 	
services&& 
.&& 
AddSingleton&& !
<&&! ""
IIndexPropertyProvider&&" 8
,&&8 9!
IndexPropertyProvider&&: O
<&&O P

IIndexType&&P Z
>&&Z [
>&&[ \
(&&\ ]
)&&] ^
;&&^ _
}'' 	
public// 
static// 
void//  
AddGraphQLFilterType// /
</// 0
TObjectTypeToFilter//0 C
,//C D
TFilterType//E P
>//P Q
(//Q R
this//R V
IServiceCollection//W i
services//j r
)//r s
where00 
TObjectTypeToFilter00 %
:00& '
class00( -
where11 
TFilterType11 
:11 
GraphQLFilter11  -
<11- .
TObjectTypeToFilter11. A
>11A B
{22 	
services33 
.33 
AddTransient33 !
<33! "
IGraphQLFilter33" 0
<330 1
TObjectTypeToFilter331 D
>33D E
,33E F
TFilterType33G R
>33R S
(33S T
)33T U
;33U V
}44 	
}55 
}66 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ContentManagement.GraphQL\Settings\GraphQLContentTypePartSettings.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
GraphQL( /
./ 0
Settings0 8
{ 
public 

class *
GraphQLContentTypePartSettings /
{ 
public 
bool 
Collapse 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Hidden 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 