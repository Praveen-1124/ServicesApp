//
//  Service+Extensions.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import SwiftUI
import ServicesSampleData

extension ServiceStatus {

    var color: Color {
        switch self {
        case .active: .orange
        case .scheduled: .green
        case .completed: .green
        case .inProgress: .blue
        case .urgent: .red
        }
    }
}

extension Priority {

    var color: Color {
        switch self {
        case .low: .green
        case .medium: .yellow
        case .high:  .orange
        case .critical: .red
        }
    }
}
