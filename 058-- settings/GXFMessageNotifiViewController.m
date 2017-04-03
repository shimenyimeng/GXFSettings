//
//  GXFMessageNotifiViewController.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/2.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFMessageNotifiViewController.h"
#import "GXFSettingGroup.h"
#import "GXFSettingCell.h"
#import "GXFSettingArrowCellModel.h"
#import "GXFSettingSwitchCellModel.h"
#import "GXFSettingArrowSubImageCellModel.h"
#import "GXFSoundViewController.h"

@interface GXFMessageNotifiViewController ()

@end

@implementation GXFMessageNotifiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    GXFSettingCellModel *newMessageItem = [GXFSettingCellModel CellModelWithTitle:@"新消息通知" subTitle:@"已启用"];
#pragma mark - 如果点击了不需要跳转，需要在本界面做一些事情
//    newMessageItem.operation = ^ {
//        
//        NSLog(@"你需要做什么");
//    };
    
    GXFSettingGroup *group1 = [[GXFSettingGroup alloc] init];
    group1.cellDatas = @[newMessageItem];
    [self.datas addObject:group1];
    group1.footer = @"jdjfkdjkf快点开饭店客房和代发货的回复";
    
    GXFSettingArrowCellModel *soundItem = [GXFSettingArrowCellModel cellModelWithTitle:@"声音" nextVcClass:[GXFSoundViewController class]];
    GXFSettingSwitchCellModel *messageItem = [GXFSettingSwitchCellModel CellModelWithTitle:@"通知显示消息内容"];
    GXFSettingSwitchCellModel *neiborItem = [GXFSettingSwitchCellModel CellModelWithTitle:@"附近的新鲜事通知"];
    GXFSettingSwitchCellModel *defeatItem = [GXFSettingSwitchCellModel CellModelWithTitle:@"夜间防骚扰模式"];
    GXFSettingGroup *group2 = [[GXFSettingGroup alloc] init];
    group2.cellDatas = @[soundItem, messageItem, neiborItem, defeatItem];
    [self.datas addObject:group2];
    group2.footer = @"dkjjfka快点发空间jkkghhg akjk开个会kdfk";
    
    GXFSettingArrowSubImageCellModel *specialItem = [GXFSettingArrowSubImageCellModel cellModelTitle:@"特别关心" subImage:@"new.jpg" nextVcClass:[UITableViewController class]];
    GXFSettingGroup *group3 = [[GXFSettingGroup alloc] init];
    group3.cellDatas = @[specialItem];
    [self.datas addObject:group3];
    
    GXFSettingArrowCellModel *groupMessageItem = [GXFSettingArrowCellModel cellModelWithTitle:@"群消息设置" nextVcClass:[UITableViewController class]];
    GXFSettingGroup *group4 = [[GXFSettingGroup alloc] init];
    group4.cellDatas = @[groupMessageItem];
    [self.datas addObject:group4];
    
}

@end
