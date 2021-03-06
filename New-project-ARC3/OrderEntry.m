//
//  OrderEntry.m
//  New-project-ARC3
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "OrderEntry.h"

@implementation OrderEntry
/*
- (id) initWithId:(NSString *)oid {
    if (self = [super init]) {
        NSLog(@"Initializing OrderEntry object");
        orderId = oid;
        item = [[OrderItem alloc] initWithName:@"Doodle"];
        shippingAddress = [[Address alloc] init];
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Deallocating OrderEntry object with ID %@",orderId);
}
*/

- (id) initWithId:(NSString *)oid name:(NSString *)order {
    if (self = [super init]) {
        NSLog(@"Initializing OrderEntry object");
        _orderId = oid;
        _item = [[OrderItem alloc] initWithName:order];
        shippingAddress = [[Address alloc] init];
        
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Deallocating OrderEntry object with ID %@",self.orderId);
}

@end
