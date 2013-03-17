//
//  SMProgressHUD.h
//
//  Created by Zakk Hoyt on 3/16/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SMWaitingDismissed)(void);

typedef enum {
    kSMAnimateFadeSquaresThenLine = 0,
    kSMAnimateFadeSquaresInSequence = 1,
} SMProgressHUDAnimationType;

@interface SMProgressHUD : UIView
@property (nonatomic) SMProgressHUDAnimationType animationType;
-(void)dismissAnimated:(BOOL)animated completion:(SMWaitingDismissed)completion;
@end
