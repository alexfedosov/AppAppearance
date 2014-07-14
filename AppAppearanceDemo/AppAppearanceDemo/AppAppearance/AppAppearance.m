//
//  AppAppearance.m
//  temp
//
//  Created by Alexaner Fedosov on 13.07.14.
//  Copyright (c) 2014 home. All rights reserved.
//

#import "AppAppearance.h"

@implementation AppAppearance

+ (NSDictionary*)style
{
    return @
    {
        @"redButton" : @
        {
            @"backgroundColor" : [UIColor redColor],
            @"borderColor" : [UIColor grayColor],
            @"borderWidth" : @(1)
        },
        @"blueButton" : @
        {
            @"backgroundColor" : [UIColor blueColor],
            @"borderColor" : [UIColor grayColor],
            @"borderWidth" : @(1)
        },
        @"roundButton" : @
        {
            @"cornerRadius" : @(5)
        },
        @"roundView" : @
        {
            @"cornerRadius" : @(20)
        }
    };
}

@end
