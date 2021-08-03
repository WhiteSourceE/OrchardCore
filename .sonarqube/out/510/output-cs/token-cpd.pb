Ë
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Azure !
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
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
configuration, 9
=>: <
configuration= J
. 
Add 
( 
S 
[ 
$str 
] 
,  
S! "
[" #
$str# *
]* +
.+ ,
PrefixPosition, :
(: ;
); <
,< =
media> C
=>D F
mediaG L
. 
Add 
( 
S 
[ 
$str /
]/ 0
,0 1
S2 3
[3 4
$str4 H
]H I
.I J
PrefixPositionJ X
(X Y
)Y Z
,Z [
options\ c
=>d f
optionsg n
. 
Action 
(  
$str  )
,) *
$str+ 2
,2 3
new4 7
{8 9
area: >
=? @
$strA Z
}[ \
)\ ]
. 

Permission #
(# $
Permissions$ /
./ 0!
ViewAzureMediaOptions0 E
)E F
. 
LocalNav !
(! "
)" #
)# $
) 
) 
; 
return   
Task   
.   
CompletedTask   %
;  % &
}!! 	
}"" 
}## ´
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Azure !
{		 
[

 
Feature

 
(

 
$str

 .
)

. /
]

/ 0
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly #
MediaBlobStorageOptions 0
_options1 9
;9 :
public 
AdminController 
( !
IAuthorizationService ! 
authorizationService" 6
,6 7
IOptions 
< #
MediaBlobStorageOptions ,
>, -
options. 5
)5 6
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Options) 0
(0 1
)1 2
{ 	
if 
( 
! 
await !
_authorizationService ,
., -
AuthorizeAsync- ;
(; <
User< @
,@ A
PermissionsB M
.M N!
ViewAzureMediaOptionsN c
)c d
)d e
{ 
return 
Forbid 
( 
) 
;  
} 
var 
model 
= 
new 
OptionsViewModel ,
{   
CreateContainer!! 
=!!  !
_options!!" *
.!!* +
CreateContainer!!+ :
,!!: ;
ContainerName"" 
="" 
_options""  (
.""( )
ContainerName"") 6
,""6 7
ConnectionString##  
=##! "
_options### +
.##+ ,
ConnectionString##, <
,##< =
BasePath$$ 
=$$ 
_options$$ #
.$$# $
BasePath$$$ ,
}%% 
;%% 
return'' 
View'' 
('' 
model'' 
)'' 
;'' 
}(( 	
})) 
}** Ä
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\CreateMediaBlobContainerEvent.cs
	namespace

 	
OrchardCore


 
.

 
Media

 
.

 
Azure

 !
{ 
public 

class )
CreateMediaBlobContainerEvent .
:/ 0
ModularTenantEvents1 D
{ 
private 
readonly #
MediaBlobStorageOptions 0
_options1 9
;9 :
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public )
CreateMediaBlobContainerEvent ,
(, -
IOptions 
< #
MediaBlobStorageOptions ,
>, -
options. 5
,5 6
ShellSettings 
shellSettings '
,' (
ILogger 
< )
CreateMediaBlobContainerEvent 1
>1 2
logger3 9
) 
{ 	
_options 
= 
options 
. 
Value $
;$ %
_shellSettings 
= 
shellSettings *
;* +
_logger 
= 
logger 
; 
} 	
public 
override 
async 
Task "
ActivatingAsync# 2
(2 3
)3 4
{ 	
if!! 
(!! 
_shellSettings!! 
.!! 
State!! $
!=!!% '
Environment!!( 3
.!!3 4
Shell!!4 9
.!!9 :
Models!!: @
.!!@ A
TenantState!!A L
.!!L M
Uninitialized!!M Z
&&!![ ]
!"" 
String"" 
."" 
IsNullOrEmpty"" %
(""% &
_options""& .
."". /
ConnectionString""/ ?
)""? @
&&""A C
!## 
String## 
.## 
IsNullOrEmpty## %
(##% &
_options##& .
.##. /
ContainerName##/ <
)##< =
&&##> @
_options$$ 
.$$ 
CreateContainer$$ (
)%% 
{&& 
_logger'' 
.'' 
LogDebug''  
(''  !
$str''! b
,''b c
_options''d l
.''l m
ContainerName''m z
)''z {
;''{ |
try)) 
{** 
var++ 
_blobContainer++ &
=++' (
new++) ,
BlobContainerClient++- @
(++@ A
_options++A I
.++I J
ConnectionString++J Z
,++Z [
_options++\ d
.++d e
ContainerName++e r
)++r s
;++s t
var,, 
response,,  
=,,! "
await,,# (
_blobContainer,,) 7
.,,7 8"
CreateIfNotExistsAsync,,8 N
(,,N O
PublicAccessType,,O _
.,,_ `
None,,` d
),,d e
;,,e f
_logger.. 
... 
LogDebug.. $
(..$ %
$str..% ]
,..] ^
_options.._ g
...g h
ContainerName..h u
)..u v
;..v w
}// 
catch00 
(00 
	Exception00  
e00! "
)00" #
{11 
_logger22 
.22 
LogError22 $
(22$ %
e22% &
,22& '
$str22( Y
)22Y Z
;22Z [
}33 
}44 
}55 	
}66 
}77 ¥	
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str "
," #
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
$str	 *
,* +
Name 
=	 

$str  
,  !
Description 
= 
$str \
,\ ]
Dependencies 
= 
new 
[ 
] 
{ 
$str !
} 
, 
Category 
= 
$str 
) 
] €
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\MediaBlobStorageOptions.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Azure !
{ 
public 

class #
MediaBlobStorageOptions (
:) *
BlobStorageOptions+ =
{ 
public

 
bool

 
CreateContainer
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
0 1
} 
} â;
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\MediaBlobStorageOptionsConfiguration.cs
	namespace		 	
OrchardCore		
 
.		 
Media		 
.		 
Azure		 !
{

 
public 

class 0
$MediaBlobStorageOptionsConfiguration 5
:6 7
IConfigureOptions8 I
<I J#
MediaBlobStorageOptionsJ a
>a b
{ 
private 
readonly 
IShellConfiguration ,
_shellConfiguration- @
;@ A
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public 0
$MediaBlobStorageOptionsConfiguration 3
(3 4
IShellConfiguration 
shellConfiguration  2
,2 3
ShellSettings 
shellSettings '
,' (
ILogger 
< 0
$MediaBlobStorageOptionsConfiguration 8
>8 9
logger: @
) 
{ 	
_shellConfiguration 
=  !
shellConfiguration" 4
;4 5
_shellSettings 
= 
shellSettings *
;* +
_logger 
= 
logger 
; 
} 	
public 
void 
	Configure 
( #
MediaBlobStorageOptions 5
options6 =
)= >
{ 	
var 
section 
= 
_shellConfiguration -
.- .

GetSection. 8
(8 9
$str9 R
)R S
;S T
options   
.   
BasePath   
=   
section   &
.  & '
GetValue  ' /
(  / 0
nameof  0 6
(  6 7
options  7 >
.  > ?
BasePath  ? G
)  G H
,  H I
String  J P
.  P Q
Empty  Q V
)  V W
;  W X
options!! 
.!! 
ContainerName!! !
=!!" #
section!!$ +
.!!+ ,
GetValue!!, 4
(!!4 5
nameof!!5 ;
(!!; <
options!!< C
.!!C D
ContainerName!!D Q
)!!Q R
,!!R S
String!!T Z
.!!Z [
Empty!![ `
)!!` a
;!!a b
options"" 
."" 
ConnectionString"" $
=""% &
section""' .
."". /
GetValue""/ 7
(""7 8
nameof""8 >
(""> ?
options""? F
.""F G
ConnectionString""G W
)""W X
,""X Y
String""Z `
.""` a
Empty""a f
)""f g
;""g h
options## 
.## 
CreateContainer## #
=##$ %
section##& -
.##- .
GetValue##. 6
(##6 7
nameof##7 =
(##= >
options##> E
.##E F
CreateContainer##F U
)##U V
,##V W
true##X \
)##\ ]
;##] ^
var%% 
templateContext%% 
=%%  !
new%%" %
TemplateContext%%& 5
(%%5 6
)%%6 7
;%%7 8
templateContext&& 
.&&  
MemberAccessStrategy&& 0
.&&0 1
Register&&1 9
<&&9 :
ShellSettings&&: G
>&&G H
(&&H I
)&&I J
;&&J K
templateContext'' 
.''  
MemberAccessStrategy'' 0
.''0 1
Register''1 9
<''9 :#
MediaBlobStorageOptions'': Q
>''Q R
(''R S
)''S T
;''T U
templateContext(( 
.(( 
SetValue(( $
((($ %
$str((% 4
,((4 5
_shellSettings((6 D
)((D E
;((E F
ParseContainerName** 
(** 
options** &
,**& '
templateContext**( 7
)**7 8
;**8 9
ParseBasePath++ 
(++ 
options++ !
,++! "
templateContext++# 2
)++2 3
;++3 4
},, 	
private.. 
void.. 
ParseContainerName.. '
(..' (#
MediaBlobStorageOptions..( ?
options..@ G
,..G H
TemplateContext..I X
templateContext..Y h
)..h i
{// 	
try11 
{22 
var33 
template33 
=33 
FluidTemplate33 ,
.33, -
Parse33- 2
(332 3
options333 :
.33: ;
ContainerName33; H
)33H I
;33I J
options66 
.66 
ContainerName66 %
=66& '
template66( 0
.660 1
Render661 7
(667 8
templateContext668 G
,66G H
NullEncoder66I T
.66T U
Default66U \
)66\ ]
.66] ^
ToLower66^ e
(66e f
)66f g
;66g h
options77 
.77 
ContainerName77 %
=77& '
options77( /
.77/ 0
ContainerName770 =
.77= >
Replace77> E
(77E F
$str77F J
,77J K
String77L R
.77R S
Empty77S X
)77X Y
.77Y Z
Replace77Z a
(77a b
$str77b f
,77f g
String77h n
.77n o
Empty77o t
)77t u
;77u v
}88 
catch99 
(99 
	Exception99 
e99 
)99 
{:: 
_logger;; 
.;; 
LogCritical;; #
(;;# $
e;;$ %
,;;% &
$str;;' \
);;\ ]
;;;] ^
throw<< 
;<< 
}== 
}>> 	
private@@ 
void@@ 
ParseBasePath@@ "
(@@" ##
MediaBlobStorageOptions@@# :
options@@; B
,@@B C
TemplateContext@@D S
templateContext@@T c
)@@c d
{AA 	
tryBB 
{CC 
varDD 
templateDD 
=DD 
FluidTemplateDD ,
.DD, -
ParseDD- 2
(DD2 3
optionsDD3 :
.DD: ;
BasePathDD; C
)DDC D
;DDD E
optionsFF 
.FF 
BasePathFF  
=FF! "
templateFF# +
.FF+ ,
RenderFF, 2
(FF2 3
templateContextFF3 B
,FFB C
NullEncoderFFD O
.FFO P
DefaultFFP W
)FFW X
;FFX Y
optionsGG 
.GG 
BasePathGG  
=GG! "
optionsGG# *
.GG* +
BasePathGG+ 3
.GG3 4
ReplaceGG4 ;
(GG; <
$strGG< @
,GG@ A
StringGGB H
.GGH I
EmptyGGI N
)GGN O
.GGO P
ReplaceGGP W
(GGW X
$strGGX \
,GG\ ]
StringGG^ d
.GGd e
EmptyGGe j
)GGj k
;GGk l
}HH 
catchII 
(II 
	ExceptionII 
eII 
)II 
{JJ 
_loggerKK 
.KK 
LogCriticalKK #
(KK# $
eKK$ %
,KK% &
$strKK' W
)KKW X
;KKX Y
throwLL 
;LL 
}MM 
}NN 	
}OO 
}PP Ñ
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\Permissions.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Azure !
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
 )!
ViewAzureMediaOptions

* ?
=

@ A
new

B E

Permission

F P
(

P Q
nameof

Q W
(

W X!
ViewAzureMediaOptions

X m
)

m n
,

n o
$str	

p ä
)


ä ã
;


ã å
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
{) *!
ViewAzureMediaOptions+ @
}A B
.B C
AsEnumerableC O
(O P
)P Q
)Q R
;R S
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
{( )!
ViewAzureMediaOptions* ?
}@ A
} 
} 
; 
} 	
} 
} »Ö
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\Startup.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Azure !
{ 
[ 
Feature 
( 
$str .
). /
]/ 0
public 

class 
Startup 
: 
Modules "
." #
StartupBase# .
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
private 
readonly 
ILogger  
_logger! (
;( )
private   
readonly   
IShellConfiguration   ,
_configuration  - ;
;  ; <
public"" 
Startup"" 
("" 
IOptions"" 
<""  
AdminOptions""  ,
>"", -
adminOptions"". :
,"": ;
ILogger""< C
<""C D
Startup""D K
>""K L
logger""M S
,""S T
IShellConfiguration""U h
configuration""i v
)""v w
{## 	
_adminOptions$$ 
=$$ 
adminOptions$$ (
.$$( )
Value$$) .
;$$. /
_logger%% 
=%% 
logger%% 
;%% 
_configuration&& 
=&& 
configuration&& *
;&&* +
}'' 	
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
{** 	
routes++ 
.++ "
MapAreaControllerRoute++ )
(++) *
name,, 
:,, 
$str,, )
,,,) *
areaName-- 
:-- 
$str-- 3
,--3 4
pattern.. 
:.. 
_adminOptions.. &
...& '
AdminUrlPrefix..' 5
+..6 7
$str..8 Q
,..Q R
defaults// 
:// 
new// 
{// 

controller//  *
=//+ ,
typeof//- 3
(//3 4
AdminController//4 C
)//C D
.//D E
ControllerName//E S
(//S T
)//T U
,//U V
action//W ]
=//^ _
nameof//` f
(//f g
AdminController//g v
.//v w
Options//w ~
)//~ 
}
//Ä Å
)00 
;00 
}11 	
public33 
override33 
int33 
Order33 !
=>33" $
$num33% '
;33' (
public55 
override55 
void55 
ConfigureServices55 .
(55. /
IServiceCollection55/ A
services55B J
)55J K
{66 	
services77 
.77 
	AddScoped77 
<77 
IPermissionProvider77 2
,772 3
Permissions774 ?
>77? @
(77@ A
)77A B
;77B C
services88 
.88 
	AddScoped88 
<88 
INavigationProvider88 2
,882 3
	AdminMenu884 =
>88= >
(88> ?
)88? @
;88@ A
services99 
.99 
AddTransient99 !
<99! "
IConfigureOptions99" 3
<993 4#
MediaBlobStorageOptions994 K
>99K L
,99L M0
$MediaBlobStorageOptionsConfiguration99N r
>99r s
(99s t
)99t u
;99u v
var<< 
connectionString<<  
=<<! "
_configuration<<# 1
[<<1 2
$"<<2 4$
OrchardCore_Media_Azure:<<4 L
{<<L M
nameof<<M S
(<<S T#
MediaBlobStorageOptions<<T k
.<<k l
ConnectionString<<l |
)<<| }
}<<} ~
"<<~ 
]	<< Ä
;
<<Ä Å
var== 
containerName== 
=== 
_configuration==  .
[==. /
$"==/ 1$
OrchardCore_Media_Azure:==1 I
{==I J
nameof==J P
(==P Q#
MediaBlobStorageOptions==Q h
.==h i
ContainerName==i v
)==v w
}==w x
"==x y
]==y z
;==z {
if?? 
(?? 
CheckOptions?? 
(?? 
connectionString?? -
,??- .
containerName??/ <
,??< =
_logger??> E
)??E F
)??F G
{@@ 
servicesBB 
.BB 
AddSingletonBB %
<BB% &,
 IMediaFileStoreCacheFileProviderBB& F
>BBF G
(BBG H
serviceProviderBBH W
=>BBX Z
{CC 
varDD 
hostingEnvironmentDD *
=DD+ ,
serviceProviderDD- <
.DD< =
GetRequiredServiceDD= O
<DDO P
IWebHostEnvironmentDDP c
>DDc d
(DDd e
)DDe f
;DDf g
ifFF 
(FF 
StringFF 
.FF 
IsNullOrWhiteSpaceFF 1
(FF1 2
hostingEnvironmentFF2 D
.FFD E
WebRootPathFFE P
)FFP Q
)FFQ R
{GG 
throwHH 
newHH !
	ExceptionHH" +
(HH+ ,
$strHH, j
)HHj k
;HHk l
}II 
varKK 
mediaOptionsKK $
=KK% &
serviceProviderKK' 6
.KK6 7
GetRequiredServiceKK7 I
<KKI J
IOptionsKKJ R
<KKR S
MediaOptionsKKS _
>KK_ `
>KK` a
(KKa b
)KKb c
.KKc d
ValueKKd i
;KKi j
varLL 
shellOptionsLL $
=LL% &
serviceProviderLL' 6
.LL6 7
GetRequiredServiceLL7 I
<LLI J
IOptionsLLJ R
<LLR S
ShellOptionsLLS _
>LL_ `
>LL` a
(LLa b
)LLb c
;LLc d
varMM 
shellSettingsMM %
=MM& '
serviceProviderMM( 7
.MM7 8
GetRequiredServiceMM8 J
<MMJ K
ShellSettingsMMK X
>MMX Y
(MMY Z
)MMZ [
;MM[ \
varNN 
loggerNN 
=NN  
serviceProviderNN! 0
.NN0 1
GetRequiredServiceNN1 C
<NNC D
ILoggerNND K
<NNK L2
&DefaultMediaFileStoreCacheFileProviderNNL r
>NNr s
>NNs t
(NNt u
)NNu v
;NNv w
varPP 
mediaCachePathPP &
=PP' (
GetMediaCachePathPP) :
(PP: ;
hostingEnvironmentPP; M
,PPM N2
&DefaultMediaFileStoreCacheFileProviderPPO u
.PPu v
AssetsCachePath	PPv Ö
,
PPÖ Ü
shellSettings
PPá î
)
PPî ï
;
PPï ñ
ifRR 
(RR 
!RR 
	DirectoryRR "
.RR" #
ExistsRR# )
(RR) *
mediaCachePathRR* 8
)RR8 9
)RR9 :
{SS 
	DirectoryTT !
.TT! "
CreateDirectoryTT" 1
(TT1 2
mediaCachePathTT2 @
)TT@ A
;TTA B
}UU 
returnWW 
newWW 2
&DefaultMediaFileStoreCacheFileProviderWW E
(WWE F
loggerWWF L
,WWL M
mediaOptionsWWN Z
.WWZ [
AssetsRequestPathWW[ l
,WWl m
mediaCachePathWWn |
)WW| }
;WW} ~
}XX 
)XX 
;XX 
services[[ 
.[[ 
Replace[[  
([[  !
ServiceDescriptor[[! 2
.[[2 3
	Singleton[[3 <
<[[< =
IMediaFileProvider[[= O
>[[O P
([[P Q
serviceProvider[[Q `
=>[[a c
serviceProvider\\ #
.\\# $
GetRequiredService\\$ 6
<\\6 7,
 IMediaFileStoreCacheFileProvider\\7 W
>\\W X
(\\X Y
)\\Y Z
)\\Z [
)\\[ \
;\\\ ]
services__ 
.__ 
AddSingleton__ %
<__% & 
IMediaFileStoreCache__& :
>__: ;
(__; <
serviceProvider__< K
=>__L N
serviceProvider`` #
.``# $
GetRequiredService``$ 6
<``6 7,
 IMediaFileStoreCacheFileProvider``7 W
>``W X
(``X Y
)``Y Z
)``Z [
;``[ \
servicescc 
.cc 
Replacecc  
(cc  !
ServiceDescriptorcc! 2
.cc2 3
	Singletoncc3 <
<cc< =
IMediaFileStorecc= L
>ccL M
(ccM N
serviceProviderccN ]
=>cc^ `
{dd 
varee 
blobStorageOptionsee *
=ee+ ,
serviceProvideree- <
.ee< =
GetRequiredServiceee= O
<eeO P
IOptionseeP X
<eeX Y#
MediaBlobStorageOptionseeY p
>eep q
>eeq r
(eer s
)ees t
.eet u
Valueeeu z
;eez {
varff 
shellOptionsff $
=ff% &
serviceProviderff' 6
.ff6 7
GetRequiredServiceff7 I
<ffI J
IOptionsffJ R
<ffR S
ShellOptionsffS _
>ff_ `
>ff` a
(ffa b
)ffb c
;ffc d
vargg 
shellSettingsgg %
=gg& '
serviceProvidergg( 7
.gg7 8
GetRequiredServicegg8 J
<ggJ K
ShellSettingsggK X
>ggX Y
(ggY Z
)ggZ [
;gg[ \
varhh 
mediaOptionshh $
=hh% &
serviceProviderhh' 6
.hh6 7
GetRequiredServicehh7 I
<hhI J
IOptionshhJ R
<hhR S
MediaOptionshhS _
>hh_ `
>hh` a
(hha b
)hhb c
.hhc d
Valuehhd i
;hhi j
varii 
clockii 
=ii 
serviceProviderii  /
.ii/ 0
GetRequiredServiceii0 B
<iiB C
IClockiiC I
>iiI J
(iiJ K
)iiK L
;iiL M
varjj 
contentTypeProviderjj +
=jj, -
serviceProviderjj. =
.jj= >
GetRequiredServicejj> P
<jjP Q 
IContentTypeProviderjjQ e
>jje f
(jjf g
)jjg h
;jjh i
varkk 
mediaEventHandlerskk *
=kk+ ,
serviceProviderkk- <
.kk< =
GetServiceskk= H
<kkH I
IMediaEventHandlerkkI [
>kk[ \
(kk\ ]
)kk] ^
;kk^ _
varll &
mediaCreatingEventHandlersll 2
=ll3 4
serviceProviderll5 D
.llD E
GetServicesllE P
<llP Q&
IMediaCreatingEventHandlerllQ k
>llk l
(lll m
)llm n
;lln o
varmm 
loggermm 
=mm  
serviceProvidermm! 0
.mm0 1
GetRequiredServicemm1 C
<mmC D
ILoggermmD K
<mmK L!
DefaultMediaFileStoremmL a
>mma b
>mmb c
(mmc d
)mmd e
;mme f
varoo 
	fileStoreoo !
=oo" #
newoo$ '
BlobFileStoreoo( 5
(oo5 6
blobStorageOptionsoo6 H
,ooH I
clockooJ O
,ooO P
contentTypeProviderooQ d
)ood e
;ooe f
varqq 
	mediaPathqq !
=qq" #
GetMediaPathqq$ 0
(qq0 1
shellOptionsqq1 =
.qq= >
Valueqq> C
,qqC D
shellSettingsqqE R
,qqR S
mediaOptionsqqT `
.qq` a

AssetsPathqqa k
)qqk l
;qql m
varss 
mediaUrlBasess $
=ss% &
$strss' *
+ss+ ,
	fileStoress- 6
.ss6 7
Combiness7 >
(ss> ?
shellSettingsss? L
.ssL M
RequestUrlPrefixssM ]
,ss] ^
mediaOptionsss_ k
.ssk l
AssetsRequestPathssl }
)ss} ~
;ss~ 
varuu 
originalPathBaseuu (
=uu) *
serviceProvideruu+ :
.uu: ;
GetRequiredServiceuu; M
<uuM N 
IHttpContextAccessoruuN b
>uub c
(uuc d
)uud e
.vv 
HttpContextvv $
?vv$ %
.vv% &
Featuresvv& .
.vv. /
Getvv/ 2
<vv2 3
ShellContextFeaturevv3 F
>vvF G
(vvG H
)vvH I
?vvI J
.vvJ K
OriginalPathBasevvK [
??vv\ ^
nullvv_ c
;vvc d
ifxx 
(xx 
originalPathBasexx (
.xx( )
HasValuexx) 1
)xx1 2
{yy 
mediaUrlBasezz $
=zz% &
	fileStorezz' 0
.zz0 1
Combinezz1 8
(zz8 9
originalPathBasezz9 I
.zzI J
ValuezzJ O
,zzO P
mediaUrlBasezzQ ]
)zz] ^
;zz^ _
}{{ 
return}} 
new}} !
DefaultMediaFileStore}} 4
(}}4 5
	fileStore}}5 >
,}}> ?
mediaUrlBase}}@ L
,}}L M
mediaOptions}}N Z
.}}Z [

CdnBaseUrl}}[ e
,}}e f
mediaEventHandlers}}g y
,}}y z'
mediaCreatingEventHandlers	}}{ ï
,
}}ï ñ
logger
}}ó ù
)
}}ù û
;
}}û ü
}~~ 
)~~ 
)~~ 
;~~ 
services
ÄÄ 
.
ÄÄ 
AddSingleton
ÄÄ %
<
ÄÄ% & 
IMediaEventHandler
ÄÄ& 8
,
ÄÄ8 94
&DefaultMediaFileStoreCacheEventHandler
ÄÄ: `
>
ÄÄ` a
(
ÄÄa b
)
ÄÄb c
;
ÄÄc d
services
ÇÇ 
.
ÇÇ 
	AddScoped
ÇÇ "
<
ÇÇ" #"
IModularTenantEvents
ÇÇ# 7
,
ÇÇ7 8+
CreateMediaBlobContainerEvent
ÇÇ9 V
>
ÇÇV W
(
ÇÇW X
)
ÇÇX Y
;
ÇÇY Z
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
string
ÜÜ 
GetMediaPath
ÜÜ #
(
ÜÜ# $
ShellOptions
ÜÜ$ 0
shellOptions
ÜÜ1 =
,
ÜÜ= >
ShellSettings
ÜÜ? L
shellSettings
ÜÜM Z
,
ÜÜZ [
string
ÜÜ\ b

assetsPath
ÜÜc m
)
ÜÜm n
{
áá 	
return
àà 
PathExtensions
àà !
.
àà! "
Combine
àà" )
(
àà) *
shellOptions
àà* 6
.
àà6 7'
ShellsApplicationDataPath
àà7 P
,
ààP Q
shellOptions
ààR ^
.
àà^ _!
ShellsContainerName
àà_ r
,
ààr s
shellSettingsààt Å
.ààÅ Ç
NameààÇ Ü
,ààÜ á

assetsPathààà í
)ààí ì
;ààì î
}
ââ 	
private
ãã 
string
ãã 
GetMediaCachePath
ãã (
(
ãã( )!
IWebHostEnvironment
ãã) < 
hostingEnvironment
ãã= O
,
ããO P
string
ããQ W

assetsPath
ããX b
,
ããb c
ShellSettings
ããd q
shellSettings
ããr 
)ãã Ä
{
åå 	
return
çç 
PathExtensions
çç !
.
çç! "
Combine
çç" )
(
çç) * 
hostingEnvironment
çç* <
.
çç< =
WebRootPath
çç= H
,
ççH I

assetsPath
ççJ T
,
ççT U
shellSettings
ççV c
.
ççc d
Name
ççd h
)
ççh i
;
ççi j
}
éé 	
private
êê 
static
êê 
bool
êê 
CheckOptions
êê (
(
êê( )
string
êê) /
connectionString
êê0 @
,
êê@ A
string
êêB H
containerName
êêI V
,
êêV W
ILogger
êêX _
logger
êê` f
)
êêf g
{
ëë 	
var
íí 
optionsAreValid
íí 
=
íí  !
true
íí" &
;
íí& '
if
îî 
(
îî 
String
îî 
.
îî  
IsNullOrWhiteSpace
îî )
(
îî) *
connectionString
îî* :
)
îî: ;
)
îî; <
{
ïï 
logger
ññ 
.
ññ 
LogError
ññ 
(
ññ  
$strññ  †
)ññ† °
;ññ° ¢
optionsAreValid
óó 
=
óó  !
false
óó" '
;
óó' (
}
òò 
if
öö 
(
öö 
String
öö 
.
öö  
IsNullOrWhiteSpace
öö )
(
öö) *
containerName
öö* 7
)
öö7 8
)
öö8 9
{
õõ 
logger
úú 
.
úú 
LogError
úú 
(
úú  
$strúú  ù
)úúù û
;úúû ü
optionsAreValid
ùù 
=
ùù  !
false
ùù" '
;
ùù' (
}
ûû 
return
†† 
optionsAreValid
†† "
;
††" #
}
°° 	
}
¢¢ 
}££ ±
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Media.Azure\ViewModels\OptionsViewModel.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Azure !
.! "

ViewModels" ,
{ 
public 

class 
OptionsViewModel !
{ 
public 
string 
ConnectionString &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
ContainerName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
BasePath 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
CreateContainer #
{$ %
get& )
;) *
set+ .
;. /
}0 1
}		 
}

 