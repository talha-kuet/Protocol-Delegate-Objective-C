//
//  ViewController.h
//  ProtocolDelegateObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewControllerDelegate>

//MARK:- IBOutlets
@property (nonatomic, weak) IBOutlet UITextField *myTextField;

//MARK:- IBActions
- (IBAction)buttonPressed: (id)sender;

//MARK:- Properties
@property (nonatomic, retain) NSString *messageData;
@property (nonatomic, strong) SecondViewController *secondVC;

@end

