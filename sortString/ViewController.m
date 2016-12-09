//
//  ViewController.m
//  sortString
//
//  Created by 兰长彬 on 16/6/13.
//  Copyright © 2016年 lanchangbin. All rights reserved.
//

#import "ViewController.h"

#define APPKEY          @"qbnemrtuyzxbdmtrmkgsasd"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *descriptors = [NSArray arrayWithObject:descriptor];
    NSArray *myDataArray = [NSArray arrayWithObjects:@"account3rd", @"login_type", nil];
    NSArray *resultArray = [myDataArray sortedArrayUsingDescriptors:descriptors];
    NSLog(@"%@", resultArray);
    
    NSString * resultStr = [[NSString alloc] init];
    for (NSString * str in resultArray) {
         resultStr = [resultStr stringByAppendingString:str];
    }
    NSString * lastStr = [NSString stringWithFormat:@"%@%@", APPKEY, resultStr];
    NSLog(@"===%@===", lastStr);

    NSArray *array = [NSArray arrayWithObjects:@"2.0", @"2.3", @"3.0", @"4.0", @"10", nil];
    
    CGFloat sum = [[array valueForKeyPath:@"@sum.floatValue"] floatValue];
    
    CGFloat avg = [[array valueForKeyPath:@"@avg.floatValue"] floatValue];
    
    CGFloat max =[[array valueForKeyPath:@"@max.floatValue"] floatValue];
    
    CGFloat min =[[array valueForKeyPath:@"@min.floatValue"] floatValue];
    
    NSLog(@"sum = %f\navg = %f\nmax = %f\nmin = %f",sum,avg,max,min);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
