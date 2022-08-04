//
//  SettingStore.swift
//  SwiftUIFormExample
//
//  Created by Edgar Adrián on 03/08/22.
//

import Foundation
import Combine

final class SettingStore: ObservableObject {
    
    init() {
        Defaults.register(defaults:
                                        [ PARAMETTER_PREFERENCES_CHECKIN: false,
                                    PARAMETTER_PREFERENCES_DISPLAY_ORDER: 0,
                                        PARAMETTER_PREFERENCES_MAX_PRICE: 5
                                        ]
        )
    }//init
    
    @Published var showCheckInOnly: Bool = Defaults.bool(forKey: PARAMETTER_PREFERENCES_CHECKIN) {
        didSet {
            Defaults.set(showCheckInOnly, forKey: PARAMETTER_PREFERENCES_CHECKIN)
        }
    }//showCheckInOnly
    
    @Published var displayOrder: DisplayOrderType = DisplayOrderType(type: Defaults.integer(forKey: PARAMETTER_PREFERENCES_DISPLAY_ORDER)) {
        didSet {
            Defaults.set(displayOrder.rawValue, forKey: PARAMETTER_PREFERENCES_DISPLAY_ORDER)
        }
    }//displayOrder
    
    @Published var maxPriceLevel: Int = Defaults.integer(forKey: PARAMETTER_PREFERENCES_MAX_PRICE) {
        didSet {
            Defaults.set(maxPriceLevel, forKey: PARAMETTER_PREFERENCES_MAX_PRICE)
        }
    }//maxPriceLevel
    
}//SettingStore
