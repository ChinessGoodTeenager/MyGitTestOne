//
//  TYQSegemengt.h
//  MySegement
//
//  Created by apple on 16/7/31.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYQSegemengt : UIView

@property(nonatomic,copy) NSArray *items;

@property(nonatomic,assign) NSInteger selectIndex;

@property(nonatomic,strong) UIView *lineView;
-(instancetype)initWithArray:(NSArray *)items;

@end
