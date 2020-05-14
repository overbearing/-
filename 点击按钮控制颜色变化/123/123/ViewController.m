//
//  ViewController.m
//  000
//
//  Created by manager on 2017/7/21.
//  Copyright © 2017年 manager. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    UIButton * selectedBtn;
    UIView * mainview;
    float width,height;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    width=[[UIScreen mainScreen]bounds].size.width ;
    height=[[UIScreen mainScreen]bounds].size.height;
    
    
    mainview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    
    
    for (int i=0; i<30; i++) {
        int columns=5;
        
        int colIdx=i%columns;
        int rowIdx=i/columns;
        CGFloat margintop=100;
        CGFloat marginx=(width-columns*(width/5-10))/(columns+1);
        CGFloat marginy=marginx;
        int hang=marginx+colIdx*((width/5-10)+marginx);
        int lie=margintop+rowIdx*(50+marginy);
        UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(hang, lie, width/5-10, 50)];
        //        [btn setTitle:anniu[i] forState:UIControlStateNormal];
        //        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        btn.backgroundColor=[UIColor redColor];
        [btn addTarget:self action:@selector(handleClick:) forControlEvents:UIControlEventTouchUpInside];
        
        selectedBtn=btn;
        [mainview  addSubview:btn];
    }
    
    //    for (int i=0; i<5;i++) {
    //        UIButton * btn=[UIButton buttonWithType:UIButtonTypeCustom];
    //
    //        btn.frame=CGRectMake(50+60*i, 50,50,30);
    //        btn.backgroundColor=[UIColor redColor];
    //        [btn addTarget:self action:@selector(handleClick:) forControlEvents:UIControlEventTouchUpInside];
    //        btn.tag=i;
    //        selectedBtn=btn;
    //        [mainview addSubview:btn];
    //
    //
    //    }
    [self.view addSubview:mainview];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)handleClick:(UIButton *)btn{
    
    
    //选中变红色 其他按钮变为绿色
    
    if (selectedBtn) {
        
        selectedBtn.backgroundColor = [UIColor redColor];
        
    }
    
    selectedBtn = btn;
    
    selectedBtn.backgroundColor = [UIColor greenColor];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

