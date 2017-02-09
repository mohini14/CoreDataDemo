//
//  ViewController.h
//  CoreDataDemo
//
//  Created by Mohini on 2/8/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *fathersNameField;
@property (weak, nonatomic) IBOutlet UITextField *studentIDField;
@property (weak, nonatomic) IBOutlet UITextView *outputTextField;
- (IBAction)addToDatabasePressed:(UIButton *)sender;
- (IBAction)searchButtonPressed:(UIButton *)sender;

@end

