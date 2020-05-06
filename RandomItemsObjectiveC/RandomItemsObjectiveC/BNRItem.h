//
//  BNRItem.h
//  RandomItemsObjectiveC
//
//  Created by Edgar Ruiz on 06/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)v;
-(int)valueInDollars;

-(NSDate *)dateCreated;

@end

NS_ASSUME_NONNULL_END
