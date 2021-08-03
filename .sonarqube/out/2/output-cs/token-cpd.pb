µ*
’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\CultureDictionary.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class 
CultureDictionary "
:# $
IEnumerable% 0
<0 1#
CultureDictionaryRecord1 H
>H I
{ 
public 
CultureDictionary  
(  !
string! '
cultureName( 3
,3 4%
PluralizationRuleDelegate5 N

pluralRuleO Y
)Y Z
{ 	
Translations 
= 
new 

Dictionary )
<) *
string* 0
,0 1
string2 8
[8 9
]9 :
>: ;
(; <
)< =
;= >
CultureName 
= 
cultureName %
;% &

PluralRule 
= 

pluralRule #
;# $
} 	
public 
string 
CultureName !
{" #
get$ '
;' (
}) *
public!! %
PluralizationRuleDelegate!! (

PluralRule!!) 3
{!!4 5
get!!6 9
;!!9 :
}!!; <
public)) 
string)) 
this)) 
[)) 
string)) !
key))" %
,))% &
int))' *
?))* +
count)), 1
=))2 3
null))4 8
]))8 9
{** 	
get++ 
{,, 
if-- 
(-- 
key-- 
==-- 
null-- 
)--  
{.. 
throw// 
new// !
ArgumentNullException// 3
(//3 4
nameof//4 :
(//: ;
key//; >
)//> ?
)//? @
;//@ A
}00 
if22 
(22 
!22 
Translations22 !
.22! "
TryGetValue22" -
(22- .
key22. 1
,221 2
out223 6
string227 =
[22= >
]22> ?
translations22@ L
)22L M
)22M N
{33 
return44 
null44 
;44  
}55 
var77 

pluralForm77 
=77  
count77! &
.77& '
HasValue77' /
?770 1

PluralRule772 <
(77< =
count77= B
.77B C
Value77C H
)77H I
:77J K
$num77L M
;77M N
if88 
(88 

pluralForm88 
>=88 !
translations88" .
.88. /
Length88/ 5
)885 6
{99 
throw:: 
new:: '
PluralFormNotFoundException:: 9
(::9 :
$"::: <
Plural form '::< I
{::I J

pluralForm::J T
}::T U)
' doesn't exist for the key '::U r
{::r s
key::s v
}::v w

' in the '	::w 
{
:: ‚
CultureName
::‚ 
}
:: Ž

' culture.
::Ž ˜
"
::˜ ™
,
::™ š
new
::› ž

PluralForm
::Ÿ ©
(
::© ª
key
::ª ­
,
::­ ®

pluralForm
::¯ ¹
,
::¹ º
CultureInfo
::» Æ
.
::Æ Ç
GetCultureInfo
::Ç Õ
(
::Õ Ö
CultureName
::Ö á
)
::á â
)
::â ã
)
::ã ä
;
::ä å
};; 
return== 
translations== #
[==# $

pluralForm==$ .
]==. /
;==/ 0
}>> 
}?? 	
publicDD 
IDictionaryDD 
<DD 
stringDD !
,DD! "
stringDD# )
[DD) *
]DD* +
>DD+ ,
TranslationsDD- 9
{DD: ;
getDD< ?
;DD? @
privateDDA H
setDDI L
;DDL M
}DDN O
publicJJ 
voidJJ 
MergeTranslationsJJ %
(JJ% &
IEnumerableJJ& 1
<JJ1 2#
CultureDictionaryRecordJJ2 I
>JJI J
recordsJJK R
)JJR S
{KK 	
foreachLL 
(LL 
varLL 
recordLL 
inLL  "
recordsLL# *
)LL* +
{MM 
TranslationsNN 
[NN 
recordNN #
.NN# $
KeyNN$ '
]NN' (
=NN) *
recordNN+ 1
.NN1 2
TranslationsNN2 >
;NN> ?
}OO 
}PP 	
publicRR 
IEnumeratorRR 
<RR #
CultureDictionaryRecordRR 2
>RR2 3
GetEnumeratorRR4 A
(RRA B
)RRB C
{SS 	
foreachTT 
(TT 
varTT 
itemTT 
inTT  
TranslationsTT! -
)TT- .
{UU 
yieldVV 
returnVV 
newVV  #
CultureDictionaryRecordVV! 8
(VV8 9
itemVV9 =
.VV= >
KeyVV> A
,VVA B
nullVVC G
,VVG H
itemVVI M
.VVM N
ValueVVN S
)VVS T
;VVT U
}WW 
}XX 	
IEnumeratorZZ 
IEnumerableZZ 
.ZZ  
GetEnumeratorZZ  -
(ZZ- .
)ZZ. /
=>ZZ0 2
GetEnumeratorZZ3 @
(ZZ@ A
)ZZA B
;ZZB C
}[[ 
}\\ ¤
˜D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\CultureDictionaryRecord.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class #
CultureDictionaryRecord (
{		 
public #
CultureDictionaryRecord &
(& '
string' -
	messageId. 7
,7 8
params9 ?
string@ F
[F G
]G H
translationsI U
)U V
: 
this 
( 
	messageId 
, 
null "
," #
translations$ 0
)0 1
{ 	
} 	
public #
CultureDictionaryRecord &
(& '
string' -
	messageId. 7
,7 8
string9 ?
context@ G
,G H
stringI O
[O P
]P Q
translationsR ^
)^ _
{ 	
Key 
= 
GetKey 
( 
	messageId "
," #
context$ +
)+ ,
;, -
Translations 
= 
translations '
;' (
} 	
public$$ 
string$$ 
Key$$ 
{$$ 
get$$ 
;$$  
}$$! "
public)) 
string)) 
[)) 
])) 
Translations)) $
{))% &
get))' *
;))* +
})), -
public11 
static11 
string11 
GetKey11 #
(11# $
string11$ *
	messageId11+ 4
,114 5
string116 <
context11= D
)11D E
{22 	
if33 
(33 
string33 
.33 
IsNullOrEmpty33 $
(33$ %
	messageId33% .
)33. /
)33/ 0
{44 
throw55 
new55 
ArgumentException55 +
(55+ ,
$str55, G
,55G H
nameof55I O
(55O P
	messageId55P Y
)55Y Z
)55Z [
;55[ \
}66 
if88 
(88 
string88 
.88 
IsNullOrEmpty88 $
(88$ %
context88% ,
)88, -
)88- .
{99 
return:: 
	messageId::  
;::  !
};; 
return== 
context== 
.== 
ToLowerInvariant== +
(==+ ,
)==, -
+==. /
$str==0 3
+==4 5
	messageId==6 ?
;==? @
}>> 	
}?? 
}@@ ¸
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\Extensions\HtmlLocalizerExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
." #
Localization# /
{ 
public		 

static		 
class		 #
HtmlLocalizerExtensions		 /
{

 
public 
static 
LocalizedHtmlString )
Plural* 0
(0 1
this1 5
IHtmlLocalizer6 D
	localizerE N
,N O
intP S
countT Y
,Y Z
string[ a
singularb j
,j k
stringl r
plurals y
,y z
params	{ 
object
‚ ˆ
[
ˆ ‰
]
‰ Š
	arguments
‹ ”
)
” •
{ 	
if 
( 
plural 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
plural7 =
)= >
,> ?
$str	@ ¹
)
¹ º
;
º »
} 
return 
	localizer 
[ 
singular %
,% &
new' *!
PluralizationArgument+ @
{A B
CountC H
=I J
countK P
,P Q
FormsR W
=X Y
newZ ]
[] ^
]^ _
{` a
singularb j
,j k
plurall r
}s t
,t u
	Argumentsv 
=
€ 
	arguments
‚ ‹
}
Œ 
]
 Ž
;
Ž 
} 	
public$$ 
static$$ 
LocalizedHtmlString$$ )
Plural$$* 0
($$0 1
this$$1 5
IHtmlLocalizer$$6 D
	localizer$$E N
,$$N O
int$$P S
count$$T Y
,$$Y Z
string$$[ a
[$$a b
]$$b c
pluralForms$$d o
,$$o p
params$$q w
object$$x ~
[$$~ 
]	$$ €
	arguments
$$ Š
)
$$Š ‹
{%% 	
if&& 
(&& 
pluralForms&& 
==&& 
null&& #
)&&# $
{'' 
throw(( 
new(( !
ArgumentNullException(( /
(((/ 0
nameof((0 6
(((6 7
pluralForms((7 B
)((B C
,((C D
$str	((E Ä
)
((Ä Å
;
((Å Æ
})) 
if++ 
(++ 
pluralForms++ 
.++ 
Length++ "
==++# %
$num++& '
)++' (
{,, 
throw-- 
new-- 
ArgumentException-- +
(--+ ,
nameof--, 2
(--2 3
pluralForms--3 >
)--> ?
,--? @
$str	--A ç
)
--ç è
;
--è é
}.. 
var00 
name00 
=00 
pluralForms00 "
[00" #
$num00# $
]00$ %
;00% &
return22 
	localizer22 
[22 
name22 !
,22! "
new22# &!
PluralizationArgument22' <
{22= >
Count22? D
=22E F
count22G L
,22L M
Forms22N S
=22T U
pluralForms22V a
,22a b
	Arguments22c l
=22m n
	arguments22o x
}22y z
]22z {
;22{ |
}33 	
}44 
}55 É
¥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\Extensions\StringLocalizerExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
Localization +
{ 
public		 

static		 
class		 %
StringLocalizerExtensions		 1
{

 
public 
static 
LocalizedString %
Plural& ,
(, -
this- 1
IStringLocalizer2 B
	localizerC L
,L M
intN Q
countR W
,W X
stringY _
singular` h
,h i
stringj p
pluralq w
,w x
paramsy 
object
€ †
[
† ‡
]
‡ ˆ
	arguments
‰ ’
)
’ “
{ 	
if 
( 
plural 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
plural7 =
)= >
,> ?
$str	@ ¹
)
¹ º
;
º »
} 
return 
	localizer 
[ 
singular %
,% &
new' *!
PluralizationArgument+ @
{A B
CountC H
=I J
countK P
,P Q
FormsR W
=X Y
newZ ]
[] ^
]^ _
{` a
singularb j
,j k
plurall r
}s t
,t u
	Argumentsv 
=
€ 
	arguments
‚ ‹
}
Œ 
]
 Ž
;
Ž 
} 	
public$$ 
static$$ 
LocalizedString$$ %
Plural$$& ,
($$, -
this$$- 1
IStringLocalizer$$2 B
	localizer$$C L
,$$L M
int$$N Q
count$$R W
,$$W X
string$$Y _
[$$_ `
]$$` a
pluralForms$$b m
,$$m n
params$$o u
object$$v |
[$$| }
]$$} ~
	arguments	$$ ˆ
)
$$ˆ ‰
{%% 	
if&& 
(&& 
pluralForms&& 
==&& 
null&& #
)&&# $
{'' 
throw(( 
new(( !
ArgumentNullException(( /
(((/ 0
nameof((0 6
(((6 7
pluralForms((7 B
)((B C
,((C D
$str	((E Ä
)
((Ä Å
;
((Å Æ
})) 
if++ 
(++ 
pluralForms++ 
.++ 
Length++ "
==++# %
$num++& '
)++' (
{,, 
throw-- 
new-- 
ArgumentException-- +
(--+ ,
nameof--, 2
(--2 3
pluralForms--3 >
)--> ?
,--? @
$str	--A ç
)
--ç è
;
--è é
}.. 
return00 
	localizer00 
[00 
pluralForms00 (
[00( )
$num00) *
]00* +
,00+ ,
new00- 0!
PluralizationArgument001 F
{00G H
Count00I N
=00O P
count00Q V
,00V W
Forms00X ]
=00^ _
pluralForms00` k
,00k l
	Arguments00m v
=00w x
	arguments	00y ‚
}
00ƒ „
]
00„ …
;
00… †
}11 	
}22 
}33 ì
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\Extensions\ViewLocalizerExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
." #
Localization# /
{ 
public		 

static		 
class		 #
ViewLocalizerExtensions		 /
{

 
public 
static 
LocalizedHtmlString )
Plural* 0
(0 1
this1 5
IViewLocalizer6 D
	localizerE N
,N O
intP S
countT Y
,Y Z
string[ a
singularb j
,j k
stringl r
plurals y
,y z
params	{ 
object
‚ ˆ
[
ˆ ‰
]
‰ Š
	arguments
‹ ”
)
” •
{ 	
if 
( 
plural 
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
plural7 =
)= >
,> ?
$str	@ ¹
)
¹ º
;
º »
} 
return 
	localizer 
[ 
singular %
,% &
new' *!
PluralizationArgument+ @
{A B
CountC H
=I J
countK P
,P Q
FormsR W
=X Y
newZ ]
[] ^
]^ _
{` a
singularb j
,j k
plurall r
}s t
,t u
	Argumentsv 
=
€ 
	arguments
‚ ‹
}
Œ 
]
 Ž
;
Ž 
} 	
public%% 
static%% 
LocalizedHtmlString%% )
Plural%%* 0
(%%0 1
this%%1 5
IViewLocalizer%%6 D
	localizer%%E N
,%%N O
int%%P S
count%%T Y
,%%Y Z
string%%[ a
[%%a b
]%%b c
pluralForms%%d o
,%%o p
params%%q w
object%%x ~
[%%~ 
]	%% €
	arguments
%% Š
)
%%Š ‹
{&& 	
if'' 
('' 
pluralForms'' 
=='' 
null'' #
)''# $
{(( 
throw)) 
new)) !
ArgumentNullException)) /
())/ 0
nameof))0 6
())6 7
pluralForms))7 B
)))B C
,))C D
$str	))E Ä
)
))Ä Å
;
))Å Æ
}** 
if,, 
(,, 
pluralForms,, 
.,, 
Length,, "
==,,# %
$num,,& '
),,' (
{-- 
throw.. 
new.. 
ArgumentException.. +
(..+ ,
nameof.., 2
(..2 3
pluralForms..3 >
)..> ?
,..? @
$str	..A ç
)
..ç è
;
..è é
}// 
return11 
	localizer11 
[11 
pluralForms11 (
[11( )
$num11) *
]11* +
,11+ ,
new11- 0!
PluralizationArgument111 F
{11G H
Count11I N
=11O P
count11Q V
,11V W
Forms11X ]
=11^ _
pluralForms11` k
,11k l
	Arguments11m v
=11w x
	arguments	11y ‚
}
11ƒ „
]
11„ …
;
11… †
}22 	
}33 
}44 Ð
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\ILocalizationFileLocationProvider.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public		 

	interface		 -
!ILocalizationFileLocationProvider		 6
{

 
IEnumerable 
< 
	IFileInfo 
> 
GetLocations +
(+ ,
string, 2
cultureName3 >
)> ?
;? @
} 
} ‰
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\ILocalizationManager.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface  
ILocalizationManager )
{		 
CultureDictionary 
GetDictionary '
(' (
CultureInfo( 3
culture4 ;
); <
;< =
} 
} ²
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\IPluralRuleProvider.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface 
IPluralRuleProvider (
{		 
int 
Order 
{ 
get 
; 
} 
bool 

TryGetRule 
( 
CultureInfo #
culture$ +
,+ ,
out- 0%
PluralizationRuleDelegate1 J
ruleK O
)O P
;P Q
} 
} ü
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\IPluralStringLocalizer.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface "
IPluralStringLocalizer +
:, -
IStringLocalizer. >
{		 
( 	
LocalizedString	 
, 
object  
[  !
]! "
)" #
GetTranslation$ 2
(2 3
string3 9
name: >
,> ?
params@ F
objectG M
[M N
]N O
	argumentsP Y
)Y Z
;Z [
} 
} Ä
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\ITranslationProvider.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface  
ITranslationProvider )
{ 
void 
LoadTranslations 
( 
string $
cultureName% 0
,0 1
CultureDictionary2 C

dictionaryD N
)N O
;O P
} 
} Ù

’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\LanguageDirection.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

static 
class 
LanguageDirection )
{		 
public 
static 
readonly 
string %
LTR& )
=* +
$str, 1
;1 2
public 
static 
readonly 
string %
RTL& )
=* +
$str, 1
;1 2
public 
static 
string  
GetLanguageDirection 1
(1 2
this2 6
CultureInfo7 B
cultureC J
)J K
=> 
culture 
. 
TextInfo 
.  
IsRightToLeft  -
?. /
RTL0 3
:4 5
LTR6 9
;9 :
public!! 
static!! 
bool!! 
IsRightToLeft!! (
(!!( )
this!!) -
CultureInfo!!. 9
culture!!: A
)!!A B
=>"" 
culture"" 
."" 
TextInfo"" 
.""  
IsRightToLeft""  -
;""- .
}## 
}$$ “
‹D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\PluralForm.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class 

PluralForm 
{		 
public 

PluralForm 
( 
string  
key! $
,$ %
int& )
form* .
). /
: 
this 
( 
key 
, 
form 
, 
CultureInfo )
.) *
CurrentUICulture* :
): ;
{ 	
} 	
public 

PluralForm 
( 
string  
key! $
,$ %
int& )
form* .
,. /
CultureInfo0 ;
culture< C
)C D
{ 	
Key 
= 
key 
; 
Form 
= 
form 
; 
Culture 
= 
culture 
; 
}   	
public%% 
CultureInfo%% 
Culture%% "
{%%# $
get%%% (
;%%( )
}%%* +
public** 
int** 
Form** 
{** 
get** 
;** 
}**  
public// 
string// 
Key// 
{// 
get// 
;//  
}//! "
}00 
}11 ã
œD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\PluralFormNotFoundException.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class '
PluralFormNotFoundException ,
:- .
	Exception/ 8
{		 
public '
PluralFormNotFoundException *
(* +
)+ ,
{ 	
} 	
public '
PluralFormNotFoundException *
(* +
string+ 1
message2 9
)9 :
:; <
base= A
(A B
messageB I
)I J
{ 	
} 	
public   '
PluralFormNotFoundException   *
(  * +
string  + 1
message  2 9
,  9 :

PluralForm  ; E
form  F J
)  J K
:  L M
base  N R
(  R S
message  S Z
)  Z [
{!! 	
Form"" 
="" 
form"" 
;"" 
}## 	
public** '
PluralFormNotFoundException** *
(*** +
string**+ 1
message**2 9
,**9 :
	Exception**; D
innerException**E S
)**S T
:**U V
base**W [
(**[ \
message**\ c
,**c d
innerException**e s
)**s t
{++ 	
}-- 	
public22 

PluralForm22 
Form22 
{22  
get22! $
;22$ %
}22& '
}33 
}44 û
–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\PluralizationArgument.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

struct !
PluralizationArgument '
{ 
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
[ 
] 
Forms 
{ 
get  #
;# $
set% (
;( )
}* +
public 
object 
[ 
] 
	Arguments !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Á
šD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Localization.Abstractions\PluralizationRuleDelegate.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

delegate 
int %
PluralizationRuleDelegate 1
(1 2
int2 5
count6 ;
); <
;< =
}		 