//
//  CALayer+AppAppearance.m
//  temp
//
//  Created by Alexaner Fedosov on 13.07.14.
//  Copyright (c) 2014 home. All rights reserved.
//

#import "CALayer+AppAppearance.h"

@implementation CALayer (AppAppearance)

- (void)applyCornerRadius:(NSNumber*)radius
{
    self.cornerRadius = [radius floatValue];
}

- (void)applyBorderColor:(UIColor*)color
{
    self.borderColor = color.CGColor;
}

- (void)applyBorderWidth:(NSNumber*)width
{
    self.borderWidth = [width floatValue];
}

@end
