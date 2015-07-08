//
//  NSString+ITTAdditions.h
//
//  Created by Sword on 11-9-19.
//  Copyright (c) 2011年 Sword. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (ZHJAdditions)

- (BOOL)isStartWithString:(NSString*)start;
- (BOOL)isEndWithString:(NSString*)end;
- (BOOL)canConvertToNumber;

@end

