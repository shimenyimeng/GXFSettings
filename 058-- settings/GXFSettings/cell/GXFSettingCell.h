//
//  GXFSettingCell.h
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GXFSettingCellModel;
@interface GXFSettingCell : UITableViewCell

// 最基本的cell模型
@property (nonatomic, strong) GXFSettingCellModel *cellModel;

// 创建cell的类方法
+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
