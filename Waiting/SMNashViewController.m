//
//  SMNashViewController.m
//  Waiting
//
//  Created by Zakk Hoyt on 3/16/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "SMNashViewController.h"
#import "SMWaitingView.h"


__attribute ((unused)) static float kWaitingAnimationDuration = 1.0;

@interface SMNashViewController ()
@property (strong, nonatomic) IBOutlet UIView *view0;
@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIView *view2;
@property (strong, nonatomic) IBOutlet UIView *view3;
@property (strong, nonatomic) IBOutlet UIView *view4;
@property (strong, nonatomic) IBOutlet UIView *view5;
@property (strong, nonatomic) IBOutlet UIView *view6;
@property (strong, nonatomic) IBOutlet UIView *view7;
@property (strong, nonatomic) IBOutlet UIView *view8;
@property (strong, nonatomic) IBOutlet SMWaitingView *waitingView;
@end

@implementation SMNashViewController{
    UIView *_views[9];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillAppear:(BOOL)animated{
    _views[0] = _view0;
    _views[1] = _view1;
    _views[2] = _view2;
    _views[3] = _view3;
    _views[4] = _view4;
    _views[5] = _view5;
    _views[6] = _view6;
    _views[7] = _view7;
    _views[8] = _view8;
    [self newIcon];
}



-(UIImage*)randomImage{
    
    
    int r = arc4random() % 9;
    switch(r){
        case 0:
            return [UIImage imageNamed:@"icon_square_0.png"];
            break;
        case 1:
            return [UIImage imageNamed:@"icon_square_1.png"];
            break;
        case 2:
            return [UIImage imageNamed:@"icon_square_2.png"];
            break;
        case 3:
            return [UIImage imageNamed:@"icon_square_3.png"];
            break;
        case 4:
            return [UIImage imageNamed:@"icon_square_4.png"];
            break;
        case 5:
            return [UIImage imageNamed:@"icon_square_5.png"];
            break;
        case 6:
            return [UIImage imageNamed:@"icon_square_6.png"];
            break;
        case 7:
            return [UIImage imageNamed:@"icon_square_7.png"];
            break;
        case 8:
            return [UIImage imageNamed:@"icon_square_8.png"];
            break;
        default:
            break;
    }
    
    return [UIImage imageNamed:@"icon_square_0.png"];
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


-(void)newIcon{
    [UIView animateWithDuration:kWaitingAnimationDuration
                     animations:^{
                         for(NSUInteger index = 0; index < 9; index++){
                             _views[index].backgroundColor = [self randomColor];
                         }

                     } completion:^(BOOL finished) {
                         [self newIcon];
                     }];
    
    
//    [UIView animateWithDuration:10
//                          delay:kWaitingAnimationDuration
//                        options:UIViewAnimationOptionAllowAnimatedContent animations:^{
////                            for(NSUInteger index = 0; index < 9; index++){
////                                _images[index].image = [self randomImage];
////                            }
//                            for(NSUInteger index = 0; index < 9; index++){
//                                _images[index].image = [self randomImage];
//                            }
//
//                        } completion:^(BOOL finished) {
//                            for(NSUInteger index = 0; index < 9; index++){
//                                _images[index].image = [self randomImage];
//                            }
//
//                        }];
//    for(NSUInteger index = 0; index < 9; index++){
//        _images[index].animationImages = [NSArray arrayWithObjects:
//                                          [self randomImage],
//                                          [self randomImage],
//                                          [self randomImage],
//                                          [self randomImage],
//                                          [self randomImage],
//                                          [self randomImage],
//                                          [self randomImage],
//                                          [self randomImage],
//                                          [self randomImage],
//                                          nil];
//        _images[index].animationDuration = 2.0;
//        [_images[index] startAnimating];
//    }
    
    
    
}
- (IBAction)startButtonTouchUpInside:(id)sender {
    [self newIcon];
}
- (IBAction)waitingButtonTouchUpInside:(id)sender {
    _waitingView = [[SMWaitingView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:_waitingView];
}


@end
