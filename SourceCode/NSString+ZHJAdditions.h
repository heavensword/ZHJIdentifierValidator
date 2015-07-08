//
//  NSString+ITTAdditions.h
//
//  Created by Jack on 11-9-19.
//  Copyright (c) 2011年 iMobile. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (ZHJAdditions)

- (BOOL)isStartWithString:(NSString*)start;
- (BOOL)isEndWithString:(NSString*)end;

- (NSString*)md5;
- (NSString*)encodeUrl;

@end

