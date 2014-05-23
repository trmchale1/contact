//
//  GTContactViewController.h
//  Contact
//
//  Created by Tim McHale on 5/23/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTContactViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *contactImageView;
@property (strong, nonatomic) IBOutlet UITextField *firstName;
@property (strong, nonatomic) IBOutlet UITextField *lastName;
@property (strong, nonatomic) IBOutlet UITextField *ageField;

- (IBAction)save:(id)sender;
- (IBAction)chooseImage:(id)sender;
- (IBAction)toView:(id)sender;

@end
