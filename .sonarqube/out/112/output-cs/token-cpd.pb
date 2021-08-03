Å
ŽD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DynamicCache.Abstractions\IDynamicCache.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
{ 
public 

	interface 
IDynamicCache "
{ 
Task 
< 
byte 
[ 
] 
> 
GetAsync 
( 
string $
key% (
)( )
;) *
Task		 
RemoveAsync		 
(		 
string		 
key		  #
)		# $
;		$ %
Task

 
SetAsync

 
(

 
string

 
key

  
,

  !
byte

" &
[

& '
]

' (
value

) .
,

. /(
DistributedCacheEntryOptions

0 L
options

M T
)

T U
;

U V
} 
} ®
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DynamicCache.Abstractions\IDynamicCacheService.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
{ 
public 

	interface  
IDynamicCacheService )
:* +#
ITagRemovedEventHandler, C
{ 
Task 
< 
string 
> 
GetCachedValueAsync (
(( )
CacheContext) 5
context6 =
)= >
;> ?
Task		 
SetCachedValueAsync		  
(		  !
CacheContext		! -
context		. 5
,		5 6
string		7 =
value		> C
)		C D
;		D E
}

 
} 