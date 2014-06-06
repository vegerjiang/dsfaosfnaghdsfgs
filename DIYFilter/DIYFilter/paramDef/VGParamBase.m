//
//  VGParamBase.m
//  DIYFilterOnGPU
//
//  Created by JiangHuifu on 14-6-5.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import "VGParamBase.h"
#import "VGParamVector.h"
#import "VGParamFloat.h"

@implementation VGParamBase
-(VGParamType)paramType{
    return VGParamType_unKnown;
}
-(NSDictionary *)toDic{
    return @{
             @"type":@"unKnown",
             @"name":@""
             };
}
-(NSUInteger)numOfFloat{
    return 0;
}
-(void)setFloatAtIndex:(NSUInteger)index value:(CGFloat)value{
    
}
-(CGFloat)floatAtIndex:(NSUInteger)index{
    return 0.0;
}
-(CGFloat)floatMaxAtIndex:(NSUInteger)index{
    return 0.0;
}
-(CGFloat)floatMinAtIndex:(NSUInteger)index{
    return 0.0;
}
+(VGParamBase *)paramWithDic:(NSDictionary*)dic{
    VGParamTypeStr* typeStr = [dic objectForKey:@"type"];
    
    if ([typeStr isEqual:VGParamTypeStr_vector]) {
        return [[VGParamVector alloc] initWithDic:dic];
    }
    if ([typeStr isEqual:VGParamTypeStr_float]) {
        return [[VGParamFloat alloc] initWithDic:dic];
    }
    return nil;
}
@end
