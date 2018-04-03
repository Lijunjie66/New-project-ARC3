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
//@public OrderItem *item;
  //      NSString *orderId;
        Address *shippingAddress;
}
// 改成 添加两个 只读属性
@property (readonly) NSString *orderId;
@property (readonly) OrderItem *item;


//- (id) initWithId:(NSString *)oid;

// 更新自定义初始化方法 initWithId：name：
- (id) initWithId:(NSString *)oid name:(NSString *)order;

@end
