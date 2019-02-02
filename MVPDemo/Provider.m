//
//  Provider.m
//  MVPDemo
//
//  Created by fashion on 2019/2/2.
//  Copyright © 2019年 shangZhu. All rights reserved.
//

#import "Provider.h"
#import "Model.h"
#import "TestCell.h"
#import "ViewProtocol.h"

@interface Provider ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataArray;//数据源数组

@end

@implementation Provider



#pragma mark - Life Cycle
- (instancetype)init {
    
    if (self = [super init]) {
        [self initDataSource];
        [self initAppreaence];
    }
    return self;
}

#pragma mark - InitAppreaence

static NSString *const kCellIdentifier = @"DXCellIdentifier";
- (void)initAppreaence {
    
    [self.tableView registerClass:[TestCell class] forCellReuseIdentifier:kCellIdentifier];
}

#pragma mark - InitDataSource
- (void)initDataSource {
    
    Model *model = [[Model alloc] init];
    self.dataArray = @[model,model,model,model,model,model];
}


#pragma mark - TableViewDelegate/dataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Model *model = self.dataArray[indexPath.row];
    id<ViewProtocol> cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    [cell configCellDateByModel:model];
    return (UITableViewCell *)cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Model *model = self.dataArray[indexPath.row];
    return model.height;
}


#pragma mark - Getters
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc] init];
    }
    return _tableView;
}


@end
