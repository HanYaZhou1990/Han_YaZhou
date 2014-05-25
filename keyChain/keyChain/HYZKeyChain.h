//
//  HYZKeyChain.h
//  keyChain
//
//  Created by hanyazhou on 14-5-25.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
#import <Security/Security.h>

@interface HYZKeyChain : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;

@end
