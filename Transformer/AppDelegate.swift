//
//  AppDelegate.swift
//  Transformer
//
//  Created by kutty selva on 25/07/20.
//  Copyright © 2020 kutty selva. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    let statusItem=NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem.button?.title="🦹🏻‍♀️"
        statusItem.button?.target=self
        statusItem.button?.action=#selector(showSettings)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func showSettings(){
        let storyBoard = NSStoryboard(name: "Main", bundle: nil)
        guard let vc = storyBoard.instantiateController(withIdentifier:"ViewController") as?
        ViewController else{
            fatalError("unable to find viewcontroller")
        }
        guard let button = statusItem.button else{
            fatalError("coundn't find statusbar button")
        }
        let popoverView = NSPopover()
        popoverView.contentViewController=vc
        popoverView.behavior = .transient
        popoverView.show(relativeTo: button.bounds, of: button, preferredEdge: .maxY)
    }
        
}


