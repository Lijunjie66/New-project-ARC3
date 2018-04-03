//
//  OrderItem.m
//  New-project-ARC3
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "OrderItem.h"

@implementation OrderItem

- (id) initWithName:(NSString *)itemName {
    if ((self = [super init])) {
        NSLog(@"Initializing OrderItem object");
        name = itemName;
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Deallocating OrderItem object");
}

@end
