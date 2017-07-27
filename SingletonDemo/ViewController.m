//
//  ViewController.m
//  SingletonDemo
//
//  Created by KenenCS on 2017/7/27.
//  Copyright © 2017年 KenenCS. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Singleton *sing1 = [[Singleton alloc] init];
    Singleton *sing2 = [Singleton new];
    Singleton *sing3 = [Singleton shardSingleton];
    Singleton *sing4 = [sing1 copy];
    Singleton *sing5 = [sing1 mutableCopy];
    
    //如果这几种创建方式生成的内存地址都一样，那么我们就大功告成
    NSLog(@"\n---sing1:%p\n---sing2:%p\n---sing3:%p\n---sing4:%p\n---sing5:%p\n",sing1,sing2,sing3,sing4,sing5);

    //使用单例赋值颜色
    self.view.backgroundColor = [[Singleton shardSingleton] testSingletonColor];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
