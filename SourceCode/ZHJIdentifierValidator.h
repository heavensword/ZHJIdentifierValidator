//
//  IdentifierValidator.h
//  HaiHang
//
//  Created by zhou huajian on 11-1-25.
//  Copyright 2011 Sword. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum 
{
    IdentifierTypeKnown = 0,
	IdentifierTypeZipCode,          //1
	IdentifierTypeEmail,            //2
	IdentifierTypePhone,            //3
	IdentifierTypeUnicomPhone,      //4
	IdentifierTypeQQ,               //5
    IdentifierTypeNumber,           //6
    IdentifierTypeString,           //7
    IdentifierTypeIdentifier,       //8
    IdentifierTypePassort,          //9
    IdentifierTypeCreditNumber,     //10
    IdentifierTypeBirthday,         //11
    IdentifierTypeBankCardNumber,   //12
}IdentifierType;

@interface ZHJIdentifierValidator : NSObject
{
}

+ (BOOL) isValid:(IdentifierType) type value:(NSString*) value;

@end
