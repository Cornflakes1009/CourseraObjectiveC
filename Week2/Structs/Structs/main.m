//
//  main.m
//  Structs
//
//  Created by HaroldDavidson on 9/8/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import <Foundation/Foundation.h>

struct time {
    int month;
    int day;
    int year;
    int hour;
    int minutes;
    int seconds;
};

void timeGreeting(struct time myTimeCopy) {
    printf("The day is %d/%d/%d, the time is %02d:%02d:%02d\n", myTimeCopy.month, myTimeCopy.day, myTimeCopy.year, myTimeCopy.hour, myTimeCopy.minutes, myTimeCopy.seconds);
}

int main(int argc, const char * argv[]) {
    
    struct time myTime;
    myTime.month = 6;
    myTime.day = 29;
    myTime.year = 2007;
    myTime.hour = 16;
    myTime.minutes = 30;
    myTime.seconds = 00;
    
    timeGreeting(myTime);
    return 0;
}
