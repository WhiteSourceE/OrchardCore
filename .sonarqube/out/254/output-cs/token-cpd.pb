Â
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Settings.Core\Deployment\SiteSettingsPropertyDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

Deployment )
{ 
public		 

class		 0
$SiteSettingsPropertyDeploymentSource		 5
<		5 6
TModel		6 <
>		< =
:		> ?
IDeploymentSource		@ Q
where		R W
TModel		X ^
:		_ `
class		a f
,		f g
new		h k
(		k l
)		l m
{

 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 0
$SiteSettingsPropertyDeploymentSource 3
(3 4
ISiteService4 @
siteServiceA L
)L M
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
settingsStep 
= 
step #
as$ &.
"SiteSettingsPropertyDeploymentStep' I
<I J
TModelJ P
>P Q
;Q R
if 
( 
settingsStep 
== 
null  $
)$ %
{ 
return 
; 
} 
var 
siteSettings 
= 
await $
_siteService% 1
.1 2 
GetSiteSettingsAsync2 F
(F G
)G H
;H I
var 
settingJProperty  
=! "
new# &
	JProperty' 0
(0 1
typeof1 7
(7 8
TModel8 >
)> ?
.? @
Name@ D
,D E
JObjectF M
.M N

FromObjectN X
(X Y
siteSettingsY e
.e f
Asf h
<h i
TModeli o
>o p
(p q
)q r
)r s
)s t
;t u
var 
settingsStepJObject #
=$ %
result& ,
., -
Steps- 2
.2 3
FirstOrDefault3 A
(A B
sB C
=>D F
sG H
[H I
$strI O
]O P
?P Q
.Q R
ToStringR Z
(Z [
)[ \
==] _
$str` j
)j k
;k l
if 
( 
settingsStepJObject #
!=$ &
null' +
)+ ,
{   
settingsStepJObject!! #
.!!# $
Add!!$ '
(!!' (
settingJProperty!!( 8
)!!8 9
;!!9 :
}"" 
else## 
{$$ 
result%% 
.%% 
Steps%% 
.%% 
Add%%  
(%%  !
new%%! $
JObject%%% ,
(%%, -
new&& 
	JProperty&& !
(&&! "
$str&&" (
,&&( )
$str&&* 4
)&&4 5
,&&5 6
new'' 
	JProperty'' !
(''! "
settingJProperty''" 2
)''2 3
)(( 
)(( 
;(( 
})) 
}** 	
}++ 
},,  
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Settings.Core\Deployment\SiteSettingsPropertyDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

Deployment )
{ 
public 

class .
"SiteSettingsPropertyDeploymentStep 3
<3 4
TModel4 :
>: ;
:< =
DeploymentStep> L
whereM R
TModelS Y
:Z [
class\ a
,a b
newc f
(f g
)g h
{		 
public

 .
"SiteSettingsPropertyDeploymentStep

 1
(

1 2
)

2 3
{ 	
Name 
= 
typeof 
( 
TModel  
)  !
.! "
Name" &
+' (
$str) N
;N O
} 	
} 
} ò
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Settings.Core\Deployment\SiteSettingsPropertyDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

Deployment )
{ 
public 

class 4
(SiteSettingsPropertyDeploymentStepDriver 9
<9 :
TModel: @
>@ A
:B C
DisplayDriverD Q
<Q R
DeploymentStepR `
,` a/
"SiteSettingsPropertyDeploymentStep	b Ñ
<
Ñ Ö
TModel
Ö ã
>
ã å
>
å ç
where
é ì
TModel
î ö
:
õ ú
class
ù ¢
,
¢ £
new
§ ß
(
ß ®
)
® ©
{		 
private

 
readonly

 
string

 
_title

  &
;

& '
private 
readonly 
string 
_description  ,
;, -
public 4
(SiteSettingsPropertyDeploymentStepDriver 7
(7 8
string8 >
title? D
,D E
stringF L
descriptionM X
)X Y
{ 	
_title 
= 
title 
; 
_description 
= 
description &
;& '
} 	
public 
override 
IDisplayResult &
Display' .
(. /.
"SiteSettingsPropertyDeploymentStep/ Q
<Q R
TModelR X
>X Y
stepZ ^
)^ _
{ 	
return 
Combine 
( 

Initialize 
< 7
+SiteSettingsPropertyDeploymentStepViewModel J
>J K
(K L
$strL 
,	 Ä
m
Å Ç
=>
É Ö
BuildViewModel
Ü î
(
î ï
m
ï ñ
)
ñ ó
)
ó ò
. 
Location !
(! "
$str" +
,+ ,
$str- 6
)6 7
,7 8

Initialize 
< 7
+SiteSettingsPropertyDeploymentStepViewModel J
>J K
(K L
$str	L Å
,
Å Ç
m
É Ñ
=>
Ö á
BuildViewModel
à ñ
(
ñ ó
m
ó ò
)
ò ô
)
ô ö
. 
Location !
(! "
$str" -
,- .
$str/ 8
)8 9
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,.
"SiteSettingsPropertyDeploymentStep, N
<N O
TModelO U
>U V
stepW [
)[ \
{ 	
return 

Initialize 
< 7
+SiteSettingsPropertyDeploymentStepViewModel I
>I J
(J K
$strK {
,{ |
m} ~
=>	 Å
BuildViewModel
Ç ê
(
ê ë
m
ë í
)
í ì
)
ì î
.   
Location   
(   
$str   #
)  # $
;  $ %
}!! 	
private## 
void## 
BuildViewModel## #
(### $7
+SiteSettingsPropertyDeploymentStepViewModel##$ O
model##P U
)##U V
{$$ 	
model%% 
.%% 
Title%% 
=%% 
_title%%  
;%%  !
model&& 
.&& 
Description&& 
=&& 
_description&&  ,
;&&, -
}'' 	
}(( 
})) Ê

©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Settings.Core\Deployment\SiteSettingsPropertyDeploymentStepFactory.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

Deployment )
{ 
public 

class 5
)SiteSettingsPropertyDeploymentStepFactory :
<: ;
TModel; A
>A B
:C D"
IDeploymentStepFactoryE [
where 
TModel 
: 
class 
, 
new !
(! "
)" #
{ 
private 
static 
readonly 
string  &
GenericTypeKey' 5
=6 7
typeof8 >
(> ?
TModel? E
)E F
.F G
NameG K
+L M
$strN s
;s t
public

 
string

 
Name

 
=>

 
GenericTypeKey

 ,
;

, -
public 
DeploymentStep 
Create $
($ %
)% &
{ 	
return 
new .
"SiteSettingsPropertyDeploymentStep 9
<9 :
TModel: @
>@ A
(A B
)B C
;C D
} 	
} 
} ¯
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Settings.Core\ViewModels\SiteSettingsPropertyDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

ViewModels )
{ 
public 

class 7
+SiteSettingsPropertyDeploymentStepViewModel <
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} 