//
//  GameModes.swift
//  Delta Chess
//
//  Created by Henrique Delgado on 04/10/26.
//

import SwiftUI

enum TimeControl: CaseIterable, Identifiable {
    case thirtySeconds, oneMinute
    case threeMinutes, fiveMinutes
    case tenMinutes, twentyMinutes, thirtyMinutes
    case oneDay, threeDays, sevenDays

    var id: Self { self }

    var duration: TimeInterval {
        switch self {
        case .thirtySeconds: 30
        case .oneMinute: 60
        case .threeMinutes: 3 * 60
        case .fiveMinutes: 5 * 60
        case .tenMinutes: 10 * 60
        case .twentyMinutes: 20 * 60
        case .thirtyMinutes: 30 * 60
        case .oneDay: 24 * 60 * 60
        case .threeDays: 3 * 24 * 60 * 60
        case .sevenDays: 7 * 24 * 60 * 60
        }
    }
}

enum GameMode: CaseIterable, Identifiable {
    case bullet, blitz, rapid, daily

    var id: Self { self }

    var timeControls: [TimeControl] {
        switch self {
        case .bullet: [.thirtySeconds, .oneMinute]
        case .blitz: [.threeMinutes, .fiveMinutes]
        case .rapid: [.tenMinutes, .twentyMinutes, .thirtyMinutes]
        case .daily: [.oneDay, .threeDays, .sevenDays]
        }
    }
}
