//
//  DockKillerAppDelegate.h
//  DockKiller
//
//  Created by Steve Streza on 10/15/09.
//  Copyright 2009 Steve Streza. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DockKillerAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
