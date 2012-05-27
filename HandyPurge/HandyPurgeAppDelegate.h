//
//  HandyPurgeAppDelegate.h
//  HandyPurge
//
//  Created by Felton Vaughn on 5/27/12.
//  Copyright (c) 2012 big-felt.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HandyPurgeAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
}

@property (assign) IBOutlet NSWindow *window;

@end
