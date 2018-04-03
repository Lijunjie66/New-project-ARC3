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
       /* 1、
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
        */
        
        
        // ***************************************************
        // 2、创建一个OrderEntry对象
        OrderEntry *entry1 = [[OrderEntry alloc] initWithId:@"A-1"
                                                      name:@"2 Hot dogs"];
        NSLog(@"Order 1, ID = %@, item: %@",entry1.orderId,entry1.item.name);
        
        // 创建另一个OrderEntry对象
        OrderEntry *entry2 = [[OrderEntry alloc] initWithId:@"A-2"
                                                       name:@"1 Cheeseburger"];
        NSLog(@"Order 2, ID = %@, item: %@",entry2.orderId,entry2.item.name);
        
        // 向集合中添加订单条目（将上面两个对象放在一个一起）
        NSArray *entries = [[NSArray alloc] initWithObjects:entry1,entry2, nil];
        NSLog(@"Number of order entrirs = %li",[entries count]);
        
        // 将指向OrderEntry对象的变量设置为nil，ARC回向该对象发送一条release消息!
        NSLog(@"Setting entry2 variable to nil");
        entry2 = nil;
        
        // 将指向对象集的变量设置为nil，ARC回向其中包含的每个对象发送一条release消息!
        NSLog(@"Settign entries collection variable to nil");
        entries = nil;
        
        // 将指向OrderEntry对象的变量设置为nil，ARC回向该对象发送一条release消息!
        NSLog(@"Setting entry1 variable to nil");
        entry1 = nil;
        
        // 退出自动释放池代码块
        NSLog(@"Leaving autoerleasepool block");
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
