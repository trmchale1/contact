//
//  GTContactViewController.m
//  Contact
//
//  Created by Tim McHale on 5/23/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTContactViewController.h"
#import "ViewController.h"

@interface GTContactViewController ()

@end

@implementation GTContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UINavigationItem *navItem = self.navigationItem;
        navItem.title = @"Contact";
    }
    return self;
}

- (void)viewDidLoad
{
    
    // Get the stored data before the view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *firstName = [defaults objectForKey:@"firstName"];
    NSString *lastName = [defaults objectForKey:@"lastname"];
    
    NSString *ageString = [NSString stringWithFormat:@"%@",self.ageField];
    
    NSData *imageData = [defaults dataForKey:@"image"];
    UIImage *contactImage = [UIImage imageWithData:imageData];
    
    // Update the UI elements with the saved data
    self.firstName.text = firstName;
    self.lastName.text = lastName;
    self.ageField.text = ageString;
    self.contactImageView.image = contactImage;
    
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    
    // Hide the keyboard
    [self.firstName resignFirstResponder];
    [self.lastName resignFirstResponder];
    [self.ageField resignFirstResponder];
    
    // Create strings and integer to store the text info
    NSString *firstName = [self.firstName text];
    NSString *lastName  = [self.lastName text];
    NSString *age = [self.ageField text];
    
    // Create instances of NSData
    UIImage *contactImage = self.contactImageView.image;
    NSData *imageData = UIImageJPEGRepresentation(contactImage, 100);
    
    
    // Store the data
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:firstName forKey:@"firstName"];
    [defaults setObject:lastName forKey:@"lastname"];
    [defaults setObject:age forKey:@"age"];
    [defaults setObject:imageData forKey:@"image"];
    
    [defaults synchronize];
    
    NSLog(@"Data saved");
    
    
}

- (IBAction)chooseImage:(id)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
    
}

- (IBAction)toView:(id)sender {
    
    ViewController *view = [[ViewController alloc] init];
    
    [self.navigationController pushViewController:view
                                         animated:YES];

    
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
    self.contactImageView.image = image;
    
    [picker dismissModalViewControllerAnimated:YES];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    
[self dismissViewControllerAnimated:YES completion:nil];}
@end
