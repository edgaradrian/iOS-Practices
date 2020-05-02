//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Edgar Ruiz on 30/04/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()

    @IBOutlet var textView: NSTextView!
    
    var contents: String? {
        get {
            return textView.string
        }
        set {
            textView.string = newValue!
        }
    }
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        if !textView.string.isEmpty {
            speechSynthesizer.startSpeaking(textView.string)
        } else {
            speechSynthesizer.startSpeaking("The document is empty")
        }
    }//speakButtonClicked
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }
    
}//ViewController

