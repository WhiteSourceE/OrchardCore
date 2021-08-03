°
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\ILuceneAnalyzer.cs
	namespace 	
OrchardCore
 
. 
Lucene 
{ 
public 

	interface 
ILuceneAnalyzer $
{		 
string

 
Name

 
{

 
get

 
;

 
}

 
Analyzer 
CreateAnalyzer 
(  
)  !
;! "
} 
} ß
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\ILuceneQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Lucene 
{ 
public 

	interface  
ILuceneQueryProvider )
{ 
Query 
CreateQuery 
( 
ILuceneQueryService -
builder. 5
,5 6
LuceneQueryContext7 I
contextJ Q
,Q R
stringS Y
typeZ ^
,^ _
JObject` g
queryh m
)m n
;n o
}		 
}

 ∂
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\ILuceneQueryService.cs
	namespace 	
OrchardCore
 
. 
Lucene 
{ 
public 

	interface 
ILuceneQueryService (
{ 
Task		 
<		 
LuceneTopDocs		 
>		 
SearchAsync		 '
(		' (
LuceneQueryContext		( :
context		; B
,		B C
JObject		D K
queryObj		L T
)		T U
;		U V
Query

 
CreateQueryFragment

 !
(

! "
LuceneQueryContext

" 4
context

5 <
,

< =
JObject

> E
queryObj

F N
)

N O
;

O P
} 
} Ö

âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\Indexing\Index.cs
	namespace 	
OrchardCore
 
. 
Lucene 
. 
Indexing %
{ 
public 

class 
Index 
{		 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DefaultAnalyzer %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
[ 
] 
DefaultSearchFields +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 

Dictionary 
< 
string  
,  !
Mapping" )
>) *
Mappings+ 3
{4 5
get6 9
;9 :
}; <
== >
new? B

DictionaryC M
<M N
stringN T
,T U
MappingV ]
>] ^
(^ _
)_ `
;` a
} 
} ç
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\Indexing\Mapping.cs
	namespace 	
OrchardCore
 
. 
Lucene 
. 
Indexing %
{ 
public 

class 
Mapping 
{		 
public 

Dictionary 
< 
string  
,  !
Property" *
>* +

Properties, 6
{7 8
get9 <
;< =
}> ?
=@ A
newB E

DictionaryF P
<P Q
stringQ W
,W X
PropertyY a
>a b
(b c
)c d
;d e
} 
} ≠
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\Indexing\Property.cs
	namespace 	
OrchardCore
 
. 
Lucene 
. 
Indexing %
{ 
public 

class 
Property 
{		 
public 
Types 
Type 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
? 
Index 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
Store 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
? 
IncludeInAll !
{" #
get$ '
;' (
set) ,
;, -
}. /
public"" 
int"" 
?"" 
ScalingFactor"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
public(( 
string(( 
Analyzer(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
public-- 
string-- 
SearchAnalyzer-- $
{--% &
get--' *
;--* +
set--, /
;--/ 0
}--1 2
public22 

Dictionary22 
<22 
string22  
,22  !
Property22" *
>22* +
Fields22, 2
{223 4
get225 8
;228 9
}22: ;
=22< =
new22> A

Dictionary22B L
<22L M
string22M S
,22S T
Property22U ]
>22] ^
(22^ _
)22_ `
;22` a
public77 
float77 
?77 
Boost77 
{77 
get77 !
;77! "
set77# &
;77& '
}77( )
}88 
}99 ï
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\Indexing\Types.cs
	namespace 	
OrchardCore
 
. 
Lucene 
. 
Indexing %
{ 
public 

enum 
Types 
{ 
Long 
, 
Integer 
, 
Short		 
,		 
Byte

 
,

 
Double 
, 
Float 
, 
ScaledFloat 
, 
Boolean 
, 
Binary 
, 
Date 
, 
Text 
, 
Keyword 
, 
} 
} ß
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\LuceneOptions.cs
	namespace 	
OrchardCore
 
. 
Lucene 
{ 
public 

class 
LuceneOptions 
{ 
public 
IList 
< 
ILuceneAnalyzer $
>$ %
	Analyzers& /
{0 1
get2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
ILuceneAnalyzerD S
>S T
(T U
)U V
;V W
} 
}		 •
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\LuceneQueryContext.cs
	namespace 	
OrchardCore
 
. 
Lucene 
{ 
public 

class 
LuceneQueryContext #
{ 
public		 
LuceneQueryContext		 !
(		! "
IndexSearcher		" /
indexSearcher		0 =
,		= >
LuceneVersion		? L
defaultVersion		M [
,		[ \
Analyzer		] e
defaultAnalyzer		f u
)		u v
{

 	
DefaultAnalyzer 
= 
defaultAnalyzer -
;- .
DefaultVersion 
= 
defaultVersion +
;+ ,
IndexSearcher 
= 
indexSearcher )
;) *
} 	
public 
LuceneVersion 
DefaultVersion +
{, -
get. 1
;1 2
}3 4
=5 6
LuceneVersion7 D
.D E
	LUCENE_48E N
;N O
public 
Analyzer 
DefaultAnalyzer '
{( )
get* -
;- .
}/ 0
public 
IndexSearcher 
IndexSearcher *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} à
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Lucene.Abstractions\LuceneTopDocs.cs
	namespace 	
OrchardCore
 
. 
Lucene 
{ 
public 

class 
LuceneTopDocs 
{ 
public 
TopDocs 
TopDocs 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
}		 
}

 