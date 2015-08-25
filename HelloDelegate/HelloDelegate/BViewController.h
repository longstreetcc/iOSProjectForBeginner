//
//  BViewController.h
//  HelloDelegate
//
//  Created by CMac on 15/8/24.
//  Copyright (c) 2015年 CaiMac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BViewController;


@protocol ViewControllerDelegate <NSObject>

-(void) changeBgColorFromPageB:(BViewController*)view withcolor:(UIColor*)color;

@end


@interface BViewController : UIViewController

@property(assign, nonatomic) id<ViewControllerDelegate> delegate;

@end
