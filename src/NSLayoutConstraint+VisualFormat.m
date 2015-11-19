//
//  NSLayoutConstraint+VisualFormat.m
//  DuTools
//
//  Created by linjinzhu on 15/11/18.
//  Copyright © 2015年 linjinzhu. All rights reserved.
//

#import "NSLayoutConstraint+VisualFormat.h"

@implementation NSLayoutConstraint (VisualFormat)

+ (NSArray*)constraintsWithVisualFormat:(NSString*)visualFormat views:(NSDictionary*)views
{
    return [NSLayoutConstraint constraintsWithVisualFormat:visualFormat options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:views];
}

+ (NSArray*)constraintsWithVisualFormat:(NSString*)visualFormat options:(NSLayoutFormatOptions)options views:(NSDictionary*)views
{
    return [NSLayoutConstraint constraintsWithVisualFormat:visualFormat options:options metrics:nil views:views];
}

+ (NSArray*)constraintsWithVisualFormat:(NSString*)visualFormat metrics:(NSDictionary*)metrics views:(NSDictionary*)views
{
    return [NSLayoutConstraint constraintsWithVisualFormat:visualFormat options:NSLayoutFormatDirectionLeadingToTrailing metrics:metrics views:views];
}
@end
