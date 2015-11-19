//
//  UIView+AutoLayout.h
//  DuTools
//
//  Created by linjinzhu on 15/11/18.
//  Copyright © 2015年 linjinzhu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AutoLayout)

- (NSArray*)stretchToBoundsOfSuperView;

- (NSLayoutConstraint*)alignTopToView:(UIView*)view withPadding:(CGFloat)padding;

- (NSLayoutConstraint*)centerHorizontallyToView:(UIView*)view withPadding:(CGFloat)padding;
- (NSLayoutConstraint*)centerHorizontallyToView:(UIView*)view;
- (NSLayoutConstraint*)centerVerticallyToView:(UIView*)view withPadding:(CGFloat)padding;
- (NSLayoutConstraint*)centerVerticallyToView:(UIView*)view;

- (NSArray*)stretchToWidthOfSuperViewWithPadding:(CGFloat)padding;
- (NSArray*)stretchToWidthOfSuperView;
- (NSArray*)stretchToHeightOfSuperViewWithPadding:(CGFloat)padding;
- (NSArray*)stretchToHeightOfSuperView;

- (NSArray*)constraintToTopOfSuperViewWithPadding:(CGFloat)padding;
- (NSArray*)constraintToLeftOfSuperViewWithPadding:(CGFloat)padding;
- (NSArray*)constraintToBottomOfSuperViewWithPadding:(CGFloat)padding;
- (NSArray*)constraintToRightOfSuperViewWithPadding:(CGFloat)padding;

- (NSArray*)constraintToTopOfView:(UIView*)view withPadding:(CGFloat)padding;
- (NSArray*)constraintToLeftOfView:(UIView*)view withPadding:(CGFloat)padding;
- (NSArray*)constraintToBottomOfView:(UIView*)view withPadding:(CGFloat)padding;
- (NSArray*)constraintToRightOfView:(UIView*)view withPadding:(CGFloat)padding;

- (NSLayoutConstraint*)constraintWidth:(CGFloat)width;
- (NSLayoutConstraint*)constraintHeight:(CGFloat)height;
- (NSLayoutConstraint*)constraintWidth:(CGFloat)width withRelation:(NSLayoutRelation)relation;
- (NSLayoutConstraint*)constraintHeight:(CGFloat)height withRelation:(NSLayoutRelation)relation;

- (NSLayoutConstraint*)constraintWidthToView:(UIView*)view;
- (NSLayoutConstraint*)constraintHeightToView:(UIView*)view;
@end
