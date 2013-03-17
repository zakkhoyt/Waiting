//
//  SMViewController.m
//  Waiting
//
//  Created by Zakk Hoyt on 3/16/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "SMViewController.h"
#import "SMWaitingViewController.h"

__attribute ((unused)) static NSString *kSegueMainToWaiting = @"segueMainToWaiting";
__attribute ((unused)) static NSString *kSegueMainToNash = @"segueMainToNash";


@interface SMViewController () <SMWaitingViewControllerDelegate>

@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:kSegueMainToWaiting]){
        SMWaitingViewController *vc = segue.destinationViewController;
        vc.delegate = self;
    }
    else     if([segue.identifier isEqualToString:kSegueMainToWaiting]){
        SMWaitingViewController *vc = segue.destinationViewController;
        vc.delegate = self;
    }

}
- (IBAction)testButtonTouchUpInside:(id)sender {
    [self performSegueWithIdentifier:kSegueMainToWaiting sender:self];
}

- (IBAction)waiting02ButtonTouchUpInside:(id)sender {
    [self performSegueWithIdentifier:kSegueMainToNash sender:self];
}


#pragma mark - Implements SMWaitingViewControllerDelegate
-(void)SMWaitingViewControllerUserIsDone:(SMWaitingViewController*)sender{
    [sender dismissViewControllerAnimated:YES completion:^{}];
}




@end
