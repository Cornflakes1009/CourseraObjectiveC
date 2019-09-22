//
//  MyTime.m
//  SendingMessages
//
//  Created by HaroldDavidson on 9/15/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import "MyTime.h"

@implementation MyTime

- (long) approxSecondsSinceWhichYear:(long)whichYear:(long)whichyear {
    long allSec = 0;
    allSec = self.seconds;
    allSec = allSec + self.minutes * 60;
    allSec = allSec + self.hour * 60 * 60;
    allSec = allSec + self.day * 24 * 60 * 60;
    allSec = allSec + self.month * 30 *24 * 60 * 60;
    allSec = allSec + (self.year - whichYear) * 365 * 30 * 24 * 60 * 60;
    
    return (allSec);
}

- (long) approxSecondsSince1970 {
    return [self approxSecondsSinceWhichYear:1970];
}

- (long) secondsSinceMidnight {
    long x;
    x = self.seconds;
    x = x + self.minutes * 60;
    x = x + self.hour * 60 * 60;
    return x;
}
- (int) addSomeParameters:(int)a secondParameter:(int)b thirdParameter:(int)c {
    int answer;
    answer = self.hour;
    answer = answer + a + b + c;
    return answer;
}

@end
