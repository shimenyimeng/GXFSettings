//
//  GXFSettingArrowSubImageCellModel.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSettingArrowSubImageCellModel.h"

@implementation GXFSettingArrowSubImageCellModel

// 带箭头有标题、子图片
+ (instancetype)cellModelTitle:(NSString *)title subImage:(NSString *)subImage nextVcClass:(Class)nextVcClass {
    
    return [self cellModelWithIcon:nil title:title subImage:subImage nextVcClass:nextVcClass];
}

// 带箭头有图片、字图片
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title subImage:(NSString *)subImage nextVcClass:(Class)nextVcClass {
    
    GXFSettingArrowSubImageCellModel *cellModel = [[self alloc] init];
    
    cellModel.icon = icon;
    cellModel.title = title;
    cellModel.subImage = subImage;
    cellModel.nextVcClass = nextVcClass;
    return cellModel;
}

@end
