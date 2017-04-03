//
//  GXFSettingCellModel.h
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
// 这种模型是没有箭头的最基本模型

#import <Foundation/Foundation.h>
typedef void (^GXFSettingCellModelOperation)();

@interface GXFSettingCellModel : NSObject

// 图片
@property (nonatomic, copy) NSString *icon;

// 标题
@property (nonatomic, copy) NSString *title;

// 没有箭头时的子标题
@property (nonatomic, copy) NSString *subtitle;

// 有箭头时的子标题
@property (nonatomic, copy) NSString *subLabelTitle;

// 有箭头时的子图片
@property (nonatomic, copy) NSString *subImage;

@property (nonatomic, copy) GXFSettingCellModelOperation operation;

// 只有标题
+ (instancetype)CellModelWithTitle:(NSString *)title;

// 只有图片和标题
+ (instancetype)CellModelWithIcon:(NSString *)icon title:(NSString *)title;

// 有标题、子标题
+ (instancetype)CellModelWithTitle:(NSString *)title subTitle:(NSString *)subTitle;

// 有图片、标题、子标题
+ (instancetype)CellModelWithIcon:(NSString *)icon title:(NSString *)title subTitle:(NSString *)subTitle;


@end
