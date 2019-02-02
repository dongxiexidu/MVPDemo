//
//  TestCell.m
//  MVPDemo
//
//  Created by fashion on 2019/2/2.
//  Copyright © 2019年 shangZhu. All rights reserved.
//

#import "TestCell.h"
#import "ModelProtocol.h"
#import "Model.h"
#import "ViewProtocol.h"
#import "ModelProtocol.h"

@interface TestCell ()<ViewProtocol>

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subLabel;

@end

@implementation TestCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initAppreaence];
    }
    return self;
}


#pragma mark - InitAppreaence
- (void)initAppreaence {
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 20 )];
    self.titleLabel.textColor = [UIColor redColor];
    [self.contentView addSubview:self.titleLabel];
    
    self.subLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 30, 100, 20 )];
    self.subLabel.textColor = [UIColor redColor];
    [self.contentView addSubview:self.subLabel];
}

#pragma mark - Configration
- (void)configCellDateByModel:(id<ModelProtocol>)model{

    Model *detailModel = (Model *)model;
    self.titleLabel.text = detailModel.titleString;
    self.subLabel.text = detailModel.subTitleString;
}


@end
