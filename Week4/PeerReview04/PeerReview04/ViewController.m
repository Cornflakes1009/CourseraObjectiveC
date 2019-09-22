//
//  ViewController.m
//  PeerReview04
//
//  Created by HaroldDavidson on 9/22/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import "ViewController.h"
#import "DistanceGetter/DGDistanceRequest.h"

@interface ViewController ()

@property (nonatomic) DGDistanceRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *startLocation;

@property (weak, nonatomic) IBOutlet UITextField *endLocationA;
@property (weak, nonatomic) IBOutlet UILabel *distanceA;

@property (weak, nonatomic) IBOutlet UITextField *endLocationB;
@property (weak, nonatomic) IBOutlet UILabel *distanceB;

@property (weak, nonatomic) IBOutlet UITextField *endLocationC;
@property (weak, nonatomic) IBOutlet UILabel *distanceC;

@property (weak, nonatomic) IBOutlet UITextField *endLocationD;
@property (weak, nonatomic) IBOutlet UILabel *distanceD;

@property (weak, nonatomic) IBOutlet UIButton *calculateButton;

@property (weak, nonatomic) IBOutlet UISegmentedControl *unitController;

@end

@implementation ViewController

- (IBAction)calculateButtonTapped:(id)sender {
    self.calculateButton.enabled=NO;
    
    self.req = [DGDistanceRequest alloc];
    NSString *start = self.startLocation.text;
    NSString *destA = self.endLocationA.text;
    NSString *destB = self.endLocationB.text;
    NSString *destC = self.endLocationC.text;
    NSString *destD = self.endLocationD.text;
    
    NSArray *dests = @[destA, destB, destC, destD];
    self.req = [self.req initWithLocationDescriptions: dests sourceDescription:start];
    
    __weak ViewController *weakSelf = self;
    
    self.req.callback = ^void(NSArray *responses) {
        ViewController *strongSelf = weakSelf;
        if(!strongSelf){
            return;
        }
        
        NSNull *badRessult = [NSNull null];
        
        if(responses[0] != badRessult) {
            float num1;
            float num2;
            float num3;
            float num4;
            if(strongSelf.unitController.selectedSegmentIndex == 0) {
                num1 = ([responses[0] floatValue]/1.0);
                NSString *x = [NSString stringWithFormat:@"%.2f m", num1];
                strongSelf.distanceA.text = x;
                
                num2 = ([responses[1] floatValue]/1.0);
                NSString *y = [NSString stringWithFormat:@"%.2f m", num2];
                strongSelf.distanceB.text = y;
                
                num3 = ([responses[2] floatValue]/1.0);
                NSString *z = [NSString stringWithFormat:@"%.2f m", num3];
                strongSelf.distanceC.text = z;
                
                num4 = ([responses[2] floatValue]/1.0);
                NSString *zz = [NSString stringWithFormat:@"%.2f m", num4];
                strongSelf.distanceD.text = zz;
                
            } else if (strongSelf.unitController.selectedSegmentIndex == 1) {
                num1 = ([responses[0] floatValue]/1000.0);
                NSString *x = [NSString stringWithFormat:@"%.2f km", num1];
                strongSelf.distanceA.text = x;
                
                num2 = ([responses[1] floatValue]/1000.0);
                NSString *y = [NSString stringWithFormat:@"%.2f km", num2];
                strongSelf.distanceB.text = y;
                
                num3 = ([responses[2] floatValue]/1000.0);
                NSString *z = [NSString stringWithFormat:@"%.2f km", num3];
                strongSelf.distanceC.text = z;
                
                num4 = ([responses[2] floatValue]/1000.0);
                NSString *zz = [NSString stringWithFormat:@"%.2f km", num4];
                strongSelf.distanceD.text = zz;
                
            } else {
                num1 = ([responses[0] floatValue]/1609.34);
                NSString *x = [NSString stringWithFormat:@"%.2f mi", num1];
                strongSelf.distanceA.text = x;
                
                num2 = ([responses[1] floatValue]/1609.34);
                NSString *y = [NSString stringWithFormat:@"%.2f mi", num2];
                strongSelf.distanceB.text = y;
                
                num3 = ([responses[2] floatValue]/1609.34);
                NSString *z = [NSString stringWithFormat:@"%.2f mi", num3];
                strongSelf.distanceC.text = z;
                
                num4 = ([responses[2] floatValue]/1609.34);
                NSString *zz = [NSString stringWithFormat:@"%.2f mi", num4];
                strongSelf.distanceD.text = zz;
            }
        } else {
            strongSelf.distanceA.text = @"Error";
        }
        
        strongSelf.req = nil;
        strongSelf.calculateButton.enabled=YES;
        
    };
    
    [self.req start];
    
    
}






@end
