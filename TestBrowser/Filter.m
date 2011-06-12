//
//  Filter.m
//  Web
//
//  Created by Nicholas Suan on 10/19/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Filter.h"

@implementation FilteredWebCache

- (NSCachedURLResponse*)cachedResponseForRequest:(NSURLRequest*)request
{
    NSURL *url = [request URL];
	if ([[url scheme] isEqualToString:@"http"]) {
		BOOL blockURL = FALSE; // [[FilterMgr sharedFilterMgr] shouldBlockURL:url];
		NSLog(@"URL: %@", url);
		NSString *urlString = [url absoluteString];
		NSString *checkString = [urlString substringFromIndex:7];
		//[string substringToIndex:[string length] - 1];
		if ([checkString characterAtIndex:[checkString length] - 1] == '/' ) {
			checkString = [checkString stringByReplacingCharactersInRange:NSMakeRange([checkString length] - 1, 1) withString:@""];
		}
		NSLog(@"Checking: %@\n", checkString);
        if(true) {
        
        } else {
            NSLog(@"Whitelisted: %@", [url host]);
        }
		if (blockURL) {
			NSLog(@"Blocked: %@", url);
			NSURLResponse *response =
			[[NSURLResponse alloc] initWithURL:url
									  MIMEType:@"text/html"
						 expectedContentLength:82
							  textEncodingName:nil];
			
			NSCachedURLResponse *cachedResponse =
			[[NSCachedURLResponse alloc] initWithResponse:response
													 data:[NSData dataWithBytes:"<div style=\"text-align:center; font-family: Zapfino, cursive; \">Blocked </div>" length:82]];
			
			[super storeCachedResponse:cachedResponse forRequest:request];
			
			[cachedResponse release];
			[response release];
		}
		
	}
	return [super cachedResponseForRequest:request];
}

@end

