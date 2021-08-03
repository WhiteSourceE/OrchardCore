Í)
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Controllers\ContentPickerAdminController.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Controllers$ /
{ 
[ 
Admin 

]
 
public 

class (
ContentPickerAdminController -
:. /

Controller0 :
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IEnumerable $
<$ %(
IContentPickerResultProvider% A
>A B
_resultProvidersC S
;S T
public (
ContentPickerAdminController +
(+ ,%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IEnumerable 
< (
IContentPickerResultProvider 4
>4 5
resultProviders6 E
) 
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_resultProviders 
= 
resultProviders .
;. /
} 	
public 
async 
Task 
< 
IActionResult '
>' (
SearchContentItems) ;
(; <
string< B
partC G
,G H
stringI O
fieldP U
,U V
stringW ]
query^ c
)c d
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
part* .
). /
||0 2
string3 9
.9 :
IsNullOrWhiteSpace: L
(L M
fieldM R
)R S
)S T
{   
return!! 

BadRequest!! !
(!!! "
$str!!" J
)!!J K
;!!K L
}"" 
var$$ 
partFieldDefinition$$ #
=$$$ %%
_contentDefinitionManager$$& ?
.$$? @
GetPartDefinition$$@ Q
($$Q R
part$$R V
)$$V W
?$$W X
.$$X Y
Fields$$Y _
.%% 
FirstOrDefault%% 
(%%  
f%%  !
=>%%" $
f%%% &
.%%& '
Name%%' +
==%%, .
field%%/ 4
)%%4 5
;%%5 6
var'' 
fieldSettings'' 
='' 
partFieldDefinition''  3
?''3 4
.''4 5
GetSettings''5 @
<''@ A&
ContentPickerFieldSettings''A [
>''[ \
(''\ ]
)''] ^
;''^ _
if(( 
((( 
fieldSettings(( 
==((  
null((! %
)((% &
{)) 
return** 

BadRequest** !
(**! "
$str**" C
)**C D
;**D E
}++ 
var-- 
editor-- 
=-- 
partFieldDefinition-- ,
.--, -
Editor--- 3
(--3 4
)--4 5
??--6 8
$str--9 B
;--B C
var.. 
resultProvider.. 
=..  
_resultProviders..! 1
...1 2
FirstOrDefault..2 @
(..@ A
p..A B
=>..C E
p..F G
...G H
Name..H L
==..M O
editor..P V
)..V W
;..W X
if// 
(// 
resultProvider// 
==// !
null//" &
)//& '
{00 
return11 
new11 
ObjectResult11 '
(11' (
new11( +
List11, 0
<110 1
ContentPickerResult111 D
>11D E
(11E F
)11F G
)11G H
;11H I
}22 
var44 
results44 
=44 
await44 
resultProvider44  .
.44. /
Search44/ 5
(445 6
new446 9&
ContentPickerSearchContext44: T
{55 
Query66 
=66 
query66 
,66 "
DisplayAllContentTypes77 &
=77' (
fieldSettings77) 6
.776 7"
DisplayAllContentTypes777 M
,77M N
ContentTypes88 
=88 
fieldSettings88 ,
.88, -!
DisplayedContentTypes88- B
,88B C
PartFieldDefinition99 #
=99$ %
partFieldDefinition99& 9
}:: 
):: 
;:: 
return<< 
new<< 
ObjectResult<< #
(<<# $
results<<$ +
.<<+ ,
Select<<, 2
(<<2 3
r<<3 4
=><<5 7
new<<8 ;'
VueMultiselectItemViewModel<<< W
(<<W X
)<<X Y
{<<Z [
Id<<\ ^
=<<_ `
r<<a b
.<<b c
ContentItemId<<c p
,<<p q
DisplayText<<r }
=<<~ 
r
<<Ä Å
.
<<Å Ç
DisplayText
<<Ç ç
,
<<ç é
HasPublished
<<è õ
=
<<ú ù
r
<<û ü
.
<<ü †
HasPublished
<<† ¨
}
<<≠ Æ
)
<<Æ Ø
)
<<Ø ∞
;
<<∞ ±
}== 	
}>> 
}??  5
¥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Controllers\LocalizationSetContentPickerAdminController.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Controllers$ /
{ 
[ 
RequireFeatures 
( 
$str 6
)6 7
]7 8
[ 
Admin 

]
 
public 

class 7
+LocalizationSetContentPickerAdminController <
:= >

Controller? I
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly '
IContentLocalizationManager 4'
_contentLocalizationManager5 P
;P Q
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
public 7
+LocalizationSetContentPickerAdminController :
(: ;%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?'
IContentLocalizationManager '&
contentLocalizationManager( B
,B C
IContentManager 
contentManager *
,* +
ISession 
session 
)   
{!! 	%
_contentDefinitionManager"" %
=""& '$
contentDefinitionManager""( @
;""@ A'
_contentLocalizationManager## '
=##( )&
contentLocalizationManager##* D
;##D E
_contentManager$$ 
=$$ 
contentManager$$ ,
;$$, -
_session%% 
=%% 
session%% 
;%% 
}&& 	
[(( 	
HttpGet((	 
](( 
public)) 
async)) 
Task)) 
<)) 
IActionResult)) '
>))' ("
SearchLocalizationSets))) ?
())? @
string))@ F
part))G K
,))K L
string))M S
field))T Y
,))Y Z
string))[ a
query))b g
)))g h
{** 	
if++ 
(++ 
string++ 
.++ 
IsNullOrWhiteSpace++ )
(++) *
part++* .
)++. /
||++0 2
string++3 9
.++9 :
IsNullOrWhiteSpace++: L
(++L M
field++M R
)++R S
)++S T
{,, 
return-- 

BadRequest-- !
(--! "
$str--" J
)--J K
;--K L
}.. 
var00 
partFieldDefinition00 #
=00$ %%
_contentDefinitionManager00& ?
.00? @
GetPartDefinition00@ Q
(00Q R
part00R V
)00V W
?00W X
.00X Y
Fields00Y _
.11 
FirstOrDefault11 
(11  
f11  !
=>11" $
f11% &
.11& '
Name11' +
==11, .
field11/ 4
)114 5
;115 6
var33 
fieldSettings33 
=33 
partFieldDefinition33  3
?333 4
.334 5
GetSettings335 @
<33@ A5
)LocalizationSetContentPickerFieldSettings33A j
>33j k
(33k l
)33l m
;33m n
if44 
(44 
fieldSettings44 
==44  
null44! %
)44% &
{55 
return66 

BadRequest66 !
(66! "
$str66" C
)66C D
;66D E
}77 
var99 
dbQuery99 
=99 
_session99 "
.99" #
Query99# (
<99( )
ContentItem99) 4
,994 5
ContentItemIndex996 F
>99F G
(99G H
)99H I
.:: 
With:: 
<:: 
ContentItemIndex:: $
>::$ %
(::% &
x::& '
=>::( *
x::+ ,
.::, -
ContentType::- 8
.::8 9
IsIn::9 =
(::= >
fieldSettings::> K
.::K L!
DisplayedContentTypes::L a
)::a b
&&::c e
x::f g
.::g h
Latest::h n
)::n o
;::o p
if<< 
(<< 
!<< 
string<< 
.<< 
IsNullOrEmpty<< %
(<<% &
query<<& +
)<<+ ,
)<<, -
{== 
dbQuery>> 
.>> 
With>> 
<>> 
ContentItemIndex>> -
>>>- .
(>>. /
x>>/ 0
=>>>1 3
x>>4 5
.>>5 6
DisplayText>>6 A
.>>A B
Contains>>B J
(>>J K
query>>K P
)>>P Q
||>>R T
x>>U V
.>>V W
ContentType>>W b
.>>b c
Contains>>c k
(>>k l
query>>l q
)>>q r
)>>r s
;>>s t
}?? 
varAA 
contentItemsAA 
=AA 
awaitAA $
dbQueryAA% ,
.AA, -
TakeAA- 1
(AA1 2
$numAA2 4
)AA4 5
.AA5 6
	ListAsyncAA6 ?
(AA? @
)AA@ A
;AAA B
varDD 
cleanedContentItemsDD #
=DD$ %
awaitDD& +'
_contentLocalizationManagerDD, G
.DDG H(
DeduplicateContentItemsAsyncDDH d
(DDd e
contentItemsDDe q
)DDq r
;DDr s
varFF 
resultsFF 
=FF 
newFF 
ListFF "
<FF" #'
VueMultiselectItemViewModelFF# >
>FF> ?
(FF? @
)FF@ A
;FFA B
foreachHH 
(HH 
varHH 
contentItemHH $
inHH% '
cleanedContentItemsHH( ;
)HH; <
{II 
resultsJJ 
.JJ 
AddJJ 
(JJ 
newJJ '
VueMultiselectItemViewModelJJ  ;
{KK 
IdLL 
=LL 
contentItemLL $
.LL$ %
KeyLL% (
,LL( )
DisplayTextMM 
=MM  !
contentItemMM" -
.MM- .
ValueMM. 3
.MM3 4
ToStringMM4 <
(MM< =
)MM= >
,MM> ?
HasPublishedNN  
=NN! "
awaitNN# (
_contentManagerNN) 8
.NN8 9$
HasPublishedVersionAsyncNN9 Q
(NNQ R
contentItemNNR ]
.NN] ^
ValueNN^ c
)NNc d
}OO 
)OO 
;OO 
}PP 
returnRR 
newRR 
ObjectResultRR #
(RR# $
resultsRR$ +
)RR+ ,
;RR, -
}SS 	
}TT 
}UU ¢7
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Controllers\UserPickerAdminController.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Controllers$ /
{ 
[ 
RequireFeatures 
( 
$str (
)( )
]) *
[ 
Admin 

]
 
public 

class %
UserPickerAdminController *
:+ ,

Controller- 7
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IEnumerable $
<$ %%
IUserPickerResultProvider% >
>> ?
_resultProviders@ P
;P Q
public %
UserPickerAdminController (
(( )%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IContentManager 
contentManager *
,* +!
IAuthorizationService ! 
authorizationService" 6
,6 7
IEnumerable   
<   %
IUserPickerResultProvider   1
>  1 2
resultProviders  3 B
)!! 
{"" 	%
_contentDefinitionManager## %
=##& '$
contentDefinitionManager##( @
;##@ A
_contentManager$$ 
=$$ 
contentManager$$ ,
;$$, -!
_authorizationService%% !
=%%" # 
authorizationService%%$ 8
;%%8 9
_resultProviders&& 
=&& 
resultProviders&& .
;&&. /
}'' 	
public)) 
async)) 
Task)) 
<)) 
IActionResult)) '
>))' (
SearchUsers))) 4
())4 5
string))5 ;
part))< @
,))@ A
string))B H
field))I N
,))N O
string))P V
contentType))W b
,))b c
string))d j
query))k p
)))p q
{** 	
if++ 
(++ 
string++ 
.++ 
IsNullOrWhiteSpace++ )
(++) *
part++* .
)++. /
||++0 2
string++3 9
.++9 :
IsNullOrWhiteSpace++: L
(++L M
field++M R
)++R S
||++T V
string++W ]
.++] ^
IsNullOrWhiteSpace++^ p
(++p q
contentType++q |
)++| }
)++} ~
{,, 
return-- 

BadRequest-- !
(--! "
$str--" W
)--W X
;--X Y
}.. 
var00 
contentItem00 
=00 
await00 #
_contentManager00$ 3
.003 4
NewAsync004 <
(00< =
contentType00= H
)00H I
;00I J
contentItem11 
.11 
Owner11 
=11 
User11  $
.11$ %
FindFirstValue11% 3
(113 4

ClaimTypes114 >
.11> ?
NameIdentifier11? M
)11M N
;11N O
if33 
(33 
!33 
await33 !
_authorizationService33 ,
.33, -
AuthorizeAsync33- ;
(33; <
User33< @
,33@ A
CommonPermissions33B S
.33S T
EditContent33T _
,33_ `
contentItem33a l
)33l m
)33m n
{44 
return55 
Forbid55 
(55 
)55 
;55  
}66 
var88 
partFieldDefinition88 #
=88$ %%
_contentDefinitionManager88& ?
.88? @
GetPartDefinition88@ Q
(88Q R
part88R V
)88V W
?88W X
.88X Y
Fields88Y _
.99 
FirstOrDefault99 
(99  
f99  !
=>99" $
f99% &
.99& '
Name99' +
==99, .
field99/ 4
)994 5
;995 6
var;; 
fieldSettings;; 
=;; 
partFieldDefinition;;  3
?;;3 4
.;;4 5
GetSettings;;5 @
<;;@ A#
UserPickerFieldSettings;;A X
>;;X Y
(;;Y Z
);;Z [
;;;[ \
if<< 
(<< 
fieldSettings<< 
==<<  
null<<! %
)<<% &
{== 
return>> 

BadRequest>> !
(>>! "
$str>>" C
)>>C D
;>>D E
}?? 
varAA 
editorAA 
=AA 
partFieldDefinitionAA ,
.AA, -
EditorAA- 3
(AA3 4
)AA4 5
??AA6 8
$strAA9 B
;AAB C
varBB 
resultProviderBB 
=BB  
_resultProvidersBB! 1
.BB1 2
FirstOrDefaultBB2 @
(BB@ A
pBBA B
=>BBC E
pBBF G
.BBG H
NameBBH L
==BBM O
editorBBP V
)BBV W
;BBW X
ifCC 
(CC 
resultProviderCC 
==CC !
nullCC" &
)CC& '
{DD 
returnEE 
newEE 
ObjectResultEE '
(EE' (
newEE( +
ListEE, 0
<EE0 1
UserPickerResultEE1 A
>EEA B
(EEB C
)EEC D
)EED E
;EEE F
}FF 
varHH 
resultsHH 
=HH 
awaitHH 
resultProviderHH  .
.HH. /
SearchHH/ 5
(HH5 6
newHH6 9#
UserPickerSearchContextHH: Q
{II 
QueryJJ 
=JJ 
queryJJ 
,JJ 
DisplayAllUsersKK 
=KK  !
fieldSettingsKK" /
.KK/ 0
DisplayAllUsersKK0 ?
,KK? @
RolesLL 
=LL 
fieldSettingsLL %
.LL% &
DisplayedRolesLL& 4
,LL4 5
PartFieldDefinitionMM #
=MM$ %
partFieldDefinitionMM& 9
}NN 
)NN 
;NN 
returnPP 
newPP 
ObjectResultPP #
(PP# $
resultsPP$ +
.PP+ ,
SelectPP, 2
(PP2 3
rPP3 4
=>PP5 7
newPP8 ;'
VueMultiselectUserViewModelPP< W
(PPW X
)PPX Y
{PPZ [
IdPP\ ^
=PP_ `
rPPa b
.PPb c
UserIdPPc i
,PPi j
DisplayTextPPk v
=PPw x
rPPy z
.PPz {
DisplayText	PP{ Ü
,
PPÜ á
	IsEnabled
PPà ë
=
PPí ì
r
PPî ï
.
PPï ñ
	IsEnabled
PPñ ü
}
PP† °
)
PP° ¢
)
PP¢ £
;
PP£ §
}QQ 	
}RR 
}SS ü 
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\BooleanFieldDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
ContentFields

 #
.

# $
Drivers

$ +
{ 
public 

class %
BooleanFieldDisplayDriver *
:+ ,%
ContentFieldDisplayDriver- F
<F G
BooleanFieldG S
>S T
{ 
public 
override 
IDisplayResult &
Display' .
(. /
BooleanField/ ;
field< A
,A B$
BuildFieldDisplayContextC [
context\ c
)c d
{ 	
return 

Initialize 
< (
DisplayBooleanFieldViewModel :
>: ;
(; <
GetDisplayShapeType< O
(O P
contextP W
)W X
,X Y
modelZ _
=>` b
{ 
model 
. 
Field 
= 
field #
;# $
model 
. 
Part 
= 
context $
.$ %
ContentPart% 0
;0 1
model 
. 
PartFieldDefinition )
=* +
context, 3
.3 4
PartFieldDefinition4 G
;G H
} 
) 
. 
Location 
( 
$str 
, 
$str  )
)) *
. 
Location 
( 
$str 
,  
$str! *
)* +
;+ ,
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
BooleanField, 8
field9 >
,> ?#
BuildFieldEditorContext@ W
contextX _
)_ `
{ 	
return 

Initialize 
< %
EditBooleanFieldViewModel 7
>7 8
(8 9
GetEditorShapeType9 K
(K L
contextL S
)S T
,T U
modelV [
=>\ ^
{ 
model 
. 
Value 
= 
( 
context &
.& '
IsNew' ,
==- /
false0 5
)5 6
?7 8
field 
. 
Value 
:  !
context" )
.) *
PartFieldDefinition* =
.= >
GetSettings> I
<I J 
BooleanFieldSettingsJ ^
>^ _
(_ `
)` a
.a b
DefaultValueb n
;n o
model!! 
.!! 
Field!! 
=!! 
field!! #
;!!# $
model"" 
."" 
Part"" 
="" 
context"" $
.""$ %
ContentPart""% 0
;""0 1
model## 
.## 
PartFieldDefinition## )
=##* +
context##, 3
.##3 4
PartFieldDefinition##4 G
;##G H
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
BooleanField''? K
field''L Q
,''Q R
IUpdateModel''S _
updater''` g
,''g h%
UpdateFieldEditorContext	''i Å
context
''Ç â
)
''â ä
{(( 	
await)) 
updater)) 
.)) 
TryUpdateModelAsync)) -
())- .
field)). 3
,))3 4
Prefix))5 ;
,)); <
f))= >
=>))? A
f))B C
.))C D
Value))D I
)))I J
;))J K
return++ 
Edit++ 
(++ 
field++ 
,++ 
context++ &
)++& '
;++' (
},, 	
}-- 
}.. ¬G
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\ContentPickerFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class +
ContentPickerFieldDisplayDriver 0
:1 2%
ContentFieldDisplayDriver3 L
<L M
ContentPickerFieldM _
>_ `
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public +
ContentPickerFieldDisplayDriver .
(. /
IContentManager 
contentManager *
,* +
IStringLocalizer 
< +
ContentPickerFieldDisplayDriver <
>< =
	localizer> G
)G H
{ 	
_contentManager 
= 
contentManager ,
;, -
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
ContentPickerField/ A
fieldB G
,G H$
BuildFieldDisplayContextI a
contextb i
)i j
{   	
return!! 

Initialize!! 
<!! .
"DisplayContentPickerFieldViewModel!! @
>!!@ A
(!!A B
GetDisplayShapeType!!B U
(!!U V
context!!V ]
)!!] ^
,!!^ _
model!!` e
=>!!f h
{"" 
model## 
.## 
Field## 
=## 
field## #
;### $
model$$ 
.$$ 
Part$$ 
=$$ 
context$$ $
.$$$ %
ContentPart$$% 0
;$$0 1
model%% 
.%% 
PartFieldDefinition%% )
=%%* +
context%%, 3
.%%3 4
PartFieldDefinition%%4 G
;%%G H
}&& 
)&& 
.'' 
Location'' 
('' 
$str'' 
,'' 
$str''  )
)'') *
.(( 
Location(( 
((( 
$str(( 
,((  
$str((! *
)((* +
;((+ ,
})) 	
public++ 
override++ 
IDisplayResult++ &
Edit++' +
(+++ ,
ContentPickerField++, >
field++? D
,++D E#
BuildFieldEditorContext++F ]
context++^ e
)++e f
{,, 	
return-- 

Initialize-- 
<-- +
EditContentPickerFieldViewModel-- =
>--= >
(--> ?
GetEditorShapeType--? Q
(--Q R
context--R Y
)--Y Z
,--Z [
async--\ a
model--b g
=>--h j
{.. 
model// 
.// 
ContentItemIds// $
=//% &
string//' -
.//- .
Join//. 2
(//2 3
$str//3 6
,//6 7
field//8 =
.//= >
ContentItemIds//> L
)//L M
;//M N
model11 
.11 
Field11 
=11 
field11 #
;11# $
model22 
.22 
Part22 
=22 
context22 $
.22$ %
ContentPart22% 0
;220 1
model33 
.33 
PartFieldDefinition33 )
=33* +
context33, 3
.333 4
PartFieldDefinition334 G
;33G H
model55 
.55 
SelectedItems55 #
=55$ %
new55& )
List55* .
<55. /'
VueMultiselectItemViewModel55/ J
>55J K
(55K L
)55L M
;55M N
foreach77 
(77 
var77 
contentItemId77 *
in77+ -
field77. 3
.773 4
ContentItemIds774 B
)77B C
{88 
var99 
contentItem99 #
=99$ %
await99& +
_contentManager99, ;
.99; <
GetAsync99< D
(99D E
contentItemId99E R
,99R S
VersionOptions99T b
.99b c
Latest99c i
)99i j
;99j k
if;; 
(;; 
contentItem;; #
==;;$ &
null;;' +
);;+ ,
{<< 
continue==  
;==  !
}>> 
model@@ 
.@@ 
SelectedItems@@ '
.@@' (
Add@@( +
(@@+ ,
new@@, /'
VueMultiselectItemViewModel@@0 K
{AA 
IdBB 
=BB 
contentItemIdBB *
,BB* +
DisplayTextCC #
=CC$ %
contentItemCC& 1
.CC1 2
ToStringCC2 :
(CC: ;
)CC; <
,CC< =
HasPublishedDD $
=DD% &
awaitDD' ,
_contentManagerDD- <
.DD< =$
HasPublishedVersionAsyncDD= U
(DDU V
contentItemDDV a
)DDa b
}EE 
)EE 
;EE 
}FF 
}GG 
)GG 
;GG 
}HH 	
publicJJ 
overrideJJ 
asyncJJ 
TaskJJ "
<JJ" #
IDisplayResultJJ# 1
>JJ1 2
UpdateAsyncJJ3 >
(JJ> ?
ContentPickerFieldJJ? Q
fieldJJR W
,JJW X
IUpdateModelJJY e
updaterJJf m
,JJm n%
UpdateFieldEditorContext	JJo á
context
JJà è
)
JJè ê
{KK 	
varLL 
	viewModelLL 
=LL 
newLL +
EditContentPickerFieldViewModelLL  ?
(LL? @
)LL@ A
;LLA B
varNN 
modelUpdatedNN 
=NN 
awaitNN $
updaterNN% ,
.NN, -
TryUpdateModelAsyncNN- @
(NN@ A
	viewModelNNA J
,NNJ K
PrefixNNL R
,NNR S
fNNT U
=>NNV X
fNNY Z
.NNZ [
ContentItemIdsNN[ i
)NNi j
;NNj k
ifPP 
(PP 
!PP 
modelUpdatedPP 
)PP 
{QQ 
returnRR 
EditRR 
(RR 
fieldRR !
,RR! "
contextRR# *
)RR* +
;RR+ ,
}SS 
fieldUU 
.UU 
ContentItemIdsUU  
=UU! "
	viewModelUU# ,
.UU, -
ContentItemIdsUU- ;
==UU< >
nullUU? C
?VV 
newVV 
stringVV 
[VV 
$numVV 
]VV 
:VV  !
	viewModelVV" +
.VV+ ,
ContentItemIdsVV, :
.VV: ;
SplitVV; @
(VV@ A
$charVVA D
,VVD E
StringSplitOptionsVVF X
.VVX Y
RemoveEmptyEntriesVVY k
)VVk l
;VVl m
varXX 
settingsXX 
=XX 
contextXX "
.XX" #
PartFieldDefinitionXX# 6
.XX6 7
GetSettingsXX7 B
<XXB C&
ContentPickerFieldSettingsXXC ]
>XX] ^
(XX^ _
)XX_ `
;XX` a
ifZZ 
(ZZ 
settingsZZ 
.ZZ 
RequiredZZ !
&&ZZ" $
fieldZZ% *
.ZZ* +
ContentItemIdsZZ+ 9
.ZZ9 :
LengthZZ: @
==ZZA C
$numZZD E
)ZZE F
{[[ 
updater\\ 
.\\ 

ModelState\\ "
.\\" #
AddModelError\\# 0
(\\0 1
Prefix\\1 7
,\\7 8
nameof\\9 ?
(\\? @
field\\@ E
.\\E F
ContentItemIds\\F T
)\\T U
,\\U V
S\\W X
[\\X Y
$str\\Y u
,\\u v
context\\w ~
.\\~  
PartFieldDefinition	\\ í
.
\\í ì
DisplayName
\\ì û
(
\\û ü
)
\\ü †
]
\\† °
)
\\° ¢
;
\\¢ £
}]] 
if__ 
(__ 
!__ 
settings__ 
.__ 
Multiple__ "
&&__# %
field__& +
.__+ ,
ContentItemIds__, :
.__: ;
Length__; A
>__B C
$num__D E
)__E F
{`` 
updateraa 
.aa 

ModelStateaa "
.aa" #
AddModelErroraa# 0
(aa0 1
Prefixaa1 7
,aa7 8
nameofaa9 ?
(aa? @
fieldaa@ E
.aaE F
ContentItemIdsaaF T
)aaT U
,aaU V
SaaW X
[aaX Y
$str	aaY á
,
aaá à
context
aaâ ê
.
aaê ë!
PartFieldDefinition
aaë §
.
aa§ •
DisplayName
aa• ∞
(
aa∞ ±
)
aa± ≤
]
aa≤ ≥
)
aa≥ ¥
;
aa¥ µ
}bb 
returndd 
Editdd 
(dd 
fielddd 
,dd 
contextdd &
)dd& '
;dd' (
}ee 	
}ff 
}gg ›(
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\DateFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class "
DateFieldDisplayDriver '
:( )%
ContentFieldDisplayDriver* C
<C D
	DateFieldD M
>M N
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public "
DateFieldDisplayDriver %
(% &
IStringLocalizer& 6
<6 7"
DateFieldDisplayDriver7 M
>M N
	localizerO X
)X Y
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
	DateField/ 8
field9 >
,> ?$
BuildFieldDisplayContext@ X
contextY `
)` a
{ 	
return 

Initialize 
< %
DisplayDateFieldViewModel 7
>7 8
(8 9
GetDisplayShapeType9 L
(L M
contextM T
)T U
,U V
modelW \
=>] _
{ 
model 
. 
Field 
= 
field #
;# $
model 
. 
Part 
= 
context $
.$ %
ContentPart% 0
;0 1
model 
. 
PartFieldDefinition )
=* +
context, 3
.3 4
PartFieldDefinition4 G
;G H
} 
) 
.   
Location   
(   
$str   
,   
$str    )
)  ) *
.!! 
Location!! 
(!! 
$str!! 
,!!  
$str!!! *
)!!* +
;!!+ ,
}"" 	
public$$ 
override$$ 
IDisplayResult$$ &
Edit$$' +
($$+ ,
	DateField$$, 5
field$$6 ;
,$$; <#
BuildFieldEditorContext$$= T
context$$U \
)$$\ ]
{%% 	
return&& 

Initialize&& 
<&& "
EditDateFieldViewModel&& 4
>&&4 5
(&&5 6
GetEditorShapeType&&6 H
(&&H I
context&&I P
)&&P Q
,&&Q R
model&&S X
=>&&Y [
{'' 
model(( 
.(( 
Value(( 
=(( 
field(( #
.((# $
Value(($ )
;(() *
model)) 
.)) 
Field)) 
=)) 
field)) #
;))# $
model** 
.** 
Part** 
=** 
context** $
.**$ %
ContentPart**% 0
;**0 1
model++ 
.++ 
PartFieldDefinition++ )
=++* +
context++, 3
.++3 4
PartFieldDefinition++4 G
;++G H
},, 
),, 
;,, 
}-- 	
public// 
override// 
async// 
Task// "
<//" #
IDisplayResult//# 1
>//1 2
UpdateAsync//3 >
(//> ?
	DateField//? H
field//I N
,//N O
IUpdateModel//P \
updater//] d
,//d e$
UpdateFieldEditorContext//f ~
context	// Ü
)
//Ü á
{00 	
if11 
(11 
await11 
updater11 
.11 
TryUpdateModelAsync11 1
(111 2
field112 7
,117 8
Prefix119 ?
,11? @
f11A B
=>11C E
f11F G
.11G H
Value11H M
)11M N
)11N O
{22 
var33 
settings33 
=33 
context33 &
.33& '
PartFieldDefinition33' :
.33: ;
GetSettings33; F
<33F G
DateFieldSettings33G X
>33X Y
(33Y Z
)33Z [
;33[ \
if44 
(44 
settings44 
.44 
Required44 %
&&44& (
field44) .
.44. /
Value44/ 4
==445 7
null448 <
)44< =
{55 
updater66 
.66 

ModelState66 &
.66& '
AddModelError66' 4
(664 5
Prefix665 ;
,66; <
nameof66= C
(66C D
field66D I
.66I J
Value66J O
)66O P
,66P Q
S66R S
[66S T
$str66T r
,66r s
context66t {
.66{ | 
PartFieldDefinition	66| è
.
66è ê
DisplayName
66ê õ
(
66õ ú
)
66ú ù
]
66ù û
)
66û ü
;
66ü †
}77 
}88 
return:: 
Edit:: 
(:: 
field:: 
,:: 
context:: &
)::& '
;::' (
};; 	
}<< 
}== É:
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\DateTimeFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class &
DateTimeFieldDisplayDriver +
:, -%
ContentFieldDisplayDriver. G
<G H
DateTimeFieldH U
>U V
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
ILocalClock $
_localClock% 0
;0 1
public &
DateTimeFieldDisplayDriver )
() *
ILocalClock* 5

localClock6 @
,@ A
IStringLocalizer 
< &
DateTimeFieldDisplayDriver 3
>3 4
	localizer5 >
)> ?
{ 	
_localClock 
= 

localClock $
;$ %
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
DateTimeField/ <
field= B
,B C$
BuildFieldDisplayContextD \
context] d
)d e
{ 	
return   

Initialize   
<   )
DisplayDateTimeFieldViewModel   ;
>  ; <
(  < =
GetDisplayShapeType  = P
(  P Q
context  Q X
)  X Y
,  Y Z
async  [ `
model  a f
=>  g i
{!! 
model"" 
."" 
LocalDateTime"" #
=""$ %
field""& +
.""+ ,
Value"", 1
==""2 4
null""5 9
?"": ;
(""< =
DateTime""= E
?""E F
)""F G
null""G K
:""L M
(""N O
await""O T
_localClock""U `
.""` a
ConvertToLocalAsync""a t
(""t u
field""u z
.""z {
Value	""{ Ä
.
""Ä Å
Value
""Å Ü
)
""Ü á
)
""á à
.
""à â
DateTime
""â ë
;
""ë í
model## 
.## 
Field## 
=## 
field## #
;### $
model$$ 
.$$ 
Part$$ 
=$$ 
context$$ $
.$$$ %
ContentPart$$% 0
;$$0 1
model%% 
.%% 
PartFieldDefinition%% )
=%%* +
context%%, 3
.%%3 4
PartFieldDefinition%%4 G
;%%G H
}&& 
)&& 
.'' 
Location'' 
('' 
$str'' 
,'' 
$str''  )
)'') *
.(( 
Location(( 
((( 
$str(( 
,((  
$str((! *
)((* +
;((+ ,
})) 	
public++ 
override++ 
IDisplayResult++ &
Edit++' +
(+++ ,
DateTimeField++, 9
field++: ?
,++? @#
BuildFieldEditorContext++A X
context++Y `
)++` a
{,, 	
return-- 

Initialize-- 
<-- &
EditDateTimeFieldViewModel-- 8
>--8 9
(--9 :
GetEditorShapeType--: L
(--L M
context--M T
)--T U
,--U V
async--W \
model--] b
=>--c e
{.. 
model// 
.// 
LocalDateTime// #
=//$ %
field//& +
.//+ ,
Value//, 1
==//2 4
null//5 9
?//: ;
(//< =
DateTime//= E
?//E F
)//F G
null//G K
://L M
(//N O
await//O T
_localClock//U `
.//` a
ConvertToLocalAsync//a t
(//t u
field//u z
.//z {
Value	//{ Ä
.
//Ä Å
Value
//Å Ü
)
//Ü á
)
//á à
.
//à â
DateTime
//â ë
;
//ë í
model00 
.00 
Field00 
=00 
field00 #
;00# $
model11 
.11 
Part11 
=11 
context11 $
.11$ %
ContentPart11% 0
;110 1
model22 
.22 
PartFieldDefinition22 )
=22* +
context22, 3
.223 4
PartFieldDefinition224 G
;22G H
}33 
)33 
;33 
}44 	
public66 
override66 
async66 
Task66 "
<66" #
IDisplayResult66# 1
>661 2
UpdateAsync663 >
(66> ?
DateTimeField66? L
field66M R
,66R S
IUpdateModel66T `
updater66a h
,66h i%
UpdateFieldEditorContext	66j Ç
context
66É ä
)
66ä ã
{77 	
var88 
model88 
=88 
new88 &
EditDateTimeFieldViewModel88 6
(886 7
)887 8
;888 9
if:: 
(:: 
await:: 
updater:: 
.:: 
TryUpdateModelAsync:: 1
(::1 2
model::2 7
,::7 8
Prefix::9 ?
,::? @
f::A B
=>::C E
f::F G
.::G H
LocalDateTime::H U
)::U V
)::V W
{;; 
var<< 
settings<< 
=<< 
context<< &
.<<& '
PartFieldDefinition<<' :
.<<: ;
GetSettings<<; F
<<<F G!
DateTimeFieldSettings<<G \
><<\ ]
(<<] ^
)<<^ _
;<<_ `
if== 
(== 
settings== 
.== 
Required== %
&&==& (
model==) .
.==. /
LocalDateTime==/ <
===== ?
null==@ D
)==D E
{>> 
updater?? 
.?? 

ModelState?? &
.??& '
AddModelError??' 4
(??4 5
Prefix??5 ;
,??; <
nameof??= C
(??C D
model??D I
.??I J
LocalDateTime??J W
)??W X
,??X Y
S??Z [
[??[ \
$str??\ z
,??z {
context	??| É
.
??É Ñ!
PartFieldDefinition
??Ñ ó
.
??ó ò
DisplayName
??ò £
(
??£ §
)
??§ •
]
??• ¶
)
??¶ ß
;
??ß ®
}@@ 
elseAA 
{BB 
ifCC 
(CC 
modelCC 
.CC 
LocalDateTimeCC +
==CC, .
nullCC/ 3
)CC3 4
{DD 
fieldEE 
.EE 
ValueEE #
=EE$ %
nullEE& *
;EE* +
}FF 
elseGG 
{HH 
fieldII 
.II 
ValueII #
=II$ %
awaitII& +
_localClockII, 7
.II7 8
ConvertToUtcAsyncII8 I
(III J
modelIIJ O
.IIO P
LocalDateTimeIIP ]
.II] ^
ValueII^ c
)IIc d
;IId e
}JJ 
}KK 
}LL 
returnNN 
EditNN 
(NN 
fieldNN 
,NN 
contextNN &
)NN& '
;NN' (
}OO 	
}PP 
}QQ ºH
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\HtmlFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class "
HtmlFieldDisplayDriver '
:( )%
ContentFieldDisplayDriver* C
<C D
	HtmlFieldD M
>M N
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
private 
readonly !
IHtmlSanitizerService .!
_htmlSanitizerService/ D
;D E
private 
readonly 
IShortcodeService *
_shortcodeService+ <
;< =
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public "
HtmlFieldDisplayDriver %
(% &"
ILiquidTemplateManager& <!
liquidTemplateManager= R
,R S
HtmlEncoder 
htmlEncoder #
,# $!
IHtmlSanitizerService ! 
htmlSanitizerService" 6
,6 7
IShortcodeService 
shortcodeService .
,. /
IStringLocalizer   
<   "
HtmlFieldDisplayDriver   3
>  3 4
	localizer  5 >
)  > ?
{!! 	"
_liquidTemplateManager"" "
=""# $!
liquidTemplateManager""% :
;"": ;
_htmlEncoder## 
=## 
htmlEncoder## &
;##& '!
_htmlSanitizerService$$ !
=$$" # 
htmlSanitizerService$$$ 8
;$$8 9
_shortcodeService%% 
=%% 
shortcodeService%%  0
;%%0 1
S&& 
=&& 
	localizer&& 
;&& 
}'' 	
public)) 
override)) 
IDisplayResult)) &
Display))' .
()). /
	HtmlField))/ 8
field))9 >
,))> ?$
BuildFieldDisplayContext))@ X
context))Y `
)))` a
{** 	
return++ 

Initialize++ 
<++ %
DisplayHtmlFieldViewModel++ 7
>++7 8
(++8 9
GetDisplayShapeType++9 L
(++L M
context++M T
)++T U
,++U V
async++W \
model++] b
=>++c e
{,, 
model-- 
.-- 
Html-- 
=-- 
field-- "
.--" #
Html--# '
;--' (
model.. 
... 
Field.. 
=.. 
field.. #
;..# $
model// 
.// 
Part// 
=// 
context// $
.//$ %
ContentPart//% 0
;//0 1
model00 
.00 
PartFieldDefinition00 )
=00* +
context00, 3
.003 4
PartFieldDefinition004 G
;00G H
var22 
settings22 
=22 
context22 &
.22& '
PartFieldDefinition22' :
.22: ;
GetSettings22; F
<22F G
HtmlFieldSettings22G X
>22X Y
(22Y Z
)22Z [
;22[ \
if33 
(33 
!33 
settings33 
.33 
SanitizeHtml33 *
)33* +
{44 
model55 
.55 
Html55 
=55  
await55! &"
_liquidTemplateManager55' =
.55= >
RenderAsync55> I
(55I J
field55J O
.55O P
Html55P T
,55T U
_htmlEncoder55V b
,55b c
model55d i
,55i j
scope66 
=>66  
scope66! &
.66& '
SetValue66' /
(66/ 0
$str660 =
,66= >
field66? D
.66D E
ContentItem66E P
)66P Q
)66Q R
;66R S
}77 
model99 
.99 
Html99 
=99 
await99 "
_shortcodeService99# 4
.994 5
ProcessAsync995 A
(99A B
model99B G
.99G H
Html99H L
,99L M
new:: 
Context:: 
{;; 
[<< 
$str<< &
]<<& '
=<<( )
field<<* /
.<</ 0
ContentItem<<0 ;
,<<; <
[== 
$str== .
]==. /
===0 1
context==2 9
.==9 :
PartFieldDefinition==: M
}>> 
)>> 
;>> 
}@@ 
)@@ 
.AA 
LocationAA 
(AA 
$strAA 
,AA 
$strAA  )
)AA) *
.BB 
LocationBB 
(BB 
$strBB 
,BB  
$strBB! *
)BB* +
;BB+ ,
}CC 	
publicEE 
overrideEE 
IDisplayResultEE &
EditEE' +
(EE+ ,
	HtmlFieldEE, 5
fieldEE6 ;
,EE; <#
BuildFieldEditorContextEE= T
contextEEU \
)EE\ ]
{FF 	
returnGG 

InitializeGG 
<GG "
EditHtmlFieldViewModelGG 4
>GG4 5
(GG5 6
GetEditorShapeTypeGG6 H
(GGH I
contextGGI P
)GGP Q
,GGQ R
modelGGS X
=>GGY [
{HH 
modelII 
.II 
HtmlII 
=II 
fieldII "
.II" #
HtmlII# '
;II' (
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
(PP> ?
	HtmlFieldPP? H
fieldPPI N
,PPN O
IUpdateModelPPP \
updaterPP] d
,PPd e$
UpdateFieldEditorContextPPf ~
context	PP Ü
)
PPÜ á
{QQ 	
varRR 
	viewModelRR 
=RR 
newRR "
EditHtmlFieldViewModelRR  6
(RR6 7
)RR7 8
;RR8 9
varTT 
settingsTT 
=TT 
contextTT "
.TT" #
PartFieldDefinitionTT# 6
.TT6 7
GetSettingsTT7 B
<TTB C
HtmlFieldSettingsTTC T
>TTT U
(TTU V
)TTV W
;TTW X
ifVV 
(VV 
awaitVV 
updaterVV 
.VV 
TryUpdateModelAsyncVV 1
(VV1 2
	viewModelVV2 ;
,VV; <
PrefixVV= C
,VVC D
fVVE F
=>VVG I
fVVJ K
.VVK L
HtmlVVL P
)VVP Q
)VVQ R
{WW 
ifXX 
(XX 
!XX 
stringXX 
.XX 
IsNullOrEmptyXX )
(XX) *
	viewModelXX* 3
.XX3 4
HtmlXX4 8
)XX8 9
&&XX: <
!XX= >"
_liquidTemplateManagerXX> T
.XXT U
ValidateXXU ]
(XX] ^
	viewModelXX^ g
.XXg h
HtmlXXh l
,XXl m
outXXn q
varXXr u
errorsXXv |
)XX| }
)XX} ~
{YY 
varZZ 
	fieldNameZZ !
=ZZ" #
contextZZ$ +
.ZZ+ ,
PartFieldDefinitionZZ, ?
.ZZ? @
DisplayNameZZ@ K
(ZZK L
)ZZL M
;ZZM N
context[[ 
.[[ 
Updater[[ #
.[[# $

ModelState[[$ .
.[[. /
AddModelError[[/ <
([[< =
Prefix[[= C
,[[C D
nameof[[E K
([[K L
	viewModel[[L U
.[[U V
Html[[V Z
)[[Z [
,[[[ \
S[[] ^
[[[^ _
$str	[[_ ú
,
[[ú ù
	fieldName
[[û ß
,
[[ß ®
string
[[© Ø
.
[[Ø ∞
Join
[[∞ ¥
(
[[¥ µ
$str
[[µ ∏
,
[[∏ π
errors
[[∫ ¿
)
[[¿ ¡
]
[[¡ ¬
)
[[¬ √
;
[[√ ƒ
}\\ 
else]] 
{^^ 
field__ 
.__ 
Html__ 
=__  
settings__! )
.__) *
SanitizeHtml__* 6
?__7 8!
_htmlSanitizerService__9 N
.__N O
Sanitize__O W
(__W X
	viewModel__X a
.__a b
Html__b f
)__f g
:__h i
	viewModel__j s
.__s t
Html__t x
;__x y
}`` 
}aa 
returncc 
Editcc 
(cc 
fieldcc 
,cc 
contextcc &
)cc& '
;cc' (
}dd 	
}ee 
}ff ‚L
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\LinkFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class "
LinkFieldDisplayDriver '
:( )%
ContentFieldDisplayDriver* C
<C D
	LinkFieldD M
>M N
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public "
LinkFieldDisplayDriver %
(% &
IStringLocalizer& 6
<6 7"
LinkFieldDisplayDriver7 M
>M N
	localizerO X
)X Y
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
	LinkField/ 8
field9 >
,> ?$
BuildFieldDisplayContext@ X
contextY `
)` a
{ 	
return 

Initialize 
< %
DisplayLinkFieldViewModel 7
>7 8
(8 9
GetDisplayShapeType9 L
(L M
contextM T
)T U
,U V
modelW \
=>] _
{ 
model 
. 
Field 
= 
field #
;# $
model 
. 
Part 
= 
context $
.$ %
ContentPart% 0
;0 1
model 
. 
PartFieldDefinition )
=* +
context, 3
.3 4
PartFieldDefinition4 G
;G H
}   
)   
.!! 
Location!! 
(!! 
$str!! 
,!! 
$str!!  )
)!!) *
."" 
Location"" 
("" 
$str"" 
,""  
$str""! *
)""* +
;""+ ,
}## 	
public%% 
override%% 
IDisplayResult%% &
Edit%%' +
(%%+ ,
	LinkField%%, 5
field%%6 ;
,%%; <#
BuildFieldEditorContext%%= T
context%%U \
)%%\ ]
{&& 	
return'' 

Initialize'' 
<'' "
EditLinkFieldViewModel'' 4
>''4 5
(''5 6
GetEditorShapeType''6 H
(''H I
context''I P
)''P Q
,''Q R
model''S X
=>''Y [
{(( 
var)) 
settings)) 
=)) 
context)) &
.))& '
PartFieldDefinition))' :
.)): ;
GetSettings)); F
<))F G
LinkFieldSettings))G X
>))X Y
())Y Z
)))Z [
;))[ \
model** 
.** 
Url** 
=** 
context** #
.**# $
IsNew**$ )
?*** +
settings**, 4
.**4 5

DefaultUrl**5 ?
:**@ A
field**B G
.**G H
Url**H K
;**K L
model++ 
.++ 
Text++ 
=++ 
context++ $
.++$ %
IsNew++% *
?+++ ,
settings++- 5
.++5 6
DefaultText++6 A
:++B C
field++D I
.++I J
Text++J N
;++N O
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
;// 
}00 	
public22 
override22 
async22 
Task22 "
<22" #
IDisplayResult22# 1
>221 2
UpdateAsync223 >
(22> ?
	LinkField22? H
field22I N
,22N O
IUpdateModel22P \
updater22] d
,22d e$
UpdateFieldEditorContext22f ~
context	22 Ü
)
22Ü á
{33 	
var44 
modelUpdated44 
=44 
await44 $
updater44% ,
.44, -
TryUpdateModelAsync44- @
(44@ A
field44A F
,44F G
Prefix44H N
,44N O
f44P Q
=>44R T
f44U V
.44V W
Url44W Z
,44Z [
f44\ ]
=>44^ `
f44a b
.44b c
Text44c g
)44g h
;44h i
if66 
(66 
modelUpdated66 
)66 
{77 
var88 
settings88 
=88 
context88 &
.88& '
PartFieldDefinition88' :
.88: ;
GetSettings88; F
<88F G
LinkFieldSettings88G X
>88X Y
(88Y Z
)88Z [
;88[ \
var:: 
urlToValidate:: !
=::" #
field::$ )
.::) *
Url::* -
;::- .
if;; 
(;; 
!;; 
string;; 
.;; 
IsNullOrEmpty;; )
(;;) *
urlToValidate;;* 7
);;7 8
);;8 9
{<< 
var== 
indexAnchor== #
===$ %
urlToValidate==& 3
.==3 4
IndexOf==4 ;
(==; <
$char==< ?
)==? @
;==@ A
if>> 
(>> 
indexAnchor>> #
>>>$ %
->>& '
$num>>' (
)>>( )
{?? 
urlToValidate@@ %
=@@& '
urlToValidate@@( 5
.@@5 6
	Substring@@6 ?
(@@? @
$num@@@ A
,@@A B
indexAnchor@@C N
)@@N O
;@@O P
}AA 
}BB 
ifEE 
(EE 
settingsEE 
.EE 
RequiredEE %
&&EE& (
StringEE) /
.EE/ 0
IsNullOrWhiteSpaceEE0 B
(EEB C
fieldEEC H
.EEH I
UrlEEI L
)EEL M
)EEM N
{FF 
updaterGG 
.GG 

ModelStateGG &
.GG& '
AddModelErrorGG' 4
(GG4 5
PrefixGG5 ;
,GG; <
nameofGG= C
(GGC D
fieldGGD I
.GGI J
UrlGGJ M
)GGM N
,GGN O
SGGP Q
[GGQ R
$strGGR p
,GGp q
contextGGr y
.GGy z 
PartFieldDefinition	GGz ç
.
GGç é
DisplayName
GGé ô
(
GGô ö
)
GGö õ
]
GGõ ú
)
GGú ù
;
GGù û
}HH 
elseII 
ifII 
(II 
!II 
stringII  
.II  !
IsNullOrWhiteSpaceII! 3
(II3 4
fieldII4 9
.II9 :
UrlII: =
)II= >
&&II? A
!IIB C
UriIIC F
.IIF G!
IsWellFormedUriStringIIG \
(II\ ]
urlToValidateII] j
,IIj k
UriKindIIl s
.IIs t
RelativeOrAbsolute	IIt Ü
)
IIÜ á
)
IIá à
{JJ 
updaterKK 
.KK 

ModelStateKK &
.KK& '
AddModelErrorKK' 4
(KK4 5
PrefixKK5 ;
,KK; <
nameofKK= C
(KKC D
fieldKKD I
.KKI J
UrlKKJ M
)KKM N
,KKN O
SKKP Q
[KKQ R
$strKKR j
,KKj k
fieldKKl q
.KKq r
UrlKKr u
]KKu v
)KKv w
;KKw x
}LL 
ifOO 
(OO 
settingsOO 
.OO 
LinkTextModeOO )
==OO* ,
LinkTextModeOO- 9
.OO9 :
RequiredOO: B
&&OOC E
stringOOF L
.OOL M
IsNullOrWhiteSpaceOOM _
(OO_ `
fieldOO` e
.OOe f
TextOOf j
)OOj k
)OOk l
{PP 
updaterQQ 
.QQ 

ModelStateQQ &
.QQ& '
AddModelErrorQQ' 4
(QQ4 5
PrefixQQ5 ;
,QQ; <
nameofQQ= C
(QQC D
fieldQQD I
.QQI J
TextQQJ N
)QQN O
,QQO P
SQQQ R
[QQR S
$strQQS w
,QQw x
context	QQy Ä
.
QQÄ Å!
PartFieldDefinition
QQÅ î
.
QQî ï
DisplayName
QQï †
(
QQ† °
)
QQ° ¢
]
QQ¢ £
)
QQ£ §
;
QQ§ •
}RR 
elseSS 
ifSS 
(SS 
settingsSS !
.SS! "
LinkTextModeSS" .
==SS/ 1
LinkTextModeSS2 >
.SS> ?
StaticSS? E
&&SSF H
stringSSI O
.SSO P
IsNullOrWhiteSpaceSSP b
(SSb c
settingsSSc k
.SSk l
DefaultTextSSl w
)SSw x
)SSx y
{TT 
updaterUU 
.UU 

ModelStateUU &
.UU& '
AddModelErrorUU' 4
(UU4 5
PrefixUU5 ;
,UU; <
nameofUU= C
(UUC D
fieldUUD I
.UUI J
TextUUJ N
)UUN O
,UUO P
SUUQ R
[UUR S
$str	UUS Ä
,
UUÄ Å
context
UUÇ â
.
UUâ ä!
PartFieldDefinition
UUä ù
.
UUù û
DisplayName
UUû ©
(
UU© ™
)
UU™ ´
]
UU´ ¨
)
UU¨ ≠
;
UU≠ Æ
}VV 
}ZZ 
return\\ 
Edit\\ 
(\\ 
field\\ 
,\\ 
context\\ &
)\\& '
;\\' (
}]] 	
}^^ 
}__ ãN
≥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\LocalizationSetContentPickerFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
[ 
RequireFeatures 
( 
$str 6
)6 7
]7 8
public 

class :
.LocalizationSetContentPickerFieldDisplayDriver ?
:@ A%
ContentFieldDisplayDriverB [
<[ \-
!LocalizationSetContentPickerField\ }
>} ~
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly '
IContentLocalizationManager 4'
_contentLocalizationManager5 P
;P Q
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public :
.LocalizationSetContentPickerFieldDisplayDriver =
(= >
IContentManager 
contentManager *
,* +
IStringLocalizer 
< :
.LocalizationSetContentPickerFieldDisplayDriver K
>K L
	localizerM V
,V W'
IContentLocalizationManager '&
contentLocalizationManager( B
)B C
{ 	
_contentManager   
=   
contentManager   ,
;  , -
S!! 
=!! 
	localizer!! 
;!! '
_contentLocalizationManager"" '
=""( )&
contentLocalizationManager""* D
;""D E
}## 	
public%% 
override%% 
IDisplayResult%% &
Display%%' .
(%%. /-
!LocalizationSetContentPickerField%%/ P
field%%Q V
,%%V W$
BuildFieldDisplayContext%%X p
context%%q x
)%%x y
{&& 	
return'' 

Initialize'' 
<'' =
1DisplayLocalizationSetContentPickerFieldViewModel'' O
>''O P
(''P Q
GetDisplayShapeType''Q d
(''d e
context''e l
)''l m
,''m n
model''o t
=>''u w
{(( 
model)) 
.)) 
Field)) 
=)) 
field)) #
;))# $
model** 
.** 
Part** 
=** 
context** $
.**$ %
ContentPart**% 0
;**0 1
model++ 
.++ 
PartFieldDefinition++ )
=++* +
context++, 3
.++3 4
PartFieldDefinition++4 G
;++G H
},, 
),, 
.-- 
Location-- 
(-- 
$str-- 
,-- 
$str--  )
)--) *
... 
Location.. 
(.. 
$str.. 
,..  
$str..! *
)..* +
;..+ ,
}// 	
public11 
override11 
IDisplayResult11 &
Edit11' +
(11+ ,-
!LocalizationSetContentPickerField11, M
field11N S
,11S T#
BuildFieldEditorContext11U l
context11m t
)11t u
{22 	
return33 

Initialize33 
<33 :
.EditLocalizationSetContentPickerFieldViewModel33 L
>33L M
(33M N
GetEditorShapeType33N `
(33` a
context33a h
)33h i
,33i j
async33k p
model33q v
=>33w y
{44 
model55 
.55 
LocalizationSets55 &
=55' (
string55) /
.55/ 0
Join550 4
(554 5
$str555 8
,558 9
field55: ?
.55? @
LocalizationSets55@ P
)55P Q
;55Q R
model77 
.77 
Field77 
=77 
field77 #
;77# $
model88 
.88 
Part88 
=88 
context88 $
.88$ %
ContentPart88% 0
;880 1
model99 
.99 
PartFieldDefinition99 )
=99* +
context99, 3
.993 4
PartFieldDefinition994 G
;99G H
model;; 
.;; 
SelectedItems;; #
=;;$ %
new;;& )
List;;* .
<;;. /'
VueMultiselectItemViewModel;;/ J
>;;J K
(;;K L
);;L M
;;;M N
foreach== 
(== 
var== 
kvp==  
in==! #
await==$ )'
_contentLocalizationManager==* E
.==E F&
GetFirstItemIdForSetsAsync==F `
(==` a
field==a f
.==f g
LocalizationSets==g w
)==w x
)==x y
{>> 
var?? 
contentItem?? #
=??$ %
await??& +
_contentManager??, ;
.??; <
GetAsync??< D
(??D E
kvp??E H
.??H I
Value??I N
,??N O
VersionOptions??P ^
.??^ _
Latest??_ e
)??e f
;??f g
ifAA 
(AA 
contentItemAA #
==AA$ &
nullAA' +
)AA+ ,
{BB 
continueCC  
;CC  !
}DD 
modelFF 
.FF 
SelectedItemsFF '
.FF' (
AddFF( +
(FF+ ,
newFF, /'
VueMultiselectItemViewModelFF0 K
{GG 
IdHH 
=HH 
kvpHH  
.HH  !
KeyHH! $
,HH$ %
DisplayTextII #
=II$ %
contentItemII& 1
.II1 2
ToStringII2 :
(II: ;
)II; <
,II< =
HasPublishedJJ $
=JJ% &
awaitJJ' ,
_contentManagerJJ- <
.JJ< =$
HasPublishedVersionAsyncJJ= U
(JJU V
contentItemJJV a
)JJa b
}KK 
)KK 
;KK 
}LL 
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
(PP> ?-
!LocalizationSetContentPickerFieldPP? `
fieldPPa f
,PPf g
IUpdateModelPPh t
updaterPPu |
,PP| }%
UpdateFieldEditorContext	PP~ ñ
context
PPó û
)
PPû ü
{QQ 	
varRR 
	viewModelRR 
=RR 
newRR :
.EditLocalizationSetContentPickerFieldViewModelRR  N
(RRN O
)RRO P
;RRP Q
varTT 
modelUpdatedTT 
=TT 
awaitTT $
updaterTT% ,
.TT, -
TryUpdateModelAsyncTT- @
(TT@ A
	viewModelTTA J
,TTJ K
PrefixTTL R
,TTR S
fTTT U
=>TTV X
fTTY Z
.TTZ [
LocalizationSetsTT[ k
)TTk l
;TTl m
ifVV 
(VV 
!VV 
modelUpdatedVV 
)VV 
{WW 
returnXX 
EditXX 
(XX 
fieldXX !
,XX! "
contextXX# *
)XX* +
;XX+ ,
}YY 
field[[ 
.[[ 
LocalizationSets[[ "
=[[# $
	viewModel[[% .
.[[. /
LocalizationSets[[/ ?
==[[@ B
null[[C G
?\\ 
new\\ 
string\\ 
[\\ 
$num\\ 
]\\ 
:\\  !
	viewModel\\" +
.\\+ ,
LocalizationSets\\, <
.\\< =
Split\\= B
(\\B C
$char\\C F
,\\F G
StringSplitOptions\\H Z
.\\Z [
RemoveEmptyEntries\\[ m
)\\m n
;\\n o
var^^ 
settings^^ 
=^^ 
context^^ "
.^^" #
PartFieldDefinition^^# 6
.^^6 7
GetSettings^^7 B
<^^B C5
)LocalizationSetContentPickerFieldSettings^^C l
>^^l m
(^^m n
)^^n o
;^^o p
if`` 
(`` 
settings`` 
.`` 
Required`` !
&&``" $
field``% *
.``* +
LocalizationSets``+ ;
.``; <
Length``< B
==``C E
$num``F G
)``G H
{aa 
updaterbb 
.bb 

ModelStatebb "
.bb" #
AddModelErrorbb# 0
(bb0 1
Prefixbb1 7
,bb7 8
nameofbb9 ?
(bb? @
fieldbb@ E
.bbE F
LocalizationSetsbbF V
)bbV W
,bbW X
SbbY Z
[bbZ [
$strbb[ w
,bbw x
context	bby Ä
.
bbÄ Å!
PartFieldDefinition
bbÅ î
.
bbî ï
DisplayName
bbï †
(
bb† °
)
bb° ¢
]
bb¢ £
)
bb£ §
;
bb§ •
}cc 
ifee 
(ee 
!ee 
settingsee 
.ee 
Multipleee "
&&ee# %
fieldee& +
.ee+ ,
LocalizationSetsee, <
.ee< =
Lengthee= C
>eeD E
$numeeF G
)eeG H
{ff 
updatergg 
.gg 

ModelStategg "
.gg" #
AddModelErrorgg# 0
(gg0 1
Prefixgg1 7
,gg7 8
nameofgg9 ?
(gg? @
fieldgg@ E
.ggE F
LocalizationSetsggF V
)ggV W
,ggW X
SggY Z
[ggZ [
$str	gg[ â
,
ggâ ä
context
ggã í
.
ggí ì!
PartFieldDefinition
ggì ¶
.
gg¶ ß
DisplayName
ggß ≤
(
gg≤ ≥
)
gg≥ ¥
]
gg¥ µ
)
ggµ ∂
;
gg∂ ∑
}hh 
returnjj 
Editjj 
(jj 
fieldjj 
,jj 
contextjj &
)jj& '
;jj' (
}kk 	
}ll 
}mm Õ9
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\MultiTextFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class '
MultiTextFieldDisplayDriver ,
:- .%
ContentFieldDisplayDriver/ H
<H I
MultiTextFieldI W
>W X
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public '
MultiTextFieldDisplayDriver *
(* +
IStringLocalizer+ ;
<; <'
MultiTextFieldDisplayDriver< W
>W X
	localizerY b
)b c
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
MultiTextField/ =
field> C
,C D$
BuildFieldDisplayContextE ]
context^ e
)e f
{ 	
return 

Initialize 
< *
DisplayMultiTextFieldViewModel <
>< =
(= >
GetDisplayShapeType> Q
(Q R
contextR Y
)Y Z
,Z [
model\ a
=>b d
{ 
var 
settings 
= 
context &
.& '
PartFieldDefinition' :
.: ;
GetSettings; F
<F G"
MultiTextFieldSettingsG ]
>] ^
(^ _
)_ `
;` a
model!! 
.!! 
Values!! 
=!! 
settings!! '
.!!' (
Options!!( /
.!!/ 0
Where!!0 5
(!!5 6
o!!6 7
=>!!8 :
field!!; @
.!!@ A
Values!!A G
.!!G H
Contains!!H P
(!!P Q
o!!Q R
.!!R S
Value!!S X
)!!X Y
)!!Y Z
.!!Z [
Select!![ a
(!!a b
o!!b c
=>!!d f
o!!g h
.!!h i
Value!!i n
)!!n o
.!!o p
ToArray!!p w
(!!w x
)!!x y
;!!y z
model"" 
."" 
Field"" 
="" 
field"" #
;""# $
model## 
.## 
Part## 
=## 
context## $
.##$ %
ContentPart##% 0
;##0 1
model$$ 
.$$ 
PartFieldDefinition$$ )
=$$* +
context$$, 3
.$$3 4
PartFieldDefinition$$4 G
;$$G H
}%% 
)%% 
.&& 
Location&& 
(&& 
$str&& 
,&& 
$str&&  )
)&&) *
.'' 
Location'' 
('' 
$str'' 
,''  
$str''! *
)''* +
;''+ ,
}(( 	
public** 
override** 
IDisplayResult** &
Edit**' +
(**+ ,
MultiTextField**, :
field**; @
,**@ A#
BuildFieldEditorContext**B Y
context**Z a
)**a b
{++ 	
return,, 

Initialize,, 
<,, '
EditMultiTextFieldViewModel,, 9
>,,9 :
(,,: ;
GetEditorShapeType,,; M
(,,M N
context,,N U
),,U V
,,,V W
model,,X ]
=>,,^ `
{-- 
if.. 
(.. 
context.. 
... 
IsNew.. !
)..! "
{// 
var00 
settings00  
=00! "
context00# *
.00* +
PartFieldDefinition00+ >
.00> ?
GetSettings00? J
<00J K"
MultiTextFieldSettings00K a
>00a b
(00b c
)00c d
;00d e
model11 
.11 
Values11  
=11! "
settings11# +
.11+ ,
Options11, 3
.113 4
Where114 9
(119 :
o11: ;
=>11< >
o11? @
.11@ A
Default11A H
)11H I
.11I J
Select11J P
(11P Q
o11Q R
=>11S U
o11V W
.11W X
Value11X ]
)11] ^
.11^ _
ToArray11_ f
(11f g
)11g h
;11h i
}22 
else33 
{44 
model55 
.55 
Values55  
=55! "
field55# (
.55( )
Values55) /
;55/ 0
}66 
model77 
.77 
Field77 
=77 
field77 #
;77# $
model88 
.88 
Part88 
=88 
context88 $
.88$ %
ContentPart88% 0
;880 1
model99 
.99 
PartFieldDefinition99 )
=99* +
context99, 3
.993 4
PartFieldDefinition994 G
;99G H
}:: 
):: 
;:: 
};; 	
public== 
override== 
async== 
Task== "
<==" #
IDisplayResult==# 1
>==1 2
UpdateAsync==3 >
(==> ?
MultiTextField==? M
field==N S
,==S T
IUpdateModel==U a
updater==b i
,==i j%
UpdateFieldEditorContext	==k É
context
==Ñ ã
)
==ã å
{>> 	
var?? 
	viewModel?? 
=?? 
new?? '
EditMultiTextFieldViewModel??  ;
(??; <
)??< =
;??= >
if@@ 
(@@ 
await@@ 
updater@@ 
.@@ 
TryUpdateModelAsync@@ 1
(@@1 2
	viewModel@@2 ;
,@@; <
Prefix@@= C
)@@C D
)@@D E
{AA 
fieldBB 
.BB 
ValuesBB 
=BB 
	viewModelBB (
.BB( )
ValuesBB) /
;BB/ 0
varDD 
settingsDD 
=DD 
contextDD &
.DD& '
PartFieldDefinitionDD' :
.DD: ;
GetSettingsDD; F
<DDF G"
MultiTextFieldSettingsDDG ]
>DD] ^
(DD^ _
)DD_ `
;DD` a
ifEE 
(EE 
settingsEE 
.EE 
RequiredEE %
&&EE& (
!EE) *
	viewModelEE* 3
.EE3 4
ValuesEE4 :
.EE: ;
AnyEE; >
(EE> ?
)EE? @
)EE@ A
{FF 
updaterGG 
.GG 

ModelStateGG &
.GG& '
AddModelErrorGG' 4
(GG4 5
PrefixGG5 ;
,GG; <
nameofGG= C
(GGC D
fieldGGD I
.GGI J
ValuesGGJ P
)GGP Q
,GGQ R
SGGS T
[GGT U
$strGGU s
,GGs t
contextGGu |
.GG| } 
PartFieldDefinition	GG} ê
.
GGê ë
DisplayName
GGë ú
(
GGú ù
)
GGù û
]
GGû ü
)
GGü †
;
GG† °
}HH 
}II 
returnKK 
EditKK 
(KK 
fieldKK 
,KK 
contextKK &
)KK& '
;KK' (
}LL 	
}MM 
}NN †T
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\NumericFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class %
NumericFieldDisplayDriver *
:+ ,%
ContentFieldDisplayDriver- F
<F G
NumericFieldG S
>S T
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public %
NumericFieldDisplayDriver (
(( )
IStringLocalizer) 9
<9 :%
NumericFieldDisplayDriver: S
>S T
	localizerU ^
)^ _
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
NumericField/ ;
field< A
,A B$
BuildFieldDisplayContextC [
context\ c
)c d
{ 	
return 

Initialize 
< (
DisplayNumericFieldViewModel :
>: ;
(; <
GetDisplayShapeType< O
(O P
contextP W
)W X
,X Y
modelZ _
=>` b
{ 
model 
. 
Field 
= 
field #
;# $
model 
. 
Part 
= 
context $
.$ %
ContentPart% 0
;0 1
model   
.   
PartFieldDefinition   )
=  * +
context  , 3
.  3 4
PartFieldDefinition  4 G
;  G H
}!! 
)!! 
."" 
Location"" 
("" 
$str"" 
,"" 
$str""  )
)"") *
.## 
Location## 
(## 
$str## 
,##  
$str##! *
)##* +
;##+ ,
}$$ 	
public&& 
override&& 
IDisplayResult&& &
Edit&&' +
(&&+ ,
NumericField&&, 8
field&&9 >
,&&> ?#
BuildFieldEditorContext&&@ W
context&&X _
)&&_ `
{'' 	
return(( 

Initialize(( 
<(( %
EditNumericFieldViewModel(( 7
>((7 8
(((8 9
GetEditorShapeType((9 K
(((K L
context((L S
)((S T
,((T U
model((V [
=>((\ ^
{)) 
var** 
settings** 
=** 
context** &
.**& '
PartFieldDefinition**' :
.**: ;
GetSettings**; F
<**F G 
NumericFieldSettings**G [
>**[ \
(**\ ]
)**] ^
;**^ _
model++ 
.++ 
Value++ 
=++ 
context++ %
.++% &
IsNew++& +
?++, -
settings++. 6
.++6 7
DefaultValue++7 C
:++D E
Convert++F M
.++M N
ToString++N V
(++V W
field++W \
.++\ ]
Value++] b
,++b c
CultureInfo++d o
.++o p
CurrentUICulture	++p Ä
)
++Ä Å
;
++Å Ç
model-- 
.-- 
Field-- 
=-- 
field-- #
;--# $
model.. 
... 
Part.. 
=.. 
context.. $
...$ %
ContentPart..% 0
;..0 1
model// 
.// 
PartFieldDefinition// )
=//* +
context//, 3
.//3 4
PartFieldDefinition//4 G
;//G H
}00 
)00 
;00 
}11 	
public33 
override33 
async33 
Task33 "
<33" #
IDisplayResult33# 1
>331 2
UpdateAsync333 >
(33> ?
NumericField33? K
field33L Q
,33Q R
IUpdateModel33S _
updater33` g
,33g h%
UpdateFieldEditorContext	33i Å
context
33Ç â
)
33â ä
{44 	
var55 
	viewModel55 
=55 
new55 %
EditNumericFieldViewModel55  9
(559 :
)55: ;
;55; <
bool77 
modelUpdated77 
=77 
await77  %
updater77& -
.77- .
TryUpdateModelAsync77. A
(77A B
	viewModel77B K
,77K L
Prefix77M S
,77S T
f77U V
=>77W Y
f77Z [
.77[ \
Value77\ a
)77a b
;77b c
if99 
(99 
modelUpdated99 
)99 
{:: 
decimal;; 
value;; 
;;; 
var== 
settings== 
=== 
context== &
.==& '
PartFieldDefinition==' :
.==: ;
GetSettings==; F
<==F G 
NumericFieldSettings==G [
>==[ \
(==\ ]
)==] ^
;==^ _
field?? 
.?? 
Value?? 
=?? 
null?? "
;??" #
ifAA 
(AA 
stringAA 
.AA 
IsNullOrWhiteSpaceAA -
(AA- .
	viewModelAA. 7
.AA7 8
ValueAA8 =
)AA= >
)AA> ?
{BB 
ifCC 
(CC 
settingsCC  
.CC  !
RequiredCC! )
)CC) *
{DD 
updaterEE 
.EE  

ModelStateEE  *
.EE* +
AddModelErrorEE+ 8
(EE8 9
PrefixEE9 ?
,EE? @
nameofEEA G
(EEG H
fieldEEH M
.EEM N
ValueEEN S
)EES T
,EET U
SEEV W
[EEW X
$strEEX t
,EEt u
contextEEv }
.EE} ~ 
PartFieldDefinition	EE~ ë
.
EEë í
DisplayName
EEí ù
(
EEù û
)
EEû ü
]
EEü †
)
EE† °
;
EE° ¢
}FF 
}GG 
elseHH 
ifHH 
(HH 
!HH 
decimalHH !
.HH! "
TryParseHH" *
(HH* +
	viewModelHH+ 4
.HH4 5
ValueHH5 :
,HH: ;
NumberStylesHH< H
.HHH I
AnyHHI L
,HHL M
CultureInfoHHN Y
.HHY Z
CurrentUICultureHHZ j
,HHj k
outHHl o
valueHHp u
)HHu v
)HHv w
{II 
updaterJJ 
.JJ 

ModelStateJJ &
.JJ& '
AddModelErrorJJ' 4
(JJ4 5
PrefixJJ5 ;
,JJ; <
nameofJJ= C
(JJC D
fieldJJD I
.JJI J
ValueJJJ O
)JJO P
,JJP Q
SJJR S
[JJS T
$strJJT o
,JJo p
contextJJq x
.JJx y 
PartFieldDefinition	JJy å
.
JJå ç
DisplayName
JJç ò
(
JJò ô
)
JJô ö
]
JJö õ
)
JJõ ú
;
JJú ù
}KK 
elseLL 
{MM 
fieldNN 
.NN 
ValueNN 
=NN  !
valueNN" '
;NN' (
ifPP 
(PP 
settingsPP  
.PP  !
MinimumPP! (
.PP( )
HasValuePP) 1
&&PP2 4
valuePP5 :
<PP; <
settingsPP= E
.PPE F
MinimumPPF M
.PPM N
ValuePPN S
)PPS T
{QQ 
updaterRR 
.RR  

ModelStateRR  *
.RR* +
AddModelErrorRR+ 8
(RR8 9
PrefixRR9 ?
,RR? @
nameofRRA G
(RRG H
fieldRRH M
.RRM N
ValueRRN S
)RRS T
,RRT U
SRRV W
[RRW X
$strRRX }
,RR} ~
settings	RR á
.
RRá à
Minimum
RRà è
.
RRè ê
Value
RRê ï
]
RRï ñ
)
RRñ ó
;
RRó ò
}SS 
ifUU 
(UU 
settingsUU  
.UU  !
MaximumUU! (
.UU( )
HasValueUU) 1
&&UU2 4
valueUU5 :
>UU; <
settingsUU= E
.UUE F
MaximumUUF M
.UUM N
ValueUUN S
)UUS T
{VV 
updaterWW 
.WW  

ModelStateWW  *
.WW* +
AddModelErrorWW+ 8
(WW8 9
PrefixWW9 ?
,WW? @
nameofWWA G
(WWG H
fieldWWH M
.WWM N
ValueWWN S
)WWS T
,WWT U
SWWV W
[WWW X
$strWWX z
,WWz {
settings	WW| Ñ
.
WWÑ Ö
Maximum
WWÖ å
.
WWå ç
Value
WWç í
]
WWí ì
)
WWì î
;
WWî ï
}XX 
if[[ 
([[ 
Math[[ 
.[[ 
Round[[ "
([[" #
value[[# (
,[[( )
settings[[* 2
.[[2 3
Scale[[3 8
)[[8 9
!=[[: <
value[[= B
)[[B C
{\\ 
if]] 
(]] 
settings]] $
.]]$ %
Scale]]% *
==]]+ -
$num]]. /
)]]/ 0
{^^ 
updater__ #
.__# $

ModelState__$ .
.__. /
AddModelError__/ <
(__< =
Prefix__= C
,__C D
nameof__E K
(__K L
field__L Q
.__Q R
Value__R W
)__W X
,__X Y
S__Z [
[__[ \
$str__\ 
,	__ Ä
context
__Å à
.
__à â!
PartFieldDefinition
__â ú
.
__ú ù
DisplayName
__ù ®
(
__® ©
)
__© ™
]
__™ ´
)
__´ ¨
;
__¨ ≠
}`` 
elseaa 
{bb 
updatercc #
.cc# $

ModelStatecc$ .
.cc. /
AddModelErrorcc/ <
(cc< =
Prefixcc= C
,ccC D
nameofccE K
(ccK L
fieldccL Q
.ccQ R
ValueccR W
)ccW X
,ccX Y
SccZ [
[cc[ \
$str	cc\ ë
,
ccë í
context
ccì ö
.
ccö õ!
PartFieldDefinition
ccõ Æ
.
ccÆ Ø
DisplayName
ccØ ∫
(
cc∫ ª
)
ccª º
,
ccº Ω
settings
ccæ ∆
.
cc∆ «
Scale
cc« Ã
]
ccÃ Õ
)
ccÕ Œ
;
ccŒ œ
}dd 
}ee 
}ff 
}gg 
returnii 
Editii 
(ii 
fieldii 
,ii 
contextii &
)ii& '
;ii' (
}jj 	
}kk 
}ll ó)
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\TextFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class "
TextFieldDisplayDriver '
:( )%
ContentFieldDisplayDriver* C
<C D
	TextFieldD M
>M N
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public "
TextFieldDisplayDriver %
(% &
IStringLocalizer& 6
<6 7"
TextFieldDisplayDriver7 M
>M N
	localizerO X
)X Y
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
	TextField/ 8
field9 >
,> ?$
BuildFieldDisplayContext@ X
contextY `
)` a
{ 	
return 

Initialize 
< %
DisplayTextFieldViewModel 7
>7 8
(8 9
GetDisplayShapeType9 L
(L M
contextM T
)T U
,U V
modelW \
=>] _
{ 
model 
. 
Field 
= 
field #
;# $
model 
. 
Part 
= 
context $
.$ %
ContentPart% 0
;0 1
model 
. 
PartFieldDefinition )
=* +
context, 3
.3 4
PartFieldDefinition4 G
;G H
}   
)   
.!! 
Location!! 
(!! 
$str!! 
,!! 
$str!!  )
)!!) *
."" 
Location"" 
("" 
$str"" 
,""  
$str""! *
)""* +
;""+ ,
}## 	
public%% 
override%% 
IDisplayResult%% &
Edit%%' +
(%%+ ,
	TextField%%, 5
field%%6 ;
,%%; <#
BuildFieldEditorContext%%= T
context%%U \
)%%\ ]
{&& 	
return'' 

Initialize'' 
<'' "
EditTextFieldViewModel'' 4
>''4 5
(''5 6
GetEditorShapeType''6 H
(''H I
context''I P
)''P Q
,''Q R
model''S X
=>''Y [
{(( 
model)) 
.)) 
Text)) 
=)) 
field)) "
.))" #
Text))# '
;))' (
model** 
.** 
Field** 
=** 
field** #
;**# $
model++ 
.++ 
Part++ 
=++ 
context++ $
.++$ %
ContentPart++% 0
;++0 1
model,, 
.,, 
PartFieldDefinition,, )
=,,* +
context,,, 3
.,,3 4
PartFieldDefinition,,4 G
;,,G H
}-- 
)-- 
;-- 
}.. 	
public00 
override00 
async00 
Task00 "
<00" #
IDisplayResult00# 1
>001 2
UpdateAsync003 >
(00> ?
	TextField00? H
field00I N
,00N O
IUpdateModel00P \
updater00] d
,00d e$
UpdateFieldEditorContext00f ~
context	00 Ü
)
00Ü á
{11 	
if22 
(22 
await22 
updater22 
.22 
TryUpdateModelAsync22 1
(221 2
field222 7
,227 8
Prefix229 ?
,22? @
f22A B
=>22C E
f22F G
.22G H
Text22H L
)22L M
)22M N
{33 
var44 
settings44 
=44 
context44 &
.44& '
PartFieldDefinition44' :
.44: ;
GetSettings44; F
<44F G
TextFieldSettings44G X
>44X Y
(44Y Z
)44Z [
;44[ \
if55 
(55 
settings55 
.55 
Required55 %
&&55& (
String55) /
.55/ 0
IsNullOrWhiteSpace550 B
(55B C
field55C H
.55H I
Text55I M
)55M N
)55N O
{66 
updater77 
.77 

ModelState77 &
.77& '
AddModelError77' 4
(774 5
Prefix775 ;
,77; <
nameof77= C
(77C D
field77D I
.77I J
Text77J N
)77N O
,77O P
S77Q R
[77R S
$str77S q
,77q r
context77s z
.77z { 
PartFieldDefinition	77{ é
.
77é è
DisplayName
77è ö
(
77ö õ
)
77õ ú
]
77ú ù
)
77ù û
;
77û ü
}88 
}99 
return;; 
Edit;; 
(;; 
field;; 
,;; 
context;; &
);;& '
;;;' (
}<< 	
}== 
}>> ›(
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\TimeFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class "
TimeFieldDisplayDriver '
:( )%
ContentFieldDisplayDriver* C
<C D
	TimeFieldD M
>M N
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public "
TimeFieldDisplayDriver %
(% &
IStringLocalizer& 6
<6 7"
TimeFieldDisplayDriver7 M
>M N
	localizerO X
)X Y
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
	TimeField/ 8
field9 >
,> ?$
BuildFieldDisplayContext@ X
contextY `
)` a
{ 	
return 

Initialize 
< %
DisplayTimeFieldViewModel 7
>7 8
(8 9
GetDisplayShapeType9 L
(L M
contextM T
)T U
,U V
modelW \
=>] _
{ 
model 
. 
Field 
= 
field #
;# $
model 
. 
Part 
= 
context $
.$ %
ContentPart% 0
;0 1
model 
. 
PartFieldDefinition )
=* +
context, 3
.3 4
PartFieldDefinition4 G
;G H
} 
) 
.   
Location   
(   
$str   
,   
$str    )
)  ) *
.!! 
Location!! 
(!! 
$str!! 
,!!  
$str!!! *
)!!* +
;!!+ ,
}"" 	
public$$ 
override$$ 
IDisplayResult$$ &
Edit$$' +
($$+ ,
	TimeField$$, 5
field$$6 ;
,$$; <#
BuildFieldEditorContext$$= T
context$$U \
)$$\ ]
{%% 	
return&& 

Initialize&& 
<&& "
EditTimeFieldViewModel&& 4
>&&4 5
(&&5 6
GetEditorShapeType&&6 H
(&&H I
context&&I P
)&&P Q
,&&Q R
model&&S X
=>&&Y [
{'' 
model(( 
.(( 
Value(( 
=(( 
field(( #
.((# $
Value(($ )
;(() *
model)) 
.)) 
Field)) 
=)) 
field)) #
;))# $
model** 
.** 
Part** 
=** 
context** $
.**$ %
ContentPart**% 0
;**0 1
model++ 
.++ 
PartFieldDefinition++ )
=++* +
context++, 3
.++3 4
PartFieldDefinition++4 G
;++G H
},, 
),, 
;,, 
}-- 	
public// 
override// 
async// 
Task// "
<//" #
IDisplayResult//# 1
>//1 2
UpdateAsync//3 >
(//> ?
	TimeField//? H
field//I N
,//N O
IUpdateModel//P \
updater//] d
,//d e$
UpdateFieldEditorContext//f ~
context	// Ü
)
//Ü á
{00 	
if11 
(11 
await11 
updater11 
.11 
TryUpdateModelAsync11 1
(111 2
field112 7
,117 8
Prefix119 ?
,11? @
f11A B
=>11C E
f11F G
.11G H
Value11H M
)11M N
)11N O
{22 
var33 
settings33 
=33 
context33 &
.33& '
PartFieldDefinition33' :
.33: ;
GetSettings33; F
<33F G
TimeFieldSettings33G X
>33X Y
(33Y Z
)33Z [
;33[ \
if44 
(44 
settings44 
.44 
Required44 %
&&44& (
field44) .
.44. /
Value44/ 4
==445 7
null448 <
)44< =
{55 
updater66 
.66 

ModelState66 &
.66& '
AddModelError66' 4
(664 5
Prefix665 ;
,66; <
nameof66= C
(66C D
field66D I
.66I J
Value66J O
)66O P
,66P Q
S66R S
[66S T
$str66T r
,66r s
context66t {
.66{ | 
PartFieldDefinition	66| è
.
66è ê
DisplayName
66ê õ
(
66õ ú
)
66ú ù
]
66ù û
)
66û ü
;
66ü †
}77 
}88 
return:: 
Edit:: 
(:: 
field:: 
,:: 
context:: &
)::& '
;::' (
};; 	
}<< 
}== ÍL
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\UserPickerFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class (
UserPickerFieldDisplayDriver -
:. /%
ContentFieldDisplayDriver0 I
<I J
UserPickerFieldJ Y
>Y Z
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public (
UserPickerFieldDisplayDriver +
(+ ,
ISession 
session 
, 
IStringLocalizer 
< (
UserPickerFieldDisplayDriver 9
>9 :
stringLocalizer; J
)J K
{ 	
_session 
= 
session 
; 
S 
= 
stringLocalizer 
;  
}   	
public"" 
override"" 
IDisplayResult"" &
Display""' .
("". /
UserPickerField""/ >
field""? D
,""D E$
BuildFieldDisplayContext""F ^
context""_ f
)""f g
{## 	
return$$ 

Initialize$$ 
<$$ +
DisplayUserPickerFieldViewModel$$ =
>$$= >
($$> ?
GetDisplayShapeType$$? R
($$R S
context$$S Z
)$$Z [
,$$[ \
model$$] b
=>$$c e
{%% 
model&& 
.&& 
Field&& 
=&& 
field&& #
;&&# $
model'' 
.'' 
Part'' 
='' 
context'' $
.''$ %
ContentPart''% 0
;''0 1
model(( 
.(( 
PartFieldDefinition(( )
=((* +
context((, 3
.((3 4
PartFieldDefinition((4 G
;((G H
})) 
))) 
.** 
Location** 
(** 
$str** 
,** 
$str**  )
)**) *
.++ 
Location++ 
(++ 
$str++ 
,++  
$str++! *
)++* +
;+++ ,
},, 	
public.. 
override.. 
IDisplayResult.. &
Edit..' +
(..+ ,
UserPickerField.., ;
field..< A
,..A B#
BuildFieldEditorContext..C Z
context..[ b
)..b c
{// 	
return00 

Initialize00 
<00 (
EditUserPickerFieldViewModel00 :
>00: ;
(00; <
GetEditorShapeType00< N
(00N O
context00O V
)00V W
,00W X
async00Y ^
model00_ d
=>00e g
{11 
model22 
.22 
UserIds22 
=22 
string22  &
.22& '
Join22' +
(22+ ,
$str22, /
,22/ 0
field221 6
.226 7
UserIds227 >
)22> ?
;22? @
model44 
.44 
Field44 
=44 
field44 #
;44# $
model55 
.55 
Part55 
=55 
context55 $
.55$ %
ContentPart55% 0
;550 1
model66 
.66 
PartFieldDefinition66 )
=66* +
context66, 3
.663 4
PartFieldDefinition664 G
;66G H
model77 
.77 
TypePartDefinition77 (
=77) *
context77+ 2
.772 3
TypePartDefinition773 E
;77E F
if99 
(99 
field99 
.99 
UserIds99 !
.99! "
Length99" (
>99) *
$num99+ ,
)99, -
{:: 
var;; 
users;; 
=;; 
await;;  %
_session;;& .
.;;. /
Query;;/ 4
<;;4 5
User;;5 9
,;;9 :
	UserIndex;;; D
>;;D E
(;;E F
);;F G
.;;G H
Where;;H M
(;;M N
x;;N O
=>;;P R
x;;S T
.;;T U
UserId;;U [
.;;[ \
IsIn;;\ `
(;;` a
field;;a f
.;;f g
UserIds;;g n
);;n o
);;o p
.;;p q
	ListAsync;;q z
(;;z {
);;{ |
;;;| }
foreach<< 
(<< 
var<<  
user<<! %
in<<& (
users<<) .
)<<. /
{== 
model>> 
.>> 
SelectedUsers>> +
.>>+ ,
Add>>, /
(>>/ 0
new>>0 3'
VueMultiselectUserViewModel>>4 O
{?? 
Id@@ 
=@@  
user@@! %
.@@% &
UserId@@& ,
,@@, -
DisplayTextAA '
=AA( )
userAA* .
.AA. /
UserNameAA/ 7
,AA7 8
	IsEnabledBB %
=BB& '
userBB( ,
.BB, -
	IsEnabledBB- 6
}CC 
)CC 
;CC 
}DD 
}EE 
}FF 
)FF 
;FF 
}GG 	
publicII 
overrideII 
asyncII 
TaskII "
<II" #
IDisplayResultII# 1
>II1 2
UpdateAsyncII3 >
(II> ?
UserPickerFieldII? N
fieldIIO T
,IIT U
IUpdateModelIIV b
updaterIIc j
,IIj k%
UpdateFieldEditorContext	IIl Ñ
context
IIÖ å
)
IIå ç
{JJ 	
varKK 
	viewModelKK 
=KK 
newKK (
EditUserPickerFieldViewModelKK  <
(KK< =
)KK= >
;KK> ?
ifMM 
(MM 
awaitMM 
updaterMM 
.MM 
TryUpdateModelAsyncMM 1
(MM1 2
	viewModelMM2 ;
,MM; <
PrefixMM= C
,MMC D
fMME F
=>MMG I
fMMJ K
.MMK L
UserIdsMML S
)MMS T
)MMT U
{NN 
fieldOO 
.OO 
UserIdsOO 
=OO 
	viewModelOO  )
.OO) *
UserIdsOO* 1
==OO2 4
nullOO5 9
?PP 
ArrayPP 
.PP 
EmptyPP !
<PP! "
stringPP" (
>PP( )
(PP) *
)PP* +
:PP, -
	viewModelPP. 7
.PP7 8
UserIdsPP8 ?
.PP? @
SplitPP@ E
(PPE F
$charPPF I
,PPI J
StringSplitOptionsPPK ]
.PP] ^
RemoveEmptyEntriesPP^ p
)PPp q
;PPq r
varRR 
settingsRR 
=RR 
contextRR &
.RR& '
PartFieldDefinitionRR' :
.RR: ;
GetSettingsRR; F
<RRF G#
UserPickerFieldSettingsRRG ^
>RR^ _
(RR_ `
)RR` a
;RRa b
ifTT 
(TT 
settingsTT 
.TT 
RequiredTT %
&&TT& (
fieldTT) .
.TT. /
UserIdsTT/ 6
.TT6 7
LengthTT7 =
==TT> @
$numTTA B
)TTB C
{UU 
updaterVV 
.VV 

ModelStateVV &
.VV& '
AddModelErrorVV' 4
(VV4 5
PrefixVV5 ;
,VV; <
nameofVV= C
(VVC D
fieldVVD I
.VVI J
UserIdsVVJ Q
)VVQ R
,VVR S
SVVT U
[VVU V
$strVVV r
,VVr s
contextVVt {
.VV{ | 
PartFieldDefinition	VV| è
.
VVè ê
DisplayName
VVê õ
(
VVõ ú
)
VVú ù
]
VVù û
)
VVû ü
;
VVü †
}WW 
ifYY 
(YY 
!YY 
settingsYY 
.YY 
MultipleYY &
&&YY' )
fieldYY* /
.YY/ 0
UserIdsYY0 7
.YY7 8
LengthYY8 >
>YY? @
$numYYA B
)YYB C
{ZZ 
updater[[ 
.[[ 

ModelState[[ &
.[[& '
AddModelError[[' 4
([[4 5
Prefix[[5 ;
,[[; <
nameof[[= C
([[C D
field[[D I
.[[I J
UserIds[[J Q
)[[Q R
,[[R S
S[[T U
[[[U V
$str	[[V Ñ
,
[[Ñ Ö
context
[[Ü ç
.
[[ç é!
PartFieldDefinition
[[é °
.
[[° ¢
DisplayName
[[¢ ≠
(
[[≠ Æ
)
[[Æ Ø
]
[[Ø ∞
)
[[∞ ±
;
[[± ≤
}\\ 
var^^ 
users^^ 
=^^ 
await^^ !
_session^^" *
.^^* +
Query^^+ 0
<^^0 1
User^^1 5
,^^5 6
	UserIndex^^7 @
>^^@ A
(^^A B
)^^B C
.^^C D
Where^^D I
(^^I J
x^^J K
=>^^L N
x^^O P
.^^P Q
UserId^^Q W
.^^W X
IsIn^^X \
(^^\ ]
field^^] b
.^^b c
UserIds^^c j
)^^j k
)^^k l
.^^l m
	ListAsync^^m v
(^^v w
)^^w x
;^^x y
field__ 
.__ 
SetUserNames__ "
(__" #
users__# (
.__( )
Select__) /
(__/ 0
t__0 1
=>__2 4
t__5 6
.__6 7
UserName__7 ?
)__? @
.__@ A
ToArray__A H
(__H I
)__I J
)__J K
;__K L
}`` 
returnbb 
Editbb 
(bb 
fieldbb 
,bb 
contextbb &
)bb& '
;bb' (
}cc 	
}dd 
}ee ï
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\UserPickerFieldUserNamesDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public		 

class		 1
%UserPickerFieldUserNamesDisplayDriver		 6
:		7 8%
ContentFieldDisplayDriver		9 R
<		R S
UserPickerField		S b
>		b c
{

 
public 
override 
IDisplayResult &
Display' .
(. /
UserPickerField/ >
field? D
,D E$
BuildFieldDisplayContextF ^
context_ f
)f g
{ 	
return 

Initialize 
< 4
(DisplayUserPickerFieldUserNamesViewModel F
>F G
(G H
GetDisplayShapeTypeH [
([ \
context\ c
)c d
,d e
modelf k
=>l n
{ 
model 
. 
Field 
= 
field #
;# $
model 
. 
Part 
= 
context $
.$ %
ContentPart% 0
;0 1
model 
. 
PartFieldDefinition )
=* +
context, 3
.3 4
PartFieldDefinition4 G
;G H
} 
) 
. 
Location 
( 
$str 
, 
$str  )
)) *
. 
Location 
( 
$str 
,  
$str! *
)* +
;+ ,
} 	
} 
} ÛC
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Drivers\YoutubeFieldDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Drivers$ +
{ 
public 

class %
YoutubeFieldDisplayDriver *
:+ ,%
ContentFieldDisplayDriver- F
<F G
YoutubeFieldG S
>S T
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public %
YoutubeFieldDisplayDriver (
(( )
IStringLocalizer) 9
<9 :%
YoutubeFieldDisplayDriver: S
>S T
	localizerU ^
)^ _
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
YoutubeField/ ;
field< A
,A B$
BuildFieldDisplayContextC [
context\ c
)c d
{ 	
return 

Initialize 
< (
YoutubeFieldDisplayViewModel :
>: ;
(; <
GetDisplayShapeType< O
(O P
contextP W
)W X
,X Y
modelZ _
=>` b
{ 
model 
. 
Field 
= 
field #
;# $
model 
. 
Part 
= 
context $
.$ %
ContentPart% 0
;0 1
model   
.   
PartFieldDefinition   )
=  * +
context  , 3
.  3 4
PartFieldDefinition  4 G
;  G H
}!! 
)!! 
."" 
Location"" 
("" 
$str"" 
,"" 
$str""  )
)"") *
.## 
Location## 
(## 
$str## 
,##  
$str##! *
)##* +
;##+ ,
}$$ 	
public&& 
override&& 
IDisplayResult&& &
Edit&&' +
(&&+ ,
YoutubeField&&, 8
field&&9 >
,&&> ?#
BuildFieldEditorContext&&@ W
context&&X _
)&&_ `
{'' 	
return(( 

Initialize(( 
<(( %
EditYoutubeFieldViewModel(( 7
>((7 8
(((8 9
GetEditorShapeType((9 K
(((K L
context((L S
)((S T
,((T U
model((V [
=>((\ ^
{)) 
model** 
.** 

RawAddress** 
=**  !
field**" '
.**' (

RawAddress**( 2
;**2 3
model++ 
.++ 
EmbeddedAddress++ $
=++% &
field++' ,
.++, -
EmbeddedAddress++- <
;++< =
model,, 
.,, 
Field,, 
=,, 
field,, "
;,," #
model-- 
.-- 
Part-- 
=-- 
context-- #
.--# $
ContentPart--$ /
;--/ 0
model.. 
... 
PartFieldDefinition.. (
=..) *
context..+ 2
...2 3
PartFieldDefinition..3 F
;..F G
}// 
)// 
;// 
}00 	
public22 
override22 
async22 
Task22 "
<22" #
IDisplayResult22# 1
>221 2
UpdateAsync223 >
(22> ?
YoutubeField22? K
field22L Q
,22Q R
IUpdateModel22S _
updater22` g
,22g h%
UpdateFieldEditorContext	22i Å
context
22Ç â
)
22â ä
{33 	%
EditYoutubeFieldViewModel44 %
model44& +
=44, -
new44. 1%
EditYoutubeFieldViewModel442 K
(44K L
)44L M
;44M N
if66 
(66 
await66 
updater66 
.66 
TryUpdateModelAsync66 1
(661 2
model662 7
,667 8
Prefix669 ?
)66? @
)66@ A
{77 
var88 
settings88 
=88 
context88 &
.88& '
PartFieldDefinition88' :
.88: ;
GetSettings88; F
<88F G 
YoutubeFieldSettings88G [
>88[ \
(88\ ]
)88] ^
;88^ _
if99 
(99 
settings99 
.99 
Required99 %
&&99& (
String99) /
.99/ 0
IsNullOrWhiteSpace990 B
(99B C
model99C H
.99H I

RawAddress99I S
)99S T
)99T U
{:: 
updater;; 
.;; 

ModelState;; &
.;;& '
AddModelError;;' 4
(;;4 5
Prefix;;5 ;
,;;; <
nameof;;= C
(;;C D
model;;D I
.;;I J

RawAddress;;J T
);;T U
,;;U V
S;;W X
[;;X Y
$str;;Y y
,;;y z
context	;;{ Ç
.
;;Ç É!
PartFieldDefinition
;;É ñ
.
;;ñ ó
DisplayName
;;ó ¢
(
;;¢ £
)
;;£ §
]
;;§ •
)
;;• ¶
;
;;¶ ß
}<< 
else== 
{>> 
if?? 
(?? 
model?? 
.?? 

RawAddress?? (
!=??) +
null??, 0
)??0 1
{@@ 
varAA 
uriAA 
=AA  !
newAA" %
UriAA& )
(AA) *
modelAA* /
.AA/ 0

RawAddressAA0 :
)AA: ;
;AA; <
ifDD 
(DD 
!DD 
StringDD #
.DD# $
IsNullOrWhiteSpaceDD$ 6
(DD6 7
uriDD7 :
.DD: ;
QueryDD; @
)DD@ A
)DDA B
{EE 
varFF 
queryFF  %
=FF& '
QueryHelpersFF( 4
.FF4 5

ParseQueryFF5 ?
(FF? @
uriFF@ C
.FFC D
QueryFFD I
)FFI J
;FFJ K
ifGG 
(GG  
queryGG  %
.GG% &
ContainsKeyGG& 1
(GG1 2
$strGG2 5
)GG5 6
)GG6 7
{HH 
modelII  %
.II% &
EmbeddedAddressII& 5
=II6 7
$"II8 :
{II: ;
uriII; >
.II> ?
GetLeftPartII? J
(IIJ K

UriPartialIIK U
.IIU V
	AuthorityIIV _
)II_ `
}II` a
/embed/IIa h
{IIh i
queryIIi n
[IIn o
$strIIo r
]IIr s
}IIs t
"IIt u
;IIu v
}JJ 
elseKK  
{LL 
updaterMM  '
.MM' (

ModelStateMM( 2
.MM2 3
AddModelErrorMM3 @
(MM@ A
PrefixMMA G
,MMG H
nameofMMI O
(MMO P
modelMMP U
.MMU V

RawAddressMMV `
)MM` a
,MMa b
SMMc d
[MMd e
$str	MMe á
]
MMá à
)
MMà â
;
MMâ ä
}NN 
}OO 
elsePP 
{QQ 
varRR 
pathRR  $
=RR% &
uriRR' *
.RR* +
AbsolutePathRR+ 7
.RR7 8
SplitRR8 =
(RR= >
$charRR> A
)RRA B
[RRB C
$numRRC D
]RRD E
;RRE F
modelSS !
.SS! "
EmbeddedAddressSS" 1
=SS2 3
$"SS4 6
{SS6 7
uriSS7 :
.SS: ;
GetLeftPartSS; F
(SSF G

UriPartialSSG Q
.SSQ R
	AuthoritySSR [
)SS[ \
}SS\ ]
/embed/SS] d
{SSd e
pathSSe i
}SSi j
"SSj k
;SSk l
}TT 
fieldVV 
.VV 

RawAddressVV (
=VV) *
modelVV+ 0
.VV0 1

RawAddressVV1 ;
;VV; <
fieldWW 
.WW 
EmbeddedAddressWW -
=WW. /
modelWW0 5
.WW5 6
EmbeddedAddressWW6 E
;WWE F
}XX 
elseYY 
{ZZ 
field[[ 
.[[ 

RawAddress[[ (
=[[) *
null[[+ /
;[[/ 0
field\\ 
.\\ 
EmbeddedAddress\\ -
=\\. /
null\\0 4
;\\4 5
}]] 
}^^ 
}__ 
returnaa 
Editaa 
(aa 
fieldaa 
,aa 
contextaa &
)aa& '
;aa' (
}bb 	
}cc 
}dd «
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\BooleanField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
BooleanField 
: 
ContentField  ,
{ 
public 
bool 
Value 
{ 
get 
;  
set! $
;$ %
}& '
} 
}		 ü
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\ContentPickerField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
ContentPickerField #
:$ %
ContentField& 2
{ 
public 
string 
[ 
] 
ContentItemIds &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
Array7 <
.< =
Empty= B
<B C
stringC I
>I J
(J K
)K L
;L M
}		 
}

 ‘
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\DateField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
	DateField 
: 
ContentField )
{ 
public 
DateTime 
? 
Value 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 ‹
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\DateTimeField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
DateTimeField 
:  
ContentField! -
{ 
public 
DateTime 
? 
Value 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 ¬
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\HtmlField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
	HtmlField 
: 
ContentField )
{ 
public 
string 
Html 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 Ÿ
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\LinkField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
	LinkField 
: 
ContentField )
{ 
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Text		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} ™
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\LocalizationSetContentPickerField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
[ 
RequireFeatures 
( 
$str 6
)6 7
]7 8
public 

class -
!LocalizationSetContentPickerField 2
:3 4
ContentField5 A
{		 
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
LocalizationSets

 (
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
=

7 8
Array

9 >
.

> ?
Empty

? D
<

D E
string

E K
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
} è
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\MultiTextField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
MultiTextField 
:  !
ContentField" .
{ 
public 
string 
[ 
] 
Values 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
Array/ 4
.4 5
Empty5 :
<: ;
string; A
>A B
(B C
)C D
;D E
}		 
}

 Ÿ
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\NumericField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
NumericField 
: 
ContentField  ,
{ 
public 
decimal 
? 
Value 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		 ¬
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\TextField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
	TextField 
: 
ContentField )
{ 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 ‘
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\TimeField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
	TimeField 
: 
ContentField )
{ 
public 
TimeSpan 
? 
Value 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 ‹
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\UserNamesExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

static 
class 
UserNamesExtensions +
{ 
public 
static 
string 
[ 
] 
GetUserNames +
(+ ,
this, 0
UserPickerField1 @
userPickerFieldA P
)P Q
{ 	
var 
	userNames 
= 
userPickerField +
.+ ,
Content, 3
[3 4
$str4 ?
]? @
asA C
JArrayD J
;J K
return 
	userNames 
!= 
null  $
?% &
	userNames' 0
.0 1
ToObject1 9
<9 :
string: @
[@ A
]A B
>B C
(C D
)D E
:F G
ArrayH M
.M N
EmptyN S
<S T
stringT Z
>Z [
([ \
)\ ]
;] ^
} 	
public 
static 
void 
SetUserNames '
(' (
this( ,
UserPickerField- <
userPickerField= L
,L M
stringN T
[T U
]U V
	userNamesW `
)` a
{ 	
userPickerField 
. 
Content #
[# $
$str$ /
]/ 0
=1 2
JArray3 9
.9 :

FromObject: D
(D E
	userNamesE N
)N O
;O P
} 	
} 
}   í
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\UserPickerField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
UserPickerField  
:! "
ContentField# /
{ 
public 
string 
[ 
] 
UserIds 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
Array0 5
.5 6
Empty6 ;
<; <
string< B
>B C
(C D
)D E
;E F
}		 
}

 Ò
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Fields\YoutubeField.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Fields$ *
{ 
public 

class 
YoutubeField 
: 
ContentField  ,
{ 
public 
string 
EmbeddedAddress %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 

RawAddress  
{! "
get# &
;& '
set( +
;+ ,
}- .
}		 
}

 †P
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\GraphQL\Fields\ContentFieldsProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
GraphQL$ +
.+ ,
Fields, 2
{ 
public 

class !
ContentFieldsProvider &
:' (!
IContentFieldProvider) >
{ 
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
FieldTypeDescriptor3 F
>F G$
ContentFieldTypeMappingsH `
=a b
newc f

Dictionaryg q
<q r
stringr x
,x y 
FieldTypeDescriptor	z ç
>
ç é
{ 	
{ 
nameof 
( 
BooleanField #
)# $
,$ %
new 
FieldTypeDescriptor '
{ 
Description 
=  !
$str" 1
,1 2
	FieldType 
= 
typeof  &
(& '
BooleanGraphType' 7
)7 8
,8 9
UnderlyingType "
=# $
typeof% +
(+ ,
BooleanField, 8
)8 9
,9 :
FieldAccessor !
=" #
field$ )
=>* ,
(- .
bool. 2
)2 3
field3 8
.8 9
Content9 @
.@ A
ValueA F
} 
} 
, 
{ 
nameof 
( 
	DateField  
)  !
,! "
new 
FieldTypeDescriptor '
{ 
Description 
=  !
$str" .
,. /
	FieldType   
=   
typeof    &
(  & '
DateGraphType  ' 4
)  4 5
,  5 6
UnderlyingType!! "
=!!# $
typeof!!% +
(!!+ ,
	DateField!!, 5
)!!5 6
,!!6 7
FieldAccessor"" !
=""" #
field""$ )
=>""* ,
(""- .
DateTime"". 6
?""6 7
)""7 8
field""8 =
.""= >
Content""> E
.""E F
Value""F K
}## 
}$$ 
,$$ 
{%% 
nameof&& 
(&& 
DateTimeField&& $
)&&$ %
,&&% &
new'' 
FieldTypeDescriptor'' '
{(( 
Description)) 
=))  !
$str))" 5
,))5 6
	FieldType** 
=** 
typeof**  &
(**& '
DateTimeGraphType**' 8
)**8 9
,**9 :
UnderlyingType++ "
=++# $
typeof++% +
(+++ ,
DateTimeField++, 9
)++9 :
,++: ;
FieldAccessor,, !
=,," #
field,,$ )
=>,,* ,
(,,- .
DateTime,,. 6
?,,6 7
),,7 8
field,,8 =
.,,= >
Content,,> E
.,,E F
Value,,F K
}-- 
}.. 
,.. 
{// 
nameof00 
(00 
NumericField00 #
)00# $
,00$ %
new11 
FieldTypeDescriptor11 '
{22 
Description33 
=33  !
$str33" 1
,331 2
	FieldType44 
=44 
typeof44  &
(44& '
DecimalGraphType44' 7
)447 8
,448 9
UnderlyingType55 "
=55# $
typeof55% +
(55+ ,
NumericField55, 8
)558 9
,559 :
FieldAccessor66 !
=66" #
field66$ )
=>66* ,
(66- .
decimal66. 5
?665 6
)666 7
field667 <
.66< =
Content66= D
.66D E
Value66E J
}77 
}88 
,88 
{99 
nameof:: 
(:: 
	TextField::  
)::  !
,::! "
new;; 
FieldTypeDescriptor;; '
{<< 
Description== 
===  !
$str==" .
,==. /
	FieldType>> 
=>> 
typeof>>  &
(>>& '
StringGraphType>>' 6
)>>6 7
,>>7 8
UnderlyingType?? "
=??# $
typeof??% +
(??+ ,
	TextField??, 5
)??5 6
,??6 7
FieldAccessor@@ !
=@@" #
field@@$ )
=>@@* ,
field@@- 2
.@@2 3
Content@@3 :
.@@: ;
Text@@; ?
}AA 
}BB 
,BB 
{CC 
nameofDD 
(DD 
	TimeFieldDD  
)DD  !
,DD! "
newEE 
FieldTypeDescriptorEE '
{FF 
DescriptionGG 
=GG  !
$strGG" .
,GG. /
	FieldTypeHH 
=HH 
typeofHH  &
(HH& '
TimeSpanGraphTypeHH' 8
)HH8 9
,HH9 :
UnderlyingTypeII "
=II# $
typeofII% +
(II+ ,
	TimeFieldII, 5
)II5 6
,II6 7
FieldAccessorJJ !
=JJ" #
fieldJJ$ )
=>JJ* ,
(JJ- .
TimeSpanJJ. 6
?JJ6 7
)JJ7 8
fieldJJ8 =
.JJ= >
ContentJJ> E
.JJE F
ValueJJF K
}KK 
}LL 
,LL 
{MM 
nameofNN 
(NN 
MultiTextFieldNN %
)NN% &
,NN& '
newOO 
FieldTypeDescriptorOO '
{PP 
DescriptionQQ 
=QQ  !
$strQQ" 4
,QQ4 5
	FieldTypeRR 
=RR 
typeofRR  &
(RR& '
ListGraphTypeRR' 4
<RR4 5
StringGraphTypeRR5 D
>RRD E
)RRE F
,RRF G
UnderlyingTypeSS "
=SS# $
typeofSS% +
(SS+ ,
MultiTextFieldSS, :
)SS: ;
,SS; <
FieldAccessorTT !
=TT" #
fieldTT$ )
=>TT* ,
fieldTT- 2
.TT2 3
ContentTT3 :
.TT: ;
ValuesTT; A
}UU 
}VV 
}WW 	
;WW	 

publicYY 
	FieldTypeYY 
GetFieldYY !
(YY! "&
ContentPartFieldDefinitionYY" <
fieldYY= B
)YYB C
{ZZ 	
if[[ 
([[ 
![[ $
ContentFieldTypeMappings[[ )
.[[) *
ContainsKey[[* 5
([[5 6
field[[6 ;
.[[; <
FieldDefinition[[< K
.[[K L
Name[[L P
)[[P Q
)[[Q R
return[[S Y
null[[Z ^
;[[^ _
var]] 
fieldDescriptor]] 
=]]  !$
ContentFieldTypeMappings]]" :
[]]: ;
field]]; @
.]]@ A
FieldDefinition]]A P
.]]P Q
Name]]Q U
]]]U V
;]]V W
return^^ 
new^^ 
	FieldType^^  
{__ 
Name`` 
=`` 
field`` 
.`` 
Name`` !
,``! "
Descriptionaa 
=aa 
fieldDescriptoraa -
.aa- .
Descriptionaa. 9
,aa9 :
Typebb 
=bb 
fieldDescriptorbb &
.bb& '
	FieldTypebb' 0
,bb0 1
Resolvercc 
=cc 
newcc 
FuncFieldResolvercc 0
<cc0 1
ContentElementcc1 ?
,cc? @
objectccA G
>ccG H
(ccH I
contextccI P
=>ccQ S
{dd 
varff 
contentPartff #
=ff$ %
contextff& -
.ff- .
Sourceff. 4
.ff4 5
Getff5 8
(ff8 9
typeofff9 ?
(ff? @
ContentPartff@ K
)ffK L
,ffL M
fieldffN S
.ffS T
PartDefinitionffT b
.ffb c
Nameffc g
)ffg h
;ffh i
ifgg 
(gg 
contentPartgg #
==gg$ &
nullgg' +
)gg+ ,
{hh 
contentPartjj #
=jj$ %
contextjj& -
.jj- .
Sourcejj. 4
;jj4 5
}kk 
varmm 
contentFieldmm $
=mm% &
contentPartmm' 2
?mm2 3
.mm3 4
Getmm4 7
(mm7 8
fieldDescriptormm8 G
.mmG H
UnderlyingTypemmH V
,mmV W
fieldmmX ]
.mm] ^
Namemm^ b
)mmb c
;mmc d
ifoo 
(oo 
contentFieldoo $
==oo% '
nulloo( ,
)oo, -
{pp 
contentFieldqq $
=qq% &
contextqq' .
.qq. /
Sourceqq/ 5
.qq5 6
Getqq6 9
(qq9 :
fieldDescriptorqq: I
.qqI J
UnderlyingTypeqqJ X
,qqX Y
fieldqqZ _
.qq_ `
Nameqq` d
)qqd e
;qqe f
}rr 
returntt 
contentFieldtt '
==tt( *
nulltt+ /
?tt0 1
nulltt2 6
:tt7 8
fieldDescriptortt9 H
.ttH I
FieldAccessorttI V
(ttV W
contentFieldttW c
)ttc d
;ttd e
}uu 
)uu 
}vv 
;vv 
}ww 	
privateyy 
classyy 
FieldTypeDescriptoryy )
{zz 	
public{{ 
string{{ 
Description{{ %
{{{& '
get{{( +
;{{+ ,
set{{- 0
;{{0 1
}{{2 3
public|| 
Type|| 
	FieldType|| !
{||" #
get||$ '
;||' (
set||) ,
;||, -
}||. /
public}} 
Type}} 
UnderlyingType}} &
{}}' (
get}}) ,
;}}, -
set}}. 1
;}}1 2
}}}3 4
public~~ 
Func~~ 
<~~ 
ContentElement~~ &
,~~& '
object~~( .
>~~. /
FieldAccessor~~0 =
{~~> ?
get~~@ C
;~~C D
set~~E H
;~~H I
}~~J K
} 	
}
ÄÄ 
}ÅÅ ∞#
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\GraphQL\Fields\ObjectGraphTypeFieldProvider.cs
	namespace

 	
OrchardCore


 
.

 
ContentFields

 #
.

# $
GraphQL

$ +
.

+ ,
Fields

, 2
{ 
public 

class (
ObjectGraphTypeFieldProvider -
:. /!
IContentFieldProvider0 E
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public (
ObjectGraphTypeFieldProvider +
(+ , 
IHttpContextAccessor, @
httpContextAccessorA T
)T U
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
	FieldType 
GetField !
(! "&
ContentPartFieldDefinition" <
field= B
)B C
{ 	
var 
serviceProvider 
=  ! 
_httpContextAccessor" 6
.6 7
HttpContext7 B
.B C
RequestServicesC R
;R S
var 
typeActivator 
= 
serviceProvider  /
./ 0

GetService0 :
<: ;!
ITypeActivatorFactory; P
<P Q
ContentFieldQ ]
>] ^
>^ _
(_ `
)` a
;a b
var 
	activator 
= 
typeActivator )
.) *
GetTypeActivator* :
(: ;
field; @
.@ A
FieldDefinitionA P
.P Q
NameQ U
)U V
;V W
var 
queryGraphType 
=  
typeof! '
(' (
ObjectGraphType( 7
<7 8
>8 9
)9 :
.: ;
MakeGenericType; J
(J K
	activatorK T
.T U
TypeU Y
)Y Z
;Z [
if 
( 
serviceProvider 
.  

GetService  *
(* +
queryGraphType+ 9
)9 :
is; =
IObjectGraphType> N
)N O
{ 
return 
new 
	FieldType $
{   
Name!! 
=!! 
field!!  
.!!  !
Name!!! %
,!!% &
Description"" 
=""  !
field""" '
.""' (
FieldDefinition""( 7
.""7 8
Name""8 <
,""< =
Type## 
=## 
queryGraphType## )
,##) *
Resolver$$ 
=$$ 
new$$ "
FuncFieldResolver$$# 4
<$$4 5
ContentElement$$5 C
,$$C D
ContentElement$$E S
>$$S T
($$T U
context$$U \
=>$$] _
{%% 
var&& 
typeToResolve&& )
=&&* +
context&&, 3
.&&3 4

ReturnType&&4 >
.&&> ?
GetType&&? F
(&&F G
)&&G H
.&&H I
BaseType&&I Q
.&&Q R
GetGenericArguments&&R e
(&&e f
)&&f g
.&&g h
First&&h m
(&&m n
)&&n o
;&&o p
var)) 
contentPart)) '
=))( )
context))* 1
.))1 2
Source))2 8
.))8 9
Get))9 <
())< =
typeof))= C
())C D
ContentPart))D O
)))O P
,))P Q
field))R W
.))W X
PartDefinition))X f
.))f g
Name))g k
)))k l
;))l m
if** 
(** 
contentPart** '
==**( *
null**+ /
)**/ 0
{++ 
contentPart-- '
=--( )
context--* 1
.--1 2
Source--2 8
;--8 9
}.. 
var00 
contentField00 (
=00) *
contentPart00+ 6
?006 7
.007 8
Get008 ;
(00; <
typeToResolve00< I
,00I J
field00K P
.00P Q
Name00Q U
)00U V
;00V W
return11 
contentField11 +
;11+ ,
}22 
)22 
}33 
;33 
}44 
return66 
null66 
;66 
}77 	
}88 
}99 ƒ
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\GraphQL\Startup.cs
	namespace		 	
OrchardCore		
 
.		 
ContentFields		 #
.		# $
GraphQL		$ +
{

 
[ 
RequireFeatures 
( 
$str /
)/ 0
]0 1
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< !
IContentFieldProvider 4
,4 5(
ObjectGraphTypeFieldProvider6 R
>R S
(S T
)T U
;U V
services 
. 
	AddScoped 
< !
IContentFieldProvider 4
,4 5!
ContentFieldsProvider6 K
>K L
(L M
)M N
;N O
services 
. 
AddObjectGraphType '
<' (
	LinkField( 1
,1 2$
LinkFieldQueryObjectType3 K
>K L
(L M
)M N
;N O
services 
. 
AddObjectGraphType '
<' (
	HtmlField( 1
,1 2$
HtmlFieldQueryObjectType3 K
>K L
(L M
)M N
;N O
services 
. 
AddObjectGraphType '
<' (
ContentPickerField( :
,: ;-
!ContentPickerFieldQueryObjectType< ]
>] ^
(^ _
)_ `
;` a
} 	
} 
} €
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\GraphQL\Types\ContentPickerFieldQueryObjectType.cs
	namespace		 	
OrchardCore		
 
.		 
ContentFields		 #
.		# $
GraphQL		$ +
{

 
public 

class -
!ContentPickerFieldQueryObjectType 2
:3 4
ObjectGraphType5 D
<D E
ContentPickerFieldE W
>W X
{ 
public -
!ContentPickerFieldQueryObjectType 0
(0 1
)1 2
{ 	
Name 
= 
nameof 
( 
ContentPickerField ,
), -
;- .
Field 
< 
ListGraphType 
<  
StringGraphType  /
>/ 0
,0 1
IEnumerable2 =
<= >
string> D
>D E
>E F
(F G
)G H
. 
Name 
( 
$str &
)& '
. 
Description 
( 
$str /
)/ 0
. 
PagingArguments  
(  !
)! "
. 
Resolve 
( 
x 
=> 
{ 
return 
x 
. 
Page !
(! "
x" #
.# $
Source$ *
.* +
ContentItemIds+ 9
)9 :
;: ;
} 
) 
; 
Field 
< 
ListGraphType 
<   
ContentItemInterface  4
>4 5
,5 6
ContentItem7 B
[B C
]C D
>D E
(E F
)F G
. 
Name 
( 
$str $
)$ %
. 
Description 
( 
$str 0
)0 1
. 
PagingArguments  
(  !
)! "
. 
ResolveAsync 
( 
x 
=>  "
{ 
var   
contentItemLoader   )
=  * +
x  , -
.  - .6
*GetOrAddPublishedContentItemByIdDataLoader  . X
(  X Y
)  Y Z
;  Z [
return!! 
contentItemLoader!! ,
.!!, -
	LoadAsync!!- 6
(!!6 7
x!!7 8
.!!8 9
Page!!9 =
(!!= >
x!!> ?
.!!? @
Source!!@ F
.!!F G
ContentItemIds!!G U
)!!U V
)!!V W
;!!W X
}"" 
)"" 
;"" 
}## 	
}$$ 
}%% È8
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\GraphQL\Types\HtmlFieldQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
GraphQL$ +
{ 
public 

class $
HtmlFieldQueryObjectType )
:* +
ObjectGraphType, ;
<; <
	HtmlField< E
>E F
{ 
public $
HtmlFieldQueryObjectType '
(' (
IStringLocalizer( 8
<8 9$
HtmlFieldQueryObjectType9 Q
>Q R
SS T
)T U
{ 	
Name 
= 
nameof 
( 
	HtmlField #
)# $
;$ %
Description 
= 
S 
[ 
$str 5
]5 6
;6 7
Field 
< 
StringGraphType !
>! "
(" #
)# $
. 
Name 
( 
$str 
) 
. 
Description 
( 
S 
[ 
$str 1
]1 2
)2 3
. 
ResolveLockedAsync #
(# $

RenderHtml$ .
). /
;/ 0
} 	
private!! 
static!! 
async!! 
Task!! !
<!!! "
object!!" (
>!!( )

RenderHtml!!* 4
(!!4 5
ResolveFieldContext!!5 H
<!!H I
	HtmlField!!I R
>!!R S
ctx!!T W
)!!W X
{"" 	
var## 
serviceProvider## 
=##  !
ctx##" %
.##% &"
ResolveServiceProvider##& <
(##< =
)##= >
;##> ?
var$$ 
shortcodeService$$  
=$$! "
serviceProvider$$# 2
.$$2 3
GetRequiredService$$3 E
<$$E F
IShortcodeService$$F W
>$$W X
($$X Y
)$$Y Z
;$$Z [
var%% $
contentDefinitionManager%% (
=%%) *
serviceProvider%%+ :
.%%: ;
GetRequiredService%%; M
<%%M N%
IContentDefinitionManager%%N g
>%%g h
(%%h i
)%%i j
;%%j k
var'' 
jObject'' 
='' 
ctx'' 
.'' 
Source'' $
.''$ %
Content''% ,
as''- /
JObject''0 7
;''7 8
var)) 
jsonPath)) 
=)) 
jObject)) "
.))" #
Path))# '
;))' (
var** 
paths** 
=** 
jsonPath**  
.**  !
Split**! &
(**& '
$char**' *
)*** +
;**+ ,
var++ 
partName++ 
=++ 
paths++  
[++  !
$num++! "
]++" #
;++# $
var,, 
	fieldName,, 
=,, 
paths,, !
[,,! "
$num,," #
],,# $
;,,$ %
var-- !
contentTypeDefinition-- %
=--& '$
contentDefinitionManager--( @
.--@ A
GetTypeDefinition--A R
(--R S
ctx--S V
.--V W
Source--W ]
.--] ^
ContentItem--^ i
.--i j
ContentType--j u
)--u v
;--v w
var.. !
contentPartDefinition.. %
=..& '!
contentTypeDefinition..( =
...= >
Parts..> C
...C D
FirstOrDefault..D R
(..R S
x..S T
=>..U W
string..X ^
...^ _
Equals.._ e
(..e f
x..f g
...g h
Name..h l
,..l m
partName..n v
)..v w
)..w x
;..x y
var// %
contentPartFieldDefintion// )
=//* +!
contentPartDefinition//, A
.//A B
PartDefinition//B P
.//P Q
Fields//Q W
.//W X
FirstOrDefault//X f
(//f g
x//g h
=>//i k
string//l r
.//r s
Equals//s y
(//y z
x//z {
.//{ |
Name	//| Ä
,
//Ä Å
	fieldName
//Ç ã
)
//ã å
)
//å ç
;
//ç é
var00 
settings00 
=00 %
contentPartFieldDefintion00 4
.004 5
GetSettings005 @
<00@ A
HtmlFieldSettings00A R
>00R S
(00S T
)00T U
;00U V
var22 
html22 
=22 
ctx22 
.22 
Source22 !
.22! "
Html22" &
;22& '
if44 
(44 
!44 
settings44 
.44 
SanitizeHtml44 &
)44& '
{55 
var66 
model66 
=66 
new66 "
EditHtmlFieldViewModel66  6
(666 7
)667 8
{77 
Html88 
=88 
ctx88 
.88 
Source88 %
.88% &
Html88& *
,88* +
Field99 
=99 
ctx99 
.99  
Source99  &
,99& '
Part:: 
=:: 
ctx:: 
.:: 
Source:: %
.::% &
ContentItem::& 1
.::1 2
Get::2 5
<::5 6
ContentPart::6 A
>::A B
(::B C
partName::C K
)::K L
,::L M
PartFieldDefinition;; '
=;;( )%
contentPartFieldDefintion;;* C
}<< 
;<< 
var== !
liquidTemplateManager== )
===* +
serviceProvider==, ;
.==; <
GetRequiredService==< N
<==N O"
ILiquidTemplateManager==O e
>==e f
(==f g
)==g h
;==h i
var>> 
htmlEncoder>> 
=>>  !
serviceProvider>>" 1
.>>1 2

GetService>>2 <
<>>< =
HtmlEncoder>>= H
>>>H I
(>>I J
)>>J K
;>>K L
html@@ 
=@@ 
await@@ !
liquidTemplateManager@@ 2
.@@2 3
RenderAsync@@3 >
(@@> ?
html@@? C
,@@C D
htmlEncoder@@E P
,@@P Q
model@@R W
,@@W X
scopeAA 
=>AA 
scopeAA "
.AA" #
SetValueAA# +
(AA+ ,
$strAA, 9
,AA9 :
ctxAA; >
.AA> ?
SourceAA? E
.AAE F
ContentItemAAF Q
)AAQ R
)AAR S
;AAS T
}BB 
returnDD 
awaitDD 
shortcodeServiceDD )
.DD) *
ProcessAsyncDD* 6
(DD6 7
htmlDD7 ;
,DD; <
newEE 
ContextEE 
{FF 
[GG 
$strGG "
]GG" #
=GG$ %
ctxGG& )
.GG) *
SourceGG* 0
.GG0 1
ContentItemGG1 <
,GG< =
[HH 
$strHH *
]HH* +
=HH, -%
contentPartFieldDefintionHH. G
}II 
)II 
;II 
}JJ 	
}KK 
}LL Ú

£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\GraphQL\Types\LinkFieldQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
GraphQL$ +
.+ ,
Types, 1
{ 
public 

class $
LinkFieldQueryObjectType )
:* +
ObjectGraphType, ;
<; <
	LinkField< E
>E F
{ 
public $
LinkFieldQueryObjectType '
(' (
)( )
{		 	
Name

 
=

 
nameof

 
(

 
	LinkField

 #
)

# $
;

$ %
Field 
( 
x 
=> 
x 
. 
Url 
, 
nullable &
:& '
true( ,
), -
.- .
Description. 9
(9 :
$str: O
)O P
;P Q
Field 
( 
x 
=> 
x 
. 
Text 
, 
nullable '
:' (
true) -
)- .
.. /
Description/ :
(: ;
$str; Q
)Q R
;R S
} 	
} 
} §
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\GraphQL\Types\TimeSpanGraphType.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
GraphQL$ +
.+ ,
Types, 1
{ 
public 

class 
TimeSpanGraphType "
:# $
ScalarGraphType% 4
{		 
public

 
TimeSpanGraphType

  
(

  !
)

! "
{ 	
Name 
= 
$str 
; 
Description 
= 
$str 7
;7 8
} 	
public 
override 
object 
	Serialize (
(( )
object) /
value0 5
)5 6
{ 	
return 
value 
? 
. 
ToString "
(" #
)# $
;$ %
} 	
public 
override 
object 

ParseValue )
() *
object* 0
value1 6
)6 7
{ 	
var 
timespan 
= 
value  
?  !
.! "
ToString" *
(* +
)+ ,
., -
StripQuotes- 8
(8 9
)9 :
;: ;
return 
string 
. 
IsNullOrWhiteSpace ,
(, -
timespan- 5
)5 6
? 
null 
: 
( 
TimeSpan 
? 
) 
TimeSpan %
.% &
Parse& +
(+ ,
timespan, 4
,4 5
CultureInfo6 A
.A B
CurrentCultureB P
)P Q
;Q R
} 	
public 
override 
object 
ParseLiteral +
(+ ,
IValue, 2
value3 8
)8 9
{ 	
var 
str 
= 
value 
as 
StringValue *
;* +
if   
(   
str   
!=   
null   
)   
{!! 
return"" 

ParseValue"" !
(""! "
str""" %
.""% &
Value""& +
)""+ ,
;"", -
}## 
return$$ 
null$$ 
;$$ 
}%% 	
}&& 
public(( 

static(( 
class(( %
ScalarGraphTypeExtensions(( 1
{)) 
public** 
static** 
string** 
StripQuotes** (
(**( )
this**) -
string**. 4
value**5 :
)**: ;
{++ 	
if,, 
(,, 
!,, 
string,, 
.,, 
IsNullOrEmpty,, %
(,,% &
value,,& +
),,+ ,
&&,,- /
value,,0 5
.,,5 6
Length,,6 <
>,,= >
$num,,? @
&&,,A C
value,,D I
.,,I J

StartsWith,,J T
(,,T U
$char,,U Y
),,Y Z
&&,,[ ]
value,,^ c
.,,c d
EndsWith,,d l
(,,l m
$char,,m q
),,q r
),,r s
{-- 
return.. 
value.. 
... 
	Substring.. &
(..& '
$num..' (
,..( )
value..* /
.../ 0
Length..0 6
-..7 8
$num..9 :
)..: ;
;..; <
}// 
return00 
value00 
;00 
}11 	
}22 
}33 ˘
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\BooleanFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class $
BooleanFieldIndexHandler )
:* +$
ContentFieldIndexHandler, D
<D E
BooleanFieldE Q
>Q R
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
BooleanField		- 9
field		: ?
,		? @"
BuildFieldIndexContext		A W
context		X _
)		_ `
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
Value5 :
,: ;
options< C
)C D
;D E
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} °
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\ContentPickerFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class *
ContentPickerFieldIndexHandler /
:0 1$
ContentFieldIndexHandler2 J
<J K
ContentPickerFieldK ]
>] ^
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
ContentPickerField		- ?
field		@ E
,		E F"
BuildFieldIndexContext		G ]
context		^ e
)		e f
{

 	
var 
options 
=  
DocumentIndexOptions .
.. /
Store/ 4
;4 5
if 
( 
field 
. 
ContentItemIds $
.$ %
Length% +
>, -
$num. /
)/ 0
{ 
foreach 
( 
var 
contentItemId *
in+ -
field. 3
.3 4
ContentItemIds4 B
)B C
{ 
foreach 
( 
var  
key! $
in% '
context( /
./ 0
Keys0 4
)4 5
{ 
context 
.  
DocumentIndex  -
.- .
Set. 1
(1 2
key2 5
,5 6
contentItemId7 D
,D E
optionsF M
)M N
;N O
} 
} 
} 
else 
{ 
foreach 
( 
var 
key  
in! #
context$ +
.+ ,
Keys, 0
)0 1
{ 
context 
. 
DocumentIndex )
.) *
Set* -
(- .
key. 1
,1 2
$str3 9
,9 :
options; B
)B C
;C D
} 
} 
return 
Task 
. 
CompletedTask %
;% &
}   	
}!! 
}"" Ì
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\DateFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class !
DateFieldIndexHandler &
:' ($
ContentFieldIndexHandler) A
<A B
	DateFieldB K
>K L
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
	DateField		- 6
field		7 <
,		< ="
BuildFieldIndexContext		> T
context		U \
)		\ ]
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
Value5 :
,: ;
options< C
)C D
;D E
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ˝
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\DateTimeFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class %
DateTimeFieldIndexHandler *
:+ ,$
ContentFieldIndexHandler- E
<E F
DateTimeFieldF S
>S T
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
DateTimeField		- :
field		; @
,		@ A"
BuildFieldIndexContext		B X
context		Y `
)		` a
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
Value5 :
,: ;
options< C
)C D
;D E
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} Ï
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\HtmlFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class !
HtmlFieldIndexHandler &
:' ($
ContentFieldIndexHandler) A
<A B
	HtmlFieldB K
>K L
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
	HtmlField		- 6
field		7 <
,		< ="
BuildFieldIndexContext		> T
context		U \
)		\ ]
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
Html5 9
,9 :
options; B
)B C
;C D
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} Ô
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\LinkFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class !
LinkFieldIndexHandler &
:' ($
ContentFieldIndexHandler) A
<A B
	LinkFieldB K
>K L
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
	LinkField		- 6
field		7 <
,		< ="
BuildFieldIndexContext		> T
context		U \
)		\ ]
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
Url5 8
,8 9
options: A
)A B
;B C
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
Text5 9
,9 :
options; B
)B C
;C D
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} µ
≥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\LocalizationSetContentPickerFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
[ 
RequireFeatures 
( 
$str 6
)6 7
]7 8
public		 

class		 9
-LocalizationSetContentPickerFieldIndexHandler		 >
:		? @$
ContentFieldIndexHandler		A Y
<		Y Z-
!LocalizationSetContentPickerField		Z {
>		{ |
{

 
public 
override 
Task 
BuildIndexAsync ,
(, --
!LocalizationSetContentPickerField- N
fieldO T
,T U"
BuildFieldIndexContextV l
contextm t
)t u
{ 	
var 
options 
=  
DocumentIndexOptions .
.. /
Store/ 4
;4 5
foreach 
( 
var 
localizationSet (
in) +
field, 1
.1 2
LocalizationSets2 B
)B C
{ 
foreach 
( 
var 
key  
in! #
context$ +
.+ ,
Keys, 0
)0 1
{ 
context 
. 
DocumentIndex )
.) *
Set* -
(- .
key. 1
,1 2
localizationSet3 B
,B C
optionsD K
)K L
;L M
} 
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ö
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\MultiTextFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class &
MultiTextFieldIndexHandler +
:, -$
ContentFieldIndexHandler. F
<F G
MultiTextFieldG U
>U V
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
MultiTextField		- ;
field		< A
,		A B"
BuildFieldIndexContext		C Y
context		Z a
)		a b
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
foreach 
( 
var 
value !
in" $
field% *
.* +
Values+ 1
)1 2
{ 
context 
. 
DocumentIndex )
.) *
Set* -
(- .
key. 1
,1 2
value3 8
,8 9
options: A
)A B
;B C
} 
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ‚
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\NumericFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class $
NumericFieldIndexHandler )
:* +$
ContentFieldIndexHandler, D
<D E
NumericFieldE Q
>Q R
{		 
public

 
override

 
Task

 
BuildIndexAsync

 ,
(

, -
NumericField

- 9
field

: ?
,

? @"
BuildFieldIndexContext

A W
context

X _
)

_ `
{ 	
var 
settings 
= 
context "
." #&
ContentPartFieldDefinition# =
.= >
GetSettings> I
<I J 
NumericFieldSettingsJ ^
>^ _
(_ `
)` a
;a b
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
if 
( 
settings 
. 
Scale 
== !
$num" #
)# $
{ 
foreach 
( 
var 
key  
in! #
context$ +
.+ ,
Keys, 0
)0 1
{ 
context 
. 
DocumentIndex )
.) *
Set* -
(- .
key. 1
,1 2
(3 4
int4 7
?7 8
)8 9
field9 >
.> ?
Value? D
,D E
optionsF M
)M N
;N O
} 
} 
else 
{ 
foreach 
( 
var 
key  
in! #
context$ +
.+ ,
Keys, 0
)0 1
{ 
context 
. 
DocumentIndex )
.) *
Set* -
(- .
key. 1
,1 2
field3 8
.8 9
Value9 >
,> ?
options@ G
)G H
;H I
} 
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
}   
}!! æ9
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\BooleanFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
BooleanFieldIndex "
:# $
ContentFieldIndex% 6
{ 
public 
bool 
? 
Boolean 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class %
BooleanFieldIndexProvider *
:+ ,%
ContentFieldIndexProvider- F
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public %
BooleanFieldIndexProvider (
(( )
IServiceProvider) 9
serviceProvider: I
)I J
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
BooleanFieldIndex )
>) *
(* +
)+ ,
.   
Map   
(   
contentItem    
=>  ! #
{!! 
if## 
(## 
!## 
contentItem## $
.##$ %
	Published##% .
&&##/ 1
!##2 3
contentItem##3 >
.##> ?
Latest##? E
)##E F
{$$ 
return%% 
null%% #
;%%# $
}&& 
if)) 
()) 
_ignoredTypes)) %
.))% &
Contains))& .
()). /
contentItem))/ :
.)): ;
ContentType)); F
)))F G
)))G H
{** 
return++ 
null++ #
;++# $
},, %
_contentDefinitionManager// -
??=//. 1
_serviceProvider//2 B
.//B C
GetRequiredService//C U
<//U V%
IContentDefinitionManager//V o
>//o p
(//p q
)//q r
;//r s
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
contentItem22\ g
.22g h
ContentType22h s
)22s t
;22t u
if55 
(55 !
contentTypeDefinition55 -
==55. 0
null551 5
)555 6
{66 
_ignoredTypes77 %
.77% &
Add77& )
(77) *
contentItem77* 5
.775 6
ContentType776 A
)77A B
;77B C
return88 
null88 #
;88# $
}99 
var;; 
fieldDefinitions;; (
=;;) *!
contentTypeDefinition;;+ @
.<< 
Parts<< 
.<< 

SelectMany<< )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Fields<<@ F
.<<F G
Where<<G L
(<<L M
f<<M N
=><<O Q
f<<R S
.<<S T
FieldDefinition<<T c
.<<c d
Name<<d h
==<<i k
nameof<<l r
(<<r s
BooleanField<<s 
)	<< Ä
)
<<Ä Å
)
<<Å Ç
.== 
ToArray==  
(==  !
)==! "
;==" #
if@@ 
(@@ 
fieldDefinitions@@ (
.@@( )
Length@@) /
==@@0 2
$num@@3 4
)@@4 5
{AA 
_ignoredTypesBB %
.BB% &
AddBB& )
(BB) *
contentItemBB* 5
.BB5 6
ContentTypeBB6 A
)BBA B
;BBB C
returnCC 
nullCC #
;CC# $
}DD 
varFF 
resultsFF 
=FF  !
newFF" %
ListFF& *
<FF* +
BooleanFieldIndexFF+ <
>FF< =
(FF= >
)FF> ?
;FF? @
foreachHH 
(HH 
varHH  
fieldDefinitionHH! 0
inHH1 3
fieldDefinitionsHH4 D
)HHD E
{II 
varJJ 
jPartJJ !
=JJ" #
(JJ$ %
JObjectJJ% ,
)JJ, -
contentItemJJ- 8
.JJ8 9
ContentJJ9 @
[JJ@ A
fieldDefinitionJJA P
.JJP Q
PartDefinitionJJQ _
.JJ_ `
NameJJ` d
]JJd e
;JJe f
ifLL 
(LL 
jPartLL !
==LL" $
nullLL% )
)LL) *
{MM 
continueNN $
;NN$ %
}OO 
varQQ 
jFieldQQ "
=QQ# $
(QQ% &
JObjectQQ& -
)QQ- .
jPartQQ. 3
[QQ3 4
fieldDefinitionQQ4 C
.QQC D
NameQQD H
]QQH I
;QQI J
ifSS 
(SS 
jFieldSS "
==SS# %
nullSS& *
)SS* +
{TT 
continueUU $
;UU$ %
}VV 
varXX 
fieldXX !
=XX" #
jFieldXX$ *
.XX* +
ToObjectXX+ 3
<XX3 4
BooleanFieldXX4 @
>XX@ A
(XXA B
)XXB C
;XXC D
resultsZZ 
.ZZ  
AddZZ  #
(ZZ# $
newZZ$ '
BooleanFieldIndexZZ( 9
{[[ 
Latest\\ "
=\\# $
contentItem\\% 0
.\\0 1
Latest\\1 7
,\\7 8
	Published]] %
=]]& '
contentItem]]( 3
.]]3 4
	Published]]4 =
,]]= >
ContentItemId^^ )
=^^* +
contentItem^^, 7
.^^7 8
ContentItemId^^8 E
,^^E F 
ContentItemVersionId__ 0
=__1 2
contentItem__3 >
.__> ? 
ContentItemVersionId__? S
,__S T
ContentType`` '
=``( )
contentItem``* 5
.``5 6
ContentType``6 A
,``A B
ContentPartaa '
=aa( )
fieldDefinitionaa* 9
.aa9 :
PartDefinitionaa: H
.aaH I
NameaaI M
,aaM N
ContentFieldbb (
=bb) *
fieldDefinitionbb+ :
.bb: ;
Namebb; ?
,bb? @
Booleancc #
=cc$ %
fieldcc& +
.cc+ ,
Valuecc, 1
}dd 
)dd 
;dd 
}ee 
returngg 
resultsgg "
;gg" #
}hh 
)hh 
;hh 
}ii 	
}jj 
}kk Í
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\ContentFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

abstract 
class 
ContentFieldIndex +
:, -
MapIndex. 6
{ 
public		 
string		 
ContentItemId		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
string

  
ContentItemVersionId

 *
{

+ ,
get

- 0
;

0 1
set

2 5
;

5 6
}

7 8
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ContentPart !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ContentField "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
	Published 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Latest 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

abstract 
class %
ContentFieldIndexProvider 3
:4 5
IndexProvider6 C
<C D
ContentItemD O
>O P
,P Q 
IScopedIndexProviderR f
{ 
} 
} ∂;
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\ContentPickerFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class #
ContentPickerFieldIndex (
:) *
ContentFieldIndex+ <
{ 
public 
string !
SelectedContentItemId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
public 

class +
ContentPickerFieldIndexProvider 0
:1 2%
ContentFieldIndexProvider3 L
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public +
ContentPickerFieldIndexProvider .
(. /
IServiceProvider/ ?
serviceProvider@ O
)O P
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< #
ContentPickerFieldIndex /
>/ 0
(0 1
)1 2
.   
Map   
(   
contentItem    
=>  ! #
{!! 
if## 
(## 
!## 
contentItem## $
.##$ %
	Published##% .
&&##/ 1
!##2 3
contentItem##3 >
.##> ?
Latest##? E
)##E F
{$$ 
return%% 
null%% #
;%%# $
}&& 
if)) 
()) 
_ignoredTypes)) %
.))% &
Contains))& .
()). /
contentItem))/ :
.)): ;
ContentType)); F
)))F G
)))G H
{** 
return++ 
null++ #
;++# $
},, %
_contentDefinitionManager// -
??=//. 1
_serviceProvider//2 B
.//B C
GetRequiredService//C U
<//U V%
IContentDefinitionManager//V o
>//o p
(//p q
)//q r
;//r s
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
contentItem22\ g
.22g h
ContentType22h s
)22s t
;22t u
if55 
(55 !
contentTypeDefinition55 -
==55. 0
null551 5
)555 6
{66 
_ignoredTypes77 %
.77% &
Add77& )
(77) *
contentItem77* 5
.775 6
ContentType776 A
)77A B
;77B C
return88 
null88 #
;88# $
}99 
var;; 
fieldDefinitions;; (
=;;) *!
contentTypeDefinition;;+ @
.<< 
Parts<< 
.<< 

SelectMany<< )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Fields<<@ F
.<<F G
Where<<G L
(<<L M
f<<M N
=><<O Q
f<<R S
.<<S T
FieldDefinition<<T c
.<<c d
Name<<d h
==<<i k
nameof<<l r
(<<r s
ContentPickerField	<<s Ö
)
<<Ö Ü
)
<<Ü á
)
<<á à
.== 
ToArray==  
(==  !
)==! "
;==" #
if@@ 
(@@ 
fieldDefinitions@@ (
.@@( )
Length@@) /
==@@0 2
$num@@3 4
)@@4 5
{AA 
_ignoredTypesBB %
.BB% &
AddBB& )
(BB) *
contentItemBB* 5
.BB5 6
ContentTypeBB6 A
)BBA B
;BBB C
returnCC 
nullCC #
;CC# $
}DD 
varFF 
resultsFF 
=FF  !
newFF" %
ListFF& *
<FF* +#
ContentPickerFieldIndexFF+ B
>FFB C
(FFC D
)FFD E
;FFE F
foreachII 
(II 
varII  
fieldDefinitionII! 0
inII1 3
fieldDefinitionsII4 D
)IID E
{JJ 
varKK 
jPartKK !
=KK" #
(KK$ %
JObjectKK% ,
)KK, -
contentItemKK- 8
.KK8 9
ContentKK9 @
[KK@ A
fieldDefinitionKKA P
.KKP Q
PartDefinitionKKQ _
.KK_ `
NameKK` d
]KKd e
;KKe f
ifMM 
(MM 
jPartMM !
==MM" $
nullMM% )
)MM) *
{NN 
continueOO $
;OO$ %
}PP 
varRR 
jFieldRR "
=RR# $
(RR% &
JObjectRR& -
)RR- .
jPartRR. 3
[RR3 4
fieldDefinitionRR4 C
.RRC D
NameRRD H
]RRH I
;RRI J
ifTT 
(TT 
jFieldTT "
==TT# %
nullTT& *
)TT* +
{UU 
continueVV $
;VV$ %
}WW 
varYY 
fieldYY !
=YY" #
jFieldYY$ *
.YY* +
ToObjectYY+ 3
<YY3 4
ContentPickerFieldYY4 F
>YYF G
(YYG H
)YYH I
;YYI J
foreach[[ 
([[  !
var[[! $
contentItemId[[% 2
in[[3 5
field[[6 ;
.[[; <
ContentItemIds[[< J
)[[J K
{\\ 
results]] #
.]]# $
Add]]$ '
(]]' (
new]]( +#
ContentPickerFieldIndex]], C
{^^ 
Latest__  &
=__' (
contentItem__) 4
.__4 5
Latest__5 ;
,__; <
	Published``  )
=``* +
contentItem``, 7
.``7 8
	Published``8 A
,``A B
ContentItemIdaa  -
=aa. /
contentItemaa0 ;
.aa; <
ContentItemIdaa< I
,aaI J 
ContentItemVersionIdbb  4
=bb5 6
contentItembb7 B
.bbB C 
ContentItemVersionIdbbC W
,bbW X
ContentTypecc  +
=cc, -
contentItemcc. 9
.cc9 :
ContentTypecc: E
,ccE F
ContentPartdd  +
=dd, -
fieldDefinitiondd. =
.dd= >
PartDefinitiondd> L
.ddL M
NameddM Q
,ddQ R
ContentFieldee  ,
=ee- .
fieldDefinitionee/ >
.ee> ?
Nameee? C
,eeC D!
SelectedContentItemIdff  5
=ff6 7
contentItemIdff8 E
}gg 
)gg 
;gg 
}hh 
}ii 
returnkk 
resultskk "
;kk" #
}ll 
)ll 
;ll 
}mm 	
}nn 
}oo ú9
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\DateFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
DateFieldIndex 
:  !
ContentFieldIndex" 3
{ 
public 
DateTime 
? 
Date 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class "
DateFieldIndexProvider '
:( )%
ContentFieldIndexProvider* C
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public "
DateFieldIndexProvider %
(% &
IServiceProvider& 6
serviceProvider7 F
)F G
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
DateFieldIndex &
>& '
(' (
)( )
.   
Map   
(   
contentItem    
=>  ! #
{!! 
if## 
(## 
!## 
contentItem## $
.##$ %
	Published##% .
&&##/ 1
!##2 3
contentItem##3 >
.##> ?
Latest##? E
)##E F
{$$ 
return%% 
null%% #
;%%# $
}&& 
if)) 
()) 
_ignoredTypes)) %
.))% &
Contains))& .
()). /
contentItem))/ :
.)): ;
ContentType)); F
)))F G
)))G H
{** 
return++ 
null++ #
;++# $
},, %
_contentDefinitionManager// -
??=//. 1
_serviceProvider//2 B
.//B C
GetRequiredService//C U
<//U V%
IContentDefinitionManager//V o
>//o p
(//p q
)//q r
;//r s
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
contentItem22\ g
.22g h
ContentType22h s
)22s t
;22t u
if55 
(55 !
contentTypeDefinition55 -
==55. 0
null551 5
)555 6
{66 
_ignoredTypes77 %
.77% &
Add77& )
(77) *
contentItem77* 5
.775 6
ContentType776 A
)77A B
;77B C
return88 
null88 #
;88# $
}99 
var;; 
fieldDefinitions;; (
=;;) *!
contentTypeDefinition;;+ @
.<< 
Parts<< 
.<< 

SelectMany<< )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Fields<<@ F
.<<F G
Where<<G L
(<<L M
f<<M N
=><<O Q
f<<R S
.<<S T
FieldDefinition<<T c
.<<c d
Name<<d h
==<<i k
nameof<<l r
(<<r s
	DateField<<s |
)<<| }
)<<} ~
)<<~ 
.== 
ToArray==  
(==  !
)==! "
;==" #
if@@ 
(@@ 
fieldDefinitions@@ (
.@@( )
Length@@) /
==@@0 2
$num@@3 4
)@@4 5
{AA 
_ignoredTypesBB %
.BB% &
AddBB& )
(BB) *
contentItemBB* 5
.BB5 6
ContentTypeBB6 A
)BBA B
;BBB C
returnCC 
nullCC #
;CC# $
}DD 
varFF 
resultsFF 
=FF  !
newFF" %
ListFF& *
<FF* +
DateFieldIndexFF+ 9
>FF9 :
(FF: ;
)FF; <
;FF< =
foreachHH 
(HH 
varHH  
fieldDefinitionHH! 0
inHH1 3
fieldDefinitionsHH4 D
)HHD E
{II 
varJJ 
jPartJJ !
=JJ" #
(JJ$ %
JObjectJJ% ,
)JJ, -
contentItemJJ- 8
.JJ8 9
ContentJJ9 @
[JJ@ A
fieldDefinitionJJA P
.JJP Q
PartDefinitionJJQ _
.JJ_ `
NameJJ` d
]JJd e
;JJe f
ifLL 
(LL 
jPartLL !
==LL" $
nullLL% )
)LL) *
{MM 
continueNN $
;NN$ %
}OO 
varQQ 
jFieldQQ "
=QQ# $
(QQ% &
JObjectQQ& -
)QQ- .
jPartQQ. 3
[QQ3 4
fieldDefinitionQQ4 C
.QQC D
NameQQD H
]QQH I
;QQI J
ifSS 
(SS 
jFieldSS "
==SS# %
nullSS& *
)SS* +
{TT 
continueUU $
;UU$ %
}VV 
varXX 
fieldXX !
=XX" #
jFieldXX$ *
.XX* +
ToObjectXX+ 3
<XX3 4
	DateFieldXX4 =
>XX= >
(XX> ?
)XX? @
;XX@ A
resultsZZ 
.ZZ  
AddZZ  #
(ZZ# $
newZZ$ '
DateFieldIndexZZ( 6
{[[ 
Latest\\ "
=\\# $
contentItem\\% 0
.\\0 1
Latest\\1 7
,\\7 8
	Published]] %
=]]& '
contentItem]]( 3
.]]3 4
	Published]]4 =
,]]= >
ContentItemId^^ )
=^^* +
contentItem^^, 7
.^^7 8
ContentItemId^^8 E
,^^E F 
ContentItemVersionId__ 0
=__1 2
contentItem__3 >
.__> ? 
ContentItemVersionId__? S
,__S T
ContentType`` '
=``( )
contentItem``* 5
.``5 6
ContentType``6 A
,``A B
ContentPartaa '
=aa( )
fieldDefinitionaa* 9
.aa9 :
PartDefinitionaa: H
.aaH I
NameaaI M
,aaM N
ContentFieldbb (
=bb) *
fieldDefinitionbb+ :
.bb: ;
Namebb; ?
,bb? @
Datecc  
=cc! "
fieldcc# (
.cc( )
Valuecc) .
}dd 
)dd 
;dd 
}ee 
returngg 
resultsgg "
;gg" #
}hh 
)hh 
;hh 
}ii 	
}jj 
}kk œ9
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\DateTimeFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
DateTimeFieldIndex #
:$ %
ContentFieldIndex& 7
{ 
public 
DateTime 
? 
DateTime !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class &
DateTimeFieldIndexProvider +
:, -%
ContentFieldIndexProvider. G
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public &
DateTimeFieldIndexProvider )
() *
IServiceProvider* :
serviceProvider; J
)J K
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
DateTimeFieldIndex *
>* +
(+ ,
), -
.   
Map   
(   
contentItem    
=>  ! #
{!! 
if## 
(## 
!## 
contentItem## $
.##$ %
	Published##% .
&&##/ 1
!##2 3
contentItem##3 >
.##> ?
Latest##? E
)##E F
{$$ 
return%% 
null%% #
;%%# $
}&& 
if)) 
()) 
_ignoredTypes)) %
.))% &
Contains))& .
()). /
contentItem))/ :
.)): ;
ContentType)); F
)))F G
)))G H
{** 
return++ 
null++ #
;++# $
},, %
_contentDefinitionManager// -
??=//. 1
_serviceProvider//2 B
.//B C
GetRequiredService//C U
<//U V%
IContentDefinitionManager//V o
>//o p
(//p q
)//q r
;//r s
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
contentItem22\ g
.22g h
ContentType22h s
)22s t
;22t u
if55 
(55 !
contentTypeDefinition55 -
==55. 0
null551 5
)555 6
{66 
_ignoredTypes77 %
.77% &
Add77& )
(77) *
contentItem77* 5
.775 6
ContentType776 A
)77A B
;77B C
return88 
null88 #
;88# $
}99 
var;; 
fieldDefinitions;; (
=;;) *!
contentTypeDefinition;;+ @
.<< 
Parts<< 
.<< 

SelectMany<< )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Fields<<@ F
.<<F G
Where<<G L
(<<L M
f<<M N
=><<O Q
f<<R S
.<<S T
FieldDefinition<<T c
.<<c d
Name<<d h
==<<i k
nameof<<l r
(<<r s
DateTimeField	<<s Ä
)
<<Ä Å
)
<<Å Ç
)
<<Ç É
.== 
ToArray==  
(==  !
)==! "
;==" #
if@@ 
(@@ 
fieldDefinitions@@ (
.@@( )
Length@@) /
==@@0 2
$num@@3 4
)@@4 5
{AA 
_ignoredTypesBB %
.BB% &
AddBB& )
(BB) *
contentItemBB* 5
.BB5 6
ContentTypeBB6 A
)BBA B
;BBB C
returnCC 
nullCC #
;CC# $
}DD 
varFF 
resultsFF 
=FF  !
newFF" %
ListFF& *
<FF* +
DateTimeFieldIndexFF+ =
>FF= >
(FF> ?
)FF? @
;FF@ A
foreachHH 
(HH 
varHH  
fieldDefinitionHH! 0
inHH1 3
fieldDefinitionsHH4 D
)HHD E
{II 
varJJ 
jPartJJ !
=JJ" #
(JJ$ %
JObjectJJ% ,
)JJ, -
contentItemJJ- 8
.JJ8 9
ContentJJ9 @
[JJ@ A
fieldDefinitionJJA P
.JJP Q
PartDefinitionJJQ _
.JJ_ `
NameJJ` d
]JJd e
;JJe f
ifLL 
(LL 
jPartLL !
==LL" $
nullLL% )
)LL) *
{MM 
continueNN $
;NN$ %
}OO 
varQQ 
jFieldQQ "
=QQ# $
(QQ% &
JObjectQQ& -
)QQ- .
jPartQQ. 3
[QQ3 4
fieldDefinitionQQ4 C
.QQC D
NameQQD H
]QQH I
;QQI J
ifSS 
(SS 
jFieldSS "
==SS# %
nullSS& *
)SS* +
{TT 
continueUU $
;UU$ %
}VV 
varXX 
fieldXX !
=XX" #
jFieldXX$ *
.XX* +
ToObjectXX+ 3
<XX3 4
DateTimeFieldXX4 A
>XXA B
(XXB C
)XXC D
;XXD E
resultsZZ 
.ZZ  
AddZZ  #
(ZZ# $
newZZ$ '
DateTimeFieldIndexZZ( :
{[[ 
Latest\\ "
=\\# $
contentItem\\% 0
.\\0 1
Latest\\1 7
,\\7 8
	Published]] %
=]]& '
contentItem]]( 3
.]]3 4
	Published]]4 =
,]]= >
ContentItemId^^ )
=^^* +
contentItem^^, 7
.^^7 8
ContentItemId^^8 E
,^^E F 
ContentItemVersionId__ 0
=__1 2
contentItem__3 >
.__> ? 
ContentItemVersionId__? S
,__S T
ContentType`` '
=``( )
contentItem``* 5
.``5 6
ContentType``6 A
,``A B
ContentPartaa '
=aa( )
fieldDefinitionaa* 9
.aa9 :
PartDefinitionaa: H
.aaH I
NameaaI M
,aaM N
ContentFieldbb (
=bb) *
fieldDefinitionbb+ :
.bb: ;
Namebb; ?
,bb? @
DateTimecc $
=cc% &
fieldcc' ,
.cc, -
Valuecc- 2
}dd 
)dd 
;dd 
}ee 
returngg 
resultsgg "
;gg" #
}hh 
)hh 
;hh 
}ii 	
}jj 
}kk ä9
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\HtmlFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
HtmlFieldIndex 
:  !
ContentFieldIndex" 3
{ 
public 
string 
Html 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class "
HtmlFieldIndexProvider '
:( )%
ContentFieldIndexProvider* C
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public "
HtmlFieldIndexProvider %
(% &
IServiceProvider& 6
serviceProvider7 F
)F G
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
HtmlFieldIndex &
>& '
(' (
)( )
.   
Map   
(   
contentItem    
=>  ! #
{!! 
if## 
(## 
!## 
contentItem## $
.##$ %
	Published##% .
&&##/ 1
!##2 3
contentItem##3 >
.##> ?
Latest##? E
)##E F
{$$ 
return%% 
null%% #
;%%# $
}&& 
if)) 
()) 
_ignoredTypes)) %
.))% &
Contains))& .
()). /
contentItem))/ :
.)): ;
ContentType)); F
)))F G
)))G H
{** 
return++ 
null++ #
;++# $
},, %
_contentDefinitionManager// -
??=//. 1
_serviceProvider//2 B
.//B C
GetRequiredService//C U
<//U V%
IContentDefinitionManager//V o
>//o p
(//p q
)//q r
;//r s
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
contentItem22\ g
.22g h
ContentType22h s
)22s t
;22t u
if55 
(55 !
contentTypeDefinition55 -
==55. 0
null551 5
)555 6
{66 
_ignoredTypes77 %
.77% &
Add77& )
(77) *
contentItem77* 5
.775 6
ContentType776 A
)77A B
;77B C
return88 
null88 #
;88# $
}99 
var;; 
fieldDefinitions;; (
=;;) *!
contentTypeDefinition;;+ @
.<< 
Parts<< 
.<< 

SelectMany<< )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Fields<<@ F
.<<F G
Where<<G L
(<<L M
f<<M N
=><<O Q
f<<R S
.<<S T
FieldDefinition<<T c
.<<c d
Name<<d h
==<<i k
nameof<<l r
(<<r s
	HtmlField<<s |
)<<| }
)<<} ~
)<<~ 
.== 
ToArray==  
(==  !
)==! "
;==" #
if@@ 
(@@ 
fieldDefinitions@@ (
.@@( )
Length@@) /
==@@0 2
$num@@3 4
)@@4 5
{AA 
_ignoredTypesBB %
.BB% &
AddBB& )
(BB) *
contentItemBB* 5
.BB5 6
ContentTypeBB6 A
)BBA B
;BBB C
returnCC 
nullCC #
;CC# $
}DD 
varFF 
resultsFF 
=FF  !
newFF" %
ListFF& *
<FF* +
HtmlFieldIndexFF+ 9
>FF9 :
(FF: ;
)FF; <
;FF< =
foreachHH 
(HH 
varHH  
fieldDefinitionHH! 0
inHH1 3
fieldDefinitionsHH4 D
)HHD E
{II 
varJJ 
jPartJJ !
=JJ" #
(JJ$ %
JObjectJJ% ,
)JJ, -
contentItemJJ- 8
.JJ8 9
ContentJJ9 @
[JJ@ A
fieldDefinitionJJA P
.JJP Q
PartDefinitionJJQ _
.JJ_ `
NameJJ` d
]JJd e
;JJe f
ifLL 
(LL 
jPartLL !
==LL" $
nullLL% )
)LL) *
{MM 
continueNN $
;NN$ %
}OO 
varQQ 
jFieldQQ "
=QQ# $
(QQ% &
JObjectQQ& -
)QQ- .
jPartQQ. 3
[QQ3 4
fieldDefinitionQQ4 C
.QQC D
NameQQD H
]QQH I
;QQI J
ifSS 
(SS 
jFieldSS "
==SS# %
nullSS& *
)SS* +
{TT 
continueUU $
;UU$ %
}VV 
varXX 
fieldXX !
=XX" #
jFieldXX$ *
.XX* +
ToObjectXX+ 3
<XX3 4
	HtmlFieldXX4 =
>XX= >
(XX> ?
)XX? @
;XX@ A
resultsZZ 
.ZZ  
AddZZ  #
(ZZ# $
newZZ$ '
HtmlFieldIndexZZ( 6
{[[ 
Latest\\ "
=\\# $
contentItem\\% 0
.\\0 1
Latest\\1 7
,\\7 8
	Published]] %
=]]& '
contentItem]]( 3
.]]3 4
	Published]]4 =
,]]= >
ContentItemId^^ )
=^^* +
contentItem^^, 7
.^^7 8
ContentItemId^^8 E
,^^E F 
ContentItemVersionId__ 0
=__1 2
contentItem__3 >
.__> ? 
ContentItemVersionId__? S
,__S T
ContentType`` '
=``( )
contentItem``* 5
.``5 6
ContentType``6 A
,``A B
ContentPartaa '
=aa( )
fieldDefinitionaa* 9
.aa9 :
PartDefinitionaa: H
.aaH I
NameaaI M
,aaM N
ContentFieldbb (
=bb) *
fieldDefinitionbb+ :
.bb: ;
Namebb; ?
,bb? @
Htmlcc  
=cc! "
fieldcc# (
.cc( )
Htmlcc) -
}dd 
)dd 
;dd 
}ee 
returngg 
resultsgg "
;gg" #
}hh 
)hh 
;hh 
}ii 	
}jj 
}kk âI
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\LinkFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
LinkFieldIndex 
:  !
ContentFieldIndex" 3
{ 
public 
const 
int 

MaxUrlSize #
=$ %
$num& )
;) *
public 
const 
int 
MaxTextSize $
=% &
$num' *
;* +
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
BigUrl 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
BigText 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class "
LinkFieldIndexProvider '
:( )%
ContentFieldIndexProvider* C
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public!! "
LinkFieldIndexProvider!! %
(!!% &
IServiceProvider!!& 6
serviceProvider!!7 F
)!!F G
{"" 	
_serviceProvider## 
=## 
serviceProvider## .
;##. /
}$$ 	
public&& 
override&& 
void&& 
Describe&& %
(&&% &
DescribeContext&&& 5
<&&5 6
ContentItem&&6 A
>&&A B
context&&C J
)&&J K
{'' 	
context(( 
.(( 
For(( 
<(( 
LinkFieldIndex(( &
>((& '
(((' (
)((( )
.)) 
Map)) 
()) 
contentItem))  
=>))! #
{** 
if,, 
(,, 
!,, 
contentItem,, $
.,,$ %
	Published,,% .
&&,,/ 1
!,,2 3
contentItem,,3 >
.,,> ?
Latest,,? E
),,E F
{-- 
return.. 
null.. #
;..# $
}// 
if22 
(22 
_ignoredTypes22 %
.22% &
Contains22& .
(22. /
contentItem22/ :
.22: ;
ContentType22; F
)22F G
)22G H
{33 
return44 
null44 #
;44# $
}55 
if77 
(77 
!77 
contentItem77 $
.77$ %
Latest77% +
&&77, .
!77/ 0
contentItem770 ;
.77; <
	Published77< E
)77E F
{88 
return99 
null99 #
;99# $
}:: %
_contentDefinitionManager== -
??===. 1
_serviceProvider==2 B
.==B C
GetRequiredService==C U
<==U V%
IContentDefinitionManager==V o
>==o p
(==p q
)==q r
;==r s
var@@ !
contentTypeDefinition@@ -
=@@. /%
_contentDefinitionManager@@0 I
.@@I J
GetTypeDefinition@@J [
(@@[ \
contentItem@@\ g
.@@g h
ContentType@@h s
)@@s t
;@@t u
ifCC 
(CC !
contentTypeDefinitionCC -
==CC. 0
nullCC1 5
)CC5 6
{DD 
_ignoredTypesEE %
.EE% &
AddEE& )
(EE) *
contentItemEE* 5
.EE5 6
ContentTypeEE6 A
)EEA B
;EEB C
returnFF 
nullFF #
;FF# $
}GG 
varII 
fieldDefinitionsII (
=II) *!
contentTypeDefinitionII+ @
.JJ 
PartsJJ 
.JJ 

SelectManyJJ )
(JJ) *
xJJ* +
=>JJ, .
xJJ/ 0
.JJ0 1
PartDefinitionJJ1 ?
.JJ? @
FieldsJJ@ F
.JJF G
WhereJJG L
(JJL M
fJJM N
=>JJO Q
fJJR S
.JJS T
FieldDefinitionJJT c
.JJc d
NameJJd h
==JJi k
nameofJJl r
(JJr s
	LinkFieldJJs |
)JJ| }
)JJ} ~
)JJ~ 
.KK 
ToArrayKK  
(KK  !
)KK! "
;KK" #
ifNN 
(NN 
fieldDefinitionsNN (
.NN( )
LengthNN) /
==NN0 2
$numNN3 4
)NN4 5
{OO 
_ignoredTypesPP %
.PP% &
AddPP& )
(PP) *
contentItemPP* 5
.PP5 6
ContentTypePP6 A
)PPA B
;PPB C
returnQQ 
nullQQ #
;QQ# $
}RR 
varTT 
resultsTT 
=TT  !
newTT" %
ListTT& *
<TT* +
LinkFieldIndexTT+ 9
>TT9 :
(TT: ;
)TT; <
;TT< =
foreachVV 
(VV 
varVV  
fieldDefinitionVV! 0
inVV1 3
fieldDefinitionsVV4 D
)VVD E
{WW 
varXX 
jPartXX !
=XX" #
(XX$ %
JObjectXX% ,
)XX, -
contentItemXX- 8
.XX8 9
ContentXX9 @
[XX@ A
fieldDefinitionXXA P
.XXP Q
PartDefinitionXXQ _
.XX_ `
NameXX` d
]XXd e
;XXe f
ifZZ 
(ZZ 
jPartZZ !
==ZZ" $
nullZZ% )
)ZZ) *
{[[ 
continue\\ $
;\\$ %
}]] 
var__ 
jField__ "
=__# $
(__% &
JObject__& -
)__- .
jPart__. 3
[__3 4
fieldDefinition__4 C
.__C D
Name__D H
]__H I
;__I J
ifaa 
(aa 
jFieldaa "
==aa# %
nullaa& *
)aa* +
{bb 
continuecc $
;cc$ %
}dd 
varff 
fieldff !
=ff" #
jFieldff$ *
.ff* +
ToObjectff+ 3
<ff3 4
	LinkFieldff4 =
>ff= >
(ff> ?
)ff? @
;ff@ A
resultshh 
.hh  
Addhh  #
(hh# $
newhh$ '
LinkFieldIndexhh( 6
{ii 
Latestjj "
=jj# $
contentItemjj% 0
.jj0 1
Latestjj1 7
,jj7 8
	Publishedkk %
=kk& '
contentItemkk( 3
.kk3 4
	Publishedkk4 =
,kk= >
ContentItemIdll )
=ll* +
contentItemll, 7
.ll7 8
ContentItemIdll8 E
,llE F 
ContentItemVersionIdmm 0
=mm1 2
contentItemmm3 >
.mm> ? 
ContentItemVersionIdmm? S
,mmS T
ContentTypenn '
=nn( )
contentItemnn* 5
.nn5 6
ContentTypenn6 A
,nnA B
ContentPartoo '
=oo( )
fieldDefinitionoo* 9
.oo9 :
PartDefinitionoo: H
.ooH I
NameooI M
,ooM N
ContentFieldpp (
=pp) *
fieldDefinitionpp+ :
.pp: ;
Namepp; ?
,pp? @
Urlqq 
=qq  !
fieldqq" '
.qq' (
Urlqq( +
?qq+ ,
.qq, -
	Substringqq- 6
(qq6 7
$numqq7 8
,qq8 9
Mathqq: >
.qq> ?
Minqq? B
(qqB C
fieldqqC H
.qqH I
UrlqqI L
.qqL M
LengthqqM S
,qqS T
LinkFieldIndexqqU c
.qqc d

MaxUrlSizeqqd n
)qqn o
)qqo p
,qqp q
BigUrlrr "
=rr# $
fieldrr% *
.rr* +
Urlrr+ .
,rr. /
Textss  
=ss! "
fieldss# (
.ss( )
Textss) -
?ss- .
.ss. /
	Substringss/ 8
(ss8 9
$numss9 :
,ss: ;
Mathss< @
.ss@ A
MinssA D
(ssD E
fieldssE J
.ssJ K
TextssK O
.ssO P
LengthssP V
,ssV W
LinkFieldIndexssX f
.ssf g
MaxTextSizessg r
)ssr s
)sss t
,sst u
BigTexttt #
=tt$ %
fieldtt& +
.tt+ ,
Texttt, 0
}uu 
)uu 
;uu 
}vv 
returnxx 
resultsxx "
;xx" #
}yy 
)yy 
;yy 
}zz 	
}{{ 
}|| «à
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\Migrations.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 

Migrations 
: 
DataMigration +
{		 
public

 
int

 
Create

 
(

 
)

 
{ 	
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
TextFieldIndex. <
>< =
(= >
table> C
=>D F
tableG L
. 
Column 
< 
string 
> 
(  
$str  /
,/ 0
column1 7
=>8 :
column; A
.A B

WithLengthB L
(L M
$numM O
)O P
)P Q
. 
Column 
< 
string 
> 
(  
$str  6
,6 7
column8 >
=>? A
columnB H
.H I

WithLengthI S
(S T
$numT V
)V W
)W X
. 
Column 
< 
string 
> 
(  
$str  -
,- .
column/ 5
=>6 8
column9 ?
.? @

WithLength@ J
(J K
ContentItemIndexK [
.[ \
MaxContentTypeSize\ n
)n o
)o p
. 
Column 
< 
string 
> 
(  
$str  -
,- .
column/ 5
=>6 8
column9 ?
.? @

WithLength@ J
(J K
ContentItemIndexK [
.[ \
MaxContentPartSize\ n
)n o
)o p
. 
Column 
< 
string 
> 
(  
$str  .
,. /
column0 6
=>7 9
column: @
.@ A

WithLengthA K
(K L
ContentItemIndexL \
.\ ]
MaxContentFieldSize] p
)p q
)q r
. 
Column 
< 
bool 
> 
( 
$str )
,) *
column+ 1
=>2 4
column5 ;
.; <
Nullable< D
(D E
)E F
)F G
. 
Column 
< 
bool 
> 
( 
$str &
,& '
column( .
=>/ 1
column2 8
.8 9
Nullable9 A
(A B
)B C
)C D
. 
Column 
< 
string 
> 
(  
$str  &
,& '
column( .
=>/ 1
column2 8
.8 9
Nullable9 A
(A B
)B C
.C D

WithLengthD N
(N O
TextFieldIndexO ]
.] ^
MaxTextSize^ i
)i j
)j k
. 
Column 
< 
string 
> 
(  
$str  )
,) *
column+ 1
=>2 4
column5 ;
.; <
Nullable< D
(D E
)E F
.F G
	UnlimitedG P
(P Q
)Q R
)R S
) 
; 
SchemaBuilder 
. 
AlterIndexTable )
<) *
TextFieldIndex* 8
>8 9
(9 :
table: ?
=>@ B
tableC H
. 
CreateIndex 
( 
$str <
,< =
$str  
,  !
$str #
,# $
$str *
,* +
$str   
,    
$str!! 
)!! 
)"" 
;"" 
SchemaBuilder$$ 
.$$ 
AlterIndexTable$$ )
<$$) *
TextFieldIndex$$* 8
>$$8 9
($$9 :
table$$: ?
=>$$@ B
table$$C H
.%% 
CreateIndex%% 
(%% 
$str%% H
,%%H I
$str&&  
,&&  !
$str'' !
,''! "
$str(( !
,((! "
$str)) "
,))" #
$str** 
,**  
$str++ 
)++ 
),, 
;,, 
SchemaBuilder.. 
... 
AlterIndexTable.. )
<..) *
TextFieldIndex..* 8
>..8 9
(..9 :
table..: ?
=>..@ B
table..C H
.// 
CreateIndex// 
(// 
$str// A
,//A B
$str00  
,00  !
$str11 
,11 
$str22 
,22  
$str33 
)33 
)44 
;44 
SchemaBuilder66 
.66 
CreateMapIndexTable66 -
<66- .
BooleanFieldIndex66. ?
>66? @
(66@ A
table66A F
=>66G I
table66J O
.77 
Column77 
<77 
string77 
>77 
(77  
$str77  /
,77/ 0
column771 7
=>778 :
column77; A
.77A B

WithLength77B L
(77L M
$num77M O
)77O P
)77P Q
.88 
Column88 
<88 
string88 
>88 
(88  
$str88  6
,886 7
column888 >
=>88? A
column88B H
.88H I

WithLength88I S
(88S T
$num88T V
)88V W
)88W X
.99 
Column99 
<99 
string99 
>99 
(99  
$str99  -
,99- .
column99/ 5
=>996 8
column999 ?
.99? @

WithLength99@ J
(99J K
ContentItemIndex99K [
.99[ \
MaxContentTypeSize99\ n
)99n o
)99o p
.:: 
Column:: 
<:: 
string:: 
>:: 
(::  
$str::  -
,::- .
column::/ 5
=>::6 8
column::9 ?
.::? @

WithLength::@ J
(::J K
ContentItemIndex::K [
.::[ \
MaxContentPartSize::\ n
)::n o
)::o p
.;; 
Column;; 
<;; 
string;; 
>;; 
(;;  
$str;;  .
,;;. /
column;;0 6
=>;;7 9
column;;: @
.;;@ A

WithLength;;A K
(;;K L
ContentItemIndex;;L \
.;;\ ]
MaxContentFieldSize;;] p
);;p q
);;q r
.<< 
Column<< 
<<< 
bool<< 
><< 
(<< 
$str<< )
,<<) *
column<<+ 1
=><<2 4
column<<5 ;
.<<; <
Nullable<<< D
(<<D E
)<<E F
)<<F G
.== 
Column== 
<== 
bool== 
>== 
(== 
$str== &
,==& '
column==( .
=>==/ 1
column==2 8
.==8 9
Nullable==9 A
(==A B
)==B C
)==C D
.>> 
Column>> 
<>> 
bool>> 
>>> 
(>> 
$str>> '
,>>' (
column>>) /
=>>>0 2
column>>3 9
.>>9 :
Nullable>>: B
(>>B C
)>>C D
)>>D E
)?? 
;?? 
SchemaBuilderAA 
.AA 
AlterIndexTableAA )
<AA) *
BooleanFieldIndexAA* ;
>AA; <
(AA< =
tableAA= B
=>AAC E
tableAAF K
.BB 
CreateIndexBB 
(BB 
$strBB ?
,BB? @
$strCC  
,CC  !
$strDD #
,DD# $
$strEE *
,EE* +
$strFF 
,FF  
$strGG 
)GG 
)HH 
;HH 
SchemaBuilderJJ 
.JJ 
AlterIndexTableJJ )
<JJ) *
BooleanFieldIndexJJ* ;
>JJ; <
(JJ< =
tableJJ= B
=>JJC E
tableJJF K
.KK 
CreateIndexKK 
(KK 
$strKK K
,KKK L
$strLL  
,LL  !
$strMM !
,MM! "
$strNN !
,NN! "
$strOO "
,OO" #
$strPP 
,PP 
$strQQ 
,QQ  
$strRR 
)RR 
)SS 
;SS 
SchemaBuilderUU 
.UU 
CreateMapIndexTableUU -
<UU- .
NumericFieldIndexUU. ?
>UU? @
(UU@ A
tableUUA F
=>UUG I
tableUUJ O
.VV 
ColumnVV 
<VV 
stringVV 
>VV 
(VV  
$strVV  /
,VV/ 0
columnVV1 7
=>VV8 :
columnVV; A
.VVA B

WithLengthVVB L
(VVL M
$numVVM O
)VVO P
)VVP Q
.WW 
ColumnWW 
<WW 
stringWW 
>WW 
(WW  
$strWW  6
,WW6 7
columnWW8 >
=>WW? A
columnWWB H
.WWH I

WithLengthWWI S
(WWS T
$numWWT V
)WWV W
)WWW X
.XX 
ColumnXX 
<XX 
stringXX 
>XX 
(XX  
$strXX  -
,XX- .
columnXX/ 5
=>XX6 8
columnXX9 ?
.XX? @

WithLengthXX@ J
(XXJ K
ContentItemIndexXXK [
.XX[ \
MaxContentTypeSizeXX\ n
)XXn o
)XXo p
.YY 
ColumnYY 
<YY 
stringYY 
>YY 
(YY  
$strYY  -
,YY- .
columnYY/ 5
=>YY6 8
columnYY9 ?
.YY? @

WithLengthYY@ J
(YYJ K
ContentItemIndexYYK [
.YY[ \
MaxContentPartSizeYY\ n
)YYn o
)YYo p
.ZZ 
ColumnZZ 
<ZZ 
stringZZ 
>ZZ 
(ZZ  
$strZZ  .
,ZZ. /
columnZZ0 6
=>ZZ7 9
columnZZ: @
.ZZ@ A

WithLengthZZA K
(ZZK L
ContentItemIndexZZL \
.ZZ\ ]
MaxContentFieldSizeZZ] p
)ZZp q
)ZZq r
.[[ 
Column[[ 
<[[ 
bool[[ 
>[[ 
([[ 
$str[[ )
,[[) *
column[[+ 1
=>[[2 4
column[[5 ;
.[[; <
Nullable[[< D
([[D E
)[[E F
)[[F G
.\\ 
Column\\ 
<\\ 
bool\\ 
>\\ 
(\\ 
$str\\ &
,\\& '
column\\( .
=>\\/ 1
column\\2 8
.\\8 9
Nullable\\9 A
(\\A B
)\\B C
)\\C D
.]] 
Column]] 
<]] 
decimal]] 
>]]  
(]]  !
$str]]! *
,]]* +
column]], 2
=>]]3 5
column]]6 <
.]]< =
Nullable]]= E
(]]E F
)]]F G
)]]G H
)^^ 
;^^ 
SchemaBuilder`` 
.`` 
AlterIndexTable`` )
<``) *
NumericFieldIndex``* ;
>``; <
(``< =
table``= B
=>``C E
table``F K
.aa 
CreateIndexaa 
(aa 
$straa ?
,aa? @
$strbb  
,bb  !
$strcc #
,cc# $
$strdd *
,dd* +
$stree 
,ee  
$strff 
)ff 
)gg 
;gg 
SchemaBuilderii 
.ii 
AlterIndexTableii )
<ii) *
NumericFieldIndexii* ;
>ii; <
(ii< =
tableii= B
=>iiC E
tableiiF K
.jj 
CreateIndexjj 
(jj 
$strjj K
,jjK L
$strkk  
,kk  !
$strll !
,ll! "
$strmm !
,mm! "
$strnn "
,nn" #
$stroo 
,oo  
$strpp 
)pp 
)qq 
;qq 
SchemaBuilderss 
.ss 
AlterIndexTabless )
<ss) *
NumericFieldIndexss* ;
>ss; <
(ss< =
tabless= B
=>ssC E
tablessF K
.tt 
CreateIndextt 
(tt 
$strtt G
,ttG H
$struu  
,uu  !
$strvv 
,vv 
$strww 
,ww  
$strxx 
)xx 
)yy 
;yy 
SchemaBuilder{{ 
.{{ 
CreateMapIndexTable{{ -
<{{- .
DateTimeFieldIndex{{. @
>{{@ A
({{A B
table{{B G
=>{{H J
table{{K P
.|| 
Column|| 
<|| 
string|| 
>|| 
(||  
$str||  /
,||/ 0
column||1 7
=>||8 :
column||; A
.||A B

WithLength||B L
(||L M
$num||M O
)||O P
)||P Q
.}} 
Column}} 
<}} 
string}} 
>}} 
(}}  
$str}}  6
,}}6 7
column}}8 >
=>}}? A
column}}B H
.}}H I

WithLength}}I S
(}}S T
$num}}T V
)}}V W
)}}W X
.~~ 
Column~~ 
<~~ 
string~~ 
>~~ 
(~~  
$str~~  -
,~~- .
column~~/ 5
=>~~6 8
column~~9 ?
.~~? @

WithLength~~@ J
(~~J K
ContentItemIndex~~K [
.~~[ \
MaxContentTypeSize~~\ n
)~~n o
)~~o p
. 
Column 
< 
string 
> 
(  
$str  -
,- .
column/ 5
=>6 8
column9 ?
.? @

WithLength@ J
(J K
ContentItemIndexK [
.[ \
MaxContentPartSize\ n
)n o
)o p
.
ÄÄ 
Column
ÄÄ 
<
ÄÄ 
string
ÄÄ 
>
ÄÄ 
(
ÄÄ  
$str
ÄÄ  .
,
ÄÄ. /
column
ÄÄ0 6
=>
ÄÄ7 9
column
ÄÄ: @
.
ÄÄ@ A

WithLength
ÄÄA K
(
ÄÄK L
ContentItemIndex
ÄÄL \
.
ÄÄ\ ]!
MaxContentFieldSize
ÄÄ] p
)
ÄÄp q
)
ÄÄq r
.
ÅÅ 
Column
ÅÅ 
<
ÅÅ 
bool
ÅÅ 
>
ÅÅ 
(
ÅÅ 
$str
ÅÅ )
,
ÅÅ) *
column
ÅÅ+ 1
=>
ÅÅ2 4
column
ÅÅ5 ;
.
ÅÅ; <
Nullable
ÅÅ< D
(
ÅÅD E
)
ÅÅE F
)
ÅÅF G
.
ÇÇ 
Column
ÇÇ 
<
ÇÇ 
bool
ÇÇ 
>
ÇÇ 
(
ÇÇ 
$str
ÇÇ &
,
ÇÇ& '
column
ÇÇ( .
=>
ÇÇ/ 1
column
ÇÇ2 8
.
ÇÇ8 9
Nullable
ÇÇ9 A
(
ÇÇA B
)
ÇÇB C
)
ÇÇC D
.
ÉÉ 
Column
ÉÉ 
<
ÉÉ 
DateTime
ÉÉ  
>
ÉÉ  !
(
ÉÉ! "
$str
ÉÉ" ,
,
ÉÉ, -
column
ÉÉ. 4
=>
ÉÉ5 7
column
ÉÉ8 >
.
ÉÉ> ?
Nullable
ÉÉ? G
(
ÉÉG H
)
ÉÉH I
)
ÉÉI J
)
ÑÑ 
;
ÑÑ 
SchemaBuilder
ÜÜ 
.
ÜÜ 
AlterIndexTable
ÜÜ )
<
ÜÜ) * 
DateTimeFieldIndex
ÜÜ* <
>
ÜÜ< =
(
ÜÜ= >
table
ÜÜ> C
=>
ÜÜD F
table
ÜÜG L
.
áá 
CreateIndex
áá 
(
áá 
$str
áá @
,
áá@ A
$str
àà  
,
àà  !
$str
ââ #
,
ââ# $
$str
ää *
,
ää* +
$str
ãã 
,
ãã  
$str
åå 
)
åå 
)
çç 
;
çç 
SchemaBuilder
èè 
.
èè 
AlterIndexTable
èè )
<
èè) * 
DateTimeFieldIndex
èè* <
>
èè< =
(
èè= >
table
èè> C
=>
èèD F
table
èèG L
.
êê 
CreateIndex
êê 
(
êê 
$str
êê L
,
êêL M
$str
ëë  
,
ëë  !
$str
íí !
,
íí! "
$str
ìì !
,
ìì! "
$str
îî "
,
îî" #
$str
ïï 
,
ïï  
$str
ññ 
)
ññ 
)
óó 
;
óó 
SchemaBuilder
ôô 
.
ôô 
AlterIndexTable
ôô )
<
ôô) * 
DateTimeFieldIndex
ôô* <
>
ôô< =
(
ôô= >
table
ôô> C
=>
ôôD F
table
ôôG L
.
öö 
CreateIndex
öö 
(
öö 
$str
öö I
,
ööI J
$str
õõ  
,
õõ  !
$str
úú 
,
úú 
$str
ùù 
,
ùù  
$str
ûû 
)
ûû 
)
üü 
;
üü 
SchemaBuilder
°° 
.
°° !
CreateMapIndexTable
°° -
<
°°- .
DateFieldIndex
°°. <
>
°°< =
(
°°= >
table
°°> C
=>
°°D F
table
°°G L
.
¢¢ 
Column
¢¢ 
<
¢¢ 
string
¢¢ 
>
¢¢ 
(
¢¢  
$str
¢¢  /
,
¢¢/ 0
column
¢¢1 7
=>
¢¢8 :
column
¢¢; A
.
¢¢A B

WithLength
¢¢B L
(
¢¢L M
$num
¢¢M O
)
¢¢O P
)
¢¢P Q
.
££ 
Column
££ 
<
££ 
string
££ 
>
££ 
(
££  
$str
££  6
,
££6 7
column
££8 >
=>
££? A
column
££B H
.
££H I

WithLength
££I S
(
££S T
$num
££T V
)
££V W
)
££W X
.
§§ 
Column
§§ 
<
§§ 
string
§§ 
>
§§ 
(
§§  
$str
§§  -
,
§§- .
column
§§/ 5
=>
§§6 8
column
§§9 ?
.
§§? @

WithLength
§§@ J
(
§§J K
ContentItemIndex
§§K [
.
§§[ \ 
MaxContentTypeSize
§§\ n
)
§§n o
)
§§o p
.
•• 
Column
•• 
<
•• 
string
•• 
>
•• 
(
••  
$str
••  -
,
••- .
column
••/ 5
=>
••6 8
column
••9 ?
.
••? @

WithLength
••@ J
(
••J K
ContentItemIndex
••K [
.
••[ \ 
MaxContentPartSize
••\ n
)
••n o
)
••o p
.
¶¶ 
Column
¶¶ 
<
¶¶ 
string
¶¶ 
>
¶¶ 
(
¶¶  
$str
¶¶  .
,
¶¶. /
column
¶¶0 6
=>
¶¶7 9
column
¶¶: @
.
¶¶@ A

WithLength
¶¶A K
(
¶¶K L
ContentItemIndex
¶¶L \
.
¶¶\ ]!
MaxContentFieldSize
¶¶] p
)
¶¶p q
)
¶¶q r
.
ßß 
Column
ßß 
<
ßß 
bool
ßß 
>
ßß 
(
ßß 
$str
ßß )
,
ßß) *
column
ßß+ 1
=>
ßß2 4
column
ßß5 ;
.
ßß; <
Nullable
ßß< D
(
ßßD E
)
ßßE F
)
ßßF G
.
®® 
Column
®® 
<
®® 
bool
®® 
>
®® 
(
®® 
$str
®® &
,
®®& '
column
®®( .
=>
®®/ 1
column
®®2 8
.
®®8 9
Nullable
®®9 A
(
®®A B
)
®®B C
)
®®C D
.
©© 
Column
©© 
<
©© 
DateTime
©©  
>
©©  !
(
©©! "
$str
©©" (
,
©©( )
column
©©* 0
=>
©©1 3
column
©©4 :
.
©©: ;
Nullable
©©; C
(
©©C D
)
©©D E
)
©©E F
)
™™ 
;
™™ 
SchemaBuilder
¨¨ 
.
¨¨ 
AlterIndexTable
¨¨ )
<
¨¨) *
DateFieldIndex
¨¨* 8
>
¨¨8 9
(
¨¨9 :
table
¨¨: ?
=>
¨¨@ B
table
¨¨C H
.
≠≠ 
CreateIndex
≠≠ 
(
≠≠ 
$str
≠≠ <
,
≠≠< =
$str
ÆÆ  
,
ÆÆ  !
$str
ØØ #
,
ØØ# $
$str
∞∞ *
,
∞∞* +
$str
±± 
,
±±  
$str
≤≤ 
)
≤≤ 
)
≥≥ 
;
≥≥ 
SchemaBuilder
µµ 
.
µµ 
AlterIndexTable
µµ )
<
µµ) *
DateFieldIndex
µµ* 8
>
µµ8 9
(
µµ9 :
table
µµ: ?
=>
µµ@ B
table
µµC H
.
∂∂ 
CreateIndex
∂∂ 
(
∂∂ 
$str
∂∂ H
,
∂∂H I
$str
∑∑  
,
∑∑  !
$str
∏∏ !
,
∏∏! "
$str
ππ !
,
ππ! "
$str
∫∫ "
,
∫∫" #
$str
ªª 
,
ªª  
$str
ºº 
)
ºº 
)
ΩΩ 
;
ΩΩ 
SchemaBuilder
øø 
.
øø 
AlterIndexTable
øø )
<
øø) *
DateFieldIndex
øø* 8
>
øø8 9
(
øø9 :
table
øø: ?
=>
øø@ B
table
øøC H
.
¿¿ 
CreateIndex
¿¿ 
(
¿¿ 
$str
¿¿ A
,
¿¿A B
$str
¡¡  
,
¡¡  !
$str
¬¬ !
,
¬¬! "
$str
√√ 
,
√√ 
$str
ƒƒ 
,
ƒƒ  
$str
≈≈ 
)
≈≈ 
)
∆∆ 
;
∆∆ 
SchemaBuilder
»» 
.
»» !
CreateMapIndexTable
»» -
<
»»- .%
ContentPickerFieldIndex
»». E
>
»»E F
(
»»F G
table
»»G L
=>
»»M O
table
»»P U
.
…… 
Column
…… 
<
…… 
string
…… 
>
…… 
(
……  
$str
……  /
,
……/ 0
column
……1 7
=>
……8 :
column
……; A
.
……A B

WithLength
……B L
(
……L M
$num
……M O
)
……O P
)
……P Q
.
   
Column
   
<
   
string
   
>
   
(
    
$str
    6
,
  6 7
column
  8 >
=>
  ? A
column
  B H
.
  H I

WithLength
  I S
(
  S T
$num
  T V
)
  V W
)
  W X
.
ÀÀ 
Column
ÀÀ 
<
ÀÀ 
string
ÀÀ 
>
ÀÀ 
(
ÀÀ  
$str
ÀÀ  -
,
ÀÀ- .
column
ÀÀ/ 5
=>
ÀÀ6 8
column
ÀÀ9 ?
.
ÀÀ? @

WithLength
ÀÀ@ J
(
ÀÀJ K
ContentItemIndex
ÀÀK [
.
ÀÀ[ \ 
MaxContentTypeSize
ÀÀ\ n
)
ÀÀn o
)
ÀÀo p
.
ÃÃ 
Column
ÃÃ 
<
ÃÃ 
string
ÃÃ 
>
ÃÃ 
(
ÃÃ  
$str
ÃÃ  -
,
ÃÃ- .
column
ÃÃ/ 5
=>
ÃÃ6 8
column
ÃÃ9 ?
.
ÃÃ? @

WithLength
ÃÃ@ J
(
ÃÃJ K
ContentItemIndex
ÃÃK [
.
ÃÃ[ \ 
MaxContentPartSize
ÃÃ\ n
)
ÃÃn o
)
ÃÃo p
.
ÕÕ 
Column
ÕÕ 
<
ÕÕ 
string
ÕÕ 
>
ÕÕ 
(
ÕÕ  
$str
ÕÕ  .
,
ÕÕ. /
column
ÕÕ0 6
=>
ÕÕ7 9
column
ÕÕ: @
.
ÕÕ@ A

WithLength
ÕÕA K
(
ÕÕK L
ContentItemIndex
ÕÕL \
.
ÕÕ\ ]!
MaxContentFieldSize
ÕÕ] p
)
ÕÕp q
)
ÕÕq r
.
ŒŒ 
Column
ŒŒ 
<
ŒŒ 
bool
ŒŒ 
>
ŒŒ 
(
ŒŒ 
$str
ŒŒ )
,
ŒŒ) *
column
ŒŒ+ 1
=>
ŒŒ2 4
column
ŒŒ5 ;
.
ŒŒ; <
Nullable
ŒŒ< D
(
ŒŒD E
)
ŒŒE F
)
ŒŒF G
.
œœ 
Column
œœ 
<
œœ 
bool
œœ 
>
œœ 
(
œœ 
$str
œœ &
,
œœ& '
column
œœ( .
=>
œœ/ 1
column
œœ2 8
.
œœ8 9
Nullable
œœ9 A
(
œœA B
)
œœB C
)
œœC D
.
–– 
Column
–– 
<
–– 
string
–– 
>
–– 
(
––  
$str
––  7
,
––7 8
column
––9 ?
=>
––@ B
column
––C I
.
––I J

WithLength
––J T
(
––T U
$num
––U W
)
––W X
)
––X Y
)
—— 
;
—— 
SchemaBuilder
”” 
.
”” 
AlterIndexTable
”” )
<
””) *%
ContentPickerFieldIndex
””* A
>
””A B
(
””B C
table
””C H
=>
””I K
table
””L Q
.
‘‘ 
CreateIndex
‘‘ 
(
‘‘ 
$str
‘‘ E
,
‘‘E F
$str
’’  
,
’’  !
$str
÷÷ #
,
÷÷# $
$str
◊◊ *
,
◊◊* +
$str
ÿÿ 
,
ÿÿ  
$str
ŸŸ 
)
ŸŸ 
)
⁄⁄ 
;
⁄⁄ 
SchemaBuilder
‹‹ 
.
‹‹ 
AlterIndexTable
‹‹ )
<
‹‹) *%
ContentPickerFieldIndex
‹‹* A
>
‹‹A B
(
‹‹B C
table
‹‹C H
=>
‹‹I K
table
‹‹L Q
.
›› 
CreateIndex
›› 
(
›› 
$str
›› Q
,
››Q R
$str
ﬁﬁ  
,
ﬁﬁ  !
$str
ﬂﬂ !
,
ﬂﬂ! "
$str
‡‡ !
,
‡‡! "
$str
·· "
,
··" #
$str
‚‚ 
,
‚‚  
$str
„„ 
)
„„ 
)
‰‰ 
;
‰‰ 
SchemaBuilder
ÊÊ 
.
ÊÊ 
AlterIndexTable
ÊÊ )
<
ÊÊ) *%
ContentPickerFieldIndex
ÊÊ* A
>
ÊÊA B
(
ÊÊB C
table
ÊÊC H
=>
ÊÊI K
table
ÊÊL Q
.
ÁÁ 
CreateIndex
ÁÁ 
(
ÁÁ 
$str
ÁÁ O
,
ÁÁO P
$str
ËË  
,
ËË  !
$str
ÈÈ +
,
ÈÈ+ ,
$str
ÍÍ 
,
ÍÍ  
$str
ÎÎ 
)
ÎÎ 
)
ÏÏ 
;
ÏÏ 
SchemaBuilder
ÓÓ 
.
ÓÓ !
CreateMapIndexTable
ÓÓ -
<
ÓÓ- .
TimeFieldIndex
ÓÓ. <
>
ÓÓ< =
(
ÓÓ= >
table
ÓÓ> C
=>
ÓÓD F
table
ÓÓG L
.
ÔÔ 
Column
ÔÔ 
<
ÔÔ 
string
ÔÔ 
>
ÔÔ 
(
ÔÔ  
$str
ÔÔ  /
,
ÔÔ/ 0
column
ÔÔ1 7
=>
ÔÔ8 :
column
ÔÔ; A
.
ÔÔA B

WithLength
ÔÔB L
(
ÔÔL M
$num
ÔÔM O
)
ÔÔO P
)
ÔÔP Q
.
 
Column
 
<
 
string
 
>
 
(
  
$str
  6
,
6 7
column
8 >
=>
? A
column
B H
.
H I

WithLength
I S
(
S T
$num
T V
)
V W
)
W X
.
ÒÒ 
Column
ÒÒ 
<
ÒÒ 
string
ÒÒ 
>
ÒÒ 
(
ÒÒ  
$str
ÒÒ  -
,
ÒÒ- .
column
ÒÒ/ 5
=>
ÒÒ6 8
column
ÒÒ9 ?
.
ÒÒ? @

WithLength
ÒÒ@ J
(
ÒÒJ K
ContentItemIndex
ÒÒK [
.
ÒÒ[ \ 
MaxContentTypeSize
ÒÒ\ n
)
ÒÒn o
)
ÒÒo p
.
ÚÚ 
Column
ÚÚ 
<
ÚÚ 
string
ÚÚ 
>
ÚÚ 
(
ÚÚ  
$str
ÚÚ  -
,
ÚÚ- .
column
ÚÚ/ 5
=>
ÚÚ6 8
column
ÚÚ9 ?
.
ÚÚ? @

WithLength
ÚÚ@ J
(
ÚÚJ K
ContentItemIndex
ÚÚK [
.
ÚÚ[ \ 
MaxContentPartSize
ÚÚ\ n
)
ÚÚn o
)
ÚÚo p
.
ÛÛ 
Column
ÛÛ 
<
ÛÛ 
string
ÛÛ 
>
ÛÛ 
(
ÛÛ  
$str
ÛÛ  .
,
ÛÛ. /
column
ÛÛ0 6
=>
ÛÛ7 9
column
ÛÛ: @
.
ÛÛ@ A

WithLength
ÛÛA K
(
ÛÛK L
ContentItemIndex
ÛÛL \
.
ÛÛ\ ]!
MaxContentFieldSize
ÛÛ] p
)
ÛÛp q
)
ÛÛq r
.
ÙÙ 
Column
ÙÙ 
<
ÙÙ 
bool
ÙÙ 
>
ÙÙ 
(
ÙÙ 
$str
ÙÙ )
,
ÙÙ) *
column
ÙÙ+ 1
=>
ÙÙ2 4
column
ÙÙ5 ;
.
ÙÙ; <
Nullable
ÙÙ< D
(
ÙÙD E
)
ÙÙE F
)
ÙÙF G
.
ıı 
Column
ıı 
<
ıı 
bool
ıı 
>
ıı 
(
ıı 
$str
ıı &
,
ıı& '
column
ıı( .
=>
ıı/ 1
column
ıı2 8
.
ıı8 9
Nullable
ıı9 A
(
ııA B
)
ııB C
)
ııC D
.
ˆˆ 
Column
ˆˆ 
<
ˆˆ 
DateTime
ˆˆ  
>
ˆˆ  !
(
ˆˆ! "
$str
ˆˆ" (
,
ˆˆ( )
column
ˆˆ* 0
=>
ˆˆ1 3
column
ˆˆ4 :
.
ˆˆ: ;
Nullable
ˆˆ; C
(
ˆˆC D
)
ˆˆD E
)
ˆˆE F
)
˜˜ 
;
˜˜ 
SchemaBuilder
˘˘ 
.
˘˘ 
AlterIndexTable
˘˘ )
<
˘˘) *
TimeFieldIndex
˘˘* 8
>
˘˘8 9
(
˘˘9 :
table
˘˘: ?
=>
˘˘@ B
table
˘˘C H
.
˙˙ 
CreateIndex
˙˙ 
(
˙˙ 
$str
˙˙ <
,
˙˙< =
$str
˚˚  
,
˚˚  !
$str
¸¸ #
,
¸¸# $
$str
˝˝ *
,
˝˝* +
$str
˛˛ 
,
˛˛  
$str
ˇˇ 
)
ˇˇ 
)
ÄÄ 
;
ÄÄ 
SchemaBuilder
ÇÇ 
.
ÇÇ 
AlterIndexTable
ÇÇ )
<
ÇÇ) *
TimeFieldIndex
ÇÇ* 8
>
ÇÇ8 9
(
ÇÇ9 :
table
ÇÇ: ?
=>
ÇÇ@ B
table
ÇÇC H
.
ÉÉ 
CreateIndex
ÉÉ 
(
ÉÉ 
$str
ÉÉ H
,
ÉÉH I
$str
ÑÑ  
,
ÑÑ  !
$str
ÖÖ !
,
ÖÖ! "
$str
ÜÜ !
,
ÜÜ! "
$str
áá "
,
áá" #
$str
àà 
,
àà  
$str
ââ 
)
ââ 
)
ää 
;
ää 
SchemaBuilder
åå 
.
åå 
AlterIndexTable
åå )
<
åå) *
TimeFieldIndex
åå* 8
>
åå8 9
(
åå9 :
table
åå: ?
=>
åå@ B
table
ååC H
.
çç 
CreateIndex
çç 
(
çç 
$str
çç A
,
ççA B
$str
éé  
,
éé  !
$str
èè 
,
èè 
$str
êê 
,
êê  
$str
ëë 
)
ëë 
)
íí 
;
íí 
SchemaBuilder
òò 
.
òò !
CreateMapIndexTable
òò -
<
òò- .
LinkFieldIndex
òò. <
>
òò< =
(
òò= >
table
òò> C
=>
òòD F
table
òòG L
.
ôô 
Column
ôô 
<
ôô 
string
ôô 
>
ôô 
(
ôô  
$str
ôô  /
,
ôô/ 0
column
ôô1 7
=>
ôô8 :
column
ôô; A
.
ôôA B

WithLength
ôôB L
(
ôôL M
$num
ôôM O
)
ôôO P
)
ôôP Q
.
öö 
Column
öö 
<
öö 
string
öö 
>
öö 
(
öö  
$str
öö  6
,
öö6 7
column
öö8 >
=>
öö? A
column
ööB H
.
ööH I

WithLength
ööI S
(
ööS T
$num
ööT V
)
ööV W
)
ööW X
.
õõ 
Column
õõ 
<
õõ 
string
õõ 
>
õõ 
(
õõ  
$str
õõ  -
,
õõ- .
column
õõ/ 5
=>
õõ6 8
column
õõ9 ?
.
õõ? @

WithLength
õõ@ J
(
õõJ K
ContentItemIndex
õõK [
.
õõ[ \ 
MaxContentTypeSize
õõ\ n
)
õõn o
)
õõo p
.
úú 
Column
úú 
<
úú 
string
úú 
>
úú 
(
úú  
$str
úú  -
,
úú- .
column
úú/ 5
=>
úú6 8
column
úú9 ?
.
úú? @

WithLength
úú@ J
(
úúJ K
ContentItemIndex
úúK [
.
úú[ \ 
MaxContentPartSize
úú\ n
)
úún o
)
úúo p
.
ùù 
Column
ùù 
<
ùù 
string
ùù 
>
ùù 
(
ùù  
$str
ùù  .
,
ùù. /
column
ùù0 6
=>
ùù7 9
column
ùù: @
.
ùù@ A

WithLength
ùùA K
(
ùùK L
ContentItemIndex
ùùL \
.
ùù\ ]!
MaxContentFieldSize
ùù] p
)
ùùp q
)
ùùq r
.
ûû 
Column
ûû 
<
ûû 
bool
ûû 
>
ûû 
(
ûû 
$str
ûû )
,
ûû) *
column
ûû+ 1
=>
ûû2 4
column
ûû5 ;
.
ûû; <
Nullable
ûû< D
(
ûûD E
)
ûûE F
)
ûûF G
.
üü 
Column
üü 
<
üü 
bool
üü 
>
üü 
(
üü 
$str
üü &
,
üü& '
column
üü( .
=>
üü/ 1
column
üü2 8
.
üü8 9
Nullable
üü9 A
(
üüA B
)
üüB C
)
üüC D
.
†† 
Column
†† 
<
†† 
string
†† 
>
†† 
(
††  
$str
††  %
,
††% &
column
††' -
=>
††. 0
column
††1 7
.
††7 8
Nullable
††8 @
(
††@ A
)
††A B
.
††B C

WithLength
††C M
(
††M N
LinkFieldIndex
††N \
.
††\ ]

MaxUrlSize
††] g
)
††g h
)
††h i
.
°° 
Column
°° 
<
°° 
string
°° 
>
°° 
(
°°  
$str
°°  (
,
°°( )
column
°°* 0
=>
°°1 3
column
°°4 :
.
°°: ;
Nullable
°°; C
(
°°C D
)
°°D E
.
°°E F
	Unlimited
°°F O
(
°°O P
)
°°P Q
)
°°Q R
.
¢¢ 
Column
¢¢ 
<
¢¢ 
string
¢¢ 
>
¢¢ 
(
¢¢  
$str
¢¢  &
,
¢¢& '
column
¢¢( .
=>
¢¢/ 1
column
¢¢2 8
.
¢¢8 9
Nullable
¢¢9 A
(
¢¢A B
)
¢¢B C
.
¢¢C D

WithLength
¢¢D N
(
¢¢N O
LinkFieldIndex
¢¢O ]
.
¢¢] ^
MaxTextSize
¢¢^ i
)
¢¢i j
)
¢¢j k
.
££ 
Column
££ 
<
££ 
string
££ 
>
££ 
(
££  
$str
££  )
,
££) *
column
££+ 1
=>
££2 4
column
££5 ;
.
££; <
Nullable
££< D
(
££D E
)
££E F
.
££F G
	Unlimited
££G P
(
££P Q
)
££Q R
)
££R S
)
§§ 
;
§§ 
SchemaBuilder
¶¶ 
.
¶¶ 
AlterIndexTable
¶¶ )
<
¶¶) *
LinkFieldIndex
¶¶* 8
>
¶¶8 9
(
¶¶9 :
table
¶¶: ?
=>
¶¶@ B
table
¶¶C H
.
ßß 
CreateIndex
ßß 
(
ßß 
$str
ßß <
,
ßß< =
$str
®®  
,
®®  !
$str
©© #
,
©©# $
$str
™™ *
,
™™* +
$str
´´ 
,
´´  
$str
¨¨ 
)
¨¨ 
)
≠≠ 
;
≠≠ 
SchemaBuilder
ØØ 
.
ØØ 
AlterIndexTable
ØØ )
<
ØØ) *
LinkFieldIndex
ØØ* 8
>
ØØ8 9
(
ØØ9 :
table
ØØ: ?
=>
ØØ@ B
table
ØØC H
.
∞∞ 
CreateIndex
∞∞ 
(
∞∞ 
$str
∞∞ H
,
∞∞H I
$str
±±  
,
±±  !
$str
≤≤ !
,
≤≤! "
$str
≥≥ !
,
≥≥! "
$str
¥¥ "
,
¥¥" #
$str
µµ 
,
µµ  
$str
∂∂ 
)
∂∂ 
)
∑∑ 
;
∑∑ 
SchemaBuilder
ππ 
.
ππ 
AlterIndexTable
ππ )
<
ππ) *
LinkFieldIndex
ππ* 8
>
ππ8 9
(
ππ9 :
table
ππ: ?
=>
ππ@ B
table
ππC H
.
∫∫ 
CreateIndex
∫∫ 
(
∫∫ 
$str
∫∫ @
,
∫∫@ A
$str
ªª  
,
ªª  !
$str
ºº 
,
ºº 
$str
ΩΩ 
,
ΩΩ  
$str
ææ 
)
ææ 
)
øø 
;
øø 
SchemaBuilder
¡¡ 
.
¡¡ 
AlterIndexTable
¡¡ )
<
¡¡) *
LinkFieldIndex
¡¡* 8
>
¡¡8 9
(
¡¡9 :
table
¡¡: ?
=>
¡¡@ B
table
¡¡C H
.
¬¬ 
CreateIndex
¬¬ 
(
¬¬ 
$str
¬¬ A
,
¬¬A B
$str
√√  
,
√√  !
$str
ƒƒ 
,
ƒƒ 
$str
≈≈ 
,
≈≈  
$str
∆∆ 
)
∆∆ 
)
«« 
;
«« 
SchemaBuilder
…… 
.
…… !
CreateMapIndexTable
…… -
<
……- .
HtmlFieldIndex
……. <
>
……< =
(
……= >
table
……> C
=>
……D F
table
……G L
.
   
Column
   
<
   
string
   
>
   
(
    
$str
    /
,
  / 0
column
  1 7
=>
  8 :
column
  ; A
.
  A B

WithLength
  B L
(
  L M
$num
  M O
)
  O P
)
  P Q
.
ÀÀ 
Column
ÀÀ 
<
ÀÀ 
string
ÀÀ 
>
ÀÀ 
(
ÀÀ  
$str
ÀÀ  6
,
ÀÀ6 7
column
ÀÀ8 >
=>
ÀÀ? A
column
ÀÀB H
.
ÀÀH I

WithLength
ÀÀI S
(
ÀÀS T
$num
ÀÀT V
)
ÀÀV W
)
ÀÀW X
.
ÃÃ 
Column
ÃÃ 
<
ÃÃ 
string
ÃÃ 
>
ÃÃ 
(
ÃÃ  
$str
ÃÃ  -
,
ÃÃ- .
column
ÃÃ/ 5
=>
ÃÃ6 8
column
ÃÃ9 ?
.
ÃÃ? @

WithLength
ÃÃ@ J
(
ÃÃJ K
ContentItemIndex
ÃÃK [
.
ÃÃ[ \ 
MaxContentTypeSize
ÃÃ\ n
)
ÃÃn o
)
ÃÃo p
.
ÕÕ 
Column
ÕÕ 
<
ÕÕ 
string
ÕÕ 
>
ÕÕ 
(
ÕÕ  
$str
ÕÕ  -
,
ÕÕ- .
column
ÕÕ/ 5
=>
ÕÕ6 8
column
ÕÕ9 ?
.
ÕÕ? @

WithLength
ÕÕ@ J
(
ÕÕJ K
ContentItemIndex
ÕÕK [
.
ÕÕ[ \ 
MaxContentPartSize
ÕÕ\ n
)
ÕÕn o
)
ÕÕo p
.
ŒŒ 
Column
ŒŒ 
<
ŒŒ 
string
ŒŒ 
>
ŒŒ 
(
ŒŒ  
$str
ŒŒ  .
,
ŒŒ. /
column
ŒŒ0 6
=>
ŒŒ7 9
column
ŒŒ: @
.
ŒŒ@ A

WithLength
ŒŒA K
(
ŒŒK L
ContentItemIndex
ŒŒL \
.
ŒŒ\ ]!
MaxContentFieldSize
ŒŒ] p
)
ŒŒp q
)
ŒŒq r
.
œœ 
Column
œœ 
<
œœ 
bool
œœ 
>
œœ 
(
œœ 
$str
œœ )
,
œœ) *
column
œœ+ 1
=>
œœ2 4
column
œœ5 ;
.
œœ; <
Nullable
œœ< D
(
œœD E
)
œœE F
)
œœF G
.
–– 
Column
–– 
<
–– 
bool
–– 
>
–– 
(
–– 
$str
–– &
,
––& '
column
––( .
=>
––/ 1
column
––2 8
.
––8 9
Nullable
––9 A
(
––A B
)
––B C
)
––C D
.
—— 
Column
—— 
<
—— 
string
—— 
>
—— 
(
——  
$str
——  &
,
——& '
column
——( .
=>
——/ 1
column
——2 8
.
——8 9
Nullable
——9 A
(
——A B
)
——B C
.
——C D
	Unlimited
——D M
(
——M N
)
——N O
)
——O P
)
““ 
;
““ 
SchemaBuilder
‘‘ 
.
‘‘ 
AlterIndexTable
‘‘ )
<
‘‘) *
HtmlFieldIndex
‘‘* 8
>
‘‘8 9
(
‘‘9 :
table
‘‘: ?
=>
‘‘@ B
table
‘‘C H
.
’’ 
CreateIndex
’’ 
(
’’ 
$str
’’ <
,
’’< =
$str
÷÷  
,
÷÷  !
$str
◊◊ #
,
◊◊# $
$str
ÿÿ *
,
ÿÿ* +
$str
ŸŸ 
,
ŸŸ  
$str
⁄⁄ 
)
⁄⁄ 
)
€€ 
;
€€ 
SchemaBuilder
›› 
.
›› 
AlterIndexTable
›› )
<
››) *
HtmlFieldIndex
››* 8
>
››8 9
(
››9 :
table
››: ?
=>
››@ B
table
››C H
.
ﬁﬁ 
CreateIndex
ﬁﬁ 
(
ﬁﬁ 
$str
ﬁﬁ H
,
ﬁﬁH I
$str
ﬂﬂ  
,
ﬂﬂ  !
$str
‡‡ !
,
‡‡! "
$str
·· !
,
··! "
$str
‚‚ "
,
‚‚" #
$str
„„ 
,
„„  
$str
‰‰ 
)
‰‰ 
)
ÂÂ 
;
ÂÂ 
SchemaBuilder
ÁÁ 
.
ÁÁ !
CreateMapIndexTable
ÁÁ -
<
ÁÁ- .!
MultiTextFieldIndex
ÁÁ. A
>
ÁÁA B
(
ÁÁB C
table
ÁÁC H
=>
ÁÁI K
table
ÁÁL Q
.
ËË 
Column
ËË 
<
ËË 
string
ËË 
>
ËË 
(
ËË  
$str
ËË  /
,
ËË/ 0
column
ËË1 7
=>
ËË8 :
column
ËË; A
.
ËËA B

WithLength
ËËB L
(
ËËL M
$num
ËËM O
)
ËËO P
)
ËËP Q
.
ÈÈ 
Column
ÈÈ 
<
ÈÈ 
string
ÈÈ 
>
ÈÈ 
(
ÈÈ  
$str
ÈÈ  6
,
ÈÈ6 7
column
ÈÈ8 >
=>
ÈÈ? A
column
ÈÈB H
.
ÈÈH I

WithLength
ÈÈI S
(
ÈÈS T
$num
ÈÈT V
)
ÈÈV W
)
ÈÈW X
.
ÍÍ 
Column
ÍÍ 
<
ÍÍ 
string
ÍÍ 
>
ÍÍ 
(
ÍÍ  
$str
ÍÍ  -
,
ÍÍ- .
column
ÍÍ/ 5
=>
ÍÍ6 8
column
ÍÍ9 ?
.
ÍÍ? @

WithLength
ÍÍ@ J
(
ÍÍJ K
ContentItemIndex
ÍÍK [
.
ÍÍ[ \ 
MaxContentTypeSize
ÍÍ\ n
)
ÍÍn o
)
ÍÍo p
.
ÎÎ 
Column
ÎÎ 
<
ÎÎ 
string
ÎÎ 
>
ÎÎ 
(
ÎÎ  
$str
ÎÎ  -
,
ÎÎ- .
column
ÎÎ/ 5
=>
ÎÎ6 8
column
ÎÎ9 ?
.
ÎÎ? @

WithLength
ÎÎ@ J
(
ÎÎJ K
ContentItemIndex
ÎÎK [
.
ÎÎ[ \ 
MaxContentPartSize
ÎÎ\ n
)
ÎÎn o
)
ÎÎo p
.
ÏÏ 
Column
ÏÏ 
<
ÏÏ 
string
ÏÏ 
>
ÏÏ 
(
ÏÏ  
$str
ÏÏ  .
,
ÏÏ. /
column
ÏÏ0 6
=>
ÏÏ7 9
column
ÏÏ: @
.
ÏÏ@ A

WithLength
ÏÏA K
(
ÏÏK L
ContentItemIndex
ÏÏL \
.
ÏÏ\ ]!
MaxContentFieldSize
ÏÏ] p
)
ÏÏp q
)
ÏÏq r
.
ÌÌ 
Column
ÌÌ 
<
ÌÌ 
bool
ÌÌ 
>
ÌÌ 
(
ÌÌ 
$str
ÌÌ )
,
ÌÌ) *
column
ÌÌ+ 1
=>
ÌÌ2 4
column
ÌÌ5 ;
.
ÌÌ; <
Nullable
ÌÌ< D
(
ÌÌD E
)
ÌÌE F
)
ÌÌF G
.
ÓÓ 
Column
ÓÓ 
<
ÓÓ 
bool
ÓÓ 
>
ÓÓ 
(
ÓÓ 
$str
ÓÓ &
,
ÓÓ& '
column
ÓÓ( .
=>
ÓÓ/ 1
column
ÓÓ2 8
.
ÓÓ8 9
Nullable
ÓÓ9 A
(
ÓÓA B
)
ÓÓB C
)
ÓÓC D
.
ÔÔ 
Column
ÔÔ 
<
ÔÔ 
string
ÔÔ 
>
ÔÔ 
(
ÔÔ  
$str
ÔÔ  '
,
ÔÔ' (
column
ÔÔ) /
=>
ÔÔ0 2
column
ÔÔ3 9
.
ÔÔ9 :
Nullable
ÔÔ: B
(
ÔÔB C
)
ÔÔC D
.
ÔÔD E

WithLength
ÔÔE O
(
ÔÔO P!
MultiTextFieldIndex
ÔÔP c
.
ÔÔc d
MaxValueSize
ÔÔd p
)
ÔÔp q
)
ÔÔq r
.
 
Column
 
<
 
string
 
>
 
(
  
$str
  *
,
* +
column
, 2
=>
3 5
column
6 <
.
< =
Nullable
= E
(
E F
)
F G
.
G H
	Unlimited
H Q
(
Q R
)
R S
)
S T
)
ÒÒ 
;
ÒÒ 
SchemaBuilder
ÛÛ 
.
ÛÛ 
AlterIndexTable
ÛÛ )
<
ÛÛ) *!
MultiTextFieldIndex
ÛÛ* =
>
ÛÛ= >
(
ÛÛ> ?
table
ÛÛ? D
=>
ÛÛE G
table
ÛÛH M
.
ÙÙ 
CreateIndex
ÙÙ 
(
ÙÙ 
$str
ÙÙ A
,
ÙÙA B
$str
ıı  
,
ıı  !
$str
ˆˆ #
,
ˆˆ# $
$str
˜˜ *
,
˜˜* +
$str
¯¯ 
,
¯¯  
$str
˘˘ 
)
˘˘ 
)
˙˙ 
;
˙˙ 
SchemaBuilder
¸¸ 
.
¸¸ 
AlterIndexTable
¸¸ )
<
¸¸) *!
MultiTextFieldIndex
¸¸* =
>
¸¸= >
(
¸¸> ?
table
¸¸? D
=>
¸¸E G
table
¸¸H M
.
˝˝ 
CreateIndex
˝˝ 
(
˝˝ 
$str
˝˝ M
,
˝˝M N
$str
˛˛  
,
˛˛  !
$str
ˇˇ !
,
ˇˇ! "
$str
ÄÄ !
,
ÄÄ! "
$str
ÅÅ "
,
ÅÅ" #
$str
ÇÇ 
,
ÇÇ  
$str
ÉÉ 
)
ÉÉ 
)
ÑÑ 
;
ÑÑ 
SchemaBuilder
ÜÜ 
.
ÜÜ 
AlterIndexTable
ÜÜ )
<
ÜÜ) *!
MultiTextFieldIndex
ÜÜ* =
>
ÜÜ= >
(
ÜÜ> ?
table
ÜÜ? D
=>
ÜÜE G
table
ÜÜH M
.
áá 
CreateIndex
áá 
(
áá 
$str
áá G
,
ááG H
$str
àà  
,
àà  !
$str
ââ 
,
ââ 
$str
ää 
,
ää  
$str
ãã 
)
ãã 
)
åå 
;
åå 
return
èè 
$num
èè 
;
èè 
}
êê 	
public
ìì 
int
ìì 
UpdateFrom1
ìì 
(
ìì 
)
ìì  
{
îî 	
SchemaBuilder
ïï 
.
ïï 
AlterIndexTable
ïï )
<
ïï) *
LinkFieldIndex
ïï* 8
>
ïï8 9
(
ïï9 :
table
ïï: ?
=>
ïï@ B
table
ïïC H
.
ññ 
	AddColumn
ññ 
<
ññ 
string
ññ !
>
ññ! "
(
ññ" #
$str
ññ# +
,
ññ+ ,
column
ññ- 3
=>
ññ4 6
column
ññ7 =
.
ññ= >
Nullable
ññ> F
(
ññF G
)
ññG H
.
ññH I
	Unlimited
ññI R
(
ññR S
)
ññS T
)
ññT U
)
ññU V
;
ññV W
SchemaBuilder
òò 
.
òò 
AlterIndexTable
òò )
<
òò) *
LinkFieldIndex
òò* 8
>
òò8 9
(
òò9 :
table
òò: ?
=>
òò@ B
table
òòC H
.
ôô 
	AddColumn
ôô 
<
ôô 
string
ôô !
>
ôô! "
(
ôô" #
$str
ôô# ,
,
ôô, -
column
ôô. 4
=>
ôô5 7
column
ôô8 >
.
ôô> ?
Nullable
ôô? G
(
ôôG H
)
ôôH I
.
ôôI J
	Unlimited
ôôJ S
(
ôôS T
)
ôôT U
)
ôôU V
)
ôôV W
;
ôôW X
return
õõ 
$num
õõ 
;
õõ 
}
úú 	
public
üü 
int
üü 
UpdateFrom2
üü 
(
üü 
)
üü  
{
†† 	
SchemaBuilder
°° 
.
°° !
CreateMapIndexTable
°° -
<
°°- .!
MultiTextFieldIndex
°°. A
>
°°A B
(
°°B C
table
°°C H
=>
°°I K
table
°°L Q
.
¢¢ 
Column
¢¢ 
<
¢¢ 
string
¢¢ 
>
¢¢ 
(
¢¢  
$str
¢¢  /
,
¢¢/ 0
column
¢¢1 7
=>
¢¢8 :
column
¢¢; A
.
¢¢A B

WithLength
¢¢B L
(
¢¢L M
$num
¢¢M O
)
¢¢O P
)
¢¢P Q
.
££ 
Column
££ 
<
££ 
string
££ 
>
££ 
(
££  
$str
££  6
,
££6 7
column
££8 >
=>
££? A
column
££B H
.
££H I

WithLength
££I S
(
££S T
$num
££T V
)
££V W
)
££W X
.
§§ 
Column
§§ 
<
§§ 
string
§§ 
>
§§ 
(
§§  
$str
§§  -
,
§§- .
column
§§/ 5
=>
§§6 8
column
§§9 ?
.
§§? @

WithLength
§§@ J
(
§§J K
ContentItemIndex
§§K [
.
§§[ \ 
MaxContentTypeSize
§§\ n
)
§§n o
)
§§o p
.
•• 
Column
•• 
<
•• 
string
•• 
>
•• 
(
••  
$str
••  -
,
••- .
column
••/ 5
=>
••6 8
column
••9 ?
.
••? @

WithLength
••@ J
(
••J K
ContentItemIndex
••K [
.
••[ \ 
MaxContentPartSize
••\ n
)
••n o
)
••o p
.
¶¶ 
Column
¶¶ 
<
¶¶ 
string
¶¶ 
>
¶¶ 
(
¶¶  
$str
¶¶  .
,
¶¶. /
column
¶¶0 6
=>
¶¶7 9
column
¶¶: @
.
¶¶@ A

WithLength
¶¶A K
(
¶¶K L
ContentItemIndex
¶¶L \
.
¶¶\ ]!
MaxContentFieldSize
¶¶] p
)
¶¶p q
)
¶¶q r
.
ßß 
Column
ßß 
<
ßß 
bool
ßß 
>
ßß 
(
ßß 
$str
ßß )
,
ßß) *
column
ßß+ 1
=>
ßß2 4
column
ßß5 ;
.
ßß; <
Nullable
ßß< D
(
ßßD E
)
ßßE F
)
ßßF G
.
®® 
Column
®® 
<
®® 
bool
®® 
>
®® 
(
®® 
$str
®® &
,
®®& '
column
®®( .
=>
®®/ 1
column
®®2 8
.
®®8 9
Nullable
®®9 A
(
®®A B
)
®®B C
)
®®C D
.
©© 
Column
©© 
<
©© 
string
©© 
>
©© 
(
©©  
$str
©©  '
,
©©' (
column
©©) /
=>
©©0 2
column
©©3 9
.
©©9 :
Nullable
©©: B
(
©©B C
)
©©C D
.
©©D E

WithLength
©©E O
(
©©O P!
MultiTextFieldIndex
©©P c
.
©©c d
MaxValueSize
©©d p
)
©©p q
)
©©q r
.
™™ 
Column
™™ 
<
™™ 
string
™™ 
>
™™ 
(
™™  
$str
™™  *
,
™™* +
column
™™, 2
=>
™™3 5
column
™™6 <
.
™™< =
Nullable
™™= E
(
™™E F
)
™™F G
.
™™G H
	Unlimited
™™H Q
(
™™Q R
)
™™R S
)
™™S T
)
´´ 
;
´´ 
return
≠≠ 
$num
≠≠ 
;
≠≠ 
}
ÆÆ 	
public
±± 
int
±± 
UpdateFrom3
±± 
(
±± 
)
±±  
{
≤≤ 	
SchemaBuilder
≥≥ 
.
≥≥ 
AlterIndexTable
≥≥ )
<
≥≥) *
TextFieldIndex
≥≥* 8
>
≥≥8 9
(
≥≥9 :
table
≥≥: ?
=>
≥≥@ B
table
≥≥C H
.
¥¥ 
CreateIndex
¥¥ 
(
¥¥ 
$str
¥¥ <
,
¥¥< =
$str
µµ  
,
µµ  !
$str
∂∂ #
,
∂∂# $
$str
∑∑ *
,
∑∑* +
$str
∏∏ 
,
∏∏  
$str
ππ 
)
ππ 
)
∫∫ 
;
∫∫ 
SchemaBuilder
ºº 
.
ºº 
AlterIndexTable
ºº )
<
ºº) *
TextFieldIndex
ºº* 8
>
ºº8 9
(
ºº9 :
table
ºº: ?
=>
ºº@ B
table
ººC H
.
ΩΩ 
CreateIndex
ΩΩ 
(
ΩΩ 
$str
ΩΩ H
,
ΩΩH I
$str
ææ  
,
ææ  !
$str
øø !
,
øø! "
$str
¿¿ !
,
¿¿! "
$str
¡¡ "
,
¡¡" #
$str
¬¬ 
,
¬¬  
$str
√√ 
)
√√ 
)
ƒƒ 
;
ƒƒ 
SchemaBuilder
œœ 
.
œœ 
AlterIndexTable
œœ )
<
œœ) *
BooleanFieldIndex
œœ* ;
>
œœ; <
(
œœ< =
table
œœ= B
=>
œœC E
table
œœF K
.
–– 
CreateIndex
–– 
(
–– 
$str
–– ?
,
––? @
$str
——  
,
——  !
$str
““ #
,
““# $
$str
”” *
,
””* +
$str
‘‘ 
,
‘‘  
$str
’’ 
)
’’ 
)
÷÷ 
;
÷÷ 
SchemaBuilder
ÿÿ 
.
ÿÿ 
AlterIndexTable
ÿÿ )
<
ÿÿ) *
BooleanFieldIndex
ÿÿ* ;
>
ÿÿ; <
(
ÿÿ< =
table
ÿÿ= B
=>
ÿÿC E
table
ÿÿF K
.
ŸŸ 
CreateIndex
ŸŸ 
(
ŸŸ 
$str
ŸŸ K
,
ŸŸK L
$str
⁄⁄  
,
⁄⁄  !
$str
€€ !
,
€€! "
$str
‹‹ !
,
‹‹! "
$str
›› "
,
››" #
$str
ﬁﬁ 
,
ﬁﬁ 
$str
ﬂﬂ 
,
ﬂﬂ  
$str
‡‡ 
)
‡‡ 
)
·· 
;
·· 
SchemaBuilder
„„ 
.
„„ 
AlterIndexTable
„„ )
<
„„) *
NumericFieldIndex
„„* ;
>
„„; <
(
„„< =
table
„„= B
=>
„„C E
table
„„F K
.
‰‰ 
CreateIndex
‰‰ 
(
‰‰ 
$str
‰‰ ?
,
‰‰? @
$str
ÂÂ  
,
ÂÂ  !
$str
ÊÊ #
,
ÊÊ# $
$str
ÁÁ *
,
ÁÁ* +
$str
ËË 
,
ËË  
$str
ÈÈ 
)
ÈÈ 
)
ÍÍ 
;
ÍÍ 
SchemaBuilder
ÏÏ 
.
ÏÏ 
AlterIndexTable
ÏÏ )
<
ÏÏ) *
NumericFieldIndex
ÏÏ* ;
>
ÏÏ; <
(
ÏÏ< =
table
ÏÏ= B
=>
ÏÏC E
table
ÏÏF K
.
ÌÌ 
CreateIndex
ÌÌ 
(
ÌÌ 
$str
ÌÌ K
,
ÌÌK L
$str
ÓÓ  
,
ÓÓ  !
$str
ÔÔ !
,
ÔÔ! "
$str
 !
,
! "
$str
ÒÒ "
,
ÒÒ" #
$str
ÚÚ 
,
ÚÚ  
$str
ÛÛ 
)
ÛÛ 
)
ÙÙ 
;
ÙÙ 
SchemaBuilder
ˆˆ 
.
ˆˆ 
AlterIndexTable
ˆˆ )
<
ˆˆ) *
NumericFieldIndex
ˆˆ* ;
>
ˆˆ; <
(
ˆˆ< =
table
ˆˆ= B
=>
ˆˆC E
table
ˆˆF K
.
˜˜ 
CreateIndex
˜˜ 
(
˜˜ 
$str
˜˜ G
,
˜˜G H
$str
¯¯  
,
¯¯  !
$str
˘˘ 
,
˘˘ 
$str
˙˙ 
,
˙˙  
$str
˚˚ 
)
˚˚ 
)
¸¸ 
;
¸¸ 
SchemaBuilder
˛˛ 
.
˛˛ 
AlterIndexTable
˛˛ )
<
˛˛) * 
DateTimeFieldIndex
˛˛* <
>
˛˛< =
(
˛˛= >
table
˛˛> C
=>
˛˛D F
table
˛˛G L
.
ˇˇ 
CreateIndex
ˇˇ 
(
ˇˇ 
$str
ˇˇ @
,
ˇˇ@ A
$str
ÄÄ  
,
ÄÄ  !
$str
ÅÅ #
,
ÅÅ# $
$str
ÇÇ *
,
ÇÇ* +
$str
ÉÉ 
,
ÉÉ  
$str
ÑÑ 
)
ÑÑ 
)
ÖÖ 
;
ÖÖ 
SchemaBuilder
áá 
.
áá 
AlterIndexTable
áá )
<
áá) * 
DateTimeFieldIndex
áá* <
>
áá< =
(
áá= >
table
áá> C
=>
ááD F
table
ááG L
.
àà 
CreateIndex
àà 
(
àà 
$str
àà L
,
ààL M
$str
ââ  
,
ââ  !
$str
ää !
,
ää! "
$str
ãã !
,
ãã! "
$str
åå "
,
åå" #
$str
çç 
,
çç  
$str
éé 
)
éé 
)
èè 
;
èè 
SchemaBuilder
ëë 
.
ëë 
AlterIndexTable
ëë )
<
ëë) * 
DateTimeFieldIndex
ëë* <
>
ëë< =
(
ëë= >
table
ëë> C
=>
ëëD F
table
ëëG L
.
íí 
CreateIndex
íí 
(
íí 
$str
íí I
,
ííI J
$str
ìì  
,
ìì  !
$str
îî 
,
îî 
$str
ïï 
,
ïï  
$str
ññ 
)
ññ 
)
óó 
;
óó 
SchemaBuilder
ôô 
.
ôô 
AlterIndexTable
ôô )
<
ôô) *
DateFieldIndex
ôô* 8
>
ôô8 9
(
ôô9 :
table
ôô: ?
=>
ôô@ B
table
ôôC H
.
öö 
CreateIndex
öö 
(
öö 
$str
öö <
,
öö< =
$str
õõ  
,
õõ  !
$str
úú #
,
úú# $
$str
ùù *
,
ùù* +
$str
ûû 
,
ûû  
$str
üü 
)
üü 
)
†† 
;
†† 
SchemaBuilder
¢¢ 
.
¢¢ 
AlterIndexTable
¢¢ )
<
¢¢) *
DateFieldIndex
¢¢* 8
>
¢¢8 9
(
¢¢9 :
table
¢¢: ?
=>
¢¢@ B
table
¢¢C H
.
££ 
CreateIndex
££ 
(
££ 
$str
££ H
,
££H I
$str
§§  
,
§§  !
$str
•• !
,
••! "
$str
¶¶ !
,
¶¶! "
$str
ßß "
,
ßß" #
$str
®® 
,
®®  
$str
©© 
)
©© 
)
™™ 
;
™™ 
SchemaBuilder
¨¨ 
.
¨¨ 
AlterIndexTable
¨¨ )
<
¨¨) *
DateFieldIndex
¨¨* 8
>
¨¨8 9
(
¨¨9 :
table
¨¨: ?
=>
¨¨@ B
table
¨¨C H
.
≠≠ 
CreateIndex
≠≠ 
(
≠≠ 
$str
≠≠ A
,
≠≠A B
$str
ÆÆ  
,
ÆÆ  !
$str
ØØ 
,
ØØ 
$str
∞∞ 
,
∞∞  
$str
±± 
)
±± 
)
≤≤ 
;
≤≤ 
SchemaBuilder
¥¥ 
.
¥¥ 
AlterIndexTable
¥¥ )
<
¥¥) *%
ContentPickerFieldIndex
¥¥* A
>
¥¥A B
(
¥¥B C
table
¥¥C H
=>
¥¥I K
table
¥¥L Q
.
µµ 
CreateIndex
µµ 
(
µµ 
$str
µµ E
,
µµE F
$str
∂∂  
,
∂∂  !
$str
∑∑ #
,
∑∑# $
$str
∏∏ *
,
∏∏* +
$str
ππ 
,
ππ  
$str
∫∫ 
)
∫∫ 
)
ªª 
;
ªª 
SchemaBuilder
ΩΩ 
.
ΩΩ 
AlterIndexTable
ΩΩ )
<
ΩΩ) *%
ContentPickerFieldIndex
ΩΩ* A
>
ΩΩA B
(
ΩΩB C
table
ΩΩC H
=>
ΩΩI K
table
ΩΩL Q
.
ææ 
CreateIndex
ææ 
(
ææ 
$str
ææ Q
,
ææQ R
$str
øø  
,
øø  !
$str
¿¿ !
,
¿¿! "
$str
¡¡ !
,
¡¡! "
$str
¬¬ "
,
¬¬" #
$str
√√ 
,
√√  
$str
ƒƒ 
)
ƒƒ 
)
≈≈ 
;
≈≈ 
SchemaBuilder
«« 
.
«« 
AlterIndexTable
«« )
<
««) *%
ContentPickerFieldIndex
««* A
>
««A B
(
««B C
table
««C H
=>
««I K
table
««L Q
.
»» 
CreateIndex
»» 
(
»» 
$str
»» O
,
»»O P
$str
……  
,
……  !
$str
   +
,
  + ,
$str
ÀÀ 
,
ÀÀ  
$str
ÃÃ 
)
ÃÃ 
)
ÕÕ 
;
ÕÕ 
SchemaBuilder
œœ 
.
œœ 
AlterIndexTable
œœ )
<
œœ) *
TimeFieldIndex
œœ* 8
>
œœ8 9
(
œœ9 :
table
œœ: ?
=>
œœ@ B
table
œœC H
.
–– 
CreateIndex
–– 
(
–– 
$str
–– <
,
––< =
$str
——  
,
——  !
$str
““ #
,
““# $
$str
”” *
,
””* +
$str
‘‘ 
,
‘‘  
$str
’’ 
)
’’ 
)
÷÷ 
;
÷÷ 
SchemaBuilder
ÿÿ 
.
ÿÿ 
AlterIndexTable
ÿÿ )
<
ÿÿ) *
TimeFieldIndex
ÿÿ* 8
>
ÿÿ8 9
(
ÿÿ9 :
table
ÿÿ: ?
=>
ÿÿ@ B
table
ÿÿC H
.
ŸŸ 
CreateIndex
ŸŸ 
(
ŸŸ 
$str
ŸŸ H
,
ŸŸH I
$str
⁄⁄  
,
⁄⁄  !
$str
€€ !
,
€€! "
$str
‹‹ !
,
‹‹! "
$str
›› "
,
››" #
$str
ﬁﬁ 
,
ﬁﬁ  
$str
ﬂﬂ 
)
ﬂﬂ 
)
‡‡ 
;
‡‡ 
SchemaBuilder
‚‚ 
.
‚‚ 
AlterIndexTable
‚‚ )
<
‚‚) *
TimeFieldIndex
‚‚* 8
>
‚‚8 9
(
‚‚9 :
table
‚‚: ?
=>
‚‚@ B
table
‚‚C H
.
„„ 
CreateIndex
„„ 
(
„„ 
$str
„„ A
,
„„A B
$str
‰‰  
,
‰‰  !
$str
ÂÂ 
,
ÂÂ 
$str
ÊÊ 
,
ÊÊ  
$str
ÁÁ 
)
ÁÁ 
)
ËË 
;
ËË 
SchemaBuilder
ÍÍ 
.
ÍÍ 
AlterIndexTable
ÍÍ )
<
ÍÍ) *
LinkFieldIndex
ÍÍ* 8
>
ÍÍ8 9
(
ÍÍ9 :
table
ÍÍ: ?
=>
ÍÍ@ B
table
ÍÍC H
.
ÎÎ 
CreateIndex
ÎÎ 
(
ÎÎ 
$str
ÎÎ <
,
ÎÎ< =
$str
ÏÏ  
,
ÏÏ  !
$str
ÌÌ #
,
ÌÌ# $
$str
ÓÓ *
,
ÓÓ* +
$str
ÔÔ 
,
ÔÔ  
$str
 
)
 
)
ÒÒ 
;
ÒÒ 
SchemaBuilder
ÛÛ 
.
ÛÛ 
AlterIndexTable
ÛÛ )
<
ÛÛ) *
LinkFieldIndex
ÛÛ* 8
>
ÛÛ8 9
(
ÛÛ9 :
table
ÛÛ: ?
=>
ÛÛ@ B
table
ÛÛC H
.
ÙÙ 
CreateIndex
ÙÙ 
(
ÙÙ 
$str
ÙÙ H
,
ÙÙH I
$str
ıı  
,
ıı  !
$str
ˆˆ !
,
ˆˆ! "
$str
˜˜ !
,
˜˜! "
$str
¯¯ "
,
¯¯" #
$str
˘˘ 
,
˘˘  
$str
˙˙ 
)
˙˙ 
)
˚˚ 
;
˚˚ 
SchemaBuilder
èè 
.
èè 
AlterIndexTable
èè )
<
èè) *
HtmlFieldIndex
èè* 8
>
èè8 9
(
èè9 :
table
èè: ?
=>
èè@ B
table
èèC H
.
êê 
CreateIndex
êê 
(
êê 
$str
êê <
,
êê< =
$str
ëë  
,
ëë  !
$str
íí #
,
íí# $
$str
ìì *
,
ìì* +
$str
îî 
,
îî  
$str
ïï 
)
ïï 
)
ññ 
;
ññ 
SchemaBuilder
òò 
.
òò 
AlterIndexTable
òò )
<
òò) *
HtmlFieldIndex
òò* 8
>
òò8 9
(
òò9 :
table
òò: ?
=>
òò@ B
table
òòC H
.
ôô 
CreateIndex
ôô 
(
ôô 
$str
ôô H
,
ôôH I
$str
öö  
,
öö  !
$str
õõ !
,
õõ! "
$str
úú !
,
úú! "
$str
ùù "
,
ùù" #
$str
ûû 
,
ûû  
$str
üü 
)
üü 
)
†† 
;
†† 
SchemaBuilder
¢¢ 
.
¢¢ 
AlterIndexTable
¢¢ )
<
¢¢) *!
MultiTextFieldIndex
¢¢* =
>
¢¢= >
(
¢¢> ?
table
¢¢? D
=>
¢¢E G
table
¢¢H M
.
££ 
CreateIndex
££ 
(
££ 
$str
££ A
,
££A B
$str
§§  
,
§§  !
$str
•• #
,
••# $
$str
¶¶ *
,
¶¶* +
$str
ßß 
,
ßß  
$str
®® 
)
®® 
)
©© 
;
©© 
SchemaBuilder
´´ 
.
´´ 
AlterIndexTable
´´ )
<
´´) *!
MultiTextFieldIndex
´´* =
>
´´= >
(
´´> ?
table
´´? D
=>
´´E G
table
´´H M
.
¨¨ 
CreateIndex
¨¨ 
(
¨¨ 
$str
¨¨ M
,
¨¨M N
$str
≠≠  
,
≠≠  !
$str
ÆÆ !
,
ÆÆ! "
$str
ØØ !
,
ØØ! "
$str
∞∞ "
,
∞∞" #
$str
±± 
,
±±  
$str
≤≤ 
)
≤≤ 
)
≥≥ 
;
≥≥ 
SchemaBuilder
µµ 
.
µµ 
AlterIndexTable
µµ )
<
µµ) *!
MultiTextFieldIndex
µµ* =
>
µµ= >
(
µµ> ?
table
µµ? D
=>
µµE G
table
µµH M
.
∂∂ 
CreateIndex
∂∂ 
(
∂∂ 
$str
∂∂ G
,
∂∂G H
$str
∑∑  
,
∑∑  !
$str
∏∏ 
,
∏∏ 
$str
ππ 
,
ππ  
$str
∫∫ 
)
∫∫ 
)
ªª 
;
ªª 
return
ΩΩ 
$num
ΩΩ 
;
ΩΩ 
}
ææ 	
}
øø 
}¿¿ í@
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\MultiTextFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
MultiTextFieldIndex $
:% &
ContentFieldIndex' 8
{ 
public 
const 
int 
MaxValueSize %
=& '
$num( +
;+ ,
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
BigValue 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class '
MultiTextFieldIndexProvider ,
:- .%
ContentFieldIndexProvider/ H
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public '
MultiTextFieldIndexProvider *
(* +
IServiceProvider+ ;
serviceProvider< K
)K L
{ 	
_serviceProvider   
=   
serviceProvider   .
;  . /
}!! 	
public## 
override## 
void## 
Describe## %
(##% &
DescribeContext##& 5
<##5 6
ContentItem##6 A
>##A B
context##C J
)##J K
{$$ 	
context%% 
.%% 
For%% 
<%% 
MultiTextFieldIndex%% +
>%%+ ,
(%%, -
)%%- .
.&& 
Map&& 
(&& 
contentItem&&  
=>&&! #
{'' 
if)) 
()) 
!)) 
contentItem)) $
.))$ %
	Published))% .
&&))/ 1
!))2 3
contentItem))3 >
.))> ?
Latest))? E
)))E F
{** 
return++ 
null++ #
;++# $
},, 
if// 
(// 
_ignoredTypes// %
.//% &
Contains//& .
(//. /
contentItem/// :
.//: ;
ContentType//; F
)//F G
)//G H
{00 
return11 
null11 #
;11# $
}22 %
_contentDefinitionManager55 -
??=55. 1
_serviceProvider552 B
.55B C
GetRequiredService55C U
<55U V%
IContentDefinitionManager55V o
>55o p
(55p q
)55q r
;55r s
var88 !
contentTypeDefinition88 -
=88. /%
_contentDefinitionManager880 I
.88I J
GetTypeDefinition88J [
(88[ \
contentItem88\ g
.88g h
ContentType88h s
)88s t
;88t u
if;; 
(;; !
contentTypeDefinition;; -
==;;. 0
null;;1 5
);;5 6
{<< 
_ignoredTypes== %
.==% &
Add==& )
(==) *
contentItem==* 5
.==5 6
ContentType==6 A
)==A B
;==B C
return>> 
null>> #
;>># $
}?? 
varAA 
fieldDefinitionsAA (
=AA) *!
contentTypeDefinitionAA+ @
.BB 
PartsBB 
.BB 

SelectManyBB )
(BB) *
xBB* +
=>BB, .
xBB/ 0
.BB0 1
PartDefinitionBB1 ?
.BB? @
FieldsBB@ F
.BBF G
WhereBBG L
(BBL M
fBBM N
=>BBO Q
fBBR S
.BBS T
FieldDefinitionBBT c
.BBc d
NameBBd h
==BBi k
nameofBBl r
(BBr s
MultiTextField	BBs Å
)
BBÅ Ç
)
BBÇ É
)
BBÉ Ñ
.CC 
ToArrayCC  
(CC  !
)CC! "
;CC" #
ifFF 
(FF 
fieldDefinitionsFF (
.FF( )
LengthFF) /
==FF0 2
$numFF3 4
)FF4 5
{GG 
_ignoredTypesHH %
.HH% &
AddHH& )
(HH) *
contentItemHH* 5
.HH5 6
ContentTypeHH6 A
)HHA B
;HHB C
returnII 
nullII #
;II# $
}JJ 
varLL 
resultsLL 
=LL  !
newLL" %
ListLL& *
<LL* +
MultiTextFieldIndexLL+ >
>LL> ?
(LL? @
)LL@ A
;LLA B
foreachNN 
(NN 
varNN  
fieldDefinitionNN! 0
inNN1 3
fieldDefinitionsNN4 D
)NND E
{OO 
varPP 
jPartPP !
=PP" #
(PP$ %
JObjectPP% ,
)PP, -
contentItemPP- 8
.PP8 9
ContentPP9 @
[PP@ A
fieldDefinitionPPA P
.PPP Q
PartDefinitionPPQ _
.PP_ `
NamePP` d
]PPd e
;PPe f
ifRR 
(RR 
jPartRR !
==RR" $
nullRR% )
)RR) *
{SS 
continueTT $
;TT$ %
}UU 
varWW 
jFieldWW "
=WW# $
(WW% &
JObjectWW& -
)WW- .
jPartWW. 3
[WW3 4
fieldDefinitionWW4 C
.WWC D
NameWWD H
]WWH I
;WWI J
ifYY 
(YY 
jFieldYY "
==YY# %
nullYY& *
)YY* +
{ZZ 
continue[[ $
;[[$ %
}\\ 
var^^ 
field^^ !
=^^" #
jField^^$ *
.^^* +
ToObject^^+ 3
<^^3 4
MultiTextField^^4 B
>^^B C
(^^C D
)^^D E
;^^E F
foreach__ 
(__  !
var__! $
value__% *
in__+ -
field__. 3
.__3 4
Values__4 :
)__: ;
{`` 
resultsaa #
.aa# $
Addaa$ '
(aa' (
newaa( +
MultiTextFieldIndexaa, ?
{bb 
Latestcc  &
=cc' (
contentItemcc) 4
.cc4 5
Latestcc5 ;
,cc; <
	Publisheddd  )
=dd* +
contentItemdd, 7
.dd7 8
	Publisheddd8 A
,ddA B
ContentItemIdee  -
=ee. /
contentItemee0 ;
.ee; <
ContentItemIdee< I
,eeI J 
ContentItemVersionIdff  4
=ff5 6
contentItemff7 B
.ffB C 
ContentItemVersionIdffC W
,ffW X
ContentTypegg  +
=gg, -
contentItemgg. 9
.gg9 :
ContentTypegg: E
,ggE F
ContentParthh  +
=hh, -
fieldDefinitionhh. =
.hh= >
PartDefinitionhh> L
.hhL M
NamehhM Q
,hhQ R
ContentFieldii  ,
=ii- .
fieldDefinitionii/ >
.ii> ?
Nameii? C
,iiC D
Valuejj  %
=jj& '
valuejj( -
?jj- .
.jj. /
	Substringjj/ 8
(jj8 9
$numjj9 :
,jj: ;
Mathjj< @
.jj@ A
MinjjA D
(jjD E
valuejjE J
.jjJ K
LengthjjK Q
,jjQ R
MultiTextFieldIndexjjS f
.jjf g
MaxValueSizejjg s
)jjs t
)jjt u
,jju v
BigValuekk  (
=kk) *
valuekk+ 0
}ll 
)ll 
;ll 
}mm 
}nn 
returnpp 
resultspp "
;pp" #
}qq 
)qq 
;qq 
}rr 	
}ss 
}tt ¡9
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\NumericFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
NumericFieldIndex "
:# $
ContentFieldIndex% 6
{ 
public 
decimal 
? 
Numeric 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class %
NumericFieldIndexProvider *
:+ ,%
ContentFieldIndexProvider- F
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public %
NumericFieldIndexProvider (
(( )
IServiceProvider) 9
serviceProvider: I
)I J
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
NumericFieldIndex )
>) *
(* +
)+ ,
.   
Map   
(   
contentItem    
=>  ! #
{!! 
if## 
(## 
!## 
contentItem## $
.##$ %
	Published##% .
&&##/ 1
!##2 3
contentItem##3 >
.##> ?
Latest##? E
)##E F
{$$ 
return%% 
null%% #
;%%# $
}&& 
if)) 
()) 
_ignoredTypes)) %
.))% &
Contains))& .
()). /
contentItem))/ :
.)): ;
ContentType)); F
)))F G
)))G H
{** 
return++ 
null++ #
;++# $
},, %
_contentDefinitionManager// -
??=//. 1
_serviceProvider//2 B
.//B C
GetRequiredService//C U
<//U V%
IContentDefinitionManager//V o
>//o p
(//p q
)//q r
;//r s
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
contentItem22\ g
.22g h
ContentType22h s
)22s t
;22t u
if55 
(55 !
contentTypeDefinition55 -
==55. 0
null551 5
)555 6
{66 
_ignoredTypes77 %
.77% &
Add77& )
(77) *
contentItem77* 5
.775 6
ContentType776 A
)77A B
;77B C
return88 
null88 #
;88# $
}99 
var;; 
fieldDefinitions;; (
=;;) *!
contentTypeDefinition;;+ @
.<< 
Parts<< 
.<< 

SelectMany<< )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Fields<<@ F
.<<F G
Where<<G L
(<<L M
f<<M N
=><<O Q
f<<R S
.<<S T
FieldDefinition<<T c
.<<c d
Name<<d h
==<<i k
nameof<<l r
(<<r s
NumericField<<s 
)	<< Ä
)
<<Ä Å
)
<<Å Ç
.== 
ToArray==  
(==  !
)==! "
;==" #
if@@ 
(@@ 
fieldDefinitions@@ (
.@@( )
Length@@) /
==@@0 2
$num@@3 4
)@@4 5
{AA 
_ignoredTypesBB %
.BB% &
AddBB& )
(BB) *
contentItemBB* 5
.BB5 6
ContentTypeBB6 A
)BBA B
;BBB C
returnCC 
nullCC #
;CC# $
}DD 
varFF 
resultsFF 
=FF  !
newFF" %
ListFF& *
<FF* +
NumericFieldIndexFF+ <
>FF< =
(FF= >
)FF> ?
;FF? @
foreachHH 
(HH 
varHH  
fieldDefinitionHH! 0
inHH1 3
fieldDefinitionsHH4 D
)HHD E
{II 
varJJ 
jPartJJ !
=JJ" #
(JJ$ %
JObjectJJ% ,
)JJ, -
contentItemJJ- 8
.JJ8 9
ContentJJ9 @
[JJ@ A
fieldDefinitionJJA P
.JJP Q
PartDefinitionJJQ _
.JJ_ `
NameJJ` d
]JJd e
;JJe f
ifLL 
(LL 
jPartLL !
==LL" $
nullLL% )
)LL) *
{MM 
continueNN $
;NN$ %
}OO 
varQQ 
jFieldQQ "
=QQ# $
(QQ% &
JObjectQQ& -
)QQ- .
jPartQQ. 3
[QQ3 4
fieldDefinitionQQ4 C
.QQC D
NameQQD H
]QQH I
;QQI J
ifSS 
(SS 
jFieldSS "
==SS# %
nullSS& *
)SS* +
{TT 
continueUU $
;UU$ %
}VV 
varXX 
fieldXX !
=XX" #
jFieldXX$ *
.XX* +
ToObjectXX+ 3
<XX3 4
NumericFieldXX4 @
>XX@ A
(XXA B
)XXB C
;XXC D
resultsZZ 
.ZZ  
AddZZ  #
(ZZ# $
newZZ$ '
NumericFieldIndexZZ( 9
{[[ 
Latest\\ "
=\\# $
contentItem\\% 0
.\\0 1
Latest\\1 7
,\\7 8
	Published]] %
=]]& '
contentItem]]( 3
.]]3 4
	Published]]4 =
,]]= >
ContentItemId^^ )
=^^* +
contentItem^^, 7
.^^7 8
ContentItemId^^8 E
,^^E F 
ContentItemVersionId__ 0
=__1 2
contentItem__3 >
.__> ? 
ContentItemVersionId__? S
,__S T
ContentType`` '
=``( )
contentItem``* 5
.``5 6
ContentType``6 A
,``A B
ContentPartaa '
=aa( )
fieldDefinitionaa* 9
.aa9 :
PartDefinitionaa: H
.aaH I
NameaaI M
,aaM N
ContentFieldbb (
=bb) *
fieldDefinitionbb+ :
.bb: ;
Namebb; ?
,bb? @
Numericcc #
=cc$ %
fieldcc& +
.cc+ ,
Valuecc, 1
}dd 
)dd 
;dd 
}ee 
returngg 
resultsgg "
;gg" #
}hh 
)hh 
;hh 
}ii 	
}jj 
}kk ˚>
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\TextFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
TextFieldIndex 
:  !
ContentFieldIndex" 3
{ 
public 
const 
int 
MaxTextSize $
=% &
$num' *
;* +
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
BigText 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class "
TextFieldIndexProvider '
:( )%
ContentFieldIndexProvider* C
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public "
TextFieldIndexProvider %
(% &
IServiceProvider& 6
serviceProvider7 F
)F G
{ 	
_serviceProvider   
=   
serviceProvider   .
;  . /
}!! 	
public## 
override## 
void## 
Describe## %
(##% &
DescribeContext##& 5
<##5 6
ContentItem##6 A
>##A B
context##C J
)##J K
{$$ 	
context%% 
.%% 
For%% 
<%% 
TextFieldIndex%% &
>%%& '
(%%' (
)%%( )
.&& 
Map&& 
(&& 
contentItem&&  
=>&&! #
{'' 
if)) 
()) 
!)) 
contentItem)) $
.))$ %
	Published))% .
&&))/ 1
!))2 3
contentItem))3 >
.))> ?
Latest))? E
)))E F
{** 
return++ 
null++ #
;++# $
},, 
if// 
(// 
_ignoredTypes// %
.//% &
Contains//& .
(//. /
contentItem/// :
.//: ;
ContentType//; F
)//F G
)//G H
{00 
return11 
null11 #
;11# $
}22 %
_contentDefinitionManager55 -
??=55. 1
_serviceProvider552 B
.55B C
GetRequiredService55C U
<55U V%
IContentDefinitionManager55V o
>55o p
(55p q
)55q r
;55r s
var88 !
contentTypeDefinition88 -
=88. /%
_contentDefinitionManager880 I
.88I J
GetTypeDefinition88J [
(88[ \
contentItem88\ g
.88g h
ContentType88h s
)88s t
;88t u
if;; 
(;; !
contentTypeDefinition;; -
==;;. 0
null;;1 5
);;5 6
{<< 
_ignoredTypes== %
.==% &
Add==& )
(==) *
contentItem==* 5
.==5 6
ContentType==6 A
)==A B
;==B C
return>> 
null>> #
;>># $
}?? 
varAA 
fieldDefinitionsAA (
=AA) *!
contentTypeDefinitionAA+ @
.BB 
PartsBB 
.BB 

SelectManyBB )
(BB) *
xBB* +
=>BB, .
xBB/ 0
.BB0 1
PartDefinitionBB1 ?
.BB? @
FieldsBB@ F
.BBF G
WhereBBG L
(BBL M
fBBM N
=>BBO Q
fBBR S
.BBS T
FieldDefinitionBBT c
.BBc d
NameBBd h
==BBi k
nameofBBl r
(BBr s
	TextFieldBBs |
)BB| }
)BB} ~
)BB~ 
.CC 
ToArrayCC  
(CC  !
)CC! "
;CC" #
ifFF 
(FF 
fieldDefinitionsFF (
.FF( )
LengthFF) /
==FF0 2
$numFF3 4
)FF4 5
{GG 
_ignoredTypesHH %
.HH% &
AddHH& )
(HH) *
contentItemHH* 5
.HH5 6
ContentTypeHH6 A
)HHA B
;HHB C
returnII 
nullII #
;II# $
}JJ 
varLL 
resultsLL 
=LL  !
newLL" %
ListLL& *
<LL* +
TextFieldIndexLL+ 9
>LL9 :
(LL: ;
)LL; <
;LL< =
foreachNN 
(NN 
varNN  
fieldDefinitionNN! 0
inNN1 3
fieldDefinitionsNN4 D
)NND E
{OO 
varPP 
jPartPP !
=PP" #
(PP$ %
JObjectPP% ,
)PP, -
contentItemPP- 8
.PP8 9
ContentPP9 @
[PP@ A
fieldDefinitionPPA P
.PPP Q
PartDefinitionPPQ _
.PP_ `
NamePP` d
]PPd e
;PPe f
ifRR 
(RR 
jPartRR !
==RR" $
nullRR% )
)RR) *
{SS 
continueTT $
;TT$ %
}UU 
varWW 
jFieldWW "
=WW# $
(WW% &
JObjectWW& -
)WW- .
jPartWW. 3
[WW3 4
fieldDefinitionWW4 C
.WWC D
NameWWD H
]WWH I
;WWI J
ifYY 
(YY 
jFieldYY "
==YY# %
nullYY& *
)YY* +
{ZZ 
continue[[ $
;[[$ %
}\\ 
var^^ 
field^^ !
=^^" #
jField^^$ *
.^^* +
ToObject^^+ 3
<^^3 4
	TextField^^4 =
>^^= >
(^^> ?
)^^? @
;^^@ A
results`` 
.``  
Add``  #
(``# $
new``$ '
TextFieldIndex``( 6
{aa 
Latestbb "
=bb# $
contentItembb% 0
.bb0 1
Latestbb1 7
,bb7 8
	Publishedcc %
=cc& '
contentItemcc( 3
.cc3 4
	Publishedcc4 =
,cc= >
ContentItemIddd )
=dd* +
contentItemdd, 7
.dd7 8
ContentItemIddd8 E
,ddE F 
ContentItemVersionIdee 0
=ee1 2
contentItemee3 >
.ee> ? 
ContentItemVersionIdee? S
,eeS T
ContentTypeff '
=ff( )
contentItemff* 5
.ff5 6
ContentTypeff6 A
,ffA B
ContentPartgg '
=gg( )
fieldDefinitiongg* 9
.gg9 :
PartDefinitiongg: H
.ggH I
NameggI M
,ggM N
ContentFieldhh (
=hh) *
fieldDefinitionhh+ :
.hh: ;
Namehh; ?
,hh? @
Textii  
=ii! "
fieldii# (
.ii( )
Textii) -
?ii- .
.ii. /
	Substringii/ 8
(ii8 9
$numii9 :
,ii: ;
Mathii< @
.ii@ A
MiniiA D
(iiD E
fieldiiE J
.iiJ K
TextiiK O
.iiO P
LengthiiP V
,iiV W
TextFieldIndexiiX f
.iif g
MaxTextSizeiig r
)iir s
)iis t
,iit u
BigTextjj #
=jj$ %
fieldjj& +
.jj+ ,
Textjj, 0
}kk 
)kk 
;kk 
}ll 
returnnn 
resultsnn "
;nn" #
}oo 
)oo 
;oo 
}pp 	
}qq 
}rr ú9
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\TimeFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class 
TimeFieldIndex 
:  !
ContentFieldIndex" 3
{ 
public 
TimeSpan 
? 
Time 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class "
TimeFieldIndexProvider '
:( )%
ContentFieldIndexProvider* C
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public "
TimeFieldIndexProvider %
(% &
IServiceProvider& 6
serviceProvider7 F
)F G
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
TimeFieldIndex &
>& '
(' (
)( )
.   
Map   
(   
contentItem    
=>  ! #
{!! 
if## 
(## 
!## 
contentItem## $
.##$ %
	Published##% .
&&##/ 1
!##2 3
contentItem##3 >
.##> ?
Latest##? E
)##E F
{$$ 
return%% 
null%% #
;%%# $
}&& 
if)) 
()) 
_ignoredTypes)) %
.))% &
Contains))& .
()). /
contentItem))/ :
.)): ;
ContentType)); F
)))F G
)))G H
{** 
return++ 
null++ #
;++# $
},, %
_contentDefinitionManager// -
??=//. 1
_serviceProvider//2 B
.//B C
GetRequiredService//C U
<//U V%
IContentDefinitionManager//V o
>//o p
(//p q
)//q r
;//r s
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
contentItem22\ g
.22g h
ContentType22h s
)22s t
;22t u
if55 
(55 !
contentTypeDefinition55 -
==55. 0
null551 5
)555 6
{66 
_ignoredTypes77 %
.77% &
Add77& )
(77) *
contentItem77* 5
.775 6
ContentType776 A
)77A B
;77B C
return88 
null88 #
;88# $
}99 
var;; 
fieldDefinitions;; (
=;;) *!
contentTypeDefinition;;+ @
.<< 
Parts<< 
.<< 

SelectMany<< )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Fields<<@ F
.<<F G
Where<<G L
(<<L M
f<<M N
=><<O Q
f<<R S
.<<S T
FieldDefinition<<T c
.<<c d
Name<<d h
==<<i k
nameof<<l r
(<<r s
	TimeField<<s |
)<<| }
)<<} ~
)<<~ 
.== 
ToArray==  
(==  !
)==! "
;==" #
if@@ 
(@@ 
fieldDefinitions@@ (
.@@( )
Length@@) /
==@@0 2
$num@@3 4
)@@4 5
{AA 
_ignoredTypesBB %
.BB% &
AddBB& )
(BB) *
contentItemBB* 5
.BB5 6
ContentTypeBB6 A
)BBA B
;BBB C
returnCC 
nullCC #
;CC# $
}DD 
varFF 
resultsFF 
=FF  !
newFF" %
ListFF& *
<FF* +
TimeFieldIndexFF+ 9
>FF9 :
(FF: ;
)FF; <
;FF< =
foreachHH 
(HH 
varHH  
fieldDefinitionHH! 0
inHH1 3
fieldDefinitionsHH4 D
)HHD E
{II 
varJJ 
jPartJJ !
=JJ" #
(JJ$ %
JObjectJJ% ,
)JJ, -
contentItemJJ- 8
.JJ8 9
ContentJJ9 @
[JJ@ A
fieldDefinitionJJA P
.JJP Q
PartDefinitionJJQ _
.JJ_ `
NameJJ` d
]JJd e
;JJe f
ifLL 
(LL 
jPartLL !
==LL" $
nullLL% )
)LL) *
{MM 
continueNN $
;NN$ %
}OO 
varQQ 
jFieldQQ "
=QQ# $
(QQ% &
JObjectQQ& -
)QQ- .
jPartQQ. 3
[QQ3 4
fieldDefinitionQQ4 C
.QQC D
NameQQD H
]QQH I
;QQI J
ifSS 
(SS 
jFieldSS "
==SS# %
nullSS& *
)SS* +
{TT 
continueUU $
;UU$ %
}VV 
varXX 
fieldXX !
=XX" #
jFieldXX$ *
.XX* +
ToObjectXX+ 3
<XX3 4
	TimeFieldXX4 =
>XX= >
(XX> ?
)XX? @
;XX@ A
resultsZZ 
.ZZ  
AddZZ  #
(ZZ# $
newZZ$ '
TimeFieldIndexZZ( 6
{[[ 
Latest\\ "
=\\# $
contentItem\\% 0
.\\0 1
Latest\\1 7
,\\7 8
	Published]] %
=]]& '
contentItem]]( 3
.]]3 4
	Published]]4 =
,]]= >
ContentItemId^^ )
=^^* +
contentItem^^, 7
.^^7 8
ContentItemId^^8 E
,^^E F 
ContentItemVersionId__ 0
=__1 2
contentItem__3 >
.__> ? 
ContentItemVersionId__? S
,__S T
ContentType`` '
=``( )
contentItem``* 5
.``5 6
ContentType``6 A
,``A B
ContentPartaa '
=aa( )
fieldDefinitionaa* 9
.aa9 :
PartDefinitionaa: H
.aaH I
NameaaI M
,aaM N
ContentFieldbb (
=bb) *
fieldDefinitionbb+ :
.bb: ;
Namebb; ?
,bb? @
Timecc  
=cc! "
fieldcc# (
.cc( )
Valuecc) .
}dd 
)dd 
;dd 
}ee 
returngg 
resultsgg "
;gg" #
}hh 
)hh 
;hh 
}ii 	
}jj 
}kk ¯:
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\UserPickerFieldIndexProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class  
UserPickerFieldIndex %
:& '
ContentFieldIndex( 9
{ 
public 
string 
SelectedUserId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
public 

class (
UserPickerFieldIndexProvider -
:. /%
ContentFieldIndexProvider0 I
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_ignoredTypes) 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
;N O
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public (
UserPickerFieldIndexProvider +
(+ ,
IServiceProvider, <
serviceProvider= L
)L M
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
<  
UserPickerFieldIndex ,
>, -
(- .
). /
.   
Map   
(   
contentItem    
=>  ! #
{!! 
if## 
(## 
!## 
contentItem## $
.##$ %
	Published##% .
&&##/ 1
!##2 3
contentItem##3 >
.##> ?
Latest##? E
)##E F
{$$ 
return%% 
null%% #
;%%# $
}&& 
if)) 
()) 
_ignoredTypes)) %
.))% &
Contains))& .
()). /
contentItem))/ :
.)): ;
ContentType)); F
)))F G
)))G H
{** 
return++ 
null++ #
;++# $
},, %
_contentDefinitionManager// -
??=//. 1
_serviceProvider//2 B
.//B C
GetRequiredService//C U
<//U V%
IContentDefinitionManager//V o
>//o p
(//p q
)//q r
;//r s
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
contentItem22\ g
.22g h
ContentType22h s
)22s t
;22t u
if55 
(55 !
contentTypeDefinition55 -
==55. 0
null551 5
)555 6
{66 
_ignoredTypes77 %
.77% &
Add77& )
(77) *
contentItem77* 5
.775 6
ContentType776 A
)77A B
;77B C
return88 
null88 #
;88# $
}99 
var;; 
fieldDefinitions;; (
=;;) *!
contentTypeDefinition;;+ @
.<< 
Parts<< 
.<< 

SelectMany<< )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Fields<<@ F
.<<F G
Where<<G L
(<<L M
f<<M N
=><<O Q
f<<R S
.<<S T
FieldDefinition<<T c
.<<c d
Name<<d h
==<<i k
nameof<<l r
(<<r s
UserPickerField	<<s Ç
)
<<Ç É
)
<<É Ñ
)
<<Ñ Ö
.== 
ToArray==  
(==  !
)==! "
;==" #
if@@ 
(@@ 
fieldDefinitions@@ (
.@@( )
Length@@) /
==@@0 2
$num@@3 4
)@@4 5
{AA 
_ignoredTypesBB %
.BB% &
AddBB& )
(BB) *
contentItemBB* 5
.BB5 6
ContentTypeBB6 A
)BBA B
;BBB C
returnCC 
nullCC #
;CC# $
}DD 
varFF 
resultsFF 
=FF  !
newFF" %
ListFF& *
<FF* + 
UserPickerFieldIndexFF+ ?
>FF? @
(FF@ A
)FFA B
;FFB C
foreachII 
(II 
varII  
fieldDefinitionII! 0
inII1 3
fieldDefinitionsII4 D
)IID E
{JJ 
varKK 
jPartKK !
=KK" #
(KK$ %
JObjectKK% ,
)KK, -
contentItemKK- 8
.KK8 9
ContentKK9 @
[KK@ A
fieldDefinitionKKA P
.KKP Q
PartDefinitionKKQ _
.KK_ `
NameKK` d
]KKd e
;KKe f
ifMM 
(MM 
jPartMM !
==MM" $
nullMM% )
)MM) *
{NN 
continueOO $
;OO$ %
}PP 
varRR 
jFieldRR "
=RR# $
(RR% &
JObjectRR& -
)RR- .
jPartRR. 3
[RR3 4
fieldDefinitionRR4 C
.RRC D
NameRRD H
]RRH I
;RRI J
ifTT 
(TT 
jFieldTT "
==TT# %
nullTT& *
)TT* +
{UU 
continueVV $
;VV$ %
}WW 
varYY 
fieldYY !
=YY" #
jFieldYY$ *
.YY* +
ToObjectYY+ 3
<YY3 4
UserPickerFieldYY4 C
>YYC D
(YYD E
)YYE F
;YYF G
foreach[[ 
([[  !
var[[! $
userId[[% +
in[[, .
field[[/ 4
.[[4 5
UserIds[[5 <
)[[< =
{\\ 
results]] #
.]]# $
Add]]$ '
(]]' (
new]]( + 
UserPickerFieldIndex]], @
{^^ 
Latest__  &
=__' (
contentItem__) 4
.__4 5
Latest__5 ;
,__; <
	Published``  )
=``* +
contentItem``, 7
.``7 8
	Published``8 A
,``A B
ContentItemIdaa  -
=aa. /
contentItemaa0 ;
.aa; <
ContentItemIdaa< I
,aaI J 
ContentItemVersionIdbb  4
=bb5 6
contentItembb7 B
.bbB C 
ContentItemVersionIdbbC W
,bbW X
ContentTypecc  +
=cc, -
contentItemcc. 9
.cc9 :
ContentTypecc: E
,ccE F
ContentPartdd  +
=dd, -
fieldDefinitiondd. =
.dd= >
PartDefinitiondd> L
.ddL M
NameddM Q
,ddQ R
ContentFieldee  ,
=ee- .
fieldDefinitionee/ >
.ee> ?
Nameee? C
,eeC D
SelectedUserIdff  .
=ff/ 0
userIdff1 7
}gg 
)gg 
;gg 
}hh 
}ii 
returnkk 
resultskk "
;kk" #
}ll 
)ll 
;ll 
}mm 	
}nn 
}oo ö1
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\SQL\UserPickerMigrations.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
., -
SQL- 0
{ 
public 

class  
UserPickerMigrations %
:& '
DataMigration( 5
{ 
public		 
int		 
Create		 
(		 
)		 
{

 	
SchemaBuilder 
. 
CreateMapIndexTable -
<- . 
UserPickerFieldIndex. B
>B C
(C D
tableD I
=>J L
tableM R
. 
Column 
< 
string 
> 
(  
$str  /
,/ 0
column1 7
=>8 :
column; A
.A B

WithLengthB L
(L M
$numM O
)O P
)P Q
. 
Column 
< 
string 
> 
(  
$str  6
,6 7
column8 >
=>? A
columnB H
.H I

WithLengthI S
(S T
$numT V
)V W
)W X
. 
Column 
< 
string 
> 
(  
$str  -
,- .
column/ 5
=>6 8
column9 ?
.? @

WithLength@ J
(J K
ContentItemIndexK [
.[ \
MaxContentTypeSize\ n
)n o
)o p
. 
Column 
< 
string 
> 
(  
$str  -
,- .
column/ 5
=>6 8
column9 ?
.? @

WithLength@ J
(J K
ContentItemIndexK [
.[ \
MaxContentPartSize\ n
)n o
)o p
. 
Column 
< 
string 
> 
(  
$str  .
,. /
column0 6
=>7 9
column: @
.@ A

WithLengthA K
(K L
ContentItemIndexL \
.\ ]
MaxContentFieldSize] p
)p q
)q r
. 
Column 
< 
bool 
> 
( 
$str )
,) *
column+ 1
=>2 4
column5 ;
.; <
Nullable< D
(D E
)E F
)F G
. 
Column 
< 
bool 
> 
( 
$str &
,& '
column( .
=>/ 1
column2 8
.8 9
Nullable9 A
(A B
)B C
)C D
. 
Column 
< 
string 
> 
(  
$str  0
)0 1
) 
; 
SchemaBuilder 
. 
AlterIndexTable )
<) * 
UserPickerFieldIndex* >
>> ?
(? @
table@ E
=>F H
tableI N
. 
CreateIndex 
( 
$str B
,B C
$str  
,  !
$str #
,# $
$str *
,* +
$str 
,  
$str 
) 
) 
; 
SchemaBuilder 
. 
AlterIndexTable )
<) * 
UserPickerFieldIndex* >
>> ?
(? @
table@ E
=>F H
tableI N
.   
CreateIndex   
(   
$str   N
,  N O
$str!!  
,!!  !
$str"" !
,""! "
$str## !
,##! "
$str$$ "
,$$" #
$str%% 
,%%  
$str&& 
)&& 
)'' 
;'' 
SchemaBuilder)) 
.)) 
AlterIndexTable)) )
<))) * 
UserPickerFieldIndex))* >
>))> ?
())? @
table))@ E
=>))F H
table))I N
.** 
CreateIndex** 
(** 
$str** Q
,**Q R
$str++  
,++  !
$str,, $
,,,$ %
$str-- 
,--  
$str.. 
).. 
)// 
;// 
return22 
$num22 
;22 
}33 	
public66 
int66 
UpdateFrom166 
(66 
)66  
{77 	
SchemaBuilder88 
.88 
AlterIndexTable88 )
<88) * 
UserPickerFieldIndex88* >
>88> ?
(88? @
table88@ E
=>88F H
table88I N
.99 
CreateIndex99 
(99 
$str99 B
,99B C
$str::  
,::  !
$str;; #
,;;# $
$str<< *
,<<* +
$str== 
,==  
$str>> 
)>> 
)?? 
;?? 
SchemaBuilderAA 
.AA 
AlterIndexTableAA )
<AA) * 
UserPickerFieldIndexAA* >
>AA> ?
(AA? @
tableAA@ E
=>AAF H
tableAAI N
.BB 
CreateIndexBB 
(BB 
$strBB N
,BBN O
$strCC  
,CC  !
$strDD !
,DD! "
$strEE !
,EE! "
$strFF "
,FF" #
$strGG 
,GG  
$strHH 
)HH 
)II 
;II 
SchemaBuilderKK 
.KK 
AlterIndexTableKK )
<KK) * 
UserPickerFieldIndexKK* >
>KK> ?
(KK? @
tableKK@ E
=>KKF H
tableKKI N
.LL 
CreateIndexLL 
(LL 
$strLL Q
,LLQ R
$strMM  
,MM  !
$strNN $
,NN$ %
$strOO 
,OO  
$strPP 
)PP 
)QQ 
;QQ 
returnSS 
$numSS 
;SS 
}TT 	
}UU 
}VV Ï
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\TextFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class !
TextFieldIndexHandler &
:' ($
ContentFieldIndexHandler) A
<A B
	TextFieldB K
>K L
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
	TextField		- 6
field		7 <
,		< ="
BuildFieldIndexContext		> T
context		U \
)		\ ]
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
Text5 9
,9 :
options; B
)B C
;C D
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ›
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\TimeFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class !
TimeFieldIndexHandler &
:' ($
ContentFieldIndexHandler) A
<A B
	TimeFieldB K
>K L
{		 
public

 
override

 
Task

 
BuildIndexAsync

 ,
(

, -
	TimeField

- 6
field

7 <
,

< ="
BuildFieldIndexContext

> T
context

U \
)

\ ]
{ 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
DateTime 
? 
indexedValue "
=# $
null% )
;) *
if 
( 
field 
. 
Value 
. 
HasValue $
)$ %
{ 
indexedValue 
= 
new "
DateTime# +
(+ ,
field, 1
.1 2
Value2 7
.7 8
Value8 =
.= >
Ticks> C
)C D
;D E
} 
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
indexedValue/ ;
,; <
options= D
)D E
;E F
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ◊
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\UserPickerFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class '
UserPickerFieldIndexHandler ,
:- .$
ContentFieldIndexHandler/ G
<G H
UserPickerFieldH W
>W X
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
UserPickerField		- <
field		= B
,		B C"
BuildFieldIndexContext		D Z
context		[ b
)		b c
{

 	
var 
options 
=  
DocumentIndexOptions .
.. /
Store/ 4
;4 5
if 
( 
field 
. 
UserIds 
. 
Length $
>% &
$num' (
)( )
{ 
foreach 
( 
var 
userId #
in$ &
field' ,
., -
UserIds- 4
)4 5
{ 
foreach 
( 
var  
key! $
in% '
context( /
./ 0
Keys0 4
)4 5
{ 
context 
.  
DocumentIndex  -
.- .
Set. 1
(1 2
key2 5
,5 6
userId7 =
,= >
options? F
)F G
;G H
} 
} 
var 
	userNames 
= 
field  %
.% &
GetUserNames& 2
(2 3
)3 4
;4 5
foreach 
( 
var 
userName $
in% '
	userNames( 1
)1 2
{ 
foreach 
( 
var  
key! $
in% '
context( /
./ 0
Keys0 4
)4 5
{ 
context 
.  
DocumentIndex  -
.- .
Set. 1
(1 2
key2 5
,5 6
userName7 ?
,? @
optionsA H
)H I
;I J
} 
} 
} 
else   
{!! 
foreach"" 
("" 
var"" 
key""  
in""! #
context""$ +
.""+ ,
Keys"", 0
)""0 1
{## 
context$$ 
.$$ 
DocumentIndex$$ )
.$$) *
Set$$* -
($$- .
key$$. 1
,$$1 2
$str$$3 9
,$$9 :
options$$; B
)$$B C
;$$C D
}%% 
}&& 
return(( 
Task(( 
.(( 
CompletedTask(( %
;((% &
})) 	
}** 
}++ É
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Indexing\YoutubeFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Indexing$ ,
{ 
public 

class $
YoutubeFieldIndexHandler )
:* +$
ContentFieldIndexHandler, D
<D E
YoutubeFieldE Q
>Q R
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
YoutubeField		- 9
field		: ?
,		? @"
BuildFieldIndexContext		A W
context		X _
)		_ `
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
EmbeddedAddress5 D
,D E
optionsF M
)M N
;N O
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ®
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
,2 3
Category 
= 
$str #
)		 
]		 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 $
,$ %
Name 
=	 

$str 
, 
Category 
= 
$str #
,# $
Description 
= 
$str g
,g h
Dependencies 
= 
new 
[ 
] 
{ 
$str 5
,5 6
$str7 O
}P Q
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 1
,1 2
Name 
=	 

$str *
,* +
Category 
= 
$str #
,# $
Description 
= 
$str ]
,] ^
Dependencies 
= 
new 
[ 
] 
{ 
$str 6
}7 8
) 
] Ô
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Media\MediaShapes.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Media$ )
{ 
public 

class 
MediaShapes 
: 
IShapeTableProvider 2
{ 
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{		 	
builder

 
.

 
Describe

 
(

 
$str

 -
)

- .
. 
OnDisplaying 
( 

displaying (
=>) +
{ 
IShape 
editor !
=" #

displaying$ .
.. /
Shape/ 4
;4 5
if 
( 
editor 
. 
Metadata '
.' (
Type( ,
==- /
$str0 I
)I J
{ 
editor 
. 
Metadata '
.' (
Wrappers( 0
.0 1
Add1 4
(4 5
$str5 O
)O P
;P Q
} 
if 
( 
editor 
. 
Metadata '
.' (
Type( ,
==- /
$str0 K
)K L
{ 
editor 
. 
Metadata '
.' (
Wrappers( 0
.0 1
Add1 4
(4 5
$str5 O
)O P
;P Q
} 
} 
) 
; 
} 	
} 
} ´
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Media\Startup.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Media$ )
{ 
[ 
RequireFeatures 
( 
$str (
)( )
]) *
public 

class 
Startup 
: 
StartupBase &
{		 
public

 
override

 
void

 
ConfigureServices

 .
(

. /
IServiceCollection

/ A
services

B J
)

J K
{ 	
services 
. 
	AddScoped 
< 
IShapeTableProvider 2
,2 3
MediaShapes4 ?
>? @
(@ A
)A B
;B C
} 	
} 
} Å3
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Migrations.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
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
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% & 
MigrateFieldSettings& :
<: ;
BooleanField; G
,G H 
BooleanFieldSettingsI ]
>] ^
(^ _
)_ `
;` a%
_contentDefinitionManager %
.% & 
MigrateFieldSettings& :
<: ;
ContentPickerField; M
,M N&
ContentPickerFieldSettingsO i
>i j
(j k
)k l
;l m%
_contentDefinitionManager %
.% & 
MigrateFieldSettings& :
<: ;
	DateField; D
,D E
DateFieldSettingsF W
>W X
(X Y
)Y Z
;Z [%
_contentDefinitionManager   %
.  % & 
MigrateFieldSettings  & :
<  : ;
DateTimeField  ; H
,  H I!
DateTimeFieldSettings  J _
>  _ `
(  ` a
)  a b
;  b c%
_contentDefinitionManager## %
.##% & 
MigrateFieldSettings##& :
<##: ;
	HtmlField##; D
,##D E
HtmlFieldSettings##F W
>##W X
(##X Y
)##Y Z
;##Z [%
_contentDefinitionManager&& %
.&&% & 
MigrateFieldSettings&&& :
<&&: ;
	LinkField&&; D
,&&D E
LinkFieldSettings&&F W
>&&W X
(&&X Y
)&&Y Z
;&&Z [%
_contentDefinitionManager)) %
.))% & 
MigrateFieldSettings))& :
<)): ;-
!LocalizationSetContentPickerField)); \
,))\ ]6
)LocalizationSetContentPickerFieldSettings	))^ á
>
))á à
(
))à â
)
))â ä
;
))ä ã%
_contentDefinitionManager,, %
.,,% & 
MigrateFieldSettings,,& :
<,,: ;
MultiTextField,,; I
,,,I J"
MultiTextFieldSettings,,K a
>,,a b
(,,b c
),,c d
;,,d e%
_contentDefinitionManager// %
.//% & 
MigrateFieldSettings//& :
<//: ;
NumericField//; G
,//G H 
NumericFieldSettings//I ]
>//] ^
(//^ _
)//_ `
;//` a%
_contentDefinitionManager22 %
.22% & 
MigrateFieldSettings22& :
<22: ;
	TextField22; D
,22D E*
TextFieldHeaderDisplaySettings22F d
>22d e
(22e f
)22f g
;22g h%
_contentDefinitionManager33 %
.33% & 
MigrateFieldSettings33& :
<33: ;
	TextField33; D
,33D E1
%TextFieldPredefinedListEditorSettings33F k
>33k l
(33l m
)33m n
;33n o%
_contentDefinitionManager44 %
.44% & 
MigrateFieldSettings44& :
<44: ;
	TextField44; D
,44D E
TextFieldSettings44F W
>44W X
(44X Y
)44Y Z
;44Z [%
_contentDefinitionManager77 %
.77% & 
MigrateFieldSettings77& :
<77: ;
	TimeField77; D
,77D E
TimeFieldSettings77F W
>77W X
(77X Y
)77Y Z
;77Z [%
_contentDefinitionManager:: %
.::% & 
MigrateFieldSettings::& :
<::: ;
YoutubeField::; G
,::G H 
YoutubeFieldSettings::I ]
>::] ^
(::^ _
)::_ `
;::` a
return== 
$num== 
;== 
}>> 	
publicAA 
intAA 
UpdateFrom1AA 
(AA 
)AA  
{BB 	
varDD 
partDefinitionsDD 
=DD  !%
_contentDefinitionManagerDD" ;
.DD; <
LoadPartDefinitionsDD< O
(DDO P
)DDP Q
;DDQ R
foreachEE 
(EE 
varEE 
partDefinitionEE '
inEE( *
partDefinitionsEE+ :
)EE: ;
{FF 
ifGG 
(GG 
partDefinitionGG "
.GG" #
FieldsGG# )
.GG) *
AnyGG* -
(GG- .
xGG. /
=>GG0 2
xGG3 4
.GG4 5
FieldDefinitionGG5 D
.GGD E
NameGGE I
==GGJ L
$strGGM X
)GGX Y
)GGY Z
{HH %
_contentDefinitionManagerII -
.II- .
AlterPartDefinitionII. A
(IIA B
partDefinitionIIB P
.IIP Q
NameIIQ U
,IIU V
partBuilderIIW b
=>IIc e
{JJ 
foreachKK 
(KK  !
varKK! $
fieldDefinitionKK% 4
inKK5 7
partDefinitionKK8 F
.KKF G
FieldsKKG M
.KKM N
WhereKKN S
(KKS T
xKKT U
=>KKV X
xKKY Z
.KKZ [
FieldDefinitionKK[ j
.KKj k
NameKKk o
==KKp r
$strKKs ~
)KK~ 
)	KK Ä
{LL 
partBuilderMM '
.MM' (
	WithFieldMM( 1
(MM1 2
fieldDefinitionMM2 A
.MMA B
NameMMB F
,MMF G
fieldBuilderMMH T
=>MMU W
{NN 
fieldBuilderOO  ,
.OO, -
MergeSettingsOO- :
<OO: ;
HtmlFieldSettingsOO; L
>OOL M
(OOM N
xOON O
=>OOP R
xOOS T
.OOT U
SanitizeHtmlOOU a
=OOb c
falseOOd i
)OOi j
;OOj k
}PP 
)PP 
;PP 
}QQ 
}RR 
)RR 
;RR 
}SS 
}TT 
returnVV 
$numVV 
;VV 
}WW 	
}XX 
}YY Á-
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Services\DefaultContentPickerResultProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Services$ ,
{ 
public 

class .
"DefaultContentPickerResultProvider 3
:4 5(
IContentPickerResultProvider6 R
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
ISession !
_session" *
;* +
public .
"DefaultContentPickerResultProvider 1
(1 2
IContentManager2 A
contentManagerB P
,P Q%
IContentDefinitionManagerR k%
contentDefinitionManager	l Ñ
,
Ñ Ö
ISession
Ü é
session
è ñ
)
ñ ó
{ 	
_contentManager 
= 
contentManager ,
;, -%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_session 
= 
session 
; 
} 	
public 
string 
Name 
=> 
$str '
;' (
public 
async 
Task 
< 
IEnumerable %
<% &
ContentPickerResult& 9
>9 :
>: ;
Search< B
(B C&
ContentPickerSearchContextC ]
searchContext^ k
)k l
{ 	
var 
contentTypes 
= 
searchContext ,
., -
ContentTypes- 9
;9 :
if 
( 
searchContext 
. "
DisplayAllContentTypes 4
)4 5
{   
contentTypes!! 
=!! %
_contentDefinitionManager!! 8
."" 
ListTypeDefinitions"" (
(""( )
)"") *
.## 
Where## 
(## 
x## 
=>## 
string##  &
.##& '
IsNullOrEmpty##' 4
(##4 5
x##5 6
.##6 7
GetSettings##7 B
<##B C
ContentTypeSettings##C V
>##V W
(##W X
)##X Y
.##Y Z

Stereotype##Z d
)##d e
)##e f
.$$ 
Select$$ 
($$ 
x$$ 
=>$$  
x$$! "
.$$" #
Name$$# '
)$$' (
.%% 
AsEnumerable%% !
(%%! "
)%%" #
;%%# $
}&& 
var(( 
query(( 
=(( 
_session((  
.((  !
Query((! &
<((& '
ContentItem((' 2
,((2 3
ContentItemIndex((4 D
>((D E
(((E F
)((F G
.)) 
With)) 
<)) 
ContentItemIndex)) &
>))& '
())' (
x))( )
=>))* ,
x))- .
.)). /
ContentType))/ :
.)): ;
IsIn)); ?
())? @
contentTypes))@ L
)))L M
&&))N P
x))Q R
.))R S
Latest))S Y
)))Y Z
;))Z [
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrEmpty++ %
(++% &
searchContext++& 3
.++3 4
Query++4 9
)++9 :
)++: ;
{,, 
query-- 
.-- 
With-- 
<-- 
ContentItemIndex-- +
>--+ ,
(--, -
x--- .
=>--/ 1
x--2 3
.--3 4
DisplayText--4 ?
.--? @
Contains--@ H
(--H I
searchContext--I V
.--V W
Query--W \
)--\ ]
||--^ `
x--a b
.--b c
ContentType--c n
.--n o
Contains--o w
(--w x
searchContext	--x Ö
.
--Ö Ü
Query
--Ü ã
)
--ã å
)
--å ç
;
--ç é
}.. 
var00 
contentItems00 
=00 
await00 $
query00% *
.00* +
Take00+ /
(00/ 0
$num000 2
)002 3
.003 4
	ListAsync004 =
(00= >
)00> ?
;00? @
var22 
results22 
=22 
new22 
List22 "
<22" #
ContentPickerResult22# 6
>226 7
(227 8
)228 9
;229 :
foreach44 
(44 
var44 
contentItem44 $
in44% '
contentItems44( 4
)444 5
{55 
results66 
.66 
Add66 
(66 
new66 
ContentPickerResult66  3
{77 
ContentItemId88 !
=88" #
contentItem88$ /
.88/ 0
ContentItemId880 =
,88= >
DisplayText99 
=99  !
contentItem99" -
.99- .
ToString99. 6
(996 7
)997 8
,998 9
HasPublished::  
=::! "
await::# (
_contentManager::) 8
.::8 9$
HasPublishedVersionAsync::9 Q
(::Q R
contentItem::R ]
)::] ^
};; 
);; 
;;; 
}<< 
return>> 
results>> 
.>> 
OrderBy>> "
(>>" #
x>># $
=>>>% '
x>>( )
.>>) *
DisplayText>>* 5
)>>5 6
;>>6 7
}?? 	
}@@ 
}AA â+
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Services\DefaultUserPickerResultProvider.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Services$ ,
{ 
public 

class +
DefaultUserPickerResultProvider 0
:1 2%
IUserPickerResultProvider3 L
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IRoleService %
_roleService& 2
;2 3
private 
readonly 
RoleManager $
<$ %
IRole% *
>* +
_roleManager, 8
;8 9
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
public +
DefaultUserPickerResultProvider .
(. /
IContentManager 
contentManager *
,* +
IRoleService 
roleService $
,$ %
RoleManager 
< 
IRole 
> 
roleManager *
,* +
UserManager 
< 
IUser 
> 
userManager *
,* +
ISession 
session 
) 
{ 	
_contentManager   
=   
contentManager   ,
;  , -
_roleService!! 
=!! 
roleService!! &
;!!& '
_roleManager"" 
="" 
roleManager"" &
;""& '
_userManager## 
=## 
userManager## &
;##& '
_session$$ 
=$$ 
session$$ 
;$$ 
}%% 	
public'' 
string'' 
Name'' 
=>'' 
$str'' '
;''' (
public)) 
async)) 
Task)) 
<)) 
IEnumerable)) %
<))% &
UserPickerResult))& 6
>))6 7
>))7 8
Search))9 ?
())? @#
UserPickerSearchContext))@ W
searchContext))X e
)))e f
{** 	
var++ 
query++ 
=++ 
_session++  
.++  !
Query++! &
<++& '
User++' +
>+++ ,
(++, -
)++- .
;++. /
if-- 
(-- 
!-- 
searchContext-- 
.-- 
DisplayAllUsers-- .
)--. /
{.. 
var// 
roles// 
=// 
searchContext// )
.//) *
Roles//* /
./// 0
Select//0 6
(//6 7
x//7 8
=>//9 ;
_roleManager//< H
.//H I
NormalizeKey//I U
(//U V
x//V W
)//W X
)//X Y
;//Y Z
query00 
.00 
With00 
<00 
UserByRoleNameIndex00 .
>00. /
(00/ 0
x000 1
=>002 4
x005 6
.006 7
RoleName007 ?
.00? @
IsIn00@ D
(00D E
roles00E J
)00J K
)00K L
;00L M
}11 
if33 
(33 
!33 
string33 
.33 
IsNullOrEmpty33 %
(33% &
searchContext33& 3
.333 4
Query334 9
)339 :
)33: ;
{44 
query55 
.55 
With55 
<55 
	UserIndex55 $
>55$ %
(55% &
x55& '
=>55( *
x55+ ,
.55, -
NormalizedUserName55- ?
.55? @
Contains55@ H
(55H I
_userManager55I U
.55U V
NormalizeName55V c
(55c d
searchContext55d q
.55q r
Query55r w
)55w x
)55x y
)55y z
;55z {
}66 
var88 
users88 
=88 
await88 
query88 #
.88# $
Take88$ (
(88( )
$num88) +
)88+ ,
.88, -
	ListAsync88- 6
(886 7
)887 8
;888 9
var:: 
results:: 
=:: 
new:: 
List:: "
<::" #
UserPickerResult::# 3
>::3 4
(::4 5
)::5 6
;::6 7
foreach<< 
(<< 
var<< 
user<< 
in<<  
users<<! &
)<<& '
{== 
results>> 
.>> 
Add>> 
(>> 
new>> 
UserPickerResult>>  0
{?? 
UserId@@ 
=@@ 
user@@ !
.@@! "
UserId@@" (
,@@( )
DisplayTextAA 
=AA  !
userAA" &
.AA& '
UserNameAA' /
,AA/ 0
	IsEnabledBB 
=BB 
userBB  $
.BB$ %
	IsEnabledBB% .
}CC 
)CC 
;CC 
}DD 
returnFF 
resultsFF 
.FF 
OrderByFF "
(FF" #
xFF# $
=>FF% '
xFF( )
.FF) *
DisplayTextFF* 5
)FF5 6
;FF6 7
}GG 	
}HH 
}II Í
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\BooleanFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class  
BooleanFieldSettings %
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
public 
string 
Label 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
DefaultValue  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
}		 ∏
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\BooleanFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public		 

class		 &
BooleanFieldSettingsDriver		 +
:		, -3
'ContentPartFieldDefinitionDisplayDriver		. U
<		U V
BooleanField		V b
>		b c
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
<  
BooleanFieldSettings 2
>2 3
(3 4
$str4 O
,O P
modelQ V
=>W Y
partFieldDefinitionZ m
.m n
PopulateSettingsn ~
(~ 
model	 Ñ
)
Ñ Ö
)
Ö Ü
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
new  
BooleanFieldSettings 0
(0 1
)1 2
;2 3
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
} ’

†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\ContentPickerFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class &
ContentPickerFieldSettings +
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
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Multiple 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool "
DisplayAllContentTypes *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public		 
string		 
[		 
]		 !
DisplayedContentTypes		 -
{		. /
get		0 3
;		3 4
set		5 8
;		8 9
}		: ;
=		< =
new		> A
string		B H
[		H I
$num		I J
]		J K
;		K L
}

 
} ‘
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\ContentPickerFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{		 
public

 

class

 ,
 ContentPickerFieldSettingsDriver

 1
:

2 33
'ContentPartFieldDefinitionDisplayDriver

4 [
<

[ \
ContentPickerField

\ n
>

n o
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< &
ContentPickerFieldSettings 8
>8 9
(9 :
$str: [
,[ \
model] b
=>c e
partFieldDefinitionf y
.y z
PopulateSettings	z ä
(
ä ã
model
ã ê
)
ê ë
)
ë í
. 
Location 
( 
$str #
)# $
;$ %
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
ContentPartFieldDefinition? Y
partFieldDefinitionZ m
,m n)
UpdatePartFieldEditorContext	o ã
context
å ì
)
ì î
{ 	
var 
model 
= 
new &
ContentPickerFieldSettings 6
(6 7
)7 8
;8 9
await 
context 
. 
Updater !
.! "
TryUpdateModelAsync" 5
(5 6
model6 ;
,; <
Prefix= C
)C D
;D E
if 
( 
model 
. "
DisplayAllContentTypes ,
), -
{ 
model 
. !
DisplayedContentTypes +
=, -
Array. 3
.3 4
Empty4 9
<9 :
String: @
>@ A
(A B
)B C
;C D
} 
context 
. 
Builder 
. 
WithSettings (
(( )
model) .
). /
;/ 0
return 
Edit 
( 
partFieldDefinition +
)+ ,
;, -
}   	
}!! 
}"" «
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\DateFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class 
DateFieldSettings "
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
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} •
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\DateFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public		 

class		 #
DateFieldSettingsDriver		 (
:		) *3
'ContentPartFieldDefinitionDisplayDriver		+ R
<		R S
	DateField		S \
>		\ ]
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
< 
DateFieldSettings /
>/ 0
(0 1
$str1 I
,I J
modelK P
=>Q S
partFieldDefinitionT g
.g h
PopulateSettingsh x
(x y
modely ~
)~ 
)	 Ä
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
new 
DateFieldSettings -
(- .
). /
;/ 0
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
} œ
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\DateTimeFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class !
DateTimeFieldSettings &
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
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ¡
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\DateTimeFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public		 

class		 '
DateTimeFieldSettingsDriver		 ,
:		- .3
'ContentPartFieldDefinitionDisplayDriver		/ V
<		V W
DateTimeField		W d
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
DateTimeFieldSettings 3
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
DateTimeFieldSettings 1
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
} ¨
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\FieldSettingsExtensions.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

static 
class #
FieldSettingsExtensions /
{ 
[ 	
Obsolete	 
( 
$str c
)c d
]d e
public		 
static		 -
!ContentPartFieldDefinitionBuilder		 7
Hint		8 <
(		< =
this		= A-
!ContentPartFieldDefinitionBuilder		B c
builder		d k
,		k l
string		m s
hint		t x
)		x y
{

 	
return 
builder 
. 
WithSetting &
(& '
nameof' -
(- .
Hint. 2
)2 3
,3 4
hint5 9
)9 :
;: ;
} 	
} 
} „
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\HtmlFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class 
HtmlFieldSettings "
{ 
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
[		 	
DefaultValue			 
(		 
true		 
)		 
]		 
public

 
bool

 
SanitizeHtml

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
=

/ 0
true

1 5
;

5 6
} 
} é
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\HtmlFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{		 
public

 

class

 #
HtmlFieldSettingsDriver

 (
:

) *3
'ContentPartFieldDefinitionDisplayDriver

+ R
<

R S
	HtmlField

S \
>

\ ]
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< !
HtmlSettingsViewModel 3
>3 4
(4 5
$str5 M
,M N
modelO T
=>U W
{ 
var 
settings 
= 
partFieldDefinition 2
.2 3
GetSettings3 >
<> ?
HtmlFieldSettings? P
>P Q
(Q R
)R S
;S T
model 
. 
SanitizeHtml "
=# $
settings% -
.- .
SanitizeHtml. :
;: ;
model 
. 
Hint 
= 
settings %
.% &
Hint& *
;* +
} 
) 
. 
Location 
( 
$str "
)" #
;# $
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
ContentPartFieldDefinition? Y
partFieldDefinitionZ m
,m n)
UpdatePartFieldEditorContext	o ã
context
å ì
)
ì î
{ 	
var 
model 
= 
new !
HtmlSettingsViewModel 1
(1 2
)2 3
;3 4
var 
settings 
= 
new 
HtmlFieldSettings 0
(0 1
)1 2
;2 3
await 
context 
. 
Updater !
.! "
TryUpdateModelAsync" 5
(5 6
model6 ;
,; <
Prefix= C
)C D
;D E
settings 
. 
SanitizeHtml !
=" #
model$ )
.) *
SanitizeHtml* 6
;6 7
settings   
.   
Hint   
=   
model   !
.  ! "
Hint  " &
;  & '
context"" 
."" 
Builder"" 
."" 
WithSettings"" (
(""( )
settings"") 1
)""1 2
;""2 3
return$$ 
Edit$$ 
($$ 
partFieldDefinition$$ +
)$$+ ,
;$$, -
}%% 	
}&& 
}'' Ú
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\HtmlFieldTrumbowygEditorSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class ,
 HtmlFieldTrumbowygEditorSettings 1
{ 
public 
string 
Options 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
InsertMediaWithUrl &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} –#
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\HtmlFieldTrumbowygEditorSettingsDriver.cs
	namespace

 	
OrchardCore


 
.

 
ContentFields

 #
.

# $
Settings

$ ,
{ 
public 

class 2
&HtmlFieldTrumbowygEditorSettingsDriver 7
:8 93
'ContentPartFieldDefinitionDisplayDriver: a
<a b
	HtmlFieldb k
>k l
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 2
&HtmlFieldTrumbowygEditorSettingsDriver 5
(5 6
IStringLocalizer6 F
<F G2
&HtmlFieldTrumbowygEditorSettingsDriverG m
>m n
	localizero x
)x y
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< &
TrumbowygSettingsViewModel 8
>8 9
(9 :
$str: a
,a b
modelc h
=>i k
{ 
var 
settings 
= 
partFieldDefinition 2
.2 3
GetSettings3 >
<> ?,
 HtmlFieldTrumbowygEditorSettings? _
>_ `
(` a
)a b
;b c
model 
. 
Options 
= 
settings  (
.( )
Options) 0
;0 1
model 
. 
InsertMediaWithUrl (
=) *
settings+ 3
.3 4
InsertMediaWithUrl4 F
;F G
} 
) 
. 
Location 
( 
$str 
) 
;  
} 	
public!! 
override!! 
async!! 
Task!! "
<!!" #
IDisplayResult!!# 1
>!!1 2
UpdateAsync!!3 >
(!!> ?&
ContentPartFieldDefinition!!? Y
partFieldDefinition!!Z m
,!!m n)
UpdatePartFieldEditorContext	!!o ã
context
!!å ì
)
!!ì î
{"" 	
if## 
(## 
partFieldDefinition## #
.### $
Editor##$ *
(##* +
)##+ ,
==##- /
$str##0 ;
)##; <
{$$ 
var%% 
model%% 
=%% 
new%% &
TrumbowygSettingsViewModel%%  :
(%%: ;
)%%; <
;%%< =
var&& 
settings&& 
=&& 
new&& ",
 HtmlFieldTrumbowygEditorSettings&&# C
(&&C D
)&&D E
;&&E F
await(( 
context(( 
.(( 
Updater(( %
.((% &
TryUpdateModelAsync((& 9
(((9 :
model((: ?
,((? @
Prefix((A G
)((G H
;((H I
if** 
(** 
!** 
model** 
.** 
Options** "
.**" #
IsJson**# )
(**) *
)*** +
)**+ ,
{++ 
context,, 
.,, 
Updater,, #
.,,# $

ModelState,,$ .
.,,. /
AddModelError,,/ <
(,,< =
Prefix,,= C
+,,D E
$char,,F I
+,,J K
nameof,,L R
(,,R S&
TrumbowygSettingsViewModel,,S m
.,,m n
Options,,n u
),,u v
,,,v w
S,,x y
[,,y z
$str	,,z ´
]
,,´ ¨
)
,,¨ ≠
;
,,≠ Æ
}-- 
else.. 
{// 
settings00 
.00 
InsertMediaWithUrl00 /
=000 1
model002 7
.007 8
InsertMediaWithUrl008 J
;00J K
settings11 
.11 
Options11 $
=11% &
model11' ,
.11, -
Options11- 4
;114 5
context33 
.33 
Builder33 #
.33# $
WithSettings33$ 0
(330 1
settings331 9
)339 :
;33: ;
}44 
}55 
return77 
Edit77 
(77 
partFieldDefinition77 +
)77+ ,
;77, -
}88 	
}99 
}:: —
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\LinkFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class 
LinkFieldSettings "
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
public 
string 
HintLinkText "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
public 
LinkTextMode 
LinkTextMode (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public		 
string		 
UrlPlaceholder		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public

 
string

 
TextPlaceholder
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
2 3
public 
string 

DefaultUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
DefaultText !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
LinkFieldSettings  
(  !
)! "
{ 	
LinkTextMode 
= 
LinkTextMode '
.' (
Optional( 0
;0 1
} 	
} 
public 

enum 
LinkTextMode 
{ 
Optional 
, 
Required 
, 
Static 
, 
Url   
}!! 
}"" •
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\LinkFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public		 

class		 #
LinkFieldSettingsDriver		 (
:		) *3
'ContentPartFieldDefinitionDisplayDriver		+ R
<		R S
	LinkField		S \
>		\ ]
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
< 
LinkFieldSettings /
>/ 0
(0 1
$str1 I
,I J
modelK P
=>Q S
partFieldDefinitionT g
.g h
PopulateSettingsh x
(x y
modely ~
)~ 
)	 Ä
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
new 
LinkFieldSettings -
(- .
). /
;/ 0
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
} ∂

ØD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\LocalizationSetContentPickerFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
[ 
RequireFeatures 
( 
$str 6
)6 7
]7 8
public 

class 5
)LocalizationSetContentPickerFieldSettings :
{ 
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
public		 
bool		 
Required		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
bool

 
Multiple
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
public 
string 
[ 
] !
DisplayedContentTypes -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
new> A
stringB H
[H I
$numI J
]J K
;K L
} 
} õ
µD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\LocalizationSetContentPickerFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{		 
[

 
RequireFeatures

 
(

 
$str

 6
)

6 7
]

7 8
public 

class ;
/LocalizationSetContentPickerFieldSettingsDriver @
:A B3
'ContentPartFieldDefinitionDisplayDriverC j
<j k.
!LocalizationSetContentPickerField	k å
>
å ç
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< 5
)LocalizationSetContentPickerFieldSettings G
>G H
(H I
$strI y
,y z
model	{ Ä
=>
Å É!
partFieldDefinition
Ñ ó
.
ó ò
PopulateSettings
ò ®
(
® ©
model
© Æ
)
Æ Ø
)
Ø ∞
. 
Location 
( 
$str #
)# $
;$ %
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
ContentPartFieldDefinition? Y
partFieldDefinitionZ m
,m n)
UpdatePartFieldEditorContext	o ã
context
å ì
)
ì î
{ 	
var 
model 
= 
new 5
)LocalizationSetContentPickerFieldSettings E
(E F
)F G
;G H
await 
context 
. 
Updater !
.! "
TryUpdateModelAsync" 5
(5 6
model6 ;
,; <
Prefix= C
)C D
;D E
context 
. 
Builder 
. 
WithSettings (
(( )
model) .
). /
;/ 0
return 
Edit 
( 
partFieldDefinition +
)+ ,
;, -
} 	
} 
} ¡
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\MultiTextFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class "
MultiTextFieldSettings '
{ 
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
public		 
bool		 
Required		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 %
MultiTextFieldValueOption

 (
[

( )
]

) *
Options

+ 2
{

3 4
get

5 8
;

8 9
set

: =
;

= >
}

? @
=

A B
Array

C H
.

H I
Empty

I N
<

N O%
MultiTextFieldValueOption

O h
>

h i
(

i j
)

j k
;

k l
} 
public 

class %
MultiTextFieldValueOption *
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
bool 
Default 
{ 
get !
;! "
set# &
;& '
}( )
} 
} å%
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\MultiTextFieldSettingsDriver.cs
	namespace

 	
OrchardCore


 
.

 
ContentFields

 #
.

# $
Settings

$ ,
{ 
public 

class (
MultiTextFieldSettingsDriver -
:. /3
'ContentPartFieldDefinitionDisplayDriver0 W
<W X
MultiTextFieldX f
>f g
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public (
MultiTextFieldSettingsDriver +
(+ ,
IStringLocalizer, <
<< =(
MultiTextFieldSettingsDriver= Y
>Y Z
	localizer[ d
)d e
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< +
MultiTextFieldSettingsViewModel =
>= >
(> ?
$str? \
,\ ]
model^ c
=>d f
{ 
var 
settings 
= 
partFieldDefinition 2
.2 3
GetSettings3 >
<> ?"
MultiTextFieldSettings? U
>U V
(V W
)W X
;X Y
model 
. 
Required 
=  
settings! )
.) *
Required* 2
;2 3
model 
. 
Hint 
= 
settings %
.% &
Hint& *
;* +
model 
. 
Options 
= 
JsonConvert  +
.+ ,
SerializeObject, ;
(; <
settings< D
.D E
OptionsE L
,L M

FormattingN X
.X Y
IndentedY a
)a b
;b c
} 
) 
. 
Location 
( 
$str 
)  
;  !
}   	
public"" 
override"" 
async"" 
Task"" "
<""" #
IDisplayResult""# 1
>""1 2
UpdateAsync""3 >
(""> ?&
ContentPartFieldDefinition""? Y
partFieldDefinition""Z m
,""m n)
UpdatePartFieldEditorContext	""o ã
context
""å ì
)
""ì î
{## 	
var$$ 
model$$ 
=$$ 
new$$ +
MultiTextFieldSettingsViewModel$$ ;
($$; <
)$$< =
;$$= >
var%% 
settings%% 
=%% 
new%% "
MultiTextFieldSettings%% 5
(%%5 6
)%%6 7
;%%7 8
if'' 
('' 
await'' 
context'' 
.'' 
Updater'' %
.''% &
TryUpdateModelAsync''& 9
(''9 :
model'': ?
,''? @
Prefix''A G
)''G H
)''H I
{(( 
settings)) 
.)) 
Required)) !
=))" #
model))$ )
.))) *
Required))* 2
;))2 3
settings** 
.** 
Hint** 
=** 
model**  %
.**% &
Hint**& *
;*** +
try++ 
{,, 
settings-- 
.-- 
Options-- $
=--% &
JsonConvert--' 2
.--2 3
DeserializeObject--3 D
<--D E%
MultiTextFieldValueOption--E ^
[--^ _
]--_ `
>--` a
(--a b
model--b g
.--g h
Options--h o
)--o p
;--p q
}.. 
catch// 
{00 
context11 
.11 
Updater11 #
.11# $

ModelState11$ .
.11. /
AddModelError11/ <
(11< =
Prefix11= C
,11C D
S11E F
[11F G
$str11G x
]11x y
)11y z
;11z {
return22 
Edit22 
(22  
partFieldDefinition22  3
)223 4
;224 5
}33 
context55 
.55 
Builder55 
.55  
WithSettings55  ,
(55, -
settings55- 5
)555 6
;556 7
}66 
return88 
Edit88 
(88 
partFieldDefinition88 +
)88+ ,
;88, -
}99 	
}:: 
};; ¯
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\NumericFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class  
NumericFieldSettings %
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
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Scale 
{ 
get 
; 
set  #
;# $
}% &
public 
decimal 
? 
Minimum 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
decimal		 
?		 
Maximum		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
Placeholder
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
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ∏
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\NumericFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public		 

class		 &
NumericFieldSettingsDriver		 +
:		, -3
'ContentPartFieldDefinitionDisplayDriver		. U
<		U V
NumericField		V b
>		b c
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
<  
NumericFieldSettings 2
>2 3
(3 4
$str4 O
,O P
modelQ V
=>W Y
partFieldDefinitionZ m
.m n
PopulateSettingsn ~
(~ 
model	 Ñ
)
Ñ Ö
)
Ö Ü
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
new  
NumericFieldSettings 0
(0 1
)1 2
;2 3
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
} »
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\TextFieldHeaderDisplaySettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class *
TextFieldHeaderDisplaySettings /
{ 
public 
string 
Level 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ì
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\TextFieldHeaderDisplaySettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{		 
public

 

class

 0
$TextFieldHeaderDisplaySettingsDriver

 5
:

6 73
'ContentPartFieldDefinitionDisplayDriver

8 _
<

_ `
	TextField

` i
>

i j
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< #
HeaderSettingsViewModel 5
>5 6
(6 7
$str7 \
,\ ]
model^ c
=>d f
{ 
var 
settings 
= 
partFieldDefinition 2
.2 3
GetSettings3 >
<> ?*
TextFieldHeaderDisplaySettings? ]
>] ^
(^ _
)_ `
;` a
model 
. 
Level 
= 
settings &
.& '
Level' ,
;, -
} 
) 
. 
Location 
( 
$str #
)# $
;$ %
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
ContentPartFieldDefinition? Y
partFieldDefinitionZ m
,m n)
UpdatePartFieldEditorContext	o ã
context
å ì
)
ì î
{ 	
if 
( 
partFieldDefinition #
.# $
DisplayMode$ /
(/ 0
)0 1
==2 4
$str5 =
)= >
{ 
var 
model 
= 
new #
HeaderSettingsViewModel  7
(7 8
)8 9
;9 :
var 
settings 
= 
new "*
TextFieldHeaderDisplaySettings# A
(A B
)B C
;C D
await 
context 
. 
Updater %
.% &
TryUpdateModelAsync& 9
(9 :
model: ?
,? @
PrefixA G
)G H
;H I
settings   
.   
Level   
=    
model  ! &
.  & '
Level  ' ,
;  , -
context"" 
."" 
Builder"" 
.""  
WithSettings""  ,
("", -
settings""- 5
)""5 6
;""6 7
}## 
return%% 
Edit%% 
(%% 
partFieldDefinition%% +
)%%+ ,
;%%, -
}&& 	
}'' 
}(( ∏
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\TextFieldPredefinedListEditorSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class 1
%TextFieldPredefinedListEditorSettings 6
{ 
public 
ListValueOption 
[ 
]  
Options! (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
EditorOption 
Editor "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
string		 
DefaultValue		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
}

 
public 

enum 
EditorOption 
{ 
Radio 
, 
Dropdown 
} 
public 

class 
ListValueOption  
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} á*
±D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\TextFieldPredefinedListEditorSettingsDriver.cs
	namespace

 	
OrchardCore


 
.

 
ContentFields

 #
.

# $
Settings

$ ,
{ 
public 

class 7
+TextFieldPredefinedListEditorSettingsDriver <
:= >3
'ContentPartFieldDefinitionDisplayDriver? f
<f g
	TextFieldg p
>p q
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 7
+TextFieldPredefinedListEditorSettingsDriver :
(: ;
IStringLocalizer; K
<K L7
+TextFieldPredefinedListEditorSettingsDriverL w
>w x
	localizer	y Ç
)
Ç É
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< +
PredefinedListSettingsViewModel =
>= >
(> ?
$str? k
,k l
modelm r
=>s u
{ 
var 
settings 
= 
partFieldDefinition 2
.2 3
GetSettings3 >
<> ?1
%TextFieldPredefinedListEditorSettings? d
>d e
(e f
)f g
;g h
model 
. 
DefaultValue "
=# $
settings% -
.- .
DefaultValue. :
;: ;
model 
. 
Editor 
= 
settings '
.' (
Editor( .
;. /
model 
. 
Options 
= 
JsonConvert  +
.+ ,
SerializeObject, ;
(; <
settings< D
.D E
OptionsE L
??M O
newP S
ListValueOptionT c
[c d
$numd e
]e f
,f g

Formattingh r
.r s
Indenteds {
){ |
;| }
} 
) 
. 
Location 
( 
$str 
) 
;  
}   	
public"" 
override"" 
async"" 
Task"" "
<""" #
IDisplayResult""# 1
>""1 2
UpdateAsync""3 >
(""> ?&
ContentPartFieldDefinition""? Y
partFieldDefinition""Z m
,""m n)
UpdatePartFieldEditorContext	""o ã
context
""å ì
)
""ì î
{## 	
if$$ 
($$ 
partFieldDefinition$$ #
.$$# $
Editor$$$ *
($$* +
)$$+ ,
==$$- /
$str$$0 @
)$$@ A
{%% 
var&& 
model&& 
=&& 
new&& +
PredefinedListSettingsViewModel&&  ?
(&&? @
)&&@ A
;&&A B
var'' 
settings'' 
='' 
new'' "1
%TextFieldPredefinedListEditorSettings''# H
(''H I
)''I J
;''J K
await)) 
context)) 
.)) 
Updater)) %
.))% &
TryUpdateModelAsync))& 9
())9 :
model)): ?
,))? @
Prefix))A G
)))G H
;))H I
try++ 
{,, 
settings-- 
.-- 
DefaultValue-- )
=--* +
model--, 1
.--1 2
DefaultValue--2 >
;--> ?
settings.. 
... 
Editor.. #
=..$ %
model..& +
...+ ,
Editor.., 2
;..2 3
settings// 
.// 
Options// $
=//% &
string//' -
.//- .
IsNullOrWhiteSpace//. @
(//@ A
model//A F
.//F G
Options//G N
)//N O
?00 
new00 
ListValueOption00 -
[00- .
$num00. /
]00/ 0
:11 
JsonConvert11 %
.11% &
DeserializeObject11& 7
<117 8
ListValueOption118 G
[11G H
]11H I
>11I J
(11J K
model11K P
.11P Q
Options11Q X
)11X Y
;11Y Z
}22 
catch33 
{44 
context55 
.55 
Updater55 #
.55# $

ModelState55$ .
.55. /
AddModelError55/ <
(55< =
Prefix55= C
,55C D
S55E F
[55F G
$str55G x
]55x y
)55y z
;55z {
return66 
Edit66 
(66  
partFieldDefinition66  3
)663 4
;664 5
}77 
context99 
.99 
Builder99 
.99  
WithSettings99  ,
(99, -
settings99- 5
)995 6
;996 7
}:: 
return<< 
Edit<< 
(<< 
partFieldDefinition<< +
)<<+ ,
;<<, -
}== 	
}>> 
}?? «
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\TextFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class 
TextFieldSettings "
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
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} •
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\TextFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public		 

class		 #
TextFieldSettingsDriver		 (
:		) *3
'ContentPartFieldDefinitionDisplayDriver		+ R
<		R S
	TextField		S \
>		\ ]
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
< 
TextFieldSettings /
>/ 0
(0 1
$str1 I
,I J
modelK P
=>Q S
partFieldDefinitionT g
.g h
PopulateSettingsh x
(x y
modely ~
)~ 
)	 Ä
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
new 
TextFieldSettings -
(- .
). /
;/ 0
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
} «
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\TimeFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class 
TimeFieldSettings "
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
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} •
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\TimeFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public		 

class		 #
TimeFieldSettingsDriver		 (
:		) *3
'ContentPartFieldDefinitionDisplayDriver		+ R
<		R S
	TimeField		S \
>		\ ]
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
< 
TimeFieldSettings /
>/ 0
(0 1
$str1 I
,I J
modelK P
=>Q S
partFieldDefinitionT g
.g h
PopulateSettingsh x
(x y
modely ~
)~ 
)	 Ä
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
new 
TimeFieldSettings -
(- .
). /
;/ 0
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
} Ò

ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\UserPickerFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class #
UserPickerFieldSettings (
{ 
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
bool		 
Multiple		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
bool

 
DisplayAllUsers

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
string 
[ 
] 
DisplayedRoles &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
Array7 <
.< =
Empty= B
<B C
stringC I
>I J
(J K
)K L
;L M
} 
} ª0
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\UserPickerFieldSettingsDriver.cs
	namespace

 	
OrchardCore


 
.

 
ContentFields

 #
.

# $
Settings

$ ,
{ 
public 

class )
UserPickerFieldSettingsDriver .
:/ 03
'ContentPartFieldDefinitionDisplayDriver1 X
<X Y
UserPickerFieldY h
>h i
{ 
private 
readonly 
IRoleService %
_roleService& 2
;2 3
public )
UserPickerFieldSettingsDriver ,
(, -
IRoleService- 9
roleService: E
)E F
{ 	
_roleService 
= 
roleService &
;& '
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< ,
 UserPickerFieldSettingsViewModel >
>> ?
(? @
$str@ ^
,^ _
async` e
modelf k
=>l n
{ 
var 
settings 
= 
partFieldDefinition 2
.2 3
GetSettings3 >
<> ?#
UserPickerFieldSettings? V
>V W
(W X
)X Y
;Y Z
model 
. 
Hint 
= 
settings %
.% &
Hint& *
;* +
model 
. 
Required 
=  
settings! )
.) *
Required* 2
;2 3
model 
. 
Multiple 
=  
settings! )
.) *
Multiple* 2
;2 3
model 
. 
DisplayAllUsers %
=& '
settings( 0
.0 1
DisplayAllUsers1 @
;@ A
model 
. 
Roles 
= 
( 
await $
_roleService% 1
.1 2
GetRoleNamesAsync2 C
(C D
)D E
)E F
. 
Except 
( 
new 
[  
]  !
{" #
$str$ /
,/ 0
$str1 @
}A B
,B C
StringComparerD R
.R S
OrdinalIgnoreCaseS d
)d e
.   
Select   
(   
x   
=>    
new  ! $
	RoleEntry  % .
{  / 0
Role  1 5
=  6 7
x  8 9
,  9 :

IsSelected  ; E
=  F G
settings  H P
.  P Q
DisplayedRoles  Q _
.  _ `
Contains  ` h
(  h i
x  i j
,  j k
StringComparer  l z
.  z {
OrdinalIgnoreCase	  { å
)
  å ç
}
  é è
)
  è ê
.
  ê ë
ToArray
  ë ò
(
  ò ô
)
  ô ö
;
  ö õ
}!! 
)!! 
.!! 
Location!! 
(!! 
$str!! !
)!!! "
;!!" #
}"" 	
public$$ 
override$$ 
async$$ 
Task$$ "
<$$" #
IDisplayResult$$# 1
>$$1 2
UpdateAsync$$3 >
($$> ?&
ContentPartFieldDefinition$$? Y
partFieldDefinition$$Z m
,$$m n)
UpdatePartFieldEditorContext	$$o ã
context
$$å ì
)
$$ì î
{%% 	
var&& 
model&& 
=&& 
new&& ,
 UserPickerFieldSettingsViewModel&& <
(&&< =
)&&= >
;&&> ?
var'' 
settings'' 
='' 
new'' #
UserPickerFieldSettings'' 6
(''6 7
)''7 8
;''8 9
if)) 
()) 
await)) 
context)) 
.)) 
Updater)) %
.))% &
TryUpdateModelAsync))& 9
())9 :
model)): ?
,))? @
Prefix))A G
)))G H
)))H I
{** 
settings++ 
.++ 
Hint++ 
=++ 
model++ $
.++$ %
Hint++% )
;++) *
settings,, 
.,, 
Required,, !
=,," #
model,,$ )
.,,) *
Required,,* 2
;,,2 3
settings-- 
.-- 
Multiple-- !
=--" #
model--$ )
.--) *
Multiple--* 2
;--2 3
settings.. 
... 
DisplayAllUsers.. (
=..) *
model..+ 0
...0 1
DisplayAllUsers..1 @
;..@ A
if// 
(// 
settings// 
.// 
DisplayAllUsers// ,
)//, -
{00 
settings11 
.11 
DisplayedRoles11 +
=11, -
Array11. 3
.113 4
Empty114 9
<119 :
String11: @
>11@ A
(11A B
)11B C
;11C D
}22 
else33 
{44 
settings55 
.55 
DisplayedRoles55 +
=55, -
model55. 3
.553 4
Roles554 9
.559 :
Where55: ?
(55? @
x55@ A
=>55B D
x55E F
.55F G

IsSelected55G Q
)55Q R
.55R S
Select55S Y
(55Y Z
x55Z [
=>55\ ^
x55_ `
.55` a
Role55a e
)55e f
.55f g
ToArray55g n
(55n o
)55o p
;55p q
}66 
context88 
.88 
Builder88 
.88  
WithSettings88  ,
(88, -
settings88- 5
)885 6
;886 7
}99 
return;; 
Edit;; 
(;; 
partFieldDefinition;; +
);;+ ,
;;;, -
}<< 	
}== 
}>> ê
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\UserPickerFieldSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class ,
 UserPickerFieldSettingsViewModel 1
{ 
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
bool		 
Multiple		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
bool

 
DisplayAllUsers

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
	RoleEntry 
[ 
] 
Roles  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
Array1 6
.6 7
Empty7 <
<< =
	RoleEntry= F
>F G
(G H
)H I
;I J
} 
public 

class 
	RoleEntry 
{ 
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 

IsSelected 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ì	
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\YoutubeFieldSettings.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public 

class  
YoutubeFieldSettings %
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
public 
string 
Label 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Width 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Height 
{ 
get 
;  
set! $
;$ %
}& '
public		 
bool		 
Required		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
}

 
} Â
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Settings\YoutubeFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $
Settings$ ,
{ 
public		 

class		 &
YoutubeFieldSettingsDriver		 +
:		, -3
'ContentPartFieldDefinitionDisplayDriver		. U
<		U V
YoutubeField		V b
>		b c
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
<  
YoutubeFieldSettings 2
>2 3
(3 4
$str4 N
,N O
modelP U
=>V X
{ 
partFieldDefinition $
.$ %
PopulateSettings% 5
(5 6
model6 ;
); <
;< =
model 
. 
Height 
= 
model  %
.% &
Height& ,
!=- /
default0 7
(7 8
int8 ;
); <
?= >
model? D
.D E
HeightE K
:L M
$numN Q
;Q R
model 
. 
Width 
= 
model $
.$ %
Width% *
!=+ -
default. 5
(5 6
int6 9
)9 :
?; <
model= B
.B C
WidthC H
:I J
$numK N
;N O
} 
) 
. 
Location 
( 
$str "
)" #
;# $
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
ContentPartFieldDefinition? Y
partFieldDefinitionZ m
,m n)
UpdatePartFieldEditorContext	o ã
context
å ì
)
ì î
{ 	
var 
model 
= 
new  
YoutubeFieldSettings 0
(0 1
)1 2
;2 3
await 
context 
. 
Updater !
.! "
TryUpdateModelAsync" 5
(5 6
model6 ;
,; <
Prefix= C
)C D
;D E
context 
. 
Builder 
. 
WithSettings (
(( )
model) .
). /
;/ 0
return 
Edit 
( 
partFieldDefinition +
)+ ,
;, -
} 	
} 
} ªÌ
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\Startup.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
static 
Startup 
( 
) 
{ 	
TemplateContext## 
.## &
GlobalMemberAccessStrategy## 6
.##6 7
Register##7 ?
<##? @
BooleanField##@ L
>##L M
(##M N
)##N O
;##O P
TemplateContext$$ 
.$$ &
GlobalMemberAccessStrategy$$ 6
.$$6 7
Register$$7 ?
<$$? @(
DisplayBooleanFieldViewModel$$@ \
>$$\ ]
($$] ^
)$$^ _
;$$_ `
TemplateContext%% 
.%% &
GlobalMemberAccessStrategy%% 6
.%%6 7
Register%%7 ?
<%%? @
	HtmlField%%@ I
>%%I J
(%%J K
)%%K L
;%%L M
TemplateContext&& 
.&& &
GlobalMemberAccessStrategy&& 6
.&&6 7
Register&&7 ?
<&&? @%
DisplayHtmlFieldViewModel&&@ Y
>&&Y Z
(&&Z [
)&&[ \
;&&\ ]
TemplateContext'' 
.'' &
GlobalMemberAccessStrategy'' 6
.''6 7
Register''7 ?
<''? @
	LinkField''@ I
>''I J
(''J K
)''K L
;''L M
TemplateContext(( 
.(( &
GlobalMemberAccessStrategy(( 6
.((6 7
Register((7 ?
<((? @%
DisplayLinkFieldViewModel((@ Y
>((Y Z
(((Z [
)(([ \
;((\ ]
TemplateContext)) 
.)) &
GlobalMemberAccessStrategy)) 6
.))6 7
Register))7 ?
<))? @
NumericField))@ L
>))L M
())M N
)))N O
;))O P
TemplateContext** 
.** &
GlobalMemberAccessStrategy** 6
.**6 7
Register**7 ?
<**? @(
DisplayNumericFieldViewModel**@ \
>**\ ]
(**] ^
)**^ _
;**_ `
TemplateContext++ 
.++ &
GlobalMemberAccessStrategy++ 6
.++6 7
Register++7 ?
<++? @
	TextField++@ I
>++I J
(++J K
)++K L
;++L M
TemplateContext,, 
.,, &
GlobalMemberAccessStrategy,, 6
.,,6 7
Register,,7 ?
<,,? @%
DisplayTextFieldViewModel,,@ Y
>,,Y Z
(,,Z [
),,[ \
;,,\ ]
TemplateContext-- 
.-- &
GlobalMemberAccessStrategy-- 6
.--6 7
Register--7 ?
<--? @
DateTimeField--@ M
>--M N
(--N O
)--O P
;--P Q
TemplateContext.. 
... &
GlobalMemberAccessStrategy.. 6
...6 7
Register..7 ?
<..? @)
DisplayDateTimeFieldViewModel..@ ]
>..] ^
(..^ _
).._ `
;..` a
TemplateContext// 
.// &
GlobalMemberAccessStrategy// 6
.//6 7
Register//7 ?
<//? @
	DateField//@ I
>//I J
(//J K
)//K L
;//L M
TemplateContext00 
.00 &
GlobalMemberAccessStrategy00 6
.006 7
Register007 ?
<00? @%
DisplayDateFieldViewModel00@ Y
>00Y Z
(00Z [
)00[ \
;00\ ]
TemplateContext11 
.11 &
GlobalMemberAccessStrategy11 6
.116 7
Register117 ?
<11? @
	TimeField11@ I
>11I J
(11J K
)11K L
;11L M
TemplateContext22 
.22 &
GlobalMemberAccessStrategy22 6
.226 7
Register227 ?
<22? @%
DisplayTimeFieldViewModel22@ Y
>22Y Z
(22Z [
)22[ \
;22\ ]
TemplateContext33 
.33 &
GlobalMemberAccessStrategy33 6
.336 7
Register337 ?
<33? @
MultiTextField33@ N
>33N O
(33O P
)33P Q
;33Q R
TemplateContext44 
.44 &
GlobalMemberAccessStrategy44 6
.446 7
Register447 ?
<44? @*
DisplayMultiTextFieldViewModel44@ ^
>44^ _
(44_ `
)44` a
;44a b
TemplateContext55 
.55 &
GlobalMemberAccessStrategy55 6
.556 7
Register557 ?
<55? @
UserPickerField55@ O
>55O P
(55P Q
)55Q R
;55R S
TemplateContext66 
.66 &
GlobalMemberAccessStrategy66 6
.666 7
Register667 ?
<66? @+
DisplayUserPickerFieldViewModel66@ _
>66_ `
(66` a
)66a b
;66b c
TemplateContext77 
.77 &
GlobalMemberAccessStrategy77 6
.776 7
Register777 ?
<77? @
ContentPickerField77@ R
>77R S
(77S T
)77T U
;77U V
TemplateContext88 
.88 &
GlobalMemberAccessStrategy88 6
.886 7
Register887 ?
<88? @.
"DisplayContentPickerFieldViewModel88@ b
>88b c
(88c d
)88d e
;88e f
}99 	
public;; 
Startup;; 
(;; 
IOptions;; 
<;;  
AdminOptions;;  ,
>;;, -
adminOptions;;. :
);;: ;
{<< 	
_adminOptions== 
=== 
adminOptions== (
.==( )
Value==) .
;==. /
}>> 	
public@@ 
override@@ 
void@@ 
ConfigureServices@@ .
(@@. /
IServiceCollection@@/ A
services@@B J
)@@J K
{AA 	
servicesCC 
.CC 
AddContentFieldCC $
<CC$ %
BooleanFieldCC% 1
>CC1 2
(CC2 3
)CC3 4
.DD 
UseDisplayDriverDD !
<DD! "%
BooleanFieldDisplayDriverDD" ;
>DD; <
(DD< =
)DD= >
;DD> ?
servicesEE 
.EE 
	AddScopedEE 
<EE 4
(IContentPartFieldDefinitionDisplayDriverEE G
,EEG H&
BooleanFieldSettingsDriverEEI c
>EEc d
(EEd e
)EEe f
;EEf g
servicesFF 
.FF 
	AddScopedFF 
<FF %
IContentFieldIndexHandlerFF 8
,FF8 9$
BooleanFieldIndexHandlerFF: R
>FFR S
(FFS T
)FFT U
;FFU V
servicesII 
.II 
AddContentFieldII $
<II$ %
	TextFieldII% .
>II. /
(II/ 0
)II0 1
.JJ 
UseDisplayDriverJJ !
<JJ! ""
TextFieldDisplayDriverJJ" 8
>JJ8 9
(JJ9 :
)JJ: ;
;JJ; <
servicesKK 
.KK 
	AddScopedKK 
<KK 4
(IContentPartFieldDefinitionDisplayDriverKK G
,KKG H#
TextFieldSettingsDriverKKI `
>KK` a
(KKa b
)KKb c
;KKc d
servicesLL 
.LL 
	AddScopedLL 
<LL %
IContentFieldIndexHandlerLL 8
,LL8 9!
TextFieldIndexHandlerLL: O
>LLO P
(LLP Q
)LLQ R
;LLR S
servicesMM 
.MM 
	AddScopedMM 
<MM 4
(IContentPartFieldDefinitionDisplayDriverMM G
,MMG H7
+TextFieldPredefinedListEditorSettingsDriverMMI t
>MMt u
(MMu v
)MMv w
;MMw x
servicesNN 
.NN 
	AddScopedNN 
<NN 4
(IContentPartFieldDefinitionDisplayDriverNN G
,NNG H0
$TextFieldHeaderDisplaySettingsDriverNNI m
>NNm n
(NNn o
)NNo p
;NNp q
servicesQQ 
.QQ 
AddContentFieldQQ $
<QQ$ %
	HtmlFieldQQ% .
>QQ. /
(QQ/ 0
)QQ0 1
.RR 
UseDisplayDriverRR !
<RR! ""
HtmlFieldDisplayDriverRR" 8
>RR8 9
(RR9 :
)RR: ;
;RR; <
servicesSS 
.SS 
	AddScopedSS 
<SS 4
(IContentPartFieldDefinitionDisplayDriverSS G
,SSG H#
HtmlFieldSettingsDriverSSI `
>SS` a
(SSa b
)SSb c
;SSc d
servicesTT 
.TT 
	AddScopedTT 
<TT 4
(IContentPartFieldDefinitionDisplayDriverTT G
,TTG H2
&HtmlFieldTrumbowygEditorSettingsDriverTTI o
>TTo p
(TTp q
)TTq r
;TTr s
servicesUU 
.UU 
	AddScopedUU 
<UU %
IContentFieldIndexHandlerUU 8
,UU8 9!
HtmlFieldIndexHandlerUU: O
>UUO P
(UUP Q
)UUQ R
;UUR S
servicesXX 
.XX 
AddContentFieldXX $
<XX$ %
	LinkFieldXX% .
>XX. /
(XX/ 0
)XX0 1
.YY 
UseDisplayDriverYY !
<YY! ""
LinkFieldDisplayDriverYY" 8
>YY8 9
(YY9 :
)YY: ;
;YY; <
servicesZZ 
.ZZ 
	AddScopedZZ 
<ZZ 4
(IContentPartFieldDefinitionDisplayDriverZZ G
,ZZG H#
LinkFieldSettingsDriverZZI `
>ZZ` a
(ZZa b
)ZZb c
;ZZc d
services[[ 
.[[ 
	AddScoped[[ 
<[[ %
IContentFieldIndexHandler[[ 8
,[[8 9!
LinkFieldIndexHandler[[: O
>[[O P
([[P Q
)[[Q R
;[[R S
services^^ 
.^^ 
AddContentField^^ $
<^^$ %
MultiTextField^^% 3
>^^3 4
(^^4 5
)^^5 6
.__ 
UseDisplayDriver__ !
<__! "'
MultiTextFieldDisplayDriver__" =
>__= >
(__> ?
)__? @
;__@ A
services`` 
.`` 
	AddScoped`` 
<`` 4
(IContentPartFieldDefinitionDisplayDriver`` G
,``G H(
MultiTextFieldSettingsDriver``I e
>``e f
(``f g
)``g h
;``h i
servicesaa 
.aa 
	AddScopedaa 
<aa %
IContentFieldIndexHandleraa 8
,aa8 9&
MultiTextFieldIndexHandleraa: T
>aaT U
(aaU V
)aaV W
;aaW X
servicesdd 
.dd 
AddContentFielddd $
<dd$ %
NumericFielddd% 1
>dd1 2
(dd2 3
)dd3 4
.ee 
UseDisplayDriveree !
<ee! "%
NumericFieldDisplayDriveree" ;
>ee; <
(ee< =
)ee= >
;ee> ?
servicesff 
.ff 
	AddScopedff 
<ff 4
(IContentPartFieldDefinitionDisplayDriverff G
,ffG H&
NumericFieldSettingsDriverffI c
>ffc d
(ffd e
)ffe f
;fff g
servicesgg 
.gg 
	AddScopedgg 
<gg %
IContentFieldIndexHandlergg 8
,gg8 9$
NumericFieldIndexHandlergg: R
>ggR S
(ggS T
)ggT U
;ggU V
servicesjj 
.jj 
AddContentFieldjj $
<jj$ %
DateTimeFieldjj% 2
>jj2 3
(jj3 4
)jj4 5
.kk 
UseDisplayDriverkk !
<kk! "&
DateTimeFieldDisplayDriverkk" <
>kk< =
(kk= >
)kk> ?
;kk? @
servicesll 
.ll 
	AddScopedll 
<ll 4
(IContentPartFieldDefinitionDisplayDriverll G
,llG H'
DateTimeFieldSettingsDriverllI d
>lld e
(lle f
)llf g
;llg h
servicesmm 
.mm 
	AddScopedmm 
<mm %
IContentFieldIndexHandlermm 8
,mm8 9%
DateTimeFieldIndexHandlermm: S
>mmS T
(mmT U
)mmU V
;mmV W
servicespp 
.pp 
AddContentFieldpp $
<pp$ %
	DateFieldpp% .
>pp. /
(pp/ 0
)pp0 1
.qq 
UseDisplayDriverqq !
<qq! ""
DateFieldDisplayDriverqq" 8
>qq8 9
(qq9 :
)qq: ;
;qq; <
servicesrr 
.rr 
	AddScopedrr 
<rr 4
(IContentPartFieldDefinitionDisplayDriverrr G
,rrG H#
DateFieldSettingsDriverrrI `
>rr` a
(rra b
)rrb c
;rrc d
servicesss 
.ss 
	AddScopedss 
<ss %
IContentFieldIndexHandlerss 8
,ss8 9!
DateFieldIndexHandlerss: O
>ssO P
(ssP Q
)ssQ R
;ssR S
servicesvv 
.vv 
AddContentFieldvv $
<vv$ %
	TimeFieldvv% .
>vv. /
(vv/ 0
)vv0 1
.ww 
UseDisplayDriverww !
<ww! ""
TimeFieldDisplayDriverww" 8
>ww8 9
(ww9 :
)ww: ;
;ww; <
servicesxx 
.xx 
	AddScopedxx 
<xx 4
(IContentPartFieldDefinitionDisplayDriverxx G
,xxG H#
TimeFieldSettingsDriverxxI `
>xx` a
(xxa b
)xxb c
;xxc d
servicesyy 
.yy 
	AddScopedyy 
<yy %
IContentFieldIndexHandleryy 8
,yy8 9!
TimeFieldIndexHandleryy: O
>yyO P
(yyP Q
)yyQ R
;yyR S
services|| 
.|| 
AddContentField|| $
<||$ %
YoutubeField||% 1
>||1 2
(||2 3
)||3 4
.}} 
UseDisplayDriver}} !
<}}! "%
YoutubeFieldDisplayDriver}}" ;
>}}; <
(}}< =
)}}= >
;}}> ?
services~~ 
.~~ 
	AddScoped~~ 
<~~ 4
(IContentPartFieldDefinitionDisplayDriver~~ G
,~~G H&
YoutubeFieldSettingsDriver~~I c
>~~c d
(~~d e
)~~e f
;~~f g
services 
. 
	AddScoped 
< %
IContentFieldIndexHandler 8
,8 9$
YoutubeFieldIndexHandler: R
>R S
(S T
)T U
;U V
services
ÇÇ 
.
ÇÇ 
AddContentField
ÇÇ $
<
ÇÇ$ % 
ContentPickerField
ÇÇ% 7
>
ÇÇ7 8
(
ÇÇ8 9
)
ÇÇ9 :
.
ÉÉ 
UseDisplayDriver
ÉÉ !
<
ÉÉ! "-
ContentPickerFieldDisplayDriver
ÉÉ" A
>
ÉÉA B
(
ÉÉB C
)
ÉÉC D
;
ÉÉD E
services
ÑÑ 
.
ÑÑ 
	AddScoped
ÑÑ 
<
ÑÑ 6
(IContentPartFieldDefinitionDisplayDriver
ÑÑ G
,
ÑÑG H.
 ContentPickerFieldSettingsDriver
ÑÑI i
>
ÑÑi j
(
ÑÑj k
)
ÑÑk l
;
ÑÑl m
services
ÖÖ 
.
ÖÖ 
	AddScoped
ÖÖ 
<
ÖÖ '
IContentFieldIndexHandler
ÖÖ 8
,
ÖÖ8 9,
ContentPickerFieldIndexHandler
ÖÖ: X
>
ÖÖX Y
(
ÖÖY Z
)
ÖÖZ [
;
ÖÖ[ \
services
ÜÜ 
.
ÜÜ 
	AddScoped
ÜÜ 
<
ÜÜ *
IContentPickerResultProvider
ÜÜ ;
,
ÜÜ; <0
"DefaultContentPickerResultProvider
ÜÜ= _
>
ÜÜ_ `
(
ÜÜ` a
)
ÜÜa b
;
ÜÜb c
services
ââ 
.
ââ 
	AddScoped
ââ 
<
ââ 
IDataMigration
ââ -
,
ââ- .

Migrations
ââ/ 9
>
ââ9 :
(
ââ: ;
)
ââ; <
;
ââ< =
}
ää 	
public
åå 
override
åå 
void
åå 
	Configure
åå &
(
åå& '!
IApplicationBuilder
åå' :
builder
åå; B
,
ååB C#
IEndpointRouteBuilder
ååD Y
routes
ååZ `
,
åå` a
IServiceProvider
ååb r
serviceProvideråås Ç
)ååÇ É
{
çç 	
routes
éé 
.
éé $
MapAreaControllerRoute
éé )
(
éé) *
name
èè 
:
èè 
$str
èè %
,
èè% &
areaName
êê 
:
êê 
$str
êê 5
,
êê5 6
pattern
ëë 
:
ëë 
_adminOptions
ëë &
.
ëë& '
AdminUrlPrefix
ëë' 5
+
ëë6 7
$str
ëë8 [
,
ëë[ \
defaults
íí 
:
íí 
new
íí 
{
íí 

controller
íí  *
=
íí+ ,
typeof
íí- 3
(
íí3 4*
ContentPickerAdminController
íí4 P
)
ííP Q
.
ííQ R
ControllerName
ííR `
(
íí` a
)
íía b
,
ííb c
action
ííd j
=
íík l
nameof
íím s
(
íís t+
ContentPickerAdminControlleríít ê
.ííê ë"
SearchContentItemsííë £
)íí£ §
}íí• ¶
)
ìì 
;
ìì 
}
îî 	
}
ïï 
[
óó 
RequireFeatures
óó 
(
óó 
$str
óó 6
)
óó6 7
]
óó7 8
public
òò 

class
òò 1
#LocalizationSetContentPickerStartup
òò 4
:
òò5 6
StartupBase
òò7 B
{
ôô 
private
öö 
readonly
öö 
AdminOptions
öö %
_adminOptions
öö& 3
;
öö3 4
public
úú 1
#LocalizationSetContentPickerStartup
úú 2
(
úú2 3
IOptions
úú3 ;
<
úú; <
AdminOptions
úú< H
>
úúH I
adminOptions
úúJ V
)
úúV W
{
ùù 	
_adminOptions
ûû 
=
ûû 
adminOptions
ûû (
.
ûû( )
Value
ûû) .
;
ûû. /
}
üü 	
public
°° 
override
°° 
void
°° 
ConfigureServices
°° .
(
°°. / 
IServiceCollection
°°/ A
services
°°B J
)
°°J K
{
¢¢ 	
services
££ 
.
££ 
AddContentField
££ $
<
££$ %/
!LocalizationSetContentPickerField
££% F
>
££F G
(
££G H
)
££H I
.
§§ 
UseDisplayDriver
§§ !
<
§§! "<
.LocalizationSetContentPickerFieldDisplayDriver
§§" P
>
§§P Q
(
§§Q R
)
§§R S
;
§§S T
services
•• 
.
•• 
	AddScoped
•• 
<
•• 6
(IContentPartFieldDefinitionDisplayDriver
•• G
,
••G H=
/LocalizationSetContentPickerFieldSettingsDriver
••I x
>
••x y
(
••y z
)
••z {
;
••{ |
services
¶¶ 
.
¶¶ 
	AddScoped
¶¶ 
<
¶¶ '
IContentFieldIndexHandler
¶¶ 8
,
¶¶8 9;
-LocalizationSetContentPickerFieldIndexHandler
¶¶: g
>
¶¶g h
(
¶¶h i
)
¶¶i j
;
¶¶j k
}
ßß 	
public
©© 
override
©© 
void
©© 
	Configure
©© &
(
©©& '!
IApplicationBuilder
©©' :
builder
©©; B
,
©©B C#
IEndpointRouteBuilder
©©D Y
routes
©©Z `
,
©©` a
IServiceProvider
©©b r
serviceProvider©©s Ç
)©©Ç É
{
™™ 	
routes
´´ 
.
´´ $
MapAreaControllerRoute
´´ )
(
´´) *
name
¨¨ 
:
¨¨ 
$str
¨¨ .
,
¨¨. /
areaName
≠≠ 
:
≠≠ 
$str
≠≠ 5
,
≠≠5 6
pattern
ÆÆ 
:
ÆÆ 
_adminOptions
ÆÆ &
.
ÆÆ& '
AdminUrlPrefix
ÆÆ' 5
+
ÆÆ6 7
$str
ÆÆ8 _
,
ÆÆ_ `
defaults
ØØ 
:
ØØ 
new
ØØ 
{
ØØ 

controller
ØØ  *
=
ØØ+ ,
typeof
ØØ- 3
(
ØØ3 49
+LocalizationSetContentPickerAdminController
ØØ4 _
)
ØØ_ `
.
ØØ` a
ControllerName
ØØa o
(
ØØo p
)
ØØp q
,
ØØq r
action
ØØs y
=
ØØz {
nameofØØ| Ç
(ØØÇ É;
+LocalizationSetContentPickerAdminControllerØØÉ Æ
.ØØÆ Ø&
SearchLocalizationSetsØØØ ≈
)ØØ≈ ∆
}ØØ« »
)
∞∞ 
;
∞∞ 
}
±± 	
}
≤≤ 
[
¥¥ 
Feature
¥¥ 
(
¥¥ 
$str
¥¥ 5
)
¥¥5 6
]
¥¥6 7
[
µµ 
RequireFeatures
µµ 
(
µµ 
$str
µµ 0
)
µµ0 1
]
µµ1 2
public
∂∂ 

class
∂∂ 
IndexingStartup
∂∂  
:
∂∂! "
StartupBase
∂∂# .
{
∑∑ 
public
∏∏ 
override
∏∏ 
void
∏∏ 
ConfigureServices
∏∏ .
(
∏∏. / 
IServiceCollection
∏∏/ A
services
∏∏B J
)
∏∏J K
{
ππ 	
services
∫∫ 
.
∫∫ 
	AddScoped
∫∫ 
<
∫∫ 
IDataMigration
∫∫ -
,
∫∫- .
Indexing
∫∫/ 7
.
∫∫7 8
SQL
∫∫8 ;
.
∫∫; <

Migrations
∫∫< F
>
∫∫F G
(
∫∫G H
)
∫∫H I
;
∫∫I J
services
ªª 
.
ªª 
	AddScoped
ªª 
<
ªª "
IScopedIndexProvider
ªª 3
,
ªª3 4$
TextFieldIndexProvider
ªª5 K
>
ªªK L
(
ªªL M
)
ªªM N
;
ªªN O
services
ºº 
.
ºº 
	AddScoped
ºº 
<
ºº "
IScopedIndexProvider
ºº 3
,
ºº3 4'
BooleanFieldIndexProvider
ºº5 N
>
ººN O
(
ººO P
)
ººP Q
;
ººQ R
services
ΩΩ 
.
ΩΩ 
	AddScoped
ΩΩ 
<
ΩΩ "
IScopedIndexProvider
ΩΩ 3
,
ΩΩ3 4'
NumericFieldIndexProvider
ΩΩ5 N
>
ΩΩN O
(
ΩΩO P
)
ΩΩP Q
;
ΩΩQ R
services
ææ 
.
ææ 
	AddScoped
ææ 
<
ææ "
IScopedIndexProvider
ææ 3
,
ææ3 4(
DateTimeFieldIndexProvider
ææ5 O
>
ææO P
(
ææP Q
)
ææQ R
;
ææR S
services
øø 
.
øø 
	AddScoped
øø 
<
øø "
IScopedIndexProvider
øø 3
,
øø3 4$
DateFieldIndexProvider
øø5 K
>
øøK L
(
øøL M
)
øøM N
;
øøN O
services
¿¿ 
.
¿¿ 
	AddScoped
¿¿ 
<
¿¿ "
IScopedIndexProvider
¿¿ 3
,
¿¿3 4-
ContentPickerFieldIndexProvider
¿¿5 T
>
¿¿T U
(
¿¿U V
)
¿¿V W
;
¿¿W X
services
¡¡ 
.
¡¡ 
	AddScoped
¡¡ 
<
¡¡ "
IScopedIndexProvider
¡¡ 3
,
¡¡3 4$
TimeFieldIndexProvider
¡¡5 K
>
¡¡K L
(
¡¡L M
)
¡¡M N
;
¡¡N O
services
¬¬ 
.
¬¬ 
	AddScoped
¬¬ 
<
¬¬ "
IScopedIndexProvider
¬¬ 3
,
¬¬3 4$
LinkFieldIndexProvider
¬¬5 K
>
¬¬K L
(
¬¬L M
)
¬¬M N
;
¬¬N O
services
√√ 
.
√√ 
	AddScoped
√√ 
<
√√ "
IScopedIndexProvider
√√ 3
,
√√3 4$
HtmlFieldIndexProvider
√√5 K
>
√√K L
(
√√L M
)
√√M N
;
√√N O
services
ƒƒ 
.
ƒƒ 
	AddScoped
ƒƒ 
<
ƒƒ "
IScopedIndexProvider
ƒƒ 3
,
ƒƒ3 4)
MultiTextFieldIndexProvider
ƒƒ5 P
>
ƒƒP Q
(
ƒƒQ R
)
ƒƒR S
;
ƒƒS T
}
≈≈ 	
}
∆∆ 
[
»» 
RequireFeatures
»» 
(
»» 
$str
»» (
)
»»( )
]
»») *
public
…… 

class
…… 
UserPickerStartup
…… "
:
……# $
StartupBase
……% 0
{
   
private
ÀÀ 
readonly
ÀÀ 
AdminOptions
ÀÀ %
_adminOptions
ÀÀ& 3
;
ÀÀ3 4
static
ÕÕ 
UserPickerStartup
ÕÕ  
(
ÕÕ  !
)
ÕÕ! "
{
ŒŒ 	
TemplateContext
““ 
.
““ (
GlobalMemberAccessStrategy
““ 6
.
““6 7
Register
““7 ?
<
““? @
UserPickerField
““@ O
>
““O P
(
““P Q
)
““Q R
;
““R S
TemplateContext
”” 
.
”” (
GlobalMemberAccessStrategy
”” 6
.
””6 7
Register
””7 ?
<
””? @-
DisplayUserPickerFieldViewModel
””@ _
>
””_ `
(
””` a
)
””a b
;
””b c
TemplateContext
‘‘ 
.
‘‘ (
GlobalMemberAccessStrategy
‘‘ 6
.
‘‘6 7
Register
‘‘7 ?
<
‘‘? @6
(DisplayUserPickerFieldUserNamesViewModel
‘‘@ h
>
‘‘h i
(
‘‘i j
)
‘‘j k
;
‘‘k l
}
’’ 	
public
◊◊ 
UserPickerStartup
◊◊  
(
◊◊  !
IOptions
◊◊! )
<
◊◊) *
AdminOptions
◊◊* 6
>
◊◊6 7
adminOptions
◊◊8 D
)
◊◊D E
{
ÿÿ 	
_adminOptions
ŸŸ 
=
ŸŸ 
adminOptions
ŸŸ (
.
ŸŸ( )
Value
ŸŸ) .
;
ŸŸ. /
}
⁄⁄ 	
public
‹‹ 
override
‹‹ 
void
‹‹ 
ConfigureServices
‹‹ .
(
‹‹. / 
IServiceCollection
‹‹/ A
services
‹‹B J
)
‹‹J K
{
›› 	
services
ﬁﬁ 
.
ﬁﬁ 
AddContentField
ﬁﬁ $
<
ﬁﬁ$ %
UserPickerField
ﬁﬁ% 4
>
ﬁﬁ4 5
(
ﬁﬁ5 6
)
ﬁﬁ6 7
.
ﬂﬂ 
UseDisplayDriver
ﬂﬂ !
<
ﬂﬂ! "*
UserPickerFieldDisplayDriver
ﬂﬂ" >
>
ﬂﬂ> ?
(
ﬂﬂ? @
d
ﬂﬂ@ A
=>
ﬂﬂB D
!
ﬂﬂE F
String
ﬂﬂF L
.
ﬂﬂL M
Equals
ﬂﬂM S
(
ﬂﬂS T
d
ﬂﬂT U
,
ﬂﬂU V
$str
ﬂﬂW b
,
ﬂﬂb c
StringComparison
ﬂﬂd t
.
ﬂﬂt u 
OrdinalIgnoreCaseﬂﬂu Ü
)ﬂﬂÜ á
)ﬂﬂá à
.
‡‡ 
UseDisplayDriver
‡‡ !
<
‡‡! "3
%UserPickerFieldUserNamesDisplayDriver
‡‡" G
>
‡‡G H
(
‡‡H I
d
‡‡I J
=>
‡‡K M
String
‡‡N T
.
‡‡T U
Equals
‡‡U [
(
‡‡[ \
d
‡‡\ ]
,
‡‡] ^
$str
‡‡_ j
,
‡‡j k
StringComparison
‡‡l |
.
‡‡| } 
OrdinalIgnoreCase‡‡} é
)‡‡é è
)‡‡è ê
;‡‡ê ë
services
‚‚ 
.
‚‚ 
	AddScoped
‚‚ 
<
‚‚ 6
(IContentPartFieldDefinitionDisplayDriver
‚‚ G
,
‚‚G H+
UserPickerFieldSettingsDriver
‚‚I f
>
‚‚f g
(
‚‚g h
)
‚‚h i
;
‚‚i j
services
„„ 
.
„„ 
	AddScoped
„„ 
<
„„ '
IContentFieldIndexHandler
„„ 8
,
„„8 9)
UserPickerFieldIndexHandler
„„: U
>
„„U V
(
„„V W
)
„„W X
;
„„X Y
services
‰‰ 
.
‰‰ 
	AddScoped
‰‰ 
<
‰‰ '
IUserPickerResultProvider
‰‰ 8
,
‰‰8 9-
DefaultUserPickerResultProvider
‰‰: Y
>
‰‰Y Z
(
‰‰Z [
)
‰‰[ \
;
‰‰\ ]
}
ÂÂ 	
public
ÁÁ 
override
ÁÁ 
void
ÁÁ 
	Configure
ÁÁ &
(
ÁÁ& '!
IApplicationBuilder
ÁÁ' :
builder
ÁÁ; B
,
ÁÁB C#
IEndpointRouteBuilder
ÁÁD Y
routes
ÁÁZ `
,
ÁÁ` a
IServiceProvider
ÁÁb r
serviceProviderÁÁs Ç
)ÁÁÇ É
{
ËË 	
routes
ÈÈ 
.
ÈÈ $
MapAreaControllerRoute
ÈÈ )
(
ÈÈ) *
name
ÍÍ 
:
ÍÍ 
$str
ÍÍ #
,
ÍÍ# $
areaName
ÎÎ 
:
ÎÎ 
$str
ÎÎ 5
,
ÎÎ5 6
pattern
ÏÏ 
:
ÏÏ 
_adminOptions
ÏÏ &
.
ÏÏ& '
AdminUrlPrefix
ÏÏ' 5
+
ÏÏ6 7
$str
ÏÏ8 T
,
ÏÏT U
defaults
ÌÌ 
:
ÌÌ 
new
ÌÌ 
{
ÌÌ 

controller
ÌÌ  *
=
ÌÌ+ ,
typeof
ÌÌ- 3
(
ÌÌ3 4'
UserPickerAdminController
ÌÌ4 M
)
ÌÌM N
.
ÌÌN O
ControllerName
ÌÌO ]
(
ÌÌ] ^
)
ÌÌ^ _
,
ÌÌ_ `
action
ÌÌa g
=
ÌÌh i
nameof
ÌÌj p
(
ÌÌp q(
UserPickerAdminControllerÌÌq ä
.ÌÌä ã
SearchUsersÌÌã ñ
)ÌÌñ ó
}ÌÌò ô
)
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
}
 
[
ÚÚ 
RequireFeatures
ÚÚ 
(
ÚÚ 
$str
ÚÚ (
,
ÚÚ( )
$str
ÚÚ* R
)
ÚÚR S
]
ÚÚS T
public
ÛÛ 

class
ÛÛ *
UserPickerSqlIndexingStartup
ÛÛ -
:
ÛÛ. /
StartupBase
ÛÛ0 ;
{
ÙÙ 
public
ıı 
override
ıı 
void
ıı 
ConfigureServices
ıı .
(
ıı. / 
IServiceCollection
ıı/ A
services
ııB J
)
ııJ K
{
ˆˆ 	
services
˜˜ 
.
˜˜ 
	AddScoped
˜˜ 
<
˜˜ 
IDataMigration
˜˜ -
,
˜˜- .
Indexing
˜˜/ 7
.
˜˜7 8
SQL
˜˜8 ;
.
˜˜; <"
UserPickerMigrations
˜˜< P
>
˜˜P Q
(
˜˜Q R
)
˜˜R S
;
˜˜S T
services
¯¯ 
.
¯¯ 
	AddScoped
¯¯ 
<
¯¯ "
IScopedIndexProvider
¯¯ 3
,
¯¯3 4*
UserPickerFieldIndexProvider
¯¯5 Q
>
¯¯Q R
(
¯¯R S
)
¯¯S T
;
¯¯T U
}
˘˘ 	
}
˙˙ 
}˚˚ ≥
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayBooleanFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class (
DisplayBooleanFieldViewModel -
{ 
public		 
bool		 
Value		 
=>		 
Field		 "
.		" #
Value		# (
;		( )
public

 
BooleanField

 
Field

 !
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
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ˜
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayContentPickerFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class .
"DisplayContentPickerFieldViewModel 3
{ 
public		 
string		 
[		 
]		 
ContentItemIds		 &
=>		' )
Field		* /
.		/ 0
ContentItemIds		0 >
;		> ?
public

 
ContentPickerField

 !
Field

" '
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
4 5
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} Ω
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayDateFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class %
DisplayDateFieldViewModel *
{		 
public

 
DateTime

 
?

 
Value

 
=>

 !
Field

" '
.

' (
Value

( -
;

- .
public 
	DateField 
Field 
{  
get! $
;$ %
set& )
;) *
}+ ,
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
} ˚	
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayDateTimeFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class )
DisplayDateTimeFieldViewModel .
{		 
public

 
DateTime

 
?

 
Value

 
=>

 !
Field

" '
.

' (
Value

( -
;

- .
public 
DateTime 
? 
LocalDateTime &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTimeField 
Field "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} µ
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayHtmlFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class %
DisplayHtmlFieldViewModel *
{ 
public		 
string		 
Html		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
	HtmlField

 
Field

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} µ	
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayLinkFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class %
DisplayLinkFieldViewModel *
{ 
public		 
string		 
Url		 
=>		 
Field		 "
.		" #
Url		# &
;		& '
public

 
string

 
Text

 
=>

 
Field

 #
.

# $
Text

$ (
;

( )
public 
	LinkField 
Field 
{  
get! $
;$ %
set& )
;) *
}+ ,
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
} ®	
πD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayLocalizationSetContentPickerFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class =
1DisplayLocalizationSetContentPickerFieldViewModel B
{ 
public		 
string		 
[		 
]		 
LocalizationSets		 (
=>		) +
Field		, 1
.		1 2
LocalizationSets		2 B
;		B C
public

 -
!LocalizationSetContentPickerField

 0
Field

1 6
{

7 8
get

9 <
;

< =
set

> A
;

A B
}

C D
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ‰
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayMultiTextFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class *
DisplayMultiTextFieldViewModel /
{ 
public		 
string		 
[		 
]		 
Values		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
MultiTextField

 
Field

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ≈
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayNumericFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class (
DisplayNumericFieldViewModel -
{ 
public		 
decimal		 
?		 
Value		 
=>		  
Field		! &
.		& '
Value		' ,
;		, -
public

 
NumericField

 
Field

 !
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
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ™
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayTextFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class %
DisplayTextFieldViewModel *
{ 
public		 
string		 
Text		 
=>		 
Field		 #
.		# $
Text		$ (
;		( )
public

 
	TextField

 
Field

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} Ω
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayTimeFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class %
DisplayTimeFieldViewModel *
{		 
public

 
TimeSpan

 
?

 
Value

 
=>

 !
Field

" '
.

' (
Value

( -
;

- .
public 
	TimeField 
Field 
{  
get! $
;$ %
set& )
;) *
}+ ,
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
} »

∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayUserPickerFieldUserNamesViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class 4
(DisplayUserPickerFieldUserNamesViewModel 9
{ 
public		 
string		 
[		 
]		 
UserIds		 
=>		  "
Field		# (
.		( )
UserIds		) 0
;		0 1
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
 
	UserNames

 !
=>

" $
Field

% *
.

* +
GetUserNames

+ 7
(

7 8
)

8 9
;

9 :
public 
UserPickerField 
Field $
{% &
get' *
;* +
set, /
;/ 0
}1 2
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
} ‡
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\DisplayUserPickerFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class +
DisplayUserPickerFieldViewModel 0
{ 
public		 
string		 
[		 
]		 
UserIds		 
=>		  "
Field		# (
.		( )
UserIds		) 0
;		0 1
public

 
UserPickerField

 
Field

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ∑
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditBooleanFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class %
EditBooleanFieldViewModel *
{ 
public		 
bool		 
Value		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public

 
BooleanField

 
Field

 !
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
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} 

ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditContentPickerFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public		 

class		 +
EditContentPickerFieldViewModel		 0
{

 
public 
string 
ContentItemIds $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
ContentPickerField !
Field" '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
[ 	
	BindNever	 
] 
public 
IList 
< '
VueMultiselectItemViewModel 0
>0 1
SelectedItems2 ?
{@ A
getB E
;E F
setG J
;J K
}L M
} 
} ¡
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditDateFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class "
EditDateFieldViewModel '
{		 
public

 
DateTime

 
?

 
Value

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
	DateField 
Field 
{  
get! $
;$ %
set& )
;) *
}+ ,
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
} ’
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditDateTimeFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class &
EditDateTimeFieldViewModel +
{		 
public

 
DateTime

 
?

 
LocalDateTime

 &
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
3 4
public 
DateTimeField 
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
} Ø
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditHtmlFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class "
EditHtmlFieldViewModel '
{ 
public		 
string		 
Html		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
	HtmlField

 
Field

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ∆	
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditLinkFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class "
EditLinkFieldViewModel '
{ 
public		 
string		 
Url		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public

 
string

 
Text
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
  !
set

" %
;

% &
}

' (
public 
	LinkField 
Field 
{  
get! $
;$ %
set& )
;) *
}+ ,
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
} ü
∂D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditLocalizationSetContentPickerFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public		 

class		 :
.EditLocalizationSetContentPickerFieldViewModel		 ?
{

 
public 
string 
LocalizationSets &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public -
!LocalizationSetContentPickerField 0
Field1 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
[ 	
	BindNever	 
] 
public 
IList 
< '
VueMultiselectItemViewModel 0
>0 1
SelectedItems2 ?
{@ A
getB E
;E F
setG J
;J K
}L M
} 
} †
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditMultiTextFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public		 

class		 '
EditMultiTextFieldViewModel		 ,
{

 
public 
string 
[ 
] 
Values 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
Array/ 4
.4 5
Empty5 :
<: ;
string; A
>A B
(B C
)C D
;D E
[ 	
	BindNever	 
] 
public 
MultiTextField 
Field #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
	BindNever	 
] 
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
	BindNever	 
] 
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} π
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditNumericFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class %
EditNumericFieldViewModel *
{ 
public		 
string		 
Value		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
NumericField

 
Field

 !
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
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} Ø
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditTextFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class "
EditTextFieldViewModel '
{ 
public		 
string		 
Text		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
	TextField

 
Field

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ¡
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditTimeFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class "
EditTimeFieldViewModel '
{		 
public

 
TimeSpan

 
?

 
Value

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
	TimeField 
Field 
{  
get! $
;$ %
set& )
;) *
}+ ,
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
} —
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditUserPickerFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public		 

class		 (
EditUserPickerFieldViewModel		 -
{

 
public 
string 
UserIds 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
	BindNever	 
] 
public 
UserPickerField 
Field $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
	BindNever	 
] 
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
	BindNever	 
] 
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
[ 	
	BindNever	 
] 
public %
ContentTypePartDefinition (
TypePartDefinition) ;
{< =
get> A
;A B
setC F
;F G
}H I
[ 	
	BindNever	 
] 
public 
IList 
< '
VueMultiselectUserViewModel 0
>0 1
SelectedUsers2 ?
{@ A
getB E
;E F
setG J
;J K
}L M
=N O
newP S
ListT X
<X Y'
VueMultiselectUserViewModelY t
>t u
(u v
)v w
;w x
} 
public 

class '
VueMultiselectUserViewModel ,
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
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
bool!! 
	IsEnabled!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
}"" 
}## ≥
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\EditYoutubeFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class %
EditYoutubeFieldViewModel *
{		 
[

 	
DataType

	 
(

 
DataType

 
.

 
Url

 
,

 
ErrorMessage

  ,
=

- .
$str

/ L
)

L M
]

M N
public 
string 

RawAddress  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
EmbeddedAddress %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
YoutubeField 
Field !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} æ
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\HeaderSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class #
HeaderSettingsViewModel (
{ 
public 
string 
Level 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ◊
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\HtmlSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class !
HtmlSettingsViewModel &
{ 
public 
bool 
SanitizeHtml  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ç
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\MultiTextFieldSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class +
MultiTextFieldSettingsViewModel 0
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
public 
bool 
Required 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Options 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		 ê
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\PredefinedListSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class +
PredefinedListSettingsViewModel 0
{ 
public 
EditorOption 
Editor "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Options 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
DefaultValue		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
}

 
} Í
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\TrumbowygSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class &
TrumbowygSettingsViewModel +
{ 
public 
string 
Options 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
InsertMediaWithUrl &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} Ä
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\VueMultiselectItemViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class '
VueMultiselectItemViewModel ,
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
HasPublished  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
}		 ‚	
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentFields\ViewModels\YoutubeFieldDisplayViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentFields #
.# $

ViewModels$ .
{ 
public 

class (
YoutubeFieldDisplayViewModel -
{ 
public		 
string		 
EmbeddedAddress		 %
=>		& (
Field		) .
.		. /
EmbeddedAddress		/ >
;		> ?
public

 
string

 

RawAddress

  
=>

! #
Field

$ )
.

) *

RawAddress

* 4
;

4 5
public 
YoutubeField 
Field !
{" #
get$ '
;' (
set) ,
;, -
}. /
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
} 