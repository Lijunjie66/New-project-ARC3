//
//  main.m
//  New-project-ARC3
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "OrderEntry.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // 创建手动释放的OrderEntry对象
        NSString *a1 = @"A1";
        NSString *orderId = [[NSString alloc] initWithString:a1];
        OrderEntry *entry = [[OrderEntry alloc] initWithId:orderId];
        // 将ID设置为nil，以验证ARC保留了该值
        a1 = nil;
        
        // 查看新建订单条目的结果，它应该具有合法的ID
        NSLog(@"New order, ID = %@, item: %@,",entry->orderId, entry->item->name);
        
        // 将OrderEntry对象设置为nil，现在ARC会自动释放它
        entry = nil;
        
         // 创建另一个OrderEntry对象
        OrderEntry *autoEntry = [[OrderEntry alloc] initWithId:@"A2"];
        NSLog(@"New order, ID = %@, item: %@",autoEntry->orderId, autoEntry->item->name);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
