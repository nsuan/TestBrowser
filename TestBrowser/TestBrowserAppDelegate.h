//
//  TestBrowserAppDelegate.h
//  TestBrowser
//
//  Created by Nicholas Suan on 10/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestBrowserViewController;

@interface TestBrowserAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TestBrowserViewController *viewController;

@end
