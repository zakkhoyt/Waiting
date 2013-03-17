//
//  SMProgressHUD.h
//
//  Created by Zakk Hoyt on 3/16/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SMWaitingDismissed)(void);

typedef enum {
    SMProgressHUDEndingAnimationTypeFadeSquaresThenLine = 0,
    SMProgressHUDEndingAnimationTypeFadeSquaresInSequence = 1,
} SMProgressHUDEndingAnimationType;

typedef enum {
    SMProgressHUDLogoAnimationTypeRandomColorsAndIntervals = 0,
    SMProgressHUDLogoAnimationTypeLaps = 1,
} SMProgressHUDLogoAnimationType;

@interface SMProgressHUD : UIView

-(void)animate:(SMProgressHUDLogoAnimationType)animationType;
-(void)dismissWithAnimationType:(SMProgressHUDEndingAnimationType)animationType completion:(SMWaitingDismissed)completion;

@end
