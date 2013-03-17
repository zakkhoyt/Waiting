//
//  SMViewController.m
//  Waiting
//
//  Created by Zakk Hoyt on 3/17/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "SMViewController.h"
#import "SMProgressHUD.h"


@interface SMViewController ()
@property (nonatomic, strong) SMProgressHUD *progressHUDView;

@end

@implementation SMViewController

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
- (IBAction)testButtonTouchUpInside:(id)sender {
    self.progressHUDView = [[SMProgressHUD alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.progressHUDView];
    [self.progressHUDView animate:SMProgressHUDLogoAnimationTypeRandomColorsAndIntervals];
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(removeSMProgressHUD) userInfo:nil repeats:NO];
    
}
- (IBAction)testHUD2ButtonTouchUpInside:(id)sender {
    self.progressHUDView = [[SMProgressHUD alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.progressHUDView];
    [self.progressHUDView animate:SMProgressHUDLogoAnimationTypeLaps];
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(removeSMProgressHUD) userInfo:nil repeats:NO];

}


-(void)removeSMProgressHUD{
    [self.progressHUDView dismissWithAnimationType:SMProgressHUDEndingAnimationTypeFadeSquaresInSequence
                                        completion:^{
                                            self.progressHUDView = nil;
                                        }];
}

@end
