//
//  ViewController.m
//  MVPDemo
//
//  Created by fashion on 2019/2/2.
//  Copyright © 2019年 shangZhu. All rights reserved.
//

#import "ViewController.h"
#import "Provider.h"

@interface ViewController ()

@property (strong, nonatomic) Provider *provier;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.provier = [[Provider alloc] init];
    [self initAppreaence];
}

#pragma mark - InitAppreaence
- (void)initAppreaence {
    [self.view addSubview:self.provier.tableView];
}

@end
