//
//  ServiceDetailsView.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import SwiftUI
import ServicesSampleData

struct ServiceDetailsView: View {
    let service: Service

    var body: some View {
        VStack {
            Divider()
            ScrollView(.vertical) {
                MapView()
                    .padding(.vertical)
                HStack {
                    ServiceTiltleView(title: service.title)
                    Spacer()
                    ServiceStatusView(status: service.status)
                }
                InfoRowView(icon: .userCircle, title: "Customer", description: service.customerName)
                InfoRowView(icon: .fileDescription, title: "Description", description: service.description)
                InfoRowView(icon: .clockCheck, title: "Scheduled Time", description: ServiceDateFormatter.formatted(service.scheduledDate))
                InfoRowView(icon: .mapPinCheck, title: "Location", description: service.location)
                InfoRowView(icon: .message2, title: "Service Notes", description: service.serviceNotes)
            }
        }
        .padding(.horizontal)
        .navigationTitle("Service Detail")
    }
}

#Preview {
    ServiceDetailsView(service: SampleData.generateSingleService())
}
