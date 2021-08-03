£
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\Events\IMediaCreatingEventHandler.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Events "
{ 
public		 

	interface		 &
IMediaCreatingEventHandler		 /
{

 
Task 
< 
Stream 
> 
MediaCreatingAsync '
(' ( 
MediaCreatingContext( <
context= D
,D E
StreamF L
creatingStreamM [
)[ \
;\ ]
} 
} ô

ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\Events\IMediaEventHandler.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Events "
{ 
public 

	interface 
IMediaEventHandler '
{		 
Task

 "
MediaDeletingFileAsync

 #
(

# $ 
MediaDeletingContext

$ 8
context

9 @
)

@ A
;

A B
Task !
MediaDeletedFileAsync "
(" #
MediaDeletedContext# 6
context7 >
)> ?
;? @
Task '
MediaDeletingDirectoryAsync (
(( ) 
MediaDeletingContext) =
context> E
)E F
;F G
Task &
MediaDeletedDirectoryAsync '
(' (
MediaDeletedContext( ;
context< C
)C D
;D E
Task 
MediaMovingAsync 
( 
MediaMoveContext .
context/ 6
)6 7
;7 8
Task 
MediaMovedAsync 
( 
MediaMoveContext -
context. 5
)5 6
;6 7
} 
} ú
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\Events\MediaContextBase.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Events "
{ 
public 

class 
MediaContextBase !
{ 
public 
string 
Path 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 π
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\Events\MediaCreatingContext.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Events "
{ 
public 

class  
MediaCreatingContext %
:& '
MediaContextBase( 8
{ 
} 
} œ
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\Events\MediaDeletedContext.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Events "
{ 
public 

class 
MediaDeletedContext $
:% &
MediaContextBase' 7
{ 
public 
bool 
Result 
{ 
get  
;  !
set" %
;% &
}' (
} 
} π
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\Events\MediaDeletingContext.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Events "
{ 
public 

class  
MediaDeletingContext %
:& '
MediaContextBase( 8
{ 
} 
} ∫
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\Events\MediaMoveContext.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Events "
{ 
public 

class 
MediaMoveContext !
{ 
public 
string 
NewPath 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
OldPath 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} «
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\IMediaFileProvider.cs
	namespace 	
OrchardCore
 
. 
Media 
{ 
public 

	interface 
IMediaFileProvider '
:( )
IStaticFileProvider* =
,= >$
IVirtualPathBaseProvider? W
{ 
} 
} ä
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\IMediaFileStore.cs
	namespace 	
OrchardCore
 
. 
Media 
{ 
public 

	interface 
IMediaFileStore $
:% &

IFileStore' 1
{		 
string 
MapPathToPublicUrl !
(! "
string" (
path) -
)- .
;. /
} 
} à
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\IMediaFileStoreCache.cs
	namespace 	
OrchardCore
 
. 
Media 
{ 
public		 

	interface		  
IMediaFileStoreCache		 )
:		* +
IFileStoreCache		, ;
{

 
Task 
< 
bool 
> 

PurgeAsync 
( 
) 
;  
Task 
< 
bool 
> 
TryDeleteFileAsync %
(% &
string& ,
path- 1
)1 2
;2 3
Task 
< 
bool 
> #
TryDeleteDirectoryAsync *
(* +
string+ 1
path2 6
)6 7
;7 8
} 
} ﬁ
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\IMediaFileStoreCacheFileProvider.cs
	namespace 	
OrchardCore
 
. 
Media 
{ 
public 

	interface ,
 IMediaFileStoreCacheFileProvider 5
:6 7
IMediaFileProvider8 J
,J K 
IMediaFileStoreCacheL `
{ 
} 
}		 ¥
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\IMediaNameNormalizerService.cs
	namespace 	
OrchardCore
 
. 
Media 
{ 
public 

	interface '
IMediaNameNormalizerService 0
{ 
public 
string 
NormalizeFolderName )
() *
string* 0

folderName1 ;
); <
;< =
public 
string 
NormalizeFileName '
(' (
string( .
fileName/ 7
)7 8
;8 9
} 
} ¸
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\IMediaTokenService.cs
	namespace 	
OrchardCore
 
. 
Media 
{ 
public		 

	interface		 
IMediaTokenService		 '
{

 
string 
AddTokenToPath 
( 
string $
path% )
)) *
;* +
bool 
TryValidateToken 
( 
IDictionary )
<) *
string* 0
,0 1
string2 8
>8 9
commands: B
,B C
stringD J
tokenK P
)P Q
;Q R
} 
} ù
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Abstractions\MediaOptions.cs
	namespace 	
OrchardCore
 
. 
Media 
{ 
public 

class 
MediaOptions 
{ 
public 
int 
[ 
] 
SupportedSizes #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
HashSet 
< 
string 
> !
AllowedFileExtensions 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
int 
MaxBrowserCacheDays &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
MaxCacheDays 
{  !
get" %
;% &
set' *
;* +
}, -
public%% 
int%% 
MaxFileSize%% 
{%%  
get%%! $
;%%$ %
set%%& )
;%%) *
}%%+ ,
public** 
string** 

CdnBaseUrl**  
{**! "
get**# &
;**& '
set**( +
;**+ ,
}**- .
public// 

PathString// 
AssetsRequestPath// +
{//, -
get//. 1
;//1 2
set//3 6
;//6 7
}//8 9
public44 
string44 

AssetsPath44  
{44! "
get44# &
;44& '
set44( +
;44+ ,
}44- .
public:: 
bool:: #
UseTokenizedQueryString:: +
{::, -
get::. 1
;::1 2
set::3 6
;::6 7
}::8 9
public?? 
StaticFileOptions??  
StaticFileOptions??! 2
{??3 4
get??5 8
;??8 9
set??: =
;??= >
}??? @
publicAA 
constAA 
stringAA *
EncryptedCommandCacheKeyPrefixAA :
=AA; <
$strAA= M
;AAM N
}BB 
}CC 