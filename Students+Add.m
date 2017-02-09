//
//  Students+Add.m
//  CoreDataDemo
//
//  Created by Mohini on 2/8/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import "Students+Add.h"
#import "AppDelegate.h"

@implementation Students (Add)

+ (Students *)addStudentsInfoFromDictionary:(NSDictionary *)dict {

    AppDelegate * appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = [appDelegate.persistentContainer viewContext];

    Students *studentEntity = [NSEntityDescription insertNewObjectForEntityForName:ENTITY_NAME
                                                            inManagedObjectContext:context];

    studentEntity.studentID = [dict objectForKeyedSubscript:@"studentID"];
    studentEntity.name = [dict objectForKeyedSubscript:@"name"];
    studentEntity.fathersName = [dict objectForKeyedSubscript:@"fathersName"];

    return studentEntity;

}

+ (Students *)retriveStudentByStudentID:(NSString *)studentID {

    AppDelegate * appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = [appDelegate.persistentContainer viewContext];

    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:ENTITY_NAME];
    request.predicate = [NSPredicate predicateWithFormat:@"studentID == %@", studentID];
    NSError *error = nil;
    NSArray *fetchedObject = [context executeFetchRequest:request error:&error];

    if(error || fetchedObject.count==0 )
        return nil;
    else
        return  fetchedObject.firstObject;

}

@end
