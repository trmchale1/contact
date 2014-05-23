//
//  ViewController.m
//  Contact
//
//  Created by Tim McHale on 5/23/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    // Get the stored data before the view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *firstName = [defaults objectForKey:@"firstName"];
    NSString *lastName = [defaults objectForKey:@"lastname"];
    
    
    NSData *imageData = [defaults dataForKey:@"image"];
    UIImage *contactImage = [UIImage imageWithData:imageData];
    
  
    
    NSLog(@"first name = %@", firstName);
    
    
    
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
