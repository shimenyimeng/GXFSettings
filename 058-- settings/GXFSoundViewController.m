//
//  GXFSoundViewController.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/2.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSoundViewController.h"
#import "GXFSettingGroup.h"
#import "GXFSettingSwitchCellModel.h"
#import "GXFSettingArrowSubImageCellModel.h"
#import "GXFSettingArrowSubLabelCellModel.h"

@interface GXFSoundViewController ()

@end

@implementation GXFSoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    GXFSettingSwitchCellModel *soundItem = [GXFSettingSwitchCellModel CellModelWithTitle:@"声音"];
    GXFSettingSwitchCellModel *groupSoundItem = [GXFSettingSwitchCellModel CellModelWithTitle:@"群声音"];
    GXFSettingArrowSubLabelCellModel *typeItem = [GXFSettingArrowSubLabelCellModel cellModelWithTitle:@"提示音类型" subLabelTitle:@"三全音" nextVcClass:[UITableViewController class]];
    GXFSettingGroup *group1 = [[GXFSettingGroup alloc] init];
    group1.cellDatas = @[soundItem, groupSoundItem, typeItem];
    [self.datas addObject:group1];
    
    GXFSettingArrowSubImageCellModel *specialItem = [GXFSettingArrowSubImageCellModel cellModelTitle:@"特别关心" subImage:@"new.jpg" nextVcClass:[UITableViewController class]];
    GXFSettingGroup *group2 = [[GXFSettingGroup alloc] init];
    group2.cellDatas = @[specialItem];
    [self.datas addObject:group2];
    group2.footer = @"环境很好很好的机会就会觉得贵公司设计规格很高";
    
    GXFSettingSwitchCellModel *zhenItem = [GXFSettingSwitchCellModel CellModelWithTitle:@"震动"];
    GXFSettingSwitchCellModel *groupZhenItem = [GXFSettingSwitchCellModel CellModelWithTitle:@"群震动"];
    GXFSettingGroup *group3 = [[GXFSettingGroup alloc] init];
    group3.cellDatas = @[zhenItem, groupZhenItem];
    [self.datas addObject:group3];
    
}

@end
