¿
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Setup\Annotations\SiteNameValidAttribute.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 
Annotations '
{ 
public 

class "
SiteNameValidAttribute '
:( )
System* 0
.0 1
ComponentModel1 ?
.? @
DataAnnotations@ O
.O P
RangeAttributeP ^
{ 
private 
string 
_value 
; 
public "
SiteNameValidAttribute %
(% &
int& )
maximumLength* 7
)7 8
: 
base 
( 
$num 
, 
maximumLength #
)# $
{		 	
}

 	
public 
override 
bool 
IsValid $
($ %
object% +
value, 1
)1 2
{ 	
_value 
= 
( 
value 
as 
string %
)% &
??' )
$str* ,
;, -
return 
base 
. 
IsValid 
(  
_value  &
.& '
Trim' +
(+ ,
), -
.- .
Length. 4
)4 5
;5 6
} 	
public 
override 
string 
FormatErrorMessage 1
(1 2
string2 8
name9 =
)= >
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
_value* 0
)0 1
)1 2
return 
$str /
;/ 0
return 
$" ,
 Site name can be no longer than  5
{5 6
Maximum6 =
}= >
 characters.> J
"J K
;K L
} 	
} 
} Û…
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Setup\Controllers\SetupController.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 
Controllers '
{ 
public 

class 
SetupController  
:! "

Controller# -
{ 
private 
readonly 
IClock 
_clock  &
;& '
private 
readonly 
ISetupService &
_setupService' 4
;4 5
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
IdentityOptions 
_identityOptions  0
;0 1
private 
readonly "
IEmailAddressValidator /"
_emailAddressValidator0 F
;F G
private 
readonly 
IEnumerable $
<$ %
DatabaseProvider% 5
>5 6
_databaseProviders7 I
;I J
private   
readonly   
ILogger    
_logger  ! (
;  ( )
private!! 
readonly!! 
IStringLocalizer!! )
S!!* +
;!!+ ,
public## 
SetupController## 
(## 
IClock$$ 
clock$$ 
,$$ 
ISetupService%% 
setupService%% &
,%%& '
ShellSettings&& 
shellSettings&& '
,&&' (

IShellHost'' 
	shellHost''  
,''  !
IOptions(( 
<(( 
IdentityOptions(( $
>(($ %
identityOptions((& 5
,((5 6"
IEmailAddressValidator)) "!
emailAddressValidator))# 8
,))8 9
IEnumerable** 
<** 
DatabaseProvider** (
>**( )
databaseProviders*** ;
,**; <
IStringLocalizer++ 
<++ 
SetupController++ ,
>++, -
	localizer++. 7
,++7 8
ILogger,, 
<,, 
SetupController,, #
>,,# $
logger,,% +
),,+ ,
{-- 	
_clock.. 
=.. 
clock.. 
;.. 
_setupService// 
=// 
setupService// (
;//( )
_shellSettings00 
=00 
shellSettings00 *
;00* +

_shellHost11 
=11 
	shellHost11 "
;11" #
_identityOptions22 
=22 
identityOptions22 .
.22. /
Value22/ 4
;224 5"
_emailAddressValidator33 "
=33# $!
emailAddressValidator33% :
;33: ;
_databaseProviders44 
=44  
databaseProviders44! 2
;442 3
_logger55 
=55 
logger55 
;55 
S66 
=66 
	localizer66 
;66 
}77 	
public99 
async99 
Task99 
<99 
ActionResult99 &
>99& '
Index99( -
(99- .
string99. 4
token995 :
)99: ;
{:: 	
var;; 
recipes;; 
=;; 
await;; 
_setupService;;  -
.;;- . 
GetSetupRecipesAsync;;. B
(;;B C
);;C D
;;;D E
var<< 
defaultRecipe<< 
=<< 
recipes<<  '
.<<' (
FirstOrDefault<<( 6
(<<6 7
x<<7 8
=><<9 ;
x<<< =
.<<= >
Tags<<> B
.<<B C
Contains<<C K
(<<K L
$str<<L U
)<<U V
)<<V W
??<<X Z
recipes<<[ b
.<<b c
FirstOrDefault<<c q
(<<q r
)<<r s
;<<s t
if>> 
(>> 
!>> 
string>> 
.>> 
IsNullOrWhiteSpace>> *
(>>* +
_shellSettings>>+ 9
[>>9 :
$str>>: B
]>>B C
)>>C D
)>>D E
{?? 
if@@ 
(@@ 
string@@ 
.@@ 
IsNullOrEmpty@@ (
(@@( )
token@@) .
)@@. /
||@@0 2
!@@3 4
await@@4 9
IsTokenValid@@: F
(@@F G
token@@G L
)@@L M
)@@M N
{AA 
_loggerBB 
.BB 

LogWarningBB &
(BB& '
$strBB' p
,BBp q
_shellSettings	BBr Ä
.
BBÄ Å
Name
BBÅ Ö
)
BBÖ Ü
;
BBÜ á
returnCC 

StatusCodeCC %
(CC% &
$numCC& )
)CC) *
;CC* +
}DD 
}EE 
varGG 
modelGG 
=GG 
newGG 
SetupViewModelGG *
{HH 
DatabaseProvidersII !
=II" #
_databaseProvidersII$ 6
,II6 7
RecipesJJ 
=JJ 
recipesJJ !
,JJ! "

RecipeNameKK 
=KK 
defaultRecipeKK *
?KK* +
.KK+ ,
NameKK, 0
,KK0 1
SecretLL 
=LL 
tokenLL 
}MM 
;MM #
CopyShellSettingsValuesOO #
(OO# $
modelOO$ )
)OO) *
;OO* +
ifQQ 
(QQ 
!QQ 
StringQQ 
.QQ 
IsNullOrEmptyQQ %
(QQ% &
_shellSettingsQQ& 4
[QQ4 5
$strQQ5 B
]QQB C
)QQC D
)QQD E
{RR 
modelSS 
.SS '
DatabaseConfigurationPresetSS 1
=SS2 3
trueSS4 8
;SS8 9
modelTT 
.TT 
TablePrefixTT !
=TT" #
_shellSettingsTT$ 2
[TT2 3
$strTT3 @
]TT@ A
;TTA B
}UU 
returnWW 
ViewWW 
(WW 
modelWW 
)WW 
;WW 
}XX 	
[ZZ 	
HttpPostZZ	 
,ZZ 

ActionNameZZ 
(ZZ 
$strZZ %
)ZZ% &
]ZZ& '
public[[ 
async[[ 
Task[[ 
<[[ 
ActionResult[[ &
>[[& '
	IndexPOST[[( 1
([[1 2
SetupViewModel[[2 @
model[[A F
)[[F G
{\\ 	
if]] 
(]] 
!]] 
string]] 
.]] 
IsNullOrWhiteSpace]] *
(]]* +
_shellSettings]]+ 9
[]]9 :
$str]]: B
]]]B C
)]]C D
)]]D E
{^^ 
if__ 
(__ 
string__ 
.__ 
IsNullOrEmpty__ (
(__( )
model__) .
.__. /
Secret__/ 5
)__5 6
||__7 9
!__: ;
await__; @
IsTokenValid__A M
(__M N
model__N S
.__S T
Secret__T Z
)__Z [
)__[ \
{`` 
_loggeraa 
.aa 

LogWarningaa &
(aa& '
$straa' v
,aav w
_shellSettings	aax Ü
.
aaÜ á
Name
aaá ã
)
aaã å
;
aaå ç
returnbb 

StatusCodebb %
(bb% &
$numbb& )
)bb) *
;bb* +
}cc 
}dd 
modelff 
.ff 
DatabaseProvidersff #
=ff$ %
_databaseProvidersff& 8
;ff8 9
modelgg 
.gg 
Recipesgg 
=gg 
awaitgg !
_setupServicegg" /
.gg/ 0 
GetSetupRecipesAsyncgg0 D
(ggD E
)ggE F
;ggF G
varii 
selectedProviderii  
=ii! "
modelii# (
.ii( )
DatabaseProvidersii) :
.ii: ;
FirstOrDefaultii; I
(iiI J
xiiJ K
=>iiL N
xiiO P
.iiP Q
ValueiiQ V
==iiW Y
modeliiZ _
.ii_ `
DatabaseProviderii` p
)iip q
;iiq r
ifkk 
(kk 
!kk 
modelkk 
.kk '
DatabaseConfigurationPresetkk 2
)kk2 3
{ll 
ifmm 
(mm 
selectedProvidermm $
!=mm% '
nullmm( ,
&&mm- /
selectedProvidermm0 @
.mm@ A
HasConnectionStringmmA T
&&mmU W
StringmmX ^
.mm^ _
IsNullOrWhiteSpacemm_ q
(mmq r
modelmmr w
.mmw x
ConnectionString	mmx à
)
mmà â
)
mmâ ä
{nn 

ModelStateoo 
.oo 
AddModelErroroo ,
(oo, -
nameofoo- 3
(oo3 4
modeloo4 9
.oo9 :
ConnectionStringoo: J
)ooJ K
,ooK L
SooM N
[ooN O
$str	ooO Ü
]
ooÜ á
)
ooá à
;
ooà â
}pp 
}qq 
ifss 
(ss 
Stringss 
.ss 
IsNullOrEmptyss $
(ss$ %
modelss% *
.ss* +
Passwordss+ 3
)ss3 4
)ss4 5
{tt 

ModelStateuu 
.uu 
AddModelErroruu (
(uu( )
nameofuu) /
(uu/ 0
modeluu0 5
.uu5 6
Passworduu6 >
)uu> ?
,uu? @
SuuA B
[uuB C
$struuC ^
]uu^ _
)uu_ `
;uu` a
}vv 
ifxx 
(xx 
modelxx 
.xx 
Passwordxx 
!=xx !
modelxx" '
.xx' ( 
PasswordConfirmationxx( <
)xx< =
{yy 

ModelStatezz 
.zz 
AddModelErrorzz (
(zz( )
nameofzz) /
(zz/ 0
modelzz0 5
.zz5 6 
PasswordConfirmationzz6 J
)zzJ K
,zzK L
SzzM N
[zzN O
$str	zzO Ü
]
zzÜ á
)
zzá à
;
zzà â
}{{ 
RecipeDescriptor}} 
selectedRecipe}} +
=}}, -
null}}. 2
;}}2 3
if~~ 
(~~ 
!~~ 
string~~ 
.~~ 
IsNullOrEmpty~~ %
(~~% &
_shellSettings~~& 4
[~~4 5
$str~~5 A
]~~A B
)~~B C
)~~C D
{ 
selectedRecipe
ÄÄ 
=
ÄÄ  
model
ÄÄ! &
.
ÄÄ& '
Recipes
ÄÄ' .
.
ÄÄ. /
FirstOrDefault
ÄÄ/ =
(
ÄÄ= >
x
ÄÄ> ?
=>
ÄÄ@ B
x
ÄÄC D
.
ÄÄD E
Name
ÄÄE I
==
ÄÄJ L
_shellSettings
ÄÄM [
[
ÄÄ[ \
$str
ÄÄ\ h
]
ÄÄh i
)
ÄÄi j
;
ÄÄj k
if
ÅÅ 
(
ÅÅ 
selectedRecipe
ÅÅ "
==
ÅÅ# %
null
ÅÅ& *
)
ÅÅ* +
{
ÇÇ 

ModelState
ÉÉ 
.
ÉÉ 
AddModelError
ÉÉ ,
(
ÉÉ, -
nameof
ÉÉ- 3
(
ÉÉ3 4
model
ÉÉ4 9
.
ÉÉ9 :

RecipeName
ÉÉ: D
)
ÉÉD E
,
ÉÉE F
S
ÉÉG H
[
ÉÉH I
$str
ÉÉI Z
]
ÉÉZ [
)
ÉÉ[ \
;
ÉÉ\ ]
}
ÑÑ 
}
ÖÖ 
else
ÜÜ 
if
ÜÜ 
(
ÜÜ 
String
ÜÜ 
.
ÜÜ 
IsNullOrEmpty
ÜÜ )
(
ÜÜ) *
model
ÜÜ* /
.
ÜÜ/ 0

RecipeName
ÜÜ0 :
)
ÜÜ: ;
||
ÜÜ< >
(
ÜÜ? @
selectedRecipe
ÜÜ@ N
=
ÜÜO P
model
ÜÜQ V
.
ÜÜV W
Recipes
ÜÜW ^
.
ÜÜ^ _
FirstOrDefault
ÜÜ_ m
(
ÜÜm n
x
ÜÜn o
=>
ÜÜp r
x
ÜÜs t
.
ÜÜt u
Name
ÜÜu y
==
ÜÜz |
modelÜÜ} Ç
.ÜÜÇ É

RecipeNameÜÜÉ ç
)ÜÜç é
)ÜÜé è
==ÜÜê í
nullÜÜì ó
)ÜÜó ò
{
áá 

ModelState
àà 
.
àà 
AddModelError
àà (
(
àà( )
nameof
àà) /
(
àà/ 0
model
àà0 5
.
àà5 6

RecipeName
àà6 @
)
àà@ A
,
ààA B
S
ààC D
[
ààD E
$str
ààE V
]
ààV W
)
ààW X
;
ààX Y
}
ââ 
if
åå 
(
åå 
!
åå 
String
åå 
.
åå 
IsNullOrEmpty
åå %
(
åå% &
model
åå& +
.
åå+ ,
Email
åå, 1
)
åå1 2
&&
åå3 5
!
åå6 7$
_emailAddressValidator
åå7 M
.
ååM N
Validate
ååN V
(
ååV W
model
ååW \
.
åå\ ]
Email
åå] b
)
ååb c
)
ååc d
{
çç 

ModelState
éé 
.
éé 
AddModelError
éé (
(
éé( )
nameof
éé) /
(
éé/ 0
model
éé0 5
.
éé5 6
Email
éé6 ;
)
éé; <
,
éé< =
S
éé> ?
[
éé? @
$str
éé@ W
]
ééW X
)
ééX Y
;
ééY Z
}
èè 
if
ëë 
(
ëë 
!
ëë 
String
ëë 
.
ëë 
IsNullOrEmpty
ëë %
(
ëë% &
model
ëë& +
.
ëë+ ,
UserName
ëë, 4
)
ëë4 5
&&
ëë6 8
model
ëë9 >
.
ëë> ?
UserName
ëë? G
.
ëëG H
Any
ëëH K
(
ëëK L
c
ëëL M
=>
ëëN P
!
ëëQ R
_identityOptions
ëëR b
.
ëëb c
User
ëëc g
.
ëëg h(
AllowedUserNameCharactersëëh Å
.ëëÅ Ç
ContainsëëÇ ä
(ëëä ã
cëëã å
)ëëå ç
)ëëç é
)ëëé è
{
íí 

ModelState
ìì 
.
ìì 
AddModelError
ìì (
(
ìì( )
nameof
ìì) /
(
ìì/ 0
model
ìì0 5
.
ìì5 6
UserName
ìì6 >
)
ìì> ?
,
ìì? @
S
ììA B
[
ììB C
$strììC Ñ
,ììÑ Ö
modelììÜ ã
.ììã å
UserNameììå î
]ììî ï
)ììï ñ
;ììñ ó
}
îî 
if
ññ 
(
ññ 
!
ññ 

ModelState
ññ 
.
ññ 
IsValid
ññ #
)
ññ# $
{
óó %
CopyShellSettingsValues
òò '
(
òò' (
model
òò( -
)
òò- .
;
òò. /
return
ôô 
View
ôô 
(
ôô 
model
ôô !
)
ôô! "
;
ôô" #
}
öö 
var
úú 
setupContext
úú 
=
úú 
new
úú "
SetupContext
úú# /
{
ùù 
ShellSettings
ûû 
=
ûû 
_shellSettings
ûû  .
,
ûû. /
EnabledFeatures
üü 
=
üü  !
null
üü" &
,
üü& '
Errors
†† 
=
†† 
new
†† 

Dictionary
†† '
<
††' (
string
††( .
,
††. /
string
††0 6
>
††6 7
(
††7 8
)
††8 9
,
††9 :
Recipe
°° 
=
°° 
selectedRecipe
°° '
,
°°' (

Properties
¢¢ 
=
¢¢ 
new
¢¢  

Dictionary
¢¢! +
<
¢¢+ ,
string
¢¢, 2
,
¢¢2 3
object
¢¢4 :
>
¢¢: ;
{
££ 
{
§§ 
SetupConstants
§§ $
.
§§$ %
SiteName
§§% -
,
§§- .
model
§§/ 4
.
§§4 5
SiteName
§§5 =
}
§§> ?
,
§§? @
{
•• 
SetupConstants
•• $
.
••$ %
AdminUsername
••% 2
,
••2 3
model
••4 9
.
••9 :
UserName
••: B
}
••C D
,
••D E
{
¶¶ 
SetupConstants
¶¶ $
.
¶¶$ %

AdminEmail
¶¶% /
,
¶¶/ 0
model
¶¶1 6
.
¶¶6 7
Email
¶¶7 <
}
¶¶= >
,
¶¶> ?
{
ßß 
SetupConstants
ßß $
.
ßß$ %
AdminPassword
ßß% 2
,
ßß2 3
model
ßß4 9
.
ßß9 :
Password
ßß: B
}
ßßC D
,
ßßD E
{
®® 
SetupConstants
®® $
.
®®$ %
SiteTimeZone
®®% 1
,
®®1 2
model
®®3 8
.
®®8 9
SiteTimeZone
®®9 E
}
®®F G
,
®®G H
}
©© 
}
™™ 
;
™™ 
if
¨¨ 
(
¨¨ 
!
¨¨ 
string
¨¨ 
.
¨¨ 
IsNullOrEmpty
¨¨ %
(
¨¨% &
_shellSettings
¨¨& 4
[
¨¨4 5
$str
¨¨5 G
]
¨¨G H
)
¨¨H I
)
¨¨I J
{
≠≠ 
setupContext
ÆÆ 
.
ÆÆ 

Properties
ÆÆ '
[
ÆÆ' (
SetupConstants
ÆÆ( 6
.
ÆÆ6 7
DatabaseProvider
ÆÆ7 G
]
ÆÆG H
=
ÆÆI J
_shellSettings
ÆÆK Y
[
ÆÆY Z
$str
ÆÆZ l
]
ÆÆl m
;
ÆÆm n
setupContext
ØØ 
.
ØØ 

Properties
ØØ '
[
ØØ' (
SetupConstants
ØØ( 6
.
ØØ6 7&
DatabaseConnectionString
ØØ7 O
]
ØØO P
=
ØØQ R
_shellSettings
ØØS a
[
ØØa b
$str
ØØb t
]
ØØt u
;
ØØu v
setupContext
∞∞ 
.
∞∞ 

Properties
∞∞ '
[
∞∞' (
SetupConstants
∞∞( 6
.
∞∞6 7!
DatabaseTablePrefix
∞∞7 J
]
∞∞J K
=
∞∞L M
_shellSettings
∞∞N \
[
∞∞\ ]
$str
∞∞] j
]
∞∞j k
;
∞∞k l
}
±± 
else
≤≤ 
{
≥≥ 
setupContext
¥¥ 
.
¥¥ 

Properties
¥¥ '
[
¥¥' (
SetupConstants
¥¥( 6
.
¥¥6 7
DatabaseProvider
¥¥7 G
]
¥¥G H
=
¥¥I J
model
¥¥K P
.
¥¥P Q
DatabaseProvider
¥¥Q a
;
¥¥a b
setupContext
µµ 
.
µµ 

Properties
µµ '
[
µµ' (
SetupConstants
µµ( 6
.
µµ6 7&
DatabaseConnectionString
µµ7 O
]
µµO P
=
µµQ R
model
µµS X
.
µµX Y
ConnectionString
µµY i
;
µµi j
setupContext
∂∂ 
.
∂∂ 

Properties
∂∂ '
[
∂∂' (
SetupConstants
∂∂( 6
.
∂∂6 7!
DatabaseTablePrefix
∂∂7 J
]
∂∂J K
=
∂∂L M
model
∂∂N S
.
∂∂S T
TablePrefix
∂∂T _
;
∂∂_ `
}
∑∑ 
var
ππ 
executionId
ππ 
=
ππ 
await
ππ #
_setupService
ππ$ 1
.
ππ1 2

SetupAsync
ππ2 <
(
ππ< =
setupContext
ππ= I
)
ππI J
;
ππJ K
if
ºº 
(
ºº 
setupContext
ºº 
.
ºº 
Errors
ºº #
.
ºº# $
Any
ºº$ '
(
ºº' (
)
ºº( )
)
ºº) *
{
ΩΩ 
foreach
ææ 
(
ææ 
var
ææ 
error
ææ "
in
ææ# %
setupContext
ææ& 2
.
ææ2 3
Errors
ææ3 9
)
ææ9 :
{
øø 

ModelState
¿¿ 
.
¿¿ 
AddModelError
¿¿ ,
(
¿¿, -
error
¿¿- 2
.
¿¿2 3
Key
¿¿3 6
,
¿¿6 7
error
¿¿8 =
.
¿¿= >
Value
¿¿> C
)
¿¿C D
;
¿¿D E
}
¡¡ 
return
√√ 
View
√√ 
(
√√ 
model
√√ !
)
√√! "
;
√√" #
}
ƒƒ 
return
∆∆ 
Redirect
∆∆ 
(
∆∆ 
$str
∆∆  
)
∆∆  !
;
∆∆! "
}
«« 	
private
…… 
void
…… %
CopyShellSettingsValues
…… ,
(
……, -
SetupViewModel
……- ;
model
……< A
)
……A B
{
   	
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
String
ÀÀ 
.
ÀÀ 
IsNullOrEmpty
ÀÀ %
(
ÀÀ% &
_shellSettings
ÀÀ& 4
[
ÀÀ4 5
$str
ÀÀ5 G
]
ÀÀG H
)
ÀÀH I
)
ÀÀI J
{
ÃÃ 
model
ÕÕ 
.
ÕÕ )
DatabaseConfigurationPreset
ÕÕ 1
=
ÕÕ2 3
true
ÕÕ4 8
;
ÕÕ8 9
model
ŒŒ 
.
ŒŒ 
ConnectionString
ŒŒ &
=
ŒŒ' (
_shellSettings
ŒŒ) 7
[
ŒŒ7 8
$str
ŒŒ8 J
]
ŒŒJ K
;
ŒŒK L
}
œœ 
if
—— 
(
—— 
!
—— 
String
—— 
.
—— 
IsNullOrEmpty
—— %
(
——% &
_shellSettings
——& 4
[
——4 5
$str
——5 A
]
——A B
)
——B C
)
——C D
{
““ 
model
”” 
.
”” 
RecipeNamePreset
”” &
=
””' (
true
””) -
;
””- .
model
‘‘ 
.
‘‘ 

RecipeName
‘‘  
=
‘‘! "
_shellSettings
‘‘# 1
[
‘‘1 2
$str
‘‘2 >
]
‘‘> ?
;
‘‘? @
}
’’ 
if
◊◊ 
(
◊◊ 
!
◊◊ 
String
◊◊ 
.
◊◊ 
IsNullOrEmpty
◊◊ %
(
◊◊% &
_shellSettings
◊◊& 4
[
◊◊4 5
$str
◊◊5 G
]
◊◊G H
)
◊◊H I
)
◊◊I J
{
ÿÿ 
model
ŸŸ 
.
ŸŸ )
DatabaseConfigurationPreset
ŸŸ 1
=
ŸŸ2 3
true
ŸŸ4 8
;
ŸŸ8 9
model
⁄⁄ 
.
⁄⁄ 
DatabaseProvider
⁄⁄ &
=
⁄⁄' (
_shellSettings
⁄⁄) 7
[
⁄⁄7 8
$str
⁄⁄8 J
]
⁄⁄J K
;
⁄⁄K L
}
€€ 
else
‹‹ 
{
›› 
model
ﬁﬁ 
.
ﬁﬁ 
DatabaseProvider
ﬁﬁ &
=
ﬁﬁ' (
model
ﬁﬁ) .
.
ﬁﬁ. /
DatabaseProviders
ﬁﬁ/ @
.
ﬁﬁ@ A
FirstOrDefault
ﬁﬁA O
(
ﬁﬁO P
p
ﬁﬁP Q
=>
ﬁﬁR T
p
ﬁﬁU V
.
ﬁﬁV W
	IsDefault
ﬁﬁW `
)
ﬁﬁ` a
?
ﬁﬁa b
.
ﬁﬁb c
Value
ﬁﬁc h
;
ﬁﬁh i
}
ﬂﬂ 
if
·· 
(
·· 
!
·· 
String
·· 
.
·· 
IsNullOrEmpty
·· %
(
··% &
_shellSettings
··& 4
[
··4 5
$str
··5 B
]
··B C
)
··C D
)
··D E
{
‚‚ 
model
„„ 
.
„„ 
Description
„„ !
=
„„" #
_shellSettings
„„$ 2
[
„„2 3
$str
„„3 @
]
„„@ A
;
„„A B
}
‰‰ 
}
ÂÂ 	
private
ÁÁ 
async
ÁÁ 
Task
ÁÁ 
<
ÁÁ 
bool
ÁÁ 
>
ÁÁ  
IsTokenValid
ÁÁ! -
(
ÁÁ- .
string
ÁÁ. 4
token
ÁÁ5 :
)
ÁÁ: ;
{
ËË 	
try
ÈÈ 
{
ÍÍ 
var
ÎÎ 
result
ÎÎ 
=
ÎÎ 
false
ÎÎ "
;
ÎÎ" #
var
ÌÌ 

shellScope
ÌÌ 
=
ÌÌ  
await
ÌÌ! &

_shellHost
ÌÌ' 1
.
ÌÌ1 2
GetScopeAsync
ÌÌ2 ?
(
ÌÌ? @
ShellHelper
ÌÌ@ K
.
ÌÌK L
DefaultShellName
ÌÌL \
)
ÌÌ\ ]
;
ÌÌ] ^
await
ÔÔ 

shellScope
ÔÔ  
.
ÔÔ  !

UsingAsync
ÔÔ! +
(
ÔÔ+ ,
scope
ÔÔ, 1
=>
ÔÔ2 4
{
 
var
ÒÒ $
dataProtectionProvider
ÒÒ .
=
ÒÒ/ 0
scope
ÒÒ1 6
.
ÒÒ6 7
ServiceProvider
ÒÒ7 F
.
ÒÒF G 
GetRequiredService
ÒÒG Y
<
ÒÒY Z%
IDataProtectionProvider
ÒÒZ q
>
ÒÒq r
(
ÒÒr s
)
ÒÒs t
;
ÒÒt u
var
ÚÚ 
dataProtector
ÚÚ %
=
ÚÚ& '$
dataProtectionProvider
ÚÚ( >
.
ÚÚ> ?
CreateProtector
ÚÚ? N
(
ÚÚN O
$str
ÚÚO W
)
ÚÚW X
.
ÚÚX Y(
ToTimeLimitedDataProtector
ÚÚY s
(
ÚÚs t
)
ÚÚt u
;
ÚÚu v
var
ÙÙ 

tokenValue
ÙÙ "
=
ÙÙ# $
dataProtector
ÙÙ% 2
.
ÙÙ2 3
	Unprotect
ÙÙ3 <
(
ÙÙ< =
token
ÙÙ= B
,
ÙÙB C
out
ÙÙD G
var
ÙÙH K

expiration
ÙÙL V
)
ÙÙV W
;
ÙÙW X
if
ˆˆ 
(
ˆˆ 
_clock
ˆˆ 
.
ˆˆ 
UtcNow
ˆˆ %
<
ˆˆ& '

expiration
ˆˆ( 2
.
ˆˆ2 3
ToUniversalTime
ˆˆ3 B
(
ˆˆB C
)
ˆˆC D
)
ˆˆD E
{
˜˜ 
if
¯¯ 
(
¯¯ 
_shellSettings
¯¯ *
[
¯¯* +
$str
¯¯+ 3
]
¯¯3 4
==
¯¯5 7

tokenValue
¯¯8 B
)
¯¯B C
{
˘˘ 
result
˙˙ "
=
˙˙# $
true
˙˙% )
;
˙˙) *
}
˚˚ 
}
¸¸ 
return
˛˛ 
Task
˛˛ 
.
˛˛  
CompletedTask
˛˛  -
;
˛˛- .
}
ˇˇ 
)
ˇˇ 
;
ˇˇ 
return
ÅÅ 
result
ÅÅ 
;
ÅÅ 
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
	Exception
ÉÉ 
ex
ÉÉ 
)
ÉÉ  
{
ÑÑ 
_logger
ÖÖ 
.
ÖÖ 
LogError
ÖÖ  
(
ÖÖ  !
ex
ÖÖ! #
,
ÖÖ# $
$str
ÖÖ% D
)
ÖÖD E
;
ÖÖE F
}
ÜÜ 
return
àà 
false
àà 
;
àà 
}
ââ 	
}
ää 
}ãã »
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Setup\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str T
,T U
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 0
}		1 2
,		2 3
Category

 
=

 
$str

 
) 
] ‚1
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Setup\Startup.cs
	namespace 	
OrchardCore
 
. 
Setup 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
string 
_defaultCulture  /
=0 1
CultureInfo2 =
.= >
InstalledUICulture> P
.P Q
NameQ U
;U V
private 
string 
[ 
] 
_supportedCultures +
=, -
new. 1
string2 8
[8 9
]9 :
{; <
$str 
, 
$str 
, 
$str 
, 
$str "
," #
$str$ (
,( )
$str* .
,. /
$str0 4
,4 5
$str6 :
,: ;
$str< @
,@ A
$strB F
,F G
$strH L
,L M
$strN U
,U V
$strW [
,[ \
$str] a
,a b
$strc g
,g h
$stri m
,m n
$stro v
,v w
$strx 
} 	
;	 

public 
Startup 
( 
IShellConfiguration *
shellConfiguration+ =
)= >
{ 	
var  
configurationSection $
=% &
shellConfiguration' 9
.9 :

GetSection: D
(D E
$strE X
)X Y
;Y Z
_defaultCulture 
=  
configurationSection 2
[2 3
$str3 C
]C D
??E G
_defaultCultureH W
;W X
_supportedCultures 
=   
configurationSection! 5
.5 6

GetSection6 @
(@ A
$strA T
)T U
.U V
GetV Y
<Y Z
ListZ ^
<^ _
string_ e
>e f
>f g
(g h
)h i
?i j
.j k
ToArrayk r
(r s
)s t
??u w
_supportedCultures	x ä
;
ä ã
}   	
public"" 
override"" 
void"" 
ConfigureServices"" .
("". /
IServiceCollection""/ A
services""B J
)""J K
{## 	
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
;%%} ~
services'' 
.'' 
AddSetup'' 
('' 
)'' 
;''  
services)) 
.)) 
	Configure)) 
<)) 
IdentityOptions)) .
>)). /
())/ 0
options))0 7
=>))8 :
{** 
options++ 
.++ 
User++ 
.++ %
AllowedUserNameCharacters++ 6
=++7 8
$str++9 }
;++} ~
options,, 
.,, 
User,, 
.,, 
RequireUniqueEmail,, /
=,,0 1
true,,2 6
;,,6 7
}-- 
)-- 
;-- 
}.. 	
public00 
override00 
void00 
	Configure00 &
(00& '
IApplicationBuilder00' :
app00; >
,00> ?!
IEndpointRouteBuilder00@ U
routes00V \
,00\ ]
IServiceProvider00^ n
serviceProvider00o ~
)00~ 
{11 	
var22 
localizationOptions22 #
=22$ %
serviceProvider22& 5
.225 6

GetService226 @
<22@ A
IOptions22A I
<22I J&
RequestLocalizationOptions22J d
>22d e
>22e f
(22f g
)22g h
.22h i
Value22i n
;22n o
if44 
(44 
!44 
String44 
.44 
IsNullOrEmpty44 %
(44% &
_defaultCulture44& 5
)445 6
)446 7
{55 
localizationOptions66 #
.66# $
SetDefaultCulture66$ 5
(665 6
_defaultCulture666 E
)66E F
;66F G
_supportedCultures77 "
=77# $
_supportedCultures77% 7
.777 8
Union778 =
(77= >
new77> A
[77A B
]77B C
{77D E
_defaultCulture77F U
}77V W
)77W X
.77X Y
ToArray77Y `
(77` a
)77a b
;77b c
}88 
if:: 
(:: 
_supportedCultures:: "
?::" #
.::# $
Length::$ *
>::+ ,
$num::- .
)::. /
{;; 
localizationOptions<< #
.==  
AddSupportedCultures== )
(==) *
_supportedCultures==* <
)==< =
.>> "
AddSupportedUICultures>> +
(>>+ ,
_supportedCultures>>, >
)>>> ?
;>>? @
}?? 
appAA 
.AA "
UseRequestLocalizationAA &
(AA& '
localizationOptionsAA' :
)AA: ;
;AA; <
routesCC 
.CC "
MapAreaControllerRouteCC )
(CC) *
nameDD 
:DD 
$strDD 
,DD 
areaNameEE 
:EE 
$strEE -
,EE- .
patternFF 
:FF 
$strFF 
,FF 
defaultsGG 
:GG 
newGG 
{GG 

controllerGG  *
=GG+ ,
$strGG- 4
,GG4 5
actionGG6 <
=GG= >
$strGG? F
}GGG H
)HH 
;HH 
}II 	
}JJ 
}KK Ç
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Setup\ViewModels\SetupViewModel.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 

ViewModels &
{		 
public

 

class

 
SetupViewModel

 
{ 
[ 	
Required	 
] 
[ 	
SiteNameValid	 
( 
maximumLength $
:$ %
$num& (
)( )
]) *
public 
string 
SiteName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
DatabaseProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
ConnectionString &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
TablePrefix !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool '
DatabaseConfigurationPreset /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
[ 	
Required	 
] 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[   	
Required  	 
]   
public!! 
string!! 
Email!! 
{!! 
get!! !
;!!! "
set!!# &
;!!& '
}!!( )
[## 	
DataType##	 
(## 
DataType## 
.## 
Password## #
)### $
]##$ %
public$$ 
string$$ 
Password$$ 
{$$  
get$$! $
;$$$ %
set$$& )
;$$) *
}$$+ ,
[&& 	
DataType&&	 
(&& 
DataType&& 
.&& 
Password&& #
)&&# $
]&&$ %
public'' 
string''  
PasswordConfirmation'' *
{''+ ,
get''- 0
;''0 1
set''2 5
;''5 6
}''7 8
public)) 
IEnumerable)) 
<)) 
DatabaseProvider)) +
>))+ ,
DatabaseProviders))- >
{))? @
get))A D
;))D E
set))F I
;))I J
}))K L
=))M N

Enumerable))O Y
.))Y Z
Empty))Z _
<))_ `
DatabaseProvider))` p
>))p q
())q r
)))r s
;))s t
public++ 
IEnumerable++ 
<++ 
RecipeDescriptor++ +
>+++ ,
Recipes++- 4
{++5 6
get++7 :
;++: ;
set++< ?
;++? @
}++A B
public-- 
bool-- 
RecipeNamePreset-- $
{--% &
get--' *
;--* +
set--, /
;--/ 0
}--1 2
public// 
string// 

RecipeName//  
{//! "
get//# &
;//& '
set//( +
;//+ ,
}//- .
public11 
string11 
SiteTimeZone11 "
{11# $
get11% (
;11( )
set11* -
;11- .
}11/ 0
public33 
string33 
Secret33 
{33 
get33 "
;33" #
set33$ '
;33' (
}33) *
}44 
}55 ≥0
ÆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Setup\..\OrchardCore.Localization\ModularPoFileLocationProvider.cs
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
}WW 