//
//  ViewController.m
//  PeerReview3
//
//  Created by HaroldDavidson on 9/15/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController () <CRCurrencyRequestDelegate>

@property (nonatomic) CRCurrencyRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyA;
@property (weak, nonatomic) IBOutlet UILabel *currencyB;
@property (weak, nonatomic) IBOutlet UILabel *currencyC;

@end

@implementation ViewController
- (IBAction)buttonTapped:(id)sender {
    self.convertButton.enabled = NO;
    
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
    
    
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies {
    self.convertButton.enabled = YES;
    
    double inputValue = [self.inputField.text floatValue];
    double czkValue = inputValue * currencies.CZK;
    NSString *czk = [NSString stringWithFormat:@"%.2f", czkValue];
    self.currencyA.text = czk;
    
    
    double ronValue = inputValue * currencies.RON;
    NSString *ron = [NSString stringWithFormat:@"%.2f", ronValue];
    self.currencyB.text = ron;
    
    double mxnValue = inputValue * currencies.MXN;
    NSString *mxn = [NSString stringWithFormat:@"%.2f", mxnValue];
    self.currencyC.text = mxn;
}

@end
