//
//  ViewController.m
//  PaypalPay
//
//  Created by Dan-YY on 2021-05-26.
//
//


#import "ViewController.h"
#import "PaypalPay-Swift.h"

@interface ViewController : UIViewController <DYPaypalViewDelegate>

@property(nonatomic, strong) DYPaypalView *paypalView;

@end

@implementation ViewController : UIViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	double centerX = self.view.frame.size.width * 0.5;
	double centerY = self.view.frame.size.height * 0.5;

	CGRect rect = CGRectMake(centerX - 100.0, centerY - 25.0, 200.0, 50);

	self.paypalView = [[DYPaypalView alloc] initWithFrame: rect];
	[self.view addSubview: self.paypalView];
	self.paypalView.delegate = self;
	[self.paypalView callDelegateSampleWithString: @"this string was sent to swift, and back to here from delegate"];
}

- (void)onApproveCallbackWithResponse:(id _Nonnull)response
												 responseData:(PPCOrderActionData * _Nonnull)responseData
																error:(NSError * _Nonnull)error {
	NSLog(@"%@", error);
}

- (void)onCancelCallback {

}

- (void)onErrorCallbackWithError:(NSError * _Nonnull) error {
	NSLog(@"%@", error);
}

- (void)delegateSampleWithString:(NSString * _Nonnull)string {
	NSLog(@"inObjc: %@", string);
}

@end
