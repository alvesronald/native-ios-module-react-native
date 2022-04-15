//
//  Counter.m
//  app
//
//  Created by Ronald Silva on 15/04/22.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"


@interface RCT_EXTERN_MODULE(Counter, NSObject);

RCT_EXTERN_METHOD(increment:(RCTResponseSenderBlock)callback);

@end  
