//
//  ViewController.m
//  GroundControl
//
//  Created by Ryan Tiltz on 6/11/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"
#import "TestfulObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)onButtonTapped:(id)sender
{
    TestfulObject *object = [[TestfulObject alloc] init];
    int result = [object number:self.textFieldOne.text.intValue
                 plus:self.textFieldTwo.text.intValue];
    self.UILabel.text = @(result).description;

    self.labelTwo.text = [NSString stringWithFormat:@"%@ is dishy", self.nameTextField.text];
}


@end
