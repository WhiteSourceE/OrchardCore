˘Ø
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.FileStorage.FileSystem\FileSystemStore.cs
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
false	//{ Ä
)
//Ä Å
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
TopDirectoryOnly	<<z ä
)
<<ä ã
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
TopDirectoryOnly	HHt Ñ
)
HHÑ Ö
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
)	ZZ Ä
;
ZZÄ Å
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
ÄÄ 
Task
ÄÄ 
.
ÄÄ 

FromResult
ÄÄ "
(
ÄÄ" #
true
ÄÄ# '
)
ÄÄ' (
;
ÄÄ( )
}
ÅÅ 	
public
ÉÉ 
Task
ÉÉ 
MoveFileAsync
ÉÉ !
(
ÉÉ! "
string
ÉÉ" (
oldPath
ÉÉ) 0
,
ÉÉ0 1
string
ÉÉ2 8
newPath
ÉÉ9 @
)
ÉÉ@ A
{
ÑÑ 	
var
ÖÖ 
physicalOldPath
ÖÖ 
=
ÖÖ  !
GetPhysicalPath
ÖÖ" 1
(
ÖÖ1 2
oldPath
ÖÖ2 9
)
ÖÖ9 :
;
ÖÖ: ;
if
áá 
(
áá 
!
áá 
File
áá 
.
áá 
Exists
áá 
(
áá 
physicalOldPath
áá ,
)
áá, -
)
áá- .
{
àà 
throw
ââ 
new
ââ  
FileStoreException
ââ ,
(
ââ, -
$"
ââ- / 
Cannot move file '
ââ/ A
{
ââA B
oldPath
ââB I
}
ââI J*
' because it does not exist.
ââJ f
"
ââf g
)
ââg h
;
ââh i
}
ää 
var
åå 
physicalNewPath
åå 
=
åå  !
GetPhysicalPath
åå" 1
(
åå1 2
newPath
åå2 9
)
åå9 :
;
åå: ;
if
éé 
(
éé 
File
éé 
.
éé 
Exists
éé 
(
éé 
physicalNewPath
éé +
)
éé+ ,
||
éé- /
	Directory
éé0 9
.
éé9 :
Exists
éé: @
(
éé@ A
physicalNewPath
ééA P
)
ééP Q
)
ééQ R
{
èè 
throw
êê 
new
êê  
FileStoreException
êê ,
(
êê, -
$"
êê- /5
'Cannot move file because the new path '
êê/ V
{
êêV W
newPath
êêW ^
}
êê^ _
' already exists.
êê_ p
"
êêp q
)
êêq r
;
êêr s
}
ëë 
File
ìì 
.
ìì 
Move
ìì 
(
ìì 
physicalOldPath
ìì %
,
ìì% &
physicalNewPath
ìì' 6
)
ìì6 7
;
ìì7 8
return
ïï 
Task
ïï 
.
ïï 
CompletedTask
ïï %
;
ïï% &
}
ññ 	
public
òò 
Task
òò 
CopyFileAsync
òò !
(
òò! "
string
òò" (
srcPath
òò) 0
,
òò0 1
string
òò2 8
dstPath
òò9 @
)
òò@ A
{
ôô 	
var
öö 
physicalSrcPath
öö 
=
öö  !
GetPhysicalPath
öö" 1
(
öö1 2
srcPath
öö2 9
)
öö9 :
;
öö: ;
if
úú 
(
úú 
!
úú 
File
úú 
.
úú 
Exists
úú 
(
úú 
physicalSrcPath
úú ,
)
úú, -
)
úú- .
{
ùù 
throw
ûû 
new
ûû  
FileStoreException
ûû ,
(
ûû, -
$"
ûû- /

The file '
ûû/ 9
{
ûû9 :
srcPath
ûû: A
}
ûûA B
' does not exist.
ûûB S
"
ûûS T
)
ûûT U
;
ûûU V
}
üü 
var
°° 
physicalDstPath
°° 
=
°°  !
GetPhysicalPath
°°" 1
(
°°1 2
dstPath
°°2 9
)
°°9 :
;
°°: ;
if
££ 
(
££ 
File
££ 
.
££ 
Exists
££ 
(
££ 
physicalDstPath
££ +
)
££+ ,
||
££- /
	Directory
££0 9
.
££9 :
Exists
££: @
(
££@ A
physicalDstPath
££A P
)
££P Q
)
££Q R
{
§§ 
throw
•• 
new
••  
FileStoreException
•• ,
(
••, -
$"
••- /=
/Cannot copy file because the destination path '
••/ ^
{
••^ _
dstPath
••_ f
}
••f g
' already exists.
••g x
"
••x y
)
••y z
;
••z {
}
¶¶ 
File
®® 
.
®® 
Copy
®® 
(
®® 
GetPhysicalPath
®® %
(
®®% &
srcPath
®®& -
)
®®- .
,
®®. /
GetPhysicalPath
®®0 ?
(
®®? @
dstPath
®®@ G
)
®®G H
)
®®H I
;
®®I J
return
™™ 
Task
™™ 
.
™™ 
CompletedTask
™™ %
;
™™% &
}
´´ 	
public
≠≠ 
Task
≠≠ 
<
≠≠ 
Stream
≠≠ 
>
≠≠  
GetFileStreamAsync
≠≠ .
(
≠≠. /
string
≠≠/ 5
path
≠≠6 :
)
≠≠: ;
{
ÆÆ 	
var
ØØ 
physicalPath
ØØ 
=
ØØ 
GetPhysicalPath
ØØ .
(
ØØ. /
path
ØØ/ 3
)
ØØ3 4
;
ØØ4 5
if
±± 
(
±± 
!
±± 
File
±± 
.
±± 
Exists
±± 
(
±± 
physicalPath
±± )
)
±±) *
)
±±* +
{
≤≤ 
throw
≥≥ 
new
≥≥  
FileStoreException
≥≥ ,
(
≥≥, -
$"
≥≥- /7
)Cannot get file stream because the file '
≥≥/ X
{
≥≥X Y
path
≥≥Y ]
}
≥≥] ^
' does not exist.
≥≥^ o
"
≥≥o p
)
≥≥p q
;
≥≥q r
}
¥¥ 
var
∂∂ 
stream
∂∂ 
=
∂∂ 
File
∂∂ 
.
∂∂ 
OpenRead
∂∂ &
(
∂∂& '
physicalPath
∂∂' 3
)
∂∂3 4
;
∂∂4 5
return
∏∏ 
Task
∏∏ 
.
∏∏ 

FromResult
∏∏ "
<
∏∏" #
Stream
∏∏# )
>
∏∏) *
(
∏∏* +
stream
∏∏+ 1
)
∏∏1 2
;
∏∏2 3
}
ππ 	
public
ªª 
Task
ªª 
<
ªª 
Stream
ªª 
>
ªª  
GetFileStreamAsync
ªª .
(
ªª. /
IFileStoreEntry
ªª/ >
fileStoreEntry
ªª? M
)
ªªM N
{
ºº 	
var
ΩΩ 
physicalPath
ΩΩ 
=
ΩΩ 
GetPhysicalPath
ΩΩ .
(
ΩΩ. /
fileStoreEntry
ΩΩ/ =
.
ΩΩ= >
Path
ΩΩ> B
)
ΩΩB C
;
ΩΩC D
if
ææ 
(
ææ 
!
ææ 
File
ææ 
.
ææ 
Exists
ææ 
(
ææ 
physicalPath
ææ )
)
ææ) *
)
ææ* +
{
øø 
throw
¿¿ 
new
¿¿  
FileStoreException
¿¿ ,
(
¿¿, -
$"
¿¿- /7
)Cannot get file stream because the file '
¿¿/ X
{
¿¿X Y
fileStoreEntry
¿¿Y g
.
¿¿g h
Path
¿¿h l
}
¿¿l m
' does not exist.
¿¿m ~
"
¿¿~ 
)¿¿ Ä
;¿¿Ä Å
}
¡¡ 
var
√√ 
stream
√√ 
=
√√ 
File
√√ 
.
√√ 
OpenRead
√√ &
(
√√& '
physicalPath
√√' 3
)
√√3 4
;
√√4 5
return
≈≈ 
Task
≈≈ 
.
≈≈ 

FromResult
≈≈ "
<
≈≈" #
Stream
≈≈# )
>
≈≈) *
(
≈≈* +
stream
≈≈+ 1
)
≈≈1 2
;
≈≈2 3
}
∆∆ 	
public
»» 
async
»» 
Task
»» 
<
»» 
string
»»  
>
»»  !'
CreateFileFromStreamAsync
»»" ;
(
»»; <
string
»»< B
path
»»C G
,
»»G H
Stream
»»I O
inputStream
»»P [
,
»»[ \
bool
»»] a
	overwrite
»»b k
=
»»l m
false
»»n s
)
»»s t
{
…… 	
var
   
physicalPath
   
=
   
GetPhysicalPath
   .
(
  . /
path
  / 3
)
  3 4
;
  4 5
if
ÃÃ 
(
ÃÃ 
!
ÃÃ 
	overwrite
ÃÃ 
&&
ÃÃ 
File
ÃÃ "
.
ÃÃ" #
Exists
ÃÃ# )
(
ÃÃ) *
physicalPath
ÃÃ* 6
)
ÃÃ6 7
)
ÃÃ7 8
{
ÕÕ 
throw
ŒŒ 
new
ŒŒ  
FileStoreException
ŒŒ ,
(
ŒŒ, -
$"
ŒŒ- /"
Cannot create file '
ŒŒ/ C
{
ŒŒC D
path
ŒŒD H
}
ŒŒH I*
' because it already exists.
ŒŒI e
"
ŒŒe f
)
ŒŒf g
;
ŒŒg h
}
œœ 
if
—— 
(
—— 
	Directory
—— 
.
—— 
Exists
——  
(
——  !
physicalPath
——! -
)
——- .
)
——. /
{
““ 
throw
”” 
new
””  
FileStoreException
”” ,
(
””, -
$"
””- /"
Cannot create file '
””/ C
{
””C D
path
””D H
}
””H I9
+' because it already exists as a directory.
””I t
"
””t u
)
””u v
;
””v w
}
‘‘ 
var
◊◊ #
physicalDirectoryPath
◊◊ %
=
◊◊& '
Path
◊◊( ,
.
◊◊, -
GetDirectoryName
◊◊- =
(
◊◊= >
physicalPath
◊◊> J
)
◊◊J K
;
◊◊K L
	Directory
ÿÿ 
.
ÿÿ 
CreateDirectory
ÿÿ %
(
ÿÿ% &#
physicalDirectoryPath
ÿÿ& ;
)
ÿÿ; <
;
ÿÿ< =
var
⁄⁄ 
fileInfo
⁄⁄ 
=
⁄⁄ 
new
⁄⁄ 
FileInfo
⁄⁄ '
(
⁄⁄' (
physicalPath
⁄⁄( 4
)
⁄⁄4 5
;
⁄⁄5 6
using
€€ 
(
€€ 
var
€€ 
outputStream
€€ #
=
€€$ %
fileInfo
€€& .
.
€€. /
Create
€€/ 5
(
€€5 6
)
€€6 7
)
€€7 8
{
‹‹ 
await
›› 
inputStream
›› !
.
››! "
CopyToAsync
››" -
(
››- .
outputStream
››. :
)
››: ;
;
››; <
}
ﬁﬁ 
return
‡‡ 
path
‡‡ 
;
‡‡ 
}
·· 	
private
ÈÈ 
string
ÈÈ 
GetPhysicalPath
ÈÈ &
(
ÈÈ& '
string
ÈÈ' -
path
ÈÈ. 2
)
ÈÈ2 3
{
ÍÍ 	
path
ÎÎ 
=
ÎÎ 
this
ÎÎ 
.
ÎÎ 
NormalizePath
ÎÎ %
(
ÎÎ% &
path
ÎÎ& *
)
ÎÎ* +
;
ÎÎ+ ,
var
ÌÌ 
physicalPath
ÌÌ 
=
ÌÌ 
String
ÌÌ %
.
ÌÌ% &
IsNullOrEmpty
ÌÌ& 3
(
ÌÌ3 4
path
ÌÌ4 8
)
ÌÌ8 9
?
ÌÌ: ;
_fileSystemPath
ÌÌ< K
:
ÌÌL M
Path
ÌÌN R
.
ÌÌR S
Combine
ÌÌS Z
(
ÌÌZ [
_fileSystemPath
ÌÌ[ j
,
ÌÌj k
path
ÌÌl p
)
ÌÌp q
;
ÌÌq r
var
 
pathIsAllowed
 
=
 
Path
  $
.
$ %
GetFullPath
% 0
(
0 1
physicalPath
1 =
)
= >
.
> ?

StartsWith
? I
(
I J
_fileSystemPath
J Y
,
Y Z
StringComparison
[ k
.
k l
OrdinalIgnoreCase
l }
)
} ~
;
~ 
if
ÒÒ 
(
ÒÒ 
!
ÒÒ 
pathIsAllowed
ÒÒ 
)
ÒÒ 
{
ÚÚ 
throw
ÛÛ 
new
ÛÛ  
FileStoreException
ÛÛ ,
(
ÛÛ, -
$"
ÛÛ- /

The path '
ÛÛ/ 9
{
ÛÛ9 :
path
ÛÛ: >
}
ÛÛ> ?P
A' resolves to a physical path outside the file system store root.ÛÛ? Ä
"ÛÛÄ Å
)ÛÛÅ Ç
;ÛÛÇ É
}
ÙÙ 
return
ˆˆ 
physicalPath
ˆˆ 
;
ˆˆ  
}
˜˜ 	
}
¯¯ 
}˘˘ Ü
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.FileStorage.FileSystem\FileSystemStoreEntry.cs
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