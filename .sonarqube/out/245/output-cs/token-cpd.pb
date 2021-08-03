�p
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Core\DefaultMediaFileStore.cs
	namespace

 	
OrchardCore


 
.

 
Media

 
.

 
Core

  
{ 
public 

class !
DefaultMediaFileStore &
:' (
IMediaFileStore) 8
{ 
private 
readonly 

IFileStore #

_fileStore$ .
;. /
private 
readonly 
string 
_requestBasePath  0
;0 1
private 
readonly 
string 
_cdnBaseUrl  +
;+ ,
private 
readonly 
IEnumerable $
<$ %
IMediaEventHandler% 7
>7 8
_mediaEventHandlers9 L
;L M
private 
readonly 
IEnumerable $
<$ %&
IMediaCreatingEventHandler% ?
>? @'
_mediaCreatingEventHandlersA \
;\ ]
private 
readonly 
ILogger  
_logger! (
;( )
public !
DefaultMediaFileStore $
($ %

IFileStore 
	fileStore  
,  !
string 
requestBasePath "
," #
string 

cdnBaseUrl 
, 
IEnumerable 
< 
IMediaEventHandler *
>* +
mediaEventHandlers, >
,> ?
IEnumerable 
< &
IMediaCreatingEventHandler 2
>2 3&
mediaCreatingEventHandlers4 N
,N O
ILogger 
< !
DefaultMediaFileStore )
>) *
logger+ 1
) 
{ 	

_fileStore 
= 
	fileStore "
;" #
_requestBasePath!! 
=!! 
requestBasePath!! .
.!!. /
TrimEnd!!/ 6
(!!6 7
$char!!7 :
)!!: ;
;!!; <
_cdnBaseUrl$$ 
=$$ 

cdnBaseUrl$$ $
;$$$ %
_mediaEventHandlers&& 
=&&  !
mediaEventHandlers&&" 4
;&&4 5'
_mediaCreatingEventHandlers'' '
=''( )&
mediaCreatingEventHandlers''* D
;''D E
_logger(( 
=(( 
logger(( 
;(( 
})) 	
public++ 
virtual++ 
Task++ 
<++ 
IFileStoreEntry++ +
>+++ ,
GetFileInfoAsync++- =
(++= >
string++> D
path++E I
)++I J
{,, 	
return-- 

_fileStore-- 
.-- 
GetFileInfoAsync-- .
(--. /
path--/ 3
)--3 4
;--4 5
}.. 	
public00 
virtual00 
Task00 
<00 
IFileStoreEntry00 +
>00+ ,!
GetDirectoryInfoAsync00- B
(00B C
string00C I
path00J N
)00N O
{11 	
return22 

_fileStore22 
.22 !
GetDirectoryInfoAsync22 3
(223 4
path224 8
)228 9
;229 :
}33 	
public55 
virtual55 
IAsyncEnumerable55 '
<55' (
IFileStoreEntry55( 7
>557 8$
GetDirectoryContentAsync559 Q
(55Q R
string55R X
path55Y ]
=55^ _
null55` d
,55d e
bool55f j"
includeSubDirectories	55k �
=
55� �
false
55� �
)
55� �
{66 	
return77 

_fileStore77 
.77 $
GetDirectoryContentAsync77 6
(776 7
path777 ;
,77; <!
includeSubDirectories77= R
)77R S
;77S T
}88 	
public:: 
virtual:: 
Task:: 
<:: 
bool::  
>::  !#
TryCreateDirectoryAsync::" 9
(::9 :
string::: @
path::A E
)::E F
{;; 	
return<< 

_fileStore<< 
.<< #
TryCreateDirectoryAsync<< 5
(<<5 6
path<<6 :
)<<: ;
;<<; <
}== 	
public?? 
virtual?? 
async?? 
Task?? !
<??! "
bool??" &
>??& '
TryDeleteFileAsync??( :
(??: ;
string??; A
path??B F
)??F G
{@@ 	
varAA 
deletingContextAA 
=AA  !
newAA" % 
MediaDeletingContextAA& :
{BB 
PathCC 
=CC 
pathCC 
}DD 
;DD 
awaitFF 
_mediaEventHandlersFF %
.FF% &
InvokeAsyncFF& 1
(FF1 2
(FF2 3
handlerFF3 :
,FF: ;
contextFF< C
)FFC D
=>FFE G
handlerFFH O
.FFO P"
MediaDeletingFileAsyncFFP f
(FFf g
contextFFg n
)FFn o
,FFo p
deletingContext	FFq �
,
FF� �
_logger
FF� �
)
FF� �
;
FF� �
varHH 
resultHH 
=HH 
awaitHH 

_fileStoreHH )
.HH) *
TryDeleteFileAsyncHH* <
(HH< =
deletingContextHH= L
.HHL M
PathHHM Q
)HHQ R
;HHR S
varJJ 
deletedContextJJ 
=JJ  
newJJ! $
MediaDeletedContextJJ% 8
{KK 
PathLL 
=LL 
pathLL 
,LL 
ResultMM 
=MM 
resultMM 
}NN 
;NN 
awaitPP 
_mediaEventHandlersPP %
.PP% &
InvokeAsyncPP& 1
(PP1 2
(PP2 3
handlerPP3 :
,PP: ;
deletedContextPP< J
)PPJ K
=>PPL N
handlerPPO V
.PPV W!
MediaDeletedFileAsyncPPW l
(PPl m
deletedContextPPm {
)PP{ |
,PP| }
deletedContext	PP~ �
,
PP� �
_logger
PP� �
)
PP� �
;
PP� �
returnRR 
resultRR 
;RR 
}SS 	
publicUU 
virtualUU 
asyncUU 
TaskUU !
<UU! "
boolUU" &
>UU& '#
TryDeleteDirectoryAsyncUU( ?
(UU? @
stringUU@ F
pathUUG K
)UUK L
{VV 	
varWW 
deletingContextWW 
=WW  !
newWW" % 
MediaDeletingContextWW& :
{XX 
PathYY 
=YY 
pathYY 
}ZZ 
;ZZ 
await\\ 
_mediaEventHandlers\\ %
.\\% &
InvokeAsync\\& 1
(\\1 2
(\\2 3
handler\\3 :
,\\: ;
context\\< C
)\\C D
=>\\E G
handler\\H O
.\\O P'
MediaDeletingDirectoryAsync\\P k
(\\k l
context\\l s
)\\s t
,\\t u
deletingContext	\\v �
,
\\� �
_logger
\\� �
)
\\� �
;
\\� �
var^^ 
result^^ 
=^^ 
await^^ 

_fileStore^^ )
.^^) *#
TryDeleteDirectoryAsync^^* A
(^^A B
path^^B F
)^^F G
;^^G H
var`` 
deletedContext`` 
=``  
new``! $
MediaDeletedContext``% 8
{aa 
Pathbb 
=bb 
pathbb 
,bb 
Resultcc 
=cc 
resultcc 
}dd 
;dd 
awaitff 
_mediaEventHandlersff %
.ff% &
InvokeAsyncff& 1
(ff1 2
(ff2 3
handlerff3 :
,ff: ;
deletedContextff< J
)ffJ K
=>ffL N
handlerffO V
.ffV W&
MediaDeletedDirectoryAsyncffW q
(ffq r
deletedContext	ffr �
)
ff� �
,
ff� �
deletedContext
ff� �
,
ff� �
_logger
ff� �
)
ff� �
;
ff� �
returnhh 
resulthh 
;hh 
}ii 	
publickk 
virtualkk 
asynckk 
Taskkk !
MoveFileAsynckk" /
(kk/ 0
stringkk0 6
oldPathkk7 >
,kk> ?
stringkk@ F
newPathkkG N
)kkN O
{ll 	
varmm 
contextmm 
=mm 
newmm 
MediaMoveContextmm .
{nn 
OldPathoo 
=oo 
oldPathoo !
,oo! "
NewPathpp 
=pp 
newPathpp !
}qq 
;qq 
awaitss 
_mediaEventHandlersss %
.ss% &
InvokeAsyncss& 1
(ss1 2
(ss2 3
handlerss3 :
,ss: ;
contextss< C
)ssC D
=>ssE G
handlerssH O
.ssO P
MediaMovingAsyncssP `
(ss` a
contextssa h
)ssh i
,ssi j
contextssk r
,ssr s
_loggersst {
)ss{ |
;ss| }
awaituu 

_fileStoreuu 
.uu 
MoveFileAsyncuu *
(uu* +
contextuu+ 2
.uu2 3
OldPathuu3 :
,uu: ;
contextuu< C
.uuC D
NewPathuuD K
)uuK L
;uuL M
awaitww 
_mediaEventHandlersww %
.ww% &
InvokeAsyncww& 1
(ww1 2
(ww2 3
handlerww3 :
,ww: ;
contextww< C
)wwC D
=>wwE G
handlerwwH O
.wwO P
MediaMovedAsyncwwP _
(ww_ `
contextww` g
)wwg h
,wwh i
contextwwj q
,wwq r
_loggerwws z
)wwz {
;ww{ |
}xx 	
publiczz 
virtualzz 
Taskzz 
CopyFileAsynczz )
(zz) *
stringzz* 0
srcPathzz1 8
,zz8 9
stringzz: @
dstPathzzA H
)zzH I
{{{ 	
return|| 

_fileStore|| 
.|| 
CopyFileAsync|| +
(||+ ,
srcPath||, 3
,||3 4
dstPath||5 <
)||< =
;||= >
}}} 	
public 
virtual 
Task 
< 
Stream "
>" #
GetFileStreamAsync$ 6
(6 7
string7 =
path> B
)B C
{
�� 	
return
�� 

_fileStore
�� 
.
��  
GetFileStreamAsync
�� 0
(
��0 1
path
��1 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
virtual
�� 
Task
�� 
<
�� 
Stream
�� "
>
��" # 
GetFileStreamAsync
��$ 6
(
��6 7
IFileStoreEntry
��7 F
fileStoreEntry
��G U
)
��U V
{
�� 	
return
�� 

_fileStore
�� 
.
��  
GetFileStreamAsync
�� 0
(
��0 1
fileStoreEntry
��1 ?
)
��? @
;
��@ A
}
�� 	
public
�� 
virtual
�� 
async
�� 
Task
�� !
<
��! "
string
��" (
>
��( )'
CreateFileFromStreamAsync
��* C
(
��C D
string
��D J
path
��K O
,
��O P
Stream
��Q W
inputStream
��X c
,
��c d
bool
��e i
	overwrite
��j s
=
��t u
false
��v {
)
��{ |
{
�� 	
if
�� 
(
�� )
_mediaCreatingEventHandlers
�� +
.
��+ ,
Any
��, /
(
��/ 0
)
��0 1
)
��1 2
{
�� 
var
�� 
outputStream
��  
=
��! "
inputStream
��# .
;
��. /
try
�� 
{
�� 
var
�� 
context
�� 
=
��  !
new
��" %"
MediaCreatingContext
��& :
{
�� 
Path
�� 
=
�� 
path
�� #
}
�� 
;
�� 
foreach
�� 
(
�� 
var
��  '
mediaCreatingEventHandler
��! :
in
��; =)
_mediaCreatingEventHandlers
��> Y
)
��Y Z
{
�� 
using
�� 
(
�� 
var
�� "
creatingStream
��# 1
=
��2 3
outputStream
��4 @
)
��@ A
{
�� 
inputStream
�� '
=
��( )
null
��* .
;
��. /
outputStream
�� (
=
��) *
null
��+ /
;
��/ 0
outputStream
�� (
=
��) *
await
��+ 0'
mediaCreatingEventHandler
��1 J
.
��J K 
MediaCreatingAsync
��K ]
(
��] ^
context
��^ e
,
��e f
creatingStream
��g u
)
��u v
;
��v w
}
�� 
}
�� 
return
�� 
await
��  

_fileStore
��! +
.
��+ ,'
CreateFileFromStreamAsync
��, E
(
��E F
context
��F M
.
��M N
Path
��N R
,
��R S
outputStream
��T `
,
��` a
	overwrite
��b k
)
��k l
;
��l m
}
�� 
finally
�� 
{
�� 
outputStream
��  
?
��  !
.
��! "
Dispose
��" )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 
else
�� 
{
�� 
return
�� 
await
�� 

_fileStore
�� '
.
��' ('
CreateFileFromStreamAsync
��( A
(
��A B
path
��B F
,
��F G
inputStream
��H S
,
��S T
	overwrite
��U ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
public
�� 
virtual
�� 
string
��  
MapPathToPublicUrl
�� 0
(
��0 1
string
��1 7
path
��8 <
)
��< =
{
�� 	
return
�� 
_cdnBaseUrl
�� 
+
��  
_requestBasePath
��! 1
+
��2 3
$str
��4 7
+
��8 9

_fileStore
��: D
.
��D E
NormalizePath
��E R
(
��R S
path
��S W
)
��W X
;
��X Y
}
�� 	
}
�� 
}�� �X
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Core\DefaultMediaFileStoreCacheFileProvider.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Core  
{ 
public 

class 2
&DefaultMediaFileStoreCacheFileProvider 7
:8 9 
PhysicalFileProvider: N
,N O
IMediaFileProviderP b
,b c-
 IMediaFileStoreCacheFileProvider	d �
{ 
public 
static 
readonly 
string %
AssetsCachePath& 5
=6 7
$str8 B
;B C
private 
const 
int  
StreamCopyBufferSize .
=/ 0
$num1 6
;6 7
private 
readonly 
ILogger  
_logger! (
;( )
public 2
&DefaultMediaFileStoreCacheFileProvider 5
(5 6
ILogger6 =
<= >2
&DefaultMediaFileStoreCacheFileProvider> d
>d e
loggerf l
,l m

PathStringn x
virtualPathBase	y �
,
� �
string
� �
root
� �
)
� �
:
� �
base
� �
(
� �
root
� �
)
� �
{ 	
_logger 
= 
logger 
; 
VirtualPathBase 
= 
virtualPathBase -
;- .
} 	
public   2
&DefaultMediaFileStoreCacheFileProvider   5
(  5 6
ILogger  6 =
<  = >2
&DefaultMediaFileStoreCacheFileProvider  > d
>  d e
logger  f l
,  l m

PathString  n x
virtualPathBase	  y �
,
  � �
string
  � �
root
  � �
,
  � �
ExclusionFilters
  � �
filters
  � �
)
  � �
:
  � �
base
  � �
(
  � �
root
  � �
,
  � �
filters
  � �
)
  � �
{!! 	
_logger"" 
="" 
logger"" 
;"" 
VirtualPathBase## 
=## 
virtualPathBase## -
;##- .
}$$ 	
public&& 

PathString&& 
VirtualPathBase&& )
{&&* +
get&&, /
;&&/ 0
}&&1 2
public(( 
Task(( 
<(( 
bool(( 
>(( 
IsCachedAsync(( '
(((' (
string((( .
path((/ 3
)((3 4
{)) 	
var,, 
fileInfo,, 
=,, 
GetFileInfo,, &
(,,& '
path,,' +
),,+ ,
;,,, -
return-- 
Task-- 
.-- 

FromResult-- "
(--" #
fileInfo--# +
.--+ ,
Exists--, 2
)--2 3
;--3 4
}.. 	
public00 
async00 
Task00 
SetCacheAsync00 '
(00' (
Stream00( .
stream00/ 5
,005 6
IFileStoreEntry007 F
fileStoreEntry00G U
,00U V
CancellationToken00W h
cancellationToken00i z
)00z {
{11 	
var33 
	cachePath33 
=33 
Path33  
.33  !
Combine33! (
(33( )
Root33) -
,33- .
fileStoreEntry33/ =
.33= >
Path33> B
.33B C
	Substring33C L
(33L M
$num33M N
)33N O
)33O P
;33P Q
var44 
	directory44 
=44 
Path44  
.44  !
GetDirectoryName44! 1
(441 2
	cachePath442 ;
)44; <
;44< =
if66 
(66 
!66 
	Directory66 
.66 
Exists66 !
(66! "
	directory66" +
)66+ ,
)66, -
{77 
	Directory88 
.88 
CreateDirectory88 )
(88) *
	directory88* 3
)883 4
;884 5
}99 
try== 
{>> 
if?? 
(?? 
File?? 
.?? 
Exists?? 
(??  
	cachePath??  )
)??) *
)??* +
{@@ 
FileAA 
.AA 
DeleteAA 
(AA  
	cachePathAA  )
)AA) *
;AA* +
}BB 
usingCC 
(CC 
varCC 

fileStreamCC %
=CC& '
FileCC( ,
.CC, -
CreateCC- 3
(CC3 4
	cachePathCC4 =
)CC= >
)CC> ?
{DD 
awaitEE 
streamEE  
.EE  !
CopyToAsyncEE! ,
(EE, -

fileStreamEE- 7
,EE7 8 
StreamCopyBufferSizeEE9 M
,EEM N
cancellationTokenEEO `
)EE` a
;EEa b
}FF 
}GG 
catchHH 
(HH 
	ExceptionHH 
exHH 
)HH  
{II 
_loggerJJ 
.JJ 
LogErrorJJ  
(JJ  !
exJJ! #
,JJ# $
$strJJ% ?
,JJ? @
	cachePathJJA J
)JJJ K
;JJK L
ifKK 
(KK 
FileKK 
.KK 
ExistsKK 
(KK  
	cachePathKK  )
)KK) *
)KK* +
{LL 
tryMM 
{NN 
FileOO 
.OO 
DeleteOO #
(OO# $
	cachePathOO$ -
)OO- .
;OO. /
}PP 
catchQQ 
(QQ 
	ExceptionQQ $
eQQ% &
)QQ& '
{RR 
_loggerSS 
.SS  
LogErrorSS  (
(SS( )
eSS) *
,SS* +
$strSS, H
,SSH I
	cachePathSSJ S
)SSS T
;SST U
throwTT 
;TT 
}UU 
}VV 
throwWW 
;WW 
}XX 
}YY 	
public[[ 
Task[[ 
<[[ 
bool[[ 
>[[ 

PurgeAsync[[ $
([[$ %
)[[% &
{\\ 	
var]] 
	hasErrors]] 
=]] 
false]] !
;]]! "
var^^ 
folders^^ 
=^^  
GetDirectoryContents^^ .
(^^. /
String^^/ 5
.^^5 6
Empty^^6 ;
)^^; <
;^^< =
foreach__ 
(__ 
var__ 
fileInfo__ !
in__" $
folders__% ,
)__, -
{`` 
ifaa 
(aa 
fileInfoaa 
.aa 
IsDirectoryaa (
)aa( )
{bb 
trycc 
{dd 
	Directoryee !
.ee! "
Deleteee" (
(ee( )
fileInfoee) 1
.ee1 2
PhysicalPathee2 >
,ee> ?
trueee@ D
)eeD E
;eeE F
}ff 
catchgg 
(gg 
IOExceptiongg &
exgg' )
)gg) *
{hh 
_loggerii 
.ii  
LogErrorii  (
(ii( )
exii) +
,ii+ ,
$strii- Q
,iiQ R
fileInfoiiS [
.ii[ \
PhysicalPathii\ h
)iih i
;iii j
	hasErrorsjj !
=jj" #
truejj$ (
;jj( )
}kk 
}ll 
elsemm 
{nn 
tryoo 
{pp 
Fileqq 
.qq 
Deleteqq #
(qq# $
fileInfoqq$ ,
.qq, -
PhysicalPathqq- 9
)qq9 :
;qq: ;
}rr 
catchss 
(ss 
IOExceptionss &
exss' )
)ss) *
{tt 
_loggeruu 
.uu  
LogErroruu  (
(uu( )
exuu) +
,uu+ ,
$struu- O
,uuO P
fileInfouuQ Y
.uuY Z
PhysicalPathuuZ f
)uuf g
;uug h
	hasErrorsvv !
=vv" #
truevv$ (
;vv( )
}ww 
}xx 
}yy 
return{{ 
Task{{ 
.{{ 

FromResult{{ "
({{" #
	hasErrors{{# ,
){{, -
;{{- .
}|| 	
public~~ 
Task~~ 
<~~ 
bool~~ 
>~~ #
TryDeleteDirectoryAsync~~ 1
(~~1 2
string~~2 8
path~~9 =
)~~= >
{ 	
var
�� 
directoryInfo
�� 
=
�� 
GetFileInfo
��  +
(
��+ ,
path
��, 0
)
��0 1
;
��1 2
try
�� 
{
�� 
	Directory
�� 
.
�� 
Delete
��  
(
��  !
directoryInfo
��! .
.
��. /
PhysicalPath
��/ ;
,
��; <
true
��= A
)
��A B
;
��B C
}
�� 
catch
�� 
(
�� 
IOException
�� 
ex
�� !
)
��! "
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
,
��# $
$str
��% I
,
��I J
directoryInfo
��K X
.
��X Y
PhysicalPath
��Y e
)
��e f
;
��f g
return
�� 
Task
�� 
.
�� 

FromResult
�� &
(
��& '
false
��' ,
)
��, -
;
��- .
}
�� 
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
�� 
<
�� 
bool
�� 
>
��  
TryDeleteFileAsync
�� ,
(
��, -
string
��- 3
path
��4 8
)
��8 9
{
�� 	
var
�� 
fileInfo
�� 
=
�� 
GetFileInfo
�� &
(
��& '
path
��' +
)
��+ ,
;
��, -
if
�� 
(
�� 
fileInfo
�� 
.
�� 
Exists
�� 
)
��  
{
�� 
try
�� 
{
�� 
File
�� 
.
�� 
Delete
�� 
(
��  
fileInfo
��  (
.
��( )
PhysicalPath
��) 5
)
��5 6
;
��6 7
return
�� 
Task
�� 
.
��  

FromResult
��  *
(
��* +
true
��+ /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
IOException
�� "
ex
��# %
)
��% &
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
ex
��% '
,
��' (
$str
��) K
,
��K L
fileInfo
��M U
.
��U V
PhysicalPath
��V b
)
��b c
;
��c d
return
�� 
Task
�� 
.
��  

FromResult
��  *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� 
else
�� 
{
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� &
(
��& '
false
��' ,
)
��, -
;
��- .
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Core\Events\DefaultMediaFileStoreCacheEventHandler.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Core  
.  !
Events! '
{ 
public 

class 2
&DefaultMediaFileStoreCacheEventHandler 7
:8 9!
MediaEventHandlerBase: O
{ 
private 
readonly ,
 IMediaFileStoreCacheFileProvider 9,
 _mediaFileStoreCacheFileProvider: Z
;Z [
public

 2
&DefaultMediaFileStoreCacheEventHandler

 5
(

5 6,
 IMediaFileStoreCacheFileProvider

6 V+
mediaFileStoreCacheFileProvider

W v
)

v w
{ 	,
 _mediaFileStoreCacheFileProvider ,
=- .+
mediaFileStoreCacheFileProvider/ N
;N O
} 	
public 
override 
Task &
MediaDeletedDirectoryAsync 7
(7 8
MediaDeletedContext8 K
contextL S
)S T
{ 	,
 _mediaFileStoreCacheFileProvider ,
., -#
TryDeleteDirectoryAsync- D
(D E
contextE L
.L M
PathM Q
)Q R
;R S
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
override 
Task !
MediaDeletedFileAsync 2
(2 3
MediaDeletedContext3 F
contextG N
)N O
{ 	,
 _mediaFileStoreCacheFileProvider ,
., -
TryDeleteFileAsync- ?
(? @
context@ G
.G H
PathH L
)L M
;M N
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
override 
Task 
MediaMovedAsync ,
(, -
MediaMoveContext- =
context> E
)E F
{ 	,
 _mediaFileStoreCacheFileProvider ,
., -
TryDeleteFileAsync- ?
(? @
context@ G
.G H
OldPathH O
)O P
;P Q
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Core\Events\MediaEventHandlerBase.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Core  
.  !
Events! '
{ 
public 

class !
MediaEventHandlerBase &
:' (
IMediaEventHandler) ;
{ 
public 
virtual 
Task &
MediaDeletedDirectoryAsync 6
(6 7
MediaDeletedContext7 J
contextK R
)R S
{		 	
return

 
Task

 
.

 
CompletedTask

 %
;

% &
} 	
public 
virtual 
Task !
MediaDeletedFileAsync 1
(1 2
MediaDeletedContext2 E
contextF M
)M N
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task '
MediaDeletingDirectoryAsync 7
(7 8 
MediaDeletingContext8 L
contextM T
)T U
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task "
MediaDeletingFileAsync 2
(2 3 
MediaDeletingContext3 G
contextH O
)O P
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task 
MediaMovingAsync $
($ %
MediaMoveContext% 5
context6 =
)= >
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public!! 
virtual!! 
Task!! 
MediaMovedAsync!! +
(!!+ ,
MediaMoveContext!!, <
context!!= D
)!!D E
{"" 	
return## 
Task## 
.## 
CompletedTask## %
;##% &
}$$ 	
}%% 
}&& �-
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Media.Core\Services\MediaSizeLimitAttribute.cs
	namespace 	
OrchardCore
 
. 
Media 
. 
Services $
{		 
[

 
AttributeUsage

 
(

 
AttributeTargets

 $
.

$ %
Class

% *
|

+ ,
AttributeTargets

- =
.

= >
Method

> D
,

D E
AllowMultiple

F S
=

T U
false

V [
,

[ \
	Inherited

] f
=

g h
true

i m
)

m n
]

n o
public 

class #
MediaSizeLimitAttribute (
:) *
	Attribute+ 4
,4 5
IFilterFactory6 D
,D E
IOrderedFilterF T
{ 
public 
int 
Order 
{ 
get 
; 
set  #
;# $
}% &
=' (
$num) ,
;, -
public 
bool 

IsReusable 
=> !
true" &
;& '
public 
IFilterMetadata 
CreateInstance -
(- .
IServiceProvider. >
serviceProvider? N
)N O
{ 	
var 
options 
= 
serviceProvider )
.) *
GetRequiredService* <
<< =
IOptions= E
<E F
MediaOptionsF R
>R S
>S T
(T U
)U V
;V W
return 
new #
InternalMediaSizeFilter .
(. /
options/ 6
.6 7
Value7 <
.< =
MaxFileSize= H
)H I
;I J
} 	
private 
class #
InternalMediaSizeFilter -
:. / 
IAuthorizationFilter0 D
,D E$
IRequestFormLimitsPolicyF ^
{ 	
private 
readonly 
long !
_maxFileSize" .
;. /
public #
InternalMediaSizeFilter *
(* +
long+ /
maxFileSize0 ;
); <
{ 
_maxFileSize   
=   
maxFileSize   *
;  * +
}!! 
public## 
void## 
OnAuthorization## '
(##' (&
AuthorizationFilterContext##( B
context##C J
)##J K
{$$ 
if%% 
(%% 
context%% 
==%% 
null%% #
)%%# $
{&& 
throw'' 
new'' !
ArgumentNullException'' 3
(''3 4
nameof''4 :
('': ;
context''; B
)''B C
)''C D
;''D E
}(( 
var** 
effectiveFormPolicy** '
=**( )
context*** 1
.**1 2
FindEffectivePolicy**2 E
<**E F$
IRequestFormLimitsPolicy**F ^
>**^ _
(**_ `
)**` a
;**a b
if++ 
(++ 
effectiveFormPolicy++ '
==++( *
null+++ /
||++0 2
effectiveFormPolicy++3 F
==++G I
this++J N
)++N O
{,, 
var-- 
features--  
=--! "
context--# *
.--* +
HttpContext--+ 6
.--6 7
Features--7 ?
;--? @
var.. 
formFeature.. #
=..$ %
features..& .
.... /
Get../ 2
<..2 3
IFormFeature..3 ?
>..? @
(..@ A
)..A B
;..B C
if00 
(00 
formFeature00 #
==00$ &
null00' +
||00, .
formFeature00/ :
.00: ;
Form00; ?
==00@ B
null00C G
)00G H
{11 
var33 
formOptions33 '
=33( )
new33* -
FormOptions33. 9
{44 $
MultipartBodyLengthLimit55 4
=555 6
_maxFileSize557 C
}66 
;66 
features88  
.88  !
Set88! $
<88$ %
IFormFeature88% 1
>881 2
(882 3
new883 6
FormFeature887 B
(88B C
context88C J
.88J K
HttpContext88K V
.88V W
Request88W ^
,88^ _
formOptions88` k
)88k l
)88l m
;88m n
}99 
}:: 
var<< &
effectiveRequestSizePolicy<< .
=<</ 0
context<<1 8
.<<8 9
FindEffectivePolicy<<9 L
<<<L M
IRequestSizePolicy<<M _
><<_ `
(<<` a
)<<a b
;<<b c
if== 
(== &
effectiveRequestSizePolicy== .
====/ 1
null==2 6
||==7 9&
effectiveRequestSizePolicy==: T
====U W
this==X \
)==\ ]
{>> 
var@@ %
maxRequestBodySizeFeature@@ 1
=@@2 3
context@@4 ;
.@@; <
HttpContext@@< G
.@@G H
Features@@H P
.@@P Q
Get@@Q T
<@@T U*
IHttpMaxRequestBodySizeFeature@@U s
>@@s t
(@@t u
)@@u v
;@@v w
ifBB 
(BB %
maxRequestBodySizeFeatureBB 1
!=BB2 4
nullBB5 9
&&BB: <
!BB= >%
maxRequestBodySizeFeatureBB> W
.BBW X

IsReadOnlyBBX b
)BBb c
{CC %
maxRequestBodySizeFeatureDD 1
.DD1 2
MaxRequestBodySizeDD2 D
=DDE F
_maxFileSizeDDG S
;DDS T
}EE 
}FF 
}GG 
}HH 	
}II 
}JJ 