//
//  glTestAppDelegate.h
//  glTest
//
//  Created by Teppei on 11/03/25.
//  Copyright 2011 hybridism. All rights reserved.
//

#import <UIKit/UIKit.h>

@class glTestViewController;

@interface glTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet glTestViewController *viewController;

@end
