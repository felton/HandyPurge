//
//  HandyPurgeAppDelegate.h
//  HandyPurge
//
//  Created by Felton Vaughn on 5/27/12.
//  Copyright (c) 2012 Felton Vaughn, All rights reserved.
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Cocoa/Cocoa.h>

@interface HandyPurgeAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
    NSImage *menuIcon;
}

@property (assign) IBOutlet NSWindow *window;

@end
