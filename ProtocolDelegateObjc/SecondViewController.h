//
//  SecondViewController.h
//  ProtocolDelegateObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SecondViewControllerDelegate <NSObject>
@required
-(NSString*) getMessageString;
@end

@interface SecondViewController : UIViewController

//MARK:- IBOutlets
@property (nonatomic, weak) IBOutlet UILabel *myLabel;

//MARK:- Properties
@property (nonatomic, retain) id <SecondViewControllerDelegate> delegate;

@property (nonatomic, copy) void(^myBlock)(NSString *); //using block to send data back

//MARK:- IBActions
-(IBAction)goBackButtonPressed:(id)sender;

@end

NS_ASSUME_NONNULL_END
