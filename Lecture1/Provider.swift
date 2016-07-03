//
//  Provider.swift
//  Lecture1
//
//  Created by админ on 03.07.16.
//  Copyright © 2016 Student. All rights reserved.
//

import Foundation

protocol Provider {
    func requestExchange(exchange : ExchangeRate) -> Double    
}