//
//  main.m
//  Functions
//
//  Created by HaroldDavidson on 9/8/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import <Foundation/Foundation.h>

// declaring two variables with a global scope
int A = 5;
int B = 3;

void goodDay(char *timeOfDay){
    printf("Good %s\n",timeOfDay);
}

static void extracted() {
    goodDay("morning");
    goodDay("afternoon");
    goodDay("evening\n");
}

void dayGreeting(int loops) {
    for(int i = 0; i < loops; i++) {
        extracted();
        
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {}
    
    // overriding the two A and B global variables
    int A = 9;
    int B = 6;
    dayGreeting(A-B);
    
    return 0;
}
