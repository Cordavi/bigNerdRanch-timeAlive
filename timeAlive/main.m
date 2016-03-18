//
//  main.m
//  timeAlive
//
//  Created by Cordavi on 3/18/16.
//  Copyright © 2016 Cordavi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1989];
        [comps setMonth:10];
        [comps setDay:20];
        [comps setHour:18];
        [comps setMinute:25];
        [comps setSecond:0];
        
        NSCalendar *fromBirth = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *birthDate = [fromBirth dateFromComponents:comps];
        
        NSDate *currentDate = [NSDate date];
        double secondsAlive = [currentDate timeIntervalSinceDate:birthDate];
        
        NSLog(@"\nI've been alive for %f seconds!\n", secondsAlive);
    }
    return 0;
}
