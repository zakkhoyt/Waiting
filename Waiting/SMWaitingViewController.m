//
//  SMWaitingViewController.m
//  Waiting
//
//  Created by Zakk Hoyt on 3/16/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "SMWaitingViewController.h"

@interface SMWaitingViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *image0;
@property (strong, nonatomic) IBOutlet UIImageView *image1;
@property (strong, nonatomic) IBOutlet UIImageView *image2;
@property (strong, nonatomic) IBOutlet UIImageView *image3;
@property (strong, nonatomic) IBOutlet UIImageView *image4;
@property (strong, nonatomic) IBOutlet UIImageView *image5;
@property (strong, nonatomic) IBOutlet UIImageView *image6;
@property (strong, nonatomic) IBOutlet UIImageView *image7;
@property (strong, nonatomic) IBOutlet UIImageView *image8;

@end

@implementation SMWaitingViewController{
    UIImageView *_images[9];
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
    _images[0] = _image0;
    _images[1] = _image1;
    _images[2] = _image2;
    _images[3] = _image3;
    _images[4] = _image4;
    _images[5] = _image5;
    _images[6] = _image6;
    _images[7] = _image7;
    _images[8] = _image8;
    [self setup];
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
-(void)setup{
    
    for(NSUInteger index = 0; index < 9; index++){
        _images[index].animationImages = [NSArray arrayWithObjects:
                                          [self randomImage],
                                          [self randomImage],
                                          [self randomImage],
                                          [self randomImage],
                                          [self randomImage],
                                          [self randomImage],
                                          [self randomImage],
                                          [self randomImage],
                                          [self randomImage],
                                          nil];
        _images[index].animationDuration = 2.0;
        [_images[index] startAnimating];
    }
}



@end
