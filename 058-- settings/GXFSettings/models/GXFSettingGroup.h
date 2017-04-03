//
//  GXFSettingGroup.h
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GXFSettingGroup : NSObject

// 每一组头部标题
@property (nonatomic, strong) NSString *header;

// 每一组尾部标题
@property (nonatomic, strong) NSString *footer;

// 这一组所有的cell模型数据
@property (nonatomic, strong) NSArray *cellDatas;

@end
