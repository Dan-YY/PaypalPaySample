//
//  ViewController.m
//  PaypalPay
//
//  Created by Dan-YY on 2021-05-26.
//sb-ylijq6340161@business.example.com
//


#import "ViewController.h"
#import "PaypalPay-Swift.h"

@interface ViewController ()
@property(nonatomic, strong) DYPaypalView *paypalView;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	double centerX = self.view.frame.size.width * 0.5;
	double centerY = self.view.frame.size.height * 0.5;

	CGRect rect = CGRectMake(centerX - 100.0, centerY - 25.0, 200, 50);
	self.paypalView = [[DYPaypalView alloc] initWithFrame: rect];
	[self.view addSubview: self.paypalView];

}

- (void)onButtonTap {
	NSLog(@"onButtonTap");

}



@end
