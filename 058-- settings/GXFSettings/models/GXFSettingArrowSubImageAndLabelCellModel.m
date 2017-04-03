//
//  GXFSettingArrowSubImageAndLabelCellModel.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSettingArrowSubImageAndLabelCellModel.h"

@implementation GXFSettingArrowSubImageAndLabelCellModel

// 带箭头有子图片、子标题
+ (instancetype)cellModelWithTitle:(NSString *)title subImage:(NSString *)subImage subLabelTitle:(NSString *)subLabelTitle nextVcClass:(Class)nextVcClass {
    
    return [self cellModelWithIcon:nil title:title subImage:subImage subLabelTitle:subLabelTitle nextVcClass:nextVcClass];
}

// 带箭头有图片、子图片、子标题
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title subImage:(NSString *)subImage subLabelTitle:(NSString *)subLabelTitle nextVcClass:(Class)nextVcClass {
    
    GXFSettingArrowSubImageAndLabelCellModel *cellModel = [[self alloc] init];
    cellModel.icon = icon;
    cellModel.title = title;
    cellModel.subImage = subImage;
    cellModel.subLabelTitle = subLabelTitle;
    cellModel.nextVcClass = nextVcClass;
    return cellModel;
}

@end
