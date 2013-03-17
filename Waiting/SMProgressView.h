//
//  SMProgressView.h
//  Waiting
//
//  Created by Zakk Hoyt on 3/17/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SMProgessViewDismissed)(void);

@interface SMProgressView : UIView
-(void)dismissAnimated:(BOOL)animated completion:(SMProgessViewDismissed)completion;
@end






