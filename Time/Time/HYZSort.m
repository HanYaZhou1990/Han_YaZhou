//
//  HYZSort.m
//  Time
//
//  Created by hanyazhou on 14-5-16.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZSort.h"

@implementation HYZSort
+ (NSArray *)positiveSequence:(NSMutableArray *)timeArray{
    for (int i = 0; i<[timeArray count]; i++)
        {
        for (int j=i+1; j<[timeArray count]; j++)
            {
            double a = [[timeArray objectAtIndex:i] doubleValue];
            double b = [[timeArray objectAtIndex:j] doubleValue];
            if (a > b)
                {
                    [timeArray replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%0.f",b]];
                    [timeArray replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%0.f",a]];
                }
            }
        }
    return timeArray;
}

+ (NSArray *)invertedOrder:(NSMutableArray *)timeArray{
    for (int i = 0; i<[timeArray count]; i++)
        {
        for (int j=i+1; j<[timeArray count]; j++)
            {
            double a = [[timeArray objectAtIndex:i] doubleValue];
            double b = [[timeArray objectAtIndex:j] doubleValue];
            if (a < b)
                {
                [timeArray replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%0.f",b]];
                [timeArray replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%0.f",a]];
                }
            }
        }
    return timeArray;
}

@end
