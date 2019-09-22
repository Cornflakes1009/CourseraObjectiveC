//
//  ViewController.m
//  UnitConverter
//
//  Created by HaroldDavidson on 9/8/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import "ViewController.h"

double convertInchesToMillimeter(double inchesValue) {
    double millimeterValue;
    millimeterValue = 25.4 * inchesValue;
    return millimeterValue;
}

double convertInchesToCentimeter(double inchesValue) {
    double centimerValue;
    
    centimerValue = 2.54 * inchesValue;
    return centimerValue;
}

double convertInchesToMeter(double inchesValue) {
    double meterValue;
    
    meterValue = 0.0254 * inchesValue;
    return meterValue;
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    // taking input field and converting the string to double
    double userInput = [self.inputField.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex == 0) {
        double millimeterValue = convertInchesToMillimeter(userInput);
        [buf appendString:[@(millimeterValue) stringValue]];
        
    } else if (self.segmentController.selectedSegmentIndex == 1) {
        double centimeterValue = convertInchesToCentimeter(userInput);
        [buf appendString:[@(centimeterValue) stringValue]];
        
    } else {
        double meterValue = convertInchesToMeter(userInput);
        [buf appendString:[@(meterValue) stringValue]];
        
    }
    
    //[buf appendString:@"clicked"];
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


@end
