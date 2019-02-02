//
//  ViewProtocol.h
//  MVPDemo
//
//  Created by fashion on 2019/2/2.
//  Copyright © 2019年 shangZhu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
 协议用于保存每个cell的数据源设置方法，也可以不用，直接在每个类型的cell头文件中定义，考虑到开放封闭原则，建议使用
 */
@protocol ViewProtocol <NSObject>

/**
 通过model 配置cell展示
 
 @param model model
 */
- (void)configCellDateByModel:(id<ModelProtocol>)model;

@end

NS_ASSUME_NONNULL_END
