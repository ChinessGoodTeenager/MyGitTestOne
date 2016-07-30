//
//  TYQSegemengt.m
//  MySegement
//
//  Created by apple on 16/7/31.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "TYQSegemengt.h"
#define cbtn 100
@implementation TYQSegemengt

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithArray:(NSArray *)items{

    if (self = [super init]) {
        _items = items;
    }
    return self;
}

-(void)createButton{

    _lineView = [[UIView alloc]init];
    _lineView.backgroundColor = [UIColor greenColor];
    int  i=0;
    for (NSString *title in _items) {
        UIButton *checkButton = [[UIButton alloc]initWithFrame:CGRectMake(i*(self.frame.size.width/_items.count), 0, self.frame.size.width/_items.count, self.frame.size.height)];
        
        //普通状态
        [checkButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //选中状态
        [checkButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
        //button文字
        [checkButton setTitle:title forState:UIControlStateNormal];
        
        [checkButton addTarget:self action:@selector(checkButtonOnlick:) forControlEvents:UIControlEventTouchUpInside];
        checkButton.tag = cbtn+i;
        //默认选中第一个按钮
        if (checkButton.tag == 100) {
            checkButton.selected = YES;
            checkButton.userInteractionEnabled = NO;
            _lineView.frame = CGRectMake(0, self.frame.size.height/10*9, self.frame.size.width/_items.count, self.frame.size.height/10);
            [self addSubview:_lineView];
        }
        [self addSubview:checkButton];
        i++;
    }
}


-(void)checkButtonOnlick:(UIButton *)button{
    //选中的按钮
    UIButton *selectedButton = [self viewWithTag:_selectIndex + cbtn];
    selectedButton.userInteractionEnabled = YES;
    selectedButton.selected = NO;
    
    
    button.userInteractionEnabled = NO;
    button.selected = YES;
    _selectIndex = button.tag-cbtn;
    
    NSLog(@"button---tag = %ld,selectedButton---tag = %ld",(long)button.tag,(long)selectedButton.tag);
    
    //底部线条的位置变化
    [UIView animateWithDuration:0.5 animations:^{
        _lineView.frame = CGRectMake(_selectIndex*(self.frame.size.width/_items.count), self.frame.size.height/10*9, self.frame.size.width/_items.count, self.frame.size.height/10);
        
    } completion:^(BOOL finished) {
        
    }];
    
}

-(void)layoutSubviews{

    [self createButton];
}
@end
