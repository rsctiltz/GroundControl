//
//  GroundControlTests.m
//  GroundControlTests
//
//  Created by Ryan Tiltz on 6/11/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TestfulObject.h"
#import "Viewcontroller.h"

@interface GroundControlTests : XCTestCase

@end

@implementation GroundControlTests

- (void)testAddition
{
    TestfulObject *testful = [[TestfulObject alloc] init];
    XCTAssertEqual(7, [testful number:3
            plus:4]);
}

- (void)testAddtionTwo
{
    TestfulObject *testTwo =
        [[TestfulObject alloc] init];
    XCTAssertEqual(8, [testTwo number:4
                                 plus:4]);
}

-(void)testViewController
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [storyboard instantiateInitialViewController];
    vc.textFieldOne.text = @"1";
    vc.textFieldTwo.text = @"2";
    [vc.UIButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    XCTAssertEqual(3, vc.UILabel.text.intValue);
}

-(void)testViewConrollerTwo
{

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [storyboard instantiateInitialViewController];
    [vc view];
    vc.nameTextField.text = @"Ryan";
    [vc.UIButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    XCTAssertEqualObjects(vc.labelTwo.text, @"Ryan is dishy");
    
}
@end
