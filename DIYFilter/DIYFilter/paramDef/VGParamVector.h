//
//  VGParamVector.h
//  DIYFilterOnGPU
//
//  Created by JiangHuifu on 14-6-5.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import "VGParamBase.h"

@interface VGParamVector : VGParamBase
@property(nonatomic,assign) CGVector value;
@property(nonatomic,assign,readonly) CGVector defaultValue;
@property(nonatomic,assign,readonly) CGVector maxValue;
@property(nonatomic,assign,readonly) CGVector minValue;
-(id)initWithDic:(NSDictionary*)dic;
@end
