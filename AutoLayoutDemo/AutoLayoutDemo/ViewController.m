//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by linjinzhu on 15/11/19.
//  Copyright © 2015年 XTools. All rights reserved.
//

#import "ViewController.h"
#import "UIView+AutoLayout.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *redView;      // self.view's subview
@property (nonatomic, strong) UIView *blueView;     // self.view's subview
@property (nonatomic, strong) UIView *grayView;     // blueView's subview
@property (nonatomic, strong) UIView *purpleView;   // blueView's subview
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    _redView = [[UIView alloc] init];
    _redView.backgroundColor = [UIColor redColor];
    [_redView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:_redView];

    _blueView = [[UIView alloc] init];
    _blueView.backgroundColor = [UIColor blueColor];
    [_blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:_blueView];

    _grayView = [[UIView alloc] init];
    _grayView.backgroundColor = [UIColor grayColor];
    [_grayView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_blueView addSubview:_grayView];

    _purpleView = [[UIView alloc] init];
    _purpleView.backgroundColor = [UIColor purpleColor];
    [_purpleView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_blueView addSubview:_purpleView];

/**
    [self setConstraintUseStandardAPI];
    [self setConstraintUseVisualFormat];
 */
    [self setConstraintsUseCategory];

}

- (void)setConstraintsUseCategory
{
    [_redView constraintWidth:50];
    [_redView constraintHeight:50];
    [_redView centerHorizontallyToView:self.view];
    [_redView centerVerticallyToView:self.view];

    [_blueView constraintWidth:20];
    [_blueView constraintHeight:20];
    [_blueView centerHorizontallyToView:self.view];
    [_blueView constraintToBottomOfView:_redView withPadding:20];

    [_grayView constraintWidth:10 withRelation:NSLayoutRelationGreaterThanOrEqual];
    [_grayView constraintHeight:10 withRelation:NSLayoutRelationGreaterThanOrEqual];
    [_grayView centerHorizontallyToView:_blueView];
    [_grayView centerVerticallyToView:_blueView];

    [_purpleView constraintWidth:10 withRelation:NSLayoutRelationGreaterThanOrEqual];
    [_purpleView constraintHeight:20 withRelation:NSLayoutRelationGreaterThanOrEqual];
    [_purpleView centerVerticallyToView:_blueView];
    [_purpleView constraintToRightOfSuperViewWithPadding:2];
}

- (void)setConstraintUseStandardAPI
{
    NSLayoutConstraint *redCenterXConstraint = [NSLayoutConstraint constraintWithItem:_redView
                                                                            attribute:NSLayoutAttributeCenterX
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeCenterX
                                                                           multiplier:1 constant:0];
    NSLayoutConstraint *redCenterYConstraint = [NSLayoutConstraint constraintWithItem:_redView
                                                                            attribute:NSLayoutAttributeCenterY
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeCenterY
                                                                           multiplier:1 constant:0];
    [self.view addConstraint:redCenterXConstraint];
    [self.view addConstraint:redCenterYConstraint];

    NSLayoutConstraint *redWidthConstraint = [NSLayoutConstraint constraintWithItem:_redView
                                                                          attribute:NSLayoutAttributeWidth
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:nil
                                                                          attribute:NSLayoutAttributeWidth
                                                                         multiplier:1 constant:200];

    NSLayoutConstraint *redHeightConstraint = [NSLayoutConstraint constraintWithItem:_redView
                                                                           attribute:NSLayoutAttributeHeight
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:nil
                                                                           attribute:NSLayoutAttributeHeight
                                                                          multiplier:1 constant:100];
    [self.view addConstraint:redWidthConstraint];
    [self.view addConstraint:redHeightConstraint];
}

- (void)setConstraintUseVisualFormat
{
    NSDictionary *views = @{@"redView" : _redView, @"blueView" : _blueView};
    NSArray *redViewHorizentalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(>=100)]"
                                                                                    options:NSLayoutFormatAlignAllCenterX | NSLayoutFormatAlignAllCenterY
                                                                                    metrics:nil
                                                                                      views:views];
    NSArray *redViewVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(100)]"
                                                                                  options:0
                                                                                  metrics:nil
                                                                                    views:views];
    [self.view addConstraints:redViewHorizentalConstraints];
    [self.view addConstraints:redViewVerticalConstraints];
    NSLayoutConstraint *redViewWidthConstraint = [NSLayoutConstraint constraintWithItem:_redView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint *redViewHeightConstraint = [NSLayoutConstraint constraintWithItem:_redView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    [self.view addConstraint:redViewWidthConstraint];
    [self.view addConstraint:redViewHeightConstraint];

    NSArray *blueViewHorizentalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"[blueView(200)]"
                                                                                     options:0
                                                                                     metrics:nil
                                                                                       views:views];
    NSArray *blueViewVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView]-10-[blueView(200)]"
                                                                                   options:0
                                                                                   metrics:nil
                                                                                     views:views];
    [self.view addConstraints:blueViewHorizentalConstraints];
    [self.view addConstraints:blueViewVerticalConstraints];
    NSLayoutConstraint *blueViewWidthConstraint = [NSLayoutConstraint constraintWithItem:_blueView
                                                                               attribute:NSLayoutAttributeCenterX
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.view
                                                                               attribute:NSLayoutAttributeCenterX
                                                                              multiplier:1 constant:0];
    [self.view addConstraint:blueViewWidthConstraint];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
