//
//  GXFSettingViewController.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSettingViewController.h"
#import "GXFSettingGroup.h"
#import "GXFSettingArrowCellModel.h"
#import "GXFSettingArrowSubImageAndLabelCellModel.h"
#import "GXFSettingArrowSubLabelCellModel.h"
#import "GXFSettingArrowSubImageCellModel.h"
#import "GXFMessageNotifiViewController.h"

@interface GXFSettingViewController ()

@end

@implementation GXFSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    GXFSettingArrowSubImageCellModel *managerItem = [GXFSettingArrowSubImageCellModel cellModelTitle:@"账号管理" subImage:@"kid.jpg" nextVcClass:[UITableViewController class]];
    GXFSettingArrowSubLabelCellModel *numItem = [GXFSettingArrowSubLabelCellModel cellModelWithTitle:@"手机号码" subLabelTitle:@"未绑定" nextVcClass:[UITableViewController class]];
    GXFSettingArrowSubImageAndLabelCellModel *daRenItem = [GXFSettingArrowSubImageAndLabelCellModel cellModelWithTitle:@"QQ达人" subImage:@"daren.jpg" subLabelTitle:@"3天" nextVcClass:[UITableViewController class]];
    GXFSettingGroup *group1 = [[GXFSettingGroup alloc] init];
    group1.cellDatas = @[managerItem, numItem, daRenItem];
    [self.datas addObject:group1];
    
    GXFSettingArrowCellModel *messageItem = [GXFSettingArrowCellModel cellModelWithTitle:@"消息通知" nextVcClass:[GXFMessageNotifiViewController class]];
    GXFSettingArrowCellModel *recordItem = [GXFSettingArrowCellModel cellModelWithTitle:@"聊天记录" nextVcClass:[UITableViewController class]];
    GXFSettingArrowCellModel *tempItem = [GXFSettingArrowCellModel cellModelWithTitle:@"清理空间" nextVcClass:[UITableViewController class]];
    GXFSettingGroup *group2 = [[GXFSettingGroup alloc] init];
    group2.cellDatas = @[messageItem, recordItem, tempItem];
    [self.datas addObject:group2];
    
    
    GXFSettingArrowCellModel *safeItem = [GXFSettingArrowCellModel cellModelWithTitle:@"账号、设备安全" nextVcClass:[UITableViewController class]];
    GXFSettingArrowCellModel *contactsItem = [GXFSettingArrowCellModel cellModelWithTitle:@"联系人、隐私" nextVcClass:[UITableViewController class]];
    GXFSettingArrowCellModel *otherItem = [GXFSettingArrowCellModel cellModelWithTitle:@"辅助功能" nextVcClass:[UITableViewController class]];
    GXFSettingGroup *group3 = [[GXFSettingGroup alloc] init];
    group3.cellDatas = @[safeItem, contactsItem, otherItem];
    [self.datas addObject:group3];
}


@end
