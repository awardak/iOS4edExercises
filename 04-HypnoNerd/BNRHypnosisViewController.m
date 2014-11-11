//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by User on 11/1/14.
//  Copyright (c) 2014 BNR. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisterView.h"

@interface BNRHypnosisViewController ()
@property (nonatomic, strong) UISegmentedControl *segmentedControl;

@end

@implementation BNRHypnosisViewController

- (void)loadView
{
    // create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisterView *backgroundView = [[BNRHypnosisterView alloc] initWithFrame:frame];
    
    // set it as *the* view of the view controller
    self.view = backgroundView;

    self.segmentedControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Red", @"Green", @"Blue", nil]];
    self.segmentedControl.frame = CGRectMake(30, 30, 200, 40);
    [self.segmentedControl addTarget:self action:@selector(segmentedControlAction) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.segmentedControl];
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
- (void) segmentedControlAction
{
    NSLog(@"%ld pressed", (long)self.segmentedControl.selectedSegmentIndex);
    if (self.segmentedControl.selectedSegmentIndex == 0)
        self.view.backgroundColor = [UIColor redColor];
    else if (self.segmentedControl.selectedSegmentIndex == 1)
        self.view.backgroundColor = [UIColor greenColor];
    else if (self.segmentedControl.selectedSegmentIndex == 2)
        self.view.backgroundColor = [UIColor blueColor];
}

@end