†
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Queries.Abstractions\IQueryManager.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

	interface 
IQueryManager "
{ 
Task 
< 
IEnumerable 
< 
Query 
> 
>  
ListQueriesAsync! 1
(1 2
)2 3
;3 4
Task 
SaveQueryAsync 
( 
string "
name# '
,' (
Query) .
query/ 4
)4 5
;5 6
Task 
DeleteQueryAsync 
( 
string $
name% )
)) *
;* +
Task 
< 
Query 
> 
LoadQueryAsync "
(" #
string# )
name* .
). /
;/ 0
Task$$ 
<$$ 
Query$$ 
>$$ 
GetQueryAsync$$ !
($$! "
string$$" (
name$$) -
)$$- .
;$$. /
Task,, 
<,, 
IQueryResults,, 
>,, 
ExecuteQueryAsync,, -
(,,- .
Query,,. 3
query,,4 9
,,,9 :
IDictionary,,; F
<,,F G
string,,G M
,,,M N
object,,O U
>,,U V

parameters,,W a
),,a b
;,,b c
Task11 
<11 
string11 
>11 
GetIdentifierAsync11 '
(11' (
)11( )
;11) *
}22 
}33 ¨
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Queries.Abstractions\IQueryResults.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

	interface 
IQueryResults "
{ 
public 
IEnumerable 
< 
object !
>! "
Items# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
}		 ‰
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Queries.Abstractions\IQuerySource.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

	interface 
IQuerySource !
{ 
string 
Name 
{ 
get 
; 
} 
Query		 
Create		 
(		 
)		 
;		 
Task

 
<

 
IQueryResults

 
>

 
ExecuteQueryAsync

 -
(

- .
Query

. 3
query

4 9
,

9 :
IDictionary

; F
<

F G
string

G M
,

M N
object

O U
>

U V

parameters

W a
)

a b
;

b c
} 
} Ú
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Queries.Abstractions\LuceneQueryResults.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

class 
LuceneQueryResults #
:$ %
IQueryResults& 3
{ 
public 
IEnumerable 
< 
object !
>! "
Items# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
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
 »
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Queries.Abstractions\Query.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

class 
Query 
{ 
	protected 
Query 
( 
string 
source %
)% &
{ 	
Source 
= 
source 
; 
} 	
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
string 
Source 
{ 
get "
;" #
}$ %
public 
string 
Schema 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ÷
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Queries.Abstractions\SQLQueryResults.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

class 
SQLQueryResults  
:! "
IQueryResults# 0
{ 
public 
IEnumerable 
< 
object !
>! "
Items# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
}		 