Š
ƒD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Roles.Core\CommonPermissions.cs
	namespace 	
OrchardCore
 
. 
Roles 
{ 
public 

class 
CommonPermissions "
{ 
public 
static 
readonly 

Permission )
ManageRoles* 5
=6 7
new8 ;

Permission< F
(F G
$strG T
,T U
$strV f
,f g
isSecurityCriticalh z
:z {
true	| €
)
€ 
;
 ‚
public		 
static		 
readonly		 

Permission		 )
AssignRoles		* 5
=		6 7
new		8 ;

Permission		< F
(		F G
$str		G T
,		T U
$str		V d
,		d e
new		f i
[		i j
]		j k
{		l m
ManageRoles		n y
}		z {
,		{ |
isSecurityCritical			} 
:
		 
true
		‘ •
)
		• –
;
		– —
private 
static 
readonly 

Permission  *

AssignRole+ 5
=6 7
new8 ;

Permission< F
(F G
$strG W
,W X
$strY l
,l m
newn q
[q r
]r s
{t u
AssignRoles	v 
,
 ‚
ManageRoles
ƒ Ž
}
 
)
 ‘
;
‘ ’
public 
static 

Permission  )
CreatePermissionForAssignRole! >
(> ?
string? E
nameF J
)J K
=> 
new 

Permission 
( 
String 
. 
Format !
(! "

AssignRole" ,
., -
Name- 1
,1 2
name3 7
)7 8
,8 9
String 
. 
Format !
(! "

AssignRole" ,
., -
Description- 8
,8 9
name: >
)> ?
,? @

AssignRole 
. 
	ImpliedBy (
) 
; 
} 
} 