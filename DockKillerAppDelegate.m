//
//  DockKillerAppDelegate.m
//  DockKiller
//
//  Created by Steve Streza on 10/15/09.
//  Copyright 2009 Steve Streza. All rights reserved.
//

#import "DockKillerAppDelegate.h"

@implementation DockKillerAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
	
	NSStatusItem *item = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
	[item setTarget:self];
	[item setAction:@selector(killDock:)];
	
	[item setTitle:@"D"];
	
	[item retain];
}

-(void)killDock:sender{
	NSTask *task = [[[NSTask alloc] init] autorelease];
	
	[task setLaunchPath:@"/usr/bin/killall"];
	[task setArguments:[NSArray arrayWithObject:@"Dock"]];
	
	[task launch];
}

@end
