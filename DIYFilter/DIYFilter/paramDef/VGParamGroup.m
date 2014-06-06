//
//  VGParamGroup.m
//  DIYFilterOnGPU
//
//  Created by JiangHuifu on 14-6-5.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import "VGParamGroup.h"
#import "VGParamBase.h"
@interface VGParamGroup()
//@property(nonatomic,retain) NSMutableArray* allParam;
@property(nonatomic,retain) NSMutableDictionary* allParamOnDic;
@property(nonatomic,retain) NSMutableArray* allNames;
@end
@implementation VGParamGroup
-(id)initWithInfoArray:(NSArray *)info{
    if (self = [super init]) {
        _allParamOnDic = [NSMutableDictionary dictionaryWithCapacity:info.count];
        _allNames = [NSMutableArray arrayWithCapacity:info.count];
        for (NSDictionary* dic in info) {
            VGParamBase* each = [VGParamBase paramWithDic:dic];
            [_allParamOnDic setObject:each forKey:each.paramName];
            [_allNames addObject:each.paramName];
        }
    }
    return self;
}
-(NSUInteger)count{
    return _allParamOnDic.count;
}
-(VGParamBase *)paramByName:(NSString *)name{
    return [_allParamOnDic objectForKey:name];
}
-(NSArray *)paramNames{
    return _allNames;
}
-(void)paramChangedByName:(NSString *)paramName{
    if (_delegate && [_delegate respondsToSelector:@selector(paramChangedByName:)]) {
        [_delegate paramChangedByName:paramName];
    }
}
@end
