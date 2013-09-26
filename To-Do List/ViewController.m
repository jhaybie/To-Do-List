//
//  ViewController.m
//  To-Do List
//
//  Created by Jhaybie on 9/24/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSMutableArray     *toDoArray;
@property (weak, nonatomic) IBOutlet UITableView *toDoView;

- (IBAction)addPressed:(id)sender;

@end

@implementation ViewController

@synthesize toDoArray, toDoView, textField;


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [toDoArray count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *arrayID = [NSString stringWithFormat: @"XXX"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: arrayID];
    //Creates a cell only if there are no reusable cells
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault
                                      reuseIdentifier: arrayID];
    }
    
    cell.textLabel.text = toDoArray[indexPath.row];
    return cell;
}


- (UITableViewCellAccessoryType)tableView:(UITableView *)tv accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellAccessoryDetailDisclosureButton;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    toDoArray = [[NSMutableArray alloc] init];
}


- (IBAction)addPressed:(id)sender
{
    [self.view endEditing: YES];
    ToDo *newTask = [[ToDo alloc] init];
    [newTask addTask: [NSString stringWithFormat:@"%@", textField.text]];
    [toDoArray addObject: newTask.task];
    textField.text = @"";
    [toDoView reloadData];
}
@end
