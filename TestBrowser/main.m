//
//  main.m
//  TestBrowser
//
//  Created by Nicholas Suan on 10/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Filter.h"

int main(int argc, char *argv[])
{
    NSString *path = @"/tmp/browser.tmp";
	NSUInteger discCapacity = 10*1024*1024;
	NSUInteger memoryCapacity = 512*1024;
	FilteredWebCache *cache =
	[[FilteredWebCache alloc] initWithMemoryCapacity: memoryCapacity
										diskCapacity: discCapacity diskPath:path];
	[NSURLCache setSharedURLCache:cache];    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
