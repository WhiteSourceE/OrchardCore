√2
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Demo 
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
$str 
] 
, 
$str  $
,$ %
demo& *
=>+ -
demo. 2
. 
AddClass 
( 
$str $
)$ %
.% &
Id& (
(( )
$str) /
)/ 0
. 
Add 
( 
S 
[ 
$str -
]- .
,. /
$str0 3
,3 4
item5 9
=>: <
item= A
. 
Add 
( 
S 
[ 
$str 6
]6 7
,7 8
subItem9 @
=>A C
subItemD K
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
new6 9
{: ;
area< @
=A B
$strC U
}V W
)W X
)X Y
. 
Add 
( 
S 
[ 
$str 6
]6 7
,7 8
subItem9 @
=>A C
subItemD K
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
new6 9
{: ;
area< @
=A B
$strC U
}V W
)W X
)X Y
.   
Add   
(   
S   
[   
$str   6
]  6 7
,  7 8
subItem  9 @
=>  A C
subItem  D K
.!! 
Action!! #
(!!# $
$str!!$ +
,!!+ ,
$str!!- 4
,!!4 5
new!!6 9
{!!: ;
area!!< @
=!!A B
$str!!C U
}!!V W
)!!W X
)!!X Y
)"" 
.## 
Add## 
(## 
S## 
[## 
$str## -
]##- .
,##. /
$str##0 3
,##3 4
item##5 9
=>##: <
item##= A
.$$ 
Add$$ 
($$ 
S$$ 
[$$ 
$str$$ 6
]$$6 7
,$$7 8
subItem$$9 @
=>$$A C
subItem$$D K
.%% 
Action%% #
(%%# $
$str%%$ +
,%%+ ,
$str%%- 4
,%%4 5
new%%6 9
{%%: ;
area%%< @
=%%A B
$str%%C U
}%%V W
)%%W X
)%%X Y
.&& 
Add&& 
(&& 
S&& 
[&& 
$str&& 6
]&&6 7
,&&7 8
subItem&&9 @
=>&&A C
subItem&&D K
.'' 
Action'' #
(''# $
$str''$ +
,''+ ,
$str''- 4
,''4 5
new''6 9
{'': ;
area''< @
=''A B
$str''C U
}''V W
)''W X
)''X Y
.(( 
Add(( 
((( 
S(( 
[(( 
$str(( 6
]((6 7
,((7 8
subItem((9 @
=>((A C
subItem((D K
.)) 
Action)) #
())# $
$str))$ +
,))+ ,
$str))- 4
,))4 5
new))6 9
{)): ;
area))< @
=))A B
$str))C U
}))V W
)))W X
)))X Y
)** 
.++ 
Add++ 
(++ 
S++ 
[++ 
$str++ -
]++- .
,++. /
$str++0 3
,++3 4
item++5 9
=>++: <
item++= A
.,, 
Add,, 
(,, 
S,, 
[,, 
$str,, 6
],,6 7
,,,7 8
subItem,,9 @
=>,,A C
subItem,,D K
.-- 
Action-- #
(--# $
$str--$ +
,--+ ,
$str--- 4
,--4 5
new--6 9
{--: ;
area--< @
=--A B
$str--C U
}--V W
)--W X
)--X Y
... 
Add.. 
(.. 
S.. 
[.. 
$str.. 6
]..6 7
,..7 8
subItem..9 @
=>..A C
subItem..D K
.// 
Action// #
(//# $
$str//$ +
,//+ ,
$str//- 4
,//4 5
new//6 9
{//: ;
area//< @
=//A B
$str//C U
}//V W
)//W X
)//X Y
)11 
.22 
Add22 
(22 
S22 
[22 
$str22 5
]225 6
,226 7
$str228 ;
,22; <
item22= A
=>22B D
item22E I
.33 
Action33 
(33  
$str33  '
,33' (
$str33) /
,33/ 0
new331 4
{335 6
area337 ;
=33< =
$str33> P
}33Q R
)33R S
)44 
)55 
;55 
return77 
Task77 
.77 
CompletedTask77 %
;77% &
}88 	
}99 
}:: ù
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Commands\DemoCommands.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Commands #
{ 
public 

class 
DemoCommands 
: !
DefaultCommandHandler  5
{ 
private		 
readonly		 
ILogger		  
_logger		! (
;		( )
public 
DemoCommands 
( 
ILogger #
<# $
DemoCommands$ 0
>0 1
logger2 8
,8 9
IStringLocalizer 
< 
DemoCommands )
>) *
	localizer+ 4
)4 5
:6 7
base8 <
(< =
	localizer= F
)F G
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
CommandName	 
( 
$str &
)& '
]' (
[ 	
CommandHelp	 
( 
$str /
)/ 0
]0 1
public 
void 

HelloWorld 
( 
)  
{ 	
if 
( 
_logger 
. 
	IsEnabled !
(! "
LogLevel" *
.* +
Information+ 6
)6 7
)7 8
{ 
_logger 
. 
LogInformation &
(& '
$str' C
)C D
;D E
} 
} 	
} 
} Â
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Components\FakeViewComponent.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 

Components %
{ 
public 

class 
FakeViewComponent "
:# $
ViewComponent% 2
{ 
public  
IViewComponentResult #
Invoke$ *
(* +
string+ 1
value2 7
)7 8
{ 	
return		 
View		 
(		 
$str		 !
,		! "
value		# (
)		( )
;		) *
}

 	
} 
} ò6
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\ContentElementDisplays\TestContentElementDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Demo		 
.		 "
ContentElementDisplays		 1
{

 
public 

class +
TestContentElementDisplayDriver 0
:1 2 
ContentDisplayDriver3 G
{ 
private 
static 
int 
	_creating $
;$ %
private 
static 
int 
_processing &
;& '
public 
override 
IDisplayResult &
Display' .
(. /
ContentItem/ :
contentItem; F
,F G
IUpdateModelH T
updaterU \
)\ ]
{ 	
var 
testContentPart 
=  !
contentItem" -
.- .
As. 0
<0 1
TestContentPartA1 A
>A B
(B C
)C D
;D E
if 
( 
testContentPart 
==  "
null# '
)' (
{ 
return 
null 
; 
} 
return 
Combine 
( 
Copy 
( 
$str '
,' (
testContentPart) 8
)8 9
.9 :
Location: B
(B C
$strC K
,K L
$strM V
)V W
,W X
Dynamic 
( 
$str #
)# $
.$ %
Location% -
(- .
$str. 6
,6 7
$str8 @
)@ A
,A B
Factory 
( 
$str *
,* +
async   
ctx   
=>    
(  ! "
await  " '
ctx  ( +
.  + ,
New  , /
.  / 0
TestContentPartA  0 @
(  @ A
)  A B
)  B C
.  C D
Creating  D L
(  L M
	_creating  M V
++  V X
)  X Y
,  Y Z
shape!! 
=>!! 
{"" 
(## 
(## 
dynamic## !
)##! "
shape##" '
)##' (
.##( )

Processing##) 3
=##4 5
_processing##6 A
++##A C
;##C D
return$$ 
Task$$ #
.$$# $
CompletedTask$$$ 1
;$$1 2
}%% 
)%% 
.&& 
Location&& 
(&& 
$str&& &
,&&& '
$str&&( 1
)&&1 2
.'' 
Cache'' 
('' 
$str'' '
,''' (
cache'') .
=>''/ 1
cache''2 7
.''7 8
WithExpiryAfter''8 G
(''G H
TimeSpan''H P
.''P Q
FromSeconds''Q \
(''\ ]
$num''] ^
)''^ _
)''_ `
)''` a
,''a b

Initialize)) 
<)) !
TestContentPartAShape)) 0
>))0 1
())1 2
shape))2 7
=>))8 :
{)); <
shape))= B
.))B C
Line))C G
=))H I
$str))J `
;))` a
}))b c
)))c d
.** 
Location** 
(** 
$str** &
,**& '
$str**( 3
)**3 4
,**4 5
Dynamic,, 
(,, 
$str,, #
),,# $
.-- 
Location-- 
(-- 
$str-- &
,--& '
$str--( 1
)--1 2
... 
Cache.. 
(.. 
$str.. &
,..& '
cache..( -
=>... 0
cache..1 6
...6 7
WithExpiryAfter..7 F
(..F G
TimeSpan..G O
...O P
FromSeconds..P [
(..[ \
$num..\ ]
)..] ^
)..^ _
).._ `
)// 
;// 
}00 	
public22 
override22 
IDisplayResult22 &
Edit22' +
(22+ ,
ContentItem22, 7
contentItem228 C
,22C D
IUpdateModel22E Q
updater22R Y
)22Y Z
{33 	
var44 
testContentPart44 
=44  !
contentItem44" -
.44- .
As44. 0
<440 1
TestContentPartA441 A
>44A B
(44B C
)44C D
;44D E
if66 
(66 
testContentPart66 
==66  "
null66# '
)66' (
{77 
return88 
null88 
;88 
}99 
return;; 
Copy;; 
(;; 
$str;; /
,;;/ 0
testContentPart;;1 @
);;@ A
.;;A B
Location;;B J
(;;J K
$str;;K T
);;T U
;;;U V
}<< 	
public>> 
override>> 
async>> 
Task>> "
<>>" #
IDisplayResult>># 1
>>>1 2
UpdateAsync>>3 >
(>>> ?
ContentItem>>? J
contentItem>>K V
,>>V W
IUpdateModel>>X d
updater>>e l
)>>l m
{?? 	
var@@ 
testContentPart@@ 
=@@  !
contentItem@@" -
.@@- .
As@@. 0
<@@0 1
TestContentPartA@@1 A
>@@A B
(@@B C
)@@C D
;@@D E
ifBB 
(BB 
testContentPartBB 
==BB  "
nullBB# '
)BB' (
{CC 
returnDD 
nullDD 
;DD 
}EE 
ifGG 
(GG 
awaitGG 
updaterGG 
.GG 
TryUpdateModelAsyncGG 1
(GG1 2
testContentPartGG2 A
,GGA B
$strGGC E
)GGE F
)GGF G
{HH 
ifII 
(II 
testContentPartII #
.II# $
LineII$ (
.II( )
EndsWithII) 1
(II1 2
$charII2 5
)II5 6
)II6 7
{JJ 
updaterKK 
.KK 

ModelStateKK &
.KK& '
AddModelErrorKK' 4
(KK4 5
nameofKK5 ;
(KK; <
testContentPartKK< K
.KKK L
LineKKL P
)KKP Q
,KKQ R
$strKKS r
)KKr s
;KKs t
}LL 
elseMM 
{NN 
contentItemOO 
.OO  
ApplyOO  %
(OO% &
testContentPartOO& 5
)OO5 6
;OO6 7
}PP 
}QQ 
returnSS 
CopySS 
(SS 
$strSS /
,SS/ 0
testContentPartSS1 @
)SS@ A
.SSA B
LocationSSB J
(SSJ K
$strSSK T
)SST U
;SSU V
}TT 	
}UU 
}VV ˝
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Controllers &
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return		 
View		 
(		 
)		 
;		 
}

 	
} 
} …(
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Controllers\ContentApiController.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Controllers &
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
	Authorize 
( !
AuthenticationSchemes $
=% &
$str' ,
), -
,- ."
IgnoreAntiforgeryToken/ E
,E F
AllowAnonymousG U
]U V
[ 
ApiController 
] 
public 

class  
ContentApiController %
:& '

Controller( 2
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public  
ContentApiController #
(# $!
IAuthorizationService$ 9 
authorizationService: N
,N O
IContentManagerP _
contentManager` n
)n o
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
Task 
< 
IActionResult '
>' (
GetById) 0
(0 1
string1 7
id8 :
): ;
{ 	
var 
contentItem 
= 
await #
_contentManager$ 3
.3 4
GetAsync4 <
(< =
id= ?
)? @
;@ A
if 
( 
contentItem 
== 
null #
)# $
{ 
return 
NotFound 
(  
)  !
;! "
} 
return!! 
new!! 
ObjectResult!! #
(!!# $
contentItem!!$ /
)!!/ 0
;!!0 1
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
GetAuthorizedById$$) :
($$: ;
string$$; A
id$$B D
)$$D E
{%% 	
if&& 
(&& 
!&& 
await&& !
_authorizationService&& ,
.&&, -
AuthorizeAsync&&- ;
(&&; <
User&&< @
,&&@ A
Permissions&&B M
.&&M N
DemoAPIAccess&&N [
)&&[ \
)&&\ ]
{'' 
return(( 
this(( 
.(( 
ChallengeOrForbid(( -
(((- .
$str((. 3
)((3 4
;((4 5
})) 
var++ 
contentItem++ 
=++ 
await++ #
_contentManager++$ 3
.++3 4
GetAsync++4 <
(++< =
id++= ?
)++? @
;++@ A
if-- 
(-- 
!-- 
await-- !
_authorizationService-- ,
.--, -
AuthorizeAsync--- ;
(--; <
User--< @
,--@ A
CommonPermissions--B S
.--S T
ViewContent--T _
,--_ `
contentItem--a l
)--l m
)--m n
{.. 
return// 
this// 
.// 
ChallengeOrForbid// -
(//- .
$str//. 3
)//3 4
;//4 5
}00 
if22 
(22 
contentItem22 
==22 
null22 #
)22# $
{33 
return44 
NotFound44 
(44  
)44  !
;44! "
}55 
return77 
new77 
ObjectResult77 #
(77# $
contentItem77$ /
)77/ 0
;770 1
}88 	
[:: 	
HttpPost::	 
]:: 
[;; 	
	Authorize;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (

AddContent<<) 3
(<<3 4
ContentItem<<4 ?
contentItem<<@ K
)<<K L
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
.>>M N
DemoAPIAccess>>N [
)>>[ \
)>>\ ]
{?? 
return@@ 
this@@ 
.@@ 
ChallengeOrForbid@@ -
(@@- .
$str@@. 3
)@@3 4
;@@4 5
}AA 
awaitCC 
_contentManagerCC !
.CC! "
CreateAsyncCC" -
(CC- .
contentItemCC. 9
)CC9 :
;CC: ;
returnEE 
newEE 
ObjectResultEE #
(EE# $
contentItemEE$ /
)EE/ 0
;EE0 1
}FF 	
}GG 
}HH Ô,
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Controllers\ContentController.cs
	namespace		 	
OrchardCore		
 
.		 
Demo		 
.		 
Controllers		 &
{

 
public 

class 
ContentController "
:# $

Controller% /
{ 
private 
readonly &
IContentItemDisplayManager 3
_contentDisplay4 C
;C D
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
ContentController  
(  !
IContentManager 
contentManager *
,* +&
IContentItemDisplayManager &
contentDisplay' 5
,5 6
ISession 
session 
,  
IUpdateModelAccessor  
updateModelAccessor! 4
)4 5
{ 	
_contentManager 
= 
contentManager ,
;, -
_contentDisplay 
= 
contentDisplay ,
;, -
_session 
= 
session 
;  
_updateModelAccessor  
=! "
updateModelAccessor# 6
;6 7
} 	
public 
async 
Task 
< 
ActionResult &
>& '
Display( /
(/ 0
string0 6
contentItemId7 D
)D E
{ 	
var   
contentItem   
=   
await   #
_contentManager  $ 3
.  3 4
GetAsync  4 <
(  < =
contentItemId  = J
)  J K
;  K L
if"" 
("" 
contentItem"" 
=="" 
null"" #
)""# $
{## 
return$$ 
NotFound$$ 
($$  
)$$  !
;$$! "
}%% 
var'' 
shape'' 
='' 
await'' 
_contentDisplay'' -
.''- .
BuildDisplayAsync''. ?
(''? @
contentItem''@ K
,''K L 
_updateModelAccessor''M a
.''a b
ModelUpdater''b n
)''n o
;''o p
return(( 
View(( 
((( 
shape(( 
)(( 
;(( 
})) 	
[++ 	
Admin++	 
]++ 
public,, 
async,, 
Task,, 
<,, 
ActionResult,, &
>,,& '
Edit,,( ,
(,,, -
string,,- 3
contentItemId,,4 A
),,A B
{-- 	
var.. 
contentItem.. 
=.. 
await.. #
_contentManager..$ 3
...3 4
GetAsync..4 <
(..< =
contentItemId..= J
)..J K
;..K L
if00 
(00 
contentItem00 
==00 
null00 #
)00# $
{11 
return22 
NotFound22 
(22  
)22  !
;22! "
}33 
var55 
shape55 
=55 
await55 
_contentDisplay55 -
.55- .
BuildEditorAsync55. >
(55> ?
contentItem55? J
,55J K 
_updateModelAccessor55L `
.55` a
ModelUpdater55a m
,55m n
false55o t
)55t u
;55u v
return66 
View66 
(66 
shape66 
)66 
;66 
}77 	
[99 	
Admin99	 
,99 
HttpPost99 
,99 

ActionName99 $
(99$ %
$str99% +
)99+ ,
]99, -
public:: 
async:: 
Task:: 
<:: 
ActionResult:: &
>::& '
EditPost::( 0
(::0 1
string::1 7
contentItemId::8 E
)::E F
{;; 	
var<< 
contentItem<< 
=<< 
await<< #
_contentManager<<$ 3
.<<3 4
GetAsync<<4 <
(<<< =
contentItemId<<= J
)<<J K
;<<K L
if>> 
(>> 
contentItem>> 
==>> 
null>> #
)>># $
{?? 
return@@ 
NotFound@@ 
(@@  
)@@  !
;@@! "
}AA 
varCC 
shapeCC 
=CC 
awaitCC 
_contentDisplayCC -
.CC- .
UpdateEditorAsyncCC. ?
(CC? @
contentItemCC@ K
,CCK L 
_updateModelAccessorCCM a
.CCa b
ModelUpdaterCCb n
,CCn o
falseCCp u
)CCu v
;CCv w
ifEE 
(EE 
!EE 

ModelStateEE 
.EE 
IsValidEE #
)EE# $
{FF 
_sessionGG 
.GG 
CancelGG 
(GG  
)GG  !
;GG! "
returnHH 
ViewHH 
(HH 
$strHH "
,HH" #
shapeHH$ )
)HH) *
;HH* +
}II 
_sessionKK 
.KK 
SaveKK 
(KK 
contentItemKK %
)KK% &
;KK& '
returnLL 
RedirectToActionLL #
(LL# $
$strLL$ *
,LL* +
contentItemIdLL, 9
)LL9 :
;LL: ;
}MM 	
}NN 
}OO ‚
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Controllers\DemoController.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Controllers &
{ 
public 

class 
DemoController 
:  !

Controller" ,
{ 
[ 	
Route	 
( 
$str 
) 
] 
[ 	
Route	 
( 
$str 
) 
] 
public		 
IActionResult		 
Index		 "
(		" #
)		# $
{

 	
return 
Content 
( 
$str *
)* +
;+ ,
} 	
[ 	
Route	 
( 
$str 
) 
] 
public 
IActionResult 
About "
(" #
)# $
{ 	
return 
Content 
( 
$str *
)* +
;+ ,
} 	
[ 	
Route	 
( 
$str 
) 
] 
public 
IActionResult 
Contact $
($ %
)% &
{ 	
return 
Content 
( 
$str ,
), -
;- .
} 	
} 
} œL
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Controllers\HomeController.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Controllers &
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
ITestDependency (
_testDependency) 8
;8 9
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
	ITagCache "
	_tagCache# ,
;, -
private 
readonly &
IContentItemDisplayManager 3
_contentDisplay4 C
;C D
public 
HomeController 
( 
ITestDependency 
testDependency *
,* +
IContentManager 
contentManager *
,* +
IShapeFactory 
shapeFactory &
,& '
ISession 
session 
, 
ILogger 
< 
HomeController "
>" #
logger$ *
,* +
	ITagCache   
tagCache   
,   &
IContentItemDisplayManager!! &
contentDisplay!!' 5
)!!5 6
{"" 	
_session## 
=## 
session## 
;## 
_testDependency$$ 
=$$ 
testDependency$$ ,
;$$, -
_contentManager%% 
=%% 
contentManager%% ,
;%%, -
Shape&& 
=&& 
shapeFactory&&  
;&&  !
_logger'' 
='' 
logger'' 
;'' 
	_tagCache(( 
=(( 
tagCache((  
;((  !
_contentDisplay)) 
=)) 
contentDisplay)) ,
;)), -
}** 	
private,, 
dynamic,, 
Shape,, 
{,, 
get,,  #
;,,# $
set,,% (
;,,( )
},,* +
public.. 
ActionResult.. 
Index.. !
(..! "
).." #
{// 	
return00 
View00 
(00 
)00 
;00 
}11 	
[33 	
HttpPost33	 
]33 
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
Index44) .
(44. /
string44/ 5
text446 :
)44: ;
{55 	
var66 
contentItem66 
=66 
await66 #
_contentManager66$ 3
.663 4
NewAsync664 <
(66< =
$str66= B
)66B C
;66C D
contentItem99 
.99 
Content99 
.99  
TestContentPartA99  0
.990 1
Line991 5
=996 7
text998 <
+99= >
$str99? E
;99E F
var<< 
testPart<< 
=<< 
contentItem<< &
.<<& '
As<<' )
<<<) *
TestContentPartA<<* :
><<: ;
(<<; <
)<<< =
;<<= >
testPart== 
.== 
Line== 
=== 
text==  
;==  !
contentItem>> 
.>> 
Apply>> 
(>> 
testPart>> &
)>>& '
;>>' (
contentItemAA 
.AA 
AlterAA 
<AA 
TestContentPartAAA .
>AA. /
(AA/ 0
xAA0 1
=>AA2 4
xAA5 6
.AA6 7
LineAA7 ;
=AA< =
textAA> B
)AAB C
;AAC D
awaitCC 
_contentManagerCC !
.CC! "
CreateAsyncCC" -
(CC- .
contentItemCC. 9
)CC9 :
;CC: ;
_loggerEE 
.EE 
LogInformationEE "
(EE" #
$strEE# 5
)EE5 6
;EE6 7
returnGG 
RedirectToActionGG #
(GG# $
$strGG$ -
,GG- .
$strGG/ 5
,GG5 6
newGG7 :
{GG; <
areaGG= A
=GGB C
$strGGD V
,GGV W
contentItemIdGGX e
=GGf g
contentItemGGh s
.GGs t
ContentItemId	GGt Å
}
GGÇ É
)
GGÉ Ñ
;
GGÑ Ö
}HH 	
publicJJ 
ActionResultJJ 
TagJJ 
(JJ  
)JJ  !
{KK 	
returnLL 
ViewLL 
(LL 
)LL 
;LL 
}MM 	
[OO 	
HttpPostOO	 
]OO 
publicPP 
asyncPP 
TaskPP 
<PP 
ActionResultPP &
>PP& '
TagPP( +
(PP+ ,
stringPP, 2
tagPP3 6
)PP6 7
{QQ 	
awaitRR 
	_tagCacheRR 
.RR 
RemoveTagAsyncRR *
(RR* +
tagRR+ .
)RR. /
;RR/ 0
returnSS 
RedirectToActionSS #
(SS# $
$strSS$ )
,SS) *
$strSS+ 1
,SS1 2
newSS3 6
{SS7 8
areaSS9 =
=SS> ?
$strSS@ R
}SSS T
)SST U
;SSU V
}TT 	
publicVV 
asyncVV 
TaskVV 
<VV 
ActionResultVV &
>VV& '
DisplayVV( /
(VV/ 0
stringVV0 6
contentItemIdVV7 D
)VVD E
{WW 	
varXX 
contentItemXX 
=XX 
awaitXX #
_contentManagerXX$ 3
.XX3 4
GetAsyncXX4 <
(XX< =
contentItemIdXX= J
)XXJ K
;XXK L
ifZZ 
(ZZ 
contentItemZZ 
==ZZ 
nullZZ #
)ZZ# $
{[[ 
return\\ 
NotFound\\ 
(\\  
)\\  !
;\\! "
}]] 
return__ 
View__ 
(__ 
$str__ !
,__! "
contentItem__# .
)__. /
;__/ 0
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
ActionResultbb &
>bb& '
DisplayShapebb( 4
(bb4 5
stringbb5 ;
contentItemIdbb< I
)bbI J
{cc 	
vardd 
contentItemdd 
=dd 
awaitdd #
_contentManagerdd$ 3
.dd3 4
GetAsyncdd4 <
(dd< =
contentItemIddd= J
)ddJ K
;ddK L
ifff 
(ff 
contentItemff 
==ff 
nullff #
)ff# $
{gg 
returnhh 
NotFoundhh 
(hh  
)hh  !
;hh! "
}ii 
varkk 
shapekk 
=kk 
Shapekk 
.ll 
Fooll 
(ll 
)ll 
.mm 
Linemm 
(mm 
contentItemmm !
.mm! "
Asmm" $
<mm$ %
TestContentPartAmm% 5
>mm5 6
(mm6 7
)mm7 8
.mm8 9
Linemm9 =
)mm= >
;mm> ?
returnoo 
Viewoo 
(oo 
shapeoo 
)oo 
;oo 
}pp 	
publicrr 
ActionResultrr 
Rawrr 
(rr  
)rr  !
{ss 	
returntt 
Viewtt 
(tt 
)tt 
;tt 
}uu 	
publicww 
ActionResultww 
Cacheww !
(ww! "
)ww" #
{xx 	
returnyy 
Viewyy 
(yy 
)yy 
;yy 
}zz 	
public|| 
string|| 
	GCCollect|| 
(||  
)||  !
{}} 	
GC~~ 
.~~ 
Collect~~ 
(~~ 
)~~ 
;~~ 
return 
$str 
; 
}
ÄÄ 	
public
ÇÇ 
ActionResult
ÇÇ 

IndexError
ÇÇ &
(
ÇÇ& '
)
ÇÇ' (
{
ÉÉ 	
throw
ÑÑ 
new
ÑÑ 
	Exception
ÑÑ 
(
ÑÑ  
$str
ÑÑ  +
)
ÑÑ+ ,
;
ÑÑ, -
}
ÖÖ 	
public
áá 
string
áá 

CreateTask
áá  
(
áá  !
)
áá! "
{
àà 	

ShellScope
ââ 
.
ââ 
AddDeferredTask
ââ &
(
ââ& '
scope
ââ' ,
=>
ââ- /
{
ää 
var
ãã 
logger
ãã 
=
ãã 
scope
ãã "
.
ãã" #
ServiceProvider
ãã# 2
.
ãã2 3

GetService
ãã3 =
<
ãã= >
ILogger
ãã> E
<
ããE F
HomeController
ããF T
>
ããT U
>
ããU V
(
ããV W
)
ããW X
;
ããX Y
logger
åå 
.
åå 
LogError
åå 
(
åå  
$str
åå  <
)
åå< =
;
åå= >
return
çç 
Task
çç 
.
çç 
CompletedTask
çç )
;
çç) *
}
éé 
)
éé 
;
éé 
return
êê 
$str
êê #
;
êê# $
}
ëë 	
public
ìì 
IActionResult
ìì 
ShapePerformance
ìì -
(
ìì- .
)
ìì. /
{
îî 	
return
ïï 
View
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 	
}
óó 
}òò ±D
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Controllers\TodoController.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Controllers &
{		 
public

 

class

 
TodoController

 
:

  !

Controller

" ,
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
Entities !
.! "
IIdGenerator" .
_idGenerator/ ;
;; <
public 
TodoController 
( 
ISession &
session' .
,. /
Entities0 8
.8 9
IIdGenerator9 E
idGeneratorF Q
)Q R
{ 	
_session 
= 
session 
; 
_idGenerator 
= 
idGenerator &
;& '
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
list 
= 
( 
await 
_session &
.& '
Query' ,
<, -
	TodoModel- 6
>6 7
(7 8
)8 9
.9 :
	ListAsync: C
(C D
)D E
)E F
. 
Select 
( 
m 
=> 
new  
TodoViewModel! .
(. /
)/ 0
{ 
TodoId 
= 
m 
. 
TodoId %
,% &
Text 
= 
m 
. 
Text !
,! "
DueDate 
= 
m 
.  
DueDate  '
,' (
IsCompleted 
=  !
m" #
.# $
IsCompleted$ /
} 
) 
. 
ToList 
( 
) 
; 
return!! 
View!! 
(!! 
list!! 
)!! 
;!! 
}"" 	
public$$ 
IActionResult$$ 
Create$$ #
($$# $
)$$$ %
{%% 	
var&& 
	viewModel&& 
=&& 
new&& 
TodoViewModel&&  -
(&&- .
)&&. /
;&&/ 0
	viewModel'' 
.'' 
TodoId'' 
='' 
_idGenerator'' +
.''+ ,
GenerateUniqueId'', <
(''< =
)''= >
;''> ?
	viewModel(( 
.(( 
DisplayMode(( !
=((" #
$str(($ *
;((* +
return)) 
View)) 
()) 
$str)) 
,)) 
	viewModel))  )
)))) *
;))* +
}** 	
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
Edit,,) -
(,,- .
string,,. 4
todoId,,5 ;
),,; <
{-- 	
var.. 
model.. 
=.. 
(.. 
await.. 
_session.. '
...' (
Query..( -
<..- .
	TodoModel... 7
>..7 8
(..8 9
)..9 :
...: ;
	ListAsync..; D
(..D E
)..E F
)..F G
.// 
Where// 
(// 
m// 
=>// 
m// 
.// 
TodoId// $
==//% '
todoId//( .
)//. /
.00 
FirstOrDefault00 
(00  
)00  !
;00! "
if22 
(22 
model22 
==22 
null22 
)22 
{33 
return44 
NotFound44 
(44  
)44  !
;44! "
}55 
var77 
	viewModel77 
=77 
new77 
TodoViewModel77  -
(77- .
)77. /
{88 
TodoId99 
=99 
model99 
.99 
TodoId99 %
,99% &
Text:: 
=:: 
model:: 
.:: 
Text:: !
,::! "
DueDate;; 
=;; 
model;; 
.;;  
DueDate;;  '
,;;' (
IsCompleted<< 
=<< 
model<< #
.<<# $
IsCompleted<<$ /
,<</ 0
DisplayMode== 
=== 
$str== $
}>> 
;>> 
return@@ 
View@@ 
(@@ 
	viewModel@@ !
)@@! "
;@@" #
}AA 	
[CC 	
HttpPostCC	 
]CC 
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (
UpdateDD) /
(DD/ 0
TodoViewModelDD0 =
	viewModelDD> G
,DDG H
stringDDI O
	returnUrlDDP Y
=DDZ [
$strDD\ ^
)DD^ _
{EE 	
ifFF 
(FF 

ModelStateFF 
.FF 
IsValidFF "
)FF" #
{GG 
varHH 
modelHH 
=HH 
(HH 
awaitHH "
_sessionHH# +
.HH+ ,
QueryHH, 1
<HH1 2
	TodoModelHH2 ;
>HH; <
(HH< =
)HH= >
.HH> ?
	ListAsyncHH? H
(HHH I
)HHI J
)HHJ K
.II 
WhereII 
(II 
mII 
=>II 
mII  !
.II! "
TodoIdII" (
==II) +
	viewModelII, 5
.II5 6
TodoIdII6 <
)II< =
.JJ 
FirstOrDefaultJJ #
(JJ# $
)JJ$ %
;JJ% &
ifLL 
(LL 
modelLL 
==LL 
nullLL !
)LL! "
{MM 
modelNN 
=NN 
newNN 
	TodoModelNN  )
(NN) *
)NN* +
{NN, -
TodoIdNN. 4
=NN5 6
	viewModelNN7 @
.NN@ A
TodoIdNNA G
}NNH I
;NNI J
}OO 
modelQQ 
.QQ 
TextQQ 
=QQ 
	viewModelQQ &
.QQ& '
TextQQ' +
;QQ+ ,
modelRR 
.RR 
DueDateRR 
=RR 
	viewModelRR  )
.RR) *
DueDateRR* 1
;RR1 2
modelSS 
.SS 
IsCompletedSS !
=SS" #
	viewModelSS$ -
.SS- .
IsCompletedSS. 9
;SS9 :
_sessionUU 
.UU 
SaveUU 
(UU 
modelUU #
)UU# $
;UU$ %
ifWW 
(WW 
UrlWW 
.WW 

IsLocalUrlWW "
(WW" #
	returnUrlWW# ,
)WW, -
)WW- .
{XX 
returnYY 
RedirectYY #
(YY# $
	returnUrlYY$ -
)YY- .
;YY. /
}ZZ 
return\\ 
RedirectToAction\\ '
(\\' (
$str\\( /
,\\/ 0
$str\\1 7
)\\7 8
;\\8 9
}]] 
return__ 
View__ 
(__ 
	viewModel__ !
)__! "
;__" #
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
IActionResultbb '
>bb' (
Deletebb) /
(bb/ 0
stringbb0 6
todoIdbb7 =
)bb= >
{cc 	
vardd 
modeldd 
=dd 
(dd 
awaitdd 
_sessiondd '
.dd' (
Querydd( -
<dd- .
	TodoModeldd. 7
>dd7 8
(dd8 9
)dd9 :
.dd: ;
	ListAsyncdd; D
(ddD E
)ddE F
)ddF G
.ee 
Whereee 
(ee 
mee 
=>ee 
mee 
.ee 
TodoIdee $
==ee% '
todoIdee( .
)ee. /
.ff 
FirstOrDefaultff 
(ff  
)ff  !
;ff! "
ifhh 
(hh 
modelhh 
==hh 
nullhh 
)hh 
{ii 
returnjj 
NotFoundjj 
(jj  
)jj  !
;jj! "
}kk 
_sessionmm 
.mm 
Deletemm 
(mm 
modelmm !
)mm! "
;mm" #
returnoo 
RedirectToActionoo #
(oo# $
$stroo$ +
,oo+ ,
$stroo- 3
)oo3 4
;oo4 5
}pp 	
}qq 
}rr ã%
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Drivers\UserProfileDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Drivers "
{ 
public 

class $
UserProfileDisplayDriver )
:* + 
SectionDisplayDriver, @
<@ A
UserA E
,E F
UserProfileG R
>R S
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public $
UserProfileDisplayDriver '
(' ( 
IHttpContextAccessor( <
httpContextAccessor= P
,P Q!
IAuthorizationServiceR g 
authorizationServiceh |
)| }
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
UserProfile, 7
profile8 ?
,? @
BuildEditorContextA S
contextT [
)[ \
{ 	
return 

Initialize 
< $
EditUserProfileViewModel 6
>6 7
(7 8
$str8 J
,J K
modelL Q
=>R T
{ 
model 
. 
Age 
= 
profile #
.# $
Age$ '
;' (
model 
. 
	FirstName 
=  !
profile" )
.) *
	FirstName* 3
;3 4
model 
. 
LastName 
=  
profile! (
.( )
LastName) 1
;1 2
}   
)   
.!! 
Location!! 
(!! 
$str!! !
)!!! "
."" 

RenderWhen"" 
("" 
("" 
)"" 
=>"" !
_authorizationService"" 3
.""3 4
AuthorizeAsync""4 B
(""B C 
_httpContextAccessor""C W
.""W X
HttpContext""X c
.""c d
User""d h
,""h i
Permissions""j u
.""u v!
ManageOwnUserProfile	""v ä
)
""ä ã
)
""ã å
;
""å ç
}## 	
public%% 
override%% 
async%% 
Task%% "
<%%" #
IDisplayResult%%# 1
>%%1 2
UpdateAsync%%3 >
(%%> ?
UserProfile%%? J
profile%%K R
,%%R S
BuildEditorContext%%T f
context%%g n
)%%n o
{&& 	
if'' 
('' 
!'' 
await'' !
_authorizationService'' ,
.'', -
AuthorizeAsync''- ;
(''; < 
_httpContextAccessor''< P
.''P Q
HttpContext''Q \
.''\ ]
User''] a
,''a b
Permissions''c n
.''n o!
ManageOwnUserProfile	''o É
)
''É Ñ
)
''Ñ Ö
{(( 
return)) 
Edit)) 
()) 
profile)) #
,))# $
context))% ,
))), -
;))- .
}** 
var,, 
model,, 
=,, 
new,, $
EditUserProfileViewModel,, 4
(,,4 5
),,5 6
;,,6 7
if.. 
(.. 
await.. 
context.. 
... 
Updater.. %
...% &
TryUpdateModelAsync..& 9
(..9 :
model..: ?
,..? @
Prefix..A G
)..G H
)..H I
{// 
profile00 
.00 
Age00 
=00 
model00 #
.00# $
Age00$ '
;00' (
profile11 
.11 
	FirstName11 !
=11" #
model11$ )
.11) *
	FirstName11* 3
;113 4
profile22 
.22 
LastName22  
=22! "
model22# (
.22( )
LastName22) 1
;221 2
profile33 
.33 
	UpdatedAt33 !
=33" #
DateTime33$ ,
.33, -
UtcNow33- 3
;333 4
}44 
return66 
Edit66 
(66 
profile66 
,66  
context66! (
)66( )
;66) *
}77 	
}88 
}99 î

êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\GraphQL\AliasQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
GraphQL "
{ 
public 

class 
TestQueryObjectType $
:% &
ObjectGraphType' 6
<6 7
TestContentPartA7 G
>G H
{ 
public 
TestQueryObjectType "
(" #
)# $
{		 	
Name

 
=

 
$str

 %
;

% &
Field 
( 
$str 
, 
x 
=> 
x  
.  !
Line! %
,% &
true' +
)+ ,
;, -
Field 
( 
$str 
,  
x! "
=># %
x& '
.' (
Line( ,
,, -
true. 2
)2 3
;3 4
Field 
( 
$str $
,$ %
x& '
=>( *
x+ ,
., -
Line- 1
,1 2
true3 7
)7 8
;8 9
} 	
} 
} Ì1
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
GraphQL "
{ 
[		 
RequireFeatures		 
(		 
$str		 /
)		/ 0
]		0 1
public

 

class

 
Startup

 
:

 
StartupBase

 &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	Configure 
< !
GraphQLContentOptions 4
>4 5
(5 6
options6 =
=>> @
{ 
options 
. 
ContentTypeOptions *
=+ ,
options- 4
.4 5
ContentTypeOptions5 G
.G H
UnionH M
(M N
newN Q
[Q R
]R S
{T U
new $
GraphQLContentTypeOption 4
(4 5
$str5 ;
); <
{ 
Collapse $
=% &
false' ,
,, -
Hidden "
=# $
false% *
,* +
PartOptions '
=( )
new* -$
GraphQLContentPartOption. F
[F G
]G H
{I J
new  #$
GraphQLContentPartOption$ <
(< =
$str= O
)O P
{  !
Collapse$ ,
=- .
false/ 4
,4 5
Hidden$ *
=+ ,
false- 2
}  !
,! "
new  #$
GraphQLContentPartOption$ <
<< =
TestContentPartA= M
>M N
{  !
Collapse$ ,
=- .
false/ 4
,4 5
Hidden  $ *
=  + ,
false  - 2
}!!  !
}"" 
}## 
}$$ 
)%% 
;%% 
options'' 
.''  
ConfigureContentType'' ,
('', -
$str''- 3
,''3 4
(''5 6

typeConfig''6 @
)''@ A
=>''B D
{(( 

typeConfig)) 
.)) 
Collapse)) '
=))( )
false))* /
;))/ 0

typeConfig** 
.** 
Hidden** %
=**& '
false**( -
;**- .

typeConfig,, 
.-- 
ConfigurePart-- &
(--& '
$str--' 9
,--9 :
(--; <

partConfig--< F
)--F G
=>--H J
{.. 

partConfig// &
.//& '
Collapse//' /
=//0 1
false//2 7
;//7 8

partConfig00 &
.00& '
Hidden00' -
=00. /
false000 5
;005 6
}11 
)11 
.22 
ConfigurePart22 &
<22& '
TestContentPartA22' 7
>227 8
(228 9
(229 :

partConfig22: D
)22D E
=>22F H
{33 

partConfig44 &
.44& '
Collapse44' /
=440 1
false442 7
;447 8

partConfig55 &
.55& '
Hidden55' -
=55. /
false550 5
;555 6
}66 
)66 
;66 
}77 
)77 
;77 
options:: 
.:: 
HiddenFields:: $
=::% &
options::' .
.::. /
HiddenFields::/ ;
.::; <
Union::< A
(::A B
new::B E
[::E F
]::F G
{::H I
new;; 
GraphQLField;; $
(;;$ %
typeof;;% +
(;;+ ,
TestQueryObjectType;;, ?
);;? @
,;;@ A
$str;;B O
);;O P
,;;P Q
new<< 
GraphQLField<< $
<<<$ %
TestQueryObjectType<<% 8
><<8 9
(<<9 :
$str<<: L
)<<L M
}== 
)== 
;== 
options?? 
.@@ 
IgnoreField@@  
(@@  !
typeof@@! '
(@@' (
TestQueryObjectType@@( ;
)@@; <
,@@< =
$str@@> K
)@@K L
.AA 
IgnoreFieldAA  
<AA  !
TestQueryObjectTypeAA! 4
>AA4 5
(AA5 6
$strAA6 C
)AAC D
;AAD E
optionsDD 
.DD 
PartOptionsDD #
=DD$ %
optionsDD& -
.DD- .
PartOptionsDD. 9
.DD9 :
UnionDD: ?
(DD? @
newDD@ C
[DDC D
]DDD E
{DDF G
newEE $
GraphQLContentPartOptionEE 0
(EE0 1
$strEE1 C
)EEC D
{FF 
CollapseGG  
=GG! "
falseGG# (
,GG( )
HiddenHH 
=HH  
falseHH! &
}II 
,II 
newJJ $
GraphQLContentPartOptionJJ 0
<JJ0 1
TestContentPartAJJ1 A
>JJA B
{KK 
CollapseLL  
=LL! "
falseLL# (
,LL( )
HiddenMM 
=MM  
falseMM! &
}NN 
}OO 
)OO 
;OO 
optionsQQ 
.RR 
ConfigurePartRR "
(RR" #
$strRR# 5
,RR5 6
(RR7 8

partConfigRR8 B
)RRB C
=>RRD F
{SS 

partConfigTT "
.TT" #
CollapseTT# +
=TT, -
falseTT. 3
;TT3 4

partConfigUU "
.UU" #
HiddenUU# )
=UU* +
falseUU, 1
;UU1 2
}VV 
)VV 
.WW 
ConfigurePartWW "
<WW" #
TestContentPartAWW# 3
>WW3 4
(WW4 5
(WW5 6

partConfigWW6 @
)WW@ A
=>WWB D
{XX 

partConfigYY "
.YY" #
CollapseYY# +
=YY, -
falseYY. 3
;YY3 4

partConfigZZ "
.ZZ" #
HiddenZZ# )
=ZZ* +
falseZZ, 1
;ZZ1 2
}[[ 
)[[ 
;[[ 
}\\ 
)\\ 
;\\ 
}]] 	
}^^ 
}__ Ë
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str 
, 
Category		 
=		 
$str		 
,		 
Dependencies

 
=

 
new

 
[

 
]

 
{

 
$str

 .
,

. /
$str

0 F
}

G H
) 
] Œ
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Middlewares\BlockingMiddleware.cs
	namespace 	
OrchardCore
 
. 
Demo 
{ 
public 

class 
BlockingMiddleware #
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public

 
BlockingMiddleware

 !
(

! "
RequestDelegate

" 1
next

2 6
)

6 7
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
httpContext- 8
)8 9
{ 	
if 
( 
httpContext 
. 
Request #
.# $
Path$ (
.( )
Value) .
==/ 1
$str2 ?
)? @
{ 
await 
httpContext !
.! "
Response" *
.* +

WriteAsync+ 5
(5 6
$str6 B
)B C
;C D
} 
else 
{ 
await 
_next 
. 
Invoke "
(" #
httpContext# .
). /
;/ 0
} 
} 	
} 
} ƒ	
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Middlewares\NonBlockingMiddleware.cs
	namespace 	
OrchardCore
 
. 
Demo 
{ 
public 

class !
NonBlockingMiddleware &
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public

 !
NonBlockingMiddleware

 $
(

$ %
RequestDelegate

% 4
next

5 9
)

9 :
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
httpContext- 8
)8 9
{ 	
httpContext 
. 
Response  
.  !
Headers! (
[( )
$str) 2
]2 3
=4 5
$str6 ;
;; <
await 
_next 
. 
Invoke 
( 
httpContext *
)* +
;+ ,
} 	
} 
} µ

~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Migrations.cs
	namespace 	
OrchardCore
 
. 
Demo 
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public

 

Migrations

 
(

 %
IContentDefinitionManager

 3$
contentDefinitionManager

4 L
)

L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterTypeDefinition& 9
(9 :
$str: ?
,? @
builderA H
=>I K
builderL S
. 
WithPart 
( 
$str ,
), -
. 
WithPart 
( 
$str ,
), -
) 
; 
return 
$num 
; 
} 	
} 
} ø
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Models\CustomViewModel.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Models !
{ 
public 

class 
CustomViewModel  
:! "
ShapeViewModel# 1
{ 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 à
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Models\FakeShape.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Models !
{ 
public 

class 
	FakeShape 
{ 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ß
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Models\HomeViewModel.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Models !
{ 
public 

class 
HomeViewModel 
{ 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public 
dynamic 
Foo 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ô
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Models\TestContentField.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Models !
{ 
public 

class 
TestContentField !
:" #
ContentField$ 0
{ 
public 
string 
Text 
; 
} 
}		 ‡
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Models\TestContentPartA.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Models !
{ 
public 

class 
TestContentPartA !
:" #
ContentPart$ /
{ 
public 
ShapeMetadata 
Metadata %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
string		 
Line		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} ¡
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Models\TestContentPartAShape.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Models !
{ 
public 

class !
TestContentPartAShape &
:' (
Shape) .
{ 
public 
string 
Line 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 €
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Models\TodoModel.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Models !
{ 
public 

class 
	TodoModel 
{ 
public 
string 
TodoId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
public		 
DateTime		 
DueDate		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
bool

 
IsCompleted

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
} 
} ﬂ
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Models\UserProfile.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Models !
{ 
public 

class 
UserProfile 
{ 
public 
int 
Age 
{ 
get 
; 
set !
;! "
}# $
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
LastName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
DateTime

 
	UpdatedAt

 !
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
. /
} 
} Ú
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Permissions.cs
	namespace 	
OrchardCore
 
. 
Demo 
{ 
public		 

class		 
Permissions		 
:		 
IPermissionProvider		 2
{

 
public 
static 
readonly 

Permission )
DemoAPIAccess* 7
=8 9
new: =

Permission> H
(H I
$strI X
,X Y
$strZ o
)o p
;p q
public 
static 
readonly 

Permission ) 
ManageOwnUserProfile* >
=? @
newA D

PermissionE O
(O P
$strP f
,f g
$str	h Å
,
Å Ç
new
É Ü

Permission
á ë
[
ë í
]
í ì
{
î ï
CommonPermissions
ñ ß
.
ß ®
ManageUsers
® ≥
}
≥ ¥
)
¥ µ
;
µ ∂
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{) *
DemoAPIAccess+ 8
,8 9 
ManageOwnUserProfile: N
}O P
.P Q
AsEnumerableQ ]
(] ^
)^ _
)_ `
;` a
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{) *
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
DemoAPIAccess* 7
}8 9
} 
, 
new  
PermissionStereotype (
{) *
Name 
= 
$str #
,# $
Permissions 
=  !
new" %
[% &
]& '
{( ) 
ManageOwnUserProfile* >
}? @
} 
, 
new  
PermissionStereotype (
{) *
Name   
=   
$str   &
,  & '
Permissions!! 
=!!  !
new!!" %
[!!% &
]!!& '
{!!( ) 
ManageOwnUserProfile!!* >
}!!? @
}"" 
,"" 
new##  
PermissionStereotype## (
{##) *
Name$$ 
=$$ 
$str$$ (
,$$( )
Permissions%% 
=%%  !
new%%" %
[%%% &
]%%& '
{%%( ) 
ManageOwnUserProfile%%* >
}%%? @
}&& 
,&& 
new''  
PermissionStereotype'' (
{'') *
Name(( 
=(( 
$str(( #
,((# $
Permissions)) 
=))  !
new))" %
[))% &
]))& '
{))( ) 
ManageOwnUserProfile))* >
}))? @
}** 
}++ 
;++ 
},, 	
}-- 
}.. è
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Services\TestBackgroundTask.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Services #
{ 
public 

class 
TestBackgroundTask #
:$ %
IBackgroundTask& 5
{		 
private

 
int

 
_count

 
;

 
public 
Task 
DoWorkAsync 
(  
IServiceProvider  0
serviceProvider1 @
,@ A
CancellationTokenB S
cancellationTokenT e
)e f
{ 	
_count 
++ 
; 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ˘

ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Services\TestDependency.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Services #
{ 
public 

	interface 
ITestDependency $
{ 
string 
SayHi 
( 
string 
line  
)  !
;! "
} 
public

 

class

 
ClassFoo

 
:

 
ITestDependency

 +
{ 
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
public 
ClassFoo 
( 
ShellSettings %
shellSettings& 3
)3 4
{ 	
_shellSettings 
= 
shellSettings *
;* +
} 	
public 
string 
SayHi 
( 
string "
line# '
)' (
{ 	
return 
string 
. 
Format  
(  !
$str! ;
,; <
_shellSettings= K
.K L
NameL P
,P Q
lineR V
)V W
;W X
} 	
} 
} ∑*
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Services\UserProfileClaimsProvider.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 
Services #
{ 
internal 
class %
UserProfileClaimsProvider ,
:- .
IUserClaimsProvider/ B
{ 
public 
Task 
GenerateAsync !
(! "
IUser" '
user( ,
,, -
ClaimsIdentity. <
claims= C
)C D
{ 	
if 
( 
user 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
user7 ;
); <
)< =
;= >
} 
if 
( 
claims 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
claims7 =
)= >
)> ?
;? @
} 
var 
u 
= 
user 
as 
User  
;  !
var 
profile 
= 
u 
. 
As 
< 
UserProfile *
>* +
(+ ,
), -
;- .
claims 
. 
AddClaim 
( 
new 
Claim  %
(% &
$str& :
,: ;
user< @
.@ A
UserNameA I
)I J
)J K
;K L
var   
name   
=   
$str   
;   
if!! 
(!! 
!!! 
string!! 
.!! 
IsNullOrEmpty!! %
(!!% &
profile!!& -
.!!- .
	FirstName!!. 7
)!!7 8
)!!8 9
{"" 
claims## 
.## 
AddClaim## 
(##  
new##  #
Claim##$ )
(##) *
$str##* 6
,##6 7
profile##8 ?
.##? @
	FirstName##@ I
)##I J
)##J K
;##K L
name$$ 
+=$$ 
profile$$ 
.$$  
	FirstName$$  )
;$$) *
}%% 
if'' 
('' 
!'' 
string'' 
.'' 
IsNullOrEmpty'' %
(''% &
profile''& -
.''- .
LastName''. 6
)''6 7
)''7 8
{(( 
claims)) 
.)) 
AddClaim)) 
())  
new))  #
Claim))$ )
())) *
$str))* 7
,))7 8
profile))9 @
.))@ A
LastName))A I
)))I J
)))J K
;))K L
name** 
+=** 
$"** 
{** 
profile** #
.**# $
LastName**$ ,
}**, -
"**- .
;**. /
}++ 
if-- 
(-- 
!-- 
string-- 
.-- 
IsNullOrEmpty-- %
(--% &
name--& *
)--* +
)--+ ,
{.. 
claims// 
.// 
AddClaim// 
(//  
new//  #
Claim//$ )
(//) *
$str//* 0
,//0 1
name//2 6
)//6 7
)//7 8
;//8 9
}00 
if22 
(22 
profile22 
.22 
	UpdatedAt22 !
!=22" $
default22% ,
)22, -
{33 
claims44 
.44 
AddClaim44 
(44  
new44  #
Claim44$ )
(44) *
$str44* 6
,446 7"
ConvertToUnixTimestamp448 N
(44N O
profile44O V
.44V W
	UpdatedAt44W `
)44` a
.44a b
ToString44b j
(44j k
CultureInfo44k v
.44v w
InvariantCulture	44w á
)
44á à
)
44à â
)
44â ä
;
44ä ã
}55 
return77 
Task77 
.77 

FromResult77 "
(77" #
claims77# )
)77) *
;77* +
}88 	
public:: 
static:: 
double:: "
ConvertToUnixTimestamp:: 3
(::3 4
DateTime::4 <
date::= A
)::A B
{;; 	
var<< 
origin<< 
=<< 
new<< 
DateTime<< %
(<<% &
$num<<& *
,<<* +
$num<<, -
,<<- .
$num<</ 0
,<<0 1
$num<<2 3
,<<3 4
$num<<5 6
,<<6 7
$num<<8 9
,<<9 :
$num<<; <
,<<< =
DateTimeKind<<> J
.<<J K
Utc<<K N
)<<N O
;<<O P
var== 
diff== 
=== 
date== 
.== 
ToUniversalTime== +
(==+ ,
)==, -
-==. /
origin==0 6
;==6 7
return>> 
Math>> 
.>> 
Floor>> 
(>> 
diff>> "
.>>" #
TotalSeconds>># /
)>>/ 0
;>>0 1
}?? 	
}@@ 
}AA ˆ
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Shapes\BazTagHelper.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 

TagHelpers %
.% &
Intellisense& 2
{ 
public 

class 
BazTagHelper 
: 
	TagHelper  )
{ 
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
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
} 
} Î
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Shapes\DemoShapeProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

class 
DemoShapeProvider "
:# $
IShapeTableProvider% 8
,8 9#
IShapeAttributeProvider: Q
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
 "
)

" #
. 
OnDisplaying 
( 

displaying (
=>) +

displaying 
. 
ChildContent +
=, -
new. 1

HtmlString2 <
(< =
$str= J
)J K
) 
; 
} 	
[ 	
Shape	 
] 
public 
IHtmlContent 
Baz 
(  
string  &
text' +
,+ ,
int- 0
count1 6
)6 7
{ 	
var 
sb 
= 
new 
StringBuilder &
(& '
)' (
;( )
for 
( 
int 
i 
= 
$num 
; 
i 
< 
count  %
;% &
i' (
++( *
)* +
{ 
sb 
. 
Append 
( 
text 
) 
;  
} 
return 
new 

HtmlString !
(! "
sb" $
.$ %
ToString% -
(- .
). /
)/ 0
;0 1
} 	
} 
} ÕJ
{D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\Startup.cs
	namespace 	
OrchardCore
 
. 
Demo 
{ 
public   

class   
Startup   
:   
StartupBase   &
{!! 
private"" 
readonly"" 
AdminOptions"" %
_adminOptions""& 3
;""3 4
public$$ 
Startup$$ 
($$ 
IOptions$$ 
<$$  
AdminOptions$$  ,
>$$, -
adminOptions$$. :
)$$: ;
{%% 	
_adminOptions&& 
=&& 
adminOptions&& (
.&&( )
Value&&) .
;&&. /
}'' 	
public)) 
override)) 
void)) 
	Configure)) &
())& '
IApplicationBuilder))' :
builder)); B
,))B C!
IEndpointRouteBuilder))D Y
routes))Z `
,))` a
IServiceProvider))b r
serviceProvider	))s Ç
)
))Ç É
{** 	
routes++ 
.++ "
MapAreaControllerRoute++ )
(++) *
name,, 
:,, 
$str,, '
,,,' (
areaName-- 
:-- 
$str-- ,
,--, -
pattern.. 
:.. 
$str.. %
,..% &
defaults// 
:// 
new// 
{// 

controller//  *
=//+ ,
$str//- 3
,//3 4
action//5 ;
=//< =
$str//> E
}//F G
)00 
;00 
routes22 
.22 "
MapAreaControllerRoute22 )
(22) *
name33 
:33 
$str33 )
,33) *
areaName44 
:44 
$str44 ,
,44, -
pattern55 
:55 
$str55 7
,557 8
defaults66 
:66 
new66 
{66 

controller66  *
=66+ ,
$str66- 3
,663 4
action665 ;
=66< =
$str66> G
}66H I
)77 
;77 
routes99 
.99 "
MapAreaControllerRoute99 )
(99) *
name:: 
::: 
$str:: '
,::' (
areaName;; 
:;; 
$str;; ,
,;;, -
pattern<< 
:<< 
$str<< *
,<<* +
defaults== 
:== 
new== 
{== 

controller==  *
===+ ,
$str==- 3
,==3 4
action==5 ;
===< =
$str==> J
}==K L
)>> 
;>> 
var@@ #
demoAdminControllerName@@ '
=@@( )
typeof@@* 0
(@@0 1
AdminController@@1 @
)@@@ A
.@@A B
ControllerName@@B P
(@@P Q
)@@Q R
;@@R S
routesBB 
.BB "
MapAreaControllerRouteBB )
(BB) *
nameCC 
:CC 
$strCC "
,CC" #
areaNameDD 
:DD 
$strDD ,
,DD, -
patternEE 
:EE 
_adminOptionsEE &
.EE& '
AdminUrlPrefixEE' 5
+EE6 7
$strEE8 E
,EEE F
defaultsFF 
:FF 
newFF 
{FF 

controllerFF  *
=FF+ ,#
demoAdminControllerNameFF- D
,FFD E
actionFFF L
=FFM N
nameofFFO U
(FFU V
AdminControllerFFV e
.FFe f
IndexFFf k
)FFk l
}FFm n
)GG 
;GG 
varII %
demoContentControllerNameII )
=II* +
typeofII, 2
(II2 3
ContentControllerII3 D
)IID E
.IIE F
ControllerNameIIF T
(IIT U
)IIU V
;IIV W
routesKK 
.KK "
MapAreaControllerRouteKK )
(KK) *
nameLL 
:LL 
$strLL )
,LL) *
areaNameMM 
:MM 
$strMM ,
,MM, -
patternNN 
:NN 
_adminOptionsNN &
.NN& '
AdminUrlPrefixNN' 5
+NN6 7
$strNN8 L
,NNL M
defaultsOO 
:OO 
newOO 
{OO 

controllerOO  *
=OO+ ,%
demoContentControllerNameOO- F
,OOF G
actionOOH N
=OOO P
nameofOOQ W
(OOW X
ContentControllerOOX i
.OOi j
EditOOj n
)OOn o
}OOp q
)PP 
;PP 
builderRR 
.RR 
UseMiddlewareRR !
<RR! "!
NonBlockingMiddlewareRR" 7
>RR7 8
(RR8 9
)RR9 :
;RR: ;
builderSS 
.SS 
UseMiddlewareSS !
<SS! "
BlockingMiddlewareSS" 4
>SS4 5
(SS5 6
)SS6 7
;SS7 8
}TT 	
publicVV 
overrideVV 
voidVV 
ConfigureServicesVV .
(VV. /
IServiceCollectionVV/ A
servicesVVB J
)VVJ K
{WW 	
servicesXX 
.XX 
	AddScopedXX 
<XX 
ITestDependencyXX .
,XX. /
ClassFooXX0 8
>XX8 9
(XX9 :
)XX: ;
;XX; <
servicesYY 
.YY 
	AddScopedYY 
<YY 
ICommandHandlerYY .
,YY. /
DemoCommandsYY0 <
>YY< =
(YY= >
)YY> ?
;YY? @
servicesZZ 
.ZZ 
AddSingletonZZ !
<ZZ! "
IBackgroundTaskZZ" 1
,ZZ1 2
TestBackgroundTaskZZ3 E
>ZZE F
(ZZF G
)ZZG H
;ZZH I
services[[ 
.[[ 
	AddScoped[[ 
<[[ 
IShapeTableProvider[[ 2
,[[2 3
DemoShapeProvider[[4 E
>[[E F
([[F G
)[[G H
;[[H I
services\\ 
.\\ 
AddShapeAttributes\\ '
<\\' (
DemoShapeProvider\\( 9
>\\9 :
(\\: ;
)\\; <
;\\< =
services]] 
.]] 
	AddScoped]] 
<]] 
INavigationProvider]] 2
,]]2 3
	AdminMenu]]4 =
>]]= >
(]]> ?
)]]? @
;]]@ A
services^^ 
.^^ 
	AddScoped^^ 
<^^ !
IContentDisplayDriver^^ 4
,^^4 5+
TestContentElementDisplayDriver^^6 U
>^^U V
(^^V W
)^^W X
;^^X Y
services__ 
.__ 
	AddScoped__ 
<__ 
IDataMigration__ -
,__- .

Migrations__/ 9
>__9 :
(__: ;
)__; <
;__< =
services`` 
.`` 
	AddScoped`` 
<`` 
IPermissionProvider`` 2
,``2 3
Permissions``4 ?
>``? @
(``@ A
)``A B
;``B C
servicesaa 
.aa 
AddContentPartaa #
<aa# $
TestContentPartAaa$ 4
>aa4 5
(aa5 6
)aa6 7
;aa7 8
servicesbb 
.bb 
	AddScopedbb 
<bb 
IUserClaimsProviderbb 2
,bb2 3%
UserProfileClaimsProviderbb4 M
>bbM N
(bbN O
)bbO P
;bbP Q
servicesdd 
.dd 
	AddScopeddd 
<dd 
IDisplayDriverdd -
<dd- .
Userdd. 2
>dd2 3
,dd3 4$
UserProfileDisplayDriverdd5 M
>ddM N
(ddN O
)ddO P
;ddP Q
servicesff 
.ff 
	Configureff 
<ff 
RazorPagesOptionsff 0
>ff0 1
(ff1 2
optionsff2 9
=>ff: <
{gg 
optionsii 
.ii 
Conventionsii #
.ii# $
AddAreaFolderRouteii$ 6
(ii6 7
$strii7 I
,iiI J
$striiK N
,iiN O
$striiP V
)iiV W
;iiW X
optionsll 
.ll 
Conventionsll #
.ll# $#
AddAdminAreaFolderRoutell$ ;
(ll; <
$strll< N
,llN O
$strllP X
,llX Y
_adminOptionsllZ g
.llg h
AdminUrlPrefixllh v
+llw x
$str	lly Ä
)
llÄ Å
;
llÅ Ç
optionsoo 
.oo 
Conventionsoo #
.oo# $#
AddAdminAreaFolderRouteoo$ ;
(oo; <
$stroo< N
,ooN O
$strooP \
,oo\ ]
$stroo^ j
)ooj k
;ook l
optionsrr 
.rr 
Conventionsrr #
.rr# $
AddAreaPageRouterr$ 4
(rr4 5
$strrr5 G
,rrG H
$strrrI X
,rrX Y
_adminOptionsrrZ g
.rrg h
AdminUrlPrefixrrh v
+rrw x
$str	rry É
)
rrÉ Ñ
;
rrÑ Ö
optionsuu 
.uu 
Conventionsuu #
.uu# $
AddAreaPageRouteuu$ 4
(uu4 5
$struu5 G
,uuG H
$struuI Q
,uuQ R
$struuS Z
)uuZ [
;uu[ \
}yy 
)yy 
;yy 
services{{ 
.{{ 
AddTagHelpers{{ "
({{" #
typeof{{# )
({{) *
BazTagHelper{{* 6
){{6 7
.{{7 8
Assembly{{8 @
){{@ A
;{{A B
}|| 	
}}} 
}~~ √
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\TagHelpers\BazTagHelper.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 

TagHelpers %
{ 
[ 
HtmlTargetElement 
( 
$str 
) 
] 
public 

class 
BazTagHelper 
: 
BaseShapeTagHelper  2
{		 
public

 
BazTagHelper

 
(

 
IShapeFactory

 )
shapeFactory

* 6
,

6 7
IDisplayHelper

8 F
displayHelper

G T
)

T U
:

V W
base 
( 
shapeFactory 
, 
displayHelper ,
), -
{ 	
Type 
= 
$str 
; 
} 	
} 
} ‚
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\ViewModels\EditUserProfileViewModel.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 

ViewModels %
{ 
public 

class $
EditUserProfileViewModel )
{ 
public 
int 
Age 
{ 
get 
; 
set !
;! "
}# $
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 ¢
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Demo\ViewModels\TodoViewModel.cs
	namespace 	
OrchardCore
 
. 
Demo 
. 

ViewModels %
{ 
public 

class 
TodoViewModel 
:  
ShapeViewModel! /
{ 
public		 
TodoViewModel		 
(		 
)		 
{

 	
Metadata 
. 
Type 
= 
$str "
;" #
} 	
public 
string 
TodoId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
public 
string 
Text 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
DateTime 
DueDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
IsCompleted 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
DisplayMode !
{ 	
get 
{ 
return 
Metadata 
.  
DisplayType  +
;+ ,
} 
set 
{ 
var   
	alternate   
=   
$"    "
Todo_  " '
{  ' (
value  ( -
}  - .
"  . /
;  / 0
if!! 
(!! 
Metadata!! 
.!! 

Alternates!! '
.!!' (
Contains!!( 0
(!!0 1
	alternate!!1 :
)!!: ;
)!!; <
{"" 
if## 
(## 
Metadata##  
.##  !

Alternates##! +
.##+ ,
Last##, 0
==##1 3
	alternate##4 =
)##= >
{$$ 
return%% 
;%% 
}&& 
Metadata(( 
.(( 

Alternates(( '
.((' (
Remove((( .
(((. /
	alternate((/ 8
)((8 9
;((9 :
})) 
Metadata++ 
.++ 

Alternates++ #
.++# $
Add++$ '
(++' (
	alternate++( 1
)++1 2
;++2 3
Metadata,, 
.,, 
DisplayType,, $
=,,% &
value,,' ,
;,,, -
}-- 
}.. 	
}// 
}00 