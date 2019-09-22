//
//  main.m
//  SendingMessages
//
//  Created by HaroldDavidson on 9/15/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTime.h"

int main(int argc, const char * argv[]) {
    MyTime *time = [MyTime alloc];
    time.hour = 10;
    int answer;
    answer = [time addSomeParameters:1 secondParameter:2 thirdParameter:3];
    printf("The answer is %d\n", answer);
    return 0;
}
