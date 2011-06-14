//
//  TestBrowserViewController.m
//  TestBrowser
//
//  Created by Nicholas Suan on 10/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TestBrowserViewController.h"

@implementation TestBrowserViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
	NSString *urlAddress = @"http://dragonstryfe.com/";
    
	NSURL *url = [NSURL URLWithString:urlAddress];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
	//while(webView == NULL) {
	//sleep(1);
	//}
	//theView = webView;
	[webView loadRequest:requestObj];
	//[addressBar setText:urlAddress];

}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
