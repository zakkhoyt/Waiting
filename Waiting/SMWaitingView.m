//
//  SMWaitingView.m
//  Waiting
//
//  Created by Zakk Hoyt on 3/16/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "SMWaitingView.h"


static CGFloat kWidth = 25;
static CGFloat kHeight = 25;
static float kWaitingAnimationDuration = 1.0;

@implementation SMWaitingView{
    UIView* _views[9];
}

- (id)initWithFrame:(CGRect)frame
{

    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        // add a background with a semialpha
        UIView *translucentBackground = [[UIView alloc]initWithFrame:self.bounds];
        translucentBackground.backgroundColor = [UIColor blackColor];
        translucentBackground.alpha = 0.75;
        [self addSubview:translucentBackground];
        
        for(NSUInteger index = 0; index < 9; index++){
            CGRect frame = [self rectForIndex:index];
            _views[index] = [[UIView alloc]initWithFrame:frame];
            _views[index].backgroundColor = [self randomColor];
            [self addSubview:_views[index]];
        }
        [self animate];
    }
    return self;
}

-(void)animate{
    
    // Animate all at same interval
//    [UIView animateWithDuration:kWaitingAnimationDuration
//                     animations:^{
//                         for(NSUInteger index = 0; index < 9; index++){
//                             _views[index].backgroundColor = [self randomColor];
//                         }
//                         
//                     } completion:^(BOOL finished) {
//                         [self animate];
//                     }];
    
    // Animate with different intervals
    [self animate0];
    [self animate1];
    [self animate2];
    [self animate3];
    [self animate4];
    [self animate5];
    [self animate6];
    [self animate7];
    [self animate8];
}

-(void)animate0{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[0].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate0];
                     }];
}
-(void)animate1{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[1].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate1];
                     }];
    
}
-(void)animate2{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[2].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate2];
                     }];
    
}
-(void)animate3{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[3].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate3];
                     }];
    
}
-(void)animate4{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[4].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate4];
                     }];
    
}
-(void)animate5{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[5].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate5];
                     }];
    
}
-(void)animate6{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[6].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate6];
                     }];
    
}
-(void)animate7{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[7].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate7];
                     }];
    
}
-(void)animate8{
    [UIView animateWithDuration:[self randomDuration]
                     animations:^{
                         _views[8].backgroundColor = [self randomColor];
                     } completion:^(BOOL finished) {
                         [self animate8];
                     }];
    
}


-(CGRect)rectForIndex:(NSUInteger)index{

    switch(index){
        case 0:
            return CGRectMake(self.center.x - kWidth * 1.5,
                              self.center.y - kHeight * 1.5,
                              kWidth, kHeight);
            break;
        case 1:
            return CGRectMake(self.center.x - kWidth * 0.5,
                              self.center.y - kHeight * 1.5,
                              kWidth, kHeight);
            break;
        case 2:
            return CGRectMake(self.center.x + kWidth * 0.5,
                              self.center.y - kHeight * 1.5,
                              kWidth, kHeight);
            break;
        case 3:
            return CGRectMake(self.center.x - kWidth * 1.5,
                              self.center.y - kHeight * 0.5,
                              kWidth, kHeight);
            break;
        case 4:
            return CGRectMake(self.center.x - kWidth * 0.5,
                              self.center.y - kHeight * 0.5,
                              kWidth, kHeight);
            break;
        case 5:
            return CGRectMake(self.center.x + kWidth * 0.5,
                              self.center.y - kHeight * 0.5,
                              kWidth, kHeight);
            break;
        case 6:
            return CGRectMake(self.center.x - kWidth * 1.5,
                              self.center.y + kHeight * 0.5,
                              kWidth, kHeight);
            break;
        case 7:
            return CGRectMake(self.center.x - kWidth * 0.5,
                              self.center.y + kHeight * 0.5,
                              kWidth, kHeight);
            break;
        case 8:
            return CGRectMake(self.center.x + kWidth * 0.5,
                              self.center.y + kHeight * 0.5,
                              kWidth, kHeight);
            break;

    }
    
    return CGRectMake(0, 0, kWidth, kHeight);
}

-(NSTimeInterval)randomDuration{
    return (arc4random() % 20) / 10.0;
}

-(UIColor*)randomColor{
    int r = arc4random() % 9;
    switch(r){
        case 0:
            return [UIColor colorWithRed:193/255.0 green:15/255.0 blue:0/255.0 alpha:1.0];
            break;
        case 1:
            return [UIColor colorWithRed:239/255.0 green:67/255.0 blue:0/255.0 alpha:1.0];
            break;
        case 2:
            return [UIColor colorWithRed:250/255.0 green:171/255.0 blue:91/255.0 alpha:1.0];
            break;
        case 3:
            return [UIColor colorWithRed:150/255.0 green:24/255.0 blue:18/255.0 alpha:1.0];
            break;
        case 4:
            return [UIColor colorWithRed:192/255.0 green:26/255.0 blue:0/255.0 alpha:1.0];
            break;
        case 5:
            return [UIColor colorWithRed:239/255.0 green:79/255.0 blue:26/255.0 alpha:1.0];
            break;
        case 6:
            return [UIColor colorWithRed:42/255.0 green:0/255.0 blue:0/255.0 alpha:1.0];
            break;
        case 7:
            return [UIColor colorWithRed:110/255.0 green:3/255.0 blue:0/255.0 alpha:1.0];
            break;
        case 8:
            return [UIColor colorWithRed:210/255.0 green:24/255.0 blue:3/255.0 alpha:1.0];
            break;
        default:
            break;
    }
    
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
