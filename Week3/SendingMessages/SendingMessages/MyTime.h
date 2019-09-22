//
//  MyTime.h
//  SendingMessages
//
//  Created by HaroldDavidson on 9/15/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTime : NSObject

@property (nonatomic) int year;
@property (nonatomic) int month;
@property (nonatomic) int day;
@property (nonatomic) int hour;
@property (nonatomic) int minutes;
@property (nonatomic) int seconds;

- (long)approxSecondsSinceWhichYear:(long)whichYear;
- (long)approxSecondsSince1970;
- (long)secondsSinceMidnight;
- (int)addSomeParameters: (int)a secondParameter:(int)b thirdParameter:(int)c;

@end
