Ç
‡D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Redis.Abstractions\IRedisService.cs
	namespace 	
OrchardCore
 
. 
Redis 
{ 
public 

	interface 
IRedisService "
:# $ 
IModularTenantEvents% 9
{ 
Task		 
ConnectAsync		 
(		 
)		 
;		 "
IConnectionMultiplexer

 

Connection

 )
{

* +
get

, /
;

/ 0
}

1 2
	IDatabase 
Database 
{ 
get  
;  !
}" #
} 
} ˆ
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Redis.Abstractions\RedisOptions.cs
	namespace 	
OrchardCore
 
. 
Redis 
{ 
public 

class 
RedisOptions 
{		 
public  
ConfigurationOptions # 
ConfigurationOptions$ 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
} 
} 