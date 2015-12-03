//
//  Book.h
//  YYModelDemo
//
//  Created by Alex on 15/12/3.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (copy, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger page;
@property (copy, nonatomic) NSString *desc;

@end
