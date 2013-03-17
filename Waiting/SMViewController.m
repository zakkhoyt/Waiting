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
@property (nonatomic, strong) SMProgressHUD *waitingView;
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
    self.waitingView = [[SMProgressHUD alloc]initWithFrame:self.view.bounds];
//    self.waitingView.animationType = kSMAnimateFadeSquaresInSequence;
    self.waitingView.animationType = kSMAnimateFadeSquaresThenLine;
    [self.view addSubview:self.waitingView];
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(removeWaitingView) userInfo:nil repeats:NO];
}

-(void)removeWaitingView{
    [self.waitingView dismissAnimated:YES completion:^{
        self.waitingView = nil;
    }];
}

@end
