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
    @IBOutlet var speakButton: NSButton!
    @IBOutlet var stopButton: NSButton!
    
    var contents: String? {
        get {
            return textView.string
        }
        set {
            textView.string = newValue ?? ""
        }
    }
    
    override func viewDidLoad() {
        self.speechSynthesizer.delegate = self
        self.stopButton.isEnabled = false
    }//viewDidLoad
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        if !textView.string.isEmpty {
            speechSynthesizer.startSpeaking(textView.string)
        } else {
            speechSynthesizer.startSpeaking("The document is empty")
        }
    }//speakButtonClicked
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        speechSynthesizer.stopSpeaking()
        self.speakButton.isEnabled = true
        self.stopButton.isEnabled = false
    }
    
}//ViewController

//Silver Challenge
extension ViewController: NSSpeechSynthesizerDelegate {
    
    func speechSynthesizer(_ sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
        if finishedSpeaking {
            self.speakButton.isEnabled = finishedSpeaking
            self.stopButton.isEnabled = !finishedSpeaking
        }
    }//didFinishSpeaking
    
    func speechSynthesizer(_ sender: NSSpeechSynthesizer, willSpeakWord characterRange: NSRange, of string: String) {
        if string.isEmpty {
            self.speakButton.isEnabled = true
            self.stopButton.isEnabled = false
        } else {
            self.speakButton.isEnabled = false
            self.stopButton.isEnabled = true
        }
    }//willSpeakWord
    
}//extension NSSpeechSynthesizerDelegate

