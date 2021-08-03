î
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.MetaWeblog.Abstractions\IMetaWeblogDriver.cs
	namespace 	
OrchardCore
 
. 

MetaWeblog  
{ 
public 

	interface 
IMetaWeblogDriver &
{		 
void

 
SetCapabilities

 
(

 
Action

 #
<

# $
string

$ *
,

* +
string

, 2
>

2 3
setCapability

4 A
)

A B
;

B C
void 
	BuildPost 
( 

XRpcStruct !
	rpcStruct" +
,+ ,
XmlRpcContext- :
context; B
,B C
ContentItemD O
contentItemP [
)[ \
;\ ]
void 
EditPost 
( 

XRpcStruct  
	rpcStruct! *
,* +
ContentItem, 7
contentItem8 C
)C D
;D E
} 
} ˙	
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.MetaWeblog.Abstractions\MetaWeblogDriver.cs
	namespace 	
OrchardCore
 
. 

MetaWeblog  
{ 
public 

abstract 
class 
MetaWeblogDriver *
:+ ,
IMetaWeblogDriver- >
{		 
public

 
virtual

 
void

 
	BuildPost

 %
(

% &

XRpcStruct

& 0
	rpcStruct

1 :
,

: ;
XmlRpcContext

< I
context

J Q
,

Q R
ContentItem

S ^
contentItem

_ j
)

j k
{ 	
} 	
public 
virtual 
void 
EditPost $
($ %

XRpcStruct% /
	rpcStruct0 9
,9 :
ContentItem; F
contentItemG R
)R S
{ 	
} 	
public 
virtual 
void 
SetCapabilities +
(+ ,
Action, 2
<2 3
string3 9
,9 :
string; A
>A B
setCapabilityC P
)P Q
{ 	
} 	
} 
} 