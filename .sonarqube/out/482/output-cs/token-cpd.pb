è
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\AdminMenu.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
{ 
public		 

class		 
	AdminMenu		 
:		 
INavigationProvider		 0
{

 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
configuration, 9
=>: <
configuration= J
. 
Add 
( 
S 
[ 
$str (
]( )
,) *
$str+ .
,. /
settings0 8
=>9 ;
settings< D
. 
Add  
(  !
S! "
[" #
$str# 5
]5 6
,6 7
S8 9
[9 :
$str: L
]L M
.M N
PrefixPositionN \
(\ ]
)] ^
,^ _
admt` d
=>e g
admth l
. 
AddClass %
(% &
$str& 7
)7 8
.8 9
Id9 ;
(; <
$str< M
)M N
.  !

Permission! +
(+ ,
Permissions, 7
.7 8
ManageTaxonomies8 H
)H I
.  !
Action! '
(' (
$str( /
,/ 0
$str1 8
,8 9
new: =
{> ?
area@ D
=E F
$strG ]
,] ^
groupId_ f
=g h;
.TaxonomyContentsAdminListSettingsDisplayDriver	i ó
.
ó ò
GroupId
ò ü
}
† °
)
° ¢
.  !
LocalNav! )
() *
)* +
)   
)   
)   
;   
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% Øÿ
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Controllers! ,
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IHtmlLocalizer '
H( )
;) *
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
AdminController 
( 
ISession 
session 
, 
IContentManager 
contentManager *
,* +!
IAuthorizationService   ! 
authorizationService  " 6
,  6 7&
IContentItemDisplayManager!! &%
contentItemDisplayManager!!' @
,!!@ A%
IContentDefinitionManager"" %$
contentDefinitionManager""& >
,""> ?
	INotifier## 
notifier## 
,## 
IHtmlLocalizer$$ 
<$$ 
AdminController$$ *
>$$* +
	localizer$$, 5
,$$5 6 
IUpdateModelAccessor%%  
updateModelAccessor%%! 4
)%%4 5
{&& 	
_contentManager'' 
='' 
contentManager'' ,
;'', -!
_authorizationService(( !
=((" # 
authorizationService(($ 8
;((8 9&
_contentItemDisplayManager)) &
=))' (%
contentItemDisplayManager))) B
;))B C%
_contentDefinitionManager** %
=**& '$
contentDefinitionManager**( @
;**@ A
_session++ 
=++ 
session++ 
;++ 
	_notifier,, 
=,, 
notifier,,  
;,,  ! 
_updateModelAccessor--  
=--! "
updateModelAccessor--# 6
;--6 7
H.. 
=.. 
	localizer.. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Create11) /
(11/ 0
string110 6
id117 9
,119 :
string11; A!
taxonomyContentItemId11B W
,11W X
string11Y _
taxonomyItemId11` n
)11n o
{22 	
if33 
(33 
String33 
.33 
IsNullOrWhiteSpace33 )
(33) *
id33* ,
)33, -
)33- .
{44 
return55 
NotFound55 
(55  
)55  !
;55! "
}66 
if88 
(88 
!88 
await88 !
_authorizationService88 ,
.88, -
AuthorizeAsync88- ;
(88; <
User88< @
,88@ A
Permissions88B M
.88M N
ManageTaxonomies88N ^
)88^ _
)88_ `
{99 
return:: 
Forbid:: 
(:: 
):: 
;::  
};; 
var== 
contentItem== 
=== 
await== #
_contentManager==$ 3
.==3 4
NewAsync==4 <
(==< =
id=== ?
)==? @
;==@ A
contentItem>> 
.>> 
Weld>> 
<>> 
TermPart>> %
>>>% &
(>>& '
)>>' (
;>>( )
contentItem?? 
.?? 
Alter?? 
<?? 
TermPart?? &
>??& '
(??' (
t??( )
=>??* ,
t??- .
.??. /!
TaxonomyContentItemId??/ D
=??E F!
taxonomyContentItemId??G \
)??\ ]
;??] ^
dynamicAA 
modelAA 
=AA 
awaitAA !&
_contentItemDisplayManagerAA" <
.AA< =
BuildEditorAsyncAA= M
(AAM N
contentItemAAN Y
,AAY Z 
_updateModelAccessorAA[ o
.AAo p
ModelUpdaterAAp |
,AA| }
true	AA~ Ç
)
AAÇ É
;
AAÉ Ñ
modelCC 
.CC !
TaxonomyContentItemIdCC '
=CC( )!
taxonomyContentItemIdCC* ?
;CC? @
modelDD 
.DD 
TaxonomyItemIdDD  
=DD! "
taxonomyItemIdDD# 1
;DD1 2
returnFF 
ViewFF 
(FF 
modelFF 
)FF 
;FF 
}GG 	
[II 	
HttpPostII	 
]II 
[JJ 	

ActionNameJJ	 
(JJ 
$strJJ 
)JJ 
]JJ 
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (

CreatePostKK) 3
(KK3 4
stringKK4 :
idKK; =
,KK= >
stringKK? E!
taxonomyContentItemIdKKF [
,KK[ \
stringKK] c
taxonomyItemIdKKd r
)KKr s
{LL 	
ifMM 
(MM 
!MM 
awaitMM !
_authorizationServiceMM ,
.MM, -
AuthorizeAsyncMM- ;
(MM; <
UserMM< @
,MM@ A
PermissionsMMB M
.MMM N
ManageTaxonomiesMMN ^
)MM^ _
)MM_ `
{NN 
returnOO 
ForbidOO 
(OO 
)OO 
;OO  
}PP 
ContentItemRR 
taxonomyRR  
;RR  !
varTT !
contentTypeDefinitionTT %
=TT& '%
_contentDefinitionManagerTT( A
.TTA B
GetTypeDefinitionTTB S
(TTS T
$strTTT ^
)TT^ _
;TT_ `
ifVV 
(VV 
!VV !
contentTypeDefinitionVV &
.VV& '
GetSettingsVV' 2
<VV2 3
ContentTypeSettingsVV3 F
>VVF G
(VVG H
)VVH I
.VVI J
	DraftableVVJ S
)VVS T
{WW 
taxonomyXX 
=XX 
awaitXX  
_contentManagerXX! 0
.XX0 1
GetAsyncXX1 9
(XX9 :!
taxonomyContentItemIdXX: O
,XXO P
VersionOptionsXXQ _
.XX_ `
LatestXX` f
)XXf g
;XXg h
}YY 
elseZZ 
{[[ 
taxonomy\\ 
=\\ 
await\\  
_contentManager\\! 0
.\\0 1
GetAsync\\1 9
(\\9 :!
taxonomyContentItemId\\: O
,\\O P
VersionOptions\\Q _
.\\_ `
DraftRequired\\` m
)\\m n
;\\n o
}]] 
if__ 
(__ 
taxonomy__ 
==__ 
null__  
)__  !
{`` 
returnaa 
NotFoundaa 
(aa  
)aa  !
;aa! "
}bb 
vardd 
contentItemdd 
=dd 
awaitdd #
_contentManagerdd$ 3
.dd3 4
NewAsyncdd4 <
(dd< =
iddd= ?
)dd? @
;dd@ A
contentItemee 
.ee 
Weldee 
<ee 
TermPartee %
>ee% &
(ee& '
)ee' (
;ee( )
contentItemff 
.ff 
Alterff 
<ff 
TermPartff &
>ff& '
(ff' (
tff( )
=>ff* ,
tff- .
.ff. /!
TaxonomyContentItemIdff/ D
=ffE F!
taxonomyContentItemIdffG \
)ff\ ]
;ff] ^
dynamichh 
modelhh 
=hh 
awaithh !&
_contentItemDisplayManagerhh" <
.hh< =
UpdateEditorAsynchh= N
(hhN O
contentItemhhO Z
,hhZ [ 
_updateModelAccessorhh\ p
.hhp q
ModelUpdaterhhq }
,hh} ~
true	hh É
)
hhÉ Ñ
;
hhÑ Ö
ifjj 
(jj 
!jj 

ModelStatejj 
.jj 
IsValidjj #
)jj# $
{kk 
modelll 
.ll !
TaxonomyContentItemIdll +
=ll, -!
taxonomyContentItemIdll. C
;llC D
modelmm 
.mm 
TaxonomyItemIdmm $
=mm% &
taxonomyItemIdmm' 5
;mm5 6
returnoo 
Viewoo 
(oo 
modeloo !
)oo! "
;oo" #
}pp 
ifrr 
(rr 
taxonomyItemIdrr 
==rr !
nullrr" &
)rr& '
{ss 
taxonomyuu 
.uu 
Alteruu 
<uu 
TaxonomyPartuu +
>uu+ ,
(uu, -
partuu- 1
=>uu2 4
partuu5 9
.uu9 :
Termsuu: ?
.uu? @
Adduu@ C
(uuC D
contentItemuuD O
)uuO P
)uuP Q
;uuQ R
}vv 
elseww 
{xx 
varzz 
parentTaxonomyItemzz &
=zz' (
FindTaxonomyItemzz) 9
(zz9 :
taxonomyzz: B
.zzB C
AszzC E
<zzE F
TaxonomyPartzzF R
>zzR S
(zzS T
)zzT U
.zzU V
ContentzzV ]
,zz] ^
taxonomyItemIdzz_ m
)zzm n
;zzn o
if}} 
(}} 
parentTaxonomyItem}} &
==}}' )
null}}* .
)}}. /
{~~ 
return 
NotFound #
(# $
)$ %
;% &
}
ÄÄ 
var
ÇÇ 
taxonomyItems
ÇÇ !
=
ÇÇ" # 
parentTaxonomyItem
ÇÇ$ 6
?
ÇÇ6 7
.
ÇÇ7 8
Terms
ÇÇ8 =
as
ÇÇ> @
JArray
ÇÇA G
;
ÇÇG H
if
ÑÑ 
(
ÑÑ 
taxonomyItems
ÑÑ !
==
ÑÑ" $
null
ÑÑ% )
)
ÑÑ) *
{
ÖÖ  
parentTaxonomyItem
ÜÜ &
[
ÜÜ& '
$str
ÜÜ' .
]
ÜÜ. /
=
ÜÜ0 1
taxonomyItems
ÜÜ2 ?
=
ÜÜ@ A
new
ÜÜB E
JArray
ÜÜF L
(
ÜÜL M
)
ÜÜM N
;
ÜÜN O
}
áá 
taxonomyItems
ââ 
.
ââ 
Add
ââ !
(
ââ! "
JObject
ââ" )
.
ââ) *

FromObject
ââ* 4
(
ââ4 5
contentItem
ââ5 @
)
ââ@ A
)
ââA B
;
ââB C
}
ää 
_session
åå 
.
åå 
Save
åå 
(
åå 
taxonomy
åå "
)
åå" #
;
åå# $
return
éé 
RedirectToAction
éé #
(
éé# $
$str
éé$ *
,
éé* +
$str
éé, 3
,
éé3 4
new
éé5 8
{
éé9 :
area
éé; ?
=
éé@ A
$str
ééB X
,
ééX Y
contentItemId
ééZ g
=
ééh i#
taxonomyContentItemId
ééj 
}ééÄ Å
)ééÅ Ç
;ééÇ É
}
èè 	
public
ëë 
async
ëë 
Task
ëë 
<
ëë 
IActionResult
ëë '
>
ëë' (
Edit
ëë) -
(
ëë- .
string
ëë. 4#
taxonomyContentItemId
ëë5 J
,
ëëJ K
string
ëëL R
taxonomyItemId
ëëS a
)
ëëa b
{
íí 	
var
ìì 
taxonomy
ìì 
=
ìì 
await
ìì  
_contentManager
ìì! 0
.
ìì0 1
GetAsync
ìì1 9
(
ìì9 :#
taxonomyContentItemId
ìì: O
,
ììO P
VersionOptions
ììQ _
.
ìì_ `
Latest
ìì` f
)
ììf g
;
ììg h
if
ïï 
(
ïï 
taxonomy
ïï 
==
ïï 
null
ïï  
)
ïï  !
{
ññ 
return
óó 
NotFound
óó 
(
óó  
)
óó  !
;
óó! "
}
òò 
if
öö 
(
öö 
!
öö 
await
öö #
_authorizationService
öö ,
.
öö, -
AuthorizeAsync
öö- ;
(
öö; <
User
öö< @
,
öö@ A
Permissions
ööB M
.
ööM N
ManageTaxonomies
ööN ^
,
öö^ _
taxonomy
öö` h
)
ööh i
)
ööi j
{
õõ 
return
úú 
Forbid
úú 
(
úú 
)
úú 
;
úú  
}
ùù 
JObject
†† 
taxonomyItem
††  
=
††! "
FindTaxonomyItem
††# 3
(
††3 4
taxonomy
††4 <
.
††< =
As
††= ?
<
††? @
TaxonomyPart
††@ L
>
††L M
(
††M N
)
††N O
.
††O P
Content
††P W
,
††W X
taxonomyItemId
††Y g
)
††g h
;
††h i
if
££ 
(
££ 
taxonomyItem
££ 
==
££ 
null
££  $
)
££$ %
{
§§ 
return
•• 
NotFound
•• 
(
••  
)
••  !
;
••! "
}
¶¶ 
var
®® 
contentItem
®® 
=
®® 
taxonomyItem
®® *
.
®®* +
ToObject
®®+ 3
<
®®3 4
ContentItem
®®4 ?
>
®®? @
(
®®@ A
)
®®A B
;
®®B C
contentItem
©© 
.
©© 
Weld
©© 
<
©© 
TermPart
©© %
>
©©% &
(
©©& '
)
©©' (
;
©©( )
contentItem
™™ 
.
™™ 
Alter
™™ 
<
™™ 
TermPart
™™ &
>
™™& '
(
™™' (
t
™™( )
=>
™™* ,
t
™™- .
.
™™. /#
TaxonomyContentItemId
™™/ D
=
™™E F#
taxonomyContentItemId
™™G \
)
™™\ ]
;
™™] ^
dynamic
¨¨ 
model
¨¨ 
=
¨¨ 
await
¨¨ !(
_contentItemDisplayManager
¨¨" <
.
¨¨< =
BuildEditorAsync
¨¨= M
(
¨¨M N
contentItem
¨¨N Y
,
¨¨Y Z"
_updateModelAccessor
¨¨[ o
.
¨¨o p
ModelUpdater
¨¨p |
,
¨¨| }
false¨¨~ É
)¨¨É Ñ
;¨¨Ñ Ö
model
ÆÆ 
.
ÆÆ #
TaxonomyContentItemId
ÆÆ '
=
ÆÆ( )#
taxonomyContentItemId
ÆÆ* ?
;
ÆÆ? @
model
ØØ 
.
ØØ 
TaxonomyItemId
ØØ  
=
ØØ! "
taxonomyItemId
ØØ# 1
;
ØØ1 2
return
±± 
View
±± 
(
±± 
model
±± 
)
±± 
;
±± 
}
≤≤ 	
[
¥¥ 	
HttpPost
¥¥	 
]
¥¥ 
[
µµ 	

ActionName
µµ	 
(
µµ 
$str
µµ 
)
µµ 
]
µµ 
public
∂∂ 
async
∂∂ 
Task
∂∂ 
<
∂∂ 
IActionResult
∂∂ '
>
∂∂' (
EditPost
∂∂) 1
(
∂∂1 2
string
∂∂2 8#
taxonomyContentItemId
∂∂9 N
,
∂∂N O
string
∂∂P V
taxonomyItemId
∂∂W e
)
∂∂e f
{
∑∑ 	
if
∏∏ 
(
∏∏ 
!
∏∏ 
await
∏∏ #
_authorizationService
∏∏ ,
.
∏∏, -
AuthorizeAsync
∏∏- ;
(
∏∏; <
User
∏∏< @
,
∏∏@ A
Permissions
∏∏B M
.
∏∏M N
ManageTaxonomies
∏∏N ^
)
∏∏^ _
)
∏∏_ `
{
ππ 
return
∫∫ 
Forbid
∫∫ 
(
∫∫ 
)
∫∫ 
;
∫∫  
}
ªª 
ContentItem
ΩΩ 
taxonomy
ΩΩ  
;
ΩΩ  !
var
øø #
contentTypeDefinition
øø %
=
øø& ''
_contentDefinitionManager
øø( A
.
øøA B
GetTypeDefinition
øøB S
(
øøS T
$str
øøT ^
)
øø^ _
;
øø_ `
if
¡¡ 
(
¡¡ 
!
¡¡ #
contentTypeDefinition
¡¡ &
.
¡¡& '
GetSettings
¡¡' 2
<
¡¡2 3!
ContentTypeSettings
¡¡3 F
>
¡¡F G
(
¡¡G H
)
¡¡H I
.
¡¡I J
	Draftable
¡¡J S
)
¡¡S T
{
¬¬ 
taxonomy
√√ 
=
√√ 
await
√√  
_contentManager
√√! 0
.
√√0 1
GetAsync
√√1 9
(
√√9 :#
taxonomyContentItemId
√√: O
,
√√O P
VersionOptions
√√Q _
.
√√_ `
Latest
√√` f
)
√√f g
;
√√g h
}
ƒƒ 
else
≈≈ 
{
∆∆ 
taxonomy
«« 
=
«« 
await
««  
_contentManager
««! 0
.
««0 1
GetAsync
««1 9
(
««9 :#
taxonomyContentItemId
««: O
,
««O P
VersionOptions
««Q _
.
««_ `
DraftRequired
««` m
)
««m n
;
««n o
}
»» 
if
   
(
   
taxonomy
   
==
   
null
    
)
    !
{
ÀÀ 
return
ÃÃ 
NotFound
ÃÃ 
(
ÃÃ  
)
ÃÃ  !
;
ÃÃ! "
}
ÕÕ 
JObject
–– 
taxonomyItem
––  
=
––! "
FindTaxonomyItem
––# 3
(
––3 4
taxonomy
––4 <
.
––< =
As
––= ?
<
––? @
TaxonomyPart
––@ L
>
––L M
(
––M N
)
––N O
.
––O P
Content
––P W
,
––W X
taxonomyItemId
––Y g
)
––g h
;
––h i
if
”” 
(
”” 
taxonomyItem
”” 
==
”” 
null
””  $
)
””$ %
{
‘‘ 
return
’’ 
NotFound
’’ 
(
’’  
)
’’  !
;
’’! "
}
÷÷ 
var
ÿÿ 
existing
ÿÿ 
=
ÿÿ 
taxonomyItem
ÿÿ '
.
ÿÿ' (
ToObject
ÿÿ( 0
<
ÿÿ0 1
ContentItem
ÿÿ1 <
>
ÿÿ< =
(
ÿÿ= >
)
ÿÿ> ?
;
ÿÿ? @
var
€€ 
contentItem
€€ 
=
€€ 
await
€€ #
_contentManager
€€$ 3
.
€€3 4
NewAsync
€€4 <
(
€€< =
existing
€€= E
.
€€E F
ContentType
€€F Q
)
€€Q R
;
€€R S
contentItem
›› 
.
›› 
Merge
›› 
(
›› 
existing
›› &
)
››& '
;
››' (
contentItem
ﬁﬁ 
.
ﬁﬁ 
Weld
ﬁﬁ 
<
ﬁﬁ 
TermPart
ﬁﬁ %
>
ﬁﬁ% &
(
ﬁﬁ& '
)
ﬁﬁ' (
;
ﬁﬁ( )
contentItem
ﬂﬂ 
.
ﬂﬂ 
Alter
ﬂﬂ 
<
ﬂﬂ 
TermPart
ﬂﬂ &
>
ﬂﬂ& '
(
ﬂﬂ' (
t
ﬂﬂ( )
=>
ﬂﬂ* ,
t
ﬂﬂ- .
.
ﬂﬂ. /#
TaxonomyContentItemId
ﬂﬂ/ D
=
ﬂﬂE F#
taxonomyContentItemId
ﬂﬂG \
)
ﬂﬂ\ ]
;
ﬂﬂ] ^
dynamic
·· 
model
·· 
=
·· 
await
·· !(
_contentItemDisplayManager
··" <
.
··< =
UpdateEditorAsync
··= N
(
··N O
contentItem
··O Z
,
··Z ["
_updateModelAccessor
··\ p
.
··p q
ModelUpdater
··q }
,
··} ~
false·· Ñ
)··Ñ Ö
;··Ö Ü
if
„„ 
(
„„ 
!
„„ 

ModelState
„„ 
.
„„ 
IsValid
„„ #
)
„„# $
{
‰‰ 
model
ÂÂ 
.
ÂÂ #
TaxonomyContentItemId
ÂÂ +
=
ÂÂ, -#
taxonomyContentItemId
ÂÂ. C
;
ÂÂC D
model
ÊÊ 
.
ÊÊ 
TaxonomyItemId
ÊÊ $
=
ÊÊ% &
taxonomyItemId
ÊÊ' 5
;
ÊÊ5 6
return
ËË 
View
ËË 
(
ËË 
model
ËË !
)
ËË! "
;
ËË" #
}
ÈÈ 
taxonomyItem
ÎÎ 
.
ÎÎ 
Merge
ÎÎ 
(
ÎÎ 
contentItem
ÎÎ *
.
ÎÎ* +
Content
ÎÎ+ 2
,
ÎÎ2 3
new
ÎÎ4 7
JsonMergeSettings
ÎÎ8 I
{
ÏÏ  
MergeArrayHandling
ÌÌ "
=
ÌÌ# $ 
MergeArrayHandling
ÌÌ% 7
.
ÌÌ7 8
Replace
ÌÌ8 ?
,
ÌÌ? @$
MergeNullValueHandling
ÓÓ &
=
ÓÓ' ($
MergeNullValueHandling
ÓÓ) ?
.
ÓÓ? @
Merge
ÓÓ@ E
}
ÔÔ 
)
ÔÔ 
;
ÔÔ 
taxonomyItem
ÚÚ 
[
ÚÚ 
nameof
ÚÚ 
(
ÚÚ  
ContentItem
ÚÚ  +
.
ÚÚ+ ,
DisplayText
ÚÚ, 7
)
ÚÚ7 8
]
ÚÚ8 9
=
ÚÚ: ;
contentItem
ÚÚ< G
.
ÚÚG H
DisplayText
ÚÚH S
;
ÚÚS T
_session
ÙÙ 
.
ÙÙ 
Save
ÙÙ 
(
ÙÙ 
taxonomy
ÙÙ "
)
ÙÙ" #
;
ÙÙ# $
return
ˆˆ 
RedirectToAction
ˆˆ #
(
ˆˆ# $
$str
ˆˆ$ *
,
ˆˆ* +
$str
ˆˆ, 3
,
ˆˆ3 4
new
ˆˆ5 8
{
ˆˆ9 :
area
ˆˆ; ?
=
ˆˆ@ A
$str
ˆˆB X
,
ˆˆX Y
contentItemId
ˆˆZ g
=
ˆˆh i#
taxonomyContentItemId
ˆˆj 
}ˆˆÄ Å
)ˆˆÅ Ç
;ˆˆÇ É
}
˜˜ 	
[
˘˘ 	
HttpPost
˘˘	 
]
˘˘ 
public
˙˙ 
async
˙˙ 
Task
˙˙ 
<
˙˙ 
IActionResult
˙˙ '
>
˙˙' (
Delete
˙˙) /
(
˙˙/ 0
string
˙˙0 6#
taxonomyContentItemId
˙˙7 L
,
˙˙L M
string
˙˙N T
taxonomyItemId
˙˙U c
)
˙˙c d
{
˚˚ 	
if
¸¸ 
(
¸¸ 
!
¸¸ 
await
¸¸ #
_authorizationService
¸¸ ,
.
¸¸, -
AuthorizeAsync
¸¸- ;
(
¸¸; <
User
¸¸< @
,
¸¸@ A
Permissions
¸¸B M
.
¸¸M N
ManageTaxonomies
¸¸N ^
)
¸¸^ _
)
¸¸_ `
{
˝˝ 
return
˛˛ 
Forbid
˛˛ 
(
˛˛ 
)
˛˛ 
;
˛˛  
}
ˇˇ 
ContentItem
ÅÅ 
taxonomy
ÅÅ  
;
ÅÅ  !
var
ÉÉ #
contentTypeDefinition
ÉÉ %
=
ÉÉ& ''
_contentDefinitionManager
ÉÉ( A
.
ÉÉA B
GetTypeDefinition
ÉÉB S
(
ÉÉS T
$str
ÉÉT ^
)
ÉÉ^ _
;
ÉÉ_ `
if
ÖÖ 
(
ÖÖ 
!
ÖÖ #
contentTypeDefinition
ÖÖ &
.
ÖÖ& '
GetSettings
ÖÖ' 2
<
ÖÖ2 3!
ContentTypeSettings
ÖÖ3 F
>
ÖÖF G
(
ÖÖG H
)
ÖÖH I
.
ÖÖI J
	Draftable
ÖÖJ S
)
ÖÖS T
{
ÜÜ 
taxonomy
áá 
=
áá 
await
áá  
_contentManager
áá! 0
.
áá0 1
GetAsync
áá1 9
(
áá9 :#
taxonomyContentItemId
áá: O
,
ááO P
VersionOptions
ááQ _
.
áá_ `
Latest
áá` f
)
ááf g
;
áág h
}
àà 
else
ââ 
{
ää 
taxonomy
ãã 
=
ãã 
await
ãã  
_contentManager
ãã! 0
.
ãã0 1
GetAsync
ãã1 9
(
ãã9 :#
taxonomyContentItemId
ãã: O
,
ããO P
VersionOptions
ããQ _
.
ãã_ `
DraftRequired
ãã` m
)
ããm n
;
ããn o
}
åå 
if
éé 
(
éé 
taxonomy
éé 
==
éé 
null
éé  
)
éé  !
{
èè 
return
êê 
NotFound
êê 
(
êê  
)
êê  !
;
êê! "
}
ëë 
var
îî 
taxonomyItem
îî 
=
îî 
FindTaxonomyItem
îî /
(
îî/ 0
taxonomy
îî0 8
.
îî8 9
As
îî9 ;
<
îî; <
TaxonomyPart
îî< H
>
îîH I
(
îîI J
)
îîJ K
.
îîK L
Content
îîL S
,
îîS T
taxonomyItemId
îîU c
)
îîc d
;
îîd e
if
óó 
(
óó 
taxonomyItem
óó 
==
óó 
null
óó  $
)
óó$ %
{
òò 
return
ôô 
NotFound
ôô 
(
ôô  
)
ôô  !
;
ôô! "
}
öö 
taxonomyItem
úú 
.
úú 
Remove
úú 
(
úú  
)
úú  !
;
úú! "
_session
ùù 
.
ùù 
Save
ùù 
(
ùù 
taxonomy
ùù "
)
ùù" #
;
ùù# $
	_notifier
üü 
.
üü 
Success
üü 
(
üü 
H
üü 
[
üü  
$str
üü  E
]
üüE F
)
üüF G
;
üüG H
return
°° 
RedirectToAction
°° #
(
°°# $
$str
°°$ *
,
°°* +
$str
°°, 3
,
°°3 4
new
°°5 8
{
°°9 :
area
°°; ?
=
°°@ A
$str
°°B X
,
°°X Y
contentItemId
°°Z g
=
°°h i#
taxonomyContentItemId
°°j 
}°°Ä Å
)°°Å Ç
;°°Ç É
}
¢¢ 	
private
§§ 
JObject
§§ 
FindTaxonomyItem
§§ (
(
§§( )
JObject
§§) 0
contentItem
§§1 <
,
§§< =
string
§§> D
taxonomyItemId
§§E S
)
§§S T
{
•• 	
if
¶¶ 
(
¶¶ 
contentItem
¶¶ 
[
¶¶ 
$str
¶¶ +
]
¶¶+ ,
?
¶¶, -
.
¶¶- .
Value
¶¶. 3
<
¶¶3 4
string
¶¶4 :
>
¶¶: ;
(
¶¶; <
)
¶¶< =
==
¶¶> @
taxonomyItemId
¶¶A O
)
¶¶O P
{
ßß 
return
®® 
contentItem
®® "
;
®®" #
}
©© 
if
´´ 
(
´´ 
contentItem
´´ 
.
´´ 
GetValue
´´ $
(
´´$ %
$str
´´% ,
)
´´, -
==
´´. 0
null
´´1 5
)
´´5 6
{
¨¨ 
return
≠≠ 
null
≠≠ 
;
≠≠ 
}
ÆÆ 
var
∞∞ 
taxonomyItems
∞∞ 
=
∞∞ 
(
∞∞  !
JArray
∞∞! '
)
∞∞' (
contentItem
∞∞( 3
[
∞∞3 4
$str
∞∞4 ;
]
∞∞; <
;
∞∞< =
JObject
≤≤ 
result
≤≤ 
;
≤≤ 
foreach
¥¥ 
(
¥¥ 
JObject
¥¥ 
taxonomyItem
¥¥ )
in
¥¥* ,
taxonomyItems
¥¥- :
)
¥¥: ;
{
µµ 
result
∑∑ 
=
∑∑ 
FindTaxonomyItem
∑∑ )
(
∑∑) *
taxonomyItem
∑∑* 6
,
∑∑6 7
taxonomyItemId
∑∑8 F
)
∑∑F G
;
∑∑G H
if
ππ 
(
ππ 
result
ππ 
!=
ππ 
null
ππ "
)
ππ" #
{
∫∫ 
return
ªª 
result
ªª !
;
ªª! "
}
ºº 
}
ΩΩ 
return
øø 
null
øø 
;
øø 
}
¿¿ 	
}
¡¡ 
}¬¬ ØC
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Controllers\TagController.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Controllers! ,
{ 
[ 
Admin 

]
 
public 

class 
TagController 
:  

Controller! +
,+ ,
IUpdateModel- 9
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IEnumerable $
<$ %
IContentHandler% 4
>4 5
_contentHandlers6 F
;F G
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
_logger! (
;( )
public 
TagController 
( 
IContentManager 
contentManager *
,* +!
IAuthorizationService   ! 
authorizationService  " 6
,  6 7%
IContentDefinitionManager!! %$
contentDefinitionManager!!& >
,!!> ?
IEnumerable"" 
<"" 
IContentHandler"" '
>""' (
contentHandlers"") 8
,""8 9
ISession## 
session## 
,## 
ILogger$$ 
<$$ 
TagController$$ !
>$$! "
logger$$# )
)$$) *
{%% 	
_contentManager&& 
=&& 
contentManager&& ,
;&&, -!
_authorizationService'' !
=''" # 
authorizationService''$ 8
;''8 9%
_contentDefinitionManager(( %
=((& '$
contentDefinitionManager((( @
;((@ A
_contentHandlers)) 
=)) 
contentHandlers)) .
;)). /
_session** 
=** 
session** 
;** 
_logger++ 
=++ 
logger++ 
;++ 
},, 	
[.. 	
HttpPost..	 
].. 
[// 	

ActionName//	 
(// 
$str// 
)// 
]// 
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (

CreatePost00) 3
(003 4
string004 :!
taxonomyContentItemId00; P
,00P Q
string00R X
displayText00Y d
)00d e
{11 	
if22 
(22 
!22 
await22 !
_authorizationService22 ,
.22, -
AuthorizeAsync22- ;
(22; <
User22< @
,22@ A
Permissions22B M
.22M N
ManageTaxonomies22N ^
)22^ _
)22_ `
{33 
return44 
Unauthorized44 #
(44# $
)44$ %
;44% &
}55 
ContentItem77 
taxonomy77  
;77  !
var99 !
contentTypeDefinition99 %
=99& '%
_contentDefinitionManager99( A
.99A B
GetTypeDefinition99B S
(99S T
$str99T ^
)99^ _
;99_ `
if;; 
(;; 
!;; !
contentTypeDefinition;; &
.;;& '
GetSettings;;' 2
<;;2 3
ContentTypeSettings;;3 F
>;;F G
(;;G H
);;H I
.;;I J
	Draftable;;J S
);;S T
{<< 
taxonomy== 
=== 
await==  
_contentManager==! 0
.==0 1
GetAsync==1 9
(==9 :!
taxonomyContentItemId==: O
,==O P
VersionOptions==Q _
.==_ `
Latest==` f
)==f g
;==g h
}>> 
else?? 
{@@ 
taxonomyAA 
=AA 
awaitAA  
_contentManagerAA! 0
.AA0 1
GetAsyncAA1 9
(AA9 :!
taxonomyContentItemIdAA: O
,AAO P
VersionOptionsAAQ _
.AA_ `
DraftRequiredAA` m
)AAm n
;AAn o
}BB 
ifDD 
(DD 
taxonomyDD 
==DD 
nullDD  
)DD  !
{EE 
returnFF 
NotFoundFF 
(FF  
)FF  !
;FF! "
}GG 
varII 
partII 
=II 
taxonomyII 
.II  
AsII  "
<II" #
TaxonomyPartII# /
>II/ 0
(II0 1
)II1 2
;II2 3
varNN 
contentItemNN 
=NN 
awaitNN #
_contentManagerNN$ 3
.NN3 4
NewAsyncNN4 <
(NN< =
partNN= A
.NNA B
TermContentTypeNNB Q
)NNQ R
;NNR S
contentItemOO 
.OO 
DisplayTextOO #
=OO$ %
displayTextOO& 1
;OO1 2
contentItemPP 
.PP 
WeldPP 
<PP 
TermPartPP %
>PP% &
(PP& '
)PP' (
;PP( )
contentItemQQ 
.QQ 
AlterQQ 
<QQ 
TermPartQQ &
>QQ& '
(QQ' (
tQQ( )
=>QQ* ,
tQQ- .
.QQ. /!
TaxonomyContentItemIdQQ/ D
=QQE F!
taxonomyContentItemIdQQG \
)QQ\ ]
;QQ] ^
varSS  
updateContentContextSS $
=SS% &
newSS' * 
UpdateContentContextSS+ ?
(SS? @
contentItemSS@ K
)SSK L
;SSL M
awaitUU 
_contentHandlersUU "
.UU" #
InvokeAsyncUU# .
(UU. /
(UU/ 0
handlerUU0 7
,UU7 8 
updateContentContextUU9 M
)UUM N
=>UUO Q
handlerUUR Y
.UUY Z
UpdatingAsyncUUZ g
(UUg h 
updateContentContextUUh |
)UU| }
,UU} ~!
updateContentContext	UU ì
,
UUì î
_logger
UUï ú
)
UUú ù
;
UUù û
awaitVV 
_contentHandlersVV "
.VV" #
ReverseVV# *
(VV* +
)VV+ ,
.VV, -
InvokeAsyncVV- 8
(VV8 9
(VV9 :
handlerVV: A
,VVA B 
updateContentContextVVC W
)VVW X
=>VVY [
handlerVV\ c
.VVc d
UpdatedAsyncVVd p
(VVp q!
updateContentContext	VVq Ö
)
VVÖ Ü
,
VVÜ á"
updateContentContext
VVà ú
,
VVú ù
_logger
VVû •
)
VV• ¶
;
VV¶ ß
ifXX 
(XX 
!XX 

ModelStateXX 
.XX 
IsValidXX #
)XX# $
{YY 
returnZZ 

BadRequestZZ !
(ZZ! "
)ZZ" #
;ZZ# $
}[[ 
taxonomy^^ 
.^^ 
Alter^^ 
<^^ 
TaxonomyPart^^ '
>^^' (
(^^( )
part^^) -
=>^^. 0
part^^1 5
.^^5 6
Terms^^6 ;
.^^; <
Add^^< ?
(^^? @
contentItem^^@ K
)^^K L
)^^L M
;^^M N
ifaa 
(aa !
contentTypeDefinitionaa %
.aa% &
GetSettingsaa& 1
<aa1 2
ContentTypeSettingsaa2 E
>aaE F
(aaF G
)aaG H
.aaH I
	DraftableaaI R
)aaR S
{bb 
awaitcc 
_contentManagercc %
.cc% &
PublishAsynccc& 2
(cc2 3
taxonomycc3 ;
)cc; <
;cc< =
}dd 
elseee 
{ff 
_sessiongg 
.gg 
Savegg 
(gg 
taxonomygg &
)gg& '
;gg' (
}hh 
varjj 
	viewModeljj 
=jj 
newjj 
CreatedTagViewModeljj  3
{kk 
ContentItemIdll 
=ll 
contentItemll  +
.ll+ ,
ContentItemIdll, 9
,ll9 :
DisplayTextmm 
=mm 
contentItemmm )
.mm) *
DisplayTextmm* 5
}nn 
;nn 
returnpp 
Okpp 
(pp 
	viewModelpp 
)pp  
;pp  !
}qq 	
}rr 
}ss ‡w
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Drivers\TaxonomyContentsAdminListDisplayDriver.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Drivers! (
{ 
public 

class 2
&TaxonomyContentsAdminListDisplayDriver 7
:8 9
DisplayDriver: G
<G H#
ContentOptionsViewModelH _
>_ `
{ 
private 
const 
string 
LevelPadding )
=* +
$str, 6
;6 7
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public!! 2
&TaxonomyContentsAdminListDisplayDriver!! 5
(!!5 6
ISiteService"" 
siteService"" $
,""$ %
IContentManager## 
contentManager## *
,##* +%
IContentDefinitionManager$$ %$
contentDefinitionManager$$& >
,$$> ?
IStringLocalizer%% 
<%% 2
&TaxonomyContentsAdminListDisplayDriver%% C
>%%C D
stringLocalizer%%E T
)%%T U
{&& 	
_siteService'' 
='' 
siteService'' &
;''& '
_contentManager(( 
=(( 
contentManager(( ,
;((, -%
_contentDefinitionManager)) %
=))& '$
contentDefinitionManager))( @
;))@ A
S** 
=** 
stringLocalizer** 
;**  
}++ 	
public-- 
override-- 
async-- 
Task-- "
<--" #
IDisplayResult--# 1
>--1 2
	EditAsync--3 <
(--< =#
ContentOptionsViewModel--= T
model--U Z
,--Z [
IUpdateModel--\ h
updater--i p
)--p q
{.. 	
var// 
settings// 
=// 
(// 
await// !
_siteService//" .
.//. / 
GetSiteSettingsAsync/// C
(//C D
)//D E
)//E F
.//F G
As//G I
<//I J-
!TaxonomyContentsAdminListSettings//J k
>//k l
(//l m
)//m n
;//n o
if11 
(11 
!11 
settings11 
.11 "
TaxonomyContentItemIds11 0
.110 1
Any111 4
(114 5
)115 6
)116 7
{22 
return33 
null33 
;33 
}44 
var66 "
taxonomyContentItemIds66 &
=66' (
settings66) 1
.661 2"
TaxonomyContentItemIds662 H
;66H I
if77 
(77 
!77 
String77 
.77 
IsNullOrEmpty77 %
(77% &
model77& +
.77+ ,
SelectedContentType77, ?
)77? @
)77@ A
{88 
var99 !
contentTypeDefinition99 )
=99* +%
_contentDefinitionManager99, E
.99E F
GetTypeDefinition99F W
(99W X
model99X ]
.99] ^
SelectedContentType99^ q
)99q r
;99r s
var:: 
fieldDefinitions:: $
=::% &!
contentTypeDefinition::' <
.;; 
Parts;; 
.;; 

SelectMany;; %
(;;% &
x;;& '
=>;;( *
x;;+ ,
.;;, -
PartDefinition;;- ;
.;;; <
Fields;;< B
.;;B C
Where;;C H
(;;H I
f;;I J
=>;;K M
f;;N O
.;;O P
FieldDefinition;;P _
.;;_ `
Name;;` d
==;;e g
nameof;;h n
(;;n o
TaxonomyField;;o |
);;| }
);;} ~
);;~ 
;	;; Ä
var<< '
fieldTaxonomyContentItemIds<< /
=<<0 1
fieldDefinitions<<2 B
.<<B C
Select<<C I
(<<I J
x<<J K
=><<L N
x<<O P
.<<P Q
GetSettings<<Q \
<<<\ ]!
TaxonomyFieldSettings<<] r
><<r s
(<<s t
)<<t u
.<<u v"
TaxonomyContentItemId	<<v ã
)
<<ã å
;
<<å ç"
taxonomyContentItemIds== &
===' ("
taxonomyContentItemIds==) ?
.==? @
	Intersect==@ I
(==I J'
fieldTaxonomyContentItemIds==J e
)==e f
.==f g
ToArray==g n
(==n o
)==o p
;==p q
if?? 
(?? 
!?? "
taxonomyContentItemIds?? +
.??+ ,
Any??, /
(??/ 0
)??0 1
)??1 2
{@@ 
returnAA 
nullAA 
;AA  
}BB 
}CC 
varEE 
resultsEE 
=EE 
newEE 
ListEE "
<EE" #
IDisplayResultEE# 1
>EE1 2
(EE2 3
)EE3 4
;EE4 5
varFF 

taxonomiesFF 
=FF 
awaitFF "
_contentManagerFF# 2
.FF2 3
GetAsyncFF3 ;
(FF; <"
taxonomyContentItemIdsFF< R
)FFR S
;FFS T
varHH 
positionHH 
=HH 
$numHH 
;HH 
foreachII 
(II 
varII 
taxonomyII !
inII" $

taxonomiesII% /
)II/ 0
{JJ 
resultsKK 
.KK 
AddKK 
(KK 

InitializeLL 
<LL 0
$TaxonomyContentsAdminFilterViewModelLL C
>LLC D
(LLD E
$strLLE f
,LLf g
mLLh i
=>LLj l
{MM 
varNN 
termEntriesNN '
=NN( )
newNN* -
ListNN. 2
<NN2 3
FilterTermEntryNN3 B
>NNB C
(NNC D
)NND E
;NNE F
PopulateTermEntriesOO +
(OO+ ,
termEntriesOO, 7
,OO7 8
taxonomyOO9 A
.OOA B
AsOOB D
<OOD E
TaxonomyPartOOE Q
>OOQ R
(OOR S
)OOS T
.OOT U
TermsOOU Z
,OOZ [
$numOO\ ]
)OO] ^
;OO^ _
varPP 
termsPP !
=PP" #
newPP$ '
ListPP( ,
<PP, -
SelectListItemPP- ;
>PP; <
{QQ 
newRR  #
SelectListItemRR$ 2
(RR2 3
)RR3 4
{RR5 6
TextRR7 ;
=RR< =
SRR> ?
[RR? @
$strRR@ N
]RRN O
,RRO P
ValueRRQ V
=RRW X
$strRRY [
}RR] ^
,RR^ _
newSS  #
SelectListItemSS$ 2
(SS2 3
)SS3 4
{SS5 6
TextSS7 ;
=SS< =
SSS> ?
[SS? @
$strSS@ J
]SSJ K
,SSK L
ValueSSM R
=SSS T
$strSSU `
+SSa b
taxonomySSc k
.SSk l
ContentItemIdSSl y
}SSz {
}TT 
;TT 
foreachVV 
(VV  !
varVV! $
termVV% )
inVV* ,
termEntriesVV- 8
)VV8 9
{WW 
usingXX !
varXX" %
sbXX& (
=XX) *
StringBuilderPoolXX+ <
.XX< =
GetInstanceXX= H
(XXH I
)XXI J
;XXJ K
forYY 
(YY  !
varYY! $
lYY% &
=YY' (
$numYY) *
;YY* +
lYY, -
<YY. /
termYY0 4
.YY4 5
LevelYY5 :
;YY: ;
lYY< =
++YY= ?
)YY? @
{ZZ 
sb[[  "
.[[" #
Builder[[# *
.[[* +
Insert[[+ 1
([[1 2
$num[[2 3
,[[3 4
LevelPadding[[5 A
)[[A B
;[[B C
}\\ 
sb]] 
.]] 
Builder]] &
.]]& '
Append]]' -
(]]- .
term]]. 2
.]]2 3
DisplayText]]3 >
)]]> ?
;]]? @
var^^ 
item^^  $
=^^% &
new^^' *
SelectListItem^^+ 9
(^^9 :
)^^: ;
{^^< =
Text^^> B
=^^C D
sb^^E G
.^^G H
Builder^^H O
.^^O P
ToString^^P X
(^^X Y
)^^Y Z
,^^Z [
Value^^\ a
=^^b c
$str^^d k
+^^l m
term^^n r
.^^r s
ContentItemId	^^s Ä
}
^^Å Ç
;
^^Ç É
terms__ !
.__! "
Add__" %
(__% &
item__& *
)__* +
;__+ ,
}`` 
mbb 
.bb 
DisplayTextbb %
=bb& '
taxonomybb( 0
.bb0 1
DisplayTextbb1 <
;bb< =
mcc 
.cc 

Taxonomiescc $
=cc% &
termscc' ,
;cc, -
}dd 
)dd 
.ee 
Locationee 
(ee 
$stree +
+ee, -
positionee. 6
.ee6 7
ToStringee7 ?
(ee? @
)ee@ A
)eeA B
.ff 
Prefixff 
(ff 
$strff &
+ff' (
taxonomyff) 1
.ff1 2
ContentItemIdff2 ?
)ff? @
)gg 
;gg 
positionii 
+=ii 
$numii 
;ii 
}jj 
ifll 
(ll 
resultsll 
.ll 
Anyll 
(ll 
)ll 
)ll 
{mm 
returnnn 
Combinenn 
(nn 
resultsnn &
)nn& '
;nn' (
}oo 
returnqq 
nullqq 
;qq 
}rr 	
publictt 
overridett 
asynctt 
Tasktt "
<tt" #
IDisplayResulttt# 1
>tt1 2
UpdateAsynctt3 >
(tt> ?#
ContentOptionsViewModeltt? V
modelttW \
,tt\ ]
IUpdateModeltt^ j
updaterttk r
)ttr s
{uu 	
varvv 
settingsvv 
=vv 
(vv 
awaitvv !
_siteServicevv" .
.vv. / 
GetSiteSettingsAsyncvv/ C
(vvC D
)vvD E
)vvE F
.vvF G
AsvvG I
<vvI J-
!TaxonomyContentsAdminListSettingsvvJ k
>vvk l
(vvl m
)vvm n
;vvn o
foreachww 
(ww 
varww 
contentItemIdww &
inww' )
settingsww* 2
.ww2 3"
TaxonomyContentItemIdsww3 I
)wwI J
{xx 
varyy 
	viewModelyy 
=yy 
newyy  #0
$TaxonomyContentsAdminFilterViewModelyy$ H
(yyH I
)yyI J
;yyJ K
ifzz 
(zz 
awaitzz 
updaterzz !
.zz! "
TryUpdateModelAsynczz" 5
(zz5 6
	viewModelzz6 ?
,zz? @
$strzzA K
+zzL M
contentItemIdzzN [
)zz[ \
)zz\ ]
{{{ 
if|| 
(|| 
!|| 
String|| 
.||  
IsNullOrEmpty||  -
(||- .
	viewModel||. 7
.||7 8!
SelectedContentItemId||8 M
)||M N
)||N O
{}} 
model~~ 
.~~ 
RouteValues~~ )
.~~) *
TryAdd~~* 0
(~~0 1
$str~~1 ;
+~~< =
contentItemId~~> K
+~~L M
$str~~N f
,~~f g
	viewModel~~h q
.~~q r"
SelectedContentItemId	~~r á
)
~~á à
;
~~à â
} 
}
ÄÄ 
}
ÅÅ 
return
ÉÉ 
await
ÉÉ 
	EditAsync
ÉÉ "
(
ÉÉ" #
model
ÉÉ# (
,
ÉÉ( )
updater
ÉÉ* 1
)
ÉÉ1 2
;
ÉÉ2 3
}
ÑÑ 	
private
ÜÜ 
static
ÜÜ 
void
ÜÜ !
PopulateTermEntries
ÜÜ /
(
ÜÜ/ 0
List
ÜÜ0 4
<
ÜÜ4 5
FilterTermEntry
ÜÜ5 D
>
ÜÜD E
termEntries
ÜÜF Q
,
ÜÜQ R
IEnumerable
ÜÜS ^
<
ÜÜ^ _
ContentItem
ÜÜ_ j
>
ÜÜj k
contentItems
ÜÜl x
,
ÜÜx y
int
ÜÜz }
levelÜÜ~ É
)ÜÜÉ Ñ
{
áá 	
foreach
àà 
(
àà 
var
àà 
contentItem
àà $
in
àà% '
contentItems
àà( 4
)
àà4 5
{
ââ 
var
ää 
children
ää 
=
ää 
Array
ää $
.
ää$ %
Empty
ää% *
<
ää* +
ContentItem
ää+ 6
>
ää6 7
(
ää7 8
)
ää8 9
;
ää9 :
if
åå 
(
åå 
contentItem
åå 
.
åå  
Content
åå  '
.
åå' (
Terms
åå( -
is
åå. 0
JArray
åå1 7

termsArray
åå8 B
)
ååB C
{
çç 
children
éé 
=
éé 

termsArray
éé )
.
éé) *
ToObject
éé* 2
<
éé2 3
ContentItem
éé3 >
[
éé> ?
]
éé? @
>
éé@ A
(
ééA B
)
ééB C
;
ééC D
}
èè 
var
ëë 
	termEntry
ëë 
=
ëë 
new
ëë  #
FilterTermEntry
ëë$ 3
{
íí 
DisplayText
ìì 
=
ìì  !
contentItem
ìì" -
.
ìì- .
DisplayText
ìì. 9
,
ìì9 :
ContentItemId
îî !
=
îî" #
contentItem
îî$ /
.
îî/ 0
ContentItemId
îî0 =
,
îî= >
Level
ïï 
=
ïï 
level
ïï !
}
ññ 
;
ññ 
termEntries
òò 
.
òò 
Add
òò 
(
òò  
	termEntry
òò  )
)
òò) *
;
òò* +
if
öö 
(
öö 
children
öö 
.
öö 
Length
öö #
>
öö$ %
$num
öö& '
)
öö' (
{
õõ !
PopulateTermEntries
úú '
(
úú' (
termEntries
úú( 3
,
úú3 4
children
úú5 =
,
úú= >
level
úú? D
+
úúE F
$num
úúG H
)
úúH I
;
úúI J
}
ùù 
}
ûû 
}
üü 	
}
†† 
public
¢¢ 

class
¢¢ 
FilterTermEntry
¢¢  
{
££ 
public
§§ 
string
§§ 
DisplayText
§§ !
{
§§" #
get
§§$ '
;
§§' (
set
§§) ,
;
§§, -
}
§§. /
public
•• 
string
•• 
ContentItemId
•• #
{
••$ %
get
••& )
;
••) *
set
••+ .
;
••. /
}
••0 1
public
¶¶ 
int
¶¶ 
Level
¶¶ 
{
¶¶ 
get
¶¶ 
;
¶¶ 
set
¶¶  #
;
¶¶# $
}
¶¶% &
}
ßß 
}®® ùC
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Drivers\TaxonomyFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Drivers! (
{ 
public 

class &
TaxonomyFieldDisplayDriver +
:, -%
ContentFieldDisplayDriver. G
<G H
TaxonomyFieldH U
>U V
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public &
TaxonomyFieldDisplayDriver )
() *
IContentManager 
contentManager *
,* +
IStringLocalizer 
< &
TaxonomyFieldDisplayDriver 7
>7 8
	localizer9 B
)B C
{ 	
_contentManager 
= 
contentManager ,
;, -
S 
= 
	localizer 
; 
} 	
public   
override   
IDisplayResult   &
Display  ' .
(  . /
TaxonomyField  / <
field  = B
,  B C$
BuildFieldDisplayContext  D \
context  ] d
)  d e
{!! 	
return"" 

Initialize"" 
<"" )
DisplayTaxonomyFieldViewModel"" ;
>""; <
(""< =
GetDisplayShapeType""= P
(""P Q
context""Q X
)""X Y
,""Y Z
model""[ `
=>""a c
{## 
model$$ 
.$$ 
Field$$ 
=$$ 
field$$ #
;$$# $
model%% 
.%% 
Part%% 
=%% 
context%% $
.%%$ %
ContentPart%%% 0
;%%0 1
model&& 
.&& 
PartFieldDefinition&& )
=&&* +
context&&, 3
.&&3 4
PartFieldDefinition&&4 G
;&&G H
}'' 
)'' 
.(( 
Location(( 
((( 
$str(( 
,(( 
$str((  )
)(() *
.)) 
Location)) 
()) 
$str)) 
,))  
$str))! *
)))* +
;))+ ,
}** 	
public,, 
override,, 
IDisplayResult,, &
Edit,,' +
(,,+ ,
TaxonomyField,,, 9
field,,: ?
,,,? @#
BuildFieldEditorContext,,A X
context,,Y `
),,` a
{-- 	
return.. 

Initialize.. 
<.. &
EditTaxonomyFieldViewModel.. 8
>..8 9
(..9 :
GetEditorShapeType..: L
(..L M
context..M T
)..T U
,..U V
async..W \
model..] b
=>..c e
{// 
var00 
settings00 
=00 
context00 &
.00& '
PartFieldDefinition00' :
.00: ;
GetSettings00; F
<00F G!
TaxonomyFieldSettings00G \
>00\ ]
(00] ^
)00^ _
;00_ `
model11 
.11 
Taxonomy11 
=11  
await11! &
_contentManager11' 6
.116 7
GetAsync117 ?
(11? @
settings11@ H
.11H I!
TaxonomyContentItemId11I ^
,11^ _
VersionOptions11` n
.11n o
Latest11o u
)11u v
;11v w
if33 
(33 
model33 
.33 
Taxonomy33 "
!=33# %
null33& *
)33* +
{44 
var55 
termEntries55 #
=55$ %
new55& )
List55* .
<55. /
	TermEntry55/ 8
>558 9
(559 :
)55: ;
;55; <%
TaxonomyFieldDriverHelper66 -
.66- .
PopulateTermEntries66. A
(66A B
termEntries66B M
,66M N
field66O T
,66T U
model66V [
.66[ \
Taxonomy66\ d
.66d e
As66e g
<66g h
TaxonomyPart66h t
>66t u
(66u v
)66v w
.66w x
Terms66x }
,66} ~
$num	66 Ä
)
66Ä Å
;
66Å Ç
model88 
.88 
TermEntries88 %
=88& '
termEntries88( 3
;883 4
model99 
.99 
UniqueValue99 %
=99& '
termEntries99( 3
.993 4
FirstOrDefault994 B
(99B C
x99C D
=>99E G
x99H I
.99I J
Selected99J R
)99R S
?99S T
.99T U
ContentItemId99U b
;99b c
}:: 
model<< 
.<< 
Field<< 
=<< 
field<< #
;<<# $
model== 
.== 
Part== 
=== 
context== $
.==$ %
ContentPart==% 0
;==0 1
model>> 
.>> 
PartFieldDefinition>> )
=>>* +
context>>, 3
.>>3 4
PartFieldDefinition>>4 G
;>>G H
}?? 
)?? 
;?? 
}@@ 	
publicBB 
overrideBB 
asyncBB 
TaskBB "
<BB" #
IDisplayResultBB# 1
>BB1 2
UpdateAsyncBB3 >
(BB> ?
TaxonomyFieldBB? L
fieldBBM R
,BBR S
IUpdateModelBBT `
updaterBBa h
,BBh i%
UpdateFieldEditorContext	BBj Ç
context
BBÉ ä
)
BBä ã
{CC 	
varDD 
modelDD 
=DD 
newDD &
EditTaxonomyFieldViewModelDD 6
(DD6 7
)DD7 8
;DD8 9
ifFF 
(FF 
awaitFF 
updaterFF 
.FF 
TryUpdateModelAsyncFF 1
(FF1 2
modelFF2 7
,FF7 8
PrefixFF9 ?
)FF? @
)FF@ A
{GG 
varHH 
settingsHH 
=HH 
contextHH &
.HH& '
PartFieldDefinitionHH' :
.HH: ;
GetSettingsHH; F
<HHF G!
TaxonomyFieldSettingsHHG \
>HH\ ]
(HH] ^
)HH^ _
;HH_ `
fieldJJ 
.JJ !
TaxonomyContentItemIdJJ +
=JJ, -
settingsJJ. 6
.JJ6 7!
TaxonomyContentItemIdJJ7 L
;JJL M
fieldKK 
.KK 
TermContentItemIdsKK (
=KK) *
modelKK+ 0
.KK0 1
TermEntriesKK1 <
.KK< =
WhereKK= B
(KKB C
xKKC D
=>KKE G
xKKH I
.KKI J
SelectedKKJ R
)KKR S
.KKS T
SelectKKT Z
(KKZ [
xKK[ \
=>KK] _
xKK` a
.KKa b
ContentItemIdKKb o
)KKo p
.KKp q
ToArrayKKq x
(KKx y
)KKy z
;KKz {
ifMM 
(MM 
settingsMM 
.MM 
UniqueMM #
&&MM$ &
!MM' (
StringMM( .
.MM. /
IsNullOrEmptyMM/ <
(MM< =
modelMM= B
.MMB C
UniqueValueMMC N
)MMN O
)MMO P
{NN 
fieldOO 
.OO 
TermContentItemIdsOO ,
=OO- .
newOO/ 2
[OO2 3
]OO3 4
{OO5 6
modelOO7 <
.OO< =
UniqueValueOO= H
}OOI J
;OOJ K
}PP 
ifRR 
(RR 
settingsRR 
.RR 
RequiredRR %
&&RR& (
fieldRR) .
.RR. /
TermContentItemIdsRR/ A
.RRA B
LengthRRB H
==RRI K
$numRRL M
)RRM N
{SS 
updaterTT 
.TT 

ModelStateTT &
.TT& '
AddModelErrorTT' 4
(TT4 5
nameofUU 
(UU &
EditTaxonomyFieldViewModelUU 9
.UU9 :
TermEntriesUU: E
)UUE F
,UUF G
SVV 
[VV 
$strVV 9
,VV9 :
contextVV; B
.VVB C
PartFieldDefinitionVVC V
.VVV W
DisplayNameVVW b
(VVb c
)VVc d
]VVd e
)VVe f
;VVf g
}WW 
}XX 
returnZZ 
EditZZ 
(ZZ 
fieldZZ 
,ZZ 
contextZZ &
)ZZ& '
;ZZ' (
}[[ 	
}\\ 
}]] ¸
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Drivers\TaxonomyFieldDriverHelper.cs
	namespace		 	
OrchardCore		
 
.		 

Taxonomies		  
.		  !
Drivers		! (
{

 
public 

static 
class %
TaxonomyFieldDriverHelper 1
{ 
public 
static 
void 
PopulateTermEntries .
(. /
List/ 3
<3 4
	TermEntry4 =
>= >
termEntries? J
,J K
TaxonomyFieldL Y
fieldZ _
,_ `
IEnumerablea l
<l m
ContentItemm x
>x y
contentItems	z Ü
,
Ü á
int
à ã
level
å ë
)
ë í
{ 	
foreach 
( 
var 
contentItem $
in% '
contentItems( 4
)4 5
{ 
var 
children 
= 
Array $
.$ %
Empty% *
<* +
ContentItem+ 6
>6 7
(7 8
)8 9
;9 :
if 
( 
contentItem 
.  
Content  '
.' (
Terms( -
is. 0
JArray1 7

termsArray8 B
)B C
{ 
children 
= 

termsArray )
.) *
ToObject* 2
<2 3
ContentItem3 >
[> ?
]? @
>@ A
(A B
)B C
;C D
} 
var 
	termEntry 
= 
new  #
	TermEntry$ -
{ 
Term 
= 
contentItem &
,& '
ContentItemId !
=" #
contentItem$ /
./ 0
ContentItemId0 =
,= >
Selected   
=   
field   $
.  $ %
TermContentItemIds  % 7
.  7 8
Contains  8 @
(  @ A
contentItem  A L
.  L M
ContentItemId  M Z
)  Z [
,  [ \
Level!! 
=!! 
level!! !
,!!! "
IsLeaf"" 
="" 
children"" %
.""% &
Length""& ,
==""- /
$num""0 1
}## 
;## 
termEntries%% 
.%% 
Add%% 
(%%  
	termEntry%%  )
)%%) *
;%%* +
if'' 
('' 
children'' 
.'' 
Length'' #
>''$ %
$num''& '
)''' (
{(( 
PopulateTermEntries)) '
())' (
termEntries))( 3
,))3 4
field))5 :
,)): ;
children))< D
,))D E
level))F K
+))L M
$num))N O
)))O P
;))P Q
}** 
}++ 
},, 	
}-- 
}.. ◊U
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Drivers\TaxonomyFieldTagsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Drivers! (
{ 
public 

class *
TaxonomyFieldTagsDisplayDriver /
:0 1%
ContentFieldDisplayDriver2 K
<K L
TaxonomyFieldL Y
>Y Z
{ 
private 
static 
readonly "
JsonSerializerSettings  6
SerializerSettings7 I
=J K
newL O"
JsonSerializerSettingsP f
{ 	
ContractResolver 
= 
new "2
&CamelCasePropertyNamesContractResolver# I
(I J
)J K
} 	
;	 

private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public   *
TaxonomyFieldTagsDisplayDriver   -
(  - .
IContentManager!! 
contentManager!! *
,!!* +
IStringLocalizer"" 
<"" *
TaxonomyFieldTagsDisplayDriver"" ;
>""; <
s""= >
)""> ?
{## 	
_contentManager$$ 
=$$ 
contentManager$$ ,
;$$, -
S%% 
=%% 
s%% 
;%% 
}&& 	
public(( 
override(( 
IDisplayResult(( &
Display((' .
(((. /
TaxonomyField((/ <
field((= B
,((B C$
BuildFieldDisplayContext((D \
context((] d
)((d e
{)) 	
return** 

Initialize** 
<** -
!DisplayTaxonomyFieldTagsViewModel** ?
>**? @
(**@ A
GetDisplayShapeType**A T
(**T U
context**U \
)**\ ]
,**] ^
model**_ d
=>**e g
{++ 
model,, 
.,, 
Field,, 
=,, 
field,, #
;,,# $
model-- 
.-- 
Part-- 
=-- 
context-- $
.--$ %
ContentPart--% 0
;--0 1
model.. 
... 
PartFieldDefinition.. )
=..* +
context.., 3
...3 4
PartFieldDefinition..4 G
;..G H
}// 
)// 
.00 
Location00 
(00 
$str00 
,00 
$str00  )
)00) *
.11 
Location11 
(11 
$str11 
,11  
$str11! *
)11* +
;11+ ,
}22 	
public44 
override44 
IDisplayResult44 &
Edit44' +
(44+ ,
TaxonomyField44, 9
field44: ?
,44? @#
BuildFieldEditorContext44A X
context44Y `
)44` a
{55 	
return66 

Initialize66 
<66 )
EditTagTaxonomyFieldViewModel66 ;
>66; <
(66< =
GetEditorShapeType66= O
(66O P
context66P W
)66W X
,66X Y
async66Z _
model66` e
=>66f h
{77 
var88 
settings88 
=88 
context88 &
.88& '
PartFieldDefinition88' :
.88: ;
GetSettings88; F
<88F G!
TaxonomyFieldSettings88G \
>88\ ]
(88] ^
)88^ _
;88_ `
model99 
.99 
Taxonomy99 
=99  
await99! &
_contentManager99' 6
.996 7
GetAsync997 ?
(99? @
settings99@ H
.99H I!
TaxonomyContentItemId99I ^
,99^ _
VersionOptions99` n
.99n o
Latest99o u
)99u v
;99v w
if;; 
(;; 
model;; 
.;; 
Taxonomy;; "
!=;;# %
null;;& *
);;* +
{<< 
var== 
termEntries== #
===$ %
new==& )
List==* .
<==. /
	TermEntry==/ 8
>==8 9
(==9 :
)==: ;
;==; <%
TaxonomyFieldDriverHelper>> -
.>>- .
PopulateTermEntries>>. A
(>>A B
termEntries>>B M
,>>M N
field>>O T
,>>T U
model>>V [
.>>[ \
Taxonomy>>\ d
.>>d e
As>>e g
<>>g h
TaxonomyPart>>h t
>>>t u
(>>u v
)>>v w
.>>w x
Terms>>x }
,>>} ~
$num	>> Ä
)
>>Ä Å
;
>>Å Ç
var?? 
tagTermEntries?? &
=??' (
termEntries??) 4
.??4 5
Select??5 ;
(??; <
te??< >
=>??? A
new??B E
TagTermEntry??F R
{@@ 
ContentItemIdAA %
=AA& '
teAA( *
.AA* +
ContentItemIdAA+ 8
,AA8 9
SelectedBB  
=BB! "
teBB# %
.BB% &
SelectedBB& .
,BB. /
DisplayTextCC #
=CC$ %
teCC& (
.CC( )
TermCC) -
.CC- .
DisplayTextCC. 9
,CC9 :
IsLeafDD 
=DD  
teDD! #
.DD# $
IsLeafDD$ *
}EE 
)EE 
;EE 
modelGG 
.GG 
TagTermEntriesGG (
=GG) *
JsonConvertGG+ 6
.GG6 7
SerializeObjectGG7 F
(GGF G
tagTermEntriesGGG U
,GGU V
SerializerSettingsGGW i
)GGi j
;GGj k
}HH 
modelJJ 
.JJ 
FieldJJ 
=JJ 
fieldJJ #
;JJ# $
modelKK 
.KK 
PartKK 
=KK 
contextKK $
.KK$ %
ContentPartKK% 0
;KK0 1
modelLL 
.LL 
PartFieldDefinitionLL )
=LL* +
contextLL, 3
.LL3 4
PartFieldDefinitionLL4 G
;LLG H
}MM 
)MM 
;MM 
}NN 	
publicPP 
overridePP 
asyncPP 
TaskPP "
<PP" #
IDisplayResultPP# 1
>PP1 2
UpdateAsyncPP3 >
(PP> ?
TaxonomyFieldPP? L
fieldPPM R
,PPR S
IUpdateModelPPT `
updaterPPa h
,PPh i%
UpdateFieldEditorContext	PPj Ç
context
PPÉ ä
)
PPä ã
{QQ 	
varRR 
modelRR 
=RR 
newRR )
EditTagTaxonomyFieldViewModelRR 9
(RR9 :
)RR: ;
;RR; <
ifTT 
(TT 
awaitTT 
updaterTT 
.TT 
TryUpdateModelAsyncTT 1
(TT1 2
modelTT2 7
,TT7 8
PrefixTT9 ?
,TT? @
fTTA B
=>TTC E
fTTF G
.TTG H
TermContentItemIdsTTH Z
)TTZ [
)TT[ \
{UU 
varVV 
settingsVV 
=VV 
contextVV &
.VV& '
PartFieldDefinitionVV' :
.VV: ;
GetSettingsVV; F
<VVF G!
TaxonomyFieldSettingsVVG \
>VV\ ]
(VV] ^
)VV^ _
;VV_ `
fieldXX 
.XX !
TaxonomyContentItemIdXX +
=XX, -
settingsXX. 6
.XX6 7!
TaxonomyContentItemIdXX7 L
;XXL M
fieldZZ 
.ZZ 
TermContentItemIdsZZ (
=ZZ) *
modelZZ+ 0
.ZZ0 1
TermContentItemIdsZZ1 C
==ZZD F
nullZZG K
?[[ 
Array[[ 
.[[ 
Empty[[ !
<[[! "
string[[" (
>[[( )
([[) *
)[[* +
:[[, -
model[[. 3
.[[3 4
TermContentItemIds[[4 F
.[[F G
Split[[G L
([[L M
$char[[M P
,[[P Q
StringSplitOptions[[R d
.[[d e
RemoveEmptyEntries[[e w
)[[w x
;[[x y
if]] 
(]] 
settings]] 
.]] 
Required]] %
&&]]& (
field]]) .
.]]. /
TermContentItemIds]]/ A
.]]A B
Length]]B H
==]]I K
$num]]L M
)]]M N
{^^ 
updater__ 
.__ 

ModelState__ &
.__& '
AddModelError__' 4
(__4 5
nameof`` 
(`` )
EditTagTaxonomyFieldViewModel`` <
.``< =
TermContentItemIds``= O
)``O P
,``P Q
Saa 
[aa 
$straa 9
,aa9 :
contextaa; B
.aaB C
PartFieldDefinitionaaC V
.aaV W
DisplayNameaaW b
(aab c
)aac d
]aad e
)aae f
;aaf g
}bb 
varee 
taxonomyee 
=ee 
awaitee $
_contentManageree% 4
.ee4 5
GetAsyncee5 =
(ee= >
settingsee> F
.eeF G!
TaxonomyContentItemIdeeG \
,ee\ ]
VersionOptionsee^ l
.eel m
Latesteem s
)ees t
;eet u
ifgg 
(gg 
taxonomygg 
==gg 
nullgg  $
)gg$ %
{hh 
returnii 
nullii 
;ii  
}jj 
varll 
termsll 
=ll 
newll 
Listll  $
<ll$ %
ContentItemll% 0
>ll0 1
(ll1 2
)ll2 3
;ll3 4
foreachnn 
(nn 
varnn 
termContentItemIdnn .
innn/ 1
fieldnn2 7
.nn7 8
TermContentItemIdsnn8 J
)nnJ K
{oo 
varpp 
termpp 
=pp +
TaxonomyOrchardHelperExtensionspp >
.pp> ?
FindTermpp? G
(ppG H
taxonomyppH P
.ppP Q
ContentppQ X
.ppX Y
TaxonomyPartppY e
.ppe f
Termsppf k
asppl n
JArrayppo u
,ppu v
termContentItemId	ppw à
)
ppà â
;
ppâ ä
termsqq 
.qq 
Addqq 
(qq 
termqq "
)qq" #
;qq# $
}rr 
fieldtt 
.tt 
SetTagNamestt !
(tt! "
termstt" '
.tt' (
Selecttt( .
(tt. /
ttt/ 0
=>tt1 3
ttt4 5
.tt5 6
DisplayTexttt6 A
)ttA B
.ttB C
ToArrayttC J
(ttJ K
)ttK L
)ttL M
;ttM N
}uu 
returnww 
Editww 
(ww 
fieldww 
,ww 
contextww &
)ww& '
;ww' (
}xx 	
}yy 
}zz ÕI
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Drivers\TaxonomyPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Drivers! (
{ 
public 

class %
TaxonomyPartDisplayDriver *
:+ ,$
ContentPartDisplayDriver- E
<E F
TaxonomyPartF R
>R S
{ 
public 
override 
IDisplayResult &
Display' .
(. /
TaxonomyPart/ ;
part< @
,@ A#
BuildPartDisplayContextB Y
contextZ a
)a b
{ 	
var 
hasItems 
= 
part 
.  
Terms  %
.% &
Any& )
() *
)* +
;+ ,
return 

Initialize 
< !
TaxonomyPartViewModel 3
>3 4
(4 5
hasItems5 =
?> ?
$str@ N
:O P
$strQ e
,e f
mg h
=>i k
{ 
m 
. 
ContentItem 
= 
part  $
.$ %
ContentItem% 0
;0 1
m 
. 
TaxonomyPart 
=  
part! %
;% &
} 
) 
. 
Location 
( 
$str 
, 
$str  +
)+ ,
;, -
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
TaxonomyPart, 8
part9 =
)= >
{ 	
return   

Initialize   
<   %
TaxonomyPartEditViewModel   7
>  7 8
(  8 9
$str  9 L
,  L M
model  N S
=>  T V
{!! 
model"" 
."" 
TermContentType"" %
=""& '
part""( ,
."", -
TermContentType""- <
;""< =
model## 
.## 
TaxonomyPart## "
=### $
part##% )
;##) *
}$$ 
)$$ 
;$$ 
}%% 	
public'' 
override'' 
async'' 
Task'' "
<''" #
IDisplayResult''# 1
>''1 2
UpdateAsync''3 >
(''> ?
TaxonomyPart''? K
part''L P
,''P Q
IUpdateModel''R ^
updater''_ f
)''f g
{(( 	
var)) 
model)) 
=)) 
new)) %
TaxonomyPartEditViewModel)) 5
())5 6
)))6 7
;))7 8
if++ 
(++ 
await++ 
updater++ 
.++ 
TryUpdateModelAsync++ 1
(++1 2
model++2 7
,++7 8
Prefix++9 ?
,++? @
t++A B
=>++C E
t++F G
.++G H
	Hierarchy++H Q
,++Q R
t++S T
=>++U W
t++X Y
.++Y Z
TermContentType++Z i
)++i j
)++j k
{,, 
if-- 
(-- 
!-- 
String-- 
.-- 
IsNullOrWhiteSpace-- .
(--. /
model--/ 4
.--4 5
	Hierarchy--5 >
)--> ?
)--? @
{.. 
var// !
originalTaxonomyItems// -
=//. /
part//0 4
.//4 5
ContentItem//5 @
.//@ A
As//A C
<//C D
TaxonomyPart//D P
>//P Q
(//Q R
)//R S
;//S T
var11 
newHierarchy11 $
=11% &
JArray11' -
.11- .
Parse11. 3
(113 4
model114 9
.119 :
	Hierarchy11: C
)11C D
;11D E
var33 
taxonomyItems33 %
=33& '
new33( +
JArray33, 2
(332 3
)333 4
;334 5
foreach55 
(55 
var55  
item55! %
in55& (
newHierarchy55) 5
)555 6
{66 
taxonomyItems77 %
.77% &
Add77& )
(77) *
ProcessItem77* 5
(775 6!
originalTaxonomyItems776 K
,77K L
item77M Q
as77R T
JObject77U \
)77\ ]
)77] ^
;77^ _
}88 
part:: 
.:: 
Terms:: 
=::  
taxonomyItems::! .
.::. /
ToObject::/ 7
<::7 8
List::8 <
<::< =
ContentItem::= H
>::H I
>::I J
(::J K
)::K L
;::L M
};; 
part== 
.== 
TermContentType== $
===% &
model==' ,
.==, -
TermContentType==- <
;==< =
}>> 
return@@ 
Edit@@ 
(@@ 
part@@ 
)@@ 
;@@ 
}AA 	
privateFF 
JObjectFF 
GetTaxonomyItemAtFF )
(FF) *
ListFF* .
<FF. /
ContentItemFF/ :
>FF: ;
taxonomyItemsFF< I
,FFI J
intFFK N
[FFN O
]FFO P
indexesFFQ X
)FFX Y
{GG 	
ContentItemHH 
taxonomyItemHH $
=HH% &
nullHH' +
;HH+ ,
foreachKK 
(KK 
varKK 
indexKK 
inKK !
indexesKK" )
)KK) *
{LL 
ifMM 
(MM 
taxonomyItemsMM !
==MM" $
nullMM% )
||MM* ,
taxonomyItemsMM- :
.MM: ;
CountMM; @
<MMA B
indexMMC H
)MMH I
{NN 
returnPP 
nullPP 
;PP  
}QQ 
taxonomyItemSS 
=SS 
taxonomyItemsSS ,
[SS, -
indexSS- 2
]SS2 3
;SS3 4
varUU 
termsUU 
=UU 
taxonomyItemUU (
.UU( )
ContentUU) 0
.UU0 1
TermsUU1 6
asUU7 9
JArrayUU: @
;UU@ A
taxonomyItemsVV 
=VV 
termsVV  %
?VV% &
.VV& '
ToObjectVV' /
<VV/ 0
ListVV0 4
<VV4 5
ContentItemVV5 @
>VV@ A
>VVA B
(VVB C
)VVC D
;VVD E
}WW 
varYY 
newObjYY 
=YY 
JObjectYY  
.YY  !
ParseYY! &
(YY& '
JsonConvertYY' 2
.YY2 3
SerializeObjectYY3 B
(YYB C
taxonomyItemYYC O
)YYO P
)YYP Q
;YYQ R
if[[ 
([[ 
newObj[[ 
[[[ 
$str[[ 
][[ 
!=[[  "
null[[# '
)[[' (
{\\ 
newObj]] 
[]] 
$str]] 
]]] 
=]]  !
new]]" %
JArray]]& ,
(]], -
)]]- .
;]]. /
}^^ 
return`` 
newObj`` 
;`` 
}aa 	
privatecc 
JObjectcc 
ProcessItemcc #
(cc# $
TaxonomyPartcc$ 0
originalItemscc1 >
,cc> ?
JObjectcc@ G
itemccH L
)ccL M
{dd 	
varee 
contentItemee 
=ee 
GetTaxonomyItemAtee /
(ee/ 0
originalItemsee0 =
.ee= >
Termsee> C
,eeC D
itemeeE I
[eeI J
$streeJ Q
]eeQ R
.eeR S
ToStringeeS [
(ee[ \
)ee\ ]
.ee] ^
Splitee^ c
(eec d
$chareed g
)eeg h
.eeh i
Selecteei o
(eeo p
xeep q
=>eer t
Converteeu |
.ee| }
ToInt32	ee} Ñ
(
eeÑ Ö
x
eeÖ Ü
)
eeÜ á
)
eeá à
.
eeà â
ToArray
eeâ ê
(
eeê ë
)
eeë í
)
eeí ì
;
eeì î
vargg 
childrengg 
=gg 
itemgg 
[gg  
$strgg  *
]gg* +
asgg, .
JArraygg/ 5
;gg5 6
ifii 
(ii 
childrenii 
!=ii 
nullii  
)ii  !
{jj 
varkk 
taxonomyItemskk !
=kk" #
newkk$ '
JArraykk( .
(kk. /
)kk/ 0
;kk0 1
formm 
(mm 
varmm 
imm 
=mm 
$nummm 
;mm 
imm  !
<mm" #
childrenmm$ ,
.mm, -
Countmm- 2
;mm2 3
imm4 5
++mm5 7
)mm7 8
{nn 
taxonomyItemsoo !
.oo! "
Addoo" %
(oo% &
ProcessItemoo& 1
(oo1 2
originalItemsoo2 ?
,oo? @
childrenooA I
[ooI J
iooJ K
]ooK L
asooM O
JObjectooP W
)ooW X
)ooX Y
;ooY Z
contentItempp 
[pp  
$strpp  '
]pp' (
=pp) *
taxonomyItemspp+ 8
;pp8 9
}qq 
}rr 
returntt 
contentItemtt 
;tt 
}uu 	
}vv 
}ww ÷Ç
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Drivers\TermPartContentDriver.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Drivers! (
{ 
public 

class !
TermPartContentDriver &
:' ( 
ContentDisplayDriver) =
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public !
TermPartContentDriver $
($ %
ISession 
session 
, 
ISiteService 
siteService $
,$ %
IContentManager 
contentManager *
)* +
{ 	
_session   
=   
session   
;   
_siteService!! 
=!! 
siteService!! &
;!!& '
_contentManager"" 
="" 
contentManager"" ,
;"", -
}## 	
public%% 
override%% 
Task%% 
<%% 
IDisplayResult%% +
>%%+ ,
DisplayAsync%%- 9
(%%9 :
ContentItem%%: E
model%%F K
,%%K L
BuildDisplayContext%%M `
context%%a h
)%%h i
{&& 	
var'' 
part'' 
='' 
model'' 
.'' 
As'' 
<''  
TermPart''  (
>''( )
('') *
)''* +
;''+ ,
if(( 
((( 
part(( 
!=(( 
null(( 
)(( 
{)) 
return** 
Task** 
.** 

FromResult** &
<**& '
IDisplayResult**' 5
>**5 6
(**6 7

Initialize**7 A
<**A B
TermPartViewModel**B S
>**S T
(**T U
$str**U _
,**_ `
async**a f
m**g h
=>**i k
{++ 
var,, 
siteSettings,, $
=,,% &
await,,' ,
_siteService,,- 9
.,,9 : 
GetSiteSettingsAsync,,: N
(,,N O
),,O P
;,,P Q
var-- 
pager-- 
=-- 
await--  %
GetPagerAsync--& 3
(--3 4
context--4 ;
.--; <
Updater--< C
,--C D
siteSettings--E Q
.--Q R
PageSize--R Z
)--Z [
;--[ \
m.. 
... !
TaxonomyContentItemId.. +
=.., -
part... 2
...2 3!
TaxonomyContentItemId..3 H
;..H I
m// 
.// 
ContentItem// !
=//" #
part//$ (
.//( )
ContentItem//) 4
;//4 5
m00 
.00 
ContentItems00 "
=00# $
(00% &
await00& +
QueryTermItemsAsync00, ?
(00? @
part00@ D
,00D E
pager00F K
)00K L
)00L M
.00M N
ToArray00N U
(00U V
)00V W
;00W X
m11 
.11 
Pager11 
=11 
await11 #
context11$ +
.11+ ,
New11, /
.11/ 0
	PagerSlim110 9
(119 :
pager11: ?
)11? @
;11@ A
}22 
)22 
.33 
Location33 
(33 
$str33 "
,33" #
$str33$ /
)33/ 0
)330 1
;331 2
}44 
return66 
Task66 
.66 

FromResult66 "
<66" #
IDisplayResult66# 1
>661 2
(662 3
null663 7
)667 8
;668 9
}77 	
private99 
async99 
Task99 
<99 
IEnumerable99 &
<99& '
ContentItem99' 2
>992 3
>993 4
QueryTermItemsAsync995 H
(99H I
TermPart99I Q
termPart99R Z
,99Z [
	PagerSlim99\ e
pager99f k
)99k l
{:: 	
if;; 
(;; 
pager;; 
.;; 
Before;; 
!=;; 
null;;  $
);;$ %
{<< 
var== 
beforeValue== 
===  !
new==" %
DateTime==& .
(==. /
long==/ 3
.==3 4
Parse==4 9
(==9 :
pager==: ?
.==? @
Before==@ F
)==F G
)==G H
;==H I
var>> 
query>> 
=>> 
_session>> $
.>>$ %
Query>>% *
<>>* +
ContentItem>>+ 6
>>>6 7
(>>7 8
)>>8 9
.?? 
With?? 
<?? 
TaxonomyIndex?? '
>??' (
(??( )
x??) *
=>??+ -
x??. /
.??/ 0
TermContentItemId??0 A
==??B D
termPart??E M
.??M N
ContentItem??N Y
.??Y Z
ContentItemId??Z g
)??g h
.@@ 
With@@ 
<@@ 
ContentItemIndex@@ *
>@@* +
(@@+ ,$
CreateContentIndexFilter@@, D
(@@D E
beforeValue@@E P
,@@P Q
null@@R V
)@@V W
)@@W X
.AA 
OrderByAA 
(AA 
xAA 
=>AA !
xAA" #
.AA# $

CreatedUtcAA$ .
)AA. /
.BB 
TakeBB 
(BB 
pagerBB 
.BB  
PageSizeBB  (
+BB) *
$numBB+ ,
)BB, -
;BB- .
varDD 
containedItemsDD "
=DD# $
awaitDD% *
queryDD+ 0
.DD0 1
	ListAsyncDD1 :
(DD: ;
)DD; <
;DD< =
ifFF 
(FF 
containedItemsFF "
.FF" #
CountFF# (
(FF( )
)FF) *
==FF+ -
$numFF. /
)FF/ 0
{GG 
returnHH 
containedItemsHH )
;HH) *
}II 
containedItemsKK 
=KK  
containedItemsKK! /
.KK/ 0
ReverseKK0 7
(KK7 8
)KK8 9
;KK9 :
pagerNN 
.NN 
BeforeNN 
=NN 
nullNN #
;NN# $
pagerOO 
.OO 
AfterOO 
=OO 
containedItemsOO ,
.OO, -
LastOO- 1
(OO1 2
)OO2 3
.OO3 4

CreatedUtcOO4 >
.OO> ?
ValueOO? D
.OOD E
TicksOOE J
.OOJ K
ToStringOOK S
(OOS T
)OOT U
;OOU V
ifQQ 
(QQ 
containedItemsQQ "
.QQ" #
CountQQ# (
(QQ( )
)QQ) *
==QQ+ -
pagerQQ. 3
.QQ3 4
PageSizeQQ4 <
+QQ= >
$numQQ? @
)QQ@ A
{RR 
containedItemsSS "
=SS# $
containedItemsSS% 3
.SS3 4
SkipSS4 8
(SS8 9
$numSS9 :
)SS: ;
;SS; <
pagerTT 
.TT 
BeforeTT  
=TT! "
containedItemsTT# 1
.TT1 2
FirstTT2 7
(TT7 8
)TT8 9
.TT9 :

CreatedUtcTT: D
.TTD E
ValueTTE J
.TTJ K
TicksTTK P
.TTP Q
ToStringTTQ Y
(TTY Z
)TTZ [
;TT[ \
}UU 
returnWW 
awaitWW 
_contentManagerWW ,
.WW, -
	LoadAsyncWW- 6
(WW6 7
containedItemsWW7 E
)WWE F
;WWF G
}XX 
elseYY 
ifYY 
(YY 
pagerYY 
.YY 
AfterYY  
!=YY! #
nullYY$ (
)YY( )
{ZZ 
var[[ 

afterValue[[ 
=[[  
new[[! $
DateTime[[% -
([[- .
long[[. 2
.[[2 3
Parse[[3 8
([[8 9
pager[[9 >
.[[> ?
After[[? D
)[[D E
)[[E F
;[[F G
var\\ 
query\\ 
=\\ 
_session\\ $
.\\$ %
Query\\% *
<\\* +
ContentItem\\+ 6
>\\6 7
(\\7 8
)\\8 9
.]] 
With]] 
<]] 
TaxonomyIndex]] '
>]]' (
(]]( )
x]]) *
=>]]+ -
x]]. /
.]]/ 0
TermContentItemId]]0 A
==]]B D
termPart]]E M
.]]M N
ContentItem]]N Y
.]]Y Z
ContentItemId]]Z g
)]]g h
.^^ 
With^^ 
<^^ 
ContentItemIndex^^ *
>^^* +
(^^+ ,$
CreateContentIndexFilter^^, D
(^^D E
null^^E I
,^^I J

afterValue^^K U
)^^U V
)^^V W
.__ 
OrderByDescending__ &
(__& '
x__' (
=>__) +
x__, -
.__- .

CreatedUtc__. 8
)__8 9
.`` 
Take`` 
(`` 
pager`` 
.``  
PageSize``  (
+``) *
$num``+ ,
)``, -
;``- .
varbb 
containedItemsbb "
=bb# $
awaitbb% *
querybb+ 0
.bb0 1
	ListAsyncbb1 :
(bb: ;
)bb; <
;bb< =
ifdd 
(dd 
containedItemsdd "
.dd" #
Countdd# (
(dd( )
)dd) *
==dd+ -
$numdd. /
)dd/ 0
{ee 
returnff 
containedItemsff )
;ff) *
}gg 
pagerjj 
.jj 
Beforejj 
=jj 
containedItemsjj -
.jj- .
Firstjj. 3
(jj3 4
)jj4 5
.jj5 6

CreatedUtcjj6 @
.jj@ A
ValuejjA F
.jjF G
TicksjjG L
.jjL M
ToStringjjM U
(jjU V
)jjV W
;jjW X
pagerkk 
.kk 
Afterkk 
=kk 
nullkk "
;kk" #
ifmm 
(mm 
containedItemsmm "
.mm" #
Countmm# (
(mm( )
)mm) *
==mm+ -
pagermm. 3
.mm3 4
PageSizemm4 <
+mm= >
$nummm? @
)mm@ A
{nn 
containedItemsoo "
=oo# $
containedItemsoo% 3
.oo3 4
Takeoo4 8
(oo8 9
pageroo9 >
.oo> ?
PageSizeoo? G
)ooG H
;ooH I
pagerpp 
.pp 
Afterpp 
=pp  !
containedItemspp" 0
.pp0 1
Lastpp1 5
(pp5 6
)pp6 7
.pp7 8

CreatedUtcpp8 B
.ppB C
ValueppC H
.ppH I
TicksppI N
.ppN O
ToStringppO W
(ppW X
)ppX Y
;ppY Z
}qq 
returnss 
awaitss 
_contentManagerss ,
.ss, -
	LoadAsyncss- 6
(ss6 7
containedItemsss7 E
)ssE F
;ssF G
}tt 
elseuu 
{vv 
varww 
queryww 
=ww 
_sessionww $
.ww$ %
Queryww% *
<ww* +
ContentItemww+ 6
>ww6 7
(ww7 8
)ww8 9
.xx 
Withxx 
<xx 
TaxonomyIndexxx '
>xx' (
(xx( )
xxx) *
=>xx+ -
xxx. /
.xx/ 0
TermContentItemIdxx0 A
==xxB D
termPartxxE M
.xxM N
ContentItemxxN Y
.xxY Z
ContentItemIdxxZ g
)xxg h
.yy 
Withyy 
<yy 
ContentItemIndexyy *
>yy* +
(yy+ ,$
CreateContentIndexFilteryy, D
(yyD E
nullyyE I
,yyI J
nullyyK O
)yyO P
)yyP Q
.zz 
OrderByDescendingzz &
(zz& '
xzz' (
=>zz) +
xzz, -
.zz- .

CreatedUtczz. 8
)zz8 9
.{{ 
Take{{ 
({{ 
pager{{ 
.{{  
PageSize{{  (
+{{) *
$num{{+ ,
){{, -
;{{- .
var}} 
containedItems}} "
=}}# $
await}}% *
query}}+ 0
.}}0 1
	ListAsync}}1 :
(}}: ;
)}}; <
;}}< =
if 
( 
containedItems "
." #
Count# (
(( )
)) *
==+ -
$num. /
)/ 0
{
ÄÄ 
return
ÅÅ 
containedItems
ÅÅ )
;
ÅÅ) *
}
ÇÇ 
pager
ÑÑ 
.
ÑÑ 
Before
ÑÑ 
=
ÑÑ 
null
ÑÑ #
;
ÑÑ# $
pager
ÖÖ 
.
ÖÖ 
After
ÖÖ 
=
ÖÖ 
null
ÖÖ "
;
ÖÖ" #
if
áá 
(
áá 
containedItems
áá "
.
áá" #
Count
áá# (
(
áá( )
)
áá) *
==
áá+ -
pager
áá. 3
.
áá3 4
PageSize
áá4 <
+
áá= >
$num
áá? @
)
áá@ A
{
àà 
containedItems
ââ "
=
ââ# $
containedItems
ââ% 3
.
ââ3 4
Take
ââ4 8
(
ââ8 9
pager
ââ9 >
.
ââ> ?
PageSize
ââ? G
)
ââG H
;
ââH I
pager
ää 
.
ää 
After
ää 
=
ää  !
containedItems
ää" 0
.
ää0 1
Last
ää1 5
(
ää5 6
)
ää6 7
.
ää7 8

CreatedUtc
ää8 B
.
ääB C
Value
ääC H
.
ääH I
Ticks
ääI N
.
ääN O
ToString
ääO W
(
ääW X
)
ääX Y
;
ääY Z
}
ãã 
return
çç 
await
çç 
_contentManager
çç ,
.
çç, -
	LoadAsync
çç- 6
(
çç6 7
containedItems
çç7 E
)
ççE F
;
ççF G
}
éé 
}
èè 	
private
ëë 
static
ëë 
async
ëë 
Task
ëë !
<
ëë! "
	PagerSlim
ëë" +
>
ëë+ ,
GetPagerAsync
ëë- :
(
ëë: ;
IUpdateModel
ëë; G
updater
ëëH O
,
ëëO P
int
ëëQ T
pageSize
ëëU ]
)
ëë] ^
{
íí 	
var
ìì 
pagerParameters
ìì 
=
ìì  !
new
ìì" %!
PagerSlimParameters
ìì& 9
(
ìì9 :
)
ìì: ;
;
ìì; <
await
îî 
updater
îî 
.
îî !
TryUpdateModelAsync
îî -
(
îî- .
pagerParameters
îî. =
)
îî= >
;
îî> ?
var
ññ 
pager
ññ 
=
ññ 
new
ññ 
	PagerSlim
ññ %
(
ññ% &
pagerParameters
ññ& 5
,
ññ5 6
pageSize
ññ7 ?
)
ññ? @
;
ññ@ A
return
òò 
pager
òò 
;
òò 
}
ôô 	
private
õõ 
static
õõ 

Expression
õõ !
<
õõ! "
Func
õõ" &
<
õõ& '
ContentItemIndex
õõ' 7
,
õõ7 8
bool
õõ9 =
>
õõ= >
>
õõ> ?&
CreateContentIndexFilter
õõ@ X
(
õõX Y
DateTime
õõY a
?
õõa b
before
õõc i
,
õõi j
DateTime
õõk s
?
õõs t
after
õõu z
)
õõz {
{
úú 	
if
ùù 
(
ùù 
before
ùù 
!=
ùù 
null
ùù 
)
ùù 
{
ûû 
return
üü 
x
üü 
=>
üü 
x
üü 
.
üü 
	Published
üü '
&&
üü( *
x
üü+ ,
.
üü, -

CreatedUtc
üü- 7
>
üü8 9
before
üü: @
;
üü@ A
}
†† 
if
¢¢ 
(
¢¢ 
after
¢¢ 
!=
¢¢ 
null
¢¢ 
)
¢¢ 
{
££ 
return
§§ 
x
§§ 
=>
§§ 
x
§§ 
.
§§ 
	Published
§§ '
&&
§§( *
x
§§+ ,
.
§§, -

CreatedUtc
§§- 7
<
§§8 9
after
§§: ?
;
§§? @
}
•• 
return
ßß 
x
ßß 
=>
ßß 
x
ßß 
.
ßß 
	Published
ßß #
;
ßß# $
}
®® 	
}
©© 
}™™ ¡
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Fields\TagNamesExtensions.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Fields! '
{ 
public 

static 
class 
TagNamesExtensions *
{ 
public 
static 
string 
[ 
] 
GetTagNames *
(* +
this+ /
TaxonomyField0 =
taxonomyField> K
)K L
{ 	
var 
tagNames 
= 
taxonomyField (
.( )
Content) 0
[0 1
$str1 ;
]; <
as= ?
JArray@ F
;F G
return 
tagNames 
!= 
null #
?$ %
tagNames& .
.. /
ToObject/ 7
<7 8
string8 >
[> ?
]? @
>@ A
(A B
)B C
:D E
ArrayF K
.K L
EmptyL Q
<Q R
stringR X
>X Y
(Y Z
)Z [
;[ \
} 	
public 
static 
void 
SetTagNames &
(& '
this' +
TaxonomyField, 9
taxonomyField: G
,G H
stringI O
[O P
]P Q
tagNamesR Z
)Z [
{ 	
taxonomyField 
. 
Content !
[! "
$str" ,
], -
=. /
JArray0 6
.6 7

FromObject7 A
(A B
tagNamesB J
)J K
;K L
} 	
} 
} º
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Fields\TaxonomyField.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Fields! '
{ 
public 

class 
TaxonomyField 
:  
ContentField! -
{ 
public 
string !
TaxonomyContentItemId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
string		 
[		 
]		 
TermContentItemIds		 *
{		+ ,
get		- 0
;		0 1
set		2 5
;		5 6
}		7 8
=		9 :
Array		; @
.		@ A
Empty		A F
<		F G
string		G M
>		M N
(		N O
)		O P
;		P Q
}

 
} ™-
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\GraphQL\TaxonomyFieldQueryObjectType.cs
	namespace

 	
OrchardCore


 
.

 

Taxonomies

  
.

  !
GraphQL

! (
{ 
public 

class (
TaxonomyFieldQueryObjectType -
:. /
ObjectGraphType0 ?
<? @
TaxonomyField@ M
>M N
{ 
public (
TaxonomyFieldQueryObjectType +
(+ ,
), -
{ 	
Name 
= 
nameof 
( 
TaxonomyField '
)' (
;( )
Field 
< 
ListGraphType 
<  
StringGraphType  /
>/ 0
,0 1
IEnumerable2 =
<= >
string> D
>D E
>E F
(F G
)G H
. 
Name 
( 
$str *
)* +
. 
Description 
( 
$str 4
)4 5
. 
PagingArguments  
(  !
)! "
. 
Resolve 
( 
x 
=> 
{ 
return 
x 
. 
Page !
(! "
x" #
.# $
Source$ *
.* +
TermContentItemIds+ =
)= >
;> ?
} 
) 
; 
Field 
< 
StringGraphType !
,! "
string# )
>) *
(* +
)+ ,
. 
Name 
( 
$str -
)- .
. 
Description 
( 
$str 7
)7 8
. 
Resolve 
( 
x 
=> 
{ 
return   
x   
.   
Source   #
.  # $!
TaxonomyContentItemId  $ 9
;  9 :
}!! 
)!! 
;!! 
Field## 
<## 
ListGraphType## 
<##   
ContentItemInterface##  4
>##4 5
,##5 6
List##7 ;
<##; <
ContentItem##< G
>##G H
>##H I
(##I J
)##J K
.$$ 
Name$$ 
($$ 
$str$$ (
)$$( )
.%% 
Description%% 
(%% 
$str%% 5
)%%5 6
.&& 
PagingArguments&&  
(&&  !
)&&! "
.'' 
ResolveLockedAsync'' #
(''# $
async''$ )
x''* +
=>'', .
{(( 
var)) 
ids)) 
=)) 
x)) 
.))  
Page))  $
())$ %
x))% &
.))& '
Source))' -
.))- .
TermContentItemIds)). @
)))@ A
;))A B
var** 
contentManager** &
=**' (
x**) *
.*** +"
ResolveServiceProvider**+ A
(**A B
)**B C
.**C D

GetService**D N
<**N O
IContentManager**O ^
>**^ _
(**_ `
)**` a
;**a b
var,, 
taxonomy,,  
=,,! "
await,,# (
contentManager,,) 7
.,,7 8
GetAsync,,8 @
(,,@ A
x,,A B
.,,B C
Source,,C I
.,,I J!
TaxonomyContentItemId,,J _
),,_ `
;,,` a
if.. 
(.. 
taxonomy..  
==..! #
null..$ (
)..( )
{// 
return00 
null00 #
;00# $
}11 
var33 
terms33 
=33 
new33  #
List33$ (
<33( )
ContentItem33) 4
>334 5
(335 6
)336 7
;337 8
foreach55 
(55 
var55  
termContentItemId55! 2
in553 5
ids556 9
)559 :
{66 
var77 
term77  
=77! "+
TaxonomyOrchardHelperExtensions77# B
.77B C
FindTerm77C K
(77K L
taxonomy77L T
.77T U
Content77U \
.77\ ]
TaxonomyPart77] i
.77i j
Terms77j o
as77p r
JArray77s y
,77y z
termContentItemId	77{ å
)
77å ç
;
77ç é
terms88 
.88 
Add88 !
(88! "
term88" &
)88& '
;88' (
}99 
return;; 
terms;;  
;;;  !
}<< 
)<< 
;<< 
Field>> 
<>>  
ContentItemInterface>> &
,>>& '
ContentItem>>( 3
>>>3 4
(>>4 5
)>>5 6
.?? 
Name?? 
(?? 
$str?? +
)??+ ,
.@@ 
Description@@ 
(@@ 
$str@@ 8
)@@8 9
.AA 
ResolveLockedAsyncAA #
(AA# $
xAA$ %
=>AA& (
{BB 
varCC 
contentManagerCC &
=CC' (
xCC) *
.CC* +"
ResolveServiceProviderCC+ A
(CCA B
)CCB C
.CCC D

GetServiceCCD N
<CCN O
IContentManagerCCO ^
>CC^ _
(CC_ `
)CC` a
;CCa b
returnDD 
contentManagerDD )
.DD) *
GetAsyncDD* 2
(DD2 3
xDD3 4
.DD4 5
SourceDD5 ;
.DD; <!
TaxonomyContentItemIdDD< Q
)DDQ R
;DDR S
}EE 
)EE 
;EE 
}FF 	
}GG 
}HH Ë
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\GraphQL\TaxonomyPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
GraphQL! (
{		 
public

 

class

 '
TaxonomyPartQueryObjectType

 ,
:

- .
ObjectGraphType

/ >
<

> ?
TaxonomyPart

? K
>

K L
{ 
public '
TaxonomyPartQueryObjectType *
(* +
)+ ,
{ 	
Name 
= 
$str !
;! "
Field 
( 
x 
=> 
x 
. 
TermContentType (
)( )
;) *
Field 
< 
ListGraphType 
<   
ContentItemInterface  4
>4 5
,5 6
IEnumerable7 B
<B C
ContentItemC N
>N O
>O P
(P Q
)Q R
. 
Name 
( 
$str $
)$ %
. 
Description 
( 
$str 0
)0 1
. 
PagingArguments  
(  !
)! "
. 
Resolve 
( 
x 
=> 
x 
.  
Page  $
($ %
x% &
.& '
Source' -
.- .
Terms. 3
)3 4
)4 5
;5 6
} 	
} 
} ñ
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Handlers\TaxonomyPartHandler.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Handlers! )
{ 
public		 

class		 
TaxonomyPartHandler		 $
:		% &
ContentPartHandler		' 9
<		9 :
TaxonomyPart		: F
>		F G
{

 
public 
override 
Task %
GetContentItemAspectAsync 6
(6 7$
ContentItemAspectContext7 O
contextP W
,W X
TaxonomyPartY e
partf j
)j k
{ 	
return 
context 
. 
ForAsync #
<# $'
ContainedContentItemsAspect$ ?
>? @
(@ A
aspectA G
=>H J
{ 
aspect 
. 
	Accessors  
.  !
Add! $
($ %
(% &
jObject& -
)- .
=>/ 1
{ 
return 
jObject "
[" #
$str# 1
]1 2
[2 3
$str3 :
]: ;
as< >
JArray? E
;E F
} 
) 
; 
return 
Task 
. 
CompletedTask )
;) *
} 
) 
; 
} 	
} 
} Ç
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Handlers\TermPartContentHandler.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Handlers! )
{ 
public 

class "
TermPartContentHandler '
:( )
ContentHandlerBase* <
{		 
public

 
override

 
Task

 %
GetContentItemAspectAsync

 6
(

6 7$
ContentItemAspectContext

7 O
context

P W
)

W X
{ 	
return 
context 
. 
ForAsync #
<# $'
ContainedContentItemsAspect$ ?
>? @
(@ A
aspectA G
=>H J
{ 
if 
( 
context 
. 
ContentItem '
.' (
Content( /
./ 0
Terms0 5
is6 8
JArray9 ?
children@ H
)H I
{ 
aspect 
. 
	Accessors $
.$ %
Add% (
(( )
() *
jObject* 1
)1 2
=>3 5
{ 
return 
jObject &
[& '
$str' .
]. /
as0 2
JArray3 9
;9 :
} 
) 
; 
} 
return 
Task 
. 
CompletedTask )
;) *
} 
) 
; 
} 	
} 
} ≈G
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Helper\TaxonomyOrchardHelperExtensions.cs
public 
static 
class +
TaxonomyOrchardHelperExtensions 3
{ 
public 

static 
async 
Task 
< 
ContentItem (
>( ) 
GetTaxonomyTermAsync* >
(> ?
this? C
IOrchardHelperD R
orchardHelperS `
,` a
stringb h!
taxonomyContentItemIdi ~
,~ 
string
Ä Ü
termContentItemId
á ò
)
ò ô
{ 
var 
contentManager 
= 
orchardHelper *
.* +
HttpContext+ 6
.6 7
RequestServices7 F
.F G

GetServiceG Q
<Q R
IContentManagerR a
>a b
(b c
)c d
;d e
var 
taxonomy 
= 
await 
contentManager +
.+ ,
GetAsync, 4
(4 5!
taxonomyContentItemId5 J
)J K
;K L
if 

( 
taxonomy 
== 
null 
) 
{ 	
return 
null 
; 
} 	
return 
FindTerm 
( 
taxonomy  
.  !
Content! (
.( )
TaxonomyPart) 5
.5 6
Terms6 ;
as< >
JArray? E
,E F
termContentItemIdG X
)X Y
;Y Z
} 
public(( 

static(( 
async(( 
Task(( 
<(( 
List(( !
<((! "
ContentItem((" -
>((- .
>((. /"
GetInheritedTermsAsync((0 F
(((F G
this((G K
IOrchardHelper((L Z
orchardHelper(([ h
,((h i
string((j p"
taxonomyContentItemId	((q Ü
,
((Ü á
string
((à é
termContentItemId
((è †
)
((† °
{)) 
var** 
contentManager** 
=** 
orchardHelper** *
.*** +
HttpContext**+ 6
.**6 7
RequestServices**7 F
.**F G

GetService**G Q
<**Q R
IContentManager**R a
>**a b
(**b c
)**c d
;**d e
var++ 
taxonomy++ 
=++ 
await++ 
contentManager++ +
.+++ ,
GetAsync++, 4
(++4 5!
taxonomyContentItemId++5 J
)++J K
;++K L
if-- 

(-- 
taxonomy-- 
==-- 
null-- 
)-- 
{.. 	
return// 
null// 
;// 
}00 	
var22 
terms22 
=22 
new22 
List22 
<22 
ContentItem22 (
>22( )
(22) *
)22* +
;22+ ,
FindTermHierarchy44 
(44 
taxonomy44 "
.44" #
Content44# *
.44* +
TaxonomyPart44+ 7
.447 8
Terms448 =
as44> @
JArray44A G
,44G H
termContentItemId44I Z
,44Z [
terms44\ a
)44a b
;44b c
return66 
terms66 
;66 
}77 
public<< 

static<< 
async<< 
Task<< 
<<< 
IEnumerable<< (
<<<( )
ContentItem<<) 4
><<4 5
><<5 6-
!QueryCategorizedContentItemsAsync<<7 X
(<<X Y
this<<Y ]
IOrchardHelper<<^ l
orchardHelper<<m z
,<<z {
Func	<<| Ä
<
<<Ä Å
IQuery
<<Å á
<
<<á à
ContentItem
<<à ì
,
<<ì î
TaxonomyIndex
<<ï ¢
>
<<¢ £
,
<<£ §
IQuery
<<• ´
<
<<´ ¨
ContentItem
<<¨ ∑
>
<<∑ ∏
>
<<∏ π
query
<<∫ ø
)
<<ø ¿
{== 
var>> 
contentManager>> 
=>> 
orchardHelper>> *
.>>* +
HttpContext>>+ 6
.>>6 7
RequestServices>>7 F
.>>F G

GetService>>G Q
<>>Q R
IContentManager>>R a
>>>a b
(>>b c
)>>c d
;>>d e
var?? 
session?? 
=?? 
orchardHelper?? #
.??# $
HttpContext??$ /
.??/ 0
RequestServices??0 ?
.??? @

GetService??@ J
<??J K
ISession??K S
>??S T
(??T U
)??U V
;??V W
varAA 
contentItemsAA 
=AA 
awaitAA  
queryAA! &
(AA& '
sessionAA' .
.AA. /
QueryAA/ 4
<AA4 5
ContentItemAA5 @
,AA@ A
TaxonomyIndexAAB O
>AAO P
(AAP Q
)AAQ R
)AAR S
.AAS T
	ListAsyncAAT ]
(AA] ^
)AA^ _
;AA_ `
returnCC 
awaitCC 
contentManagerCC #
.CC# $
	LoadAsyncCC$ -
(CC- .
contentItemsCC. :
)CC: ;
;CC; <
}DD 
internalFF 
staticFF 
ContentItemFF 
FindTermFF  (
(FF( )
JArrayFF) /

termsArrayFF0 :
,FF: ;
stringFF< B
termContentItemIdFFC T
)FFT U
{GG 
foreachHH 
(HH 
JObjectHH 
termHH 
inHH  

termsArrayHH! +
)HH+ ,
{II 	
varJJ 
contentItemIdJJ 
=JJ 
termJJ  $
.JJ$ %
GetValueJJ% -
(JJ- .
$strJJ. =
)JJ= >
.JJ> ?
ToStringJJ? G
(JJG H
)JJH I
;JJI J
ifLL 
(LL 
contentItemIdLL 
==LL  
termContentItemIdLL! 2
)LL2 3
{MM 
returnNN 
termNN 
.NN 
ToObjectNN $
<NN$ %
ContentItemNN% 0
>NN0 1
(NN1 2
)NN2 3
;NN3 4
}OO 
ifQQ 
(QQ 
termQQ 
.QQ 
GetValueQQ 
(QQ 
$strQQ %
)QQ% &
isQQ' )
JArrayQQ* 0
childrenQQ1 9
)QQ9 :
{RR 
varSS 
foundSS 
=SS 
FindTermSS $
(SS$ %
childrenSS% -
,SS- .
termContentItemIdSS/ @
)SS@ A
;SSA B
ifUU 
(UU 
foundUU 
!=UU 
nullUU !
)UU! "
{VV 
returnWW 
foundWW  
;WW  !
}XX 
}YY 
}ZZ 	
return\\ 
null\\ 
;\\ 
}]] 
internal__ 
static__ 
bool__ 
FindTermHierarchy__ *
(__* +
JArray__+ 1

termsArray__2 <
,__< =
string__> D
termContentItemId__E V
,__V W
List__X \
<__\ ]
ContentItem__] h
>__h i
terms__j o
)__o p
{`` 
foreachaa 
(aa 
JObjectaa 
termaa 
inaa  

termsArrayaa! +
)aa+ ,
{bb 	
varcc 
contentItemIdcc 
=cc 
termcc  $
.cc$ %
GetValuecc% -
(cc- .
$strcc. =
)cc= >
.cc> ?
ToStringcc? G
(ccG H
)ccH I
;ccI J
ifee 
(ee 
contentItemIdee 
==ee  
termContentItemIdee! 2
)ee2 3
{ff 
termsgg 
.gg 
Addgg 
(gg 
termgg 
.gg 
ToObjectgg '
<gg' (
ContentItemgg( 3
>gg3 4
(gg4 5
)gg5 6
)gg6 7
;gg7 8
returnii 
trueii 
;ii 
}jj 
ifll 
(ll 
termll 
.ll 
GetValuell 
(ll 
$strll %
)ll% &
isll' )
JArrayll* 0
childrenll1 9
)ll9 :
{mm 
varnn 
foundnn 
=nn 
FindTermHierarchynn -
(nn- .
childrennn. 6
,nn6 7
termContentItemIdnn8 I
,nnI J
termsnnK P
)nnP Q
;nnQ R
ifpp 
(pp 
foundpp 
)pp 
{qq 
termsrr 
.rr 
Addrr 
(rr 
termrr "
.rr" #
ToObjectrr# +
<rr+ ,
ContentItemrr, 7
>rr7 8
(rr8 9
)rr9 :
)rr: ;
;rr; <
returntt 
truett 
;tt  
}uu 
}vv 
}ww 	
returnyy 
falseyy 
;yy 
}zz 
}{{ ç 
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Indexing\TaxonomyFieldIndexHandler.cs
	namespace

 	
OrchardCore


 
.

 

Taxonomies

  
.

  !
Indexing

! )
{ 
public 

class %
TaxonomyFieldIndexHandler *
:+ ,$
ContentFieldIndexHandler- E
<E F
TaxonomyFieldF S
>S T
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public %
TaxonomyFieldIndexHandler (
(( )
IServiceProvider) 9
serviceProvider: I
)I J
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
async 
Task "
BuildIndexAsync# 2
(2 3
TaxonomyField3 @
fieldA F
,F G"
BuildFieldIndexContextH ^
context_ f
)f g
{ 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
options 
|=  
DocumentIndexOptions +
.+ ,
Store, 1
;1 2
foreach 
( 
var 
contentItemId &
in' )
field* /
./ 0
TermContentItemIds0 B
)B C
{ 
foreach 
( 
var 
key  
in! #
context$ +
.+ ,
Keys, 0
)0 1
{   
context!! 
.!! 
DocumentIndex!! )
.!!) *
Set!!* -
(!!- .
key!!. 1
,!!1 2
contentItemId!!3 @
,!!@ A
options!!B I
)!!I J
;!!J K
}"" 
}## 
var&& 
contentManager&& 
=&&  
_serviceProvider&&! 1
.&&1 2
GetRequiredService&&2 D
<&&D E
IContentManager&&E T
>&&T U
(&&U V
)&&V W
;&&W X
var'' 
taxonomy'' 
='' 
await''  
contentManager''! /
.''/ 0
GetAsync''0 8
(''8 9
field''9 >
.''> ?!
TaxonomyContentItemId''? T
)''T U
;''U V
var)) !
inheritedContentItems)) %
=))& '
new))( +
List)), 0
<))0 1
ContentItem))1 <
>))< =
())= >
)))> ?
;))? @
foreach** 
(** 
var** 
contentItemId** &
in**' )
field*** /
.**/ 0
TermContentItemIds**0 B
)**B C
{++ +
TaxonomyOrchardHelperExtensions,, /
.,,/ 0
FindTermHierarchy,,0 A
(,,A B
taxonomy,,B J
.,,J K
Content,,K R
.,,R S
TaxonomyPart,,S _
.,,_ `
Terms,,` e
as,,f h
JArray,,i o
,,,o p
contentItemId,,q ~
,,,~ #
inheritedContentItems
,,Ä ï
)
,,ï ñ
;
,,ñ ó
}-- 
foreach// 
(// 
var// 
key// 
in// 
context//  '
.//' (
Keys//( ,
)//, -
{00 
foreach11 
(11 
var11 
contentItem11 (
in11) +!
inheritedContentItems11, A
)11A B
{22 
context33 
.33 
DocumentIndex33 )
.33) *
Set33* -
(33- .
key33. 1
+332 3
$str334 @
,33@ A
contentItem33B M
.33M N
ContentItemId33N [
,33[ \
options33] d
)33d e
;33e f
}44 
}55 
}66 	
}77 
}88 ‚C
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Indexing\TaxonomyIndex.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Indexing! )
{ 
public 

class 
TaxonomyIndex 
:  
MapIndex! )
{ 
public 
string !
TaxonomyContentItemId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ContentPart !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ContentField "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
TermContentItemId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
	Published 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Latest 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class !
TaxonomyIndexProvider &
:' (
IndexProvider) 6
<6 7
ContentItem7 B
>B C
,C D 
IScopedIndexProviderE Y
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public   !
TaxonomyIndexProvider   $
(  $ %
IServiceProvider  % 5
serviceProvider  6 E
)  E F
{!! 	
_serviceProvider"" 
="" 
serviceProvider"" .
;"". /
}## 	
public%% 
override%% 
void%% 
Describe%% %
(%%% &
DescribeContext%%& 5
<%%5 6
ContentItem%%6 A
>%%A B
context%%C J
)%%J K
{&& 	
context'' 
.'' 
For'' 
<'' 
TaxonomyIndex'' %
>''% &
(''& '
)''' (
.(( 
Map(( 
((( 
contentItem((  
=>((! #
{)) 
if++ 
(++ 
!++ 
contentItem++ $
.++$ %
	Published++% .
&&++/ 1
!++2 3
contentItem++3 >
.++> ?
Latest++? E
)++E F
{,, 
return-- 
null-- #
;--# $
}.. 
if11 
(11 
_ignoredTypes11 %
.11% &
Contains11& .
(11. /
contentItem11/ :
.11: ;
ContentType11; F
)11F G
)11G H
{22 
return33 
null33 #
;33# $
}44 %
_contentDefinitionManager77 -
??=77. 1
_serviceProvider772 B
.77B C
GetRequiredService77C U
<77U V%
IContentDefinitionManager77V o
>77o p
(77p q
)77q r
;77r s
var:: !
contentTypeDefinition:: -
=::. /%
_contentDefinitionManager::0 I
.::I J
GetTypeDefinition::J [
(::[ \
contentItem::\ g
.::g h
ContentType::h s
)::s t
;::t u
if== 
(== !
contentTypeDefinition== -
====. 0
null==1 5
)==5 6
{>> 
_ignoredTypes?? %
.??% &
Add??& )
(??) *
contentItem??* 5
.??5 6
ContentType??6 A
)??A B
;??B C
return@@ 
null@@ #
;@@# $
}AA 
varCC 
fieldDefinitionsCC (
=CC) *!
contentTypeDefinitionCC+ @
.DD 
PartsDD 
.DD 

SelectManyDD )
(DD) *
xDD* +
=>DD, .
xDD/ 0
.DD0 1
PartDefinitionDD1 ?
.DD? @
FieldsDD@ F
.DDF G
WhereDDG L
(DDL M
fDDM N
=>DDO Q
fDDR S
.DDS T
FieldDefinitionDDT c
.DDc d
NameDDd h
==DDi k
nameofDDl r
(DDr s
TaxonomyField	DDs Ä
)
DDÄ Å
)
DDÅ Ç
)
DDÇ É
.EE 
ToArrayEE  
(EE  !
)EE! "
;EE" #
ifHH 
(HH 
fieldDefinitionsHH (
.HH( )
LengthHH) /
==HH0 2
$numHH3 4
)HH4 5
{II 
_ignoredTypesJJ %
.JJ% &
AddJJ& )
(JJ) *
contentItemJJ* 5
.JJ5 6
ContentTypeJJ6 A
)JJA B
;JJB C
returnKK 
nullKK #
;KK# $
}LL 
varNN 
resultsNN 
=NN  !
newNN" %
ListNN& *
<NN* +
TaxonomyIndexNN+ 8
>NN8 9
(NN9 :
)NN: ;
;NN; <
foreachQQ 
(QQ 
varQQ  
fieldDefinitionQQ! 0
inQQ1 3
fieldDefinitionsQQ4 D
)QQD E
{RR 
varSS 
jPartSS !
=SS" #
(SS$ %
JObjectSS% ,
)SS, -
contentItemSS- 8
.SS8 9
ContentSS9 @
[SS@ A
fieldDefinitionSSA P
.SSP Q
PartDefinitionSSQ _
.SS_ `
NameSS` d
]SSd e
;SSe f
ifUU 
(UU 
jPartUU !
==UU" $
nullUU% )
)UU) *
{VV 
continueWW $
;WW$ %
}XX 
varZZ 
jFieldZZ "
=ZZ# $
(ZZ% &
JObjectZZ& -
)ZZ- .
jPartZZ. 3
[ZZ3 4
fieldDefinitionZZ4 C
.ZZC D
NameZZD H
]ZZH I
;ZZI J
if\\ 
(\\ 
jField\\ "
==\\# %
null\\& *
)\\* +
{]] 
continue^^ $
;^^$ %
}__ 
varaa 
fieldaa !
=aa" #
jFieldaa$ *
.aa* +
ToObjectaa+ 3
<aa3 4
TaxonomyFieldaa4 A
>aaA B
(aaB C
)aaC D
;aaD E
foreachcc 
(cc  !
varcc! $
termContentItemIdcc% 6
incc7 9
fieldcc: ?
.cc? @
TermContentItemIdscc@ R
)ccR S
{dd 
resultsee #
.ee# $
Addee$ '
(ee' (
newee( +
TaxonomyIndexee, 9
{ff !
TaxonomyContentItemIdgg  5
=gg6 7
fieldgg8 =
.gg= >!
TaxonomyContentItemIdgg> S
,ggS T
ContentItemIdhh  -
=hh. /
contentItemhh0 ;
.hh; <
ContentItemIdhh< I
,hhI J
ContentTypeii  +
=ii, -
contentItemii. 9
.ii9 :
ContentTypeii: E
,iiE F
ContentPartjj  +
=jj, -
fieldDefinitionjj. =
.jj= >
PartDefinitionjj> L
.jjL M
NamejjM Q
,jjQ R
ContentFieldkk  ,
=kk- .
fieldDefinitionkk/ >
.kk> ?
Namekk? C
,kkC D
TermContentItemIdll  1
=ll2 3
termContentItemIdll4 E
,llE F
	Publishedmm  )
=mm* +
contentItemmm, 7
.mm7 8
	Publishedmm8 A
,mmA B
Latestnn  &
=nn' (
contentItemnn) 4
.nn4 5
Latestnn5 ;
}oo 
)oo 
;oo 
}pp 
}qq 
returnss 
resultsss "
;ss" #
}tt 
)tt 
;tt 
}uu 	
}vv 
}ww œ!
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Liquid\InheritedTermFilter.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Liquid! '
{ 
public 

class  
InheritedTermsFilter %
:& '
ILiquidFilter( 5
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, _
)_ `
;` a
} 
ContentItem 
taxonomy  
=! "
null# '
;' (
string 
termContentItemId $
=% &
null' +
;+ ,
var 
contentManager 
=  
(! "
(" #
IServiceProvider# 3
)3 4
services4 <
)< =
.= >
GetRequiredService> P
<P Q
IContentManagerQ `
>` a
(a b
)b c
;c d
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
Object* 0
&&1 3
input4 9
.9 :
ToObjectValue: G
(G H
)H I
isJ L
ContentItemM X
termY ]
)] ^
{ 
termContentItemId !
=" #
term$ (
.( )
ContentItemId) 6
;6 7
} 
else 
{   
termContentItemId!! !
=!!" #
input!!$ )
.!!) *
ToStringValue!!* 7
(!!7 8
)!!8 9
;!!9 :
}"" 
var$$ 
firstArg$$ 
=$$ 
	arguments$$ $
.$$$ %
At$$% '
($$' (
$num$$( )
)$$) *
;$$* +
if&& 
(&& 
firstArg&& 
.&& 
Type&& 
==&&  
FluidValues&&! ,
.&&, -
Object&&- 3
&&&&4 6
input&&7 <
.&&< =
ToObjectValue&&= J
(&&J K
)&&K L
is&&M O
ContentItem&&P [
contentItem&&\ g
)&&g h
{'' 
taxonomy(( 
=(( 
contentItem(( &
;((& '
})) 
else** 
{++ 
taxonomy,, 
=,, 
await,,  
contentManager,,! /
.,,/ 0
GetAsync,,0 8
(,,8 9
firstArg,,9 A
.,,A B
ToStringValue,,B O
(,,O P
),,P Q
),,Q R
;,,R S
}-- 
if// 
(// 
taxonomy// 
==// 
null//  
)//  !
{00 
return11 
null11 
;11 
}22 
var44 
terms44 
=44 
new44 
List44  
<44  !
ContentItem44! ,
>44, -
(44- .
)44. /
;44/ 0+
TaxonomyOrchardHelperExtensions66 +
.66+ ,
FindTermHierarchy66, =
(66= >
taxonomy66> F
.66F G
Content66G N
.66N O
TaxonomyPart66O [
.66[ \
Terms66\ a
as66b d
JArray66e k
,66k l
termContentItemId66m ~
,66~ 
terms
66Ä Ö
)
66Ö Ü
;
66Ü á
return88 

FluidValue88 
.88 
Create88 $
(88$ %
terms88% *
)88* +
;88+ ,
}99 	
}:: 
};; ƒ2
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Liquid\TaxonomyTermFilter.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Liquid! '
{ 
public 

class 
TaxonomyTermsFilter $
:% &
ILiquidFilter' 4
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, ^
)^ _
;_ `
} 
var 
contentManager 
=  
(! "
(" #
IServiceProvider# 3
)3 4
services4 <
)< =
.= >
GetRequiredService> P
<P Q
IContentManagerQ `
>` a
(a b
)b c
;c d
string !
taxonomyContentItemId (
=) *
null+ /
;/ 0
string 
[ 
] 
termContentItemIds '
=( )
null* .
;. /
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
Object* 0
&&1 3
input4 9
.9 :
ToObjectValue: G
(G H
)H I
isJ L
TaxonomyFieldM Z
field[ `
)` a
{ !
taxonomyContentItemId %
=& '
field( -
.- .!
TaxonomyContentItemId. C
;C D
termContentItemIds   "
=  # $
field  % *
.  * +
TermContentItemIds  + =
;  = >
}!! 
else"" 
if"" 
("" 
input"" 
."" 
Type"" 
==""  "
FluidValues""# .
."". /
Object""/ 5
&&## 
input## 
.## 
ToObjectValue## &
(##& '
)##' (
is##) +
JObject##, 3
jobj##4 8
&&$$ 
jobj$$ 
.$$ 
ContainsKey$$ #
($$# $
nameof$$$ *
($$* +
TaxonomyField$$+ 8
.$$8 9
TermContentItemIds$$9 K
)$$K L
)$$L M
&&%% 
jobj%% 
.%% 
ContainsKey%% #
(%%# $
nameof%%$ *
(%%* +
TaxonomyField%%+ 8
.%%8 9!
TaxonomyContentItemId%%9 N
)%%N O
)%%O P
)%%P Q
{&& !
taxonomyContentItemId'' %
=''& '
jobj''( ,
['', -
$str''- D
]''D E
.''E F
Value''F K
<''K L
string''L R
>''R S
(''S T
)''T U
;''U V
termContentItemIds(( "
=((# $
(((% &
(((& '
JArray((' -
)((- .
jobj((. 2
[((2 3
$str((3 G
]((G H
)((H I
.((I J
Values((J P
<((P Q
string((Q W
>((W X
(((X Y
)((Y Z
.((Z [
ToArray(([ b
(((b c
)((c d
;((d e
})) 
else** 
if** 
(** 
input** 
.** 
Type** 
==**  "
FluidValues**# .
.**. /
Array**/ 4
)**4 5
{++ !
taxonomyContentItemId,, %
=,,& '
	arguments,,( 1
.,,1 2
At,,2 4
(,,4 5
$num,,5 6
),,6 7
.,,7 8
ToStringValue,,8 E
(,,E F
),,F G
;,,G H
termContentItemIds-- "
=--# $
input--% *
.--* +
	Enumerate--+ 4
(--4 5
)--5 6
.--6 7
Select--7 =
(--= >
x--> ?
=>--@ B
x--C D
.--D E
ToStringValue--E R
(--R S
)--S T
)--T U
.--U V
ToArray--V ]
(--] ^
)--^ _
;--_ `
}.. 
else// 
{00 
return11 
NilValue11 
.11  
Instance11  (
;11( )
}22 
var44 
taxonomy44 
=44 
await44  
contentManager44! /
.44/ 0
GetAsync440 8
(448 9!
taxonomyContentItemId449 N
)44N O
;44O P
if66 
(66 
taxonomy66 
==66 
null66  
)66  !
{77 
return88 
null88 
;88 
}99 
var;; 
terms;; 
=;; 
new;; 
List;;  
<;;  !
ContentItem;;! ,
>;;, -
(;;- .
);;. /
;;;/ 0
foreach== 
(== 
var== 
termContentItemId== *
in==+ -
termContentItemIds==. @
)==@ A
{>> 
var?? 
term?? 
=?? +
TaxonomyOrchardHelperExtensions?? :
.??: ;
FindTerm??; C
(??C D
taxonomy??D L
.??L M
Content??M T
.??T U
TaxonomyPart??U a
.??a b
Terms??b g
as??h j
JArray??k q
,??q r
termContentItemId	??s Ñ
)
??Ñ Ö
;
??Ö Ü
ifAA 
(AA 
termAA 
!=AA 
nullAA  
)AA  !
{BB 
termsCC 
.CC 
AddCC 
(CC 
termCC "
)CC" #
;CC# $
}DD 
}EE 
returnGG 

FluidValueGG 
.GG 
CreateGG $
(GG$ %
termsGG% *
)GG* +
;GG+ ,
}HH 	
}II 
}JJ æ
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
Author 

= 
ManifestConstants 
. 
OrchardCoreTeam .
,. /
Website 
= 
ManifestConstants 
.  
OrchardCoreWebsite  2
,2 3
Version 
= 
ManifestConstants 
.  
OrchardCoreVersion  2
) 
] 
[

 
assembly

 	
:

	 

Feature

 
(

 
Id 
= 
$str	 !
,! "
Name 
=	 

$str 
, 
Description 
= 
$str U
,U V
Dependencies 
= 
new 
[ 
] 
{ 
$str 5
}6 7
,7 8
Category 
= 
$str #
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 3
,3 4
Name 
=	 

$str -
,- .
Description 
= 
$str C
,C D
Dependencies 
= 
new 
[ 
] 
{ 
$str 3
}4 5
,5 6
Category 
= 
$str #
) 
] çf
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Migrations.cs
	namespace

 	
OrchardCore


 
.

 

Taxonomies

  
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterTypeDefinition& 9
(9 :
$str: D
,D E
taxonomyF N
=>O Q
taxonomyR Z
. 
	Draftable 
( 
) 
. 
Versionable 
( 
) 
. 
	Creatable 
( 
) 
. 
Listable 
( 
) 
. 
WithPart 
( 
$str %
,% &
part' +
=>, .
part/ 3
.3 4
WithPosition4 @
(@ A
$strA D
)D E
)E F
. 
WithPart 
( 
$str %
,% &
part' +
=>, .
part/ 3
. 
WithPosition !
(! "
$str" %
)% &
. 
WithSettings !
(! "
new" %
AliasPartSettings& 7
{   
Pattern!! 
=!!  !
$str!!" T
}"" 
)"" 
)"" 
.## 
WithPart## 
(## 
$str## )
,##) *
part##+ /
=>##0 2
part##3 7
.$$ 
WithPosition$$ !
($$! "
$str$$" %
)$$% &
.%% 
WithSettings%% !
(%%! "
new%%" %!
AutoroutePartSettings%%& ;
{&& 
Pattern'' 
=''  !
$str''" T
,''T U$
AllowRouteContainedItems(( 0
=((1 2
true((3 7
})) 
))) 
))) 
.** 
WithPart** 
(** 
$str** (
,**( )
part*** .
=>**/ 1
part**2 6
.**6 7
WithPosition**7 C
(**C D
$str**D G
)**G H
)**H I
)++ 
;++ 
SchemaBuilder-- 
.-- 
CreateMapIndexTable-- -
<--- .
TaxonomyIndex--. ;
>--; <
(--< =
table--= B
=>--C E
table--F K
... 
Column.. 
<.. 
string.. 
>.. 
(..  
$str..  7
,..7 8
c..9 :
=>..; =
c..> ?
...? @

WithLength..@ J
(..J K
$num..K M
)..M N
)..N O
.// 
Column// 
<// 
string// 
>// 
(//  
$str//  /
,/// 0
c//1 2
=>//3 5
c//6 7
.//7 8

WithLength//8 B
(//B C
$num//C E
)//E F
)//F G
.00 
Column00 
<00 
string00 
>00 
(00  
$str00  -
,00- .
column00/ 5
=>006 8
column009 ?
.00? @

WithLength00@ J
(00J K
ContentItemIndex00K [
.00[ \
MaxContentTypeSize00\ n
)00n o
)00o p
.11 
Column11 
<11 
string11 
>11 
(11  
$str11  -
,11- .
column11/ 5
=>116 8
column119 ?
.11? @

WithLength11@ J
(11J K
ContentItemIndex11K [
.11[ \
MaxContentPartSize11\ n
)11n o
)11o p
.22 
Column22 
<22 
string22 
>22 
(22  
$str22  .
,22. /
column220 6
=>227 9
column22: @
.22@ A

WithLength22A K
(22K L
ContentItemIndex22L \
.22\ ]
MaxContentFieldSize22] p
)22p q
)22q r
.33 
Column33 
<33 
string33 
>33 
(33  
$str33  3
,333 4
column335 ;
=>33< >
column33? E
.33E F

WithLength33F P
(33P Q
$num33Q S
)33S T
)33T U
.44 
Column44 
<44 
bool44 
>44 
(44 
$str44 )
,44) *
c44+ ,
=>44- /
c440 1
.441 2
WithDefault442 =
(44= >
true44> B
)44B C
)44C D
.55 
Column55 
<55 
bool55 
>55 
(55 
$str55 &
,55& '
c55( )
=>55* ,
c55- .
.55. /
WithDefault55/ :
(55: ;
false55; @
)55@ A
)55A B
)66 
;66 
SchemaBuilder88 
.88 
AlterIndexTable88 )
<88) *
TaxonomyIndex88* 7
>887 8
(888 9
table889 >
=>88? A
table88B G
.99 
CreateIndex99 
(99 
$str99 ;
,99; <
$str::  
,::  !
$str;; +
,;;+ ,
$str<< #
,<<# $
$str== '
,==' (
$str>> 
,>>  
$str?? 
)?? 
)@@ 
;@@ 
SchemaBuilderBB 
.BB 
AlterIndexTableBB )
<BB) *
TaxonomyIndexBB* 7
>BB7 8
(BB8 9
tableBB9 >
=>BB? A
tableBBB G
.CC 
CreateIndexCC 
(CC 
$strCC G
,CCG H
$strDD  
,DD  !
$strEE !
,EE! "
$strFF !
,FF! "
$strGG "
,GG" #
$strHH 
,HH  
$strII 
)II 
)JJ 
;JJ 
returnMM 
$numMM 
;MM 
}NN 	
publicRR 
intRR 
UpdateFrom1RR 
(RR 
)RR  
{SS 	%
_contentDefinitionManagerTT %
.TT% & 
MigrateFieldSettingsTT& :
<TT: ;
TaxonomyFieldTT; H
,TTH I!
TaxonomyFieldSettingsTTJ _
>TT_ `
(TT` a
)TTa b
;TTb c
returnUU 
$numUU 
;UU 
}VV 	
publicYY 
intYY 
UpdateFrom2YY 
(YY 
)YY  
{ZZ 	%
_contentDefinitionManager[[ %
.[[% &
AlterTypeDefinition[[& 9
([[9 :
$str[[: D
,[[D E
taxonomy[[F N
=>[[O Q
taxonomy[[R Z
.\\ 
WithPart\\ 
(\\ 
$str\\ )
,\\) *
part\\+ /
=>\\0 2
part\\3 7
.]] 
WithPosition]] !
(]]! "
$str]]" %
)]]% &
.^^ 
WithSettings^^ !
(^^! "
new^^" %!
AutoroutePartSettings^^& ;
{__ 
Pattern`` 
=``  !
$str``" T
,``T U$
AllowRouteContainedItemsaa 0
=aa1 2
trueaa3 7
}bb 
)bb 
)bb 
.cc 
WithPartcc 
(cc 
$strcc (
,cc( )
partcc* .
=>cc/ 1
partcc2 6
.cc6 7
WithPositioncc7 C
(ccC D
$strccD G
)ccG H
)ccH I
)dd 
;dd 
returnff 
$numff 
;ff 
}gg 	
publicjj 
intjj 
UpdateFrom3jj 
(jj 
)jj  
{kk 	
SchemaBuildermm 
.mm 
AlterIndexTablemm )
<mm) *
TaxonomyIndexmm* 7
>mm7 8
(mm8 9
tablemm9 >
=>mm? A
tablemmB G
.nn 
	AddColumnnn 
<nn 
boolnn 
>nn  
(nn  !
$strnn! ,
,nn, -
cnn. /
=>nn0 2
cnn3 4
.nn4 5
WithDefaultnn5 @
(nn@ A
truennA E
)nnE F
)nnF G
)oo 
;oo 
SchemaBuilderqq 
.qq 
AlterIndexTableqq )
<qq) *
TaxonomyIndexqq* 7
>qq7 8
(qq8 9
tableqq9 >
=>qq? A
tableqqB G
.rr 
	AddColumnrr 
<rr 
boolrr 
>rr  
(rr  !
$strrr! )
,rr) *
crr+ ,
=>rr- /
crr0 1
.rr1 2
WithDefaultrr2 =
(rr= >
falserr> C
)rrC D
)rrD E
)ss 
;ss 
SchemaBuildervv 
.vv 
AlterIndexTablevv )
<vv) *
TaxonomyIndexvv* 7
>vv7 8
(vv8 9
tablevv9 >
=>vv? A
tablevvB G
.ww 
CreateIndexww 
(ww 
$strww ;
,ww; <
$strxx  
,xx  !
$stryy +
,yy+ ,
$strzz #
,zz# $
$str{{ '
,{{' (
$str|| 
,||  
$str}} 
)}} 
)~~ 
;~~ 
SchemaBuilder
ÄÄ 
.
ÄÄ 
AlterIndexTable
ÄÄ )
<
ÄÄ) *
TaxonomyIndex
ÄÄ* 7
>
ÄÄ7 8
(
ÄÄ8 9
table
ÄÄ9 >
=>
ÄÄ? A
table
ÄÄB G
.
ÅÅ 
CreateIndex
ÅÅ 
(
ÅÅ 
$str
ÅÅ G
,
ÅÅG H
$str
ÇÇ  
,
ÇÇ  !
$str
ÉÉ !
,
ÉÉ! "
$str
ÑÑ !
,
ÑÑ! "
$str
ÖÖ "
,
ÖÖ" #
$str
ÜÜ 
,
ÜÜ  
$str
áá 
)
áá 
)
àà 
;
àà 
return
ãã 
$num
ãã 
;
ãã 
}
åå 	
public
èè 
int
èè 
UpdateFrom4
èè 
(
èè 
)
èè  
{
êê 	
SchemaBuilder
ìì 
.
ìì 
AlterIndexTable
ìì )
<
ìì) *
TaxonomyIndex
ìì* 7
>
ìì7 8
(
ìì8 9
table
ìì9 >
=>
ìì? A
table
ììB G
.
îî 
	AddColumn
îî 
<
îî 
bool
îî 
>
îî  
(
îî  !
$str
îî! ,
,
îî, -
c
îî. /
=>
îî0 2
c
îî3 4
.
îî4 5
WithDefault
îî5 @
(
îî@ A
true
îîA E
)
îîE F
)
îîF G
)
ïï 
;
ïï 
SchemaBuilder
óó 
.
óó 
AlterIndexTable
óó )
<
óó) *
TaxonomyIndex
óó* 7
>
óó7 8
(
óó8 9
table
óó9 >
=>
óó? A
table
óóB G
.
òò 
	AddColumn
òò 
<
òò 
bool
òò 
>
òò  
(
òò  !
$str
òò! )
,
òò) *
c
òò+ ,
=>
òò- /
c
òò0 1
.
òò1 2
WithDefault
òò2 =
(
òò= >
false
òò> C
)
òòC D
)
òòD E
)
ôô 
;
ôô 
SchemaBuilder
úú 
.
úú 
AlterIndexTable
úú )
<
úú) *
TaxonomyIndex
úú* 7
>
úú7 8
(
úú8 9
table
úú9 >
=>
úú? A
table
úúB G
.
ùù 
CreateIndex
ùù 
(
ùù 
$str
ùù E
,
ùùE F
$str
ûû  
,
ûû  !
$str
üü 
,
üü  
$str
†† 
)
†† 
)
°° 
;
°° 
return
££ 
$num
££ 
;
££ 
}
§§ 	
}
•• 
internal
ßß 
class
ßß 
AliasPartSettings
ßß $
{
®® 
public
©© 
string
©© 
Pattern
©© 
{
©© 
get
©©  #
;
©©# $
set
©©% (
;
©©( )
}
©©* +
}
™™ 
internal
¨¨ 
class
¨¨ #
AutoroutePartSettings
¨¨ (
{
≠≠ 
public
ÆÆ 
string
ÆÆ 
Pattern
ÆÆ 
{
ÆÆ 
get
ÆÆ  #
;
ÆÆ# $
set
ÆÆ% (
;
ÆÆ( )
}
ÆÆ* +
public
ØØ 
bool
ØØ &
AllowRouteContainedItems
ØØ ,
{
ØØ- .
get
ØØ/ 2
;
ØØ2 3
set
ØØ4 7
;
ØØ7 8
}
ØØ9 :
}
∞∞ 
}±± ∞
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Models\TaxonomyPart.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Models! '
{ 
public 

class 
TaxonomyPart 
: 
ContentPart  +
{ 
public		 
string		 
TermContentType		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
List

 
<

 
ContentItem

 
>

  
Terms

! &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
=

5 6
new

7 :
List

; ?
<

? @
ContentItem

@ K
>

K L
(

L M
)

M N
;

N O
} 
}  
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Models\TermPart.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Models! '
{ 
public 

class 
TermPart 
: 
ContentPart '
{ 
public 
string !
TaxonomyContentItemId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
}		 
}

 è
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Permissions.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
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
 )
ManageTaxonomies

* :
=

; <
new

= @

Permission

A K
(

K L
$str

L \
,

\ ]
$str

^ q
)

q r
;

r s
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
{) *
ManageTaxonomies+ ;
}< =
.= >
AsEnumerable> J
(J K
)K L
)L M
;M N
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageTaxonomies* :
}; <
} 
} 
; 
} 	
} 
} ¯#
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Services\TaxonomyContentsAdminListFilter.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Services! )
{ 
public 

class +
TaxonomyContentsAdminListFilter 0
:1 2$
IContentsAdminListFilter3 K
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public +
TaxonomyContentsAdminListFilter .
(. /
ISiteService/ ;
siteService< G
)G H
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
FilterAsync %
(% &#
ContentOptionsViewModel& =
model> C
,C D
IQueryE K
<K L
ContentItemL W
>W X
queryY ^
,^ _
IUpdateModel` l
updaterm t
)t u
{ 	
var 
settings 
= 
( 
await !
_siteService" .
.. / 
GetSiteSettingsAsync/ C
(C D
)D E
)E F
.F G
AsG I
<I J-
!TaxonomyContentsAdminListSettingsJ k
>k l
(l m
)m n
;n o
foreach 
( 
var 
contentItemId &
in' )
settings* 2
.2 3"
TaxonomyContentItemIds3 I
)I J
{ 
var 
	viewModel 
= 
new  #0
$TaxonomyContentsAdminFilterViewModel$ H
(H I
)I J
;J K
if 
( 
await 
updater !
.! "
TryUpdateModelAsync" 5
(5 6
	viewModel6 ?
,? @
$strA K
+L M
contentItemIdN [
)[ \
)\ ]
{   
if"" 
("" 
!"" 
String"" 
.""  
IsNullOrEmpty""  -
(""- .
	viewModel"". 7
.""7 8!
SelectedContentItemId""8 M
)""M N
)""N O
{## 
if$$ 
($$ 
	viewModel$$ %
.$$% &!
SelectedContentItemId$$& ;
.$$; <

StartsWith$$< F
($$F G
$str$$G R
,$$R S
StringComparison$$T d
.$$d e
OrdinalIgnoreCase$$e v
)$$v w
)$$w x
{%% 
	viewModel&& %
.&&% &!
SelectedContentItemId&&& ;
=&&< =
	viewModel&&> G
.&&G H!
SelectedContentItemId&&H ]
.&&] ^
	Substring&&^ g
(&&g h
$num&&h i
)&&i j
;&&j k
query'' !
.''! "
All''" %
(''% &
x((  !
=>((" $
query((% *
.((* +
With((+ /
<((/ 0
TaxonomyIndex((0 =
>((= >
(((> ?
x((? @
=>((A C
x((D E
.((E F!
TaxonomyContentItemId((F [
==((\ ^
	viewModel((_ h
.((h i!
SelectedContentItemId((i ~
)((~ 
))) 
;)) 
}** 
else++ 
if++ 
(++  !
	viewModel++! *
.++* +!
SelectedContentItemId+++ @
.++@ A

StartsWith++A K
(++K L
$str++L S
,++S T
StringComparison++U e
.++e f
OrdinalIgnoreCase++f w
)++w x
)++x y
{,, 
	viewModel-- %
.--% &!
SelectedContentItemId--& ;
=--< =
	viewModel--> G
.--G H!
SelectedContentItemId--H ]
.--] ^
	Substring--^ g
(--g h
$num--h i
)--i j
;--j k
query.. !
...! "
All.." %
(..% &
x//  !
=>//" $
query//% *
.//* +
With//+ /
</// 0
TaxonomyIndex//0 =
>//= >
(//> ?
x//? @
=>//A C
x//D E
.//E F
TermContentItemId//F W
==//X Z
	viewModel//[ d
.//d e!
SelectedContentItemId//e z
)//z {
)00 
;00 
}11 
}22 
}33 
}44 
}55 	
}66 
}77 ö
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Settings\TaxonomyContentsAdminListSettings.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Settings! )
{ 
public 

class -
!TaxonomyContentsAdminListSettings 2
{ 
public 
string 
[ 
] "
TaxonomyContentItemIds .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
Array? D
.D E
EmptyE J
<J K
stringK Q
>Q R
(R S
)S T
;T U
} 
}		 Ã3
±D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Settings\TaxonomyContentsAdminListSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Settings! )
{ 
public 

class :
.TaxonomyContentsAdminListSettingsDisplayDriver ?
:@ A 
SectionDisplayDriverB V
<V W
ISiteW \
,\ ]-
!TaxonomyContentsAdminListSettings^ 
>	 Ä
{ 
public 
const 
string 
GroupId #
=$ %
$str& A
;A B
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
YesSql 
.  
ISession  (
_session) 1
;1 2
public :
.TaxonomyContentsAdminListSettingsDisplayDriver =
(= > 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
,6 7
YesSql 
. 
ISession 
session #
)# $
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_session   
=   
session   
;   
}!! 	
public## 
override## 
async## 
Task## "
<##" #
IDisplayResult### 1
>##1 2
	EditAsync##3 <
(##< =-
!TaxonomyContentsAdminListSettings##= ^
settings##_ g
,##g h
BuildEditorContext##i {
context	##| É
)
##É Ñ
{$$ 	
var%% 
user%% 
=%%  
_httpContextAccessor%% +
.%%+ ,
HttpContext%%, 7
?%%7 8
.%%8 9
User%%9 =
;%%= >
if&& 
(&& 
user&& 
==&& 
null&& 
||&& 
!&&  !
await&&! &!
_authorizationService&&' <
.&&< =
AuthorizeAsync&&= K
(&&K L
user&&L P
,&&P Q
Permissions&&R ]
.&&] ^
ManageTaxonomies&&^ n
)&&n o
)&&o p
{'' 
return(( 
null(( 
;(( 
})) 
var++ 

taxonomies++ 
=++ 
await++ "
_session++# +
.+++ ,
Query++, 1
<++1 2
ContentItem++2 =
,++= >
ContentItemIndex++? O
>++O P
(++P Q
q++Q R
=>++S U
q++V W
.++W X
ContentType++X c
==++d f
$str++g q
&&++r t
q++u v
.++v w
	Published	++w Ä
)
++Ä Å
.
++Å Ç
	ListAsync
++Ç ã
(
++ã å
)
++å ç
;
++ç é
var-- 
entries-- 
=-- 

taxonomies-- $
.--$ %
Select--% +
(--+ ,
x--, -
=>--. 0
new--1 4
TaxonomyEntry--5 B
{.. 
DisplayText// 
=// 
x// 
.//  
DisplayText//  +
,//+ ,
ContentItemId00 
=00 
x00  !
.00! "
ContentItemId00" /
,00/ 0
	IsChecked11 
=11 
settings11 $
.11$ %"
TaxonomyContentItemIds11% ;
.11; <
Any11< ?
(11? @
id11@ B
=>11C E
String11F L
.11L M
Equals11M S
(11S T
x11T U
.11U V
ContentItemId11V c
,11c d
id11e g
,11g h
StringComparison11i y
.11y z
OrdinalIgnoreCase	11z ã
)
11ã å
)
11å ç
}22 
)22 
.22 
ToArray22 
(22 
)22 
;22 
return44 

Initialize44 
<44 6
*TaxonomyContentsAdminListSettingsViewModel44 H
>44H I
(44I J
$str44J r
,44r s
model44t y
=>44z |
{55 
model66 
.66 
TaxonomyEntries66 %
=66& '
entries66( /
;66/ 0
}77 
)77 
.77 
Location77 
(77 
$str77 #
)77# $
.77$ %
OnGroup77% ,
(77, -
GroupId77- 4
)774 5
;775 6
}88 	
public:: 
override:: 
async:: 
Task:: "
<::" #
IDisplayResult::# 1
>::1 2
UpdateAsync::3 >
(::> ?-
!TaxonomyContentsAdminListSettings::? `
settings::a i
,::i j
BuildEditorContext::k }
context	::~ Ö
)
::Ö Ü
{;; 	
if<< 
(<< 
context<< 
.<< 
GroupId<< 
==<<  "
GroupId<<# *
)<<* +
{== 
var>> 
model>> 
=>> 
new>> 6
*TaxonomyContentsAdminListSettingsViewModel>>  J
(>>J K
)>>K L
;>>L M
if@@ 
(@@ 
await@@ 
context@@ !
.@@! "
Updater@@" )
.@@) *
TryUpdateModelAsync@@* =
(@@= >
model@@> C
,@@C D
Prefix@@E K
)@@K L
)@@L M
{AA 
settingsBB 
.BB "
TaxonomyContentItemIdsBB 3
=BB4 5
modelBB6 ;
.BB; <
TaxonomyEntriesBB< K
.BBK L
WhereBBL Q
(BBQ R
eBBR S
=>BBT V
eBBW X
.BBX Y
	IsCheckedBBY b
)BBb c
.BBc d
SelectBBd j
(BBj k
eBBk l
=>BBm o
eBBp q
.BBq r
ContentItemIdBBr 
)	BB Ä
.
BBÄ Å
ToArray
BBÅ à
(
BBà â
)
BBâ ä
;
BBä ã
}CC 
}DD 
returnFF 
awaitFF 
	EditAsyncFF "
(FF" #
settingsFF# +
,FF+ ,
contextFF- 4
)FF4 5
;FF5 6
}GG 	
}HH 
}II º

òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Settings\TaxonomyFieldSettings.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Settings! )
{ 
public 

class !
TaxonomyFieldSettings &
{ 
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
public

 
bool

 
Required

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string !
TaxonomyContentItemId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
bool 
Unique 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 

LeavesOnly 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
Open 
{ 
get 
; 
set  #
;# $
}% &
} 
}   ª
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Settings\TaxonomyFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Settings! )
{ 
public		 

class		 '
TaxonomyFieldSettingsDriver		 ,
:		- .3
'ContentPartFieldDefinitionDisplayDriver		/ V
<		V W
TaxonomyField		W d
>		d e
{

 
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< !
TaxonomyFieldSettings 3
>3 4
(4 5
$str5 Q
,Q R
modelS X
=>Y [
partFieldDefinition\ o
.o p
PopulateSettings	p Ä
(
Ä Å
model
Å Ü
)
Ü á
)
á à
. 
Location 
( 
$str #
)# $
;$ %
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
ContentPartFieldDefinition? Y
partFieldDefinitionZ m
,m n)
UpdatePartFieldEditorContext	o ã
context
å ì
)
ì î
{ 	
var 
model 
= 
new !
TaxonomyFieldSettings 1
(1 2
)2 3
;3 4
await 
context 
. 
Updater !
.! "
TryUpdateModelAsync" 5
(5 6
model6 ;
,; <
Prefix= C
)C D
;D E
context 
. 
Builder 
. 
WithSettings (
(( )
model) .
). /
;/ 0
return 
Edit 
( 
partFieldDefinition +
)+ ,
;, -
} 	
} 
} Ÿ
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Settings\TaxonomyFieldTagsEditorSettings.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Settings! )
{ 
public		 

class		 +
TaxonomyFieldTagsEditorSettings		 0
{

 
[ 	
DefaultValue	 
( 
true 
) 
] 
public 
bool 
Open 
{ 
get 
; 
set  #
;# $
}% &
=' (
true) -
;- .
} 
} ∑
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Settings\TaxonomyFieldTagsEditorSettingsDriver.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !
Settings! )
{ 
public		 

class		 1
%TaxonomyFieldTagsEditorSettingsDriver		 6
:		7 83
'ContentPartFieldDefinitionDisplayDriver		9 `
<		` a
TaxonomyField		a n
>		n o
{

 
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< +
TaxonomyFieldTagsEditorSettings =
>= >
(> ?
$str? e
,e f
modelg l
=>m o 
partFieldDefinition	p É
.
É Ñ
PopulateSettings
Ñ î
(
î ï
model
ï ö
)
ö õ
)
õ ú
. 
Location 
( 
$str "
)" #
;# $
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
ContentPartFieldDefinition? Y
partFieldDefinitionZ m
,m n)
UpdatePartFieldEditorContext	o ã
context
å ì
)
ì î
{ 	
if 
( 
partFieldDefinition #
.# $
Editor$ *
(* +
)+ ,
==- /
$str0 6
)6 7
{ 
var 
model 
= 
new +
TaxonomyFieldTagsEditorSettings  ?
(? @
)@ A
;A B
await 
context 
. 
Updater %
.% &
TryUpdateModelAsync& 9
(9 :
model: ?
,? @
PrefixA G
)G H
;H I
context 
. 
Builder 
.  
WithSettings  ,
(, -
model- 2
)2 3
;3 4
} 
return 
Edit 
( 
partFieldDefinition +
)+ ,
;, -
} 	
} 
} ók
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\Startup.cs
	namespace)) 	
OrchardCore))
 
.)) 

Taxonomies))  
{** 
public++ 

class++ 
Startup++ 
:++ 
StartupBase++ &
{,, 
private-- 
readonly-- 
AdminOptions-- %
_adminOptions--& 3
;--3 4
static// 
Startup// 
(// 
)// 
{00 	
TemplateContext44 
.44 &
GlobalMemberAccessStrategy44 6
.446 7
Register447 ?
<44? @
TaxonomyField44@ M
>44M N
(44N O
)44O P
;44P Q
TemplateContext55 
.55 &
GlobalMemberAccessStrategy55 6
.556 7
Register557 ?
<55? @)
DisplayTaxonomyFieldViewModel55@ ]
>55] ^
(55^ _
)55_ `
;55` a
TemplateContext66 
.66 &
GlobalMemberAccessStrategy66 6
.666 7
Register667 ?
<66? @-
!DisplayTaxonomyFieldTagsViewModel66@ a
>66a b
(66b c
)66c d
;66d e
}77 	
public99 
Startup99 
(99 
IOptions99 
<99  
AdminOptions99  ,
>99, -
adminOptions99. :
)99: ;
{:: 	
_adminOptions;; 
=;; 
adminOptions;; (
.;;( )
Value;;) .
;;;. /
}<< 	
public>> 
override>> 
void>> 
ConfigureServices>> .
(>>. /
IServiceCollection>>/ A
services>>B J
)>>J K
{?? 	
services@@ 
.@@ 
	AddScoped@@ 
<@@ 
IDataMigration@@ -
,@@- .

Migrations@@/ 9
>@@9 :
(@@: ;
)@@; <
;@@< =
servicesAA 
.AA 
	AddScopedAA 
<AA 
IShapeTableProviderAA 2
,AA2 3

TermShapesAA4 >
>AA> ?
(AA? @
)AA@ A
;AAA B
servicesBB 
.BB 
	AddScopedBB 
<BB 
IPermissionProviderBB 2
,BB2 3
PermissionsBB4 ?
>BB? @
(BB@ A
)BBA B
;BBB C
servicesEE 
.EE 
AddContentPartEE #
<EE# $
TaxonomyPartEE$ 0
>EE0 1
(EE1 2
)EE2 3
.FF 
UseDisplayDriverFF !
<FF! "%
TaxonomyPartDisplayDriverFF" ;
>FF; <
(FF< =
)FF= >
.GG 

AddHandlerGG 
<GG 
TaxonomyPartHandlerGG /
>GG/ 0
(GG0 1
)GG1 2
;GG2 3
servicesJJ 
.JJ 
AddContentFieldJJ $
<JJ$ %
TaxonomyFieldJJ% 2
>JJ2 3
(JJ3 4
)JJ4 5
.KK 
UseDisplayDriverKK !
<KK! "&
TaxonomyFieldDisplayDriverKK" <
>KK< =
(KK= >
dKK> ?
=>KK@ B
!KKC D
StringKKD J
.KKJ K
EqualsKKK Q
(KKQ R
dKKR S
,KKS T
$strKKU [
,KK[ \
StringComparisonKK] m
.KKm n
OrdinalIgnoreCaseKKn 
)	KK Ä
)
KKÄ Å
;
KKÅ Ç
servicesMM 
.MM 
	AddScopedMM 
<MM 4
(IContentPartFieldDefinitionDisplayDriverMM G
,MMG H'
TaxonomyFieldSettingsDriverMMI d
>MMd e
(MMe f
)MMf g
;MMg h
servicesNN 
.NN 
	AddScopedNN 
<NN %
IContentFieldIndexHandlerNN 8
,NN8 9%
TaxonomyFieldIndexHandlerNN: S
>NNS T
(NNT U
)NNU V
;NNV W
servicesQQ 
.QQ 
AddContentFieldQQ $
<QQ$ %
TaxonomyFieldQQ% 2
>QQ2 3
(QQ3 4
)QQ4 5
.RR 
UseDisplayDriverRR !
<RR! "*
TaxonomyFieldTagsDisplayDriverRR" @
>RR@ A
(RRA B
dRRB C
=>RRD F
StringRRG M
.RRM N
EqualsRRN T
(RRT U
dRRU V
,RRV W
$strRRX ^
,RR^ _
StringComparisonRR` p
.RRp q
OrdinalIgnoreCase	RRq Ç
)
RRÇ É
)
RRÉ Ñ
;
RRÑ Ö
servicesTT 
.TT 
	AddScopedTT 
<TT 4
(IContentPartFieldDefinitionDisplayDriverTT G
,TTG H1
%TaxonomyFieldTagsEditorSettingsDriverTTI n
>TTn o
(TTo p
)TTp q
;TTq r
servicesVV 
.VV 
	AddScopedVV 
<VV  
IScopedIndexProviderVV 3
,VV3 4!
TaxonomyIndexProviderVV5 J
>VVJ K
(VVK L
)VVL M
;VVM N
servicesYY 
.YY 
AddContentPartYY #
<YY# $
TermPartYY$ ,
>YY, -
(YY- .
)YY. /
;YY/ 0
servicesZZ 
.ZZ 
	AddScopedZZ 
<ZZ 
IContentHandlerZZ .
,ZZ. /"
TermPartContentHandlerZZ0 F
>ZZF G
(ZZG H
)ZZH I
;ZZI J
services[[ 
.[[ 
	AddScoped[[ 
<[[ !
IContentDisplayDriver[[ 4
,[[4 5!
TermPartContentDriver[[6 K
>[[K L
([[L M
)[[M N
;[[N O
services^^ 
.^^ 
AddLiquidFilter^^ $
<^^$ %
TaxonomyTermsFilter^^% 8
>^^8 9
(^^9 :
$str^^: J
)^^J K
;^^K L
services__ 
.__ 
AddLiquidFilter__ $
<__$ % 
InheritedTermsFilter__% 9
>__9 :
(__: ;
$str__; L
)__L M
;__M N
}`` 	
publicbb 
overridebb 
voidbb 
	Configurebb &
(bb& '
IApplicationBuilderbb' :
appbb; >
,bb> ?!
IEndpointRouteBuilderbb@ U
routesbbV \
,bb\ ]
IServiceProviderbb^ n
serviceProviderbbo ~
)bb~ 
{cc 	
vardd "
taxonomyControllerNamedd &
=dd' (
typeofdd) /
(dd/ 0
AdminControllerdd0 ?
)dd? @
.dd@ A
ControllerNameddA O
(ddO P
)ddP Q
;ddQ R
routesff 
.ff "
MapAreaControllerRouteff )
(ff) *
namegg 
:gg 
$strgg )
,gg) *
areaNamehh 
:hh 
$strhh 2
,hh2 3
patternii 
:ii 
_adminOptionsii &
.ii& '
AdminUrlPrefixii' 5
+ii6 7
$strii8 Q
,iiQ R
defaultsjj 
:jj 
newjj 
{jj 

controllerjj  *
=jj+ ,"
taxonomyControllerNamejj- C
,jjC D
actionjjE K
=jjL M
nameofjjN T
(jjT U
AdminControllerjjU d
.jjd e
Createjje k
)jjk l
}jjm n
)kk 
;kk 
routesmm 
.mm "
MapAreaControllerRoutemm )
(mm) *
namenn 
:nn 
$strnn '
,nn' (
areaNameoo 
:oo 
$stroo 2
,oo2 3
patternpp 
:pp 
_adminOptionspp &
.pp& '
AdminUrlPrefixpp' 5
+pp6 7
$strpp8 s
,pps t
defaultsqq 
:qq 
newqq 
{qq 

controllerqq  *
=qq+ ,"
taxonomyControllerNameqq- C
,qqC D
actionqqE K
=qqL M
nameofqqN T
(qqT U
AdminControllerqqU d
.qqd e
Editqqe i
)qqi j
}qqk l
)rr 
;rr 
routestt 
.tt "
MapAreaControllerRoutett )
(tt) *
nameuu 
:uu 
$struu )
,uu) *
areaNamevv 
:vv 
$strvv 2
,vv2 3
patternww 
:ww 
_adminOptionsww &
.ww& '
AdminUrlPrefixww' 5
+ww6 7
$strww8 u
,wwu v
defaultsxx 
:xx 
newxx 
{xx 

controllerxx  *
=xx+ ,"
taxonomyControllerNamexx- C
,xxC D
actionxxE K
=xxL M
nameofxxN T
(xxT U
AdminControllerxxU d
.xxd e
Deletexxe k
)xxk l
}xxm n
)yy 
;yy 
}zz 	
}{{ 
[}} 
Feature}} 
(}} 
$str}} 7
)}}7 8
]}}8 9
public~~ 

class~~ $
ContentsAdminListStartup~~ )
:~~* +
StartupBase~~, 7
{ 
public
ÄÄ 
override
ÄÄ 
void
ÄÄ 
ConfigureServices
ÄÄ .
(
ÄÄ. / 
IServiceCollection
ÄÄ/ A
services
ÄÄB J
)
ÄÄJ K
{
ÅÅ 	
services
ÇÇ 
.
ÇÇ 
	AddScoped
ÇÇ 
<
ÇÇ &
IContentsAdminListFilter
ÇÇ 7
,
ÇÇ7 8-
TaxonomyContentsAdminListFilter
ÇÇ9 X
>
ÇÇX Y
(
ÇÇY Z
)
ÇÇZ [
;
ÇÇ[ \
services
ÉÉ 
.
ÉÉ 
	AddScoped
ÉÉ 
<
ÉÉ 
IDisplayDriver
ÉÉ -
<
ÉÉ- .%
ContentOptionsViewModel
ÉÉ. E
>
ÉÉE F
,
ÉÉF G4
&TaxonomyContentsAdminListDisplayDriver
ÉÉH n
>
ÉÉn o
(
ÉÉo p
)
ÉÉp q
;
ÉÉq r
services
ÖÖ 
.
ÖÖ 
	AddScoped
ÖÖ 
<
ÖÖ !
INavigationProvider
ÖÖ 2
,
ÖÖ2 3
	AdminMenu
ÖÖ4 =
>
ÖÖ= >
(
ÖÖ> ?
)
ÖÖ? @
;
ÖÖ@ A
services
ÜÜ 
.
ÜÜ 
	AddScoped
ÜÜ 
<
ÜÜ 
IDisplayDriver
ÜÜ -
<
ÜÜ- .
ISite
ÜÜ. 3
>
ÜÜ3 4
,
ÜÜ4 5<
.TaxonomyContentsAdminListSettingsDisplayDriver
ÜÜ6 d
>
ÜÜd e
(
ÜÜe f
)
ÜÜf g
;
ÜÜg h
}
áá 	
}
àà 
[
ää 
Feature
ää 
(
ää 
$str
ää 7
)
ää7 8
]
ää8 9
[
ãã 
RequireFeatures
ãã 
(
ãã 
$str
ãã -
)
ãã- .
]
ãã. /
public
åå 

class
åå 0
"ContentsAdminListDeploymentStartup
åå 3
:
åå4 5
StartupBase
åå6 A
{
çç 
public
éé 
override
éé 
void
éé 
ConfigureServices
éé .
(
éé. / 
IServiceCollection
éé/ A
services
ééB J
)
ééJ K
{
èè 	
services
êê 
.
êê 
AddTransient
êê !
<
êê! "
IDeploymentSource
êê" 3
,
êê3 42
$SiteSettingsPropertyDeploymentSource
êê5 Y
<
êêY Z/
!TaxonomyContentsAdminListSettings
êêZ {
>
êê{ |
>
êê| }
(
êê} ~
)
êê~ 
;êê Ä
services
ëë 
.
ëë 
	AddScoped
ëë 
<
ëë 
IDisplayDriver
ëë -
<
ëë- .
DeploymentStep
ëë. <
>
ëë< =
>
ëë= >
(
ëë> ?
sp
ëë? A
=>
ëëB D
{
íí 
var
ìì 
S
ìì 
=
ìì 
sp
ìì 
.
ìì 

GetService
ìì %
<
ìì% &
IStringLocalizer
ìì& 6
<
ìì6 70
"ContentsAdminListDeploymentStartup
ìì7 Y
>
ììY Z
>
ììZ [
(
ìì[ \
)
ìì\ ]
;
ìì] ^
return
îî 
new
îî 6
(SiteSettingsPropertyDeploymentStepDriver
îî C
<
îîC D/
!TaxonomyContentsAdminListSettings
îîD e
>
îîe f
(
îîf g
S
îîg h
[
îîh i
$strîîi Ñ
]îîÑ Ö
,îîÖ Ü
Sîîá à
[îîà â
$strîîâ ±
]îî± ≤
)îî≤ ≥
;îî≥ ¥
}
ïï 
)
ïï 
;
ïï 
services
ññ 
.
ññ 
AddSingleton
ññ !
<
ññ! "$
IDeploymentStepFactory
ññ" 8
>
ññ8 9
(
ññ9 :
new
ññ: =7
)SiteSettingsPropertyDeploymentStepFactory
ññ> g
<
ññg h0
!TaxonomyContentsAdminListSettingsññh â
>ññâ ä
(ññä ã
)ññã å
)ññå ç
;ññç é
}
óó 	
}
òò 
[
öö 
RequireFeatures
öö 
(
öö 
$str
öö /
)
öö/ 0
]
öö0 1
public
õõ 

class
õõ 
GraphQLStartup
õõ 
:
õõ  !
StartupBase
õõ" -
{
úú 
public
ùù 
override
ùù 
void
ùù 
ConfigureServices
ùù .
(
ùù. / 
IServiceCollection
ùù/ A
services
ùùB J
)
ùùJ K
{
ûû 	
services
üü 
.
üü  
AddObjectGraphType
üü '
<
üü' (
TaxonomyPart
üü( 4
,
üü4 5)
TaxonomyPartQueryObjectType
üü6 Q
>
üüQ R
(
üüR S
)
üüS T
;
üüT U
services
†† 
.
††  
AddObjectGraphType
†† '
<
††' (
TaxonomyField
††( 5
,
††5 6*
TaxonomyFieldQueryObjectType
††7 S
>
††S T
(
††T U
)
††U V
;
††V W
}
°° 	
}
¢¢ 
}££ ‡›
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\TermShapes.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
{ 
public 

class 

TermShapes 
: 
IShapeTableProvider 1
{ 
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{ 	
builder 
. 
Describe 
( 
$str '
)' (
. 
OnDisplaying 
( 
context %
=>& (
{ 
dynamic 
shape !
=" #
context$ +
.+ ,
Shape, 1
;1 2
var 
contentType #
=$ %
shape& +
.+ ,
ContentItem, 7
.7 8
ContentType8 C
;C D
var 
displayTypes $
=% &
new' *
[* +
]+ ,
{- .
$str/ 1
,1 2
$str3 6
+7 8
context9 @
.@ A
ShapeA F
.F G
MetadataG O
.O P
DisplayTypeP [
}\ ]
;] ^
context 
. 
Shape !
.! "
Metadata" *
.* +

Alternates+ 5
.5 6
Add6 9
(9 :
$": <
	TermPart_< E
{E F
contextF M
.M N
ShapeN S
.S T
MetadataT \
.\ ]
DisplayType] h
}h i
"i j
)j k
;k l
foreach 
( 
var  
displayType! ,
in- /
displayTypes0 <
)< =
{   
context"" 
.""  
Shape""  %
.""% &
Metadata""& .
."". /

Alternates""/ 9
.""9 :
Add"": =
(""= >
$"""> @
{""@ A
contentType""A L
}""L M
{""M N
displayType""N Y
}""Y Z

__TermPart""Z d
"""d e
)""e f
;""f g
}## 
}$$ 
)$$ 
;$$ 
builder&& 
.&& 
Describe&& 
(&& 
$str&& #
)&&# $
.'' 
OnProcessing'' 
('' 
async'' #
context''$ +
=>'', .
{(( 
dynamic)) 
	termShape)) %
=))& '
context))( /
.))/ 0
Shape))0 5
;))5 6
string** 

identifier** %
=**& '
	termShape**( 1
.**1 2!
TaxonomyContentItemId**2 G
??**H J
	termShape**K T
.**T U
Alias**U Z
;**Z [
if,, 
(,, 
String,, 
.,, 
IsNullOrEmpty,, ,
(,,, -

identifier,,- 7
),,7 8
),,8 9
{-- 
return.. 
;.. 
}// 
	termShape11 
.11 
Classes11 %
.11% &
Add11& )
(11) *
$str11* 0
)110 1
;111 2
var77 
shapeFactory77 $
=77% &
context77' .
.77. /
ServiceProvider77/ >
.77> ?
GetRequiredService77? Q
<77Q R
IShapeFactory77R _
>77_ `
(77` a
)77a b
;77b c
var88 
contentManager88 &
=88' (
context88) 0
.880 1
ServiceProvider881 @
.88@ A
GetRequiredService88A S
<88S T
IContentManager88T c
>88c d
(88d e
)88e f
;88f g
var99 
handleManager99 %
=99& '
context99( /
.99/ 0
ServiceProvider990 ?
.99? @
GetRequiredService99@ R
<99R S!
IContentHandleManager99S h
>99h i
(99i j
)99j k
;99k l
var:: 
orchardHelper:: %
=::& '
context::( /
.::/ 0
ServiceProvider::0 ?
.::? @
GetRequiredService::@ R
<::R S
IOrchardHelper::S a
>::a b
(::b c
)::c d
;::d e
var;; $
contentDefinitionManager;; 0
=;;1 2
context;;3 :
.;;: ;
ServiceProvider;;; J
.;;J K
GetRequiredService;;K ]
<;;] ^%
IContentDefinitionManager;;^ w
>;;w x
(;;x y
);;y z
;;;z {
string== !
taxonomyContentItemId== 0
===1 2
	termShape==3 <
.==< =
Alias=== B
!===C E
null==F J
?>> 
await>> 
handleManager>>  -
.>>- .!
GetContentItemIdAsync>>. C
(>>C D
	termShape>>D M
.>>M N
Alias>>N S
)>>S T
:?? 
	termShape?? #
.??# $!
TaxonomyContentItemId??$ 9
;??9 :
ifAA 
(AA !
taxonomyContentItemIdAA -
==AA. 0
nullAA1 5
)AA5 6
{BB 
returnCC 
;CC 
}DD 
varFF 
taxonomyContentItemFF +
=FF, -
awaitFF. 3
contentManagerFF4 B
.FFB C
GetAsyncFFC K
(FFK L!
taxonomyContentItemIdFFL a
)FFa b
;FFb c
ifHH 
(HH 
taxonomyContentItemHH +
==HH, .
nullHH/ 3
)HH3 4
{II 
returnJJ 
;JJ 
}KK 
	termShapeMM 
.MM 
TaxonomyContentItemMM 1
=MM2 3
taxonomyContentItemMM4 G
;MMG H
	termShapeNN 
.NN 
TaxonomyNameNN *
=NN+ ,
taxonomyContentItemNN- @
.NN@ A
DisplayTextNNA L
;NNL M
varPP 
taxonomyPartPP $
=PP% &
taxonomyContentItemPP' :
.PP: ;
AsPP; =
<PP= >
TaxonomyPartPP> J
>PPJ K
(PPK L
)PPL M
;PPM N
ifQQ 
(QQ 
taxonomyPartQQ $
==QQ% '
nullQQ( ,
)QQ, -
{RR 
returnSS 
;SS 
}TT 
varWW 
levelWW 
=WW 
$numWW  !
;WW! "
ListXX 
<XX 
ContentItemXX $
>XX$ %
	termItemsXX& /
=XX0 1
nullXX2 6
;XX6 7
stringYY 
termContentItemIdYY ,
=YY- .
	termShapeYY/ 8
.YY8 9
TermContentItemIdYY9 J
;YYJ K
ifZZ 
(ZZ 
!ZZ 
StringZZ 
.ZZ  
IsNullOrEmptyZZ  -
(ZZ- .
termContentItemIdZZ. ?
)ZZ? @
)ZZ@ A
{[[ 
level\\ 
=\\ 
FindTerm\\  (
(\\( )
taxonomyContentItem\\) <
.\\< =
Content\\= D
.\\D E
TaxonomyPart\\E Q
.\\Q R
Terms\\R W
as\\X Z
JArray\\[ a
,\\a b
termContentItemId\\c t
,\\t u
level\\v {
,\\{ |
out	\\} Ä
var
\\Å Ñ
termContentItem
\\Ö î
)
\\î ï
;
\\ï ñ
if^^ 
(^^ 
termContentItem^^ +
==^^, .
null^^/ 3
)^^3 4
{__ 
return`` "
;``" #
}aa 
	termItemscc !
=cc" #
newcc$ '
Listcc( ,
<cc, -
ContentItemcc- 8
>cc8 9
{dd 
termContentItemee +
}ff 
;ff 
}gg 
elsehh 
{ii 
	termItemsjj !
=jj" #
taxonomyPartjj$ 0
.jj0 1
Termsjj1 6
;jj6 7
}kk 
ifmm 
(mm 
	termItemsmm !
==mm" $
nullmm% )
)mm) *
{nn 
returnoo 
;oo 
}pp 
varrr 
differentiatorrr &
=rr' (

FormatNamerr) 3
(rr3 4
(rr4 5
stringrr5 ;
)rr; <
	termShaperr< E
.rrE F
TaxonomyNamerrF R
)rrR S
;rrS T
iftt 
(tt 
!tt 
Stringtt 
.tt  
IsNullOrEmptytt  -
(tt- .
differentiatortt. <
)tt< =
)tt= >
{uu 
	termShapeww !
.ww! "
Metadataww" *
.ww* +

Alternatesww+ 5
.ww5 6
Addww6 9
(ww9 :
$strww: B
+wwC D
differentiatorwwE S
)wwS T
;wwT U
	termShapexx !
.xx! "
Metadataxx" *
.xx* +
Differentiatorxx+ 9
=xx: ;
differentiatorxx< J
;xxJ K
	termShapeyy !
.yy! "
Classesyy" )
.yy) *
Addyy* -
(yy- .
(yy. /
$stryy/ 6
+yy7 8
differentiatoryy9 G
)yyG H
.yyH I
HtmlClassifyyyI U
(yyU V
)yyV W
)yyW X
;yyX Y
}zz 
	termShape|| 
.|| 
Classes|| %
.||% &
Add||& )
(||) *
(||* +
$str||+ 2
+||3 4
taxonomyPart||5 A
.||A B
TermContentType||B Q
)||Q R
.||R S
HtmlClassify||S _
(||_ `
)||` a
)||a b
;||b c
var~~ 
encodedContentType~~ *
=~~+ ,"
EncodeAlternateElement~~- C
(~~C D
taxonomyPart~~D P
.~~P Q
TermContentType~~Q `
)~~` a
;~~a b
	termShape
ÄÄ 
.
ÄÄ 
Metadata
ÄÄ &
.
ÄÄ& '

Alternates
ÄÄ' 1
.
ÄÄ1 2
Add
ÄÄ2 5
(
ÄÄ5 6
$str
ÄÄ6 >
+
ÄÄ? @ 
encodedContentType
ÄÄA S
)
ÄÄS T
;
ÄÄT U
foreach
ÖÖ 
(
ÖÖ 
var
ÖÖ  
termContentItem
ÖÖ! 0
in
ÖÖ1 3
	termItems
ÖÖ4 =
)
ÖÖ= >
{
ÜÜ 
ContentItem
áá #
[
áá# $
]
áá$ %

childTerms
áá& 0
=
áá1 2
null
áá3 7
;
áá7 8
if
àà 
(
àà 
termContentItem
àà +
.
àà+ ,
Content
àà, 3
.
àà3 4
Terms
àà4 9
is
àà: <
JArray
àà= C

termsArray
ààD N
)
ààN O
{
ââ 

childTerms
ää &
=
ää' (

termsArray
ää) 3
.
ää3 4
ToObject
ää4 <
<
ää< =
ContentItem
ää= H
[
ääH I
]
ääI J
>
ääJ K
(
ääK L
)
ääL M
;
ääM N
}
ãã 
var
çç 
shape
çç !
=
çç" #
await
çç$ )
shapeFactory
çç* 6
.
çç6 7
CreateAsync
çç7 B
(
ççB C
$str
ççC M
,
ççM N
	Arguments
ççO X
.
ççX Y
From
ççY ]
(
çç] ^
new
çç^ a
{
éé 
Level
èè !
=
èè" #
level
èè$ )
,
èè) *
Term
êê  
=
êê! "
	termShape
êê# ,
,
êê, -
TermContentItem
ëë +
=
ëë, -
termContentItem
ëë. =
,
ëë= >
Terms
íí !
=
íí" #

childTerms
íí$ .
??
íí/ 1
Array
íí2 7
.
íí7 8
Empty
íí8 =
<
íí= >
ContentItem
íí> I
>
ííI J
(
ííJ K
)
ííK L
,
ííL M!
TaxonomyContentItem
ìì /
=
ìì0 1!
taxonomyContentItem
ìì2 E
}
îî 
)
îî 
)
îî 
;
îî 
shape
ññ 
.
ññ 
Metadata
ññ &
.
ññ& '
Differentiator
ññ' 5
=
ññ6 7
differentiator
ññ8 F
;
ññF G
	termShape
ôô !
.
ôô! "
Add
ôô" %
(
ôô% &
shape
ôô& +
)
ôô+ ,
;
ôô, -
}
öö 
}
õõ 
)
õõ 
;
õõ 
builder
ùù 
.
ùù 
Describe
ùù 
(
ùù 
$str
ùù '
)
ùù' (
.
ûû 
OnDisplaying
ûû 
(
ûû 
async
ûû #
context
ûû$ +
=>
ûû, .
{
üü 
dynamic
†† 
termItem
†† $
=
††% &
context
††' .
.
††. /
Shape
††/ 4
;
††4 5
var
°° 
	termShape
°° !
=
°°" #
termItem
°°$ ,
.
°°, -
Term
°°- 1
;
°°1 2
int
¢¢ 
level
¢¢ 
=
¢¢ 
termItem
¢¢  (
.
¢¢( )
Level
¢¢) .
;
¢¢. /
ContentItem
££ !
taxonomyContentItem
££  3
=
££4 5
termItem
££6 >
.
££> ?!
TaxonomyContentItem
££? R
;
££R S
var
§§ 
taxonomyPart
§§ $
=
§§% &!
taxonomyContentItem
§§' :
.
§§: ;
As
§§; =
<
§§= >
TaxonomyPart
§§> J
>
§§J K
(
§§K L
)
§§L M
;
§§M N
string
•• 
differentiator
•• )
=
••* +
termItem
••, 4
.
••4 5
Metadata
••5 =
.
••= >
Differentiator
••> L
;
••L M
var
ßß 
shapeFactory
ßß $
=
ßß% &
context
ßß' .
.
ßß. /
ServiceProvider
ßß/ >
.
ßß> ? 
GetRequiredService
ßß? Q
<
ßßQ R
IShapeFactory
ßßR _
>
ßß_ `
(
ßß` a
)
ßßa b
;
ßßb c
if
©© 
(
©© 
termItem
©©  
.
©©  !
Terms
©©! &
!=
©©' )
null
©©* .
)
©©. /
{
™™ 
foreach
´´ 
(
´´  !
var
´´! $
termContentItem
´´% 4
in
´´5 7
termItem
´´8 @
.
´´@ A
Terms
´´A F
)
´´F G
{
¨¨ 
ContentItem
≠≠ '
[
≠≠' (
]
≠≠( )

childTerms
≠≠* 4
=
≠≠5 6
null
≠≠7 ;
;
≠≠; <
if
ÆÆ 
(
ÆÆ  
termContentItem
ÆÆ  /
.
ÆÆ/ 0
Content
ÆÆ0 7
.
ÆÆ7 8
Terms
ÆÆ8 =
is
ÆÆ> @
JArray
ÆÆA G

termsArray
ÆÆH R
)
ÆÆR S
{
ØØ 

childTerms
∞∞  *
=
∞∞+ ,

termsArray
∞∞- 7
.
∞∞7 8
ToObject
∞∞8 @
<
∞∞@ A
ContentItem
∞∞A L
[
∞∞L M
]
∞∞M N
>
∞∞N O
(
∞∞O P
)
∞∞P Q
;
∞∞Q R
}
±± 
var
≤≤ 
shape
≤≤  %
=
≤≤& '
await
≤≤( -
shapeFactory
≤≤. :
.
≤≤: ;
CreateAsync
≤≤; F
(
≤≤F G
$str
≤≤G Q
,
≤≤Q R
	Arguments
≤≤S \
.
≤≤\ ]
From
≤≤] a
(
≤≤a b
new
≤≤b e
{
≥≥ 
Level
¥¥  %
=
¥¥& '
level
¥¥( -
+
¥¥. /
$num
¥¥0 1
,
¥¥1 2!
TaxonomyContentItem
µµ  3
=
µµ4 5!
taxonomyContentItem
µµ6 I
,
µµI J
TermContentItem
∂∂  /
=
∂∂0 1
termContentItem
∂∂2 A
,
∂∂A B
Term
∑∑  $
=
∑∑% &
	termShape
∑∑' 0
,
∑∑0 1
Terms
∏∏  %
=
∏∏& '

childTerms
∏∏( 2
??
∏∏3 5
Array
∏∏6 ;
.
∏∏; <
Empty
∏∏< A
<
∏∏A B
ContentItem
∏∏B M
>
∏∏M N
(
∏∏N O
)
∏∏O P
}
ππ 
)
ππ 
)
ππ 
;
ππ  
shape
ªª !
.
ªª! "
Metadata
ªª" *
.
ªª* +
Differentiator
ªª+ 9
=
ªª: ;
differentiator
ªª< J
;
ªªJ K
termItem
ææ $
.
ææ$ %
Add
ææ% (
(
ææ( )
shape
ææ) .
)
ææ. /
;
ææ/ 0
}
øø 
}
¿¿ 
var
¬¬  
encodedContentType
¬¬ *
=
¬¬+ ,$
EncodeAlternateElement
¬¬- C
(
¬¬C D
taxonomyPart
¬¬D P
.
¬¬P Q
TermContentType
¬¬Q `
)
¬¬` a
;
¬¬a b
termItem
≈≈ 
.
≈≈ 
Metadata
≈≈ %
.
≈≈% &

Alternates
≈≈& 0
.
≈≈0 1
Add
≈≈1 4
(
≈≈4 5
$str
≈≈5 H
+
≈≈I J
level
≈≈K P
)
≈≈P Q
;
≈≈Q R
termItem
…… 
.
…… 
Metadata
…… %
.
……% &

Alternates
……& 0
.
……0 1
Add
……1 4
(
……4 5
$str
……5 A
+
……B C 
encodedContentType
……D V
)
……V W
;
……W X
termItem
   
.
   
Metadata
   %
.
  % &

Alternates
  & 0
.
  0 1
Add
  1 4
(
  4 5
$str
  5 A
+
  B C 
encodedContentType
  D V
+
  W X
$str
  Y d
+
  e f
level
  g l
)
  l m
;
  m n
if
ÃÃ 
(
ÃÃ 
!
ÃÃ 
String
ÃÃ 
.
ÃÃ  
IsNullOrEmpty
ÃÃ  -
(
ÃÃ- .
differentiator
ÃÃ. <
)
ÃÃ< =
)
ÃÃ= >
{
ÕÕ 
termItem
––  
.
––  !
Metadata
––! )
.
––) *

Alternates
––* 4
.
––4 5
Add
––5 8
(
––8 9
$str
––9 E
+
––F G
differentiator
––H V
)
––V W
;
––W X
termItem
——  
.
——  !
Metadata
——! )
.
——) *

Alternates
——* 4
.
——4 5
Add
——5 8
(
——8 9
$str
——9 E
+
——F G
differentiator
——H V
+
——W X
$str
——Y d
+
——e f
level
——g l
)
——l m
;
——m n
termItem
’’  
.
’’  !
Metadata
’’! )
.
’’) *

Alternates
’’* 4
.
’’4 5
Add
’’5 8
(
’’8 9
$str
’’9 E
+
’’F G
differentiator
’’H V
+
’’W X
$str
’’Y ]
+
’’^ _ 
encodedContentType
’’` r
)
’’r s
;
’’s t
termItem
÷÷  
.
÷÷  !
Metadata
÷÷! )
.
÷÷) *

Alternates
÷÷* 4
.
÷÷4 5
Add
÷÷5 8
(
÷÷8 9
$str
÷÷9 E
+
÷÷F G
differentiator
÷÷H V
+
÷÷W X
$str
÷÷Y ]
+
÷÷^ _ 
encodedContentType
÷÷` r
+
÷÷s t
$str÷÷u Ä
+÷÷Å Ç
level÷÷É à
)÷÷à â
;÷÷â ä
}
◊◊ 
}
ÿÿ 
)
ÿÿ 
;
ÿÿ 
builder
⁄⁄ 
.
⁄⁄ 
Describe
⁄⁄ 
(
⁄⁄ 
$str
⁄⁄ .
)
⁄⁄. /
.
€€ 
OnDisplaying
€€ 
(
€€ 

displaying
€€ (
=>
€€) +
{
‹‹ 
dynamic
›› 
termItem
›› $
=
››% &

displaying
››' 1
.
››1 2
Shape
››2 7
;
››7 8
int
ﬁﬁ 
level
ﬁﬁ 
=
ﬁﬁ 
termItem
ﬁﬁ  (
.
ﬁﬁ( )
Level
ﬁﬁ) .
;
ﬁﬁ. /
string
ﬂﬂ 
differentiator
ﬂﬂ )
=
ﬂﬂ* +
termItem
ﬂﬂ, 4
.
ﬂﬂ4 5
Metadata
ﬂﬂ5 =
.
ﬂﬂ= >
Differentiator
ﬂﬂ> L
;
ﬂﬂL M
ContentItem
·· 
termContentItem
··  /
=
··0 1
termItem
··2 :
.
··: ;
TermContentItem
··; J
;
··J K
var
„„  
encodedContentType
„„ *
=
„„+ ,$
EncodeAlternateElement
„„- C
(
„„C D
termContentItem
„„D S
.
„„S T
ContentItem
„„T _
.
„„_ `
ContentType
„„` k
)
„„k l
;
„„l m
termItem
ÂÂ 
.
ÂÂ 
Metadata
ÂÂ %
.
ÂÂ% &

Alternates
ÂÂ& 0
.
ÂÂ0 1
Add
ÂÂ1 4
(
ÂÂ4 5
$str
ÂÂ5 O
+
ÂÂP Q
level
ÂÂR W
)
ÂÂW X
;
ÂÂX Y
termItem
ÈÈ 
.
ÈÈ 
Metadata
ÈÈ %
.
ÈÈ% &

Alternates
ÈÈ& 0
.
ÈÈ0 1
Add
ÈÈ1 4
(
ÈÈ4 5
$str
ÈÈ5 H
+
ÈÈI J 
encodedContentType
ÈÈK ]
)
ÈÈ] ^
;
ÈÈ^ _
termItem
ÍÍ 
.
ÍÍ 
Metadata
ÍÍ %
.
ÍÍ% &

Alternates
ÍÍ& 0
.
ÍÍ0 1
Add
ÍÍ1 4
(
ÍÍ4 5
$str
ÍÍ5 H
+
ÍÍI J 
encodedContentType
ÍÍK ]
+
ÍÍ^ _
$str
ÍÍ` k
+
ÍÍl m
level
ÍÍn s
)
ÍÍs t
;
ÍÍt u
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
String
ÏÏ 
.
ÏÏ  
IsNullOrEmpty
ÏÏ  -
(
ÏÏ- .
differentiator
ÏÏ. <
)
ÏÏ< =
)
ÏÏ= >
{
ÌÌ 
termItem
ÔÔ  
.
ÔÔ  !
Metadata
ÔÔ! )
.
ÔÔ) *

Alternates
ÔÔ* 4
.
ÔÔ4 5
Add
ÔÔ5 8
(
ÔÔ8 9
$str
ÔÔ9 L
+
ÔÔM N
differentiator
ÔÔO ]
)
ÔÔ] ^
;
ÔÔ^ _
termItem
ÒÒ  
.
ÒÒ  !
Metadata
ÒÒ! )
.
ÒÒ) *

Alternates
ÒÒ* 4
.
ÒÒ4 5
Add
ÒÒ5 8
(
ÒÒ8 9
$str
ÒÒ9 L
+
ÒÒM N
differentiator
ÒÒO ]
+
ÒÒ^ _
$str
ÒÒ` k
+
ÒÒl m
level
ÒÒn s
)
ÒÒs t
;
ÒÒt u
termItem
ıı  
.
ıı  !
Metadata
ıı! )
.
ıı) *

Alternates
ıı* 4
.
ıı4 5
Add
ıı5 8
(
ıı8 9
$str
ıı9 L
+
ııM N
differentiator
ııO ]
+
ıı^ _
$str
ıı` d
+
ııe f 
encodedContentType
ııg y
)
ııy z
;
ıız {
termItem
ˆˆ  
.
ˆˆ  !
Metadata
ˆˆ! )
.
ˆˆ) *

Alternates
ˆˆ* 4
.
ˆˆ4 5
Add
ˆˆ5 8
(
ˆˆ8 9
$str
ˆˆ9 L
+
ˆˆM N
differentiator
ˆˆO ]
+
ˆˆ^ _
$str
ˆˆ` d
+
ˆˆe f 
encodedContentType
ˆˆg y
+
ˆˆz {
$strˆˆ| á
+ˆˆà â
levelˆˆä è
)ˆˆè ê
;ˆˆê ë
}
˜˜ 
}
¯¯ 
)
¯¯ 
;
¯¯ 
}
˘˘ 	
private
˚˚ 
int
˚˚ 
FindTerm
˚˚ 
(
˚˚ 
JArray
˚˚ #

termsArray
˚˚$ .
,
˚˚. /
string
˚˚0 6
termContentItemId
˚˚7 H
,
˚˚H I
int
˚˚J M
level
˚˚N S
,
˚˚S T
out
˚˚U X
ContentItem
˚˚Y d
contentItem
˚˚e p
)
˚˚p q
{
¸¸ 	
foreach
˝˝ 
(
˝˝ 
JObject
˝˝ 
term
˝˝ !
in
˝˝" $

termsArray
˝˝% /
)
˝˝/ 0
{
˛˛ 
var
ˇˇ 
contentItemId
ˇˇ !
=
ˇˇ" #
term
ˇˇ$ (
.
ˇˇ( )
GetValue
ˇˇ) 1
(
ˇˇ1 2
$str
ˇˇ2 A
)
ˇˇA B
.
ˇˇB C
ToString
ˇˇC K
(
ˇˇK L
)
ˇˇL M
;
ˇˇM N
if
ÅÅ 
(
ÅÅ 
contentItemId
ÅÅ !
==
ÅÅ" $
termContentItemId
ÅÅ% 6
)
ÅÅ6 7
{
ÇÇ 
contentItem
ÉÉ 
=
ÉÉ  !
term
ÉÉ" &
.
ÉÉ& '
ToObject
ÉÉ' /
<
ÉÉ/ 0
ContentItem
ÉÉ0 ;
>
ÉÉ; <
(
ÉÉ< =
)
ÉÉ= >
;
ÉÉ> ?
return
ÑÑ 
level
ÑÑ  
;
ÑÑ  !
}
ÖÖ 
if
áá 
(
áá 
term
áá 
.
áá 
GetValue
áá !
(
áá! "
$str
áá" )
)
áá) *
is
áá+ -
JArray
áá. 4
children
áá5 =
)
áá= >
{
àà 
level
ââ 
+=
ââ 
$num
ââ 
;
ââ 
level
ää 
=
ää 
FindTerm
ää $
(
ää$ %
children
ää% -
,
ää- .
termContentItemId
ää/ @
,
ää@ A
level
ääB G
,
ääG H
out
ääI L
var
ääM P
foundContentItem
ääQ a
)
ääa b
;
ääb c
if
åå 
(
åå 
foundContentItem
åå (
!=
åå) +
null
åå, 0
)
åå0 1
{
çç 
contentItem
éé #
=
éé$ %
foundContentItem
éé& 6
;
éé6 7
return
èè 
level
èè $
;
èè$ %
}
êê 
}
ëë 
}
íí 
contentItem
ìì 
=
ìì 
null
ìì 
;
ìì 
return
ïï 
level
ïï 
;
ïï 
}
ññ 	
private
ùù 
string
ùù $
EncodeAlternateElement
ùù -
(
ùù- .
string
ùù. 4
alternateElement
ùù5 E
)
ùùE F
{
ûû 	
return
üü 
alternateElement
üü #
.
üü# $
Replace
üü$ +
(
üü+ ,
$str
üü, /
,
üü/ 0
$str
üü1 5
)
üü5 6
.
üü6 7
Replace
üü7 >
(
üü> ?
$char
üü? B
,
üüB C
$char
üüD G
)
üüG H
;
üüH I
}
†† 	
private
•• 
static
•• 
string
•• 

FormatName
•• (
(
••( )
string
••) /
name
••0 4
)
••4 5
{
¶¶ 	
if
ßß 
(
ßß 
String
ßß 
.
ßß 
IsNullOrEmpty
ßß $
(
ßß$ %
name
ßß% )
)
ßß) *
)
ßß* +
{
®® 
return
©© 
null
©© 
;
©© 
}
™™ 
name
¨¨ 
=
¨¨ 
name
¨¨ 
.
¨¨ 
Trim
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
var
≠≠ 
nextIsUpper
≠≠ 
=
≠≠ 
true
≠≠ "
;
≠≠" #
var
ÆÆ 
result
ÆÆ 
=
ÆÆ 
new
ÆÆ 
StringBuilder
ÆÆ *
(
ÆÆ* +
name
ÆÆ+ /
.
ÆÆ/ 0
Length
ÆÆ0 6
)
ÆÆ6 7
;
ÆÆ7 8
for
ØØ 
(
ØØ 
var
ØØ 
i
ØØ 
=
ØØ 
$num
ØØ 
;
ØØ 
i
ØØ 
<
ØØ 
name
ØØ  $
.
ØØ$ %
Length
ØØ% +
;
ØØ+ ,
i
ØØ- .
++
ØØ. 0
)
ØØ0 1
{
∞∞ 
var
±± 
c
±± 
=
±± 
name
±± 
[
±± 
i
±± 
]
±± 
;
±±  
if
≥≥ 
(
≥≥ 
c
≥≥ 
==
≥≥ 
$char
≥≥ 
||
≥≥ 
char
≥≥  $
.
≥≥$ %
IsWhiteSpace
≥≥% 1
(
≥≥1 2
c
≥≥2 3
)
≥≥3 4
)
≥≥4 5
{
¥¥ 
nextIsUpper
µµ 
=
µµ  !
true
µµ" &
;
µµ& '
continue
∂∂ 
;
∂∂ 
}
∑∑ 
if
ππ 
(
ππ 
nextIsUpper
ππ 
)
ππ  
{
∫∫ 
result
ªª 
.
ªª 
Append
ªª !
(
ªª! "
c
ªª" #
.
ªª# $
ToString
ªª$ ,
(
ªª, -
)
ªª- .
.
ªª. /
ToUpper
ªª/ 6
(
ªª6 7
)
ªª7 8
)
ªª8 9
;
ªª9 :
}
ºº 
else
ΩΩ 
{
ææ 
result
øø 
.
øø 
Append
øø !
(
øø! "
c
øø" #
)
øø# $
;
øø$ %
}
¿¿ 
nextIsUpper
¬¬ 
=
¬¬ 
false
¬¬ #
;
¬¬# $
}
√√ 
return
≈≈ 
result
≈≈ 
.
≈≈ 
ToString
≈≈ "
(
≈≈" #
)
≈≈# $
;
≈≈$ %
}
∆∆ 	
}
«« 
}»» ◊
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\CreatedTagViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class 
CreatedTagViewModel $
{ 
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ¡
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\DisplayTaxonomyFieldTagsViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class -
!DisplayTaxonomyFieldTagsViewModel 2
:3 4)
DisplayTaxonomyFieldViewModel5 R
{ 
public 
string 
[ 
] 
TagNames  
=>! #
Field$ )
.) *
GetTagNames* 5
(5 6
)6 7
;7 8
} 
}		 ô

¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\DisplayTaxonomyFieldViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class )
DisplayTaxonomyFieldViewModel .
{ 
public		 
string		 !
TaxonomyContentItemId		 +
=>		, .
Field		/ 4
.		4 5!
TaxonomyContentItemId		5 J
;		J K
public

 
string

 
[

 
]

 
TermContentItemIds

 *
=>

+ -
Field

. 3
.

3 4
TermContentItemIds

4 F
;

F G
public 
TaxonomyField 
Field "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} Ê
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\EditTagTaxonomyFieldViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class )
EditTagTaxonomyFieldViewModel .
{		 
public

 
string

 
TermContentItemIds

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
[ 	
	BindNever	 
] 
public 
string 
TagTermEntries $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
	BindNever	 
] 
public 
ContentItem 
Taxonomy #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
	BindNever	 
] 
public 
TaxonomyField 
Field "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
	BindNever	 
] 
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
	BindNever	 
] 
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
public 

class 
TagTermEntry 
{ 
public 
bool 
Selected 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
string   
DisplayText   !
{  " #
get  $ '
;  ' (
set  ) ,
;  , -
}  . /
public!! 
bool!! 
IsLeaf!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
}"" 
}## „
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\EditTaxonomyFieldViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public		 

class		 &
EditTaxonomyFieldViewModel		 +
{

 
public 
string 
UniqueValue !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
List 
< 
	TermEntry 
> 
TermEntries *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
	TermEntryD M
>M N
(N O
)O P
;P Q
[ 	
	BindNever	 
] 
public 
ContentItem 
Taxonomy #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
	BindNever	 
] 
public 
TaxonomyField 
Field "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
	BindNever	 
] 
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
	BindNever	 
] 
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
public 

class 
	TermEntry 
{ 
[ 	
	BindNever	 
] 
public 
ContentItem 
Term 
{  !
get" %
;% &
set' *
;* +
}, -
public   
bool   
Selected   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
public!! 
string!! 
ContentItemId!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
[## 	
	BindNever##	 
]## 
public$$ 
int$$ 
Level$$ 
{$$ 
get$$ 
;$$ 
set$$  #
;$$# $
}$$% &
public&& 
bool&& 
IsLeaf&& 
{&& 
get&&  
;&&  !
set&&" %
;&&% &
}&&' (
}'' 
}(( ¡
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\TaxonomyContentsAdminFilterViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class 0
$TaxonomyContentsAdminFilterViewModel 5
{ 
public		 
string		 !
SelectedContentItemId		 +
{		, -
get		. 1
;		1 2
set		3 6
;		6 7
}		8 9
[ 	
	BindNever	 
] 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #

Taxonomies$ .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} »	
ØD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\TaxonomyContentsAdminListSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class 6
*TaxonomyContentsAdminListSettingsViewModel ;
{ 
public 
TaxonomyEntry 
[ 
] 
TaxonomyEntries .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
public 

class 
TaxonomyEntry 
{		 
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
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} æ
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\TaxonomyPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class %
TaxonomyPartEditViewModel *
{ 
public 
string 
	Hierarchy 
{  !
get" %
;% &
set' *
;* +
}, -
public

 
string

 
TermContentType

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
[ 	
	BindNever	 
] 
public 
TaxonomyPart 
TaxonomyPart (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ¸
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\TaxonomyPartViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class !
TaxonomyPartViewModel &
{ 
public		 
string		 !
TaxonomyContentItemId		 +
=>		, .
ContentItem		/ :
.		: ;
ContentItemId		; H
;		H I
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
	BindNever	 
] 
public 
TaxonomyPart 
TaxonomyPart (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ¥

ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Taxonomies\ViewModels\TermPartViewModel.cs
	namespace 	
OrchardCore
 
. 

Taxonomies  
.  !

ViewModels! +
{ 
public 

class 
TermPartViewModel "
{ 
public		 
string		 
TermContentItemId		 '
=>		( *
ContentItem		+ 6
.		6 7
ContentItemId		7 D
;		D E
public

 
string

 !
TaxonomyContentItemId

 +
{

, -
get

. 1
;

1 2
set

3 6
;

6 7
}

8 9
public 
IEnumerable 
< 
ContentItem &
>& '
ContentItems( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} 