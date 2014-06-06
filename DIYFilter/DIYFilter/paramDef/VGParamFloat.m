//
//  VGParamFloat.m
//  DIYFilterOnGPU
//
//  Created by JiangHuifu on 14-6-5.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import "VGParamFloat.h"

@implementation VGParamFloat
@synthesize paramName = _paramName;
-(id)initWithDic:(NSDictionary *)dic{
    if (self = [super init]) {
        _paramName = [dic objectForKey:@"name"];
        _defaultValue = [[dic objectForKey:@"default"] floatValue];
        if ([dic objectForKey:@"value"]) {
            _value = [[dic objectForKey:@"value"] floatValue];
        }else{
            _value = _defaultValue;
        }
        if ([dic objectForKey:@"max_value"]) {
            _maxValue = [[dic objectForKey:@"max_value"] floatValue];
        }else{
            _maxValue = _defaultValue;
        }
        if ([dic objectForKey:@"min_value"]) {
            _minValue = [[dic objectForKey:@"min_value"] floatValue];
        }else{
            _minValue = _defaultValue;
        }
    }
    return self;
}
-(VGParamType)paramType{
    return VGParamType_float;
}
-(NSDictionary *)toDic{
    return @{
             @"type":VGParamTypeStr_float,
             @"name":_paramName,
             @"default":@(_defaultValue),
             @"value":@(_value),
             @"max_value":@(_maxValue),
             @"min_value":@(_minValue)
             };
}
-(NSUInteger)numOfFloat{
    return 1;
}
-(void)setFloatAtIndex:(NSUInteger)index value:(CGFloat)value{
    switch (index) {
        case 0:
        _value = value;
        break;
        default:
        break;
    }
}
-(CGFloat)floatAtIndex:(NSUInteger)index{
    switch (index) {
        case 0:
        return _value;
        default:
        break;
    }
    return 0.0;
}
-(CGFloat)floatMaxAtIndex:(NSUInteger)index{
    switch (index) {
        case 0:
        return _maxValue;
        default:
        break;
    }
    return 0.0;
}
-(CGFloat)floatMinAtIndex:(NSUInteger)index{
    
    switch (index) {
        case 0:
        return _minValue;
        default:
        break;
    }
    return 0.0;
}
@end
