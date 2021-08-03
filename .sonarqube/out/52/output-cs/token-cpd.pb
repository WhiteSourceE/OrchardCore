Ô5
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ApplicationViewFileProvider.cs
	namespace

 	
OrchardCore


 
.

 
Mvc

 
{ 
public 

class '
ApplicationViewFileProvider ,
:- .
IFileProvider/ <
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public '
ApplicationViewFileProvider *
(* +
IApplicationContext+ >
applicationContext? Q
)Q R
{ 	
_applicationContext 
=  !
applicationContext" 4
;4 5
} 	
private 
Application 
Application '
=>( *
_applicationContext+ >
.> ?
Application? J
;J K
public 
IDirectoryContents ! 
GetDirectoryContents" 6
(6 7
string7 =
subpath> E
)E F
{ 	
if&& 
(&& 
subpath&& 
==&& 
null&& 
)&&  
{'' 
return(( %
NotFoundDirectoryContents(( 0
.((0 1
	Singleton((1 :
;((: ;
})) 
var++ 
folder++ 
=++ 
NormalizePath++ &
(++& '
subpath++' .
)++. /
;++/ 0
if.. 
(.. 
folder.. 
==.. 
Application.. %
...% &

ModulePath..& 0
)..0 1
{// 
return11 
new11 %
PhysicalDirectoryContents11 4
(114 5
Application115 @
.11@ A
Path11A E
)11E F
;11F G
}22 
else44 
if44 
(44 
folder44 
.44 

StartsWith44 &
(44& '
Application44' 2
.442 3

ModuleRoot443 =
,44= >
StringComparison44? O
.44O P
Ordinal44P W
)44W X
)44X Y
{55 
var77 
	tokenizer77 
=77 
new77  #
StringTokenizer77$ 3
(773 4
folder774 :
,77: ;
new77< ?
char77@ D
[77D E
]77E F
{77G H
$char77I L
}77M N
)77N O
;77O P
if88 
(88 
	tokenizer88 
.88 
Any88 !
(88! "
s88" #
=>88$ &
s88' (
==88) +
$str88, 3
||884 6
s887 8
==889 ;
$str88< C
)88C D
)88D E
{99 
var;; 
folderSubPath;; %
=;;& '
folder;;( .
.;;. /
	Substring;;/ 8
(;;8 9
Application;;9 D
.;;D E

ModuleRoot;;E O
.;;O P
Length;;P V
);;V W
;;;W X
return>> 
new>> %
PhysicalDirectoryContents>> 8
(>>8 9
Application>>9 D
.>>D E
Root>>E I
+>>J K
folderSubPath>>L Y
)>>Y Z
;>>Z [
}?? 
}@@ 
returnBB %
NotFoundDirectoryContentsBB ,
.BB, -
	SingletonBB- 6
;BB6 7
}CC 	
publicEE 
	IFileInfoEE 
GetFileInfoEE $
(EE$ %
stringEE% +
subpathEE, 3
)EE3 4
{FF 	
ifGG 
(GG 
subpathGG 
==GG 
nullGG 
)GG  
{HH 
returnII 
newII 
NotFoundFileInfoII +
(II+ ,
subpathII, 3
)II3 4
;II4 5
}JJ 
varLL 
pathLL 
=LL 
NormalizePathLL $
(LL$ %
subpathLL% ,
)LL, -
;LL- .
ifOO 
(OO 
pathOO 
.OO 

StartsWithOO 
(OO  
ApplicationOO  +
.OO+ ,

ModuleRootOO, 6
,OO6 7
StringComparisonOO8 H
.OOH I
OrdinalOOI P
)OOP Q
)OOQ R
{PP 
varRR 
fileSubPathRR 
=RR  !
pathRR" &
.RR& '
	SubstringRR' 0
(RR0 1
ApplicationRR1 <
.RR< =

ModuleRootRR= G
.RRG H
LengthRRH N
)RRN O
;RRO P
returnUU 
newUU 
PhysicalFileInfoUU +
(UU+ ,
newUU, /
FileInfoUU0 8
(UU8 9
ApplicationUU9 D
.UUD E
RootUUE I
+UUJ K
fileSubPathUUL W
)UUW X
)UUX Y
;UUY Z
}VV 
returnXX 
newXX 
NotFoundFileInfoXX '
(XX' (
subpathXX( /
)XX/ 0
;XX0 1
}YY 	
public[[ 
IChangeToken[[ 
Watch[[ !
([[! "
string[[" (
filter[[) /
)[[/ 0
{\\ 	
if]] 
(]] 
filter]] 
==]] 
null]] 
)]] 
{^^ 
return__ 
NullChangeToken__ &
.__& '
	Singleton__' 0
;__0 1
}`` 
varbb 
pathbb 
=bb 
NormalizePathbb $
(bb$ %
filterbb% +
)bb+ ,
;bb, -
ifee 
(ee 
pathee 
.ee 

StartsWithee 
(ee  
Applicationee  +
.ee+ ,

ModuleRootee, 6
,ee6 7
StringComparisonee8 H
.eeH I
OrdinaleeI P
)eeP Q
)eeQ R
{ff 
varhh 
fileSubPathhh 
=hh  !
pathhh" &
.hh& '
	Substringhh' 0
(hh0 1
Applicationhh1 <
.hh< =

ModuleRoothh= G
.hhG H
LengthhhH N
)hhN O
;hhO P
returnkk 
newkk "
PollingFileChangeTokenkk 1
(kk1 2
newkk2 5
FileInfokk6 >
(kk> ?
Applicationkk? J
.kkJ K
RootkkK O
+kkP Q
fileSubPathkkR ]
)kk] ^
)kk^ _
;kk_ `
}ll 
returnnn 
NullChangeTokennn "
.nn" #
	Singletonnn# ,
;nn, -
}oo 	
privateqq 
stringqq 
NormalizePathqq $
(qq$ %
stringqq% +
pathqq, 0
)qq0 1
{rr 	
returnss 
pathss 
.ss 
Replacess 
(ss  
$charss  $
,ss$ %
$charss& )
)ss) *
.ss* +
Trimss+ /
(ss/ 0
$charss0 3
)ss3 4
;ss4 5
}tt 	
}uu 
}vv Ö
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\DevelopmentViewsFeature.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class #
DevelopmentViewsFeature (
:) *
ViewsFeature+ 7
{ 
} 
} ¥
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Extensions\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class (
OrchardCoreBuilderExtensions 4
{ 
public 
static 
OrchardCoreBuilder (
AddMvc) /
(/ 0
this0 4
OrchardCoreBuilder5 G
builderH O
)O P
{ 	
builder 
. 
ConfigureServices %
(% &

collection& 0
=>1 3
{ 

collection 
. 
AddSingleton '
<' ("
IEndpointAddressScheme( >
<> ?
RouteValuesAddress? Q
>Q R
,R S)
ShellRouteValuesAddressSchemeT q
>q r
(r s
)s t
;t u
} 
, 
order 
: 
int 
. 
MaxValue 
-  !
$num" %
)% &
;& '
return 
builder 
. 
RegisterStartup *
<* +
Startup+ 2
>2 3
(3 4
)4 5
;5 6
} 	
} 
} ≠$
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\FileProviders\FileProviderExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
FileProviders '
{ 
public		 

static		 
class		 "
FileProviderExtensions		 .
{

 
public 
static 
IEnumerable !
<! "
string" (
>( )
GetViewFilePaths* :
(: ;
this; ?
IFileProvider@ M
fileProviderN Z
,Z [
string 
subPath 
, 
string 
[ 
] 

extensions 
,  
string 
viewsFolder 
=  
null! %
,% &
bool 
inViewsFolder 
=  
false! &
,& '
bool 
inDepth 
= 
true 
)  
{ 	
var 
contents 
= 
fileProvider '
.' ( 
GetDirectoryContents( <
(< =
subPath= D
)D E
;E F
if 
( 
contents 
== 
null  
)  !
{ 
yield 
break 
; 
} 
if 
( 
! 
inViewsFolder 
&& !
viewsFolder" -
!=. 0
null1 5
&&6 8
inDepth9 @
)@ A
{ 
var 
viewsFolderInfo #
=$ %
contents& .
.. /
FirstOrDefault/ =
(= >
c> ?
=>@ B
cC D
.D E
NameE I
==J L
viewsFolderM X
&&Y [
c\ ]
.] ^
IsDirectory^ i
)i j
;j k
if 
( 
viewsFolderInfo #
!=$ &
null' +
)+ ,
{ 
foreach 
( 
var  
filePath! )
in* ,
GetViewFilePaths- =
(= >
fileProvider> J
,J K
$"L N
{N O
subPathO V
}V W
/W X
{X Y
viewsFolderInfoY h
.h i
Namei m
}m n
"n o
,o p

extensionsq {
,{ |
viewsFolder	} à
,
à â
inViewsFolder
ä ó
:
ó ò
true
ô ù
)
ù û
)
û ü
{   
yield!! 
return!! $
filePath!!% -
;!!- .
}"" 
yield$$ 
break$$ 
;$$  
}%% 
}&& 
foreach(( 
((( 
var(( 
content((  
in((! #
contents(($ ,
)((, -
{)) 
if** 
(** 
content** 
.** 
IsDirectory** '
&&**( *
inDepth**+ 2
)**2 3
{++ 
foreach,, 
(,, 
var,,  
filePath,,! )
in,,* ,
GetViewFilePaths,,- =
(,,= >
fileProvider,,> J
,,,J K
$",,L N
{,,N O
subPath,,O V
},,V W
/,,W X
{,,X Y
content,,Y `
.,,` a
Name,,a e
},,e f
",,f g
,,,g h

extensions,,i s
,,,s t
viewsFolder	,,u Ä
,
,,Ä Å
inViewsFolder
,,Ç è
)
,,è ê
)
,,ê ë
{-- 
yield.. 
return.. $
filePath..% -
;..- .
}// 
}00 
else11 
if11 
(11 
inViewsFolder11 &
)11& '
{22 
if33 
(33 
Array33 
.33 
IndexOf33 %
(33% &

extensions33& 0
,330 1
Path332 6
.336 7
GetExtension337 C
(33C D
content33D K
.33K L
Name33L P
)33P Q
)33Q R
!=33S U
-33V W
$num33W X
)33X Y
{44 
yield55 
return55 $
$"55% '
{55' (
subPath55( /
}55/ 0
/550 1
{551 2
content552 9
.559 :
Name55: >
}55> ?
"55? @
;55@ A
}66 
}77 
}88 
}99 	
}:: 
};; à[
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\LocationExpander\ComponentViewLocationExpanderProvider.cs
	namespace

 	
OrchardCore


 
.

 
Mvc

 
.

 
LocationExpander

 *
{ 
public 

class 1
%ComponentViewLocationExpanderProvider 6
:7 8)
IViewLocationExpanderProvider9 V
{ 
private 
static 
readonly 
string  &
SharedViewsPath' 6
=7 8
$str9 L
+M N
RazorViewEngineO ^
.^ _
ViewExtension_ l
;l m
private 
static 
readonly 
string  &
SharedPagesPath' 6
=7 8
$str9 L
+M N
RazorViewEngineO ^
.^ _
ViewExtension_ l
;l m
private 
static 
readonly 
string  &
[& '
]' (
RazorExtensions) 8
=9 :
new; >
[> ?
]? @
{A B
RazorViewEngineC R
.R S
ViewExtensionS `
}a b
;b c
private 
const 
string 
CacheKey %
=& '
$str( F
;F G
private 
static 
List 
< 
IExtensionInfo *
>* +&
_modulesWithComponentViews, F
;F G
private 
static 
List 
< 
IExtensionInfo *
>* ++
_modulesWithPagesComponentViews, K
;K L
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
private 
static 
bool 
_initialized (
;( )
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
public 1
%ComponentViewLocationExpanderProvider 4
(4 50
$RazorCompilationFileProviderAccessor 0 
fileProviderAccessor1 E
,E F
IExtensionManager 
extensionManager .
,. /
ShellDescriptor 
shellDescriptor +
,+ ,
IMemoryCache 
memoryCache $
)$ %
{   	
_extensionManager!! 
=!! 
extensionManager!!  0
;!!0 1
_shellDescriptor"" 
="" 
shellDescriptor"" .
;"". /
_memoryCache## 
=## 
memoryCache## &
;##& '
if%% 
(%% 
_initialized%% 
)%% 
{&& 
return'' 
;'' 
}(( 
lock** 
(** 
_synLock** 
)** 
{++ 
if,, 
(,, 
!,, 
_initialized,, !
),,! "
{-- 
var.. %
modulesWithComponentViews.. 1
=..2 3
new..4 7
List..8 <
<..< =
IExtensionInfo..= K
>..K L
(..L M
)..M N
;..N O
var// *
modulesWithPagesComponentViews// 6
=//7 8
new//9 <
List//= A
<//A B
IExtensionInfo//B P
>//P Q
(//Q R
)//R S
;//S T
var11 
orderedModules11 &
=11' (
_extensionManager11) :
.11: ;
GetExtensions11; H
(11H I
)11I J
.22 
Where22 
(22 
e22  
=>22! #
e22$ %
.22% &
Manifest22& .
.22. /
Type22/ 3
.223 4
Equals224 :
(22: ;
$str22; C
,22C D
StringComparison22E U
.22U V
OrdinalIgnoreCase22V g
)22g h
)22h i
.33 
Reverse33  
(33  !
)33! "
;33" #
foreach55 
(55 
var55  
module55! '
in55( *
orderedModules55+ 9
)559 :
{66 
var77 )
moduleComponentsViewFilePaths77 9
=77: ; 
fileProviderAccessor77< P
.77P Q
FileProvider77Q ]
.77] ^
GetViewFilePaths77^ n
(77n o
module88 "
.88" #
SubPath88# *
+88+ ,
$str88- G
,88G H
RazorExtensions88I X
,88X Y
viewsFolder99 '
:99' (
null99) -
,99- .
inViewsFolder99/ <
:99< =
true99> B
,99B C
inDepth99D K
:99K L
true99M Q
)99Q R
;99R S
if;; 
(;; )
moduleComponentsViewFilePaths;; 9
.;;9 :
Any;;: =
(;;= >
);;> ?
);;? @
{<< %
modulesWithComponentViews== 5
.==5 6
Add==6 9
(==9 :
module==: @
)==@ A
;==A B
}>> 
var@@ .
"modulePagesComponentsViewFilePaths@@ >
=@@? @ 
fileProviderAccessor@@A U
.@@U V
FileProvider@@V b
.@@b c
GetViewFilePaths@@c s
(@@s t
moduleAA "
.AA" #
SubPathAA# *
+AA+ ,
$strAA- G
,AAG H
RazorExtensionsAAI X
,AAX Y
viewsFolderBB '
:BB' (
nullBB) -
,BB- .
inViewsFolderBB/ <
:BB< =
trueBB> B
,BBB C
inDepthBBD K
:BBK L
trueBBM Q
)BBQ R
;BBR S
ifDD 
(DD .
"modulePagesComponentsViewFilePathsDD >
.DD> ?
AnyDD? B
(DDB C
)DDC D
)DDD E
{EE *
modulesWithPagesComponentViewsFF :
.FF: ;
AddFF; >
(FF> ?
moduleFF? E
)FFE F
;FFF G
}GG 
}HH &
_modulesWithComponentViewsJJ .
=JJ/ 0%
modulesWithComponentViewsJJ1 J
;JJJ K+
_modulesWithPagesComponentViewsKK 3
=KK4 5*
modulesWithPagesComponentViewsKK6 T
;KKT U
_initializedMM  
=MM! "
trueMM# '
;MM' (
}NN 
}OO 
}PP 	
publicRR 
intRR 
PriorityRR 
=>RR 
$numRR  
;RR  !
publicUU 
voidUU 
PopulateValuesUU "
(UU" #'
ViewLocationExpanderContextUU# >
contextUU? F
)UUF G
{VV 	
}WW 	
publicZZ 
virtualZZ 
IEnumerableZZ "
<ZZ" #
stringZZ# )
>ZZ) *
ExpandViewLocationsZZ+ >
(ZZ> ?'
ViewLocationExpanderContextZZ? Z
contextZZ[ b
,ZZb c
IEnumerable[[? J
<[[J K
string[[K Q
>[[Q R
viewLocations[[S `
)[[` a
{\\ 	
if]] 
(]] 
context]] 
.]] 
AreaName]]  
==]]! #
null]]$ (
)]]( )
{^^ 
return__ 
viewLocations__ $
;__$ %
}`` 
varbb 
resultbb 
=bb 
newbb 
Listbb !
<bb! "
stringbb" (
>bb( )
(bb) *
)bb* +
;bb+ ,
ifdd 
(dd 
contextdd 
.dd 
ViewNamedd  
.dd  !

StartsWithdd! +
(dd+ ,
$strdd, 9
,dd9 :
StringComparisondd; K
.ddK L
OrdinalddL S
)ddS T
)ddT U
{ee 
ifff 
(ff 
!ff 
_memoryCacheff !
.ff! "
TryGetValueff" -
(ff- .
CacheKeyff. 6
,ff6 7
outff8 ;
stringff< B
[ffB C
]ffC D(
moduleComponentViewLocationsffE a
)ffa b
)ffb c
{gg 
varhh 

enabledIdshh "
=hh# $
_extensionManagerhh% 6
.hh6 7
GetFeatureshh7 B
(hhB C
)hhC D
.hhD E
WherehhE J
(hhJ K
fhhK L
=>hhM O
_shellDescriptorhhP `
.ii 
Featuresii !
.ii! "
Anyii" %
(ii% &
sfii& (
=>ii) +
sfii, .
.ii. /
Idii/ 1
==ii2 4
fii5 6
.ii6 7
Idii7 9
)ii9 :
)ii: ;
.ii; <
Selectii< B
(iiB C
fiiC D
=>iiE G
fiiH I
.iiI J
	ExtensioniiJ S
.iiS T
IdiiT V
)iiV W
.iiW X
	ToHashSetiiX a
(iia b
)iib c
;iic d
varkk 
enabledExtensionIdskk +
=kk, -
_extensionManagerkk. ?
.ll 
GetExtensionsll &
(ll& '
)ll' (
.mm 
Wheremm 
(mm 
emm  
=>mm! #

enabledIdsmm$ .
.mm. /
Containsmm/ 7
(mm7 8
emm8 9
.mm9 :
Idmm: <
)mm< =
)mm= >
.nn 
Selectnn 
(nn  
xnn  !
=>nn" $
xnn% &
.nn& '
Idnn' )
)nn) *
.oo 
	ToHashSetoo "
(oo" #
)oo# $
;oo$ %(
moduleComponentViewLocationsqq 0
=qq1 2&
_modulesWithComponentViewsqq3 M
.rr 
Whererr 
(rr 
mrr  
=>rr! #
enabledExtensionIdsrr$ 7
.rr7 8
Containsrr8 @
(rr@ A
mrrA B
.rrB C
IdrrC E
)rrE F
)rrF G
.ss 
Selectss 
(ss  
mss  !
=>ss" $
$charss% (
+ss) *
mss+ ,
.ss, -
SubPathss- 4
+ss5 6
SharedViewsPathss7 F
)ssF G
.tt 
Concattt 
(tt  +
_modulesWithPagesComponentViewstt  ?
.uu 
Whereuu 
(uu 
muu  
=>uu! #
enabledExtensionIdsuu$ 7
.uu7 8
Containsuu8 @
(uu@ A
muuA B
.uuB C
IduuC E
)uuE F
)uuF G
.vv 
Selectvv 
(vv  
mvv  !
=>vv" $
$charvv% (
+vv) *
mvv+ ,
.vv, -
SubPathvv- 4
+vv5 6
SharedPagesPathvv7 F
)vvF G
)vvG H
.ww 
ToArrayww  
(ww  !
)ww! "
;ww" #
_memoryCacheyy  
.yy  !
Setyy! $
(yy$ %
CacheKeyyy% -
,yy- .(
moduleComponentViewLocationsyy/ K
)yyK L
;yyL M
}zz 
result|| 
.|| 
AddRange|| 
(||  (
moduleComponentViewLocations||  <
)||< =
;||= >
}}} 
result 
. 
AddRange 
( 
viewLocations )
)) *
;* +
return
ÅÅ 
result
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
}
ÉÉ 
}ÑÑ √
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\LocationExpander\CompositeViewLocationExpanderProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
LocationExpander *
{ 
internal		 
class		 1
%CompositeViewLocationExpanderProvider		 8
:		9 :)
IViewLocationExpanderProvider		; X
{

 
public 
int 
Priority 
{ 	
get 
{ 
throw 
new !
NotSupportedException 1
(1 2
)2 3
;3 4
}5 6
} 	
public 
IEnumerable 
< 
string !
>! "
ExpandViewLocations# 6
(6 7'
ViewLocationExpanderContext7 R
contextS Z
,Z [
IEnumerable\ g
<g h
stringh n
>n o
viewLocationsp }
)} ~
{ 	
var 
expanderProviders !
=" #
DiscoverProviders$ 5
(5 6
context6 =
)= >
;> ?
foreach 
( 
var 
provider !
in" $
expanderProviders% 6
.6 7
OrderBy7 >
(> ?
x? @
=>A C
xD E
.E F
PriorityF N
)N O
)O P
{ 
viewLocations 
= 
provider  (
.( )
ExpandViewLocations) <
(< =
context= D
,D E
viewLocationsF S
)S T
;T U
} 
return 
viewLocations  
;  !
} 	
public 
void 
PopulateValues "
(" #'
ViewLocationExpanderContext# >
context? F
)F G
{ 	
var 
expanderProviders !
=" #
DiscoverProviders$ 5
(5 6
context6 =
)= >
;> ?
foreach   
(   
var   
provider   !
in  " $
expanderProviders  % 6
.  6 7
OrderBy  7 >
(  > ?
x  ? @
=>  A C
x  D E
.  E F
Priority  F N
)  N O
)  O P
{!! 
provider"" 
."" 
PopulateValues"" '
(""' (
context""( /
)""/ 0
;""0 1
}## 
}$$ 	
private&& 
IEnumerable&& 
<&& )
IViewLocationExpanderProvider&& 9
>&&9 :
DiscoverProviders&&; L
(&&L M'
ViewLocationExpanderContext&&M h
context&&i p
)&&p q
{'' 	
return(( 
context(( 
.)) 
ActionContext)) 
.** 
HttpContext** 
.++ 
RequestServices++  
.,, 
GetServices,, 
<,, )
IViewLocationExpanderProvider,, :
>,,: ;
(,,; <
),,< =
;,,= >
}-- 	
}.. 
}// ¡
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\LocationExpander\IViewLocationExpanderProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
LocationExpander *
{ 
public 

	interface )
IViewLocationExpanderProvider 2
:3 4!
IViewLocationExpander5 J
{ 
int 
Priority 
{ 
get 
; 
} 
} 
}		 èe
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\LocationExpander\SharedViewLocationExpanderProvider.cs
	namespace

 	
OrchardCore


 
.

 
Mvc

 
.

 
LocationExpander

 *
{ 
public 

class .
"SharedViewLocationExpanderProvider 3
:4 5)
IViewLocationExpanderProvider6 S
{ 
private 
static 
readonly 
string  &
PageSharedViewsPath' :
=; <
$str= P
+Q R
RazorViewEngineS b
.b c
ViewExtensionc p
;p q
private 
static 
readonly 
string  &
SharedViewsPath' 6
=7 8
$str9 L
+M N
RazorViewEngineO ^
.^ _
ViewExtension_ l
;l m
private 
static 
readonly 
string  &
[& '
]' (
RazorExtensions) 8
=9 :
new; >
[> ?
]? @
{A B
RazorViewEngineC R
.R S
ViewExtensionS `
}a b
;b c
private 
const 
string 
CacheKey %
=& '
$str( C
;C D
private 
const 
string 
PageCacheKey )
=* +
$str, K
;K L
private 
static 
List 
< 
IExtensionInfo *
>* +'
_modulesWithPageSharedViews, G
;G H
private 
static 
List 
< 
IExtensionInfo *
>* +#
_modulesWithSharedViews, C
;C D
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
public .
"SharedViewLocationExpanderProvider 1
(1 20
$RazorCompilationFileProviderAccessor 0 
fileProviderAccessor1 E
,E F
IExtensionManager 
extensionManager .
,. /
ShellDescriptor 
shellDescriptor +
,+ ,
IMemoryCache   
memoryCache   $
)  $ %
{!! 	
_extensionManager"" 
="" 
extensionManager""  0
;""0 1
_shellDescriptor## 
=## 
shellDescriptor## .
;##. /
_memoryCache$$ 
=$$ 
memoryCache$$ &
;$$& '
if&& 
(&& #
_modulesWithSharedViews&& '
!=&&( *
null&&+ /
)&&/ 0
{'' 
return(( 
;(( 
})) 
lock++ 
(++ 
_synLock++ 
)++ 
{,, 
if-- 
(-- #
_modulesWithSharedViews-- +
==--, .
null--/ 3
)--3 4
{.. 
var// 
orderedModules// &
=//' (
_extensionManager//) :
.//: ;
GetExtensions//; H
(//H I
)//I J
.00 
Where00 
(00 
e00  
=>00! #
e00$ %
.00% &
Manifest00& .
.00. /
Type00/ 3
.003 4
Equals004 :
(00: ;
$str00; C
,00C D
StringComparison00E U
.00U V
OrdinalIgnoreCase00V g
)00g h
)00h i
.11 
Reverse11  
(11  !
)11! "
;11" #
var33 &
modulesWithPageSharedViews33 2
=333 4
new335 8
List339 =
<33= >
IExtensionInfo33> L
>33L M
(33M N
)33N O
;33O P
var44 "
modulesWithSharedViews44 .
=44/ 0
new441 4
List445 9
<449 :
IExtensionInfo44: H
>44H I
(44I J
)44J K
;44K L
foreach66 
(66 
var66  
module66! '
in66( *
orderedModules66+ 9
)669 :
{77 
var88 )
modulePageSharedViewFilePaths88 9
=88: ; 
fileProviderAccessor88< P
.88P Q
FileProvider88Q ]
.88] ^
GetViewFilePaths88^ n
(88n o
module99 "
.99" #
SubPath99# *
+99+ ,
$str99- <
,99< =
RazorExtensions99> M
,99M N
viewsFolder:: '
:::' (
null::) -
,::- .
inViewsFolder::/ <
:::< =
true::> B
,::B C
inDepth::D K
:::K L
true::M Q
)::Q R
;::R S
if<< 
(<< )
modulePageSharedViewFilePaths<< 9
.<<9 :
Any<<: =
(<<= >
)<<> ?
)<<? @
{== &
modulesWithPageSharedViews>> 6
.>>6 7
Add>>7 :
(>>: ;
module>>; A
)>>A B
;>>B C
}?? 
varAA %
moduleSharedViewFilePathsAA 5
=AA6 7 
fileProviderAccessorAA8 L
.AAL M
FileProviderAAM Y
.AAY Z
GetViewFilePathsAAZ j
(AAj k
moduleBB "
.BB" #
SubPathBB# *
+BB+ ,
$strBB- <
,BB< =
RazorExtensionsBB> M
,BBM N
viewsFolderCC '
:CC' (
nullCC) -
,CC- .
inViewsFolderCC/ <
:CC< =
trueCC> B
,CCB C
inDepthCCD K
:CCK L
trueCCM Q
)CCQ R
;CCR S
ifEE 
(EE %
moduleSharedViewFilePathsEE 5
.EE5 6
AnyEE6 9
(EE9 :
)EE: ;
)EE; <
{FF "
modulesWithSharedViewsGG 2
.GG2 3
AddGG3 6
(GG6 7
moduleGG7 =
)GG= >
;GG> ?
}HH 
}II '
_modulesWithPageSharedViewsKK /
=KK0 1&
modulesWithPageSharedViewsKK2 L
;KKL M#
_modulesWithSharedViewsLL +
=LL, -"
modulesWithSharedViewsLL. D
;LLD E
}MM 
}NN 
}OO 	
publicQQ 
intQQ 
PriorityQQ 
=>QQ 
$numQQ  
;QQ  !
publicTT 
voidTT 
PopulateValuesTT "
(TT" #'
ViewLocationExpanderContextTT# >
contextTT? F
)TTF G
{UU 	
}VV 	
publicYY 
virtualYY 
IEnumerableYY "
<YY" #
stringYY# )
>YY) *
ExpandViewLocationsYY+ >
(YY> ?'
ViewLocationExpanderContextYY? Z
contextYY[ b
,YYb c
IEnumerableZZ? J
<ZZJ K
stringZZK Q
>ZZQ R
viewLocationsZZS `
)ZZ` a
{[[ 	
if\\ 
(\\ 
context\\ 
.\\ 
AreaName\\  
==\\! #
null\\$ (
)\\( )
{]] 
return^^ 
viewLocations^^ $
;^^$ %
}__ 
HashSetaa 
<aa 
stringaa 
>aa 
enabledExtensionIdsaa /
=aa0 1
nullaa2 6
;aa6 7
varcc 
resultcc 
=cc 
newcc 
Listcc !
<cc! "
stringcc" (
>cc( )
(cc) *
)cc* +
;cc+ ,
ifee 
(ee 
contextee 
.ee 
PageNameee  
!=ee! #
nullee$ (
)ee( )
{ff 
ifgg 
(gg 
!gg 
_memoryCachegg !
.gg! "
TryGetValuegg" -
(gg- .
PageCacheKeygg. :
,gg: ;
outgg< ?
IEnumerablegg@ K
<ggK L
stringggL R
>ggR S)
modulePageSharedViewLocationsggT q
)ggq r
)ggr s
{hh )
modulePageSharedViewLocationsii 1
=ii2 3'
_modulesWithPageSharedViewsii4 O
.jj 
Wherejj 
(jj 
mjj  
=>jj! #"
GetEnabledExtensionIdsjj$ :
(jj: ;
)jj; <
.jj< =
Containsjj= E
(jjE F
mjjF G
.jjG H
IdjjH J
)jjJ K
)jjK L
.kk 
Selectkk 
(kk  
mkk  !
=>kk" $
$charkk% (
+kk) *
mkk+ ,
.kk, -
SubPathkk- 4
+kk5 6
PageSharedViewsPathkk7 J
)kkJ K
;kkK L
_memoryCachemm  
.mm  !
Setmm! $
(mm$ %
PageCacheKeymm% 1
,mm1 2)
modulePageSharedViewLocationsmm3 P
)mmP Q
;mmQ R
}nn 
resultpp 
.pp 
AddRangepp 
(pp  )
modulePageSharedViewLocationspp  =
)pp= >
;pp> ?
}qq 
ifss 
(ss 
!ss 
_memoryCachess 
.ss 
TryGetValuess )
(ss) *
CacheKeyss* 2
,ss2 3
outss4 7
IEnumerabless8 C
<ssC D
stringssD J
>ssJ K%
moduleSharedViewLocationsssL e
)sse f
)ssf g
{tt %
moduleSharedViewLocationsuu )
=uu* +#
_modulesWithSharedViewsuu, C
.vv 
Wherevv 
(vv 
mvv 
=>vv "
GetEnabledExtensionIdsvv  6
(vv6 7
)vv7 8
.vv8 9
Containsvv9 A
(vvA B
mvvB C
.vvC D
IdvvD F
)vvF G
)vvG H
.ww 
Selectww 
(ww 
mww 
=>ww  
$charww! $
+ww% &
mww' (
.ww( )
SubPathww) 0
+ww1 2
SharedViewsPathww3 B
)wwB C
;wwC D
_memoryCacheyy 
.yy 
Setyy  
(yy  !
CacheKeyyy! )
,yy) *%
moduleSharedViewLocationsyy+ D
)yyD E
;yyE F
}zz 
result|| 
.|| 
AddRange|| 
(|| %
moduleSharedViewLocations|| 5
)||5 6
;||6 7
result}} 
.}} 
AddRange}} 
(}} 
viewLocations}} )
)}}) *
;}}* +
return 
result 
; 
HashSet
ÅÅ 
<
ÅÅ 
string
ÅÅ 
>
ÅÅ $
GetEnabledExtensionIds
ÅÅ 2
(
ÅÅ2 3
)
ÅÅ3 4
{
ÇÇ 
if
ÉÉ 
(
ÉÉ !
enabledExtensionIds
ÉÉ '
!=
ÉÉ( *
null
ÉÉ+ /
)
ÉÉ/ 0
{
ÑÑ 
return
ÖÖ !
enabledExtensionIds
ÖÖ .
;
ÖÖ. /
}
ÜÜ 
var
àà 

enabledIds
àà 
=
àà  
_extensionManager
àà! 2
.
àà2 3
GetFeatures
àà3 >
(
àà> ?
)
àà? @
.
àà@ A
Where
ààA F
(
ààF G
f
ààG H
=>
ààI K
_shellDescriptor
ààL \
.
ââ 
Features
ââ !
.
ââ! "
Any
ââ" %
(
ââ% &
sf
ââ& (
=>
ââ) +
sf
ââ, .
.
ââ. /
Id
ââ/ 1
==
ââ2 4
f
ââ5 6
.
ââ6 7
Id
ââ7 9
)
ââ9 :
)
ââ: ;
.
ââ; <
Select
ââ< B
(
ââB C
f
ââC D
=>
ââE G
f
ââH I
.
ââI J
	Extension
ââJ S
.
ââS T
Id
ââT V
)
ââV W
.
ââW X
	ToHashSet
ââX a
(
ââa b
)
ââb c
;
ââc d
return
ãã !
enabledExtensionIds
ãã *
=
ãã+ ,
_extensionManager
ãã- >
.
ãã> ?
GetExtensions
ãã? L
(
ããL M
)
ããM N
.
åå 
Where
åå 
(
åå 
e
åå 
=>
åå 

enabledIds
åå  *
.
åå* +
Contains
åå+ 3
(
åå3 4
e
åå4 5
.
åå5 6
Id
åå6 8
)
åå8 9
)
åå9 :
.
åå: ;
Select
åå; A
(
ååA B
x
ååB C
=>
ååD F
x
ååG H
.
ååH I
Id
ååI K
)
ååK L
.
ååL M
	ToHashSet
ååM V
(
ååV W
)
ååW X
;
ååX Y
}
çç 
}
éé 	
}
èè 
}êê ˜
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ModelBinding\CheckMarkModelBinder.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
ModelBinding &
{ 
public 

class  
CheckMarkModelBinder %
:& '
IModelBinder( 4
{ 
public		 
Task		 
BindModelAsync		 "
(		" #
ModelBindingContext		# 6
bindingContext		7 E
)		E F
{

 	
if 
( 
bindingContext 
== !
null" &
)& '
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
bindingContext7 E
)E F
)F G
;G H
} 
if 
( 
bindingContext 
. 
	ModelType (
==) +
typeof, 2
(2 3
bool3 7
)7 8
)8 9
{ 
var 
valueProviderResult '
=( )
bindingContext* 8
.8 9
ValueProvider9 F
.F G
GetValueG O
(O P
bindingContextP ^
.^ _
	ModelName_ h
)h i
;i j
if 
( 
valueProviderResult '
==( *
ValueProviderResult+ >
.> ?
None? C
)C D
{ 
return 
Task 
.  
CompletedTask  -
;- .
} 
bindingContext 
. 

ModelState )
.) *
SetModelValue* 7
(7 8
bindingContext8 F
.F G
	ModelNameG P
,P Q
valueProviderResultR e
)e f
;f g
if 
( 
valueProviderResult '
.' (
Values( .
==/ 1
$str2 5
)5 6
{ 
bindingContext "
." #
Result# )
=* +
ModelBindingResult, >
.> ?
Success? F
(F G
bindingContextG U
.U V
	ModelNameV _
)_ `
;` a
} 
else 
if 
( 
valueProviderResult ,
., -
Values- 3
==4 6
$str7 :
): ;
{ 
bindingContext   "
.  " #
Result  # )
=  * +
ModelBindingResult  , >
.  > ?
Failed  ? E
(  E F
)  F G
;  G H
}!! 
}"" 
return$$ 
Task$$ 
.$$ 
CompletedTask$$ %
;$$% &
}%% 	
}&& 
}'' Ç
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ModelBinding\CheckMarkModelBinderProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
ModelBinding &
{ 
public		 

class		 (
CheckMarkModelBinderProvider		 -
:		. / 
IModelBinderProvider		0 D
{

 
public 
IModelBinder 
	GetBinder %
(% &&
ModelBinderProviderContext& @
contextA H
)H I
{ 	
if 
( 
context 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
context7 >
)> ?
)? @
;@ A
} 
if 
( 
context 
. 
Metadata  
.  !
	ModelType! *
==+ -
typeof. 4
(4 5 
CheckMarkModelBinder5 I
)I J
)J K
{ 
return 
new  
CheckMarkModelBinder /
(/ 0
)0 1
;1 2
} 
return 
null 
; 
} 	
} 
} ¸
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ModularApplicationModelProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class +
ModularApplicationModelProvider 0
:1 2%
IApplicationModelProvider3 L
{ 
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
public +
ModularApplicationModelProvider .
(. / 
ITypeFeatureProvider  
typeFeatureProvider! 4
,4 5
IHostEnvironment 
hostingEnvironment /
,/ 0
ShellSettings 
shellSettings '
)' (
{ 	 
_typeFeatureProvider  
=! "
typeFeatureProvider# 6
;6 7
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
_shellSettings 
= 
shellSettings *
;* +
} 	
public 
int 
Order 
{ 	
get 
{   
return!! 
$num!! 
;!! 
}"" 
}## 	
public%% 
void%% 
OnProvidersExecuted%% '
(%%' (+
ApplicationModelProviderContext%%( G
context%%H O
)%%O P
{&& 	
foreach++ 
(++ 
var++ 

controller++ #
in++$ &
context++' .
.++. /
Result++/ 5
.++5 6
Controllers++6 A
)++A B
{,, 
var-- 
controllerType-- "
=--# $

controller--% /
.--/ 0
ControllerType--0 >
.--> ?
AsType--? E
(--E F
)--F G
;--G H
var.. 
	blueprint.. 
=..  
_typeFeatureProvider..  4
...4 5#
GetFeatureForDependency..5 L
(..L M
controllerType..M [
)..[ \
;..\ ]
if00 
(00 
	blueprint00 
!=00  
null00! %
)00% &
{11 
if22 
(22 
	blueprint22 !
.22! "
	Extension22" +
.22+ ,
Id22, .
==22/ 1
_hostingEnvironment222 E
.22E F
ApplicationName22F U
&&22V X
_shellSettings33 &
.33& '
State33' ,
!=33- /
TenantState330 ;
.33; <
Running33< C
)33C D
{44 
foreach66 
(66  !
var66! $
action66% +
in66, .

controller66/ 9
.669 :
Actions66: A
)66A B
{77 
action88 "
.88" #
	Selectors88# ,
.88, -
Clear88- 2
(882 3
)883 4
;884 5
}99 

controller;; "
.;;" #
	Selectors;;# ,
.;;, -
Clear;;- 2
(;;2 3
);;3 4
;;;4 5
}<< 
else== 
{>> 

controller@@ "
.@@" #
RouteValues@@# .
.@@. /
Add@@/ 2
(@@2 3
$str@@3 9
,@@9 :
	blueprint@@; D
.@@D E
	Extension@@E N
.@@N O
Id@@O Q
)@@Q R
;@@R S
}AA 
}BB 
}CC 
}DD 	
publicFF 
voidFF  
OnProvidersExecutingFF (
(FF( )+
ApplicationModelProviderContextFF) H
contextFFI P
)FFP Q
{GG 	
}HH 	
}II 
}JJ ä
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ModularRazorViewEngineOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class .
"ModularRazorViewEngineOptionsSetup 3
:4 5
IConfigureOptions6 G
<G H"
RazorViewEngineOptionsH ^
>^ _
{ 
public		 .
"ModularRazorViewEngineOptionsSetup		 1
(		1 2
)		2 3
{

 	
} 	
public 
void 
	Configure 
( "
RazorViewEngineOptions 4
options5 <
)< =
{ 	
options 
. !
ViewLocationExpanders )
.) *
Add* -
(- .
new. 11
%CompositeViewLocationExpanderProvider2 W
(W X
)X Y
)Y Z
;Z [
} 	
} 
} ˚á
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ModuleProjectRazorFileProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class *
ModuleProjectRazorFileProvider /
:0 1
IFileProvider2 ?
{ 
private 
static 
IList 
< 
IFileProvider *
>* +
_pageFileProviders, >
;> ?
private 
static 

Dictionary !
<! "
string" (
,( )
string* 0
>0 1
_roots2 8
;8 9
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
public *
ModuleProjectRazorFileProvider -
(- .
IApplicationContext. A
applicationContextB T
)T U
{ 	
if 
( 
_roots 
!= 
null 
) 
{ 
return 
; 
} 
lock 
( 
_synLock 
) 
{ 
if   
(   
_roots   
==   
null   "
)  " #
{!! 
var"" 
application"" #
=""$ %
applicationContext""& 8
.""8 9
Application""9 D
;""D E
_pageFileProviders$$ &
=$$' (
new$$) ,
List$$- 1
<$$1 2
IFileProvider$$2 ?
>$$? @
($$@ A
)$$A B
;$$B C
var%% 
roots%% 
=%% 
new%%  #

Dictionary%%$ .
<%%. /
string%%/ 5
,%%5 6
string%%7 =
>%%= >
(%%> ?
)%%? @
;%%@ A
foreach(( 
((( 
var((  
module((! '
in((( *
application((+ 6
.((6 7
Modules((7 >
)((> ?
{)) 
if,, 
(,, 
module,, "
.,," #
Assembly,,# +
==,,, .
null,,/ 3
||,,4 6
Path,,7 ;
.,,; <
GetDirectoryName,,< L
(,,L M
module,,M S
.,,S T
Assembly,,T \
.,,\ ]
Location,,] e
),,e f
!=-- 
Path-- #
.--# $
GetDirectoryName--$ 4
(--4 5
application--5 @
.--@ A
Assembly--A I
.--I J
Location--J R
)--R S
)--S T
{.. 
continue// $
;//$ %
}00 
var33 
assets33 "
=33# $
module33% +
.33+ ,
Assets33, 2
.332 3
Where333 8
(338 9
a339 :
=>33; =
a33> ?
.33? @
ModuleAssetPath33@ O
.44 
EndsWith44 %
(44% &
$str44& /
,44/ 0
StringComparison441 A
.44A B
Ordinal44B I
)44I J
)44J K
;44K L
if66 
(66 
assets66 "
.66" #
Any66# &
(66& '
)66' (
)66( )
{77 
var88 
asset88  %
=88& '
assets88( .
.88. /
First88/ 4
(884 5
)885 6
;886 7
var99 
index99  %
=99& '
asset99( -
.99- .
ModuleAssetPath99. =
.99= >
IndexOf99> E
(99E F
module99F L
.99L M
Root99M Q
,99Q R
StringComparison99S c
.99c d
Ordinal99d k
)99k l
;99l m
var<< 
filePath<<  (
=<<) *
asset<<+ 0
.<<0 1
ModuleAssetPath<<1 @
.<<@ A
	Substring<<A J
(<<J K
index<<K P
+<<Q R
module<<S Y
.<<Y Z
Root<<Z ^
.<<^ _
Length<<_ e
)<<e f
;<<f g
var== 
root==  $
===% &
asset==' ,
.==, -
ProjectAssetPath==- =
.=== >
	Substring==> G
(==G H
$num==H I
,==I J
asset==K P
.==P Q
ProjectAssetPath==Q a
.==a b
Length==b h
-==i j
filePath==k s
.==s t
Length==t z
)==z {
;=={ |
var@@ 
page@@  $
=@@% &
assets@@' -
.@@- .
FirstOrDefault@@. <
(@@< =
a@@= >
=>@@? A
a@@B C
.@@C D
ProjectAssetPath@@D T
.@@T U
Contains@@U ]
(@@] ^
$str@@^ g
)@@g h
)@@h i
;@@i j
ifCC 
(CC  
pageCC  $
!=CC% '
nullCC( ,
&&CC- /
	DirectoryCC0 9
.CC9 :
ExistsCC: @
(CC@ A
rootCCA E
)CCE F
)CCF G
{DD 
_pageFileProvidersGG  2
.GG2 3
AddGG3 6
(GG6 7
newGG7 : 
PhysicalFileProviderGG; O
(GGO P
rootGGP T
)GGT U
)GGU V
;GGV W
}HH 
rootsKK !
[KK! "
moduleKK" (
.KK( )
NameKK) -
]KK- .
=KK/ 0
rootKK1 5
;KK5 6
}LL 
}MM 
_rootsOO 
=OO 
rootsOO "
;OO" #
}PP 
}QQ 
}RR 	
publicTT 
IDirectoryContentsTT ! 
GetDirectoryContentsTT" 6
(TT6 7
stringTT7 =
subpathTT> E
)TTE F
{UU 	
if__ 
(__ 
subpath__ 
==__ 
null__ 
)__  
{`` 
returnaa %
NotFoundDirectoryContentsaa 0
.aa0 1
	Singletonaa1 :
;aa: ;
}bb 
vardd 
folderdd 
=dd 
NormalizePathdd &
(dd& '
subpathdd' .
)dd. /
;dd/ 0
ifgg 
(gg 
foldergg 
.gg 

StartsWithgg !
(gg! "
Applicationgg" -
.gg- .
ModulesRootgg. 9
,gg9 :
StringComparisongg; K
.ggK L
OrdinalggL S
)ggS T
)ggT U
{hh 
folderjj 
=jj 
folderjj 
.jj  
	Substringjj  )
(jj) *
Applicationjj* 5
.jj5 6
ModulesRootjj6 A
.jjA B
LengthjjB H
)jjH I
;jjI J
varkk 
indexkk 
=kk 
folderkk "
.kk" #
IndexOfkk# *
(kk* +
$charkk+ .
)kk. /
;kk/ 0
ifnn 
(nn 
indexnn 
!=nn 
-nn 
$numnn 
)nn  
{oo 
varqq 
moduleqq 
=qq  
folderqq! '
.qq' (
	Substringqq( 1
(qq1 2
$numqq2 3
,qq3 4
indexqq5 :
)qq: ;
;qq; <
iftt 
(tt 
_rootstt 
.tt 
TryGetValuett *
(tt* +
modulett+ 1
,tt1 2
outtt3 6
vartt7 :
roottt; ?
)tt? @
&&ttA C
(vv 
foldervv 
.vv  
EndsWithvv  (
(vv( )
$strvv) 1
,vv1 2
StringComparisonvv3 C
.vvC D
OrdinalvvD K
)vvK L
||vvM O
foldervvP V
.vvV W
ContainsvvW _
(vv_ `
$strvv` i
)vvi j
)vvj k
)vvk l
{ww 
folderyy 
=yy  
rootyy! %
+yy& '
folderyy( .
.yy. /
	Substringyy/ 8
(yy8 9
moduleyy9 ?
.yy? @
Lengthyy@ F
+yyG H
$numyyI J
)yyJ K
;yyK L
if{{ 
({{ 
	Directory{{ %
.{{% &
Exists{{& ,
({{, -
folder{{- 3
){{3 4
){{4 5
{|| 
return~~ "
new~~# &%
PhysicalDirectoryContents~~' @
(~~@ A
folder~~A G
)~~G H
;~~H I
} 
}
ÄÄ 
}
ÅÅ 
}
ÇÇ 
return
ÑÑ '
NotFoundDirectoryContents
ÑÑ ,
.
ÑÑ, -
	Singleton
ÑÑ- 6
;
ÑÑ6 7
}
ÖÖ 	
public
áá 
	IFileInfo
áá 
GetFileInfo
áá $
(
áá$ %
string
áá% +
subpath
áá, 3
)
áá3 4
{
àà 	
if
ââ 
(
ââ 
subpath
ââ 
==
ââ 
null
ââ 
)
ââ  
{
ää 
return
ãã 
new
ãã 
NotFoundFileInfo
ãã +
(
ãã+ ,
subpath
ãã, 3
)
ãã3 4
;
ãã4 5
}
åå 
var
éé 
path
éé 
=
éé 
NormalizePath
éé $
(
éé$ %
subpath
éé% ,
)
éé, -
;
éé- .
if
ëë 
(
ëë 
path
ëë 
.
ëë 

StartsWith
ëë 
(
ëë  
Application
ëë  +
.
ëë+ ,
ModulesRoot
ëë, 7
,
ëë7 8
StringComparison
ëë9 I
.
ëëI J
Ordinal
ëëJ Q
)
ëëQ R
)
ëëR S
{
íí 
path
îî 
=
îî 
path
îî 
.
îî 
	Substring
îî %
(
îî% &
Application
îî& 1
.
îî1 2
ModulesRoot
îî2 =
.
îî= >
Length
îî> D
)
îîD E
;
îîE F
var
ïï 
index
ïï 
=
ïï 
path
ïï  
.
ïï  !
IndexOf
ïï! (
(
ïï( )
$char
ïï) ,
)
ïï, -
;
ïï- .
if
òò 
(
òò 
index
òò 
!=
òò 
-
òò 
$num
òò 
)
òò  
{
ôô 
var
õõ 
module
õõ 
=
õõ  
path
õõ! %
.
õõ% &
	Substring
õõ& /
(
õõ/ 0
$num
õõ0 1
,
õõ1 2
index
õõ3 8
)
õõ8 9
;
õõ9 :
if
ûû 
(
ûû 
_roots
ûû 
.
ûû 
TryGetValue
ûû *
(
ûû* +
module
ûû+ 1
,
ûû1 2
out
ûû3 6
var
ûû7 :
root
ûû; ?
)
ûû? @
)
ûû@ A
{
üü 
var
°° 
filePath
°° $
=
°°% &
root
°°' +
+
°°, -
path
°°. 2
.
°°2 3
	Substring
°°3 <
(
°°< =
module
°°= C
.
°°C D
Length
°°D J
+
°°K L
$num
°°M N
)
°°N O
;
°°O P
if
££ 
(
££ 
File
££  
.
££  !
Exists
££! '
(
££' (
filePath
££( 0
)
££0 1
)
££1 2
{
§§ 
return
¶¶ "
new
¶¶# &
PhysicalFileInfo
¶¶' 7
(
¶¶7 8
new
¶¶8 ;
FileInfo
¶¶< D
(
¶¶D E
filePath
¶¶E M
)
¶¶M N
)
¶¶N O
;
¶¶O P
}
ßß 
}
®® 
}
©© 
}
™™ 
return
¨¨ 
new
¨¨ 
NotFoundFileInfo
¨¨ '
(
¨¨' (
subpath
¨¨( /
)
¨¨/ 0
;
¨¨0 1
}
≠≠ 	
public
ØØ 
IChangeToken
ØØ 
Watch
ØØ !
(
ØØ! "
string
ØØ" (
filter
ØØ) /
)
ØØ/ 0
{
∞∞ 	
if
±± 
(
±± 
filter
±± 
==
±± 
null
±± 
)
±± 
{
≤≤ 
return
≥≥ 
NullChangeToken
≥≥ &
.
≥≥& '
	Singleton
≥≥' 0
;
≥≥0 1
}
¥¥ 
var
∂∂ 
path
∂∂ 
=
∂∂ 
NormalizePath
∂∂ $
(
∂∂$ %
filter
∂∂% +
)
∂∂+ ,
;
∂∂, -
if
ππ 
(
ππ 
path
ππ 
.
ππ 

StartsWith
ππ 
(
ππ  
Application
ππ  +
.
ππ+ ,
ModulesRoot
ππ, 7
,
ππ7 8
StringComparison
ππ9 I
.
ππI J
Ordinal
ππJ Q
)
ππQ R
&&
ππS U
!
ππV W
path
ππW [
.
ππ[ \
Contains
ππ\ d
(
ππd e
$char
ππe h
)
ππh i
)
ππi j
{
∫∫ 
path
ºº 
=
ºº 
path
ºº 
.
ºº 
	Substring
ºº %
(
ºº% &
Application
ºº& 1
.
ºº1 2
ModulesRoot
ºº2 =
.
ºº= >
Length
ºº> D
)
ººD E
;
ººE F
var
ΩΩ 
index
ΩΩ 
=
ΩΩ 
path
ΩΩ  
.
ΩΩ  !
IndexOf
ΩΩ! (
(
ΩΩ( )
$char
ΩΩ) ,
)
ΩΩ, -
;
ΩΩ- .
if
¿¿ 
(
¿¿ 
index
¿¿ 
!=
¿¿ 
-
¿¿ 
$num
¿¿ 
)
¿¿  
{
¡¡ 
var
√√ 
module
√√ 
=
√√  
path
√√! %
.
√√% &
	Substring
√√& /
(
√√/ 0
$num
√√0 1
,
√√1 2
index
√√3 8
)
√√8 9
;
√√9 :
if
∆∆ 
(
∆∆ 
_roots
∆∆ 
.
∆∆ 
TryGetValue
∆∆ *
(
∆∆* +
module
∆∆+ 1
,
∆∆1 2
out
∆∆3 6
var
∆∆7 :
root
∆∆; ?
)
∆∆? @
)
∆∆@ A
{
«« 
var
…… 
filePath
…… $
=
……% &
root
……' +
+
……, -
path
……. 2
.
……2 3
	Substring
……3 <
(
……< =
module
……= C
.
……C D
Length
……D J
+
……K L
$num
……M N
)
……N O
;
……O P
var
ÀÀ 
	directory
ÀÀ %
=
ÀÀ& '
Path
ÀÀ( ,
.
ÀÀ, -
GetDirectoryName
ÀÀ- =
(
ÀÀ= >
filePath
ÀÀ> F
)
ÀÀF G
;
ÀÀG H
var
ÃÃ 
fileName
ÃÃ $
=
ÃÃ% &
Path
ÃÃ' +
.
ÃÃ+ ,)
GetFileNameWithoutExtension
ÃÃ, G
(
ÃÃG H
filePath
ÃÃH P
)
ÃÃP Q
;
ÃÃQ R
if
ŒŒ 
(
ŒŒ 
	Directory
ŒŒ %
.
ŒŒ% &
Exists
ŒŒ& ,
(
ŒŒ, -
	directory
ŒŒ- 6
)
ŒŒ6 7
)
ŒŒ7 8
{
œœ 
return
”” "
new
””# &(
PollingWildCardChangeToken
””' A
(
””A B
	directory
””B K
,
””K L
fileName
””M U
+
””V W
$str
””X \
)
””\ ]
;
””] ^
}
‘‘ 
}
’’ 
}
÷÷ 
}
◊◊ 
else
€€ 
if
€€ 
(
€€ 
path
€€ 
.
€€ 
Equals
€€  
(
€€  !
$str
€€! 4
)
€€4 5
)
€€5 6
{
‹‹ 
var
›› 
changeTokens
››  
=
››! "
new
››# &
List
››' +
<
››+ ,
IChangeToken
››, 8
>
››8 9
(
››9 :
)
››: ;
;
››; <
foreach
‡‡ 
(
‡‡ 
var
‡‡ 
provider
‡‡ %
in
‡‡& ( 
_pageFileProviders
‡‡) ;
)
‡‡; <
{
·· 
var
„„ 
changeToken
„„ #
=
„„$ %
provider
„„& .
.
„„. /
Watch
„„/ 4
(
„„4 5
$str
„„5 H
)
„„H I
;
„„I J
if
ÂÂ 
(
ÂÂ 
changeToken
ÂÂ #
!=
ÂÂ$ &
null
ÂÂ' +
)
ÂÂ+ ,
{
ÊÊ 
changeTokens
ÁÁ $
.
ÁÁ$ %
Add
ÁÁ% (
(
ÁÁ( )
changeToken
ÁÁ) 4
)
ÁÁ4 5
;
ÁÁ5 6
}
ËË 
}
ÈÈ 
if
ÎÎ 
(
ÎÎ 
changeTokens
ÎÎ  
.
ÎÎ  !
Count
ÎÎ! &
==
ÎÎ' )
$num
ÎÎ* +
)
ÎÎ+ ,
{
ÏÏ 
return
ÌÌ 
changeTokens
ÌÌ '
.
ÌÌ' (
First
ÌÌ( -
(
ÌÌ- .
)
ÌÌ. /
;
ÌÌ/ 0
}
ÓÓ 
if
 
(
 
changeTokens
  
.
  !
Count
! &
>
' (
$num
) *
)
* +
{
ÒÒ 
return
ÛÛ 
new
ÛÛ "
CompositeChangeToken
ÛÛ 3
(
ÛÛ3 4
changeTokens
ÛÛ4 @
)
ÛÛ@ A
;
ÛÛA B
}
ÙÙ 
}
ıı 
return
˜˜ 
NullChangeToken
˜˜ "
.
˜˜" #
	Singleton
˜˜# ,
;
˜˜, -
}
¯¯ 	
private
˙˙ 
string
˙˙ 
NormalizePath
˙˙ $
(
˙˙$ %
string
˙˙% +
path
˙˙, 0
)
˙˙0 1
{
˚˚ 	
return
¸¸ 
path
¸¸ 
.
¸¸ 
Replace
¸¸ 
(
¸¸  
$char
¸¸  $
,
¸¸$ %
$char
¸¸& )
)
¸¸) *
.
¸¸* +
Trim
¸¸+ /
(
¸¸/ 0
$char
¸¸0 3
)
¸¸3 4
;
¸¸4 5
}
˝˝ 	
}
˛˛ 
}ˇˇ ◊
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Properties\AssemblyInfo.cs
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
$str		 1
)		1 2
]		2 3
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
]7 8¢
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\RazorCompilationFileProviderAccessor.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class 0
$RazorCompilationFileProviderAccessor 5
{		 
private

 
readonly

 -
!MvcRazorRuntimeCompilationOptions

 :
_options

; C
;

C D
private 
IFileProvider "
_compositeFileProvider 4
;4 5
public 0
$RazorCompilationFileProviderAccessor 3
(3 4
IOptions4 <
<< =-
!MvcRazorRuntimeCompilationOptions= ^
>^ _
options` g
)g h
{ 	
if 
( 
options 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
options7 >
)> ?
)? @
;@ A
} 
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
IFileProvider 
FileProvider )
{ 	
get 
{ 
if 
( "
_compositeFileProvider *
==+ -
null. 2
)2 3
{ "
_compositeFileProvider *
=+ ,$
GetCompositeFileProvider- E
(E F
_optionsF N
)N O
;O P
} 
return   "
_compositeFileProvider   -
;  - .
}!! 
}"" 	
private$$ 
static$$ 
IFileProvider$$ $$
GetCompositeFileProvider$$% =
($$= >-
!MvcRazorRuntimeCompilationOptions$$> _
options$$` g
)$$g h
{%% 	
var&& 
fileProviders&& 
=&& 
options&&  '
.&&' (
FileProviders&&( 5
;&&5 6
if(( 
((( 
fileProviders(( 
.(( 
Count(( #
==(($ &
$num((' (
)((( )
{)) 
return** 
fileProviders** $
[**$ %
$num**% &
]**& '
;**' (
}++ 
return-- 
new-- !
CompositeFileProvider-- ,
(--, -
fileProviders--- :
)--: ;
;--; <
}.. 	
}// 
}00 Ê
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\RazorCompilationOptionsSetup.cs
	namespace		 	
OrchardCore		
 
.		 
Mvc		 
{

 
public 

class (
RazorCompilationOptionsSetup -
:. /
IConfigureOptions0 A
<A B-
!MvcRazorRuntimeCompilationOptionsB c
>c d
{ 
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public (
RazorCompilationOptionsSetup +
(+ ,
IHostEnvironment, <
hostingEnvironment= O
,O P
IApplicationContextQ d
applicationContexte w
)w x
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
_applicationContext 
=  !
applicationContext" 4
;4 5
} 	
public 
void 
	Configure 
( -
!MvcRazorRuntimeCompilationOptions ?
options@ G
)G H
{ 	
var 
refsFolderExists  
=! "
	Directory# ,
., -
Exists- 3
(3 4
Path4 8
.8 9
Combine9 @
(@ A
	AppDomainA J
.J K
CurrentDomainK X
.X Y
BaseDirectoryY f
,f g
$strh n
)n o
)o p
;p q
if 
( 
! 
refsFolderExists !
)! "
{ 
options 
. 
FileProviders %
.% &
Insert& ,
(, -
$num- .
,. /
_hostingEnvironment0 C
.C D#
ContentRootFileProviderD [
)[ \
;\ ]
}   
options$$ 
.$$ 
FileProviders$$ !
.$$! "
Insert$$" (
($$( )
$num$$) *
,$$* +
new$$, /'
ApplicationViewFileProvider$$0 K
($$K L
_applicationContext$$L _
)$$_ `
)$$` a
;$$a b
if&& 
(&& 
_hostingEnvironment&& #
.&&# $
IsDevelopment&&$ 1
(&&1 2
)&&2 3
)&&3 4
{'' 
options)) 
.)) 
FileProviders)) %
.))% &
Insert))& ,
()), -
$num))- .
,)). /
new))0 3*
ModuleProjectRazorFileProvider))4 R
())R S
_applicationContext))S f
)))f g
)))g h
;))h i
}** 
}++ 	
},, 
}-- Ê
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\ModularPageApplicationModelProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{		 
public

 

class

 /
#ModularPageApplicationModelProvider

 4
:

5 6)
IPageApplicationModelProvider

7 T
{ 
private 
IEnumerable 
< 
string "
>" #
_paths$ *
;* +
public /
#ModularPageApplicationModelProvider 2
(2 3
IExtensionManager 
extensionManager .
,. /
ShellDescriptor 
shellDescriptor +
)+ ,
{ 	
_paths 
= 
extensionManager %
.% &
GetFeatures& 1
(1 2
)2 3
.3 4
Where4 9
(9 :
f: ;
=>< >
shellDescriptor? N
.N O
FeaturesO W
.W X
AnyX [
([ \
sf\ ^
=>_ a
sf 
. 
Id 
== 
f 
. 
Id 
) 
) 
.  
Select  &
(& '
f' (
=>) +
$char, /
+0 1
f2 3
.3 4
	Extension4 =
.= >
SubPath> E
+F G
$strH Q
)Q R
.R S
DistinctS [
([ \
)\ ]
;] ^
} 	
public 
int 
Order 
=> 
- 
$num !
+" #
$num$ &
;& '
public 
void  
OnProvidersExecuting (
(( )/
#PageApplicationModelProviderContext) L
contextM T
)T U
{ 	
} 	
public 
void 
OnProvidersExecuted '
(' (/
#PageApplicationModelProviderContext( K
contextL S
)S T
{ 	
var!! 
relativePath!! 
=!! 
context!! &
.!!& '
ActionDescriptor!!' 7
.!!7 8
RelativePath!!8 D
;!!D E
var"" 
found"" 
="" 
_paths"" 
."" 
Any"" "
(""" #
p""# $
=>""% '
relativePath""( 4
.""4 5

StartsWith""5 ?
(""? @
p""@ A
,""A B
StringComparison""C S
.""S T
Ordinal""T [
)""[ \
)""\ ]
?""^ _
true""` d
:""e f
false""g l
;""l m
context## 
.##  
PageApplicationModel## (
.##( )
Filters##) 0
.##0 1
Add##1 4
(##4 5
new##5 8+
ModularPageViewEnginePathFilter##9 X
(##X Y
found##Y ^
)##^ _
)##_ `
;##` a
}$$ 	
}%% 
}&& ∞
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\ModularPageMvcCoreBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{		 
public

 

static

 
class

 /
#ModularPageMvcCoreBuilderExtensions

 ;
{ 
public 
static 
IMvcCoreBuilder % 
AddModularRazorPages& :
(: ;
this; ?
IMvcCoreBuilder@ O
builderP W
)W X
{ 	
builder 
. 
AddRazorPages !
(! "
)" #
;# $
builder 
. 
Services 
.  
AddModularRazorPages 1
(1 2
)2 3
;3 4
return 
builder 
; 
} 	
internal 
static 
IServiceCollection * 
AddModularRazorPages+ ?
(? @
this@ D
IServiceCollectionE W
servicesX `
)` a
{ 	
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor& 7
.7 8
	Singleton8 A
<A B
MatcherPolicyB O
,O P&
PageEndpointComparerPolicyQ k
>k l
(l m
)m n
)n o
;o p
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor !
.! "
	Transient" +
<+ ,
IConfigureOptions, =
<= >
RazorPagesOptions> O
>O P
,P Q-
!ModularPageRazorPagesOptionsSetupR s
>s t
(t u
)u v
)v w
;w x
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor !
.! "
	Singleton" +
<+ ,)
IPageApplicationModelProvider, I
,I J/
#ModularPageApplicationModelProviderK n
>n o
(o p
)p q
)q r
;r s
return 
services 
; 
} 	
} 
}   Î
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\ModularPageRazorPagesOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{		 
public

 

class

 -
!ModularPageRazorPagesOptionsSetup

 2
:

3 4
IConfigureOptions

5 F
<

F G
RazorPagesOptions

G X
>

X Y
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
public -
!ModularPageRazorPagesOptionsSetup 0
(0 1
IApplicationContext1 D
applicationContextE W
,W X
ShellSettingsY f
shellSettingsg t
)t u
{ 	
_applicationContext 
=  !
applicationContext" 4
;4 5
_shellSettings 
= 
shellSettings *
;* +
} 	
public 
void 
	Configure 
( 
RazorPagesOptions /
options0 7
)7 8
{ 	
options 
. 
Conventions 
.  )
AddFolderRouteModelConvention  =
(= >
$str> A
,A B
modelC H
=>I K
modelL Q
.Q R
	SelectorsR [
.[ \
Clear\ a
(a b
)b c
)c d
;d e
if 
( 
_shellSettings 
. 
State $
!=% '
TenantState( 3
.3 4
Running4 ;
); <
{ 
options 
. 
Conventions #
.# $-
!AddAreaFolderRouteModelConvention$ E
(E F
_applicationContextF Y
.Y Z
ApplicationZ e
.e f
Namef j
,j k
$strl o
,o p
model 
=> 
model "
." #
	Selectors# ,
., -
Clear- 2
(2 3
)3 4
)4 5
;5 6
} 
else   
{!! 
options## 
.## 
Conventions## #
.### $
AddAreaFolderRoute##$ 6
(##6 7
_applicationContext##7 J
.##J K
Application##K V
.##V W
Name##W [
,##[ \
$str##] `
,##` a
$str##b d
)##d e
;##e f
}$$ 
}%% 	
}&& 
}'' Â
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\ModularPageViewEnginePathFilter.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{ 
public 

class +
ModularPageViewEnginePathFilter 0
:1 2
IAsyncPageFilter3 C
{ 
private		 
readonly		 
bool		 
_found		 $
;		$ %
public +
ModularPageViewEnginePathFilter .
(. /
bool/ 3
found4 9
)9 :
{ 	
_found 
= 
found 
; 
} 	
public 
async 
Task '
OnPageHandlerExecutionAsync 5
(5 6'
PageHandlerExecutingContext6 Q
contextR Y
,Y Z(
PageHandlerExecutionDelegate[ w
nextx |
)| }
{ 	
if 
( 
! 
_found 
) 
{ 
context 
. 
Result 
=  
new! $
NotFoundResult% 3
(3 4
)4 5
;5 6
return 
; 
} 
await 
next 
( 
) 
; 
} 	
public 
Task '
OnPageHandlerSelectionAsync /
(/ 0&
PageHandlerSelectedContext0 J
contextK R
)R S
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
}   ·-
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\PageConventionCollectionExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
." #
ApplicationModels# 4
{ 
public 

static 
class .
"PageConventionCollectionExtensions :
{ 
public 
static $
PageConventionCollection .
AddAreaFolderRoute/ A
(A B
thisB F$
PageConventionCollectionG _
conventions` k
,k l
string 
areaName 
, 
string #

folderPath$ .
,. /
string0 6
folderRoute7 B
)B C
{ 	
return 
conventions 
. &
AddAreaFolderRouteInternal 9
(9 :
areaName: B
,B C

folderPathD N
,N O
folderRouteP [
,[ \
isAdmin] d
:d e
falsef k
)k l
;l m
} 	
public 
static $
PageConventionCollection .#
AddAdminAreaFolderRoute/ F
(F G
thisG K$
PageConventionCollectionL d
conventionse p
,p q
string 
areaName 
, 
string #

folderPath$ .
,. /
string0 6
folderRoute7 B
)B C
{ 	
return 
conventions 
. &
AddAreaFolderRouteInternal 9
(9 :
areaName: B
,B C

folderPathD N
,N O
folderRouteP [
,[ \
isAdmin] d
:d e
truef j
)j k
;k l
}   	
internal"" 
static"" $
PageConventionCollection"" 0&
AddAreaFolderRouteInternal""1 K
(""K L
this""L P$
PageConventionCollection""Q i
conventions""j u
,""u v
string## 
areaName## 
,## 
string## #

folderPath##$ .
,##. /
string##0 6
folderRoute##7 B
,##B C
bool##D H
isAdmin##I P
)##P Q
{$$ 	
conventions%% 
.%% -
!AddAreaFolderRouteModelConvention%% 9
(%%9 :
areaName%%: B
,%%B C

folderPath%%D N
,%%N O
model%%P U
=>%%V X
{&& 
if'' 
('' 
isAdmin'' 
!='' 
(''  
model''  %
.''% &
ViewEnginePath''& 4
.''4 5
Contains''5 =
(''= >
$str''> G
)''G H
||''I K
model''L Q
.''Q R

Properties''R \
.''\ ]
ContainsKey''] h
(''h i
$str''i p
)''p q
)''q r
)''r s
{(( 
return)) 
;)) 
}** 
var,, 

areaFolder,, 
=,,  
areaName,,! )
+,,* +

folderPath,,, 6
;,,6 7
foreach.. 
(.. 
var.. 
selector.. %
in..& (
model..) .
.... /
	Selectors../ 8
...8 9
ToArray..9 @
(..@ A
)..A B
)..B C
{// 
var00 
route00 
=00 
selector00  (
.00( )
AttributeRouteModel00) <
;00< =
if22 
(22 
route22 
.22 
Template22 &
.22& '

StartsWith22' 1
(221 2

areaFolder222 <
,22< =
StringComparison22> N
.22N O
Ordinal22O V
)22V W
||22X Z
(22[ \
route22\ a
.22a b
Template22b j
==22k m
areaName22n v
&&22w y

folderPath	22z Ñ
==
22Ö á
$str
22à ã
)
22ã å
)
22å ç
{33 
route44 
.44 "
SuppressLinkGeneration44 4
=445 6
true447 ;
;44; <
string66 
template66 '
;66' (
if88 
(88 
route88 !
.88! "
Template88" *
==88+ -
areaName88. 6
&&887 9

folderPath88: D
==88E G
$str88H K
)88K L
{99 
template:: $
=::% &
folderRoute::' 2
;::2 3
};; 
else<< 
{== 
var>> 
cleanSubTemplate>>  0
=>>1 2
route>>3 8
.>>8 9
Template>>9 A
.>>A B
	Substring>>B K
(>>K L

areaFolder>>L V
.>>V W
Length>>W ]
)>>] ^
.>>^ _
	TrimStart>>_ h
(>>h i
$char>>i l
)>>l m
;>>m n
template?? $
=??% &
AttributeRouteModel??' :
.??: ;
CombineTemplates??; K
(??K L
folderRoute??L W
,??W X
cleanSubTemplate??Y i
)??i j
;??j k
}@@ 
modelBB 
.BB 
	SelectorsBB '
.BB' (
AddBB( +
(BB+ ,
newBB, /
SelectorModelBB0 =
{CC 
AttributeRouteModelDD /
=DD0 1
newDD2 5
AttributeRouteModelDD6 I
{EE 
TemplateFF  (
=FF) *
templateFF+ 3
}GG 
}HH 
)HH 
;HH 
}II 
}JJ 
}KK 
)KK 
;KK 
returnMM 
conventionsMM 
;MM 
}NN 	
}OO 
}PP ä
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\PageEndpointComparerPolicy.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{ 
public		 

sealed		 
class		 &
PageEndpointComparerPolicy		 2
:		3 4
MatcherPolicy		5 B
,		B C#
IEndpointComparerPolicy		D [
{

 
public 
override 
int 
Order !
=>" $
-% &
$num& *
;* +
public 
	IComparer 
< 
Endpoint !
>! "
Comparer# +
=>, .
new/ 2 
PageEndpointComparer3 G
(G H
)H I
;I J
private 
class  
PageEndpointComparer *
:+ ,$
EndpointMetadataComparer- E
<E F 
PageActionDescriptorF Z
>Z [
{ 	
	protected 
override 
int "
CompareMetadata# 2
(2 3 
PageActionDescriptor3 G
xH I
,I J 
PageActionDescriptorK _
y` a
)a b
{ 
return 
base 
. 
CompareMetadata +
(+ ,
x, -
,- .
y/ 0
)0 1
;1 2
} 
} 	
} 
} ∏
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Routing\DefaultAreaControllerRouteMapper.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Routing !
{ 
public 

class ,
 DefaultAreaControllerRouteMapper 1
:2 3&
IAreaControllerRouteMapper4 N
{ 
private		 
const		 
string		 
_defaultAreaPattern		 0
=		1 2
$str		3 X
;		X Y
public 
int 
Order 
=> 
$num  
;  !
public 
bool %
TryMapAreaControllerRoute -
(- .!
IEndpointRouteBuilder. C
routesD J
,J K&
ControllerActionDescriptorL f

descriptorg q
)q r
{ 	
routes 
. "
MapAreaControllerRoute )
() *
name 
: 

descriptor 
.  
DisplayName  +
,+ ,
areaName 
: 

descriptor #
.# $
RouteValues$ /
[/ 0
$str0 6
]6 7
,7 8
pattern 
: 
_defaultAreaPattern +
.+ ,
Replace, 3
(3 4
$str4 >
,> ?

descriptor@ J
.J K

ActionNameK U
)U V
,V W
defaults 
: 
new 
{ 

controller )
=* +

descriptor, 6
.6 7
ControllerName7 E
,E F
actionG M
=N O

descriptorP Z
.Z [

ActionName[ e
}f g
) 
; 
return 
true 
; 
} 	
} 
} ‡
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Routing\IAreaControllerRouteMapper.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Routing !
{ 
public 

	interface &
IAreaControllerRouteMapper /
{ 
int 
Order 
{ 
get 
; 
} 
bool		 %
TryMapAreaControllerRoute		 &
(		& '!
IEndpointRouteBuilder		' <
routes		= C
,		C D&
ControllerActionDescriptor		E _

descriptor		` j
)		j k
;		k l
}

 
} «
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\SharedViewCompilerProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class &
SharedViewCompilerProvider +
:, -!
IViewCompilerProvider. C
{ 
private 
object 
_synLock 
=  !
new" %
object& ,
(, -
)- .
;. /
private 
static 
IViewCompiler $
	_compiler% .
;. /
private 
readonly 
IServiceProvider )
	_services* 3
;3 4
public &
SharedViewCompilerProvider )
() *
IServiceProvider* :
services; C
)C D
{ 	
	_services 
= 
services  
;  !
} 	
public 
IViewCompiler 
GetCompiler (
(( )
)) *
{ 	
if 
( 
	_compiler 
!= 
null !
)! "
{ 
return 
	_compiler  
;  !
} 
lock 
( 
_synLock 
) 
{ 
	_compiler 
= 
	_services %
.   
GetServices    
<    !!
IViewCompilerProvider  ! 6
>  6 7
(  7 8
)  8 9
.!! 
FirstOrDefault!! #
(!!# $
)!!$ %
."" 
GetCompiler""  
(""  !
)""! "
;""" #
}## 
return%% 
	_compiler%% 
;%% 
}&& 	
}'' 
}(( æ"
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ShellFeatureApplicationPart.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class '
ShellFeatureApplicationPart ,
:- .
ApplicationPart 
, (
IApplicationPartTypeProvider $
,$ %*
ICompilationReferencesProvider &
{ 
private 
static 
IEnumerable "
<" #
string# )
>) *
_referencePaths+ :
;: ;
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
private 
ShellBlueprint 
_shellBlueprint .
;. /
private 
IEnumerable 
< 
ITagHelpersProvider /
>/ 0
_tagHelpers1 <
;< =
public '
ShellFeatureApplicationPart *
(* +
)+ ,
{ 	
} 	
public!! 
override!! 
string!! 
Name!! #
{"" 	
get## 
{$$ 
return%% 
nameof%% 
(%% '
ShellFeatureApplicationPart%% 9
)%%9 :
;%%: ;
}&& 
}'' 	
public** 
IEnumerable** 
<** 
TypeInfo** #
>**# $
Types**% *
{++ 	
get,, 
{-- 
var.. 
services.. 
=.. 

ShellScope.. )
...) *
Services..* 2
;..2 3
if33 
(33 
services33 
!=33 
null33  $
&&33% '
_tagHelpers33( 3
==334 6
null337 ;
)33; <
{44 
lock55 
(55 
this55 
)55 
{66 
if77 
(77 
_tagHelpers77 '
==77( *
null77+ /
)77/ 0
{88 
_shellBlueprint99 +
=99, -
services99. 6
.996 7
GetRequiredService997 I
<99I J
ShellBlueprint99J X
>99X Y
(99Y Z
)99Z [
;99[ \
_tagHelpers:: '
=::( )
services::* 2
.::2 3
GetServices::3 >
<::> ?
ITagHelpersProvider::? R
>::R S
(::S T
)::T U
;::U V
};; 
}<< 
}== 
return?? 
_shellBlueprint?? &
.@@ 
Dependencies@@ !
.@@! "
Keys@@" &
.AA 
ConcatAA 
(AA 
_tagHelpersAA '
.AA' (

SelectManyAA( 2
(AA2 3
pAA3 4
=>AA5 7
pAA8 9
.AA9 :
GetTypesAA: B
(AAB C
)AAC D
)AAD E
)AAE F
.BB 
SelectBB 
(BB 
xBB 
=>BB  
xBB! "
.BB" #
GetTypeInfoBB# .
(BB. /
)BB/ 0
)BB0 1
;BB1 2
}CC 
}DD 	
publicGG 
IEnumerableGG 
<GG 
stringGG !
>GG! "
GetReferencePathsGG# 4
(GG4 5
)GG5 6
{HH 	
ifII 
(II 
_referencePathsII 
!=II  "
nullII# '
)II' (
{JJ 
returnKK 
_referencePathsKK &
;KK& '
}LL 
lockNN 
(NN 
_synLockNN 
)NN 
{OO 
ifPP 
(PP 
_referencePathsPP #
!=PP$ &
nullPP' +
)PP+ ,
{QQ 
returnRR 
_referencePathsRR *
;RR* +
}SS 
_referencePathsUU 
=UU  !
DependencyContextUU" 3
.UU3 4
DefaultUU4 ;
.UU; <
CompileLibrariesUU< L
.VV 

SelectManyVV 
(VV  
libraryVV  '
=>VV( *
libraryVV+ 2
.VV2 3!
ResolveReferencePathsVV3 H
(VVH I
)VVI J
)VVJ K
;VVK L
}WW 
returnYY 
_referencePathsYY "
;YY" #
}ZZ 	
}[[ 
}\\ ¸c
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ShellFileVersionProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class $
ShellFileVersionProvider )
:* + 
IFileVersionProvider, @
{ 
private 
const 
string 

VersionKey '
=( )
$str* -
;- .
private 
static 
readonly 
char  $
[$ %
]% &(
QueryStringAndFragmentTokens' C
=D E
newF I
[I J
]J K
{L M
$charN Q
,Q R
$charS V
}W X
;X Y
private 
static 
readonly 
MemoryCache  +
_sharedCache, 8
=9 :
new; >
MemoryCache? J
(J K
newK N
MemoryCacheOptionsO a
(a b
)b c
)c d
;d e
private 
readonly 
IFileProvider &
[& '
]' (
_fileProviders) 7
;7 8
private 
readonly 
IMemoryCache %
_cache& ,
;, -
public $
ShellFileVersionProvider '
(' (
IEnumerable 
< 
IStaticFileProvider +
>+ ,
staticFileProviders- @
,@ A
IWebHostEnvironment 
environment  +
,+ ,
IMemoryCache 
cache 
) 
{   	
_fileProviders!! 
=!! 
staticFileProviders!! 0
."" 
Concat"" 
("" 
new"" 
["" 
]"" 
{"" 
environment""  +
.""+ ,
WebRootFileProvider"", ?
}""@ A
)""A B
.## 
ToArray## 
(## 
)## 
;## 
_cache%% 
=%% 
cache%% 
;%% 
}&& 	
public(( 
string((  
AddFileVersionToPath(( *
(((* +

PathString((+ 5
requestPathBase((6 E
,((E F
string((G M
path((N R
)((R S
{)) 	
if** 
(** 
path** 
==** 
null** 
)** 
{++ 
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
nameof,,0 6
(,,6 7
path,,7 ;
),,; <
),,< =
;,,= >
}-- 
var// 
resolvedPath// 
=// 
path// #
;//# $
var11 +
queryStringOrFragmentStartIndex11 /
=110 1
path112 6
.116 7

IndexOfAny117 A
(11A B(
QueryStringAndFragmentTokens11B ^
)11^ _
;11_ `
if22 
(22 +
queryStringOrFragmentStartIndex22 /
!=220 2
-223 4
$num224 5
)225 6
{33 
resolvedPath44 
=44 
path44 #
.44# $
	Substring44$ -
(44- .
$num44. /
,44/ 0+
queryStringOrFragmentStartIndex441 P
)44P Q
;44Q R
}55 
if77 
(77 
Uri77 
.77 
	TryCreate77 
(77 
resolvedPath77 *
,77* +
UriKind77, 3
.773 4
Absolute774 <
,77< =
out77> A
var77B E
uri77F I
)77I J
&&77K M
!77N O
uri77O R
.77R S
IsFile77S Y
)77Y Z
{88 
return:: 
path:: 
;:: 
};; 
if>> 
(>> 
_cache>> 
.>> 
TryGetValue>> "
(>>" #
resolvedPath>># /
,>>/ 0
out>>1 4
string>>5 ;
value>>< A
)>>A B
)>>B C
{?? 
if@@ 
(@@ 
value@@ 
.@@ 
Length@@  
>@@! "
$num@@# $
)@@$ %
{AA 
returnBB 
QueryHelpersBB '
.BB' (
AddQueryStringBB( 6
(BB6 7
pathBB7 ;
,BB; <

VersionKeyBB= G
,BBG H
valueBBI N
)BBN O
;BBO P
}CC 
returnEE 
pathEE 
;EE 
}FF 
ifII 
(II 
resolvedPathII 
.II 

StartsWithII '
(II' (
requestPathBaseII( 7
.II7 8
ValueII8 =
,II= >
StringComparisonII? O
.IIO P
OrdinalIgnoreCaseIIP a
)IIa b
)IIb c
{JJ 
ifKK 
(KK 
_sharedCacheKK  
.KK  !
TryGetValueKK! ,
(KK, -
resolvedPathKK- 9
.KK9 :
	SubstringKK: C
(KKC D
requestPathBaseKKD S
.KKS T
ValueKKT Y
.KKY Z
LengthKKZ `
)KK` a
,KKa b
outKKc f
valueKKg l
)KKl m
)KKm n
{LL 
returnMM 
QueryHelpersMM '
.MM' (
AddQueryStringMM( 6
(MM6 7
pathMM7 ;
,MM; <

VersionKeyMM= G
,MMG H
valueMMI N
)MMN O
;MMO P
}NN 
}OO 
varQQ 
cacheKeyQQ 
=QQ 
resolvedPathQQ '
;QQ' (
varSS 
cacheEntryOptionsSS !
=SS" #
newSS$ '#
MemoryCacheEntryOptionsSS( ?
(SS? @
)SS@ A
;SSA B
foreachTT 
(TT 
varTT 
fileProviderTT %
inTT& (
_fileProvidersTT) 7
)TT7 8
{UU 
cacheEntryOptionsVV !
.VV! "
AddExpirationTokenVV" 4
(VV4 5
fileProviderVV5 A
.VVA B
WatchVVB G
(VVG H
resolvedPathVVH T
)VVT U
)VVU V
;VVV W
varWW 
fileInfoWW 
=WW 
fileProviderWW +
.WW+ ,
GetFileInfoWW, 7
(WW7 8
resolvedPathWW8 D
)WWD E
;WWE F
ifZZ 
(ZZ 
!ZZ 
fileInfoZZ 
.ZZ 
ExistsZZ $
&&ZZ% '
requestPathBase[[ #
.[[# $
HasValue[[$ ,
&&[[- /
resolvedPath\\  
.\\  !

StartsWith\\! +
(\\+ ,
requestPathBase\\, ;
.\\; <
Value\\< A
,\\A B
StringComparison\\C S
.\\S T
OrdinalIgnoreCase\\T e
)\\e f
)\\f g
{]] 
resolvedPath^^  
=^^! "
resolvedPath^^# /
.^^/ 0
	Substring^^0 9
(^^9 :
requestPathBase^^: I
.^^I J
Value^^J O
.^^O P
Length^^P V
)^^V W
;^^W X
cacheEntryOptions__ %
.__% &
AddExpirationToken__& 8
(__8 9
fileProvider__9 E
.__E F
Watch__F K
(__K L
resolvedPath__L X
)__X Y
)__Y Z
;__Z [
fileInfo`` 
=`` 
fileProvider`` +
.``+ ,
GetFileInfo``, 7
(``7 8
resolvedPath``8 D
)``D E
;``E F
}aa 
ifdd 
(dd 
!dd 
fileInfodd 
.dd 
Existsdd $
&&dd% '
fileProvideree  
isee! #$
IVirtualPathBaseProvideree$ <#
virtualPathBaseProvideree= T
&&eeU W#
virtualPathBaseProviderff +
.ff+ ,
VirtualPathBaseff, ;
.ff; <
HasValueff< D
&&ffE G
resolvedPathgg  
.gg  !

StartsWithgg! +
(gg+ ,#
virtualPathBaseProvidergg, C
.ggC D
VirtualPathBaseggD S
.ggS T
ValueggT Y
,ggY Z
StringComparisongg[ k
.ggk l
OrdinalIgnoreCaseggl }
)gg} ~
)gg~ 
{hh 
resolvedPathii  
=ii! "
resolvedPathii# /
.ii/ 0
	Substringii0 9
(ii9 :#
virtualPathBaseProviderii: Q
.iiQ R
VirtualPathBaseiiR a
.iia b
Valueiib g
.iig h
Lengthiih n
)iin o
;iio p
cacheEntryOptionsjj %
.jj% &
AddExpirationTokenjj& 8
(jj8 9
fileProviderjj9 E
.jjE F
WatchjjF K
(jjK L
resolvedPathjjL X
)jjX Y
)jjY Z
;jjZ [
fileInfokk 
=kk 
fileProviderkk +
.kk+ ,
GetFileInfokk, 7
(kk7 8
resolvedPathkk8 D
)kkD E
;kkE F
}ll 
ifnn 
(nn 
fileInfonn 
.nn 
Existsnn #
)nn# $
{oo 
valuepp 
=pp 
GetHashForFilepp *
(pp* +
fileInfopp+ 3
)pp3 4
;pp4 5
cacheEntryOptionsqq %
.qq% &
SetSizeqq& -
(qq- .
valueqq. 3
.qq3 4
Lengthqq4 :
*qq; <
sizeofqq= C
(qqC D
charqqD H
)qqH I
)qqI J
;qqJ K
iftt 
(tt 
fileProvidertt $
istt% '%
IModuleStaticFileProvidertt( A
)ttA B
{uu 
_sharedCachevv $
.vv$ %
Setvv% (
(vv( )
resolvedPathvv) 5
,vv5 6
valuevv7 <
,vv< =
cacheEntryOptionsvv> O
)vvO P
;vvP Q
}ww 
elsexx 
{yy 
_cachezz 
.zz 
Setzz "
(zz" #
cacheKeyzz# +
,zz+ ,
valuezz- 2
,zz2 3
cacheEntryOptionszz4 E
)zzE F
;zzF G
}{{ 
return}} 
QueryHelpers}} '
.}}' (
AddQueryString}}( 6
(}}6 7
path}}7 ;
,}}; <

VersionKey}}= G
,}}G H
value}}I N
)}}N O
;}}O P
}~~ 
} 
cacheEntryOptions
ÇÇ 
.
ÇÇ 
SetSize
ÇÇ %
(
ÇÇ% &
$num
ÇÇ& '
)
ÇÇ' (
;
ÇÇ( )
_cache
ÉÉ 
.
ÉÉ 
Set
ÉÉ 
(
ÉÉ 
cacheKey
ÉÉ 
,
ÉÉ  
String
ÉÉ! '
.
ÉÉ' (
Empty
ÉÉ( -
,
ÉÉ- .
cacheEntryOptions
ÉÉ/ @
)
ÉÉ@ A
;
ÉÉA B
return
ÑÑ 
path
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
private
áá 
static
áá 
string
áá 
GetHashForFile
áá ,
(
áá, -
	IFileInfo
áá- 6
fileInfo
áá7 ?
)
áá? @
{
àà 	
using
ââ 
(
ââ 
var
ââ 
sha256
ââ 
=
ââ $
CryptographyAlgorithms
ââ  6
.
ââ6 7
CreateSHA256
ââ7 C
(
ââC D
)
ââD E
)
ââE F
{
ää 
using
ãã 
(
ãã 
var
ãã 

readStream
ãã %
=
ãã& '
fileInfo
ãã( 0
.
ãã0 1
CreateReadStream
ãã1 A
(
ããA B
)
ããB C
)
ããC D
{
åå 
var
çç 
hash
çç 
=
çç 
sha256
çç %
.
çç% &
ComputeHash
çç& 1
(
çç1 2

readStream
çç2 <
)
çç< =
;
çç= >
return
éé 
WebEncoders
éé &
.
éé& '
Base64UrlEncode
éé' 6
(
éé6 7
hash
éé7 ;
)
éé; <
;
éé< =
}
èè 
}
êê 
}
ëë 	
internal
ìì 
static
ìì 
class
ìì $
CryptographyAlgorithms
ìì 4
{
îî 	
public
ïï 
static
ïï 
SHA256
ïï  
CreateSHA256
ïï! -
(
ïï- .
)
ïï. /
{
ññ 
try
óó 
{
òò 
return
ôô 
SHA256
ôô !
.
ôô! "
Create
ôô" (
(
ôô( )
)
ôô) *
;
ôô* +
}
öö 
catch
ùù 
(
ùù 
System
ùù 
.
ùù 

Reflection
ùù (
.
ùù( )'
TargetInvocationException
ùù) B
)
ùùB C
{
ûû 
return
†† 
new
†† )
SHA256CryptoServiceProvider
†† :
(
††: ;
)
††; <
;
††< =
}
°° 
}
¢¢ 
}
££ 	
}
§§ 
}•• ∂Z
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\ShellViewFeatureProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class $
ShellViewFeatureProvider )
:* +'
IApplicationFeatureProvider, G
<G H
ViewsFeatureH T
>T U
,U V'
IApplicationFeatureProviderW r
<r s$
DevelopmentViewsFeature	s ä
>
ä ã
{ 
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
private "
ApplicationPartManager &#
_applicationPartManager' >
;> ?
private 
IEnumerable 
< '
IApplicationFeatureProvider 7
<7 8
ViewsFeature8 D
>D E
>E F
_featureProvidersG X
;X Y
public $
ShellViewFeatureProvider '
(' (
IServiceProvider( 8
services9 A
)A B
{ 	
_hostingEnvironment 
=  !
services" *
.* +
GetRequiredService+ =
<= >
IHostEnvironment> N
>N O
(O P
)P Q
;Q R
_applicationContext 
=  !
services" *
.* +
GetRequiredService+ =
<= >
IApplicationContext> Q
>Q R
(R S
)S T
;T U
} 	
public 
void 
PopulateFeature #
(# $
IEnumerable$ /
</ 0
ApplicationPart0 ?
>? @
partsA F
,F G
ViewsFeatureH T
featureU \
)\ ]
{ 	 
EnsureScopedServices  
(  !
)! "
;" #
var"" 
refsFolderExists""  
=""! "
	Directory""# ,
."", -
Exists""- 3
(""3 4
Path""4 8
.""8 9
Combine""9 @
(""@ A
	AppDomain""A J
.""J K
CurrentDomain""K X
.""X Y
BaseDirectory""Y f
,""f g
$str""h n
)""n o
)""o p
;""p q
if$$ 
($$ 
!$$ 
_hostingEnvironment$$ $
.$$$ %
IsDevelopment$$% 2
($$2 3
)$$3 4
||$$5 7
!$$8 9
refsFolderExists$$9 I
)$$I J
{%% #
PopulateFeatureInternal&& '
(&&' (
parts&&( -
,&&- .
feature&&/ 6
)&&6 7
;&&7 8
}'' 
foreach** 
(** 
var** 
provider** !
in**" $
_featureProviders**% 6
)**6 7
{++ 
provider,, 
.,, 
PopulateFeature,, (
(,,( )
parts,,) .
,,,. /
feature,,0 7
),,7 8
;,,8 9
}-- 
}.. 	
public00 
void00 
PopulateFeature00 #
(00# $
IEnumerable00$ /
<00/ 0
ApplicationPart000 ?
>00? @
parts00A F
,00F G#
DevelopmentViewsFeature00H _#
developmentViewsFeature00` w
)00w x
{11 	 
EnsureScopedServices22  
(22  !
)22! "
;22" #
var55 
refsFolderExists55  
=55! "
	Directory55# ,
.55, -
Exists55- 3
(553 4
Path554 8
.558 9
Combine559 @
(55@ A
	AppDomain55A J
.55J K
CurrentDomain55K X
.55X Y
BaseDirectory55Y f
,55f g
$str55h n
)55n o
)55o p
;55p q
if88 
(88 
_hostingEnvironment88 #
.88# $
IsDevelopment88$ 1
(881 2
)882 3
&&884 6
refsFolderExists887 G
)88G H
{99 
var:: 
viewsFeature::  
=::! "
new::# &
ViewsFeature::' 3
(::3 4
)::4 5
;::5 6#
PopulateFeatureInternal;; '
(;;' (
parts;;( -
,;;- .
viewsFeature;;/ ;
);;; <
;;;< =
foreach>> 
(>> 
var>> 
provider>> %
in>>& (
_featureProviders>>) :
)>>: ;
{?? 
provider@@ 
.@@ 
PopulateFeature@@ ,
(@@, -
parts@@- 2
,@@2 3
viewsFeature@@4 @
)@@@ A
;@@A B
}AA 
foreachCC 
(CC 
varCC 

descriptorCC '
inCC( *
viewsFeatureCC+ 7
.CC7 8
ViewDescriptorsCC8 G
)CCG H
{DD #
developmentViewsFeatureEE +
.EE+ ,
ViewDescriptorsEE, ;
.EE; <
AddEE< ?
(EE? @

descriptorEE@ J
)EEJ K
;EEK L
}FF 
}GG 
}HH 	
privateJJ 
voidJJ #
PopulateFeatureInternalJJ ,
(JJ, -
IEnumerableJJ- 8
<JJ8 9
ApplicationPartJJ9 H
>JJH I
partsJJJ O
,JJO P
ViewsFeatureJJQ ]
featureJJ^ e
)JJe f
{KK 	
varMM 
mvcFeatureProvidersMM #
=MM$ %#
_applicationPartManagerMM& =
.MM= >
FeatureProvidersMM> N
.NN 
OfTypeNN 
<NN '
IApplicationFeatureProviderNN 3
<NN3 4
ViewsFeatureNN4 @
>NN@ A
>NNA B
(NNB C
)NNC D
.OO 
WhereOO 
(OO 
pOO 
=>OO 
pOO 
.OO 
GetTypeOO %
(OO% &
)OO& '
!=OO( *
typeofOO+ 1
(OO1 2$
ShellViewFeatureProviderOO2 J
)OOJ K
)OOK L
;OOL M
varQQ 
modulesQQ 
=QQ 
_applicationContextQQ -
.QQ- .
ApplicationQQ. 9
.QQ9 :
ModulesQQ: A
;QQA B
varRR 
moduleFeatureRR 
=RR 
newRR  #
ViewsFeatureRR$ 0
(RR0 1
)RR1 2
;RR2 3
foreachTT 
(TT 
varTT 
moduleTT 
inTT  "
modulesTT# *
)TT* +
{UU 
varVV #
precompiledAssemblyPathVV +
=VV, -
PathVV. 2
.VV2 3
CombineVV3 :
(VV: ;
PathVV; ?
.VV? @
GetDirectoryNameVV@ P
(VVP Q
moduleVVQ W
.VVW X
AssemblyVVX `
.VV` a
LocationVVa i
)VVi j
,VVj k
moduleWW 
.WW 
AssemblyWW #
.WW# $
GetNameWW$ +
(WW+ ,
)WW, -
.WW- .
NameWW. 2
+WW3 4
$strWW5 A
)WWA B
;WWB C
ifYY 
(YY 
FileYY 
.YY 
ExistsYY 
(YY  #
precompiledAssemblyPathYY  7
)YY7 8
)YY8 9
{ZZ 
try[[ 
{\\ 
var]] 
assembly]] $
=]]% &
Assembly]]' /
.]]/ 0
LoadFile]]0 8
(]]8 9#
precompiledAssemblyPath]]9 P
)]]P Q
;]]Q R
var__ 
applicationPart__ +
=__, -
new__. 1
ApplicationPart__2 A
[__A B
]__B C
{__D E
new__F I%
CompiledRazorAssemblyPart__J c
(__c d
assembly__d l
)__l m
}__n o
;__o p
foreachaa 
(aa  !
varaa! $
provideraa% -
inaa. 0
mvcFeatureProvidersaa1 D
)aaD E
{bb 
providercc $
.cc$ %
PopulateFeaturecc% 4
(cc4 5
applicationPartcc5 D
,ccD E
moduleFeatureccF S
)ccS T
;ccT U
}dd 
foreachii 
(ii  !
varii! $

descriptorii% /
inii0 2
moduleFeatureii3 @
.ii@ A
ViewDescriptorsiiA P
)iiP Q
{jj 

descriptorkk &
.kk& '
RelativePathkk' 3
=kk4 5
$charkk6 9
+kk: ;
modulekk< B
.kkB C
SubPathkkC J
+kkK L

descriptorkkM W
.kkW X
RelativePathkkX d
;kkd e
featurell #
.ll# $
ViewDescriptorsll$ 3
.ll3 4
Addll4 7
(ll7 8

descriptorll8 B
)llB C
;llC D
}mm 
ifrr 
(rr 
modulerr "
.rr" #
Namerr# '
==rr( *
_hostingEnvironmentrr+ >
.rr> ?
ApplicationNamerr? N
)rrN O
{ss 
foreachtt #
(tt$ %
vartt% (
providertt) 1
intt2 4
mvcFeatureProviderstt5 H
)ttH I
{uu 
providervv  (
.vv( )
PopulateFeaturevv) 8
(vv8 9
applicationPartvv9 H
,vvH I
moduleFeaturevvJ W
)vvW X
;vvX Y
}ww 
foreachyy #
(yy$ %
varyy% (

descriptoryy) 3
inyy4 6
moduleFeatureyy7 D
.yyD E
ViewDescriptorsyyE T
)yyT U
{zz 
feature{{  '
.{{' (
ViewDescriptors{{( 7
.{{7 8
Add{{8 ;
({{; <

descriptor{{< F
){{F G
;{{G H
}|| 
}}} 
moduleFeature %
.% &
ViewDescriptors& 5
.5 6
Clear6 ;
(; <
)< =
;= >
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
FileLoadException
ÅÅ ,
)
ÅÅ, -
{
ÇÇ 
}
ÑÑ 
}
ÖÖ 
}
ÜÜ 
}
áá 	
private
ââ 
void
ââ "
EnsureScopedServices
ââ )
(
ââ) *
)
ââ* +
{
ää 	
var
ãã 
services
ãã 
=
ãã 

ShellScope
ãã %
.
ãã% &
Services
ãã& .
;
ãã. /
if
êê 
(
êê 
services
êê 
!=
êê 
null
êê  
&&
êê! #
_featureProviders
êê$ 5
==
êê6 8
null
êê9 =
)
êê= >
{
ëë 
lock
íí 
(
íí 
this
íí 
)
íí 
{
ìì 
if
îî 
(
îî 
_featureProviders
îî )
==
îî* ,
null
îî- 1
)
îî1 2
{
ïï %
_applicationPartManager
ññ /
=
ññ0 1
services
ññ2 :
.
ññ: ; 
GetRequiredService
ññ; M
<
ññM N$
ApplicationPartManager
ññN d
>
ññd e
(
ññe f
)
ññf g
;
ññg h
_featureProviders
óó )
=
óó* +
services
óó, 4
.
óó4 5
GetServices
óó5 @
<
óó@ A)
IApplicationFeatureProvider
óóA \
<
óó\ ]
ViewsFeature
óó] i
>
óói j
>
óój k
(
óók l
)
óól m
;
óóm n
}
òò 
}
ôô 
}
öö 
}
õõ 	
}
úú 
}ùù ÒO
wD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Startup.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
int 
Order !
=>" $
-% &
$num& *
;* +
public 
override 
int 
ConfigureOrder *
=>+ -
$num. 2
;2 3
private   
readonly   
IServiceProvider   )
_serviceProvider  * :
;  : ;
public"" 
Startup"" 
("" 
IServiceProvider"" '
serviceProvider""( 7
)""7 8
{## 	
_serviceProvider$$ 
=$$ 
serviceProvider$$ .
;$$. /
}%% 	
public'' 
override'' 
void'' 
	Configure'' &
(''& '
IApplicationBuilder''' :
app''; >
,''> ?!
IEndpointRouteBuilder''@ U
routes''V \
,''\ ]
IServiceProvider''^ n
serviceProvider''o ~
)''~ 
{(( 	
var)) 
descriptors)) 
=)) 
serviceProvider)) -
.))- .
GetRequiredService)). @
<))@ A/
#IActionDescriptorCollectionProvider))A d
>))d e
())e f
)))f g
.** 
ActionDescriptors** "
.**" #
Items**# (
.++ 
OfType++ 
<++ &
ControllerActionDescriptor++ 2
>++2 3
(++3 4
)++4 5
.,, 
ToArray,, 
(,, 
),, 
;-- 
var// 
mappers// 
=// 
serviceProvider// )
.//) *
GetServices//* 5
<//5 6&
IAreaControllerRouteMapper//6 P
>//P Q
(//Q R
)//R S
.//S T
OrderBy//T [
(//[ \
x//\ ]
=>//^ `
x//a b
.//b c
Order//c h
)//h i
;//i j
foreach11 
(11 
var11 

descriptor11 #
in11$ &
descriptors11' 2
)112 3
{22 
if33 
(33 
!33 

descriptor33 
.33  
RouteValues33  +
.33+ ,
ContainsKey33, 7
(337 8
$str338 >
)33> ?
)33? @
{44 
continue55 
;55 
}66 
foreach88 
(88 
var88 
mapper88 #
in88$ &
mappers88' .
)88. /
{99 
if:: 
(:: 
mapper:: 
.:: %
TryMapAreaControllerRoute:: 8
(::8 9
routes::9 ?
,::? @

descriptor::A K
)::K L
)::L M
{;; 
break<< 
;<< 
}== 
}>> 
}?? 
routesAA 
.AA 
MapRazorPagesAA  
(AA  !
)AA! "
;AA" #
}BB 	
publicDD 
overrideDD 
voidDD 
ConfigureServicesDD .
(DD. /
IServiceCollectionDD/ A
servicesDDB J
)DDJ K
{EE 	
servicesGG 
.GG 
AddSingletonGG !
(GG! "
newGG" %"
ApplicationPartManagerGG& <
(GG< =
)GG= >
)GG> ?
;GG? @
varII 
builderII 
=II 
servicesII "
.II" #
AddMvcII# )
(II) *
optionsII* 1
=>II2 4
{JJ 
optionsNN 
.NN 
FiltersNN 
.NN  
AddNN  #
(NN# $
typeofNN$ *
(NN* +1
%AutoValidateAntiforgeryTokenAttributeNN+ P
)NNP Q
,NNQ R
$numNNS V
)NNV W
;NNW X
optionsQQ 
.QQ  
ModelBinderProvidersQQ ,
.QQ, -
InsertQQ- 3
(QQ3 4
$numQQ4 5
,QQ5 6
newQQ7 :(
CheckMarkModelBinderProviderQQ; W
(QQW X
)QQX Y
)QQY Z
;QQZ [
}RR 
)RR 
;RR 
servicesUU 
.UU 
AddSingletonUU !
<UU! "
MatcherPolicyUU" /
,UU/ 0*
FormValueRequiredMatcherPolicyUU1 O
>UUO P
(UUP Q
)UUQ R
;UUR S
builderYY 
.YY 
AddNewtonsoftJsonYY %
(YY% &
)YY& '
;YY' (
builder[[ 
.[[ #
SetCompatibilityVersion[[ +
([[+ , 
CompatibilityVersion[[, @
.[[@ A
Latest[[A G
)[[G H
;[[H I
services]] 
.]]  
AddModularRazorPages]] )
(]]) *
)]]* +
;]]+ ,$
AddModularFrameworkParts__ $
(__$ %
_serviceProvider__% 5
,__5 6
builder__7 >
.__> ?
PartManager__? J
)__J K
;__K L
builderbb 
.bb 
AddViewLocalizationbb '
(bb' (
)bb( )
;bb) *
buildercc 
.cc *
AddDataAnnotationsLocalizationcc 2
(cc2 3
)cc3 4
;cc4 5
servicesee 
.ee 
TryAddEnumerableee %
(ee% &
ServiceDescriptorff !
.ff! "
	Transientff" +
<ff+ ,
IConfigureOptionsff, =
<ff= >"
RazorViewEngineOptionsff> T
>ffT U
,ffU V.
"ModularRazorViewEngineOptionsSetupffW y
>ffy z
(ffz {
)ff{ |
)ff| }
;ff} ~
varii 
refsFolderExistsii  
=ii! "
	Directoryii# ,
.ii, -
Existsii- 3
(ii3 4
Pathii4 8
.ii8 9
Combineii9 @
(ii@ A
	AppDomainiiA J
.iiJ K
CurrentDomainiiK X
.iiX Y
BaseDirectoryiiY f
,iif g
$striih n
)iin o
)iio p
;iip q
ifkk 
(kk 
refsFolderExistskk  
)kk  !
{ll 
buildermm 
.mm &
AddRazorRuntimeCompilationmm 2
(mm2 3
)mm3 4
;mm4 5
servicespp 
.pp 
AddSingletonpp %
<pp% &!
IViewCompilerProviderpp& ;
,pp; <&
SharedViewCompilerProviderpp= W
>ppW X
(ppX Y
)ppY Z
;ppZ [
}qq 
servicesss 
.ss 
TryAddEnumerabless %
(ss% &
ServiceDescriptortt !
.tt! "
	Transienttt" +
<tt+ ,
IConfigureOptionstt, =
<tt= >-
!MvcRazorRuntimeCompilationOptionstt> _
>tt_ `
,tt` a(
RazorCompilationOptionsSetupttb ~
>tt~ 
(	tt Ä
)
ttÄ Å
)
ttÅ Ç
;
ttÇ É
servicesvv 
.vv 
AddSingletonvv !
<vv! "0
$RazorCompilationFileProviderAccessorvv" F
>vvF G
(vvG H
)vvH I
;vvI J
servicesxx 
.xx 
TryAddSingletonxx $
<xx$ %"
IActionContextAccessorxx% ;
,xx; <!
ActionContextAccessorxx= R
>xxR S
(xxS T
)xxT U
;xxU V
services{{ 
.{{ 
Replace{{ 
({{ 
ServiceDescriptor{{ .
.{{. /
	Singleton{{/ 8
<{{8 9 
IFileVersionProvider{{9 M
,{{M N$
ShellFileVersionProvider{{O g
>{{g h
({{h i
){{i j
){{j k
;{{k l
services~~ 
.~~ 
AddTransient~~ !
<~~! "&
IAreaControllerRouteMapper~~" <
,~~< =,
 DefaultAreaControllerRouteMapper~~> ^
>~~^ _
(~~_ `
)~~` a
;~~a b&
AddMvcModuleCoreServices
ÄÄ $
(
ÄÄ$ %
services
ÄÄ% -
)
ÄÄ- .
;
ÄÄ. /
}
ÅÅ 	
internal
ÉÉ 
static
ÉÉ 
void
ÉÉ &
AddModularFrameworkParts
ÉÉ 5
(
ÉÉ5 6
IServiceProvider
ÉÉ6 F
services
ÉÉG O
,
ÉÉO P$
ApplicationPartManager
ÉÉQ g
manager
ÉÉh o
)
ÉÉo p
{
ÑÑ 	
manager
ÖÖ 
.
ÖÖ 
ApplicationParts
ÖÖ $
.
ÖÖ$ %
Insert
ÖÖ% +
(
ÖÖ+ ,
$num
ÖÖ, -
,
ÖÖ- .
new
ÖÖ/ 2)
ShellFeatureApplicationPart
ÖÖ3 N
(
ÖÖN O
)
ÖÖO P
)
ÖÖP Q
;
ÖÖQ R
manager
ÜÜ 
.
ÜÜ 
FeatureProviders
ÜÜ $
.
ÜÜ$ %
Add
ÜÜ% (
(
ÜÜ( )
new
ÜÜ) ,&
ShellViewFeatureProvider
ÜÜ- E
(
ÜÜE F
services
ÜÜF N
)
ÜÜN O
)
ÜÜO P
;
ÜÜP Q
}
áá 	
internal
ââ 
static
ââ 
void
ââ &
AddMvcModuleCoreServices
ââ 5
(
ââ5 6 
IServiceCollection
ââ6 H
services
ââI Q
)
ââQ R
{
ää 	
services
ãã 
.
ãã 
	AddScoped
ãã 
<
ãã +
IViewLocationExpanderProvider
ãã <
,
ãã< =3
%ComponentViewLocationExpanderProvider
ãã> c
>
ããc d
(
ããd e
)
ããe f
;
ããf g
services
åå 
.
åå 
	AddScoped
åå 
<
åå +
IViewLocationExpanderProvider
åå <
,
åå< =0
"SharedViewLocationExpanderProvider
åå> `
>
åå` a
(
ååa b
)
ååb c
;
ååc d
services
éé 
.
éé 
TryAddEnumerable
éé %
(
éé% &
ServiceDescriptor
èè !
.
èè! "
	Singleton
èè" +
<
èè+ ,'
IApplicationModelProvider
èè, E
,
èèE F-
ModularApplicationModelProvider
èèG f
>
èèf g
(
èèg h
)
èèh i
)
èèi j
;
èèj k
}
êê 	
}
ëë 
}íí  
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Utilities\ControllerExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
	Utilities #
{ 
public 

static 
class  
ControllerExtensions ,
{ 
public 
static 
ActionResult "
ChallengeOrForbid# 4
(4 5
this5 9

Controller: D

controllerE O
)O P
=> 

controller 
. 
User 
. 
Identity '
.' (
IsAuthenticated( 7
?8 9
(: ;
ActionResult; G
)G H

controllerH R
.R S
ForbidS Y
(Y Z
)Z [
:\ ]
(^ _
ActionResult_ k
)k l

controllerl v
.v w
	Challenge	w Ä
(
Ä Å
)
Å Ç
;
Ç É
public 
static 
ActionResult "
ChallengeOrForbid# 4
(4 5
this5 9

Controller: D

controllerE O
,O P
paramsQ W
stringX ^
[^ _
]_ `!
authenticationSchemesa v
)v w
=> 

controller 
. 
User 
. 
Identity '
.' (
IsAuthenticated( 7
?8 9
(: ;
ActionResult; G
)G H

controllerH R
.R S
ForbidS Y
(Y Z!
authenticationSchemesZ o
)o p
:q r
(s t
ActionResult	t Ä
)
Ä Å

controller
Å ã
.
ã å
	Challenge
å ï
(
ï ñ#
authenticationSchemes
ñ ´
)
´ ¨
;
¨ ≠
} 
} Å
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Utilities\ControllerTypeExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Core 
. 
	Utilities (
{ 
public 

static 
class $
ControllerTypeExtensions 0
{ 
public 
static 
string 
ControllerName +
(+ ,
this, 0
Type1 5
controllerType6 D
)D E
{		 	
if

 
(

 
!

 
typeof

 
(

 

Controller

 "
)

" #
.

# $
IsAssignableFrom

$ 4
(

4 5
controllerType

5 C
)

C D
)

D E
{ 
throw 
new 
ArgumentException +
(+ ,
$str, S
+T U
nameofV \
(\ ]

Controller] g
)g h
,h i
nameofj p
(p q
controllerTypeq 
)	 Ä
)
Ä Å
;
Å Ç
} 
return 
controllerType !
.! "
Name" &
.& '
EndsWith' /
(/ 0
nameof0 6
(6 7

Controller7 A
)A B
,B C
StringComparisonD T
.T U
OrdinalIgnoreCaseU f
)f g
? 
controllerType  
.  !
Name! %
.% &
	Substring& /
(/ 0
$num0 1
,1 2
controllerType3 A
.A B
NameB F
.F G
LengthG M
-N O
nameofP V
(V W

ControllerW a
)a b
.b c
Lengthc i
)i j
: 
controllerType  
.  !
Name! %
;% &
} 	
} 
} —≥
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Utilities\StringExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
	Utilities #
{ 
public 

static 
class 
StringExtensions (
{ 
public 
static 
string 
CamelFriendly *
(* +
this+ /
string0 6
camel7 <
)< =
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
camel* /
)/ 0
)0 1
{ 
return 
$str 
; 
} 
var 
sb 
= 
new 
StringBuilder &
(& '
camel' ,
), -
;- .
for 
( 
var 
i 
= 
camel 
. 
Length %
-& '
$num( )
;) *
i+ ,
>- .
$num/ 0
;0 1
i2 3
--3 5
)5 6
{ 
if 
( 
char 
. 
IsUpper  
(  !
sb! #
[# $
i$ %
]% &
)& '
)' (
{ 
sb 
. 
Insert 
( 
i 
,  
$char! $
)$ %
;% &
} 
} 
return   
sb   
.   
ToString   
(   
)    
;    !
}!! 	
public## 
static## 
string## 
	Ellipsize## &
(##& '
this##' +
string##, 2
text##3 7
,##7 8
int##9 <
characterCount##= K
)##K L
{$$ 	
return%% 
text%% 
.%% 
	Ellipsize%% !
(%%! "
characterCount%%" 0
,%%0 1
$str%%2 @
)%%@ A
;%%A B
}&& 	
public(( 
static(( 
string(( 
	Ellipsize(( &
(((& '
this((' +
string((, 2
text((3 7
,((7 8
int((9 <
characterCount((= K
,((K L
string((M S
ellipsis((T \
,((\ ]
bool((^ b
wordBoundary((c o
=((p q
false((r w
)((w x
{)) 	
if** 
(** 
string** 
.** 
IsNullOrWhiteSpace** )
(**) *
text*** .
)**. /
)**/ 0
{++ 
return,, 
$str,, 
;,, 
}-- 
if// 
(// 
characterCount// 
<//  
$num//! "
||//# %
text//& *
.//* +
Length//+ 1
<=//2 4
characterCount//5 C
)//C D
return00 
text00 
;00 
var33 
backup33 
=33 
characterCount33 '
;33' (
while44 
(44 
characterCount44 !
>44" #
$num44$ %
&&44& (
text44) -
[44- .
characterCount44. <
-44= >
$num44? @
]44@ A
.44A B
IsLetter44B J
(44J K
)44K L
)44L M
{55 
characterCount66 
--66  
;66  !
}77 
while:: 
(:: 
characterCount:: !
>::" #
$num::$ %
&&::& (
text::) -
[::- .
characterCount::. <
-::= >
$num::? @
]::@ A
.::A B
IsSpace::B I
(::I J
)::J K
)::K L
{;; 
characterCount<< 
--<<  
;<<  !
}== 
if@@ 
(@@ 
characterCount@@ 
==@@ !
$num@@" #
&&@@$ &
!@@' (
wordBoundary@@( 4
)@@4 5
{AA 
characterCountBB 
=BB  
backupBB! '
;BB' (
}CC 
varEE 
trimmedEE 
=EE 
textEE 
.EE 
	SubstringEE (
(EE( )
$numEE) *
,EE* +
characterCountEE, :
)EE: ;
;EE; <
returnFF 
trimmedFF 
+FF 
ellipsisFF %
;FF% &
}GG 	
publicII 
staticII 
stringII 
HtmlClassifyII )
(II) *
thisII* .
stringII/ 5
textII6 :
)II: ;
{JJ 	
ifKK 
(KK 
stringKK 
.KK 
IsNullOrWhiteSpaceKK )
(KK) *
textKK* .
)KK. /
)KK/ 0
{LL 
returnMM 
$strMM 
;MM 
}NN 
varPP 

friendlierPP 
=PP 
textPP !
.PP! "
CamelFriendlyPP" /
(PP/ 0
)PP0 1
;PP1 2
varRR 
resultRR 
=RR 
newRR 
charRR !
[RR! "

friendlierRR" ,
.RR, -
LengthRR- 3
]RR3 4
;RR4 5
varTT 
cursorTT 
=TT 
$numTT 
;TT 
varUU 
previousIsNotLetterUU #
=UU$ %
falseUU& +
;UU+ ,
forVV 
(VV 
varVV 
iVV 
=VV 
$numVV 
;VV 
iVV 
<VV 

friendlierVV  *
.VV* +
LengthVV+ 1
;VV1 2
iVV3 4
++VV4 6
)VV6 7
{WW 
charXX 
currentXX 
=XX 

friendlierXX )
[XX) *
iXX* +
]XX+ ,
;XX, -
ifYY 
(YY 
IsLetterYY 
(YY 
currentYY $
)YY$ %
||YY& (
(YY) *
charYY* .
.YY. /
IsDigitYY/ 6
(YY6 7
currentYY7 >
)YY> ?
&&YY@ B
cursorYYC I
>YYJ K
$numYYL M
)YYM N
)YYN O
{ZZ 
if[[ 
([[ 
previousIsNotLetter[[ +
&&[[, .
i[[/ 0
!=[[1 3
$num[[4 5
&&[[6 8
cursor[[9 ?
>[[@ A
$num[[B C
)[[C D
{\\ 
result]] 
[]] 
cursor]] %
++]]% '
]]]' (
=]]) *
$char]]+ .
;]]. /
}^^ 
result`` 
[`` 
cursor`` !
++``! #
]``# $
=``% &
char``' +
.``+ ,
ToLowerInvariant``, <
(``< =
current``= D
)``D E
;``E F
previousIsNotLetteraa '
=aa( )
falseaa* /
;aa/ 0
}bb 
elsecc 
{dd 
previousIsNotLetteree '
=ee( )
trueee* .
;ee. /
}ff 
}gg 
returnii 
newii 
stringii 
(ii 
resultii $
,ii$ %
$numii& '
,ii' (
cursorii) /
)ii/ 0
;ii0 1
}jj 	
publicll 
staticll 
LocalizedStringll %
	OrDefaultll& /
(ll/ 0
thisll0 4
stringll5 ;
textll< @
,ll@ A
LocalizedStringllB Q
defaultValuellR ^
)ll^ _
{mm 	
returnnn 
stringnn 
.nn 
IsNullOrEmptynn '
(nn' (
textnn( ,
)nn, -
?oo 
defaultValueoo 
:pp 
newpp 
LocalizedStringpp %
(pp% &
nullpp& *
,pp* +
textpp, 0
)pp0 1
;pp1 2
}qq 	
publicss 
staticss 
stringss 

RemoveTagsss '
(ss' (
thisss( ,
stringss- 3
htmlss4 8
,ss8 9
boolss: >

htmlDecodess? I
=ssJ K
falsessL Q
)ssQ R
{tt 	
ifuu 
(uu 
Stringuu 
.uu 
IsNullOrEmptyuu $
(uu$ %
htmluu% )
)uu) *
)uu* +
{vv 
returnww 
Stringww 
.ww 
Emptyww #
;ww# $
}xx 
varzz 
resultzz 
=zz 
newzz 
charzz !
[zz! "
htmlzz" &
.zz& '
Lengthzz' -
]zz- .
;zz. /
var|| 
cursor|| 
=|| 
$num|| 
;|| 
var}} 
inside}} 
=}} 
false}} 
;}} 
for~~ 
(~~ 
var~~ 
i~~ 
=~~ 
$num~~ 
;~~ 
i~~ 
<~~ 
html~~  $
.~~$ %
Length~~% +
;~~+ ,
i~~- .
++~~. 0
)~~0 1
{ 
char
ÄÄ 
current
ÄÄ 
=
ÄÄ 
html
ÄÄ #
[
ÄÄ# $
i
ÄÄ$ %
]
ÄÄ% &
;
ÄÄ& '
switch
ÇÇ 
(
ÇÇ 
current
ÇÇ 
)
ÇÇ  
{
ÉÉ 
case
ÑÑ 
$char
ÑÑ 
:
ÑÑ 
inside
ÖÖ 
=
ÖÖ  
true
ÖÖ! %
;
ÖÖ% &
continue
ÜÜ  
;
ÜÜ  !
case
áá 
$char
áá 
:
áá 
inside
àà 
=
àà  
false
àà! &
;
àà& '
continue
ââ  
;
ââ  !
}
ää 
if
åå 
(
åå 
!
åå 
inside
åå 
)
åå 
{
çç 
result
éé 
[
éé 
cursor
éé !
++
éé! #
]
éé# $
=
éé% &
current
éé' .
;
éé. /
}
èè 
}
êê 
var
íí 
stringResult
íí 
=
íí 
new
íí "
string
íí# )
(
íí) *
result
íí* 0
,
íí0 1
$num
íí2 3
,
íí3 4
cursor
íí5 ;
)
íí; <
;
íí< =
if
îî 
(
îî 

htmlDecode
îî 
)
îî 
{
ïï 
stringResult
ññ 
=
ññ 

WebUtility
ññ )
.
ññ) *

HtmlDecode
ññ* 4
(
ññ4 5
stringResult
ññ5 A
)
ññA B
;
ññB C
}
óó 
return
ôô 
stringResult
ôô 
;
ôô  
}
öö 	
public
ùù 
static
ùù 
string
ùù !
ReplaceNewLinesWith
ùù 0
(
ùù0 1
this
ùù1 5
string
ùù6 <
text
ùù= A
,
ùùA B
string
ùùC I
replacement
ùùJ U
)
ùùU V
{
ûû 	
return
üü 
String
üü 
.
üü  
IsNullOrWhiteSpace
üü ,
(
üü, -
text
üü- 1
)
üü1 2
?
†† 
String
†† 
.
††  
Empty
††  %
:
°° 
text
°° 
.
¢¢ 
Replace
¢¢ %
(
¢¢% &
$str
¢¢& ,
,
¢¢, -
$str
¢¢. 4
)
¢¢4 5
.
££ 
Replace
££ %
(
££% &
$str
££& *
,
££* +
String
££, 2
.
££2 3
Format
££3 9
(
££9 :
replacement
££: E
,
££E F
$str
££G M
)
££M N
)
££N O
.
§§ 
Replace
§§ %
(
§§% &
$str
§§& ,
,
§§, -
String
§§. 4
.
§§4 5
Format
§§5 ;
(
§§; <
replacement
§§< G
,
§§G H
$str
§§I O
)
§§O P
)
§§P Q
;
§§Q R
}
•• 	
private
ßß 
static
ßß 
readonly
ßß 
char
ßß  $
[
ßß$ %
]
ßß% &
validSegmentChars
ßß' 8
=
ßß9 :
$str
ßß; U
.
ßßU V
ToCharArray
ßßV a
(
ßßa b
)
ßßb c
;
ßßc d
public
®® 
static
®® 
bool
®® 
IsValidUrlSegment
®® ,
(
®®, -
this
®®- 1
string
®®2 8
segment
®®9 @
)
®®@ A
{
©© 	
return
µµ 
!
µµ 
segment
µµ 
.
µµ 
Any
µµ 
(
µµ  
validSegmentChars
µµ  1
)
µµ1 2
;
µµ2 3
}
∂∂ 	
public
ææ 
static
ææ 
string
ææ 

ToSafeName
ææ '
(
ææ' (
this
ææ( ,
string
ææ- 3
name
ææ4 8
)
ææ8 9
{
øø 	
if
¿¿ 
(
¿¿ 
string
¿¿ 
.
¿¿  
IsNullOrWhiteSpace
¿¿ )
(
¿¿) *
name
¿¿* .
)
¿¿. /
)
¿¿/ 0
{
¡¡ 
return
¬¬ 
string
¬¬ 
.
¬¬ 
Empty
¬¬ #
;
¬¬# $
}
√√ 
name
≈≈ 
=
≈≈ 
RemoveDiacritics
≈≈ #
(
≈≈# $
name
≈≈$ (
)
≈≈( )
;
≈≈) *
name
∆∆ 
=
∆∆ 
name
∆∆ 
.
∆∆ 
Strip
∆∆ 
(
∆∆ 
c
∆∆ 
=>
∆∆  "
!
«« 
c
«« 
.
«« 
IsLetter
«« 
(
«« 
)
«« 
&&
»» 
!
»» 
char
»» 
.
»» 
IsDigit
»»  
(
»»  !
c
»»! "
)
»»" #
)
…… 
;
…… 
name
ÀÀ 
=
ÀÀ 
name
ÀÀ 
.
ÀÀ 
Trim
ÀÀ 
(
ÀÀ 
)
ÀÀ 
;
ÀÀ 
while
ŒŒ 
(
ŒŒ 
name
ŒŒ 
.
ŒŒ 
Length
ŒŒ 
>
ŒŒ  
$num
ŒŒ! "
&&
ŒŒ# %
!
ŒŒ& '
IsLetter
ŒŒ' /
(
ŒŒ/ 0
name
ŒŒ0 4
[
ŒŒ4 5
$num
ŒŒ5 6
]
ŒŒ6 7
)
ŒŒ7 8
)
ŒŒ8 9
{
œœ 
name
–– 
=
–– 
name
–– 
.
–– 
	Substring
–– %
(
––% &
$num
––& '
)
––' (
;
––( )
}
—— 
if
”” 
(
”” 
name
”” 
.
”” 
Length
”” 
>
”” 
$num
”” !
)
””! "
name
‘‘ 
=
‘‘ 
name
‘‘ 
.
‘‘ 
	Substring
‘‘ %
(
‘‘% &
$num
‘‘& '
,
‘‘' (
$num
‘‘) ,
)
‘‘, -
;
‘‘- .
return
÷÷ 
name
÷÷ 
;
÷÷ 
}
◊◊ 	
public
‹‹ 
static
‹‹ 
bool
‹‹ 
IsLetter
‹‹ #
(
‹‹# $
this
‹‹$ (
char
‹‹) -
c
‹‹. /
)
‹‹/ 0
{
›› 	
return
ﬁﬁ 
(
ﬁﬁ 
$char
ﬁﬁ 
<=
ﬁﬁ 
c
ﬁﬁ 
&&
ﬁﬁ 
c
ﬁﬁ  !
<=
ﬁﬁ" $
$char
ﬁﬁ% (
)
ﬁﬁ( )
||
ﬁﬁ* ,
(
ﬁﬁ- .
$char
ﬁﬁ. 1
<=
ﬁﬁ2 4
c
ﬁﬁ5 6
&&
ﬁﬁ7 9
c
ﬁﬁ: ;
<=
ﬁﬁ< >
$char
ﬁﬁ? B
)
ﬁﬁB C
;
ﬁﬁC D
}
ﬂﬂ 	
public
·· 
static
·· 
bool
·· 
IsSpace
·· "
(
··" #
this
··# '
char
··( ,
c
··- .
)
··. /
{
‚‚ 	
return
„„ 
(
„„ 
c
„„ 
==
„„ 
$char
„„ 
||
„„  
c
„„! "
==
„„# %
$char
„„& *
||
„„+ -
c
„„. /
==
„„0 2
$char
„„3 7
||
„„8 :
c
„„; <
==
„„= ?
$char
„„@ D
||
„„E G
c
„„H I
==
„„J L
$char
„„M P
)
„„P Q
;
„„Q R
}
‰‰ 	
public
ÊÊ 
static
ÊÊ 
string
ÊÊ 
RemoveDiacritics
ÊÊ -
(
ÊÊ- .
this
ÊÊ. 2
string
ÊÊ3 9
name
ÊÊ: >
)
ÊÊ> ?
{
ÁÁ 	
var
ËË 
stFormD
ËË 
=
ËË 
name
ËË 
.
ËË 
	Normalize
ËË (
(
ËË( )
NormalizationForm
ËË) :
.
ËË: ;
FormD
ËË; @
)
ËË@ A
;
ËËA B
var
ÈÈ 
sb
ÈÈ 
=
ÈÈ 
new
ÈÈ 
StringBuilder
ÈÈ &
(
ÈÈ& '
)
ÈÈ' (
;
ÈÈ( )
foreach
ÎÎ 
(
ÎÎ 
var
ÎÎ 
t
ÎÎ 
in
ÎÎ 
stFormD
ÎÎ %
)
ÎÎ% &
{
ÏÏ 
var
ÌÌ 
uc
ÌÌ 
=
ÌÌ 
CharUnicodeInfo
ÌÌ (
.
ÌÌ( ) 
GetUnicodeCategory
ÌÌ) ;
(
ÌÌ; <
t
ÌÌ< =
)
ÌÌ= >
;
ÌÌ> ?
if
ÓÓ 
(
ÓÓ 
uc
ÓÓ 
!=
ÓÓ 
UnicodeCategory
ÓÓ )
.
ÓÓ) *
NonSpacingMark
ÓÓ* 8
)
ÓÓ8 9
{
ÔÔ 
sb
 
.
 
Append
 
(
 
t
 
)
  
;
  !
}
ÒÒ 
}
ÚÚ 
return
ÙÙ 
(
ÙÙ 
sb
ÙÙ 
.
ÙÙ 
ToString
ÙÙ 
(
ÙÙ  
)
ÙÙ  !
.
ÙÙ! "
	Normalize
ÙÙ" +
(
ÙÙ+ ,
NormalizationForm
ÙÙ, =
.
ÙÙ= >
FormC
ÙÙ> C
)
ÙÙC D
)
ÙÙD E
;
ÙÙE F
}
ıı 	
public
¸¸ 
static
¸¸ 
string
¸¸ 
ReplaceDiacritics
¸¸ .
(
¸¸. /
this
¸¸/ 3
string
¸¸4 :
s
¸¸; <
)
¸¸< =
{
˝˝ 	
var
˛˛ 
stringBuilder
˛˛ 
=
˛˛ 
new
˛˛  #
StringBuilder
˛˛$ 1
(
˛˛1 2
)
˛˛2 3
;
˛˛3 4
var
ˇˇ 
normalizedString
ˇˇ  
=
ˇˇ! "
s
ˇˇ# $
.
ˇˇ$ %
	Normalize
ˇˇ% .
(
ˇˇ. /
NormalizationForm
ˇˇ/ @
.
ˇˇ@ A
FormD
ˇˇA F
)
ˇˇF G
;
ˇˇG H
var
ÄÄ 
c
ÄÄ 
=
ÄÄ 
$char
ÄÄ 
;
ÄÄ 
for
ÇÇ 
(
ÇÇ 
var
ÇÇ 
i
ÇÇ 
=
ÇÇ 
$num
ÇÇ 
;
ÇÇ 
i
ÇÇ 
<=
ÇÇ  
normalizedString
ÇÇ! 1
.
ÇÇ1 2
Length
ÇÇ2 8
-
ÇÇ9 :
$num
ÇÇ; <
;
ÇÇ< =
i
ÇÇ> ?
++
ÇÇ? A
)
ÇÇA B
{
ÉÉ 
c
ÑÑ 
=
ÑÑ 
normalizedString
ÑÑ $
[
ÑÑ$ %
i
ÑÑ% &
]
ÑÑ& '
;
ÑÑ' (
if
ÖÖ 
(
ÖÖ 
CharUnicodeInfo
ÖÖ #
.
ÖÖ# $ 
GetUnicodeCategory
ÖÖ$ 6
(
ÖÖ6 7
c
ÖÖ7 8
)
ÖÖ8 9
!=
ÖÖ: <
UnicodeCategory
ÖÖ= L
.
ÖÖL M
NonSpacingMark
ÖÖM [
)
ÖÖ[ \
{
ÜÜ 
stringBuilder
áá !
.
áá! "
Append
áá" (
(
áá( )
c
áá) *
)
áá* +
;
áá+ ,
}
àà 
}
ââ 
return
ãã 
stringBuilder
ãã  
.
ãã  !
ToString
ãã! )
(
ãã) *
)
ãã* +
;
ãã+ ,
}
åå 	
public
éé 
static
éé 
string
éé 
Strip
éé "
(
éé" #
this
éé# '
string
éé( .
subject
éé/ 6
,
éé6 7
params
éé8 >
char
éé? C
[
ééC D
]
ééD E
stripped
ééF N
)
ééN O
{
èè 	
if
êê 
(
êê 
stripped
êê 
==
êê 
null
êê  
||
êê! #
stripped
êê$ ,
.
êê, -
Length
êê- 3
==
êê4 6
$num
êê7 8
||
êê9 ;
string
êê< B
.
êêB C
IsNullOrEmpty
êêC P
(
êêP Q
subject
êêQ X
)
êêX Y
)
êêY Z
{
ëë 
return
íí 
subject
íí 
;
íí 
}
ìì 
var
ïï 
result
ïï 
=
ïï 
new
ïï 
char
ïï !
[
ïï! "
subject
ïï" )
.
ïï) *
Length
ïï* 0
]
ïï0 1
;
ïï1 2
var
óó 
cursor
óó 
=
óó 
$num
óó 
;
óó 
for
òò 
(
òò 
var
òò 
i
òò 
=
òò 
$num
òò 
;
òò 
i
òò 
<
òò 
subject
òò  '
.
òò' (
Length
òò( .
;
òò. /
i
òò0 1
++
òò1 3
)
òò3 4
{
ôô 
var
öö 
current
öö 
=
öö 
subject
öö %
[
öö% &
i
öö& '
]
öö' (
;
öö( )
if
õõ 
(
õõ 
Array
õõ 
.
õõ 
IndexOf
õõ !
(
õõ! "
stripped
õõ" *
,
õõ* +
current
õõ, 3
)
õõ3 4
<
õõ5 6
$num
õõ7 8
)
õõ8 9
{
úú 
result
ùù 
[
ùù 
cursor
ùù !
++
ùù! #
]
ùù# $
=
ùù% &
current
ùù' .
;
ùù. /
}
ûû 
}
üü 
return
°° 
new
°° 
string
°° 
(
°° 
result
°° $
,
°°$ %
$num
°°& '
,
°°' (
cursor
°°) /
)
°°/ 0
;
°°0 1
}
¢¢ 	
public
§§ 
static
§§ 
string
§§ 
Strip
§§ "
(
§§" #
this
§§# '
string
§§( .
subject
§§/ 6
,
§§6 7
Func
§§8 <
<
§§< =
char
§§= A
,
§§A B
bool
§§C G
>
§§G H
	predicate
§§I R
)
§§R S
{
•• 	
var
¶¶ 
result
¶¶ 
=
¶¶ 
new
¶¶ 
char
¶¶ !
[
¶¶! "
subject
¶¶" )
.
¶¶) *
Length
¶¶* 0
]
¶¶0 1
;
¶¶1 2
var
®® 
cursor
®® 
=
®® 
$num
®® 
;
®® 
for
©© 
(
©© 
var
©© 
i
©© 
=
©© 
$num
©© 
;
©© 
i
©© 
<
©© 
subject
©©  '
.
©©' (
Length
©©( .
;
©©. /
i
©©0 1
++
©©1 3
)
©©3 4
{
™™ 
var
´´ 
current
´´ 
=
´´ 
subject
´´ %
[
´´% &
i
´´& '
]
´´' (
;
´´( )
if
¨¨ 
(
¨¨ 
!
¨¨ 
	predicate
¨¨ 
(
¨¨ 
current
¨¨ &
)
¨¨& '
)
¨¨' (
{
≠≠ 
result
ÆÆ 
[
ÆÆ 
cursor
ÆÆ !
++
ÆÆ! #
]
ÆÆ# $
=
ÆÆ% &
current
ÆÆ' .
;
ÆÆ. /
}
ØØ 
}
∞∞ 
return
≤≤ 
new
≤≤ 
string
≤≤ 
(
≤≤ 
result
≤≤ $
,
≤≤$ %
$num
≤≤& '
,
≤≤' (
cursor
≤≤) /
)
≤≤/ 0
;
≤≤0 1
}
≥≥ 	
public
µµ 
static
µµ 
bool
µµ 
Any
µµ 
(
µµ 
this
µµ #
string
µµ$ *
subject
µµ+ 2
,
µµ2 3
params
µµ4 :
char
µµ; ?
[
µµ? @
]
µµ@ A
chars
µµB G
)
µµG H
{
∂∂ 	
if
∑∑ 
(
∑∑ 
string
∑∑ 
.
∑∑ 
IsNullOrEmpty
∑∑ $
(
∑∑$ %
subject
∑∑% ,
)
∑∑, -
||
∑∑. 0
chars
∑∑1 6
==
∑∑7 9
null
∑∑: >
||
∑∑? A
chars
∑∑B G
.
∑∑G H
Length
∑∑H N
==
∑∑O Q
$num
∑∑R S
)
∑∑S T
{
∏∏ 
return
ππ 
false
ππ 
;
ππ 
}
∫∫ 
for
ºº 
(
ºº 
var
ºº 
i
ºº 
=
ºº 
$num
ºº 
;
ºº 
i
ºº 
<
ºº 
subject
ºº  '
.
ºº' (
Length
ºº( .
;
ºº. /
i
ºº0 1
++
ºº1 3
)
ºº3 4
{
ΩΩ 
var
ææ 
current
ææ 
=
ææ 
subject
ææ %
[
ææ% &
i
ææ& '
]
ææ' (
;
ææ( )
if
øø 
(
øø 
Array
øø 
.
øø 
IndexOf
øø !
(
øø! "
chars
øø" '
,
øø' (
current
øø) 0
)
øø0 1
>=
øø2 4
$num
øø5 6
)
øø6 7
{
¿¿ 
return
¡¡ 
true
¡¡ 
;
¡¡  
}
¬¬ 
}
√√ 
return
≈≈ 
false
≈≈ 
;
≈≈ 
}
∆∆ 	
public
»» 
static
»» 
bool
»» 
All
»» 
(
»» 
this
»» #
string
»»$ *
subject
»»+ 2
,
»»2 3
params
»»4 :
char
»»; ?
[
»»? @
]
»»@ A
chars
»»B G
)
»»G H
{
…… 	
if
   
(
   
string
   
.
   
IsNullOrEmpty
   $
(
  $ %
subject
  % ,
)
  , -
)
  - .
{
ÀÀ 
return
ÃÃ 
true
ÃÃ 
;
ÃÃ 
}
ÕÕ 
if
œœ 
(
œœ 
chars
œœ 
==
œœ 
null
œœ 
||
œœ  
chars
œœ! &
.
œœ& '
Length
œœ' -
==
œœ. 0
$num
œœ1 2
)
œœ2 3
{
–– 
return
—— 
false
—— 
;
—— 
}
““ 
for
‘‘ 
(
‘‘ 
var
‘‘ 
i
‘‘ 
=
‘‘ 
$num
‘‘ 
;
‘‘ 
i
‘‘ 
<
‘‘ 
subject
‘‘  '
.
‘‘' (
Length
‘‘( .
;
‘‘. /
i
‘‘0 1
++
‘‘1 3
)
‘‘3 4
{
’’ 
var
÷÷ 
current
÷÷ 
=
÷÷ 
subject
÷÷ %
[
÷÷% &
i
÷÷& '
]
÷÷' (
;
÷÷( )
if
◊◊ 
(
◊◊ 
Array
◊◊ 
.
◊◊ 
IndexOf
◊◊ !
(
◊◊! "
chars
◊◊" '
,
◊◊' (
current
◊◊) 0
)
◊◊0 1
<
◊◊2 3
$num
◊◊4 5
)
◊◊5 6
{
ÿÿ 
return
ŸŸ 
false
ŸŸ  
;
ŸŸ  !
}
⁄⁄ 
}
€€ 
return
›› 
true
›› 
;
›› 
}
ﬁﬁ 	
public
‡‡ 
static
‡‡ 
string
‡‡ 
	Translate
‡‡ &
(
‡‡& '
this
‡‡' +
string
‡‡, 2
subject
‡‡3 :
,
‡‡: ;
char
‡‡< @
[
‡‡@ A
]
‡‡A B
from
‡‡C G
,
‡‡G H
char
‡‡I M
[
‡‡M N
]
‡‡N O
to
‡‡P R
)
‡‡R S
{
·· 	
if
‚‚ 
(
‚‚ 
string
‚‚ 
.
‚‚ 
IsNullOrEmpty
‚‚ $
(
‚‚$ %
subject
‚‚% ,
)
‚‚, -
)
‚‚- .
{
„„ 
return
‰‰ 
subject
‰‰ 
;
‰‰ 
}
ÂÂ 
if
ÁÁ 
(
ÁÁ 
from
ÁÁ 
==
ÁÁ 
null
ÁÁ 
||
ÁÁ 
to
ÁÁ  "
==
ÁÁ# %
null
ÁÁ& *
)
ÁÁ* +
{
ËË 
throw
ÈÈ 
new
ÈÈ #
ArgumentNullException
ÈÈ /
(
ÈÈ/ 0
)
ÈÈ0 1
;
ÈÈ1 2
}
ÍÍ 
if
ÏÏ 
(
ÏÏ 
from
ÏÏ 
.
ÏÏ 
Length
ÏÏ 
!=
ÏÏ 
to
ÏÏ !
.
ÏÏ! "
Length
ÏÏ" (
)
ÏÏ( )
{
ÌÌ 
throw
ÓÓ 
new
ÓÓ #
ArgumentNullException
ÓÓ /
(
ÓÓ/ 0
nameof
ÓÓ0 6
(
ÓÓ6 7
from
ÓÓ7 ;
)
ÓÓ; <
,
ÓÓ< =
$str
ÓÓ> d
)
ÓÓd e
;
ÓÓe f
}
ÔÔ 
var
ÒÒ 
map
ÒÒ 
=
ÒÒ 
new
ÒÒ 

Dictionary
ÒÒ $
<
ÒÒ$ %
char
ÒÒ% )
,
ÒÒ) *
char
ÒÒ+ /
>
ÒÒ/ 0
(
ÒÒ0 1
from
ÒÒ1 5
.
ÒÒ5 6
Length
ÒÒ6 <
)
ÒÒ< =
;
ÒÒ= >
for
ÚÚ 
(
ÚÚ 
var
ÚÚ 
i
ÚÚ 
=
ÚÚ 
$num
ÚÚ 
;
ÚÚ 
i
ÚÚ 
<
ÚÚ 
from
ÚÚ  $
.
ÚÚ$ %
Length
ÚÚ% +
;
ÚÚ+ ,
i
ÚÚ- .
++
ÚÚ. 0
)
ÚÚ0 1
{
ÛÛ 
map
ÙÙ 
[
ÙÙ 
from
ÙÙ 
[
ÙÙ 
i
ÙÙ 
]
ÙÙ 
]
ÙÙ 
=
ÙÙ 
to
ÙÙ !
[
ÙÙ! "
i
ÙÙ" #
]
ÙÙ# $
;
ÙÙ$ %
}
ıı 
var
˜˜ 
result
˜˜ 
=
˜˜ 
new
˜˜ 
char
˜˜ !
[
˜˜! "
subject
˜˜" )
.
˜˜) *
Length
˜˜* 0
]
˜˜0 1
;
˜˜1 2
for
˘˘ 
(
˘˘ 
var
˘˘ 
i
˘˘ 
=
˘˘ 
$num
˘˘ 
;
˘˘ 
i
˘˘ 
<
˘˘ 
subject
˘˘  '
.
˘˘' (
Length
˘˘( .
;
˘˘. /
i
˘˘0 1
++
˘˘1 3
)
˘˘3 4
{
˙˙ 
var
˚˚ 
current
˚˚ 
=
˚˚ 
subject
˚˚ %
[
˚˚% &
i
˚˚& '
]
˚˚' (
;
˚˚( )
if
¸¸ 
(
¸¸ 
map
¸¸ 
.
¸¸ 
ContainsKey
¸¸ #
(
¸¸# $
current
¸¸$ +
)
¸¸+ ,
)
¸¸, -
{
˝˝ 
result
˛˛ 
[
˛˛ 
i
˛˛ 
]
˛˛ 
=
˛˛ 
map
˛˛  #
[
˛˛# $
current
˛˛$ +
]
˛˛+ ,
;
˛˛, -
}
ˇˇ 
else
ÄÄ 
{
ÅÅ 
result
ÇÇ 
[
ÇÇ 
i
ÇÇ 
]
ÇÇ 
=
ÇÇ 
current
ÇÇ  '
;
ÇÇ' (
}
ÉÉ 
}
ÑÑ 
return
ÜÜ 
new
ÜÜ 
string
ÜÜ 
(
ÜÜ 
result
ÜÜ $
)
ÜÜ$ %
;
ÜÜ% &
}
áá 	
public
ââ 
static
ââ 
string
ââ 

ReplaceAll
ââ '
(
ââ' (
this
ââ( ,
string
ââ- 3
original
ââ4 <
,
ââ< =
IDictionary
ââ> I
<
ââI J
string
ââJ P
,
ââP Q
string
ââR X
>
ââX Y
replacements
ââZ f
)
ââf g
{
ää 	
var
ãã 
pattern
ãã 
=
ãã 
$"
ãã 
{
ãã 
string
ãã #
.
ãã# $
Join
ãã$ (
(
ãã( )
$str
ãã) ,
,
ãã, -
replacements
ãã. :
.
ãã: ;
Keys
ãã; ?
)
ãã? @
}
ãã@ A
"
ããA B
;
ããB C
return
åå 
Regex
åå 
.
åå 
Replace
åå  
(
åå  !
original
åå! )
,
åå) *
pattern
åå+ 2
,
åå2 3
match
åå4 9
=>
åå: <
replacements
åå= I
[
ååI J
match
ååJ O
.
ååO P
Value
ååP U
]
ååU V
)
ååV W
;
ååW X
}
çç 	
public
èè 
static
èè 
string
èè 
TrimEnd
èè $
(
èè$ %
this
èè% )
string
èè* 0
rough
èè1 6
,
èè6 7
string
èè8 >
trim
èè? C
=
èèD E
$str
èèF H
)
èèH I
{
êê 	
if
ëë 
(
ëë 
rough
ëë 
==
ëë 
null
ëë 
)
ëë 
return
íí 
null
íí 
;
íí 
return
îî 
rough
îî 
.
îî 
EndsWith
îî !
(
îî! "
trim
îî" &
,
îî& '
StringComparison
îî( 8
.
îî8 9
Ordinal
îî9 @
)
îî@ A
?
ïï 
rough
ïï 
.
ïï 
	Substring
ïï (
(
ïï( )
$num
ïï) *
,
ïï* +
rough
ïï, 1
.
ïï1 2
Length
ïï2 8
-
ïï9 :
trim
ïï; ?
.
ïï? @
Length
ïï@ F
)
ïïF G
:
ññ 
rough
ññ 
;
ññ 
}
óó 	
public
ôô 
static
ôô 
string
ôô #
ReplaceLastOccurrence
ôô 2
(
ôô2 3
this
ôô3 7
string
ôô8 >
source
ôô? E
,
ôôE F
string
ôôG M
find
ôôN R
,
ôôR S
string
ôôT Z
replace
ôô[ b
)
ôôb c
{
öö 	
var
õõ 
place
õõ 
=
õõ 
source
õõ 
.
õõ 
LastIndexOf
õõ *
(
õõ* +
find
õõ+ /
,
õõ/ 0
StringComparison
õõ1 A
.
õõA B
Ordinal
õõB I
)
õõI J
;
õõJ K
return
úú 
source
úú 
.
úú 
Remove
úú  
(
úú  !
place
úú! &
,
úú& '
find
úú( ,
.
úú, -
Length
úú- 3
)
úú3 4
.
úú4 5
Insert
úú5 ;
(
úú; <
place
úú< A
,
úúA B
replace
úúC J
)
úúJ K
;
úúK L
}
ùù 	
private
üü 
static
üü !
ImmutableDictionary
üü *
<
üü* +
string
üü+ 1
,
üü1 2
string
üü3 9
>
üü9 :(
_underscorePascalCaseIndex
üü; U
=
üüV W!
ImmutableDictionary
üüX k
<
üük l
string
üül r
,
üür s
string
üüt z
>
üüz {
.
üü{ |
Emptyüü| Å
;üüÅ Ç
private
†† 
static
†† !
ImmutableDictionary
†† *
<
††* +
string
††+ 1
,
††1 2
string
††3 9
>
††9 :"
_dashPascalCaseIndex
††; O
=
††P Q!
ImmutableDictionary
††R e
<
††e f
string
††f l
,
††l m
string
††n t
>
††t u
.
††u v
Empty
††v {
;
††{ |
public
•• 
static
•• 
string
•• $
ToPascalCaseUnderscore
•• 3
(
••3 4
this
••4 8
string
••9 ?
	attribute
••@ I
)
••I J
{
¶¶ 	
if
ßß 
(
ßß 
!
ßß (
_underscorePascalCaseIndex
ßß +
.
ßß+ ,
TryGetValue
ßß, 7
(
ßß7 8
	attribute
ßß8 A
,
ßßA B
out
ßßC F
var
ßßG J
result
ßßK Q
)
ßßQ R
)
ßßR S
{
®® 
result
©© 
=
©© 
ToPascalCase
©© %
(
©©% &
	attribute
©©& /
,
©©/ 0
$char
©©1 4
)
©©4 5
;
©©5 6(
_underscorePascalCaseIndex
™™ *
=
™™+ ,(
_underscorePascalCaseIndex
™™- G
.
™™G H
SetItem
™™H O
(
™™O P
	attribute
™™P Y
,
™™Y Z
result
™™[ a
)
™™a b
;
™™b c
}
´´ 
return
≠≠ 
result
≠≠ 
;
≠≠ 
}
ÆÆ 	
public
≥≥ 
static
≥≥ 
string
≥≥ 
ToPascalCaseDash
≥≥ -
(
≥≥- .
this
≥≥. 2
string
≥≥3 9
	attribute
≥≥: C
)
≥≥C D
{
¥¥ 	
if
µµ 
(
µµ 
!
µµ "
_dashPascalCaseIndex
µµ %
.
µµ% &
TryGetValue
µµ& 1
(
µµ1 2
	attribute
µµ2 ;
,
µµ; <
out
µµ= @
var
µµA D
result
µµE K
)
µµK L
)
µµL M
{
∂∂ 
result
∑∑ 
=
∑∑ 
ToPascalCase
∑∑ %
(
∑∑% &
	attribute
∑∑& /
,
∑∑/ 0
$char
∑∑1 4
)
∑∑4 5
;
∑∑5 6"
_dashPascalCaseIndex
∏∏ $
=
∏∏% &"
_dashPascalCaseIndex
∏∏' ;
.
∏∏; <
SetItem
∏∏< C
(
∏∏C D
	attribute
∏∏D M
,
∏∏M N
result
∏∏O U
)
∏∏U V
;
∏∏V W
}
ππ 
return
ªª 
result
ªª 
;
ªª 
}
ºº 	
public
¡¡ 
static
¡¡ 
string
¡¡ 
ToPascalCase
¡¡ )
(
¡¡) *
this
¡¡* .
string
¡¡/ 5
	attribute
¡¡6 ?
,
¡¡? @
char
¡¡A E!
upperAfterDelimiter
¡¡F Y
)
¡¡Y Z
{
¬¬ 	
var
√√ 
nextIsUpper
√√ 
=
√√ 
true
√√ "
;
√√" #
	attribute
ƒƒ 
=
ƒƒ 
	attribute
ƒƒ !
.
ƒƒ! "
Trim
ƒƒ" &
(
ƒƒ& '
)
ƒƒ' (
;
ƒƒ( )
var
≈≈ 
result
≈≈ 
=
≈≈ 
new
≈≈ 
StringBuilder
≈≈ *
(
≈≈* +
	attribute
≈≈+ 4
.
≈≈4 5
Length
≈≈5 ;
)
≈≈; <
;
≈≈< =
foreach
«« 
(
«« 
var
«« 
c
«« 
in
«« 
	attribute
«« '
)
««' (
{
»» 
if
…… 
(
…… 
c
…… 
==
…… !
upperAfterDelimiter
…… ,
)
……, -
{
   
nextIsUpper
ÀÀ 
=
ÀÀ  !
true
ÀÀ" &
;
ÀÀ& '
continue
ÃÃ 
;
ÃÃ 
}
ÕÕ 
if
œœ 
(
œœ 
nextIsUpper
œœ 
)
œœ  
{
–– 
result
—— 
.
—— 
Append
—— !
(
——! "
Char
——" &
.
——& '
ToUpperInvariant
——' 7
(
——7 8
c
——8 9
)
——9 :
)
——: ;
;
——; <
}
““ 
else
”” 
{
‘‘ 
result
’’ 
.
’’ 
Append
’’ !
(
’’! "
c
’’" #
)
’’# $
;
’’$ %
}
÷÷ 
nextIsUpper
ÿÿ 
=
ÿÿ 
false
ÿÿ #
;
ÿÿ# $
}
ŸŸ 
return
€€ 
result
€€ 
.
€€ 
ToString
€€ "
(
€€" #
)
€€# $
;
€€$ %
}
‹‹ 	
public
·· 
static
·· 
bool
·· 
IsJson
·· !
(
··! "
this
··" &
string
··' -
json
··. 2
)
··2 3
{
‚‚ 	
try
„„ 
{
‰‰ 
JToken
ÂÂ 
.
ÂÂ 
Parse
ÂÂ 
(
ÂÂ 
json
ÂÂ !
)
ÂÂ! "
;
ÂÂ" #
return
ÊÊ 
true
ÊÊ 
;
ÊÊ 
}
ÁÁ 
catch
ËË 
{
ÈÈ 
return
ÍÍ 
false
ÍÍ 
;
ÍÍ 
}
ÎÎ 
}
ÏÏ 	
}
ÌÌ 
}ÓÓ ¸
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Mvc.Core\Utilities\UrlHelperExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Core 
. 
	Utilities (
{ 
public 

static 
class 
UrlHelperExtensions +
{ 
public 
static 
string 
ToAbsoluteAction -
(- .
this. 2

IUrlHelper3 =
url> A
,A B
stringC I

actionNameJ T
,T U
stringV \
controllerName] k
,k l
objectm s
routeValuest 
=
Ä Å
null
Ç Ü
)
Ü á
{ 	
return		 
url		 
.		 
Action		 
(		 

actionName		 (
,		( )
controllerName		* 8
,		8 9
routeValues		: E
,		E F
url		G J
.		J K
ActionContext		K X
.		X Y
HttpContext		Y d
.		d e
Request		e l
.		l m
Scheme		m s
)		s t
;		t u
}

 	
public 
static 
string 

GetBaseUrl '
(' (
this( ,

IUrlHelper- 7
url8 ;
); <
{ 	
var 
request 
= 
url 
. 
ActionContext +
.+ ,
HttpContext, 7
.7 8
Request8 ?
;? @
var 
scheme 
= 
request  
.  !
Scheme! '
;' (
var 
host 
= 
request 
. 
Host #
.# $
ToUriComponent$ 2
(2 3
)3 4
;4 5
return 
$" 
{ 
scheme 
} 
://  
{  !
host! %
}% &
"& '
;' (
} 	
public 
static 
string 
ToAbsoluteUrl *
(* +
this+ /

IUrlHelper0 :
url; >
,> ?
string@ F
virtualPathG R
)R S
{ 	
var 
baseUrl 
= 
url 
. 

GetBaseUrl (
(( )
)) *
;* +
var 
path 
= 
url 
. 
Content "
(" #
virtualPath# .
). /
;/ 0
return 
$" 
{ 
baseUrl 
} 
{ 
path #
}# $
"$ %
;% &
} 	
} 
} 