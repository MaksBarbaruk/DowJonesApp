//
//  String.swift
//  DowJonesApp
//
//  Created by MaksBarbaruk on 30.10.2022.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
