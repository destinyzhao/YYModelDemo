//
//  ViewController.m
//  YYModelDemo
//
//  Created by Alex on 15/12/2.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "ViewController.h"
#import <YYModel/YYModel.h>
#import "Goods.h"
#import "Book.h"
#import "User.h"
#import "Album.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    [self SimpleObjectExample];
}

// 简单的 Model 与 JSON 相互转换
- (void)SimpleObjectExample
{
    NSString *goodsJsonStr = @"     \
    {                               \
    \"goodsId\": \"123456789\",     \
    \"goodsName\": \"康师傅方便面\",  \
    \"goodsPrice\": \"3.5\"         \
    }";
    
    Goods *goods = [Goods yy_modelWithJSON:goodsJsonStr];
    NSLog(@"%@",goods.goodsPrice);
    
    NSString *goodsJson = [goods yy_modelToJSONString];
    NSLog(@"%@",goodsJson);
}

// Model 属性名和 JSON 中的 Key 不相同
- (void)customMapperJsonExample
{
    NSString *jsonStr = @"{                                 \
        \"n\":\"Harry Pottery\",                            \
        \"p\": 256,                                         \
        \"ext\" : {                                         \
            \"desc\" : \"A book written by J.K.Rowing.\"    \
        }\
    }";
    
    Book *book = [Book yy_modelWithJSON:jsonStr];
    NSLog(@"%@",book.desc);
    
}

- (void)customMapperDictExample
{
    NSDictionary *bookDic = @{
                              @"name":@"Happry Pottery",
                              @"page":@256,
                              @"ext":@{
                                        @"desc":@"A book written by J.K.Rowing."
                                      }
                              };
    Book *book = [Book yy_modelWithDictionary:bookDic];
    NSLog(@"%@",book.desc);
}

// 数据校验与自定义转换
- (void)customConvertExample
{
    NSString *jsonStr = @"{         \
    \"name\":\"Harry\",             \
    \"timestamp\" : 1445534567      \
    }";
    
    User *user = [User yy_modelWithJSON:jsonStr];
    NSLog(@"%@",user.createdAt);
}

// 容器类属性
- (void)albumExample
{
    NSString *jsonStr = @"                                  \
    {                                                       \
        \"name\" : \"Happy Birthday\",                      \
        \"photos\" : [                                      \
        {                                                   \
            \"url\":\"http://example.com/1.png\",           \
            \"desc\":\"Happy~\"                             \
        },                                                  \
        {                                                   \
            \"url\":\"http://example.com/2.png\",           \
            \"desc\":\"Yeah!\"                              \
        }                                                   \
        ],                                                  \
        \"likedUsers\" : {                                  \
            \"Jony\" : {\"uid\":10001,\"name\":\"Jony\"},   \
            \"Anna\" : {\"uid\":10002,\"name\":\"Anna\"}    \
        },                                                  \
        \"likedUserIds\" : [10001,10002]                    \
    }";
    
    Album *album = [Album yy_modelWithJSON:jsonStr];
    NSLog(@"%@-%@",album.name,[[album.photos objectAtIndex:0] url]);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
