ˆ
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Themes\TheTheme\Controllers\HomeController.cs
	namespace 	
OrchardCore
 
. 
TheTheme 
. 
Controllers *
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return		 
View		 
(		 
)		 
;		 
}

 	
} 
} ê
sD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Themes\TheTheme\Manifest.cs
[ 
assembly 	
:	 

Theme 
( 
Name 
=	 

$str 
, 
Author 

= 
ManifestConstants 
. 
OrchardCoreTeam .
,. /
Website 
= 
ManifestConstants 
.  
OrchardCoreWebsite  2
,2 3
Version 
= 
ManifestConstants 
.  
OrchardCoreVersion  2
,2 3
Description		 
=		 
$str		 &
,		& '
Tags

 
=

	 

new

 
[

 
]

 
{

 
$str

 
,

 
$str

  )
}

* +
) 
] õ
vD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Themes\TheTheme\PlaceHolder.cs
	namespace 	
TheTheme
 
{ 
public 

class 
Placeholder 
{ 
} 
} ø
{D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Themes\TheTheme\ResourceManifest.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
TheTheme %
{ 
public 

class 
ResourceManifest !
:" #%
IResourceManifestProvider$ =
{ 
public 
void 
BuildManifests "
(" #$
IResourceManifestBuilder# ;
builder< C
)C D
{ 	
var		 
manifest		 
=		 
builder		 "
.		" #
Add		# &
(		& '
)		' (
;		( )
manifest 
. 
DefineStyle 
( 
$str 4
)4 5
. 
SetUrl 
( 
$str =
,= >
$str? `
)` a
. 

SetVersion 
( 
$str #
)# $
;$ %
} 	
} 
} ¿
rD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Themes\TheTheme\Startup.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
TheTheme %
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public		 
override		 
void		 
ConfigureServices		 .
(		. /
IServiceCollection		/ A
serviceCollection		B S
)		S T
{

 	
serviceCollection 
. 
	AddScoped '
<' (%
IResourceManifestProvider( A
,A B
ResourceManifestC S
>S T
(T U
)U V
;V W
} 	
} 
} 