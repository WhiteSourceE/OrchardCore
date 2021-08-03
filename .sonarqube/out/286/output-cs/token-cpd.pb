»%
ŽD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.AdminMenu.Abstractions\Models\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Models  &
{ 
public 

class 
	AdminMenu 
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
=' (
Guid) -
.- .
NewGuid. 5
(5 6
)6 7
.7 8
ToString8 @
(@ A
$strA D
)D E
;E F
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
bool

 
Enabled

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
=

* +
true

, 0
;

0 1
public 
List 
< 
	AdminNode 
> 
	MenuItems (
{) *
get+ .
;. /
}0 1
=2 3
new4 7
List8 <
<< =
	AdminNode= F
>F G
(G H
)H I
;I J
public 
	AdminNode 
GetMenuItemById (
(( )
string) /
id0 2
)2 3
{ 	
foreach 
( 
var 
menuItem !
in" $
	MenuItems% .
). /
{ 
var 
found 
= 
menuItem $
.$ %
GetMenuItemById% 4
(4 5
id5 7
)7 8
;8 9
if 
( 
found 
!= 
null !
)! "
{ 
return 
found  
;  !
} 
} 
return 
null 
; 
} 	
public 
bool 
RemoveMenuItem "
(" #
	AdminNode# ,
itemToRemove- 9
)9 :
{ 	
if 
( 
	MenuItems 
. 
Contains "
(" #
itemToRemove# /
)/ 0
)0 1
{ 
	MenuItems   
.   
Remove    
(    !
itemToRemove  ! -
)  - .
;  . /
return!! 
true!! 
;!! 
}"" 
else## 
{$$ 
foreach%% 
(%% 
var%% 
firstLevelMenuItem%% /
in%%0 2
	MenuItems%%3 <
)%%< =
{&& 
if'' 
('' 
firstLevelMenuItem'' *
.''* +
RemoveMenuItem''+ 9
(''9 :
itemToRemove'': F
)''F G
)''G H
{(( 
return)) 
true)) #
;))# $
}** 
}++ 
},, 
return.. 
false.. 
;.. 
}// 	
public11 
bool11 
InsertMenuItemAt11 $
(11$ %
	AdminNode11% .
menuItemToInsert11/ ?
,11? @
	AdminNode11A J
destinationMenuItem11K ^
,11^ _
int11` c
position11d l
)11l m
{22 	
if33 
(33 
menuItemToInsert33  
==33! #
null33$ (
)33( )
{44 
throw55 
new55 !
ArgumentNullException55 /
(55/ 0
$str550 B
)55B C
;55C D
}66 
if99 
(99 
destinationMenuItem99 #
==99$ &
null99' +
)99+ ,
{:: 
	MenuItems;; 
.;; 
Insert;;  
(;;  !
position;;! )
,;;) *
menuItemToInsert;;+ ;
);;; <
;;;< =
return<< 
true<< 
;<< 
}== 
else>> 
{?? 
foreach@@ 
(@@ 
var@@ 
firstLevelMenuItem@@ /
in@@0 2
	MenuItems@@3 <
)@@< =
{AA 
ifBB 
(BB 
firstLevelMenuItemBB *
.BB* +
InsertMenuItemBB+ 9
(BB9 :
menuItemToInsertBB: J
,BBJ K
destinationMenuItemBBL _
,BB_ `
positionBBa i
)BBi j
)BBj k
{CC 
returnDD 
trueDD #
;DD# $
}EE 
}FF 
}GG 
returnHH 
falseHH 
;HH 
}II 	
}JJ 
}KK §.
ŽD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.AdminMenu.Abstractions\Models\AdminNode.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Models  &
{ 
public 

class 
	AdminNode 
: 
MenuItem %
{		 
public

 
string

 
UniqueId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
Guid

/ 3
.

3 4
NewGuid

4 ;
(

; <
)

< =
.

= >
ToString

> F
(

F G
$str

G J
)

J K
;

K L
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
=* +
true, 0
;0 1
public 
	AdminNode 
GetMenuItemById (
(( )
string) /
id0 2
)2 3
{ 	
var 
	tempStack 
= 
new 
Stack  %
<% &
	AdminNode& /
>/ 0
(0 1
new1 4
	AdminNode5 >
[> ?
]? @
{A B
thisC G
}H I
)I J
;J K
while 
( 
	tempStack 
. 
Any  
(  !
)! "
)" #
{ 
	AdminNode 
item 
=  
	tempStack! *
.* +
Pop+ .
(. /
)/ 0
;0 1
if 
( 
item 
. 
UniqueId !
.! "
Equals" (
(( )
id) +
,+ ,
StringComparison- =
.= >
OrdinalIgnoreCase> O
)O P
)P Q
{ 
return 
item 
;  
} 
foreach 
( 
var 
i 
in !
item" &
.& '
Items' ,
), -
{ 
	tempStack 
. 
Push "
(" #
(# $
	AdminNode$ -
)- .
i. /
)/ 0
;0 1
} 
} 
return"" 
null"" 
;"" 
}## 	
public&& 
bool&& 
RemoveMenuItem&& "
(&&" #
	AdminNode&&# ,
nodeToRemove&&- 9
)&&9 :
{'' 	
var(( 
	tempStack(( 
=(( 
new(( 
Stack((  %
<((% &
	AdminNode((& /
>((/ 0
(((0 1
new((1 4
	AdminNode((5 >
[((> ?
]((? @
{((A B
this((C G
}((H I
)((I J
;((J K
while** 
(** 
	tempStack** 
.** 
Any**  
(**  !
)**! "
)**" #
{++ 
MenuItem-- 
item-- 
=-- 
	tempStack--  )
.--) *
Pop--* -
(--- .
)--. /
;--/ 0
if.. 
(.. 
item.. 
... 
Items.. 
... 
Contains.. '
(..' (
nodeToRemove..( 4
)..4 5
)..5 6
{// 
item00 
.00 
Items00 
.00 
Remove00 %
(00% &
nodeToRemove00& 2
)002 3
;003 4
return11 
true11 
;11  
}22 
foreach55 
(55 
var55 
i55 
in55 !
item55" &
.55& '
Items55' ,
)55, -
{66 
	tempStack77 
.77 
Push77 "
(77" #
(77# $
	AdminNode77$ -
)77- .
i77. /
)77/ 0
;770 1
}88 
}99 
return<< 
false<< 
;<< 
}== 	
public?? 
bool?? 
InsertMenuItem?? "
(??" #
	AdminNode??# ,
nodeToInsert??- 9
,??9 :
MenuItem??; C
destinationNode??D S
,??S T
int??U X
position??Y a
)??a b
{@@ 	
varAA 
	tempStackAA 
=AA 
newAA 
StackAA  %
<AA% &
	AdminNodeAA& /
>AA/ 0
(AA0 1
newAA1 4
	AdminNodeAA5 >
[AA> ?
]AA? @
{AAA B
thisAAC G
}AAH I
)AAI J
;AAJ K
whileBB 
(BB 
	tempStackBB 
.BB 
AnyBB  
(BB  !
)BB! "
)BB" #
{CC 
MenuItemEE 
nodeEE 
=EE 
	tempStackEE  )
.EE) *
PopEE* -
(EE- .
)EE. /
;EE/ 0
ifFF 
(FF 
nodeFF 
.FF 
EqualsFF 
(FF  
destinationNodeFF  /
)FF/ 0
)FF0 1
{GG 
nodeHH 
.HH 
ItemsHH 
.HH 
InsertHH %
(HH% &
positionHH& .
,HH. /
nodeToInsertHH0 <
)HH< =
;HH= >
returnII 
trueII 
;II  
}JJ 
foreachMM 
(MM 
varMM 
nMM 
inMM !
nodeMM" &
.MM& '
ItemsMM' ,
)MM, -
{NN 
	tempStackOO 
.OO 
PushOO "
(OO" #
(OO# $
	AdminNodeOO$ -
)OO- .
nOO. /
)OO/ 0
;OO0 1
}PP 
}QQ 
returnTT 
falseTT 
;TT 
}UU 	
}VV 
}WW ÷
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.AdminMenu.Abstractions\Services\IAdminMenuPermissionService.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Services  (
{ 
public 

	interface '
IAdminMenuPermissionService 0
{ 
Task		 
<		 
IEnumerable		 
<		 

Permission		 #
>		# $
>		$ %
GetPermissionsAsync		& 9
(		9 :
)		: ;
;		; <
}

 
} ð
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.AdminMenu.Abstractions\Services\IAdminNodeNavigationBuilder.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Services  (
{ 
public 

	interface '
IAdminNodeNavigationBuilder 0
{ 
string 
Name 
{ 
get 
; 
} 
Task  
BuildNavigationAsync !
(! "
MenuItem" *
treeNode+ 3
,3 4
NavigationBuilder5 F
builderG N
,N O
IEnumerableP [
<[ \'
IAdminNodeNavigationBuilder\ w
>w x
treeNodeBuilders	y ‰
)
‰ Š
;
Š ‹
} 
} Ž
 D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.AdminMenu.Abstractions\Services\IAdminNodeProviderFactory.cs
	namespace 	
OrchardCore
 
. 
	AdminMenu 
.  
Services  (
{ 
public 

	interface %
IAdminNodeProviderFactory .
{ 
string 
Name 
{ 
get 
; 
} 
	AdminNode 
Create 
( 
) 
; 
}		 
public 

class $
AdminNodeProviderFactory )
<) *

TAdminNode* 4
>4 5
:6 7%
IAdminNodeProviderFactory8 Q
whereR W

TAdminNodeX b
:c d
	AdminNodee n
,n o
newp s
(s t
)t u
{ 
private 
static 
readonly 
string  &
TypeName' /
=0 1
typeof2 8
(8 9

TAdminNode9 C
)C D
.D E
NameE I
;I J
public 
string 
Name 
=> 
TypeName &
;& '
public 
	AdminNode 
Create 
(  
)  !
{ 	
return 
new 

TAdminNode !
(! "
)" #
;# $
} 	
} 
} 