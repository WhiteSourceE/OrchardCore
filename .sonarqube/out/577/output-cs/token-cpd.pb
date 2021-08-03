‡
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
String 
. 
Equals 
( 
name "
," #
$str$ +
,+ ,
StringComparison- =
.= >
OrdinalIgnoreCase> O
)O P
)P Q
{ 
builder 
. 
Add 
( 
S 
[ 
$str *
]* +
,+ ,
NavigationConstants- @
.@ A*
AdminMenuConfigurationPositionA _
,_ `
localizationa m
=>n p
localizationq }
.   
Add   
(   
S   
[   
$str   )
]  ) *
,  * +
settings  , 4
=>  5 7
settings  8 @
.!! 
Add!!  
(!!  !
S!!! "
[!!" #
$str!!# -
]!!- .
,!!. /
S!!0 1
[!!1 2
$str!!2 <
]!!< =
.!!= >
PrefixPosition!!> L
(!!L M
)!!M N
,!!N O
entry!!P U
=>!!V X
entry!!Y ^
."" 
AddClass"" %
(""% &
$str""& 0
)""0 1
.""1 2
Id""2 4
(""4 5
$str""5 ?
)""? @
.##  !
Action##! '
(##' (
$str##( /
,##/ 0
$str##1 8
,##8 9
new##: =
{##> ?
area##@ D
=##E F
$str##G ]
,##] ^
groupId##_ f
=##g h.
!LocalizationSettingsDisplayDriver	##i ä
.
##ä ã
GroupId
##ã í
}
##ì î
)
##î ï
.$$  !

Permission$$! +
($$+ ,
Permissions$$, 7
.$$7 8
ManageCultures$$8 F
)$$F G
.%%  !
LocalNav%%! )
(%%) *
)%%* +
)&& 
)'' 
)(( 
;(( 
})) 
return++ 
Task++ 
.++ 
CompletedTask++ %
;++% &
},, 	
}-- 
}.. ‡K
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\Drivers\LocalizationSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #
Drivers# *
{ 
public 

class -
!LocalizationSettingsDisplayDriver 2
:3 4 
SectionDisplayDriver5 I
<I J
ISiteJ O
,O P 
LocalizationSettingsQ e
>e f
{ 
public 
const 
string 
GroupId #
=$ %
$str& 4
;4 5
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private   
readonly   
IHtmlLocalizer   '
H  ( )
;  ) *
private!! 
readonly!! 
IStringLocalizer!! )
S!!* +
;!!+ ,
public## -
!LocalizationSettingsDisplayDriver## 0
(##0 1
	INotifier$$ 
notifier$$ 
,$$ 

IShellHost%% 
	shellHost%%  
,%%  !
ShellSettings&& 
shellSettings&& '
,&&' ( 
IHttpContextAccessor''  
httpContextAccessor''! 4
,''4 5!
IAuthorizationService(( ! 
authorizationService((" 6
,((6 7
IHtmlLocalizer)) 
<)) -
!LocalizationSettingsDisplayDriver)) <
>))< =
h))> ?
,))? @
IStringLocalizer** 
<** -
!LocalizationSettingsDisplayDriver** >
>**> ?
s**@ A
)++ 	
{,, 	
	_notifier-- 
=-- 
notifier--  
;--  !

_shellHost.. 
=.. 
	shellHost.. "
;.." #
_shellSettings// 
=// 
shellSettings// *
;//* + 
_httpContextAccessor00  
=00! "
httpContextAccessor00# 6
;006 7!
_authorizationService11 !
=11" # 
authorizationService11$ 8
;118 9
H22 
=22 
h22 
;22 
S33 
=33 
s33 
;33 
}44 	
public77 
override77 
async77 
Task77 "
<77" #
IDisplayResult77# 1
>771 2
	EditAsync773 <
(77< = 
LocalizationSettings77= Q
settings77R Z
,77Z [
BuildEditorContext77\ n
context77o v
)77v w
{88 	
var99 
user99 
=99  
_httpContextAccessor99 +
.99+ ,
HttpContext99, 7
?997 8
.998 9
User999 =
;99= >
if;; 
(;; 
!;; 
await;; !
_authorizationService;; ,
.;;, -
AuthorizeAsync;;- ;
(;;; <
user;;< @
,;;@ A
Permissions;;B M
.;;M N
ManageCultures;;N \
);;\ ]
);;] ^
{<< 
return== 
null== 
;== 
}>> 
return@@ 

Initialize@@ 
<@@ )
LocalizationSettingsViewModel@@ ;
>@@; <
(@@< =
$str@@= X
,@@X Y
model@@Z _
=>@@` b
{AA 
modelBB 
.BB 
CulturesBB "
=BB# $
CultureInfoBB% 0
.BB0 1
GetCulturesBB1 <
(BB< =
CultureTypesBB= I
.BBI J
AllCulturesBBJ U
)BBU V
.CC 
SelectCC 
(CC  
cultureInfoCC  +
=>CC, .
{DD 
returnEE "
newEE# &
CultureEntryEE' 3
{FF 
	SupportedGG  )
=GG* +
settingsGG, 4
.GG4 5
SupportedCulturesGG5 F
.GGF G
ContainsGGG O
(GGO P
cultureInfoGGP [
.GG[ \
NameGG\ `
,GG` a
StringComparerGGb p
.GGp q
OrdinalIgnoreCase	GGq Ç
)
GGÇ É
,
GGÉ Ñ
CultureInfoHH  +
=HH, -
cultureInfoHH. 9
,HH9 :
	IsDefaultII  )
=II* +
StringII, 2
.II2 3
EqualsII3 9
(II9 :
settingsII: B
.IIB C
DefaultCultureIIC Q
,IIQ R
cultureInfoIIS ^
.II^ _
NameII_ c
,IIc d
StringComparisonIIe u
.IIu v
OrdinalIgnoreCase	IIv á
)
IIá à
}JJ 
;JJ 
}KK 
)KK 
.KK 
ToArrayKK "
(KK" #
)KK# $
;KK$ %
ifMM 
(MM 
!MM 
modelMM 
.MM 
CulturesMM '
.MM' (
AnyMM( +
(MM+ ,
xMM, -
=>MM. 0
xMM1 2
.MM2 3
	IsDefaultMM3 <
)MM< =
)MM= >
{NN 
modelOO 
.OO 
CulturesOO &
[OO& '
$numOO' (
]OO( )
.OO) *
	IsDefaultOO* 3
=OO4 5
trueOO6 :
;OO: ;
}PP 
}QQ 
)QQ 
.QQ 
LocationQQ 
(QQ 
$strQQ '
)QQ' (
.QQ( )
OnGroupQQ) 0
(QQ0 1
GroupIdQQ1 8
)QQ8 9
;QQ9 :
}RR 	
publicUU 
overrideUU 
asyncUU 
TaskUU "
<UU" #
IDisplayResultUU# 1
>UU1 2
UpdateAsyncUU3 >
(UU> ? 
LocalizationSettingsUU? S
sectionUUT [
,UU[ \
BuildEditorContextUU] o
contextUUp w
)UUw x
{VV 	
varWW 
userWW 
=WW  
_httpContextAccessorWW +
.WW+ ,
HttpContextWW, 7
?WW7 8
.WW8 9
UserWW9 =
;WW= >
ifYY 
(YY 
!YY 
awaitYY !
_authorizationServiceYY ,
.YY, -
AuthorizeAsyncYY- ;
(YY; <
userYY< @
,YY@ A
PermissionsYYB M
.YYM N
ManageCulturesYYN \
)YY\ ]
)YY] ^
{ZZ 
return[[ 
null[[ 
;[[ 
}\\ 
if^^ 
(^^ 
context^^ 
.^^ 
GroupId^^ 
==^^  "
GroupId^^# *
)^^* +
{__ 
var`` 
model`` 
=`` 
new`` )
LocalizationSettingsViewModel``  =
(``= >
)``> ?
;``? @
awaitbb 
contextbb 
.bb 
Updaterbb %
.bb% &
TryUpdateModelAsyncbb& 9
(bb9 :
modelbb: ?
,bb? @
PrefixbbA G
)bbG H
;bbH I
vardd 
supportedCulturedd $
=dd% &
JsonConvertdd' 2
.dd2 3
DeserializeObjectdd3 D
<ddD E
stringddE K
[ddK L
]ddL M
>ddM N
(ddN O
modelddO T
.ddT U
SupportedCulturesddU f
)ddf g
;ddg h
ifff 
(ff 
!ff 
supportedCultureff %
.ff% &
Anyff& )
(ff) *
)ff* +
)ff+ ,
{gg 
contexthh 
.hh 
Updaterhh #
.hh# $

ModelStatehh$ .
.hh. /
AddModelErrorhh/ <
(hh< =
$strhh= P
,hhP Q
ShhR S
[hhS T
$strhhT k
]hhk l
)hhl m
;hhm n
}ii 
ifkk 
(kk 
contextkk 
.kk 
Updaterkk #
.kk# $

ModelStatekk$ .
.kk. /
IsValidkk/ 6
)kk6 7
{ll 
sectionnn 
.nn 
DefaultCulturenn *
=nn+ ,
modelnn- 2
.nn2 3
DefaultCulturenn3 A
??nnB D
$strnnE G
;nnG H
sectionoo 
.oo 
SupportedCulturesoo -
=oo. /
supportedCultureoo0 @
;oo@ A
ifqq 
(qq 
!qq 
sectionqq  
.qq  !
SupportedCulturesqq! 2
.qq2 3
Containsqq3 ;
(qq; <
sectionqq< C
.qqC D
DefaultCultureqqD R
)qqR S
)qqS T
{rr 
sectionss 
.ss  
DefaultCulturess  .
=ss/ 0
sectionss1 8
.ss8 9
SupportedCulturesss9 J
[ssJ K
$numssK L
]ssL M
;ssM N
}tt 
awaitww 

_shellHostww $
.ww$ %$
ReleaseShellContextAsyncww% =
(ww= >
_shellSettingsww> L
)wwL M
;wwM N
	_notifieryy 
.yy 
Warningyy %
(yy% &
Hyy& '
[yy' (
$stryy( f
]yyf g
)yyg h
;yyh i
}zz 
}{{ 
return}} 
await}} 
	EditAsync}} "
(}}" #
section}}# *
,}}* +
context}}, 3
)}}3 4
;}}4 5
}~~ 	
} 
}ÄÄ Ä
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\GraphQL\CultureQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #
GraphQL# *
{ 
public 

class "
CultureQueryObjectType '
:( )
ObjectGraphType* 9
<9 :
SiteCulture: E
>E F
{		 
public "
CultureQueryObjectType %
(% &
)& '
{ 	
Name 
= 
$str  
;  !
Field 
< 
StringGraphType !
>! "
(" #
$str# ,
,, -
$str. A
,A B
resolveC J
:J K
contextL S
=>T V
contextW ^
.^ _
Source_ e
.e f
Culturef m
)m n
;n o
Field 
< 
BooleanGraphType "
>" #
(# $
$str$ -
,- .
$str/ U
,U V
resolveW ^
:^ _
context` g
=>h j
contextk r
.r s
Sources y
.y z
	IsDefault	z É
)
É Ñ
;
Ñ Ö
} 	
} 
} ª
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\GraphQL\SiteCulture.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #
GraphQL# *
{ 
public 

class 
SiteCulture 
{ 
public 
string 
Culture 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
	IsDefault 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ù
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\GraphQL\SiteCulturesQuery.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #
GraphQL# *
{ 
public 

class 
SiteCulturesQuery "
:# $
ISchemaBuilder% 3
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
SiteCulturesQuery  
(  !
IStringLocalizer! 1
<1 2
SiteCulturesQuery2 C
>C D
	localizerE N
)N O
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task 
< 
string 
> 
GetIdentifierAsync .
(. /
)/ 0
=>1 3
Task4 8
.8 9

FromResult9 C
(C D
StringD J
.J K
EmptyK P
)P Q
;Q R
public   
Task   

BuildAsync   
(   
ISchema   &
schema  ' -
)  - .
{!! 	
var"" 
field"" 
="" 
new"" 
	FieldType"" %
{## 
Name$$ 
=$$ 
$str$$ %
,$$% &
Description%% 
=%% 
S%% 
[%%  
$str%%  N
]%%N O
,%%O P
Type&& 
=&& 
typeof&& 
(&& 
ListGraphType&& +
<&&+ ,"
CultureQueryObjectType&&, B
>&&B C
)&&C D
,&&D E
Resolver'' 
='' 
new'' $
LockedAsyncFieldResolver'' 7
<''7 8
IEnumerable''8 C
<''C D
SiteCulture''D O
>''O P
>''P Q
(''Q R
ResolveAsync''R ^
)''^ _
}(( 
;(( 
schema** 
.** 
Query** 
.** 
AddField** !
(**! "
field**" '
)**' (
;**( )
return,, 
Task,, 
.,, 
CompletedTask,, %
;,,% &
}-- 	
private// 
async// 
Task// 
<// 
IEnumerable// &
<//& '
SiteCulture//' 2
>//2 3
>//3 4
ResolveAsync//5 A
(//A B
ResolveFieldContext//B U
resolveContext//V d
)//d e
{00 	
var11 
localizationService11 #
=11$ %
resolveContext11& 4
.114 5"
ResolveServiceProvider115 K
(11K L
)11L M
.11M N

GetService11N X
<11X Y 
ILocalizationService11Y m
>11m n
(11n o
)11o p
;11p q
var33 
defaultCulture33 
=33  
await33! &
localizationService33' :
.33: ;"
GetDefaultCultureAsync33; Q
(33Q R
)33R S
;33S T
var44 
supportedCultures44 !
=44" #
await44$ )
localizationService44* =
.44= >%
GetSupportedCulturesAsync44> W
(44W X
)44X Y
;44Y Z
var66 
cultures66 
=66 
supportedCultures66 ,
.66, -
Select66- 3
(663 4
culture664 ;
=>66< >
new77 
SiteCulture77 
{88 
Culture99 
=99 
culture99 $
,99$ %
	IsDefault:: 
=:: 
string:: %
.::% &
Equals::& ,
(::, -
defaultCulture::- ;
,::; <
culture::= D
,::D E
StringComparison::F V
.::V W
OrdinalIgnoreCase::W h
)::h i
};; 
)<< 
;<< 
return>> 
cultures>> 
;>> 
}?? 	
}@@ 
}AA ﬂ
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #
GraphQL# *
{ 
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
 /
)

/ 0
]

0 1
public 

class 
Startup 
: 
StartupBase &
{ 
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
. 
AddSingleton !
<! "
ISchemaBuilder" 0
,0 1
SiteCulturesQuery2 C
>C D
(D E
)E F
;F G
services 
. 
AddTransient !
<! ""
CultureQueryObjectType" 8
>8 9
(9 :
): ;
;; <
} 	
} 
} –
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\Manifest.cs
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
$str 9
,9 :
Category		 
=		 
$str		 %
,		% &
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
 1
}

2 3
) 
] ﬂ
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\Models\CultureEntry.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #
Models# )
{ 
public 

class 
CultureEntry 
{		 
public 
CultureInfo 
CultureInfo &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
	IsDefault 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
	Supported 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} «
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\Models\LocalizationSettings.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #
Models# )
{ 
public 

class  
LocalizationSettings %
{		 
private

 
static

 
string

 
[

 
]

 $
DefaultSupportedCultures

  8
=

9 :
new

; >
[

> ?
]

? @
{

A B
CultureInfo

C N
.

N O
InstalledUICulture

O a
.

a b
Name

b f
}

g h
;

h i
public  
LocalizationSettings #
(# $
)$ %
{ 	
DefaultCulture 
= 
CultureInfo (
.( )
InstalledUICulture) ;
.; <
Name< @
;@ A
SupportedCultures 
= $
DefaultSupportedCultures  8
;8 9
} 	
public 
string 
DefaultCulture $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
[ 
] 
SupportedCultures )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} û0
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\ModularPoFileLocationProvider.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class )
ModularPoFileLocationProvider .
:/ 0-
!ILocalizationFileLocationProvider1 R
{ 
private 
const 
string 
PoFileExtension ,
=- .
$str/ 4
;4 5
private 
const 
string 
CultureDelimiter -
=. /
$str0 3
;3 4
private 
readonly 
IExtensionManager *
_extensionsManager+ =
;= >
private 
readonly 
IFileProvider &
_fileProvider' 4
;4 5
private 
readonly 
string 
_resourcesContainer  3
;3 4
private 
readonly 
string %
_applicationDataContainer  9
;9 :
private 
readonly 
string 
_shellDataContainer  3
;3 4
public## )
ModularPoFileLocationProvider## ,
(##, -
IExtensionManager$$ 
extensionsManager$$ /
,$$/ 0
IHostEnvironment%% 
hostingEnvironment%% /
,%%/ 0
IOptions&& 
<&& 
ShellOptions&& !
>&&! "
shellOptions&&# /
,&&/ 0
IOptions'' 
<'' 
LocalizationOptions'' (
>''( )
localizationOptions''* =
,''= >
ShellSettings(( 
shellSettings(( '
)((' (
{)) 	
_extensionsManager** 
=**  
extensionsManager**! 2
;**2 3
_fileProvider,, 
=,, 
hostingEnvironment,, .
.,,. /#
ContentRootFileProvider,,/ F
;,,F G
_resourcesContainer-- 
=--  !
localizationOptions--" 5
.--5 6
Value--6 ;
.--; <
ResourcesPath--< I
;--I J%
_applicationDataContainer.. %
=..& '
shellOptions..( 4
...4 5
Value..5 :
...: ;%
ShellsApplicationDataPath..; T
;..T U
_shellDataContainer// 
=//  !
PathExtensions//" 0
.//0 1
Combine//1 8
(//8 9%
_applicationDataContainer//9 R
,//R S
shellOptions//T `
.//` a
Value//a f
.//f g
ShellsContainerName//g z
,//z {
shellSettings	//| â
.
//â ä
Name
//ä é
)
//é è
;
//è ê
}00 	
public33 
IEnumerable33 
<33 
	IFileInfo33 $
>33$ %
GetLocations33& 2
(332 3
string333 9
cultureName33: E
)33E F
{44 	
var55 

poFileName55 
=55 
cultureName55 (
+55) *
PoFileExtension55+ :
;55: ;
var66 

extensions66 
=66 
_extensionsManager66 /
.66/ 0
GetExtensions660 =
(66= >
)66> ?
;66? @
foreach99 
(99 
var99 
	extension99 "
in99# %

extensions99& 0
)990 1
{:: 
yield<< 
return<< 
_fileProvider<< *
.<<* +
GetFileInfo<<+ 6
(<<6 7
PathExtensions<<7 E
.<<E F
Combine<<F M
(<<M N
	extension<<N W
.<<W X
SubPath<<X _
,<<_ `
_resourcesContainer<<a t
,<<t u

poFileName	<<v Ä
)
<<Ä Å
)
<<Å Ç
;
<<Ç É
}== 
yield@@ 
return@@ 
_fileProvider@@ &
.@@& '
GetFileInfo@@' 2
(@@2 3
PathExtensions@@3 A
.@@A B
Combine@@B I
(@@I J
_resourcesContainer@@J ]
,@@] ^

poFileName@@_ i
)@@i j
)@@j k
;@@k l
yieldCC 
returnCC 
newCC 
PhysicalFileInfoCC -
(CC- .
newCC. 1
FileInfoCC2 :
(CC: ;
PathExtensionsCC; I
.CCI J
CombineCCJ Q
(CCQ R
_shellDataContainerCCR e
,CCe f
_resourcesContainerCCg z
,CCz {

poFileName	CC| Ü
)
CCÜ á
)
CCá à
)
CCà â
;
CCâ ä
foreachFF 
(FF 
varFF 
	extensionFF "
inFF# %

extensionsFF& 0
)FF0 1
{GG 
yieldII 
returnII 
_fileProviderII *
.II* +
GetFileInfoII+ 6
(II6 7
PathExtensionsII7 E
.IIE F
CombineIIF M
(IIM N
_resourcesContainerIIN a
,IIa b
	extensionIIc l
.IIl m
IdIIm o
,IIo p

poFileNameIIq {
)II{ |
)II| }
;II} ~
yieldLL 
returnLL 
_fileProviderLL *
.LL* +
GetFileInfoLL+ 6
(LL6 7
PathExtensionsLL7 E
.LLE F
CombineLLF M
(LLM N
_resourcesContainerLLN a
,LLa b
	extensionLLc l
.LLl m
IdLLm o
+LLp q
CultureDelimiter	LLr Ç
+
LLÉ Ñ

poFileName
LLÖ è
)
LLè ê
)
LLê ë
;
LLë í
}MM 
foreachQQ 
(QQ 
varQQ 
fileQQ 
inQQ  
_fileProviderQQ! .
.QQ. / 
GetDirectoryContentsQQ/ C
(QQC D
PathExtensionsQQD R
.QQR S
CombineQQS Z
(QQZ [
_resourcesContainerQQ[ n
,QQn o
cultureNameQQp {
)QQ{ |
)QQ| }
)QQ} ~
{RR 
yieldSS 
returnSS 
fileSS !
;SS! "
}TT 
}UU 	
}VV 
}WW ¿
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\Permissions.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{ 
public 
static 
readonly 

Permission )
ManageCultures* 8
=9 :
new; >

Permission? I
(I J
$strJ Z
,Z [
$str\ v
)v w
;w x
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{) *
ManageCultures+ 9
}: ;
.; <
AsEnumerable< H
(H I
)I J
)J K
;K L
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions   
=    !
new  " %
[  % &
]  & '
{  ( )
ManageCultures  * 8
}  9 :
}!! 
,!! 
new""  
PermissionStereotype"" (
{## 
Name$$ 
=$$ 
$str$$ #
,$$# $
Permissions%% 
=%%  !
new%%" %
[%%% &
]%%& '
{%%( )
ManageCultures%%* 8
}%%9 :
}&& 
}'' 
;'' 
}(( 	
})) 
}** √
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\Services\LocalizationService.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #
Services# +
{ 
public 

class 
LocalizationService $
:% & 
ILocalizationService' ;
{ 
private 
static 
readonly 
string  &
DefaultCulture' 5
=6 7
CultureInfo8 C
.C D
InstalledUICultureD V
.V W
NameW [
;[ \
private 
static 
readonly 
string  &
[& '
]' (
SupportedCultures) :
=; <
new= @
[@ A
]A B
{C D
CultureInfoE P
.P Q
InstalledUICultureQ c
.c d
Named h
}i j
;j k
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private  
LocalizationSettings $!
_localizationSettings% :
;: ;
public 
LocalizationService "
(" #
ISiteService# /
siteService0 ;
); <
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
< 
string  
>  !"
GetDefaultCultureAsync" 8
(8 9
)9 :
{   	
await!! /
#InitializeLocalizationSettingsAsync!! 5
(!!5 6
)!!6 7
;!!7 8
return## !
_localizationSettings## (
.##( )
DefaultCulture##) 7
??##8 :
DefaultCulture##; I
;##I J
}$$ 	
public'' 
async'' 
Task'' 
<'' 
string''  
[''  !
]''! "
>''" #%
GetSupportedCulturesAsync''$ =
(''= >
)''> ?
{(( 	
await)) /
#InitializeLocalizationSettingsAsync)) 5
())5 6
)))6 7
;))7 8
return++ !
_localizationSettings++ (
.++( )
SupportedCultures++) :
==++; =
null++> B
||++C E!
_localizationSettings++F [
.++[ \
SupportedCultures++\ m
.++m n
Length++n t
==++u w
$num++x y
?,, 
SupportedCultures,, #
:-- !
_localizationSettings-- '
.--' (
SupportedCultures--( 9
;.. 
}// 	
private11 
async11 
Task11 /
#InitializeLocalizationSettingsAsync11 >
(11> ?
)11? @
{22 	
if33 
(33 !
_localizationSettings33 %
==33& (
null33) -
)33- .
{44 
var55 
siteSettings55  
=55! "
await55# (
_siteService55) 5
.555 6 
GetSiteSettingsAsync556 J
(55J K
)55K L
;55L M!
_localizationSettings66 %
=66& '
siteSettings66( 4
.664 5
As665 7
<667 8 
LocalizationSettings668 L
>66L M
(66M N
)66N O
;66O P
}77 
}88 	
}99 
}:: ƒ1
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\Startup.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
int 
ConfigureOrder *
=>+ -
-. /
$num/ 2
;2 3
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
ISite. 3
>3 4
,4 5-
!LocalizationSettingsDisplayDriver6 W
>W X
(X Y
)Y Z
;Z [
services   
.   
	AddScoped   
<   
INavigationProvider   2
,  2 3
	AdminMenu  4 =
>  = >
(  > ?
)  ? @
;  @ A
services!! 
.!! 
	AddScoped!! 
<!! 
IPermissionProvider!! 2
,!!2 3
Permissions!!4 ?
>!!? @
(!!@ A
)!!A B
;!!B C
services"" 
."" 
	AddScoped"" 
<""  
ILocalizationService"" 3
,""3 4
LocalizationService""5 H
>""H I
(""I J
)""J K
;""K L
services$$ 
.$$ )
AddPortableObjectLocalization$$ 2
($$2 3
options$$3 :
=>$$; =
options$$> E
.$$E F
ResourcesPath$$F S
=$$T U
$str$$V d
)$$d e
;$$e f
services%% 
.%% 
Replace%% 
(%% 
ServiceDescriptor%% .
.%%. /
	Singleton%%/ 8
<%%8 9-
!ILocalizationFileLocationProvider%%9 Z
,%%Z [)
ModularPoFileLocationProvider%%\ y
>%%y z
(%%z {
)%%{ |
)%%| }
;%%} ~
}&& 	
public)) 
override)) 
void)) 
	Configure)) &
())& '
IApplicationBuilder))' :
app)); >
,))> ?!
IEndpointRouteBuilder))@ U
routes))V \
,))\ ]
IServiceProvider))^ n
serviceProvider))o ~
)))~ 
{** 	
var++ 
localizationService++ #
=++$ %
serviceProvider++& 5
.++5 6

GetService++6 @
<++@ A 
ILocalizationService++A U
>++U V
(++V W
)++W X
;++X Y
var-- 
defaultCulture-- 
=--  
localizationService--! 4
.--4 5"
GetDefaultCultureAsync--5 K
(--K L
)--L M
.--M N

GetAwaiter--N X
(--X Y
)--Y Z
.--Z [
	GetResult--[ d
(--d e
)--e f
;--f g
var.. 
supportedCultures.. !
=.." #
localizationService..$ 7
...7 8%
GetSupportedCulturesAsync..8 Q
(..Q R
)..R S
...S T

GetAwaiter..T ^
(..^ _
).._ `
...` a
	GetResult..a j
(..j k
)..k l
;..l m
var00 
options00 
=00 
serviceProvider00 )
.00) *

GetService00* 4
<004 5
IOptions005 =
<00= >&
RequestLocalizationOptions00> X
>00X Y
>00Y Z
(00Z [
)00[ \
.00\ ]
Value00] b
;00b c
options11 
.11 
SetDefaultCulture11 %
(11% &
defaultCulture11& 4
)114 5
;115 6
options22 
.33  
AddSupportedCultures33 %
(33% &
supportedCultures33& 7
)337 8
.44 "
AddSupportedUICultures44 '
(44' (
supportedCultures44( 9
)449 :
;55 
app77 
.77 "
UseRequestLocalization77 &
(77& '
options77' .
)77. /
;77/ 0
}88 	
}99 
[;; 
RequireFeatures;; 
(;; 
$str;; -
);;- .
];;. /
public<< 

class<< )
LocalizationDeploymentStartup<< .
:<</ 0
StartupBase<<1 <
{== 
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
.@@ 
AddTransient@@ !
<@@! "
IDeploymentSource@@" 3
,@@3 40
$SiteSettingsPropertyDeploymentSource@@5 Y
<@@Y Z 
LocalizationSettings@@Z n
>@@n o
>@@o p
(@@p q
)@@q r
;@@r s
servicesAA 
.AA 
	AddScopedAA 
<AA 
IDisplayDriverAA -
<AA- .
DeploymentStepAA. <
>AA< =
>AA= >
(AA> ?
spAA? A
=>AAB D
{BB 
varCC 
SCC 
=CC 
spCC 
.CC 

GetServiceCC %
<CC% &
IStringLocalizerCC& 6
<CC6 7)
LocalizationDeploymentStartupCC7 T
>CCT U
>CCU V
(CCV W
)CCW X
;CCX Y
returnDD 
newDD 4
(SiteSettingsPropertyDeploymentStepDriverDD C
<DDC D 
LocalizationSettingsDDD X
>DDX Y
(DDY Z
SDDZ [
[DD[ \
$strDD\ n
]DDn o
,DDo p
SDDq r
[DDr s
$str	DDs í
]
DDí ì
)
DDì î
;
DDî ï
}EE 
)EE 
;EE 
servicesFF 
.FF 
AddSingletonFF !
<FF! ""
IDeploymentStepFactoryFF" 8
>FF8 9
(FF9 :
newFF: =5
)SiteSettingsPropertyDeploymentStepFactoryFF> g
<FFg h 
LocalizationSettingsFFh |
>FF| }
(FF} ~
)FF~ 
)	FF Ä
;
FFÄ Å
}GG 	
}HH 
}II î	
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Localization\ViewModels\LocalizationSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Localization "
." #

ViewModels# -
{ 
public

 

class

 )
LocalizationSettingsViewModel

 .
{ 
[ 	
	BindNever	 
] 
public 
CultureEntry 
[ 
] 
Cultures &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
Array7 <
.< =
Empty= B
<B C
CultureEntryC O
>O P
(P Q
)Q R
;R S
public 
string 
SupportedCultures '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
DefaultCulture $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} 