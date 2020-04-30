//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Edgar Ruiz on 30/04/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        print("I should speak \(textView.string)")
    }//speakButtonClicked
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        print("The stop button was clicked")
    }
    
}//ViewController

