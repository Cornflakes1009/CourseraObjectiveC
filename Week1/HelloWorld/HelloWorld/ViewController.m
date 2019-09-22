//
//  ViewController.m
//  HelloWorld
//
//  Created by HaroldDavidson on 8/27/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)testButtonTapped:(id)sender {
    int height_feet = 6;
    int height_inches = 1;
    double height_cm = ((height_feet * 12.0) + height_inches) * 2.54;
    
    if(height_cm > 200) {
        self.testLabel.text = @"You are over 2 meters tall!";
    } else if (height_cm > 100) {
        self.testLabel.text = @"You are over 1 meter tall!";
    } else {
        self.testLabel.text = @"You are under 1 meter tall!";
    }
    
    //self.testLabel.text = [NSString stringWithFormat:@"%f", height_cm];

}

@end
