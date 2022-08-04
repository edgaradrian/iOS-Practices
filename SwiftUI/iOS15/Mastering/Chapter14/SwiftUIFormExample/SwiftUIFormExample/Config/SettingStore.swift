//
//  SettingStore.swift
//  SwiftUIFormExample
//
//  Created by Edgar Adrián on 03/08/22.
//

import Foundation

final class SettingStore {
    
    init() {
        Defaults.register(defaults:
                                        [ PARAMETTER_PREFERENCES_CHECKIN: false,
                                    PARAMETTER_PREFERENCES_DISPLAY_ORDER: 0,
                                        PARAMETTER_PREFERENCES_MAX_PRICE: 5
                                        ]
        )
    }//init
    
    var showCheckInOnly: Bool = Defaults.bool(forKey: PARAMETTER_PREFERENCES_CHECKIN) {
        didSet {
            Defaults.set(showCheckInOnly, forKey: PARAMETTER_PREFERENCES_CHECKIN)
        }
    }//showCheckInOnly
    
    var displayOrder: DisplayOrderType = DisplayOrderType(type: Defaults.integer(forKey: PARAMETTER_PREFERENCES_DISPLAY_ORDER)) {
        didSet {
            Defaults.set(displayOrder.rawValue, forKey: PARAMETTER_PREFERENCES_DISPLAY_ORDER)
        }
    }//displayOrder
    
    var maxPriceLevel: Int = Defaults.integer(forKey: PARAMETTER_PREFERENCES_MAX_PRICE) {
        didSet {
            Defaults.set(maxPriceLevel, forKey: PARAMETTER_PREFERENCES_MAX_PRICE)
        }
    }//maxPriceLevel

    
}//SettingStore
