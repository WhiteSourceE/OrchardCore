∑
yD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Themes\TheAgencyTheme\Manifest.cs
[ 
assembly 	
:	 

Theme 
( 
Name 
=	 

$str 
, 
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
$str		 8
,		8 9
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
  .
,

. /
$str

0 8
}

9 :
) 
] ï
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Themes\TheAgencyTheme\ResourceManifest.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
TheAgencyTheme +
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
. 
DefineScript 
( 
$str .
). /
. 
SetDependencies  
(  !
$str! )
)) *
. 
SetUrl 
( 
$str A
,A B
$strC h
)h i
. 

SetVersion 
( 
$str #
)# $
;$ %
manifest 
. 
DefineStyle 
( 
$str -
)- .
. 
SetUrl 
( 
$str @
,@ A
$strB f
)f g
. 

SetVersion 
( 
$str #
)# $
;$ %
manifest 
. 
DefineStyle 
( 
$str :
): ;
. 
SetDependencies  
(  !
$str! 1
)1 2
. 
SetUrl 
( 
$str F
,F G
$strH r
)r s
. 

SetVersion 
( 
$str #
)# $
;$ %
} 	
} 
} Ã
xD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Themes\TheAgencyTheme\Startup.cs
	namespace 	
OrchardCore
 
. 
Themes 
. 
TheAgencyTheme +
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