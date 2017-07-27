//
//  singleton.m
//  SingletonDemo
//
//  Created by KenenCS on 2017/7/27.
//  Copyright © 2017年 KenenCS. All rights reserved.

#import "Singleton.h"

@implementation Singleton

//确保唯一性，通过此类方法创建对象
+(instancetype)shardSingleton {
    //创建一个静态变量
    static Singleton *instance = nil;
    //通过GCD实现对象只创建一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

//确保唯一性，防止通过【[Singleton alloc] init]创建对象，因此需要重写这个方法，因为调用alloc时会自动调用allocWithZone这个方法
+(instancetype)allocWithZone:(struct _NSZone *)zone {
    return [Singleton shardSingleton];
}

//确保唯一性，防止通过copy和mutableCopy创建对象，安全起见，重写以下两个方法
- (id)copy {
    return self;
}
- (id)mutableCopy {
    return self;
}

//单例测试一个颜色
- (UIColor *)testSingletonColor {
    UIColor *color = [UIColor colorWithRed:100/255.0 green:20/255.0 blue:30/255.0 alpha:1];
    return color;
}

@end
