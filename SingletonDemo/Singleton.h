//
//  singleton.h
//  SingletonDemo
//
//  Created by KenenCS on 2017/7/27.
//  Copyright © 2017年 KenenCS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Singleton : NSObject

+(instancetype)shardSingleton;

//单例测试一个颜色
- (UIColor *)testSingletonColor;

@end
