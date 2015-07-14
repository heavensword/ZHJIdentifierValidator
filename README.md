# ZHJIdentifierValidator
A validator tool class for creditcard number, bank number, email, qq, unicomephone number etc.
Only one method:
```  objective-c
+ (BOOL) isValid:(IdentifierType) type value:(NSString*) value;

//usage:
[ZHJIdentifierValidator isValid:IdentifierTypeEmail value:@"test123@gmail.com"];
[ZHJIdentifierValidator isValid:IdentifierTypePassort value:@"323102931203092"];
[ZHJIdentifierValidator isValid:IdentifierTypeCreditNumber value:@"65561029302912036"];

```
