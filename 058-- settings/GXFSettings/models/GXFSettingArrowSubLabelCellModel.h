//
//  GXFSettingArrowSubLabelCellModel.h
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSettingArrowCellModel.h"

@interface GXFSettingArrowSubLabelCellModel : GXFSettingArrowCellModel

// 带箭头有子标题
+ (instancetype)cellModelWithTitle:(NSString *)title subLabelTitle:(NSString *)subLabelTitle nextVcClass:(Class)nextVcClass;

// 带箭头有图片、子标题
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title subLabelTitle:(NSString *)subLabelTitle nextVcClass:(Class)nextVcClass;

@end
