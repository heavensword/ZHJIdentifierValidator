//
//  NSString+ITTAdditions.m
//
//  Created Sword on 11-9-19.
//  Copyright (c) 2011年 Sword. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "NSString+ZHJAdditions.h"

@implementation NSString (ZHJAdditions)

- (BOOL)isStartWithString:(NSString*)start
{
    BOOL result = FALSE;
    NSRange found = [self rangeOfString:start options:NSCaseInsensitiveSearch];
    if (found.location == 0)
    {
        result = TRUE;
    }
    return result;
}

- (BOOL)isEndWithString:(NSString*)end
{
    NSInteger endLen = [end length];
    NSInteger len = [self length];
    BOOL result = TRUE;
    if (endLen <= len) {
        NSInteger index = len - 1;
        for (NSInteger i = endLen - 1; i >= 0; i--) {
            if ([end characterAtIndex:i] != [self characterAtIndex:index]) {
                result = FALSE;
                break;
            }
            index--;
        }
    }
    else {
        result = FALSE;
    }
    return result;
}

- (BOOL)canConvertToNumber
{
    BOOL can = FALSE;
    if (self && [self length]) {
        can = TRUE;
        NSInteger len = self.length;
        for (NSInteger i = 0; i < len; i++) {
            if (!([self characterAtIndex:i] >= '0' && [self characterAtIndex:i] <= '9')) {
                can = FALSE;
                break;
            }
        }
    }
    return can;
}
@end

