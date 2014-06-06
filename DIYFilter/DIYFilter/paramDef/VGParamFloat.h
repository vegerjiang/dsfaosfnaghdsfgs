//
//  VGParamFloat.h
//  DIYFilterOnGPU
//
//  Created by JiangHuifu on 14-6-5.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import "VGParamBase.h"

@interface VGParamFloat : VGParamBase
@property(nonatomic,assign) CGFloat value;
@property(nonatomic,assign) CGFloat defaultValue;
@property(nonatomic,assign,readonly) CGFloat maxValue;
@property(nonatomic,assign,readonly) CGFloat minValue;

-(id)initWithDic:(NSDictionary*)dic;
@end
