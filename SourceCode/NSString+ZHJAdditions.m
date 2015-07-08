//
//  NSString+ITTAdditions.m
//
//  Created by Jack on 11-9-19.
//  Copyright (c) 2011年 iMobile. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>
#import "NSString+ZHJAdditions.h"


@implementation NSString (ZHJAdditions)

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wshorten-64-to-32"
- (NSString *)md5
{
	const char *concat_str = [self UTF8String];
	unsigned char result[CC_MD5_DIGEST_LENGTH];
	CC_MD5(concat_str, strlen(concat_str), result);
	NSMutableString *hash = [NSMutableString string];
	for (int i = 0; i < 16; i++){
		[hash appendFormat:@"%02X", result[i]];
	}
	return [hash lowercaseString];
	
}
#pragma GCC diagnostic pop

- (NSString*)encodeUrl
{
	NSString *newString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)self, NULL, CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding)));
	if (newString) {
		return newString;
	}
	return @"";
}

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

