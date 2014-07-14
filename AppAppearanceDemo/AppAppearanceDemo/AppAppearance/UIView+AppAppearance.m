//
//  UIView+AppAppearance.m
//  temp
//
//  Created by Alexaner Fedosov on 13.07.14.
//  Copyright (c) 2014 home. All rights reserved.
//

#import "UIView+AppAppearance.h"
#import "AppAppearance.h"

@implementation UIView (AppAppearance)

- (void)applyValue:(id)value forUndefinedStyleKey:(NSString*)styleKey;
{
    styleKey = [styleKey stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[styleKey substringToIndex:1] capitalizedString]];
    NSString* selectorName = [NSString stringWithFormat:@"apply%@:", styleKey];
    
    SEL selector = NSSelectorFromString(selectorName);
    
    id responsiveObject = nil;
    
    if ([self respondsToSelector:selector])
    {
        responsiveObject = self;
    }
    
    if ([self.layer respondsToSelector:selector])
    {
        responsiveObject = self.layer;
    }
    
    [responsiveObject performSelector:NSSelectorFromString(selectorName) withObject:value];
}

- (void)setStyleForClass:(NSString*)styleClass
{
    NSDictionary* styleDictionary = [[AppAppearance style] objectForKey:styleClass];
    
    for (NSString* styleProperty in [styleDictionary allKeys])
    {
        NSString* styleValue = [styleDictionary objectForKey:styleProperty];
        
        if ([self respondsToSelector:NSSelectorFromString(styleProperty)])
        {
            [self setValue:styleValue forKey:styleProperty];
        }
        else
        {
            [self applyValue:styleValue forUndefinedStyleKey:styleProperty];
        }
    }
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([[key uppercaseString] isEqualToString:@"STYLE"])
    {
        [self setStyleForClass:value];
        return;
    }
    
    [super setValue:value forUndefinedKey:key];
}

@end
