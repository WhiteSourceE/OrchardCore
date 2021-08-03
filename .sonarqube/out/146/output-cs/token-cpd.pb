è
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\INavigationManager.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

	interface 
INavigationManager '
{ 
Task		 
<		 
IEnumerable		 
<		 
MenuItem		 !
>		! "
>		" #
BuildMenuAsync		$ 2
(		2 3
string		3 9
name		: >
,		> ?
ActionContext		@ M
context		N U
)		U V
;		V W
}

 
} ∞
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\INavigationProvider.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

	interface 
INavigationProvider (
{ 
Task  
BuildNavigationAsync !
(! "
string" (
name) -
,- .
NavigationBuilder/ @
builderA H
)H I
;I J
}		 
}

 ˇ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\MenuItem.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

class 
MenuItem 
{ 
public 
MenuItem 
( 
) 
{ 	
Permissions 
= 
new 
List "
<" #

Permission# -
>- .
(. /
)/ 0
;0 1
Classes 
= 
new 
List 
< 
string %
>% &
(& '
)' (
;( )
Items 
= 
new 
List 
< 
MenuItem %
>% &
(& '
)' (
;( )
LinkToFirstChild 
= 
true #
;# $
} 	
public 
LocalizedString 
Text #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public%% 
string%% 
Href%% 
{%% 
get%%  
;%%  !
set%%" %
;%%% &
}%%' (
public** 
string** 
Url** 
{** 
get** 
;**  
set**! $
;**$ %
}**& '
public// 
string// 
Position// 
{//  
get//! $
;//$ %
set//& )
;//) *
}//+ ,
public44 
int44 
Priority44 
{44 
get44 !
;44! "
set44# &
;44& '
}44( )
public99 
bool99 
LinkToFirstChild99 $
{99% &
get99' *
;99* +
set99, /
;99/ 0
}991 2
public>> 
bool>> 
LocalNav>> 
{>> 
get>> "
;>>" #
set>>$ '
;>>' (
}>>) *
publicCC 
stringCC 
CultureCC 
{CC 
getCC  #
;CC# $
setCC% (
;CC( )
}CC* +
[HH 	

JsonIgnoreHH	 
]HH 
publicII 
objectII 
ResourceII 
{II  
getII! $
;II$ %
setII& )
;II) *
}II+ ,
publicNN 
ListNN 
<NN 
MenuItemNN 
>NN 
ItemsNN #
{NN$ %
getNN& )
;NN) *
setNN+ .
;NN. /
}NN0 1
[SS 	

JsonIgnoreSS	 
]SS 
publicTT  
RouteValueDictionaryTT #
RouteValuesTT$ /
{TT0 1
getTT2 5
;TT5 6
setTT7 :
;TT: ;
}TT< =
[YY 	

JsonIgnoreYY	 
]YY 
publicZZ 
ListZZ 
<ZZ 

PermissionZZ 
>ZZ 
PermissionsZZ  +
{ZZ, -
getZZ. 1
;ZZ1 2
}ZZ3 4
public__ 
List__ 
<__ 
string__ 
>__ 
Classes__ #
{__$ %
get__& )
;__) *
}__+ ,
}`` 
}aa ´W
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\NavigationBuilder.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public		 

class		 
NavigationBuilder		 "
{

 
private 
List 
< 
MenuItem 
> 
	Contained (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
NavigationBuilder  
(  !
)! "
{ 	
	Contained 
= 
new 
List  
<  !
MenuItem! )
>) *
(* +
)+ ,
;, -
} 	
public 
async 
Task 
< 
NavigationBuilder +
>+ ,
AddAsync- 5
(5 6
LocalizedString6 E
captionF M
,M N
stringO U
positionV ^
,^ _
Func` d
<d e!
NavigationItemBuildere z
,z {
Task	| Ä
>
Ä Å
itemBuilder
Ç ç
,
ç é
IEnumerable
è ö
<
ö õ
string
õ °
>
° ¢
classes
£ ™
=
´ ¨
null
≠ ±
,
± ≤
int
≥ ∂
priority
∑ ø
=
¿ ¡
$num
¬ √
)
√ ƒ
{ 	
var 
childBuilder 
= 
new "!
NavigationItemBuilder# 8
(8 9
)9 :
;: ;
childBuilder 
. 
Caption  
(  !
caption! (
)( )
;) *
childBuilder 
. 
Position !
(! "
position" *
)* +
;+ ,
childBuilder 
. 
Priority !
(! "
priority" *
)* +
;+ ,
await 
itemBuilder 
( 
childBuilder *
)* +
;+ ,
	Contained 
. 
AddRange 
( 
childBuilder +
.+ ,
Build, 1
(1 2
)2 3
)3 4
;4 5
if 
( 
classes 
!= 
null 
)  
{ 
foreach 
( 
var 
	className &
in' )
classes* 1
)1 2
{ 
childBuilder    
.    !
AddClass  ! )
(  ) *
	className  * 3
)  3 4
;  4 5
}!! 
}"" 
return$$ 
this$$ 
;$$ 
}%% 	
public'' 
NavigationBuilder''  
Add''! $
(''$ %
LocalizedString''% 4
caption''5 <
,''< =
string''> D
position''E M
,''M N
Action''O U
<''U V!
NavigationItemBuilder''V k
>''k l
itemBuilder''m x
,''x y
IEnumerable	''z Ö
<
''Ö Ü
string
''Ü å
>
''å ç
classes
''é ï
=
''ñ ó
null
''ò ú
,
''ú ù
int
''û °
priority
''¢ ™
=
''´ ¨
$num
''≠ Æ
)
''Æ Ø
{(( 	
var)) 
childBuilder)) 
=)) 
new)) "!
NavigationItemBuilder))# 8
())8 9
)))9 :
;)): ;
childBuilder++ 
.++ 
Caption++  
(++  !
caption++! (
)++( )
;++) *
childBuilder,, 
.,, 
Position,, !
(,,! "
position,," *
),,* +
;,,+ ,
childBuilder-- 
.-- 
Priority-- !
(--! "
priority--" *
)--* +
;--+ ,
itemBuilder.. 
(.. 
childBuilder.. $
)..$ %
;..% &
	Contained// 
.// 
AddRange// 
(// 
childBuilder// +
.//+ ,
Build//, 1
(//1 2
)//2 3
)//3 4
;//4 5
if11 
(11 
classes11 
!=11 
null11 
)11  
{22 
foreach33 
(33 
var33 
	className33 &
in33' )
classes33* 1
)331 2
{44 
childBuilder55  
.55  !
AddClass55! )
(55) *
	className55* 3
)553 4
;554 5
}66 
}77 
return99 
this99 
;99 
}:: 	
public<< 
Task<< 
<<< 
NavigationBuilder<< %
><<% &
AddAsync<<' /
(<</ 0
LocalizedString<<0 ?
caption<<@ G
,<<G H
Func<<I M
<<<M N!
NavigationItemBuilder<<N c
,<<c d
Task<<e i
><<i j
itemBuilder<<k v
,<<v w
IEnumerable	<<x É
<
<<É Ñ
string
<<Ñ ä
>
<<ä ã
classes
<<å ì
=
<<î ï
null
<<ñ ö
)
<<ö õ
{== 	
return>> 
AddAsync>> 
(>> 
caption>> #
,>># $
null>>% )
,>>) *
itemBuilder>>+ 6
,>>6 7
classes>>8 ?
)>>? @
;>>@ A
}?? 	
public@@ 
Task@@ 
<@@ 
NavigationBuilder@@ %
>@@% &
AddAsync@@' /
(@@/ 0
Func@@0 4
<@@4 5!
NavigationItemBuilder@@5 J
,@@J K
Task@@L P
>@@P Q
itemBuilder@@R ]
,@@] ^
IEnumerable@@_ j
<@@j k
string@@k q
>@@q r
classes@@s z
=@@{ |
null	@@} Å
)
@@Å Ç
{AA 	
returnBB 
AddAsyncBB 
(BB 
newBB 
LocalizedStringBB  /
(BB/ 0
nullBB0 4
,BB4 5
nullBB6 :
)BB: ;
,BB; <
nullBB= A
,BBA B
itemBuilderBBC N
,BBN O
classesBBP W
)BBW X
;BBX Y
}CC 	
publicEE 
NavigationBuilderEE  
AddEE! $
(EE$ %
LocalizedStringEE% 4
captionEE5 <
,EE< =
ActionEE> D
<EED E!
NavigationItemBuilderEEE Z
>EEZ [
itemBuilderEE\ g
,EEg h
IEnumerableEEi t
<EEt u
stringEEu {
>EE{ |
classes	EE} Ñ
=
EEÖ Ü
null
EEá ã
)
EEã å
{FF 	
returnGG 
AddGG 
(GG 
captionGG 
,GG 
nullGG  $
,GG$ %
itemBuilderGG& 1
,GG1 2
classesGG3 :
)GG: ;
;GG; <
}HH 	
publicII 
NavigationBuilderII  
AddII! $
(II$ %
ActionII% +
<II+ ,!
NavigationItemBuilderII, A
>IIA B
itemBuilderIIC N
,IIN O
IEnumerableIIP [
<II[ \
stringII\ b
>IIb c
classesIId k
=IIl m
nullIIn r
)IIr s
{JJ 	
returnKK 
AddKK 
(KK 
newKK 
LocalizedStringKK *
(KK* +
nullKK+ /
,KK/ 0
nullKK1 5
)KK5 6
,KK6 7
nullKK8 <
,KK< =
itemBuilderKK> I
,KKI J
classesKKK R
)KKR S
;KKS T
}LL 	
publicNN 
NavigationBuilderNN  
AddNN! $
(NN$ %
LocalizedStringNN% 4
captionNN5 <
,NN< =
stringNN> D
positionNNE M
,NNM N
IEnumerableNNO Z
<NNZ [
stringNN[ a
>NNa b
classesNNc j
=NNk l
nullNNm q
)NNq r
{OO 	
returnPP 
AddPP 
(PP 
captionPP 
,PP 
positionPP  (
,PP( )
xPP* +
=>PP, .
{PP/ 0
}PP1 2
,PP2 3
classesPP4 ;
)PP; <
;PP< =
}QQ 	
publicRR 
NavigationBuilderRR  
AddRR! $
(RR$ %
LocalizedStringRR% 4
captionRR5 <
,RR< =
IEnumerableRR> I
<RRI J
stringRRJ P
>RRP Q
classesRRR Y
=RRZ [
nullRR\ `
)RR` a
{SS 	
returnTT 
AddTT 
(TT 
captionTT 
,TT 
nullTT  $
,TT$ %
xTT& '
=>TT( *
{TT+ ,
}TT- .
,TT. /
classesTT0 7
)TT7 8
;TT8 9
}UU 	
publicWW 
NavigationBuilderWW  
RemoveWW! '
(WW' (
MenuItemWW( 0
itemWW1 5
)WW5 6
{XX 	
	ContainedYY 
.YY 
RemoveYY 
(YY 
itemYY !
)YY! "
;YY" #
returnZZ 
thisZZ 
;ZZ 
}[[ 	
public]] 
NavigationBuilder]]  
Remove]]! '
(]]' (
	Predicate]]( 1
<]]1 2
MenuItem]]2 :
>]]: ;
match]]< A
)]]A B
{^^ 	
RemoveRecursive__ 
(__ 
	Contained__ %
,__% &
match__' ,
)__, -
;__- .
return`` 
this`` 
;`` 
}aa 	
publiccc 
virtualcc 
Listcc 
<cc 
MenuItemcc $
>cc$ %
Buildcc& +
(cc+ ,
)cc, -
{dd 	
returnee 
(ee 
	Containedee 
??ee  
newee! $
Listee% )
<ee) *
MenuItemee* 2
>ee2 3
(ee3 4
)ee4 5
)ee5 6
.ee6 7
ToListee7 =
(ee= >
)ee> ?
;ee? @
}ff 	
privatehh 
statichh 
voidhh 
RemoveRecursivehh +
(hh+ ,
Listhh, 0
<hh0 1
MenuItemhh1 9
>hh9 :
	menuItemshh; D
,hhD E
	PredicatehhF O
<hhO P
MenuItemhhP X
>hhX Y
matchhhZ _
)hh_ `
{ii 	
	menuItemsjj 
.jj 
	RemoveAlljj 
(jj  
matchjj  %
)jj% &
;jj& '
foreachkk 
(kk 
varkk 
menuItemkk !
inkk" $
	menuItemskk% .
)kk. /
{ll 
ifmm 
(mm 
menuItemmm 
.mm 
Itemsmm "
?mm" #
.mm# $
Countmm$ )
>mm* +
$nummm, -
)mm- .
{nn 
RemoveRecursiveoo #
(oo# $
menuItemoo$ ,
.oo, -
Itemsoo- 2
,oo2 3
matchoo4 9
)oo9 :
;oo: ;
}pp 
}qq 
}rr 	
}ss 
}tt „	
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\NavigationConstants.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

static 
class 
NavigationConstants +
{ 
public 
const 
string $
AdminMenuContentPosition 4
=5 6
$str7 :
;: ;
public 
const 
string #
AdminMenuDesignPosition 3
=4 5
$str6 9
;9 :
public 
const 
string #
AdminMenuSearchPosition 3
=4 5
$str6 9
;9 :
public 
const 
string %
AdminMenuSecurityPosition 5
=6 7
$str8 ;
;; <
public		 
const		 
string		 &
AdminMenuWorkflowsPosition		 6
=		7 8
$str		9 <
;		< =
public

 
const

 
string

 *
AdminMenuConfigurationPosition

 :
=

; <
$str

= B
;

B C
} 
} ‡
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\NavigationExtensions.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

static 
class  
NavigationExtensions ,
{ 
public 
const 
string #
AdminMenuPositionPrefix 3
=4 5
$str6 :
;: ;
public 
const 
string 
	Separator %
=& '
$str( +
;+ ,
public

 
static

 
string

 
PrefixPosition

 +
(

+ ,
this

, 0
string

1 7
position

8 @
,

@ A
string

B H
sublevel

I Q
=

R S
$str

T V
,

V W
string

X ^
prefix

_ e
=

f g#
AdminMenuPositionPrefix

h 
,	

 Ä
string


Å á
	separator


à ë
=


í ì
	Separator


î ù
)


ù û
{ 	
return 
prefix 
+ 
sublevel $
+% &
	separator' 0
+1 2
position3 ;
;; <
} 	
public 
static 
string 
PrefixPosition +
(+ ,
this, 0
LocalizedString1 @
positionA I
,I J
stringK Q
sublevelR Z
=[ \
$str] _
,_ `
stringa g
prefixh n
=o p$
AdminMenuPositionPrefix	q à
,
à â
string
ä ê
	separator
ë ö
=
õ ú
	Separator
ù ¶
)
¶ ß
{ 	
return 
position 
. 
ToString $
($ %
)% &
.& '
PrefixPosition' 5
(5 6
sublevel6 >
,> ?
prefix@ F
,F G
	separatorH Q
)Q R
;R S
} 	
} 
} ˝q
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\NavigationHelper.cs
	namespace		 	
OrchardCore		
 
.		 

Navigation		  
{

 
public 

class 
NavigationHelper !
{ 
public 
static 
async 
Task  
PopulateMenuAsync! 2
(2 3
dynamic3 :
shapeFactory; G
,G H
dynamicI P
parentShapeQ \
,\ ]
dynamic^ e
menuf j
,j k
IEnumerablel w
<w x
MenuItem	x Ä
>
Ä Å
	menuItems
Ç ã
,
ã å
ViewContext
ç ò
viewContext
ô §
)
§ •
{ 	
await "
PopulateMenuLevelAsync (
(( )
shapeFactory) 5
,5 6
parentShape7 B
,B C
menuD H
,H I
	menuItemsJ S
,S T
viewContextU `
)` a
;a b
ApplySelection 
( 
parentShape &
,& '
viewContext( 3
)3 4
;4 5
} 	
public## 
static## 
async## 
Task##  "
PopulateMenuLevelAsync##! 7
(##7 8
dynamic##8 ?
shapeFactory##@ L
,##L M
dynamic##N U
parentShape##V a
,##a b
dynamic##c j
menu##k o
,##o p
IEnumerable##q |
<##| }
MenuItem	##} Ö
>
##Ö Ü
	menuItems
##á ê
,
##ê ë
ViewContext
##í ù
viewContext
##û ©
)
##© ™
{$$ 	
foreach%% 
(%% 
MenuItem%% 
menuItem%% &
in%%' )
	menuItems%%* 3
)%%3 4
{&& 
dynamic'' 
menuItemShape'' %
=''& '
await''( -#
BuildMenuItemShapeAsync''. E
(''E F
shapeFactory''F R
,''R S
parentShape''T _
,''_ `
menu''a e
,''e f
menuItem''g o
,''o p
viewContext''q |
)''| }
;''} ~
if)) 
()) 
menuItem)) 
.)) 
Items)) "
!=))# %
null))& *
&&))+ -
menuItem)). 6
.))6 7
Items))7 <
.))< =
Any))= @
())@ A
)))A B
)))B C
{** 
await++ "
PopulateMenuLevelAsync++ 0
(++0 1
shapeFactory++1 =
,++= >
menuItemShape++? L
,++L M
menu++N R
,++R S
menuItem++T \
.++\ ]
Items++] b
,++b c
viewContext++d o
)++o p
;++p q
},, 
parentShape.. 
... 
Add.. 
(..  
menuItemShape..  -
,..- .
menuItem../ 7
...7 8
Position..8 @
)..@ A
;..A B
}// 
}00 	
private;; 
static;; 
async;; 
Task;; !
<;;! "
dynamic;;" )
>;;) *#
BuildMenuItemShapeAsync;;+ B
(;;B C
dynamic;;C J
shapeFactory;;K W
,;;W X
dynamic;;Y `
parentShape;;a l
,;;l m
dynamic;;n u
menu;;v z
,;;z {
MenuItem	;;| Ñ
menuItem
;;Ö ç
,
;;ç é
ViewContext
;;è ö
viewContext
;;õ ¶
)
;;¶ ß
{<< 	
var== 
menuItemShape== 
=== 
(==  !
await==! &
shapeFactory==' 3
.==3 4
NavigationItem==4 B
(==B C
)==C D
)==D E
.>> 
Text>> 
(>> 
menuItem>> 
.>> 
Text>> #
)>># $
.?? 
Href?? 
(?? 
menuItem?? 
.?? 
Href?? #
)??# $
.@@ 
Url@@ 
(@@ 
menuItem@@ 
.@@ 
Url@@ !
)@@! "
.AA 
LinkToFirstChildAA !
(AA! "
menuItemAA" *
.AA* +
LinkToFirstChildAA+ ;
)AA; <
.BB 
RouteValuesBB 
(BB 
menuItemBB %
.BB% &
RouteValuesBB& 1
)BB1 2
.CC 
ItemCC 
(CC 
menuItemCC 
)CC 
.DD 
MenuDD 
(DD 
menuDD 
)DD 
.EE 
ParentEE 
(EE 
parentShapeEE #
)EE# $
.FF 
LevelFF 
(FF 
parentShapeFF "
.FF" #
LevelFF# (
==FF) +
nullFF, 0
?FF1 2
$numFF3 4
:FF5 6
(FF7 8
intFF8 ;
)FF; <
parentShapeFF< G
.FFG H
LevelFFH M
+FFN O
$numFFP Q
)FFQ R
.GG 
PriorityGG 
(GG 
menuItemGG "
.GG" #
PriorityGG# +
)GG+ ,
.HH 
LocalHH 
(HH 
menuItemHH 
.HH  
LocalNavHH  (
)HH( )
.II 
HashII 
(II 
(II 
parentShapeII "
.II" #
HashII# '
+II( )
menuItemII* 2
.II2 3
TextII3 7
.II7 8
ValueII8 =
)II= >
.II> ?
GetHashCodeII? J
(IIJ K
)IIK L
.IIL M
ToStringIIM U
(IIU V
)IIV W
)IIW X
.JJ 
ScoreJJ 
(JJ 
$numJJ 
)JJ 
;JJ 
menuItemShapeLL 
.LL 
IdLL 
=LL 
menuItemLL '
.LL' (
IdLL( *
;LL* +
ifNN 
(NN 
!NN 
StringNN 
.NN 
IsNullOrEmptyNN %
(NN% &
menuItemNN& .
.NN. /
HrefNN/ 3
)NN3 4
&&NN5 7
menuItemNN8 @
.NN@ A
HrefNNA E
[NNE F
$numNNF G
]NNG H
==NNI K
$charNNL O
)NNO P
{OO 
menuItemShapePP 
.PP 
HrefPP "
=PP# $
QueryHelpersPP% 1
.PP1 2
AddQueryStringPP2 @
(PP@ A
menuItemPPA I
.PPI J
HrefPPJ N
,PPN O
menuPPP T
.PPT U
MenuNamePPU ]
,PP] ^
menuItemShapePP_ l
.PPl m
HashPPm q
)PPq r
;PPr s
}QQ 0
$MarkAsSelectedIfMatchesQueryOrCookieSS 0
(SS0 1
menuItemSS1 9
,SS9 :
menuItemShapeSS; H
,SSH I
viewContextSSJ U
)SSU V
;SSV W
foreachUU 
(UU 
varUU 
	classNameUU "
inUU# %
menuItemUU& .
.UU. /
ClassesUU/ 6
)UU6 7
{VV 
menuItemShapeWW 
.WW 
ClassesWW %
.WW% &
AddWW& )
(WW) *
	classNameWW* 3
)WW3 4
;WW4 5
}XX 
returnZZ 
menuItemShapeZZ  
;ZZ  !
}[[ 	
private]] 
static]] 
void]] 0
$MarkAsSelectedIfMatchesQueryOrCookie]] @
(]]@ A
MenuItem]]A I
menuItem]]J R
,]]R S
dynamic]]T [
menuItemShape]]\ i
,]]i j
ViewContext]]k v
viewContext	]]w Ç
)
]]Ç É
{^^ 	
if__ 
(__ 
!__ 
String__ 
.__ 
IsNullOrEmpty__ %
(__% &
menuItem__& .
.__. /
Href__/ 3
)__3 4
&&__5 7
menuItem__8 @
.__@ A
Href__A E
[__E F
$num__F G
]__G H
==__I K
$char__L O
)__O P
{`` 
varaa 
hashaa 
=aa 
viewContextaa &
.aa& '
HttpContextaa' 2
.aa2 3
Requestaa3 :
.aa: ;
Queryaa; @
[aa@ A
(aaA B
stringaaB H
)aaH I
menuItemShapeaaI V
.aaV W
MenuaaW [
.aa[ \
MenuNameaa\ d
]aad e
;aae f
ifcc 
(cc 
hashcc 
.cc 
Countcc 
>cc  
$numcc! "
)cc" #
{dd 
ifee 
(ee 
hashee 
[ee 
$numee 
]ee 
==ee  "
menuItemShapeee# 0
.ee0 1
Hashee1 5
)ee5 6
{ff 
menuItemShapegg %
.gg% &
Scoregg& +
+=gg, .
$numgg/ 0
;gg0 1
}hh 
}ii 
elsejj 
{kk 
varll 
cookiell 
=ll  
viewContextll! ,
.ll, -
HttpContextll- 8
.ll8 9
Requestll9 @
.ll@ A
CookiesllA H
[llH I
menuItemShapellI V
.llV W
MenullW [
.ll[ \
MenuNamell\ d
+lle f
$charllg j
+llk l

ShellScopellm w
.llw x
Contextllx 
.	ll Ä
Settings
llÄ à
.
llà â
Name
llâ ç
]
llç é
;
llé è
ifnn 
(nn 
cookienn 
==nn !
menuItemShapenn" /
.nn/ 0
Hashnn0 4
)nn4 5
{oo 
menuItemShapepp %
.pp% &
Scorepp& +
++pp+ -
;pp- .
}qq 
}rr 
}ss 
menuItemShapeuu 
.uu 
Selecteduu "
=uu# $
menuItemShapeuu% 2
.uu2 3
Scoreuu3 8
>uu9 :
$numuu; <
;uu< =
}vv 	
private}} 
static}} 
void}} 
ApplySelection}} *
(}}* +
dynamic}}+ 2
parentShape}}3 >
,}}> ?
ViewContext}}@ K
viewContext}}L W
)}}W X
{~~ 	
var 
selectedItem 
= .
"GetHighestPrioritySelectedMenuItem A
(A B
parentShapeB M
)M N
;N O
if
ÇÇ 
(
ÇÇ 
selectedItem
ÇÇ 
!=
ÇÇ 
null
ÇÇ  $
)
ÇÇ$ %
{
ÉÉ 
viewContext
ÑÑ 
.
ÑÑ 
HttpContext
ÑÑ '
.
ÑÑ' (
Response
ÑÑ( 0
.
ÑÑ0 1
Cookies
ÑÑ1 8
.
ÑÑ8 9
Append
ÑÑ9 ?
(
ÑÑ? @
selectedItem
ÑÑ@ L
.
ÑÑL M
Menu
ÑÑM Q
.
ÑÑQ R
MenuName
ÑÑR Z
+
ÑÑ[ \
$char
ÑÑ] `
+
ÑÑa b

ShellScope
ÑÑc m
.
ÑÑm n
Context
ÑÑn u
.
ÑÑu v
Settings
ÑÑv ~
.
ÑÑ~ 
NameÑÑ É
,ÑÑÉ Ñ
selectedItemÑÑÖ ë
.ÑÑë í
HashÑÑí ñ
)ÑÑñ ó
;ÑÑó ò
while
ÜÜ 
(
ÜÜ 
selectedItem
ÜÜ #
.
ÜÜ# $
Parent
ÜÜ$ *
!=
ÜÜ+ -
null
ÜÜ. 2
)
ÜÜ2 3
{
áá 
selectedItem
àà  
=
àà! "
selectedItem
àà# /
.
àà/ 0
Parent
àà0 6
;
àà6 7
selectedItem
ââ  
.
ââ  !
Selected
ââ! )
=
ââ* +
true
ââ, 0
;
ââ0 1
}
ää 
}
ãã 
}
åå 	
private
ìì 
static
ìì 
dynamic
ìì 0
"GetHighestPrioritySelectedMenuItem
ìì A
(
ììA B
dynamic
ììB I
parentShape
ììJ U
)
ììU V
{
îî 	
dynamic
ïï 
result
ïï 
=
ïï 
null
ïï !
;
ïï! "
var
óó 
	tempStack
óó 
=
óó 
new
óó 
Stack
óó  %
<
óó% &
dynamic
óó& -
>
óó- .
(
óó. /
new
óó/ 2
dynamic
óó3 :
[
óó: ;
]
óó; <
{
óó= >
parentShape
óó? J
}
óóK L
)
óóL M
;
óóM N
while
ôô 
(
ôô 
	tempStack
ôô 
.
ôô 
Any
ôô  
(
ôô  !
)
ôô! "
)
ôô" #
{
öö 
dynamic
úú 
item
úú 
=
úú 
	tempStack
úú (
.
úú( )
Pop
úú) ,
(
úú, -
)
úú- .
;
úú. /
if
ûû 
(
ûû 
item
ûû 
.
ûû 
Selected
ûû !
==
ûû" $
true
ûû% )
)
ûû) *
{
üü 
if
†† 
(
†† 
result
†† 
==
†† !
null
††" &
)
††& '
{
°° 
result
¢¢ 
=
¢¢  
item
¢¢! %
;
¢¢% &
}
££ 
else
§§ 
{
•• 
if
¶¶ 
(
¶¶ 
item
¶¶  
.
¶¶  !
Score
¶¶! &
>
¶¶' (
result
¶¶) /
.
¶¶/ 0
Score
¶¶0 5
)
¶¶5 6
{
ßß 
result
®® "
.
®®" #
Selected
®®# +
=
®®, -
false
®®. 3
;
®®3 4
result
©© "
=
©©# $
item
©©% )
;
©©) *
}
™™ 
else
´´ 
if
´´ 
(
´´  !
item
´´! %
.
´´% &
Priority
´´& .
>
´´/ 0
result
´´1 7
.
´´7 8
Priority
´´8 @
)
´´@ A
{
¨¨ 
result
≠≠ "
.
≠≠" #
Selected
≠≠# +
=
≠≠, -
false
≠≠. 3
;
≠≠3 4
result
ÆÆ "
=
ÆÆ# $
item
ÆÆ% )
;
ÆÆ) *
}
ØØ 
else
∞∞ 
{
±± 
item
≤≤  
.
≤≤  !
Selected
≤≤! )
=
≤≤* +
false
≤≤, 1
;
≤≤1 2
}
≥≥ 
}
¥¥ 
}
µµ 
foreach
∏∏ 
(
∏∏ 
var
∏∏ 
i
∏∏ 
in
∏∏ !
item
∏∏" &
.
∏∏& '
Items
∏∏' ,
)
∏∏, -
{
ππ 
	tempStack
∫∫ 
.
∫∫ 
Push
∫∫ "
(
∫∫" #
i
∫∫# $
)
∫∫$ %
;
∫∫% &
}
ªª 
}
ºº 
return
ææ 
result
ææ 
;
ææ 
}
øø 	
}
¿¿ 
}¡¡ ›b
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\NavigationItemBuilder.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public		 

class		 !
NavigationItemBuilder		 &
:		' (
NavigationBuilder		) :
{

 
private 
readonly 
MenuItem !
_item" '
;' (
public !
NavigationItemBuilder $
($ %
)% &
{ 	
_item 
= 
new 
MenuItem  
(  !
)! "
;" #
} 	
public !
NavigationItemBuilder $
($ %
MenuItem% -
existingItem. :
): ;
{ 	
if 
( 
existingItem 
== 
null  $
)$ %
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
existingItem7 C
)C D
)D E
;E F
} 
_item 
= 
existingItem  
;  !
} 	
public !
NavigationItemBuilder $
Caption% ,
(, -
LocalizedString- <
caption= D
)D E
{ 	
_item 
. 
Text 
= 
caption  
;  !
return 
this 
; 
}   	
public"" !
NavigationItemBuilder"" $
Position""% -
(""- .
string"". 4
position""5 =
)""= >
{## 	
_item$$ 
.$$ 
Position$$ 
=$$ 
position$$ %
;$$% &
return%% 
this%% 
;%% 
}&& 	
public(( !
NavigationItemBuilder(( $
Priority((% -
(((- .
int((. 1
priority((2 :
)((: ;
{)) 	
_item** 
.** 
Priority** 
=** 
priority** %
;**% &
return++ 
this++ 
;++ 
},, 	
public.. !
NavigationItemBuilder.. $
Url..% (
(..( )
string..) /
url..0 3
)..3 4
{// 	
_item00 
.00 
Url00 
=00 
url00 
;00 
return11 
this11 
;11 
}22 	
public44 !
NavigationItemBuilder44 $
Culture44% ,
(44, -
string44- 3
culture444 ;
)44; <
{55 	
_item66 
.66 
Culture66 
=66 
culture66 #
;66# $
return77 
this77 
;77 
}88 	
public:: !
NavigationItemBuilder:: $
Id::% '
(::' (
string::( .
id::/ 1
)::1 2
{;; 	
_item<< 
.<< 
Id<< 
=<< 
id<< 
;<< 
return== 
this== 
;== 
}>> 	
public@@ !
NavigationItemBuilder@@ $
AddClass@@% -
(@@- .
string@@. 4
	className@@5 >
)@@> ?
{AA 	
ifBB 
(BB 
!BB 
_itemBB 
.BB 
ClassesBB 
.BB 
ContainsBB '
(BB' (
	classNameBB( 1
)BB1 2
)BB2 3
_itemCC 
.CC 
ClassesCC 
.CC 
AddCC !
(CC! "
	classNameCC" +
)CC+ ,
;CC, -
returnDD 
thisDD 
;DD 
}EE 	
publicGG !
NavigationItemBuilderGG $
RemoveClassGG% 0
(GG0 1
stringGG1 7
	classNameGG8 A
)GGA B
{HH 	
ifII 
(II 
_itemII 
.II 
ClassesII 
.II 
ContainsII &
(II& '
	classNameII' 0
)II0 1
)II1 2
_itemJJ 
.JJ 
ClassesJJ 
.JJ 
RemoveJJ $
(JJ$ %
	classNameJJ% .
)JJ. /
;JJ/ 0
returnKK 
thisKK 
;KK 
}LL 	
publicNN !
NavigationItemBuilderNN $
LinkToFirstChildNN% 5
(NN5 6
boolNN6 :
valueNN; @
)NN@ A
{OO 	
_itemPP 
.PP 
LinkToFirstChildPP "
=PP# $
valuePP% *
;PP* +
returnQQ 
thisQQ 
;QQ 
}RR 	
publicTT !
NavigationItemBuilderTT $
LocalNavTT% -
(TT- .
)TT. /
{UU 	
_itemVV 
.VV 
LocalNavVV 
=VV 
trueVV !
;VV! "
returnWW 
thisWW 
;WW 
}XX 	
publicZZ !
NavigationItemBuilderZZ $
LocalZZ% *
(ZZ* +
boolZZ+ /
valueZZ0 5
)ZZ5 6
{[[ 	
_item\\ 
.\\ 
LocalNav\\ 
=\\ 
value\\ "
;\\" #
return]] 
this]] 
;]] 
}^^ 	
public`` !
NavigationItemBuilder`` $

Permission``% /
(``/ 0

Permission``0 :

permission``; E
)``E F
{aa 	
_itembb 
.bb 
Permissionsbb 
.bb 
Addbb !
(bb! "

permissionbb" ,
)bb, -
;bb- .
returncc 
thiscc 
;cc 
}dd 	
publicff !
NavigationItemBuilderff $
Permissionsff% 0
(ff0 1
IEnumerableff1 <
<ff< =

Permissionff= G
>ffG H
permissionsffI T
)ffT U
{gg 	
_itemhh 
.hh 
Permissionshh 
.hh 
AddRangehh &
(hh& '
permissionshh' 2
)hh2 3
;hh3 4
returnii 
thisii 
;ii 
}jj 	
publicll !
NavigationItemBuilderll $
Resourcell% -
(ll- .
objectll. 4
resourcell5 =
)ll= >
{mm 	
_itemnn 
.nn 
Resourcenn 
=nn 
resourcenn %
;nn% &
returnoo 
thisoo 
;oo 
}pp 	
publicrr 
overriderr 
Listrr 
<rr 
MenuItemrr %
>rr% &
Buildrr' ,
(rr, -
)rr- .
{ss 	
_itemtt 
.tt 
Itemstt 
=tt 
basett 
.tt 
Buildtt $
(tt$ %
)tt% &
;tt& '
returnuu 
newuu 
Listuu 
<uu 
MenuItemuu $
>uu$ %
{uu& '
_itemuu( -
}uu. /
;uu/ 0
}vv 	
publicxx !
NavigationItemBuilderxx $
Actionxx% +
(xx+ , 
RouteValueDictionaryxx, @
valuesxxA G
)xxG H
{yy 	
returnzz 
valueszz 
!=zz 
nullzz !
?{{ 
Action{{ 
({{  
values{{  &
[{{& '
$str{{' /
]{{/ 0
as{{1 3
string{{4 :
,{{: ;
values{{< B
[{{B C
$str{{C O
]{{O P
as{{Q S
string{{T Z
,{{Z [
values{{\ b
){{b c
:|| 
Action|| 
(||  
null||  $
,||$ %
null||& *
,||* +
new||, / 
RouteValueDictionary||0 D
(||D E
)||E F
)||F G
;||G H
}}} 	
public !
NavigationItemBuilder $
Action% +
(+ ,
string, 2

actionName3 =
)= >
{
ÄÄ 	
return
ÅÅ 
Action
ÅÅ 
(
ÅÅ 

actionName
ÅÅ $
,
ÅÅ$ %
null
ÅÅ& *
,
ÅÅ* +
new
ÅÅ, /"
RouteValueDictionary
ÅÅ0 D
(
ÅÅD E
)
ÅÅE F
)
ÅÅF G
;
ÅÅG H
}
ÇÇ 	
public
ÑÑ #
NavigationItemBuilder
ÑÑ $
Action
ÑÑ% +
(
ÑÑ+ ,
string
ÑÑ, 2

actionName
ÑÑ3 =
,
ÑÑ= >
string
ÑÑ? E
controllerName
ÑÑF T
)
ÑÑT U
{
ÖÖ 	
return
ÜÜ 
Action
ÜÜ 
(
ÜÜ 

actionName
ÜÜ $
,
ÜÜ$ %
controllerName
ÜÜ& 4
,
ÜÜ4 5
new
ÜÜ6 9"
RouteValueDictionary
ÜÜ: N
(
ÜÜN O
)
ÜÜO P
)
ÜÜP Q
;
ÜÜQ R
}
áá 	
public
ââ #
NavigationItemBuilder
ââ $
Action
ââ% +
(
ââ+ ,
string
ââ, 2

actionName
ââ3 =
,
ââ= >
string
ââ? E
controllerName
ââF T
,
ââT U
object
ââV \
values
ââ] c
)
ââc d
{
ää 	
return
ãã 
Action
ãã 
(
ãã 

actionName
ãã $
,
ãã$ %
controllerName
ãã& 4
,
ãã4 5
new
ãã6 9"
RouteValueDictionary
ãã: N
(
ããN O
values
ããO U
)
ããU V
)
ããV W
;
ããW X
}
åå 	
public
éé #
NavigationItemBuilder
éé $
Action
éé% +
(
éé+ ,
string
éé, 2

actionName
éé3 =
,
éé= >
string
éé? E
controllerName
ééF T
,
ééT U"
RouteValueDictionary
ééV j
values
éék q
)
ééq r
{
èè 	
return
êê 
Action
êê 
(
êê 

actionName
êê $
,
êê$ %
controllerName
êê& 4
,
êê4 5
null
êê6 :
,
êê: ;
values
êê< B
)
êêB C
;
êêC D
}
ëë 	
public
ìì #
NavigationItemBuilder
ìì $
Action
ìì% +
(
ìì+ ,
string
ìì, 2

actionName
ìì3 =
,
ìì= >
string
ìì? E
controllerName
ììF T
,
ììT U
string
ììV \
areaName
ìì] e
)
ììe f
{
îî 	
return
ïï 
Action
ïï 
(
ïï 

actionName
ïï $
,
ïï$ %
controllerName
ïï& 4
,
ïï4 5
areaName
ïï6 >
,
ïï> ?
new
ïï@ C"
RouteValueDictionary
ïïD X
(
ïïX Y
)
ïïY Z
)
ïïZ [
;
ïï[ \
}
ññ 	
public
òò #
NavigationItemBuilder
òò $
Action
òò% +
(
òò+ ,
string
òò, 2

actionName
òò3 =
,
òò= >
string
òò? E
controllerName
òòF T
,
òòT U
string
òòV \
areaName
òò] e
,
òòe f"
RouteValueDictionary
òòg {
valuesòò| Ç
)òòÇ É
{
ôô 	
_item
öö 
.
öö 
RouteValues
öö 
=
öö 
new
öö  #"
RouteValueDictionary
öö$ 8
(
öö8 9
values
öö9 ?
)
öö? @
;
öö@ A
if
õõ 
(
õõ 
!
õõ 
string
õõ 
.
õõ 
IsNullOrEmpty
õõ %
(
õõ% &

actionName
õõ& 0
)
õõ0 1
)
õõ1 2
_item
úú 
.
úú 
RouteValues
úú !
[
úú! "
$str
úú" *
]
úú* +
=
úú, -

actionName
úú. 8
;
úú8 9
if
ùù 
(
ùù 
!
ùù 
string
ùù 
.
ùù 
IsNullOrEmpty
ùù %
(
ùù% &
controllerName
ùù& 4
)
ùù4 5
)
ùù5 6
_item
ûû 
.
ûû 
RouteValues
ûû !
[
ûû! "
$str
ûû" .
]
ûû. /
=
ûû0 1
controllerName
ûû2 @
;
ûû@ A
if
üü 
(
üü 
!
üü 
string
üü 
.
üü 
IsNullOrEmpty
üü %
(
üü% &
areaName
üü& .
)
üü. /
)
üü/ 0
_item
†† 
.
†† 
RouteValues
†† !
[
††! "
$str
††" (
]
††( )
=
††* +
areaName
††, 4
;
††4 5
return
°° 
this
°° 
;
°° 
}
¢¢ 	
}
££ 
}§§ Ù¢
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\NavigationManager.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

class 
NavigationManager "
:# $
INavigationManager% 7
{ 
private 
readonly 
IEnumerable $
<$ %
INavigationProvider% 8
>8 9 
_navigationProviders: N
;N O
private 
readonly 
ILogger  
_logger! (
;( )
	protected 
readonly 
ShellSettings (
_shellSettings) 7
;7 8
private 
readonly 
IUrlHelperFactory *
_urlHelperFactory+ <
;< =
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 

IUrlHelper 

_urlHelper %
;% &
public 
NavigationManager  
(  !
IEnumerable 
< 
INavigationProvider +
>+ ,
navigationProviders- @
,@ A
ILogger 
< 
NavigationManager %
>% &
logger' -
,- .
ShellSettings 
shellSettings '
,' (
IUrlHelperFactory 
urlHelperFactory .
,. /!
IAuthorizationService ! 
authorizationService" 6
) 
{   	 
_navigationProviders!!  
=!!! "
navigationProviders!!# 6
;!!6 7
_logger"" 
="" 
logger"" 
;"" 
_shellSettings## 
=## 
shellSettings## *
;##* +
_urlHelperFactory$$ 
=$$ 
urlHelperFactory$$  0
;$$0 1!
_authorizationService%% !
=%%" # 
authorizationService%%$ 8
;%%8 9
}&& 	
public(( 
async(( 
Task(( 
<(( 
IEnumerable(( %
<((% &
MenuItem((& .
>((. /
>((/ 0
BuildMenuAsync((1 ?
(((? @
string((@ F
name((G K
,((K L
ActionContext((M Z
actionContext(([ h
)((h i
{)) 	
var** 
builder** 
=** 
new** 
NavigationBuilder** /
(**/ 0
)**0 1
;**1 2
foreach.. 
(.. 
var.. 
navigationProvider.. +
in.., . 
_navigationProviders../ C
)..C D
{// 
try00 
{11 
await22 
navigationProvider22 ,
.22, - 
BuildNavigationAsync22- A
(22A B
name22B F
,22F G
builder22H O
)22O P
;22P Q
}33 
catch44 
(44 
	Exception44  
e44! "
)44" #
{55 
_logger66 
.66 
LogError66 $
(66$ %
e66% &
,66& '
$str66( d
,66d e
name66f j
)66j k
;66k l
}77 
}88 
var:: 
	menuItems:: 
=:: 
builder:: #
.::# $
Build::$ )
(::) *
)::* +
;::+ ,
Merge== 
(== 
	menuItems== 
)== 
;== 
	menuItems@@ 
=@@ 
await@@ 
AuthorizeAsync@@ ,
(@@, -
	menuItems@@- 6
,@@6 7
actionContext@@8 E
.@@E F
HttpContext@@F Q
.@@Q R
User@@R V
)@@V W
;@@W X
	menuItemsCC 
=CC 
ComputeHrefCC #
(CC# $
	menuItemsCC$ -
,CC- .
actionContextCC/ <
)CC< =
;CC= >
	menuItemsFF 
=FF 
ReduceFF 
(FF 
	menuItemsFF (
)FF( )
;FF) *
returnHH 
	menuItemsHH 
;HH 
}II 	
privateNN 
staticNN 
voidNN 
MergeNN !
(NN! "
ListNN" &
<NN& '
MenuItemNN' /
>NN/ 0
itemsNN1 6
)NN6 7
{OO 	
forRR 
(RR 
varRR 
iRR 
=RR 
$numRR 
;RR 
iRR 
<RR 
itemsRR  %
.RR% &
CountRR& +
;RR+ ,
iRR- .
++RR. 0
)RR0 1
{SS 
varTT 
sourceTT 
=TT 
itemsTT "
[TT" #
iTT# $
]TT$ %
;TT% &
varUU 
mergedUU 
=UU 
falseUU "
;UU" #
forVV 
(VV 
varVV 
jVV 
=VV 
itemsVV "
.VV" #
CountVV# (
-VV) *
$numVV+ ,
;VV, -
jVV. /
>VV0 1
iVV2 3
;VV3 4
jVV5 6
--VV6 8
)VV8 9
{WW 
varXX 
cursorXX 
=XX  
itemsXX! &
[XX& '
jXX' (
]XX( )
;XX) *
if[[ 
([[ 
String[[ 
.[[ 
Equals[[ %
([[% &
cursor[[& ,
.[[, -
Text[[- 1
.[[1 2
Name[[2 6
,[[6 7
source[[8 >
.[[> ?
Text[[? C
.[[C D
Name[[D H
,[[H I
StringComparison[[J Z
.[[Z [
OrdinalIgnoreCase[[[ l
)[[l m
)[[m n
{\\ 
merged]] 
=]]  
true]]! %
;]]% &
foreach^^ 
(^^  !
var^^! $
child^^% *
in^^+ -
cursor^^. 4
.^^4 5
Items^^5 :
)^^: ;
{__ 
source`` "
.``" #
Items``# (
.``( )
Add``) ,
(``, -
child``- 2
)``2 3
;``3 4
}aa 
itemscc 
.cc 
RemoveAtcc &
(cc& '
jcc' (
)cc( )
;cc) *
ifff 
(ff 
cursorff "
.ff" #
Priorityff# +
>ff, -
sourceff. 4
.ff4 5
Priorityff5 =
)ff= >
{gg 
sourcehh "
.hh" #
Culturehh# *
=hh+ ,
cursorhh- 3
.hh3 4
Culturehh4 ;
;hh; <
sourceii "
.ii" #
Hrefii# '
=ii( )
cursorii* 0
.ii0 1
Hrefii1 5
;ii5 6
sourcejj "
.jj" #
Idjj# %
=jj& '
cursorjj( .
.jj. /
Idjj/ 1
;jj1 2
sourcekk "
.kk" #
LinkToFirstChildkk# 3
=kk4 5
cursorkk6 <
.kk< =
LinkToFirstChildkk= M
;kkM N
sourcell "
.ll" #
LocalNavll# +
=ll, -
cursorll. 4
.ll4 5
LocalNavll5 =
;ll= >
sourcemm "
.mm" #
Positionmm# +
=mm, -
cursormm. 4
.mm4 5
Positionmm5 =
;mm= >
sourcenn "
.nn" #
Resourcenn# +
=nn, -
cursornn. 4
.nn4 5
Resourcenn5 =
;nn= >
sourceoo "
.oo" #
RouteValuesoo# .
=oo/ 0
cursoroo1 7
.oo7 8
RouteValuesoo8 C
;ooC D
sourcepp "
.pp" #
Textpp# '
=pp( )
cursorpp* 0
.pp0 1
Textpp1 5
;pp5 6
sourceqq "
.qq" #
Urlqq# &
=qq' (
cursorqq) /
.qq/ 0
Urlqq0 3
;qq3 4
sourcess "
.ss" #
Permissionsss# .
.ss. /
Clearss/ 4
(ss4 5
)ss5 6
;ss6 7
sourcett "
.tt" #
Permissionstt# .
.tt. /
AddRangett/ 7
(tt7 8
cursortt8 >
.tt> ?
Permissionstt? J
)ttJ K
;ttK L
sourcevv "
.vv" #
Classesvv# *
.vv* +
Clearvv+ 0
(vv0 1
)vv1 2
;vv2 3
sourceww "
.ww" #
Classesww# *
.ww* +
AddRangeww+ 3
(ww3 4
cursorww4 :
.ww: ;
Classesww; B
)wwB C
;wwC D
}xx 
if{{ 
({{ 
cursor{{ "
.{{" #
Priority{{# +
=={{, .
source{{/ 5
.{{5 6
Priority{{6 >
){{> ?
{|| 
if}} 
(}}  
cursor}}  &
.}}& '
Position}}' /
!=}}0 2
null}}3 7
&&}}8 :
source}}; A
.}}A B
Position}}B J
==}}K M
null}}N R
)}}R S
{~~ 
source  &
.& '
Culture' .
=/ 0
cursor1 7
.7 8
Culture8 ?
;? @
source
ÄÄ  &
.
ÄÄ& '
Href
ÄÄ' +
=
ÄÄ, -
cursor
ÄÄ. 4
.
ÄÄ4 5
Href
ÄÄ5 9
;
ÄÄ9 :
source
ÅÅ  &
.
ÅÅ& '
Id
ÅÅ' )
=
ÅÅ* +
cursor
ÅÅ, 2
.
ÅÅ2 3
Id
ÅÅ3 5
;
ÅÅ5 6
source
ÇÇ  &
.
ÇÇ& '
LinkToFirstChild
ÇÇ' 7
=
ÇÇ8 9
cursor
ÇÇ: @
.
ÇÇ@ A
LinkToFirstChild
ÇÇA Q
;
ÇÇQ R
source
ÉÉ  &
.
ÉÉ& '
LocalNav
ÉÉ' /
=
ÉÉ0 1
cursor
ÉÉ2 8
.
ÉÉ8 9
LocalNav
ÉÉ9 A
;
ÉÉA B
source
ÑÑ  &
.
ÑÑ& '
Position
ÑÑ' /
=
ÑÑ0 1
cursor
ÑÑ2 8
.
ÑÑ8 9
Position
ÑÑ9 A
;
ÑÑA B
source
ÖÖ  &
.
ÖÖ& '
Resource
ÖÖ' /
=
ÖÖ0 1
cursor
ÖÖ2 8
.
ÖÖ8 9
Resource
ÖÖ9 A
;
ÖÖA B
source
ÜÜ  &
.
ÜÜ& '
RouteValues
ÜÜ' 2
=
ÜÜ3 4
cursor
ÜÜ5 ;
.
ÜÜ; <
RouteValues
ÜÜ< G
;
ÜÜG H
source
áá  &
.
áá& '
Text
áá' +
=
áá, -
cursor
áá. 4
.
áá4 5
Text
áá5 9
;
áá9 :
source
àà  &
.
àà& '
Url
àà' *
=
àà+ ,
cursor
àà- 3
.
àà3 4
Url
àà4 7
;
àà7 8
source
ää  &
.
ää& '
Permissions
ää' 2
.
ää2 3
Clear
ää3 8
(
ää8 9
)
ää9 :
;
ää: ;
source
ãã  &
.
ãã& '
Permissions
ãã' 2
.
ãã2 3
AddRange
ãã3 ;
(
ãã; <
cursor
ãã< B
.
ããB C
Permissions
ããC N
)
ããN O
;
ããO P
source
çç  &
.
çç& '
Classes
çç' .
.
çç. /
Clear
çç/ 4
(
çç4 5
)
çç5 6
;
çç6 7
source
éé  &
.
éé& '
Classes
éé' .
.
éé. /
AddRange
éé/ 7
(
éé7 8
cursor
éé8 >
.
éé> ?
Classes
éé? F
)
ééF G
;
ééG H
}
èè 
}
êê 
}
ëë 
}
íí 
if
ïï 
(
ïï 
merged
ïï 
)
ïï 
{
ññ 
Merge
óó 
(
óó 
source
óó  
.
óó  !
Items
óó! &
)
óó& '
;
óó' (
}
òò 
}
ôô 
}
öö 	
private
†† 
List
†† 
<
†† 
MenuItem
†† 
>
†† 
ComputeHref
†† *
(
††* +
List
††+ /
<
††/ 0
MenuItem
††0 8
>
††8 9
	menuItems
††: C
,
††C D
ActionContext
††E R
actionContext
††S `
)
††` a
{
°° 	
foreach
¢¢ 
(
¢¢ 
var
¢¢ 
menuItem
¢¢ !
in
¢¢" $
	menuItems
¢¢% .
)
¢¢. /
{
££ 
menuItem
§§ 
.
§§ 
Href
§§ 
=
§§ 
GetUrl
§§  &
(
§§& '
menuItem
§§' /
.
§§/ 0
Url
§§0 3
,
§§3 4
menuItem
§§5 =
.
§§= >
RouteValues
§§> I
,
§§I J
actionContext
§§K X
)
§§X Y
;
§§Y Z
menuItem
•• 
.
•• 
Items
•• 
=
••  
ComputeHref
••! ,
(
••, -
menuItem
••- 5
.
••5 6
Items
••6 ;
,
••; <
actionContext
••= J
)
••J K
;
••K L
}
¶¶ 
return
®® 
	menuItems
®® 
;
®® 
}
©© 	
private
≤≤ 
string
≤≤ 
GetUrl
≤≤ 
(
≤≤ 
string
≤≤ $
menuItemUrl
≤≤% 0
,
≤≤0 1"
RouteValueDictionary
≤≤2 F"
routeValueDictionary
≤≤G [
,
≤≤[ \
ActionContext
≤≤] j
actionContext
≤≤k x
)
≤≤x y
{
≥≥ 	
if
¥¥ 
(
¥¥ "
routeValueDictionary
¥¥ $
?
¥¥$ %
.
¥¥% &
Count
¥¥& +
>
¥¥, -
$num
¥¥. /
)
¥¥/ 0
{
µµ 
if
∂∂ 
(
∂∂ 

_urlHelper
∂∂ 
==
∂∂ !
null
∂∂" &
)
∂∂& '
{
∑∑ 

_urlHelper
∏∏ 
=
∏∏  
_urlHelperFactory
∏∏! 2
.
∏∏2 3
GetUrlHelper
∏∏3 ?
(
∏∏? @
actionContext
∏∏@ M
)
∏∏M N
;
∏∏N O
}
ππ 
return
ªª 

_urlHelper
ªª !
.
ªª! "
RouteUrl
ªª" *
(
ªª* +
new
ªª+ .
UrlRouteContext
ªª/ >
{
ªª? @
Values
ªªA G
=
ªªH I"
routeValueDictionary
ªªJ ^
}
ªª_ `
)
ªª` a
;
ªªa b
}
ºº 
if
ææ 
(
ææ 
String
ææ 
.
ææ 
IsNullOrEmpty
ææ $
(
ææ$ %
menuItemUrl
ææ% 0
)
ææ0 1
)
ææ1 2
{
øø 
return
¿¿ 
$str
¿¿ 
;
¿¿ 
}
¡¡ 
if
√√ 
(
√√ 
menuItemUrl
√√ 
[
√√ 
$num
√√ 
]
√√ 
==
√√ !
$char
√√" %
||
√√& (
menuItemUrl
√√) 4
.
√√4 5
IndexOf
√√5 <
(
√√< =
$str
√√= B
,
√√B C
StringComparison
√√D T
.
√√T U
Ordinal
√√U \
)
√√\ ]
>=
√√^ `
$num
√√a b
)
√√b c
{
ƒƒ 
return
∆∆ 
menuItemUrl
∆∆ "
;
∆∆" #
}
«« 
if
…… 
(
…… 
menuItemUrl
…… 
.
…… 

StartsWith
…… &
(
……& '
$str
……' +
,
……+ ,
StringComparison
……- =
.
……= >
Ordinal
……> E
)
……E F
)
……F G
{
   
menuItemUrl
ÀÀ 
=
ÀÀ 
menuItemUrl
ÀÀ )
.
ÀÀ) *
	Substring
ÀÀ* 3
(
ÀÀ3 4
$num
ÀÀ4 5
)
ÀÀ5 6
;
ÀÀ6 7
}
ÃÃ 
return
œœ 
actionContext
œœ  
.
œœ  !
HttpContext
œœ! ,
.
œœ, -
Request
œœ- 4
.
œœ4 5
PathBase
œœ5 =
.
œœ= >
Add
œœ> A
(
œœA B
$char
œœB E
+
œœF G
menuItemUrl
œœH S
)
œœS T
.
œœT U
Value
œœU Z
;
œœZ [
}
–– 	
private
’’ 
async
’’ 
Task
’’ 
<
’’ 
List
’’ 
<
’’  
MenuItem
’’  (
>
’’( )
>
’’) *
AuthorizeAsync
’’+ 9
(
’’9 :
IEnumerable
’’: E
<
’’E F
MenuItem
’’F N
>
’’N O
items
’’P U
,
’’U V
ClaimsPrincipal
’’W f
user
’’g k
)
’’k l
{
÷÷ 	
var
◊◊ 
filtered
◊◊ 
=
◊◊ 
new
◊◊ 
List
◊◊ #
<
◊◊# $
MenuItem
◊◊$ ,
>
◊◊, -
(
◊◊- .
)
◊◊. /
;
◊◊/ 0
foreach
ŸŸ 
(
ŸŸ 
var
ŸŸ 
item
ŸŸ 
in
ŸŸ  
items
ŸŸ! &
)
ŸŸ& '
{
⁄⁄ 
if
‹‹ 
(
‹‹ 
user
‹‹ 
==
‹‹ 
null
‹‹  
)
‹‹  !
{
›› 
filtered
ﬁﬁ 
.
ﬁﬁ 
Add
ﬁﬁ  
(
ﬁﬁ  !
item
ﬁﬁ! %
)
ﬁﬁ% &
;
ﬁﬁ& '
}
ﬂﬂ 
else
‡‡ 
if
‡‡ 
(
‡‡ 
!
‡‡ 
item
‡‡ 
.
‡‡ 
Permissions
‡‡ *
.
‡‡* +
Any
‡‡+ .
(
‡‡. /
)
‡‡/ 0
)
‡‡0 1
{
·· 
filtered
‚‚ 
.
‚‚ 
Add
‚‚  
(
‚‚  !
item
‚‚! %
)
‚‚% &
;
‚‚& '
}
„„ 
else
‰‰ 
{
ÂÂ 
var
ÁÁ 
isAuthorized
ÁÁ $
=
ÁÁ% &
true
ÁÁ' +
;
ÁÁ+ ,
foreach
ËË 
(
ËË 
var
ËË  

permission
ËË! +
in
ËË, .
item
ËË/ 3
.
ËË3 4
Permissions
ËË4 ?
)
ËË? @
{
ÈÈ 
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 
(
ÍÍ 
await
ÍÍ "#
_authorizationService
ÍÍ# 8
.
ÍÍ8 9
AuthorizeAsync
ÍÍ9 G
(
ÍÍG H
user
ÍÍH L
,
ÍÍL M

permission
ÍÍN X
,
ÍÍX Y
item
ÍÍZ ^
.
ÍÍ^ _
Resource
ÍÍ_ g
)
ÍÍg h
)
ÍÍh i
)
ÍÍi j
{
ÎÎ 
isAuthorized
ÏÏ (
=
ÏÏ) *
false
ÏÏ+ 0
;
ÏÏ0 1
break
ÌÌ !
;
ÌÌ! "
}
ÓÓ 
}
ÔÔ 
if
 
(
 
isAuthorized
 $
)
$ %
{
ÒÒ 
filtered
ÚÚ  
.
ÚÚ  !
Add
ÚÚ! $
(
ÚÚ$ %
item
ÚÚ% )
)
ÚÚ) *
;
ÚÚ* +
}
ÛÛ 
}
ÙÙ 
var
˜˜ 
oldItems
˜˜ 
=
˜˜ 
item
˜˜ #
.
˜˜# $
Items
˜˜$ )
;
˜˜) *
item
˘˘ 
.
˘˘ 
Items
˘˘ 
=
˘˘ 
(
˘˘ 
await
˘˘ #
AuthorizeAsync
˘˘$ 2
(
˘˘2 3
item
˘˘3 7
.
˘˘7 8
Items
˘˘8 =
,
˘˘= >
user
˘˘? C
)
˘˘C D
)
˘˘D E
;
˘˘E F
}
˙˙ 
return
¸¸ 
filtered
¸¸ 
;
¸¸ 
}
˝˝ 	
private
ÇÇ 
List
ÇÇ 
<
ÇÇ 
MenuItem
ÇÇ 
>
ÇÇ 
Reduce
ÇÇ %
(
ÇÇ% &
IEnumerable
ÇÇ& 1
<
ÇÇ1 2
MenuItem
ÇÇ2 :
>
ÇÇ: ;
items
ÇÇ< A
)
ÇÇA B
{
ÉÉ 	
var
ÑÑ 
filtered
ÑÑ 
=
ÑÑ 
items
ÑÑ  
.
ÑÑ  !
ToList
ÑÑ! '
(
ÑÑ' (
)
ÑÑ( )
;
ÑÑ) *
foreach
ÜÜ 
(
ÜÜ 
var
ÜÜ 
item
ÜÜ 
in
ÜÜ  
items
ÜÜ! &
)
ÜÜ& '
{
áá 
if
àà 
(
àà 
!
àà  
HasHrefOrChildHref
àà '
(
àà' (
item
àà( ,
)
àà, -
)
àà- .
{
ââ 
filtered
ää 
.
ää 
Remove
ää #
(
ää# $
item
ää$ (
)
ää( )
;
ää) *
}
ãã 
item
çç 
.
çç 
Items
çç 
=
çç 
Reduce
çç #
(
çç# $
item
çç$ (
.
çç( )
Items
çç) .
)
çç. /
;
çç/ 0
}
éé 
return
êê 
filtered
êê 
;
êê 
}
ëë 	
private
ìì 
static
ìì 
bool
ìì  
HasHrefOrChildHref
ìì .
(
ìì. /
MenuItem
ìì/ 7
item
ìì8 <
)
ìì< =
{
îî 	
if
ïï 
(
ïï 
item
ïï 
.
ïï 
Href
ïï 
!=
ïï 
$str
ïï  
)
ïï  !
{
ññ 
return
óó 
true
óó 
;
óó 
}
òò 
return
öö 
item
öö 
.
öö 
Items
öö 
.
öö 
Any
öö !
(
öö! " 
HasHrefOrChildHref
öö" 4
)
öö4 5
;
öö5 6
}
õõ 	
}
úú 
}ùù á
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\Pager.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

class 
Pager 
{ 
public 
const 
int 
PageDefault $
=% &
$num' (
;( )
public 
Pager 
( 
PagerParameters $
pagerParameters% 4
,4 5
int6 9
defaultPageSize: I
)I J
: 
this 
( 
pagerParameters "
." #
Page# '
,' (
pagerParameters) 8
.8 9
PageSize9 A
,A B
defaultPageSizeC R
)R S
{ 	
} 	
public 
Pager 
( 
int 
? 
page 
, 
int  #
?# $
pageSize% -
,- .
int/ 2
defaultPageSize3 B
)B C
{ 	
Page 
= 
( 
int 
) 
( 
page 
!=  
null! %
?& '
(( )
page) -
>. /
$num0 1
?2 3
page4 8
:9 :
PageDefault; F
)F G
:H I
PageDefaultJ U
)U V
;V W
PageSize 
= 
pageSize 
??  "
defaultPageSize# 2
;2 3
} 	
public## 
int## 
Page## 
{## 
get## 
;## 
set## "
;##" #
}##$ %
public(( 
int(( 
PageSize(( 
{(( 
get(( !
;((! "
set((# &
;((& '
}((( )
public// 
int// 
GetStartIndex//  
(//  !
int//! $
?//$ %
page//& *
=//+ ,
null//- 1
)//1 2
{00 	
return11 
(11 
(11 
page11 
??11 
Page11 !
)11! "
-11# $
PageDefault11% 0
)110 1
*112 3
PageSize114 <
;11< =
}22 	
}33 
}44 ¶
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\PagerParameters.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

class 
PagerParameters  
{ 
public 
int 
? 
Page 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
? 
PageSize 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} î
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\SafePageParameters.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

class 
PagerSlimParameters $
{ 
public 
string 
Before 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
After 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ∂
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\SafePager.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

class 
	PagerSlim 
{ 
public

 
	PagerSlim

 
(

 
PagerSlimParameters

 ,
pagerParameters

- <
,

< =
int

> A
pageSize

B J
)

J K
: 
this 
( 
pagerParameters "
." #
Before# )
,) *
pagerParameters+ :
.: ;
After; @
,@ A
pageSizeB J
)J K
{ 	
} 	
public 
	PagerSlim 
( 
string 
before  &
,& '
string( .
after/ 4
,4 5
int6 9
pageSize: B
)B C
{ 	
Before 
= 
before 
; 
After 
= 
after 
; 
PageSize 
= 
pageSize 
;  
} 	
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public$$ 
string$$ 
Before$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
public)) 
string)) 
After)) 
{)) 
get)) !
;))! "
set))# &
;))& '
}))( )
}** 
}++ ˛
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Navigation.Core\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 

Navigation  
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddNavigation) 6
(6 7
this7 ;
IServiceCollection< N
servicesO W
)W X
{ 	
services 
. 
TryAddScoped !
<! "
INavigationManager" 4
,4 5
NavigationManager6 G
>G H
(H I
)I J
;J K
return 
services 
; 
} 	
} 
} 