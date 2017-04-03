//
//  GXFBaseSettingViewController.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFBaseSettingViewController.h"
#import "GXFSettingGroup.h"
#import "GXFSettingCellModel.h"
#import "GXFSettingCell.h"
#import "GXFSettingArrowCellModel.h"

@interface GXFBaseSettingViewController ()

@end

@implementation GXFBaseSettingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 设置整体色调
    self.tableView.backgroundView = nil;
    self.tableView.backgroundColor = [UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1.0];
}

// 父类统一UITableViewController的类型为分组样式
- (id)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (NSMutableArray *)datas {
    
    if (_datas == nil) {
        _datas = [NSMutableArray array];
    }
    return _datas;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.datas.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    GXFSettingGroup *group = self.datas[section];
    return group.cellDatas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 创建cell
    GXFSettingCell *cell = [GXFSettingCell cellWithTableView:tableView];
    
    // 设置数据
    GXFSettingGroup *group = self.datas[indexPath.section];
    cell.cellModel = group.cellDatas[indexPath.row];
    
    // 返回cell
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 立马取消选中这行，避免闪
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    GXFSettingGroup *group = self.datas[indexPath.section];
    GXFSettingCellModel *cellModel = group.cellDatas[indexPath.row];
    
    // 判断点击cell是进入下一界面还是在本界面进行操作
    if ([cellModel isKindOfClass:[GXFSettingArrowCellModel class]]) {
        
        GXFSettingArrowCellModel *arrowCellModel = (GXFSettingArrowCellModel *)cellModel;
        
        UIViewController *vc = [[arrowCellModel.nextVcClass alloc] init];
        vc.title = arrowCellModel.title;
        [self.navigationController pushViewController:vc  animated:YES];
        
    } else if (cellModel.operation) { //不用跳转
        
        cellModel.operation();
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    GXFSettingGroup *group = self.datas[section];
    return group.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    GXFSettingGroup *group = self.datas[section];
    return group.footer;
}

@end
