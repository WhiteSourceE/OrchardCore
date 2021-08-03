˙
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Aspects\SitemapMetadataAspect.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Aspects &
{ 
public 

class !
SitemapMetadataAspect &
{ 
public 
string 
ChangeFrequency %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? 
Priority 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Exclude 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 ã	
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\ContentItemsQueryContext.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public 

class $
ContentItemsQueryContext )
{ 
public 
IEnumerable 
< 
ContentItem &
>& '
ContentItems( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
newE H
ListI M
<M N
ContentItemN Y
>Y Z
(Z [
)[ \
;\ ]
public 
IEnumerable 
< 
ContentItem &
>& '!
ReferenceContentItems( =
{> ?
get@ C
;C D
setE H
;H I
}J K
=L M
newN Q
ListR V
<V W
ContentItemW b
>b c
(c d
)d e
;e f
} 
} å
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\IContentItemsQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public 

	interface &
IContentItemsQueryProvider /
{ 
Task  
GetContentItemsAsync !
(! "%
ContentTypesSitemapSource" ;
source< B
,B C$
ContentItemsQueryContextD \
context] d
)d e
;e f
} 
} ë
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\ISitemapBuilder.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public

 

	interface

 
ISitemapBuilder

 $
{ 
Task 
< 
	XDocument 
> 

BuildAsync "
(" #
SitemapType# .
sitemap/ 6
,6 7!
SitemapBuilderContext8 M
contextN U
)U V
;V W
} 
} ·
±D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\ISitemapContentItemExtendedMetadataProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public

 

	interface

 7
+ISitemapContentItemExtendedMetadataProvider

 @
{ 

XAttribute  
GetExtendedAttribute '
{( )
get* -
;- .
}/ 0
Task 
< 
bool 
> &
ApplyExtendedMetadataAsync -
(- .!
SitemapBuilderContext. C
contextD K
,K L$
ContentItemsQueryContextM e
queryContextf r
,r s
ContentItemt 
contentItem
Ä ã
,
ã å
XElement
ç ï
url
ñ ô
)
ô ö
;
ö õ
} 
} Ä
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\ISitemapModifiedDateProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public

 

	interface

 (
ISitemapModifiedDateProvider

 1
{ 
Task 
< 
DateTime 
? 
> $
GetLastModifiedDateAsync 0
(0 1
SitemapType1 <
sitemap= D
)D E
;E F
} 
} È
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\ISitemapSourceBuilder.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public		 

	interface		 !
ISitemapSourceBuilder		 *
{

 
Task 

BuildAsync 
( 
SitemapSource %
source& ,
,, -!
SitemapBuilderContext. C
contextD K
)K L
;L M
} 
} ç
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\ISitemapSourceModifiedDateProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public

 

	interface

 .
"ISitemapSourceModifiedDateProvider

 7
{ 
Task 
< 
DateTime 
? 
> $
GetLastModifiedDateAsync 0
(0 1
SitemapSource1 >
source? E
)E F
;F G
} 
} ‰
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\ISitemapTypeBuilder.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public		 

	interface		 
ISitemapTypeBuilder		 (
{

 
Task 

BuildAsync 
( 
SitemapType #
sitemap$ +
,+ ,!
SitemapBuilderContext- B
contextC J
)J K
;K L
} 
} É	
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\SitemapBuilderContext.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public 

class !
SitemapBuilderContext &
{ 
public 
string 

HostPrefix  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 

IUrlHelper		 
	UrlHelper		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
SitemapResponse

 
Response

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
} 
public 

class 
SitemapResponse  
{ 
public 
XElement 
ResponseElement '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ∂
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\SitemapSourceBuilderBase.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public		 

abstract		 
class		 $
SitemapSourceBuilderBase		 2
<		2 3
TSitemapSource		3 A
>		A B
:		C D!
ISitemapSourceBuilder		E Z
where		[ `
TSitemapSource		a o
:		p q
SitemapSource		r 
{

 
async 
Task !
ISitemapSourceBuilder (
.( )

BuildAsync) 3
(3 4
SitemapSource4 A
sourceB H
,H I!
SitemapBuilderContextJ _
context` g
)g h
{ 	
var 
tSource 
= 
source  
as! #
TSitemapSource$ 2
;2 3
if 
( 
tSource 
!= 
null 
)  
{ 
await 
BuildSourceAsync &
(& '
tSource' .
,. /
context0 7
)7 8
;8 9
} 
} 	
public 
abstract 
Task 
BuildSourceAsync -
(- .
TSitemapSource. <
source= C
,C D!
SitemapBuilderContextE Z
context[ b
)b c
;c d
} 
} ¸
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\SitemapSourceModifiedDateProviderBase.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public

 

abstract

 
class

 1
%SitemapSourceModifiedDateProviderBase

 ?
<

? @
TSitemapSource

@ N
>

N O
:

P Q.
"ISitemapSourceModifiedDateProvider

R t
where

u z
TSitemapSource	

{ â
:


ä ã
SitemapSource


å ô
{ 
Task 
< 
DateTime 
? 
> .
"ISitemapSourceModifiedDateProvider :
.: ;$
GetLastModifiedDateAsync; S
(S T
SitemapSourceT a
sourceb h
)h i
{ 	
var 
tSource 
= 
source  
as! #
TSitemapSource$ 2
;2 3
if 
( 
tSource 
== 
null 
)  
{ 
return 
Task 
. 

FromResult &
<& '
DateTime' /
?/ 0
>0 1
(1 2
null2 6
)6 7
;7 8
} 
return $
GetLastModifiedDateAsync +
(+ ,
tSource, 3
)3 4
;4 5
} 	
public 
virtual 
Task 
< 
DateTime $
?$ %
>% &$
GetLastModifiedDateAsync' ?
(? @
TSitemapSource@ N
tSourceO V
)V W
{ 	
return 
Task 
. 

FromResult "
<" #
DateTime# +
?+ ,
>, -
(- .
null. 2
)2 3
;3 4
} 	
} 
}   ñ
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Builders\SitemapTypeBuilderBase.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Builders '
{ 
public		 

abstract		 
class		 "
SitemapTypeBuilderBase		 0
<		0 1
TSitemapType		1 =
>		= >
:		? @
ISitemapTypeBuilder		A T
where		U Z
TSitemapType		[ g
:		h i
SitemapType		j u
{

 
public 
async 
Task 

BuildAsync $
($ %
SitemapType% 0
sitemap1 8
,8 9!
SitemapBuilderContext: O
contextP W
)W X
{ 	
var 
tSitemap 
= 
sitemap "
as# %
TSitemapType& 2
;2 3
if 
( 
tSitemap 
!= 
null  
)  !
{ 
await !
BuildSitemapTypeAsync +
(+ ,
tSitemap, 4
,4 5
context6 =
)= >
;> ?
} 
} 	
public 
abstract 
Task !
BuildSitemapTypeAsync 2
(2 3
TSitemapType3 ?
sitemap@ G
,G H!
SitemapBuilderContextI ^
context_ f
)f g
;g h
} 
} ∞
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Cache\ISitemapCacheFileResolver.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Cache $
{ 
public		 

	interface		 %
ISitemapCacheFileResolver		 .
{

 
Task 
< 
Stream 
> 
OpenReadStreamAsync (
(( )
)) *
;* +
} 
} ‡
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Cache\ISitemapCacheProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Cache $
{ 
public 

	interface !
ISitemapCacheProvider *
{ 
Task 
< %
ISitemapCacheFileResolver &
>& '!
GetCachedSitemapAsync( =
(= >
string> D
cacheFileNameE R
)R S
;S T
Task  
SetSitemapCacheAsync !
(! "
Stream" (
stream) /
,/ 0
string1 7
cacheFileName8 E
,E F
CancellationTokenG X
cancellationTokenY j
)j k
;k l
Task "
CleanSitemapCacheAsync #
(# $
IEnumerable$ /
</ 0
string0 6
>6 7
validCacheFileNames8 K
)K L
;L M
Task "
ClearSitemapCacheAsync #
(# $
string$ *
cacheFileName+ 8
)8 9
;9 :
Task 
< 
bool 
> 
PurgeAllAsync  
(  !
)! "
;" #
Task 
< 
bool 
> 

PurgeAsync 
( 
string $
cacheFileName% 2
)2 3
;3 4
Task 
< 
IEnumerable 
< 
string 
>  
>  !
	ListAsync" +
(+ ,
), -
;- .
} 
} æ
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Handlers\ISitemapSourceUpdateHandler.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{ 
public		 

	interface		 '
ISitemapSourceUpdateHandler		 0
{

 
Task 
UpdateSitemapAsync 
(   
SitemapUpdateContext  4
context5 <
)< =
;= >
} 
} ∫
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Handlers\ISitemapTypeUpdateHandler.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{ 
public		 

	interface		 %
ISitemapTypeUpdateHandler		 .
{

 
Task 
UpdateSitemapAsync 
(   
SitemapUpdateContext  4
context5 <
)< =
;= >
} 
} ≤
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Handlers\ISitemapUpdateHandler.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{ 
public 

	interface !
ISitemapUpdateHandler *
{		 
Task

 
UpdateSitemapAsync

 
(

   
SitemapUpdateContext

  4
context

5 <
)

< =
;

= >
} 
} ∂
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Handlers\SitemapUpdateContext.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Handlers '
{ 
public 

class  
SitemapUpdateContext %
{ 
public 
object 
UpdateObject "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ˚
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Models\ChangeFrequency.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

enum 
ChangeFrequency 
{ 
Daily 
, 
Hourly 
, 
Weekly 
, 
Monthly 
, 
Yearly		 
,		 
Always

 
,

 
Never 
, 
} 
} ÿ
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Models\ContentTypesSitemapSource.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

class %
ContentTypesSitemapSource *
:+ ,
SitemapSource- :
{ 
public 
bool 
IndexAll 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
true- 1
;1 2
public 
bool 

LimitItems 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
ChangeFrequency 
ChangeFrequency .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
public #
ContentTypeSitemapEntry &
[& '
]' (
ContentTypes) 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
newF I#
ContentTypeSitemapEntryJ a
[a b
]b c
{d e
}f g
;g h
public"" *
LimitedContentTypeSitemapEntry"" -
LimitedContentType"". @
{""A B
get""C F
;""F G
set""H K
;""K L
}""M N
=""O P
new""Q T*
LimitedContentTypeSitemapEntry""U s
(""s t
)""t u
;""u v
}## 
public%% 

class%% #
ContentTypeSitemapEntry%% (
{&& 
public'' 
string'' 
ContentTypeName'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
public(( 
ChangeFrequency(( 
ChangeFrequency(( .
{((/ 0
get((1 4
;((4 5
set((6 9
;((9 :
}((; <
public)) 
int)) 
Priority)) 
{)) 
get)) !
;))! "
set))# &
;))& '
}))( )
}** 
public,, 

class,, *
LimitedContentTypeSitemapEntry,, /
:,,0 1#
ContentTypeSitemapEntry,,2 I
{-- 
public.. 
int.. 
Skip.. 
{.. 
get.. 
;.. 
set.. "
;.." #
}..$ %
public// 
int// 
Take// 
{// 
get// 
;// 
set// "
;//" #
}//$ %
}00 
}11 …
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Models\CustomPathSitemapSource.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

class #
CustomPathSitemapSource (
:) *
SitemapSource+ 8
{		 
public

 
static

 
char

 
[

 
]

 $
InvalidCharactersForPath

 5
=

6 7
$str

8 T
.

T U
ToCharArray

U `
(

` a
)

a b
;

b c
public 
const 
int 
MaxPathLength &
=' (
$num) -
;- .
public 
string 
Path 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
? 

LastUpdate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
Now= @
;@ A
public 
ChangeFrequency 
ChangeFrequency .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
} 
} ¶
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Models\Sitemap.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

class 
Sitemap 
: 
SitemapType &
{ 
public 
const 
string 
PathExtension )
=* +
$str, 2
;2 3
} 
} ∞
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Models\SitemapSource.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public 

abstract 
class 
SitemapSource '
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
} 
} å
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Models\SitemapType.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Models %
{ 
public

 

abstract

 
class

 
SitemapType

 %
:

& '
Document

( 0
{ 
private 
string 
_path 
; 
public 
string 
	SitemapId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
=* +
true, 0
;0 1
public   
string   
Path   
{!! 	
get"" 
=>"" 
_path"" 
;"" 
set## 
=>## 
_path## 
=## 
value##  
.##  !
	TrimStart##! *
(##* +
$char##+ .
)##. /
;##/ 0
}$$ 	
[)) 	

JsonIgnore))	 
])) 
public** 
string** 
CacheFileName** #
=>**$ &
Name**' +
+**, -
$str**. 1
+**2 3

Identifier**4 >
+**? @
Sitemap**A H
.**H I
PathExtension**I V
;**V W
public// 
List// 
<// 
SitemapSource// !
>//! "
SitemapSources//# 1
{//2 3
get//4 7
;//7 8
set//9 <
;//< =
}//> ?
=//@ A
new//B E
List//F J
<//J K
SitemapSource//K X
>//X Y
(//Y Z
)//Z [
;//[ \
}00 
}11 Á
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Services\IRouteableContentTypeCoordinator.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{ 
public 

	interface ,
 IRouteableContentTypeCoordinator 5
{ 
IEnumerable 
< !
ContentTypeDefinition )
>) *'
ListRoutableTypeDefinitions+ F
(F G
)G H
;H I
Task 
< 
string 
> 
GetRouteAsync "
(" #!
SitemapBuilderContext# 8
context9 @
,@ A
ContentItemB M
contentItemN Y
)Y Z
;Z [
} 
} ·
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Services\IRouteableContentTypeProvider.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{ 
public 

	interface )
IRouteableContentTypeProvider 2
{ 
IEnumerable 
< !
ContentTypeDefinition )
>) *'
ListRoutableTypeDefinitions+ F
(F G
)G H
;H I
Task 
< 
string 
> 
GetRouteAsync "
(" #!
SitemapBuilderContext# 8
context9 @
,@ A
ContentItemB M
contentItemN Y
)Y Z
;Z [
} 
} º
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Services\ISitemapHelperService.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{ 
public		 

	interface		 !
ISitemapHelperService		 *
{

 
Task 
ValidatePathAsync 
( 
string %
path& *
,* +
IUpdateModel, 8
updater9 @
,@ A
stringB H
	sitemapIdI R
=S T
nullU Y
)Y Z
;Z [
string 
GetSitemapSlug 
( 
string $
name% )
)) *
;* +
} 
} ˜
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Services\ISitemapIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{ 
public 

	interface 
ISitemapIdGenerator (
{ 
string 
GenerateUniqueId 
(  
)  !
;! "
} 
} ö
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Services\ISitemapManager.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{ 
public 

	interface 
ISitemapManager $
{ 
Task 
< 
IEnumerable 
< 
SitemapType $
>$ %
>% &
LoadSitemapsAsync' 8
(8 9
)9 :
;: ;
Task 
< 
IEnumerable 
< 
SitemapType $
>$ %
>% &
GetSitemapsAsync' 7
(7 8
)8 9
;9 :
Task 
< 
SitemapType 
> 
LoadSitemapAsync *
(* +
string+ 1
	sitemapId2 ;
); <
;< =
Task 
< 
SitemapType 
> 
GetSitemapAsync )
() *
string* 0
	sitemapId1 :
): ;
;; <
Task## 
DeleteSitemapAsync## 
(##  
string##  &
	sitemapId##' 0
)##0 1
;##1 2
Task(( 
UpdateSitemapAsync(( 
(((  
SitemapType((  +
sitemap((, 3
)((3 4
;((4 5
Task-- 
UpdateSitemapAsync-- 
(--  
)--  !
;--! "
}.. 
}// œ
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\Services\ISitemapSourceFactory.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
. 
Services '
{ 
public 

	interface !
ISitemapSourceFactory *
{ 
string 
Name 
{ 
get 
; 
} 
SitemapSource 
Create 
( 
) 
; 
}		 
public 

class  
SitemapSourceFactory %
<% &
TSitemapSource& 4
>4 5
:6 7!
ISitemapSourceFactory8 M
whereN S
TSitemapSourceT b
:c d
SitemapSourcee r
,r s
newt w
(w x
)x y
{ 
private 
static 
readonly 
string  &
TypeName' /
=0 1
typeof2 8
(8 9
TSitemapSource9 G
)G H
.H I
NameI M
;M N
private 
readonly 
ISitemapIdGenerator ,
_sitemapIdGenerator- @
;@ A
public  
SitemapSourceFactory #
(# $
ISitemapIdGenerator$ 7
sitemapIdGenerator8 J
)J K
{ 	
_sitemapIdGenerator 
=  !
sitemapIdGenerator" 4
;4 5
} 	
public 
string 
Name 
=> 
TypeName &
;& '
public 
SitemapSource 
Create #
(# $
)$ %
{ 	
return 
new 
TSitemapSource %
(% &
)& '
{ 
Id 
= 
_sitemapIdGenerator (
.( )
GenerateUniqueId) 9
(9 :
): ;
} 
; 
} 	
} 
}   –
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\SitemapsOptions.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
{ 
public 

class 
SitemapsOptions  
{ 
public  
RouteValueDictionary #
GlobalRouteValues$ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
newF I 
RouteValueDictionaryJ ^
(^ _
)_ `
;` a
public 
string 
SitemapIdKey "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
$str3 5
;5 6
}		 
}

 ñ	
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\SitemapsRazorPagesContentTypeOption.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
{ 
public 

class /
#SitemapsRazorPagesContentTypeOption 4
{ 
public /
#SitemapsRazorPagesContentTypeOption 2
(2 3
string3 9
contentType: E
)E F
{		 	
ContentType

 
=

 
contentType

 %
;

% &
} 	
public 
string 
ContentType !
{" #
get$ '
;' (
}) *
public 
string 
PageName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Func 
< 
ContentItem 
,  
object! '
>' (
RouteValues) 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} À
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Sitemaps.Abstractions\SitemapsRazorPagesOptions.cs
	namespace 	
OrchardCore
 
. 
Sitemaps 
{ 
public 

class %
SitemapsRazorPagesOptions *
{ 
private		 
readonly		 
List		 
<		 /
#SitemapsRazorPagesContentTypeOption		 A
>		A B
_contentTypeOptions		C V
=		W X
new		Y \
List		] a
<		a b0
#SitemapsRazorPagesContentTypeOption			b Ö
>
		Ö Ü
(
		Ü á
)
		á à
;
		à â
public %
SitemapsRazorPagesOptions ( 
ConfigureContentType) =
(= >
string> D
contentTypeE P
,P Q
ActionR X
<X Y/
#SitemapsRazorPagesContentTypeOptionY |
>| }
action	~ Ñ
)
Ñ Ö
{ 	
var 
option 
= 
new /
#SitemapsRazorPagesContentTypeOption @
(@ A
contentTypeA L
)L M
;M N
action 
( 
option 
) 
; 
_contentTypeOptions 
.  
Add  #
(# $
option$ *
)* +
;+ ,
return 
this 
; 
} 	
public 
IReadOnlyList 
< /
#SitemapsRazorPagesContentTypeOption @
>@ A
ContentTypeOptionsB T
=>U W
_contentTypeOptionsX k
;k l
} 
} 