//
//  main.m
//  Payments
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("--------- Lab 10 ---------\n");
        printf("-------- PAYMENTS --------\n");
        printf("---'q' to quit the game---\n");
        printf("-------------------------\n\n");
        InputHandler *inputHandler = [[InputHandler alloc] init];
        PaymentGateway       *payment;
        AmazonPaymentService *amazon;
        StripePaymentService *stripe;
        PaypalPaymentService *paypal;
        ApplePaymentService  *apple;
        
        while (YES) {
            NSInteger amount = arc4random_uniform(900)+100;
            NSLog(@"\n\nThank you for shopping at Acme.com\nYour total today is $%ld\nPlease select your payment method: \n1: Paypal \n2: Stripe \n3: Amazon\n", (long)amount);
            payment = [[PaymentGateway alloc] init];
            switch ([[inputHandler getUserInput : @"Option:"] intValue]) {
                case 1:
                    paypal = [[PaypalPaymentService alloc] init];
                    payment.delegate = paypal;
                    [payment processPaymentAmount:amount];
                    break;
                case 2:
                    stripe = [[StripePaymentService alloc] init];
                    payment.delegate = stripe;
                    [payment processPaymentAmount:amount];
                    break;
                case 3:
                    amazon = [[AmazonPaymentService alloc] init];
                    payment.delegate = amazon;
                    [payment processPaymentAmount:amount];
                    break;
                case 4:
                    apple = [[ApplePaymentService alloc] init];
                    payment.delegate = apple;
                    [payment processPaymentAmount:amount];
                    break;
                default:
                    NSLog(@"Wrong option, the payment wasn't processed.");
                    break;
            }
        }
    }
    return 0;
}
