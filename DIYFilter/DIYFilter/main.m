//
//  main.m
//  DIYFilter
//
//  Created by JiangHuifu on 14-6-6.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VGLocalData.h"
#import "VGNetData.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSLog(@"Hello, World!");
//        [[[VGLocalData alloc] init] start];
        [[[VGNetData alloc] init] start];
        
    }
    return 0;
}

