//
//  BNRItem.m
//  RandomItemsObjectiveC
//
//  Created by Edgar Ruiz on 06/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
    
}//initWithItemName

-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    return descriptionString;
}//description
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
