//
//  main.m
//  ProtocolDelegateObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
