//
//  NSDate+Extensions.m
//  take365
//
//  Created by Evgeniy Eliseev on 08/11/2016.
//  Copyright © 2016 take365. All rights reserved.
//

#import "NSDate+Extensions.h"

@implementation NSDate (Extensions)

- (NSDate *)setZeroTime {
    NSDate *date = self;
    NSUInteger flags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:currentCalendar.calendarIdentifier];
    calendar.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    NSDateComponents* components = [calendar components:flags fromDate:date];
    
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.day = 1;
    
    return [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:[calendar dateFromComponents:components] options:0];
}

+ (NSDate *) GetLocalDate {
    
    NSDateComponents *dayComponent = [[NSDateComponents alloc] init];
    NSCalendar *theCalendar = [NSCalendar currentCalendar];
    theCalendar.timeZone = [NSTimeZone timeZoneWithName:@"GMT"];
    dayComponent = [[NSCalendar currentCalendar] components:NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:[NSDate date]];
    
    NSDate *localDate = [theCalendar dateFromComponents:dayComponent];
    
    return localDate;
}

- (NSString*)toyyyyMMString {
    NSDateFormatter *df = [NSDateFormatter new];
    [df setDateFormat:@"yyyy-MM"];
    
    return [df stringFromDate:self];
}

-(NSString *)toyyyyMMddString {
    NSDateFormatter *df = [NSDateFormatter new];
    [df setDateFormat:@"yyyy-MM-dd"];
    
    return [df stringFromDate:self];
}

@end
