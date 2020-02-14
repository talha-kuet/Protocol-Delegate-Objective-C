//
//  SecondViewController.m
//  ProtocolDelegateObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if([_delegate respondsToSelector:@selector(getMessageString)]) {
        _myLabel.text = [_delegate getMessageString];
    }
}

-(IBAction)goBackButtonPressed:(id)sender {
    
    _myBlock(@"This is the desired Data");
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
