//
//  GXFSettingCellModel.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSettingCellModel.h"

@implementation GXFSettingCellModel

// 只有标题
+ (instancetype)CellModelWithTitle:(NSString *)title {
    
    return [self CellModelWithIcon:nil title:title subTitle:nil];
}

// 只有图片和标题
+ (instancetype)CellModelWithIcon:(NSString *)icon title:(NSString *)title {
    
    return [self CellModelWithIcon:icon title:title subTitle:nil];
}

// 有标题、子标题
+ (instancetype)CellModelWithTitle:(NSString *)title subTitle:(NSString *)subTitle {
    
    return [self CellModelWithIcon:nil title:title subTitle:subTitle];
}

// 有图片、标题、子标题
+ (instancetype)CellModelWithIcon:(NSString *)icon title:(NSString *)title subTitle:(NSString *)subTitle {
    
    GXFSettingCellModel *cellModel = [[self alloc] init];
    cellModel.icon = icon;
    cellModel.title = title;
    cellModel.subtitle = subTitle;
    return cellModel;
}

@end
