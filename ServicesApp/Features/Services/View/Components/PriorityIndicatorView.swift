//
//  PriorityIndicatorView.swift
//  ServicesApp
//
//  Created by Praveen A on 07/03/26.
//

import SwiftUI
import ServicesSampleData

struct PriorityIndicatorView: View {
    let priority: Priority

    var body: some View {
        Circle()
            .fill(priority.color)
            .frame(width: 8, height: 8)
    }
}

#Preview {
    PriorityIndicatorView(priority: .medium)
}
