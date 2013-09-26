//
//  ToDo.m
//  To-Do List
//
//  Created by Jhaybie on 9/24/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo


- (ToDo *) addTask: (NSString *)task
{
    ToDo *toDo = [[ToDo alloc] init];
    toDo.task = [NSString stringWithFormat:@"%@", task];
    return toDo;
}

- (NSString *) changeTask: (NSString *)task
{
    return [NSString stringWithFormat:@"%@", task];
}


/*- (NSString *) changeTaskDescription: (NSString *)taskDescription
                           forTaskID: (int)taskID
{
    return taskDescription;
}*/

@end
