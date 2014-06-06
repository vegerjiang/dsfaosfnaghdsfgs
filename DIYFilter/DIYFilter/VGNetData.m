//
//  VGNetData.m
//  DIYFilter
//
//  Created by JiangHuifu on 14-6-6.
//  Copyright (c) 2014年 veger. All rights reserved.
//

#import "VGNetData.h"
#import "VGParamGroup.h"
static const NSString* baseUrl = @"https://raw.githubusercontent.com/vegerjiang/dsfaosfnaghdsfgs/master/DIYFilter/DIYFilter/";
#define kNetUrl(file) [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",baseUrl,(file)]]
@implementation VGNetData
-(void)start{
    NSArray* arr = nil;
    @try {
        NSData* data = [NSData dataWithContentsOfURL:kNetUrl(@"config_base.js")];
        arr = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    }
    @catch (NSException *exception) {
        
    }
    @finally {
        
    }
    NSLog(@"%@",arr);
    for (NSString* filtName in arr) {
        NSString*configName = [NSString stringWithFormat:@"base/%@/%@.config",filtName,filtName];
        NSData* config = [NSData dataWithContentsOfURL:kNetUrl(configName)];
        NSDictionary* t = [NSJSONSerialization JSONObjectWithData:config options:kNilOptions error:nil];
        NSLog(@"%@",t);
        VGParamGroup* g = [[VGParamGroup alloc] initWithInfoArray:[t objectForKey:@"params"]];
        NSLog(@"%d",(int)[g count]);
        NSString*fshName = [NSString stringWithFormat:@"base/%@/%@.fsh",filtName,filtName];
        NSData* fsh = [NSData dataWithContentsOfURL:kNetUrl(fshName)];
        NSString* str = [NSString stringWithUTF8String:[fsh bytes]];
        NSLog(@"%@",str);
    }
}
@end
