//
//  Students+CoreDataProperties.m
//  CoreDataDemo
//
//  Created by Mohini on 2/8/17.
//  Copyright © 2017 Mohini. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Students+CoreDataProperties.h"

@implementation Students (CoreDataProperties)

+ (NSFetchRequest<Students *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Students"];
}

@dynamic name;
@dynamic fathersName;
@dynamic studentID;

@end
