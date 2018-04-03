//
//  OrderItem.h
//  New-project-ARC3
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "OrderEntry.h" // 添加弱引用

@interface OrderItem : NSObject
/*{
    @public NSString *name; // 全局实例变量
    
    // 声明 弱引用
    // 当OrderItem对象被释放时，变量entry会被设置为nil，从而避免出现无限循环引用的情况
    //OrderEntry *__weak entry;
}
*/

 // 2、
@property (readonly) NSString *name;

// 1、
- (id) initWithName:(NSString *)itemName;

@end
