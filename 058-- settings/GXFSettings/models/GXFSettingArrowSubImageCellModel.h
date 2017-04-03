//
//  GXFSettingArrowSubImageCellModel.h
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSettingArrowCellModel.h"

@interface GXFSettingArrowSubImageCellModel : GXFSettingArrowCellModel

// 带箭头有标题、子图片
+ (instancetype)cellModelTitle:(NSString *)title subImage:(NSString *)subImage nextVcClass:(Class)nextVcClass;

// 带箭头有图片、字图片
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title subImage:(NSString *)subImage nextVcClass:(Class)nextVcClass;

@end
