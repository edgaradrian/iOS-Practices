//
//  main.m
//  RandomItemsObjectiveC
//
//  Created by Edgar Ruiz on 06/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"Uno"];
        [items addObject:@"Dos"];
        [items addObject:@"Tres"];
        
        [items insertObject:@"Cero" atIndex:0];
        
        items = nil;
        
    }//main
    return 0;
}//main
