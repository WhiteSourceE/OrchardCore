�!
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
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
string 
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
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
NavigationConstants, ?
.? @*
AdminMenuConfigurationPosition@ ^
,^ _
cfg` c
=>d f
cfgg j
. 
Add 
( 
S 
[ 
$str  
]  !
,! "
S# $
[$ %
$str% *
]* +
.+ ,
PrefixPosition, :
(: ;
); <
,< =
seo> A
=>B D
seoE H
. 

Permission #
(# $
Permissions$ /
./ 0
ManageSitemaps0 >
)> ?
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
S, -
[- .
$str. 8
]8 9
.9 :
PrefixPosition: H
(H I
$strI L
)L M
,M N
sitemapsO W
=>X Z
sitemaps[ c
. 
Action #
(# $
$str$ *
,* +
$str, 3
,3 4
new5 8
{9 :
area; ?
=@ A
$strB X
}Y Z
)Z [
. 
LocalNav %
(% &
)& '
) 
. 
Add 
( 
S 
[ 
$str 0
]0 1
,1 2
S3 4
[4 5
$str5 F
]F G
.G H
PrefixPositionH V
(V W
$strW Z
)Z [
,[ \
sitemaps] e
=>f h
sitemapsi q
.   
Action   #
(  # $
$str  $ *
,  * +
$str  , :
,  : ;
new  < ?
{  @ A
area  B F
=  G H
$str  I _
}  ` a
)  a b
.!! 
LocalNav!! %
(!!% &
)!!& '
)"" 
.## 
Add## 
(## 
S## 
[## 
$str## /
]##/ 0
,##0 1
S##2 3
[##3 4
$str##4 D
]##D E
.##E F
PrefixPosition##F T
(##T U
$str##U X
)##X Y
,##Y Z
sitemaps##[ c
=>##d f
sitemaps##g o
.$$ 
Action$$ #
($$# $
$str$$$ *
,$$* +
$str$$, :
,$$: ;
new$$< ?
{$$@ A
area$$B F
=$$G H
$str$$I _
}$$` a
)$$a b
.%% 
LocalNav%% %
(%%% &
)%%& '
)&& 
)'' 
)'' 
;'' 
return)) 
Task)) 
.)) 
CompletedTask)) %
;))% &
}** 	
}++ 
},, �6
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Builders\CustomPathSitemapSourceBuilder.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{		 
public

 

class

 *
CustomPathSitemapSourceBuilder

 /
:

0 1$
SitemapSourceBuilderBase

2 J
<

J K#
CustomPathSitemapSource

K b
>

b c
{ 
private 
static 
readonly 

XNamespace  *
	Namespace+ 4
=5 6
$str7 d
;d e
public 
override 
async 
Task "
BuildSourceAsync# 3
(3 4#
CustomPathSitemapSource4 K
sourceL R
,R S!
SitemapBuilderContextT i
contextj q
)q r
{ 	
var 
url 
= 
new 
XElement "
(" #
	Namespace# ,
+- .
$str/ 4
)4 5
;5 6
if 
( 
await $
BuildUrlsetMetadataAsync .
(. /
source/ 5
,5 6
context7 >
,> ?
url@ C
)C D
)D E
{ 
context 
. 
Response  
.  !
ResponseElement! 0
.0 1
Add1 4
(4 5
url5 8
)8 9
;9 :
} 
} 	
private 
Task 
< 
bool 
> $
BuildUrlsetMetadataAsync 3
(3 4#
CustomPathSitemapSource4 K
sourceL R
,R S!
SitemapBuilderContextT i
contextj q
,q r
XElements {
url| 
)	 �
{ 	
if 
( 
BuildUrl 
( 
context  
,  !
source" (
,( )
url* -
)- .
). /
{ 
PopulateLastMod 
(  
source  &
,& '
url( +
)+ ,
;, -+
PopulateChangeFrequencyPriority /
(/ 0
source0 6
,6 7
url8 ;
); <
;< =
return 
Task 
. 

FromResult &
(& '
true' +
)+ ,
;, -
}   
return"" 
Task"" 
."" 

FromResult"" "
(""" #
false""# (
)""( )
;"") *
}## 	
private%% 
bool%% 
BuildUrl%% 
(%% !
SitemapBuilderContext%% 3
context%%4 ;
,%%; <#
CustomPathSitemapSource%%= T
source%%U [
,%%[ \
XElement%%] e
url%%f i
)%%i j
{&& 	
if'' 
('' 
string'' 
.'' 
IsNullOrEmpty'' $
(''$ %
source''% +
.''+ ,
Path'', 0
)''0 1
)''1 2
return(( 
false(( 
;(( 
var++ 
path++ 
=++ 
$str++ 
+++ 
source++ $
.++$ %
Path++% )
;++) *
var-- 
loc-- 
=-- 
new-- 
XElement-- "
(--" #
	Namespace--# ,
+--- .
$str--/ 4
)--4 5
;--5 6
loc.. 
... 
Add.. 
(.. 
context.. 
... 

HostPrefix.. &
+..' (
context..) 0
...0 1
	UrlHelper..1 :
...: ;
Content..; B
(..B C
path..C G
)..G H
)..H I
;..I J
url// 
.// 
Add// 
(// 
loc// 
)// 
;// 
return00 
true00 
;00 
}11 	
private33 
void33 +
PopulateChangeFrequencyPriority33 4
(334 5#
CustomPathSitemapSource335 L
source33M S
,33S T
XElement33U ]
url33^ a
)33a b
{44 	
var55  
changeFrequencyValue55 $
=55% &
source55' -
.55- .
ChangeFrequency55. =
.55= >
ToString55> F
(55F G
)55G H
;55H I
var66 
priorityIntValue66  
=66! "
source66# )
.66) *
Priority66* 2
;662 3
var88 
priorityValue88 
=88 
(88  !
priorityIntValue88! 1
*882 3
$num884 8
)888 9
.889 :
ToString88: B
(88B C
CultureInfo88C N
.88N O
InvariantCulture88O _
)88_ `
;88` a
var:: 

changeFreq:: 
=:: 
new::  
XElement::! )
(::) *
	Namespace::* 3
+::4 5
$str::6 B
)::B C
;::C D

changeFreq;; 
.;; 
Add;; 
(;;  
changeFrequencyValue;; /
.;;/ 0
ToLower;;0 7
(;;7 8
);;8 9
);;9 :
;;;: ;
url<< 
.<< 
Add<< 
(<< 

changeFreq<< 
)<< 
;<<  
var>> 
priority>> 
=>> 
new>> 
XElement>> '
(>>' (
	Namespace>>( 1
+>>2 3
$str>>4 >
)>>> ?
;>>? @
priority?? 
.?? 
Add?? 
(?? 
priorityValue?? &
)??& '
;??' (
url@@ 
.@@ 
Add@@ 
(@@ 
priority@@ 
)@@ 
;@@ 
}AA 	
privateCC 
voidCC 
PopulateLastModCC $
(CC$ %#
CustomPathSitemapSourceCC% <
sourceCC= C
,CCC D
XElementCCE M
urlCCN Q
)CCQ R
{DD 	
ifFF 
(FF 
sourceFF 
.FF 

LastUpdateFF !
.FF! "
HasValueFF" *
)FF* +
{GG 
varHH 
lastModHH 
=HH 
newHH !
XElementHH" *
(HH* +
	NamespaceHH+ 4
+HH5 6
$strHH7 @
)HH@ A
;HHA B
lastModII 
.II 
AddII 
(II 
sourceII "
.II" #

LastUpdateII# -
.II- .
GetValueOrDefaultII. ?
(II? @
)II@ A
.IIA B
ToStringIIB J
(IIJ K
$strIIK c
)IIc d
)IId e
;IIe f
urlJJ 
.JJ 
AddJJ 
(JJ 
lastModJJ 
)JJ  
;JJ  !
}KK 
}LL 	
}MM 
}NN �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Builders\CustomPathSitemapSourceModifiedDateProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public 

class 7
+CustomPathSitemapSourceModifiedDateProvider <
:= >1
%SitemapSourceModifiedDateProviderBase? d
<d e#
CustomPathSitemapSourcee |
>| }
{ 
public		 
override		 
Task		 
<		 
DateTime		 %
?		% &
>		& '$
GetLastModifiedDateAsync		( @
(		@ A#
CustomPathSitemapSource		A X
source		Y _
)		_ `
{

 	
return 
Task 
. 

FromResult "
(" #
source# )
.) *

LastUpdate* 4
)4 5
;5 6
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Builders\DefaultSitemapBuilder.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public 

class !
DefaultSitemapBuilder &
:' (
ISitemapBuilder) 8
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
$ %
ISitemapTypeBuilder

% 8
>

8 9 
_sitemapTypeBuilders

: N
;

N O
public !
DefaultSitemapBuilder $
($ %
IEnumerable% 0
<0 1
ISitemapTypeBuilder1 D
>D E
sitemapTypeBuildersF Y
)Y Z
{ 	 
_sitemapTypeBuilders  
=! "
sitemapTypeBuilders# 6
;6 7
} 	
public 
async 
Task 
< 
	XDocument #
># $

BuildAsync% /
(/ 0
SitemapType0 ;
sitemap< C
,C D!
SitemapBuilderContextE Z
context[ b
)b c
{ 	
if 
( 
! 
sitemap 
. 
Enabled  
)  !
{ 
return 
null 
; 
} 
foreach 
( 
var 
sitemapTypeBuilder +
in, . 
_sitemapTypeBuilders/ C
)C D
{ 
await 
sitemapTypeBuilder (
.( )

BuildAsync) 3
(3 4
sitemap4 ;
,; <
context= D
)D E
;E F
if 
( 
context 
. 
Response $
!=% '
null( ,
), -
{ 
var 
document  
=! "
new# &
	XDocument' 0
(0 1
context1 8
.8 9
Response9 A
.A B
ResponseElementB Q
)Q R
;R S
return 
new 
	XDocument (
(( )
document) 1
)1 2
;2 3
}   
}!! 
return## 
null## 
;## 
}$$ 	
}%% 
}&& �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Builders\DefaultSitemapModifiedDateProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public 

class .
"DefaultSitemapModifiedDateProvider 3
:4 5(
ISitemapModifiedDateProvider6 R
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
$ %.
"ISitemapSourceModifiedDateProvider

% G
>

G H/
#_sitemapSourceModifiedDateProviders

I l
;

l m
public .
"DefaultSitemapModifiedDateProvider 1
(1 2
IEnumerable2 =
<= >.
"ISitemapSourceModifiedDateProvider> `
>` a/
"sitemapSourceModifiedDateProviders	b �
)
� �
{ 	/
#_sitemapSourceModifiedDateProviders /
=0 1.
"sitemapSourceModifiedDateProviders2 T
;T U
} 	
public 
async 
Task 
< 
DateTime "
?" #
># $$
GetLastModifiedDateAsync% =
(= >
SitemapType> I
sitemapJ Q
)Q R
{ 	
DateTime 
? 
lastModifiedDate &
=' (
null) -
;- .
foreach 
( 
var 
source 
in  "
sitemap# *
.* +
SitemapSources+ 9
)9 :
{ 
foreach 
( 
var !
modifiedDateProviders 2
in3 5/
#_sitemapSourceModifiedDateProviders6 Y
)Y Z
{ 
var 
result 
=  
await! &!
modifiedDateProviders' <
.< =$
GetLastModifiedDateAsync= U
(U V
sourceV \
)\ ]
;] ^
if 
( 
result 
. 
HasValue '
&&( *
(+ ,
lastModifiedDate, <
=== ?
null@ D
||E G
resultH N
.N O
ValueO T
>U V
lastModifiedDateW g
)g h
)h i
{ 
lastModifiedDate (
=) *
result+ 1
;1 2
} 
} 
} 
return   
lastModifiedDate   #
;  # $
}!! 	
}"" 
}## �6
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Builders\SitemapIndexTypeBuilder.cs
	namespace

 	
OrchardCore


 
.

 
Sitemaps

 
.

 
Builders

 '
{ 
public 

class #
SitemapIndexTypeBuilder (
:) *"
SitemapTypeBuilderBase+ A
<A B
SitemapIndexB N
>N O
{ 
private 
static 
readonly 

XNamespace  *
	Namespace+ 4
=5 6
$str7 d
;d e
private 
static 
readonly 

XNamespace  *
SchemaInstance+ 9
=: ;
$str< g
;g h
private 
static 
readonly 

XNamespace  *
SchemaLocation+ 9
=: ;
$str	< �
;
� �
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
private 
readonly (
ISitemapModifiedDateProvider 5(
_sitemapModifiedDateProvider6 R
;R S
private 
readonly 
SitemapsOptions (
_sitemapsOptions) 9
;9 :
public #
SitemapIndexTypeBuilder &
(& '
ISitemapManager 
sitemapManager *
,* +(
ISitemapModifiedDateProvider ('
sitemapModifiedDateProvider) D
,D E
IOptions 
< 
SitemapsOptions $
>$ %
options& -
) 
{ 	
_sitemapManager 
= 
sitemapManager ,
;, -(
_sitemapModifiedDateProvider (
=) *'
sitemapModifiedDateProvider+ F
;F G
_sitemapsOptions 
= 
options &
.& '
Value' ,
;, -
} 	
public!! 
override!! 
async!! 
Task!! "!
BuildSitemapTypeAsync!!# 8
(!!8 9
SitemapIndex!!9 E
sitemap!!F M
,!!M N!
SitemapBuilderContext!!O d
context!!e l
)!!l m
{"" 	
context## 
.## 
Response## 
=## 
new## "
SitemapResponse### 2
{$$ 
ResponseElement%% 
=%%  !
new%%" %
XElement%%& .
(%%. /
	Namespace%%/ 8
+%%9 :
$str%%; I
,%%I J
new&& 

XAttribute&& "
(&&" #

XNamespace&&# -
.&&- .
Xmlns&&. 3
+&&4 5
$str&&6 ;
,&&; <
SchemaInstance&&= K
)&&K L
,&&L M
new'' 

XAttribute'' "
(''" #
SchemaInstance''# 1
+''2 3
$str''4 D
,''D E
SchemaLocation''F T
)''T U
)''U V
}(( 
;(( 
var** 
indexSource** 
=** 
sitemap** %
.**% &
SitemapSources**& 4
.**4 5
FirstOrDefault**5 C
(**C D
)**D E
as**F H
SitemapIndexSource**I [
;**[ \
if,, 
(,, 
indexSource,, 
==,, 
null,, #
),,# $
{-- 
return.. 
;.. 
}// 
var11 
containedSitemaps11 !
=11" #
(11$ %
await11% *
_sitemapManager11+ :
.11: ;
GetSitemapsAsync11; K
(11K L
)11L M
)11M N
.22 
Where22 
(22 
s22 
=>22 
s22 
.22 
Enabled22 %
&&22& (
indexSource22) 4
.224 5
ContainedSitemapIds225 H
.22H I
Any22I L
(22L M
id22M O
=>22P R
id22S U
==22V X
s22Y Z
.22Z [
	SitemapId22[ d
)22d e
)22e f
;22f g
foreach44 
(44 
var44 
containedSitemap44 )
in44* ,
containedSitemaps44- >
)44> ?
{55 
var66 

xmlSitemap66 
=66  
new66! $
XElement66% -
(66- .
	Namespace66. 7
+668 9
$str66: C
)66C D
;66D E
var77 
loc77 
=77 
new77 
XElement77 &
(77& '
	Namespace77' 0
+771 2
$str773 8
)778 9
;779 :
var99 
routeValues99 
=99  !
new99" % 
RouteValueDictionary99& :
(99: ;
_sitemapsOptions99; K
.99K L
GlobalRouteValues99L ]
)99] ^
{:: 
[;; 
_sitemapsOptions;; %
.;;% &
SitemapIdKey;;& 2
];;2 3
=;;4 5
containedSitemap;;6 F
.;;F G
	SitemapId;;G P
}<< 
;<< 
loc>> 
.>> 
Add>> 
(>> 
context>> 
.>>  

HostPrefix>>  *
+>>+ ,
context>>- 4
.>>4 5
	UrlHelper>>5 >
.>>> ?
Action>>? E
(>>E F
routeValues>>F Q
[>>Q R
$str>>R Z
]>>Z [
.>>[ \
ToString>>\ d
(>>d e
)>>e f
,>>f g
routeValues>>h s
)>>s t
)>>t u
;>>u v

xmlSitemap?? 
.?? 
Add?? 
(?? 
loc?? "
)??" #
;??# $
varAA 
lastModDateAA 
=AA  !
awaitAA" '(
_sitemapModifiedDateProviderAA( D
.AAD E$
GetLastModifiedDateAsyncAAE ]
(AA] ^
containedSitemapAA^ n
)AAn o
;AAo p
ifBB 
(BB 
lastModDateBB 
.BB  
HasValueBB  (
)BB( )
{CC 
varDD 
lastModDD 
=DD  !
newDD" %
XElementDD& .
(DD. /
	NamespaceDD/ 8
+DD9 :
$strDD; D
)DDD E
;DDE F
lastModEE 
.EE 
AddEE 
(EE  
lastModDateEE  +
.EE+ ,
GetValueOrDefaultEE, =
(EE= >
)EE> ?
.EE? @
ToStringEE@ H
(EEH I
$strEEI a
)EEa b
)EEb c
;EEc d

xmlSitemapFF 
.FF 
AddFF "
(FF" #
lastModFF# *
)FF* +
;FF+ ,
}GG 
contextII 
.II 
ResponseII  
.II  !
ResponseElementII! 0
.II0 1
AddII1 4
(II4 5

xmlSitemapII5 ?
)II? @
;II@ A
}JJ 
}KK 	
}LL 
}MM �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Builders\SitemapTypeBuilder.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public 

class 
SitemapTypeBuilder #
:$ %"
SitemapTypeBuilderBase& <
<< =
Sitemap= D
>D E
{		 
private

 
static

 
readonly

 

XNamespace

  *
	Namespace

+ 4
=

5 6
$str

7 d
;

d e
private 
readonly 
IEnumerable $
<$ %!
ISitemapSourceBuilder% :
>: ;"
_sitemapSourceBuilders< R
;R S
public 
SitemapTypeBuilder !
(! "
IEnumerable" -
<- .!
ISitemapSourceBuilder. C
>C D!
sitemapSourceBuildersE Z
)Z [
{ 	"
_sitemapSourceBuilders "
=# $!
sitemapSourceBuilders% :
;: ;
} 	
public 
override 
async 
Task "!
BuildSitemapTypeAsync# 8
(8 9
Sitemap9 @
sitemapA H
,H I!
SitemapBuilderContextJ _
context` g
)g h
{ 	
context 
. 
Response 
= 
new "
SitemapResponse# 2
{ 
ResponseElement 
=  !
new" %
XElement& .
(. /
	Namespace/ 8
+9 :
$str; C
)C D
} 
; 
foreach 
( 
var 
source 
in  "
sitemap# *
.* +
SitemapSources+ 9
)9 :
{ 
foreach 
( 
var 
sourceBuilder *
in+ -"
_sitemapSourceBuilders. D
)D E
{ 
await 
sourceBuilder '
.' (

BuildAsync( 2
(2 3
source3 9
,9 :
context; B
)B C
;C D
} 
}   
}!! 	
}"" 
}## �h
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Cache\DefaultSitemapCacheProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Cache $
{ 
public 

class '
DefaultSitemapCacheProvider ,
:- .!
ISitemapCacheProvider/ D
{ 
private 
const 
int  
StreamCopyBufferSize .
=/ 0
$num1 6
;6 7
public 
const 
string 
SitemapCachePath ,
=- .
$str/ 9
;9 :
private 
readonly  
PhysicalFileProvider -
_fileProvider. ;
;; <
private 
readonly 
ILogger  
_logger! (
;( )
public '
DefaultSitemapCacheProvider *
(* +
IWebHostEnvironment 
webHostEnvironment  2
,2 3
ShellSettings 
shellSettings '
,' (
ILogger 
< '
DefaultSitemapCacheProvider /
>/ 0
logger1 7
) 
{ 	
var 
path 
= 
GetSitemapCachePath *
(* +
webHostEnvironment+ =
,= >
SitemapCachePath? O
,O P
shellSettingsQ ^
)^ _
;_ `
if   
(   
!   
	Directory   
.   
Exists   !
(  ! "
path  " &
)  & '
)  ' (
{!! 
	Directory"" 
."" 
CreateDirectory"" )
("") *
path""* .
)"". /
;""/ 0
}## 
_fileProvider%% 
=%% 
new%%  
PhysicalFileProvider%%  4
(%%4 5
path%%5 9
)%%9 :
;%%: ;
_logger'' 
='' 
logger'' 
;'' 
}(( 	
public** 
Task** 
<** %
ISitemapCacheFileResolver** -
>**- .!
GetCachedSitemapAsync**/ D
(**D E
string**E K
cacheFileName**L Y
)**Y Z
{++ 	
var,, 
fileInfo,, 
=,, 
_fileProvider,, (
.,,( )
GetFileInfo,,) 4
(,,4 5
cacheFileName,,5 B
),,B C
;,,C D
if-- 
(-- 
fileInfo-- 
.-- 
Exists-- 
)--  
{.. 
return// 
Task// 
.// 

FromResult// &
<//& '%
ISitemapCacheFileResolver//' @
>//@ A
(//A B
new//B E,
 PhysicalSitemapCacheFileResolver//F f
(//f g
fileInfo//g o
)//o p
)//p q
;//q r
}00 
return22 
Task22 
.22 

FromResult22 "
<22" #%
ISitemapCacheFileResolver22# <
>22< =
(22= >
null22> B
)22B C
;22C D
}33 	
public55 
async55 
Task55  
SetSitemapCacheAsync55 .
(55. /
Stream55/ 5
stream556 <
,55< =
string55> D
cacheFileName55E R
,55R S
CancellationToken55T e
cancellationToken55f w
)55w x
{66 	
var77 
	cachePath77 
=77 
Path77  
.77  !
Combine77! (
(77( )
_fileProvider77) 6
.776 7
Root777 ;
,77; <
cacheFileName77= J
)77J K
;77K L
using99 
(99 
var99 

fileStream99 !
=99" #
File99$ (
.99( )
Create99) /
(99/ 0
	cachePath990 9
)999 :
)99: ;
{:: 
stream;; 
.;; 
Position;; 
=;;  !
$num;;" #
;;;# $
await<< 
stream<< 
.<< 
CopyToAsync<< (
(<<( )

fileStream<<) 3
,<<3 4 
StreamCopyBufferSize<<5 I
,<<I J
cancellationToken<<K \
)<<\ ]
;<<] ^
}== 
}>> 	
public@@ 
Task@@ "
CleanSitemapCacheAsync@@ *
(@@* +
IEnumerable@@+ 6
<@@6 7
string@@7 =
>@@= >
validCacheFileNames@@? R
)@@R S
{AA 	
varBB 
foldersBB 
=BB 
_fileProviderBB '
.BB' ( 
GetDirectoryContentsBB( <
(BB< =
StringBB= C
.BBC D
EmptyBBD I
)BBI J
;BBJ K
foreachCC 
(CC 
varCC 
fileInfoCC !
inCC" $
foldersCC% ,
)CC, -
{DD 
ifEE 
(EE 
fileInfoEE 
.EE 
IsDirectoryEE (
)EE( )
{FF 
continueHH 
;HH 
}II 
elseJJ 
{KK 
ifMM 
(MM 
validCacheFileNamesMM +
.MM+ ,
ContainsMM, 4
(MM4 5
fileInfoMM5 =
.MM= >
NameMM> B
,MMB C
StringComparerMMD R
.MMR S
OrdinalIgnoreCaseMMS d
)MMd e
)MMe f
{NN 
continueOO  
;OO  !
}PP 
tryRR 
{SS 
FileTT 
.TT 
DeleteTT #
(TT# $
fileInfoTT$ ,
.TT, -
PhysicalPathTT- 9
)TT9 :
;TT: ;
}UU 
catchVV 
(VV 
IOExceptionVV &
exVV' )
)VV) *
{WW 
_loggerXX 
.XX  
LogErrorXX  (
(XX( )
exXX) +
,XX+ ,
$strXX- O
,XXO P
fileInfoXXQ Y
.XXY Z
PhysicalPathXXZ f
)XXf g
;XXg h
}YY 
}ZZ 
}[[ 
return]] 
Task]] 
.]] 
CompletedTask]] %
;]]% &
}^^ 	
public`` 
Task`` "
ClearSitemapCacheAsync`` *
(``* +
string``+ 1
cacheFileName``2 ?
)``? @
{aa 	
varbb 
fileInfobb 
=bb 
_fileProviderbb (
.bb( )
GetFileInfobb) 4
(bb4 5
cacheFileNamebb5 B
)bbB C
;bbC D
ifcc 
(cc 
fileInfocc 
.cc 
Existscc 
)cc  
{dd 
tryee 
{ff 
Filegg 
.gg 
Deletegg 
(gg  
fileInfogg  (
.gg( )
PhysicalPathgg) 5
)gg5 6
;gg6 7
}hh 
catchii 
(ii 
IOExceptionii "
exii# %
)ii% &
{jj 
_loggerkk 
.kk 
LogErrorkk $
(kk$ %
exkk% '
,kk' (
$strkk) K
,kkK L
fileInfokkM U
.kkU V
PhysicalPathkkV b
)kkb c
;kkc d
}ll 
}mm 
returnoo 
Taskoo 
.oo 
CompletedTaskoo %
;oo% &
}pp 	
publicrr 
Taskrr 
<rr 
boolrr 
>rr 
PurgeAllAsyncrr '
(rr' (
)rr( )
{ss 	
vartt 
	hasErrorstt 
=tt 
falsett !
;tt! "
varuu 
foldersuu 
=uu 
_fileProvideruu '
.uu' ( 
GetDirectoryContentsuu( <
(uu< =
Stringuu= C
.uuC D
EmptyuuD I
)uuI J
;uuJ K
foreachvv 
(vv 
varvv 
fileInfovv !
invv" $
foldersvv% ,
)vv, -
{ww 
ifxx 
(xx 
fileInfoxx 
.xx 
IsDirectoryxx (
)xx( )
{yy 
continue{{ 
;{{ 
}|| 
else}} 
{~~ 
try 
{
�� 
File
�� 
.
�� 
Delete
�� #
(
��# $
fileInfo
��$ ,
.
��, -
PhysicalPath
��- 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
IOException
�� &
ex
��' )
)
��) *
{
�� 
_logger
�� 
.
��  
LogError
��  (
(
��( )
ex
��) +
,
��+ ,
$str
��- O
,
��O P
fileInfo
��Q Y
.
��Y Z
PhysicalPath
��Z f
)
��f g
;
��g h
	hasErrors
�� !
=
��" #
true
��$ (
;
��( )
}
�� 
}
�� 
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
	hasErrors
��# ,
)
��, -
;
��- .
}
�� 	
public
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 

PurgeAsync
�� $
(
��$ %
string
��% +
cacheFileName
��, 9
)
��9 :
{
�� 	
var
�� 
failed
�� 
=
�� 
false
�� 
;
�� 
var
�� 
fileInfo
�� 
=
�� 
_fileProvider
�� (
.
��( )
GetFileInfo
��) 4
(
��4 5
cacheFileName
��5 B
)
��B C
;
��C D
if
�� 
(
�� 
fileInfo
�� 
.
�� 
Exists
�� 
)
��  
{
�� 
try
�� 
{
�� 
File
�� 
.
�� 
Delete
�� 
(
��  
fileInfo
��  (
.
��( )
PhysicalPath
��) 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
IOException
�� "
ex
��# %
)
��% &
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
ex
��% '
,
��' (
$str
��) K
,
��K L
fileInfo
��M U
.
��U V
PhysicalPath
��V b
)
��b c
;
��c d
failed
�� 
=
�� 
true
�� !
;
��! "
}
�� 
}
�� 
else
�� 
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$str
��! C
,
��C D
cacheFileName
��E R
)
��R S
;
��S T
failed
�� 
=
�� 
true
�� 
;
�� 
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
failed
��# )
)
��) *
;
��* +
}
�� 	
public
�� 
Task
�� 
<
�� 
IEnumerable
�� 
<
��  
string
��  &
>
��& '
>
��' (
	ListAsync
��) 2
(
��2 3
)
��3 4
{
�� 	
var
�� 
results
�� 
=
�� 
new
�� 
List
�� "
<
��" #
string
��# )
>
��) *
(
��* +
)
��+ ,
;
��, -
var
�� 
folders
�� 
=
�� 
_fileProvider
�� '
.
��' ("
GetDirectoryContents
��( <
(
��< =
String
��= C
.
��C D
Empty
��D I
)
��I J
;
��J K
foreach
�� 
(
�� 
var
�� 
fileInfo
�� !
in
��" $
folders
��% ,
)
��, -
{
�� 
if
�� 
(
�� 
fileInfo
�� 
.
�� 
IsDirectory
�� (
)
��( )
{
�� 
continue
�� 
;
�� 
}
�� 
else
�� 
{
�� 
results
�� 
.
�� 
Add
�� 
(
��  
fileInfo
��  (
.
��( )
Name
��) -
)
��- .
;
��. /
}
�� 
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
<
��" #
IEnumerable
��# .
<
��. /
string
��/ 5
>
��5 6
>
��6 7
(
��7 8
results
��8 ?
)
��? @
;
��@ A
}
�� 	
private
�� 
string
�� !
GetSitemapCachePath
�� *
(
��* +!
IWebHostEnvironment
��+ > 
webHostEnvironment
��? Q
,
��Q R
string
��S Y
	cachePath
��Z c
,
��c d
ShellSettings
��e r
shellSettings��s �
)��� �
{
�� 	
return
�� 
PathExtensions
�� !
.
��! "
Combine
��" )
(
��) * 
webHostEnvironment
��* <
.
��< =
WebRootPath
��= H
,
��H I
	cachePath
��J S
,
��S T
shellSettings
��U b
.
��b c
Name
��c g
)
��g h
;
��h i
}
�� 	
}
�� 
}�� �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Cache\PhysicalSitemapCacheFileResolver.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Cache $
{ 
public 

class ,
 PhysicalSitemapCacheFileResolver 1
:2 3%
ISitemapCacheFileResolver4 M
{ 
private		 
readonly		 
	IFileInfo		 "
	_fileInfo		# ,
;		, -
public ,
 PhysicalSitemapCacheFileResolver /
(/ 0
	IFileInfo0 9
fileInfo: B
)B C
{ 	
	_fileInfo 
= 
fileInfo  
;  !
} 	
public 
Task 
< 
Stream 
> 
OpenReadStreamAsync /
(/ 0
)0 1
{ 	
return 
Task 
. 

FromResult "
(" #
	_fileInfo# ,
., -
CreateReadStream- =
(= >
)> ?
)? @
;@ A
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Cache\SitemapCacheBackgroundTask.cs
	namespace		 	
OrchardCore		
 
.		 
Sitemaps		 
.		 
Cache		 $
{

 
[ 
BackgroundTask 
( 
Schedule 
= 
$str ,
,, -
Description. 9
=: ;
$str< Z
)Z [
][ \
public 

class &
SitemapCacheBackgroundTask +
:, -
IBackgroundTask. =
{ 
public 
async 
Task 
DoWorkAsync %
(% &
IServiceProvider& 6
serviceProvider7 F
,F G
CancellationTokenH Y
cancellationTokenZ k
)k l
{ 	
var 
sitemapManager 
=  
serviceProvider! 0
.0 1
GetRequiredService1 C
<C D
ISitemapManagerD S
>S T
(T U
)U V
;V W
var  
sitemapCacheProvider $
=% &
serviceProvider' 6
.6 7
GetRequiredService7 I
<I J!
ISitemapCacheProviderJ _
>_ `
(` a
)a b
;b c
var 
sitemaps 
= 
await  
sitemapManager! /
./ 0
GetSitemapsAsync0 @
(@ A
)A B
;B C
await  
sitemapCacheProvider &
.& '"
CleanSitemapCacheAsync' =
(= >
sitemaps> F
.F G
SelectG M
(M N
sN O
=>P R
sS T
.T U
CacheFileNameU b
)b c
)c d
;d e
} 	
} 
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Controllers *
{ 
[ 
Admin 

]
 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly !
ISitemapHelperService .
_sitemapService/ >
;> ?
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IDisplayManager (
<( )
SitemapSource) 6
>6 7
_displayManager8 G
;G H
private 
readonly 
IEnumerable $
<$ %!
ISitemapSourceFactory% :
>: ;
_sourceFactories< L
;L M
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
private   
readonly   
ISitemapIdGenerator   ,
_sitemapIdGenerator  - @
;  @ A
private!! 
readonly!! 
ISiteService!! %
_siteService!!& 2
;!!2 3
private"" 
readonly""  
IUpdateModelAccessor"" - 
_updateModelAccessor"". B
;""B C
private## 
readonly## 
	INotifier## "
	_notifier### ,
;##, -
private$$ 
readonly$$ 
IStringLocalizer$$ )
S$$* +
;$$+ ,
private%% 
readonly%% 
IHtmlLocalizer%% '
H%%( )
;%%) *
private&& 
readonly&& 
dynamic&&  
New&&! $
;&&$ %
public(( 
AdminController(( 
((( !
ISitemapHelperService)) !
sitemapService))" 0
,))0 1!
IAuthorizationService** ! 
authorizationService**" 6
,**6 7
IDisplayManager++ 
<++ 
SitemapSource++ )
>++) *
displayManager+++ 9
,++9 :
IEnumerable,, 
<,, !
ISitemapSourceFactory,, -
>,,- .
sourceFactories,,/ >
,,,> ?
ISitemapManager-- 
sitemapManager-- *
,--* +
ISitemapIdGenerator.. 
sitemapIdGenerator..  2
,..2 3
ISiteService// 
siteService// $
,//$ % 
IUpdateModelAccessor00  
updateModelAccessor00! 4
,004 5
	INotifier11 
notifier11 
,11 
IShapeFactory22 
shapeFactory22 &
,22& '
IStringLocalizer33 
<33 
AdminController33 ,
>33, -
stringLocalizer33. =
,33= >
IHtmlLocalizer44 
<44 
AdminController44 *
>44* +
htmlLocalizer44, 9
)449 :
{55 	
_sitemapService66 
=66 
sitemapService66 ,
;66, -
_displayManager77 
=77 
displayManager77 ,
;77, -
_sourceFactories88 
=88 
sourceFactories88 .
;88. /!
_authorizationService99 !
=99" # 
authorizationService99$ 8
;998 9
_sitemapManager:: 
=:: 
sitemapManager:: ,
;::, -
_sitemapIdGenerator;; 
=;;  !
sitemapIdGenerator;;" 4
;;;4 5
_siteService<< 
=<< 
siteService<< &
;<<& ' 
_updateModelAccessor==  
===! "
updateModelAccessor==# 6
;==6 7
	_notifier>> 
=>> 
notifier>>  
;>>  !
S?? 
=?? 
stringLocalizer?? 
;??  
H@@ 
=@@ 
htmlLocalizer@@ 
;@@ 
NewAA 
=AA 
shapeFactoryAA 
;AA 
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (
ListDD) -
(DD- .
ContentOptionsDD. <
optionsDD= D
,DDD E
PagerParametersDDF U
pagerParametersDDV e
)DDe f
{EE 	
ifFF 
(FF 
!FF 
awaitFF !
_authorizationServiceFF ,
.FF, -
AuthorizeAsyncFF- ;
(FF; <
UserFF< @
,FF@ A
PermissionsFFB M
.FFM N
ManageSitemapsFFN \
)FF\ ]
)FF] ^
{GG 
returnHH 
ForbidHH 
(HH 
)HH 
;HH  
}II 
varKK 
siteSettingsKK 
=KK 
awaitKK $
_siteServiceKK% 1
.KK1 2 
GetSiteSettingsAsyncKK2 F
(KKF G
)KKG H
;KKH I
varLL 
pagerLL 
=LL 
newLL 
PagerLL !
(LL! "
pagerParametersLL" 1
,LL1 2
siteSettingsLL3 ?
.LL? @
PageSizeLL@ H
)LLH I
;LLI J
varNN 
sitemapsNN 
=NN 
(NN 
awaitNN !
_sitemapManagerNN" 1
.NN1 2
GetSitemapsAsyncNN2 B
(NNB C
)NNC D
)NND E
.OO 
OfTypeOO 
<OO 
SitemapOO 
>OO  
(OO  !
)OO! "
;OO" #
ifQQ 
(QQ 
!QQ 
stringQQ 
.QQ 
IsNullOrWhiteSpaceQQ *
(QQ* +
optionsQQ+ 2
.QQ2 3
SearchQQ3 9
)QQ9 :
)QQ: ;
{RR 
sitemapsSS 
=SS 
sitemapsSS #
.SS# $
WhereSS$ )
(SS) *
xSS* +
=>SS, .
xSS/ 0
.SS0 1
NameSS1 5
.SS5 6
ContainsSS6 >
(SS> ?
optionsSS? F
.SSF G
SearchSSG M
,SSM N
StringComparisonSSO _
.SS_ `
OrdinalIgnoreCaseSS` q
)SSq r
)SSr s
;SSs t
}TT 
varVV 
countVV 
=VV 
sitemapsVV  
.VV  !
CountVV! &
(VV& '
)VV' (
;VV( )
varXX 
resultsXX 
=XX 
sitemapsXX "
.YY 
SkipYY 
(YY 
pagerYY 
.YY 
GetStartIndexYY )
(YY) *
)YY* +
)YY+ ,
.ZZ 
TakeZZ 
(ZZ 
pagerZZ 
.ZZ 
PageSizeZZ $
)ZZ$ %
.[[ 
ToList[[ 
([[ 
)[[ 
;[[ 
var^^ 
	routeData^^ 
=^^ 
new^^ 
	RouteData^^  )
(^^) *
)^^* +
;^^+ ,
	routeData__ 
.__ 
Values__ 
.__ 
Add__  
(__  !
$str__! 1
,__1 2
options__3 :
.__: ;
Search__; A
)__A B
;__B C
varaa 

pagerShapeaa 
=aa 
(aa 
awaitaa #
Newaa$ '
.aa' (
Pageraa( -
(aa- .
pageraa. 3
)aa3 4
)aa4 5
.aa5 6
TotalItemCountaa6 D
(aaD E
countaaE J
)aaJ K
.aaK L
	RouteDataaaL U
(aaU V
	routeDataaaV _
)aa_ `
;aa` a
varcc 
modelcc 
=cc 
newcc  
ListSitemapViewModelcc 0
{dd 
Sitemapsee 
=ee 
resultsee "
.ee" #
Selectee# )
(ee) *
smee* ,
=>ee- /
newee0 3
SitemapListEntryee4 D
{eeE F
	SitemapIdeeG P
=eeQ R
smeeS U
.eeU V
	SitemapIdeeV _
,ee_ `
Nameeea e
=eef g
smeeh j
.eej k
Nameeek o
,eeo p
Enabledeeq x
=eey z
smee{ }
.ee} ~
Enabled	ee~ �
}
ee� �
)
ee� �
.
ee� �
ToList
ee� �
(
ee� �
)
ee� �
,
ee� �
Optionsff 
=ff 
optionsff !
,ff! "
Pagergg 
=gg 

pagerShapegg "
}hh 
;hh 
modeljj 
.jj 
Optionsjj 
.jj 
ContentsBulkActionjj ,
=jj- .
newjj/ 2
Listjj3 7
<jj7 8
SelectListItemjj8 F
>jjF G
(jjG H
)jjH I
{jjJ K
newkk 
SelectListItemkk "
(kk" #
)kk# $
{kk% &
Textkk' +
=kk, -
Skk. /
[kk/ 0
$strkk0 8
]kk8 9
,kk9 :
Valuekk; @
=kkA B
nameofkkC I
(kkI J
ContentsBulkActionkkJ \
.kk\ ]
Removekk] c
)kkc d
}kke f
}ll 
;ll 
returnnn 
Viewnn 
(nn 
modelnn 
)nn 
;nn 
}oo 	
[qq 	
HttpPostqq	 
,qq 

ActionNameqq 
(qq 
$strqq $
)qq$ %
]qq% &
[rr 	
FormValueRequiredrr	 
(rr 
$strrr *
)rr* +
]rr+ ,
publicss 
ActionResultss 
ListFilterPOSTss *
(ss* + 
ListSitemapViewModelss+ ?
modelss@ E
)ssE F
{tt 	
returnuu 
RedirectToActionuu #
(uu# $
$struu$ *
,uu* +
newuu, / 
RouteValueDictionaryuu0 D
{uuE F
{vv 
$strvv "
,vv" #
modelvv$ )
.vv) *
Optionsvv* 1
.vv1 2
Searchvv2 8
}vv9 :
}ww 
)ww 
;ww 
}xx 	
publiczz 
asynczz 
Taskzz 
<zz 
IActionResultzz '
>zz' (
Displayzz) 0
(zz0 1
stringzz1 7
	sitemapIdzz8 A
)zzA B
{{{ 	
if|| 
(|| 
!|| 
await|| !
_authorizationService|| ,
.||, -
AuthorizeAsync||- ;
(||; <
User||< @
,||@ A
Permissions||B M
.||M N
ManageSitemaps||N \
)||\ ]
)||] ^
{}} 
return~~ 
Forbid~~ 
(~~ 
)~~ 
;~~  
} 
var
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
GetSitemapAsync
��0 ?
(
��? @
	sitemapId
��@ I
)
��I J
;
��J K
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
var
�� 
items
�� 
=
�� 
new
�� 
List
��  
<
��  !
dynamic
��! (
>
��( )
(
��) *
)
��* +
;
��+ ,
foreach
�� 
(
�� 
var
�� 
source
�� 
in
��  "
sitemap
��# *
.
��* +
SitemapSources
��+ 9
)
��9 :
{
�� 
dynamic
�� 
item
�� 
=
�� 
await
�� $
_displayManager
��% 4
.
��4 5
BuildDisplayAsync
��5 F
(
��F G
source
��G M
,
��M N"
_updateModelAccessor
��O c
.
��c d
ModelUpdater
��d p
,
��p q
$str��r �
)��� �
;��� �
item
�� 
.
�� 
	SitemapId
�� 
=
��  
sitemap
��! (
.
��( )
	SitemapId
��) 2
;
��2 3
item
�� 
.
�� 
SitemapSource
�� "
=
��# $
source
��% +
;
��+ ,
items
�� 
.
�� 
Add
�� 
(
�� 
item
�� 
)
�� 
;
��  
}
�� 
var
�� 

thumbnails
�� 
=
�� 
new
��  

Dictionary
��! +
<
��+ ,
string
��, 2
,
��2 3
dynamic
��4 ;
>
��; <
(
��< =
)
��= >
;
��> ?
foreach
�� 
(
�� 
var
�� 
factory
��  
in
��! #
_sourceFactories
��$ 4
)
��4 5
{
�� 
var
�� 
source
�� 
=
�� 
factory
�� $
.
��$ %
Create
��% +
(
��+ ,
)
��, -
;
��- .
dynamic
�� 
	thumbnail
�� !
=
��" #
await
��$ )
_displayManager
��* 9
.
��9 :
BuildDisplayAsync
��: K
(
��K L
source
��L R
,
��R S"
_updateModelAccessor
��T h
.
��h i
ModelUpdater
��i u
,
��u v
$str��w �
)��� �
;��� �
	thumbnail
�� 
.
�� 
SitemapSource
�� '
=
��( )
source
��* 0
;
��0 1
	thumbnail
�� 
.
�� 
SitemapSourceType
�� +
=
��, -
factory
��. 5
.
��5 6
Name
��6 :
;
��: ;
	thumbnail
�� 
.
�� 
Sitemap
�� !
=
��" #
sitemap
��$ +
;
��+ ,

thumbnails
�� 
.
�� 
Add
�� 
(
�� 
factory
�� &
.
��& '
Name
��' +
,
��+ ,
	thumbnail
��- 6
)
��6 7
;
��7 8
}
�� 
var
�� 
model
�� 
=
�� 
new
�� %
DisplaySitemapViewModel
�� 3
{
�� 
Sitemap
�� 
=
�� 
sitemap
�� !
,
��! "
Items
�� 
=
�� 
items
�� 
,
�� 

Thumbnails
�� 
=
�� 

thumbnails
�� '
,
��' (
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
��' (
Create
��) /
(
��/ 0
)
��0 1
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
model
�� 
=
�� 
new
�� $
CreateSitemapViewModel
�� 2
(
��2 3
)
��3 4
;
��4 5
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
��' (
Create
��) /
(
��/ 0$
CreateSitemapViewModel
��0 F
model
��G L
)
��L M
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
IsNullOrEmpty
�� (
(
��( )
model
��) .
.
��. /
Path
��/ 3
)
��3 4
)
��4 5
{
�� 
model
�� 
.
�� 
Path
�� 
=
��  
_sitemapService
��! 0
.
��0 1
GetSitemapSlug
��1 ?
(
��? @
model
��@ E
.
��E F
Name
��F J
)
��J K
;
��K L
}
�� 
await
�� 
_sitemapService
�� %
.
��% &
ValidatePathAsync
��& 7
(
��7 8
model
��8 =
.
��= >
Path
��> B
,
��B C"
_updateModelAccessor
��D X
.
��X Y
ModelUpdater
��Y e
)
��e f
;
��f g
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
�� 
sitemap
�� 
=
�� 
new
�� !
Sitemap
��" )
{
�� 
	SitemapId
�� 
=
�� !
_sitemapIdGenerator
��  3
.
��3 4
GenerateUniqueId
��4 D
(
��D E
)
��E F
,
��F G
Name
�� 
=
�� 
model
��  
.
��  !
Name
��! %
,
��% &
Path
�� 
=
�� 
model
��  
.
��  !
Path
��! %
,
��% &
Enabled
�� 
=
�� 
model
�� #
.
��# $
Enabled
��$ +
}
�� 
;
�� 
await
�� 
_sitemapManager
�� %
.
��% & 
UpdateSitemapAsync
��& 8
(
��8 9
sitemap
��9 @
)
��@ A
;
��A B
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
List
��/ 3
)
��3 4
)
��4 5
;
��5 6
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
��. 4
	sitemapId
��5 >
)
��> ?
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
(
�� 
await
��  
_sitemapManager
��! 0
.
��0 1
GetSitemapAsync
��1 @
(
��@ A
	sitemapId
��A J
)
��J K
)
��K L
as
��M O
Sitemap
��P W
;
��W X
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
var
�� 
model
�� 
=
�� 
new
�� "
EditSitemapViewModel
�� 0
{
�� 
	SitemapId
�� 
=
�� 
sitemap
�� #
.
��# $
	SitemapId
��$ -
,
��- .
Name
�� 
=
�� 
sitemap
�� 
.
�� 
Name
�� #
,
��# $
Enabled
�� 
=
�� 
sitemap
�� !
.
��! "
Enabled
��" )
,
��) *
Path
�� 
=
�� 
sitemap
�� 
.
�� 
Path
�� #
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
��- ."
EditSitemapViewModel
��. B
model
��C H
)
��H I
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
(
�� 
await
��  
_sitemapManager
��! 0
.
��0 1
LoadSitemapAsync
��1 A
(
��A B
model
��B G
.
��G H
	SitemapId
��H Q
)
��Q R
)
��R S
as
��T V
Sitemap
��W ^
;
��^ _
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
model
��) .
.
��. /
Path
��/ 3
)
��3 4
)
��4 5
{
�� 
model
�� 
.
�� 
Path
�� 
=
��  
_sitemapService
��! 0
.
��0 1
GetSitemapSlug
��1 ?
(
��? @
model
��@ E
.
��E F
Name
��F J
)
��J K
;
��K L
}
�� 
await
�� 
_sitemapService
�� %
.
��% &
ValidatePathAsync
��& 7
(
��7 8
model
��8 =
.
��= >
Path
��> B
,
��B C"
_updateModelAccessor
��D X
.
��X Y
ModelUpdater
��Y e
,
��e f
model
��g l
.
��l m
	SitemapId
��m v
)
��v w
;
��w x
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
sitemap
�� 
.
�� 
Name
�� 
=
�� 
model
�� $
.
��$ %
Name
��% )
;
��) *
sitemap
�� 
.
�� 
Enabled
�� 
=
��  !
model
��" '
.
��' (
Enabled
��( /
;
��/ 0
sitemap
�� 
.
�� 
Path
�� 
=
�� 
model
�� $
.
��$ %
Path
��% )
;
��) *
await
�� 
_sitemapManager
�� %
.
��% & 
UpdateSitemapAsync
��& 8
(
��8 9
sitemap
��9 @
)
��@ A
;
��A B
	_notifier
�� 
.
�� 
Success
�� !
(
��! "
H
��" #
[
��# $
$str
��$ C
]
��C D
)
��D E
;
��E F
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
List
��/ 3
)
��3 4
)
��4 5
;
��5 6
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
��0 6
	sitemapId
��7 @
)
��@ A
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
LoadSitemapAsync
��0 @
(
��@ A
	sitemapId
��A J
)
��J K
;
��K L
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
_sitemapManager
�� !
.
��! " 
DeleteSitemapAsync
��" 4
(
��4 5
	sitemapId
��5 >
)
��> ?
;
��? @
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
��  ?
]
��? @
)
��@ A
;
��A B
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
List
��+ /
)
��/ 0
)
��0 1
;
��1 2
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
Toggle
��) /
(
��/ 0
string
��0 6
	sitemapId
��7 @
)
��@ A
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
LoadSitemapAsync
��0 @
(
��@ A
	sitemapId
��A J
)
��J K
;
��K L
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
sitemap
�� 
.
�� 
Enabled
�� 
=
�� 
!
�� 
sitemap
�� &
.
��& '
Enabled
��' .
;
��. /
await
�� 
_sitemapManager
�� !
.
��! " 
UpdateSitemapAsync
��" 4
(
��4 5
sitemap
��5 <
)
��< =
;
��= >
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
��  ?
]
��? @
)
��@ A
;
��A B
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
List
��+ /
)
��/ 0
)
��0 1
;
��1 2
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
�� $
)
��$ %
]
��% &
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
��& '
ListPost
��( 0
(
��0 1

ViewModels
��1 ;
.
��; <
ContentOptions
��< J
options
��K R
,
��R S
IEnumerable
��T _
<
��_ `
string
��` f
>
��f g
itemIds
��h o
)
��o p
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemapsList
��  
=
��! "
await
��# (
_sitemapManager
��) 8
.
��8 9
LoadSitemapsAsync
��9 J
(
��J K
)
��K L
;
��L M
var
�� !
checkedContentItems
�� '
=
��( )
sitemapsList
��* 6
.
��6 7
Where
��7 <
(
��< =
x
��= >
=>
��? A
itemIds
��B I
.
��I J
Contains
��J R
(
��R S
x
��S T
.
��T U
	SitemapId
��U ^
)
��^ _
)
��_ `
;
��` a
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
�� !
_sitemapManager
��" 1
.
��1 2 
DeleteSitemapAsync
��2 D
(
��D E
item
��E I
.
��I J
	SitemapId
��J S
)
��S T
;
��T U
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
��, L
]
��L M
)
��M N
;
��N O
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
��$ *
)
��* +
;
��+ ,
}
�� 	
}
�� 
}�� �.
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Controllers\SitemapCacheController.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Controllers *
{ 
[ 
Admin 

]
 
public 

class "
SitemapCacheController '
:( )

Controller* 4
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly !
ISitemapCacheProvider .!
_sitemapCacheProvider/ D
;D E
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public "
SitemapCacheController %
(% &!
IAuthorizationService ! 
authorizationService" 6
,6 7!
ISitemapCacheProvider ! 
sitemapCacheProvider" 6
,6 7
	INotifier 
notifier 
, 
IHtmlLocalizer 
< "
SitemapCacheController 1
>1 2
htmlLocalizer3 @
) 
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9!
_sitemapCacheProvider !
=" # 
sitemapCacheProvider$ 8
;8 9
	_notifier 
= 
notifier  
;  !
H 
= 
htmlLocalizer 
; 
}   	
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
List"") -
(""- .
)"". /
{## 	
if$$ 
($$ 
!$$ 
await$$ !
_authorizationService$$ ,
.$$, -
AuthorizeAsync$$- ;
($$; <
User$$< @
,$$@ A
Permissions$$B M
.$$M N
ManageSitemaps$$N \
)$$\ ]
)$$] ^
{%% 
return&& 
Forbid&& 
(&& 
)&& 
;&&  
}'' 
var)) 
model)) 
=)) 
new)) %
ListSitemapCacheViewModel)) 5
{** 
CachedFileNames++ 
=++  !
(++" #
await++# (!
_sitemapCacheProvider++) >
.++> ?
	ListAsync++? H
(++H I
)++I J
)++J K
.++K L
ToArray++L S
(++S T
)++T U
},, 
;,, 
return.. 
View.. 
(.. 
model.. 
).. 
;.. 
}// 	
[11 	
HttpPost11	 
]11 
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
PurgeAll22) 1
(221 2
)222 3
{33 	
if44 
(44 
!44 
await44 !
_authorizationService44 ,
.44, -
AuthorizeAsync44- ;
(44; <
User44< @
,44@ A
Permissions44B M
.44M N
ManageSitemaps44N \
)44\ ]
)44] ^
{55 
return66 
Forbid66 
(66 
)66 
;66  
}77 
var99 
	hasErrors99 
=99 
await99 !!
_sitemapCacheProvider99" 7
.997 8
PurgeAllAsync998 E
(99E F
)99F G
;99G H
if:: 
(:: 
	hasErrors:: 
):: 
{;; 
	_notifier<< 
.<< 
Error<< 
(<<  
H<<  !
[<<! "
$str<<" F
]<<F G
)<<G H
;<<H I
}== 
else>> 
{?? 
	_notifier@@ 
.@@ 
Information@@ %
(@@% &
H@@& '
[@@' (
$str@@( ?
]@@? @
)@@@ A
;@@A B
}AA 
returnCC 
RedirectToActionCC #
(CC# $
nameofCC$ *
(CC* +
ListCC+ /
)CC/ 0
)CC0 1
;CC1 2
}DD 	
[FF 	
HttpPostFF	 
]FF 
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
PurgeGG) .
(GG. /
stringGG/ 5
cacheFileNameGG6 C
)GGC D
{HH 	
ifII 
(II 
!II 
awaitII !
_authorizationServiceII ,
.II, -
AuthorizeAsyncII- ;
(II; <
UserII< @
,II@ A
PermissionsIIB M
.IIM N
ManageSitemapsIIN \
)II\ ]
)II] ^
{JJ 
returnKK 
ForbidKK 
(KK 
)KK 
;KK  
}LL 
varNN 
failedNN 
=NN 
awaitNN !
_sitemapCacheProviderNN 4
.NN4 5

PurgeAsyncNN5 ?
(NN? @
cacheFileNameNN@ M
)NNM N
;NNN O
ifOO 
(OO 
failedOO 
)OO 
{PP 
	_notifierQQ 
.QQ 
ErrorQQ 
(QQ  
HQQ  !
[QQ! "
$strQQ" E
]QQE F
)QQF G
;QQG H
}RR 
elseSS 
{TT 
	_notifierUU 
.UU 
InformationUU %
(UU% &
HUU& '
[UU' (
$strUU( D
]UUD E
)UUE F
;UUF G
}VV 
returnXX 
RedirectToActionXX #
(XX# $
nameofXX$ *
(XX* +
ListXX+ /
)XX/ 0
)XX0 1
;XX1 2
}YY 	
}ZZ 
}[[ �H
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Controllers\SitemapController.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Controllers *
{ 
public 

class 
SitemapController "
:# $

Controller% /
{ 
private 
const 
int 
WarningLength '
=( )
$num* 4
;4 5
private 
const 
int 
ErrorLength %
=& '
$num( 2
;2 3
private 
static 
readonly  
ConcurrentDictionary  4
<4 5
string5 ;
,; <
Lazy= A
<A B
TaskB F
<F G
StreamG M
>M N
>N O
>O P
WorkersQ X
=Y Z
new[ ^ 
ConcurrentDictionary_ s
<s t
stringt z
,z {
Lazy	| �
<
� �
Task
� �
<
� �
Stream
� �
>
� �
>
� �
>
� �
(
� �
StringComparer
� �
.
� �
OrdinalIgnoreCase
� �
)
� �
;
� �
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
ISitemapBuilder (
_sitemapBuilder) 8
;8 9
private 
readonly !
ISitemapCacheProvider .!
_sitemapCacheProvider/ D
;D E
private 
readonly 
string 
_tenantName  +
;+ ,
private 
readonly 
ILogger  
_logger! (
;( )
public 
SitemapController  
(  !
ISitemapManager   
sitemapManager   *
,  * +
ISiteService!! 
siteService!! $
,!!$ %
ISitemapBuilder"" 
sitemapBuilder"" *
,""* +!
ISitemapCacheProvider## ! 
sitemapCacheProvider##" 6
,##6 7
ShellSettings$$ 
shellSettings$$ '
,$$' (
ILogger%% 
<%% 
SitemapController%% %
>%%% &
logger%%' -
)&& 
{'' 	
_sitemapManager(( 
=(( 
sitemapManager(( ,
;((, -
_siteService)) 
=)) 
siteService)) &
;))& '
_sitemapBuilder** 
=** 
sitemapBuilder** ,
;**, -!
_sitemapCacheProvider++ !
=++" # 
sitemapCacheProvider++$ 8
;++8 9
_tenantName,, 
=,, 
shellSettings,, '
.,,' (
Name,,( ,
;,,, -
_logger-- 
=-- 
logger-- 
;-- 
}.. 	
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (
Index00) .
(00. /
CancellationToken00/ @
cancellationToken00A R
,00R S
string00T Z
	sitemapId00[ d
)00d e
{11 	
var22 
sitemap22 
=22 
await22 
_sitemapManager22  /
.22/ 0
GetSitemapAsync220 ?
(22? @
	sitemapId22@ I
)22I J
;22J K
if33 
(33 
sitemap33 
==33 
null33 
||33  "
!33# $
sitemap33$ +
.33+ ,
Enabled33, 3
)333 4
{44 
return55 
NotFound55 
(55  
)55  !
;55! "
}66 
var88 
fileResolver88 
=88 
await88 $!
_sitemapCacheProvider88% :
.88: ;!
GetCachedSitemapAsync88; P
(88P Q
sitemap88Q X
.88X Y
CacheFileName88Y f
)88f g
;88g h
if99 
(99 
fileResolver99 
!=99 
null99  $
)99$ %
{:: 
if== 
(== 
Workers== 
.== 
TryGetValue== '
(==' (
_tenantName==( 3
+==4 5
sitemap==6 =
.=== >
Path==> B
,==B C
out==D G
var==H K
	writeTask==L U
)==U V
)==V W
{>> 
await?? 
	writeTask?? #
.??# $
Value??$ )
;??) *
}@@ 
varCC 
streamCC 
=CC 
awaitCC "
fileResolverCC# /
.CC/ 0
OpenReadStreamAsyncCC0 C
(CCC D
)CCD E
;CCE F
returnDD 
FileDD 
(DD 
streamDD "
,DD" #
$strDD$ 5
)DD5 6
;DD6 7
}EE 
elseFF 
{GG 
varHH 
workHH 
=HH 
awaitHH  
WorkersHH! (
.HH( )
GetOrAddHH) 1
(HH1 2
_tenantNameHH2 =
+HH> ?
sitemapHH@ G
.HHG H
PathHHH L
,HHL M
xHHN O
=>HHP R
newHHS V
LazyHHW [
<HH[ \
TaskHH\ `
<HH` a
StreamHHa g
>HHg h
>HHh i
(HHi j
asyncHHj o
(HHp q
)HHq r
=>HHs u
{II 
tryJJ 
{KK 
varLL 
siteSettingsLL (
=LL) *
awaitLL+ 0
_siteServiceLL1 =
.LL= > 
GetSiteSettingsAsyncLL> R
(LLR S
)LLS T
;LLT U
varNN 
contextNN #
=NN$ %
newNN& )!
SitemapBuilderContextNN* ?
(NN? @
)NN@ A
{OO 

HostPrefixPP &
=PP' (
siteSettingsPP) 5
.PP5 6
BaseUrlPP6 =
,PP= >
	UrlHelperQQ %
=QQ& '
UrlQQ( +
}RR 
;RR 
varTT 
documentTT $
=TT% &
awaitTT' ,
_sitemapBuilderTT- <
.TT< =

BuildAsyncTT= G
(TTG H
sitemapTTH O
,TTO P
contextTTQ X
)TTX Y
;TTY Z
ifVV 
(VV 
documentVV $
==VV% '
nullVV( ,
)VV, -
{WW 
returnXX "
nullXX# '
;XX' (
}YY 
document[[  
.[[  !
Declaration[[! ,
=[[- .
new[[/ 2
XDeclaration[[3 ?
([[? @
$str[[@ E
,[[E F
$str[[G N
,[[N O
null[[P T
)[[T U
;[[U V
var]] 
stream]] "
=]]# $
new]]% (
MemoryStream]]) 5
(]]5 6
)]]6 7
;]]7 8
await^^ 
document^^ &
.^^& '
	SaveAsync^^' 0
(^^0 1
stream^^1 7
,^^7 8
SaveOptions^^9 D
.^^D E
None^^E I
,^^I J
cancellationToken^^K \
)^^\ ]
;^^] ^
if`` 
(`` 
stream`` "
.``" #
Length``# )
>=``* ,
ErrorLength``- 8
)``8 9
{aa 
_loggerbb #
.bb# $
LogErrorbb$ ,
(bb, -
$strbb- Y
)bbY Z
;bbZ [
}cc 
elsedd 
ifdd 
(dd  !
streamdd! '
.dd' (
Lengthdd( .
>=dd/ 1
WarningLengthdd2 ?
)dd? @
{ee 
_loggerff #
.ff# $

LogWarningff$ .
(ff. /
$strff/ R
)ffR S
;ffS T
}gg 
awaitii !
_sitemapCacheProviderii 3
.ii3 4 
SetSitemapCacheAsyncii4 H
(iiH I
streamiiI O
,iiO P
sitemapiiQ X
.iiX Y
CacheFileNameiiY f
,iif g
cancellationTokeniih y
)iiy z
;iiz {
returnkk 
streamkk %
;kk% &
}ll 
finallymm 
{nn 
Workersoo 
.oo  
	TryRemoveoo  )
(oo) *
_tenantNameoo* 5
+oo6 7
sitemapoo8 ?
.oo? @
Pathoo@ D
,ooD E
outooF I
varooJ M
writeCacheTaskooN \
)oo\ ]
;oo] ^
}pp 
}qq 
,qq  
LazyThreadSafetyModeqq '
.qq' (#
ExecutionAndPublicationqq( ?
)qq? @
)qq@ A
.qqA B
ValueqqB G
;qqG H
ifss 
(ss 
workss 
==ss 
nullss  
)ss  !
{tt 
returnuu 
NotFounduu #
(uu# $
)uu$ %
;uu% &
}vv 
workxx 
.xx 
Positionxx 
=xx 
$numxx  !
;xx! "
return{{ 
File{{ 
({{ 
work{{  
,{{  !
$str{{" 3
){{3 4
;{{4 5
}|| 
}}} 	
}~~ 
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Controllers\SitemapIndexController.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Controllers *
{ 
[ 
Admin 

]
 
public 

class "
SitemapIndexController '
:( )

Controller* 4
{ 
private 
readonly !
ISitemapHelperService .
_sitemapService/ >
;> ?
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISitemapIdGenerator ,
_sitemapIdGenerator- @
;@ A
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private   
readonly    
IUpdateModelAccessor   - 
_updateModelAccessor  . B
;  B C
private!! 
readonly!! 
	INotifier!! "
	_notifier!!# ,
;!!, -
private"" 
readonly"" 
IStringLocalizer"" )
S""* +
;""+ ,
private## 
readonly## 
IHtmlLocalizer## '
H##( )
;##) *
private$$ 
readonly$$ 
dynamic$$  
New$$! $
;$$$ %
public&& "
SitemapIndexController&& %
(&&% &!
ISitemapHelperService'' !
sitemapService''" 0
,''0 1!
IAuthorizationService(( ! 
authorizationService((" 6
,((6 7
ISitemapIdGenerator)) 
sitemapIdGenerator))  2
,))2 3
ISitemapManager** 
sitemapManager** *
,*** +
ISiteService++ 
siteService++ $
,++$ % 
IUpdateModelAccessor,,  
updateModelAccessor,,! 4
,,,4 5
IShapeFactory-- 
shapeFactory-- &
,--& '
IStringLocalizer.. 
<.. "
SitemapIndexController.. 3
>..3 4
stringLocalizer..5 D
,..D E
IHtmlLocalizer// 
<// "
SitemapIndexController// 1
>//1 2
htmlLocalizer//3 @
,//@ A
	INotifier00 
notifier00 
)00 
{11 	
_sitemapService22 
=22 
sitemapService22 ,
;22, -!
_authorizationService33 !
=33" # 
authorizationService33$ 8
;338 9
_sitemapIdGenerator44 
=44  !
sitemapIdGenerator44" 4
;444 5
_sitemapManager55 
=55 
sitemapManager55 ,
;55, -
_siteService66 
=66 
siteService66 &
;66& ' 
_updateModelAccessor77  
=77! "
updateModelAccessor77# 6
;776 7
	_notifier88 
=88 
notifier88  
;88  !
New99 
=99 
shapeFactory99 
;99 
S:: 
=:: 
stringLocalizer:: 
;::  
H;; 
=;; 
htmlLocalizer;; 
;;; 
}<< 	
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (
List>>) -
(>>- .
ContentOptions>>. <
options>>= D
,>>D E
PagerParameters>>F U
pagerParameters>>V e
)>>e f
{?? 	
if@@ 
(@@ 
!@@ 
await@@ !
_authorizationService@@ ,
.@@, -
AuthorizeAsync@@- ;
(@@; <
User@@< @
,@@@ A
Permissions@@B M
.@@M N
ManageSitemaps@@N \
)@@\ ]
)@@] ^
{AA 
returnBB 
ForbidBB 
(BB 
)BB 
;BB  
}CC 
varEE 
siteSettingsEE 
=EE 
awaitEE $
_siteServiceEE% 1
.EE1 2 
GetSiteSettingsAsyncEE2 F
(EEF G
)EEG H
;EEH I
varFF 
pagerFF 
=FF 
newFF 
PagerFF !
(FF! "
pagerParametersFF" 1
,FF1 2
siteSettingsFF3 ?
.FF? @
PageSizeFF@ H
)FFH I
;FFI J
varHH 
sitemapsHH 
=HH 
(HH 
awaitHH !
_sitemapManagerHH" 1
.HH1 2
GetSitemapsAsyncHH2 B
(HHB C
)HHC D
)HHD E
.II 
OfTypeII 
<II 
SitemapIndexII $
>II$ %
(II% &
)II& '
;II' (
ifKK 
(KK 
!KK 
stringKK 
.KK 
IsNullOrWhiteSpaceKK *
(KK* +
optionsKK+ 2
.KK2 3
SearchKK3 9
)KK9 :
)KK: ;
{LL 
sitemapsMM 
=MM 
sitemapsMM #
.MM# $
WhereMM$ )
(MM) *
xMM* +
=>MM, .
xMM/ 0
.MM0 1
NameMM1 5
.MM5 6
ContainsMM6 >
(MM> ?
optionsMM? F
.MMF G
SearchMMG M
,MMM N
StringComparisonMMO _
.MM_ `
OrdinalIgnoreCaseMM` q
)MMq r
)MMr s
;MMs t
}NN 
varPP 
countPP 
=PP 
sitemapsPP  
.PP  !
CountPP! &
(PP& '
)PP' (
;PP( )
varRR 
resultsRR 
=RR 
sitemapsRR "
.SS 
SkipSS 
(SS 
pagerSS 
.SS 
GetStartIndexSS )
(SS) *
)SS* +
)SS+ ,
.TT 
TakeTT 
(TT 
pagerTT 
.TT 
PageSizeTT $
)TT$ %
.UU 
ToListUU 
(UU 
)UU 
;UU 
varXX 
	routeDataXX 
=XX 
newXX 
	RouteDataXX  )
(XX) *
)XX* +
;XX+ ,
	routeDataYY 
.YY 
ValuesYY 
.YY 
AddYY  
(YY  !
$strYY! 1
,YY1 2
optionsYY3 :
.YY: ;
SearchYY; A
)YYA B
;YYB C
var[[ 

pagerShape[[ 
=[[ 
([[ 
await[[ #
New[[$ '
.[[' (
Pager[[( -
([[- .
pager[[. 3
)[[3 4
)[[4 5
.[[5 6
TotalItemCount[[6 D
([[D E
count[[E J
)[[J K
.[[K L
	RouteData[[L U
([[U V
	routeData[[V _
)[[_ `
;[[` a
var]] 
model]] 
=]] 
new]] %
ListSitemapIndexViewModel]] 5
{^^ 
SitemapIndexes__ 
=__  
results__! (
.__( )
Select__) /
(__/ 0
sm__0 2
=>__3 5
new__6 9!
SitemapIndexListEntry__: O
{__P Q
	SitemapId__R [
=__\ ]
sm__^ `
.__` a
	SitemapId__a j
,__j k
Name__l p
=__q r
sm__s u
.__u v
Name__v z
,__z {
Enabled	__| �
=
__� �
sm
__� �
.
__� �
Enabled
__� �
}
__� �
)
__� �
.
__� �
ToList
__� �
(
__� �
)
__� �
,
__� �
Options`` 
=`` 
options`` !
,``! "
Pageraa 
=aa 

pagerShapeaa "
}bb 
;bb 
modeldd 
.dd 
Optionsdd 
.dd 
ContentsBulkActiondd ,
=dd- .
newdd/ 2
Listdd3 7
<dd7 8
SelectListItemdd8 F
>ddF G
(ddG H
)ddH I
{ddJ K
newee 
SelectListItemee "
(ee" #
)ee# $
{ee% &
Textee' +
=ee, -
See. /
[ee/ 0
$stree0 8
]ee8 9
,ee9 :
Valueee; @
=eeA B
nameofeeC I
(eeI J
ContentsBulkActioneeJ \
.ee\ ]
Removeee] c
)eec d
}eee f
}ff 
;ff 
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
$strkk $
)kk$ %
]kk% &
[ll 	
FormValueRequiredll	 
(ll 
$strll *
)ll* +
]ll+ ,
publicmm 
ActionResultmm 
ListFilterPOSTmm *
(mm* +%
ListSitemapIndexViewModelmm+ D
modelmmE J
)mmJ K
{nn 	
returnoo 
RedirectToActionoo #
(oo# $
$stroo$ *
,oo* +
newoo, / 
RouteValueDictionaryoo0 D
{ooE F
{pp 
$strpp "
,pp" #
modelpp$ )
.pp) *
Optionspp* 1
.pp1 2
Searchpp2 8
}pp9 :
}qq 
)qq 
;qq 
}rr 	
publictt 
asynctt 
Tasktt 
<tt 
IActionResulttt '
>tt' (
Creatett) /
(tt/ 0
)tt0 1
{uu 	
ifvv 
(vv 
!vv 
awaitvv !
_authorizationServicevv ,
.vv, -
AuthorizeAsyncvv- ;
(vv; <
Uservv< @
,vv@ A
PermissionsvvB M
.vvM N
ManageSitemapsvvN \
)vv\ ]
)vv] ^
{ww 
returnxx 
Forbidxx 
(xx 
)xx 
;xx  
}yy 
var{{ 
sitemaps{{ 
={{ 
await{{  
_sitemapManager{{! 0
.{{0 1
GetSitemapsAsync{{1 A
({{A B
){{B C
;{{C D
var}} 
containableSitemaps}} #
=}}$ %
sitemaps}}& .
.~~ 
Where~~ 
(~~ 
s~~ 
=>~~ 
s~~ 
.~~ 
GetType~~ %
(~~% &
)~~& '
!=~~( *
typeof~~+ 1
(~~1 2
SitemapIndex~~2 >
)~~> ?
)~~? @
. 
Select 
( 
s 
=> 
new  ,
 ContainableSitemapEntryViewModel! A
{
�� 
	SitemapId
�� 
=
�� 
s
��  !
.
��! "
	SitemapId
��" +
,
��+ ,
Name
�� 
=
�� 
s
�� 
.
�� 
Name
�� !
,
��! "
	IsChecked
�� 
=
�� 
false
��  %
}
�� 
)
�� 
.
�� 
OrderBy
�� 
(
�� 
s
�� 
=>
�� 
s
�� 
.
��  
Name
��  $
)
��$ %
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
var
�� 
model
�� 
=
�� 
new
�� )
CreateSitemapIndexViewModel
�� 7
{
�� !
ContainableSitemaps
�� #
=
��$ %!
containableSitemaps
��& 9
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
��' (
Create
��) /
(
��/ 0)
CreateSitemapIndexViewModel
��0 K
model
��L Q
)
��Q R
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
new
�� 
SitemapIndex
�� *
{
�� 
	SitemapId
�� 
=
�� !
_sitemapIdGenerator
�� /
.
��/ 0
GenerateUniqueId
��0 @
(
��@ A
)
��A B
}
�� 
;
�� 
var
�� 
indexSource
�� 
=
�� 
new
�� ! 
SitemapIndexSource
��" 4
{
�� 
Id
�� 
=
�� !
_sitemapIdGenerator
�� (
.
��( )
GenerateUniqueId
��) 9
(
��9 :
)
��: ;
}
�� 
;
�� 
sitemap
�� 
.
�� 
SitemapSources
�� "
.
��" #
Add
��# &
(
��& '
indexSource
��' 2
)
��2 3
;
��3 4
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
�� 
await
�� 
_sitemapService
�� %
.
��% &
ValidatePathAsync
��& 7
(
��7 8
model
��8 =
.
��= >
Path
��> B
,
��B C"
_updateModelAccessor
��D X
.
��X Y
ModelUpdater
��Y e
)
��e f
;
��f g
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
�� 
sitemap
�� 
.
�� 
Name
�� 
=
�� 
model
�� $
.
��$ %
Name
��% )
;
��) *
sitemap
�� 
.
�� 
Enabled
�� 
=
��  !
model
��" '
.
��' (
Enabled
��( /
;
��/ 0
sitemap
�� 
.
�� 
Path
�� 
=
�� 
model
�� $
.
��$ %
Path
��% )
;
��) *
indexSource
�� 
.
�� !
ContainedSitemapIds
�� /
=
��0 1
model
��2 7
.
��7 8!
ContainableSitemaps
��8 K
.
�� 
Where
�� 
(
�� 
m
�� 
=>
�� 
m
��  !
.
��! "
	IsChecked
��" +
)
��+ ,
.
�� 
Select
�� 
(
�� 
m
�� 
=>
��  
m
��! "
.
��" #
	SitemapId
��# ,
)
��, -
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
await
�� 
_sitemapManager
�� %
.
��% & 
UpdateSitemapAsync
��& 8
(
��8 9
sitemap
��9 @
)
��@ A
;
��A B
	_notifier
�� 
.
�� 
Success
�� !
(
��! "
H
��" #
[
��# $
$str
��$ H
]
��H I
)
��I J
;
��J K
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
List
��/ 3
)
��3 4
)
��4 5
;
��5 6
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
��. 4
	sitemapId
��5 >
)
��> ?
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
(
�� 
await
��  
_sitemapManager
��! 0
.
��0 1
GetSitemapAsync
��1 @
(
��@ A
	sitemapId
��A J
)
��J K
)
��K L
as
��M O
SitemapIndex
��P \
;
��\ ]
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
var
�� 
sitemaps
�� 
=
�� 
await
��  
_sitemapManager
��! 0
.
��0 1
GetSitemapsAsync
��1 A
(
��A B
)
��B C
;
��C D
var
�� 
indexSource
�� 
=
�� 
sitemap
�� %
.
��% &
SitemapSources
��& 4
.
��4 5
FirstOrDefault
��5 C
(
��C D
)
��D E
as
��F H 
SitemapIndexSource
��I [
;
��[ \
var
�� !
containableSitemaps
�� #
=
��$ %
sitemaps
��& .
.
�� 
Where
�� 
(
�� 
s
�� 
=>
�� 
s
�� 
.
�� 
GetType
�� %
(
��% &
)
��& '
!=
��( *
typeof
��+ 1
(
��1 2
SitemapIndex
��2 >
)
��> ?
)
��? @
.
�� 
Select
�� 
(
�� 
s
�� 
=>
�� 
new
��  .
 ContainableSitemapEntryViewModel
��! A
{
�� 
	SitemapId
�� 
=
�� 
s
��  !
.
��! "
	SitemapId
��" +
,
��+ ,
Name
�� 
=
�� 
s
�� 
.
�� 
Name
�� !
,
��! "
	IsChecked
�� 
=
�� 
indexSource
��  +
.
��+ ,!
ContainedSitemapIds
��, ?
.
��? @
Any
��@ C
(
��C D
id
��D F
=>
��G I
id
��J L
==
��M O
s
��P Q
.
��Q R
	SitemapId
��R [
)
��[ \
}
�� 
)
�� 
.
�� 
OrderBy
�� 
(
�� 
s
�� 
=>
�� 
s
�� 
.
��  
Name
��  $
)
��$ %
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
var
�� 
model
�� 
=
�� 
new
�� '
EditSitemapIndexViewModel
�� 5
{
�� 
	SitemapId
�� 
=
�� 
sitemap
�� #
.
��# $
	SitemapId
��$ -
,
��- .
Name
�� 
=
�� 
sitemap
�� 
.
�� 
Name
�� #
,
��# $
Enabled
�� 
=
�� 
sitemap
�� !
.
��! "
Enabled
��" )
,
��) *
Path
�� 
=
�� 
sitemap
�� 
.
�� 
Path
�� #
,
��# $ 
SitemapIndexSource
�� "
=
��# $
indexSource
��% 0
,
��0 1!
ContainableSitemaps
�� #
=
��$ %!
containableSitemaps
��& 9
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
��- .'
EditSitemapIndexViewModel
��. G
model
��H M
)
��M N
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
LoadSitemapAsync
��0 @
(
��@ A
model
��A F
.
��F G
	SitemapId
��G P
)
��P Q
;
��Q R
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
var
�� 
indexSource
�� 
=
�� 
sitemap
�� %
.
��% &
SitemapSources
��& 4
.
��4 5
FirstOrDefault
��5 C
(
��C D
)
��D E
as
��F H 
SitemapIndexSource
��I [
;
��[ \
model
�� 
.
��  
SitemapIndexSource
�� $
=
��% &
indexSource
��' 2
;
��2 3
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
�� 
await
�� 
_sitemapService
�� %
.
��% &
ValidatePathAsync
��& 7
(
��7 8
model
��8 =
.
��= >
Path
��> B
,
��B C"
_updateModelAccessor
��D X
.
��X Y
ModelUpdater
��Y e
,
��e f
sitemap
��g n
.
��n o
	SitemapId
��o x
)
��x y
;
��y z
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
sitemap
�� 
.
�� 
Name
�� 
=
�� 
model
�� $
.
��$ %
Name
��% )
;
��) *
sitemap
�� 
.
�� 
Enabled
�� 
=
��  !
model
��" '
.
��' (
Enabled
��( /
;
��/ 0
sitemap
�� 
.
�� 
Path
�� 
=
�� 
model
�� $
.
��$ %
Path
��% )
;
��) *
indexSource
�� 
.
�� !
ContainedSitemapIds
�� /
=
��0 1
model
��2 7
.
��7 8!
ContainableSitemaps
��8 K
.
�� 
Where
�� 
(
�� 
m
�� 
=>
�� 
m
��  !
.
��! "
	IsChecked
��" +
)
��+ ,
.
�� 
Select
�� 
(
�� 
m
�� 
=>
��  
m
��! "
.
��" #
	SitemapId
��# ,
)
��, -
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
await
�� 
_sitemapManager
�� %
.
��% & 
UpdateSitemapAsync
��& 8
(
��8 9
sitemap
��9 @
)
��@ A
;
��A B
	_notifier
�� 
.
�� 
Success
�� !
(
��! "
H
��" #
[
��# $
$str
��$ H
]
��H I
)
��I J
;
��J K
return
�� 
RedirectToAction
�� '
(
��' (
nameof
��( .
(
��. /
List
��/ 3
)
��3 4
)
��4 5
;
��5 6
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
��0 6
	sitemapId
��7 @
)
��@ A
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
LoadSitemapAsync
��0 @
(
��@ A
	sitemapId
��A J
)
��J K
;
��K L
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
_sitemapManager
�� !
.
��! " 
DeleteSitemapAsync
��" 4
(
��4 5
	sitemapId
��5 >
)
��> ?
;
��? @
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
��  E
]
��E F
)
��F G
;
��G H
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
List
��+ /
)
��/ 0
)
��0 1
;
��1 2
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
Toggle
��) /
(
��/ 0
string
��0 6
	sitemapId
��7 @
)
��@ A
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
LoadSitemapAsync
��0 @
(
��@ A
	sitemapId
��A J
)
��J K
;
��K L
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
sitemap
�� 
.
�� 
Enabled
�� 
=
�� 
!
�� 
sitemap
�� &
.
��& '
Enabled
��' .
;
��. /
await
�� 
_sitemapManager
�� !
.
��! " 
UpdateSitemapAsync
��" 4
(
��4 5
sitemap
��5 <
)
��< =
;
��= >
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
��* +
List
��+ /
)
��/ 0
)
��0 1
;
��1 2
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
�� $
)
��$ %
]
��% &
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
��& '
ListPost
��( 0
(
��0 1

ViewModels
��1 ;
.
��; <
ContentOptions
��< J
options
��K R
,
��R S
IEnumerable
��T _
<
��_ `
string
��` f
>
��f g
itemIds
��h o
)
��o p
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemapsList
��  
=
��! "
await
��# (
_sitemapManager
��) 8
.
��8 9
LoadSitemapsAsync
��9 J
(
��J K
)
��K L
;
��L M
var
�� !
checkedContentItems
�� '
=
��( )
sitemapsList
��* 6
.
��6 7
Where
��7 <
(
��< =
x
��= >
=>
��? A
itemIds
��B I
.
��I J
Contains
��J R
(
��R S
x
��S T
.
��T U
	SitemapId
��U ^
)
��^ _
)
��_ `
;
��` a
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
�� !
_sitemapManager
��" 1
.
��1 2 
DeleteSitemapAsync
��2 D
(
��D E
item
��E I
.
��I J
	SitemapId
��J S
)
��S T
;
��T U
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
��, S
]
��S T
)
��T U
;
��U V
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
��$ *
)
��* +
;
��+ ,
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Controllers\SourceController.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Controllers *
{ 
[ 
Admin 

]
 
public 

class 
SourceController !
:" #

Controller$ .
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IDisplayManager (
<( )
SitemapSource) 6
>6 7
_displayManager8 G
;G H
private 
readonly 
IEnumerable $
<$ %!
ISitemapSourceFactory% :
>: ;

_factories< F
;F G
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
dynamic  
New! $
;$ %
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private   
readonly   
IHtmlLocalizer   '
H  ( )
;  ) *
public"" 
SourceController"" 
(""  !
IAuthorizationService## ! 
authorizationService##" 6
,##6 7
IDisplayManager$$ 
<$$ 
SitemapSource$$ )
>$$) *
displayManager$$+ 9
,$$9 :
IEnumerable%% 
<%% !
ISitemapSourceFactory%% -
>%%- .
	factories%%/ 8
,%%8 9
ISitemapManager&& 
sitemapManager&& *
,&&* +
ISiteService'' 
siteService'' $
,''$ % 
IUpdateModelAccessor((  
updateModelAccessor((! 4
,((4 5
	INotifier)) 
notifier)) 
,)) 
IShapeFactory** 
shapeFactory** &
,**& '
IStringLocalizer++ 
<++ 
SourceController++ -
>++- .
stringLocalizer++/ >
,++> ?
IHtmlLocalizer,, 
<,, 
SourceController,, +
>,,+ ,
htmlLocalizer,,- :
),,: ;
{-- 	
_displayManager.. 
=.. 
displayManager.. ,
;.., -

_factories// 
=// 
	factories// "
;//" #!
_authorizationService00 !
=00" # 
authorizationService00$ 8
;008 9
_sitemapManager11 
=11 
sitemapManager11 ,
;11, -
_siteService22 
=22 
siteService22 &
;22& ' 
_updateModelAccessor33  
=33! "
updateModelAccessor33# 6
;336 7
	_notifier44 
=44 
notifier44  
;44  !
New55 
=55 
shapeFactory55 
;55 
S66 
=66 
stringLocalizer66 
;66  
H77 
=77 
htmlLocalizer77 
;77 
}88 	
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
Create::) /
(::/ 0
string::0 6
	sitemapId::7 @
,::@ A
string::B H

sourceType::I S
)::S T
{;; 	
if<< 
(<< 
!<< 
await<< !
_authorizationService<< ,
.<<, -
AuthorizeAsync<<- ;
(<<; <
User<<< @
,<<@ A
Permissions<<B M
.<<M N
ManageSitemaps<<N \
)<<\ ]
)<<] ^
{== 
return>> 
Forbid>> 
(>> 
)>> 
;>>  
}?? 
varAA 
sitemapAA 
=AA 
awaitAA 
_sitemapManagerAA  /
.AA/ 0
GetSitemapAsyncAA0 ?
(AA? @
	sitemapIdAA@ I
)AAI J
;AAJ K
ifCC 
(CC 
sitemapCC 
==CC 
nullCC 
)CC  
{DD 
returnEE 
NotFoundEE 
(EE  
)EE  !
;EE! "
}FF 
varHH 
sourceHH 
=HH 

_factoriesHH #
.HH# $
FirstOrDefaultHH$ 2
(HH2 3
xHH3 4
=>HH5 7
xHH8 9
.HH9 :
NameHH: >
==HH? A

sourceTypeHHB L
)HHL M
?HHM N
.HHN O
CreateHHO U
(HHU V
)HHV W
;HHW X
ifJJ 
(JJ 
sourceJJ 
==JJ 
nullJJ 
)JJ 
{KK 
returnLL 
NotFoundLL 
(LL  
)LL  !
;LL! "
}MM 
varOO 
modelOO 
=OO 
newOO !
CreateSourceViewModelOO 1
{PP 
	SitemapIdQQ 
=QQ 
	sitemapIdQQ %
,QQ% &
SitemapSourceRR 
=RR 
sourceRR  &
,RR& '
SitemapSourceIdSS 
=SS  !
sourceSS" (
.SS( )
IdSS) +
,SS+ ,
SitemapSourceTypeTT !
=TT" #

sourceTypeTT$ .
,TT. /
EditorUU 
=UU 
awaitUU 
_displayManagerUU .
.UU. /
BuildEditorAsyncUU/ ?
(UU? @
sourceUU@ F
,UUF G
updaterUUH O
:UUO P 
_updateModelAccessorUUQ e
.UUe f
ModelUpdaterUUf r
,UUr s
isNewUUt y
:UUy z
trueUU{ 
)	UU �
}VV 
;VV 
modelXX 
.XX 
EditorXX 
.XX 
SitemapSourceXX &
=XX' (
sourceXX) /
;XX/ 0
returnZZ 
ViewZZ 
(ZZ 
modelZZ 
)ZZ 
;ZZ 
}[[ 	
[]] 	
HttpPost]]	 
]]] 
public^^ 
async^^ 
Task^^ 
<^^ 
IActionResult^^ '
>^^' (
Create^^) /
(^^/ 0!
CreateSourceViewModel^^0 E
model^^F K
)^^K L
{__ 	
if`` 
(`` 
!`` 
await`` !
_authorizationService`` ,
.``, -
AuthorizeAsync``- ;
(``; <
User``< @
,``@ A
Permissions``B M
.``M N
ManageSitemaps``N \
)``\ ]
)``] ^
{aa 
returnbb 
Forbidbb 
(bb 
)bb 
;bb  
}cc 
varee 
sitemapee 
=ee 
awaitee 
_sitemapManageree  /
.ee/ 0
LoadSitemapAsyncee0 @
(ee@ A
modeleeA F
.eeF G
	SitemapIdeeG P
)eeP Q
;eeQ R
ifgg 
(gg 
sitemapgg 
==gg 
nullgg 
)gg  
{hh 
returnii 
NotFoundii 
(ii  
)ii  !
;ii! "
}jj 
varll 
sourcell 
=ll 

_factoriesll #
.ll# $
FirstOrDefaultll$ 2
(ll2 3
xll3 4
=>ll5 7
xll8 9
.ll9 :
Namell: >
==ll? A
modelllB G
.llG H
SitemapSourceTypellH Y
)llY Z
?llZ [
.ll[ \
Createll\ b
(llb c
)llc d
;lld e
ifnn 
(nn 
sourcenn 
==nn 
nullnn 
)nn 
{oo 
returnpp 
NotFoundpp 
(pp  
)pp  !
;pp! "
}qq 
dynamicss 
editorss 
=ss 
awaitss "
_displayManagerss# 2
.ss2 3
UpdateEditorAsyncss3 D
(ssD E
sourcessE K
,ssK L
updaterssM T
:ssT U 
_updateModelAccessorssV j
.ssj k
ModelUpdaterssk w
,ssw x
isNewssy ~
:ss~ 
true
ss� �
)
ss� �
;
ss� �
editortt 
.tt 
SitemapSteptt 
=tt  
sourcett! '
;tt' (
ifvv 
(vv 

ModelStatevv 
.vv 
IsValidvv "
)vv" #
{ww 
sourcexx 
.xx 
Idxx 
=xx 
modelxx !
.xx! "
SitemapSourceIdxx" 1
;xx1 2
sitemapyy 
.yy 
SitemapSourcesyy &
.yy& '
Addyy' *
(yy* +
sourceyy+ 1
)yy1 2
;yy2 3
await{{ 
_sitemapManager{{ %
.{{% &
UpdateSitemapAsync{{& 8
({{8 9
sitemap{{9 @
){{@ A
;{{A B
	_notifier}} 
.}} 
Success}} !
(}}! "
H}}" #
[}}# $
$str}}$ H
]}}H I
)}}I J
;}}J K
return~~ 
RedirectToAction~~ '
(~~' (
$str~~( 1
,~~1 2
$str~~3 :
,~~: ;
new~~< ?
{~~@ A
	sitemapId~~B K
=~~L M
model~~N S
.~~S T
	SitemapId~~T ]
}~~^ _
)~~_ `
;~~` a
} 
model
�� 
.
�� 
Editor
�� 
=
�� 
editor
�� !
;
��! "
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
��. 4
	sitemapId
��5 >
,
��> ?
string
��@ F
sourceId
��G O
)
��O P
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
GetSitemapAsync
��0 ?
(
��? @
	sitemapId
��@ I
)
��I J
;
��J K
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
var
�� 
source
�� 
=
�� 
sitemap
��  
.
��  !
SitemapSources
��! /
.
��/ 0
FirstOrDefault
��0 >
(
��> ?
x
��? @
=>
��A C
String
��D J
.
��J K
Equals
��K Q
(
��Q R
x
��R S
.
��S T
Id
��T V
,
��V W
sourceId
��X `
,
��` a
StringComparison
��b r
.
��r s 
OrdinalIgnoreCase��s �
)��� �
)��� �
;��� �
if
�� 
(
�� 
source
�� 
==
�� 
null
�� 
)
�� 
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
�� 
var
�� 
model
�� 
=
�� 
new
�� !
EditSourceViewModel
�� /
{
�� 
	SitemapId
�� 
=
�� 
	sitemapId
�� %
,
��% &
SitemapSource
�� 
=
�� 
source
��  &
,
��& '
SitemapSourceId
�� 
=
��  !
source
��" (
.
��( )
Id
��) +
,
��+ ,
Editor
�� 
=
�� 
await
�� 
_displayManager
�� .
.
��. /
BuildEditorAsync
��/ ?
(
��? @
source
��@ F
,
��F G
updater
��H O
:
��O P"
_updateModelAccessor
��Q e
.
��e f
ModelUpdater
��f r
,
��r s
isNew
��t y
:
��y z
false��{ �
)��� �
}
�� 
;
�� 
model
�� 
.
�� 
Editor
�� 
.
�� 
SitemapSource
�� &
=
��' (
source
��) /
;
��/ 0
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
��- .!
EditSourceViewModel
��. A
model
��B G
)
��G H
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
LoadSitemapAsync
��0 @
(
��@ A
model
��A F
.
��F G
	SitemapId
��G P
)
��P Q
;
��Q R
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
var
�� 
source
�� 
=
�� 
sitemap
��  
.
��  !
SitemapSources
��! /
.
��/ 0
FirstOrDefault
��0 >
(
��> ?
x
��? @
=>
��A C
String
��D J
.
��J K
Equals
��K Q
(
��Q R
x
��R S
.
��S T
Id
��T V
,
��V W
model
��X ]
.
��] ^
SitemapSourceId
��^ m
,
��m n
StringComparison
��o 
.�� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
source
�� 
==
�� 
null
�� 
)
�� 
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
�� 
var
�� 
editor
�� 
=
�� 
await
�� 
_displayManager
�� .
.
��. /
UpdateEditorAsync
��/ @
(
��@ A
source
��A G
,
��G H
updater
��I P
:
��P Q"
_updateModelAccessor
��R f
.
��f g
ModelUpdater
��g s
,
��s t
isNew
��u z
:
��z {
false��| �
)��� �
;��� �
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
�� 
await
�� 
_sitemapManager
�� %
.
��% & 
UpdateSitemapAsync
��& 8
(
��8 9
sitemap
��9 @
)
��@ A
;
��A B
	_notifier
�� 
.
�� 
Success
�� !
(
��! "
H
��" #
[
��# $
$str
��$ J
]
��J K
)
��K L
;
��L M
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 1
,
��1 2
$str
��3 :
,
��: ;
new
��< ?
{
��@ A
	sitemapId
��B K
=
��L M
model
��N S
.
��S T
	SitemapId
��T ]
}
��^ _
)
��_ `
;
��` a
}
�� 
	_notifier
�� 
.
�� 
Error
�� 
(
�� 
H
�� 
[
�� 
$str
�� I
]
��I J
)
��J K
;
��K L
model
�� 
.
�� 
Editor
�� 
=
�� 
editor
�� !
;
��! "
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
��' (
Delete
��) /
(
��/ 0
string
��0 6
	sitemapId
��7 @
,
��@ A
string
��B H
sourceId
��I Q
)
��Q R
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
��M N
ManageSitemaps
��N \
)
��\ ]
)
��] ^
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
�� 
sitemap
�� 
=
�� 
await
�� 
_sitemapManager
��  /
.
��/ 0
LoadSitemapAsync
��0 @
(
��@ A
	sitemapId
��A J
)
��J K
;
��K L
if
�� 
(
�� 
sitemap
�� 
==
�� 
null
�� 
)
��  
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
�� 
var
�� 
source
�� 
=
�� 
sitemap
��  
.
��  !
SitemapSources
��! /
.
��/ 0
FirstOrDefault
��0 >
(
��> ?
x
��? @
=>
��A C
String
��D J
.
��J K
Equals
��K Q
(
��Q R
x
��R S
.
��S T
Id
��T V
,
��V W
sourceId
��X `
,
��` a
StringComparison
��b r
.
��r s 
OrdinalIgnoreCase��s �
)��� �
)��� �
;��� �
if
�� 
(
�� 
source
�� 
==
�� 
null
�� 
)
�� 
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
�� 
sitemap
�� 
.
�� 
SitemapSources
�� "
.
��" #
Remove
��# )
(
��) *
source
��* 0
)
��0 1
;
��1 2
await
�� 
_sitemapManager
�� !
.
��! " 
UpdateSitemapAsync
��" 4
(
��4 5
sitemap
��5 <
)
��< =
;
��= >
	_notifier
�� 
.
�� 
Success
�� 
(
�� 
H
�� 
[
��  
$str
��  F
]
��F G
)
��G H
;
��H I
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ -
,
��- .
$str
��/ 6
,
��6 7
new
��8 ;
{
��< =
	sitemapId
��> G
}
��H I
)
��I J
;
��J K
}
�� 	
}
�� 
}�� �8
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Drivers\CustomPathSitemapSourceDriver.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Drivers &
{ 
public 

class )
CustomPathSitemapSourceDriver .
:/ 0
DisplayDriver1 >
<> ?
SitemapSource? L
,L M#
CustomPathSitemapSourceN e
>e f
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public )
CustomPathSitemapSourceDriver ,
(, -
IStringLocalizer- =
<= >)
CustomPathSitemapSourceDriver> [
>[ \
	localizer] f
)f g
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
(. /#
CustomPathSitemapSource/ F
sitemapSourceG T
)T U
{ 	
return 
Combine 
( 
View 
( 
$str ;
,; <
sitemapSource= J
)J K
.K L
LocationL T
(T U
$strU c
,c d
$stre n
)n o
,o p
View 
( 
$str 8
,8 9
sitemapSource: G
)G H
.H I
LocationI Q
(Q R
$strR ]
,] ^
$str_ h
)h i
) 
; 
}   	
public"" 
override"" 
IDisplayResult"" &
Edit""' +
(""+ ,#
CustomPathSitemapSource"", C
sitemapSource""D Q
,""Q R
IUpdateModel""S _
updater""` g
)""g h
{## 	
return$$ 

Initialize$$ 
<$$ ,
 CustomPathSitemapSourceViewModel$$ >
>$$> ?
($$? @
$str$$@ ^
,$$^ _
model$$` e
=>$$f h
{%% 
model&& 
.&& 
Path&& 
=&& 
sitemapSource&& *
.&&* +
Path&&+ /
;&&/ 0
model'' 
.'' 
Priority'' 
=''  
sitemapSource''! .
.''. /
Priority''/ 7
;''7 8
model(( 
.(( 
ChangeFrequency(( %
=((& '
sitemapSource((( 5
.((5 6
ChangeFrequency((6 E
;((E F
}** 
)** 
.** 
Location** 
(** 
$str** !
)**! "
;**" #
}++ 	
public-- 
override-- 
async-- 
Task-- "
<--" #
IDisplayResult--# 1
>--1 2
UpdateAsync--3 >
(--> ?#
CustomPathSitemapSource--? V
sitemap--W ^
,--^ _
UpdateEditorContext--` s
context--t {
)--{ |
{.. 	
var// 
model// 
=// 
new// ,
 CustomPathSitemapSourceViewModel// <
(//< =
)//= >
;//> ?
if11 
(11 
await11 
context11 
.11 
Updater11 %
.11% &
TryUpdateModelAsync11& 9
(119 :
model11: ?
,11? @
Prefix22 
,22 
m33 
=>33 
m33 
.33 
Path33 
,33  
m44 
=>44 
m44 
.44 
Priority44 #
,44# $
m55 
=>55 
m55 
.55 
ChangeFrequency55 *
)66 
)66 
{77 
sitemap88 
.88 
Path88 
=88 
model88 $
.88$ %
Path88% )
;88) *
sitemap99 
.99 
Priority99  
=99! "
model99# (
.99( )
Priority99) 1
;991 2
sitemap:: 
.:: 
ChangeFrequency:: '
=::( )
model::* /
.::/ 0
ChangeFrequency::0 ?
;::? @
sitemap;; 
.;; 

LastUpdate;; "
=;;# $
DateTime;;% -
.;;- .
Now;;. 1
;;;1 2
if== 
(== 
sitemap== 
.== 
Path==  
?==  !
.==! "

IndexOfAny==" ,
(==, -#
CustomPathSitemapSource==- D
.==D E$
InvalidCharactersForPath==E ]
)==] ^
>==_ `
-==a b
$num==b c
||==d f
sitemap==g n
.==n o
Path==o s
?==s t
.==t u
IndexOf==u |
(==| }
$char	==} �
)
==� �
>
==� �
-
==� �
$num
==� �
||
==� �
sitemap
==� �
.
==� �
Path
==� �
?
==� �
.
==� �
IndexOf
==� �
(
==� �
$str
==� �
)
==� �
>
==� �
-
==� �
$num
==� �
)
==� �
{>> 
var?? '
invalidCharactersForMessage?? 3
=??4 5
string??6 <
.??< =
Join??= A
(??A B
$str??B F
,??F G#
CustomPathSitemapSource??H _
.??_ `$
InvalidCharactersForPath??` x
.??x y
Select??y 
(	?? �
c
??� �
=>
??� �
$"
??� �
\"
??� �
{
??� �
c
??� �
}
??� �
\"
??� �
"
??� �
)
??� �
)
??� �
;
??� �
context@@ 
.@@ 
Updater@@ #
.@@# $

ModelState@@$ .
.@@. /
AddModelError@@/ <
(@@< =
Prefix@@= C
,@@C D
sitemap@@E L
.@@L M
Path@@M Q
,@@Q R
S@@S T
[@@T U
$str	@@U �
,
@@� �)
invalidCharactersForMessage
@@� �
]
@@� �
)
@@� �
;
@@� �
}AA 
ifCC 
(CC 
sitemapCC 
.CC 
PathCC  
?CC  !
.CC! "
LengthCC" (
>CC) *#
CustomPathSitemapSourceCC+ B
.CCB C
MaxPathLengthCCC P
)CCP Q
{DD 
contextEE 
.EE 
UpdaterEE #
.EE# $

ModelStateEE$ .
.EE. /
AddModelErrorEE/ <
(EE< =
PrefixEE= C
,EEC D
sitemapEEE L
.EEL M
PathEEM Q
,EEQ R
SEES T
[EET U
$str	EEU �
,
EE� �%
CustomPathSitemapSource
EE� �
.
EE� �
MaxPathLength
EE� �
]
EE� �
)
EE� �
;
EE� �
}FF 
}GG 
;GG 
returnII 
EditII 
(II 
sitemapII 
,II  
contextII! (
.II( )
UpdaterII) 0
)II0 1
;II1 2
}JJ 	
}KK 
}LL �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Drivers\SitemapPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Drivers &
{		 
public

 

class

 $
SitemapPartDisplayDriver

 )
:

* +$
ContentPartDisplayDriver

, D
<

D E
SitemapPart

E P
>

P Q
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,
SitemapPart, 7
part8 <
)< =
{ 	
return 

Initialize 
<  
SitemapPartViewModel 2
>2 3
(3 4
$str4 F
,F G
mH I
=>J L
BuildViewModelM [
([ \
m\ ]
,] ^
part_ c
)c d
)d e
. 
Location 
( 
$str '
)' (
;( )
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
SitemapPart? J
modelK P
,P Q
IUpdateModelR ^
updater_ f
)f g
{ 	
var 
	viewModel 
= 
new  
SitemapPartViewModel  4
(4 5
)5 6
;6 7
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix 
, 
t 
=> 
t 
. !
OverrideSitemapConfig ,
,, -
t 
=> 
t 
. 
ChangeFrequency &
,& '
t 
=> 
t 
. 
Exclude 
, 
t 
=> 
t 
. 
Priority 
) 
) 
{ 
model 
. !
OverrideSitemapConfig +
=, -
	viewModel. 7
.7 8!
OverrideSitemapConfig8 M
;M N
model 
. 
ChangeFrequency %
=& '
	viewModel( 1
.1 2
ChangeFrequency2 A
;A B
model   
.   
Exclude   
=   
	viewModel    )
.  ) *
Exclude  * 1
;  1 2
model!! 
.!! 
Priority!! 
=!!  
	viewModel!!! *
.!!* +
Priority!!+ 3
;!!3 4
}"" 
return$$ 
Edit$$ 
($$ 
model$$ 
)$$ 
;$$ 
}%% 	
private(( 
void(( 
BuildViewModel(( #
(((# $ 
SitemapPartViewModel(($ 8
model((9 >
,((> ?
SitemapPart((@ K
part((L P
)((P Q
{)) 	
model** 
.** !
OverrideSitemapConfig** '
=**( )
part*** .
.**. /!
OverrideSitemapConfig**/ D
;**D E
model++ 
.++ 
ChangeFrequency++ !
=++" #
part++$ (
.++( )
ChangeFrequency++) 8
;++8 9
model,, 
.,, 
Exclude,, 
=,, 
part,,  
.,,  !
Exclude,,! (
;,,( )
model-- 
.-- 
Priority-- 
=-- 
part-- !
.--! "
Priority--" *
;--* +
model.. 
... 
SitemapPart.. 
=.. 
part..  $
;..$ %
}// 	
}00 
}11 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Handlers\CustomPathSitemapSourceUpdateHandler.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{		 
public

 

class

 0
$CustomPathSitemapSourceUpdateHandler

 5
:

6 7'
ISitemapSourceUpdateHandler

8 S
{ 
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
public 0
$CustomPathSitemapSourceUpdateHandler 3
(3 4
ISitemapManager4 C
sitemapManagerD R
)R S
{ 	
_sitemapManager 
= 
sitemapManager ,
;, -
} 	
public 
async 
Task 
UpdateSitemapAsync ,
(, - 
SitemapUpdateContext- A
contextB I
)I J
{ 	
var 
sitemaps 
= 
( 
await !
_sitemapManager" 1
.1 2
LoadSitemapsAsync2 C
(C D
)D E
)E F
.F G
WhereG L
(L M
sM N
=>O Q
sR S
.S T
GetTypeT [
([ \
)\ ]
==^ `
typeofa g
(g h
Sitemaph o
)o p
)p q
;q r
if 
( 
! 
sitemaps 
. 
Any 
( 
) 
)  
{ 
return 
; 
} 
foreach 
( 
var 
sitemap  
in! #
sitemaps$ ,
), -
{ 
foreach 
( 
var 
source #
in$ &
sitemap' .
.. /
SitemapSources/ =
.   
Select   
(   
s   
=>    
s  ! "
as  # %#
CustomPathSitemapSource  & =
)  = >
)  > ?
{!! 
if"" 
("" 
source"" 
=="" !
null""" &
)""& '
{## 
continue$$  
;$$  !
}%% 
sitemap'' 
.'' 

Identifier'' &
=''' (
IdGenerator'') 4
.''4 5

GenerateId''5 ?
(''? @
)''@ A
;''A B
}(( 
})) 
await++ 
_sitemapManager++ !
.++! "
UpdateSitemapAsync++" 4
(++4 5
)++5 6
;++6 7
},, 	
}-- 
}.. �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Handlers\DefaultSitemapUpdateHandler.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{ 
public 

class '
DefaultSitemapUpdateHandler ,
:- .!
ISitemapUpdateHandler/ D
{ 
private 
readonly 
IEnumerable $
<$ %%
ISitemapTypeUpdateHandler% >
>> ?&
_sitemapTypeUpdateHandlers@ Z
;Z [
public

 '
DefaultSitemapUpdateHandler

 *
(

* +
IEnumerable

+ 6
<

6 7%
ISitemapTypeUpdateHandler

7 P
>

P Q%
sitemapTypeUpdateHandlers

R k
)

k l
{ 	&
_sitemapTypeUpdateHandlers &
=' (%
sitemapTypeUpdateHandlers) B
;B C
} 	
public 
async 
Task 
UpdateSitemapAsync ,
(, - 
SitemapUpdateContext- A
contextB I
)I J
{ 	
foreach 
( 
var $
sitemapTypeUpdateHandler 1
in2 4&
_sitemapTypeUpdateHandlers5 O
)O P
{ 
await $
sitemapTypeUpdateHandler .
.. /
UpdateSitemapAsync/ A
(A B
contextB I
)I J
;J K
} 
} 	
} 
} �'
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Handlers\SitemapIndexTypeUpdateHandler.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{		 
public

 

class

 )
SitemapIndexTypeUpdateHandler

 .
:

/ 0%
ISitemapTypeUpdateHandler

1 J
{ 
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
public )
SitemapIndexTypeUpdateHandler ,
(, -
ISitemapManager- <
sitemapManager= K
)K L
{ 	
_sitemapManager 
= 
sitemapManager ,
;, -
} 	
public 
async 
Task 
UpdateSitemapAsync ,
(, - 
SitemapUpdateContext- A
contextB I
)I J
{ 	
var 
contentItem 
= 
context %
.% &
UpdateObject& 2
as3 5
ContentItem6 A
;A B
var 
allSitemaps 
= 
await #
_sitemapManager$ 3
.3 4
LoadSitemapsAsync4 E
(E F
)F G
;G H
var 
sitemapIndex 
= 
allSitemaps *
. 
FirstOrDefault 
(  
s  !
=>" $
s% &
.& '
GetType' .
(. /
)/ 0
==1 3
typeof4 :
(: ;
SitemapIndex; G
)G H
)H I
;I J
if 
( 
contentItem 
== 
null #
||$ &
sitemapIndex' 3
==4 6
null7 ;
); <
{ 
return 
; 
} 
var!! 
sitemaps!! 
=!! 
allSitemaps!! &
.!!& '
OfType!!' -
<!!- .
Sitemap!!. 5
>!!5 6
(!!6 7
)!!7 8
;!!8 9
if## 
(## 
!## 
sitemaps## 
.## 
Any## 
(## 
)## 
)##  
{$$ 
return%% 
;%% 
}&& 
var(( 
contentTypeName(( 
=((  !
contentItem((" -
.((- .
ContentType((. 9
;((9 :
foreach** 
(** 
var** 
sitemap**  
in**! #
sitemaps**$ ,
)**, -
{++ 
foreach,, 
(,, 
var,, 
source,, #
in,,$ &
sitemap,,' .
.,,. /
SitemapSources,,/ =
.,,= >
Select,,> D
(,,D E
x,,E F
=>,,G I
x,,J K
as,,L N%
ContentTypesSitemapSource,,O h
),,h i
),,i j
{-- 
if.. 
(.. 
source.. 
==.. !
null.." &
)..& '
{// 
continue00  
;00  !
}11 
if33 
(33 
source33 
.33 
IndexAll33 '
)33' (
{44 
sitemap55 
.55  

Identifier55  *
=55+ ,
IdGenerator55- 8
.558 9

GenerateId559 C
(55C D
)55D E
;55E F
return66 
;66 
}77 
else88 
if88 
(88 
source88 #
.88# $

LimitItems88$ .
&&88/ 1
String882 8
.888 9
Equals889 ?
(88? @
source88@ F
.88F G
LimitedContentType88G Y
.88Y Z
ContentTypeName88Z i
,88i j
contentTypeName88k z
)88z {
)88{ |
{99 
sitemap:: 
.::  

Identifier::  *
=::+ ,
IdGenerator::- 8
.::8 9

GenerateId::9 C
(::C D
)::D E
;::E F
return;; 
;;; 
}<< 
else== 
if== 
(== 
source== #
.==# $
ContentTypes==$ 0
.==0 1
Any==1 4
(==4 5
ct==5 7
=>==8 :
String==; A
.==A B
Equals==B H
(==H I
ct==I K
.==K L
ContentTypeName==L [
,==[ \
contentTypeName==] l
)==l m
)==m n
)==n o
{>> 
sitemap?? 
.??  

Identifier??  *
=??+ ,
IdGenerator??- 8
.??8 9

GenerateId??9 C
(??C D
)??D E
;??E F
return@@ 
;@@ 
}AA 
}BB 
awaitDD 
_sitemapManagerDD %
.DD% &
UpdateSitemapAsyncDD& 8
(DD8 9
)DD9 :
;DD: ;
}EE 
}FF 	
}GG 
}HH �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Handlers\SitemapPartHandler.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{ 
public 

class 
SitemapPartHandler #
:$ %
ContentPartHandler& 8
<8 9
SitemapPart9 D
>D E
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
,

W X
SitemapPart

Y d
part

e i
)

i j
{ 	
return 
context 
. 
ForAsync #
<# $!
SitemapMetadataAspect$ 9
>9 :
(: ;
aspect; A
=>B D
{ 
if 
( 
part 
. !
OverrideSitemapConfig .
). /
{ 
aspect 
. 
ChangeFrequency *
=+ ,
part- 1
.1 2
ChangeFrequency2 A
.A B
ToStringB J
(J K
)K L
;L M
aspect 
. 
Priority #
=$ %
part& *
.* +
Priority+ 3
;3 4
aspect 
. 
Exclude "
=# $
part% )
.) *
Exclude* 1
;1 2
} 
return 
Task 
. 
CompletedTask )
;) *
} 
) 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Handlers\SitemapTypeUpdateHandler.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{ 
public 

class $
SitemapTypeUpdateHandler )
:* +%
ISitemapTypeUpdateHandler, E
{ 
private 
readonly 
IEnumerable $
<$ %'
ISitemapSourceUpdateHandler% @
>@ A(
_sitemapSourceUpdateHandlersB ^
;^ _
public

 $
SitemapTypeUpdateHandler

 '
(

' (
IEnumerable

( 3
<

3 4'
ISitemapSourceUpdateHandler

4 O
>

O P'
sitemapSourceUpdateHandlers

Q l
)

l m
{ 	(
_sitemapSourceUpdateHandlers (
=) *'
sitemapSourceUpdateHandlers+ F
;F G
} 	
public 
async 
Task 
UpdateSitemapAsync ,
(, - 
SitemapUpdateContext- A
contextB I
)I J
{ 	
foreach 
( 
var &
sitemapSourceUpdateHandler 3
in4 6(
_sitemapSourceUpdateHandlers7 S
)S T
{ 
await &
sitemapSourceUpdateHandler 0
.0 1
UpdateSitemapAsync1 C
(C D
contextD K
)K L
;L M
} 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str	 
,  
Name 
=	 

$str 
, 
Description 
= 
$str A
,A B
Dependencies 
= 
new 
[ 
] 
{ 
$str 
, 
} 
, 
Category 
= 
$str #
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 *
,* +
Name 
=	 

$str /
,/ 0
Description 
= 
$str Z
,Z [
Dependencies 
= 
new 
[ 
] 
{ 
$str 
} 
, 
Category 
= 
$str #
) 
] 
[   
assembly   	
:  	 

Feature   
(   
Id!! 
=!! 
$str!!	 '
,!!' (
Name"" 
=""	 

$str"" 
,"" 
Description## 
=## 
$str## J
,##J K
Dependencies$$ 
=$$ 
new$$ 
[$$ 
]$$ 
{%% 
$str&& 
}'' 
,'' 
Category(( 
=(( 
$str(( #
))) 
])) �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Migrations.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private		 
readonly		 %
IContentDefinitionManager		 2%
_contentDefinitionManager		3 L
;		L M
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
$str: G
,G H
builderI P
=>Q S
builderT [
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str	! �
)
� �
)
� �
;
� �
return 
$num 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Models\SitemapDocument.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

class 
SitemapDocument  
:! "
Document# +
{ 
public 
IDictionary 
< 
string !
,! "
SitemapType# .
>. /
Sitemaps0 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L

DictionaryM W
<W X
stringX ^
,^ _
SitemapType` k
>k l
(l m
)m n
;n o
}		 
}

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Models\SitemapIndex.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

class 
SitemapIndex 
: 
SitemapType  +
{ 
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Models\SitemapIndexSource.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

class 
SitemapIndexSource #
:$ %
SitemapSource& 3
{ 
public 
string 
[ 
] 
ContainedSitemapIds +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
Array< A
.A B
EmptyB G
<G H
stringH N
>N O
(O P
)P Q
;Q R
} 
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Models\SitemapPart.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

class 
SitemapPart 
: 
ContentPart *
{		 
public

 
bool

 !
OverrideSitemapConfig

 )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
public 
ChangeFrequency 
ChangeFrequency .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
ChangeFrequency? N
.N O
DailyO T
;T U
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
public 
bool 
Exclude 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Permissions.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
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
ManageSitemaps
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
\ m
)

m n
;

n o
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
{) *
ManageSitemaps+ 9
}: ;
.; <
AsEnumerable< H
(H I
)I J
)J K
;K L
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
{( )
ManageSitemaps* 8
}9 :
} 
} 
; 
} 	
} 
} �4
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Routing\SitemapEntries.cs
	namespace		 	
OrchardCore		
 
.		 
Sitemaps		 
.		 
Routing		 &
{

 
public 

class 
SitemapEntries 
{ 
public 
SitemapEntries 
( 
) 
{ 	
} 	
public 
async 
Task 
< 
( 
bool 
,  
string! '
)' (
>( )&
TryGetSitemapIdByPathAsync* D
(D E
stringE K
pathL P
)P Q
{ 	
var 
document 
= 
await  
GetDocumentAsync! 1
(1 2
)2 3
;3 4
if 
( 
document 
. 

SitemapIds #
.# $
TryGetValue$ /
(/ 0
path0 4
,4 5
out6 9
var: =
	sitemapId> G
)G H
)H I
{ 
return 
( 
true 
, 
	sitemapId '
)' (
;( )
} 
return 
( 
false 
, 
	sitemapId $
)$ %
;% &
} 	
public 
async 
Task 
< 
( 
bool 
,  
string! '
)' (
>( )&
TryGetPathBySitemapIdAsync* D
(D E
stringE K
	sitemapIdL U
)U V
{ 	
var 
document 
= 
await  
GetDocumentAsync! 1
(1 2
)2 3
;3 4
if!! 
(!! 
document!! 
.!! 
SitemapPaths!! %
.!!% &
TryGetValue!!& 1
(!!1 2
	sitemapId!!2 ;
,!!; <
out!!= @
var!!A D
path!!E I
)!!I J
)!!J K
{"" 
return## 
(## 
true## 
,## 
path## "
)##" #
;### $
}$$ 
return&& 
(&& 
false&& 
,&& 
path&& 
)&&  
;&&  !
}'' 	
public)) 
async)) 
Task)) 
BuildEntriesAsync)) +
())+ ,
IEnumerable)), 7
<))7 8
SitemapType))8 C
>))C D
sitemaps))E M
)))M N
{** 	
var++ 
document++ 
=++ 
await++  
LoadDocumentAsync++! 2
(++2 3
)++3 4
;++4 5
BuildEntries,, 
(,, 
document,, !
,,,! "
sitemaps,,# +
),,+ ,
;,,, -
await-- 
DocumentManager-- !
.--! "
UpdateAsync--" -
(--- .
document--. 6
)--6 7
;--7 8
}.. 	
private00 
void00 
BuildEntries00 !
(00! " 
SitemapRouteDocument00" 6
document007 ?
,00? @
IEnumerable00A L
<00L M
SitemapType00M X
>00X Y
sitemaps00Z b
)00b c
{11 	
document22 
.22 

SitemapIds22 
.22  
Clear22  %
(22% &
)22& '
;22' (
document33 
.33 
SitemapPaths33 !
.33! "
Clear33" '
(33' (
)33( )
;33) *
foreach55 
(55 
var55 
sitemap55  
in55! #
sitemaps55$ ,
)55, -
{66 
if77 
(77 
!77 
sitemap77 
.77 
Enabled77 $
)77$ %
{88 
continue99 
;99 
}:: 
document<< 
.<< 

SitemapIds<< #
[<<# $
sitemap<<$ +
.<<+ ,
Path<<, 0
]<<0 1
=<<2 3
sitemap<<4 ;
.<<; <
	SitemapId<<< E
;<<E F
document== 
.== 
SitemapPaths== %
[==% &
sitemap==& -
.==- .
	SitemapId==. 7
]==7 8
===9 :
sitemap==; B
.==B C
Path==C G
;==G H
}>> 
}?? 	
privateDD 
TaskDD 
<DD  
SitemapRouteDocumentDD )
>DD) *
LoadDocumentAsyncDD+ <
(DD< =
)DD= >
=>DD? A
DocumentManagerDDB Q
.DDQ R#
GetOrCreateMutableAsyncDDR i
(DDi j
CreateDocumentAsyncDDj }
)DD} ~
;DD~ 
privateII 
TaskII 
<II  
SitemapRouteDocumentII )
>II) *
GetDocumentAsyncII+ ;
(II; <
)II< =
=>II> @
DocumentManagerIIA P
.IIP Q%
GetOrCreateImmutableAsyncIIQ j
(IIj k
CreateDocumentAsyncIIk ~
)II~ 
;	II �
privateKK 
asyncKK 
TaskKK 
<KK  
SitemapRouteDocumentKK /
>KK/ 0
CreateDocumentAsyncKK1 D
(KKD E
)KKE F
{LL 	
varMM 
sitemapsMM 
=MM 
awaitMM  
SitemapManagerMM! /
.MM/ 0
GetSitemapsAsyncMM0 @
(MM@ A
)MMA B
;MMB C
varOO 
documentOO 
=OO 
newOO  
SitemapRouteDocumentOO 3
(OO3 4
)OO4 5
;OO5 6
BuildEntriesPP 
(PP 
documentPP !
,PP! "
sitemapsPP# +
)PP+ ,
;PP, -
returnRR 
documentRR 
;RR 
}SS 	
privateUU 
staticUU 
ISitemapManagerUU &
SitemapManagerUU' 5
=>UU6 8

ShellScopeUU9 C
.UUC D
ServicesUUD L
.UUL M
GetRequiredServiceUUM _
<UU_ `
ISitemapManagerUU` o
>UUo p
(UUp q
)UUq r
;UUr s
privateWW 
staticWW $
IVolatileDocumentManagerWW /
<WW/ 0 
SitemapRouteDocumentWW0 D
>WWD E
DocumentManagerWWF U
=>XX 

ShellScopeXX 
.XX 
ServicesXX "
.XX" #
GetRequiredServiceXX# 5
<XX5 6$
IVolatileDocumentManagerXX6 N
<XXN O 
SitemapRouteDocumentXXO c
>XXc d
>XXd e
(XXe f
)XXf g
;XXg h
}YY 
}ZZ �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Routing\SitemapRouteDocument.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Routing &
{ 
public 

class  
SitemapRouteDocument %
:& '
Document( 0
{ 
public		 

Dictionary		 
<		 
string		  
,		  !
string		" (
>		( )

SitemapIds		* 4
{		5 6
get		7 :
;		: ;
set		< ?
;		? @
}		A B
=		C D
new		E H

Dictionary		I S
<		S T
string		T Z
,		Z [
string		\ b
>		b c
(		c d
StringComparer		d r
.		r s
OrdinalIgnoreCase			s �
)
		� �
;
		� �
public

 

Dictionary

 
<

 
string

  
,

  !
string

" (
>

( )
SitemapPaths

* 6
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
C D
=

E F
new

G J

Dictionary

K U
<

U V
string

V \
,

\ ]
string

^ d
>

d e
(

e f
)

f g
;

g h
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Routing\SitemapRouteTransformer.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Routing &
{		 
public

 

class

 #
SitemapRouteTransformer

 (
:

) *(
DynamicRouteValueTransformer

+ G
{ 
private 
readonly 
SitemapEntries '
_entries( 0
;0 1
private 
readonly 
SitemapsOptions (
_options) 1
;1 2
public #
SitemapRouteTransformer &
(& '
SitemapEntries' 5
entries6 =
,= >
IOptions? G
<G H
SitemapsOptionsH W
>W X
optionsY `
)` a
{ 	
_entries 
= 
entries 
; 
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
override 
async 
	ValueTask '
<' ( 
RouteValueDictionary( <
>< =
TransformAsync> L
(L M
HttpContextM X
httpContextY d
,d e 
RouteValueDictionaryf z
values	{ �
)
� �
{ 	
var 
path 
= 
values 
[ 
$str '
]' (
as) +
string, 2
;2 3
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
path& *
)* +
)+ ,
{ 
( 
var 
found 
, 
var 
	sitemapId  )
)) *
=+ ,
await- 2
_entries3 ;
.; <&
TryGetSitemapIdByPathAsync< V
(V W
pathW [
)[ \
;\ ]
if 
( 
found 
) 
{ 
var   
routeValues   #
=  $ %
new  & ) 
RouteValueDictionary  * >
(  > ?
_options  ? G
.  G H
GlobalRouteValues  H Y
)  Y Z
{!! 
["" 
_options"" !
.""! "
SitemapIdKey""" .
]"". /
=""0 1
	sitemapId""2 ;
}## 
;## 
return%% 
routeValues%% &
;%%& '
}&& 
}'' 
return)) 
null)) 
;)) 
}** 	
}++ 
},, �6
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Routing\SitemapValuesAddressScheme.cs
	namespace

 	
OrchardCore


 
.

 
Sitemaps

 
.

 
Routing

 &
{ 
internal 
sealed 
class &
SitemapValuesAddressScheme 4
:5 6*
IShellRouteValuesAddressScheme7 U
{ 
private 
readonly 
SitemapEntries '
_entries( 0
;0 1
private 
readonly 
SitemapsOptions (
_options) 1
;1 2
public &
SitemapValuesAddressScheme )
() *
SitemapEntries* 8
entries9 @
,@ A
IOptionsB J
<J K
SitemapsOptionsK Z
>Z [
options\ c
)c d
{ 	
_entries 
= 
entries 
; 
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
IEnumerable 
< 
Endpoint #
># $
FindEndpoints% 2
(2 3
RouteValuesAddress3 E
addressF M
)M N
{ 	
if 
( 
address 
. 
AmbientValues %
==& (
null) -
||. 0
address1 8
.8 9
ExplicitValues9 G
==H J
nullK O
)O P
{ 
return 

Enumerable !
.! "
Empty" '
<' (
Endpoint( 0
>0 1
(1 2
)2 3
;3 4
} 
string 
	sitemapId 
= 
address &
.& '
ExplicitValues' 5
[5 6
_options6 >
.> ?
SitemapIdKey? K
]K L
?L M
.M N
ToStringN V
(V W
)W X
;X Y
if   
(   
string   
.   
IsNullOrEmpty   $
(  $ %
	sitemapId  % .
)  . /
)  / 0
{!! 
return"" 

Enumerable"" !
.""! "
Empty""" '
<""' (
Endpoint""( 0
>""0 1
(""1 2
)""2 3
;""3 4
}## 
(%% 
var%% 
found%% 
,%% 
var%% 
path%%  
)%%  !
=%%" #
_entries%%$ ,
.%%, -&
TryGetPathBySitemapIdAsync%%- G
(%%G H
	sitemapId%%H Q
)%%Q R
.%%R S

GetAwaiter%%S ]
(%%] ^
)%%^ _
.%%_ `
	GetResult%%` i
(%%i j
)%%j k
;%%k l
if'' 
('' 
!'' 
found'' 
)'' 
{(( 
return)) 

Enumerable)) !
.))! "
Empty))" '
<))' (
Endpoint))( 0
>))0 1
())1 2
)))2 3
;))3 4
}** 
if,, 
(,, 
Match,, 
(,, 
address,, 
.,, 
ExplicitValues,, ,
),,, -
),,- .
{-- 
var.. 
routeValues.. 
=..  !
new.." % 
RouteValueDictionary..& :
(..: ;
address..; B
...B C
ExplicitValues..C Q
)..Q R
;..R S
if00 
(00 
address00 
.00 
ExplicitValues00 *
.00* +
Count00+ 0
>001 2
_options003 ;
.00; <
GlobalRouteValues00< M
.00M N
Count00N S
+00T U
$num00V W
)00W X
{11 
foreach22 
(22 
var22  
entry22! &
in22' )
address22* 1
.221 2
ExplicitValues222 @
)22@ A
{33 
if44 
(44 
String44 "
.44" #
Equals44# )
(44) *
entry44* /
.44/ 0
Key440 3
,443 4
_options445 =
.44= >
SitemapIdKey44> J
,44J K
StringComparison44L \
.44\ ]
OrdinalIgnoreCase44] n
)44n o
)44o p
{55 
continue66 $
;66$ %
}77 
if99 
(99 
!99 
_options99 %
.99% &
GlobalRouteValues99& 7
.997 8
ContainsKey998 C
(99C D
entry99D I
.99I J
Key99J M
)99M N
)99N O
{:: 
routeValues;; '
.;;' (
Remove;;( .
(;;. /
entry;;/ 4
.;;4 5
Key;;5 8
);;8 9
;;;9 :
}<< 
}== 
}>> 
var@@ 
endpoint@@ 
=@@ 
new@@ "
RouteEndpoint@@# 0
(AA 
cBB 
=>BB 
nullBB 
,BB 
RoutePatternFactoryCC '
.CC' (
ParseCC( -
(CC- .
pathCC. 2
,CC2 3
routeValuesCC4 ?
,CC? @
nullCCA E
)CCE F
,CCF G
$numDD 
,DD 
nullEE 
,EE 
nullFF 
)GG 
;GG 
returnII 
newII 
[II 
]II 
{II 
endpointII '
}II( )
;II) *
}JJ 
returnLL 

EnumerableLL 
.LL 
EmptyLL #
<LL# $
EndpointLL$ ,
>LL, -
(LL- .
)LL. /
;LL/ 0
}MM 	
privateOO 
boolOO 
MatchOO 
(OO  
RouteValueDictionaryOO /
explicitValuesOO0 >
)OO> ?
{PP 	
foreachQQ 
(QQ 
varQQ 
entryQQ 
inQQ !
_optionsQQ" *
.QQ* +
GlobalRouteValuesQQ+ <
)QQ< =
{RR 
ifSS 
(SS 
!SS 
StringSS 
.SS 
EqualsSS "
(SS" #
explicitValuesSS# 1
[SS1 2
entrySS2 7
.SS7 8
KeySS8 ;
]SS; <
?SS< =
.SS= >
ToStringSS> F
(SSF G
)SSG H
,SSH I
entrySSJ O
.SSO P
ValueSSP U
?SSU V
.SSV W
ToStringSSW _
(SS_ `
)SS` a
,SSa b
StringComparisonSSc s
.SSs t
OrdinalIgnoreCase	SSt �
)
SS� �
)
SS� �
{TT 
returnUU 
falseUU  
;UU  !
}VV 
}WW 
returnYY 
trueYY 
;YY 
}ZZ 	
}[[ 
}\\ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Services\DefaultRouteableContentTypeCoordinator.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{		 
public

 

class

 2
&DefaultRouteableContentTypeCoordinator

 7
:

8 9,
 IRouteableContentTypeCoordinator

: Z
{ 
private 
readonly 
IEnumerable $
<$ %)
IRouteableContentTypeProvider% B
>B C*
_routeableContentTypeProvidersD b
;b c
public 2
&DefaultRouteableContentTypeCoordinator 5
(5 6
IEnumerable6 A
<A B)
IRouteableContentTypeProviderB _
>_ `)
routeableContentTypeProvidersa ~
)~ 
{ 	*
_routeableContentTypeProviders *
=+ ,)
routeableContentTypeProviders- J
;J K
} 	
public 
async 
Task 
< 
string  
>  !
GetRouteAsync" /
(/ 0!
SitemapBuilderContext0 E
contextF M
,M N
ContentItemO Z
contentItem[ f
)f g
{ 	
foreach 
( 
var 
rctp 
in  *
_routeableContentTypeProviders! ?
)? @
{ 
var 
result 
= 
await "
rctp# '
.' (
GetRouteAsync( 5
(5 6
context6 =
,= >
contentItem? J
)J K
;K L
if 
( 
result 
!= 
null "
)" #
{ 
return 
result !
;! "
} 
} 
return 
null 
; 
} 	
public!! 
IEnumerable!! 
<!! !
ContentTypeDefinition!! 0
>!!0 1'
ListRoutableTypeDefinitions!!2 M
(!!M N
)!!N O
{"" 	
return## *
_routeableContentTypeProviders## 1
.##1 2

SelectMany##2 <
(##< =
rctd##= A
=>##B D
rctd##E I
.##I J'
ListRoutableTypeDefinitions##J e
(##e f
)##f g
)##g h
;##h i
}$$ 	
}%% 
}&& �#
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Services\RazorPagesContentTypeProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{ 
public 

class )
RazorPagesContentTypeProvider .
:/ 0)
IRouteableContentTypeProvider1 N
{ 
private 
readonly %
SitemapsRazorPagesOptions 2
_options3 ;
;; <
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public )
RazorPagesContentTypeProvider ,
(, -
IOptions 
< %
SitemapsRazorPagesOptions .
>. /
options0 7
,7 8%
IContentDefinitionManager %$
contentDefinitionManager& >
) 
{ 	
_options 
= 
options 
. 
Value $
;$ %%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
Task 
< 
string 
> 
GetRouteAsync )
() *!
SitemapBuilderContext* ?
context@ G
,G H
ContentItemI T
contentItemU `
)` a
{ 	
var 
option 
= 
_options !
.! "
ContentTypeOptions" 4
.4 5
FirstOrDefault5 C
(C D
oD E
=>F H
oI J
.J K
ContentTypeK V
==W Y
contentItemZ e
.e f
ContentTypef q
)q r
;r s
if 
( 
option 
!= 
null 
&& !
option" (
.( )
RouteValues) 4
!=5 7
null8 <
)< =
{   
var!! 
pageName!! 
=!! 
String!! %
.!!% &
IsNullOrEmpty!!& 3
(!!3 4
option!!4 :
.!!: ;
PageName!!; C
)!!C D
?!!E F
option!!G M
.!!M N
ContentType!!N Y
:!!Z [
option!!\ b
.!!b c
PageName!!c k
;!!k l
if$$ 
($$ 
!$$ 
pageName$$ 
.$$ 

StartsWith$$ (
($$( )
$char$$) ,
)$$, -
)$$- .
{%% 
pageName&& 
=&& 
$char&& "
+&&# $
pageName&&% -
;&&- .
}'' 
var)) 
url)) 
=)) 
context)) !
.))! "

HostPrefix))" ,
+))- .
context))/ 6
.))6 7
	UrlHelper))7 @
.))@ A
Page))A E
())E F
pageName))F N
,))N O
option))P V
.))V W
RouteValues))W b
.))b c
Invoke))c i
())i j
contentItem))j u
)))u v
)))v w
;))w x
return** 
Task** 
.** 

FromResult** &
(**& '
url**' *
)*** +
;**+ ,
}++ 
return-- 
Task-- 
.-- 

FromResult-- "
<--" #
string--# )
>--) *
(--* +
null--+ /
)--/ 0
;--0 1
}.. 	
public00 
IEnumerable00 
<00 !
ContentTypeDefinition00 0
>000 1'
ListRoutableTypeDefinitions002 M
(00M N
)00N O
{11 	
var22 
ctds22 
=22 %
_contentDefinitionManager22 0
.220 1
ListTypeDefinitions221 D
(22D E
)22E F
;22F G
var33 
rctds33 
=33 
ctds33 
.33 
Where33 "
(33" #
ctd33# &
=>33' )
_options33* 2
.332 3
ContentTypeOptions333 E
.33E F
Any33F I
(33I J
o33J K
=>33L N
o33O P
.33P Q
ContentType33Q \
==33] _
ctd33` c
.33c d
Name33d h
)33h i
)33i j
;33j k
return44 
rctds44 
;44 
}55 	
}66 
}77 �;
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Services\SitemapHelperService.cs
	namespace

 	
OrchardCore


 
.

 
Sitemaps

 
.

 
Services

 '
{ 
public 

class  
SitemapHelperService %
:& '!
ISitemapHelperService( =
{ 
public 
static 
char 
[ 
] $
InvalidCharactersForPath 5
=6 7
$str8 Q
.Q R
ToCharArrayR ]
(] ^
)^ _
;_ `
public 
const 
int 
MaxPathLength &
=' (
$num) -
;- .
public 
const 
string 
Prefix "
=# $
$str% '
;' (
public 
const 
string 
Path  
=! "
$str# )
;) *
private 
readonly 
ISlugService %
_slugService& 2
;2 3
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public  
SitemapHelperService #
(# $
ISlugService 
slugService $
,$ %
ISitemapManager 
sitemapManager *
,* +
IStringLocalizer 
<  
SitemapHelperService 1
>1 2
stringLocalizer3 B
) 
{ 	
_slugService 
= 
slugService &
;& '
_sitemapManager 
= 
sitemapManager ,
;, -
S   
=   
stringLocalizer   
;    
}!! 	
public## 
async## 
Task## 
ValidatePathAsync## +
(##+ ,
string##, 2
path##3 7
,##7 8
IUpdateModel##9 E
updater##F M
,##M N
string##O U
	sitemapId##V _
=##` a
null##b f
)##f g
{$$ 	
if&& 
(&& 
path&& 
==&& 
$str&& 
)&& 
{'' 
updater(( 
.(( 

ModelState(( "
.((" #
AddModelError((# 0
(((0 1
Prefix((1 7
,((7 8
Path((9 =
,((= >
S((? @
[((@ A
$str((A n
]((n o
)((o p
;((p q
})) 
if++ 
(++ 
path++ 
.++ 

IndexOfAny++ 
(++  $
InvalidCharactersForPath++  8
)++8 9
>++: ;
-++< =
$num++= >
||++? A
path++B F
.++F G
IndexOf++G N
(++N O
$char++O R
)++R S
>++T U
-++V W
$num++W X
)++X Y
{,, 
var-- '
invalidCharactersForMessage-- /
=--0 1
string--2 8
.--8 9
Join--9 =
(--= >
$str--> B
,--B C$
InvalidCharactersForPath--D \
.--\ ]
Select--] c
(--c d
c--d e
=>--f h
$"--i k
\"--k m
{--m n
c--n o
}--o p
\"--p r
"--r s
)--s t
)--t u
;--u v
updater.. 
... 

ModelState.. "
..." #
AddModelError..# 0
(..0 1
Prefix..1 7
,..7 8
Path..9 =
,..= >
S..? @
[..@ A
$str	..A �
,
..� �)
invalidCharactersForMessage
..� �
]
..� �
)
..� �
;
..� �
}// 
if22 
(22 
!22 
path22 
.22 
EndsWith22 
(22 
Sitemap22 &
.22& '
PathExtension22' 4
)224 5
)225 6
{33 
updater44 
.44 

ModelState44 "
.44" #
AddModelError44# 0
(440 1
Prefix441 7
,447 8
Path449 =
,44= >
S44? @
[44@ A
$str44A d
,44d e
Sitemap44f m
.44m n
PathExtension44n {
]44{ |
)44| }
;44} ~
}55 
if77 
(77 
path77 
.77 
Length77 
>77 
MaxPathLength77 +
)77+ ,
{88 
updater99 
.99 

ModelState99 "
.99" #
AddModelError99# 0
(990 1
Prefix991 7
,997 8
Path999 =
,99= >
S99? @
[99@ A
$str	99A �
,
99� �
MaxPathLength
99� �
]
99� �
)
99� �
;
99� �
}:: 
var<< 
routeExists<< 
=<< 
false<< #
;<<# $
if== 
(== 
string== 
.== 
IsNullOrEmpty== $
(==$ %
	sitemapId==% .
)==. /
)==/ 0
{>> 
routeExists?? 
=?? 
(?? 
await?? $
_sitemapManager??% 4
.??4 5
GetSitemapsAsync??5 E
(??E F
)??F G
)??G H
.@@ 
Any@@ 
(@@ 
p@@ 
=>@@ 
String@@ $
.@@$ %
Equals@@% +
(@@+ ,
p@@, -
.@@- .
Path@@. 2
,@@2 3
path@@4 8
.@@8 9
	TrimStart@@9 B
(@@B C
$char@@C F
)@@F G
,@@G H
StringComparison@@I Y
.@@Y Z
OrdinalIgnoreCase@@Z k
)@@k l
)@@l m
;@@m n
}AA 
elseBB 
{CC 
routeExistsDD 
=DD 
(DD 
awaitDD $
_sitemapManagerDD% 4
.DD4 5
GetSitemapsAsyncDD5 E
(DDE F
)DDF G
)DDG H
.EE 
AnyEE 
(EE 
pEE 
=>EE 
pEE 
.EE  
	SitemapIdEE  )
!=EE* ,
	sitemapIdEE- 6
&&EE7 9
StringEE: @
.EE@ A
EqualsEEA G
(EEG H
pEEH I
.EEI J
PathEEJ N
,EEN O
pathEEP T
.EET U
	TrimStartEEU ^
(EE^ _
$charEE_ b
)EEb c
,EEc d
StringComparisonEEe u
.EEu v
OrdinalIgnoreCase	EEv �
)
EE� �
)
EE� �
;
EE� �
}FF 
ifHH 
(HH 
routeExistsHH 
)HH 
{II 
updaterJJ 
.JJ 

ModelStateJJ "
.JJ" #
AddModelErrorJJ# 0
(JJ0 1
PrefixJJ1 7
,JJ7 8
PathJJ9 =
,JJ= >
SJJ? @
[JJ@ A
$strJJA d
]JJd e
)JJe f
;JJf g
}KK 
}LL 	
publicNN 
stringNN 
GetSitemapSlugNN $
(NN$ %
stringNN% +
nameNN, 0
)NN0 1
{OO 	
returnPP 
_slugServicePP 
.PP  
SlugifyPP  '
(PP' (
namePP( ,
)PP, -
+PP. /
SitemapPP0 7
.PP7 8
PathExtensionPP8 E
;PPE F
}QQ 	
}SS 
}TT �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Services\SitemapIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{ 
public 

class 
SitemapIdGenerator #
:$ %
ISitemapIdGenerator& 9
{ 
private 
readonly 
IIdGenerator %
_idGenerator& 2
;2 3
public		 
SitemapIdGenerator		 !
(		! "
IIdGenerator		" .
idGenerator		/ :
)		: ;
{

 	
_idGenerator 
= 
idGenerator &
;& '
} 	
public 
string 
GenerateUniqueId &
(& '
)' (
{ 	
return 
_idGenerator 
.  
GenerateUniqueId  0
(0 1
)1 2
;2 3
} 	
} 
} �8
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Services\SitemapManager.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{		 
public

 

class

 
SitemapManager

 
:

  !
ISitemapManager

" 1
{ 
private 
readonly 
IDocumentManager )
<) *
SitemapDocument* 9
>9 :
_documentManager; K
;K L
private 
readonly 
SitemapEntries '
_sitemapEntries( 7
;7 8
public 
SitemapManager 
( 
IDocumentManager .
<. /
SitemapDocument/ >
>> ?
documentManager@ O
,O P
SitemapEntriesQ _
sitemapEntries` n
) 
{ 	
_documentManager 
= 
documentManager .
;. /
_sitemapEntries 
= 
sitemapEntries ,
;, -
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
SitemapType& 1
>1 2
>2 3
LoadSitemapsAsync4 E
(E F
)F G
{ 	
return 
( 
await 
LoadDocumentAsync +
(+ ,
), -
)- .
.. /
Sitemaps/ 7
.7 8
Values8 >
.> ?
ToArray? F
(F G
)G H
;H I
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
SitemapType& 1
>1 2
>2 3
GetSitemapsAsync4 D
(D E
)E F
{ 	
return 
( 
await 
GetDocumentAsync *
(* +
)+ ,
), -
.- .
Sitemaps. 6
.6 7
Values7 =
.= >
ToArray> E
(E F
)F G
;G H
} 	
public   
async   
Task   
<   
SitemapType   %
>  % &
LoadSitemapAsync  ' 7
(  7 8
string  8 >
	sitemapId  ? H
)  H I
{!! 	
var"" 
document"" 
="" 
await""  
LoadDocumentAsync""! 2
(""2 3
)""3 4
;""4 5
if## 
(## 
document## 
.## 
Sitemaps## !
.##! "
TryGetValue##" -
(##- .
	sitemapId##. 7
,##7 8
out##9 <
var##= @
sitemap##A H
)##H I
)##I J
{$$ 
return%% 
sitemap%% 
;%% 
}&& 
return(( 
null(( 
;(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
SitemapType++ %
>++% &
GetSitemapAsync++' 6
(++6 7
string++7 =
	sitemapId++> G
)++G H
{,, 	
var-- 
document-- 
=-- 
await--  
GetDocumentAsync--! 1
(--1 2
)--2 3
;--3 4
if.. 
(.. 
document.. 
... 
Sitemaps.. !
...! "
TryGetValue.." -
(..- .
	sitemapId... 7
,..7 8
out..9 <
var..= @
sitemap..A H
)..H I
)..I J
{// 
return00 
sitemap00 
;00 
}11 
return33 
null33 
;33 
}44 	
public66 
async66 
Task66 
DeleteSitemapAsync66 ,
(66, -
string66- 3
	sitemapId664 =
)66= >
{77 	
var88 
existing88 
=88 
await88  
LoadDocumentAsync88! 2
(882 3
)883 4
;884 5
existing99 
.99 
Sitemaps99 
.99 
Remove99 $
(99$ %
	sitemapId99% .
)99. /
;99/ 0
await;; 
_documentManager;; "
.;;" #
UpdateAsync;;# .
(;;. /
existing;;/ 7
);;7 8
;;;8 9
await<< 
_sitemapEntries<< !
.<<! "
BuildEntriesAsync<<" 3
(<<3 4
existing<<4 <
.<<< =
Sitemaps<<= E
.<<E F
Values<<F L
)<<L M
;<<M N
}== 	
public?? 
async?? 
Task?? 
UpdateSitemapAsync?? ,
(??, -
SitemapType??- 8
sitemap??9 @
)??@ A
{@@ 	
varAA 
existingAA 
=AA 
awaitAA  
LoadDocumentAsyncAA! 2
(AA2 3
)AA3 4
;AA4 5
existingCC 
.CC 
SitemapsCC 
[CC 
sitemapCC %
.CC% &
	SitemapIdCC& /
]CC/ 0
=CC1 2
sitemapCC3 :
;CC: ;
sitemapDD 
.DD 

IdentifierDD 
=DD  
IdGeneratorDD! ,
.DD, -

GenerateIdDD- 7
(DD7 8
)DD8 9
;DD9 :
awaitFF 
_documentManagerFF "
.FF" #
UpdateAsyncFF# .
(FF. /
existingFF/ 7
)FF7 8
;FF8 9
awaitGG 
_sitemapEntriesGG !
.GG! "
BuildEntriesAsyncGG" 3
(GG3 4
existingGG4 <
.GG< =
SitemapsGG= E
.GGE F
ValuesGGF L
)GGL M
;GGM N
}HH 	
publicJJ 
asyncJJ 
TaskJJ 
UpdateSitemapAsyncJJ ,
(JJ, -
)JJ- .
{KK 	
varLL 
existingLL 
=LL 
awaitLL  
LoadDocumentAsyncLL! 2
(LL2 3
)LL3 4
;LL4 5
awaitMM 
_documentManagerMM "
.MM" #
UpdateAsyncMM# .
(MM. /
existingMM/ 7
)MM7 8
;MM8 9
awaitNN 
_sitemapEntriesNN !
.NN! "
BuildEntriesAsyncNN" 3
(NN3 4
existingNN4 <
.NN< =
SitemapsNN= E
.NNE F
ValuesNNF L
)NNL M
;NNM N
}OO 	
privateTT 
TaskTT 
<TT 
SitemapDocumentTT $
>TT$ %
LoadDocumentAsyncTT& 7
(TT7 8
)TT8 9
=>TT: <
_documentManagerTT= M
.TTM N#
GetOrCreateMutableAsyncTTN e
(TTe f
)TTf g
;TTg h
privateYY 
TaskYY 
<YY 
SitemapDocumentYY $
>YY$ %
GetDocumentAsyncYY& 6
(YY6 7
)YY7 8
=>YY9 ;
_documentManagerYY< L
.YYL M%
GetOrCreateImmutableAsyncYYM f
(YYf g
)YYg h
;YYh i
}ZZ 
}[[ ��
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\Startup.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private   
readonly   
AdminOptions   %
_adminOptions  & 3
;  3 4
public"" 
Startup"" 
("" 
IOptions"" 
<""  
AdminOptions""  ,
>"", -
adminOptions"". :
)"": ;
{## 	
_adminOptions$$ 
=$$ 
adminOptions$$ (
.$$( )
Value$$) .
;$$. /
}%% 	
public'' 
override'' 
void'' 
ConfigureServices'' .
(''. /
IServiceCollection''/ A
services''B J
)''J K
{(( 	
services)) 
.)) 
	AddScoped)) 
<)) 
IDataMigration)) -
,))- .

Migrations))/ 9
>))9 :
()): ;
))); <
;))< =
services** 
.** 
	AddScoped** 
<** 
INavigationProvider** 2
,**2 3
	AdminMenu**4 =
>**= >
(**> ?
)**? @
;**@ A
services++ 
.++ 
	AddScoped++ 
<++ 
IPermissionProvider++ 2
,++2 3
Permissions++4 ?
>++? @
(++@ A
)++A B
;++B C
services,, 
.,, 
AddIdGeneration,, $
(,,$ %
),,% &
;,,& '
services.. 
... 
	Configure.. 
<.. 
SitemapsOptions.. .
>... /
(../ 0
options..0 7
=>..8 :
{// 
if00 
(00 
options00 
.00 
GlobalRouteValues00 -
.00- .
Count00. 3
==004 6
$num007 8
)008 9
{11 
options22 
.22 
GlobalRouteValues22 -
=22. /
new220 3 
RouteValueDictionary224 H
{33 
{44 
$str44 
,44  
$str44! 7
}447 8
,448 9
{55 
$str55 %
,55% &
$str55' 0
}550 1
,551 2
{66 
$str66 !
,66! "
$str66# *
}66* +
}77 
;77 
options99 
.99 
SitemapIdKey99 (
=99) *
$str99+ 6
;996 7
}:: 
};; 
);; 
;;; 
services== 
.== 
AddSingleton== !
<==! "*
IShellRouteValuesAddressScheme==" @
,==@ A&
SitemapValuesAddressScheme==B \
>==\ ]
(==] ^
)==^ _
;==_ `
services>> 
.>> 
AddSingleton>> !
<>>! "#
SitemapRouteTransformer>>" 9
>>>9 :
(>>: ;
)>>; <
;>>< =
services?? 
.?? 
AddSingleton?? !
<??! "
SitemapEntries??" 0
>??0 1
(??1 2
)??2 3
;??3 4
servicesAA 
.AA 
	AddScopedAA 
<AA 
ISitemapIdGeneratorAA 2
,AA2 3
SitemapIdGeneratorAA4 F
>AAF G
(AAG H
)AAH I
;AAI J
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
servicesCC 
.CC 
	AddScopedCC 
<CC 
ISitemapManagerCC .
,CC. /
SitemapManagerCC0 >
>CC> ?
(CC? @
)CC@ A
;CCA B
servicesDD 
.DD 
	AddScopedDD 
<DD !
ISitemapHelperServiceDD 4
,DD4 5 
SitemapHelperServiceDD6 J
>DDJ K
(DDK L
)DDL M
;DDM N
servicesEE 
.EE 
	AddScopedEE 
<EE 
IDisplayManagerEE .
<EE. /
SitemapSourceEE/ <
>EE< =
,EE= >
DisplayManagerEE? M
<EEM N
SitemapSourceEEN [
>EE[ \
>EE\ ]
(EE] ^
)EE^ _
;EE_ `
servicesFF 
.FF 
	AddScopedFF 
<FF 
ISitemapBuilderFF .
,FF. /!
DefaultSitemapBuilderFF0 E
>FFE F
(FFF G
)FFG H
;FFH I
servicesGG 
.GG 
	AddScopedGG 
<GG 
ISitemapTypeBuilderGG 2
,GG2 3
SitemapTypeBuilderGG4 F
>GGF G
(GGG H
)GGH I
;GGI J
servicesHH 
.HH 
	AddScopedHH 
<HH !
ISitemapCacheProviderHH 4
,HH4 5'
DefaultSitemapCacheProviderHH6 Q
>HHQ R
(HHR S
)HHS T
;HHT U
servicesII 
.II 
	AddScopedII 
<II !
ISitemapUpdateHandlerII 4
,II4 5'
DefaultSitemapUpdateHandlerII6 Q
>IIQ R
(IIR S
)IIS T
;IIT U
servicesJJ 
.JJ 
	AddScopedJJ 
<JJ %
ISitemapTypeUpdateHandlerJJ 8
,JJ8 9$
SitemapTypeUpdateHandlerJJ: R
>JJR S
(JJS T
)JJT U
;JJU V
servicesKK 
.KK 
	AddScopedKK 
<KK 
ISitemapTypeBuilderKK 2
,KK2 3#
SitemapIndexTypeBuilderKK4 K
>KKK L
(KKL M
)KKM N
;KKN O
servicesLL 
.LL 
	AddScopedLL 
<LL %
ISitemapTypeUpdateHandlerLL 8
,LL8 9)
SitemapIndexTypeUpdateHandlerLL: W
>LLW X
(LLX Y
)LLY Z
;LLZ [
servicesMM 
.MM 
	AddScopedMM 
<MM (
ISitemapModifiedDateProviderMM ;
,MM; <.
"DefaultSitemapModifiedDateProviderMM= _
>MM_ `
(MM` a
)MMa b
;MMb c
servicesNN 
.NN 
	AddScopedNN 
<NN ,
 IRouteableContentTypeCoordinatorNN ?
,NN? @2
&DefaultRouteableContentTypeCoordinatorNNA g
>NNg h
(NNh i
)NNi j
;NNj k
servicesQQ 
.QQ 
AddContentPartQQ #
<QQ# $
SitemapPartQQ$ /
>QQ/ 0
(QQ0 1
)QQ1 2
.RR 
UseDisplayDriverRR !
<RR! "$
SitemapPartDisplayDriverRR" :
>RR: ;
(RR; <
)RR< =
.SS 

AddHandlerSS 
<SS 
SitemapPartHandlerSS .
>SS. /
(SS/ 0
)SS0 1
;SS1 2
servicesVV 
.VV 
	AddScopedVV 
<VV !
ISitemapSourceBuilderVV 4
,VV4 5*
CustomPathSitemapSourceBuilderVV6 T
>VVT U
(VVU V
)VVV W
;VVW X
servicesWW 
.WW 
	AddScopedWW 
<WW '
ISitemapSourceUpdateHandlerWW :
,WW: ;0
$CustomPathSitemapSourceUpdateHandlerWW< `
>WW` a
(WWa b
)WWb c
;WWc d
servicesXX 
.XX 
	AddScopedXX 
<XX .
"ISitemapSourceModifiedDateProviderXX A
,XXA B7
+CustomPathSitemapSourceModifiedDateProviderXXC n
>XXn o
(XXo p
)XXp q
;XXq r
servicesYY 
.YY 
	AddScopedYY 
<YY 
IDisplayDriverYY -
<YY- .
SitemapSourceYY. ;
>YY; <
,YY< =)
CustomPathSitemapSourceDriverYY> [
>YY[ \
(YY\ ]
)YY] ^
;YY^ _
servicesZZ 
.ZZ 
	AddScopedZZ 
<ZZ !
ISitemapSourceFactoryZZ 4
,ZZ4 5 
SitemapSourceFactoryZZ6 J
<ZZJ K#
CustomPathSitemapSourceZZK b
>ZZb c
>ZZc d
(ZZd e
)ZZe f
;ZZf g
}[[ 	
public]] 
override]] 
void]] 
	Configure]] &
(]]& '
IApplicationBuilder]]' :
app]]; >
,]]> ?!
IEndpointRouteBuilder]]@ U
routes]]V \
,]]\ ]
IServiceProvider]]^ n
serviceProvider]]o ~
)]]~ 
{^^ 	
var__ 
adminControllerName__ #
=__$ %
typeof__& ,
(__, -
AdminController__- <
)__< =
.__= >
ControllerName__> L
(__L M
)__M N
;__N O
routesaa 
.aa "
MapAreaControllerRouteaa )
(aa) *
namebb 
:bb 
$strbb $
,bb$ %
areaNamecc 
:cc 
$strcc 0
,cc0 1
patterndd 
:dd 
_adminOptionsdd &
.dd& '
AdminUrlPrefixdd' 5
+dd6 7
$strdd8 H
,ddH I
defaultsee 
:ee 
newee 
{ee 

controlleree  *
=ee+ ,
adminControllerNameee- @
,ee@ A
actioneeB H
=eeI J
nameofeeK Q
(eeQ R
AdminControllereeR a
.eea b
Listeeb f
)eef g
}eeh i
)ff 
;ff 
routeshh 
.hh "
MapAreaControllerRoutehh )
(hh) *
nameii 
:ii 
$strii '
,ii' (
areaNamejj 
:jj 
$strjj 0
,jj0 1
patternkk 
:kk 
_adminOptionskk &
.kk& '
AdminUrlPrefixkk' 5
+kk6 7
$strkk8 P
,kkP Q
defaultsll 
:ll 
newll 
{ll 

controllerll  *
=ll+ ,
adminControllerNamell- @
,ll@ A
actionllB H
=llI J
nameofllK Q
(llQ R
AdminControllerllR a
.lla b
Displayllb i
)lli j
}llk l
)mm 
;mm 
routesoo 
.oo "
MapAreaControllerRouteoo )
(oo) *
namepp 
:pp 
$strpp &
,pp& '
areaNameqq 
:qq 
$strqq 0
,qq0 1
patternrr 
:rr 
_adminOptionsrr &
.rr& '
AdminUrlPrefixrr' 5
+rr6 7
$strrr8 J
,rrJ K
defaultsss 
:ss 
newss 
{ss 

controllerss  *
=ss+ ,
adminControllerNamess- @
,ss@ A
actionssB H
=ssI J
nameofssK Q
(ssQ R
AdminControllerssR a
.ssa b
Createssb h
)ssh i
}ssj k
)tt 
;tt 
routesvv 
.vv "
MapAreaControllerRoutevv )
(vv) *
nameww 
:ww 
$strww $
,ww$ %
areaNamexx 
:xx 
$strxx 0
,xx0 1
patternyy 
:yy 
_adminOptionsyy &
.yy& '
AdminUrlPrefixyy' 5
+yy6 7
$stryy8 T
,yyT U
defaultszz 
:zz 
newzz 
{zz 

controllerzz  *
=zz+ ,
adminControllerNamezz- @
,zz@ A
actionzzB H
=zzI J
nameofzzK Q
(zzQ R
AdminControllerzzR a
.zza b
Editzzb f
)zzf g
}zzh i
){{ 
;{{ 
routes}} 
.}} "
MapAreaControllerRoute}} )
(}}) *
name~~ 
:~~ 
$str~~ &
,~~& '
areaName 
: 
$str 0
,0 1
pattern
�� 
:
�� 
_adminOptions
�� &
.
��& '
AdminUrlPrefix
��' 5
+
��6 7
$str
��8 V
,
��V W
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,!
adminControllerName
��- @
,
��@ A
action
��B H
=
��I J
nameof
��K Q
(
��Q R
AdminController
��R a
.
��a b
Delete
��b h
)
��h i
}
��j k
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� &
,
��& '
areaName
�� 
:
�� 
$str
�� 0
,
��0 1
pattern
�� 
:
�� 
_adminOptions
�� &
.
��& '
AdminUrlPrefix
��' 5
+
��6 7
$str
��8 V
,
��V W
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,!
adminControllerName
��- @
,
��@ A
action
��B H
=
��I J
nameof
��K Q
(
��Q R
AdminController
��R a
.
��a b
Toggle
��b h
)
��h i
}
��j k
)
�� 
;
�� 
var
�� $
sitemapIndexController
�� &
=
��' (
typeof
��) /
(
��/ 0$
SitemapIndexController
��0 F
)
��F G
.
��G H
ControllerName
��H V
(
��V W
)
��W X
;
��X Y
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� +
,
��+ ,
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 O
,
��O P
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -$
sitemapIndexController
��. D
,
��D E
action
��F L
=
��M N
nameof
��O U
(
��U V$
SitemapIndexController
��V l
.
��l m
List
��m q
)
��q r
}
��s t
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� -
,
��- .
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 Q
,
��Q R
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -$
sitemapIndexController
��. D
,
��D E
action
��F L
=
��M N
nameof
��O U
(
��U V$
SitemapIndexController
��V l
.
��l m
Create
��m s
)
��s t
}
��u v
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� +
,
��+ ,
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 [
,
��[ \
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -$
sitemapIndexController
��. D
,
��D E
action
��F L
=
��M N
nameof
��O U
(
��U V$
SitemapIndexController
��V l
.
��l m
Edit
��m q
)
��q r
}
��s t
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� -
,
��- .
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 ]
,
��] ^
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -$
sitemapIndexController
��. D
,
��D E
action
��F L
=
��M N
nameof
��O U
(
��U V$
SitemapIndexController
��V l
.
��l m
Delete
��m s
)
��s t
}
��u v
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� -
,
��- .
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 ]
,
��] ^
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -$
sitemapIndexController
��. D
,
��D E
action
��F L
=
��M N
nameof
��O U
(
��U V$
SitemapIndexController
��V l
.
��l m
Toggle
��m s
)
��s t
}
��u v
)
�� 
;
�� 
var
�� 
sourceController
��  
=
��! "
typeof
��# )
(
��) *
SourceController
��* :
)
��: ;
.
��; <
ControllerName
��< J
(
��J K
)
��K L
;
��L M
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� -
,
��- .
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 i
,
��i j
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -
sourceController
��. >
,
��> ?
action
��@ F
=
��G H
nameof
��I O
(
��O P
SourceController
��P `
.
��` a
Create
��a g
)
��g h
}
��i j
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� +
,
��+ ,
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 e
,
��e f
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -
sourceController
��. >
,
��> ?
action
��@ F
=
��G H
nameof
��I O
(
��O P
SourceController
��P `
.
��` a
Edit
��a e
)
��e f
}
��g h
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� -
,
��- .
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 g
,
��g h
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -
sourceController
��. >
,
��> ?
action
��@ F
=
��G H
nameof
��I O
(
��O P
SourceController
��P `
.
��` a
Delete
��a g
)
��g h
}
��i j
)
�� 
;
�� 
var
�� $
sitemapCacheController
�� &
=
��' (
typeof
��) /
(
��/ 0$
SitemapCacheController
��0 F
)
��F G
.
��G H
ControllerName
��H V
(
��V W
)
��W X
;
��X Y
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� *
,
��* +
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 N
,
��N O
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -$
sitemapCacheController
��. D
,
��D E
action
��F L
=
��M N
nameof
��O U
(
��U V$
SitemapCacheController
��V l
.
��l m
List
��m q
)
��q r
}
��s t
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� .
,
��. /
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 R
,
��R S
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -$
sitemapCacheController
��. D
,
��D E
action
��F L
=
��M N
nameof
��O U
(
��U V$
SitemapCacheController
��V l
.
��l m
PurgeAll
��m u
)
��u v
}
��w x
)
�� 
;
�� 
routes
�� 
.
�� $
MapAreaControllerRoute
�� )
(
��) *
name
�� 
:
�� 
$str
�� +
,
��+ ,
areaName
�� 
:
�� 
$str
�� 1
,
��1 2
pattern
�� 
:
�� 
_adminOptions
�� '
.
��' (
AdminUrlPrefix
��( 6
+
��7 8
$str
��9 _
,
��_ `
defaults
�� 
:
�� 
new
�� 
{
��  

controller
��! +
=
��, -$
sitemapCacheController
��. D
,
��D E
action
��F L
=
��M N
nameof
��O U
(
��U V$
SitemapCacheController
��V l
.
��l m
Purge
��m r
)
��r s
}
��t u
)
�� 
;
�� 
routes
�� 
.
�� '
MapDynamicControllerRoute
�� ,
<
��, -%
SitemapRouteTransformer
��- D
>
��D E
(
��E F
$str
��F T
)
��T U
;
��U V
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 

class
�� '
SitemapsRazorPagesStartup
�� *
:
��+ ,
StartupBase
��- 8
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
�� 

AddOptions
�� 
<
��  '
SitemapsRazorPagesOptions
��  9
>
��9 :
(
��: ;
)
��; <
;
��< =
services
�� 
.
�� 
	AddScoped
�� 
<
�� +
IRouteableContentTypeProvider
�� <
,
��< =+
RazorPagesContentTypeProvider
��> [
>
��[ \
(
��\ ]
)
��] ^
;
��^ _
}
�� 	
}
�� 
[
�� 
Feature
�� 
(
�� 
$str
�� +
)
��+ ,
]
��, -
public
�� 

class
�� $
SitemapsCleanupStartup
�� '
:
��( )
StartupBase
��* 5
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
AddSingleton
�� !
<
��! "
IBackgroundTask
��" 1
,
��1 2(
SitemapCacheBackgroundTask
��3 M
>
��M N
(
��N O
)
��O P
;
��P Q
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\CreateSitemapIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class '
CreateSitemapIndexViewModel ,
{ 
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[

 	
Required

	 
]

 
public 
string 
Path 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
public ,
 ContainableSitemapEntryViewModel /
[/ 0
]0 1
ContainableSitemaps2 E
{F G
getH K
;K L
setM P
;P Q
}R S
=T U
newV Y,
 ContainableSitemapEntryViewModelZ z
[z {
]{ |
{} ~
}	 �
;
� �
} 
public 

class ,
 ContainableSitemapEntryViewModel 1
{ 
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	SitemapId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\CreateSitemapViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class "
CreateSitemapViewModel '
{ 
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
Path
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
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
=* +
true, 0
;0 1
} 
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\CreateSourceViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class !
CreateSourceViewModel &
{ 
public 
string 
	SitemapId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
SitemapSourceId		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
string

 
SitemapSourceType

 '
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
public 
dynamic 
Editor 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
	BindNever	 
] 
public 
SitemapSource 
SitemapSource *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\CustomPathSitemapSourceViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public

 

class

 ,
 CustomPathSitemapSourceViewModel

 1
{ 
[ 	
Required	 
] 
public 
string 
Path 
{ 
get  
;  !
set" %
;% &
}' (
public 
ChangeFrequency 
ChangeFrequency .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\DisplaySitemapViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class #
DisplaySitemapViewModel (
{ 
public 
SitemapType 
Sitemap "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
IEnumerable		 
<		 
dynamic		 "
>		" #
Items		$ )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
public

 
IDictionary

 
<

 
string

 !
,

! "
dynamic

# *
>

* +

Thumbnails

, 6
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
C D
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\EditSitemapIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class %
EditSitemapIndexViewModel *
:+ ,'
CreateSitemapIndexViewModel- H
{ 
[		 	
Required			 
]		 
public

 
string

 
	SitemapId

 
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
[ 	
	BindNever	 
] 
public 
SitemapIndexSource !
SitemapIndexSource" 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\EditSitemapViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class  
EditSitemapViewModel %
{ 
public 
string 
	SitemapId 
{  !
get" %
;% &
set' *
;* +
}, -
[		 	
Required			 
]		 
public

 
string

 
Name
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
public 
string 
Path 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\EditSourceViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class 
EditSourceViewModel $
{ 
public 
string 
	SitemapId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
SitemapSourceId		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
dynamic

 
Editor

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
[ 	
	BindNever	 
] 
public 
SitemapSource 
SitemapSource *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\ListSitemapCacheViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class %
ListSitemapCacheViewModel *
{ 
public 
string 
[ 
] 
CachedFileNames '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\ListSitemapIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class %
ListSitemapIndexViewModel *
{ 
public		 
IList		 
<		 !
SitemapIndexListEntry		 *
>		* +
SitemapIndexes		, :
{		; <
get		= @
;		@ A
set		B E
;		E F
}		G H
public

 
ContentOptions

 
Options

 %
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
=

4 5
new

6 9
ContentOptions

: H
(

H I
)

I J
;

J K
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class !
SitemapIndexListEntry &
{ 
public 
string 
	SitemapId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\ListSitemapViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class  
ListSitemapViewModel %
{ 
public		 
IList		 
<		 
SitemapListEntry		 %
>		% &
Sitemaps		' /
{		0 1
get		2 5
;		5 6
set		7 :
;		: ;
}		< =
public

 
ContentOptions

 
Options

 %
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
=

4 5
new

6 9
ContentOptions

: H
(

H I
)

I J
;

J K
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
SitemapListEntry !
{ 
public 
string 
	SitemapId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class 
ContentOptions 
{ 
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
public 
ContentsBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
ContentsBulkAction$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
}   
public"" 

enum"" 
ContentsBulkAction"" "
{## 
None$$ 
,$$ 
Remove%% 
}&& 
}(( �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Sitemaps\ViewModels\SitemapPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 

ViewModels )
{ 
public 

class  
SitemapPartViewModel %
{ 
public 
bool !
OverrideSitemapConfig )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public

 
ChangeFrequency

 
ChangeFrequency

 .
{

/ 0
get

1 4
;

4 5
set

6 9
;

9 :
}

; <
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Exclude 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
	BindNever	 
] 
public 
SitemapPart 
SitemapPart &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} 