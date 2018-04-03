//
//  Address.m
//  New-project-ARC3
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Address.h"

@implementation Address

- (id) init {
    if ((self = [super init])) {
        NSLog(@"Initializing Address object");
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Deallocating Address object");
}

@end
