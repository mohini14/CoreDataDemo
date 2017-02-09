//
//  ViewController.m
//  CoreDataDemo
//
//  Created by Mohini on 2/8/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import "ViewController.h"
#import "Students+Add.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addToDatabasePressed:(UIButton *)sender {
    NSDictionary *dict = @{
            @"name": self.nameField.text,
            @"fathersName": self.fathersNameField.text,
            @"studentID": self.studentIDField.text
    };

//    [Students addStudentsInfoFromDictionary:dict];
    Students *students = [Students addStudentsInfoFromDictionary:dict];
    self.outputTextField.text = students.description;
}

- (IBAction)searchButtonPressed:(UIButton *)sender {
    NSString *studentId = self.studentIDField.text;
    Students *student = [Students retriveStudentByStudentID:studentId];
    if(student != nil)
        self.outputTextField.text  = student.description;
    else
        self.outputTextField.text = [NSString stringWithFormat: @"Cannot fetch Student With ID=%@", studentId];
    
}
@end
