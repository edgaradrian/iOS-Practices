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

-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}//initWithItemName

-(instancetype)init
{
    return [self initWithItemName:@"Item"];
}//init

+(instancetype)randomItem
{
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    
    return newItem;
    
}//randomItem
    
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
