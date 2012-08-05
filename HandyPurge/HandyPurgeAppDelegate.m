//
//  HandyPurgeAppDelegate.m
//  HandyPurge
//
//  Created by Felton Vaughn on 5/27/12.
//  Copyright (c) 2012 Felton Vaughn, All rights reserved.
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import "HandyPurgeAppDelegate.h"

@implementation HandyPurgeAppDelegate

@synthesize window = _window;

- (void)dealloc
{
    if(menuIcon != nil){
        [menuIcon dealloc];
        NSLog(@"Deallocated the icon");
    }
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(void)awakeFromNib{
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    [statusItem setMenu:statusMenu];
    
    //Get image icon from bundle and display it on the status bar
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *bundlePath = [bundle pathForImageResource:@"gauge_menu.icns"];
    menuIcon = [[NSImage alloc] initWithContentsOfFile:bundlePath];
    [statusItem setImage:menuIcon];
    [statusItem setHighlightMode:YES];
}

-(IBAction)doPurge:(id)sender{
    NSString *path = @"/usr/bin/purge";
    
    //Launch task
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:path];
    [task launch];
    [task waitUntilExit]; 
    
    int status = [task terminationStatus];
    NSLog(@"Status: %d", status);
    
    [task release];
}
@end
