//
//  ViewController.m
//  testdate
//
//  Created by gressmc on 30/12/14.
//  Copyright (c) 2014 gressmc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDateFormatter *setDateFormatter = [NSDateFormatter new];
    [setDateFormatter setDateFormat:@"yyyy-DDD/dd/MM"];
    NSDate* date= [setDateFormatter dateFromString:@"2014-001/01/01"];
    
    for (NSUInteger day=1; day<=365; day++) {
        
        NSLog(@"%@", [setDateFormatter stringFromDate:date]);
        date = [NSDate dateWithTimeInterval:(60*60*24) sinceDate:date];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


