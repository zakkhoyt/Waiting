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
static CGFloat kLineWidth = 2;


@implementation SMWaitingView{
    UIView* _views[9];
    UIView* _lines[8];
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
        
        // Add squares
        for(NSUInteger index = 0; index < 9; index++){
            CGRect frame = [self rectForIndex:index];
            _views[index] = [[UIView alloc]initWithFrame:frame];
            _views[index].backgroundColor = [self randomColor];
            [self addSubview:_views[index]];
        }
        
        
        // Add lines
        for(NSUInteger index = 0; index < 8; index++){
            CGRect frame = [self lineRectForIndex:index];
            _lines[index] = [[UIView alloc]initWithFrame:frame];
            _lines[index].backgroundColor = [UIColor darkGrayColor];;
            [self addSubview:_lines[index]];
        }
        

        [self animate];
        [self takeALap];
        
        //This will indirectly call drawRect
        [NSTimer scheduledTimerWithTimeInterval:1/60.0 target:self selector:@selector(draw) userInfo:nil repeats:YES];
    }
    return self;
}



-(void)draw{
    [self setNeedsDisplay];
}


-(NSTimeInterval)randomDuration{
    return (arc4random() % 10) / 10.0;
}

-(void)animate{
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

-(void)takeALap{
    static int index = 0;
    
    float xOffset = 0;
    float yOffset = 0;
    switch (index) {
        case 0:
            xOffset = -0.5 * kWidth;
            yOffset = -0.5 * kHeight;
            break;
        case 1:
            xOffset = 0.5 * kWidth;
            yOffset = -0.5 * kHeight;
            break;
        case 2:
            xOffset = 0.5 * kWidth;
            yOffset = 0.5 * kHeight;
            break;
        case 3:
            xOffset = -0.5 * kWidth;
            yOffset = 0.5 * kHeight;
            break;
        default:
            break;
    }
    
    [UIView animateWithDuration:2.0
                     animations:^{
                         for(NSUInteger index = 0; index < 9; index++){
                             CGRect frame = _views[index].frame;
                             frame.origin.x += xOffset;
                             frame.origin.y += yOffset;
                             _views[index].frame = frame;
                         }
                         for(NSUInteger index = 0; index < 9; index++){
                             CGRect frame = _lines[index].frame;
                             frame.origin.x += xOffset;
                             frame.origin.y += yOffset;
                             _lines[index].frame = frame;
                         }
                     } completion:^(BOOL finished) {
                         (index == 3) ? index = 0 : index++;
                         [self takeALap];
                     }];
    
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




-(CGRect)lineRectForIndex:(NSUInteger)index{
    switch (index) {
        case 0:
            return CGRectMake(self.center.x - 1.5 * kWidth,
                              self.center.y - 1.5 * kHeight,
                              kLineWidth, 3.0 * kWidth);
            break;
            
        case 1:
            return CGRectMake(self.center.x - 0.5 * kWidth,
                              self.center.y - 1.5 * kHeight,
                              kLineWidth, 3.0 * kWidth);
            break;
        case 2:
            return CGRectMake(self.center.x + 0.5 * kWidth,
                              self.center.y - 1.5 * kHeight,
                              kLineWidth, 3.0 * kWidth);
            break;
        case 3:
            return CGRectMake(self.center.x + 1.5 * kWidth,
                              self.center.y - 1.5 * kHeight,
                              kLineWidth, 3.0 * kWidth);
            break;
        case 4:
            return CGRectMake(self.center.x - 1.5 * kWidth,
                              self.center.y - 1.5 * kHeight,
                              3.0 * kWidth, kLineWidth);
            
            break;
        case 5:
            return CGRectMake(self.center.x - 1.5 * kWidth,
                              self.center.y - 0.5 * kHeight,
                              3.0 * kWidth, kLineWidth);
            break;
        case 6:
            return CGRectMake(self.center.x - 1.5 * kWidth,
                              self.center.y + 0.5 * kHeight,
                              3.0 * kWidth, kLineWidth);
            break;
        case 7:
            return CGRectMake(self.center.x - 1.5 * kWidth,
                              self.center.y + 1.5 * kHeight,
                              3.0 * kWidth, kLineWidth);
            break;
            
        default:
            break;
    }
    
    return CGRectMake(self.center.x,
                      self.center.y,
                      3.0 * kWidth, kLineWidth);
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

@end
