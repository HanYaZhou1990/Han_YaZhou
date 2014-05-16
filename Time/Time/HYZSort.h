//
//  HYZSort.h
//  Time
//
//  Created by hanyazhou on 14-5-16.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HYZSort : NSObject

//正序
+ (NSArray *)positiveSequence:(NSMutableArray *)timeArray;
//倒序
+ (NSArray *)invertedOrder:(NSMutableArray *)timeArray;
@end
