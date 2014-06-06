//
//  VGParamBase.h
//  DIYFilterOnGPU
//
//  Created by JiangHuifu on 14-6-5.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import <Foundation/Foundation.h>
const static NSString* VGParamTypeStr_float = @"float";
const static NSString* VGParamTypeStr_point = @"point";
const static NSString* VGParamTypeStr_vector = @"vector";
const static NSString* VGParamTypeStr_size = @"size";
const static NSString* VGParamTypeStr_rect = @"rect";
typedef NSString VGParamTypeStr;
typedef enum{
    VGParamType_float   = 0,
    VGParamType_point   = 1,
    VGParamType_vector  = 2,
    VGParamType_size    = 3,
    VGParamType_rect    = 4,
    
    VGParamType_unKnown = 1000
}VGParamType;
@interface VGParamBase : NSObject
@property(nonatomic,retain,readonly) NSString* paramName;
-(VGParamType)paramType;
-(NSDictionary*)toDic;
-(NSUInteger)numOfFloat;
-(void)setFloatAtIndex:(NSUInteger)index value:(CGFloat)value;
-(CGFloat)floatAtIndex:(NSUInteger)index;
-(CGFloat)floatMaxAtIndex:(NSUInteger)index;
-(CGFloat)floatMinAtIndex:(NSUInteger)index;
+(VGParamBase*)paramWithDic:(NSDictionary*)dic;
@end
