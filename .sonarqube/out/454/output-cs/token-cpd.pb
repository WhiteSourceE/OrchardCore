�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\AdminMenu.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
{ 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{		 
private

 
readonly

 
IStringLocalizer

 )
S

* +
;

+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str 
]  
,  !
design" (
=>) +
design, 2
. 
Add 
( 
S 
[ 
$str '
]' (
,( )
$str* 6
,6 7
import8 >
=>? A
importB H
. 
Action 
(  
$str  '
,' (
$str) 0
,0 1
new2 5
{6 7
area8 <
== >
$str? W
}X Y
)Y Z
. 

Permission #
(# $
Permissions$ /
./ 0$
ManageShortcodeTemplates0 H
)H I
. 
LocalNav !
(! "
)" #
) 
) 
; 
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ ܅
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Controllers! ,
{ 
[ 
Feature 
( 
$str /
)/ 0
]0 1
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly %
ShortcodeTemplatesManager 2&
_shortcodeTemplatesManager3 M
;M N
private   
readonly   "
ILiquidTemplateManager   /"
_liquidTemplateManager  0 F
;  F G
private!! 
readonly!! 
ISiteService!! %
_siteService!!& 2
;!!2 3
private"" 
readonly"" 
	INotifier"" "
	_notifier""# ,
;"", -
private## 
readonly## 
IStringLocalizer## )
S##* +
;##+ ,
private$$ 
readonly$$ 
IHtmlLocalizer$$ '
H$$( )
;$$) *
private%% 
readonly%% 
dynamic%%  
New%%! $
;%%$ %
public'' 
AdminController'' 
('' !
IAuthorizationService(( ! 
authorizationService((" 6
,((6 7%
ShortcodeTemplatesManager)) %%
shortcodeTemplatesManager))& ?
,))? @"
ILiquidTemplateManager** "!
liquidTemplateManager**# 8
,**8 9
ISiteService++ 
siteService++ $
,++$ %
	INotifier,, 
notifier,, 
,,, 
IShapeFactory-- 
shapeFactory-- &
,--& '
IStringLocalizer.. 
<.. 
AdminController.. ,
>.., -
stringLocalizer... =
,..= >
IHtmlLocalizer// 
<// 
AdminController// *
>//* +
htmlLocalizer//, 9
)00 
{11 	!
_authorizationService22 !
=22" # 
authorizationService22$ 8
;228 9&
_shortcodeTemplatesManager33 &
=33' (%
shortcodeTemplatesManager33) B
;33B C"
_liquidTemplateManager44 "
=44# $!
liquidTemplateManager44% :
;44: ;
_siteService55 
=55 
siteService55 &
;55& '
	_notifier66 
=66 
notifier66  
;66  !
New77 
=77 
shapeFactory77 
;77 
S88 
=88 
stringLocalizer88 
;88  
H99 
=99 
htmlLocalizer99 
;99 
}:: 	
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Index<<) .
(<<. /
ContentOptions<</ =
options<<> E
,<<E F
PagerParameters<<G V
pagerParameters<<W f
)<<f g
{== 	
if>> 
(>> 
!>> 
await>> !
_authorizationService>> ,
.>>, -
AuthorizeAsync>>- ;
(>>; <
User>>< @
,>>@ A
Permissions>>B M
.>>M N$
ManageShortcodeTemplates>>N f
)>>f g
)>>g h
{?? 
return@@ 
Forbid@@ 
(@@ 
)@@ 
;@@  
}AA 
varCC 
siteSettingsCC 
=CC 
awaitCC $
_siteServiceCC% 1
.CC1 2 
GetSiteSettingsAsyncCC2 F
(CCF G
)CCG H
;CCH I
varDD 
pagerDD 
=DD 
newDD 
PagerDD !
(DD! "
pagerParametersDD" 1
,DD1 2
siteSettingsDD3 ?
.DD? @
PageSizeDD@ H
)DDH I
;DDI J
varEE &
shortcodeTemplatesDocumentEE *
=EE+ ,
awaitEE- 2&
_shortcodeTemplatesManagerEE3 M
.EEM N.
"GetShortcodeTemplatesDocumentAsyncEEN p
(EEp q
)EEq r
;EEr s
varGG 
shortcodeTemplatesGG "
=GG# $&
shortcodeTemplatesDocumentGG% ?
.GG? @
ShortcodeTemplatesGG@ R
.GGR S
ToListGGS Y
(GGY Z
)GGZ [
;GG[ \
ifII 
(II 
!II 
StringII 
.II 
IsNullOrWhiteSpaceII *
(II* +
optionsII+ 2
.II2 3
SearchII3 9
)II9 :
)II: ;
{JJ 
shortcodeTemplatesKK "
=KK# $
shortcodeTemplatesKK% 7
.KK7 8
WhereKK8 =
(KK= >
xKK> ?
=>KK@ B
xKKC D
.KKD E
KeyKKE H
.KKH I
ContainsKKI Q
(KKQ R
optionsKKR Y
.KKY Z
SearchKKZ `
,KK` a
StringComparisonKKb r
.KKr s
OrdinalIgnoreCase	KKs �
)
KK� �
)
KK� �
.
KK� �
ToList
KK� �
(
KK� �
)
KK� �
;
KK� �
}LL 
varNN 
countNN 
=NN 
shortcodeTemplatesNN *
.NN* +
CountNN+ 0
;NN0 1
shortcodeTemplatesPP 
=PP  
shortcodeTemplatesPP! 3
.PP3 4
OrderByPP4 ;
(PP; <
xPP< =
=>PP> @
xPPA B
.PPB C
KeyPPC F
)PPF G
.QQ 
SkipQQ 
(QQ 
pagerQQ 
.QQ 
GetStartIndexQQ )
(QQ) *
)QQ* +
)QQ+ ,
.RR 
TakeRR 
(RR 
pagerRR 
.RR 
PageSizeRR $
)RR$ %
.RR% &
ToListRR& ,
(RR, -
)RR- .
;RR. /
varTT 

pagerShapeTT 
=TT 
(TT 
awaitTT #
NewTT$ '
.TT' (
PagerTT( -
(TT- .
pagerTT. 3
)TT3 4
)TT4 5
.TT5 6
TotalItemCountTT6 D
(TTD E
countTTE J
)TTJ K
;TTK L
varVV 
modelVV 
=VV 
newVV +
ShortcodeTemplateIndexViewModelVV ;
{WW 
ShortcodeTemplatesXX "
=XX# $
shortcodeTemplatesXX% 7
.XX7 8
SelectXX8 >
(XX> ?
xXX? @
=>XXA C
newXXD G"
ShortcodeTemplateEntryXXH ^
{XX_ `
NameXXa e
=XXf g
xXXh i
.XXi j
KeyXXj m
,XXm n
ShortcodeTemplate	XXo �
=
XX� �
x
XX� �
.
XX� �
Value
XX� �
}
XX� �
)
XX� �
.
XX� �
ToList
XX� �
(
XX� �
)
XX� �
,
XX� �
OptionsYY 
=YY 
optionsYY !
,YY! "
PagerZZ 
=ZZ 

pagerShapeZZ "
}[[ 
;[[ 
model]] 
.]] 
Options]] 
.]] 
ContentsBulkAction]] ,
=]]- .
new]]/ 2
List]]3 7
<]]7 8
SelectListItem]]8 F
>]]F G
(]]G H
)]]H I
{]]J K
new^^ 
SelectListItem^^ "
(^^" #
)^^# $
{^^% &
Text^^' +
=^^, -
S^^. /
[^^/ 0
$str^^0 8
]^^8 9
,^^9 :
Value^^; @
=^^A B
nameof^^C I
(^^I J
ContentsBulkAction^^J \
.^^\ ]
Remove^^] c
)^^c d
}^^e f
}__ 
;__ 
returnaa 
Viewaa 
(aa 
$straa 
,aa  
modelaa! &
)aa& '
;aa' (
}bb 	
[dd 	
HttpPostdd	 
,dd 

ActionNamedd 
(dd 
$strdd %
)dd% &
]dd& '
[ee 	
FormValueRequiredee	 
(ee 
$stree *
)ee* +
]ee+ ,
publicff 
ActionResultff 
IndexFilterPOSTff +
(ff+ ,+
ShortcodeTemplateIndexViewModelff, K
modelffL Q
)ffQ R
{gg 	
returnhh 
RedirectToActionhh #
(hh# $
$strhh$ +
,hh+ ,
newhh- 0 
RouteValueDictionaryhh1 E
{hhF G
{ii 
$strii "
,ii" #
modelii$ )
.ii) *
Optionsii* 1
.ii1 2
Searchii2 8
}ii9 :
}jj 
)jj 
;jj 
}kk 	
publicmm 
asyncmm 
Taskmm 
<mm 
IActionResultmm '
>mm' (
Createmm) /
(mm/ 0&
ShortcodeTemplateViewModelmm0 J
modelmmK P
)mmP Q
{nn 	
ifoo 
(oo 
!oo 
awaitoo !
_authorizationServiceoo ,
.oo, -
AuthorizeAsyncoo- ;
(oo; <
Useroo< @
,oo@ A
PermissionsooB M
.ooM N$
ManageShortcodeTemplatesooN f
)oof g
)oog h
{pp 
returnqq 
Forbidqq 
(qq 
)qq 
;qq  
}rr 
returntt 
Viewtt 
(tt 
newtt &
ShortcodeTemplateViewModeltt 6
(tt6 7
)tt7 8
)tt8 9
;tt9 :
}uu 	
[ww 	
HttpPostww	 
,ww 

ActionNameww 
(ww 
$strww &
)ww& '
]ww' (
publicxx 
asyncxx 
Taskxx 
<xx 
IActionResultxx '
>xx' (

CreatePostxx) 3
(xx3 4&
ShortcodeTemplateViewModelxx4 N
modelxxO T
,xxT U
stringxxV \
submitxx] c
)xxc d
{yy 	
ifzz 
(zz 
!zz 
awaitzz !
_authorizationServicezz ,
.zz, -
AuthorizeAsynczz- ;
(zz; <
Userzz< @
,zz@ A
PermissionszzB M
.zzM N$
ManageShortcodeTemplateszzN f
)zzf g
)zzg h
{{{ 
return|| 
Forbid|| 
(|| 
)|| 
;||  
}}} 
if 
( 

ModelState 
. 
IsValid "
)" #
{
�� 
if
�� 
(
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� -
(
��- .
model
��. 3
.
��3 4
Name
��4 8
)
��8 9
)
��9 :
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Name
��O S
)
��S T
,
��T U
S
��V W
[
��W X
$str
��X p
]
��p q
)
��q r
;
��r s
}
�� 
else
�� 
if
�� 
(
�� 
!
�� "
IsValidShortcodeName
�� .
(
��. /
model
��/ 4
.
��4 5
Name
��5 9
)
��9 :
)
��: ;
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Name
��O S
)
��S T
,
��T U
S
��V W
[
��W X
$str
��X 
]�� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
var
�� (
shortcodeTemplatesDocument
�� 2
=
��3 4
await
��5 :(
_shortcodeTemplatesManager
��; U
.
��U V0
"GetShortcodeTemplatesDocumentAsync
��V x
(
��x y
)
��y z
;
��z {
if
�� 
(
�� (
shortcodeTemplatesDocument
�� 2
.
��2 3 
ShortcodeTemplates
��3 E
.
��E F
ContainsKey
��F Q
(
��Q R
model
��R W
.
��W X
Name
��X \
)
��\ ]
)
��] ^
{
�� 

ModelState
�� "
.
��" #
AddModelError
��# 0
(
��0 1
nameof
��1 7
(
��7 8(
ShortcodeTemplateViewModel
��8 R
.
��R S
Name
��S W
)
��W X
,
��X Y
S
��Z [
[
��[ \
$str��\ �
]��� �
)��� �
;��� �
}
�� 
}
�� 
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
model
��) .
.
��. /
Content
��/ 6
)
��6 7
)
��7 8
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Content
��O V
)
��V W
,
��W X
S
��Y Z
[
��Z [
$str
��[ 
]�� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
!
�� $
_liquidTemplateManager
�� 0
.
��0 1
Validate
��1 9
(
��9 :
model
��: ?
.
��? @
Content
��@ G
,
��G H
out
��I L
var
��M P
errors
��Q W
)
��W X
)
��X Y
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Content
��O V
)
��V W
,
��W X
S
��Y Z
[
��Z [
$str��[ �
,��� �
String��� �
.��� �
Join��� �
(��� �
$str��� �
,��� �
errors��� �
)��� �
]��� �
)��� �
;��� �
}
�� 
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
template
�� 
=
�� 
new
�� "
ShortcodeTemplate
��# 4
{
�� 
Content
�� 
=
�� 
model
�� #
.
��# $
Content
��$ +
,
��+ ,
Hint
�� 
=
�� 
model
��  
.
��  !
Hint
��! %
,
��% &
Usage
�� 
=
�� 
model
�� !
.
��! "
Usage
��" '
,
��' (
DefaultValue
��  
=
��! "
model
��# (
.
��( )
DefaultValue
��) 5
,
��5 6

Categories
�� 
=
��  
JsonConvert
��! ,
.
��, -
DeserializeObject
��- >
<
��> ?
string
��? E
[
��E F
]
��F G
>
��G H
(
��H I
model
��I N
.
��N O 
SelectedCategories
��O a
)
��a b
}
�� 
;
�� 
await
�� (
_shortcodeTemplatesManager
�� 0
.
��0 1*
UpdateShortcodeTemplateAsync
��1 M
(
��M N
model
��N S
.
��S T
Name
��T X
,
��X Y
template
��Z b
)
��b c
;
��c d
if
�� 
(
�� 
submit
�� 
==
�� 
$str
�� /
)
��/ 0
{
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
nameof
��, 2
(
��2 3
Edit
��3 7
)
��7 8
,
��8 9
new
��: =
{
��> ?
name
��@ D
=
��E F
model
��G L
.
��L M
Name
��M Q
}
��R S
)
��S T
;
��T U
}
�� 
else
�� 
{
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
nameof
��, 2
(
��2 3
Index
��3 8
)
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
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
�� 
IActionResult
�� '
>
��' (
Edit
��) -
(
��- .
string
��. 4
name
��5 9
)
��9 :
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N&
ManageShortcodeTemplates
��N f
)
��f g
)
��g h
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� (
shortcodeTemplatesDocument
�� *
=
��+ ,
await
��- 2(
_shortcodeTemplatesManager
��3 M
.
��M N0
"GetShortcodeTemplatesDocumentAsync
��N p
(
��p q
)
��q r
;
��r s
if
�� 
(
�� 
!
�� (
shortcodeTemplatesDocument
�� +
.
��+ , 
ShortcodeTemplates
��, >
.
��> ?
ContainsKey
��? J
(
��J K
name
��K O
)
��O P
)
��P Q
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 0
,
��0 1
new
��2 5
{
��6 7
name
��8 <
}
��= >
)
��> ?
;
��? @
}
�� 
var
�� 
template
�� 
=
�� (
shortcodeTemplatesDocument
�� 5
.
��5 6 
ShortcodeTemplates
��6 H
[
��H I
name
��I M
]
��M N
;
��N O
var
�� 
model
�� 
=
�� 
new
�� (
ShortcodeTemplateViewModel
�� 6
{
�� 
Name
�� 
=
�� 
name
�� 
,
�� 
Content
�� 
=
�� 
template
�� "
.
��" #
Content
��# *
,
��* +
Hint
�� 
=
�� 
template
�� 
.
��  
Hint
��  $
,
��$ %
Usage
�� 
=
�� 
template
��  
.
��  !
Usage
��! &
,
��& '
DefaultValue
�� 
=
�� 
template
�� '
.
��' (
DefaultValue
��( 4
,
��4 5

Categories
�� 
=
�� 
template
�� %
.
��% &

Categories
��& 0
}
�� 
;
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Edit
��) -
(
��- .
string
��. 4

sourceName
��5 ?
,
��? @(
ShortcodeTemplateViewModel
��A [
model
��\ a
,
��a b
string
��c i
submit
��j p
)
��p q
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N&
ManageShortcodeTemplates
��N f
)
��f g
)
��g h
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� (
shortcodeTemplatesDocument
�� *
=
��+ ,
await
��- 2(
_shortcodeTemplatesManager
��3 M
.
��M N1
#LoadShortcodeTemplatesDocumentAsync
��N q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
!
�� (
shortcodeTemplatesDocument
�� +
.
��+ , 
ShortcodeTemplates
��, >
.
��> ?
ContainsKey
��? J
(
��J K

sourceName
��K U
)
��U V
)
��V W
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
if
�� 
(
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� -
(
��- .
model
��. 3
.
��3 4
Name
��4 8
)
��8 9
)
��9 :
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Name
��O S
)
��S T
,
��T U
S
��V W
[
��W X
$str
��X p
]
��p q
)
��q r
;
��r s
}
�� 
else
�� 
if
�� 
(
�� 
!
�� "
IsValidShortcodeName
�� .
(
��. /
model
��/ 4
.
��4 5
Name
��5 9
)
��9 :
)
��: ;
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Name
��O S
)
��S T
,
��T U
S
��V W
[
��W X
$str
��X 
]�� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
String
��  
.
��  !
Equals
��! '
(
��' (
model
��( -
.
��- .
Name
��. 2
,
��2 3

sourceName
��4 >
,
��> ?
StringComparison
��@ P
.
��P Q
OrdinalIgnoreCase
��Q b
)
��b c
&&
�� (
shortcodeTemplatesDocument
�� 1
.
��1 2 
ShortcodeTemplates
��2 D
.
��D E
ContainsKey
��E P
(
��P Q
model
��Q V
.
��V W
Name
��W [
)
��[ \
)
��\ ]
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Name
��O S
)
��S T
,
��T U
S
��V W
[
��W X
$str��X �
]��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
model
��) .
.
��. /
Content
��/ 6
)
��6 7
)
��7 8
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Content
��O V
)
��V W
,
��W X
S
��Y Z
[
��Z [
$str
��[ 
]�� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
!
�� $
_liquidTemplateManager
�� 0
.
��0 1
Validate
��1 9
(
��9 :
model
��: ?
.
��? @
Content
��@ G
,
��G H
out
��I L
var
��M P
errors
��Q W
)
��W X
)
��X Y
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
nameof
��- 3
(
��3 4(
ShortcodeTemplateViewModel
��4 N
.
��N O
Content
��O V
)
��V W
,
��W X
S
��Y Z
[
��Z [
$str��[ �
,��� �
String��� �
.��� �
Join��� �
(��� �
$str��� �
,��� �
errors��� �
)��� �
]��� �
)��� �
;��� �
}
�� 
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
template
�� 
=
�� 
new
�� "
ShortcodeTemplate
��# 4
{
�� 
Content
�� 
=
�� 
model
�� #
.
��# $
Content
��$ +
,
��+ ,
Hint
�� 
=
�� 
model
��  
.
��  !
Hint
��! %
,
��% &
Usage
�� 
=
�� 
model
�� !
.
��! "
Usage
��" '
,
��' (
DefaultValue
��  
=
��! "
model
��# (
.
��( )
DefaultValue
��) 5
,
��5 6

Categories
�� 
=
��  
JsonConvert
��! ,
.
��, -
DeserializeObject
��- >
<
��> ?
string
��? E
[
��E F
]
��F G
>
��G H
(
��H I
model
��I N
.
��N O 
SelectedCategories
��O a
)
��a b
}
�� 
;
�� 
await
�� (
_shortcodeTemplatesManager
�� 0
.
��0 1*
RemoveShortcodeTemplateAsync
��1 M
(
��M N

sourceName
��N X
)
��X Y
;
��Y Z
await
�� (
_shortcodeTemplatesManager
�� 0
.
��0 1*
UpdateShortcodeTemplateAsync
��1 M
(
��M N
model
��N S
.
��S T
Name
��T X
,
��X Y
template
��Z b
)
��b c
;
��c d
if
�� 
(
�� 
submit
�� 
==
�� 
$str
�� /
)
��/ 0
{
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
nameof
��, 2
(
��2 3
Edit
��3 7
)
��7 8
,
��8 9
new
��: =
{
��> ?
name
��@ D
=
��E F
model
��G L
.
��L M
Name
��M Q
}
��R S
)
��S T
;
��T U
}
�� 
else
�� 
{
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
nameof
��, 2
(
��2 3
Index
��3 8
)
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Delete
��) /
(
��/ 0
string
��0 6
name
��7 ;
)
��; <
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N&
ManageShortcodeTemplates
��N f
)
��f g
)
��g h
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� (
shortcodeTemplatesDocument
�� *
=
��+ ,
await
��- 2(
_shortcodeTemplatesManager
��3 M
.
��M N1
#LoadShortcodeTemplatesDocumentAsync
��N q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
!
�� (
shortcodeTemplatesDocument
�� +
.
��+ , 
ShortcodeTemplates
��, >
.
��> ?
ContainsKey
��? J
(
��J K
name
��K O
)
��O P
)
��P Q
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
await
�� (
_shortcodeTemplatesManager
�� ,
.
��, -*
RemoveShortcodeTemplateAsync
��- I
(
��I J
name
��J N
)
��N O
;
��O P
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  J
]
��J K
)
��K L
;
��L M
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
Index
��+ 0
)
��0 1
)
��1 2
;
��2 3
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
FormValueRequired
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
	IndexPost
��( 1
(
��1 2

ViewModels
��2 <
.
��< =
ContentOptions
��= K
options
��L S
,
��S T
IEnumerable
��U `
<
��` a
string
��a g
>
��g h
itemIds
��i p
)
��p q
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
User
��< @
,
��@ A
Permissions
��B M
.
��M N&
ManageShortcodeTemplates
��N f
)
��f g
)
��g h
{
�� 
return
�� 
Forbid
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
itemIds
�� 
?
�� 
.
�� 
Count
�� 
(
�� 
)
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
var
�� (
shortcodeTemplatesDocument
�� .
=
��/ 0
await
��1 6(
_shortcodeTemplatesManager
��7 Q
.
��Q R1
#LoadShortcodeTemplatesDocumentAsync
��R u
(
��u v
)
��v w
;
��w x
var
�� !
checkedContentItems
�� '
=
��( )(
shortcodeTemplatesDocument
��* D
.
��D E 
ShortcodeTemplates
��E W
.
��W X
Where
��X ]
(
��] ^
x
��^ _
=>
��` b
itemIds
��c j
.
��j k
Contains
��k s
(
��s t
x
��t u
.
��u v
Key
��v y
)
��y z
)
��z {
;
��{ |
switch
�� 
(
�� 
options
�� 
.
��  

BulkAction
��  *
)
��* +
{
�� 
case
��  
ContentsBulkAction
�� +
.
��+ ,
None
��, 0
:
��0 1
break
�� 
;
�� 
case
��  
ContentsBulkAction
�� +
.
��+ ,
Remove
��, 2
:
��2 3
foreach
�� 
(
��  !
var
��! $
item
��% )
in
��* ,!
checkedContentItems
��- @
)
��@ A
{
�� 
await
�� !(
_shortcodeTemplatesManager
��" <
.
��< =*
RemoveShortcodeTemplateAsync
��= Y
(
��Y Z
item
��Z ^
.
��^ _
Key
��_ b
)
��b c
;
��c d
}
�� 
	_notifier
�� !
.
��! "
Success
��" )
(
��) *
H
��* +
[
��+ ,
$str
��, W
]
��W X
)
��X Y
;
��Y Z
break
�� 
;
�� 
default
�� 
:
�� 
throw
�� 
new
�� !)
ArgumentOutOfRangeException
��" =
(
��= >
)
��> ?
;
��? @
}
�� 
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
private
�� 
static
�� 
bool
�� "
IsValidShortcodeName
�� 0
(
��0 1
string
��1 7
name
��8 <
)
��< =
{
�� 	
var
�� 
scanner
�� 
=
�� 
new
�� 
Scanner
�� %
(
��% &
name
��& *
)
��* +
;
��+ ,
var
�� 
result
�� 
=
�� 
new
�� 
TokenResult
�� (
(
��( )
)
��) *
;
��* +
scanner
�� 
.
�� 
ReadIdentifier
�� "
(
��" #
result
��# )
)
��) *
;
��* +
return
�� 
result
�� 
.
�� 
Success
�� !
&&
��" $
name
��% )
.
��) *
Length
��* 0
==
��1 3
result
��4 :
.
��: ;
Length
��; A
;
��A B
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Deployment\AllShortcodeTemplatesDeploymentSource.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !

Deployment! +
{ 
public 

class 1
%AllShortcodeTemplatesDeploymentSource 6
:7 8
IDeploymentSource9 J
{		 
private

 
readonly

 %
ShortcodeTemplatesManager

 2
_templatesManager

3 D
;

D E
public 1
%AllShortcodeTemplatesDeploymentSource 4
(4 5%
ShortcodeTemplatesManager5 N
templatesManagerO _
)_ `
{ 	
_templatesManager 
= 
templatesManager  0
;0 1
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
allTemplatesStep  
=! "
step# '
as( */
#AllShortcodeTemplatesDeploymentStep+ N
;N O
if 
( 
allTemplatesStep  
==! #
null$ (
)( )
{ 
return 
; 
} 
var 
templateObjects 
=  !
new" %
JObject& -
(- .
). /
;/ 0
var 
	templates 
= 
await !
_templatesManager" 3
.3 4.
"GetShortcodeTemplatesDocumentAsync4 V
(V W
)W X
;X Y
foreach 
( 
var 
template !
in" $
	templates% .
.. /
ShortcodeTemplates/ A
)A B
{ 
templateObjects 
[  
template  (
.( )
Key) ,
], -
=. /
JObject0 7
.7 8

FromObject8 B
(B C
templateC K
.K L
ValueL Q
)Q R
;R S
}   
result"" 
."" 
Steps"" 
."" 
Add"" 
("" 
new""  
JObject""! (
(""( )
new## 
	JProperty## 
(## 
$str## $
,##$ %
$str##& :
)##: ;
,##; <
new$$ 
	JProperty$$ 
($$ 
$str$$ 2
,$$2 3
templateObjects$$4 C
)$$C D
)%% 
)%% 
;%% 
}&& 	
}'' 
}(( �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Deployment\AllShortcodeTemplatesDeploymentStep.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !

Deployment! +
{ 
public 

class /
#AllShortcodeTemplatesDeploymentStep 4
:5 6
DeploymentStep7 E
{ 
public /
#AllShortcodeTemplatesDeploymentStep 2
(2 3
)3 4
{ 	
Name		 
=		 
$str		 *
;		* +
}

 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Deployment\AllShortcodeTemplatesDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !

Deployment! +
{ 
public 

class 5
)AllShortcodeTemplatesDeploymentStepDriver :
:; <
DisplayDriver= J
<J K
DeploymentStepK Y
,Y Z/
#AllShortcodeTemplatesDeploymentStep[ ~
>~ 
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. //
#AllShortcodeTemplatesDeploymentStep		/ R
step		S W
)		W X
{

 	
return 
Combine 
( 
View 
( 
$str F
,F G
stepH L
)L M
.M N
LocationN V
(V W
$strW `
,` a
$strb k
)k l
,l m
View 
( 
$str H
,H I
stepJ N
)N O
.O P
LocationP X
(X Y
$strY d
,d e
$strf o
)o p
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,/
#AllShortcodeTemplatesDeploymentStep, O
stepP T
)T U
{ 	
return 
View 
( 
$str B
,B C
stepD H
)H I
.I J
LocationJ R
(R S
$strS \
)\ ]
;] ^
} 	
} 
} �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Drivers\ShortcodeDescriptorDisplayDriver.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Drivers! (
{ 
public 

class ,
 ShortcodeDescriptorDisplayDriver 1
:2 3
DisplayDriver4 A
<A B
ShortcodeDescriptorB U
>U V
{ 
public 
override 
IDisplayResult &
Display' .
(. /
ShortcodeDescriptor/ B

descriptorC M
)M N
{		 	
return

 
Combine

 
(

 
View 
( 
$str >
,> ?

descriptor@ J
)J K
.K L
LocationL T
(T U
$strU c
,c d
$stre n
)n o
,o p
View 
( 
$str H
,H I

descriptorJ T
)T U
.U V
LocationV ^
(^ _
$str_ m
,m n
$stro x
)x y
) 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Manifest.cs
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
$str G
,G H
Category 
= 
$str 
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 +
,+ ,
Name 
=	 

$str  
,  !
Description 
= 
$str v
,v w
Category 
= 
$str 
, 
Dependencies 
= 
new 
[ 
] 
{ 
$str /
,/ 0
$str1 I
}J K
) 
] �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Models\ShortcodeTemplatesDocument.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Models! '
{ 
public 

class &
ShortcodeTemplatesDocument +
:, -
Document. 6
{ 
public		 

Dictionary		 
<		 
string		  
,		  !
ShortcodeTemplate		" 3
>		3 4
ShortcodeTemplates		5 G
{		H I
get		J M
;		M N
}		O P
=		Q R
new		S V

Dictionary		W a
<		a b
string		b h
,		h i
ShortcodeTemplate		j {
>		{ |
(		| }
StringComparer			} �
.
		� �
OrdinalIgnoreCase
		� �
)
		� �
;
		� �
}

 
public 

class 
ShortcodeTemplate "
{ 
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Usage 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
[ 
] 

Categories "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
Array3 8
.8 9
Empty9 >
<> ?
string? E
>E F
(F G
)G H
;H I
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Permissions.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
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
 )$
ManageShortcodeTemplates

* B
=

C D
new

E H

Permission

I S
(

S T
$str

T n
,

n o
$str	

p �
)


� �
;


� �
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
{) *$
ManageShortcodeTemplates+ C
}D E
.E F
AsEnumerableF R
(R S
)S T
)T U
;U V
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
{( )$
ManageShortcodeTemplates* B
}C D
} 
, 
new  
PermissionStereotype (
{ 
Name 
= 
$str #
,# $
Permissions 
=  !
new" %
[% &
]& '
{( )$
ManageShortcodeTemplates* B
}C D
} 
} 
; 
}   	
}!! 
}"" �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Properties\AssemblyInfo.cs
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
$str		 .
)		. /
]		/ 0
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
]7 8�"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Providers\LocaleShortcodeProvider.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
	Providers! *
{ 
public 

class #
LocaleShortcodeProvider (
:) *
IShortcodeProvider+ =
{		 
public

 
const

 
string

 
ShortCodeIdentifier

 /
=

0 1
$str

2 :
;

: ;
private 
static 
readonly 
	ValueTask  )
<) *
string* 0
>0 1
Empty2 7
=8 9
new: =
	ValueTask> G
<G H
stringH N
>N O
(O P
StringP V
.V W
EmptyW \
)\ ]
;] ^
private 
static 
readonly 
	ValueTask  )
<) *
string* 0
>0 1
Null2 6
=7 8
new9 <
	ValueTask= F
<F G
stringG M
>M N
(N O
(O P
stringP V
)V W
nullW [
)[ \
;\ ]
public 
	ValueTask 
< 
string 
>  
EvaluateAsync! .
(. /
string/ 5

identifier6 @
,@ A
	ArgumentsB K
	argumentsL U
,U V
stringW ]
content^ e
,e f
Contextg n
contexto v
)v w
{ 	
if 
( 

identifier 
!= 
ShortCodeIdentifier 1
)1 2
{ 
return 
Null 
; 
} 
var 
language 
= 
	arguments $
.$ %
NamedOrDefault% 3
(3 4
$str4 :
): ;
?; <
.< =
ToLower= D
(D E
)E F
;F G
var 
argFallback 
= 
	arguments '
.' (
	NamedOrAt( 1
(1 2
$str2 <
,< =
$num> ?
)? @
;@ A
var 
fallback 
= 
argFallback &
==' )
null* .
?/ 0
true1 5
:6 7
Convert8 ?
.? @
	ToBoolean@ I
(I J
argFallbackJ U
)U V
;V W
var 
currentCulture 
=  
CultureInfo! ,
., -
CurrentUICulture- =
;= >
if 
( 
fallback 
) 
{ 
do 
{   
if!! 
(!! 
currentCulture!! &
.!!& '
Name!!' +
.!!+ ,
Equals!!, 2
(!!2 3
language!!3 ;
,!!; <
StringComparison!!= M
.!!M N&
InvariantCultureIgnoreCase!!N h
)!!h i
)!!i j
{"" 
return## 
new## "
	ValueTask### ,
<##, -
string##- 3
>##3 4
(##4 5
content##5 <
)##< =
;##= >
}$$ 
currentCulture&& "
=&&# $
currentCulture&&% 3
.&&3 4
Parent&&4 :
;&&: ;
}'' 
while(( 
((( 
currentCulture(( %
!=((& (
CultureInfo(() 4
.((4 5
InvariantCulture((5 E
)((E F
;((F G
})) 
else** 
{++ 
if,, 
(,, 
currentCulture,, "
.,," #
Name,,# '
.,,' (
Equals,,( .
(,,. /
language,,/ 7
,,,7 8
StringComparison,,9 I
.,,I J&
InvariantCultureIgnoreCase,,J d
),,d e
),,e f
{-- 
return.. 
new.. 
	ValueTask.. (
<..( )
string..) /
>../ 0
(..0 1
content..1 8
)..8 9
;..9 :
}// 
}00 
return22 
Empty22 
;22 
}33 	
}44 
}55 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Razor\OrchardRazorHelperExtensions.cs
public		 
static		 
class		 (
OrchardRazorHelperExtensions		 0
{

 
public 

static 
async 
Task 
< 
IHtmlContent )
>) *!
HtmlToShortcodesAsync+ @
(@ A
thisA E
IOrchardHelperF T
orchardHelperU b
,b c
stringd j
htmlk o
,o p
objectq w
modelx }
=~ 
null
� �
)
� �
{ 
var 
shortcodeService 
= 
orchardHelper ,
., -
HttpContext- 8
.8 9
RequestServices9 H
.H I
GetRequiredServiceI [
<[ \
IShortcodeService\ m
>m n
(n o
)o p
;p q
var 
context 
= 
new 
Context !
(! "
)" #
;# $
if 

( 
model 
is 
Shape 
shape  
&&! #
shape$ )
.) *

Properties* 4
.4 5
TryGetValue5 @
(@ A
$strA N
,N O
outP S
varT W
contentItemX c
)c d
)d e
{ 	
context 
[ 
$str !
]! "
=# $
contentItem% 0
;0 1
} 	
else 
{ 	
context 
[ 
$str !
]! "
=# $
null% )
;) *
} 	
html!! 
=!! 
await!! 
shortcodeService!! %
.!!% &
ProcessAsync!!& 2
(!!2 3
html!!3 7
,!!7 8
context!!9 @
)!!@ A
;!!A B
return## 
new## 

HtmlString## 
(## 
html## "
)##" #
;### $
}$$ 
}%% �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Recipes\ShortcodeTemplateStep.cs
	namespace		 	
OrchardCore		
 
.		 

Shortcodes		  
.		  !
Recipes		! (
{

 
public 

class !
ShortcodeTemplateStep &
:' (
IRecipeStepHandler) ;
{ 
private 
readonly %
ShortcodeTemplatesManager 2
_templatesManager3 D
;D E
public !
ShortcodeTemplateStep $
($ %%
ShortcodeTemplatesManager% >
templatesManager? O
)O P
{ 	
_templatesManager 
= 
templatesManager  0
;0 1
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- A
,A B
StringComparisonC S
.S T
OrdinalIgnoreCaseT e
)e f
)f g
{ 
return 
; 
} 
if 
( 
context 
. 
Step 
. 
Property %
(% &
$str& :
): ;
.; <
Value< A
isB D
JObjectE L
	templatesM V
)V W
{ 
foreach   
(   
var   
property   %
in  & (
	templates  ) 2
.  2 3

Properties  3 =
(  = >
)  > ?
)  ? @
{!! 
var"" 
name"" 
="" 
property"" '
.""' (
Name""( ,
;"", -
var## 
value## 
=## 
property##  (
.##( )
Value##) .
.##. /
ToObject##/ 7
<##7 8
ShortcodeTemplate##8 I
>##I J
(##J K
)##K L
;##L M
await%% 
_templatesManager%% +
.%%+ ,(
UpdateShortcodeTemplateAsync%%, H
(%%H I
name%%I M
,%%M N
value%%O T
)%%T U
;%%U V
}&& 
}'' 
}(( 	
})) 
}** �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Services\DefaultShortcodeContextProvider.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public		 

class		 +
DefaultShortcodeContextProvider		 0
:		1 2%
IShortcodeContextProvider		3 L
{

 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public +
DefaultShortcodeContextProvider .
(. /
IServiceProvider/ ?
serviceProvider@ O
)O P
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
void 
Contextualize !
(! "
Context" )
context* 1
)1 2
{ 	
context 
[ 
$str %
]% &
=' (
_serviceProvider) 9
;9 :
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Services\OptionsShortcodeProvider.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

class $
OptionsShortcodeProvider )
:* +
IShortcodeProvider, >
{		 
private

 
static

 
readonly

 
	ValueTask

  )
<

) *
string

* 0
>

0 1
Null

2 6
=

7 8
new

9 <
	ValueTask

= F
<

F G
string

G M
>

M N
(

N O
(

O P
string

P V
)

V W
null

W [
)

[ \
;

\ ]
private 
readonly 
ShortcodeOptions )
_options* 2
;2 3
public $
OptionsShortcodeProvider '
(' (
IOptions( 0
<0 1
ShortcodeOptions1 A
>A B
optionsC J
)J K
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
	ValueTask 
< 
string 
>  
EvaluateAsync! .
(. /
string/ 5

identifier6 @
,@ A
	ArgumentsB K
	argumentsL U
,U V
stringW ]
content^ e
,e f
Contextg n
contexto v
)v w
{ 	
if 
( 
_options 
. 
ShortcodeDelegates +
.+ ,
TryGetValue, 7
(7 8

identifier8 B
,B C
outD G
varH K
	shortcodeL U
)U V
)V W
{ 
if 
( 
	shortcode 
==  
null! %
)% &
{ 
return 
Null 
;  
} 
return 
	shortcode  
.  !
Invoke! '
(' (
	arguments( 1
,1 2
content3 :
,: ;
context< C
)C D
;D E
} 
return 
Null 
; 
}   	
}!! 
}"" �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Services\ShortcodeDescriptorManager.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

class &
ShortcodeDescriptorManager +
:, -'
IShortcodeDescriptorManager. I
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
$ %(
IShortcodeDescriptorProvider

% A
>

A B)
_shortcodeDescriptorProviders

C `
;

` a
public &
ShortcodeDescriptorManager )
() *
IEnumerable* 5
<5 6(
IShortcodeDescriptorProvider6 R
>R S(
shortcodeDescriptorProvidersT p
)p q
{ 	)
_shortcodeDescriptorProviders )
=* +(
shortcodeDescriptorProviders, H
;H I
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
ShortcodeDescriptor& 9
>9 :
>: ;#
GetShortcodeDescriptors< S
(S T
)T U
{ 	
var 
result 
= 
new 

Dictionary '
<' (
string( .
,. /
ShortcodeDescriptor0 C
>C D
(D E
StringComparerE S
.S T
OrdinalIgnoreCaseT e
)e f
;f g
var 0
$reversedShortcodeDescriptorProviders 4
=5 6)
_shortcodeDescriptorProviders7 T
.T U
ReverseU \
(\ ]
)] ^
;^ _
foreach 
( 
var 
provider !
in" $0
$reversedShortcodeDescriptorProviders% I
)I J
{ 
var 
descriptors 
=  !
await" '
provider( 0
.0 1
DiscoverAsync1 >
(> ?
)? @
;@ A
foreach 
( 
var 

descriptor '
in( *
descriptors+ 6
)6 7
{ 
result 
[ 

descriptor %
.% &
Name& *
]* +
=, -

descriptor. 8
;8 9
}   
}!! 
return## 
result## 
.## 
Values##  
;##  !
}$$ 	
}%% 
}&& �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Services\ShortcodeOptionsDescriptorProvider.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public		 

class		 .
"ShortcodeOptionsDescriptorProvider		 3
:		4 5(
IShortcodeDescriptorProvider		6 R
{

 
private 
readonly 
ShortcodeOptions )
_options* 2
;2 3
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public .
"ShortcodeOptionsDescriptorProvider 1
(1 2
IOptions 
< 
ShortcodeOptions %
>% &
options' .
,. /
IServiceProvider 
serviceProvider ,
) 
{ 	
_options 
= 
options 
. 
Value $
;$ %
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
Task 
< 
IEnumerable 
<  
ShortcodeDescriptor  3
>3 4
>4 5
DiscoverAsync6 C
(C D
)D E
=>F H
Task 
. 

FromResult 
( 
_options $
.$ %

Shortcodes% /
./ 0
Values0 6
.6 7
Select7 =
(= >
option> D
=>E G
new 
ShortcodeDescriptor '
{ 
Name 
= 
option !
.! "
Name" &
,& '
DefaultValue  
=! "
option# )
.) *
DefaultValue* 6
,6 7
Usage 
= 
option "
." #
Usage# (
,( )
Hint 
= 
option !
.! "
Hint" &
,& '

Categories 
=  
option! '
.' (

Categories( 2
}   
)   
)   
;   
}!! 
}"" �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Services\ShortcodeService.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

class 
ShortcodeService !
:" #
IShortcodeService$ 5
{ 
private		 
readonly		 
IEnumerable		 $
<		$ %%
IShortcodeContextProvider		% >
>		> ?&
_shortcodeContextProviders		@ Z
;		Z [
private

 
readonly

 
ShortcodesProcessor

 , 
_shortcodesProcessor

- A
;

A B
public 
ShortcodeService 
(  
IEnumerable 
< 
IShortcodeProvider *
>* +
shortcodeProviders, >
,> ?
IEnumerable 
< %
IShortcodeContextProvider 1
>1 2%
shortcodeContextProviders3 L
)L M
{ 	 
_shortcodesProcessor  
=! "
new# &
ShortcodesProcessor' :
(: ;
shortcodeProviders; M
)M N
;N O&
_shortcodeContextProviders &
=' (%
shortcodeContextProviders) B
;B C
} 	
public 
	ValueTask 
< 
string 
>  
ProcessAsync! -
(- .
string. 4
input5 :
,: ;
Context< C
contextD K
=L M
nullN R
)R S
{ 	
if 
( 
context 
== 
null 
)  
{ 
context 
= 
new 
Context %
(% &
)& '
;' (
} 
foreach 
( 
var 
contextProvider (
in) +&
_shortcodeContextProviders, F
)F G
{ 
contextProvider 
.  
Contextualize  -
(- .
context. 5
)5 6
;6 7
} 
return    
_shortcodesProcessor   '
.  ' (
EvaluateAsync  ( 5
(  5 6
input  6 ;
,  ; <
context  = D
)  D E
;  E F
}!! 	
}"" 
}## �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Services\ShortcodeTemplatesDescriptorProvider.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

class 0
$ShortcodeTemplatesDescriptorProvider 5
:6 7(
IShortcodeDescriptorProvider8 T
{ 
private		 
readonly		 %
ShortcodeTemplatesManager		 2&
_shortcodeTemplatesManager		3 M
;		M N
public 0
$ShortcodeTemplatesDescriptorProvider 3
(3 4%
ShortcodeTemplatesManager4 M%
shortcodeTemplatesManagerN g
)g h
{ 	&
_shortcodeTemplatesManager &
=' (%
shortcodeTemplatesManager) B
;B C
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
ShortcodeDescriptor& 9
>9 :
>: ;
DiscoverAsync< I
(I J
)J K
{ 	
var 
document 
= 
await  &
_shortcodeTemplatesManager! ;
.; <.
"GetShortcodeTemplatesDocumentAsync< ^
(^ _
)_ `
;` a
return 
document 
. 
ShortcodeTemplates .
.. /
Select/ 5
(5 6
kvp6 9
=>: <
new 
ShortcodeDescriptor '
{ 
Name 
= 
kvp 
. 
Key "
," #
Hint 
= 
kvp 
. 
Value $
.$ %
Hint% )
,) *
DefaultValue  
=! "
kvp# &
.& '
Value' ,
., -
DefaultValue- 9
,9 :
Usage 
= 
kvp 
.  
Value  %
.% &
Usage& +
,+ ,

Categories 
=  
kvp! $
.$ %
Value% *
.* +

Categories+ 5
} 
) 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Services\ShortcodeTemplatesManager.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

class %
ShortcodeTemplatesManager *
{ 
private		 
readonly		 
IDocumentManager		 )
<		) *&
ShortcodeTemplatesDocument		* D
>		D E
_documentManager		F V
;		V W
public %
ShortcodeTemplatesManager (
(( )
IDocumentManager) 9
<9 :&
ShortcodeTemplatesDocument: T
>T U
documentManagerV e
)e f
=>g i
_documentManagerj z
={ |
documentManager	} �
;
� �
public 
Task 
< &
ShortcodeTemplatesDocument .
>. //
#LoadShortcodeTemplatesDocumentAsync0 S
(S T
)T U
=>V X
_documentManagerY i
.i j$
GetOrCreateMutableAsync	j �
(
� �
)
� �
;
� �
public 
Task 
< &
ShortcodeTemplatesDocument .
>. /.
"GetShortcodeTemplatesDocumentAsync0 R
(R S
)S T
=>U W
_documentManagerX h
.h i&
GetOrCreateImmutableAsync	i �
(
� �
)
� �
;
� �
public 
async 
Task (
RemoveShortcodeTemplateAsync 6
(6 7
string7 =
name> B
)B C
{ 	
var 
document 
= 
await  /
#LoadShortcodeTemplatesDocumentAsync! D
(D E
)E F
;F G
document 
. 
ShortcodeTemplates '
.' (
Remove( .
(. /
name/ 3
)3 4
;4 5
await 
_documentManager "
." #
UpdateAsync# .
(. /
document/ 7
)7 8
;8 9
} 	
public 
async 
Task (
UpdateShortcodeTemplateAsync 6
(6 7
string7 =
name> B
,B C
ShortcodeTemplateD U
templateV ^
)^ _
{ 	
var   
document   
=   
await    /
#LoadShortcodeTemplatesDocumentAsync  ! D
(  D E
)  E F
;  F G
document!! 
.!! 
ShortcodeTemplates!! '
[!!' (
name!!( ,
.!!, -
ToLower!!- 4
(!!4 5
)!!5 6
]!!6 7
=!!8 9
template!!: B
;!!B C
await"" 
_documentManager"" "
.""" #
UpdateAsync""# .
("". /
document""/ 7
)""7 8
;""8 9
}## 	
}$$ 
}%% �)
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Services\TemplateShortcodeProvider.cs
	namespace		 	
OrchardCore		
 
.		 

Shortcodes		  
.		  !
Services		! )
{

 
public 

class %
TemplateShortcodeProvider *
:+ ,
IShortcodeProvider- ?
{ 
private 
readonly %
ShortcodeTemplatesManager 2&
_shortcodeTemplatesManager3 M
;M N
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
private &
ShortcodeTemplatesDocument *'
_shortcodeTemplatesDocument+ F
;F G
public %
TemplateShortcodeProvider (
(( )%
ShortcodeTemplatesManager %%
shortcodeTemplatesManager& ?
,? @"
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9
HtmlEncoder 
htmlEncoder #
)# $
{ 	&
_shortcodeTemplatesManager &
=' (%
shortcodeTemplatesManager) B
;B C"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
public 
async 
	ValueTask 
< 
string %
>% &
EvaluateAsync' 4
(4 5
string5 ;

identifier< F
,F G
	ArgumentsH Q
	argumentsR [
,[ \
string] c
contentd k
,k l
Contextm t
contextu |
)| }
{ 	'
_shortcodeTemplatesDocument '
??=( +
await, 1&
_shortcodeTemplatesManager2 L
.L M.
"GetShortcodeTemplatesDocumentAsyncM o
(o p
)p q
;q r
if   
(   
!   '
_shortcodeTemplatesDocument   ,
.  , -
ShortcodeTemplates  - ?
.  ? @
TryGetValue  @ K
(  K L

identifier  L V
,  V W
out  X [
var  \ _
template  ` h
)  h i
)  i j
{!! 
return"" 
null"" 
;"" 
}## 
if&& 
(&& 
!&& 
(&& "
_liquidTemplateManager&& (
.&&( )
Context&&) 0
.&&0 1

LocalScope&&1 ;
.&&; <
GetValue&&< D
(&&D E

identifier&&E O
)&&O P
is&&Q S
NilValue&&T \
)&&\ ]
)&&] ^
{'' 
return(( 
null(( 
;(( 
})) 
var++ 
model++ 
=++ 
new++ 
ShortcodeViewModel++ .
{,, 
Args-- 
=-- 
	arguments--  
,--  !
Content.. 
=.. 
content.. !
,..! "
Context// 
=// 
context// !
}00 
;00 
return22 
await22 "
_liquidTemplateManager22 /
.22/ 0
RenderAsync220 ;
(22; <
template22< D
.22D E
Content22E L
,22L M
_htmlEncoder22N Z
,22Z [
model22\ a
,22a b
scope33 
=>33 
{44 
scope66 
.66 
SetValue66 "
(66" #

identifier66# -
,66- .
$str66/ 1
)661 2
;662 3
var99 
content99 
=99  !
scope99" '
.99' (
GetValue99( 0
(990 1
$str991 :
)99: ;
.99; <
ToObjectValue99< I
(99I J
)99J K
;99K L
if:: 
(:: 
content:: 
is::  "!
LiquidContentAccessor::# 8
contentAccessor::9 H
)::H I
{;; 
contentAccessor<< '
.<<' (
Content<<( /
=<<0 1
model<<2 7
.<<7 8
Content<<8 ?
??<<@ B
$str<<C E
;<<E F
scope== 
.== 
SetValue== &
(==& '
$str==' 0
,==0 1
contentAccessor==2 A
)==A B
;==B C
}>> 
else?? 
{@@ 
scopeAA 
.AA 
SetValueAA &
(AA& '
$strAA' 0
,AA0 1
modelAA2 7
.AA7 8
ContentAA8 ?
??AA@ B
$strAAC E
)AAE F
;AAF G
}BB 
scopeDD 
.DD 
SetValueDD "
(DD" #
$strDD# )
,DD) *
modelDD+ 0
.DD0 1
ArgsDD1 5
)DD5 6
;DD6 7
scopeEE 
.EE 
SetValueEE "
(EE" #
$strEE# ,
,EE, -
modelEE. 3
.EE3 4
ContextEE4 ;
)EE; <
;EE< =
}FF 
)FF 
;FF 
}GG 	
}HH 
}II �^
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\Startup.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
static 
Startup 
( 
) 
{   	
TemplateContext!! 
.!! &
GlobalMemberAccessStrategy!! 6
.!!6 7
Register!!7 ?
<!!? @
ShortcodeViewModel!!@ R
>!!R S
(!!S T
)!!T U
;!!U V
TemplateContext## 
.## &
GlobalMemberAccessStrategy## 6
.##6 7
Register##7 ?
<##? @
Context##@ G
,##G H
object##I O
>##O P
(##P Q
(##Q R
obj##R U
,##U V
name##W [
)##[ \
=>##] _
obj##` c
[##c d
name##d h
]##h i
)##i j
;##j k

FluidValue&& 
.&& 
SetTypeMapping&& %
<&&% &
Context&&& -
>&&- .
(&&. /
o&&/ 0
=>&&1 3
new&&4 7
ObjectValue&&8 C
(&&C D
o&&D E
)&&E F
)&&F G
;&&G H
TemplateContext(( 
.(( &
GlobalMemberAccessStrategy(( 6
.((6 7
Register((7 ?
<((? @
Sc((@ B
.((B C
	Arguments((C L
,((L M
object((N T
>((T U
(((U V
(((V W
obj((W Z
,((Z [
name((\ `
)((` a
=>((b d
obj((e h
.((h i
NamedOrDefault((i w
(((w x
name((x |
)((| }
)((} ~
;((~ 

FluidValue++ 
.++ 
SetTypeMapping++ %
<++% &
Sc++& (
.++( )
	Arguments++) 2
>++2 3
(++3 4
o++4 5
=>++6 8
new++9 <
ObjectValue++= H
(++H I
o++I J
)++J K
)++K L
;++L M
},, 	
public.. 
override.. 
void.. 
ConfigureServices.. .
(... /
IServiceCollection../ A
services..B J
)..J K
{// 	
services00 
.00 
	AddScoped00 
<00 
IShortcodeService00 0
,000 1
ShortcodeService002 B
>00B C
(00C D
)00D E
;00E F
services11 
.11 
	AddScoped11 
<11 '
IShortcodeDescriptorManager11 :
,11: ;&
ShortcodeDescriptorManager11< V
>11V W
(11W X
)11X Y
;11Y Z
services22 
.22 
	AddScoped22 
<22 (
IShortcodeDescriptorProvider22 ;
,22; <.
"ShortcodeOptionsDescriptorProvider22= _
>22_ `
(22` a
)22a b
;22b c
services33 
.33 
	AddScoped33 
<33 %
IShortcodeContextProvider33 8
,338 9+
DefaultShortcodeContextProvider33: Y
>33Y Z
(33Z [
)33[ \
;33\ ]
services55 
.55 

AddOptions55 
<55  
ShortcodeOptions55  0
>550 1
(551 2
)552 3
;553 4
services66 
.66 
	AddScoped66 
<66 
IShortcodeProvider66 1
,661 2$
OptionsShortcodeProvider663 K
>66K L
(66L M
)66M N
;66N O
services77 
.77 
	AddScoped77 
<77 
IDisplayManager77 .
<77. /
ShortcodeDescriptor77/ B
>77B C
,77C D
DisplayManager77E S
<77S T
ShortcodeDescriptor77T g
>77g h
>77h i
(77i j
)77j k
;77k l
services88 
.88 
	AddScoped88 
<88 
IDisplayDriver88 -
<88- .
ShortcodeDescriptor88. A
>88A B
,88B C,
 ShortcodeDescriptorDisplayDriver88D d
>88d e
(88e f
)88f g
;88g h
}99 	
}:: 
[<< 
Feature<< 
(<< 
$str<< /
)<</ 0
]<<0 1
public== 

class== %
ShortcodeTemplatesStartup== *
:==+ ,
StartupBase==- 8
{>> 
private?? 
readonly?? 
AdminOptions?? %
_adminOptions??& 3
;??3 4
publicAA %
ShortcodeTemplatesStartupAA (
(AA( )
IOptionsAA) 1
<AA1 2
AdminOptionsAA2 >
>AA> ?
adminOptionsAA@ L
)AAL M
{BB 	
_adminOptionsCC 
=CC 
adminOptionsCC (
.CC( )
ValueCC) .
;CC. /
}DD 	
publicGG 
overrideGG 
intGG 
OrderGG !
=>GG" $
-GG% &
$numGG& (
;GG( )
publicII 
overrideII 
voidII 
ConfigureServicesII .
(II. /
IServiceCollectionII/ A
servicesIIB J
)IIJ K
{JJ 	
servicesKK 
.KK 
	AddScopedKK 
<KK %
ShortcodeTemplatesManagerKK 8
>KK8 9
(KK9 :
)KK: ;
;KK; <
servicesLL 
.LL 
	AddScopedLL 
<LL 
IPermissionProviderLL 2
,LL2 3
PermissionsLL4 ?
>LL? @
(LL@ A
)LLA B
;LLB C
servicesMM 
.MM 
	AddScopedMM 
<MM 
INavigationProviderMM 2
,MM2 3
	AdminMenuMM4 =
>MM= >
(MM> ?
)MM? @
;MM@ A
servicesOO 
.OO "
AddRecipeExecutionStepOO +
<OO+ ,!
ShortcodeTemplateStepOO, A
>OOA B
(OOB C
)OOC D
;OOD E
servicesQQ 
.QQ 
	AddScopedQQ 
<QQ 
IShortcodeProviderQQ 1
,QQ1 2%
TemplateShortcodeProviderQQ3 L
>QQL M
(QQM N
)QQN O
;QQO P
servicesRR 
.RR 
	AddScopedRR 
<RR (
IShortcodeDescriptorProviderRR ;
,RR; <0
$ShortcodeTemplatesDescriptorProviderRR= a
>RRa b
(RRb c
)RRc d
;RRd e
}SS 	
publicUU 
overrideUU 
voidUU 
	ConfigureUU &
(UU& '
IApplicationBuilderUU' :
builderUU; B
,UUB C!
IEndpointRouteBuilderUUD Y
routesUUZ `
,UU` a
IServiceProviderUUb r
serviceProvider	UUs �
)
UU� �
{VV 	
varWW "
templateControllerNameWW &
=WW' (
typeofWW) /
(WW/ 0
AdminControllerWW0 ?
)WW? @
.WW@ A
ControllerNameWWA O
(WWO P
)WWP Q
;WWQ R
routesYY 
.YY "
MapAreaControllerRouteYY )
(YY) *
nameZZ 
:ZZ 
$strZZ (
,ZZ( )
areaName[[ 
:[[ 
$str[[ 2
,[[2 3
pattern\\ 
:\\ 
_adminOptions\\ &
.\\& '
AdminUrlPrefix\\' 5
+\\6 7
$str\\8 E
,\\E F
defaults]] 
:]] 
new]] 
{]] 

controller]]  *
=]]+ ,"
templateControllerName]]- C
,]]C D
action]]E K
=]]L M
nameof]]N T
(]]T U
AdminController]]U d
.]]d e
Index]]e j
)]]j k
}]]l m
)^^ 
;^^ 
routes`` 
.`` "
MapAreaControllerRoute`` )
(``) *
nameaa 
:aa 
$straa )
,aa) *
areaNamebb 
:bb 
$strbb 2
,bb2 3
patterncc 
:cc 
_adminOptionscc &
.cc& '
AdminUrlPrefixcc' 5
+cc6 7
$strcc8 L
,ccL M
defaultsdd 
:dd 
newdd 
{dd 

controllerdd  *
=dd+ ,"
templateControllerNamedd- C
,ddC D
actionddE K
=ddL M
nameofddN T
(ddT U
AdminControllerddU d
.ddd e
Createdde k
)ddk l
}ddm n
)ee 
;ee 
routesgg 
.gg "
MapAreaControllerRoutegg )
(gg) *
namehh 
:hh 
$strhh '
,hh' (
areaNameii 
:ii 
$strii 2
,ii2 3
patternjj 
:jj 
_adminOptionsjj &
.jj& '
AdminUrlPrefixjj' 5
+jj6 7
$strjj8 Q
,jjQ R
defaultskk 
:kk 
newkk 
{kk 

controllerkk  *
=kk+ ,"
templateControllerNamekk- C
,kkC D
actionkkE K
=kkL M
nameofkkN T
(kkT U
AdminControllerkkU d
.kkd e
Editkke i
)kki j
}kkk l
)ll 
;ll 
}mm 	
}nn 
[pp 
RequireFeaturespp 
(pp 
$strpp /
)pp/ 0
]pp0 1
publicqq 

classqq *
LocaleShortcodeProviderStartupqq /
:qq0 1
StartupBaseqq2 =
{rr 
publicss 
overridess 
voidss 
ConfigureServicesss .
(ss. /
IServiceCollectionss/ A
servicesssB J
)ssJ K
{tt 	
servicesuu 
.uu 
AddShortcodeuu !
<uu! "#
LocaleShortcodeProvideruu" 9
>uu9 :
(uu: ;
$struu; C
,uuC D
duuE F
=>uuG I
{vv 
dww 
.ww 
DefaultValueww 
=ww  
$strww! E
;wwE F
dxx 
.xx 
Hintxx 
=xx 
$strxx Q
;xxQ R
dyy 
.yy 
Usageyy 
=yy 
$strz� 	
;
��	 

d
�� 
.
�� 

Categories
�� 
=
�� 
new
�� "
string
��# )
[
��) *
]
��* +
{
��, -
$str
��. <
}
��= >
;
��> ?
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
[
�� 
RequireFeatures
�� 
(
�� 
$str
�� -
,
��- .
$str
��/ Q
)
��Q R
]
��R S
public
�� 

class
�� 2
$ShortcodeTemplatesDeployementStartup
�� 5
:
��6 7
StartupBase
��8 C
{
�� 
public
�� 
override
�� 
void
�� 
ConfigureServices
�� .
(
��. / 
IServiceCollection
��/ A
services
��B J
)
��J K
{
�� 	
services
�� 
.
�� 
AddTransient
�� !
<
��! "
IDeploymentSource
��" 3
,
��3 43
%AllShortcodeTemplatesDeploymentSource
��5 Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
services
�� 
.
�� 
AddSingleton
�� !
<
��! "$
IDeploymentStepFactory
��" 8
>
��8 9
(
��9 :
new
��: =#
DeploymentStepFactory
��> S
<
��S T1
#AllShortcodeTemplatesDeploymentStep
��T w
>
��w x
(
��x y
)
��y z
)
��z {
;
��{ |
services
�� 
.
�� 
	AddScoped
�� 
<
�� 
IDisplayDriver
�� -
<
��- .
DeploymentStep
��. <
>
��< =
,
��= >7
)AllShortcodeTemplatesDeploymentStepDriver
��? h
>
��h i
(
��i j
)
��j k
;
��k l
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\ViewModels\ShortcodeTemplateIndexViewModel.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !

ViewModels! +
{ 
public 

class +
ShortcodeTemplateIndexViewModel 0
{		 
public

 
IList

 
<

 "
ShortcodeTemplateEntry

 +
>

+ ,
ShortcodeTemplates

- ?
{

@ A
get

B E
;

E F
set

G J
;

J K
}

L M
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
public 
ContentOptions 
Options %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
new6 9
ContentOptions: H
(H I
)I J
;J K
} 
public 

class "
ShortcodeTemplateEntry '
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
ShortcodeTemplate  
ShortcodeTemplate! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class 
ContentOptions 
{ 
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
public 
ContentsBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
ContentsBulkAction$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
}!! 
public## 

enum## 
ContentsBulkAction## "
{$$ 
None%% 
,%% 
Remove&& 
}'' 
}(( �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\ViewModels\ShortcodeTemplateViewModel.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !

ViewModels! +
{ 
public 

class &
ShortcodeTemplateViewModel +
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
Hint		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
Usage

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
DefaultValue "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
[ 
] 

Categories "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
Array3 8
.8 9
Empty9 >
<> ?
string? E
>E F
(F G
)G H
;H I
public 
string 
SelectedCategories (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Shortcodes\ViewModels\ShortcodeViewModel.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !

ViewModels! +
{ 
public 

class 
ShortcodeViewModel #
{ 
public 
	Arguments 
Args 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
Context		 
Context		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} 