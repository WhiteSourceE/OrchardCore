��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.FileStorage.FileSystem\FileSystemStore.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
.! "

FileSystem" ,
{		 
public

 

class

 
FileSystemStore

  
:

! "

IFileStore

# -
{ 
private 
readonly 
string 
_fileSystemPath  /
;/ 0
public 
FileSystemStore 
( 
string %
fileSystemPath& 4
)4 5
{ 	
_fileSystemPath 
= 
Path "
." #
GetFullPath# .
(. /
fileSystemPath/ =
)= >
;> ?
} 	
public 
Task 
< 
IFileStoreEntry #
># $
GetFileInfoAsync% 5
(5 6
string6 <
path= A
)A B
{ 	
var 
physicalPath 
= 
GetPhysicalPath .
(. /
path/ 3
)3 4
;4 5
var 
fileInfo 
= 
new 
PhysicalFileInfo /
(/ 0
new0 3
FileInfo4 <
(< =
physicalPath= I
)I J
)J K
;K L
if 
( 
fileInfo 
. 
Exists 
)  
{ 
return 
Task 
. 

FromResult &
<& '
IFileStoreEntry' 6
>6 7
(7 8
new8 ; 
FileSystemStoreEntry< P
(P Q
pathQ U
,U V
fileInfoW _
)_ `
)` a
;a b
} 
return 
Task 
. 

FromResult "
<" #
IFileStoreEntry# 2
>2 3
(3 4
null4 8
)8 9
;9 :
} 	
public!! 
Task!! 
<!! 
IFileStoreEntry!! #
>!!# $!
GetDirectoryInfoAsync!!% :
(!!: ;
string!!; A
path!!B F
)!!F G
{"" 	
var## 
physicalPath## 
=## 
GetPhysicalPath## .
(##. /
path##/ 3
)##3 4
;##4 5
var%% 
directoryInfo%% 
=%% 
new%%  #!
PhysicalDirectoryInfo%%$ 9
(%%9 :
new%%: =
DirectoryInfo%%> K
(%%K L
physicalPath%%L X
)%%X Y
)%%Y Z
;%%Z [
if'' 
('' 
directoryInfo'' 
.'' 
Exists'' $
)''$ %
{(( 
return)) 
Task)) 
.)) 

FromResult)) &
<))& '
IFileStoreEntry))' 6
>))6 7
())7 8
new))8 ; 
FileSystemStoreEntry))< P
())P Q
path))Q U
,))U V
directoryInfo))W d
)))d e
)))e f
;))f g
}** 
return,, 
Task,, 
.,, 

FromResult,, "
<,," #
IFileStoreEntry,,# 2
>,,2 3
(,,3 4
null,,4 8
),,8 9
;,,9 :
}-- 	
public// 
IAsyncEnumerable// 
<//  
IFileStoreEntry//  /
>/// 0$
GetDirectoryContentAsync//1 I
(//I J
string//J P
path//Q U
=//V W
null//X \
,//\ ]
bool//^ b!
includeSubDirectories//c x
=//y z
false	//{ �
)
//� �
{00 	
var11 
physicalPath11 
=11 
GetPhysicalPath11 .
(11. /
path11/ 3
)113 4
;114 5
var22 
results22 
=22 
new22 
List22 "
<22" #
IFileStoreEntry22# 2
>222 3
(223 4
)224 5
;225 6
if44 
(44 
!44 
	Directory44 
.44 
Exists44 !
(44! "
physicalPath44" .
)44. /
)44/ 0
{55 
return66 
results66 
.66 
ToAsyncEnumerable66 0
(660 1
)661 2
;662 3
}77 
results:: 
.:: 
AddRange:: 
(:: 
	Directory;; 
.<< 
GetDirectories<< #
(<<# $
physicalPath<<$ 0
,<<0 1
$str<<2 5
,<<5 6!
includeSubDirectories<<7 L
?<<M N
SearchOption<<O [
.<<[ \
AllDirectories<<\ j
:<<k l
SearchOption<<m y
.<<y z
TopDirectoryOnly	<<z �
)
<<� �
.== 
Select== 
(== 
f== 
=>==  
{>> 
var?? 
fileSystemInfo?? *
=??+ ,
new??- 0!
PhysicalDirectoryInfo??1 F
(??F G
new??G J
DirectoryInfo??K X
(??X Y
f??Y Z
)??Z [
)??[ \
;??\ ]
var@@ 
fileRelativePath@@ ,
=@@- .
f@@/ 0
.@@0 1
	Substring@@1 :
(@@: ;
_fileSystemPath@@; J
.@@J K
Length@@K Q
)@@Q R
;@@R S
varAA 
filePathAA $
=AA% &
thisAA' +
.AA+ ,
NormalizePathAA, 9
(AA9 :
fileRelativePathAA: J
)AAJ K
;AAK L
returnBB 
newBB " 
FileSystemStoreEntryBB# 7
(BB7 8
filePathBB8 @
,BB@ A
fileSystemInfoBBB P
)BBP Q
;BBQ R
}CC 
)CC 
)CC 
;CC 
resultsFF 
.FF 
AddRangeFF 
(FF 
	DirectoryGG 
.HH 
GetFilesHH 
(HH 
physicalPathHH *
,HH* +
$strHH, /
,HH/ 0!
includeSubDirectoriesHH1 F
?HHG H
SearchOptionHHI U
.HHU V
AllDirectoriesHHV d
:HHe f
SearchOptionHHg s
.HHs t
TopDirectoryOnly	HHt �
)
HH� �
.II 
SelectII 
(II 
fII 
=>II  
{JJ 
varKK 
fileSystemInfoKK *
=KK+ ,
newKK- 0
PhysicalFileInfoKK1 A
(KKA B
newKKB E
FileInfoKKF N
(KKN O
fKKO P
)KKP Q
)KKQ R
;KKR S
varLL 
fileRelativePathLL ,
=LL- .
fLL/ 0
.LL0 1
	SubstringLL1 :
(LL: ;
_fileSystemPathLL; J
.LLJ K
LengthLLK Q
)LLQ R
;LLR S
varMM 
filePathMM $
=MM% &
thisMM' +
.MM+ ,
NormalizePathMM, 9
(MM9 :
fileRelativePathMM: J
)MMJ K
;MMK L
returnNN 
newNN " 
FileSystemStoreEntryNN# 7
(NN7 8
filePathNN8 @
,NN@ A
fileSystemInfoNNB P
)NNP Q
;NNQ R
}OO 
)OO 
)OO 
;OO 
returnQQ 
resultsQQ 
.QQ 
ToAsyncEnumerableQQ ,
(QQ, -
)QQ- .
;QQ. /
}RR 	
publicTT 
TaskTT 
<TT 
boolTT 
>TT #
TryCreateDirectoryAsyncTT 1
(TT1 2
stringTT2 8
pathTT9 =
)TT= >
{UU 	
varVV 
physicalPathVV 
=VV 
GetPhysicalPathVV .
(VV. /
pathVV/ 3
)VV3 4
;VV4 5
ifXX 
(XX 
FileXX 
.XX 
ExistsXX 
(XX 
physicalPathXX (
)XX( )
)XX) *
{YY 
throwZZ 
newZZ 
FileStoreExceptionZZ ,
(ZZ, -
$"ZZ- /6
*Cannot create directory because the path 'ZZ/ Y
{ZZY Z
pathZZZ ^
}ZZ^ _+
' already exists and is a file.ZZ_ ~
"ZZ~ 
)	ZZ �
;
ZZ� �
}[[ 
if]] 
(]] 
	Directory]] 
.]] 
Exists]]  
(]]  !
physicalPath]]! -
)]]- .
)]]. /
{^^ 
return__ 
Task__ 
.__ 

FromResult__ &
(__& '
false__' ,
)__, -
;__- .
}`` 
	Directorybb 
.bb 
CreateDirectorybb %
(bb% &
physicalPathbb& 2
)bb2 3
;bb3 4
returndd 
Taskdd 
.dd 

FromResultdd "
(dd" #
truedd# '
)dd' (
;dd( )
}ee 	
publicgg 
Taskgg 
<gg 
boolgg 
>gg 
TryDeleteFileAsyncgg ,
(gg, -
stringgg- 3
pathgg4 8
)gg8 9
{hh 	
varii 
physicalPathii 
=ii 
GetPhysicalPathii .
(ii. /
pathii/ 3
)ii3 4
;ii4 5
ifkk 
(kk 
!kk 
Filekk 
.kk 
Existskk 
(kk 
physicalPathkk )
)kk) *
)kk* +
{ll 
returnmm 
Taskmm 
.mm 

FromResultmm &
(mm& '
falsemm' ,
)mm, -
;mm- .
}nn 
Filepp 
.pp 
Deletepp 
(pp 
physicalPathpp $
)pp$ %
;pp% &
returnrr 
Taskrr 
.rr 

FromResultrr "
(rr" #
truerr# '
)rr' (
;rr( )
}ss 	
publicuu 
Taskuu 
<uu 
booluu 
>uu #
TryDeleteDirectoryAsyncuu 1
(uu1 2
stringuu2 8
pathuu9 =
)uu= >
{vv 	
varww 
physicalPathww 
=ww 
GetPhysicalPathww .
(ww. /
pathww/ 3
)ww3 4
;ww4 5
ifyy 
(yy 
!yy 
	Directoryyy 
.yy 
Existsyy !
(yy! "
physicalPathyy" .
)yy. /
)yy/ 0
{zz 
return{{ 
Task{{ 
.{{ 

FromResult{{ &
({{& '
false{{' ,
){{, -
;{{- .
}|| 
	Directory~~ 
.~~ 
Delete~~ 
(~~ 
physicalPath~~ )
,~~) *
	recursive~~+ 4
:~~4 5
true~~6 :
)~~: ;
;~~; <
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
true
��# '
)
��' (
;
��( )
}
�� 	
public
�� 
Task
�� 
MoveFileAsync
�� !
(
��! "
string
��" (
oldPath
��) 0
,
��0 1
string
��2 8
newPath
��9 @
)
��@ A
{
�� 	
var
�� 
physicalOldPath
�� 
=
��  !
GetPhysicalPath
��" 1
(
��1 2
oldPath
��2 9
)
��9 :
;
��: ;
if
�� 
(
�� 
!
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
physicalOldPath
�� ,
)
��, -
)
��- .
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- / 
Cannot move file '
��/ A
{
��A B
oldPath
��B I
}
��I J*
' because it does not exist.
��J f
"
��f g
)
��g h
;
��h i
}
�� 
var
�� 
physicalNewPath
�� 
=
��  !
GetPhysicalPath
��" 1
(
��1 2
newPath
��2 9
)
��9 :
;
��: ;
if
�� 
(
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
physicalNewPath
�� +
)
��+ ,
||
��- /
	Directory
��0 9
.
��9 :
Exists
��: @
(
��@ A
physicalNewPath
��A P
)
��P Q
)
��Q R
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- /5
'Cannot move file because the new path '
��/ V
{
��V W
newPath
��W ^
}
��^ _
' already exists.
��_ p
"
��p q
)
��q r
;
��r s
}
�� 
File
�� 
.
�� 
Move
�� 
(
�� 
physicalOldPath
�� %
,
��% &
physicalNewPath
��' 6
)
��6 7
;
��7 8
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
Task
�� 
CopyFileAsync
�� !
(
��! "
string
��" (
srcPath
��) 0
,
��0 1
string
��2 8
dstPath
��9 @
)
��@ A
{
�� 	
var
�� 
physicalSrcPath
�� 
=
��  !
GetPhysicalPath
��" 1
(
��1 2
srcPath
��2 9
)
��9 :
;
��: ;
if
�� 
(
�� 
!
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
physicalSrcPath
�� ,
)
��, -
)
��- .
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- /

The file '
��/ 9
{
��9 :
srcPath
��: A
}
��A B
' does not exist.
��B S
"
��S T
)
��T U
;
��U V
}
�� 
var
�� 
physicalDstPath
�� 
=
��  !
GetPhysicalPath
��" 1
(
��1 2
dstPath
��2 9
)
��9 :
;
��: ;
if
�� 
(
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
physicalDstPath
�� +
)
��+ ,
||
��- /
	Directory
��0 9
.
��9 :
Exists
��: @
(
��@ A
physicalDstPath
��A P
)
��P Q
)
��Q R
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- /=
/Cannot copy file because the destination path '
��/ ^
{
��^ _
dstPath
��_ f
}
��f g
' already exists.
��g x
"
��x y
)
��y z
;
��z {
}
�� 
File
�� 
.
�� 
Copy
�� 
(
�� 
GetPhysicalPath
�� %
(
��% &
srcPath
��& -
)
��- .
,
��. /
GetPhysicalPath
��0 ?
(
��? @
dstPath
��@ G
)
��G H
)
��H I
;
��I J
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
Task
�� 
<
�� 
Stream
�� 
>
��  
GetFileStreamAsync
�� .
(
��. /
string
��/ 5
path
��6 :
)
��: ;
{
�� 	
var
�� 
physicalPath
�� 
=
�� 
GetPhysicalPath
�� .
(
��. /
path
��/ 3
)
��3 4
;
��4 5
if
�� 
(
�� 
!
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
physicalPath
�� )
)
��) *
)
��* +
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- /7
)Cannot get file stream because the file '
��/ X
{
��X Y
path
��Y ]
}
��] ^
' does not exist.
��^ o
"
��o p
)
��p q
;
��q r
}
�� 
var
�� 
stream
�� 
=
�� 
File
�� 
.
�� 
OpenRead
�� &
(
��& '
physicalPath
��' 3
)
��3 4
;
��4 5
return
�� 
Task
�� 
.
�� 

FromResult
�� "
<
��" #
Stream
��# )
>
��) *
(
��* +
stream
��+ 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
Task
�� 
<
�� 
Stream
�� 
>
��  
GetFileStreamAsync
�� .
(
��. /
IFileStoreEntry
��/ >
fileStoreEntry
��? M
)
��M N
{
�� 	
var
�� 
physicalPath
�� 
=
�� 
GetPhysicalPath
�� .
(
��. /
fileStoreEntry
��/ =
.
��= >
Path
��> B
)
��B C
;
��C D
if
�� 
(
�� 
!
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
physicalPath
�� )
)
��) *
)
��* +
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- /7
)Cannot get file stream because the file '
��/ X
{
��X Y
fileStoreEntry
��Y g
.
��g h
Path
��h l
}
��l m
' does not exist.
��m ~
"
��~ 
)�� �
;��� �
}
�� 
var
�� 
stream
�� 
=
�� 
File
�� 
.
�� 
OpenRead
�� &
(
��& '
physicalPath
��' 3
)
��3 4
;
��4 5
return
�� 
Task
�� 
.
�� 

FromResult
�� "
<
��" #
Stream
��# )
>
��) *
(
��* +
stream
��+ 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
string
��  
>
��  !'
CreateFileFromStreamAsync
��" ;
(
��; <
string
��< B
path
��C G
,
��G H
Stream
��I O
inputStream
��P [
,
��[ \
bool
��] a
	overwrite
��b k
=
��l m
false
��n s
)
��s t
{
�� 	
var
�� 
physicalPath
�� 
=
�� 
GetPhysicalPath
�� .
(
��. /
path
��/ 3
)
��3 4
;
��4 5
if
�� 
(
�� 
!
�� 
	overwrite
�� 
&&
�� 
File
�� "
.
��" #
Exists
��# )
(
��) *
physicalPath
��* 6
)
��6 7
)
��7 8
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- /"
Cannot create file '
��/ C
{
��C D
path
��D H
}
��H I*
' because it already exists.
��I e
"
��e f
)
��f g
;
��g h
}
�� 
if
�� 
(
�� 
	Directory
�� 
.
�� 
Exists
��  
(
��  !
physicalPath
��! -
)
��- .
)
��. /
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- /"
Cannot create file '
��/ C
{
��C D
path
��D H
}
��H I9
+' because it already exists as a directory.
��I t
"
��t u
)
��u v
;
��v w
}
�� 
var
�� #
physicalDirectoryPath
�� %
=
��& '
Path
��( ,
.
��, -
GetDirectoryName
��- =
(
��= >
physicalPath
��> J
)
��J K
;
��K L
	Directory
�� 
.
�� 
CreateDirectory
�� %
(
��% &#
physicalDirectoryPath
��& ;
)
��; <
;
��< =
var
�� 
fileInfo
�� 
=
�� 
new
�� 
FileInfo
�� '
(
��' (
physicalPath
��( 4
)
��4 5
;
��5 6
using
�� 
(
�� 
var
�� 
outputStream
�� #
=
��$ %
fileInfo
��& .
.
��. /
Create
��/ 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
await
�� 
inputStream
�� !
.
��! "
CopyToAsync
��" -
(
��- .
outputStream
��. :
)
��: ;
;
��; <
}
�� 
return
�� 
path
�� 
;
�� 
}
�� 	
private
�� 
string
�� 
GetPhysicalPath
�� &
(
��& '
string
��' -
path
��. 2
)
��2 3
{
�� 	
path
�� 
=
�� 
this
�� 
.
�� 
NormalizePath
�� %
(
��% &
path
��& *
)
��* +
;
��+ ,
var
�� 
physicalPath
�� 
=
�� 
String
�� %
.
��% &
IsNullOrEmpty
��& 3
(
��3 4
path
��4 8
)
��8 9
?
��: ;
_fileSystemPath
��< K
:
��L M
Path
��N R
.
��R S
Combine
��S Z
(
��Z [
_fileSystemPath
��[ j
,
��j k
path
��l p
)
��p q
;
��q r
var
�� 
pathIsAllowed
�� 
=
�� 
Path
��  $
.
��$ %
GetFullPath
��% 0
(
��0 1
physicalPath
��1 =
)
��= >
.
��> ?

StartsWith
��? I
(
��I J
_fileSystemPath
��J Y
,
��Y Z
StringComparison
��[ k
.
��k l
OrdinalIgnoreCase
��l }
)
��} ~
;
��~ 
if
�� 
(
�� 
!
�� 
pathIsAllowed
�� 
)
�� 
{
�� 
throw
�� 
new
��  
FileStoreException
�� ,
(
��, -
$"
��- /

The path '
��/ 9
{
��9 :
path
��: >
}
��> ?P
A' resolves to a physical path outside the file system store root.��? �
"��� �
)��� �
;��� �
}
�� 
return
�� 
physicalPath
�� 
;
��  
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.FileStorage.FileSystem\FileSystemStoreEntry.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
.! "

FileSystem" ,
{ 
public 

class  
FileSystemStoreEntry %
:& '
IFileStoreEntry( 7
{ 
private 
readonly 
	IFileInfo "
	_fileInfo# ,
;, -
private		 
readonly		 
string		 
_path		  %
;		% &
internal  
FileSystemStoreEntry %
(% &
string& ,
path- 1
,1 2
	IFileInfo3 <
fileInfo= E
)E F
{ 	
	_fileInfo 
= 
fileInfo  
??! #
throw$ )
new* -!
ArgumentNullException. C
(C D
nameofD J
(J K
fileInfoK S
)S T
)T U
;U V
_path 
= 
path 
?? 
throw !
new" %!
ArgumentNullException& ;
(; <
nameof< B
(B C
pathC G
)G H
)H I
;I J
} 	
public 
string 
Path 
=> 
_path #
;# $
public 
string 
Name 
=> 
	_fileInfo '
.' (
Name( ,
;, -
public 
string 
DirectoryPath #
=>$ &
_path' ,
., -
	Substring- 6
(6 7
$num7 8
,8 9
_path: ?
.? @
Length@ F
-G H
NameI M
.M N
LengthN T
)T U
.U V
TrimEndV ]
(] ^
$char^ a
)a b
;b c
public 
DateTime 
LastModifiedUtc '
=>( *
	_fileInfo+ 4
.4 5
LastModified5 A
.A B
UtcDateTimeB M
;M N
public 
long 
Length 
=> 
	_fileInfo '
.' (
Length( .
;. /
public 
bool 
IsDirectory 
=>  "
	_fileInfo# ,
., -
IsDirectory- 8
;8 9
} 
} 