ó
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Search.Abstractions\ViewModels\SearchFormViewModel.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Abstractions )
.) *

ViewModels* 4
{ 
public 

class 
SearchFormViewModel $
:% &
ShapeViewModel' 5
{ 
public 
SearchFormViewModel "
(" #
string# )
	shapeType* 3
)3 4
:5 6
base7 ;
(; <
	shapeType< E
)E F
{ 	
}		 	
public 
string 
Terms 
{ 
get !
;! "
set# &
;& '
}( )
} 
} 
šD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Search.Abstractions\ViewModels\SearchIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Abstractions )
.) *

ViewModels* 4
{ 
[ 
BindProperties 
( 
SupportsGet 
=  !
true" &
)& '
]' (
public		 

class		  
SearchIndexViewModel		 %
{

 
public 
string 
Terms 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
	BindNever	 
] 
public 
SearchFormViewModel "

SearchForm# -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	
	BindNever	 
] 
public "
SearchResultsViewModel %
SearchResults& 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
[ 	
	BindNever	 
] 
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
	BindNever	 
] 
public 
IEnumerable 
< 
ContentItem &
>& '
ContentItems( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} ô
œD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Search.Abstractions\ViewModels\SearchResultsViewModel.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Abstractions )
.) *

ViewModels* 4
{ 
public 

class "
SearchResultsViewModel '
:( )
ShapeViewModel* 8
{		 
public

 "
SearchResultsViewModel

 %
(

% &
string

& ,
	shapeType

- 6
)

6 7
:

8 9
base

: >
(

> ?
	shapeType

? H
)

H I
{ 	
} 	
[ 	
	BindNever	 
] 
public 
IEnumerable 
< 
ContentItem &
>& '
ContentItems( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} 