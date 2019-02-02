//
//  Model.h
//  MVPDemo
//
//  Created by fashion on 2019/2/2.
//  Copyright © 2019年 shangZhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModelProtocol.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface Model : NSObject<ModelProtocol>

@property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *subTitleString;

@end

NS_ASSUME_NONNULL_END
