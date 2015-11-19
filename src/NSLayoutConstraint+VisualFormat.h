//
//  NSLayoutConstraint+VisualFormat.h
//  DuTools
//
//  Created by linjinzhu on 15/11/18.
//  Copyright © 2015年 linjinzhu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (VisualFormat)
+ (NSArray*)constraintsWithVisualFormat:(NSString*)visualFormat views:(NSDictionary*)views;
+ (NSArray*)constraintsWithVisualFormat:(NSString*)visualFormat options:(NSLayoutFormatOptions)options views:(NSDictionary*)views;
+ (NSArray*)constraintsWithVisualFormat:(NSString*)visualFormat metrics:(NSDictionary*)metrics views:(NSDictionary*)views;
@end
