//
//  User.h
//  YYModelDemo
//
//  Created by Alex on 15/12/3.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic) NSDate *createdAt;

@end
