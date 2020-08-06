//
//  FAQObject.swift
//  SwiftUIDisclosureGroupExample
//
//  Created by Edgar Adrián Ruiz Infante on 05/08/20.
//

import SwiftUI

struct FAQObject: Identifiable {
    let id = UUID()
    let lable: String
    let content: String
}//FAQObject

let FAQList = [
    FAQObject(lable: "Is there currently any preferred stock outstanding?", content: "No."),
    FAQObject(lable: "How can I get the current stock price?", content: "A 20 minute delayed price as well as other information regarding stock is provided by Technologies."),
    FAQObject(lable: "Can I purchase stock directly from Store?", content: "No, but Store stock can be purchased through just about any brokerage firm, including online brokerage services.")
]
