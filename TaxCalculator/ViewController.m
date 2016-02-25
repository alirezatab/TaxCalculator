//
//  ViewController.m
//  TaxCalculator
//
//  Created by ALIREZA TABRIZI on 2/24/16.
//  Copyright © 2016 AR-T.com, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double sfTax, chiTax, nyTax;

@end




@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .0875;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *enteredText = [self.priceTextField text];
    //NSString *enteredText = self.priceTextField.text;
    double enteredValue = [enteredText doubleValue];
    //double enteredValue = enteredText.doubleValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = self.sfTax * enteredValue;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    } else if (self.segmentedControl.selectedSegmentIndex == 1){
        double result = self.chiTax * enteredValue;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    } else {
        double result = self.nyTax * enteredValue;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    }
}

@end
