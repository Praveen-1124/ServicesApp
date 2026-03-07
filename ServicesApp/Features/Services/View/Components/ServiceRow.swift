//
//  ServiceRow.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import SwiftUI
import ServicesSampleData

struct ServiceRow: View {
    let service: Service
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ServiceTiltleView(title: service.title)
                Spacer()
                PriorityIndicatorView(priority: service.priority)
            }
            VStack(spacing: 4){
                InfoRowView(icon: .userCircle, caption: service.customerName)
                InfoRowView(icon: .fileDescription, caption: service.description)
            }
            HStack {
                ServiceStatusView(status: service.status)
                Spacer()
                ServiceDateView(date: service.scheduledDate)
            }
            .padding(.top, 8)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(.systemGray4))
        )
    }
}

#Preview {
    ServiceRow(service: SampleData.generateSingleService())
}
