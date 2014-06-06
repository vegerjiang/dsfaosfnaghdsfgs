//
//  VGParamVector.m
//  DIYFilterOnGPU
//
//  Created by JiangHuifu on 14-6-5.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import "VGParamVector.h"

@implementation VGParamVector
@synthesize paramName = _paramName;
-(id)initWithDic:(NSDictionary *)dic{
    if (self = [super init]) {
        _paramName = [dic objectForKey:@"name"];
        _defaultValue.dx = [[dic objectForKey:@"default_dx"] floatValue];
        _defaultValue.dy = [[dic objectForKey:@"default_dy"] floatValue];
        if ([dic objectForKey:@"dx"]) {
            _value.dx = [[dic objectForKey:@"dx"] floatValue];
        }else{
            _value.dx = _defaultValue.dx;
        }
        if ([dic objectForKey:@"dy"]) {
            _value.dy = [[dic objectForKey:@"dy"] floatValue];
        }else{
            _value.dy = _defaultValue.dy;
        }
        if ([dic objectForKey:@"min_dx"]) {
            _minValue.dx = [[dic objectForKey:@"min_dx"] floatValue];
        }else{
            _minValue.dx = _defaultValue.dx;
        }
        if ([dic objectForKey:@"min_dy"]) {
            _minValue.dy = [[dic objectForKey:@"min_dy"] floatValue];
        }else{
            _minValue.dy = _defaultValue.dy;
        }
        if ([dic objectForKey:@"max_dx"]) {
            _maxValue.dx = [[dic objectForKey:@"max_dx"] floatValue];
        }else{
            _maxValue.dx = _defaultValue.dx;
        }
        if ([dic objectForKey:@"max_dy"]) {
            _maxValue.dy = [[dic objectForKey:@"max_dy"] floatValue];
        }else{
            _maxValue.dy = _defaultValue.dy;
        }
    }
    return self;
}
-(VGParamType)paramType{
    return VGParamType_vector;
}
-(NSDictionary *)toDic{
    return @{
             @"type":VGParamTypeStr_vector,
             @"name":_paramName,
             @"default_dx":@(_defaultValue.dx),
             @"default_dy":@(_defaultValue.dy),
             @"dx":@(_value.dx),
             @"dy":@(_value.dy),
             @"min_dx":@(_minValue.dx),
             @"min_dy":@(_minValue.dy),
             @"max_dx":@(_maxValue.dx),
             @"max_dy":@(_maxValue.dy),
             };
}
-(NSUInteger)numOfFloat{
    return 2;
}
-(void)setFloatAtIndex:(NSUInteger)index value:(CGFloat)value{
    switch (index) {
        case 0:
        _value.dx = value;
        break;
        case 1:
        _value.dy = value;
        default:
        break;
    }
}
-(CGFloat)floatAtIndex:(NSUInteger)index{
    switch (index) {
        case 0:
        return _value.dx;
        case 1:
        return _value.dy;
        default:
        break;
    }
    return 0.0;
}
-(CGFloat)floatMinAtIndex:(NSUInteger)index{
    switch (index) {
        case 0:
        return _minValue.dx;
        break;
        case 1:
        return _minValue.dy;
        default:
        break;
    }
    return 0.0;
}
-(CGFloat)floatMaxAtIndex:(NSUInteger)index{
    switch (index) {
        case 0:
        return _maxValue.dx;
        break;
        case 1:
        return _maxValue.dy;
        default:
        break;
    }
    return 0.0;
}
@end
