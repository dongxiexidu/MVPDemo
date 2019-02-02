//
//  ModelProvider.h
//  MVPDemo
//
//  Created by fashion on 2019/2/2.
//  Copyright © 2019年 shangZhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

/**
 协议用于保存每个model对应cell的重用标志符和行高，也可以不使用这个协议 直接在对一个的model里指明
 */
@protocol ModelProtocol <NSObject>

//- (NSString *)identifier;

- (CGFloat)height;

@end

NS_ASSUME_NONNULL_END
