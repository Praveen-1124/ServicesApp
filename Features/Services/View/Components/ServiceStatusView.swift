//
//  ServiceStatusView.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import SwiftUI
import ServicesSampleData

struct ServiceStatusView: View {
    let status: ServiceStatus
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 2)
                .fill(status.color)
                .frame(width: 12, height: 12)
            Text(status.rawValue)
                .font(.body)
                .foregroundStyle(status.color)
        }
        .padding(.all, 12)
        .background(status.color.opacity(0.1))
        .clipShape(Capsule())
        .overlay {
            Capsule()
                .stroke(status.color.opacity(0.2))
        }
    }
}

#Preview {
    ServiceStatusView(status: .active)
}
