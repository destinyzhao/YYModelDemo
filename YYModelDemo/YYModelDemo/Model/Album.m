//
//  Album.m
//  YYModelDemo
//
//  Created by Alex on 15/12/3.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "Album.h"
#import "Photo.h"

@implementation Album

// 返回容器类中的所需要存放的数据类型 (以 Class 或 Class Name 的形式)。
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"photos" : Photo.class};
}

@end
