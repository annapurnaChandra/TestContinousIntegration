//
//  TestContinousIntegrationTests.m
//  TestContinousIntegrationTests
//
//  Created by DA-Administrator on 04/05/2017.
//  Copyright © 2017 DA-Administrator. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface TestContinousIntegrationTests : XCTestCase
@property (nonatomic) ViewController *vcToTest;
@end

@implementation TestContinousIntegrationTests

- (void)setUp {
    [super setUp];
    self.vcToTest = [[ViewController alloc] init];

    [self testValueForNewViewController];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void) testValueForNewViewController {
    NSString *originalString = @"himynameisandy";
    NSString *reversedString = [self.vcToTest reverseString:originalString];
    
    NSString *expectedReversedString = @"ydnasiemanymih";
    XCTAssertEqualObjects(expectedReversedString, reversedString);
   }

@end
