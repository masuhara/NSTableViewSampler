//
//  ViewController.swift
//  NSTableViewSampler
//
//  Created by Masuhara on 2016/01/10.
//  Copyright © 2016年 Daisuke Masuhara. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {
    
    var contentArray = ["はしお", "きのぽん", "ともひろ", "もりだい", "Dのすけ", "かなみん", "ゲバちゃん"]
    @IBOutlet weak var table: NSTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer?.backgroundColor = NSColor.whiteColor().CGColor
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    // MARK: - NSTableView DataSource
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return contentArray.count
    }

    func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        return contentArray[row]
    }
    
    // MARK: - NSTableView Delegate
    func tableView(tableView: NSTableView, shouldSelectRow row: Int) -> Bool {
        print(row)
        let alert = NSAlert()
        alert.messageText = "Selected"
        alert.informativeText = contentArray[row] + "が選択されました"
        alert.addButtonWithTitle("OK")
        alert.runModal()
        return true
    }
}

