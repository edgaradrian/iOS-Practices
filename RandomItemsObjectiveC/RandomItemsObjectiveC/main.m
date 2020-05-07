//
//  main.m
//  RandomItemsObjectiveC
//
//  Created by Edgar Ruiz on 06/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"Uno"];
        [items addObject:@"Dos"];
        [items addObject:@"Tres"];
        
        [items insertObject:@"Cero" atIndex:0];
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        
        [item setItemName:@"Red Sofa"];
        
        [item setSerialNumber:@"A3B2C1"];
        
        [item setValueInDollars:100];
        
        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated],
              [item serialNumber], [item valueInDollars]);
        
        items = nil;
        
    }//main
    return 0;
}//main
