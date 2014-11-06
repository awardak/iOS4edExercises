//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by User on 11/1/14.
//  Copyright (c) 2014 BNR. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisterView.h"

@implementation BNRHypnosisViewController

- (void)loadView
{
    // create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisterView *backgroundView = [[BNRHypnosisterView alloc] initWithFrame:frame];
    
    // set it as *the* view of the view controller
    self.view = backgroundView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        
        self.tabBarItem.image = image;
    }
    return self;
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"BNRHypnosis VC loaded its view.");
}

@end