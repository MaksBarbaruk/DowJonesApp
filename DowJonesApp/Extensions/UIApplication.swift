//
//  UIApplication.swift
//  DowJonesApp
//
//  Created by MaksBarbaruk on 27.10.2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
