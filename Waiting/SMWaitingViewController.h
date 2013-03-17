//
//  SMWaitingViewController.h
//  Waiting
//
//  Created by Zakk Hoyt on 3/16/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SMWaitingViewController;

@protocol SMWaitingViewControllerDelegate <NSObject>
-(void)SMWaitingViewControllerUserIsDone:(SMWaitingViewController*)sender;
@end

@interface SMWaitingViewController : UIViewController
@property (nonatomic, weak) id <SMWaitingViewControllerDelegate> delegate;
@end
