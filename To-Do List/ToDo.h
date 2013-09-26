//
//  ToDo.h
//  To-Do List
//
//  Created by Jhaybie on 9/24/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property (strong, nonatomic) NSString *task;

- (ToDo *) addTask: (NSString *)task;

- (NSString *) changeTask: (NSString *)task;


@end
