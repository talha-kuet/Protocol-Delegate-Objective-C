//
//  ViewController.m
//  ProtocolDelegateObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [_myTextField becomeFirstResponder];
}

-(IBAction)buttonPressed:(id)sender {
    
    _messageData = _myTextField.text;
    
    [_myTextField resignFirstResponder];
    
    __weak ViewController *weakSelf = self;
    
    _secondVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SecondViewController"];
    _secondVC.delegate = self;
    _secondVC.myBlock = ^void(NSString *data) {
//        ViewController *strongSelf = weakSelf;
//        strongSelf->_myTextField.text = data;
        [[weakSelf myTextField] setText:data];
    };
    [self.navigationController pushViewController:_secondVC animated:YES];
}

- (NSString *)getMessageString {
    return _messageData;
}

@end
