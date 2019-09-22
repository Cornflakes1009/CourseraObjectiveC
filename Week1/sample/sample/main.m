//
//  main.m
//  sample
//
//  Created by HaroldDavidson on 8/28/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import <Foundation/Foundation.h>

void dayGreeting(int loops) {
    for(int i = 0; i < loops; i++) {
        printf("Good morning\n");
        printf("Good afternoon\n");
        printf("Good evening\n");
    }
}

int main(int argc, const char * argv[]) {
    
//    int A = 1;
//    int B = 0;
//
//    if(A == B) {
//        printf("A equals B\n");
//    } else {
//        printf("A does not equal B\n");
//    }
    dayGreeting(9);

    
    
    return 0;
}
