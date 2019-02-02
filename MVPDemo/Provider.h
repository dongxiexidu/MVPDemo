//
//  Provider.h
//  MVPDemo
//
//  Created by fashion on 2019/2/2.
//  Copyright © 2019年 shangZhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Provider : NSObject

/// 暴露一个tableView的属性 提供Controller使用
@property (nonatomic, strong) UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
