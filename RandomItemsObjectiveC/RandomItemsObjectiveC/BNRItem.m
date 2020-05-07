//
//  BNRItem.m
//  RandomItemsObjectiveC
//
//  Created by Edgar Ruiz on 06/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(void)setItemName:(NSString *)str
{
    _itemName = str;
}//setItemName
-(NSString *)itemName
{
    return _itemName;
}//itemName
-(void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}//setSerialNumber
-(NSString *)serialNumber
{
    return _serialNumber;
}//serialNumber
-(void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}//setValueInDollars
-(int)valueInDollars
{
    return _valueInDollars;
}//valueInDollars
-(NSDate *)dateCreated
{
    return _dateCreated;
}//dateCreated


@end
