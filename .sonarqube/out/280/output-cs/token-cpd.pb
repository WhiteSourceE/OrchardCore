Ú*
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.Core\AuthorizationServiceExtensions.cs
	namespace

 	
	Microsoft


 
.

 

AspNetCore

 
.

 
Authorization

 ,
{ 
public 

static 
class *
AuthorizationServiceExtensions 6
{ 
public 
static 
async 
Task  
<  !
bool! %
>% &0
$AuthorizeContentTypeDefinitionsAsync' K
(K L
thisL P!
IAuthorizationServiceQ f
serviceg n
,n o
ClaimsPrincipalp 
user
Ä Ñ
,
Ñ Ö

Permission
Ü ê 
requiredPermission
ë £
,
£ §
IEnumerable
• ∞
<
∞ ±#
ContentTypeDefinition
± ∆
>
∆ «$
contentTypeDefinitions
» ﬁ
,
ﬁ ﬂ
IContentManager
‡ Ô
contentManager
 ˛
)
˛ ˇ
{ 	
var 

permission 
= 
GetOwnerVariation .
(. /
requiredPermission/ A
)A B
;B C
var !
contentTypePermission %
=& '(
ContentTypePermissionsHelper( D
.D E&
ConvertToDynamicPermissionE _
(_ `

permission` j
)j k
;k l
foreach 
( 
var !
contentTypeDefinition .
in/ 1"
contentTypeDefinitions2 H
)H I
{ 
var 
dynamicPermission %
=& '(
ContentTypePermissionsHelper( D
.D E#
CreateDynamicPermissionE \
(\ ]!
contentTypePermission] r
,r s"
contentTypeDefinition	t â
)
â ä
;
ä ã
var 
contentItem 
=  !
await" '
contentManager( 6
.6 7
NewAsync7 ?
(? @!
contentTypeDefinition@ U
.U V
NameV Z
)Z [
;[ \
contentItem 
. 
Owner !
=" #
user$ (
.( )
FindFirstValue) 7
(7 8

ClaimTypes8 B
.B C
NameIdentifierC Q
)Q R
;R S
if 
( 
await 
service !
.! "
AuthorizeAsync" 0
(0 1
user1 5
,5 6
dynamicPermission7 H
,H I
contentItemJ U
)U V
)V W
{ 
return 
true 
;  
}   
}!! 
return## 
await## 
service##  
.##  !
AuthorizeAsync##! /
(##/ 0
user##0 4
,##4 5

permission##6 @
)##@ A
;##A B
}$$ 	
private&& 
static&& 

Permission&& !
GetOwnerVariation&&" 3
(&&3 4

Permission&&4 >

permission&&? I
)&&I J
{'' 	
if(( 
((( 

permission(( 
.(( 
Name(( 
==((  "
CommonPermissions((# 4
.((4 5
PublishContent((5 C
.((C D
Name((D H
)((H I
{)) 
return** 
CommonPermissions** (
.**( )
PublishOwnContent**) :
;**: ;
}++ 
if-- 
(-- 

permission-- 
.-- 
Name-- 
==--  "
CommonPermissions--# 4
.--4 5
EditContent--5 @
.--@ A
Name--A E
)--E F
{.. 
return// 
CommonPermissions// (
.//( )
EditOwnContent//) 7
;//7 8
}00 
if22 
(22 

permission22 
.22 
Name22 
==22  "
CommonPermissions22# 4
.224 5
DeleteContent225 B
.22B C
Name22C G
)22G H
{33 
return44 
CommonPermissions44 (
.44( )
DeleteOwnContent44) 9
;449 :
}55 
if77 
(77 

permission77 
.77 
Name77 
==77  "
CommonPermissions77# 4
.774 5
ViewContent775 @
.77@ A
Name77A E
)77E F
{88 
return99 
CommonPermissions99 (
.99( )
ViewOwnContent99) 7
;997 8
}:: 
if<< 
(<< 

permission<< 
.<< 
Name<< 
==<<  "
CommonPermissions<<# 4
.<<4 5
PreviewContent<<5 C
.<<C D
Name<<D H
)<<H I
{== 
return>> 
CommonPermissions>> (
.>>( )
PreviewOwnContent>>) :
;>>: ;
}?? 
ifAA 
(AA 

permissionAA 
.AA 
NameAA 
==AA  "
CommonPermissionsAA# 4
.AA4 5
CloneContentAA5 A
.AAA B
NameAAB F
)AAF G
{BB 
returnCC 
CommonPermissionsCC (
.CC( )
CloneOwnContentCC) 8
;CC8 9
}DD 
returnFF 
nullFF 
;FF 
}GG 	
}HH 
}II ™(
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.Core\CommonPermissions.cs
	namespace 	
OrchardCore
 
. 
Contents 
{ 
public		 

class		 
CommonPermissions		 "
{

 
public 
static 
readonly 

Permission )
PublishContent* 8
=9 :
new; >

Permission? I
(I J
$strJ Z
,Z [
$str	\ Ö
)
Ö Ü
;
Ü á
public 
static 
readonly 

Permission )
PublishOwnContent* ;
=< =
new> A

PermissionB L
(L M
$strM `
,` a
$str	b Ñ
,
Ñ Ö
new
Ü â
[
â ä
]
ä ã
{
å ç
PublishContent
é ú
}
ù û
)
û ü
;
ü †
public 
static 
readonly 

Permission )
EditContent* 5
=6 7
new8 ;

Permission< F
(F G
$strG T
,T U
$strV o
,o p
newq t
[t u
]u v
{w x
PublishContent	y á
}
à â
)
â ä
;
ä ã
public 
static 
readonly 

Permission )
EditOwnContent* 8
=9 :
new; >

Permission? I
(I J
$strJ Z
,Z [
$str\ n
,n o
newp s
[s t
]t u
{v w
EditContent	x É
,
É Ñ
PublishOwnContent
Ö ñ
}
ó ò
)
ò ô
;
ô ö
public 
static 
readonly 

Permission )
DeleteContent* 7
=8 9
new: =

Permission> H
(H I
$strI X
,X Y
$strZ u
)u v
;v w
public 
static 
readonly 

Permission )
DeleteOwnContent* :
=; <
new= @

PermissionA K
(K L
$strL ^
,^ _
$str` t
,t u
newv y
[y z
]z {
{| }
DeleteContent	~ ã
}
å ç
)
ç é
;
é è
public 
static 
readonly 

Permission )
ViewContent* 5
=6 7
new8 ;

Permission< F
(F G
$strG T
,T U
$strV h
,h i
newj m
[m n
]n o
{p q
EditContentr }
}~ 
)	 Ä
;
Ä Å
public 
static 
readonly 

Permission )
ViewOwnContent* 8
=9 :
new; >

Permission? I
(I J
$strJ Z
,Z [
$str\ n
,n o
newp s
[s t
]t u
{v w
ViewContent	x É
}
Ñ Ö
)
Ö Ü
;
Ü á
public 
static 
readonly 

Permission )
PreviewContent* 8
=9 :
new; >

Permission? I
(I J
$strJ Z
,Z [
$str\ m
,m n
newo r
[r s
]s t
{u v
EditContent	w Ç
,
Ç É
PublishContent
Ñ í
}
ì î
)
î ï
;
ï ñ
public 
static 
readonly 

Permission )
PreviewOwnContent* ;
=< =
new> A

PermissionB L
(L M
$strM `
,` a
$strb w
,w x
newy |
[| }
]} ~
{	 Ä
PreviewContent
Å è
}
ê ë
)
ë í
;
í ì
public 
static 
readonly 

Permission )
CloneContent* 6
=7 8
new9 <

Permission= G
(G H
$strH V
,V W
$strX g
,g h
newi l
[l m
]m n
{o p
EditContentq |
}} ~
)~ 
;	 Ä
public 
static 
readonly 

Permission )
CloneOwnContent* 9
=: ;
new< ?

Permission@ J
(J K
$strK \
,\ ]
$str^ q
,q r
news v
[v w
]w x
{y z
CloneContent	{ á
}
à â
)
â ä
;
ä ã
public 
static 
readonly 

Permission )
ListContent* 5
=6 7
new8 ;

Permission< F
(F G
$strG T
,T U
$strV 
)	 Ä
;
Ä Å
} 
} õd
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.Core\ContentTypePermissionsHelper.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 
Security		 '
{

 
public 

class (
ContentTypePermissionsHelper -
{ 
private 
static 
readonly 

Permission  *
PublishContent+ 9
=: ;
new< ?

Permission@ J
(J K
$strK X
,X Y
$strZ 
,	 Ä
new
Å Ñ
[
Ñ Ö
]
Ö Ü
{
á à
CommonPermissions
â ö
.
ö õ
PublishContent
õ ©
}
™ ´
)
´ ¨
;
¨ ≠
private 
static 
readonly 

Permission  *
PublishOwnContent+ <
== >
new? B

PermissionC M
(M N
$strN ^
,^ _
$str` z
,z {
new| 
[	 Ä
]
Ä Å
{
Ç É
PublishContent
Ñ í
,
í ì
CommonPermissions
î •
.
• ¶
PublishOwnContent
¶ ∑
}
∏ π
)
π ∫
;
∫ ª
private 
static 
readonly 

Permission  *
EditContent+ 6
=7 8
new9 <

Permission= G
(G H
$strH R
,R S
$strT i
,i j
newk n
[n o
]o p
{q r
PublishContent	s Å
,
Å Ç
CommonPermissions
É î
.
î ï
EditContent
ï †
}
° ¢
)
¢ £
;
£ §
private 
static 
readonly 

Permission  *
EditOwnContent+ 9
=: ;
new< ?

Permission@ J
(J K
$strK X
,X Y
$strZ d
,d e
newf i
[i j
]j k
{l m
EditContentn y
,y z
PublishOwnContent	{ å
,
å ç
CommonPermissions
é ü
.
ü †
EditOwnContent
† Æ
}
Ø ∞
)
∞ ±
;
± ≤
private 
static 
readonly 

Permission  *
DeleteContent+ 8
=9 :
new; >

Permission? I
(I J
$strJ V
,V W
$strX o
,o p
newq t
[t u
]u v
{w x
CommonPermissions	y ä
.
ä ã
DeleteContent
ã ò
}
ô ö
)
ö õ
;
õ ú
private 
static 
readonly 

Permission  *
DeleteOwnContent+ ;
=< =
new> A

PermissionB L
(L M
$strM \
,\ ]
$str^ j
,j k
newl o
[o p
]p q
{r s
DeleteContent	t Å
,
Å Ç
CommonPermissions
É î
.
î ï
DeleteOwnContent
ï •
}
¶ ß
)
ß ®
;
® ©
private 
static 
readonly 

Permission  *
ViewContent+ 6
=7 8
new9 <

Permission= G
(G H
$strH R
,R S
$strT h
,h i
newj m
[m n
]n o
{p q
EditContentr }
,} ~
CommonPermissions	 ê
.
ê ë
ViewContent
ë ú
}
ù û
)
û ü
;
ü †
private 
static 
readonly 

Permission  *
ViewOwnContent+ 9
=: ;
new< ?

Permission@ J
(J K
$strK X
,X Y
$strZ h
,h i
newj m
[m n
]n o
{p q
ViewContentr }
,} ~
CommonPermissions	 ê
.
ê ë
ViewOwnContent
ë ü
}
† °
)
° ¢
;
¢ £
private 
static 
readonly 

Permission  *
PreviewContent+ 9
=: ;
new< ?

Permission@ J
(J K
$strK X
,X Y
$strZ q
,q r
news v
[v w
]w x
{y z
EditContent	{ Ü
,
Ü á
CommonPermissions
à ô
.
ô ö
PreviewContent
ö ®
}
© ™
)
™ ´
;
´ ¨
private 
static 
readonly 

Permission  *
PreviewOwnContent+ <
== >
new? B

PermissionC M
(M N
$strN ^
,^ _
$str` q
,q r
news v
[v w
]w x
{y z
PreviewContent	{ â
,
â ä
CommonPermissions
ã ú
.
ú ù
PreviewOwnContent
ù Æ
}
Ø ∞
)
∞ ±
;
± ≤
private 
static 
readonly 

Permission  *
CloneContent+ 7
=8 9
new: =

Permission> H
(H I
$strI T
,T U
$strV k
,k l
newm p
[p q
]q r
{s t
EditContent	u Ä
,
Ä Å
CommonPermissions
Ç ì
.
ì î
CloneContent
î †
}
° ¢
)
¢ £
;
£ §
private 
static 
readonly 

Permission  *
CloneOwnContent+ :
=; <
new= @

PermissionA K
(K L
$strL Z
,Z [
$str\ k
,k l
newm p
[p q
]q r
{s t
CloneContent	u Å
,
Å Ç
CommonPermissions
É î
.
î ï
CloneOwnContent
ï §
}
• ¶
)
¶ ß
;
ß ®
private 
static 
readonly 

Permission  *
ListContent+ 6
=7 8
new9 <

Permission= G
(G H
$strH Y
,Y Z
$str	[ à
,
à â
new
ä ç
[
ç é
]
é è
{
ê ë
CommonPermissions
í £
.
£ §
ListContent
§ Ø
}
∞ ±
)
± ≤
;
≤ ≥
public 
static 
readonly 

Dictionary )
<) *
string* 0
,0 1

Permission2 <
>< =
PermissionTemplates> Q
=R S
newT W

DictionaryX b
<b c
stringc i
,i j

Permissionk u
>u v
{ 	
{   
CommonPermissions   
.    
PublishContent    .
.  . /
Name  / 3
,  3 4
PublishContent  5 C
}  D E
,  E F
{!! 
CommonPermissions!! 
.!!  
PublishOwnContent!!  1
.!!1 2
Name!!2 6
,!!6 7
PublishOwnContent!!8 I
}!!J K
,!!K L
{"" 
CommonPermissions"" 
.""  
EditContent""  +
.""+ ,
Name"", 0
,""0 1
EditContent""2 =
}""> ?
,""? @
{## 
CommonPermissions## 
.##  
EditOwnContent##  .
.##. /
Name##/ 3
,##3 4
EditOwnContent##5 C
}##D E
,##E F
{$$ 
CommonPermissions$$ 
.$$  
DeleteContent$$  -
.$$- .
Name$$. 2
,$$2 3
DeleteContent$$4 A
}$$B C
,$$C D
{%% 
CommonPermissions%% 
.%%  
DeleteOwnContent%%  0
.%%0 1
Name%%1 5
,%%5 6
DeleteOwnContent%%7 G
}%%H I
,%%I J
{&& 
CommonPermissions&& 
.&&  
ViewContent&&  +
.&&+ ,
Name&&, 0
,&&0 1
ViewContent&&2 =
}&&> ?
,&&? @
{'' 
CommonPermissions'' 
.''  
ViewOwnContent''  .
.''. /
Name''/ 3
,''3 4
ViewOwnContent''5 C
}''D E
,''E F
{(( 
CommonPermissions(( 
.((  
PreviewContent((  .
.((. /
Name((/ 3
,((3 4
PreviewContent((5 C
}((D E
,((E F
{)) 
CommonPermissions)) 
.))  
PreviewOwnContent))  1
.))1 2
Name))2 6
,))6 7
PreviewOwnContent))8 I
}))J K
,))K L
{** 
CommonPermissions** 
.**  
CloneContent**  ,
.**, -
Name**- 1
,**1 2
CloneContent**3 ?
}**@ A
,**A B
{++ 
CommonPermissions++ 
.++  
CloneOwnContent++  /
.++/ 0
Name++0 4
,++4 5
CloneOwnContent++6 E
}++F G
,++G H
{,, 
CommonPermissions,, 
.,,  
ListContent,,  +
.,,+ ,
Name,,, 0
,,,0 1
ListContent,,2 =
},,> ?
}-- 	
;--	 

public22 
static22 

Permission22  &
ConvertToDynamicPermission22! ;
(22; <

Permission22< F

permission22G Q
)22Q R
{33 	
if44 
(44 
PermissionTemplates44 #
.44# $
TryGetValue44$ /
(44/ 0

permission440 :
.44: ;
Name44; ?
,44? @
out44A D
var44E H
result44I O
)44O P
)44P Q
{55 
return66 
result66 
;66 
}77 
return99 
null99 
;99 
}:: 	
public?? 
static?? 

Permission??  #
CreateDynamicPermission??! 8
(??8 9

Permission??9 C
template??D L
,??L M!
ContentTypeDefinition??N c
typeDefinition??d r
)??r s
{@@ 	
returnAA 
newAA 

PermissionAA !
(AA! "
StringBB 
.BB 
FormatBB 
(BB 
templateBB &
.BB& '
NameBB' +
,BB+ ,
typeDefinitionBB- ;
.BB; <
NameBB< @
)BB@ A
,BBA B
StringCC 
.CC 
FormatCC 
(CC 
templateCC &
.CC& '
DescriptionCC' 2
,CC2 3
typeDefinitionCC4 B
.CCB C
DisplayNameCCC N
)CCN O
,CCO P
(DD 
templateDD 
.DD 
	ImpliedByDD #
??DD$ &
newDD' *

PermissionDD+ 5
[DD5 6
$numDD6 7
]DD7 8
)DD8 9
.DD9 :
SelectDD: @
(DD@ A
tDDA B
=>DDC E#
CreateDynamicPermissionDDF ]
(DD] ^
tDD^ _
,DD_ `
typeDefinitionDDa o
)DDo p
)DDp q
)EE 
{FF 
CategoryGG 
=GG 
typeDefinitionGG )
.GG) *
DisplayNameGG* 5
}HH 
;HH 
}II 	
publicNN 
staticNN 

PermissionNN  #
CreateDynamicPermissionNN! 8
(NN8 9

PermissionNN9 C
templateNND L
,NNL M
stringNNN T
contentTypeNNU `
)NN` a
{OO 	
returnPP 
newPP 

PermissionPP !
(PP! "
StringQQ 
.QQ 
FormatQQ 
(QQ 
templateQQ &
.QQ& '
NameQQ' +
,QQ+ ,
contentTypeQQ- 8
)QQ8 9
,QQ9 :
StringRR 
.RR 
FormatRR 
(RR 
templateRR &
.RR& '
DescriptionRR' 2
,RR2 3
contentTypeRR4 ?
)RR? @
,RR@ A
(SS 
templateSS 
.SS 
	ImpliedBySS #
??SS$ &
newSS' *

PermissionSS+ 5
[SS5 6
$numSS6 7
]SS7 8
)SS8 9
.SS9 :
SelectSS: @
(SS@ A
tSSA B
=>SSC E#
CreateDynamicPermissionSSF ]
(SS] ^
tSS^ _
,SS_ `
contentTypeSSa l
)SSl m
)SSm n
)TT 
;TT 
}UU 	
}VV 
}WW ê
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.Core\Indexing\IndexingConstants.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Indexing '
{ 
public 

static 
class 
IndexingConstants )
{ 
public 
const 
string 
OwnerKey $
=% &
$str' B
;B C
public 
const 
string 
	AuthorKey %
=& '
$str( D
;D E
public 
const 
string 
ContentTypeKey *
=+ ,
$str- N
;N O
public 
const 
string 
ContentItemIdKey ,
=- .
$str/ R
;R S
public		 
const		 
string		 #
ContentItemVersionIdKey		 3
=		4 5
$str		6 `
;		` a
public

 
const

 
string

 
CreatedUtcKey

 )
=

* +
$str

, L
;

L M
public 
const 
string 
	LatestKey %
=& '
$str( D
;D E
public 
const 
string 
ModifiedUtcKey *
=+ ,
$str- N
;N O
public 
const 
string 
PublishedKey (
=) *
$str+ J
;J K
public 
const 
string 
PublishedUtcKey +
=, -
$str. P
;P Q
public 
const 
string 
BodyAspectBodyKey -
=. /
$str0 I
;I J
public 
const 
string "
DisplayTextAnalyzedKey 2
=3 4
$str5 _
;_ `
public 
const 
string 
DisplayTextKey *
=+ ,
$str- N
;N O
public 
const 
string $
DisplayTextNormalizedKey 4
=5 6
$str7 c
;c d
public 
const 
string 
FullTextKey '
=( )
$str* H
;H I
} 
} ’
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.Core\Services\IContentsAdminListFilter.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Services '
{ 
public		 

	interface		 $
IContentsAdminListFilter		 -
{

 
Task 
FilterAsync 
( #
ContentOptionsViewModel 0
model1 6
,6 7
IQuery8 >
<> ?
ContentItem? J
>J K
queryL Q
,Q R
IUpdateModelS _
updater` g
)g h
;h i
} 
} ‹
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.Core\Services\IContentsAdminListQueryService.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Services '
{ 
public		 

	interface		 *
IContentsAdminListQueryService		 3
{

 
Task 
< 
IQuery 
< 
ContentItem 
>  
>  !

QueryAsync" ,
(, -#
ContentOptionsViewModel- D
modelE J
,J K
IUpdateModelL X
updaterY `
)` a
;a b
} 
} ¿&
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Contents.Core\ViewModels\ContentOptionsViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class #
ContentOptionsViewModel (
{		 
public

 #
ContentOptionsViewModel

 &
(

& '
)

' (
{ 	
OrderBy 
= 
ContentsOrder #
.# $
Modified$ ,
;, -

BulkAction 
= 

ViewModels #
.# $
ContentsBulkAction$ 6
.6 7
None7 ;
;; <
ContentsStatus 
= 
ContentsStatus +
.+ ,
Latest, 2
;2 3
} 	
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
SelectedContentType )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool (
CanCreateSelectedContentType 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
ContentsOrder 
OrderBy $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
ContentsStatus 
ContentsStatus ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
ContentsBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
int 

StartIndex 
{ 
get  #
;# $
set% (
;( )
}* +
public   
int   
EndIndex   
{   
get   !
;  ! "
set  # &
;  & '
}  ( )
public!! 
int!! 
ContentItemsCount!! $
{!!% &
get!!' *
;!!* +
set!!, /
;!!/ 0
}!!1 2
public"" 
int"" 
TotalItemCount"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
public##  
RouteValueDictionary## #
RouteValues##$ /
{##0 1
get##2 5
;##5 6
set##7 :
;##: ;
}##< =
=##> ?
new##@ C 
RouteValueDictionary##D X
(##X Y
)##Y Z
;##Z [
[)) 	
	BindNever))	 
])) 
public** 
List** 
<** 
SelectListItem** "
>**" #
ContentStatuses**$ 3
{**4 5
get**6 9
;**9 :
set**; >
;**> ?
}**@ A
[,, 	
	BindNever,,	 
],, 
public-- 
List-- 
<-- 
SelectListItem-- "
>--" #
ContentSorts--$ 0
{--1 2
get--3 6
;--6 7
set--8 ;
;--; <
}--= >
[// 	
	BindNever//	 
]// 
public00 
List00 
<00 
SelectListItem00 "
>00" #
ContentsBulkAction00$ 6
{007 8
get009 <
;00< =
set00> A
;00A B
}00C D
[22 	
	BindNever22	 
]22 
public33 
List33 
<33 
SelectListItem33 "
>33" #
ContentTypeOptions33$ 6
{337 8
get339 <
;33< =
set33> A
;33A B
}33C D
[55 	
	BindNever55	 
]55 
public66 
List66 
<66 
SelectListItem66 "
>66" #
CreatableTypes66$ 2
{663 4
get665 8
;668 9
set66: =
;66= >
}66? @
}99 
public;; 

enum;; 
ContentsOrder;; 
{<< 
Modified== 
,== 
	Published>> 
,>> 
Created?? 
,?? 
Title@@ 
,@@ 
}AA 
publicCC 

enumCC 
ContentsStatusCC 
{DD 
DraftEE 
,EE 
	PublishedFF 
,FF 
AllVersionsGG 
,GG 
LatestHH 
,HH 
OwnerII 
}JJ 
publicLL 

enumLL 
ContentsBulkActionLL "
{MM 
NoneNN 
,NN 

PublishNowOO 
,OO 
	UnpublishPP 
,PP 
RemoveQQ 
}RR 
}SS 