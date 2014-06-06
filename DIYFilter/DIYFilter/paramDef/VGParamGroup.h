//
//  VGParamGroup.h
//  DIYFilterOnGPU
//
//  Created by JiangHuifu on 14-6-5.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import <Foundation/Foundation.h>
@class VGParamBase;
@class VGParamGroup;
@protocol VGParamGroupDelegate <NSObject>
@optional
-(void)paramChangedByName:(NSString*)paramName;

@end
@interface VGParamGroup : NSObject
@property(nonatomic,assign) id<VGParamGroupDelegate> delegate;
-(id)initWithInfoArray:(NSArray*)info;
-(NSUInteger)count;
//-(VGParamBase*)paramAtIndex:(NSUInteger)index;
-(VGParamBase*)paramByName:(NSString*)name;
-(NSArray*)paramNames;
-(void)paramChangedByName:(NSString*)paramName;
@end
