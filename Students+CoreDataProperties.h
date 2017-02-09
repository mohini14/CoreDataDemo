//
//  Students+CoreDataProperties.h
//  CoreDataDemo
//
//  Created by Mohini on 2/8/17.
//  Copyright © 2017 Mohini. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Students+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Students (CoreDataProperties)

+ (NSFetchRequest<Students *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *fathersName;
@property (nullable, nonatomic, copy) NSString *studentID;

@end

NS_ASSUME_NONNULL_END
