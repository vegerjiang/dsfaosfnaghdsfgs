//
//  VGLocalData.m
//  DIYFilter
//
//  Created by JiangHuifu on 14-6-6.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import "VGLocalData.h"
#import "VGParamGroup.h"
static const NSString* path = @"/Users/jianghuifu/Desktop/code2/dsfaosfnaghdsfgs/DIYFilter/DIYFilter";
#define kLoaclFile(file) [NSString stringWithFormat:@"%@%@",path,(file)]
@implementation VGLocalData
-(void)start{
    NSArray* arr = nil;
    @try {
        NSString* filePath = kLoaclFile(@"config_base.js");
        NSData* data = [NSData dataWithContentsOfFile:filePath];
        arr = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    }
    @catch (NSException *exception) {
        
    }
    @finally {
        
    }
    NSLog(@"%@",arr);
    for (NSString* filtName in arr) {
        NSString*configName = [NSString stringWithFormat:@"base/%@/%@.config",filtName,filtName];
        NSData* config = [NSData dataWithContentsOfFile:kLoaclFile(configName)];
        NSDictionary* t = [NSJSONSerialization JSONObjectWithData:config options:kNilOptions error:nil];
        NSLog(@"%@",t);
        VGParamGroup* g = [[VGParamGroup alloc] initWithInfoArray:[t objectForKey:@"params"]];
        NSLog(@"%d",(int)[g count]);
        NSString*fshName = [NSString stringWithFormat:@"base/%@/%@.fsh",filtName,filtName];
        NSData* fsh = [NSData dataWithContentsOfFile:kLoaclFile(fshName)];
        NSString* str = [NSString stringWithUTF8String:[fsh bytes]];
        NSLog(@"%@",str);
    }
}
@end
