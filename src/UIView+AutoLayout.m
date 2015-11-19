//
//  UIView+AutoLayout.m
//  DuTools
//
//  Created by linjinzhu on 15/11/18.
//  Copyright © 2015年 linjinzhu. All rights reserved.
//

#import "UIView+AutoLayout.h"

@implementation UIView (AutoLayout)

- (NSArray*)stretchToBoundsOfSuperView
{
    NSMutableArray *constraints = [[NSMutableArray alloc] initWithCapacity:2];
    NSArray *vertConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V[item]" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:@{@"item": self}];
    NSArray *horiConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H[item]" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:@{@"item": self}];
    [constraints addObject:vertConstraints];
    [constraints addObject:horiConstraints];

    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSLayoutConstraint*)alignTopToView:(UIView*)view withPadding:(CGFloat)padding
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeTop
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:view
                                                                  attribute:NSLayoutAttributeTop
                                                                 multiplier:1.0 constant:padding];

    [self superViewAddConstraint:constraint];

    return constraint;
}

- (NSLayoutConstraint*)centerHorizontallyToView:(UIView*)view withPadding:(CGFloat)padding
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:view
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1.0 constant:padding];

    [self superViewAddConstraint:constraint];

    return constraint;
}

- (NSLayoutConstraint*)centerHorizontallyToView:(UIView*)view
{
    return [self centerHorizontallyToView:view withPadding:0];
}

- (NSLayoutConstraint*)centerVerticallyToView:(UIView*)view withPadding:(CGFloat)padding
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:view
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1.0 constant:padding];

    [self superViewAddConstraint:constraint];

    return constraint;
}

- (NSLayoutConstraint*)centerVerticallyToView:(UIView*)view
{
    return [self centerVerticallyToView:view withPadding:0];
}

- (NSArray*)stretchToWidthOfSuperViewWithPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-padding-[item]-padding-|"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)stretchToWidthOfSuperView
{
    return [self stretchToWidthOfSuperViewWithPadding:0];
}

- (NSArray*)stretchToHeightOfSuperViewWithPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-padding-[item]-padding-|"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)stretchToHeightOfSuperView
{
    return [self stretchToWidthOfSuperViewWithPadding:0];
}

- (NSArray*)constraintToTopOfSuperViewWithPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-padding-[item]"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)constraintToLeftOfSuperViewWithPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-padding-[item]"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)constraintToBottomOfSuperViewWithPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[item]-padding-|"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)constraintToRightOfSuperViewWithPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[item]-padding-|"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)constraintToTopOfView:(UIView*)view withPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[item]-padding-[view]"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self, @"view" : view}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)constraintToLeftOfView:(UIView*)view withPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[item]-padding-[view]"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self, @"view" : view}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)constraintToBottomOfView:(UIView*)view withPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view]-padding-[item]"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self, @"view" : view}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSArray*)constraintToRightOfView:(UIView*)view withPadding:(CGFloat)padding
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view]-padding-[item]"
                                                                   options:0
                                                                   metrics:@{@"padding" : @(padding)}
                                                                     views:@{@"item" : self, @"view" : view}];
    [self superViewAddConstraints:constraints];

    return constraints;
}

- (NSLayoutConstraint*)constraintWidthToView:(UIView*)view
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];
    [self superViewAddConstraint:constraint];

    return constraint;
}

- (NSLayoutConstraint*)constraintWidth:(CGFloat)width
{
    return [self constraintWidth:width withRelation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint*)constraintHeight:(CGFloat)height
{
    return [self constraintHeight:height withRelation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint*)constraintHeight:(CGFloat)height withRelation:(NSLayoutRelation)relation
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:relation
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:0 constant:height];
    [self superViewAddConstraint:constraint];

    return constraint;
}

- (NSLayoutConstraint*)constraintWidth:(CGFloat)width withRelation:(NSLayoutRelation)relation
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:relation
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:0 constant:width];
    [self superViewAddConstraint:constraint];

    return constraint;
}

- (NSLayoutConstraint*)constraintHeightToView:(UIView*)view
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
    [self superViewAddConstraint:constraint];

    return constraint;
}

#pragma mark - Helpers
- (void)superViewAddConstraint:(NSLayoutConstraint *)constraint
{
    UIView *superView = self.superview;
    if (superView != nil) {
        [self.superview addConstraint:constraint];
    }
}

- (void)superViewAddConstraints:(NSArray*)constraints
{
    UIView *superView = self.superview;
    if (superView != nil) {
        [self.superview addConstraints:constraints];
    }
}

@end
