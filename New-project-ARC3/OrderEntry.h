//
//  OrderEntry.h
//  New-project-ARC3
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderItem.h"
#import "Address.h"

@interface OrderEntry : NSObject

{
@public OrderItem *item;
        NSString *orderId;
        Address *shippingAddress;
}

- (id) initWithId:(NSString *)oid;

@end
