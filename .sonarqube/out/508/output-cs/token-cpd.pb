ê
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Email.Abstractions\ISmtpService.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

	interface 
ISmtpService !
{		 
Task 
< 

SmtpResult 
> 
	SendAsync "
(" #
MailMessage# .
message/ 6
)6 7
;7 8
} 
} ç
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Email.Abstractions\MailMessage.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

class 
MailMessage 
{		 
public 
string 
From 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
To 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Cc 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Bcc 
{ 
get 
;  
set! $
;$ %
}& '
public!! 
string!! 
ReplyTo!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public)) 
string)) 
Sender)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
public.. 
string.. 
Subject.. 
{.. 
get..  #
;..# $
set..% (
;..( )
}..* +
public33 
string33 
Body33 
{33 
get33  
;33  !
set33" %
;33% &
}33' (
public88 
bool88 

IsBodyHtml88 
{88  
get88! $
;88$ %
set88& )
;88) *
}88+ ,
public== 
List== 
<== !
MailMessageAttachment== )
>==) *
Attachments==+ 6
{==7 8
get==9 <
;==< =
}==> ?
===@ A
new==B E
List==F J
<==J K!
MailMessageAttachment==K `
>==` a
(==a b
)==b c
;==c d
}>> 
}?? ö
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Email.Abstractions\MailMessageAttachment.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

class !
MailMessageAttachment &
{		 
public 
string 
Filename 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Stream 
Stream 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ß
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Email.Abstractions\SmtpDeliveryMethod.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

enum 
SmtpDeliveryMethod "
{ 
Network 
, $
SpecifiedPickupDirectory		  
}

 
} û
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Email.Abstractions\SmtpEncryptionMethod.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

enum  
SmtpEncryptionMethod $
{ 
None 
= 
$num 
, 
SSLTLS		 
=		 
$num		 
,		 
STARTTLS

 
=

 
$num

 
} 
} ﬂ
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Email.Abstractions\SmtpResult.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public		 

class		 

SmtpResult		 
{

 
public 
static 

SmtpResult  
Success! (
{) *
get+ .
;. /
}0 1
=2 3
new4 7

SmtpResult8 B
{C D
	SucceededE N
=O P
trueQ U
}V W
;W X
public 
IEnumerable 
< 
LocalizedString *
>* +
Errors, 2
{3 4
get5 8
;8 9
	protected: C
setD G
;G H
}I J
public 
bool 
	Succeeded 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public 
static 

SmtpResult  
Failed! '
(' (
params( .
LocalizedString/ >
[> ?
]? @
errorsA G
)G H
=>I K
newL O

SmtpResultP Z
{[ \
	Succeeded] f
=g h
falsei n
,n o
Errorsp v
=w x
errorsy 
}
Ä Å
;
Å Ç
} 
}   &
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Email.Abstractions\SmtpSettings.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

class 
SmtpSettings 
: 
IValidatableObject  2
{ 
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
)+ ,
,, -
EmailAddress. :
]: ;
public 
string 
DefaultSender #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
public 
SmtpDeliveryMethod !
DeliveryMethod" 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
string #
PickupDirectoryLocation -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public"" 
string"" 
Host"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
[(( 	
Range((	 
((( 
$num(( 
,(( 
$num(( 
)(( 
](( 
public)) 
int)) 
Port)) 
{)) 
get)) 
;)) 
set)) "
;))" #
}))$ %
=))& '
$num))( *
;))* +
public.. 
bool..  
AutoSelectEncryption.. (
{..) *
get..+ .
;... /
set..0 3
;..3 4
}..5 6
public33 
bool33 
RequireCredentials33 &
{33' (
get33) ,
;33, -
set33. 1
;331 2
}333 4
public88 
bool88 !
UseDefaultCredentials88 )
{88* +
get88, /
;88/ 0
set881 4
;884 5
}886 7
public==  
SmtpEncryptionMethod== #
EncryptionMethod==$ 4
{==5 6
get==7 :
;==: ;
set==< ?
;==? @
}==A B
publicBB 
stringBB 
UserNameBB 
{BB  
getBB! $
;BB$ %
setBB& )
;BB) *
}BB+ ,
publicGG 
stringGG 
PasswordGG 
{GG  
getGG! $
;GG$ %
setGG& )
;GG) *
}GG+ ,
publicJJ 
IEnumerableJJ 
<JJ 
ValidationResultJJ +
>JJ+ ,
ValidateJJ- 5
(JJ5 6
ValidationContextJJ6 G
validationContextJJH Y
)JJY Z
{KK 	
varLL 
SLL 
=LL 
validationContextLL %
.LL% &

GetServiceLL& 0
<LL0 1
IStringLocalizerLL1 A
<LLA B
SmtpSettingsLLB N
>LLN O
>LLO P
(LLP Q
)LLQ R
;LLR S
switchNN 
(NN 
DeliveryMethodNN "
)NN" #
{OO 
casePP 
SmtpDeliveryMethodPP '
.PP' (
NetworkPP( /
:PP/ 0
ifQQ 
(QQ 
StringQQ 
.QQ 
IsNullOrEmptyQQ ,
(QQ, -
HostQQ- 1
)QQ1 2
)QQ2 3
{RR 
yieldSS 
returnSS $
newSS% (
ValidationResultSS) 9
(SS9 :
SSS: ;
[SS; <
$strSS< X
,SSX Y
$strSSZ e
]SSe f
,SSf g
newSSh k
[SSk l
]SSl m
{SSn o
nameofSSp v
(SSv w
HostSSw {
)SS{ |
}SS} ~
)SS~ 
;	SS Ä
}TT 
breakUU 
;UU 
caseVV 
SmtpDeliveryMethodVV '
.VV' ($
SpecifiedPickupDirectoryVV( @
:VV@ A
ifWW 
(WW 
StringWW 
.WW 
IsNullOrEmptyWW ,
(WW, -#
PickupDirectoryLocationWW- D
)WWD E
)WWE F
{XX 
yieldYY 
returnYY $
newYY% (
ValidationResultYY) 9
(YY9 :
SYY: ;
[YY; <
$strYY< X
,YYX Y
$strYYZ u
]YYu v
,YYv w
newYYx {
[YY{ |
]YY| }
{YY~ 
nameof
YYÄ Ü
(
YYÜ á%
PickupDirectoryLocation
YYá û
)
YYû ü
}
YY† °
)
YY° ¢
;
YY¢ £
}ZZ 
break[[ 
;[[ 
default\\ 
:\\ 
throw]] 
new]] !
NotSupportedException]] 3
(]]3 4
S]]4 5
[]]5 6
$str]]6 c
,]]c d
DeliveryMethod]]e s
]]]s t
)]]t u
;]]u v
}^^ 
}__ 	
}`` 
}aa 