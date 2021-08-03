◊
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.FileStorage.Abstractions\FileStoreException.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
{ 
public 

class 
FileStoreException #
:$ %
	Exception& /
{ 
public 
FileStoreException !
(! "
string" (
message) 0
)0 1
:2 3
base4 8
(8 9
message9 @
)@ A
{ 	
}		 	
public 
FileStoreException !
(! "
string" (
message) 0
,0 1
	Exception2 ;
innerException< J
)J K
:L M
baseN R
(R S
messageS Z
,Z [
innerException\ j
)j k
{ 	
} 	
} 
} å+
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.FileStorage.Abstractions\IFileStore.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
{ 
public 

	interface 

IFileStore 
{ 
Task 
< 
IFileStoreEntry 
> 
GetFileInfoAsync .
(. /
string/ 5
path6 :
): ;
;; <
Task$$ 
<$$ 
IFileStoreEntry$$ 
>$$ !
GetDirectoryInfoAsync$$ 3
($$3 4
string$$4 :
path$$; ?
)$$? @
;$$@ A
IAsyncEnumerable00 
<00 
IFileStoreEntry00 (
>00( )$
GetDirectoryContentAsync00* B
(00B C
string00C I
path00J N
=00O P
null00Q U
,00U V
bool00W [!
includeSubDirectories00\ q
=00r s
false00t y
)00y z
;00z {
Task88 
<88 
bool88 
>88 #
TryCreateDirectoryAsync88 *
(88* +
string88+ 1
path882 6
)886 7
;887 8
Task?? 
<?? 
bool?? 
>?? 
TryDeleteFileAsync?? %
(??% &
string??& ,
path??- 1
)??1 2
;??2 3
TaskFF 
<FF 
boolFF 
>FF #
TryDeleteDirectoryAsyncFF *
(FF* +
stringFF+ 1
pathFF2 6
)FF6 7
;FF7 8
TaskNN 
MoveFileAsyncNN 
(NN 
stringNN !
oldPathNN" )
,NN) *
stringNN+ 1
newPathNN2 9
)NN9 :
;NN: ;
TaskVV 
CopyFileAsyncVV 
(VV 
stringVV !
srcPathVV" )
,VV) *
stringVV+ 1
dstPathVV2 9
)VV9 :
;VV: ;
Task^^ 
<^^ 
Stream^^ 
>^^ 
GetFileStreamAsync^^ '
(^^' (
string^^( .
path^^/ 3
)^^3 4
;^^4 5
Taskff 
<ff 
Streamff 
>ff 
GetFileStreamAsyncff '
(ff' (
IFileStoreEntryff( 7
fileStoreEntryff8 F
)ffF G
;ffG H
Taskss 
<ss 
stringss 
>ss %
CreateFileFromStreamAsyncss .
(ss. /
stringss/ 5
pathss6 :
,ss: ;
Streamss< B
inputStreamssC N
,ssN O
boolssP T
	overwritessU ^
=ss_ `
falsessa f
)ssf g
;ssg h
}tt 
publicvv 

staticvv 
classvv  
IFileStoreExtensionsvv ,
{ww 
public~~ 
static~~ 
string~~ 
Combine~~ $
(~~$ %
this~~% )

IFileStore~~* 4
	fileStore~~5 >
,~~> ?
params~~@ F
string~~G M
[~~M N
]~~N O
paths~~P U
)~~U V
{ 	
if
ÄÄ 
(
ÄÄ 
paths
ÄÄ 
.
ÄÄ 
Length
ÄÄ 
==
ÄÄ 
$num
ÄÄ  !
)
ÄÄ! "
return
ÅÅ 
null
ÅÅ 
;
ÅÅ 
var
ÉÉ 
normalizedParts
ÉÉ 
=
ÉÉ  !
paths
ÑÑ 
.
ÖÖ 
Select
ÖÖ 
(
ÖÖ 
x
ÖÖ 
=>
ÖÖ  
	fileStore
ÖÖ! *
.
ÖÖ* +
NormalizePath
ÖÖ+ 8
(
ÖÖ8 9
x
ÖÖ9 :
)
ÖÖ: ;
)
ÖÖ; <
.
ÜÜ 
Where
ÜÜ 
(
ÜÜ 
x
ÜÜ 
=>
ÜÜ 
!
ÜÜ  !
String
ÜÜ! '
.
ÜÜ' (
IsNullOrEmpty
ÜÜ( 5
(
ÜÜ5 6
x
ÜÜ6 7
)
ÜÜ7 8
)
ÜÜ8 9
.
áá 
ToArray
áá 
(
áá 
)
áá 
;
áá 
var
ââ 
combined
ââ 
=
ââ 
String
ââ !
.
ââ! "
Join
ââ" &
(
ââ& '
$str
ââ' *
,
ââ* +
normalizedParts
ââ, ;
)
ââ; <
;
ââ< =
if
åå 
(
åå 
paths
åå 
[
åå 
$num
åå 
]
åå 
?
åå 
.
åå 

StartsWith
åå $
(
åå$ %
$char
åå% (
)
åå( )
==
åå* ,
true
åå- 1
)
åå1 2
combined
çç 
=
çç 
$str
çç 
+
çç  
combined
çç! )
;
çç) *
return
èè 
combined
èè 
;
èè 
}
êê 	
public
ôô 
static
ôô 
string
ôô 
NormalizePath
ôô *
(
ôô* +
this
ôô+ /

IFileStore
ôô0 :
	fileStore
ôô; D
,
ôôD E
string
ôôF L
path
ôôM Q
)
ôôQ R
{
öö 	
if
õõ 
(
õõ 
path
õõ 
==
õõ 
null
õõ 
)
õõ 
return
úú 
null
úú 
;
úú 
return
ûû 
path
ûû 
.
ûû 
Replace
ûû 
(
ûû  
$char
ûû  $
,
ûû$ %
$char
ûû& )
)
ûû) *
.
ûû* +
Trim
ûû+ /
(
ûû/ 0
$char
ûû0 3
,
ûû3 4
$char
ûû5 8
)
ûû8 9
;
ûû9 :
}
üü 	
}
†† 
}°° Ø
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.FileStorage.Abstractions\IFileStoreCache.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
{ 
public

 

	interface

 
IFileStoreCache

 $
{ 
Task 
< 
bool 
> 
IsCachedAsync  
(  !
string! '
path( ,
), -
;- .
Task 
SetCacheAsync 
( 
Stream !
stream" (
,( )
IFileStoreEntry* 9
fileStoreEntry: H
,H I
CancellationTokenJ [
cancellationToken\ m
)m n
;n o
} 
} €
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.FileStorage.Abstractions\IFileStoreEntry.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
{ 
public 

	interface 
IFileStoreEntry $
{		 
string 
Path 
{ 
get 
; 
} 
string 
Name 
{ 
get 
; 
} 
string 
DirectoryPath 
{ 
get "
;" #
}$ %
long 
Length 
{ 
get 
; 
} 
DateTime!! 
LastModifiedUtc!!  
{!!! "
get!!# &
;!!& '
}!!( )
bool&& 
IsDirectory&& 
{&& 
get&& 
;&& 
}&&  !
}'' 
}(( 