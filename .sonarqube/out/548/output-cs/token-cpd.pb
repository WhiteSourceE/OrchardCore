‰
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
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
$str &
]& '
,' (
configuration) 6
=>7 9
configuration: G
. 
Add 
( 
S 
[ 
$str "
]" #
,# $
S% &
[& '
$str' .
]. /
./ 0
PrefixPosition0 >
(> ?
)? @
,@ A
tasksB G
=>H J
tasksK P
. 
Add 
( 
S 
[ 
$str 1
]1 2
,2 3
S4 5
[5 6
$str6 H
]H I
.I J
PrefixPositionJ X
(X Y
)Y Z
,Z [
backgroundTasks\ k
=>l n
backgroundTaskso ~
. 
Action #
(# $
$str$ +
,+ ,
$str- =
,= >
new? B
{C D
areaE I
=J K
$strL i
}j k
)k l
. 

Permission '
(' (
Permissions( 3
.3 4!
ManageBackgroundTasks4 I
)I J
. 
LocalNav %
(% &
)& '
) 
)   
)!! 
;!! 
return## 
Task## 
.## 
CompletedTask## %
;##% &
}$$ 	
}%% 
}&& ⁄¥
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\Controllers\BackgroundTaskController.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
.% &
Controllers& 1
{ 
[ 
Admin 

]
 
public 

class $
BackgroundTaskController )
:* +

Controller, 6
{ 
private 
readonly 
string 
_tenant  '
;' (
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IEnumerable $
<$ %
IBackgroundTask% 4
>4 5
_backgroundTasks6 F
;F G
private 
readonly !
BackgroundTaskManager ."
_backgroundTaskManager/ E
;E F
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
dynamic  
New! $
;$ %
public $
BackgroundTaskController '
(' (
ShellSettings 
shellSettings '
,' (!
IAuthorizationService ! 
authorizationService" 6
,6 7
IEnumerable   
<   
IBackgroundTask   '
>  ' (
backgroundTasks  ) 8
,  8 9!
BackgroundTaskManager!! !!
backgroundTaskManager!!" 7
,!!7 8
IShapeFactory"" 
shapeFactory"" &
,""& '
ISiteService## 
siteService## $
,##$ %
IStringLocalizer$$ 
<$$ $
BackgroundTaskController$$ 5
>$$5 6
stringLocalizer$$7 F
)$$F G
{%% 	
_tenant&& 
=&& 
shellSettings&& #
.&&# $
Name&&$ (
;&&( )!
_authorizationService'' !
=''" # 
authorizationService''$ 8
;''8 9
_backgroundTasks(( 
=(( 
backgroundTasks(( .
;((. /"
_backgroundTaskManager)) "
=))# $!
backgroundTaskManager))% :
;)): ;
New** 
=** 
shapeFactory** 
;** 
_siteService++ 
=++ 
siteService++ &
;++& '
S,, 
=,, 
stringLocalizer,, 
;,,  
}-- 	
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (
Index//) .
(//. /
PagerParameters/// >
pagerParameters//? N
)//N O
{00 	
if11 
(11 
!11 
await11 !
_authorizationService11 ,
.11, -
AuthorizeAsync11- ;
(11; <
User11< @
,11@ A
Permissions11B M
.11M N!
ManageBackgroundTasks11N c
)11c d
)11d e
{22 
return33 
Forbid33 
(33 
)33 
;33  
}44 
var66 
siteSettings66 
=66 
await66 $
_siteService66% 1
.661 2 
GetSiteSettingsAsync662 F
(66F G
)66G H
;66H I
var77 
pager77 
=77 
new77 
Pager77 !
(77! "
pagerParameters77" 1
,771 2
siteSettings773 ?
.77? @
PageSize77@ H
)77H I
;77I J
var88 
document88 
=88 
await88  "
_backgroundTaskManager88! 7
.887 8
GetDocumentAsync888 H
(88H I
)88I J
;88J K
var:: 
taskEntries:: 
=:: 
_backgroundTasks:: .
.::. /
Select::/ 5
(::5 6
t::6 7
=>::8 :
{;; 
if<< 
(<< 
!<< 
document<< 
.<< 
Settings<< &
.<<& '
TryGetValue<<' 2
(<<2 3
t<<3 4
.<<4 5
GetTaskName<<5 @
(<<@ A
)<<A B
,<<B C
out<<D G
var<<H K
settings<<L T
)<<T U
)<<U V
{== 
settings>> 
=>> 
t>>  
.>>  !
GetDefaultSettings>>! 3
(>>3 4
)>>4 5
;>>5 6
}?? 
returnAA 
newAA 
BackgroundTaskEntryAA .
(AA. /
)AA/ 0
{AA1 2
SettingsAA3 ;
=AA< =
settingsAA> F
}AAG H
;AAH I
}BB 
)BB 
.CC 
OrderByCC 
(CC 
entryCC 
=>CC 
entryCC #
.CC# $
SettingsCC$ ,
.CC, -
NameCC- 1
)CC1 2
.DD 
SkipDD 
(DD 
pagerDD 
.DD 
GetStartIndexDD %
(DD% &
)DD& '
)DD' (
.EE 
TakeEE 
(EE 
pagerEE 
.EE 
PageSizeEE  
)EE  !
.FF 
ToListFF 
(FF 
)FF 
;FF 
varHH 

pagerShapeHH 
=HH 
(HH 
awaitHH #
NewHH$ '
.HH' (
PagerHH( -
(HH- .
pagerHH. 3
)HH3 4
)HH4 5
.HH5 6
TotalItemCountHH6 D
(HHD E
taskEntriesHHE P
.HHP Q
CountHHQ V
)HHV W
;HHW X
varJJ 
modelJJ 
=JJ 
newJJ (
BackgroundTaskIndexViewModelJJ 8
{KK 
TasksLL 
=LL 
taskEntriesLL #
,LL# $
PagerMM 
=MM 

pagerShapeMM "
}NN 
;NN 
returnPP 
ViewPP 
(PP 
modelPP 
)PP 
;PP 
}QQ 	
publicSS 
asyncSS 
TaskSS 
<SS 
IActionResultSS '
>SS' (
CreateSS) /
(SS/ 0
stringSS0 6
nameSS7 ;
)SS; <
{TT 	
ifUU 
(UU 
!UU 
awaitUU !
_authorizationServiceUU ,
.UU, -
AuthorizeAsyncUU- ;
(UU; <
UserUU< @
,UU@ A
PermissionsUUB M
.UUM N!
ManageBackgroundTasksUUN c
)UUc d
)UUd e
{VV 
returnWW 
ForbidWW 
(WW 
)WW 
;WW  
}XX 
varZZ 
modelZZ 
=ZZ 
newZZ #
BackgroundTaskViewModelZZ 3
(ZZ3 4
)ZZ4 5
{ZZ6 7
NameZZ8 <
=ZZ= >
nameZZ? C
}ZZD E
;ZZE F
var\\ 
task\\ 
=\\ 
_backgroundTasks\\ '
.\\' (
GetTaskByName\\( 5
(\\5 6
name\\6 :
)\\: ;
;\\; <
if^^ 
(^^ 
task^^ 
!=^^ 
null^^ 
)^^ 
{__ 
var`` 
settings`` 
=`` 
task`` #
.``# $
GetDefaultSettings``$ 6
(``6 7
)``7 8
;``8 9
modelbb 
.bb 
Enablebb 
=bb 
settingsbb '
.bb' (
Enablebb( .
;bb. /
modelcc 
.cc 
Schedulecc 
=cc  
settingscc! )
.cc) *
Schedulecc* 2
;cc2 3
modeldd 
.dd 
DefaultScheduledd %
=dd& '
settingsdd( 0
.dd0 1
Scheduledd1 9
;dd9 :
modelee 
.ee 
Descriptionee !
=ee" #
settingsee$ ,
.ee, -
Descriptionee- 8
;ee8 9
}ff 
returnhh 
Viewhh 
(hh 
modelhh 
)hh 
;hh 
}ii 	
[kk 	
HttpPostkk	 
,kk 

ActionNamekk 
(kk 
$strkk &
)kk& '
]kk' (
publicll 
asyncll 
Taskll 
<ll 
IActionResultll '
>ll' (

CreatePostll) 3
(ll3 4#
BackgroundTaskViewModelll4 K
modelllL Q
)llQ R
{mm 	
ifnn 
(nn 
!nn 
awaitnn !
_authorizationServicenn ,
.nn, -
AuthorizeAsyncnn- ;
(nn; <
Usernn< @
,nn@ A
PermissionsnnB M
.nnM N!
ManageBackgroundTasksnnN c
)nnc d
)nnd e
{oo 
returnpp 
Forbidpp 
(pp 
)pp 
;pp  
}qq 
ifss 
(ss 

ModelStatess 
.ss 
IsValidss "
)ss" #
{tt 
ifuu 
(uu 
Stringuu 
.uu 
IsNullOrWhiteSpaceuu -
(uu- .
modeluu. 3
.uu3 4
Nameuu4 8
)uu8 9
)uu9 :
{vv 

ModelStateww 
.ww 
AddModelErrorww ,
(ww, -
nameofww- 3
(ww3 4#
BackgroundTaskViewModelww4 K
.wwK L
NamewwL P
)wwP Q
,wwQ R
SwwS T
[wwT U
$strwwU m
]wwm n
)wwn o
;wwo p
}xx 
}yy 
if{{ 
({{ 

ModelState{{ 
.{{ 
IsValid{{ "
){{" #
{|| 
var}} 
settings}} 
=}} 
new}} ""
BackgroundTaskSettings}}# 9
{~~ 
Name 
= 
model  
.  !
Name! %
,% &
Enable
ÄÄ 
=
ÄÄ 
model
ÄÄ "
.
ÄÄ" #
Enable
ÄÄ# )
,
ÄÄ) *
Schedule
ÅÅ 
=
ÅÅ 
model
ÅÅ $
.
ÅÅ$ %
Schedule
ÅÅ% -
?
ÅÅ- .
.
ÅÅ. /
Trim
ÅÅ/ 3
(
ÅÅ3 4
)
ÅÅ4 5
,
ÅÅ5 6
Description
ÇÇ 
=
ÇÇ  !
model
ÇÇ" '
.
ÇÇ' (
Description
ÇÇ( 3
}
ÉÉ 
;
ÉÉ 
await
ÖÖ $
_backgroundTaskManager
ÖÖ ,
.
ÖÖ, -
UpdateAsync
ÖÖ- 8
(
ÖÖ8 9
model
ÖÖ9 >
.
ÖÖ> ?
Name
ÖÖ? C
,
ÖÖC D
settings
ÖÖE M
)
ÖÖM N
;
ÖÖN O
return
áá 
RedirectToAction
áá '
(
áá' (
nameof
áá( .
(
áá. /
Index
áá/ 4
)
áá4 5
)
áá5 6
;
áá6 7
}
àà 
return
ää 
View
ää 
(
ää 
model
ää 
)
ää 
;
ää 
}
ãã 	
public
çç 
async
çç 
Task
çç 
<
çç 
IActionResult
çç '
>
çç' (
Edit
çç) -
(
çç- .
string
çç. 4
name
çç5 9
)
çç9 :
{
éé 	
if
èè 
(
èè 
!
èè 
await
èè #
_authorizationService
èè ,
.
èè, -
AuthorizeAsync
èè- ;
(
èè; <
User
èè< @
,
èè@ A
Permissions
èèB M
.
èèM N#
ManageBackgroundTasks
èèN c
)
èèc d
)
èèd e
{
êê 
return
ëë 
Forbid
ëë 
(
ëë 
)
ëë 
;
ëë  
}
íí 
var
îî 
document
îî 
=
îî 
await
îî  $
_backgroundTaskManager
îî! 7
.
îî7 8
GetDocumentAsync
îî8 H
(
îîH I
)
îîI J
;
îîJ K
if
ññ 
(
ññ 
!
ññ 
document
ññ 
.
ññ 
Settings
ññ "
.
ññ" #
ContainsKey
ññ# .
(
ññ. /
name
ññ/ 3
)
ññ3 4
)
ññ4 5
{
óó 
return
òò 
RedirectToAction
òò '
(
òò' (
$str
òò( 0
,
òò0 1
new
òò2 5
{
òò6 7
name
òò8 <
}
òò= >
)
òò> ?
;
òò? @
}
ôô 
var
õõ 
task
õõ 
=
õõ 
_backgroundTasks
õõ '
.
õõ' (
GetTaskByName
õõ( 5
(
õõ5 6
name
õõ6 :
)
õõ: ;
;
õõ; <
var
ùù 
settings
ùù 
=
ùù 
document
ùù #
.
ùù# $
Settings
ùù$ ,
[
ùù, -
name
ùù- 1
]
ùù1 2
;
ùù2 3
var
üü 
model
üü 
=
üü 
new
üü %
BackgroundTaskViewModel
üü 3
{
†† 
Name
°° 
=
°° 
name
°° 
,
°° 
Enable
¢¢ 
=
¢¢ 
settings
¢¢ !
.
¢¢! "
Enable
¢¢" (
,
¢¢( )
Schedule
££ 
=
££ 
settings
££ #
.
££# $
Schedule
££$ ,
,
££, -
DefaultSchedule
§§ 
=
§§  !
task
§§" &
?
§§& '
.
§§' ( 
GetDefaultSettings
§§( :
(
§§: ;
)
§§; <
.
§§< =
Schedule
§§= E
,
§§E F
Description
•• 
=
•• 
settings
•• &
.
••& '
Description
••' 2
}
¶¶ 
;
¶¶ 
return
®® 
View
®® 
(
®® 
model
®® 
)
®® 
;
®® 
}
©© 	
[
´´ 	
HttpPost
´´	 
]
´´ 
public
¨¨ 
async
¨¨ 
Task
¨¨ 
<
¨¨ 
IActionResult
¨¨ '
>
¨¨' (
Edit
¨¨) -
(
¨¨- .%
BackgroundTaskViewModel
¨¨. E
model
¨¨F K
)
¨¨K L
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
await
ÆÆ #
_authorizationService
ÆÆ ,
.
ÆÆ, -
AuthorizeAsync
ÆÆ- ;
(
ÆÆ; <
User
ÆÆ< @
,
ÆÆ@ A
Permissions
ÆÆB M
.
ÆÆM N#
ManageBackgroundTasks
ÆÆN c
)
ÆÆc d
)
ÆÆd e
{
ØØ 
return
∞∞ 
Forbid
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞  
}
±± 
if
≥≥ 
(
≥≥ 

ModelState
≥≥ 
.
≥≥ 
IsValid
≥≥ "
)
≥≥" #
{
¥¥ 
if
µµ 
(
µµ 
String
µµ 
.
µµ  
IsNullOrWhiteSpace
µµ -
(
µµ- .
model
µµ. 3
.
µµ3 4
Name
µµ4 8
)
µµ8 9
)
µµ9 :
{
∂∂ 

ModelState
∑∑ 
.
∑∑ 
AddModelError
∑∑ ,
(
∑∑, -
nameof
∑∑- 3
(
∑∑3 4%
BackgroundTaskViewModel
∑∑4 K
.
∑∑K L
Name
∑∑L P
)
∑∑P Q
,
∑∑Q R
S
∑∑S T
[
∑∑T U
$str
∑∑U m
]
∑∑m n
)
∑∑n o
;
∑∑o p
}
∏∏ 
}
ππ 
if
ªª 
(
ªª 

ModelState
ªª 
.
ªª 
IsValid
ªª "
)
ªª" #
{
ºº 
var
ΩΩ 
settings
ΩΩ 
=
ΩΩ 
new
ΩΩ "$
BackgroundTaskSettings
ΩΩ# 9
{
ææ 
Name
øø 
=
øø 
model
øø  
.
øø  !
Name
øø! %
,
øø% &
Enable
¿¿ 
=
¿¿ 
model
¿¿ "
.
¿¿" #
Enable
¿¿# )
,
¿¿) *
Schedule
¡¡ 
=
¡¡ 
model
¡¡ $
.
¡¡$ %
Schedule
¡¡% -
?
¡¡- .
.
¡¡. /
Trim
¡¡/ 3
(
¡¡3 4
)
¡¡4 5
,
¡¡5 6
Description
¬¬ 
=
¬¬  !
model
¬¬" '
.
¬¬' (
Description
¬¬( 3
}
√√ 
;
√√ 
await
≈≈ $
_backgroundTaskManager
≈≈ ,
.
≈≈, -
UpdateAsync
≈≈- 8
(
≈≈8 9
model
≈≈9 >
.
≈≈> ?
Name
≈≈? C
,
≈≈C D
settings
≈≈E M
)
≈≈M N
;
≈≈N O
return
«« 
RedirectToAction
«« '
(
««' (
nameof
««( .
(
««. /
Index
««/ 4
)
««4 5
)
««5 6
;
««6 7
}
»» 
return
ÀÀ 
View
ÀÀ 
(
ÀÀ 
model
ÀÀ 
)
ÀÀ 
;
ÀÀ 
}
ÃÃ 	
[
ŒŒ 	
HttpPost
ŒŒ	 
]
ŒŒ 
public
œœ 
async
œœ 
Task
œœ 
<
œœ 
IActionResult
œœ '
>
œœ' (
Delete
œœ) /
(
œœ/ 0
string
œœ0 6
name
œœ7 ;
)
œœ; <
{
–– 	
if
—— 
(
—— 
!
—— 
await
—— #
_authorizationService
—— ,
.
——, -
AuthorizeAsync
——- ;
(
——; <
User
——< @
,
——@ A
Permissions
——B M
.
——M N#
ManageBackgroundTasks
——N c
)
——c d
)
——d e
{
““ 
return
”” 
Forbid
”” 
(
”” 
)
”” 
;
””  
}
‘‘ 
var
÷÷ 
document
÷÷ 
=
÷÷ 
await
÷÷  $
_backgroundTaskManager
÷÷! 7
.
÷÷7 8
LoadDocumentAsync
÷÷8 I
(
÷÷I J
)
÷÷J K
;
÷÷K L
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
document
ÿÿ 
.
ÿÿ 
Settings
ÿÿ "
.
ÿÿ" #
ContainsKey
ÿÿ# .
(
ÿÿ. /
name
ÿÿ/ 3
)
ÿÿ3 4
)
ÿÿ4 5
{
ŸŸ 
return
⁄⁄ 
NotFound
⁄⁄ 
(
⁄⁄  
)
⁄⁄  !
;
⁄⁄! "
}
€€ 
await
›› $
_backgroundTaskManager
›› (
.
››( )
RemoveAsync
››) 4
(
››4 5
name
››5 9
)
››9 :
;
››: ;
return
ﬂﬂ 
RedirectToAction
ﬂﬂ #
(
ﬂﬂ# $
nameof
ﬂﬂ$ *
(
ﬂﬂ* +
Index
ﬂﬂ+ 0
)
ﬂﬂ0 1
)
ﬂﬂ1 2
;
ﬂﬂ2 3
}
‡‡ 	
[
‚‚ 	
HttpPost
‚‚	 
]
‚‚ 
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
IActionResult
„„ '
>
„„' (
Enable
„„) /
(
„„/ 0
string
„„0 6
name
„„7 ;
)
„„; <
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 
await
ÂÂ #
_authorizationService
ÂÂ ,
.
ÂÂ, -
AuthorizeAsync
ÂÂ- ;
(
ÂÂ; <
User
ÂÂ< @
,
ÂÂ@ A
Permissions
ÂÂB M
.
ÂÂM N#
ManageBackgroundTasks
ÂÂN c
)
ÂÂc d
)
ÂÂd e
{
ÊÊ 
return
ÁÁ 
Forbid
ÁÁ 
(
ÁÁ 
)
ÁÁ 
;
ÁÁ  
}
ËË 
var
ÍÍ 
document
ÍÍ 
=
ÍÍ 
await
ÍÍ  $
_backgroundTaskManager
ÍÍ! 7
.
ÍÍ7 8
LoadDocumentAsync
ÍÍ8 I
(
ÍÍI J
)
ÍÍJ K
;
ÍÍK L
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
document
ÏÏ 
.
ÏÏ 
Settings
ÏÏ "
.
ÏÏ" #
TryGetValue
ÏÏ# .
(
ÏÏ. /
name
ÏÏ/ 3
,
ÏÏ3 4
out
ÏÏ5 8
var
ÏÏ9 <
settings
ÏÏ= E
)
ÏÏE F
)
ÏÏF G
{
ÌÌ 
settings
ÓÓ 
=
ÓÓ 
_backgroundTasks
ÓÓ +
.
ÓÓ+ ,
GetTaskByName
ÓÓ, 9
(
ÓÓ9 :
name
ÓÓ: >
)
ÓÓ> ?
?
ÓÓ? @
.
ÓÓ@ A 
GetDefaultSettings
ÓÓA S
(
ÓÓS T
)
ÓÓT U
;
ÓÓU V
}
ÔÔ 
if
ÒÒ 
(
ÒÒ 
settings
ÒÒ 
!=
ÒÒ 
null
ÒÒ  
)
ÒÒ  !
{
ÚÚ 
settings
ÛÛ 
.
ÛÛ 
Enable
ÛÛ 
=
ÛÛ  !
true
ÛÛ" &
;
ÛÛ& '
await
ÙÙ $
_backgroundTaskManager
ÙÙ ,
.
ÙÙ, -
UpdateAsync
ÙÙ- 8
(
ÙÙ8 9
name
ÙÙ9 =
,
ÙÙ= >
settings
ÙÙ? G
)
ÙÙG H
;
ÙÙH I
}
ıı 
return
˜˜ 
RedirectToAction
˜˜ #
(
˜˜# $
nameof
˜˜$ *
(
˜˜* +
Index
˜˜+ 0
)
˜˜0 1
)
˜˜1 2
;
˜˜2 3
}
¯¯ 	
[
˙˙ 	
HttpPost
˙˙	 
]
˙˙ 
public
˚˚ 
async
˚˚ 
Task
˚˚ 
<
˚˚ 
IActionResult
˚˚ '
>
˚˚' (
Disable
˚˚) 0
(
˚˚0 1
string
˚˚1 7
name
˚˚8 <
)
˚˚< =
{
¸¸ 	
if
˝˝ 
(
˝˝ 
!
˝˝ 
await
˝˝ #
_authorizationService
˝˝ ,
.
˝˝, -
AuthorizeAsync
˝˝- ;
(
˝˝; <
User
˝˝< @
,
˝˝@ A
Permissions
˝˝B M
.
˝˝M N#
ManageBackgroundTasks
˝˝N c
)
˝˝c d
)
˝˝d e
{
˛˛ 
return
ˇˇ 
Forbid
ˇˇ 
(
ˇˇ 
)
ˇˇ 
;
ˇˇ  
}
ÄÄ 
var
ÇÇ 
document
ÇÇ 
=
ÇÇ 
await
ÇÇ  $
_backgroundTaskManager
ÇÇ! 7
.
ÇÇ7 8
LoadDocumentAsync
ÇÇ8 I
(
ÇÇI J
)
ÇÇJ K
;
ÇÇK L
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
document
ÑÑ 
.
ÑÑ 
Settings
ÑÑ "
.
ÑÑ" #
TryGetValue
ÑÑ# .
(
ÑÑ. /
name
ÑÑ/ 3
,
ÑÑ3 4
out
ÑÑ5 8
var
ÑÑ9 <
settings
ÑÑ= E
)
ÑÑE F
)
ÑÑF G
{
ÖÖ 
settings
ÜÜ 
=
ÜÜ 
_backgroundTasks
ÜÜ +
.
ÜÜ+ ,
GetTaskByName
ÜÜ, 9
(
ÜÜ9 :
name
ÜÜ: >
)
ÜÜ> ?
?
ÜÜ? @
.
ÜÜ@ A 
GetDefaultSettings
ÜÜA S
(
ÜÜS T
)
ÜÜT U
;
ÜÜU V
}
áá 
if
ââ 
(
ââ 
settings
ââ 
!=
ââ 
null
ââ  
)
ââ  !
{
ää 
settings
ãã 
.
ãã 
Enable
ãã 
=
ãã  !
false
ãã" '
;
ãã' (
await
åå $
_backgroundTaskManager
åå ,
.
åå, -
UpdateAsync
åå- 8
(
åå8 9
name
åå9 =
,
åå= >
settings
åå? G
)
ååG H
;
ååH I
}
çç 
return
èè 
RedirectToAction
èè #
(
èè# $
nameof
èè$ *
(
èè* +
Index
èè+ 0
)
èè0 1
)
èè1 2
;
èè2 3
}
êê 	
}
ëë 
}íí º
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
,2 3
Description 
= 
$str J
,J K
Category		 
=		 
$str		 
)

 
]

 Û
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\Models\BackgroundTaskDocument.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
.% &
Models& ,
{ 
public 

class "
BackgroundTaskDocument '
:( )
Document* 2
{ 
public 

Dictionary 
< 
string  
,  !"
BackgroundTaskSettings" 8
>8 9
Settings: B
{C D
getE H
;H I
}J K
=L M
newN Q

DictionaryR \
<\ ]
string] c
,c d"
BackgroundTaskSettingse {
>{ |
(| }
)} ~
;~ 
}		 
}

 ˇ
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\Permissions.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{ 
public		 
static		 
readonly		 

Permission		 )!
ManageBackgroundTasks		* ?
=		@ A
new		B E

Permission		F P
(		P Q
$str		Q h
,		h i
$str			j É
)
		É Ñ
;
		Ñ Ö
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
GetPermissions# 1
(1 2
)2 3
)3 4
;4 5
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )!
ManageBackgroundTasks* ?
}@ A
} 
} 
; 
} 	
private 
IEnumerable 
< 

Permission &
>& '
GetPermissions( 6
(6 7
)7 8
{ 	
return 
new 
[ 
] 
{ !
ManageBackgroundTasks 0
}1 2
;2 3
} 	
}   
}!! ≤
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\Services\AlwaysHasChangedToken.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
.% &
Services& .
{ 
internal		 
class		 !
AlwaysHasChangedToken		 (
:		) *
IChangeToken		+ 7
{

 
public 
static !
AlwaysHasChangedToken +
	Singleton, 5
{6 7
get8 ;
;; <
}= >
=? @
newA D!
AlwaysHasChangedTokenE Z
(Z [
)[ \
;\ ]
private !
AlwaysHasChangedToken %
(% &
)& '
{ 	
} 	
public 
bool 

HasChanged 
=> !
true" &
;& '
public 
bool !
ActiveChangeCallbacks )
=>* ,
false- 2
;2 3
public 
IDisposable "
RegisterChangeCallback 1
(1 2
Action2 8
<8 9
object9 ?
>? @
callbackA I
,I J
objectK Q
stateR W
)W X
{ 	
return 
EmptyDisposable "
." #
Instance# +
;+ ,
} 	
} 
internal 
class 
EmptyDisposable "
:# $
IDisposable% 0
{ 
public 
static 
EmptyDisposable %
Instance& .
{/ 0
get1 4
;4 5
}6 7
=8 9
new: =
EmptyDisposable> M
(M N
)N O
;O P
private 
EmptyDisposable 
(  
)  !
{   	
}!! 	
public## 
void## 
Dispose## 
(## 
)## 
{$$ 	
}%% 	
}&& 
}'' ⁄
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\Services\BackgroundTaskManager.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
.% &
Services& .
{ 
public 

class !
BackgroundTaskManager &
{ 
private		 
readonly		 
IDocumentManager		 )
<		) *"
BackgroundTaskDocument		* @
>		@ A
_documentManager		B R
;		R S
public !
BackgroundTaskManager $
($ %
IDocumentManager% 5
<5 6"
BackgroundTaskDocument6 L
>L M
documentManagerN ]
)] ^
{ 	
_documentManager 
= 
documentManager .
;. /
} 	
public 
Task 
< "
BackgroundTaskDocument *
>* +
LoadDocumentAsync, =
(= >
)> ?
=>@ B
_documentManagerC S
.S T#
GetOrCreateMutableAsyncT k
(k l
)l m
;m n
public 
Task 
< "
BackgroundTaskDocument *
>* +
GetDocumentAsync, <
(< =
)= >
=>? A
_documentManagerB R
.R S%
GetOrCreateImmutableAsyncS l
(l m
)m n
;n o
public 
async 
Task 
RemoveAsync %
(% &
string& ,
name- 1
)1 2
{ 	
var 
document 
= 
await  
LoadDocumentAsync! 2
(2 3
)3 4
;4 5
document 
. 
Settings 
. 
Remove $
($ %
name% )
)) *
;* +
await 
_documentManager "
." #
UpdateAsync# .
(. /
document/ 7
)7 8
;8 9
} 	
public!! 
async!! 
Task!! 
UpdateAsync!! %
(!!% &
string!!& ,
name!!- 1
,!!1 2"
BackgroundTaskSettings!!3 I
settings!!J R
)!!R S
{"" 	
var## 
document## 
=## 
await##  
LoadDocumentAsync##! 2
(##2 3
)##3 4
;##4 5
document$$ 
.$$ 
Settings$$ 
[$$ 
name$$ "
]$$" #
=$$$ %
settings$$& .
;$$. /
await%% 
_documentManager%% "
.%%" #
UpdateAsync%%# .
(%%. /
document%%/ 7
)%%7 8
;%%8 9
}&& 	
}'' 
}(( Î
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\Services\BackgroundTaskSettingsProvider.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
.% &
Services& .
{ 
public 

class *
BackgroundTaskSettingsProvider /
:0 1+
IBackgroundTaskSettingsProvider2 Q
{ 
private 
readonly !
BackgroundTaskManager ."
_backgroundTaskManager/ E
;E F
public

 *
BackgroundTaskSettingsProvider

 -
(

- .!
BackgroundTaskManager

. C!
backgroundTaskManager

D Y
)

Y Z
{ 	"
_backgroundTaskManager "
=# $!
backgroundTaskManager% :
;: ;
} 	
public 
IChangeToken 
ChangeToken '
=>( *!
AlwaysHasChangedToken+ @
.@ A
	SingletonA J
;J K
public 
async 
Task 
< "
BackgroundTaskSettings 0
>0 1
GetSettingsAsync2 B
(B C
IBackgroundTaskC R
taskS W
)W X
{ 	
var 
document 
= 
await  "
_backgroundTaskManager! 7
.7 8
GetDocumentAsync8 H
(H I
)I J
;J K
if 
( 
document 
. 
Settings !
.! "
TryGetValue" -
(- .
task. 2
.2 3
GetTaskName3 >
(> ?
)? @
,@ A
outB E
varF I
settingsJ R
)R S
)S T
{ 
return 
settings 
;  
} 
return 
null 
; 
} 	
} 
} ù/
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\Startup.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< !
BackgroundTaskManager 0
>0 1
(1 2
)2 3
. 
	AddScoped 
< 
IPermissionProvider .
,. /
Permissions0 ;
>; <
(< =
)= >
. 
	AddScoped 
< 
INavigationProvider .
,. /
	AdminMenu0 9
>9 :
(: ;
); <
. 
	AddScoped 
< +
IBackgroundTaskSettingsProvider :
,: ;*
BackgroundTaskSettingsProvider< Z
>Z [
([ \
)\ ]
;] ^
}   	
public"" 
override"" 
void"" 
	Configure"" &
(""& '
IApplicationBuilder""' :
builder""; B
,""B C!
IEndpointRouteBuilder""D Y
routes""Z `
,""` a
IServiceProvider""b r
serviceProvider	""s Ç
)
""Ç É
{## 	
var$$ (
backgroundTaskControllerName$$ ,
=$$- .
typeof$$/ 5
($$5 6$
BackgroundTaskController$$6 N
)$$N O
.$$O P
ControllerName$$P ^
($$^ _
)$$_ `
;$$` a
routes&& 
.&& "
MapAreaControllerRoute&& )
(&&) *
name'' 
:'' 
$str'' '
,''' (
areaName(( 
:(( 
$str(( 7
,((7 8
pattern)) 
:)) 
_adminOptions)) &
.))& '
AdminUrlPrefix))' 5
+))6 7
$str))8 J
,))J K
defaults** 
:** 
new** 
{** 

controller**  *
=**+ ,(
backgroundTaskControllerName**- I
,**I J
action**K Q
=**R S
nameof**T Z
(**Z [$
BackgroundTaskController**[ s
.**s t
Index**t y
)**y z
}**{ |
)++ 
;++ 
routes,, 
.,, "
MapAreaControllerRoute,, )
(,,) *
name-- 
:-- 
$str-- -
,--- .
areaName.. 
:.. 
$str.. 7
,..7 8
pattern// 
:// 
_adminOptions// &
.//& '
AdminUrlPrefix//' 5
+//6 7
$str//8 X
,//X Y
defaults00 
:00 
new00 
{00 

controller00  *
=00+ ,(
backgroundTaskControllerName00- I
,00I J
action00K Q
=00R S
nameof00T Z
(00Z [$
BackgroundTaskController00[ s
.00s t
Create00t z
)00z {
}00| }
)11 
;11 
routes22 
.22 "
MapAreaControllerRoute22 )
(22) *
name33 
:33 
$str33 +
,33+ ,
areaName44 
:44 
$str44 7
,447 8
pattern55 
:55 
_adminOptions55 &
.55& '
AdminUrlPrefix55' 5
+556 7
$str558 V
,55V W
defaults66 
:66 
new66 
{66 

controller66  *
=66+ ,(
backgroundTaskControllerName66- I
,66I J
action66K Q
=66R S
nameof66T Z
(66Z [$
BackgroundTaskController66[ s
.66s t
Edit66t x
)66x y
}66z {
)77 
;77 
routes88 
.88 "
MapAreaControllerRoute88 )
(88) *
name99 
:99 
$str99 -
,99- .
areaName:: 
::: 
$str:: 7
,::7 8
pattern;; 
:;; 
_adminOptions;; &
.;;& '
AdminUrlPrefix;;' 5
+;;6 7
$str;;8 X
,;;X Y
defaults<< 
:<< 
new<< 
{<< 

controller<<  *
=<<+ ,(
backgroundTaskControllerName<<- I
,<<I J
action<<K Q
=<<R S
nameof<<T Z
(<<Z [$
BackgroundTaskController<<[ s
.<<s t
Enable<<t z
)<<z {
}<<| }
)== 
;== 
routes>> 
.>> "
MapAreaControllerRoute>> )
(>>) *
name?? 
:?? 
$str?? .
,??. /
areaName@@ 
:@@ 
$str@@ 7
,@@7 8
patternAA 
:AA 
_adminOptionsAA &
.AA& '
AdminUrlPrefixAA' 5
+AA6 7
$strAA8 Y
,AAY Z
defaultsBB 
:BB 
newBB 
{BB 

controllerBB  *
=BB+ ,(
backgroundTaskControllerNameBB- I
,BBI J
actionBBK Q
=BBR S
nameofBBT Z
(BBZ [$
BackgroundTaskControllerBB[ s
.BBs t
DisableBBt {
)BB{ |
}BB} ~
)CC 
;CC 
}DD 	
}EE 
}FF ∂
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\ViewModels\BackgroundTaskIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
.% &

ViewModels& 0
{ 
public 

class (
BackgroundTaskIndexViewModel -
{ 
public 
IList 
< 
BackgroundTaskEntry (
>( )
Tasks* /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
}		 
public 

class 
BackgroundTaskEntry $
{ 
public "
BackgroundTaskSettings %
Settings& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} Ø
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.BackgroundTasks\ViewModels\BackgroundTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
.% &

ViewModels& 0
{ 
public 

class #
BackgroundTaskViewModel (
:) *"
BackgroundTaskSettings+ A
{ 
public 
string 
DefaultSchedule %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
$str6 A
;A B
} 
} 