//
//  LocalExchangeProvider.swift
//  Lecture1
//
//  Created by админ on 03.07.16.
//  Copyright © 2016 Student. All rights reserved.
//

import Foundation

class LocalExchangeProvider : Provider {
    
    func requestExchange(exchange: ExchangeRate) -> Double {
        switch exchange {
        case .USD_TO_RUB:
            return 1.0 / 64.0
        }
    }
    
}