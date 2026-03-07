//
//  ServiceDateView.swift
//  ServicesApp
//
//  Created by Praveen A on 07/03/26.
//

import SwiftUI

struct ServiceDateView: View {
    let date: String
    
    var body: some View {
        Text(ServiceDateFormatter.formatted(date))
            .font(.headline)
            .foregroundStyle(.secondary)
    }
}

#Preview {
    ServiceDateView(date: "2026-03-7T06:00:00Z")
}
