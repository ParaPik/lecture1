//
//  RubToDollarConverter.swift
//  Lecture1
//
//  Created by админ on 03.07.16.
//  Copyright © 2016 Student. All rights reserved.
//

import Foundation

class RubToDollarConverter : ConvertProtocol {

    let rateProvider : Provider
    
    init(rateProvider : Provider) {
        self.rateProvider = rateProvider
    }
    
    func convert(value value: Double) -> Double {
        return value * rateProvider.requestExchange(ExchangeRate.USD_TO_RUB)
    }
    
}