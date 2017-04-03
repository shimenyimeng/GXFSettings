//
//  GXFSettingArrowCellModel.h
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
// 这种模型是带箭头的

#import "GXFSettingCellModel.h"

@interface GXFSettingArrowCellModel : GXFSettingCellModel

// 点击跳转的目标控制器
@property (nonatomic, assign) Class nextVcClass;

// 带箭头只有标题
+ (instancetype)cellModelWithTitle:(NSString *)title nextVcClass:(Class)nextVcClass;

// 带箭头有图片、标题
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title nextVcClass:(Class)nextVcClass;

@end
