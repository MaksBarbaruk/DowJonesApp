//
//  HapticManager.swift
//  DowJonesApp
//
//  Created by MaksBarbaruk on 29.10.2022.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func nitification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
