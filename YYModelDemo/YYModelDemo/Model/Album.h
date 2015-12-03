//
//  Album.h
//  YYModelDemo
//
//  Created by Alex on 15/12/3.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject

@property (copy,nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *photos;

@end
