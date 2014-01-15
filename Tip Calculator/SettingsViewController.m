//
//  SettingsViewController.m
//  Tip Calculator
//
//  Created by Ross Danielson on 1/14/14.
//  Copyright (c) 2014 zynga. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;

-(IBAction)OnTipControlChange:(id)sender;

@end

@implementation SettingsViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultTip = [defaults integerForKey:@"defaultTip"];
    self.defaultTipControl.selectedSegmentIndex = defaultTip;
}

-(IBAction)OnTipControlChange:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setInteger:self.defaultTipControl.selectedSegmentIndex forKey:@"defaultTip"];
    [defaults synchronize];
}

@end
