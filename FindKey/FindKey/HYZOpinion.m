//
//  HYZOpinion.m
//  FindKey
//
//  Created by hanyazhou on 14-5-15.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZOpinion.h"

@implementation HYZOpinion
static NSString *keyDic = nil;
+ (BOOL)keyString:(NSString *)keyString hasThisKey:(NSString *)key{
    if ([keyString isEqualToString:key]) {
        return YES;
    }else{
        return NO;
    }
}
@end
