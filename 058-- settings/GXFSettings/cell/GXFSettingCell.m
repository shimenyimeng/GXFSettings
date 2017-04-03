//
//  GXFSettingCell.m
//  058-- settings
//
//  Created by 顾雪飞 on 17/4/1.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFSettingCell.h"
#import "GXFSettingCellModel.h"
#import "GXFSettingArrowSubImageCellModel.h"
#import "GXFSettingArrowSubLabelCellModel.h"
#import "GXFSettingArrowSubImageAndLabelCellModel.h"
#import "GXFSettingSwitchCellModel.h"
#import "Masonry.h"
#define SubTitleFont 14

@interface GXFSettingCell ()

// 开关
@property (nonatomic, strong) UISwitch *switchView;

// 子图片
@property (nonatomic, strong) UIImageView *subImageView;

// 子标题的Label
@property (nonatomic, strong) UILabel *subLabel;

@end

@implementation GXFSettingCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        // 设置子标题大小（这里的子标题没有使用UITableViewCellStyleValue1样式，而是自定义了subLabel，如果使用UITableViewCellStyleValue1样式，那种有子标题有子图片的情况就不好实现了）
//        self.detailTextLabel.font = [UIFont systemFontOfSize:SubTitleFont];
        
        // cell普通颜色
        UIView *normalColorView = [[UIView alloc] init];
        normalColorView.backgroundColor = [UIColor whiteColor];
        self.backgroundView = normalColorView;
        
        // cell选中时的颜色
        UIView *selectColorView = [[UIView alloc] init];
        selectColorView.backgroundColor = [UIColor colorWithRed:234/255.0 green:234/255.0 blue:234/255.0 alpha:1.0];
        self.selectedBackgroundView = selectColorView;
        
        // 设置子控件
        [self setupUI];
    }
    return self;
}

// 设置子控件
- (void)setupUI {
    
//    self.textLabel.textColor = [UIColor blueColor];
    self.textLabel.font = [UIFont systemFontOfSize:17];
//    self.detailTextLabel.textColor = [UIColor redColor];
//    self.detailTextLabel.font = [UIFont systemFontOfSize:SubTitleFont];
    
    [self.contentView addSubview:self.subLabel];
    [self.contentView addSubview:self.subImageView];
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    
    static NSString *ID = @"cellIdentifier";
    GXFSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[GXFSettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

// 开关状态改变，存储状态
- (void)switchStateChange {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.switchView.isOn forKey:self.cellModel.title];
    [defaults synchronize];
}

// 设置子控件位置
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if ([self.cellModel isKindOfClass:[GXFSettingArrowSubImageCellModel class]]) {
        
        [self.subImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self.mas_right).offset(-40);
            make.top.equalTo(self);
            make.height.width.mas_equalTo(self.mas_height);
        }];
    }
    
    if ([self.cellModel isKindOfClass:[GXFSettingArrowSubLabelCellModel class]]) {
        
        [self.subLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self).offset(-40);
            make.top.equalTo(self);
            make.width.mas_equalTo(150);
            make.height.mas_equalTo(self.mas_height);
        }];
    }
    
    if ([self.cellModel isKindOfClass:[GXFSettingArrowSubImageAndLabelCellModel class]]) {
        
        [self.subLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self).offset(-40);
            make.top.equalTo(self);
            make.width.mas_equalTo(150);
            make.height.mas_equalTo(self.mas_height);
        }];
        
        // 根据文字宽度计算subImage的位置
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSFontAttributeName] = [UIFont systemFontOfSize:SubTitleFont];
        CGFloat wordWidth = [self.subLabel.text boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
        [self.subImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.right.equalTo(self.subLabel.mas_right).offset(-wordWidth - 10);
            make.centerY.equalTo(self);
            make.height.width.mas_equalTo(self.bounds.size.height - 5);
        }];
    }
}


- (void)setCellModel:(GXFSettingCellModel *)cellModel {
    
    _cellModel = cellModel;
    
    [self setupDatas];
    
    if ([self.cellModel isKindOfClass:[GXFSettingArrowCellModel class]]) { // 箭头
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    } else if ([self.cellModel isKindOfClass:[GXFSettingSwitchCellModel class]]) { // 开关
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        // 设置开关的状态
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        self.switchView.on = [defaults boolForKey:self.cellModel.title];
    } else if ([self.cellModel isKindOfClass:[GXFSettingArrowSubLabelCellModel class]]) { // 带箭头有子标题
        self.accessoryView = self.subLabel;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    } else if (self.cellModel.operation == nil) {
        
        // 没有点击效果
        self.selectionStyle = UITableViewCellSeparatorStyleNone;
        
    } else {
        self.accessoryView = nil;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
    
}

- (void)setupDatas {
    
    if (self.cellModel.icon) {
        self.imageView.image = [UIImage imageNamed:self.cellModel.icon];
    }
    self.textLabel.text = self.cellModel.title;
    self.detailTextLabel.text = self.cellModel.subtitle;
    self.subImageView.image = [UIImage imageNamed:self.cellModel.subImage];
    self.subLabel.text = self.cellModel.subLabelTitle;
}

- (UIImageView *)subImageView {
    
    if (_subImageView == nil) {
        _subImageView = [[UIImageView alloc] init];
        _subImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _subImageView;
}

- (UILabel *)subLabel {
    
    if (_subLabel == nil) {
        _subLabel = [[UILabel alloc] init];
        _subLabel.textColor = [UIColor grayColor];
        _subLabel.font = [UIFont systemFontOfSize:SubTitleFont];
        _subLabel.textAlignment = NSTextAlignmentRight;
    }
    return _subLabel;
}

- (UISwitch *)switchView {
    
    if (_switchView == nil) {
        _switchView = [[UISwitch alloc] init];
        [_switchView addTarget:self action:@selector(switchStateChange) forControlEvents:UIControlEventValueChanged];
    }
    return _switchView;
}


@end
