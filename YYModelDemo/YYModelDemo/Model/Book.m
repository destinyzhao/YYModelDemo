//
//  Book.m
//  YYModelDemo
//
//  Created by Alex on 15/12/3.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "Book.h"

@implementation Book

// 返回一个 Dict，将 Model 属性名对映射到 JSON 的 Key。
/*
+ (NSDictionary *)modelCustomPropertyMapper
{
    NSDictionary *mapperDic = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"n",@"name",
                               @"p",@"page",
                               @"ext.desc",@"desc",
                               nil];
    return mapperDic;
}
*/

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"name" : @"n",
             @"page" : @"p",
             @"desc" : @"ext.desc"};
}

@end
