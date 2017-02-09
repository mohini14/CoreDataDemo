//
//  Students+Add.h
//  CoreDataDemo
//
//  Created by Mohini on 2/8/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import "Students+CoreDataProperties.h"
#define ENTITY_NAME @"Students"
@interface Students (Add)

+ (Students *)addStudentsInfoFromDictionary:(NSDictionary *)dict;

+ (Students *)retriveStudentByStudentID: (NSString *)studentID;

@end
