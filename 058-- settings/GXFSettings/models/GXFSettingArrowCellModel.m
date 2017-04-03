//
//  GXFSettingArrowCellModel.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSettingArrowCellModel.h"

@implementation GXFSettingArrowCellModel

// 带箭头只有标题
+ (instancetype)cellModelWithTitle:(NSString *)title nextVcClass:(__unsafe_unretained Class)nextVcClass {
    
    return [self cellModelWithIcon:nil title:title nextVcClass:nextVcClass];
}

// 带箭头有图片、标题
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title nextVcClass:(__unsafe_unretained Class)nextVcClass {
    
    GXFSettingArrowCellModel *cellModel = [[self alloc] init];
    cellModel.nextVcClass = nextVcClass;
    cellModel.icon = icon;
    cellModel.title = title;
    return cellModel;
}

@end
